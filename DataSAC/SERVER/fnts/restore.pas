unit restore;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, rxtooledit, ExtCtrls, ZipMstr,
  Menus, AdvGlowButton, TFlatPanelUnit;

type
  Tfrmrestore = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    edestino: TDirectoryEdit;
    ZipMaster1: TZipMaster;
    DelBut: TButton;
    Memo1: TMemo;
    eorigem: TFilenameEdit;
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
  frmrestore: Tfrmrestore;
  autob : boolean;
  i : integer;  

implementation

uses modulo;

{$R *.dfm}

procedure Tfrmrestore.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmrestore.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmrestore.FormShow(Sender: TObject);
begin
  eorigem.text := '';
  edestino.text := copia_origem;

  memo1.align := alclient;

end;

procedure Tfrmrestore.eorigemKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmrestore.BitBtn1Click(Sender: TObject);
begin
  IF (EORIGEM.Text = '') OR (EDESTINO.Text = '') THEN
  BEGIN
    SHOWMESSAGE('Favor completar os campos de Origem e Destino!');
  END
  ELSE
  BEGIN

   memo1.visible := true;
   Application.ProcessMessages;
   memo1.text := '';

  if application.messagebox('Tem certeza que deseja restaurar os dados solicitados?','Atenção',mb_yesno+mb_iconquestion) = idyes then
  begin
    with ZipMaster1 do
    begin
     ZipMaster1.ZipFileName:= eorigem.text;
     ExtrBaseDir:= edestino.text;
     ExtrOptions:=ExtrOptions+[ExtrOverwrite];
     Extract;
     Showmessage('Arquivos Estraídos = ' + IntToStr(SuccessCnt));
    end;
  end;
  close;
  END;
end;

procedure Tfrmrestore.FormCreate(Sender: TObject);
begin
   ZipMaster1.Load_Zip_Dll;
   ZipMaster1.Load_Unz_Dll;
end;

procedure Tfrmrestore.ZipMaster1Message(Sender: TObject; ErrCode: Integer;
  Message: String);
begin
   { if ErrCode <> 0 then }   { uncomment this line to show errors ONLY }
 memo1.Lines.Add(message);
end;

procedure Tfrmrestore.FormDestroy(Sender: TObject);
begin
   ZipMaster1.Unload_Zip_Dll;
   ZipMaster1.Unload_Unz_Dll;
end;

end.
