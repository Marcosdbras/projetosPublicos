unit ucli;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, DB, ExtCtrls, DBCtrls, Mask, ExtDlgs, Clipbrd,
  Jpeg, shellapi;

type
  Tfrmcli = class(TForm)
    btnsalvar: TBitBtn;
    spdcancelar: TSpeedButton;
    Label38: TLabel;
    edicpf: TDBEdit;
    Label4: TLabel;
    ediccli: TDBEdit;
    Label2: TLabel;
    Label1: TLabel;
    Label39: TLabel;
    EDIIE: TDBEdit;
    Label5: TLabel;
    ediendent: TDBEdit;
    lbltitnroent: TLabel;
    edinroent: TDBEdit;
    Label6: TLabel;
    edicomplent: TDBEdit;
    Label10: TLabel;
    edibairroent: TDBEdit;
    Label8: TLabel;
    edicidadeent: TDBEdit;
    Label11: TLabel;
    edicepent: TDBEdit;
    imgFoto: TImage;
    spdinsfoto: TSpeedButton;
    spdapafoto: TSpeedButton;
    edincli: TDBEdit;
    edinfant: TDBEdit;
    opdAbrirfig: TOpenPictureDialog;
    OpenDialog2: TOpenDialog;
    Label3: TLabel;
    Label25: TLabel;
    Label24: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label23: TLabel;
    Label40: TLabel;
    edidddeent: TDBEdit;
    EDIFONEENT: TDBEdit;
    EDIFONECOM: TDBEdit;
    editelefones: TDBEdit;
    edicontato: TDBEdit;
    ediemail: TDBEdit;
    EDIDATANASC: TDBEdit;
    procedure btnsalvarClick(Sender: TObject);
    procedure spdcancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edicpfKeyPress(Sender: TObject; var Key: Char);
    procedure spdinsfotoClick(Sender: TObject);
    procedure spdapafotoClick(Sender: TObject);
    procedure mostrararq_ext_cli;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcli: Tfrmcli;

implementation
   uses ugeral,udados,udetage, upesqtra;
{$R *.dfm}

procedure Tfrmcli.btnsalvarClick(Sender: TObject);
begin
tabela := 'Clientes';

with frmdados do
  begin
    if cds_clientes.State in [dsinsert,dsedit] then
       begin
         cds_clientes.Post;
       end;
    //endi

  end;
//endth

close;


end;

procedure Tfrmcli.spdcancelarClick(Sender: TObject);
begin
tabela := 'Clientes';

close;
end;

procedure Tfrmcli.FormClose(Sender: TObject; var Action: TCloseAction);
begin
with frmdados do
  begin
    if cds_clientes.State in [dsinsert,dsedit] then
       cds_clientes.cancel;
    //endi
  end;
//endth

Action:=caFree;
frmcli:=nil;
form_ativo := '';

end;

procedure Tfrmcli.edicpfKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmcli.spdinsfotoClick(Sender: TObject);
var
  sSkin, vardir:string;

begin
sSkin := frmpesqtra.Skin.SkinStore;

vardir := extractfilepath(application.ExeName);

frmpesqtra.Skin.SkinFile:= '';
frmpesqtra.Skin.Active := TRUE;
if opdAbrirfig.Execute then
   begin
     if frmdados.Cds_Clientes.RecordCount > 0 then
        begin
          frmdados.cds_clientes.Edit;
          frmdados.cds_clientesfoto.LoadFromFile(opdabrirfig.FileName);
          frmdados.cds_clientesfilename.AsString := extractfilename(opdabrirfig.FileName);
          //frmdados.Cds_Clientes.post;
          mostrararq_ext_cli;
        end;
     //endi
   end;
//endi
//frmpesqtra.Skin.SkinFile:=frmpesqtra.Skin.SkinStore;

frmpesqtra.skin.SkinFile := vardir+'SKIN.SKN';
frmpesqtra.Skin.Active := TRUE;

end;

procedure Tfrmcli.spdapafotoClick(Sender: TObject);
begin
  frmdados.Cds_clientes.Edit;
  frmdados.cds_clientesfoto.AsVariant := '';
  mostrararq_ext_cli;

end;

procedure tfrmcli.mostrararq_ext_cli;
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

      if cds_clientesfoto.BlobSize = 0 then exit;

      //se nã há informação sobre o tipo do arquivo, sai...
      if cds_clientesfilename.AsString = '' then exit;


      //Recupera a extensão do arquivo
      Extensao := uppercase(extractfileext(cds_clientesfilename.AsString));

      //se for image JPG ou BMP carrega para img
      if pos(extensao,'.JPG .JPEG .BMP') <> 0 then
         begin

           Stream := cds_clientes.CreateBlobStream(cds_clientesfoto, bmread);
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
           temppath := temppath + '\'+cds_clientesfoto.AsString;

           //Grava bloco no arquivo temporário
           cds_clientesfoto.SaveToFile(temppath);

           //chama a aplicação associada à extensão do arquivo
           Shellexecute(self.Handle,'open',pchar(temppath),nil,nil,SW_SHOWNORMAL);


         end;
      //endi


   //
   end;

end;



procedure Tfrmcli.FormShow(Sender: TObject);
begin
tabela := 'Clientes';

if frmdetage.sopcaocli = 'I' then
   begin
     frmdados.cds_clientes.Append;
   end
else
   begin
     frmdados.cds_clientes.edit;
     mostrararq_ext_cli;
   end;
//endi

end;

end.
