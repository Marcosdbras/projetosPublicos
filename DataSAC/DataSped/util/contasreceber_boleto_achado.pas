unit contasreceber_boleto_achado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, DB, DBGrids;

type
  Tfrmcontasreceber_boleto_achado = class(TForm)
    dsreceber: TDataSource;
    wwDBGrid1: TDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure wwDBGrid1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcontasreceber_boleto_achado: Tfrmcontasreceber_boleto_achado;

implementation

uses contasreceber, modulo;

{$R *.dfm}

procedure Tfrmcontasreceber_boleto_achado.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmcontasreceber_boleto_achado.wwDBGrid1DblClick(
  Sender: TObject);
begin
  resultado_pesquisa1 := frmcontasreceber.qrcontasreceber.fieldbyname('nossonumero').asstring;
  close;
end;

procedure Tfrmcontasreceber_boleto_achado.wwDBGrid1KeyPress(
  Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    wwDBGrid1DblClick(frmcontasreceber_boleto_achado);
    close;
  end;
  if key = #27 then close;
end;

end.
