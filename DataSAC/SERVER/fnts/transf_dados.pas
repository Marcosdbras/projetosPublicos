unit transf_dados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, ZConnection,
  StdCtrls, DBTables, Wwquery, ZAbstractTable, Buttons, Spin, ComCtrls,
  Mask, rxtooledit, MemDS, DBAccess, IBC, Gauges, ZAbstractConnection;

type
  Tfrmtransf_dados = class(TForm)
    query1: TZQuery;
    bar: TProgressBar;
    query: TZQuery;
    Conexao: TZConnection;
    qrnova: TZQuery;
    BitBtn3: TBitBtn;
    query2: tzquery;
    query3: tzquery;
    query4: tzquery;
    query5: tzquery;
    query10: TZQuery;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    ps: TProgressBar;
    BitBtn19: TBitBtn;
    TabSheet2: TTabSheet;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    BitBtn7: TBitBtn;
    edit3: TSpinEdit;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    BitBtn14: TBitBtn;
    Edit6: TEdit;
    Edit7: TEdit;
    BitBtn13: TBitBtn;
    BitBtn15: TBitBtn;
    GroupBox3: TGroupBox;
    Label8: TLabel;
    BitBtn18: TBitBtn;
    DateEdit1: TDateEdit;
    rcaixa: TCheckBox;
    rreceber: TCheckBox;
    rvendas: TCheckBox;
    rproduto: TCheckBox;
    Memo1: TMemo;
    Button1: TButton;
    procedure BitBtn3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure BitBtn18Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure BitBtn19Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmtransf_dados: Tfrmtransf_dados;

implementation

uses principal, modulo;

{$R *.dfm}


procedure Tfrmtransf_dados.BitBtn3Click(Sender: TObject);
begin
try


  if application.messagebox('Confirma todas as alterações?','Aviso',mb_yesno+mb_iconquestion)  = idyes then
  begin
    conexao.Commit;
  end
  else
  begin
    conexao.Rollback;
    showmessage('Cancelado!');
  end;
  except
  end;

  close;
end;

procedure Tfrmtransf_dados.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin




  action := cafree;
end;

procedure Tfrmtransf_dados.BitBtn7Click(Sender: TObject);
begin
  query1.close;
  query1.sql.clear;
  query1.sql.Add('select * from '+edit1.text);
  query1.open;
  bar.position := 0;
  bar.Max := query1.RecordCount;

  query1.first;
  while not query1.eof do
  begin
    query1.edit;
    query1.fieldbyname(edit2.text).asstring := frmprincipal.zerarcodigo(query1.fieldbyname(edit2.text).AsString,edit3.value);
    query1.post;

    Memo1.Lines.Add(query1.fieldbyname(edit2.text).asstring);

    query1.next;
    bar.position := bar.position + 1;
  end;

  showmessage('Pronto!');
  bar.position := 0;
end;

procedure Tfrmtransf_dados.BitBtn13Click(Sender: TObject);
var qtde, codigo : integer;
begin
  qtde := strtoint(inputbox('Quantidade','Informe a Quantidade','0'));
  codigo := strtoint(inputbox('Quantidade','Informe o Código Inicial','1'));
  frmmodulo.qrproduto.close;
  frmmodulo.qrproduto.sql.clear;
  frmmodulo.qrproduto.sql.add('select * from c000025');
  frmmodulo.qrproduto.open;


  while qtde <> 0 do
  begin
    frmmodulo.qrproduto.insert;
    frmmodulo.qrproduto.FIELDBYNAME('CODIGO').ASSTRING := FRMPRINCIPAL.zerarcodigo(INTTOSTR(CODIGO),6);
    FRMMODULO.QRPRODUTO.FIELDBYNAME('CODFORNECEDOR').ASSTRING := '000999';
    FRMMODULO.QRPRODUTO.FIELDBYNAME('CODGRUPO').ASSTRING := '000001';
    FRMMODULO.QRPrOdUTO.POST;
    CODIGO := CODIGO + 1;
    qtde := qtde - 1;
  end;
  FRMMODULO.Conexao.Commit;
  SHOWMESSAGE('Pronto!');



end;

