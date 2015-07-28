unit NotaFiscal_Item_grade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, TFlatPanelUnit, StdCtrls, ExtCtrls,
  DB, DBAccess, IBC, DBGrids, CRGrid;

type
  TfrmNotaFiscal_Item_grade = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    FlatPanel1: TFlatPanel;
    dsgrade: TIBCDataSource;
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
  frmNotaFiscal_Item_grade: TfrmNotaFiscal_Item_grade;

implementation

uses notafiscal_item2, modulo;

{$R *.dfm}

procedure TfrmNotaFiscal_Item_grade.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmNotaFiscal_Item_grade.wwDBGrid1DblClick(Sender: TObject);
begin
  resultado_pesquisa1 := frmNotaFiscal_Item2.qrgrade.fieldbyname('codigo').asstring;
  close;
end;

procedure TfrmNotaFiscal_Item_grade.wwDBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #27 then
  begin
    resultado_pesquisa1 := '';
    close;
  end;
  if key = #13 then
  begin
    resultado_pesquisa1 := frmNotaFiscal_Item2.qrgrade.fieldbyname('codigo').asstring;
    close;
  end;
end;

end.
