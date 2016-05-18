unit uconfig;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Buttons, ExtCtrls, DBCtrls, Mask, ExtDlgs, jpeg, dbiprocs,
  shellapi;

type
  Tfrmconfig = class(TForm)
    Bevel1: TBevel;
    spdconfirma: TSpeedButton;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label15: TLabel;
    DBEdit15: TDBEdit;
    Bevel3: TBevel;
    spdimpfig: TSpeedButton;
    spdcancimp: TSpeedButton;
    imgFoto: TImage;
    opdAbrirfig: TOpenPictureDialog;
    Label7: TLabel;
    Label9: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label10: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label11: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    Label12: TLabel;
    DBEdit9: TDBEdit;
    Label13: TLabel;
    DBEdit10: TDBEdit;
    Label14: TLabel;
    DBLookupComboBox5: TDBLookupComboBox;
    DBLookupComboBox6: TDBLookupComboBox;
    Label16: TLabel;
    DBEdit11: TDBEdit;
    Label17: TLabel;
    DBEdit12: TDBEdit;
    Label18: TLabel;
    DBEdit13: TDBEdit;
    Label19: TLabel;
    DBRadioGroup1: TDBRadioGroup;
    procedure FormShow(Sender: TObject);
    procedure ediOSExit(Sender: TObject);
    procedure ediosefExit(Sender: TObject);
    procedure ediparcExit(Sender: TObject);
    procedure edimaxparcExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure mmoobsKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure spdconfirmaClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure spdimpfigClick(Sender: TObject);
    procedure mostrararq_ext;
    procedure spdcancimpClick(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmconfig: Tfrmconfig;

implementation

uses uGeral, uPrincipal, uDados;

{$R *.DFM}

procedure Tfrmconfig.FormShow(Sender: TObject);
var
   vardir: String;
begin
   vardir := ExtractFilePath(Application.ExeName);

   with frmdados do
     begin

       cds_pais.Active := false;
       dbx_pais.Active := false;
       dbx_pais.SQL.Clear;
       dbx_pais.SQL.Add('Select * from pais');
       dbx_pais.Active := true;
       cds_pais.Active := true;

       cds_estados.Active := false;
       dbx_estados.Active := false;
       dbx_estados.SQL.Clear;
       dbx_estados.SQL.Add('Select * from estados');
       dbx_estados.Active := true;
       cds_estados.Active := true;

       cds_munic.Active := false;
       dbx_munic.Active := false;
       dbx_munic.SQL.Clear;
       dbx_munic.SQL.Add('Select * from munic');
       dbx_munic.Active := true;
       cds_munic.Active := true;


     end;
   //endi

   tabela := 'Config';

   with frmdados.Cds_indice do
     begin
       if recordcount = 0 then
          append
       else
          edit;
       //endi;
     end;
   //endwith

   mostrararq_ext;

end;

procedure Tfrmconfig.ediOSExit(Sender: TObject);
var
   valor : integer;
begin
end;

procedure Tfrmconfig.ediosefExit(Sender: TObject);
var
   valor : integer;
begin
end;

procedure Tfrmconfig.ediparcExit(Sender: TObject);
var
   valor : integer;
begin

end;

procedure Tfrmconfig.edimaxparcExit(Sender: TObject);
var
   valor : integer;
begin
end;

procedure Tfrmconfig.FormClose(Sender: TObject; var Action: TCloseAction);
begin


  frmPrincipal.pnlcentral.Visible := true;
  Action:=caFree;
  frmConfig:=nil;
  form_ativo := '';
end;

procedure Tfrmconfig.mmoobsKeyPress(Sender: TObject; var Key: Char);
begin
   if (key = #13) then SelectNext(ActiveControl,True,True);
end;

procedure Tfrmconfig.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 27 then
   close;
//endi

end;

procedure Tfrmconfig.spdconfirmaClick(Sender: TObject);
var cnpj:string;
begin
  if DBEdit3.Text = '' then
     begin
       showmessage('É necessário preenchimento do CNPJ');
       DBEdit3.SetFocus;
       exit;
     end
  else
     begin
       cnpj := tirapontos(tirabarras(tiratracos( DBEdit3.Text )));
       if not ValidaCNPJ(cnpj) then
          if not ValidaCPF(cnpj) then
             begin
               showmessage(DBEdit3.text+' não é CNPJ ou CPF válido');
               DBEdit3.SetFocus;
               exit;
             end;

     end;
  //

  if frmdados.Cds_Config.State in [dsinsert, dsedit] then
     frmdados.Cds_Config.Post;
  //endi
  close;

end;

procedure Tfrmconfig.SpeedButton1Click(Sender: TObject);
begin
  if frmdados.Cds_Config.state in [dsInsert,dsEdit] then
     begin
       frmdados.Cds_Config.Cancel;
     end;
  //endi
  close;

end;

procedure Tfrmconfig.spdimpfigClick(Sender: TObject);
begin
  if opdabrirfig.Execute then
     begin
       frmdados.cds_config.Edit;
       frmdados.cds_configlogo.LoadFromFile(opdabrirfig.FileName);
       frmdados.cds_configfilelogo.AsString := extractfilename(opdabrirfig.FileName);
       mostrararq_ext;
     end;
  //endi

end;

procedure Tfrmconfig.mostrararq_ext;
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

      if cds_configlogo.BlobSize = 0 then exit;

      //se nã há informação sobre o tipo do arquivo, sai...
      if cds_configfilelogo.AsString = '' then exit;


      //Recupera a extensão do arquivo
      Extensao := uppercase(extractfileext(cds_configfilelogo.AsString));

      //se for image JPG ou BMP carrega para img
      if pos(extensao,'.JPG .JPEG .BMP') <> 0 then
         begin

           Stream := cds_config.CreateBlobStream(cds_configlogo, bmread);
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
           temppath := temppath + '\'+cds_configlogo.AsString;

           //Grava bloco no arquivo temporário
           cds_configlogo.SaveToFile(temppath);

           //chama a aplicação associada à extensão do arquivo
           Shellexecute(self.Handle,'open',pchar(temppath),nil,nil,SW_SHOWNORMAL);


         end;
      //endi


    //
    end;

  end;



procedure Tfrmconfig.spdcancimpClick(Sender: TObject);
begin
  frmdados.Cds_config.Edit;
  frmdados.cds_configlogo.AsVariant := '';
  mostrararq_ext;

end;

procedure Tfrmconfig.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

end.
