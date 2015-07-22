unit uampliafoto;

interface

uses
 Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Buttons, ExtCtrls, DBCtrls, Mask, ComCtrls,
  Grids, DBGrids, SqlExpr, SayPrint, ImgList, Menus, dbcgrids, jpeg, clipbrd,
  shellapi, ExtDlgs, Variants;
type
  Tfrmampliafoto = class(TForm)
    pnlsuperior: TPanel;
    imgfoto1: TImage;
    pnlesq: TPanel;
    btnimprimir: TBitBtn;
    btnfechar: TBitBtn;
    procedure btnfecharClick(Sender: TObject);
    procedure mostrararq_ext;
    procedure FormShow(Sender: TObject);
    procedure btnimprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmampliafoto: Tfrmampliafoto;

implementation

uses uDados, ugeral, uimpampliafoto;

{$R *.dfm}

procedure Tfrmampliafoto.btnfecharClick(Sender: TObject);
begin
  close;
end;

procedure tfrmampliafoto.mostrararq_ext;
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

      imgfoto1.Visible := false;

      if cds_ImgEquipCliimagem.BlobSize = 0 then exit;

      //se nã há informação sobre o tipo do arquivo, sai...
      if cds_ImgEquipClifilename.AsString = '' then exit;


      //Recupera a extensão do arquivo
      Extensao := uppercase(extractfileext(cds_ImgEquipClifilename.AsString));

      //se for image JPG ou BMP carrega para img
      if pos(extensao,'.JPG .JPEG .BMP') <> 0 then
         begin

           Stream := cds_ImgEquipCli.CreateBlobStream(cds_ImgEquipCliimagem, bmread);
           try
             if extensao = '.BMP' then
                begin
                  figura := tbitmap.Create;
                  try
                    figura.LoadFromStream(stream);
                    imgfoto1.Picture.Assign(figura)
                  finally
                    imgfoto1.Visible := true;
                    figura.Free;
                  end;
                end
             else
                begin
                  j := tjpegimage.Create;
                  try
                    j.LoadFromStream(Stream);
                    imgfoto1.Picture.Assign(j);
                  finally
                    imgfoto1.Visible := true;
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
           temppath := temppath + '\'+cds_ImgEquipCliimagem.AsString;

           //Grava bloco no arquivo temporário
           cds_ImgEquipCliimagem.SaveToFile(temppath);

           //chama a aplicação associada à extensão do arquivo
           Shellexecute(self.Handle,'open',pchar(temppath),nil,nil,SW_SHOWNORMAL);


         end;
      //endi


    //
    end;

end;



procedure Tfrmampliafoto.FormShow(Sender: TObject);
begin
mostrararq_ext;
end;

procedure Tfrmampliafoto.btnimprimirClick(Sender: TObject);
begin
frmimpampliafoto := tfrmimpampliafoto.create(self);
frmimpampliafoto.relatorio.preview;
frmimpampliafoto.free;
end;

end.
