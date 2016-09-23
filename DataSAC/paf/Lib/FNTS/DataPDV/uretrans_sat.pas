unit uretrans_sat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, StdCtrls, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, MemDS, DBAccess, IBC, ExtCtrls, NxEdit,
  NxCollection;

type
  Tfrmretrans_sat = class(TForm)
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
    edtdata1: TNxDatePicker;
    edtdata2: TNxDatePicker;
    NxNumberEdit1: TNxNumberEdit;
    Label1: TLabel;
    Label5: TLabel;
    btnfiltrar: TNxButton;
    btnlimpar: TNxButton;
    sqlCupomCODIGO: TStringField;
    sqlCupomNUMERO: TStringField;
    sqlCupomCCF: TStringField;
    sqlCupomECF: TStringField;
    sqlCupomDATA: TDateField;
    sqlCupomHORA: TTimeField;
    sqlCupomQTDE_ITEM: TIntegerField;
    sqlCupomVALOR_PRODUTO: TFloatField;
    sqlCupomVALOR_DESCONTO: TFloatField;
    sqlCupomVALOR_ACRESCIMO: TFloatField;
    sqlCupomVALOR_TOTAL: TFloatField;
    sqlCupomVALOR_PAGO: TFloatField;
    sqlCupomVALOR_TROCO: TFloatField;
    sqlCupomCOD_CLIENTE: TIntegerField;
    sqlCupomCANCELADO: TIntegerField;
    sqlCupomCPF_CONSUMIDOR: TStringField;
    sqlCupomNOME_CONSUMIDOR: TStringField;
    sqlCupomCOD_VENDEDOR: TIntegerField;
    sqlCupomEX: TIntegerField;
    sqlCupomCOD_CAIXA: TIntegerField;
    sqlCupomECF_CAIXA: TStringField;
    sqlCupomCODIGO_COMANDA: TStringField;
    sqlformaCODIGO: TStringField;
    sqlformaCOD_CUPOM: TStringField;
    sqlformaFORMA: TStringField;
    sqlformaVALOR: TFloatField;
    sqlformaPRESTACAO: TIntegerField;
    sqlformaTIPO: TStringField;
    sqlformaEX: TIntegerField;
    sqlformaIDFORMA: TIntegerField;
    sqlformaCODFORMA: TStringField;
    sqlItensNOME: TStringField;
    sqlItensVALOR_TOTAL: TFloatField;
    sqlItensQTDE: TFloatField;
    sqlItensCOD_CUPOM: TStringField;
    sqlItensUNIDADE: TStringField;
    procedure sqlCupomAfterScroll(DataSet: TDataSet);
    procedure btnfiltrarClick(Sender: TObject);
    procedure btnlimparClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btncancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmretrans_sat: Tfrmretrans_sat;

implementation
   uses modulo;
{$R *.dfm}

procedure Tfrmretrans_sat.sqlCupomAfterScroll(DataSet: TDataSet);
begin
sqlitens.Close;
sqlitens.SQL.Clear;
sqlitens.SQL.Add('Select est.nome, item.valor_total, item.qtde, item.cod_cupom, item.unidade From cupom_item item left join estoque est on item.cod_produto = est.codigo where item.cod_cupom = :scod_cupom');
sqlitens.ParamByName('scod_cupom').AsString := sqlcupom.fieldbyname('codigo').AsString;
sqlitens.Open;

sqlforma.Close;
sqlforma.SQL.Clear;
sqlforma.SQL.Add('select * from cupom_forma where cod_cupom = :scod_cupom');
sqlforma.ParamByName('scod_cupom').AsString := sqlcupom.fieldbyname('codigo').AsString;
sqlforma.Open;



end;

procedure Tfrmretrans_sat.btnfiltrarClick(Sender: TObject);
begin
sqlcupom.Close;
sqlcupom.SQL.Clear;
sqlcupom.SQL.Add('select * from cupom where data between :data1 and :data2');
sqlcupom.ParamByName('data1').AsDatetime := edtdata1.date;
sqlcupom.ParamByName('data2').AsDatetime := edtdata2.date;
sqlcupom.Open;
end;

procedure Tfrmretrans_sat.btnlimparClick(Sender: TObject);
begin
edtdata1.Date := date;
edtdata2.Date := date;
btnfiltrarClick(Sender);
end;

procedure Tfrmretrans_sat.FormShow(Sender: TObject);
begin
btnlimparClick(Sender);
end;

procedure Tfrmretrans_sat.btncancelarClick(Sender: TObject);
begin
close;
end;

end.
