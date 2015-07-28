unit lista_caixa2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, rxtooledit, Collection, TFlatPanelUnit,
  Buttons, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, frxClass,
  frxDBSet, frxDesgn, Menus, Grids, DBGrids, AdvGlowButton;

type
  Tfrmlista_caixa2 = class(TForm)
    Label1: TLabel;
    combo_relatorio: TComboBox;
    Bevel1: TBevel;
    Label2: TLabel;
    combo_caixa: TComboBox;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    Label10: TLabel;
    Label11: TLabel;
    Bevel2: TBevel;
    fxcaixa: TfrxReport;
    fscaixa: TfrxDBDataset;
    frxDesigner1: TfrxDesigner;
    PopupMenu1: TPopupMenu;
    Fechar1: TMenuItem;
    qrcaixa: TZQuery;
    Label3: TLabel;
    gfluxo: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox3: TCheckBox;
    lfluxo: TLabel;
    Qrsoma: TZQuery;
    qrresumo: TZQuery;
    qrcaixaCODIGO: TStringField;
    qrcaixaCODCAIXA: TStringField;
    qrcaixaCODOPERADOR: TStringField;
    qrcaixaDATA: TDateTimeField;
    qrcaixaSAIDA: TFloatField;
    qrcaixaENTRADA: TFloatField;
    qrcaixaCODCONTA: TStringField;
    qrcaixaHISTORICO: TStringField;
    qrcaixaMOVIMENTO: TIntegerField;
    qrcaixaVALOR: TFloatField;
    qrcaixadescricao_movimento: TStringField;
    Bevel3: TBevel;
    Panel1: TPanel;
    bimprimir: TAdvGlowButton;
    bitbtn1: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    lconta: TLabel;
    combo_conta: TComboBox;
    procedure combo_caixaChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure DateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure bimprimirClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure combo_relatorioChange(Sender: TObject);
    procedure qrcaixaCalcFields(DataSet: TDataSet);
    procedure combo_contaChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmlista_caixa2: Tfrmlista_caixa2;
    juro_taxa, juro_multa, total_original, total_juros : real;
      juro_carencia : integer;
         data_caixa : tdatetime;  

implementation

uses modulo, loc_caixa, xloc_cliente, xloc_funcionario, principal,
  xloc_fornecedor, xloc_conta, loc_conta;

{$R *.dfm}

procedure Tfrmlista_caixa2.combo_caixaChange(Sender: TObject);
begin
  IF combo_caixa.Text = 'SELECIONAR' THEN
  BEGIN
    FRMMODULO.qrcaixa_operador.OPEN;

    frmloc_caixa := tfrmloc_caixa.create(self);
    frmloc_caixa.showmodal;


    combo_caixa.Items.Add(frmmodulo.qrcaixa_operador.fieldbyname('CODIGO').asstring+' '+frmmodulo.qrcaixa_operador.fieldbyname('nome').asstring);
    combo_caixa.ItemIndex := combo_caixa.Items.Count - 1;
  END;
end;

procedure Tfrmlista_caixa2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmlista_caixa2.FormShow(Sender: TObject);
BEGIN

  FRMMODULO.QRCAIXA_OPERADOR.OPEN;
  FRMMODULO.QRCAIXA_OPERADOR.LOCATE('CODIGO','000099',[LOCASEINSENSITIVE]);
  data_caixa := frmmodulo.qrcaixa_operador.fieldbyname('data').asdatetime;

  combo_relatorio.ItemIndex := 0;
  combo_CAIXA.ItemIndex := 0;
  dateedit1.Date := data_caixa;
  dateedit2.date := data_caixa;

{
RELAÇÃO AGRUPADA POR FORNECEDOR
RELAÇÃO AGRUPADA POR CONTA
RESUMO POR FORNECEDOR
BALANCETE FINANCEIRO
}

end;

procedure Tfrmlista_caixa2.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmlista_caixa2.DateEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmlista_caixa2.DateEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then bimprimir.SetFocus;
end;

