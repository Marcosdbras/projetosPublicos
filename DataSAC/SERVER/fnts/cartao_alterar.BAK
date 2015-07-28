unit cartao_alterar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, RzEdit, RzBtnEdt, ExtCtrls, ToolEdit,
  AdvGlowButton, Menus, DB, MemDS, DBAccess, IBC, RzSpnEdt,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  Tfrmcartao_alterar = class(TForm)
    Label1: TLabel;
    ed_cod_cartao: TRzButtonEdit;
    ed_cartao: TRzEdit;
    Label4: TLabel;
    DateEdit1: TDateEdit;
    Panel1: TPanel;
    Bevel1: TBevel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    PopupMenu1: TPopupMenu;
    Cancelar1: TMenuItem;
    query: TZQuery;
    Label5: TLabel;
    DateEdit2: TDateEdit;
    ed_valor: TRzNumericEdit;
    Label6: TLabel;
    ed_cod_cliente: TRzButtonEdit;
    ed_cliente: TRzEdit;
    Label7: TLabel;
    Label9: TLabel;
    ed_venda: TRzEdit;
    Label2: TLabel;
    ed_comissao: TRzNumericEdit;
    Label3: TLabel;
    ed_liquido: TRzNumericEdit;
    Label8: TLabel;
    cb_tipo: TComboBox;
    Label10: TLabel;
    spin_parcela: TRzSpinEdit;
    procedure DateEdit1Enter(Sender: TObject);
    procedure DateEdit1Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bcancelarClick(Sender: TObject);
    procedure DateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure ed_cod_cartaoButtonClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure ed_cod_cartaoKeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure ed_cod_clienteButtonClick(Sender: TObject);
    procedure ed_cod_clienteKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure cb_tipoKeyPress(Sender: TObject; var Key: Char);
    procedure ed_valorExit(Sender: TObject);
    procedure ed_comissaoExit(Sender: TObject);
    procedure spin_parcelaKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcartao_alterar: Tfrmcartao_alterar;
  rCOMISSAO : REAL;

implementation

uses modulo, xloc_cartao, principal, xloc_cliente;

{$R *.dfm}

procedure Tfrmcartao_alterar.DateEdit1Enter(Sender: TObject);
begin
 tedit(sender).color := $00C1FFFF;
end;

procedure Tfrmcartao_alterar.DateEdit1Exit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
end;

procedure Tfrmcartao_alterar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmcartao_alterar.bcancelarClick(Sender: TObject);
begin
 CLOSE;
end;

procedure Tfrmcartao_alterar.DateEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmcartao_alterar.ed_cod_cartaoButtonClick(Sender: TObject);
begin
  resultado_pesquisa1 := '';
  frmxloc_cartao := tfrmxloc_cartao.create(self);
  frmxloc_cartao.showmodal;

  if resultado_pesquisa1 <> '' then
  begin
    ed_cod_cartao.text := resultado_pesquisa1;
    ed_cartao.Text := resultado_pesquisa2;
    ed_cod_cartao.setfocus;
  end
  else
  begin
    ed_cod_cartao.text := '';
    ed_cartao.Text := '';
    ed_cod_cartao.setfocus;
  end;
end;

procedure Tfrmcartao_alterar.bgravarClick(Sender: TObject);
begin
  IF ed_cod_cartao.Text = '' THEN
  BEGIN
    APPLICATION.MESSAGEBOX('Favor informar a cartao!','Erro',mb_ok+mb_iconerror);
    ed_cod_cartao.setfocus;
    exit;
  END;
  IF ed_cod_cliente.Text = '' THEN
  BEGIN
    APPLICATION.MESSAGEBOX('Favor informar o Cliente!','Erro',mb_ok+mb_iconerror);
    ed_cod_cliente.setfocus;
    exit;
  END;



  FI_CODIGO     := ed_cod_cartao.TEXT;
  FI_NOME       := ed_cartao.TEXT;
  FI_VENCIMENTO := DateEdit1.Text;
  FI_DATA       := DATEEDIT2.TEXT;
  FI_CLIENTE    := ED_cod_cliente.text;
  FI_VALOR      := formatfloat('#############0.00',ED_VALOR.value);
  FI_COMISSAO   := formatfloat('#############0.00',ED_COMISSAO.VALUE);
  FI_LIQUIDO    := formatfloat('#############0.00',ED_LIQUIDO.VALUE);
  FI_VENDA      := ED_VENDA.TEXT;
  FI_BORDERO    := CB_TIPO.Text;
  FI_PROPOSTA   := INTTOSTR(spin_parcela.IntValue);

  CLOSE;
