unit caixa_abertura_individual;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, rxcurredit, StdCtrls, Mask, rxtooledit, RXDBCtrl, Collection,
  ExtCtrls, Buttons, TFlatPanelUnit, Menus, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, AdvGlowButton;

type
  Tfrmcaixa_abertura_individual = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    rsaldo: TRxCalcEdit;
    edata: TDateEdit;
    DataSource1: TDataSource;
    qrdata: TZQuery;
    PopupMenu1: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    Panel4: TPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    Bevel2: TBevel;
    procedure bcancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bgravarClick(Sender: TObject);
    procedure edataEnter(Sender: TObject);
    procedure edataKeyPress(Sender: TObject; var Key: Char);
    procedure edataExit(Sender: TObject);
    procedure rsaldoExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Gravar1Click(Sender: TObject);
    procedure rsaldoKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcaixa_abertura_individual: Tfrmcaixa_abertura_individual;
  saldo_anterior : real;

implementation

uses caixa, principal, modulo;

{$R *.dfm}

procedure Tfrmcaixa_abertura_individual.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmcaixa_abertura_individual.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmcaixa_abertura_individual.bgravarClick(Sender: TObject);
begin
   try
         frmmodulo.qrcaixa_operador.Edit;
         frmmodulo.qrcaixa_operador.FieldByName('situacao').asinteger := 1;
         frmmodulo.qrcaixa_operador.post;
         if rsaldo.Value > 0 then
         begin
           frmcaixa.qrcaixa_mov.OPEN;
           frmcaixa.qrcaixa_mov.insert;
           frmcaixa.qrcaixa_mov.FieldByName('codigo').asstring := frmprincipal.codifica('000044');
           frmcaixa.qrcaixa_mov.fieldbyname('codoperador').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
           frmcaixa.qrcaixa_mov.fieldbyname('data').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
           frmcaixa.qrcaixa_mov.fieldbyname('saida').asfloat := 0;
           frmcaixa.qrcaixa_mov.fieldbyname('entrada').asfloat := RSALDO.VALUE;
           frmcaixa.qrcaixa_mov.fieldbyname('valor').asfloat := RSALDO.VALUE;
           frmmodulo.qrconfig.open;
           frmcaixa.qrcaixa_mov.fieldbyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_OUTRAS_ENTRADAS').asstring;
           frmcaixa.qrcaixa_mov.fieldbyname('movimento').asINTEGER := 1;
           frmcaixa.qrcaixa_mov.fieldbyname('historico').asstring := 'Suprimento para o Caixa '+frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
           frmcaixa.qrcaixa_mov.post;

           frmcaixa.qrcaixa_mov.insert;
           frmcaixa.qrcaixa_mov.FieldByName('codigo').asstring := frmprincipal.codifica('000044');
           frmcaixa.qrcaixa_mov.fieldbyname('codoperador').asstring := '000099';
           frmcaixa.qrcaixa_mov.fieldbyname('data').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
           frmcaixa.qrcaixa_mov.fieldbyname('saida').asfloat := RSALDO.VALUE;
           frmcaixa.qrcaixa_mov.fieldbyname('entrada').asfloat := 0;
           frmcaixa.qrcaixa_mov.fieldbyname('valor').asfloat := (RSALDO.VALUE) * (-1);
           frmmodulo.qrconfig.open;
           frmcaixa.qrcaixa_mov.fieldbyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_OUTRAS_SAIDAS').asstring;
           frmcaixa.qrcaixa_mov.fieldbyname('movimento').asINTEGER := 2;
           frmcaixa.qrcaixa_mov.fieldbyname('historico').asstring := 'Suprimento para o Caixa '+frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
           frmcaixa.qrcaixa_mov.post;



         end;


         frmmodulo.Conexao.Commit;
   EXCEPT
    SHOWMESSAGE('Houve falha nesta função! Este processo foi cancelado!');
    FRMMODULO.Conexao.Rollback;
   END;

   close;
end;

procedure Tfrmcaixa_abertura_individual.edataEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmcaixa_abertura_individual.edataKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmcaixa_abertura_individual.edataExit(Sender: TObject);
begin
  tedit(sender).color := clwhite;
end;

procedure Tfrmcaixa_abertura_individual.rsaldoExit(Sender: TObject);
begin
  tedit(sender).color := clwhite;
end;

procedure Tfrmcaixa_abertura_individual.FormShow(Sender: TObject);
begin
  saldo_anterior := rsaldo.value;
end;

procedure Tfrmcaixa_abertura_individual.Gravar1Click(Sender: TObject);
begin
  bgravar.SetFocus;
  bgravar.OnClick(frmcaixa_abertura_individual);
end;

procedure Tfrmcaixa_abertura_individual.rsaldoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

end.
