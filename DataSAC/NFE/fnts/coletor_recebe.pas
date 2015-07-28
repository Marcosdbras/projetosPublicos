unit coletor_recebe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzPrgres, StdCtrls, TFlatGaugeUnit, Buttons, Mask, RzEdit,
  RzBtnEdt, AdvGlowButton, ExtCtrls, RzPanel, DB, MemDS, VirtualTable,
  Grids, DBGrids, RzDBGrid, Wwdbigrd, Wwdbgrid, ComCtrls,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  Tfrmcoletor_recebe = class(TForm)
    Memo1: TMemo;
    OpenDialog1: TOpenDialog;
    RzPanel1: TRzPanel;
    bcarrega: TAdvGlowButton;
    bretorna: TAdvGlowButton;
    ListBox1: TListBox;
    qrrecebe: TVirtualTable;
    dsrecebe: TDataSource;
    qrrecebebarra: TStringField;
    qrrecebeproduto: TStringField;
    qrrecebeqtde: TFloatField;
    RzPanel2: TRzPanel;
    Label1: TLabel;
    ecaminho: TRzButtonEdit;
    wwDBGrid1: TwwDBGrid;
    batualiza: TAdvGlowButton;
    ProgressBar1: TProgressBar;
    qr100: TZQuery;
    qr100CODPRODUTO: TStringField;
    qr100CODFILIAL: TStringField;
    qr100ESTOQUE_INICIAL: TFloatField;
    qr100ENTRADAS: TFloatField;
    qr100SAIDAS: TFloatField;
    qr100ESTOQUE_ATUAL: TFloatField;
    qr100ULTIMA_ENTRADA: TDateTimeField;
    qr100ULTIMA_SAIDA: TDateTimeField;
    qr100NOTA_FISCAL: TStringField;
    qrrecebecodigo: TStringField;
    qrrecebepreco: TFloatField;
    qrrecebeunidade: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ecaminhoButtonClick(Sender: TObject);
    procedure bretornaClick(Sender: TObject);
    procedure bcarregaClick(Sender: TObject);
    procedure batualizaClick(Sender: TObject);
  private
    function QuebraDireita(BaseString, BreakString: string; StringList: TStringList): TStringList;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcoletor_recebe: Tfrmcoletor_recebe;

implementation

uses produto, principal, modulo;

{$R *.dfm}

procedure Tfrmcoletor_recebe.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmcoletor_recebe.ecaminhoButtonClick(Sender: TObject);
begin
 if opendialog1.Execute then
   ecaminho.Text := opendialog1.FileName;

end;

procedure Tfrmcoletor_recebe.bretornaClick(Sender: TObject);
begin
  close;
end;

function Tfrmcoletor_recebe.QuebraDireita(BaseString, BreakString: string; StringList: TStringList): TStringList;
var
  EndOfCurrentString: byte;
  TempStr: string;
begin
  repeat
  EndOfCurrentString := Pos(BreakString, BaseString);
  if EndOfCurrentString = 0 then
    StringList.add(BaseString)
  else
    StringList.add(Copy(BaseString, 1, EndOfCurrentString - 1));
  BaseString := Copy(BaseString, EndOfCurrentString + length(BreakString), length(BaseString) - EndOfCurrentString);

  until EndOfCurrentString = 0;
  result := StringList;
end;


procedure Tfrmcoletor_recebe.bcarregaClick(Sender: TObject);
var
  t: TStringList;
  i,x : integer;
  vbarra,vproduto,vqtde : string;
begin

  Memo1.Text := '';
  memo1.Lines.LoadFromFile(ecaminho.text);
  Memo1.Lines[0];

  qrrecebe.open;

  for x:= 0 to memo1.lines.count-1 do
    begin

    qrrecebe.append;

    t := TStringList.create;
    ListBox1.Items.Assign(QuebraDireita(Memo1.Lines[x], ',', t));

    for i:=0 to ListBox1.Items.Count-1 do
      begin
        vbarra := ListBox1.Items[0];
        vproduto :=  ListBox1.Items[1];
        vqtde :=  ListBox1.Items[2];
      end;
    qrrecebebarra.AsString := vbarra;
    qrrecebeproduto.AsString := vproduto;
    qrrecebeqtde.Asfloat := strtofloat(vqtde);
    qrrecebe.post;
    t.free;
    Application.ProcessMessages;
  end;

end;

