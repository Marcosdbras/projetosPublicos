unit cfop;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, StdCtrls, Buttons, Collection, TFlatPanelUnit,
  Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Grids, DBGrids,
  Mask, ToolEdit, CurrEdit, maskutils, RXDBCtrl, AdvGlowButton;

type
  Tfrmcfop = class(TForm)
    pficha: TFlatPanel;
    Label1: TLabel;
    Label2: TLabel;
    Pop1: TPopupMenu;
    Incluir1: TMenuItem;
    Alterar1: TMenuItem;
    Excluir1: TMenuItem;
    Localizar1: TMenuItem;
    Fechar1: TMenuItem;
    Pop2: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    plocalizar2: THeaderView;
    DBGrid1: TDBGrid;
    dscfop2: TDataSource;
    qrcfop: TZQuery;
    Relatrios1: TMenuItem;
    Regies1: TMenuItem;
    LRENDA: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    ERENDA: TRxDBCalcEdit;
    dscfop: TDataSource;
    POP3: TPopupMenu;
    InciodoNome1: TMenuItem;
    PartedoNome1: TMenuItem;
    FecharLocalizao1: TMenuItem;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    Label7: TLabel;
    DBEdit8: TDBEdit;
    Label8: TLabel;
    DBEdit9: TDBEdit;
    Label9: TLabel;
    RxDBCalcEdit1: TRxDBCalcEdit;
    Label10: TLabel;
    Label11: TLabel;
    RxDBCalcEdit2: TRxDBCalcEdit;
    Label12: TLabel;
    Bevel1: TBevel;
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
    qrcfopCFOP: TStringField;
    qrcfopNATUREZA: TStringField;
    qrcfopTIPO: TIntegerField;
    qrcfopICMS: TFloatField;
    qrcfopISS: TFloatField;
    qrcfopOBS1: TStringField;
    qrcfopOBS2: TStringField;
    qrcfopOBS3: TStringField;
    qrcfopOBS4: TStringField;
    qrcfopFILTRO: TIntegerField;
    qrcfopVALOR1: TFloatField;
    qrcfopVALOR2: TFloatField;
    qrcfopVALOR3: TFloatField;
    qrcfopVALOR4: TFloatField;
    qrcfopVALOR5: TFloatField;
    qrcfopVALOR6: TFloatField;
    qrcfopVALOR7: TFloatField;
    qrcfopVALOR8: TFloatField;
    qrcfopVALOR9: TFloatField;
    qrcfopVALOR10: TFloatField;
    qrcfopST: TStringField;
    qrcfopCLASSIFICACAO_FISCAL: TStringField;
    qrcfopREDUCAO_ICMS: TFloatField;
    qrcfopMARGEM_AGREGADA: TFloatField;
    Label13: TLabel;
    DBEdit10: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure enomeEnter(Sender: TObject);
    procedure enomeExit(Sender: TObject);
    procedure bincluirClick(Sender: TObject);
    procedure balterarClick(Sender: TObject);
    procedure bexcluirClick(Sender: TObject);
    procedure blocalizarClick(Sender: TObject);
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
    procedure ERENDAKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit7KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3Exit(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcfop: Tfrmcfop;
  comando : string;

implementation

uses modulo, principal, xloc_cfop;

{$R *.dfm}


procedure Tfrmcfop.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmcfop.FormShow(Sender: TObject);
begin


  pgravar.visible := false;
  pgravar.Align := alClient;


  frmmodulo.qrcfop.close;
  frmmodulo.qrcfop.SQL.clear;
  frmmodulo.qrcfop.SQL.add('select * from c000030 order by CFOP');
  frmmodulo.qrcfop.open;
  frmmodulo.qrcfop.first;
  pficha.Enabled := false;
  bincluir.SetFocus;

end;

procedure Tfrmcfop.enomeEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmcfop.enomeExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
end;

procedure Tfrmcfop.bincluirClick(Sender: TObject);
begin
  frmmodulo.qrcfop.insert;
  pficha.Enabled := true;
  dbedit1.setfocus;
  pgravar.Visible := true;
  PopupMenu := pop2;
end;

procedure Tfrmcfop.balterarClick(Sender: TObject);
begin

  IF dbedit1.Text <> '' THEN
  BEGIN
    
    frmmodulo.qrcfop.Edit;
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

procedure Tfrmcfop.bexcluirClick(Sender: TObject);
begin
  if frmprincipal.autentica('Excluir cfop',4) then
  begin
    frmmodulo.qrcfop.Delete;
    frmmodulo.Conexao.commit;
  end
  else
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
  end;
end;

procedure Tfrmcfop.blocalizarClick(Sender: TObject);
begin
  parametro_pesquisa := ' is not null ';
  frmXLOC_cfop := tfrmXLOC_cfop.create(self);
  frmXLOC_cfop.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    frmmodulo.qrcfop.Locate('cfop',resultado_pesquisa1,[loCaseInsensitive]);
  end;
end;

procedure Tfrmcfop.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmcfop.bgravarClick(Sender: TObject);
var situacao, tipo : integer;
DATA: STRING;
begin

   if dbedit1.text = '' then
   begin
     application.messagebox('Favor informar o CFOP!','Atenção',mb_ok+mb_iconerror);
     dbedit1.setfocus;
     exit;
   end;


   if dbedit2.text = '' then
   begin
     application.messagebox('Favor informar a Natureza da Operação!','Atenção',mb_ok+mb_iconerror);
     dbedit2.setfocus;
     exit;
   end;

  if dbedit3.text = '' then
   begin
     application.messagebox('Favor informar o Tipo de Operação!','Atenção',mb_ok+mb_iconerror);
     dbedit3.setfocus;
     exit;
   end;


  if (frmmodulo.qrcfop.State = dsinsert) or (frmmodulo.qrcfop.State = dsedit) then
  begin

      frmmodulo.qrcfop.post;
  end;

  frmmodulo.Conexao.Commit;
  pficha.Enabled := false;
  pgravar.Visible := false;
  PopupMenu := pop1;
  bincluir.setfocus;


end;

procedure Tfrmcfop.bcancelarClick(Sender: TObject);
begin
  if (frmmodulo.qrcfop.State = dsinsert) or (frmmodulo.qrcfop.State = dsedit) then
      frmmodulo.qrcfop.cancel;


  pficha.Enabled := false;
  pgravar.Visible := false;
  PopupMenu := pop1;
  bincluir.setfocus;
  comando := '';
end;

procedure Tfrmcfop.enomeKeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN PERFORM(WM_NEXTDLGCTL,0,0);
end;

procedure Tfrmcfop.BitBtn1Click(Sender: TObject);
begin
  frmmodulo.qrcfop.first;
end;

procedure Tfrmcfop.BitBtn2Click(Sender: TObject);
begin
  frmmodulo.qrcfop.last;
end;

procedure Tfrmcfop.BitBtn3Click(Sender: TObject);
begin
  frmmodulo.qrcfop.prior;
end;

procedure Tfrmcfop.BitBtn4Click(Sender: TObject);
begin
  frmmodulo.qrcfop.next;
end;

procedure Tfrmcfop.etipoExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
end;

procedure Tfrmcfop.edata_cadastroEnter(Sender: TObject);
begin
 tedit(sender).Color := $00A0FAF8;
 if frmmodulo.qrcfop.state = dsinsert then
end;

procedure Tfrmcfop.elimiteKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmcfop.DBEdit1Enter(Sender: TObject);
begin
tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmcfop.DBEdit1Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  if (frmmodulo.qrcfop.state = dsinsert) and (dbedit1.text <> '') then
  begin
    qrcfop.close;
    qrcfop.SQL.clear;
    qrcfop.SQL.add('select * from c000030 where cfop = '''+ dbedit1.text +'''');
    qrcfop.Open;
    if qrcfop.RecordCount > 0 then
     begin
      Application.messagebox('CFOP já Cadastrada! Verifique...','Atenção!',mb_ok+MB_ICONEXCLAMATION);
      DBEdit1.SetFocus;
      exit;
    end;
  end;

end;

procedure Tfrmcfop.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmcfop.RxDBCalcEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmcfop.DateEdit1Exit(Sender: TObject);
begin
tedit(sender).Color := clwindow;
end;

procedure Tfrmcfop.DBEdit4Exit(Sender: TObject);
begin
tedit(sender).Color := clwindow;
end;

procedure Tfrmcfop.ERENDAKeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN PERFORM(WM_NEXTDLGCTL,0,0);
end;

procedure Tfrmcfop.DBEdit7KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmcfop.DBEdit3Exit(Sender: TObject);
begin
tedit(sender).Color := clwindow;
 IF (FRMMODULO.QRCFOP.State = DSINSERT) OR (FRMMODULO.qrCFOP.State = DSEDIT) THEN
 BEGIN

  IF DBEDIT3.Text <> '1' THEN
  begin
    IF DBEDIT3.Text <> '2' THEN
    BEGIN
      IF DBEDIT3.Text <> '3' THEN
      BEGIN
        IF DBEDIT3.Text <> '4' THEN
        BEGIN
          SHOWMESSAGE('Favor digitar 1,2,3 ou 4!');
          dbedit3.setfocus;
        end;
      end;
    end;
  end;
  end;
end;

procedure Tfrmcfop.DBEdit2Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;

end;

end.




