unit inventario_deposito;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Grids,
  Wwdbigrd, Wwdbgrid, RzEdit, StdCtrls, Mask, ToolEdit, AdvGlowButton,
  TFlatGaugeUnit, ExtCtrls, Buttons;

type
  Tfrminventario_deposito = class(TForm)
    Panel1: TPanel;
    FlatGauge1: TFlatGauge;
    bgerar: TAdvGlowButton;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    Panel4: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    lcodigo: TLabel;
    RQTDE: TRzNumericEdit;
    RTOTAL: TRzNumericEdit;
    qrinventario: TZQuery;
    dsinventario: TDataSource;
    Query: TZQuery;
    qrinventarioCODPRODUTO: TStringField;
    qrinventarioDATA: TDateTimeField;
    qrinventarioESTOQUE: TFloatField;
    qrinventarioCUSTO: TFloatField;
    qrinventarioANO: TIntegerField;
    qrinventarioPRODUTO: TStringField;
    qrinventarioUNIDADE: TStringField;
    qrinventarioCST: TStringField;
    qrinventarioALIQUOTA: TFloatField;
    qrinventarioVENDA: TFloatField;
    qrinventarioTOTAL: TFloatField;
    qrinventarioTIPO: TStringField;
    qrinventarioMES: TIntegerField;
    qrinventarioDATA_POSTERIOR: TDateTimeField;
    qrinventarioTIPO_1: TFloatField;
    qrinventarioTIPO_2: TFloatField;
    qrinventarioTIPO_3: TFloatField;
    wwDBGrid1: TwwDBGrid;
    rtipo2: TRzNumericEdit;
    btotaliza: TBitBtn;
    BitBtn1: TBitBtn;
    rtipo3: TRzNumericEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure bgerarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btotalizaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frminventario_deposito: Tfrminventario_deposito;
  ano, mes, dia : word;

implementation

uses modulo, principal;

{$R *.dfm}

procedure Tfrminventario_deposito.bgerarClick(Sender: TObject);
begin
  // notas de entrada
  query.Close;
  query.SQL.Clear;
  query.SQL.Add('select n.data_lancamento,n.codigo,n.numero,n.codfornecedor,');
  query.SQL.Add('i.codproduto,i.cfop,sum(i.qtde) quantidade');
  query.SQL.Add('from c000088 i, c000087 n');
  query.SQL.Add('where ( i.codnota = n.codigo and data_lancamento >= :vdat1 and data_lancamento <= :vdat2 and i.cfop = ''1906'')');
  Query.Params.ParamByName('vdat1').AsDate := DateEdit1.Date;
  Query.Params.ParamByName('vdat2').AsDate := DateEdit2.Date;
  query.SQL.Add('group by n.data_lancamento,n.codigo,n.numero,n.codfornecedor,i.codproduto,i.cfop');
  query.SQL.Add('order by n.data_lancamento,n.codigo,n.numero,n.codfornecedor,i.codproduto,i.cfop');
  query.Open;
   FlatGauge1.Progress := 0;
  if query.RecordCount > 0 then
    begin

      FlatGauge1.MaxValue := Query.RecordCount;
      Query.First;
      while not query.Eof do begin

        qrinventario.Close;
        qrinventario.SQL.Clear;
        qrinventario.SQL.add('select * from inventario where ano = 2009');
        qrinventario.SQL.add('and codproduto = :vcod');
        qrinventario.Params.ParamByName('vcod').AsString   := query.fieldbyname('codproduto').AsString;
        //qrinventario.Params.ParamByName('data').asdatetime := dateedit2.date;
        qrinventario.Open;
        if qrinventario.RecordCount > 0 then
          begin
            qrinventario.Edit;
            //qrinventarioTIPO_1.AsFloat := qrinventarioESTOQUE.AsFloat;
            qrinventarioTIPO_3.AsFloat := qrinventarioTIPO_3.AsFloat + Query.fieldbyname('quantidade').AsFloat;;
            //qrinventarioTIPO_3.AsFloat := 0;
            qrinventario.post;
          end;
        query.Next;
        FlatGauge1.Progress := FlatGauge1.Progress + 1;
        Application.ProcessMessages;
      end;

    end;

  frmmodulo.Conexao.Commit;

  // notas de saida
  query.Close;
  query.SQL.Clear;
  query.SQL.Add('select n.movimento,n.data,n.codigo,n.numero,n.codcliente,');
  query.SQL.Add('i.codproduto,i.cfop,sum(i.qtde) quantidade');
  query.SQL.Add('from c000062 i, c000061 n');
  query.SQL.Add('where ( i.codnota = n.codigo and data >= :vdat1 and data <= :vdat2 and i.cfop = ''5905'')');
  Query.Params.ParamByName('vdat1').AsDate := DateEdit1.Date;
  Query.Params.ParamByName('vdat2').AsDate := DateEdit2.Date;
  query.SQL.Add('group by n.movimento,n.data,n.codigo,n.numero,n.codcliente,i.codproduto,i.cfop');
  query.SQL.Add('order by n.movimento,n.data,n.codigo,n.numero,n.codcliente,i.codproduto,i.cfop');
  query.Open;

  FlatGauge1.Progress := 0;

  if query.RecordCount > 0 then
    begin
      FlatGauge1.MaxValue := Query.RecordCount;
      Query.First;
      while not query.Eof do begin

        qrinventario.Close;
        qrinventario.SQL.Clear;
        qrinventario.SQL.add('select * from inventario where ano = 2009');
        qrinventario.SQL.add('and codproduto = :vcod');
        qrinventario.Params.ParamByName('vcod').AsString   := query.fieldbyname('codproduto').AsString;
        //qrinventario.Params.ParamByName('data').asdatetime := dateedit2.date;
        qrinventario.Open;
        if qrinventario.RecordCount > 0 then
          begin
            qrinventario.Edit;
            //qrinventarioTIPO_1.AsFloat := qrinventarioESTOQUE.AsFloat;
{            if ( qrinventarioTIPO_2.AsFloat - Query.fieldbyname('quantidade').AsFloat ) < 0 then
              qrinventarioTIPO_2.AsFloat := 0
            else
              qrinventarioTIPO_2.AsFloat := qrinventarioTIPO_2.AsFloat - Query.fieldbyname('quantidade').AsFloat;
}
            qrinventarioTIPO_2.AsFloat := qrinventarioTIPO_2.AsFloat + Query.fieldbyname('quantidade').AsFloat;;
            //qrinventarioTIPO_3.AsFloat := 0;
            qrinventario.post;
          end;
        query.Next;
        FlatGauge1.Progress := FlatGauge1.Progress + 1;
        Application.ProcessMessages;
      end;

    end;

  frmmodulo.Conexao.Commit;
  FlatGauge1.Progress := 0;
  btotalizaClick(frminventario_deposito);