procedure Tfrmlista_caixa2.bimprimirClick(Sender: TObject);
var CAIXA, conta: string;
begin
  frmmodulo.qrrelatorio.open;
  frmmodulo.qrrelatorio.edit;

  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA1').ASSTRING := '';
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA2').ASSTRING := '';
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA3').ASSTRING := '';
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA4').ASSTRING := '';
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA5').ASSTRING := '';
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA6').ASSTRING := '';
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA7').ASSTRING := '';

  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA2').ASSTRING := 'PERÍODO : '+DATEEDIT1.TEXT+' A '+DATEEDIT2.TEXT;


  if combo_CAIXA.Text = 'TODOS' then CAIXA := '' else begin  CAIXA := ' and codoperador = '''+copy(combo_CAIXA.text,1,6)+''''; frmmodulo.qrrelatorio.fieldbyname('LINHA3').asstring := 'CAIXA: '+COMBO_CAIXA.TEXT; END;
  if combo_conta.Text = 'TODAS' then conta := '' else begin  conta := ' and codconta = '''+copy(combo_conta.text,1,6)+''''; frmmodulo.qrrelatorio.fieldbyname('LINHA3').asstring := frmmodulo.qrrelatorio.fieldbyname('LINHA3').asstring+ '   Conta: '+combo_conta.text; END;


         qrsoma.Close;
         qrsoma.SQL.clear;
         qrsoma.sql.add('select sum(entrada) total_entrada, sum(saida) total_saida, '+ // total_entrada e total_saida
                        '(select sum(VALOR) valor from c000044 where movimento = 03 and data >= :datai and data <= :dataf '+caixa+conta+'), '+ // sum
                        '(select sum(VALOR) valor_1 from c000044 where movimento = 04 and data >= :datai and data <= :dataf '+caixa+conta+'), '+ // sum_1
                        '(select sum(VALOR) valor_2 from c000044 where movimento = 05 and data >= :datai and data <= :dataf '+caixa+conta+'), '+ // sum_2
                        '(select sum(VALOR) valor_3 from c000044 where movimento = 06 and data >= :datai and data <= :dataf '+caixa+conta+'), '+ // sum_3
                        '(select sum(VALOR) valor_4 from c000044 where movimento = 07 and data >= :datai and data <= :dataf '+caixa+conta+'), '+ // sum_4
                        '(select sum(VALOR) valor_5 from c000044 where movimento = 08 and data >= :datai and data <= :dataf '+caixa+conta+'), '+ // sum_5
                        '(select sum(VALOR) valor_6 from c000044 where movimento = 09 and data >= :datai and data <= :dataf '+caixa+conta+'), '+ // 6 rec dinheiro
                        '(select sum(VALOR) valor_7 from c000044 where movimento = 10 and data >= :datai and data <= :dataf '+caixa+conta+'), '+ // 7 rec che av
                        '(select sum(VALOR) valor_8 from c000044 where movimento = 11 and data >= :datai and data <= :dataf '+caixa+conta+'), '+ // 8 rec che ap
                        '(select sum(VALOR) valor_9 from c000044 where movimento = 12 and data >= :datai and data <= :dataf '+caixa+conta+'), '+ // 9 rec cartao
                        '(select sum(VALOR) valor_10 from c000044 where movimento = 13 and data >= :datai and data <= :dataf '+caixa+conta+'), '+ // 10 rec juros
                        '(select sum(VALOR) valor_11 from c000044 where movimento = 14 and data >= :datai and data <= :dataf '+caixa+conta+'), '+ // 11 rec desconto
                        '(select sum(VALOR) valor_12 from c000044 where movimento = 15 and data >= :datai and data <= :dataf '+caixa+conta+'), '+ // 12 rec boleto
                        '(select sum(VALOR) valor_13 from c000044 where movimento = 25 and data >= :datai and data <= :dataf '+caixa+conta+'), '+ // 13 pagar - caixa
                        '(select sum(VALOR) valor_14 from c000044 where movimento = 26 and data >= :datai and data <= :dataf '+caixa+conta+'), '+ // 14 pagar - banco
                        '(select sum(VALOR) valor_15 from c000044 where movimento = 27 and data >= :datai and data <= :dataf '+caixa+conta+'), '+ // 15 pagar - terceiro
                        '(select sum(VALOR) valor_16 from c000044 where movimento = 2  and data >= :datai and data <= :dataf '+caixa+conta+'), '+ // 16 LANCTO SAIDA
                        '(select sum(VALOR) valor_17 from c000044 where movimento = 17 and data >= :datai and data <= :dataf '+caixa+conta+'), '+ // 17 OUTRAS SAIDAS
                        // servicos
                        '(select sum(VALOR) valor_18 from c000044 where movimento = 18 and data >= :datai and data <= :dataf '+caixa+conta+'), '+ // sum_18  - dinheiro
                        '(select sum(VALOR) valor_19 from c000044 where movimento = 19 and data >= :datai and data <= :dataf '+caixa+conta+'), '+ // sum_19  - cree
                        '(select sum(VALOR) valor_20 from c000044 where movimento = 20 and data >= :datai and data <= :dataf '+caixa+conta+'), '+ // column_20  - cv
                        '(select sum(VALOR) valor_21 from c000044 where movimento = 21 and data >= :datai and data <= :dataf '+caixa+conta+'), '+ // column_21  - cp
                        '(select sum(VALOR) valor_22 from c000044 where movimento = 22 and data >= :datai and data <= :dataf '+caixa+conta+'), '+ // column_22  - cc
                        '(select sum(VALOR) valor_23 from c000044 where movimento = 23 and data >= :datai and data <= :dataf '+caixa+conta+'), '+ // column_23  - cd
                        '(select sum(VALOR) valor_24 from c000044 where movimento = 40 and data >= :datai and data <= :dataf '+caixa+conta+'), '+ // 24 convenios
                        '(select sum(VALOR) valor_25 from c000044 where movimento = 42 and data >= :datai and data <= :dataf '+caixa+conta+') '+ // 24 convenios








                        'from c000044 where  data >= :datai and data <= :dataf '+caixa+conta);
         qrsoma.Params.ParamByName('datai').asdatetime := dateedit1.date;
         qrsoma.Params.ParamByName('dataf').asdatetime := dateedit2.date;
         qrsoma.open;


         frmmodulo.qrrelatorio.FieldByName('valor1').Asfloat := qrsoma.fieldbyname('total_entrada').asfloat;
         frmmodulo.qrrelatorio.FieldByName('valor2').Asfloat := qrsoma.fieldbyname('total_saida').asfloat;
         frmmodulo.qrrelatorio.FieldByName('valor3').Asfloat := qrsoma.fieldbyname('total_entrada').asfloat - qrsoma.fieldbyname('total_saida').asfloat;

         frmmodulo.qrrelatorio.FieldByName('valor4').Asfloat   := qrsoma.fieldbyname('valor').asfloat; // dinheiro
         frmmodulo.qrrelatorio.FieldByName('valor5').Asfloat   := qrsoma.fieldbyname('valor_1').asfloat; // crediario
         frmmodulo.qrrelatorio.FieldByName('valor6').Asfloat   := qrsoma.fieldbyname('valor_2').asfloat; // cheque a vista
         frmmodulo.qrrelatorio.FieldByName('valor7').Asfloat   := qrsoma.fieldbyname('valor_3').asfloat; // cheque a prazo
         frmmodulo.qrrelatorio.FieldByName('valor8').Asfloat   := qrsoma.fieldbyname('valor_4').asfloat; // cartao cred
         frmmodulo.qrrelatorio.FieldByName('valor9').Asfloat   := qrsoma.fieldbyname('valor_5').asfloat; // cartao deb

         frmmodulo.qrrelatorio.FieldByName('valor10').Asfloat := qrsoma.fieldbyname('valor').asfloat +
                                                                 qrsoma.fieldbyname('valor_1').asfloat +
                                                                 qrsoma.fieldbyname('valor_2').asfloat +
                                                                 qrsoma.fieldbyname('valor_3').asfloat +
                                                                 qrsoma.fieldbyname('valor_4').asfloat +
                                                                 qrsoma.fieldbyname('valor_5').asfloat +
                                                                 qrsoma.fieldbyname('valor_24').asfloat;





      frmmodulo.qrrelatorio.FieldByName('valor11').Asfloat   := qrsoma.fieldbyname('valor_6').asfloat; // DINHEIRO
      frmmodulo.qrrelatorio.FieldByName('valor12').Asfloat   := qrsoma.fieldbyname('valor_7').asfloat; // CHEQUE AV
      frmmodulo.qrrelatorio.FieldByName('valor13').Asfloat   := qrsoma.fieldbyname('valor_8').asfloat; // CHEQUE AP
      frmmodulo.qrrelatorio.FieldByName('valor14').Asfloat     := qrsoma.fieldbyname('valor_9').asfloat; // CARTAO

      frmmodulo.qrrelatorio.FieldByName('valor15').Asfloat      := qrsoma.fieldbyname('valor_10').asfloat; // JUROS
      frmmodulo.qrrelatorio.FieldByName('valor16').Asfloat   := qrsoma.fieldbyname('valor_11').asfloat; // DESCONTO
      frmmodulo.qrrelatorio.FieldByName('valor17').Asfloat     := qrsoma.fieldbyname('valor_12').asfloat; //BOLETO

      frmmodulo.qrrelatorio.FieldByName('valor18').Asfloat := qrsoma.fieldbyname('valor_6').asfloat + // TOTAL
                                                                 qrsoma.fieldbyname('valor_7').asfloat +
                                                                 qrsoma.fieldbyname('valor_8').asfloat +
                                                                 qrsoma.fieldbyname('valor_9').asfloat +
                                                                 qrsoma.fieldbyname('valor_12').asfloat ;

      frmmodulo.qrrelatorio.FieldByName('valor19').Asfloat   := qrsoma.fieldbyname('valor_13').asfloat;
      frmmodulo.qrrelatorio.FieldByName('valor20').Asfloat   := qrsoma.fieldbyname('valor_14').asfloat;
      frmmodulo.qrrelatorio.FieldByName('valor21').Asfloat   := qrsoma.fieldbyname('valor_15').asfloat;

      frmmodulo.qrrelatorio.FieldByName('valor22').Asfloat   := qrsoma.fieldbyname('valor_13').asfloat +
                                                                qrsoma.fieldbyname('valor_14').asfloat +
                                                                qrsoma.fieldbyname('valor_15').asfloat;

      frmmodulo.qrrelatorio.FieldByName('valor23').Asfloat   := qrsoma.fieldbyname('valor_16').asfloat;
      frmmodulo.qrrelatorio.FieldByName('valor24').Asfloat   := qrsoma.fieldbyname('valor_17').asfloat;


      frmmodulo.qrrelatorio.FieldByName('valor25').Asfloat   := qrsoma.fieldbyname('valor_16').asfloat +
                                                                qrsoma.fieldbyname('valor_17').asfloat ;


      frmmodulo.qrrelatorio.FieldByName('valor26').Asfloat   := qrsoma.fieldbyname('valor_18').asfloat; // DINHEIRO
      frmmodulo.qrrelatorio.FieldByName('valor31').Asfloat   := qrsoma.fieldbyname('valor_19').asfloat; // crediario
      frmmodulo.qrrelatorio.FieldByName('valor27').Asfloat   := qrsoma.fieldbyname('valor_20').asfloat; // cheque av
      frmmodulo.qrrelatorio.FieldByName('valor28').Asfloat   := qrsoma.fieldbyname('valor_21').asfloat; // cheque ap
      frmmodulo.qrrelatorio.FieldByName('valor29').Asfloat   := qrsoma.fieldbyname('valor_22').asfloat; // cartao cred
      frmmodulo.qrrelatorio.FieldByName('valor30').Asfloat   := qrsoma.fieldbyname('valor_23').asfloat; // cartao deb

      frmmodulo.qrrelatorio.FieldByName('valor32').Asfloat   := qrsoma.fieldbyname('valor_18').asfloat +
                                                                qrsoma.fieldbyname('valor_19').asfloat +
                                                                qrsoma.fieldbyname('valor_20').asfloat +
                                                                qrsoma.fieldbyname('valor_21').asfloat +
                                                                qrsoma.fieldbyname('valor_22').asfloat +
                                                                qrsoma.fieldbyname('valor_23').asfloat ;


      frmmodulo.qrrelatorio.FieldByName('valor35').Asfloat   := qrsoma.fieldbyname('valor_24').asfloat;
      frmmodulo.qrrelatorio.FieldByName('valor33').Asfloat   := qrsoma.fieldbyname('valor_25').asfloat;





  if combo_relatorio.Text = 'FOLHA DE CAIXA' then
  begin

      qrcaixa.close;
      qrcaixa.SQL.Clear;
      qrcaixa.sql.add('select * from c000044 where data >= :datai and data <= :dataf '+caixa+conta+' order by codigo');
      qrcaixa.Params.ParamByName('datai').asdatetime := dateedit1.date;
      qrcaixa.Params.ParamByName('dataf').asdatetime := dateedit2.date;
      qrcaixa.open;


    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'FOLHA DE CAIXA';
    fxcAIXA.LoadFromFile('\DATASAC\server\rel\f000071.fr3');
    fxcAIXA.ShowReport;
  end;

  if combo_relatorio.Text = 'RESUMO DA FOLHA DO CAIXA' then
  begin
    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'RESUMO DA FOLHA DE CAIXA';
    fxcAIXA.LoadFromFile('\DATASAC\server\rel\f000071_1.fr3');
    fxcAIXA.ShowReport;
  end;

  if combo_relatorio.text = 'RESUMO DE SAÍDAS' then
  begin
         frmmodulo.qrrelatorio.FieldByName('valor1').Asfloat :=
         frmmodulo.qrrelatorio.FieldByName('valor22').Asfloat +
         frmmodulo.qrrelatorio.FieldByName('valor25').Asfloat;

      qrcaixa.close;
      qrcaixa.SQL.Clear;
      qrcaixa.sql.add('select * from c000044 where data >= :datai and data <= :dataf '+caixa+conta+' and movimento in (2,17,22,26,27) order by codigo');
      qrcaixa.Params.ParamByName('datai').asdatetime := dateedit1.date;
      qrcaixa.Params.ParamByName('dataf').asdatetime := dateedit2.date;
      qrcaixa.open;

      frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'RESUMO DE SAÍDAS';
      fxcAIXA.LoadFromFile('\DATASAC\server\rel\f000072.fr3');
      fxcAIXA.ShowReport;
  end;

   if combo_relatorio.text = 'RESUMO DE RECEBIMENTOS' then
   begin

         frmmodulo.qrrelatorio.FieldByName('valor10').Asfloat := frmmodulo.qrrelatorio.FieldByName('valor4').Asfloat +
                                                                 frmmodulo.qrrelatorio.FieldByName('valor6').Asfloat +
                                                                 frmmodulo.qrrelatorio.FieldByName('valor9').Asfloat ;

         frmmodulo.qrrelatorio.FieldByName('valor22').Asfloat := frmmodulo.qrrelatorio.FieldByName('valor18').Asfloat+frmmodulo.qrrelatorio.FieldByName('valor10').Asfloat;
      qrcaixa.close;
      qrcaixa.SQL.Clear;
      qrcaixa.sql.add('select * from c000044 where data >= :datai and data <= :dataf '+caixa+conta+' and movimento in (3,5,8,9,10,11,15,16) order by codigo');
      qrcaixa.Params.ParamByName('datai').asdatetime := dateedit1.date;
      qrcaixa.Params.ParamByName('dataf').asdatetime := dateedit2.date;
      qrcaixa.open;

      frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'RESUMO DE RECEBIMENTOS';
      fxcAIXA.LoadFromFile('\DATASAC\server\rel\f000073.fr3');
      fxcAIXA.ShowReport;
   end;

   if combo_relatorio.text = 'FLUXO DE CAIXA' then
   begin
     SHOWMESSAGE('Relatório não disponibilizado nesta versão.');
     // FALTA_FAZER

   end;


end;

procedure Tfrmlista_caixa2.BitBtn1Click(Sender: TObject);
begin
  if not frmprincipal.autentica('Editar Relatórios',4) then
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
    exit;
  end;

  if combo_relatorio.Text = 'FOLHA DE CAIXA' then
  begin
    fxcAIXA.LoadFromFile('\DATASAC\server\rel\f000071.fr3');
    fxcAIXA.designreport;
  end;

end;

procedure Tfrmlista_caixa2.combo_relatorioChange(Sender: TObject);
begin
  if combo_relatorio.Text = 'FLUXO DE CAIXA' then
  begin
   lfluxo.Visible := true;
   gfluxo.Visible := true;
   lconta.visible := false;
   combo_conta.visible := false;
  end
  else
  begin
   lfluxo.Visible := false;
   gfluxo.Visible := false;
   lconta.visible := true;
   combo_conta.visible := true;
  end;
end;

procedure Tfrmlista_caixa2.qrcaixaCalcFields(DataSet: TDataSet);
begin
  CASE qrcaixa.FieldByName('movimento').asinteger of
   0 :qrcaixa.fieldbyname('descricao_movimento').asstring := 'IMPLANTAÇÃO DE SALDO';
   1 :qrcaixa.fieldbyname('descricao_movimento').asstring := 'LANCTO. ENTRADA';
   2 :qrcaixa.fieldbyname('descricao_movimento').asstring := 'LANCTO. SAÍDA';
   3 :qrcaixa.fieldbyname('descricao_movimento').asstring := 'VENDA DINHEIRO';
   4 :qrcaixa.fieldbyname('descricao_movimento').asstring := 'VENDA CREDIÁRIO';
   5 :qrcaixa.fieldbyname('descricao_movimento').asstring := 'VENDA CHEQUE À VISTA';
   6 :qrcaixa.fieldbyname('descricao_movimento').asstring := 'VENDA CHEQUE À PRAZO';
   7 :qrcaixa.fieldbyname('descricao_movimento').asstring := 'VENDA CARTÃO CRÉDITO';
   8 :qrcaixa.fieldbyname('descricao_movimento').asstring := 'VENDA CARTÃO DÉBITO';
   9 :qrcaixa.fieldbyname('descricao_movimento').asstring := 'RECEBTO. DINHEIRO';
  10 :qrcaixa.fieldbyname('descricao_movimento').asstring := 'RECEBTO. CHEQUE A.V.';
  11 :qrcaixa.fieldbyname('descricao_movimento').asstring := 'RECEBTO. CHEQUE A.P.';
  12 :qrcaixa.fieldbyname('descricao_movimento').asstring := 'RECEBTO. CARTAO';
  13 :qrcaixa.fieldbyname('descricao_movimento').asstring := 'RECEBTO. JUROS';
  14 :qrcaixa.fieldbyname('descricao_movimento').asstring := 'DESCONTO NO RECEBTO';
  15 :qrcaixa.fieldbyname('descricao_movimento').asstring := 'RECEBTO. BOLETO';
  16 :qrcaixa.fieldbyname('descricao_movimento').asstring := 'OUTRAS ENTRADAS';
  17 :qrcaixa.fieldbyname('descricao_movimento').asstring := 'OUTRAS SAÍDAS';
  18 :qrcaixa.fieldbyname('descricao_movimento').asstring := 'O.S. DINHEIRO';
  19 :qrcaixa.fieldbyname('descricao_movimento').asstring := 'O.S. CREDIÁRIO';
  20 :qrcaixa.fieldbyname('descricao_movimento').asstring := 'O.S. CHEQUE À VISTA';
  21 :qrcaixa.fieldbyname('descricao_movimento').asstring := 'O.S. CHEQUE À PRAZO';
  22 :qrcaixa.fieldbyname('descricao_movimento').asstring := 'O.S. CARTÃO CRÉDITO';
  23 :qrcaixa.fieldbyname('descricao_movimento').asstring := 'O.S. CARTÃO DÉBITO';
  25 :qrcaixa.fieldbyname('descricao_movimento').asstring := 'PAGTO - CAIXA';
  26 :qrcaixa.fieldbyname('descricao_movimento').asstring := 'PAGTO - BANCO';
  27 :qrcaixa.fieldbyname('descricao_movimento').asstring := 'PAGTO - CHEQUE TERC.';
  40 :qrcaixa.fieldbyname('descricao_movimento').asstring := 'VENDA CONVÊNIO';
  41 :qrcaixa.fieldbyname('descricao_movimento').asstring := 'VENDA CONVÊNIO VIDALINK';
  42 :qrcaixa.fieldbyname('descricao_movimento').asstring := 'VENDA FINANCEIRA';


  end;
end;

procedure Tfrmlista_caixa2.combo_contaChange(Sender: TObject);
begin
  IF combo_conta.Text = 'SELECIONAR' THEN
  BEGIN
    FRMMODULO.qrplano.OPEN;

    frmloc_conta := tfrmloc_conta.create(self);
    frmloc_conta.showmodal;


    combo_conta.Items.Add(frmmodulo.qrplano.fieldbyname('CODIGO').asstring+' '+frmmodulo.qrplano.fieldbyname('conta').asstring);
    combo_conta.ItemIndex := combo_conta.Items.Count - 1;
  END;
end;

end.