procedure Tfrmtransf_dados.BitBtn14Click(Sender: TObject);
begin
  query1.close;
  query1.sql.clear;
  query1.sql.Add('select * from '+edit4.text);
  query1.open;
  query1.first;
  while not query1.eof do
  begin
    query1.edit;
    query1.fieldbyname(edit7.text).asstring :=
    query1.fieldbyname(edit6.text).asstring +' '+
    query1.fieldbyname(edit5.text).asstring;
    query1.post;
    query1.next;
  end;

  showmessage('Pronto!');
end;

procedure Tfrmtransf_dados.BitBtn15Click(Sender: TObject);
var i : integer;
begin
  if application.messagebox('Tem certeza que deseja realmente limpar o banco de dados?','Atenção',mb_yesno+MB_ICONWARNING+MB_DEFBUTTON2) = idyes then
  begin
    frmmodulo.Conexao.Connected := false;
    conexao.Connected := false;
    conexao.HostName := frmmodulo.Conexao.HostName;
    conexao.Database := frmmodulo.Conexao.Database;
    conexao.Connected := true;

    for i := 1 to 100 do
    begin
      if (i = 1) or (i = 2)  or (i = 3) or (i = 6) or (i = 35) then
      begin
        //
      end
      else
      begin
        try
          query.close;
          query.sql.clear;
          query.Sql.add('delete from c'+frmprincipal.texto_justifica(inttostr(i),6,'0','E'));
          query.ExecSQL;
        except
        end;
      end;
    end;

    query.close;
    query.sql.clear;
    query.sql.add('update c000000 set sequencia = 1 where codigo not in (''000001'',''000002'',''000006'',''000003'',''000035'')');
    query.ExecSQL;
  end;
end;

procedure Tfrmtransf_dados.BitBtn18Click(Sender: TObject);
var datas : tdate;
begin
  try
    datas := strtodate(dateedit1.Text);
  except
    Showmessage('Favor informar uma data válida!');
    dateedit1.setfocus;
    exit;
  end;


  if application.messagebox('Tem certeza que deseja continuar com a limpeza dos dados?','Atenção',mb_yesno+MB_ICONWARNING+MB_DEFBUTTON2) = idyes then
  begin
    if rcaixa.Checked then
    begin
      query1.Close;
      query1.SQL.clear;
      query1.SQL.add('delete from c000044 where data <= :datax');
      query1.Params.ParamByName('datax').asdatetime := dateedit1.date;
      query1.ExecSQL;
    end;
    if rreceber.Checked then
    begin
      query1.Close;
      query1.SQL.clear;
      query1.SQL.add('delete from c000049 where data_vencimento <= :datax and situacao = 2');
      query1.Params.ParamByName('datax').asdatetime := dateedit1.date;
      query1.ExecSQL;
    end;
    if rcaixa.Checked then
    begin
      query1.Close;
      query1.SQL.clear;
      query1.SQL.add('delete from c000048 where data <= :datax');
      query1.Params.ParamByName('datax').asdatetime := dateedit1.date;
      query1.ExecSQL;
    end;
    if rproduto.Checked then
    begin
      query1.Close;
      query1.SQL.clear;
      query1.SQL.add('delete from c000032 where data <= :datax and ecf_caixa = '''' and ecf_serie = '''' and cupom_modelo = ''2D''');
      query1.Params.ParamByName('datax').asdatetime := dateedit1.date;
      query1.ExecSQL;
      query1.Close;
      query1.SQL.clear;
      query1.SQL.add('delete from c000032 where data <= :datax and ecf_caixa is null and ecf_serie is null and cupom_modelo = ''2D''');
      query1.Params.ParamByName('datax').asdatetime := dateedit1.date;
      query1.ExecSQL;
    end;



  end;

end;

