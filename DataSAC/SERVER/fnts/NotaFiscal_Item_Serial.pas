unit NotaFiscal_Item_Serial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, DB, DBAccess, IBC;

type
  TfrmNotaFiscal_Item_Serial = class(TForm)
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
  frmNotaFiscal_Item_Serial: TfrmNotaFiscal_Item_Serial;

implementation

uses notafiscal_item2, modulo;

{$R *.dfm}

procedure TfrmNotaFiscal_Item_Serial.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmNotaFiscal_Item_Serial.wwDBGrid1DblClick(Sender: TObject);
begin
  resultado_pesquisa1 := frmNotaFiscal_Item2.qrserial.fieldbyname('serial').asstring;
  close;
end;

procedure TfrmNotaFiscal_Item_Serial.wwDBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #27 then
  begin
    resultado_pesquisa1 := '';
    close;
  end;
  if key = #13 then
  begin
    resultado_pesquisa1 := frmNotaFiscal_Item2.qrserial.fieldbyname('serial').asstring;
    close;
  end;
end;

end.
