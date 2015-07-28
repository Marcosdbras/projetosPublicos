unit backup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, ToolEdit, ExtCtrls, ZipMstr,
  Menus, AdvGlowButton, TFlatPanelUnit;

type
  Tfrmbackup = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    eorigem: TDirectoryEdit;
    Label2: TLabel;
    edestino: TDirectoryEdit;
    ZipMaster1: TZipMaster;
    DelBut: TButton;
    Memo1: TMemo;
    PopupMenu1: TPopupMenu;
    EfetuarCpia1: TMenuItem;
    Fechar1: TMenuItem;
    Bevel2: TBevel;
    pgravar: TFlatPanel;
    bitbtn1: TAdvGlowButton;
    bitbtn2: TAdvGlowButton;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure eorigemKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ZipMaster1Message(Sender: TObject; ErrCode: Integer;
      Message: String);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmbackup: Tfrmbackup;
  autob : boolean;
  i : integer;  

implementation

uses modulo;

{$R *.dfm}

procedure Tfrmbackup.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmbackup.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmbackup.FormShow(Sender: TObject);
begin
  eorigem.text := copia_origem;
  edestino.text := copia_destino;

    memo1.align := alclient;
end;

procedure Tfrmbackup.eorigemKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmbackup.BitBtn1Click(Sender: TObject);
begin
  IF (EORIGEM.Text = '') OR (EDESTINO.Text = '') THEN
  BEGIN
    SHOWMESSAGE('Favor completar os campos de Origem e Destino!');
  END
  ELSE
  BEGIN
   frmmodulo.Conexao.Connected := FALSE;
   FRMMODULO.ConexaoLOCAL.Connected := FALSE;

   

   memo1.visible := true;
   Application.ProcessMessages;
   memo1.text := '';
   ZipMaster1.ZipFileName:= edestino.text+'datasac_'+copy(datetostr(date),7,4)+copy(datetostr(date),4,2)+copy(datetostr(date),1,2)+'_'+copy(timetostr(time),1,2)+copy(timetostr(time),4,2)+'.zip';;
   ZipMaster1.FSpecArgs.Add(eorigem.text+'\*.*');
   ZipMaster1.Add;
   Showmessage('Arquivo compactado! Qtde. de arquivos = ' + IntToStr(ZipMaster1.SuccessCnt));

   frmmodulo.Conexao.Connected := TRUE;
//   FRMMODULO.ConexaoMestre.Connected := TRUE;
   FRMMODULO.ConexaoLOCAL.Connected := TRUE;

   frmmodulo.qrconfig.Open;
   frmmodulo.qrconfig.edit;
   frmmodulo.qrconfig.FieldByName('ultimo_backup').asdatetime := date;
   frmmodulo.qrconfig.post;
   frmmodulo.qrconfig.close;
   frmmodulo.ConexaoLocal.Commit;

   Memo1.visible := false;
  close;
  end;
end;

procedure Tfrmbackup.FormCreate(Sender: TObject);
begin
   ZipMaster1.Load_Zip_Dll;
   ZipMaster1.Load_Unz_Dll;
end;

procedure Tfrmbackup.ZipMaster1Message(Sender: TObject; ErrCode: Integer;
  Message: String);
begin
   { if ErrCode <> 0 then }   { uncomment this line to show errors ONLY }
 memo1.Lines.Add(message);
end;

procedure Tfrmbackup.FormDestroy(Sender: TObject);
begin
   ZipMaster1.Unload_Zip_Dll;
   ZipMaster1.Unload_Unz_Dll;
end;

end.
