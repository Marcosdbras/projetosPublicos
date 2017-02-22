unit Download_MFD;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Mask, ToolEdit;

type
  TfrmDownload_MFD = class(TForm)
    Panel1: TPanel;
    bt_ok: TButton;
    bt_cancelar: TButton;
    Bevel1: TBevel;
    GroupBox1: TGroupBox;
    rb_data: TRadioButton;
    rb_coo: TRadioButton;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    ed_inicio: TEdit;
    ed_fim: TEdit;
    ed_data_ini: TDateEdit;
    ed_data_fim: TDateEdit;
    GroupBox3: TGroupBox;
    rb_espelho: TRadioButton;
    rb_arquivo: TRadioButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bt_cancelarClick(Sender: TObject);
    procedure bt_okClick(Sender: TObject);
    procedure rb_dataClick(Sender: TObject);
    procedure rb_cooClick(Sender: TObject);
    procedure ed_data_iniKeyPress(Sender: TObject; var Key: Char);
    procedure ed_data_fimKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDownload_MFD: TfrmDownload_MFD;

implementation

uses unECF, Principal;

{$R *.dfm}

procedure TfrmDownload_MFD.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmDownload_MFD.bt_cancelarClick(Sender: TObject);
begin
  close;
end;

procedure TfrmDownload_MFD.bt_okClick(Sender: TObject);
begin
  frmprincipal.Memo1.Clear;
  if rb_coo.checked then
  begin
    if ed_inicio.text = '' then
    begin
      application.messagebox('Favor informar o COO Inicial!','Erro',mb_ok+mb_iconerror);
      ed_inicio.setfocus;
      exit;
    end;
    if ed_Fim.text = '' then
    begin
      application.messagebox('Favor informar o COO Final!','Erro',mb_ok+mb_iconerror);
      ed_Fim.setfocus;
      exit;
    end;
    if rb_espelho.Checked then
    begin
      if  cECF_Download(frmprincipal.cb_ecf.ItemIndex,'COO',ed_inicio.text,ed_fim.text) = 'OK' then
          frmprincipal.memo1.Lines.LoadFromFile('c:\retorno.txt')
      else
         frmprincipal.memo1.lines.add('ERRO');
    end
    else
    begin
      // arquivo ATO COTEPE 17/04
      frmprincipal.memo1.lines.add(  cECF_Arquivo_Fiscal_CAT52(frmprincipal.cb_ecf.ItemIndex,'COO',
                                         ed_inicio.text,ed_fim.text));
    end;
  end
  else
  begin
    if ed_data_ini.text = '' then
    begin
      application.messagebox('Favor informar a data Inicial!','Erro',mb_ok+mb_iconerror);
      ed_data_ini.setfocus;
      exit;
    end;
    if ed_data_Fim.text = '' then
    begin
      application.messagebox('Favor informar a data Final!','Erro',mb_ok+mb_iconerror);
      ed_data_fim.setfocus;
      exit;
    end;
    if rb_espelho.checked then
    begin
      if  cECF_Download(frmprincipal.cb_ecf.ItemIndex,'DATA',
          ed_data_ini.text,ed_data_fim.text) = 'OK' then
          frmprincipal.memo1.Lines.LoadFromFile('c:\retorno.txt')
      else
         frmprincipal.memo1.lines.add('ERRO');
    end
    else
    begin
      // arquivo ATO COTEPE 17/04
      frmprincipal.memo1.lines.add( cECF_Arquivo_Fiscal_CAT52(frmprincipal.cb_ecf.ItemIndex,'DATA',
                                         ed_data_ini.text,ed_data_fim.text));
    end;
  end;
  close;

end;

procedure TfrmDownload_MFD.rb_dataClick(Sender: TObject);
begin
  ed_data_ini.Visible := true;
  ed_data_fim.Visible := true;
  ed_inicio.Visible   := false;
  ed_fim.Visible      := false;
end;

procedure TfrmDownload_MFD.rb_cooClick(Sender: TObject);
begin
  ed_data_ini.Visible := false;
  ed_data_fim.Visible := false;
  ed_inicio.Visible   := true;
  ed_fim.Visible      := true;
end;

procedure TfrmDownload_MFD.ed_data_iniKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure TfrmDownload_MFD.ed_data_fimKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bt_ok.setfocus;
end;

procedure TfrmDownload_MFD.FormShow(Sender: TObject);
begin
  if rb_espelho.Checked then
    caption := 'Espelho da MFD'
  else
    caption := 'Arquivo da MFD';

  ed_data_ini.Date := date;
  ed_data_fim.Date := date;
  ed_inicio.Text :='0';
  ed_fim.text := '0';
end;

end.
