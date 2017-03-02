unit caixa_operador;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, StdCtrls, Buttons, Collection, TFlatPanelUnit,
  Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Grids, DBGrids,
  Mask, rxtooledit, rxcurredit, maskutils, RXDBCtrl, AdvGlowButton;

type
  TfrmCaixa_operador = class(TForm)
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
    dscaixa_operador2: TDataSource;
    qrcaixa_operador: TZQuery;
    Relatrios1: TMenuItem;
    Regies1: TMenuItem;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    dscaixa_operador: TDataSource;
    POP3: TPopupMenu;
    InciodoNome1: TMenuItem;
    PartedoNome1: TMenuItem;
    FecharLocalizao1: TMenuItem;
    Label36: TLabel;
    DBEdit28: TDBEdit;
    bloccaixa_operador: TBitBtn;
    DBEdit30: TDBEdit;
    Panel2: TPanel;
    bincluir: TAdvGlowButton;
    balterar: TAdvGlowButton;
    bexcluir: TAdvGlowButton;
    DBAdvGlowButton1: TDBAdvGlowButton;
    DBAdvGlowButton2: TDBAdvGlowButton;
    DBAdvGlowButton3: TDBAdvGlowButton;
    DBAdvGlowButton4: TDBAdvGlowButton;
    bfechar: TAdvGlowButton;
    pgravar: TFlatPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    Bevel2: TBevel;
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
    procedure FecharLocalizao1Click(Sender: TObject);
    procedure DBEdit28Exit(Sender: TObject);
    procedure bloccaixa_operadorClick(Sender: TObject);
    procedure DateEdit1Exit(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCaixa_operador: TfrmCaixa_operador;
  comando : string;

implementation

uses modulo, principal, loc_funci;

{$R *.dfm}


procedure TfrmCaixa_operador.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmCaixa_operador.FormShow(Sender: TObject);
begin

  frmmodulo.qrfunci.close;
  frmmodulo.qrfunci.sql.clear;
  frmmodulo.qrfunci.SQL.add('select * from c000008 order by nome');
  frmmodulo.qrfunci.open;
  frmmodulo.qrfunci.IndexFieldNames := 'nome';



  pgravar.visible := false;
  pgravar.Align := alClient;

  frmmodulo.qrcaixa_operador.close;
  frmmodulo.qrcaixa_operador.SQL.clear;
  frmmodulo.qrcaixa_operador.SQL.add('select * from c000045 order by codigo');
  frmmodulo.qrcaixa_operador.open;
  frmmodulo.qrcaixa_operador.first;
  pficha.Enabled := false;
  bincluir.SetFocus;
end;

procedure TfrmCaixa_operador.enomeEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
end;

procedure TfrmCaixa_operador.enomeExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
end;

procedure TfrmCaixa_operador.bincluirClick(Sender: TObject);
begin
         FRMMODULO.QRCAIXA_OPERADOR.Locate('CODIGO','000099',[loCaseInsensitive]);
         IF FRMMODULO.QRCAIXA_OPERADOR.FieldByName('SITUACAO').ASINTEGER = 2 THEN
         begin
          frmmodulo.qrcaixa_operador.insert;
          frmmodulo.qrcaixa_operador.fieldbyname('codigo').asstring := frmprincipal.codifica('000045');
          frmmodulo.qrcaixa_operador.FieldByName('data').AsDatetime := date;
          frmmodulo.qrcaixa_operador.FieldByName('situacao').AsInteger := 2;
          frmmodulo.qrcaixa_operador.FieldByName('saldo').AsFloat := 0;
          pficha.Enabled := true;
          dbedit28.setfocus;
          pgravar.Visible := true;
          PopupMenu := pop2;
         end
         else
         begin
           application.messagebox('O caixa geral está aberto! Não é possível cadastrar um novo caixa!','Atenção',mb_ok+mb_iconwarning);
           exit;
         end;
end;

procedure TfrmCaixa_operador.balterarClick(Sender: TObject);
begin

  IF dbedit1.Text <> '' THEN
  BEGIN

    frmmodulo.qrcaixa_operador.Edit;
    TRY
    frmmodulo.qrcaixa_operador.FieldByName('senha').asstring := frmPrincipal.Cript('D',frmmodulo.qrcaixa_operador.FieldByName('senha').asstring);
    EXCEPT
    END;


    pficha.Enabled := true;
    dbedit28.setfocus;
    pgravar.Visible := true;
    PopupMenu := pop2;
  END
  ELSE
  BEGIN
    Showmessage('Nenhum registro foi selecionado!');
  END;

end;

procedure TfrmCaixa_operador.bexcluirClick(Sender: TObject);
begin
  if frmprincipal.autentica('Excluir Operador',4) then
  begin
    if frmmodulo.qrcaixa_operador.fieldbyname('codigo').asstring = '000099' then
    begin
      application.messagebox('Caixa geral não pode ser apagado!','Erro',mb_ok+mb_iconerror);
      exit;
    end;

    frmmodulo.qrcaixa_operador.Delete;
    frmmodulo.Conexao.commit;
  end
  else
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
  end;
end;

procedure TfrmCaixa_operador.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure TfrmCaixa_operador.bgravarClick(Sender: TObject);
var situacao, tipo : integer;
DATA: STRING;
begin


   bgravar.setfocus;


  if (dbedit28.text = '') or
     (dbedit28.text = '000000') or
     (dbedit2.text = '') then
  begin
    application.messagebox('Dados incompletos!','Atenção',mb_ok+mb_iconerror);
    dbedit28.setfocus;
    exit;
  end;



  if (frmmodulo.qrcaixa_operador.State = dsinsert) or (frmmodulo.qrcaixa_operador.State = dsedit) then
  begin
    frmmodulo.qrcaixa_operador.FieldByName('senha').asstring := frmPrincipal.Cript('C',frmmodulo.qrcaixa_operador.FieldByName('senha').asstring);


      frmmodulo.qrcaixa_operador.post;
  end;

  frmmodulo.Conexao.Commit;
  pficha.Enabled := false;
  pgravar.Visible := false;
  PopupMenu := pop1;
  bincluir.setfocus;


end;

procedure TfrmCaixa_operador.bcancelarClick(Sender: TObject);
begin
  if (frmmodulo.qrcaixa_operador.State = dsinsert) or (frmmodulo.qrcaixa_operador.State = dsedit) then
      frmmodulo.qrcaixa_operador.cancel;


  pficha.Enabled := false;
  pgravar.Visible := false;
  PopupMenu := pop1;
  bincluir.setfocus;
  comando := '';
end;

procedure TfrmCaixa_operador.enomeKeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN PERFORM(WM_NEXTDLGCTL,0,0);
end;

procedure TfrmCaixa_operador.BitBtn1Click(Sender: TObject);
begin
  frmmodulo.qrcaixa_operador.first;
end;

procedure TfrmCaixa_operador.BitBtn2Click(Sender: TObject);
begin
  frmmodulo.qrcaixa_operador.last;
end;

procedure TfrmCaixa_operador.BitBtn3Click(Sender: TObject);
begin
  frmmodulo.qrcaixa_operador.prior;
end;

procedure TfrmCaixa_operador.BitBtn4Click(Sender: TObject);
begin
  frmmodulo.qrcaixa_operador.next;
end;

procedure TfrmCaixa_operador.etipoExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
end;

procedure TfrmCaixa_operador.edata_cadastroEnter(Sender: TObject);
begin
 tedit(sender).Color := $00A0FAF8;
 if frmmodulo.qrcaixa_operador.state = dsinsert then
end;

procedure TfrmCaixa_operador.elimiteKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure TfrmCaixa_operador.DBEdit1Enter(Sender: TObject);
begin
tedit(sender).Color := $00A0FAF8;
end;

procedure TfrmCaixa_operador.DBEdit1Exit(Sender: TObject);
begin
tedit(sender).Color := clwindow;

end;

procedure TfrmCaixa_operador.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure TfrmCaixa_operador.RxDBCalcEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure TfrmCaixa_operador.FecharLocalizao1Click(Sender: TObject);
begin
    PopupMenu := POP1;
    qrcaixa_operador.close;
end;

procedure TfrmCaixa_operador.DBEdit28Exit(Sender: TObject);
begin

  tedit(sender).Color := clwindow;
  IF (frmmodulo.qrcaixa_operador.state = dsinsert) or (frmmodulo.qrcaixa_operador.State = dsedit) then
  begin
    frmmodulo.qrcaixa_operador.fieldbyname('codfuncionario').asstring := frmprincipal.zerarcodigo(dbedit28.text,6);
    if dbedit28.text <> '000000' then
      if not FrmPrincipal.Locregistro(frmmodulo.qrfunci,dbedit28.text,'codigo') then bloccaixa_operadorclick(Frmcaixa_operador) else dbedit2.Setfocus
    else
      bloccaixa_operador.SetFocus;
  end;




end;

procedure TfrmCaixa_operador.bloccaixa_operadorClick(Sender: TObject);
begin
  frmloc_funci := tfrmloc_funci.create(self);
  frmloc_funci.showmodal;
  frmmodulo.qrcaixa_operador.fieldbyname('codfuncionario').asstring := frmmodulo.qrfunci.fieldbyname('codigo').asstring;
  dbedit2.setfocus;
end;

procedure TfrmCaixa_operador.DateEdit1Exit(Sender: TObject);
begin
tedit(sender).Color := clwindow;
end;

procedure TfrmCaixa_operador.DBEdit4Exit(Sender: TObject);
begin
tedit(sender).Color := clwindow;
end;

procedure TfrmCaixa_operador.DBEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
 if key = #13 then bgravar.setfocus;
end;

end.




