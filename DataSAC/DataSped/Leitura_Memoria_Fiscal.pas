unit Leitura_Memoria_Fiscal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Mask, ToolEdit;

type
  TfrmLeitura_Memoria_Fiscal = class(TForm)
    GroupBox1: TGroupBox;
    rb_data: TRadioButton;
    rb_crz: TRadioButton;
    Panel1: TPanel;
    Bevel1: TBevel;
    bt_ok: TButton;
    bt_cancelar: TButton;
    GroupBox2: TGroupBox;
    ed_inicio: TEdit;
    ed_fim: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    ed_data_ini: TDateEdit;
    ed_data_fim: TDateEdit;
    GroupBox3: TGroupBox;
    rb_ecf: TRadioButton;
    rb_arquivo: TRadioButton;
    GroupBox4: TGroupBox;
    rb_completa: TRadioButton;
    rb_simplificada: TRadioButton;
    procedure bt_cancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ed_inicioKeyPress(Sender: TObject; var Key: Char);
    procedure ed_fimKeyPress(Sender: TObject; var Key: Char);
    procedure ed_data_fimKeyPress(Sender: TObject; var Key: Char);
    procedure ed_data_iniKeyPress(Sender: TObject; var Key: Char);
    procedure rb_dataClick(Sender: TObject);
    procedure rb_crzClick(Sender: TObject);
    procedure rb_dataKeyPress(Sender: TObject; var Key: Char);
    procedure rb_crzKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure bt_okClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function Daruma_RSA_CriarAssinatura(caminhoDoArquivo: string ; sMD5: String; sAssinaturaEletronica: string): Integer; StdCall; External 'Daruma32.dll';

var
  frmLeitura_Memoria_Fiscal: TfrmLeitura_Memoria_Fiscal;

implementation

  uses unECF, funcoes, principal, msg_Operador, Constantes;

{$R *.dfm}

// -------------------------------------------------------------------------- //
procedure TfrmLeitura_Memoria_Fiscal.bt_cancelarClick(Sender: TObject);
begin
  close;
end;

// -------------------------------------------------------------------------- //
procedure TfrmLeitura_Memoria_Fiscal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

// -------------------------------------------------------------------------- //
procedure TfrmLeitura_Memoria_Fiscal.ed_inicioKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    perform(wm_nextdlgctl,0,0);
end;

// -------------------------------------------------------------------------- //
procedure TfrmLeitura_Memoria_Fiscal.ed_fimKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bt_ok.setfocus;
end;

// -------------------------------------------------------------------------- //
procedure TfrmLeitura_Memoria_Fiscal.ed_data_fimKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bt_ok.setfocus;
end;

// -------------------------------------------------------------------------- //
procedure TfrmLeitura_Memoria_Fiscal.ed_data_iniKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    Perform(wm_nextdlgctl,0,0);
end;

// -------------------------------------------------------------------------- //
procedure TfrmLeitura_Memoria_Fiscal.rb_dataClick(Sender: TObject);
begin
  ed_data_ini.Visible := true;
  ed_data_fim.Visible := true;
  ed_inicio.Visible   := false;
  ed_fim.Visible      := false;
end;

// -------------------------------------------------------------------------- //
procedure TfrmLeitura_Memoria_Fiscal.rb_crzClick(Sender: TObject);
begin
  ed_data_ini.Visible := false;
  ed_data_fim.Visible := false;
  ed_inicio.Visible   := true;
  ed_fim.Visible      := true;
end;

// -------------------------------------------------------------------------- //
procedure TfrmLeitura_Memoria_Fiscal.rb_dataKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    Perform(wm_nextdlgctl,0,0);
end;

// -------------------------------------------------------------------------- //
procedure TfrmLeitura_Memoria_Fiscal.rb_crzKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    Perform(wm_nextdlgctl,0,0);
end;

// -------------------------------------------------------------------------- //
procedure TfrmLeitura_Memoria_Fiscal.FormShow(Sender: TObject);
begin
  ed_data_ini.Date := date;
  ed_data_fim.Date := date;
  ed_inicio.Text :='0';
  ed_fim.text := '0';

  rb_data.SetFocus;
end;

// -------------------------------------------------------------------------- //
procedure TfrmLeitura_Memoria_Fiscal.bt_okClick(Sender: TObject);
var
  sImpressao, stipo: string;
  Str_PathArquivo: String;
  Str_Retorna_MD5: String;
  Str_Retorna_AssinaturaEletronica: String;
  sNome_arquivo: pansichar;

begin
  if FileExists('c:\retorno.txt') then DeleteFile('c:\retorno.txt');

  if rb_ecf.checked then
    sImpressao := 'ECF'
  else
    sImpressao := 'ARQUIVO';

  if rb_completa.Checked then
     stipo := 'A'
  else
     stipo := 'S';

  if rb_data.Checked then
  begin

    frmMsg_operador.lb_msg.Caption := 'Aguarde! Emitindo Leitura MF...';
    frmMsg_Operador.Show;
    frmmsg_operador.Refresh;

    sMsg := cECF_Leitura_Memoria_Fiscal(iECF_modelo,
                                       'DATA',stipo,sImpressao,
                                        ed_data_ini.text,
                                        ed_data_fim.text);

    frmMsg_operador.hide;

    if sMsg <> OK then
    begin
      application.messagebox(pansichar('Erro ao imprimir Leitura MF'+#13+
                                       'Mensagem: '+sMsg),'Erro',mb_ok+mb_Iconerror);
    end;
  end;


  if rb_crz.Checked then
  begin


    frmMsg_operador.lb_msg.Caption := 'Aguarde! Emitindo Leitura MF...';
    frmMsg_Operador.Show;
    frmmsg_operador.Refresh;

    sMsg := cECF_Leitura_Memoria_Fiscal(iECF_modelo,
                                            'CRZ',stipo,sImpressao,
                                            ed_inicio.text,
                                            ed_fim.text);
    frmMsg_operador.hide;

    if sMsg <> OK then
    begin
      application.messagebox(pansichar('Erro ao imprimir Leitura MF'+#13+
                                       'Mensagem: '+sMsg),'Erro',mb_ok+mb_Iconerror);
    end;

  end;

  // adicionando assinatura digital EAD
  if sImpressao = 'ARQUIVO' then
  begin
    if FileExists('c:\retorno.txt') then
    begin
      if rb_completa.Checked then
        sNome_arquivo := 'c:\DATASAC\paf\txt\LMFC.txt'
      else
        sNome_arquivo := 'c:\DATASAC\paf\txt\LMFS.txt';

      if FileExists(sNome_arquivo) then
         DeleteFile(snome_arquivo);

      CopyFile('c:\retorno.txt',sNome_arquivo,false);
      TirarEAD(sNome_arquivo);
      assinatura_digital(sNome_arquivo);
      application.messagebox(pansichar('Arquivo criado com sucesso!'+#13+
                                       'Local: '+snome_arquivo),'Aviso',mb_ok+mb_iconinformation);
    end;
  end;
  
  close;
end;

end.