procedure Tfrmtransf_dados.Button11Click(Sender: TObject);
begin
  query2.close;
  query2.sql.clear;
  query2.sql.add('select * from c000088 where codigo is null or codigo = ''''');
  query2.open;
  query2.last;

  showmessage('Quantidade de Registros: '+inttostr(query2.recordcount));
  query2.first;
  while not query2.eof do
  begin
    query2.edit;
    query2.fieldbyname('codigo').asstring := frmPrincipal.codifica('000032');
    query2.post;

    button11.caption := query2.fieldbyname('codigo').asstring;
    application.ProcessMessages;
    query2.next;
  end;
  button11.caption := 'Pronto!';
end;

procedure Tfrmtransf_dados.Button12Click(Sender: TObject);
begin
  query2.close;
  query2.sql.clear;
  query2.sql.add('select * from c000062 where codigo is null or codigo = ''''');
  query2.open;
  query2.last;

  showmessage('Quantidade de Registros: '+inttostr(query2.recordcount));
  query2.first;
  while not query2.eof do
  begin
    query2.edit;
    query2.fieldbyname('codigo').asstring := frmPrincipal.codifica('000032');
    query2.post;

    button11.caption := query2.fieldbyname('codigo').asstring;
    application.ProcessMessages;
    query2.next;
  end;
  button11.caption := 'Pronto!';
end;

procedure Tfrmtransf_dados.Button13Click(Sender: TObject);
begin
  ps.Position := 0;
  ps.Step := 1;


  query2.close;
  query2.sql.clear;
  query2.sql.add('select * from c000025 order by codigo');
  query2.open;
  query2.First;
  query2.last;
  ps.max := query2.RecordCount;
  query2.first;

  while not query2.eof do
  begin
    query3.close;
    query3.sql.clear;
    query3.sql.add('select sum(movimento_estoque) saida from c000032');
    query3.SQL.add('where movimento_estoque < 0 and codproduto = '''+query2.fieldbyname('codigo').asstring+'''');
    query3.Open;

    query4.close;
    query4.sql.clear;
    query4.sql.add('select sum(movimento_estoque) entrada from c000032');
    query4.SQL.add('where movimento_estoque > 0 and codproduto = '''+query2.fieldbyname('codigo').asstring+'''');
    query4.Open;


    query5.close;
    query5.sql.clear;
    query5.sql.add('select * from c000100 where codproduto = '''+query2.fieldbyname('codigo').asstring+'''');
    query5.Open;

    if query5.RecordCount > 0 then
    begin
      query5.edit;
      query5.fieldbyname('estoque_inicial').asfloat := query2.fieldbyname('estoque').asfloat;
      query5.fieldbyname('entradas').asfloat := query4.fieldbyname('entrada').asfloat;
      query5.FieldByName('saidas').asfloat := query3.fieldbyname('saida').asfloat * (-1);
      query5.fieldbyname('estoque_atual').asfloat := query5.fieldbyname('estoque_inicial').asfloat +
                                                     query5.fieldbyname('entradas').asfloat -
                                                     query5.fieldbyname('saidas').asfloat;
      query5.post;

    end
    else
    begin
      query5.insert;
      query5.fieldbyname('codproduto').asstring := query2.fieldbyname('codigo').asstring;
      query5.fieldbyname('estoque_inicial').asfloat := query2.fieldbyname('estoque').asfloat;
      query5.fieldbyname('entradas').asfloat := query4.fieldbyname('entrada').asfloat;
      query5.FieldByName('saidas').asfloat := query3.fieldbyname('saida').asfloat * (-1);
      query5.fieldbyname('estoque_atual').asfloat := query5.fieldbyname('estoque_inicial').asfloat +
                                                     query5.fieldbyname('entradas').asfloat -
                                                     query5.fieldbyname('saidas').asfloat;
      query5.post;

    end;

    query2.next;
    ps.StepIt;
    Application.ProcessMessages;
  end;
  showmessage('Pronto!');


end;

procedure Tfrmtransf_dados.BitBtn19Click(Sender: TObject);
VAR
  cod : integer;
begin
{
  query2.close;
  query2.sql.clear;
  query2.sql.add('update c000032 set codigo = ''''');
  query2.ExecSQL;
}

  query10.close;
  query10.sql.clear;
  query10.sql.add('select * from c000032');
  query10.sql.add('where numeronota = ''007061''');
  query10.open;

  bar.Max := query10.recordcount;
  bar.Position := 0;
  cod := 0;

  query10.first;
  while not query10.eof do
  begin
    cod := cod + 1;
    query10.edit;
    query10.fieldbyname('codigo').asstring := frmPrincipal.zerarcodigo(inttostr(cod),6);
    query10.post;
    query10.next;
    bar.Position := bar.Position + 1;
  end;
  FRMMODULO.Conexao.Commit;
  bar.Position := 0;
