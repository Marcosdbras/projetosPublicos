unit pedido_serial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, DB, DBAccess, IBC;

type
  Tfrmpedido_Serial = class(TForm)
    wwDBGrid1: TwwDBGrid;
    dserial: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure wwDBGrid1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmpedido_Serial: Tfrmpedido_Serial;

implementation

uses venda_pdv, modulo;

{$R *.dfm}

procedure Tfrmpedido_Serial.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmpedido_Serial.wwDBGrid1DblClick(Sender: TObject);
begin
  resultado_pesquisa1 := frmvenda_pdv.qrserial.fieldbyname('serial').asstring;
  close;
end;

procedure Tfrmpedido_Serial.wwDBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #27 then
  begin
    resultado_pesquisa1 := '';
    close;
  end;
  if key = #13 then
  begin
    resultado_pesquisa1 := frmvenda_pdv.qrserial.fieldbyname('serial').asstring;
    close;
  end;
end;

end.
