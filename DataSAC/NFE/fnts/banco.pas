unit banco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, StdCtrls, Buttons, Collection, TFlatPanelUnit,
  Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Grids, DBGrids,
  Mask, rxtooledit, rxcurredit, maskutils, RXDBCtrl, ExtDlgs, AdvGlowButton,
  RzButton, RzRadChk, RzDBChk, RzEdit, RzDBEdit, RzDBSpin,
  wwclearbuttongroup, wwradiogroup;

type
  Tfrmbanco = class(TForm)
    Pop1: TPopupMenu;
    Incluir1: TMenuItem;
    Alterar1: TMenuItem;
    Excluir1: TMenuItem;
    Localizar1: TMenuItem;
    Fechar1: TMenuItem;
    Pop2: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    dsbanco2: TDataSource;
    qrbanco: TZQuery;
    Relatrios1: TMenuItem;
    Regies1: TMenuItem;
    dsbanco: TDataSource;
    POP3: TPopupMenu;
    InciodoNome1: TMenuItem;
    PartedoNome1: TMenuItem;
    FecharLocalizao1: TMenuItem;
    OpenPictureDialog1: TOpenPictureDialog;
    pficha: TFlatPanel;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBImage2: TDBImage;
    Panel2: TPanel;
    bincluir: TAdvGlowButton;
    balterar: TAdvGlowButton;
    bexcluir: TAdvGlowButton;
    blocalizar: TAdvGlowButton;
    DBAdvGlowButton1: TDBAdvGlowButton;
    DBAdvGlowButton2: TDBAdvGlowButton;
    DBAdvGlowButton3: TDBAdvGlowButton;
    DBAdvGlowButton4: TDBAdvGlowButton;
    bfechar: TAdvGlowButton;
    pgravar: TFlatPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    Bevel1: TBevel;
    bitbtn6: TAdvGlowButton;
    blocregiao: TAdvGlowButton;
    Bevel2: TBevel;
    GroupBox1: TGroupBox;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    rgrupo: TwwRadioGroup;
    rprazo: TRzDBSpinEdit;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    ed_debito: TRzDBNumericEdit;
    ed_credito: TRzDBNumericEdit;
    ed_dias_debito: TRzDBSpinEdit;
    ed_dias_credito: TRzDBSpinEdit;
    Label5: TLabel;
    Label7: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
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
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure etipoExit(Sender: TObject);
    procedure edata_cadastroEnter(Sender: TObject);
    procedure elimiteKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1Enter(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure RxDBCalcEdit2KeyPress(Sender: TObject; var Key: Char);

    procedure DateEdit1Exit(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure blocregiaoClick(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure blocalizarClick(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure DBCheckBox2KeyPress(Sender: TObject; var Key: Char);
    procedure DBCheckBox1KeyPress(Sender: TObject; var Key: Char);
    procedure DBCheckBox1Enter(Sender: TObject);
    procedure DBCheckBox1Exit(Sender: TObject);
    procedure rprazoKeyPress(Sender: TObject; var Key: Char);
    procedure rgrupoExit(Sender: TObject);
    procedure ed_debitoKeyPress(Sender: TObject; var Key: Char);
    procedure ed_creditoKeyPress(Sender: TObject; var Key: Char);
    procedure ed_dias_debitoKeyPress(Sender: TObject; var Key: Char);
    procedure ed_dias_creditoKeyPress(Sender: TObject; var Key: Char);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmbanco: Tfrmbanco;
  comando : string;

implementation

uses modulo, principal, xloc_banco, lista_banco2;

{$R *.dfm}


procedure Tfrmbanco.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmbanco.FormShow(Sender: TObject);
begin

  pgravar.visible := false;
  pgravar.Align := alClient;

  frmmodulo.qrbanco.close;
  frmmodulo.qrbanco.SQL.clear;
  frmmodulo.qrbanco.SQL.add('select * from c000013 order by NUMERO');
  frmmodulo.qrbanco.open;
  frmmodulo.qrbanco.first;
  pficha.Enabled := false;
  bincluir.SetFocus;
end;

procedure Tfrmbanco.enomeEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmbanco.enomeExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
end;

procedure Tfrmbanco.bincluirClick(Sender: TObject);
begin
  frmmodulo.qrbanco.insert;
  frmmodulo.qrbanco.FieldByName('FINANCEIRA').asinteger := 0;
  frmmodulo.qrbanco.FieldByName('CARTAO_CREDITO').asinteger := 0;


  pficha.Enabled := true;
  dbedit1.setfocus;
  pgravar.Visible := true;
  PopupMenu := pop2;
end;

procedure Tfrmbanco.balterarClick(Sender: TObject);
begin

  IF dbedit1.Text <> '' THEN
  BEGIN
    
    frmmodulo.qrbanco.Edit;
    pficha.Enabled := true;
    dbedit1.setfocus;
    pgravar.Visible := true;
    PopupMenu := pop2;
  END
  ELSE
  BEGIN
    Showmessage('Nenhum registro foi selecionado!');
  END;

end;

procedure Tfrmbanco.bexcluirClick(Sender: TObject);
begin
  if frmprincipal.autentica('Excluir banco',4) then
  begin
    frmmodulo.qrbanco.Delete;
    frmmodulo.Conexao.commit;
  end
  else
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
  end;
end;

procedure Tfrmbanco.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmbanco.bgravarClick(Sender: TObject);
var situacao, tipo : integer;
DATA: STRING;
begin


  if (frmmodulo.qrbanco.State = dsinsert) or (frmmodulo.qrbanco.State = dsedit) then
  begin

      frmmodulo.qrbanco.post;
  end;

  frmmodulo.Conexao.Commit;
  pficha.Enabled := false;
  pgravar.Visible := false;
  PopupMenu := pop1;
  bincluir.setfocus;


end;

procedure Tfrmbanco.bcancelarClick(Sender: TObject);
begin
  if (frmmodulo.qrbanco.State = dsinsert) or (frmmodulo.qrbanco.State = dsedit) then
      frmmodulo.qrbanco.cancel;


  pficha.Enabled := false;
  pgravar.Visible := false;
  PopupMenu := pop1;
  bincluir.setfocus;
  comando := '';
end;

procedure Tfrmbanco.enomeKeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN PERFORM(WM_NEXTDLGCTL,0,0);
end;

procedure Tfrmbanco.BitBtn1Click(Sender: TObject);
begin
  frmmodulo.qrbanco.first;
end;

procedure Tfrmbanco.BitBtn2Click(Sender: TObject);
begin
  frmmodulo.qrbanco.last;
end;

procedure Tfrmbanco.BitBtn3Click(Sender: TObject);
begin
  frmmodulo.qrbanco.prior;
end;

procedure Tfrmbanco.BitBtn4Click(Sender: TObject);
begin
  frmmodulo.qrbanco.next;
end;

procedure Tfrmbanco.etipoExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
end;

procedure Tfrmbanco.edata_cadastroEnter(Sender: TObject);
begin
 tedit(sender).Color := $00A0FAF8;
 if frmmodulo.qrbanco.state = dsinsert then
end;

procedure Tfrmbanco.elimiteKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmbanco.DBEdit1Enter(Sender: TObject);
begin
tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmbanco.DBEdit1Exit(Sender: TObject);
begin
tedit(sender).Color := clwindow;

end;

procedure Tfrmbanco.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmbanco.RxDBCalcEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmbanco.DateEdit1Exit(Sender: TObject);
begin
tedit(sender).Color := clwindow;
end;

procedure Tfrmbanco.DBEdit4Exit(Sender: TObject);
begin
tedit(sender).Color := clwindow;
end;

procedure Tfrmbanco.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then DBCheckBox1.setfocus;
end;

procedure Tfrmbanco.blocregiaoClick(Sender: TObject);
begin
  if OpenPictureDialog1.Execute then
  begin
    dbimage2.Picture.LoadFromFile(OpenPictureDialog1.FileName);
  end;
end;

procedure Tfrmbanco.BitBtn6Click(Sender: TObject);
begin
  DBImage2.Picture := nil;
end;

procedure Tfrmbanco.blocalizarClick(Sender: TObject);
begin
  frmxloc_BANCO := tfrmxloc_BANCO.create(self);
  frmxloc_BANCO.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    frmmodulo.qrBANCO.Locate('NUMERO',resultado_pesquisa1,[loCaseInsensitive]);
  end;
end;

procedure Tfrmbanco.BitBtn5Click(Sender: TObject);
begin
  FRMLISTA_BANCO2 := TFRMLISTA_BANCO2.CREATE(SELF);
  FRMLISTA_BANCO2.SHOWMODAL;
end;

procedure Tfrmbanco.DBCheckBox2KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
      if dbcheckbox2.Checked or  dbcheckbox1.checked then
        rgrupo.SetFocus else
        if pgravar.Visible then bgravar.SetFocus;
  end;
end;

procedure Tfrmbanco.DBCheckBox1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmbanco.DBCheckBox1Enter(Sender: TObject);
begin
tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmbanco.DBCheckBox1Exit(Sender: TObject);
begin
tedit(sender).Color := clbtnface;
end;

procedure Tfrmbanco.rprazoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    ed_debito.setfocus;
  end;
end;

procedure Tfrmbanco.rgrupoExit(Sender: TObject);
begin
  if pficha.Enabled then rprazo.setfocus;
end;

procedure Tfrmbanco.ed_debitoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then ed_dias_debito.setfocus;
end;

procedure Tfrmbanco.ed_creditoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
     ed_dias_credito.setfocus;
  end;
end;

procedure Tfrmbanco.ed_dias_debitoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then ed_credito.setfocus;
end;

procedure Tfrmbanco.ed_dias_creditoKeyPress(Sender: TObject;
  var Key: Char);
begin
   if key = #13 then
   begin
     if  pgravar.Visible then
        bgravar.setfocus;
   end;
end;

end.




