unit produto_exportar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, Collection, TFlatPanelUnit,
  Buttons, Mask, ToolEdit, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, PageView, Menus;

type
  Tfrmproduto_exportar = class(TForm)
    FlatPanel1: TFlatPanel;
    ViewSplit1: TViewSplit;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    barra: TProgressBar;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    GroupBox3: TGroupBox;
    edestino: TDirectoryEdit;
    query: TZQuery;
    litem: TLabel;
    pg_topo: TPageView;
    PageSheet7: TPageSheet;
    PageSheet10: TPageSheet;
    GroupBox1: TGroupBox;
    rproduto: TCheckBox;
    rgrupo: TCheckBox;
    rsubgrupo: TCheckBox;
    rmarca: TCheckBox;
    rfornecedor: TCheckBox;
    rserial: TCheckBox;
    rprodutograde: TCheckBox;
    rcodbarras: TCheckBox;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    Label21: TLabel;
    Label2: TLabel;
    bprodutos: TBitBtn;
    query1: TZQuery;
    PopupMenu1: TPopupMenu;
    retornar1: TMenuItem;
    rcliente: TCheckBox;
    bclientes: TBitBtn;
    Memo1: TMemo;
    Memo2: TMemo;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bprodutosClick(Sender: TObject);
    procedure DateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit2Exit(Sender: TObject);
    procedure retornar1Click(Sender: TObject);
    procedure bclientesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmproduto_exportar: Tfrmproduto_exportar;
  continua : boolean;

implementation

uses modulo, principal;

{$R *.dfm}

procedure Tfrmproduto_exportar.BitBtn2Click(Sender: TObject);
begin
  if bitbtn2.Caption = 'Fechar' then
  begin
    close;
  end
  else
  begin
    continua := false;
    bitbtn2.caption := 'Fechar';
    Groupbox2.Caption := 'Processamento Interrompido!';
    barra.position := 0;
    litem.Caption := '';
    bitbtn1.Visible := true;
    bitbtn2.Left := 200;
  end;
end;