end;

procedure Tfrmcartao_alterar.ed_cod_cartaoKeyPress(Sender: TObject;
  var Key: Char);
begin
  IF KEY = #13 THEN
  BEGIN
    IF ED_COD_cartao.Text <> '' THEN
    BEGIN
      query.close;
      query.sql.clear;
      query.sql.add('select * from c000013 where cartao_credito = 1 and');
      query.sql.add('numero = '''+ed_cod_cartao.Text+'''');
      query.open;

      if query.RecordCount >  0 then
      begin
        ed_cartao.Text := query.fieldbyname('banco').asstring;

              if cb_tipo.itemindex = 0 then
              begin
                 DATEEDIT1.DATE := DATE + query.fieldbyname('rec_credito').asinteger;
                 rcomissao := query.fieldbyname('comissao_credito').asfloat;
              end
              else
              begin
                 DATEEDIT1.DATE := DATE + query.fieldbyname('rec_debito').asinteger;
                 rcomissao := query.fieldbyname('comissao_debito').asfloat;
              end;

        perform(wm_nextdlgctl,0,0);
      end
      else
      begin
        application.messagebox('Registro não encontrado!','Erro',mb_ok+mb_iconerror);
        ed_cod_cartao.setfocus;
        exit;
      end;

    END
    ELSE
    BEGIN
      ed_cod_cartaoButtonClick(FRMCARTAO_ALTERAR);
    END;
  END;
end;

procedure Tfrmcartao_alterar.DateEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  IF KEY = #13 THEN PERFORM(WM_NEXTDLGCTL,0,0);
end;

procedure Tfrmcartao_alterar.ed_cod_clienteButtonClick(Sender: TObject);
begin
  resultado_pesquisa1 := '';
  frmxloc_cliente := tfrmxloc_cliente.create(self);
  frmxloc_cliente.showmodal;

  if resultado_pesquisa1 <> '' then
  begin
    ed_cod_cliente.text := resultado_pesquisa1;
    ed_cliente.Text := resultado_pesquisa2;
    ed_valor.setfocus;
  end
  else
  begin
    ed_cod_cliente.text := '';
    ed_cliente.Text := '';
    ed_cod_cliente.setfocus;
  end;
end;

procedure Tfrmcartao_alterar.ed_cod_clienteKeyPress(Sender: TObject;
  var Key: Char);
begin
  IF KEY = #13 THEN
  BEGIN
    IF ED_COD_cliente.Text <> '' THEN
    BEGIN
      query.close;
      query.sql.clear;
      query.sql.add('select * from c000007 where');
      query.sql.add('codigo = '''+ed_cod_cliente.Text+'''');
      query.open;

      if query.RecordCount >  0 then
      begin
        ed_cliente.Text := query.fieldbyname('nome').asstring;
        perform(wm_nextdlgctl,0,0);
      end
      else
      begin
        application.messagebox('Registro não encontrado!','Erro',mb_ok+mb_iconerror);
        ed_cod_cliente.setfocus;
        exit;
      end;

    END
    ELSE
    BEGIN
      ed_cod_clienteButtonClick(FRMCARTAO_ALTERAR);
    END;
  END;
end;

procedure Tfrmcartao_alterar.FormShow(Sender: TObject);
begin
  DATEEDIT1.SETFOCUS;
end;

procedure Tfrmcartao_alterar.cb_tipoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmcartao_alterar.ed_valorExit(Sender: TObject);
begin
    ed_liquido.Value := ed_valor.value - ed_comissao.value;
end;

procedure Tfrmcartao_alterar.ed_comissaoExit(Sender: TObject);
begin
  ed_liquido.Value := ed_valor.value - ed_comissao.value;
end;

procedure Tfrmcartao_alterar.spin_parcelaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

end.
