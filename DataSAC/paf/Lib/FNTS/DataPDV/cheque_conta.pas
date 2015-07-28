unit cheque_conta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, DB;

type
  Tfrmcheque_conta = class(TForm)
    wwDBGrid1: TwwDBGrid;
    dsconta_cliente: TDataSource;
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure wwDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcheque_conta: Tfrmcheque_conta;

implementation

uses modulo, principal;

{$R *.dfm}

procedure Tfrmcheque_conta.wwDBGrid1DblClick(Sender: TObject);
begin
  RESULTADO_PESQUISA1 := dsconta_cliente.dataset.FIELDBYNAME('CONTA').ASSTRING;
  RESULTADO_PESQUISA2 := dsconta_cliente.dataset.FIELDBYNAME('CODBANCO').ASSTRING;
  RESULTADO_PESQUISA3 := dsconta_cliente.dataset.FIELDBYNAME('AGENCIA').ASSTRING;
  RESULTADO_PESQUISA4 := dsconta_cliente.dataset.FIELDBYNAME('DATA_CONTA').ASSTRING;
  CLOSE;
end;

procedure Tfrmcheque_conta.wwDBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  IF KEY = #13 THEN wwDBGrid1DblClick(FRMCHEQUE_CONTA);
  IF KEY = #27 THEN CLOSE;
end;

procedure Tfrmcheque_conta.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ACTION := CAFREE;
end;

procedure Tfrmcheque_conta.FormShow(Sender: TObject);
begin
  RESULTADO_PESQUISA1 := '';
  RESULTADO_PESQUISA2 := '';
  RESULTADO_PESQUISA3 := '';
  RESULTADO_PESQUISA4 := '';
end;

end.