procedure Tfrmproduto_exportar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmproduto_exportar.BitBtn1Click(Sender: TObject);
var arquivo:textfile;
begin

  if pg_topo.ActivePageIndex = 1 then
    begin
      bprodutosClick(frmproduto_exportar);
      bclientesClick(frmproduto_exportar);
    end
  else
  begin
  continua := true;
  bitbtn2.Caption := 'Cancelar';
  bitbtn1.Visible := false;
  bitbtn2.Left := 144;
  if rproduto.Checked then     // produtos
  begin

    GROUPBOX2.Caption := 'Aguarde... Exportando Produtos...';
    Application.ProcessMessages;

    query.Close;
    query.sql.clear;
    query.sql.Add('select * from c000025 order by codigo');
    query.Open;
    barra.Max := QUERY.RecordCount;
    BARRA.Position := 0;
    query.first;

    if barra.max > 0 then
    begin

    assignfile(arquivo,edestino.text+'cp_produto.txt');
    rewrite(arquivo);
    while not query.eof do
    begin
      with query DO
      BEGIN
        if fieldbyname('produto').asstring <> '' then
          begin
            writeln(arquivo,frmprincipal.texto_justifica(fieldbyname('codigo').asstring,6,'0','E')+
                      frmprincipal.texto_justifica(fieldbyname('codbarra').asstring,13,' ','D')+
                      frmprincipal.texto_justifica(fieldbyname('produto').asstring,60,' ','D')+
                      frmprincipal.texto_justifica(fieldbyname('unidade').asstring,2,' ','D')+
                      frmprincipal.texto_justifica(fieldbyname('data_cadastro').asstring,10,'0','E')+
                      frmprincipal.texto_justifica(fieldbyname('codgrupo').asstring,6,'0','E')+
                      frmprincipal.texto_justifica(fieldbyname('codsubgrupo').asstring,6,'0','E')+
                      frmprincipal.texto_justifica(fieldbyname('codfornecedor').asstring,6,'0','E')+
                      frmprincipal.texto_justifica(fieldbyname('codmarca').asstring,6,'0','E')+
                      frmprincipal.texto_justifica(fieldbyname('data_ultimacompra').asstring,10,'0','E')+
                      frmprincipal.texto_justifica(fieldbyname('notafiscal').asstring,6,' ','D')+
                      frmprincipal.texto_justifica(fieldbyname('precocusto').asstring,18,'0','E')+
                      frmprincipal.texto_justifica(fieldbyname('precovenda').asstring,18,'0','E')+
                      frmprincipal.texto_justifica(fieldbyname('data_ultimavenda').asstring,10,'0','E')+
                      frmprincipal.texto_justifica(fieldbyname('estoque').asstring,18,'0','E')+
                      frmprincipal.texto_justifica(fieldbyname('estoqueminimo').asstring,18,'0','E')+
                      frmprincipal.texto_justifica(fieldbyname('codaliquota').asstring,3,' ','D')+
                      frmprincipal.texto_justifica(fieldbyname('localiCaZao').asstring,50,' ','D')+
                      frmprincipal.texto_justifica(fieldbyname('peso').asstring,18,'0','E')+
                      frmprincipal.texto_justifica(fieldbyname('validade').asstring,20,' ','D')+
                      frmprincipal.texto_justifica(fieldbyname('comissao').asstring,18,'0','E')+
                      frmprincipal.texto_justifica(fieldbyname('usa_balanca').asstring,1,'0','D')+
                      frmprincipal.texto_justifica(fieldbyname('usa_serial').asstring,1,'0','D')+
                      frmprincipal.texto_justifica(fieldbyname('usa_grade').asstring,1,'0','D')+
                      frmprincipal.texto_justifica(fieldbyname('codreceita').asstring,6,'0','E')+
                      frmprincipal.texto_justifica(fieldbyname('data_ultimacompra_anterior').asstring,10,'0','E')+
                      frmprincipal.texto_justifica(fieldbyname('notafiscal_anterior').asstring,6,' ','D')+
                      frmprincipal.texto_justifica(fieldbyname('precocusto_anterior').asstring,18,'0','E')+
                      frmprincipal.texto_justifica(fieldbyname('precovenda_anterior').asstring,18,'0','E')+
                      frmprincipal.texto_justifica(fieldbyname('customedio').asstring,18,'0','E')+
                      frmprincipal.texto_justifica(fieldbyname('auto_aplicacao').asstring,60,' ','D')+
                      frmprincipal.texto_justifica(fieldbyname('auto_complemento').asstring,60,' ','D')+
                      frmprincipal.texto_justifica(fieldbyname('data_remarcacao_custo').asstring,10,'0','E')+
                      frmprincipal.texto_justifica(fieldbyname('data_remarcacao_venda').asstring,10,'0','E')+
                      frmprincipal.texto_justifica(fieldbyname('situacao').asstring,1,'0','E')+
                      frmprincipal.texto_justifica(fieldbyname('aliquota').asstring,18,'0','E')+
                      frmprincipal.texto_justifica(fieldbyname('cst').asstring,3,'0','E')+
                      frmprincipal.texto_justifica(fieldbyname('preco_promocao').asstring,18,'0','E')+
                      frmprincipal.texto_justifica(fieldbyname('data_promocao').asstring,10,'0','E')+
                      frmprincipal.texto_justifica(fieldbyname('fim_promocao').asstring,10,'0','E'));

          barra.POSITION := BARRA.POSiTION + 1;
          LITEM.Caption := QUERY.FIELDBYNAME('PRODUTO').ASSTRING;
          Application.ProcessMessages;

        end;
      next;
      end;

      if not continua then break;

    end;
    if not continua then exit;

    GroupBox2.caption := 'Produtos Exportados com Sucesso!'
      end
      else
      begin
        showmessage('Não foi encontrado nenhum registro!');
      end;

    closefile(arquivo);
  end;  // final produtos

  if rcliente.Checked then     // clientes
  begin

    memo1.text := '';
    memo2.text := '';

    GROUPBOX2.Caption := 'Aguarde... Exportando Clientes...';
    Application.ProcessMessages;

    query.Close;
    query.sql.clear;
    query.sql.Add('select * from c000007 order by codigo');
    query.Open;
    barra.Max := QUERY.RecordCount;
    BARRA.Position := 0;
    query.first;

    if barra.max > 0 then
    begin

    //assignfile(arquivo,edestino.text+'cp_cliente.txt');
    //rewrite(arquivo);

    while not query.eof do
    begin
      with query DO
      BEGIN

            if fieldbyname('nome').asstring <> '' then
              begin
                memo1.lines.add(frmprincipal.texto_justifica(fieldbyname('codigo').asstring,6,'0','E')+
                                frmprincipal.texto_justifica(fieldbyname('nome').asstring,80,' ','D')+
                                frmprincipal.texto_justifica(fieldbyname('apelido').asstring,50,' ','D')+
                                frmprincipal.texto_justifica(fieldbyname('endereco').asstring,80,' ','D')+
                                frmprincipal.texto_justifica(fieldbyname('bairro').asstring,30,' ','D')+
                                frmprincipal.texto_justifica(fieldbyname('cidade').asstring,40,' ','D')+
                                frmprincipal.texto_justifica(fieldbyname('uf').asstring,2,' ','D')+
                                frmprincipal.texto_justifica(fieldbyname('cep').asstring,10,' ','D')+
                                frmprincipal.texto_justifica(fieldbyname('complemento').asstring,40,' ','D')+
                                frmprincipal.texto_justifica(fieldbyname('moradia').asstring,10,' ','D')+
                                frmprincipal.texto_justifica(fieldbyname('tipo').asstring,18,'0','E')+
                                frmprincipal.texto_justifica(fieldbyname('situacao').asstring,18,'0','E')+
                                frmprincipal.texto_justifica(fieldbyname('telefone1').asstring,20,' ','D')+
                                frmprincipal.texto_justifica(fieldbyname('telefone2').asstring,20,' ','D')+
                                frmprincipal.texto_justifica(fieldbyname('telefone3').asstring,20,' ','D')+
                                frmprincipal.texto_justifica(fieldbyname('celular').asstring,20,' ','D')+
                                frmprincipal.texto_justifica(fieldbyname('email').asstring,50,' ','D')+
                                frmprincipal.texto_justifica(fieldbyname('rg').asstring,25,' ','D')+
                                frmprincipal.texto_justifica(fieldbyname('cpf').asstring,18,' ','D')+
                                frmprincipal.texto_justifica(fieldbyname('filiacao').asstring,50,' ','D')+
                                frmprincipal.texto_justifica(fieldbyname('estadocivil').asstring,15,' ','D')+
                                frmprincipal.texto_justifica(fieldbyname('conjuge').asstring,60,' ','D')+
                                frmprincipal.texto_justifica(fieldbyname('profissao').asstring,30,' ','D')+
                                frmprincipal.texto_justifica(fieldbyname('empresa').asstring,40,' ','D')+
                                frmprincipal.texto_justifica(fieldbyname('renda').asstring,18,'0','E')+
                                frmprincipal.texto_justifica(fieldbyname('limite').asstring,18,'0','E')+
                                frmprincipal.texto_justifica(fieldbyname('ref1').asstring,50,' ','D')+
                                frmprincipal.texto_justifica(fieldbyname('ref2').asstring,50,' ','D')+
                                frmprincipal.texto_justifica(fieldbyname('codvendedor').asstring,6,'0','E')+
                                frmprincipal.texto_justifica(fieldbyname('data_cadastro').asstring,10,'0','E')+
                                frmprincipal.texto_justifica(fieldbyname('data_ultimacompra').asstring,10,'0','E')+

                                //frmprincipal.texto_justifica(fieldbyname('obs1').asstring,80,' ','D')+
                                //frmprincipal.texto_justifica(fieldbyname('obs2').asstring,80,' ','D')+
                                //frmprincipal.texto_justifica(fieldbyname('obs3').asstring,80,' ','D')+
                                //frmprincipal.texto_justifica(fieldbyname('obs4').asstring,80,' ','D')+
                                //frmprincipal.texto_justifica(fieldbyname('obs5').asstring,80,' ','D')+
                                //frmprincipal.texto_justifica(fieldbyname('obs6').asstring,80,' ','D')+

                                frmprincipal.texto_justifica(fieldbyname('nascimento').asstring,10,'0','E')+
                                frmprincipal.texto_justifica(fieldbyname('codregiao').asstring,6,'0','E')+
                                frmprincipal.texto_justifica(fieldbyname('codconvenio').asstring,10,' ','D')+
                                frmprincipal.texto_justifica(fieldbyname('cod_municipio_ibge').asstring,10,' ','D'));


                if trim(fieldbyname('obs1').asstring+fieldbyname('obs2').asstring+
                        fieldbyname('obs3').asstring+fieldbyname('obs4').asstring+
                        fieldbyname('obs5').asstring+fieldbyname('obs6').asstring) <> '' then
                  memo2.lines.add(frmprincipal.texto_justifica(fieldbyname('codigo').asstring,6,'0','E')+
                                  frmprincipal.texto_justifica(fieldbyname('obs1').asstring,80,' ','D')+
                                  frmprincipal.texto_justifica(fieldbyname('obs2').asstring,80,' ','D')+
                                  frmprincipal.texto_justifica(fieldbyname('obs3').asstring,80,' ','D')+
                                  frmprincipal.texto_justifica(fieldbyname('obs4').asstring,80,' ','D')+
                                  frmprincipal.texto_justifica(fieldbyname('obs5').asstring,80,' ','D')+
                                  frmprincipal.texto_justifica(fieldbyname('obs6').asstring,80,' ','D'));


                barra.POSITION := BARRA.POSiTION + 1;
                LITEM.Caption := QUERY.FIELDBYNAME('nome').ASSTRING;
                Application.ProcessMessages;
          end;
      next;
      end;

      if not continua then break;



    end;
    if not continua then exit;

      Memo1.Lines.SaveToFile(edestino.text+'cp_cliente.txt');
      if memo2.Lines.Count > 0 then
        Memo2.Lines.SaveToFile(edestino.text+'cp_mensagem.txt');

    GroupBox2.caption := 'Clientes Exportados com Sucesso!'
      end
      else
      begin
        showmessage('Não foi encontrado nenhum registro!');
      end;

    //closefile(arquivo);
  end;  // final clientes


  if rserial.Checked then  // seriais
  begin

    GROUPBOX2.Caption := 'Aguarde... Exportando Seriais...';
    Application.ProcessMessages;

    query.Close;
    query.sql.clear;
    query.sql.Add('select * from c000022 order by codigo');
    query.Open;
    barra.Max := QUERY.RecordCount;
    BARRA.Position := 0;
    query.first;

    if barra.max > 0 then
    begin


    assignfile(arquivo,edestino.text+'cp_serial.txt');
    rewrite(arquivo);
    while not query.eof do
    begin
      with query DO
      BEGIN
      writeln(arquivo,frmprincipal.texto_justifica(fieldbyname('codigo').asstring,6,'0','E')+
                      frmprincipal.texto_justifica(fieldbyname('codproduto').asstring,6,'0','E')+
                      frmprincipal.texto_justifica(fieldbyname('serial').asstring,30,' ','D')+
                      frmprincipal.texto_justifica(fieldbyname('estoque').asstring,18,'0','E')+
                      frmprincipal.texto_justifica(fieldbyname('codcliente').asstring,6,'0','E')+
                      frmprincipal.texto_justifica(fieldbyname('precocusto').asstring,18,'0','E')+
                      frmprincipal.texto_justifica(fieldbyname('precovenda').asstring,18,'0','E')+
                      frmprincipal.texto_justifica(fieldbyname('datavenda').asstring,10,' ','D')+
                      frmprincipal.texto_justifica(fieldbyname('situacao').asstring,1,'0','E')+
                      frmprincipal.texto_justifica(fieldbyname('cliente').asstring,80,' ','D')+
                      frmprincipal.texto_justifica(fieldbyname('codnota').asstring,6,'0','E')+
                      frmprincipal.texto_justifica(fieldbyname('coditem').asstring,6,'0','E')+
                      frmprincipal.texto_justifica(fieldbyname('datacompra').asstring,10,'0','E')+
                      frmprincipal.texto_justifica(fieldbyname('numeronota').asstring,6,'0','E')+
                      frmprincipal.texto_justifica(fieldbyname('codfornecedor').asstring,6,'0','E')+
                      frmprincipal.texto_justifica(fieldbyname('codvenda_item').asstring,6,'0','E')+
                      frmprincipal.texto_justifica(fieldbyname('filtro').asstring,1,'0','E')+
                      frmprincipal.texto_justifica(fieldbyname('codvenda').asstring,6,'0','E'));


      barra.POSITION := BARRA.POSiTION + 1;
      LITEM.Caption := QUERY.FIELDBYNAME('serial').ASSTRING;
      Application.ProcessMessages;

      next;
      end;
      if not continua then break;



    end;
    if not continua then exit;
    GroupBox2.caption := 'Seriais Exportados com Sucesso!';
    closefile(arquivo);
    end
    else
    begin
     showmessage('Não foi encontrado nenhum registro de Seriais!');
    end;
  end;

  if rprodutograde.Checked then  // grade dos produtos
  begin

    GROUPBOX2.Caption := 'Aguarde... Exportando grade de produtos...';
    Application.ProcessMessages;

    query.Close;
    query.sql.clear;
    query.sql.Add('select * from c000021 order by codigo');
    query.Open;
    barra.Max := QUERY.RecordCount;
    BARRA.Position := 0;
    query.first;

    if barra.max > 0 then
    begin

    assignfile(arquivo,edestino.text+'cp_prodgrade.txt');
    rewrite(arquivo);
    while not query.eof do
    begin
      with query DO
      BEGIN
      writeln(arquivo,frmprincipal.texto_justifica(fieldbyname('codigo').asstring,6,'0','E')+
                      frmprincipal.texto_justifica(fieldbyname('codproduto').asstring,6,'0','E')+
                      frmprincipal.texto_justifica(fieldbyname('numeracao').asstring,6,' ','D')+
                      frmprincipal.texto_justifica(fieldbyname('codbarra').asstring,13,' ','D')+
                      frmprincipal.texto_justifica(fieldbyname('estoque').asstring,18,'0','E')+
                      frmprincipal.texto_justifica(fieldbyname('cor').asstring,15,' ','D'));


      barra.POSITION := BARRA.POSiTION + 1;
      LITEM.Caption := QUERY.FIELDBYNAME('numeracao').ASSTRING;
      Application.ProcessMessages;

      next;
      end;
      if not continua then break;



    end;
    if not continua then exit;
    GroupBox2.caption := 'Grade de Produtos Exportados com Sucesso!';
    closefile(arquivo);
    end
    else
    begin
      showmessage('Não foi encontrado nenhum registro de grade dos produtos!');
    end;
  end;

  if rgrupo.Checked then  // grupo de produtos
  begin

    GROUPBOX2.Caption := 'Aguarde... Exportando Grupos...';
    Application.ProcessMessages;

    query.Close;
    query.sql.clear;
    query.sql.Add('select * from c000017 order by codigo');
    query.Open;
    barra.Max := QUERY.RecordCount;
    BARRA.Position := 0;
    query.first;

    if barra.max > 0 then
    begin

    assignfile(arquivo,edestino.text+'cp_grupo.txt');
    rewrite(arquivo);
    while not query.eof do
    begin
      with query DO
      BEGIN
      writeln(arquivo,frmprincipal.texto_justifica(fieldbyname('codigo').asstring,6,'0','E')+
                      frmprincipal.texto_justifica(fieldbyname('grupo').asstring,30,' ','D')+
                      frmprincipal.texto_justifica(fieldbyname('altera_preco_abcfarma').asstring,1,' ','D'));


      barra.POSITION := BARRA.POSiTION + 1;
      LITEM.Caption := QUERY.FIELDBYNAME('grupo').ASSTRING;
      Application.ProcessMessages;

      next;
      end;
            if not continua then break;


    end;
     if not continua then exit;
    closefile(arquivo);
    GroupBox2.caption := 'Grupos Exportados com Sucesso!'
    end
    else
    begin
      showmessage('Não foi encontrado nenhum registro de grupo!');
    end;
  end;


  if rsubgrupo.Checked then  // subgrupo de produtos
  begin

    GROUPBOX2.Caption := 'Aguarde... Exportando Subgrupos...';
    Application.ProcessMessages;

    query.Close;
    query.sql.clear;
    query.sql.Add('select * from c000018 order by codigo');
    query.Open;
    barra.Max := QUERY.RecordCount;
    BARRA.Position := 0;
    query.first;

    if barra.max > 0 then
    begin

    assignfile(arquivo,edestino.text+'cp_subgrupo.txt');
    rewrite(arquivo);
    while not query.eof do
    begin
      with query DO
      BEGIN
      writeln(arquivo,frmprincipal.texto_justifica(fieldbyname('codigo').asstring,6,'0','E')+
                      frmprincipal.texto_justifica(fieldbyname('codgrupo').asstring,6,'0','E')+
                      frmprincipal.texto_justifica(fieldbyname('subgrupo').asstring,30,' ','D')+
                      frmprincipal.texto_justifica(fieldbyname('altera_preco_abcfarma').asstring,1,' ','D'));

      barra.POSITION := BARRA.POSiTION + 1;
      LITEM.Caption := QUERY.FIELDBYNAME('subgrupo').ASSTRING;
      Application.ProcessMessages;
      next;
      end;
            if not continua then break;


    end;

    closefile(arquivo);

     if not continua then exit;
    query.Close;
    query.sql.clear;
    query.sql.Add('select * from c000020 order by codigo');
    query.Open;
    barra.Max := QUERY.RecordCount;
    BARRA.Position := 0;

    assignfile(arquivo,edestino.text+'cp_gradesgrupo.txt');
    rewrite(arquivo);
    while not query.eof do
    begin
      with query DO
      BEGIN
      writeln(arquivo,frmprincipal.texto_justifica(fieldbyname('codigo').asstring,6,'0','E')+
                      frmprincipal.texto_justifica(fieldbyname('codsubgrupo').asstring,6,'0','E')+
                      frmprincipal.texto_justifica(fieldbyname('numeracao').asstring,30,' ','D')+
                      frmprincipal.texto_justifica(fieldbyname('ordem').asstring,5,'0','E'));

      barra.POSITION := BARRA.POSiTION + 1;
      LITEM.Caption := QUERY.FIELDBYNAME('numeracao').ASSTRING;
      Application.ProcessMessages;
      next;
      end;
            if not continua then break;


    end;
    if not continua then exit;

    closefile(arquivo);
    GroupBox2.caption := 'Subgrupos/grades Exportados com Sucesso!'
    end
    else
    begin
      showmessage('Não foi encontrado nenhum registro de subgrupo!');
    end;
  end;



  if rcodbarras.Checked then  // codigo de barras
  begin

    GROUPBOX2.Caption := 'Aguarde... Exportando Código de Barras...';
    Application.ProcessMessages;

    query.Close;
    query.sql.clear;
    query.sql.Add('select * from c000055 order by codigo');
    query.Open;
    barra.Max := QUERY.RecordCount;
    BARRA.Position := 0;
    query.first;

    if barra.max > 0 then
    begin
      assignfile(arquivo,edestino.text+'cp_codbarra.txt');
      rewrite(arquivo);
      while not query.eof do
      begin
        with query DO
        BEGIN
          writeln(arquivo,frmprincipal.texto_justifica(fieldbyname('codigo').asstring,6,'0','E')+
                          frmprincipal.texto_justifica(fieldbyname('codproduto').asstring,6,'0','E')+
                        frmprincipal.texto_justifica(fieldbyname('codbarra').asstring,13,' ','D'));


          barra.POSITION := BARRA.POSiTION + 1;
          LITEM.Caption := QUERY.FIELDBYNAME('codbarra').ASSTRING;
          Application.ProcessMessages;

          next;
        end;
              if not continua then break;


      end;
       if not continua then exit;
      closefile(arquivo);
      GroupBox2.caption := 'Código de Barras Exportados com Sucesso!'
    end
    else
    begin
      showmessage('Não foi encontrado nenhum registro de Código de Barras!');
    end;
  end;





  if rmarca.Checked then  // marca
  begin

    GROUPBOX2.Caption := 'Aguarde... Exportando Marcas...';
    Application.ProcessMessages;

    query.Close;
    query.sql.clear;
    query.sql.Add('select * from c000019 order by codigo');
    query.Open;
    barra.Max := QUERY.RecordCount;
    BARRA.Position := 0;
    query.first;

    if barra.max > 0 then
    begin


    assignfile(arquivo,edestino.text+'cp_marca.txt');
    rewrite(arquivo);
    while not query.eof do
    begin
      with query DO
      BEGIN
      writeln(arquivo,frmprincipal.texto_justifica(fieldbyname('codigo').asstring,6,'0','E')+
                      frmprincipal.texto_justifica(fieldbyname('nome').asstring,80,' ','D')+
                      frmprincipal.texto_justifica(fieldbyname('endereco').asstring,80,' ','D')+
                      frmprincipal.texto_justifica(fieldbyname('bairro').asstring,30,' ','D')+
                      frmprincipal.texto_justifica(fieldbyname('cidade').asstring,40,' ','D')+
                      frmprincipal.texto_justifica(fieldbyname('uf').asstring,2,' ','D')+
                      frmprincipal.texto_justifica(fieldbyname('cep').asstring,10,' ','D')+
                      frmprincipal.texto_justifica(fieldbyname('telefone1').asstring,20,' ','E')+
                      frmprincipal.texto_justifica(fieldbyname('telefone2').asstring,20,' ','E')+
                      frmprincipal.texto_justifica(fieldbyname('celular1').asstring,20,' ','E')+
                      frmprincipal.texto_justifica(fieldbyname('celular2').asstring,20,' ','E')+
                      frmprincipal.texto_justifica(fieldbyname('email').asstring,80,' ','D')+
                      frmprincipal.texto_justifica(fieldbyname('homepage').asstring,80,' ','D')+
                      frmprincipal.texto_justifica(fieldbyname('cnpj').asstring,24,' ','D')+
                      frmprincipal.texto_justifica(fieldbyname('ie').asstring,20,' ','D')+
                      frmprincipal.texto_justifica(fieldbyname('data').asstring,10,'0','E'));


      barra.POSITION := BARRA.POSiTION + 1;
      LITEM.Caption := QUERY.FIELDBYNAME('nome').ASSTRING;
      Application.ProcessMessages;

      next;
      end;
            if not continua then break;
      


    end;
      if not continua then exit;
    closefile(arquivo);
    GroupBox2.caption := 'Marcas Exportadas com Sucesso!'
    end
    else
    begin
     showmessage('Não foi encontrado nenhum registro de Marca!');
    end;
  end;



  if rfornecedor.Checked then  // FORNECEDOR
  begin

    GROUPBOX2.Caption := 'Aguarde... Exportando Fornecedores...';
    Application.ProcessMessages;

    query.Close;
    query.sql.clear;
    query.sql.Add('select * from c000009 order by codigo');
    query.Open;
    barra.Max := QUERY.RecordCount;
    BARRA.Position := 0;
    query.first;

    if barra.max > 0 then
    begin


    assignfile(arquivo,edestino.text+'cp_fornecedor.txt');
    rewrite(arquivo);
    while not query.eof do
    begin
      with query DO
      BEGIN
      writeln(arquivo,frmprincipal.texto_justifica(fieldbyname('codigo').asstring,6,'0','E')+
                      frmprincipal.texto_justifica(fieldbyname('nome').asstring,80,' ','D')+
                      frmprincipal.texto_justifica(fieldbyname('fantasia').asstring,50,' ','D')+
                      frmprincipal.texto_justifica(fieldbyname('endereco').asstring,80,' ','D')+
                      frmprincipal.texto_justifica(fieldbyname('bairro').asstring,30,' ','D')+
                      frmprincipal.texto_justifica(fieldbyname('cidade').asstring,40,' ','D')+
                      frmprincipal.texto_justifica(fieldbyname('uf').asstring,2,' ','D')+
                      frmprincipal.texto_justifica(fieldbyname('cep').asstring,10,' ','D')+
                      frmprincipal.texto_justifica(fieldbyname('telefone1').asstring,20,' ','E')+
                      frmprincipal.texto_justifica(fieldbyname('telefone2').asstring,20,' ','E')+
                      frmprincipal.texto_justifica(fieldbyname('contato1').asstring,40,' ','E')+
                      frmprincipal.texto_justifica(fieldbyname('contato2').asstring,40,' ','E')+
                      frmprincipal.texto_justifica(fieldbyname('fax').asstring,20,' ','E')+
                      frmprincipal.texto_justifica(fieldbyname('celular1').asstring,20,' ','E')+
                      frmprincipal.texto_justifica(fieldbyname('celular2').asstring,20,' ','E')+
                      frmprincipal.texto_justifica(fieldbyname('email').asstring,80,' ','D')+
                      frmprincipal.texto_justifica(fieldbyname('homepage').asstring,80,' ','D')+
                      frmprincipal.texto_justifica(fieldbyname('cnpj').asstring,24,' ','D')+
                      frmprincipal.texto_justifica(fieldbyname('ie').asstring,20,' ','D')+
                      frmprincipal.texto_justifica(fieldbyname('banco').asstring,30,' ','D')+
                      frmprincipal.texto_justifica(fieldbyname('agencia').asstring,15,' ','D')+
                      frmprincipal.texto_justifica(fieldbyname('conta').asstring,20,' ','D')+
                      frmprincipal.texto_justifica(fieldbyname('obs1').asstring,80,' ','D')+
                      frmprincipal.texto_justifica(fieldbyname('obs2').asstring,80,' ','D')+
                      frmprincipal.texto_justifica(fieldbyname('obs3').asstring,80,' ','D')+
                      frmprincipal.texto_justifica(fieldbyname('data').asstring,10,'0','E')+
                      frmprincipal.texto_justifica(fieldbyname('tipo').asstring,1,'0','D')+
                      frmprincipal.texto_justifica(fieldbyname('IM').asstring,25,' ','D')+
                      frmprincipal.texto_justifica(fieldbyname('CNAE').asstring,10,' ','D')+
                      frmprincipal.texto_justifica(fieldbyname('COD_MUNICIPIO_IBGE').asstring,10,' ','D')+
                      frmprincipal.texto_justifica(fieldbyname('IBGE').asstring,5,' ','D')+
                      frmprincipal.texto_justifica(fieldbyname('assistencia_tecnica').asstring,1,'0','D')+
                      frmprincipal.texto_justifica(fieldbyname('COMPLEMENTO').asstring,40,' ','D'));



      barra.POSITION := BARRA.POSiTION + 1;
      LITEM.Caption := QUERY.FIELDBYNAME('nome').ASSTRING;
      Application.ProcessMessages;

      next;
      end;
            if not continua then break;


    end;
    if not continua then exit;
    closefile(arquivo);
    GroupBox2.caption := 'Fornecedores Exportados com Sucesso!'
    end
    else
    begin
     showmessage('Não foi encontrado nenhum registro de Fornecedor!');
    end;
  end;








  litem.caption := '';


  barra.Position := 0;
  GroupBox2.caption := 'Operação Concluida com Sucesso!';

  bitbtn2.Caption := 'Fechar';
  bitbtn1.Visible := true;
  bitbtn2.Left := 200;

  end;

