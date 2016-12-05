unit uPonto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, JPEG, ImgList, clipbrd, shellapi, dbiprocs, Db,
  Dbtables, buttons, dbctrls, mask, comctrls, grids, dbgrids,
  sqlexpr, abarra, extdlgs;

type
  Tfrmponto = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    edicfun: TEdit;
    Label3: TLabel;
    lblnome: TLabel;
    imgfoto: TImage;
    procedure edicfunKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure mostrararq_ext;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmponto: Tfrmponto;

implementation
     uses udados, ugeral;
{$R *.dfm}

procedure Tfrmponto.edicfunKeyPress(Sender: TObject; var Key: Char);
var
  scodfun:string;
begin
if key = #13 then
   begin
     with frmdados do
       begin
         if edicfun.Text = '' then
            exit;
         //endi
         if length( edicfun.Text ) = 13 then
            begin
              scodfun :=  copy(edicfun.Text,9,5);
            end
         else
            begin
              scodfun :=  edicfun.Text;
            end;
         //endi
         if cds_funcionarios.Locate('codigo',scodfun,[]) then
            begin
              mostrararq_ext;
              lblnome.Caption := cds_funcionarios.fieldbyname('nome').asString;

              cds_apontamento.Append;
              cds_apontamento.FieldByName('cfun').asInteger := cds_funcionarios.fieldbyname('codigo').asInteger;
              cds_apontamento.Post;

            end
         else
            begin
              showmessage('Código não Existe !!!');
            end;
         //endi
       end;
     //endth

     edicfun.Text := '';

   end;
//endi
end;

procedure Tfrmponto.FormShow(Sender: TObject);
begin

tabela := 'Apontamento';

edicfun.Text := '';
lblnome.caption := '';

bApontamentoI := true;


with frmdados do
  begin
    cds_funcionarios.Active := false;
    dbx_funcionarios.Active := false;
    dbx_funcionarios.SQL.Clear;
    dbx_funcionarios.SQL.Add('Select * from funcionarios where ativo = '+quotedstr('T'));
    dbx_funcionarios.Active := true;
    cds_funcionarios.Active := true;

    cds_apontamento.Active := false;
    dbx_apontamento.Active := false;
    dbx_apontamento.SQL.Clear;
    dbx_apontamento.SQL.Add('Select * from apontamento where codigo = 0');
    dbx_apontamento.Active := true;
    cds_apontamento.Active := true;
  end;
//endth
end;

procedure Tfrmponto.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  with frmdados do
    begin
      cds_apontamento.Active := false;
      dbx_apontamento.Active := false;

      cds_funcionarios.Active := false;
      dbx_funcionarios.Active := false;

    end;
  //endth

end;


procedure tfrmponto.mostrararq_ext;
var
 J : TJPEGImage;
 figura : tbitmap;
 S : TMemoryStream;
 vardir:string;
 pathbuf:array[0..255] of char;
 temppath:string;
 bmp:tbitmap;
 extensao:string;
 stream:tstream;
begin


 with frmdados do
   begin

      imgfoto.Visible := false;

      if cds_funcionariosfoto.BlobSize = 0 then exit;

      //se nã há informação sobre o tipo do arquivo, sai...
      if cds_funcionariosfilename.AsString = '' then exit;


      //Recupera a extensão do arquivo
      Extensao := uppercase(extractfileext(cds_funcionariosfilename.AsString));

      //se for image JPG ou BMP carrega para img
      if pos(extensao,'.JPG .JPEG .BMP') <> 0 then
         begin

           Stream := cds_funcionarios.CreateBlobStream(cds_funcionariosfoto, bmread);
           try
             if extensao = '.BMP' then
                begin
                  figura := tbitmap.Create;
                  try
                    figura.LoadFromStream(stream);
                    imgfoto.Picture.Assign(figura)
                  finally
                    imgfoto.Visible := true;
                    figura.Free;
                  end;
                end
             else
                begin
                  j := tjpegimage.Create;
                  try
                    j.LoadFromStream(Stream);
                    imgfoto.Picture.Assign(j);
                  finally
                    imgfoto.Visible := true;
                    j.Free
                  end;
                end;
             //endi
           finally
             stream.Free;
           end;
         end
      else
         begin
           //recupera o diretorio temp do windows
           gettemppath(sizeof(pathbuf),pathbuf);

           //monta path completo para o nosso diretório temporário
           temppath := strpas(pathbuf)+'\blobs';

           //Verifica se o diretório temporário já existe caso contrario cria
           if not directoryexists(temppath) then
              if not forcedirectories(temppath) then
                 begin
                   messagedlg('Não foi possível criar o diretório temporário!!!',mtError,[mbOK],0);
                   sysutils.Abort;
                 end;
              //endi
           //endi
           temppath := temppath + '\'+cds_funcionariosfoto.AsString;

           //Grava bloco no arquivo temporário
           cds_funcionariosfoto.SaveToFile(temppath);

           //chama a aplicação associada à extensão do arquivo
           Shellexecute(self.Handle,'open',pchar(temppath),nil,nil,SW_SHOWNORMAL);


         end;
      //endi


    //
    end;

  end;
//endi


end.
