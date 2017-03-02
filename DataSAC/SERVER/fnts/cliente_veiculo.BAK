unit cliente_veiculo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, StdCtrls, Buttons, Collection, TFlatPanelUnit,
  Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Grids, DBGrids,
  Mask, ToolEdit, CurrEdit, maskutils, RXDBCtrl, AdvGlowButton, wwdbedit,
  Wwdotdot, Wwdbcomb;

type
  Tfrmcliente_veiculo = class(TForm)
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
    dsveiculo2: TDataSource;
    qrcliente_veiculo: TZQuery;
    Relatrios1: TMenuItem;
    Regies1: TMenuItem;
    LRENDA: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    dsveiculo: TDataSource;
    POP3: TPopupMenu;
    InciodoNome1: TMenuItem;
    PartedoNome1: TMenuItem;
    FecharLocalizao1: TMenuItem;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DBEdit7: TDBEdit;
    Label7: TLabel;
    DBEdit8: TDBEdit;
    Label4: TLabel;
    DBComboBox1: TDBComboBox;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit9: TDBEdit;
    Label36: TLabel;
    ECLIENTE: TDBEdit;
    BLOCCLIENTE: TBitBtn;
    ENOMECLIENTE: TDBEdit;
    Label8: TLabel;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    Label9: TLabel;
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
    euf: TwwDBComboBox;
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
    procedure BLOCCLIENTEClick(Sender: TObject);
    procedure ECLIENTEExit(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcliente_veiculo: Tfrmcliente_veiculo;
  comando : string;

implementation

uses modulo, principal, xloc_cliente_VEICULO, xloc_cliente;

{$R *.dfm}


procedure Tfrmcliente_veiculo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmcliente_veiculo.FormShow(Sender: TObject);
begin


  pgravar.visible := false;
  pgravar.Align := alClient;

  frmmodulo.qrcliente.close;
  frmmodulo.qrcliente.SQL.clear;
  frmmodulo.qrcliente.SQL.add('select * from c000007 order by nome');
  frmmodulo.qrcliente.open;
  frmmodulo.qrcliente.IndexFieldNames := 'nome';



  frmmodulo.qrcliente_veiculo.close;
  frmmodulo.qrcliente_veiculo.SQL.clear;
  frmmodulo.qrcliente_veiculo.SQL.add('select * from c000063 order by veiculo');
  frmmodulo.qrcliente_veiculo.open;
  frmmodulo.qrcliente_veiculo.first;
  pficha.Enabled := false;
  bincluir.SetFocus;
end;

procedure Tfrmcliente_veiculo.enomeEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmcliente_veiculo.enomeExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
end;

procedure Tfrmcliente_veiculo.bincluirClick(Sender: TObject);
begin
  frmmodulo.qrcliente_veiculo.insert;
  frmmodulo.qrcliente_veiculo.FieldByName('codigo').asstring := frmprincipal.codifica('000054');
  pficha.Enabled := true;
  ecliente.setfocus;
  pgravar.Visible := true;
  PopupMenu := pop2;
end;

procedure Tfrmcliente_veiculo.balterarClick(Sender: TObject);
begin

  IF dbedit1.Text <> '' THEN
  BEGIN
    
    frmmodulo.qrcliente_veiculo.Edit;
    pficha.Enabled := true;
    ecliente.setfocus;
    pgravar.Visible := true;
    PopupMenu := pop2;
  END
  ELSE
  BEGIN
    Showmessage('Nenhum registro foi selecionado!');
  END;

end;

procedure Tfrmcliente_veiculo.bexcluirClick(Sender: TObject);
begin
  if frmprincipal.autentica('Excluir veiculo',4) then
  begin
    frmmodulo.qrcliente_veiculo.Delete;
    frmmodulo.Conexao.commit;
  end
  else
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
  end;
end;

procedure Tfrmcliente_veiculo.blocalizarClick(Sender: TObject);
begin


  parametro_pesquisa := '';
  frmXLOC_CLIENTE_VEICULO := tfrmXLOC_CLIENTE_VEICULO.create(self);
  frmXLOC_CLIENTE_VEICULO.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    frmmodulo.qrcliente_veiculo.Locate('codigo',resultado_pesquisa1,[loCaseInsensitive]);
  end;
end;

procedure Tfrmcliente_veiculo.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmcliente_veiculo.bgravarClick(Sender: TObject);
var situacao, tipo : integer;
DATA: STRING;
begin
   if dbedit2.text = '' then
   begin
     application.messagebox('Favor informar um nome válido para este registro!','Atenção',mb_ok+mb_iconerror);
     dbedit2.setfocus;
     exit;
   end;


  if (frmmodulo.qrcliente_veiculo.State = dsinsert) or (frmmodulo.qrcliente_veiculo.State = dsedit) then
  begin

      frmmodulo.qrcliente_veiculo.post;
  end;

  frmmodulo.Conexao.Commit;
  pficha.Enabled := false;
  pgravar.Visible := false;
  PopupMenu := pop1;
  bincluir.setfocus;


end;

procedure Tfrmcliente_veiculo.bcancelarClick(Sender: TObject);
begin
  if (frmmodulo.qrcliente_veiculo.State = dsinsert) or (frmmodulo.qrcliente_veiculo.State = dsedit) then
      frmmodulo.qrcliente_veiculo.cancel;


  pficha.Enabled := false;
  pgravar.Visible := false;
  PopupMenu := pop1;
  bincluir.setfocus;
  comando := '';
end;

procedure Tfrmcliente_veiculo.enomeKeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN PERFORM(WM_NEXTDLGCTL,0,0);
end;

procedure Tfrmcliente_veiculo.BitBtn1Click(Sender: TObject);
begin
  frmmodulo.qrcliente_veiculo.first;
end;

procedure Tfrmcliente_veiculo.BitBtn2Click(Sender: TObject);
begin
  frmmodulo.qrcliente_veiculo.last;
end;

procedure Tfrmcliente_veiculo.BitBtn3Click(Sender: TObject);
begin
  frmmodulo.qrcliente_veiculo.prior;
end;

procedure Tfrmcliente_veiculo.BitBtn4Click(Sender: TObject);
begin
  frmmodulo.qrcliente_veiculo.next;
end;

procedure Tfrmcliente_veiculo.etipoExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
end;

procedure Tfrmcliente_veiculo.edata_cadastroEnter(Sender: TObject);
begin
 tedit(sender).Color := $00A0FAF8;
 if frmmodulo.qrcliente_veiculo.state = dsinsert then
end;

procedure Tfrmcliente_veiculo.elimiteKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmcliente_veiculo.DBEdit1Enter(Sender: TObject);
begin
tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmcliente_veiculo.DBEdit1Exit(Sender: TObject);
begin
tedit(sender).Color := clwindow;

end;

procedure Tfrmcliente_veiculo.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmcliente_veiculo.RxDBCalcEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmcliente_veiculo.DateEdit1Exit(Sender: TObject);
begin
tedit(sender).Color := clwindow;
end;

procedure Tfrmcliente_veiculo.DBEdit4Exit(Sender: TObject);
begin
tedit(sender).Color := clwindow;
end;

procedure Tfrmcliente_veiculo.ERENDAKeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN PERFORM(WM_NEXTDLGCTL,0,0);
end;

procedure Tfrmcliente_veiculo.DBEdit7KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmcliente_veiculo.DBEdit3Exit(Sender: TObject);
begin
tedit(sender).Color := clwindow;

end;

procedure Tfrmcliente_veiculo.BLOCCLIENTEClick(Sender: TObject);
begin
  resultado_pesquisa1 := '';
  frmxloc_cliente := tfrmxloc_cliente.create(self);
  frmxloc_cliente.showmodal;

  if resultado_pesquisa1 <> '' then
  begin
   frmmodulo.qrCLIENTE_VEICULO.fieldbyname('codcliente').asstring := resultado_pesquisa1;
    DBEDIT2.setfocus;
  end
  else
    ecliente.setfocus;
end;

procedure Tfrmcliente_veiculo.ECLIENTEExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  IF (frmmodulo.qrCLIENTE_VEICULO.state = dsinsert) or (frmmodulo.qrCLIENTE_VEICULO.State = dsedit) then
  begin
    frmmodulo.qrCLIENTE_VEICULO.fieldbyname('codcliente').asstring := frmprincipal.zerarcodigo(ecliente.text,6);
    if ecliente.text <> '000000' then
    BEGIN
      if not FrmPrincipal.Locregistro(frmmodulo.qrcliente,ecliente.text,'codigo') then
      BEGIN
        blocclienteclick(frmCLIENTE_VEICULO);
      END
      else
        DBEDIT2.SetFocus;
    END
    else
    BEGIN
      bloccliente.SetFocus;
    END;
  end;
end;

procedure Tfrmcliente_veiculo.DBEdit2Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;

  if dbedit2.text = '' then
   begin
     application.messagebox('Favor informar um nome válido para este registro!','Atenção',mb_ok+mb_iconerror);
     dbedit2.setfocus;
     exit;
   end;

end;

end.