end;

procedure Tfrmproduto_exportar.FormShow(Sender: TObject);
begin
  DateEdit1.Date := Date;
  DateEdit2.Date := Date;
end;

procedure Tfrmproduto_exportar.bprodutosClick(Sender: TObject);
var
  arquivo:textfile;
begin
  continua := true;
  bitbtn2.Caption := 'Cancelar';
  bitbtn1.Visible := false;
  bitbtn2.Left := 144;

  GROUPBOX2.Caption := 'Aguarde... Exportando Produtos...';
  Application.ProcessMessages;

  query1.Close;
  query1.sql.clear;
  query1.sql.Add('select tiporegistro,codregistro from c000058');
  query1.sql.Add('where tiporegistro = 1 and data >= :dati and data <= :datf');
  query1.Params.ParamByName('dati').AsDateTime := DateEdit1.Date;
  query1.Params.ParamByName('datf').AsDateTime := StrToDateTime(DateEdit2.Text+' 23.59.59.9999');

  query1.sql.Add('group by tiporegistro,codregistro');
  query1.sql.Add('order by codregistro');
  query1.Open;

  barra.Max := query1.RecordCount;
  BARRA.Position := 0;
  query1.first;

  if barra.max > 0 then
    begin

      assignfile(arquivo,edestino.text+'cp_produto.txt');
      rewrite(arquivo);
      while not query1.eof do
      begin


        query.Close;
        query.sql.clear;
        query.sql.Add('select * from c000025');
        query.sql.Add('where codigo = '''+ query1.fieldbyname('codregistro').AsString+'''');
        query.Open;

        with query DO
          BEGIN

            if fieldbyname('produto').asstring <> '' then
              begin
                writeln(arquivo,frmprincipal.texto_justifica(fieldbyname('codigo').asstring,6,'0','E')+
                            frmprincipal.texto_justifica(fieldbyname('codbarra').asstring,13,' ','D')+
                            frmprincipal.texto_justifica(fieldbyname('produto').asstring,60,' ','D')+
                            frmprincipal.texto_justifica(fieldbyname('unidade').asstring,2,' ','D')+
                            frmprincipal.texto_justifica(fieldbyname('data_cadastro').asstring,10,'0','E')+
                            frmprincipal.texto_justifica(fieldbyname('codgrupo').asstring,6,'0','E')+
                            frmprincipal.texto_justifica(fieldbyname('codsubgrupo').asstring,6,'0','E')+
                            frmprincipal.texto_justifica(fieldbyname('codfornecedor').asstring,6,'0','E')+
                            frmprincipal.texto_justifica(fieldbyname('codmarca').asstring,6,'0','E')+
                            frmprincipal.texto_justifica(fieldbyname('data_ultimacompra').asstring,10,'0','E')+
                            frmprincipal.texto_justifica(fieldbyname('notafiscal').asstring,6,' ','D')+
                            frmprincipal.texto_justifica(fieldbyname('precocusto').asstring,18,'0','E')+
                            frmprincipal.texto_justifica(fieldbyname('precovenda').asstring,18,'0','E')+
                            frmprincipal.texto_justifica(fieldbyname('data_ultimavenda').asstring,10,'0','E')+
                            frmprincipal.texto_justifica(fieldbyname('estoque').asstring,18,'0','E')+
                            frmprincipal.texto_justifica(fieldbyname('estoqueminimo').asstring,18,'0','E')+
                            frmprincipal.texto_justifica(fieldbyname('codaliquota').asstring,3,' ','D')+
                            frmprincipal.texto_justifica(fieldbyname('localiCaZao').asstring,50,' ','D')+
                            frmprincipal.texto_justifica(fieldbyname('peso').asstring,18,'0','E')+
                            frmprincipal.texto_justifica(fieldbyname('validade').asstring,20,' ','D')+
                            frmprincipal.texto_justifica(fieldbyname('comissao').asstring,18,'0','E')+
                            frmprincipal.texto_justifica(fieldbyname('usa_balanca').asstring,1,'0','D')+
                            frmprincipal.texto_justifica(fieldbyname('usa_serial').asstring,1,'0','D')+
                            frmprincipal.texto_justifica(fieldbyname('usa_grade').asstring,1,'0','D')+
                            frmprincipal.texto_justifica(fieldbyname('codreceita').asstring,6,'0','E')+
                            frmprincipal.texto_justifica(fieldbyname('data_ultimacompra_anterior').asstring,10,'0','E')+
                            frmprincipal.texto_justifica(fieldbyname('notafiscal_anterior').asstring,6,' ','D')+
                            frmprincipal.texto_justifica(fieldbyname('precocusto_anterior').asstring,18,'0','E')+
                            frmprincipal.texto_justifica(fieldbyname('precovenda_anterior').asstring,18,'0','E')+
                            frmprincipal.texto_justifica(fieldbyname('customedio').asstring,18,'0','E')+
                            frmprincipal.texto_justifica(fieldbyname('auto_aplicacao').asstring,60,' ','D')+
                            frmprincipal.texto_justifica(fieldbyname('auto_complemento').asstring,60,' ','D')+
                            frmprincipal.texto_justifica(fieldbyname('data_remarcacao_custo').asstring,10,'0','E')+
                            frmprincipal.texto_justifica(fieldbyname('data_remarcacao_venda').asstring,10,'0','E')+
                            frmprincipal.texto_justifica(fieldbyname('situacao').asstring,1,'0','E')+
                            frmprincipal.texto_justifica(fieldbyname('aliquota').asstring,18,'0','E')+
                            frmprincipal.texto_justifica(fieldbyname('cst').asstring,3,'0','E')+
                            frmprincipal.texto_justifica(fieldbyname('preco_promocao').asstring,18,'0','E')+
                            frmprincipal.texto_justifica(fieldbyname('data_promocao').asstring,10,'0','E')+
                            frmprincipal.texto_justifica(fieldbyname('fim_promocao').asstring,10,'0','E'));

                barra.POSITION := BARRA.POSiTION + 1;
                LITEM.Caption := QUERY.FIELDBYNAME('PRODUTO').ASSTRING;
                Application.ProcessMessages;
              end;
            next;
          end;

        if not continua then break;

        query1.Next;

      end;
      if not continua then exit;
      GroupBox2.caption := 'Produtos Exportados com Sucesso!';
      closefile(arquivo);
    end
  else
    begin
        showmessage('Não foi encontrado nenhum registro de Produtos!');
    end;


  litem.caption := '';


  barra.Position := 0;
  {
  GroupBox2.caption := 'Operação Concluida com Sucesso!';

  bitbtn2.Caption := 'Fechar';
  bitbtn1.Visible := true;
  bitbtn2.Left := 200;
  }
end;

procedure Tfrmproduto_exportar.DateEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    begin
      perform(wm_nextdlgctl,0,0);
    end;
end;

procedure Tfrmproduto_exportar.DateEdit2Exit(Sender: TObject);
begin
  BitBtn1.SetFocus;
end;

procedure Tfrmproduto_exportar.retornar1Click(Sender: TObject);
begin
  BitBtn2Click(frmproduto_exportar);
end;

procedure Tfrmproduto_exportar.bclientesClick(Sender: TObject);
var
  arquivo:textfile;
  spreco_promocao, sdata_ini, sdata_fim : string;
begin
  continua := true;
  bitbtn2.Caption := 'Cancelar';
  bitbtn1.Visible := false;
  bitbtn2.Left := 144;

  GROUPBOX2.Caption := 'Aguarde... Exportando Clientes...';
  Application.ProcessMessages;

  query1.Close;
  query1.sql.clear;
  query1.sql.Add('select tiporegistro,codregistro from c000058');
  query1.sql.Add('where tiporegistro = 4 and data >= :dati and data <= :datf');
  query1.Params.ParamByName('dati').AsDateTime := DateEdit1.Date;
  query1.Params.ParamByName('datf').AsDateTime := StrToDateTime(DateEdit2.Text+' 23.59.59.9999');

  query1.sql.Add('group by tiporegistro,codregistro');
  query1.sql.Add('order by codregistro');
  query1.Open;

  barra.Max := query1.RecordCount;
  BARRA.Position := 0;
  query1.first;

  memo1.text := '';
  memo2.text := '';

  if barra.max > 0 then
    begin

      //assignfile(arquivo,edestino.text+'cp_cliente.txt');
      //rewrite(arquivo);
      while not query1.eof do
      begin

        query.Close;
        query.sql.clear;
        query.sql.Add('select * from c000007');
        query.sql.Add('where codigo = '''+ query1.fieldbyname('codregistro').AsString+'''');
        query.Open;

        with query DO
          BEGIN
            if fieldbyname('nome').asstring <> '' then
              begin
                memo1.lines.add(frmprincipal.texto_justifica(fieldbyname('codigo').asstring,6,'0','E')+
                                frmprincipal.texto_justifica(fieldbyname('nome').asstring,80,' ','D')+
                                frmprincipal.texto_justifica(fieldbyname('apelido').asstring,50,' ','D')+
                                frmprincipal.texto_justifica(fieldbyname('endereco').asstring,80,' ','D')+
                                frmprincipal.texto_justifica(fieldbyname('bairro').asstring,30,' ','D')+
                                frmprincipal.texto_justifica(fieldbyname('cidade').asstring,40,' ','D')+
                                frmprincipal.texto_justifica(fieldbyname('uf').asstring,2,' ','D')+
                                frmprincipal.texto_justifica(fieldbyname('cep').asstring,10,' ','D')+
                                frmprincipal.texto_justifica(fieldbyname('complemento').asstring,40,' ','D')+
                                frmprincipal.texto_justifica(fieldbyname('moradia').asstring,10,' ','D')+
                                frmprincipal.texto_justifica(fieldbyname('tipo').asstring,18,'0','E')+
                                frmprincipal.texto_justifica(fieldbyname('situacao').asstring,18,'0','E')+
                                frmprincipal.texto_justifica(fieldbyname('telefone1').asstring,20,' ','D')+
                                frmprincipal.texto_justifica(fieldbyname('telefone2').asstring,20,' ','D')+
                                frmprincipal.texto_justifica(fieldbyname('telefone3').asstring,20,' ','D')+
                                frmprincipal.texto_justifica(fieldbyname('celular').asstring,20,' ','D')+
                                frmprincipal.texto_justifica(fieldbyname('email').asstring,50,' ','D')+
                                frmprincipal.texto_justifica(fieldbyname('rg').asstring,25,' ','D')+
                                frmprincipal.texto_justifica(fieldbyname('cpf').asstring,18,' ','D')+
                                frmprincipal.texto_justifica(fieldbyname('filiacao').asstring,50,' ','D')+
                                frmprincipal.texto_justifica(fieldbyname('estadocivil').asstring,15,' ','D')+
                                frmprincipal.texto_justifica(fieldbyname('conjuge').asstring,60,' ','D')+
                                frmprincipal.texto_justifica(fieldbyname('profissao').asstring,30,' ','D')+
                                frmprincipal.texto_justifica(fieldbyname('empresa').asstring,40,' ','D')+
                                frmprincipal.texto_justifica(fieldbyname('renda').asstring,18,'0','E')+
                                frmprincipal.texto_justifica(fieldbyname('limite').asstring,18,'0','E')+
                                frmprincipal.texto_justifica(fieldbyname('ref1').asstring,50,' ','D')+
                                frmprincipal.texto_justifica(fieldbyname('ref2').asstring,50,' ','D')+
                                frmprincipal.texto_justifica(fieldbyname('codvendedor').asstring,6,'0','E')+
                                frmprincipal.texto_justifica(fieldbyname('data_cadastro').asstring,10,'0','E')+
                                frmprincipal.texto_justifica(fieldbyname('data_ultimacompra').asstring,10,'0','E')+

                                //frmprincipal.texto_justifica(fieldbyname('obs1').asstring,80,' ','D')+
                                //frmprincipal.texto_justifica(fieldbyname('obs2').asstring,80,' ','D')+
                                //frmprincipal.texto_justifica(fieldbyname('obs3').asstring,80,' ','D')+
                                //frmprincipal.texto_justifica(fieldbyname('obs4').asstring,80,' ','D')+
                                //frmprincipal.texto_justifica(fieldbyname('obs5').asstring,80,' ','D')+
                                //frmprincipal.texto_justifica(fieldbyname('obs6').asstring,80,' ','D')+

                                frmprincipal.texto_justifica(fieldbyname('nascimento').asstring,10,'0','E')+
                                frmprincipal.texto_justifica(fieldbyname('codregiao').asstring,6,'0','E')+
                                frmprincipal.texto_justifica(fieldbyname('codconvenio').asstring,10,' ','D')+
                                frmprincipal.texto_justifica(fieldbyname('cod_municipio_ibge').asstring,10,' ','D'));


                if trim(fieldbyname('obs1').asstring+fieldbyname('obs2').asstring+
                        fieldbyname('obs3').asstring+fieldbyname('obs4').asstring+
                        fieldbyname('obs5').asstring+fieldbyname('obs6').asstring) <> '' then
                  memo2.lines.add(frmprincipal.texto_justifica(fieldbyname('codigo').asstring,6,'0','E')+
                                  frmprincipal.texto_justifica(fieldbyname('obs1').asstring,80,' ','D')+
                                  frmprincipal.texto_justifica(fieldbyname('obs2').asstring,80,' ','D')+
                                  frmprincipal.texto_justifica(fieldbyname('obs3').asstring,80,' ','D')+
                                  frmprincipal.texto_justifica(fieldbyname('obs4').asstring,80,' ','D')+
                                  frmprincipal.texto_justifica(fieldbyname('obs5').asstring,80,' ','D')+
                                  frmprincipal.texto_justifica(fieldbyname('obs6').asstring,80,' ','D'));

              end;

            barra.POSITION := BARRA.POSiTION + 1;
            LITEM.Caption := QUERY.FIELDBYNAME('NOME').ASSTRING;
            Application.ProcessMessages;

            next;
          end;

        if not continua then break;

        query1.Next;

      end;
      if not continua then exit;

      Memo1.Lines.SaveToFile(edestino.text+'cp_cliente.txt');
      if memo2.Lines.Count > 0 then
        Memo2.Lines.SaveToFile(edestino.text+'cp_mensagem.txt');

      GroupBox2.caption := 'Clientes Exportados com Sucesso!';
      //closefile(arquivo);
    end
  else
    begin
        showmessage('Não foi encontrado nenhum registro de Clientes!');
    end;

  litem.caption := '';

  barra.Position := 0;
  GroupBox2.caption := 'Operação Concluida com Sucesso!';

  bitbtn2.Caption := 'Fechar';
  bitbtn1.Visible := true;
  bitbtn2.Left := 200;
  bitbtn2.setfocus;

end;

end.