end;

procedure Tfrminventario_deposito.FormShow(Sender: TObject);
begin
  qrinventario.close;
  qrinventario.sql.clear;
  qrinventario.sql.add('select * from inventario');
  qrinventario.sql.add('where ano = 2009');
  qrinventario.open;

  decodedate(date-60,ano,mes,dia);
  dateedit1.text:= '01/'+frmprincipal.texto_justifica(inttostr(mes),2,'0','E')+'/'+frmprincipal.texto_justifica(inttostr(ano),4,'0','E');
  dateedit2.text:= '31/'+frmprincipal.texto_justifica(inttostr(mes),2,'0','E')+'/'+frmprincipal.texto_justifica(inttostr(ano),4,'0','E');

  btotalizaClick(frminventario_deposito);

end;

procedure Tfrminventario_deposito.btotalizaClick(Sender: TObject);
var
  t,a,b : real;
  q : integer;

begin

  qrinventario.close;
  qrinventario.sql.clear;
  qrinventario.sql.add('select * from inventario');
  qrinventario.sql.add('where ano = 2009');
  qrinventario.open;

    if qrinventario.recordcount > 0 then
  begin
    //grid.DataSource := nil;
    t := 0;
    a := 0;
    b := 0;
    q := 0;
    qrinventario.first;
    while not qrinventario.eof do
    begin
      t := t + (qrinventario.fieldbyname('estoque').asfloat*qrinventario.fieldbyname('custo').asfloat);
      a := a + (qrinventario.fieldbyname('tipo_2').asfloat*qrinventario.fieldbyname('custo').asfloat);
      b := b + (qrinventario.fieldbyname('tipo_3').asfloat*qrinventario.fieldbyname('custo').asfloat);
      q := q + 1;
      qrinventario.next;
    end;

    rtotal.value := t;
    rtipo2.value := a;
    rtipo3.value := b;
    rqtde.value := q;

end;

end;


procedure Tfrminventario_deposito.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qrinventario.close;
  action := cafree;
end;

procedure Tfrminventario_deposito.BitBtn1Click(Sender: TObject);
begin
  // notas de saida
  query.Close;
  query.SQL.Clear;
  query.SQL.Add('update inventario set tipo_1 = estoque,tipo_2 = 0,tipo_3=0');
  query.ExecSQL;

  btotalizaClick(frminventario_deposito);

end;

end.
