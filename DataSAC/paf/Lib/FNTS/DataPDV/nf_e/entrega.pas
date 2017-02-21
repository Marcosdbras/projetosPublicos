unit entrega;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Mask, RzEdit,
  RzBtnEdt, AdvGlowButton, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, Menus, frxClass, frxDBSet, frxDesgn;

type
  Tfrmentrega = class(TForm)
    Panel1: TPanel;
    Bevel1: TBevel;
    Label1: TLabel;
    Bevel2: TBevel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Bevel3: TBevel;
    Panel3: TPanel;
    Bevel5: TBevel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Bevel7: TBevel;
    bfechar: TAdvGlowButton;
    bincluir: TAdvGlowButton;
    qrprodutos: TZQuery;
    wwDBGrid1: TwwDBGrid;
    dsprodutos: TDataSource;
    ecliente: TRzButtonEdit;
    qrcliente2: TZQuery;
    qrcliente2CODIGO: TStringField;
    qrcliente2NOME: TStringField;
    qrcliente2APELIDO: TStringField;
    qrcliente2ENDERECO: TStringField;
    qrcliente2BAIRRO: TStringField;
    qrcliente2CIDADE: TStringField;
    qrcliente2UF: TStringField;
    qrcliente2CEP: TStringField;
    qrcliente2COMPLEMENTO: TStringField;
    qrcliente2MORADIA: TIntegerField;
    qrcliente2TIPO: TIntegerField;
    qrcliente2SITUACAO: TIntegerField;
    qrcliente2TELEFONE1: TStringField;
    qrcliente2TELEFONE2: TStringField;
    qrcliente2TELEFONE3: TStringField;
    qrcliente2CELULAR: TStringField;
    qrcliente2EMAIL: TStringField;
    qrcliente2RG: TStringField;
    qrcliente2CPF: TStringField;
    qrcliente2FILIACAO: TStringField;
    qrcliente2ESTADOCIVIL: TStringField;
    qrcliente2CONJUGE: TStringField;
    qrcliente2PROFISSAO: TStringField;
    qrcliente2EMPRESA: TStringField;
    qrcliente2RENDA: TFloatField;
    qrcliente2LIMITE: TFloatField;
    qrcliente2REF1: TStringField;
    qrcliente2REF2: TStringField;
    qrcliente2CODVENDEDOR: TStringField;
    qrcliente2DATA_CADASTRO: TDateTimeField;
    qrcliente2DATA_ULTIMACOMPRA: TDateTimeField;
    qrcliente2OBS1: TStringField;
    qrcliente2OBS2: TStringField;
    qrcliente2OBS3: TStringField;
    qrcliente2OBS4: TStringField;
    qrcliente2OBS5: TStringField;
    qrcliente2OBS6: TStringField;
    qrcliente2NASCIMENTO: TStringField;
    qrcliente2CODREGIAO: TStringField;
    qrcliente2CODCONVENIO: TStringField;
    qrcliente2CODUSUARIO: TStringField;
    bfiltrar: TButton;
    ed_codigo: TRzEdit;
    qrentrega: TZQuery;
    Panel7: TPanel;
    Bevel6: TBevel;
    dsentrega: TDataSource;
    qrvenda: TZQuery;
    dsvenda: TDataSource;
    PopupMenu1: TPopupMenu;
    NovaEntrega1: TMenuItem;
    Sair1: TMenuItem;
    wwDBGrid3: TwwDBGrid;
    Panel2: TPanel;
    Bevel4: TBevel;
    bgravar: TAdvGlowButton;
    fxdesenhar: TfrxDesigner;
    rel_entrega: TfrxReport;
    fsentr: TfrxDBDataset;
    fscliente: TfrxDBDataset;
    AdvGlowButton1: TAdvGlowButton;
    query: TZQuery;
    fsent_todos: TfrxDBDataset;
    procedure eclienteButtonClick(Sender: TObject);
    procedure eclienteKeyPress(Sender: TObject; var Key: Char);
    procedure bfiltrarClick(Sender: TObject);
    procedure qrprodutosAfterScroll(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure bfecharClick(Sender: TObject);
    procedure bincluirClick(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bgravarClick(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmentrega: Tfrmentrega;

implementation

uses modulo, xloc_cliente, principal, entrega_ficha;

{$R *.dfm}

procedure Tfrmentrega.eclienteButtonClick(Sender: TObject);
begin
        resultado_pesquisa1 := '';
        parametro_pesquisa := 'select * from c000007 where upper(nome) like '''+ansiuppercase(ecliente.text)+'%'' order by nome';
        frmxloc_cliente := tfrmxloc_cliente.create(self);
        frmxloc_cliente.showmodal;
        if resultado_pesquisa1 <> '' then
        begin
          ed_codigo.text := resultado_pesquisa1;
          ecliente.text := resultado_pesquisa2;
          qrcliente2.close;
          qrcliente2.sql.Clear;
          qrcliente2.sql.add('select * from c000007 where codigo = '''+resultado_pesquisa1+'''');
          qrcliente2.Open;
          bfiltrarClick(frmentrega);
        end;

end;

procedure Tfrmentrega.eclienteKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    if ecliente.text <> '' then
    begin
    qrcliente2.close;
    qrcliente2.sql.Clear;
    qrcliente2.sql.add('select * from c000007 where codigo = '''+frmprincipal.zerarcodigo(copy(ecliente.Text,1,6),6)+'''');
    qrcliente2.Open;
    if qrcliente2.RecordCount > 0 then
    begin
      if qrcliente2.RecordCount = 1 then
      begin

        ed_codigo.text := qrcliente2.fieldbyname('codigo').asstring;
        ecliente.text :=  qrcliente2.fieldbyname('nome').asstring;
        bfiltrarClick(frmentrega);
      end
      else
      begin
        resultado_pesquisa1 := '';
        parametro_pesquisa :=  'select * from c000007 where upper(nome) like '''+ansiuppercase(ecliente.text)+'%'' order by nome';
        frmxloc_cliente := tfrmxloc_cliente.create(self);
        frmxloc_cliente.showmodal;
        if resultado_pesquisa1 <> '' then
        begin
          ed_codigo.text := resultado_pesquisa1;
          ecliente.text := resultado_pesquisa2;
          qrcliente2.close;
          qrcliente2.sql.Clear;
          qrcliente2.sql.add('select * from c000007 where codigo = '''+resultado_pesquisa1+'''');
          qrcliente2.Open;
          bfiltrarClick(frmentrega);
        end;
      end;
    end
    else
    begin
      qrcliente2.close;
      qrcliente2.sql.Clear;
      qrcliente2.sql.add('select * from c000007 where upper(nome) like '''+ansiuppercase(ecliente.text)+'%''');
      qrcliente2.Open;
      if qrcliente2.RecordCount > 0 then
      begin
        if qrcliente2.RecordCount = 1 then
        begin
          ed_codigo.text := qrcliente2.fieldbyname('codigo').asstring;
          ecliente.text :=  qrcliente2.fieldbyname('nome').asstring;
          bfiltrarClick(frmentrega);
        end
        else
        begin
          resultado_pesquisa1 := '';
          parametro_pesquisa :=  'select * from c000007 where upper(nome) like '''+ansiuppercase(ecliente.text)+'%'' order by nome';
          frmxloc_cliente := tfrmxloc_cliente.create(self);
          frmxloc_cliente.showmodal;
          if resultado_pesquisa1 <> '' then
          begin
            ed_codigo.text := resultado_pesquisa1;
            ecliente.text := resultado_pesquisa2;
            qrcliente2.close;
            qrcliente2.sql.Clear;
            qrcliente2.sql.add('select * from c000007 where codigo = '''+resultado_pesquisa1+'''');
            qrcliente2.Open;
            bfiltrarClick(frmentrega);
          end;
        end;
      end
      else
      begin
        application.messagebox('Cliente não encontrado! Favor verificar!','Atenção',mb_ok+mb_iconerror);
        ecliente.setfocus;
      end;
    end;
    end;
  end;

end;

procedure Tfrmentrega.bfiltrarClick(Sender: TObject);
begin
{  qrprodutos.close;
  qrprodutos.sql.clear;
  qrprodutos.sql.add('select');
  qrprodutos.sql.add('ent.codproduto,');
  qrprodutos.sql.add('pro.produto,');
  qrprodutos.sql.add('pro.unidade,');
  qrprodutos.sql.add('ent.codvenda,');
  qrprodutos.sql.add('ent.data_venda,');
  qrprodutos.sql.add('sum(ent.qtde_vendida) vendido,');
  qrprodutos.sql.add('sum(ent.qtde_entregue) qtde_entregue,');
  qrprodutos.sql.add('(sum(ent.qtde_vendida)- sum(ent.qtde_entregue)) qtde_saldo');
  qrprodutos.sql.add('from');
  qrprodutos.sql.add('c000025 pro,');
  qrprodutos.sql.add('c000115 ent');
  qrprodutos.sql.add('where');
  qrprodutos.sql.add('ent.codproduto = pro.codigo');
  qrprodutos.sql.add('and ent.codcliente = '''+qrcliente2.FieldByName('codigo').asstring+'''');
  qrprodutos.sql.add('group by');
  qrprodutos.sql.add('ent.codproduto,');
  qrprodutos.sql.add('pro.produto,');
  qrprodutos.sql.add('pro.unidade,');
  qrprodutos.sql.add('ent.codvenda,');
  qrprodutos.sql.add('ent.data_venda');

  if RadioButton1.Checked then
  begin
    qrprodutos.SQL.add('having'); //(sum(ent.qtde_vendida)- sum(ent.qtde_entregue)) > 0');
    qrprodutos.SQL.add('sum(ent.qtde_vendida) > 0');
  end;
  qrprodutos.open;

  }

  qrprodutos.close;
  qrprodutos.sql.clear;
  qrprodutos.sql.add('select');
  qrprodutos.sql.add('ent.codproduto,');
  qrprodutos.sql.add('pro.produto,');
  qrprodutos.sql.add('pro.unidade,');
  qrprodutos.sql.add('ent.codvenda,');
  qrprodutos.sql.add('ent.data_venda,');
  qrprodutos.sql.add('sum(ent.qtde_vendida) vendido,');
  qrprodutos.sql.add('sum(ent.qtde_entregue) qtde_entregue,');
  qrprodutos.sql.add('(sum(ent.qtde_vendida)- sum(ent.qtde_entregue)) qtde_saldo');
  qrprodutos.sql.add('from');
  qrprodutos.sql.add('c000025 pro,');
  qrprodutos.sql.add('c000115 ent');
  qrprodutos.sql.add('where');
  qrprodutos.sql.add('ent.codproduto = pro.codigo');
  qrprodutos.sql.add('and ent.codcliente = '''+qrcliente2.FieldByName('codigo').asstring+'''');
  qrprodutos.sql.add('group by');
  qrprodutos.sql.add('ent.codproduto,');
  qrprodutos.sql.add('pro.produto,');
  qrprodutos.sql.add('pro.unidade,');
  qrprodutos.sql.add('ent.codvenda,');
  qrprodutos.sql.add('ent.data_venda');

  if RadioButton1.Checked then
  begin
    qrprodutos.SQL.add('having'); //(sum(ent.qtde_vendida)- sum(ent.qtde_entregue)) > 0');
    qrprodutos.SQL.add('sum(ent.qtde_vendida) > 0 and (sum(ent.qtde_vendida)- sum(ent.qtde_entregue)) > 0');
  end
  else
  begin
    qrprodutos.SQL.add('having'); //(sum(ent.qtde_vendida)- sum(ent.qtde_entregue)) > 0');
    qrprodutos.SQL.add('sum(ent.qtde_vendida) > 0');
  end;
  qrprodutos.open;

  wwDBGrid1.setfocus;


end;

procedure Tfrmentrega.qrprodutosAfterScroll(DataSet: TDataSet);
begin

  qrentrega.close;
  qrentrega.sql.clear;
  qrentrega.sql.add('select * from c000115 where codproduto  = '''+qrprodutos.fieldbyname('codproduto').asstring+'''');
  qrentrega.sql.add('and codvenda = '''+qrprodutos.fieldbyname('codvenda').asstring+'''');
  qrentrega.SQL.add('and qtde_entregue > 0 order by data_entrega');
  qrentrega.open;


end;

procedure Tfrmentrega.FormShow(Sender: TObject);
begin
  qrprodutos.close;
  qrprodutos.sql.clear;
  qrprodutos.sql.add('select');
  qrprodutos.sql.add('ent.codproduto,');
  qrprodutos.sql.add('pro.produto,');
  qrprodutos.sql.add('pro.unidade,');
  qrprodutos.sql.add('sum(ent.qtde_vendida) vendido,');
  qrprodutos.sql.add('sum(ent.qtde_entregue) qtde_entregue,');
  qrprodutos.sql.add('(sum(ent.qtde_vendida)- sum(ent.qtde_entregue)) qtde_saldo');
  qrprodutos.sql.add('from');
  qrprodutos.sql.add('c000025 pro,');
  qrprodutos.sql.add('c000115 ent');
  qrprodutos.sql.add('where');
  qrprodutos.sql.add('ent.codproduto = pro.codigo');
  qrprodutos.sql.add('and ent.codcliente = ''99999999''');
  qrprodutos.sql.add('group by');
  qrprodutos.sql.add('ent.codproduto,');
  qrprodutos.sql.add('pro.produto,');
  qrprodutos.sql.add('pro.unidade');
  qrprodutos.open;

  ecliente.setfocus;


  qrvenda.Close;
  qrentrega.Close;
end;

procedure Tfrmentrega.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmentrega.bincluirClick(Sender: TObject);
var i : integer;
Key: Char;
begin
    IF ECLIENTE.TEXT = '' THEN EXIT;


        i := 1;


        FRMentrega_ficha := TFRMentrega_ficha.CREATE(self);
        frmentrega_ficha.qrEntrega.open;
        while frmentrega_ficha.qrentrega.RecordCount > 0 do frmentrega_ficha.qrEntrega.delete;


        qrprodutos.First;
        while not qrprodutos.Eof do
        begin
          if qrprodutos.fieldbyname('qtde_saldo').asfloat > 0 then
          begin
            frmentrega_ficha.qrEntrega.Insert;
            frmentrega_ficha.qrEntrega.FieldByName('codigo').asstring := qrprodutos.fieldbyname('codproduto').asstring;
            frmentrega_ficha.qrEntrega.FieldByName('produto').asstring := qrprodutos.fieldbyname('produto').asstring;
            frmentrega_ficha.qrEntrega.FieldByName('unidade').asstring := qrprodutos.fieldbyname('unidade').asstring;
            frmentrega_ficha.qrEntrega.FieldByName('qtde_vendida').asfloat := qrprodutos.fieldbyname('vendido').asfloat;
            frmentrega_ficha.qrEntrega.FieldByName('qtde_entregue').asfloat := 0;
            frmentrega_ficha.qrentrega.fieldbyname('qtde_ja_entregue').asfloat := qrprodutos.fieldbyname('qtde_entregue').asfloat;
            frmentrega_ficha.qrEntrega.FieldByName('qtde_saldo').asfloat := qrprodutos.fieldbyname('qtde_saldo').asfloat;
            frmentrega_ficha.qrEntrega.FieldByName('item').asstring := frmprincipal.zerarcodigo(inttostr(i),3);
            frmentrega_ficha.qrentrega.fieldbyname('codvenda').asstring := qrprodutos.fieldbyname('codvenda').asstring;
            frmentrega_ficha.qrentrega.fieldbyname('data_venda').asdatetime := qrprodutos.fieldbyname('data_venda').asdatetime;

            i := i + 1;
            frmentrega_ficha.qrEntrega.post;
          end;
          qrprodutos.next;
        end;
        FRMentrega_ficha.qrEntrega.IndexFieldNames := 'ITEM';
        frmentrega_ficha.showmodal;


  key := #13;
  eclienteKeyPress(frmentrega,key);



end;

procedure Tfrmentrega.RadioButton1Click(Sender: TObject);
var Key: Char;
begin
  key := #13;
  eclienteKeyPress(frmentrega,key);
end;

procedure Tfrmentrega.RadioButton2Click(Sender: TObject);
var Key: Char;
begin
  key := #13;
  eclienteKeyPress(frmentrega,key);
end;

procedure Tfrmentrega.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmentrega.bgravarClick(Sender: TObject);
begin
  qrprodutos.close;
  qrprodutos.sql.clear;
  qrprodutos.sql.add('select');
  qrprodutos.sql.add('ent.codproduto,');
  qrprodutos.sql.add('pro.produto,');
  qrprodutos.sql.add('pro.unidade,');
  qrprodutos.sql.add('ent.codvenda,');
  qrprodutos.sql.add('ent.data_venda,');
  qrprodutos.sql.add('sum(ent.qtde_vendida) vendido,');
  qrprodutos.sql.add('sum(ent.qtde_entregue) qtde_entregue,');
  qrprodutos.sql.add('(sum(ent.qtde_vendida)- sum(ent.qtde_entregue)) qtde_saldo');
  qrprodutos.sql.add('from');
  qrprodutos.sql.add('c000025 pro,');
  qrprodutos.sql.add('c000115 ent');
  qrprodutos.sql.add('where');
  qrprodutos.sql.add('ent.codproduto = pro.codigo');
  qrprodutos.sql.add('and ent.codcliente = '''+qrcliente2.FieldByName('codigo').asstring+'''');
  qrprodutos.sql.add('group by');
  qrprodutos.sql.add('ent.codproduto,');
  qrprodutos.sql.add('pro.produto,');
  qrprodutos.sql.add('pro.unidade,');
  qrprodutos.sql.add('ent.codvenda,');
  qrprodutos.sql.add('ent.data_venda');

  if RadioButton1.Checked then
  begin
    qrprodutos.SQL.add('having'); //(sum(ent.qtde_vendida)- sum(ent.qtde_entregue)) > 0');
    qrprodutos.SQL.add('sum(ent.qtde_vendida) > 0 and (sum(ent.qtde_vendida)- sum(ent.qtde_entregue)) > 0');
  end
  else
  begin
    qrprodutos.SQL.add('having'); //(sum(ent.qtde_vendida)- sum(ent.qtde_entregue)) > 0');
    qrprodutos.SQL.add('sum(ent.qtde_vendida) > 0');
  end;
  qrprodutos.open;



  rel_entrega.Report.LoadFromFile('\DATASAC\server\rel\F000169.fr3');
  rel_entrega.ShowReport;


  bfiltrarclick(frmentrega);
end;

procedure Tfrmentrega.AdvGlowButton1Click(Sender: TObject);
begin
  query.close;
  query.sql.clear;
  query.sql.add('select');
  query.sql.add('ent.codproduto,');
  query.sql.add('pro.produto,');
  query.sql.add('pro.unidade,');
  query.sql.add('ent.codvenda,');
  query.sql.add('ent.data_venda,');
  query.sql.add('ent.codcliente,');
  query.SQL.add('cli.nome,');
  query.sql.add('sum(ent.qtde_vendida) vendido,');
  query.sql.add('sum(ent.qtde_entregue) qtde_entregue,');
  query.sql.add('(sum(ent.qtde_vendida)- sum(ent.qtde_entregue)) qtde_saldo');
  query.sql.add('from');
  query.sql.add('c000025 pro,');
  query.sql.add('c000115 ent,');
  query.sql.add('c000007 cli');
  query.sql.add('where');
  query.sql.add('ent.codproduto = pro.codigo');
  query.sql.add('and ent.codcliente = cli.codigo');
  query.sql.add('group by');
  query.sql.add('ent.codproduto,');
  query.sql.add('pro.produto,');
  query.sql.add('pro.unidade,');
  query.sql.add('ent.codvenda,');
  query.sql.add('ent.data_venda,');
  query.SQL.add('ent.codcliente,');
  query.sql.add('cli.nome');
  query.SQL.add('having');
  query.SQL.add('sum(ent.qtde_vendida) > 0 and (sum(ent.qtde_vendida)- sum(ent.qtde_entregue)) > 0');
  QUERY.SQL.ADD('ORDER BY CLI.NOME');
  query.open;

  rel_entrega.Report.LoadFromFile('\DATASAC\server\rel\F000171.fr3');
  rel_entrega.ShowReport;


  bfiltrarclick(frmentrega);
end;

end.
