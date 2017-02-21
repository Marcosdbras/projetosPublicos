unit funcionario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, StdCtrls, Buttons, Collection, TFlatPanelUnit,
  Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Grids, DBGrids,
  Mask, ToolEdit, CurrEdit, maskutils, RXDBCtrl, PageView, AdvGlowButton;

type
  Tfrmfuncionario = class(TForm)
    Pop1: TPopupMenu;
    Incluir1: TMenuItem;
    Alterar1: TMenuItem;
    Excluir1: TMenuItem;
    Localizar1: TMenuItem;
    Fechar1: TMenuItem;
    Pop2: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    dsfunci2: TDataSource;
    qrfunci: TZQuery;
    Relatrios1: TMenuItem;
    dsfunci: TDataSource;
    POP3: TPopupMenu;
    InciodoNome1: TMenuItem;
    PartedoNome1: TMenuItem;
    FecharLocalizao1: TMenuItem;
    pficha: TFlatPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label14: TLabel;
    LRG: TLabel;
    LCPF: TLabel;
    Label21: TLabel;
    Label3: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    Label32: TLabel;
    Label31: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label12: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    DBEdit1: TDBEdit;
    edata_cadastro: TDBDateEdit;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit9: TDBEdit;
    DBComboBox1: TDBComboBox;
    DBDateEdit1: TDBDateEdit;
    DBDateEdit2: TDBDateEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    Panel2: TPanel;
    bincluir: TAdvGlowButton;
    balterar: TAdvGlowButton;
    bexcluir: TAdvGlowButton;
    blocalizar: TAdvGlowButton;
    DBAdvGlowButton1: TDBAdvGlowButton;
    DBAdvGlowButton2: TDBAdvGlowButton;
    DBAdvGlowButton3: TDBAdvGlowButton;
    DBAdvGlowButton4: TDBAdvGlowButton;
    bitbtn5: TAdvGlowButton;
    bfechar: TAdvGlowButton;
    pgravar: TFlatPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    Bevel2: TBevel;
    GroupBox1: TGroupBox;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBEdit38: TDBEdit;
    Label57: TLabel;
    AdvGlowButton1: TAdvGlowButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure enomeEnter(Sender: TObject);
    procedure enomeExit(Sender: TObject);
    procedure bincluirClick(Sender: TObject);
    procedure balterarClick(Sender: TObject);
    procedure bexcluirClick(Sender: TObject);
    procedure bfecharClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure enomeKeyPress(Sender: TObject; var Key: Char);
    procedure etipoExit(Sender: TObject);
    procedure edata_cadastroEnter(Sender: TObject);
    procedure elimiteKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1Enter(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure RxDBCalcEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit15Exit(Sender: TObject);
    procedure DBEdit8Exit(Sender: TObject);
    procedure edata_cadastroExit(Sender: TObject);
    procedure bfinalizarClick(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure DBEdit24KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn5Click(Sender: TObject);
    procedure blocalizarClick(Sender: TObject);
    procedure DBCheckBox1KeyPress(Sender: TObject; var Key: Char);
    procedure DBCheckBox2KeyPress(Sender: TObject; var Key: Char);
    procedure DBCheckBox3KeyPress(Sender: TObject; var Key: Char);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure DBEdit6Exit(Sender: TObject);
    procedure DBEdit38KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit38Exit(Sender: TObject);
    procedure DBEdit10Exit(Sender: TObject);
    procedure DBEdit11Exit(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmfuncionario: Tfrmfuncionario;
  comando : string;

implementation

uses modulo, principal, loc_regiao, regiao, loc_funci, xloc_funcionario,
  lista_funcionario2, xloc_cidade;

{$R *.dfm}


procedure Tfrmfuncionario.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmfuncionario.FormShow(Sender: TObject);
begin

  frmmodulo.qrregiao.close;
  frmmodulo.qrregiao.sql.clear;
  frmmodulo.qrregiao.SQL.add('select * from c000005 order by regiao');
  frmmodulo.qrregiao.open;
  frmmodulo.qrregiao.IndexFieldNames := 'regiao';




  pgravar.visible := false;
  pgravar.Align := alClient;

  frmmodulo.qrfunci.close;
  frmmodulo.qrfunci.SQL.clear;
  frmmodulo.qrfunci.SQL.add('select * from c000008 order by codigo');
  frmmodulo.qrfunci.open;
  frmmodulo.qrfunci.first;
  pficha.Enabled := false;
  bincluir.SetFocus;
end;

procedure Tfrmfuncionario.enomeEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmfuncionario.enomeExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
end;

procedure Tfrmfuncionario.bincluirClick(Sender: TObject);
begin
  frmmodulo.qrfunci.insert;
  frmmodulo.qrfunci.fieldbyname('codigo').asstring := frmprincipal.codifica('000008');
  FRMMODULO.QRFUNCI.FIELDBYNAME('F_CAIXA').ASINTEGER := 0;
  FRMMODULO.QRFUNCI.FIELDBYNAME('F_VENDEDOR').ASINTEGER := 0;
  FRMMODULO.QRFUNCI.FIELDBYNAME('F_TECNICO').ASINTEGER := 0;
  pficha.Enabled := true;
  dbedit26.setfocus;
  pgravar.Visible := true;

  PopupMenu := pop2;
end;

procedure Tfrmfuncionario.balterarClick(Sender: TObject);
begin

  IF dbedit1.Text <> '' THEN
  BEGIN


    frmmodulo.qrfunci.Edit;
    pficha.Enabled := true;
    dbedit26.setfocus;
    pgravar.Visible := true;
    PopupMenu := pop2;
  END
  ELSE
  BEGIN
    Showmessage('Nenhum registro foi selecionado!');
  END;

end;

procedure Tfrmfuncionario.bexcluirClick(Sender: TObject);
begin
  if frmprincipal.autentica('Excluir funci',4) then
  begin
    frmmodulo.qrfunci.Delete;
    frmmodulo.Conexao.commit;
  end
  else
  begin
    Application.messagebox('Acesso n�o permitido!','Erro!',mb_ok+mb_iconerror);
  end;
end;

procedure Tfrmfuncionario.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmfuncionario.bgravarClick(Sender: TObject);
var situacao, tipo : integer;
DATA: STRING;
begin
  if dbedit2.text = '' then
  begin
     application.messagebox('Favor informar um nome v�lido para este funcionario!','Aten��o',mb_ok+mb_iconerror);
     dbedit2.setfocus;
     exit;
  end;

  if (frmmodulo.qrfunci.State = dsinsert) or (frmmodulo.qrfunci.State = dsedit) then
  begin
      frmmodulo.qrfunci.post;
  end;

  frmmodulo.Conexao.Commit;
  pficha.Enabled := false;
  pgravar.Visible := false;
  PopupMenu := pop1;
  bincluir.setfocus;





end;

procedure Tfrmfuncionario.bcancelarClick(Sender: TObject);
begin
  if (frmmodulo.qrfunci.State = dsinsert) or (frmmodulo.qrfunci.State = dsedit) then
      frmmodulo.qrfunci.cancel;


  pficha.Enabled := false;
  pgravar.Visible := false;
  PopupMenu := pop1;
  bincluir.setfocus;
  comando := '';

end;

procedure Tfrmfuncionario.enomeKeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN PERFORM(WM_NEXTDLGCTL,0,0);
end;

procedure Tfrmfuncionario.etipoExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
end;

procedure Tfrmfuncionario.edata_cadastroEnter(Sender: TObject);
begin
 tedit(sender).Color := $00A0FAF8;
 if frmmodulo.qrfunci.state = dsinsert then
  EDATA_CADASTRO.Date := DATE;
end;

procedure Tfrmfuncionario.elimiteKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmfuncionario.DBEdit1Enter(Sender: TObject);
begin
tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmfuncionario.DBEdit1Exit(Sender: TObject);
begin
tedit(sender).Color := clwindow;
end;

procedure Tfrmfuncionario.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmfuncionario.RxDBCalcEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmfuncionario.DBEdit15Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  IF DBEDIT15.Text <> '' THEN
  BEGIN
  if (frmmodulo.qrfunci.state = dsinsert) or (frmmodulo.qrfunci.State = dsedit) then
  begin
    frmprincipal.CheckCPF1.Cpf := dbedit15.text;
    if frmprincipal.CheckCPF1.Valido then
    begin
     if pos('-',dbedit15.text) = 0 then
       frmmodulo.qrfunci.fieldbyname('Cpf').asstring := FormatMaskText('999.999.999-99;0;_',dbedit15.text);
    end
    else
    begin
      Showmessage('CPF Inv�lido!');
      dbedit15.SetFocus;
    end;
  end;
  END;


end;

procedure Tfrmfuncionario.DBEdit8Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  IF DBEDIT8.Text <> '' THEN
  BEGIN
    if (frmmodulo.qrfunci.state = dsinsert) or (frmmodulo.qrfunci.State = dsedit) then
    begin
     if pos('-',dbedit8.text) = 0 then
       frmmodulo.qrfunci.fieldbyname('cEP').asstring := FormatMaskText('99999-999;0;_',dbedit8.text);

    END;
  END;

end;

procedure Tfrmfuncionario.edata_cadastroExit(Sender: TObject);
begin
tedit(sender).Color := clwindow;

 if tdbdateedit(sender).text <> '  /  /    ' then
 begin
  TRY
    tdbdateedit(sender).Date := strtodate(tdbdateedit(sender).text);
  EXCEPT
    showmessage('Data Inv�lida');
    tdbdateedit(sender).SetFocus;
  END;
 end;


end;

procedure Tfrmfuncionario.bfinalizarClick(Sender: TObject);
begin
  bgravar.setfocus;
end;

procedure Tfrmfuncionario.DBEdit1Change(Sender: TObject);
begin
 IF FRMMODULO.qrfunci.State <> DSINSERT THEN
 BEGIN
   IF FRMMODULO.qrfunci.STATE <> DSEDIT THEN
   BEGIN

   TRY
   IF FRMMODULO.QRfunci.FIELDBYNAME('SITUACAO').ASINTEGER = 2 THEN
   BEGIN
     DBDATEEDIT1.VISIBLE := TRUE;
     LABEL16.VISIBLE := TRUE;

  end
  else
  begin
    DBDATEEDIT1.VISIBLE := FALSE;
    LABEL16.VISIBLE := FALSE;
 END;
 EXCEPT
 END;
 END;
 END;
end;

procedure Tfrmfuncionario.DBEdit24KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then DBCHECKBOX1.SETFOCUS;
end;

procedure Tfrmfuncionario.BitBtn5Click(Sender: TObject);
begin
  frmlista_funcionario2 := tfrmlista_funcionario2.create(self);
  frmlista_funcionario2.showmodal;
end;

procedure Tfrmfuncionario.blocalizarClick(Sender: TObject);
begin
  frmxloc_FUNCIONARIO := tfrmxloc_FUNCIONARIO.create(self);
  frmxloc_FUNCIONARIO.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    frmmodulo.qrFUNCI.Locate('codigo',resultado_pesquisa1,[loCaseInsensitive]);
  end;
end;

procedure Tfrmfuncionario.DBCheckBox1KeyPress(Sender: TObject;
  var Key: Char);
begin
  IF KEY = #13 THEN PERFORM(WM_NEXTDLGCTL,0,0);
end;

procedure Tfrmfuncionario.DBCheckBox2KeyPress(Sender: TObject;
  var Key: Char);
begin
  IF KEY = #13 THEN PERFORM(WM_NEXTDLGCTL,0,0);
end;

procedure Tfrmfuncionario.DBCheckBox3KeyPress(Sender: TObject;
  var Key: Char);
begin
  IF KEY = #13 THEN
  BEGIN
    IF PGRAVAR.VISIBLE THEN BGRAVAR.SETFOCUS;
  END;
end;

procedure Tfrmfuncionario.AdvGlowButton1Click(Sender: TObject);
begin
  parametro_pesquisa := '';
  frmxloc_cidade := tfrmxloc_cidade.create(self);
  frmxloc_cidade.showmodal;

  frmmodulo.qrfunci.FieldByName('CIDADE').AsString := resultado_pesquisa2;
  frmmodulo.qrfunci.FieldByName('UF').AsString := resultado_pesquisa3;
  DBEdit6.SetFocus;
end;


procedure Tfrmfuncionario.DBEdit6Exit(Sender: TObject);
begin
tedit(sender).Color := clwindow;
IF (frmmodulo.qrfunci.state = dsinsert) or (frmmodulo.qrfunci.State = dsedit) then
  begin
    if DBEdit6.Text = '' then
       AdvGlowButton1.OnClick (frmfuncionario);
   end;
end;



procedure Tfrmfuncionario.DBEdit38KeyPress(Sender: TObject; var Key: Char);
begin
  if key <> #8 then
  IF KEY = #13 THEN
  perform(wm_nextdlgctl,0,0)
  else
  if ( key  in ['0'..'9']) then
   //
  else abort;
end;

procedure Tfrmfuncionario.DBEdit38Exit(Sender: TObject);
begin
tedit(sender).Color := clwindow;
frmmodulo.qrfunci.fieldbyname('numero').asstring := frmprincipal.zerarcodigo(dbedit38.text,5);
end;

procedure Tfrmfuncionario.DBEdit10Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  IF DBEDIT10.Text <> '' THEN
  BEGIN
    if (frmmodulo.qrfunci.state = dsinsert) or (frmmodulo.qrfunci.State = dsedit) then
    begin
     if pos('-',dbedit10.text) = 0 then
       frmmodulo.qrfunci.fieldbyname('TELEFONE').asstring := FormatMaskText('(99)9999-9999;0;_',dbedit10.text);
    END;
  END;
end;

procedure Tfrmfuncionario.DBEdit11Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  IF DBEDIT11.Text <> '' THEN
  BEGIN
    if (frmmodulo.qrfunci.state = dsinsert) or (frmmodulo.qrfunci.State = dsedit) then
    begin
     if pos('-',dbedit11.text) = 0 then
       frmmodulo.qrfunci.fieldbyname('CELULAR').asstring := FormatMaskText('(99)9999-9999;0;_',dbedit11.text);
    END;
  END;
end;

end.



////  ecpf.text := FormatMaskText('99.999.999/9999-99;0;_',ecpf.text);
