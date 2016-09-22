unit uretrans_sat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, StdCtrls, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, MemDS, DBAccess, IBC, ExtCtrls, NxEdit,
  NxCollection;

type
  Tfrmretransmitir_sat = class(TForm)
    Panel1: TPanel;
    btncancelar: TButton;
    btnlancar: TButton;
    Panel2: TPanel;
    Panel3: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    dbgpedido: TDBGrid;
    dbgitens: TDBGrid;
    dtsCupom: TDataSource;
    dtsitens: TDataSource;
    sqlItens: TIBCQuery;
    sqlCupom: TIBCQuery;
    Label4: TLabel;
    DBGrid1: TDBGrid;
    dtsforma: TDataSource;
    sqlforma: TIBCQuery;
    NxDatePicker1: TNxDatePicker;
    NxDatePicker2: TNxDatePicker;
    NxNumberEdit1: TNxNumberEdit;
    Label1: TLabel;
    Label5: TLabel;
    NxButton1: TNxButton;
    procedure sqlCupomAfterScroll(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmretransmitir_sat: Tfrmretransmitir_sat;

implementation
   uses modulo;
{$R *.dfm}

procedure Tfrmretransmitir_sat.sqlCupomAfterScroll(DataSet: TDataSet);
begin
sqlitens.Close;
sqlitens.SQL.Clear;
sqlitens.SQL.Add('select * from cupom_item where cod_cupom = :scod_cupom');
sqlitens.ParamByName('scod_cupom').AsString := sqlcupom.fieldbyname('codigo').AsString;
sqlitens.Open;

sqlforma.Close;
sqlforma.SQL.Clear;
sqlforma.SQL.Add('select * from cupom_forma where cod_cupom = :scod_cupom');
sqlforma.ParamByName('scod_cupom').AsString := sqlcupom.fieldbyname('codigo').AsString;
sqlforma.Open;



end;

procedure Tfrmretransmitir_sat.FormShow(Sender: TObject);
begin
sqlcupom.Close;
sqlcupom.SQL.Clear;
sqlcupom.SQL.Add('select * from cupom');
//sqlcupom.ParamByName('scod_cupom').AsString := sqlcupom.fieldbyname('codigo').AsString;
sqlcupom.Open;

end;

end.