end;

procedure Tfrmtransf_dados.Button1Click(Sender: TObject);
begin
  query.Close;
  query.SQL.Clear;
  query.SQL.Add('select * from c000007');
  query.Open;

  while not query.Eof do
     begin
       query2.Close;
       query2.SQL.Clear;
       query2.SQL.Add('update c000007 set codigo = :codigo where id = :id'   );
       query2.Params.ParamByName('codigo').AsString := formatfloat('000000',strtofloat(query.fieldbyname('codigo').AsString));
       query2.Params.ParamByName('id').AsInteger  :=  query.fieldbyname('id').AsInteger;
       query2.ExecSQL;

       query.Next;
     end;



  query.Close;
  query.SQL.Clear;
  query.SQL.Add('select * from c000025');
  query.Open;

  while not query.Eof do
     begin
       query2.Close;
       query2.SQL.Clear;
       query2.SQL.Add('update c000025 set codigo = :codigo where id = :id'   );
       query2.Params.ParamByName('codigo').AsString := formatfloat('000000',strtofloat(query.fieldbyname('codigo').AsString));
       query2.Params.ParamByName('id').AsInteger  :=  query.fieldbyname('id').AsInteger;
       query2.ExecSQL;


       query.Next;
     end;



  query.Close;
  query.SQL.Clear;
  query.SQL.Add('select * from c000100');
  query.Open;

  while not query.Eof do
     begin
       query2.Close;
       query2.SQL.Clear;
       query2.SQL.Add('update c000100 set codproduto = :codproduto where id = :id'   );
       query2.Params.ParamByName('codproduto').AsString := formatfloat('000000',strtofloat(query.fieldbyname('codproduto').AsString));
       query2.Params.ParamByName('id').AsInteger  :=  query.fieldbyname('id').AsInteger;
       query2.ExecSQL;


       query.Next;
     end;

  query.Close;
  query.SQL.Clear;
  query.SQL.Add('select * from c000025');
  query.Open;

  while not query.Eof do
     begin

       query3.Close;
       query3.SQL.Clear;
       query3.SQL.Add('select * from c000100 where codproduto = :codproduto');
       query3.Params.ParamByName('codproduto').AsString := query.fieldbyname('codigo').AsString;
       query3.Open;
       if query3.RecordCount = 0 then
          begin
            query2.Close;
            query2.SQL.Clear;
            query2.SQL.Add('insert into c000100 (codfilial,  codproduto,  estoque_inicial, entradas, saidas, estoque_atual) values (:codfilial,   :codproduto, :estoque_inicial, :entradas, :saidas, :estoque_atual)');
            query2.Params.ParamByName('codproduto').AsString  := query.fieldbyname('codigo').AsString;
            query2.Params.ParamByName('codfilial').AsString  := '000001';
            query2.Params.ParamByName('estoque_inicial').Asfloat  :=  query.fieldbyname('estoque').Asfloat;
            query2.Params.ParamByName('estoque_atual').Asfloat  :=  query.fieldbyname('estoque').Asfloat;
            query2.Params.ParamByName('entradas').Asfloat  :=  0;
            query2.Params.ParamByName('saidas').Asfloat  :=  0;
            query2.ExecSQL;
          end;

       query.Next;
     end;


  query.Close;
  query.SQL.Clear;
  query.SQL.Add('select * from unidade');
  query.Open;

  while not query.Eof do
     begin
       query2.Close;
       query2.SQL.Clear;
       query2.SQL.Add('update c000025 set ');





       query2.Close;
       query2.SQL.Clear;
       query2.SQL.Add('update unidade set codigo = :codigo where id = :id'   );
       //query2.Params.ParamByName('codigo').AsString := formatfloat('000000',strtofloat(query.fieldbyname('codigo').AsString));
       query2.Params.ParamByName('codigo').AsString := query.fieldbyname('codigo').AsString;
       query2.Params.ParamByName('id').AsInteger  :=  query.fieldbyname('id').AsInteger;
       query2.ExecSQL;


       query.Next;
     end;






end;

end.
