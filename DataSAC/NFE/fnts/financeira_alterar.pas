unit financeira_alterar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, RzEdit, RzBtnEdt, ExtCtrls, rxtooledit,
  AdvGlowButton, Menus, DB, MemDS, DBAccess, IBC, ZAbstractRODataset,
  ZAbstractDataset, ZDataset;

type
  Tfrmfinanceira_alterar = class(TForm)
    Label1: TLabel;
    ed_cod_financeira: TRzButtonEdit;
    ed_financeira: TRzEdit;
    Label2: TLabel;
    ed_proposta: TRzEdit;
    Label3: TLabel;
    ed_bordero: TRzEdit;
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
    Label8: TLabel;
    ED_OBS: TRzEdit;
    Label9: TLabel;
    ed_venda: TRzEdit;
    procedure DateEdit1Enter(Sender: TObject);
    procedure DateEdit1Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bcancelarClick(Sender: TObject);
    procedure DateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure ed_cod_financeiraButtonClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure ed_cod_financeiraKeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure ed_cod_clienteButtonClick(Sender: TObject);
    procedure ed_cod_clienteKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure ED_OBSKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmfinanceira_alterar: Tfrmfinanceira_alterar;

implementation

uses modulo, xloc_financeira, principal, xloc_cliente;

{$R *.dfm}

procedure Tfrmfinanceira_alterar.DateEdit1Enter(Sender: TObject);
begin
 tedit(sender).color := $00C1FFFF;
end;

procedure Tfrmfinanceira_alterar.DateEdit1Exit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
end;

procedure Tfrmfinanceira_alterar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmfinanceira_alterar.bcancelarClick(Sender: TObject);
begin
 CLOSE;
end;

procedure Tfrmfinanceira_alterar.DateEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmfinanceira_alterar.ed_cod_financeiraButtonClick(Sender: TObject);
begin
  resultado_pesquisa1 := '';
  frmxloc_financeira := tfrmxloc_financeira.create(self);
  frmxloc_financeira.showmodal;

  if resultado_pesquisa1 <> '' then
  begin
    ed_cod_financeira.text := resultado_pesquisa1;
    ed_financeira.Text := resultado_pesquisa2;
    IF RESULTADO_PESQUISA3 <> '' THEN
    BEGIN
      IF RESULTADO_PESQUISA3 = '1' THEN // POR DATABASE
      BEGIN
        DATEEDIT1.TEXT := FRMPRINCIPAL.zerarcodigo(RESULTADO_PESQUISA4,2)+COPY(DATETOSTR(DATE),3,8);
      END
      ELSE
      BEGIN
        IF RESULTADO_PESQUISA4 <> '' THEN
        BEGIN
          DATEEDIT1.DATE := DATE + STRTOINT(RESULTADO_PESQUISA4);
        END;
      END;
    END;
    ed_proposta.setfocus;
  end
  else
  begin
    ed_cod_financeira.text := '';
    ed_financeira.Text := '';
    ed_cod_financeira.setfocus;
  end;
end;

procedure Tfrmfinanceira_alterar.bgravarClick(Sender: TObject);
begin
  IF ed_cod_financeira.Text = '' THEN
  BEGIN
    APPLICATION.MESSAGEBOX('Favor informar a Financeira!','Erro',mb_ok+mb_iconerror);
    ed_cod_financeira.setfocus;
    exit;
  END;
  IF ed_cod_cliente.Text = '' THEN
  BEGIN
    APPLICATION.MESSAGEBOX('Favor informar o Cliente!','Erro',mb_ok+mb_iconerror);
    ed_cod_cliente.setfocus;
    exit;
  END;

  

  FI_CODIGO     := ed_cod_financeira.TEXT;
  FI_PROPOSTA   := ed_proposta.TEXT;
  FI_VENCIMENTO := DateEdit1.Text;
  FI_BORDERO    := ed_bordero.TEXT;
  FI_OBS        := ED_OBS.Text;
  FI_VALOR      := FORMATFLOAT('#########0.00',ED_VALOR.VALUE);

  CLOSE;
end;

procedure Tfrmfinanceira_alterar.ed_cod_financeiraKeyPress(Sender: TObject;
  var Key: Char);
begin
  IF KEY = #13 THEN
  BEGIN
    IF ED_COD_FINANCEIRA.Text <> '' THEN
    BEGIN
      query.close;
      query.sql.clear;
      query.sql.add('select * from c000013 where financeira = 1 and');
      query.sql.add('numero = '''+ed_cod_financeira.Text+'''');
      query.open;

      if query.RecordCount >  0 then
      begin
        ed_financeira.Text := query.fieldbyname('banco').asstring;
        IF query.fieldbyname('ressarcimento').asstring <> '' THEN
        BEGIN
          IF query.fieldbyname('ressarcimento').asstring = '1' THEN // POR DATABASE
          BEGIN
            DATEEDIT1.TEXT := FRMPRINCIPAL.zerarcodigo(query.fieldbyname('prazo').asstring,2)+COPY(DATETOSTR(DATE),3,8);
          END
          ELSE
          BEGIN
            IF RESULTADO_PESQUISA4 <> '' THEN
            BEGIN
              DATEEDIT1.DATE := DATE + query.fieldbyname('prazo').asinteger;
            END;
          END;
        END;
        perform(wm_nextdlgctl,0,0);
      end
      else
      begin
        application.messagebox('Registro não encontrado!','Erro',mb_ok+mb_iconerror);
        ed_cod_financeira.setfocus;
        exit;
      end;

    END
    ELSE
    BEGIN
      ed_cod_financeiraButtonClick(FRMfinanceira_alterar);
    END;
  END;
end;

procedure Tfrmfinanceira_alterar.DateEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  IF KEY = #13 THEN PERFORM(WM_NEXTDLGCTL,0,0);
end;

procedure Tfrmfinanceira_alterar.ed_cod_clienteButtonClick(Sender: TObject);
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

procedure Tfrmfinanceira_alterar.ed_cod_clienteKeyPress(Sender: TObject;
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
      ed_cod_clienteButtonClick(FRMFINANCEIRA_alterar);
    END;
  END;
end;

procedure Tfrmfinanceira_alterar.FormShow(Sender: TObject);
begin
  ed_proposta.setfocus;
end;

procedure Tfrmfinanceira_alterar.ED_OBSKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

end.