procedure Tfrmcoletor_recebe.batualizaClick(Sender: TObject);
begin
  showmessage('Opção em Desenvolvimento...');
  exit;
  
  qrrecebe.First;
  while not qrrecebe.Eof do begin
    qr100.close;
    qr100.sql.clear;
    qr100.SQL.add('select * from c000100 where codproduto = ''' + qrrecebecodigo.asstring+ '''');
    qr100.open;
    if qr100.recordcount > 0 then
      begin

        if qr100.fieldbyname('ESTOQUE_ATUAL').AsFloat <> qrrecebeqtde.AsFloat then
        begin

          FRMMODULO.QRPRODUTO_MOV.CLOSE;
          FRMMODULO.QRPRODUTO_MOV.SQL.CLEAR;
          FRMMODULO.QRPRODUTO_MOV.SQL.Add('insert into c000032');
          frmmodulo.qrproduto_mov.SQL.add('(codigo,codnota,serial,numeronota,');
          frmmodulo.qrproduto_mov.SQL.add('codproduto,qtde,unitario,movimento_estoque,');
          frmmodulo.qrproduto_mov.SQL.add('total,unidade,aliquota,');
          frmmodulo.qrproduto_mov.SQL.add('cupom_item,cupom_numero,cupom_modelo,');
          frmmodulo.qrproduto_mov.SQL.add('ecf_serie,ecf_caixa,codcliente,codvendedor,movimento,data,cst)');
          frmmodulo.qrproduto_mov.SQL.add('values');
          frmmodulo.qrproduto_mov.SQL.add('('''+frmprincipal.codifica('000032')+''',''000000'',''000000'',''000000'',');
          frmmodulo.qrproduto_mov.SQL.add(''''+qrrecebecodigo.asstring+''',:QTDE,:UNITARIO,:movimento_estoque,');
          frmmodulo.qrproduto_mov.SQL.add(':TOTAL,'''+qrrecebeunidade.asstring +''',:ALIQUOTA,');
          frmmodulo.qrproduto_mov.SQL.add('''001'',''000000'','''',');
          frmmodulo.qrproduto_mov.SQL.add(''''','''',''000000'',''S/VEND'',10,:datax,''000'')');
          FRMMODULO.QRPRODUTO_MOV.Params.ParamByName('datax').asdatetime := DATE;
          FRMMODULO.QRPRODUTO_MOV.Params.ParamByName('UNITARIO').ASFLOAT := qrrecebepreco.asfloat;

          if qr100.fieldbyname('ESTOQUE_ATUAL').AsFloat < qrrecebeqtde.AsFloat then
            begin
              FRMMODULO.QRPRODUTO_MOV.Params.ParamByName('QTDE').ASFLOAT := qrrecebeqtde.asinteger-qr100.fieldbyname('ESTOQUE_ATUAL').AsFloat;
              FRMMODULO.QRPRODUTO_MOV.Params.ParamByName('TOTAL').ASFLOAT := (qrrecebeqtde.asinteger-qr100.fieldbyname('ESTOQUE_ATUAL').AsFloat)*qrrecebepreco.asfloat;
              FRMMODULO.QRPRODUTO_MOV.Params.ParamByName('movimento_estoque').ASFLOAT := qrrecebeqtde.asinteger-qr100.fieldbyname('ESTOQUE_ATUAL').AsFloat;
            end
          else
            begin
              FRMMODULO.QRPRODUTO_MOV.Params.ParamByName('QTDE').ASFLOAT := ( qr100.fieldbyname('ESTOQUE_ATUAL').AsFloat-qrrecebeqtde.asinteger) * (-1);
              FRMMODULO.QRPRODUTO_MOV.Params.ParamByName('TOTAL').ASFLOAT := ( qr100.fieldbyname('ESTOQUE_ATUAL').AsFloat-qrrecebeqtde.asinteger)*qrrecebepreco.asfloat * (-1);
              FRMMODULO.QRPRODUTO_MOV.Params.ParamByName('movimento_estoque').ASFLOAT := (qr100.fieldbyname('ESTOQUE_ATUAL').AsFloat-qrrecebeqtde.asinteger) * (-1);
            end;
          FRMMODULO.QRPRODUTO_MOV.Params.ParamByName('ALIQUOTA').ASFLOAT := 0;
          frmmodulo.qrproduto_mov.ExecSQL;

          qr100.edit;
          qr100.FieldByName('ESTOQUE_INICIAL').AsFloat := qrrecebeqtde.asinteger+
                                                          qr100.FieldByName('SAIDAS').AsFloat-
                                                          qr100.FieldByName('ENTRADAS').AsFloat;
          qr100.FieldByName('ESTOQUE_ATUAL').Asinteger := qrrecebeqtde.asinteger;
          qr100.post;
        end;
      end;
    qrrecebe.Next;
  end;
  frmmodulo.conexao.commit;
end;

end.
