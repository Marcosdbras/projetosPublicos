unit USendEmail;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, StdCtrls,
  iniFiles, ACBrNFe;

type
  TFrmSendEmail = class(TForm)
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    Label1: TLabel;
    EdtPara: TEdit;
    Label2: TLabel;
    EdtCC: TEdit;
    Label3: TLabel;
    EdtCCO: TEdit;
    Label4: TLabel;
    EdtAssunto: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    ComboPrioridade: TComboBox;
    CheckLeitura: TCheckBox;
    BtnAnexar: TButton;
    MemoMensagem: TMemo;
    Label7: TLabel;
    BtnEnviar: TButton;
    BtnCancelar: TButton;
    LbAnexos: TListBox;
    OpenDialog1: TOpenDialog;
    BtnRemover: TButton;
    ACBrNFe1: TACBrNFe;
    Edit1: TEdit;
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnEnviarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnAnexarClick(Sender: TObject);
    procedure BtnRemoverClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSendEmail: TFrmSendEmail;
   sServidorSmtp, sPortaSmtp, sUsuarioSmtp, sSenhaSmtp, sAssunto, sMensagem, sFromSMTP : string;

implementation


{$R *.dfm}

procedure TFrmSendEmail.BtnCancelarClick(Sender: TObject);
begin
   close;
end;

procedure TFrmSendEmail.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action:= cafree;
end;

procedure TFrmSendEmail.BtnEnviarClick(Sender: TObject);
var iAnexo : integer;
begin

   ACBrNFe1.NotasFiscais.Clear;
   ACBrNFe1.NotasFiscais.LoadFromFile(edit1.text);
   ACBrNFe1.NotasFiscais.Items[0].EnviarEmail(sServidorSmtp,
   sPortaSmtp,sUsuariosmtp,sSenhaSmtp,
   sUsuarioSmtp, edtPara.Text, edtAssunto.Text,
   MemoMensagem.Lines, True, True);   //Enviar PDF junto

   Application.MessageBox('Email enviado com sucesso!', 'Confirmação', MB_ICONINFORMATION +   MB_OK);

   close;

end;

procedure TFrmSendEmail.FormShow(Sender: TObject);
Var IniFile  : String ;
    Ini     : TIniFile ;
    Ok : Boolean;
    StreamMemo : TMemoryStream;
    bConexaoSegura  : boolean;
begin
  IniFile := ChangeFileExt( Application.ExeName, '.ini') ;
  try
    Ini := TIniFile.Create( IniFile );
    sServidorSmtp     := trim(Ini.ReadString( 'Email','Host'   ,'')) ;
    sPortaSmtp        := trim(Ini.ReadString( 'Email','Port'   ,'')) ;
    sUsuarioSmtp      := trim(Ini.ReadString( 'Email','User'   ,'')) ;
    sSenhaSmtp        := trim(Ini.ReadString( 'Email','Pass'   ,'')) ;
    sAssunto          := trim(Ini.ReadString( 'Email','Assunto','')) ;
    bConexaoSegura    := Ini.ReadBool(   'Email','SSL'    ,False) ;
    sMensagem         := 'Arquivo Danfe';
    sFromSmtp         :='marcelomgoncalves@hotmail.com';
  finally
     Ini.Free ;
  end;

end;

procedure TFrmSendEmail.BtnAnexarClick(Sender: TObject);
begin
   if OpenDialog1.Execute then
      LbAnexos.Items.Add(OpenDialog1.FileName);
end;

procedure TFrmSendEmail.BtnRemoverClick(Sender: TObject);
begin
   LbAnexos.Items.Delete(LbAnexos.ItemIndex);
end;

end.
