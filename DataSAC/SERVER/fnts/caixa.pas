unit caixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Collection, ExtCtrls, StdCtrls, TFlatPanelUnit, Mask, rxtooledit,
  rxcurredit, RXDBCtrl, Grids, Wwdbigrd, Wwdbgrid, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, Buttons, PageView, Menus,
  ImgList, DBGrids, DBCtrls, AdvToolBar, AdvGlowButton,
  AdvShapeButton;

type
  Tfrmcaixa = class(TForm)
    FlatPanel1: TFlatPanel;
    Label13: TLabel;
    qrcaixa_mov: TZQuery;
    qrcaixa_movDESCRICAO_MOVIMENTO: TStringField;
    qrcaixa_movHISTORICO: TStringField;
    qrcaixa_movENTRADA: TFloatField;
    qrcaixa_movSAIDA: TFloatField;
    qrcaixa_movCODIGO: TStringField;
    qrcaixa_movCODCAIXA: TStringField;
    qrcaixa_movCODOPERADOR: TStringField;
    qrcaixa_movDATA: TDateTimeField;
    qrcaixa_movCODCONTA: TStringField;
    qrcaixa_movMOVIMENTO: TIntegerField;
    dscaixa_mov: TDataSource;
    POPPRINCIPAL: TPopupMenu;
    Incluir1: TMenuItem;
    Alterar1: TMenuItem;
    Excluir1: TMenuItem;
    Relatrios2: TMenuItem;
    Sair2: TMenuItem;
    popopcoes: TPopupMenu;
    MFECHAMENTO_CAIXA: TMenuItem;
    ReaberturadeCaixa1: TMenuItem;
    AberturadeNovoCaixa1: TMenuItem;
    ImageList1: TImageList;
    Qrsoma: TZQuery;
    qrcaixa_movVALOR: TFloatField;
    qrcaixa_movCONTA: TStringField;
    Opes1: TMenuItem;
    qrresumo: TZQuery;
    Bevel1: TBevel;
    LDATACAIXA: TLabel;
    Label5: TLabel;
    LCODOPERADOR: TLabel;
    LNOMEOPERADOR: TLabel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Label8: TLabel;
    Bevel4: TBevel;
    LSITOPERADOR: TLabel;
    LSITCAIXA: TLabel;
    Label9: TLabel;
    Bevel5: TBevel;
    PageView1: TPageView;
    PageSheet1: TPageSheet;
    PageSheet2: TPageSheet;
    Panel1: TPanel;
    Bevel7: TBevel;
    wwDBGrid1: TwwDBGrid;
    bcaixaaberto: TButton;
    bcaixafechado: TButton;
    Panel5: TPanel;
    Bevel9: TBevel;
    Bevel8: TBevel;
    Label48: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    Bevel10: TBevel;
    Label10: TLabel;
    Bevel11: TBevel;
    Bevel12: TBevel;
    Bevel13: TBevel;
    Label4: TLabel;
    RSAIDA: TRxCalcEdit;
    RENTRADA: TRxCalcEdit;
    RSALDO: TRxCalcEdit;
    Bevel15: TBevel;
    bincluir: TAdvGlowButton;
    balterar: TAdvGlowButton;
    bexcluir: TAdvGlowButton;
    brelatorio: TAdvGlowButton;
    LMDButton1: TAdvGlowMenuButton;
    bfechar: TAdvGlowButton;
    GroupBox1: TGroupBox;
    AdvShapeButton1: TAdvShapeButton;
    Label15: TLabel;
    AdvShapeButton2: TAdvShapeButton;
    Label16: TLabel;
    AdvShapeButton3: TAdvShapeButton;
    Label18: TLabel;
    rvenda_dinheiro: TRxCalcEdit;
    rvenda_chequeav: TRxCalcEdit;
    rvenda_chequeap: TRxCalcEdit;
    AdvShapeButton4: TAdvShapeButton;
    Label7: TLabel;
    AdvShapeButton5: TAdvShapeButton;
    Label11: TLabel;
    AdvShapeButton6: TAdvShapeButton;
    Label19: TLabel;
    AdvShapeButton7: TAdvShapeButton;
    Label25: TLabel;
    rvenda_crediario: TRxCalcEdit;
    rvenda_cartaocred: TRxCalcEdit;
    rvenda_cartaodeb: TRxCalcEdit;
    rvenda_convenio: TRxCalcEdit;
    rvenda_total: TRxCalcEdit;
    Label26: TLabel;
    Bevel6: TBevel;
    GroupBox2: TGroupBox;
    AdvShapeButton8: TAdvShapeButton;
    Label27: TLabel;
    AdvShapeButton9: TAdvShapeButton;
    Label28: TLabel;
    AdvShapeButton10: TAdvShapeButton;
    Label38: TLabel;
    AdvShapeButton12: TAdvShapeButton;
    Label40: TLabel;
    AdvShapeButton14: TAdvShapeButton;
    Label42: TLabel;
    Label43: TLabel;
    Bevel16: TBevel;
    rrec_dinheiro: TRxCalcEdit;
    rrec_chequeav: TRxCalcEdit;
    rrec_chequeap: TRxCalcEdit;
    rrec_cartao: TRxCalcEdit;
    rrec_boleto: TRxCalcEdit;
    rrec_total: TRxCalcEdit;
    Bevel17: TBevel;
    Label39: TLabel;
    Label41: TLabel;
    rrec_juros: TRxCalcEdit;
    rrec_desconto: TRxCalcEdit;
    GroupBox3: TGroupBox;
    AdvShapeButton11: TAdvShapeButton;
    Label44: TLabel;
    AdvShapeButton13: TAdvShapeButton;
    Label45: TLabel;
    AdvShapeButton15: TAdvShapeButton;
    Label46: TLabel;
    Label50: TLabel;
    Bevel18: TBevel;
    RPAG_DINHEIRO: TRxCalcEdit;
    RPAG_CHEQUEAV: TRxCalcEdit;
    RPAG_CHEQUEAP: TRxCalcEdit;
    RPAG_TOTAL: TRxCalcEdit;
    GroupBox4: TGroupBox;
    Grid: TStringGrid;
    qrmov: TZQuery;
    GroupBox5: TGroupBox;
    AdvShapeButton16: TAdvShapeButton;
    Label1: TLabel;
    AdvShapeButton17: TAdvShapeButton;
    Label2: TLabel;
    AdvShapeButton18: TAdvShapeButton;
    Label3: TLabel;
    AdvShapeButton19: TAdvShapeButton;
    Label6: TLabel;
    AdvShapeButton20: TAdvShapeButton;
    Label12: TLabel;
    AdvShapeButton21: TAdvShapeButton;
    Label14: TLabel;
    Label20: TLabel;
    Bevel14: TBevel;
    ros_dinheiro: TRxCalcEdit;
    ros_chequeav: TRxCalcEdit;
    ros_chequeap: TRxCalcEdit;
    ros_crediario: TRxCalcEdit;
    ros_cartaocred: TRxCalcEdit;
    ros_cartaodeb: TRxCalcEdit;
    ros_total: TRxCalcEdit;
    GroupBox6: TGroupBox;
    AdvShapeButton22: TAdvShapeButton;
    Label17: TLabel;
    AdvShapeButton23: TAdvShapeButton;
    Label21: TLabel;
    routro_entrada: TRxCalcEdit;
    routro_saida: TRxCalcEdit;
    AdvShapeButton24: TAdvShapeButton;
    Label22: TLabel;
    rvenda_financeira: TRxCalcEdit;
    GroupBox7: TGroupBox;
    Label24: TLabel;
    eentradas: TRxCalcEdit;
    Label29: TLabel;
    esaidas: TRxCalcEdit;
    eatual: TRxCalcEdit;
    Label30: TLabel;
    AdvShapeButton25: TAdvShapeButton;
    AdvShapeButton26: TAdvShapeButton;
    procedure qrcaixa_movCalcFields(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure PageView1Change(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure bcaixafechadoClick(Sender: TObject);
    procedure AberturadeNovoCaixa1Click(Sender: TObject);
    procedure bcaixaabertoClick(Sender: TObject);
    procedure bfecharClick(Sender: TObject);
    procedure ReaberturadeCaixa1Click(Sender: TObject);
    procedure MFECHAMENTO_CAIXAClick(Sender: TObject);
    procedure wwDBGrid1DrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure bincluirClick(Sender: TObject);
    procedure balterarClick(Sender: TObject);
    procedure brelatorioClick(Sender: TObject);
    procedure bexcluirClick(Sender: TObject);
    procedure Incluir1Click(Sender: TObject);
    procedure Alterar1Click(Sender: TObject);
    procedure Excluir1Click(Sender: TObject);
    procedure Relatrios2Click(Sender: TObject);
    procedure Sair2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcaixa: Tfrmcaixa;
implementation

uses modulo, caixa_abertura, principal, caixa_abertura_individual,
  caixa_fechamento, caixa_ficha, lista_caixa2;

{$R *.dfm}

procedure Tfrmcaixa.qrcaixa_movCalcFields(DataSet: TDataSet);
begin
  CASE qrcaixa_mov.FieldByName('movimento').asinteger of
   0 :qrcaixa_mov.fieldbyname('descricao_movimento').asstring := 'IMPLANTAÇÃO DE SALDO';
   1 :qrcaixa_mov.fieldbyname('descricao_movimento').asstring := 'LANCTO. ENTRADA';
   2 :qrcaixa_mov.fieldbyname('descricao_movimento').asstring := 'LANCTO. SAÍDA';
   3 :qrcaixa_mov.fieldbyname('descricao_movimento').asstring := 'VENDA DINHEIRO';
   4 :qrcaixa_mov.fieldbyname('descricao_movimento').asstring := 'VENDA CREDIÁRIO';
   5 :qrcaixa_mov.fieldbyname('descricao_movimento').asstring := 'VENDA CHEQUE À VISTA';
   6 :qrcaixa_mov.fieldbyname('descricao_movimento').asstring := 'VENDA CHEQUE À PRAZO';
   7 :qrcaixa_mov.fieldbyname('descricao_movimento').asstring := 'VENDA CARTÃO CRÉDITO';
   8 :qrcaixa_mov.fieldbyname('descricao_movimento').asstring := 'VENDA CARTÃO DÉBITO';
  40 :qrcaixa_mov.fieldbyname('descricao_movimento').asstring := 'VENDA CONVÊNIO';
  41 :qrcaixa_mov.fieldbyname('descricao_movimento').asstring := 'VENDA CONVÊNIO VIDALINK';
  42 :qrcaixa_mov.fieldbyname('descricao_movimento').asstring := 'VENDA FINANCEIRA';


   9 :qrcaixa_mov.fieldbyname('descricao_movimento').asstring := 'RECEBTO. DINHEIRO';
  10 :qrcaixa_mov.fieldbyname('descricao_movimento').asstring := 'RECEBTO. CHEQUE A.V.';
  11 :qrcaixa_mov.fieldbyname('descricao_movimento').asstring := 'RECEBTO. CHEQUE A.P.';
  12 :qrcaixa_mov.fieldbyname('descricao_movimento').asstring := 'RECEBTO. CARTAO';
  13 :qrcaixa_mov.fieldbyname('descricao_movimento').asstring := 'RECEBTO. JUROS';
  14 :qrcaixa_mov.fieldbyname('descricao_movimento').asstring := 'DESCONTO NO RECEBTO';
  15 :qrcaixa_mov.fieldbyname('descricao_movimento').asstring := 'RECEBTO. BOLETO';

  16 :qrcaixa_mov.fieldbyname('descricao_movimento').asstring := 'OUTRAS ENTRADAS';
  17 :qrcaixa_mov.fieldbyname('descricao_movimento').asstring := 'OUTRAS SAÍDAS';

  18 :qrcaixa_mov.fieldbyname('descricao_movimento').asstring := 'O.S. DINHEIRO';
  19 :qrcaixa_mov.fieldbyname('descricao_movimento').asstring := 'O.S. CREDIÁRIO';
  20 :qrcaixa_mov.fieldbyname('descricao_movimento').asstring := 'O.S. CHEQUE À VISTA';
  21 :qrcaixa_mov.fieldbyname('descricao_movimento').asstring := 'O.S. CHEQUE À PRAZO';
  22 :qrcaixa_mov.fieldbyname('descricao_movimento').asstring := 'O.S. CARTÃO CRÉDITO';
  23 :qrcaixa_mov.fieldbyname('descricao_movimento').asstring := 'O.S. CARTÃO DÉBITO';

  25 :qrcaixa_mov.fieldbyname('descricao_movimento').asstring := 'PAGTO - CAIXA';
  26 :qrcaixa_mov.fieldbyname('descricao_movimento').asstring := 'PAGTO - BANCO';
  27 :qrcaixa_mov.fieldbyname('descricao_movimento').asstring := 'PAGTO - CHEQUE TERC.';






  end;
end;

procedure Tfrmcaixa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ACTION := CAFREE;
end;

procedure Tfrmcaixa.FormShow(Sender: TObject);
begin
   if FRMMODULO.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING = '000099' then // CAIXA GERAL
   begin


         qrsoma.Close;
         qrsoma.SQL.clear;
         qrsoma.sql.add('select sum(entrada) total_entrada, sum(saida) total_saida, '+ // total_entrada e total_saida
                        '(select sum(VALOR) VALOR    from c000044 where movimento = 03 and data = :data_caixa), '+ // sum
                        '(select sum(VALOR) VALOR_1  from c000044 where movimento = 04 and data = :data_caixa), '+ // sum_1
                        '(select sum(VALOR) VALOR_2  from c000044 where movimento = 05 and data = :data_caixa), '+ // sum_2
                        '(select sum(VALOR) VALOR_3  from c000044 where movimento = 06 and data = :data_caixa), '+ // sum_3
                        '(select sum(VALOR) VALOR_4  from c000044 where movimento = 07 and data = :data_caixa), '+ // sum_4
                        '(select sum(VALOR) VALOR_5  from c000044 where movimento = 08 and data = :data_caixa), '+ // sum_5
                        // ordem de servico
                        '(select sum(VALOR) VALOR_6  from c000044 where movimento = 18 and data = :data_caixa),  '+ // sum_6  - dinheiro
                        '(select sum(VALOR) VALOR_7  from c000044 where movimento = 19 and data = :data_caixa),  '+ // sum_7  - cree
                        '(select sum(VALOR) VALOR_8  from c000044 where movimento = 20 and data = :data_caixa),  '+ // sum_8  - cv
                        '(select sum(VALOR) VALOR_9  from c000044 where movimento = 21 and data = :data_caixa),  '+ // sum_9  - cp
                        '(select sum(VALOR) VALOR_10 from c000044 where movimento = 22 and data = :data_caixa),  '+ // sum_10  - cc
                        '(select sum(VALOR) VALOR_11 from c000044 where movimento = 23 and data = :data_caixa),  '+ // sum_11  - cd
                        '(select sum(VALOR) VALOR_12 from c000044 where movimento = 40 and data = :data_caixa), '+ // sum_12
                        '(select sum(VALOR) VALOR_13 from c000044 where movimento = 01 and data = :data_caixa), '+ // sum_13
                        '(select sum(VALOR) VALOR_14 from c000044 where movimento = 02 and data = :data_caixa), '+ // sum_14
                        '(select sum(VALOR) VALOR_15 from c000044 where movimento = 42 and data = :data_caixa) '+ // sum_15

                        'from c000044 where data = :data_caixa');

         qrsoma.Params.ParamByName('data_caixa').asdatetime := frmmodulo.qrcaixa_operador.fieldbyname('data').asdatetime;
         qrsoma.open;
         rentrada.value := qrsoma.fieldbyname('total_entrada').asfloat;
         rsaida.value := qrsoma.fieldbyname('total_saida').asfloat;
         rsaldo.Value := rentrada.value - rsaida.Value;

         rvenda_dinheiro.Value   := qrsoma.fieldbyname('VALOR').asfloat;
         rvenda_crediario.Value  := qrsoma.fieldbyname('VALOR_1').asfloat;
         rvenda_chequeav.Value   := qrsoma.fieldbyname('VALOR_2').asfloat;
         rvenda_chequeap.Value   := qrsoma.fieldbyname('VALOR_3').asfloat;
         rvenda_cartaocred.Value := qrsoma.fieldbyname('VALOR_4').asfloat;
         rvenda_cartaodeb.Value  := qrsoma.fieldbyname('VALOR_5').asfloat;
         rvenda_convenio.value   := qrsoma.fieldbyname('VALOR_12').asfloat;
         rvenda_financeira.value := qrsoma.fieldbyname('VALOR_15').asfloat;


         ros_dinheiro.Value      := qrsoma.fieldbyname('VALOR_6').asfloat;
         ros_crediario.Value     := qrsoma.fieldbyname('VALOR_7').asfloat;
         ros_chequeav.Value      := qrsoma.fieldbyname('VALOR_8').asfloat;
         ros_chequeap.Value      := qrsoma.fieldbyname('VALOR_9').asfloat;
         ros_cartaocred.Value    := qrsoma.fieldbyname('VALOR_10').asfloat;
         ros_cartaodeb.Value     := qrsoma.fieldbyname('VALOR_11').asfloat;

         routro_entrada.Value    := qrsoma.fieldbyname('VALOR_13').asfloat;
         routro_saida.Value      := qrsoma.fieldbyname('VALOR_14').asfloat;

         rvenda_total.value := rvenda_dinheiro.value + rvenda_crediario.value + rvenda_chequeav.value + rvenda_chequeap.value + rvenda_cartaocred.value + rvenda_cartaodeb.value+rvenda_convenio.value+rvenda_financeira.value;
         ros_total.value := ros_dinheiro.value + ros_crediario.value + ros_chequeav.value + ros_chequeap.value + ros_cartaocred.value + ros_cartaodeb.value;

         qrcaixa_mov.close;
         qrcaixa_mov.SQL.Clear;
         qrcaixa_mov.sql.add('select * from c000044 where data = :data_caixa order by codigo');
         qrcaixa_mov.Params.ParamByName('data_caixa').asdatetime := frmmodulo.qrcaixa_operador.fieldbyname('data').asdatetime;
         qrcaixa_mov.open;



         LDATACAIXA.Caption      := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
         LCODOPERADOR.Caption    := FRMMODULO.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
         LNOMEOPERADOR.Caption   := FRMMODULO.qrcaixa_operador.FIELDBYNAME('NOME').ASSTRING;


         if FRMMODULO.qrcaixa_operador.FIELDBYNAME('SITUACAO').ASinteger > 1 then
         begin
           LSITOPERADOR.Caption    := 'FECHADO';
           LSITCAIXA.Caption       := 'FECHADO';
           LSITOPERADOR.Font.Color := CLRED;
           LSITCAIXA.Font.Color    := CLRED;
           BCAIXAFECHADOCLICK(FRMCAIXA);



         END
         ELSE
         BEGIN

           LSITOPERADOR.Caption    := 'ABERTO';
           LSITCAIXA.Caption       := 'ABERTO';
           LSITOPERADOR.Font.Color := CLBLUE;
           LSITCAIXA.Font.Color    := CLBLUE;
           BCAIXAABERTOCLICK(FRMCAIXA);

         END;

   end
   else
   // caixa individual  //*********************************************************
   begin


         qrsoma.Close;
         qrsoma.SQL.clear;

         qrsoma.Close;
         qrsoma.SQL.clear;
         qrsoma.sql.add('select sum(entrada) total_entrada, sum(saida) total_saida, '+ // total_entrada e total_saida
                        '(select sum(VALOR) VALOR    from c000044 where movimento = 03 and data = :data_caixa and codoperador = '''+frmmodulo.qrcaixa_operador.fieldbyname('codigo').AsString+'''), '+ // sum
                        '(select sum(VALOR) VALOR_1  from c000044 where movimento = 04 and data = :data_caixa and codoperador = '''+frmmodulo.qrcaixa_operador.fieldbyname('codigo').AsString+'''), '+ // sum_1
                        '(select sum(VALOR) VALOR_2  from c000044 where movimento = 05 and data = :data_caixa and codoperador = '''+frmmodulo.qrcaixa_operador.fieldbyname('codigo').AsString+'''), '+ // sum_2
                        '(select sum(VALOR) VALOR_3  from c000044 where movimento = 06 and data = :data_caixa and codoperador = '''+frmmodulo.qrcaixa_operador.fieldbyname('codigo').AsString+'''), '+ // sum_3
                        '(select sum(VALOR) VALOR_4  from c000044 where movimento = 07 and data = :data_caixa and codoperador = '''+frmmodulo.qrcaixa_operador.fieldbyname('codigo').AsString+'''), '+ // sum_4
                        '(select sum(VALOR) VALOR_5  from c000044 where movimento = 08 and data = :data_caixa and codoperador = '''+frmmodulo.qrcaixa_operador.fieldbyname('codigo').AsString+'''), '+ // sum_5
                        // ordem de servico
                        '(select sum(VALOR) VALOR_6  from c000044 where movimento = 18 and data = :data_caixa and codoperador = '''+frmmodulo.qrcaixa_operador.fieldbyname('codigo').AsString+'''), '+
                        '(select sum(VALOR) VALOR_7  from c000044 where movimento = 19 and data = :data_caixa and codoperador = '''+frmmodulo.qrcaixa_operador.fieldbyname('codigo').AsString+'''), '+
                        '(select sum(VALOR) VALOR_8  from c000044 where movimento = 20 and data = :data_caixa and codoperador = '''+frmmodulo.qrcaixa_operador.fieldbyname('codigo').AsString+'''), '+
                        '(select sum(VALOR) VALOR_9  from c000044 where movimento = 21 and data = :data_caixa and codoperador = '''+frmmodulo.qrcaixa_operador.fieldbyname('codigo').AsString+'''), '+
                        '(select sum(VALOR) VALOR_10 from c000044 where movimento = 22 and data = :data_caixa and codoperador = '''+frmmodulo.qrcaixa_operador.fieldbyname('codigo').AsString+'''), '+
                        '(select sum(VALOR) VALOR_11 from c000044 where movimento = 23 and data = :data_caixa and codoperador = '''+frmmodulo.qrcaixa_operador.fieldbyname('codigo').AsString+'''), '+
                        '(select sum(VALOR) VALOR_12 from c000044 where movimento = 40 and data = :data_caixa and codoperador = '''+frmmodulo.qrcaixa_operador.fieldbyname('codigo').AsString+'''), '+
                        '(select sum(VALOR) VALOR_13 from c000044 where movimento = 01 and data = :data_caixa and codoperador = '''+frmmodulo.qrcaixa_operador.fieldbyname('codigo').AsString+'''), '+
                        '(select sum(VALOR) VALOR_14 from c000044 where movimento = 02 and data = :data_caixa and codoperador = '''+frmmodulo.qrcaixa_operador.fieldbyname('codigo').AsString+'''), '+
                        '(select sum(VALOR) VALOR_15 from c000044 where movimento = 42 and data = :data_caixa and codoperador = '''+frmmodulo.qrcaixa_operador.fieldbyname('codigo').AsString+''') '+


                        'from c000044 where data = :data_caixa and codoperador = '''+frmmodulo.qrcaixa_operador.fieldbyname('codigo').AsString+'''');


         qrsoma.Params.ParamByName('data_caixa').asdatetime := frmmodulo.qrcaixa_operador.fieldbyname('data').asdatetime;
         qrsoma.open;
         rentrada.value := qrsoma.fieldbyname('total_entrada').asfloat;
         rsaida.value := qrsoma.fieldbyname('total_saida').asfloat;
         rsaldo.Value := rentrada.value - rsaida.Value;

         rvenda_dinheiro.Value   := qrsoma.fieldbyname('VALOR').asfloat;
         rvenda_crediario.Value  := qrsoma.fieldbyname('VALOR_1').asfloat;
         rvenda_chequeav.Value   := qrsoma.fieldbyname('VALOR_2').asfloat;
         rvenda_chequeap.Value   := qrsoma.fieldbyname('VALOR_3').asfloat;
         rvenda_cartaocred.Value := qrsoma.fieldbyname('VALOR_4').asfloat;
         rvenda_cartaodeb.Value  := qrsoma.fieldbyname('VALOR_5').asfloat;
         rvenda_financeira.Value := qrsoma.fieldbyname('VALOR_15').asfloat;


         ros_dinheiro.Value      := qrsoma.fieldbyname('VALOR_6').asfloat;
         ros_crediario.Value     := qrsoma.fieldbyname('VALOR_7').asfloat;
         ros_chequeav.Value      := qrsoma.fieldbyname('VALOR_8').asfloat;
         ros_chequeap.Value      := qrsoma.fieldbyname('VALOR_9').asfloat;
         ros_cartaocred.Value    := qrsoma.fieldbyname('VALOR_10').asfloat;
         ros_cartaodeb.Value     := qrsoma.fieldbyname('VALOR_11').asfloat;
         rvenda_convenio.value   := qrsoma.fieldbyname('VALOR_12').asfloat;

         routro_entrada.Value    := qrsoma.fieldbyname('VALOR_13').asfloat;
         routro_saida.Value      := qrsoma.fieldbyname('VALOR_14').asfloat;

         rvenda_total.value := rvenda_dinheiro.value + rvenda_crediario.value + rvenda_chequeav.value + rvenda_chequeap.value + rvenda_cartaocred.value + rvenda_cartaodeb.value+rvenda_convenio.value+rvenda_financeira.value;
         ros_total.value    := ros_dinheiro.Value;

         qrcaixa_mov.close;
         qrcaixa_mov.SQL.Clear;
         qrcaixa_mov.sql.add('select * from c000044 where data = :data_caixa and codoperador = '''+frmmodulo.qrcaixa_operador.fieldbyname('codigo').AsString+''' order by codigo');
         qrcaixa_mov.Params.ParamByName('data_caixa').asdatetime := frmmodulo.qrcaixa_operador.fieldbyname('data').asdatetime;
         qrcaixa_mov.open;


         LDATACAIXA.Caption      := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
         LCODOPERADOR.Caption    := FRMMODULO.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
         LNOMEOPERADOR.Caption   := FRMMODULO.qrcaixa_operador.FIELDBYNAME('NOME').ASSTRING;


         if FRMMODULO.qrcaixa_operador.FIELDBYNAME('SITUACAO').ASSTRING = '1' then
         begin
           LSITOPERADOR.Caption    := 'ABERTO';
           LSITCAIXA.Caption       := 'ABERTO';
           LSITOPERADOR.Font.Color := CLBLUE;
           LSITCAIXA.Font.Color    := CLBLUE;
           BCAIXAABERTOCLICK(FRMCAIXA);
         END
         ELSE
         BEGIN

           LSITCAIXA.Caption       := 'ABERTO';
           LSITCAIXA.Font.Color    := CLBLUE;
           LSITOPERADOR.Caption    := 'FECHADO';
           LSITOPERADOR.Font.Color := CLRED;
           BCAIXAFECHADOCLICK(FRMCAIXA);
         END;



          ///////////////




   end;






end;

procedure Tfrmcaixa.PageView1Change(Sender: TObject);
var texto, texto1, texto2 : string;
i : integer;
SOMA : REAL;
begin
  if pageview1.ActivePageIndex = 1 then
    begin


      if FRMMODULO.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING = '000099' then // CAIXA GERAL
        begin


         qrsoma.Close;
         qrsoma.SQL.clear;
         qrsoma.sql.add('select sum(entrada) total_entrada, sum(saida) total_saida, '+ // total_entrada e total_saida
                        '(select sum(VALOR) valor   from c000044 where movimento = 03 and data = :data_caixa), '+ // sum
                        '(select sum(VALOR) valor_1 from c000044 where movimento = 04 and data = :data_caixa), '+ // sum_1
                        '(select sum(VALOR) valor_2 from c000044 where movimento = 05 and data = :data_caixa), '+ // sum_2
                        '(select sum(VALOR) valor_3 from c000044 where movimento = 06 and data = :data_caixa), '+ // sum_3
                        '(select sum(VALOR) valor_4 from c000044 where movimento = 07 and data = :data_caixa), '+ // sum_4
                        '(select sum(VALOR) valor_5 from c000044 where movimento = 08 and data = :data_caixa), '+ // sum_5
                        // ordem de servico
                        '(select sum(VALOR) valor_6 from c000044 where movimento = 18 and data = :data_caixa),  '+ // sum_6  - dinheiro
                        '(select sum(VALOR) valor_7 from c000044 where movimento = 19 and data = :data_caixa),  '+ // sum_7  - cree
                        '(select sum(VALOR) valor_8 from c000044 where movimento = 20 and data = :data_caixa),  '+ // sum_8  - cv
                        '(select sum(VALOR) valor_9 from c000044 where movimento = 21 and data = :data_caixa),  '+ // sum_9  - cp
                        '(select sum(VALOR) valor_10 from c000044 where movimento = 22 and data = :data_caixa),  '+ // sum_10  - cc
                        '(select sum(VALOR) valor_11 from c000044 where movimento = 23 and data = :data_caixa),  '+ // sum_11  - cd
                        '(select sum(VALOR) valor_12 from c000044 where movimento = 40 and data = :data_caixa), '+ // sum_12
                        '(select sum(VALOR) valor_13 from c000044 where movimento = 01 and data = :data_caixa), '+ // sum_13
                        '(select sum(VALOR) valor_14 from c000044 where movimento = 02 and data = :data_caixa), '+ // sum_14
                        '(select sum(VALOR) valor_15 from c000044 where movimento = 42 and data = :data_caixa) '+ // sum_15


                        'from c000044 where data = :data_caixa');

         qrsoma.Params.ParamByName('data_caixa').asdatetime := frmmodulo.qrcaixa_operador.fieldbyname('data').asdatetime;
         qrsoma.open;
         rentrada.value := qrsoma.fieldbyname('total_entrada').asfloat;
         rsaida.value := qrsoma.fieldbyname('total_saida').asfloat;
         rsaldo.Value := rentrada.value - rsaida.Value;

         rvenda_dinheiro.Value   := qrsoma.fieldbyname('valor').asfloat;
         rvenda_crediario.Value  := qrsoma.fieldbyname('valor_1').asfloat;
         rvenda_chequeav.Value   := qrsoma.fieldbyname('valor_2').asfloat;
         rvenda_chequeap.Value   := qrsoma.fieldbyname('valor_3').asfloat;
         rvenda_cartaocred.Value := qrsoma.fieldbyname('valor_4').asfloat;
         rvenda_cartaodeb.Value  := qrsoma.fieldbyname('valor_5').asfloat;
         rvenda_convenio.value   := qrsoma.fieldbyname('valor_12').asfloat;
         rvenda_financeira.value := qrsoma.fieldbyname('valor_15').asfloat;

         ros_dinheiro.Value      := qrsoma.fieldbyname('valor_6').asfloat;
         ros_crediario.Value      := qrsoma.fieldbyname('valor_7').asfloat;
         ros_chequeav.Value      := qrsoma.fieldbyname('valor_8').asfloat;
         ros_chequeap.Value      := qrsoma.fieldbyname('valor_9').asfloat;
         ros_cartaocred.Value      := qrsoma.fieldbyname('valor_10').asfloat;
         ros_cartaodeb.Value      := qrsoma.fieldbyname('valor_11').asfloat;

         routro_entrada.Value      := qrsoma.fieldbyname('valor_13').asfloat;
         routro_saida.Value       := qrsoma.fieldbyname('valor_14').asfloat;

         rvenda_total.value := rvenda_dinheiro.value + rvenda_crediario.value + rvenda_chequeav.value + rvenda_chequeap.value + rvenda_cartaocred.value + rvenda_cartaodeb.value+rvenda_convenio.value+rvenda_financeira.value;
         ros_total.value := ros_dinheiro.value + ros_crediario.value + ros_chequeav.value + ros_chequeap.value + ros_cartaocred.value + ros_cartaodeb.value;

         qrcaixa_mov.close;
         qrcaixa_mov.SQL.Clear;
         qrcaixa_mov.sql.add('select * from c000044 where data = :data_caixa order by codigo');
         qrcaixa_mov.Params.ParamByName('data_caixa').asdatetime := frmmodulo.qrcaixa_operador.fieldbyname('data').asdatetime;
         qrcaixa_mov.open;



         LDATACAIXA.Caption      := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
         LCODOPERADOR.Caption    := FRMMODULO.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
         LNOMEOPERADOR.Caption   := FRMMODULO.qrcaixa_operador.FIELDBYNAME('NOME').ASSTRING;


         if FRMMODULO.qrcaixa_operador.FIELDBYNAME('SITUACAO').ASinteger > 1 then
         begin
           LSITOPERADOR.Caption    := 'FECHADO';
           LSITCAIXA.Caption       := 'FECHADO';
           LSITOPERADOR.Font.Color := CLRED;
           LSITCAIXA.Font.Color    := CLRED;
           BCAIXAFECHADOCLICK(FRMCAIXA);



         END
         ELSE
         BEGIN

           LSITOPERADOR.Caption    := 'ABERTO';
           LSITCAIXA.Caption       := 'ABERTO';
           LSITOPERADOR.Font.Color := CLBLUE;
           LSITCAIXA.Font.Color    := CLBLUE;
           BCAIXAABERTOCLICK(FRMCAIXA);

         END;

      end
   else
   // caixa individual  //*********************************************************
      begin


         qrsoma.Close;
         qrsoma.SQL.clear;

         qrsoma.Close;
         qrsoma.SQL.clear;
         qrsoma.sql.add('select sum(entrada) total_entrada, sum(saida) total_saida, '+ // total_entrada e total_saida
                        '(select sum(VALOR) valor from c000044 where movimento = 03 and data = :data_caixa and codoperador = '''+frmmodulo.qrcaixa_operador.fieldbyname('codigo').AsString+'''), '+ // sum
                        '(select sum(VALOR) valor_1 from c000044 where movimento = 04 and data = :data_caixa and codoperador = '''+frmmodulo.qrcaixa_operador.fieldbyname('codigo').AsString+'''), '+ // sum_1
                        '(select sum(VALOR) valor_2 from c000044 where movimento = 05 and data = :data_caixa and codoperador = '''+frmmodulo.qrcaixa_operador.fieldbyname('codigo').AsString+'''), '+ // sum_2
                        '(select sum(VALOR) valor_3 from c000044 where movimento = 06 and data = :data_caixa and codoperador = '''+frmmodulo.qrcaixa_operador.fieldbyname('codigo').AsString+'''), '+ // sum_3
                        '(select sum(VALOR) valor_4 from c000044 where movimento = 07 and data = :data_caixa and codoperador = '''+frmmodulo.qrcaixa_operador.fieldbyname('codigo').AsString+'''), '+ // sum_4
                        '(select sum(VALOR) valor_5 from c000044 where movimento = 08 and data = :data_caixa and codoperador = '''+frmmodulo.qrcaixa_operador.fieldbyname('codigo').AsString+'''), '+ // sum_5
                        // ordem de servico
                        '(select sum(VALOR) valor_6 from c000044 where movimento = 18 and data = :data_caixa and codoperador = '''+frmmodulo.qrcaixa_operador.fieldbyname('codigo').AsString+'''), '+
                        '(select sum(VALOR) valor_7 from c000044 where movimento = 19 and data = :data_caixa and codoperador = '''+frmmodulo.qrcaixa_operador.fieldbyname('codigo').AsString+'''), '+
                        '(select sum(VALOR) valor_8 from c000044 where movimento = 20 and data = :data_caixa and codoperador = '''+frmmodulo.qrcaixa_operador.fieldbyname('codigo').AsString+'''), '+
                        '(select sum(VALOR) valor_9 from c000044 where movimento = 21 and data = :data_caixa and codoperador = '''+frmmodulo.qrcaixa_operador.fieldbyname('codigo').AsString+'''), '+
                        '(select sum(VALOR) valor_10 from c000044 where movimento = 22 and data = :data_caixa and codoperador = '''+frmmodulo.qrcaixa_operador.fieldbyname('codigo').AsString+'''), '+
                        '(select sum(VALOR) valor_11 from c000044 where movimento = 23 and data = :data_caixa and codoperador = '''+frmmodulo.qrcaixa_operador.fieldbyname('codigo').AsString+'''), '+
                        '(select sum(VALOR) valor_12 from c000044 where movimento = 40 and data = :data_caixa and codoperador = '''+frmmodulo.qrcaixa_operador.fieldbyname('codigo').AsString+'''), '+
                        '(select sum(VALOR) valor_13 from c000044 where movimento = 01 and data = :data_caixa and codoperador = '''+frmmodulo.qrcaixa_operador.fieldbyname('codigo').AsString+'''), '+
                        '(select sum(VALOR) valor_14 from c000044 where movimento = 02 and data = :data_caixa and codoperador = '''+frmmodulo.qrcaixa_operador.fieldbyname('codigo').AsString+'''), '+
                        '(select sum(VALOR) valor_15 from c000044 where movimento = 42 and data = :data_caixa and codoperador = '''+frmmodulo.qrcaixa_operador.fieldbyname('codigo').AsString+''') '+
                        'from c000044 where data = :data_caixa and codoperador = '''+frmmodulo.qrcaixa_operador.fieldbyname('codigo').AsString+'''');


         qrsoma.Params.ParamByName('data_caixa').asdatetime := frmmodulo.qrcaixa_operador.fieldbyname('data').asdatetime;
         qrsoma.open;
         rentrada.value := qrsoma.fieldbyname('total_entrada').asfloat;
         rsaida.value := qrsoma.fieldbyname('total_saida').asfloat;
         rsaldo.Value := rentrada.value - rsaida.Value;

         rvenda_dinheiro.Value   := qrsoma.fieldbyname('valor').asfloat;
         rvenda_crediario.Value  := qrsoma.fieldbyname('valor_1').asfloat;
         rvenda_chequeav.Value   := qrsoma.fieldbyname('valor_2').asfloat;
         rvenda_chequeap.Value   := qrsoma.fieldbyname('valor_3').asfloat;
         rvenda_cartaocred.Value := qrsoma.fieldbyname('valor_4').asfloat;
         rvenda_cartaodeb.Value  := qrsoma.fieldbyname('valor_5').asfloat;
         rvenda_convenio.value   := qrsoma.fieldbyname('valor_12').asfloat;
         rvenda_financeira.value := qrsoma.fieldbyname('valor_15').asfloat;

         ros_dinheiro.Value      := qrsoma.fieldbyname('valor_6').asfloat;
         ros_crediario.Value      := qrsoma.fieldbyname('valor_7').asfloat;
         ros_chequeav.Value      := qrsoma.fieldbyname('valor_8').asfloat;
         ros_chequeap.Value      := qrsoma.fieldbyname('valor_9').asfloat;
         ros_cartaocred.Value      := qrsoma.fieldbyname('valor_10').asfloat;
         ros_cartaodeb.Value      := qrsoma.fieldbyname('valor_11').asfloat;

         routro_entrada.Value      := qrsoma.fieldbyname('valor_13').asfloat;
         routro_saida.Value       := qrsoma.fieldbyname('valor_14').asfloat;


         rvenda_total.value := rvenda_dinheiro.value + rvenda_crediario.value + rvenda_chequeav.value + rvenda_chequeap.value + rvenda_cartaocred.value + rvenda_cartaodeb.value+rvenda_convenio.value+rvenda_financeira.value;
         ros_total.value := ros_dinheiro.Value;

         qrcaixa_mov.close;
         qrcaixa_mov.SQL.Clear;
         qrcaixa_mov.sql.add('select * from c000044 where data = :data_caixa and codoperador = '''+frmmodulo.qrcaixa_operador.fieldbyname('codigo').AsString+''' order by codigo');
         qrcaixa_mov.Params.ParamByName('data_caixa').asdatetime := frmmodulo.qrcaixa_operador.fieldbyname('data').asdatetime;
         qrcaixa_mov.open;


         LDATACAIXA.Caption      := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
         LCODOPERADOR.Caption    := FRMMODULO.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
         LNOMEOPERADOR.Caption   := FRMMODULO.qrcaixa_operador.FIELDBYNAME('NOME').ASSTRING;


         if FRMMODULO.qrcaixa_operador.FIELDBYNAME('SITUACAO').ASSTRING = '1' then
         begin
           LSITOPERADOR.Caption    := 'ABERTO';
           LSITCAIXA.Caption       := 'ABERTO';
           LSITOPERADOR.Font.Color := CLBLUE;
           LSITCAIXA.Font.Color    := CLBLUE;
           BCAIXAABERTOCLICK(FRMCAIXA);
         END
         ELSE
         BEGIN

           LSITCAIXA.Caption       := 'ABERTO';
           LSITCAIXA.Font.Color    := CLBLUE;
           LSITOPERADOR.Caption    := 'FECHADO';
           LSITOPERADOR.Font.Color := CLRED;
           BCAIXAFECHADOCLICK(FRMCAIXA);
         END;



          ///////////////




      end;



        if FRMMODULO.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING = '000099' then // CAIXA GERAL
        begin
          qrsoma.Close;
          qrsoma.SQL.clear;
          qrsoma.sql.add('select sum(VALOR) valor_0, '+ // 9 sum_0 dinheiro
                         '(select sum(VALOR) valor from c000044 where movimento = 10 and data = :data_caixa), '+ // sum 10 cheque a vista
                         '(select sum(VALOR) valor_1 from c000044 where movimento = 11 and data = :data_caixa), '+ // sum_1 11 cheque a prazo
                         '(select sum(VALOR) valor_2 from c000044 where movimento = 12 and data = :data_caixa), '+ // sum_2 12 cartao
                         '(select sum(VALOR) valor_3 from c000044 where movimento = 13 and data = :data_caixa), '+ // sum_3 13 juros
                         '(select sum(VALOR) valor_4 from c000044 where movimento = 14 and data = :data_caixa), '+ // sum_4 14 desconto
                         '(select sum(VALOR) valor_5 from c000044 where movimento = 15 and data = :data_caixa) '+ // sum_5 15 boleto
                         'from c000044 where data = :data_caixa and movimento = 09');

          qrsoma.Params.ParamByName('data_caixa').asdatetime := frmmodulo.qrcaixa_operador.fieldbyname('data').asdatetime;
          qrsoma.open;

          rrec_dinheiro.Value   := qrsoma.fieldbyname('valor_0').asfloat;
          rrec_chequeav.Value   := qrsoma.fieldbyname('valor').asfloat;
          rrec_chequeap.Value   := qrsoma.fieldbyname('valor_1').asfloat;
          rrec_CARTAO.Value     := qrsoma.fieldbyname('valor_2').asfloat;

          rrec_juros.Value      := qrsoma.fieldbyname('valor_3').asfloat;
          rrec_desconto.Value   := qrsoma.fieldbyname('valor_4').asfloat;
          rrec_boleto.Value     := qrsoma.fieldbyname('valor_5').asfloat;


         rrec_total.value := rrec_dinheiro.value + rrec_chequeav.value + rrec_chequeap.value +
                             rrec_cartao.value   + rrec_boleto.value;
//                          rrec_JUROS.value    - rrec_desconto.value;

         qrsoma.Close;
         qrsoma.SQL.clear;
         qrsoma.sql.add('select sum(VALOR) valor_0, '+ // sum_0
                        '(select sum(VALOR) valor from c000044 where movimento = 26 and data = :data_caixa), '+ // sum
                        '(select sum(VALOR) valor_1 from c000044 where movimento = 27 and data = :data_caixa) '+ // sum_1
                        'from c000044 where data = :data_caixa and movimento = 25');

         qrsoma.Params.ParamByName('data_caixa').asdatetime := frmmodulo.qrcaixa_operador.fieldbyname('data').asdatetime;
         qrsoma.open;
         rPAG_dinheiro.Value   := qrsoma.fieldbyname('valor_0').asfloat;
         rPAG_chequeav.Value   := qrsoma.fieldbyname('valor').asfloat;
         rPAG_chequeap.Value   := qrsoma.fieldbyname('valor_1').asfloat;
         rPAG_total.value := rPAG_dinheiro.value + rPAG_chequeav.value + rPAG_chequeap.value;



        // resumo diario
        //eanterior.Value := 0; //RENTRADA.Value - rvenda_dinheiro.Value;
        //eentradas.Value := rvenda_total.Value+ros_total.Value+(rrec_total.Value+rrec_juros.Value-rrec_desconto.Value)+routro_entrada.Value;
        eentradas.Value := rvenda_total.Value+ros_total.Value+routro_entrada.Value;
        esaidas.Value := RPAG_TOTAL.Value+routro_saida.Value;
        //eatual.Value := eanterior.Value+eentradas.Value-esaidas.Value;
        eatual.Value := eentradas.Value-(esaidas.Value*(-1));


         qrresumo.close;
         qrresumo.sql.clear;
         qrresumo.sql.add('select plano.conta, plano.codigo, sum(caixa.valor) total from c000035 plano '+
                          'JOIN c000044 caixa on plano.codigo = caixa.codconta '+
                          ' and caixa.data = :datax and plano.tipo = 1 group by plano.conta, plano.codigo');
         qrresumo.Params.ParamByName('datax').asdatetime := frmmodulo.qrcaixa_operador.fieldbyname('data').asdatetime;
         qrresumo.Open;


         Grid.RowCount := 200;



        with Grid do
          for I := 0 to RowCount -1 do
             Rows[I].Clear;





      GRID.Rows[0].Add('                         R E C E I T A S                           ');
      GRID.Rows[1].Add('*******************************************************************');
      GRID.Rows[2].Add('CODIGO    NOME DA CONTA                                  VALOR - R$');
      GRID.Rows[3].Add('-------------------------------------------------------------------');
      QRRESUMO.FIRST;
      i := 4;
      SOMA := 0;
      WHILE NOT QRRESUMO.EOF DO
      BEGIN
        texto := qrresumo.fieldbyname('codigo').asstring;
        texto1:= qrresumo.fieldbyname('conta').asstring;
        texto2:= formatfloat('###,###,##0.00',qrresumo.fieldbyname('total').asfloat);
        while length(texto1) < 45 do texto1 := texto1+' ';
        while length(texto1) > 45 do delete(texto1,46,1);
        while length(texto2) < 11 do texto2 := ' '+texto2;
        GRID.Rows[i].Add(texto+'    '+texto1+' '+texto2);
        SOMA := SOMA + QRRESUMO.FIELDBYNAME('TOTAL').ASFLOAT;
        qrresumo.next;
        i := i+1;
      END;
      TEXTO2 := FORMATFLOAT('###,###,##0.00',SOMA);
      while length(texto2) < 11 do texto2 := ' '+texto2;
      GRID.Rows[I].Add('-------------------------------------------------------------------');
      I := I + 1;
      GRID.Rows[i].Add('TOTAL DAS RECEITAS....................................: '+TEXTO2);
      I := I + 1;




      qrresumo.close;
      qrresumo.sql.clear;
      qrresumo.sql.add('select plano.conta, plano.codigo, sum(caixa.valor) total from c000035 plano '+
                       'JOIN c000044 caixa on plano.codigo = caixa.codconta '+
                       ' and caixa.data = :datax and plano.tipo = 2 group by plano.conta, plano.codigo');
      qrresumo.Params.ParamByName('datax').asdatetime := frmmodulo.qrcaixa_operador.fieldbyname('data').asdatetime;
      qrresumo.Open;
      GRID.Rows[I].Add('*******************************************************************');I := I + 1;
      GRID.Rows[I].Add('                         D E S P E S A S                           ');I := I + 1;
      GRID.Rows[I].Add('*******************************************************************');I := I + 1;
      GRID.Rows[I].Add('CODIGO    NOME DA CONTA                                  VALOR - R$');I := I + 1;
      GRID.Rows[I].Add('-------------------------------------------------------------------');I := I + 1;

      QRRESUMO.FIRST;
      SOMA := 0;
      WHILE NOT QRRESUMO.EOF DO
      BEGIN
        texto := qrresumo.fieldbyname('codigo').asstring;
        texto1:= qrresumo.fieldbyname('conta').asstring;
        texto2:= formatfloat('###,###,##0.00',qrresumo.fieldbyname('total').asfloat);
        while length(texto1) < 45 do texto1 := texto1+' ';
        while length(texto1) > 45 do delete(texto1,46,1);
        while length(texto2) < 11 do texto2 := ' '+texto2;
        GRID.Rows[i].Add(texto+'    '+texto1+' '+texto2);
        SOMA := SOMA + QRRESUMO.FIELDBYNAME('TOTAL').ASFLOAT;
        qrresumo.next;
        i := i+1;
      END;
      TEXTO2 := FORMATFLOAT('###,###,##0.00',SOMA);
      while length(texto2) < 11 do texto2 := ' '+texto2;
      GRID.Rows[I].Add('-------------------------------------------------------------------');
      I := I + 1;
      GRID.Rows[i].Add('TOTAL DAS DESPESAS....................................: '+TEXTO2);
      I := I + 1;

  end
  else
  begin // C A I X A    I N D I V I D U A L

      qrsoma.Close;
      qrsoma.SQL.clear;
      qrsoma.sql.add('select sum(VALOR) valor_0, '+ // sum_0
                     '(select sum(VALOR) valor from c000044 where movimento = 10 and data = :data_caixa and data = :data_caixa and codoperador = '''+frmmodulo.qrcaixa_operador.fieldbyname('codigo').AsString+'''), '+ // sum
                     '(select sum(VALOR) valor_1 from c000044 where movimento = 11 and data = :data_caixa and data = :data_caixa and codoperador = '''+frmmodulo.qrcaixa_operador.fieldbyname('codigo').AsString+'''), '+ // sum_1
                     '(select sum(VALOR) valor_2 from c000044 where movimento = 12 and data = :data_caixa and data = :data_caixa and codoperador = '''+frmmodulo.qrcaixa_operador.fieldbyname('codigo').AsString+'''), '+ // sum_2
                     '(select sum(VALOR) valor_3 from c000044 where movimento = 13 and data = :data_caixa and data = :data_caixa and codoperador = '''+frmmodulo.qrcaixa_operador.fieldbyname('codigo').AsString+'''), '+ // sum_3
                     '(select sum(VALOR) valor_4 from c000044 where movimento = 14 and data = :data_caixa and data = :data_caixa and codoperador = '''+frmmodulo.qrcaixa_operador.fieldbyname('codigo').AsString+'''), '+ // sum_4
                     '(select sum(VALOR) valor_5 from c000044 where movimento = 15 and data = :data_caixa and data = :data_caixa and codoperador = '''+frmmodulo.qrcaixa_operador.fieldbyname('codigo').AsString+''') '+ // sum_5
                     'from c000044 where data = :data_caixa and movimento = 09 and data = :data_caixa and codoperador = '''+frmmodulo.qrcaixa_operador.fieldbyname('codigo').AsString+'''');

      qrsoma.Params.ParamByName('data_caixa').asdatetime := frmmodulo.qrcaixa_operador.fieldbyname('data').asdatetime;
      qrsoma.open;
      rrec_dinheiro.Value   := qrsoma.fieldbyname('valor_0').asfloat;
      rrec_chequeav.Value   := qrsoma.fieldbyname('valor').asfloat;
      rrec_chequeap.Value   := qrsoma.fieldbyname('valor_1').asfloat;
      rrec_cartao.Value     := qrsoma.fieldbyname('valor_2').asfloat;
      rrec_juros.Value      := qrsoma.fieldbyname('valor_3').asfloat;
      rrec_desconto.Value   := qrsoma.fieldbyname('valor_4').asfloat;
      rrec_boleto.Value     := qrsoma.fieldbyname('valor_5').asfloat;


      //rrec_total.value := rrec_dinheiro.value + rrec_chequeav.value + rrec_chequeap.value + rrec_cartao.value + rrec_JUROS.value - rrec_desconto.value + rrec_boleto.value;
      rrec_total.value := rrec_dinheiro.value + rrec_chequeav.value + rrec_chequeap.value + rrec_cartao.value + rrec_boleto.value;

      qrsoma.Close;
      qrsoma.SQL.clear;
      qrsoma.sql.add('select sum(VALOR) valor_0, '+ // sum_0
                     '(select sum(VALOR) valor from c000044 where movimento = 26 and data = :data_caixa and codoperador = '''+frmmodulo.qrcaixa_operador.fieldbyname('codigo').AsString+'''), '+ // sum
                     '(select sum(VALOR) valor_1 from c000044 where movimento = 27 and data = :data_caixa and codoperador = '''+frmmodulo.qrcaixa_operador.fieldbyname('codigo').AsString+''') '+ // sum_1
                     'from c000044 where data = :data_caixa and movimento = 25 and codoperador = '''+frmmodulo.qrcaixa_operador.fieldbyname('codigo').AsString+'''');

      qrsoma.Params.ParamByName('data_caixa').asdatetime := frmmodulo.qrcaixa_operador.fieldbyname('data').asdatetime;
      qrsoma.open;
      rPAG_dinheiro.Value   := qrsoma.fieldbyname('valor_0').asfloat;
      rPAG_chequeav.Value   := qrsoma.fieldbyname('valor').asfloat;
      rPAG_chequeap.Value   := qrsoma.fieldbyname('valor_1').asfloat;
      rPAG_total.value := rPAG_dinheiro.value + rPAG_chequeav.value + rPAG_chequeap.value;

      qrresumo.close;
      qrresumo.sql.clear;
      qrresumo.sql.add('select plano.conta, plano.codigo, sum(caixa.valor) total from c000035 plano '+
                       'JOIN c000044 caixa on plano.codigo = caixa.codconta '+
                       ' and caixa.codoperador = '''+frmmodulo.qrcaixa_operador.fieldbyname('codigo').AsString+''' and caixa.data = :datax and plano.tipo = 1 group by plano.conta, plano.codigo');
      qrresumo.Params.ParamByName('datax').asdatetime := frmmodulo.qrcaixa_operador.fieldbyname('data').asdatetime;
      qrresumo.Open;

      Grid.RowCount := 300;
       GRID.Rows[0].Add('                         R E C E I T A S                           ');
      GRID.Rows[1].Add('*******************************************************************');
      GRID.Rows[2].Add('CODIGO    NOME DA CONTA                                  VALOR - R$');
      GRID.Rows[3].Add('-------------------------------------------------------------------');
      QRRESUMO.FIRST;
      i := 4;
      SOMA := 0;
      WHILE NOT QRRESUMO.EOF DO
      BEGIN
        texto := qrresumo.fieldbyname('codigo').asstring;
        texto1:= qrresumo.fieldbyname('conta').asstring;
        texto2:= formatfloat('###,###,##0.00',qrresumo.fieldbyname('total').asfloat);
        while length(texto1) < 45 do texto1 := texto1+' ';
        while length(texto1) > 45 do delete(texto1,46,1);
        while length(texto2) < 11 do texto2 := ' '+texto2;
        GRID.Rows[i].Add(texto+'    '+texto1+' '+texto2);
        SOMA := SOMA + QRRESUMO.FIELDBYNAME('TOTAL').ASFLOAT;
        qrresumo.next;
        i := i+1;
      END;
      TEXTO2 := FORMATFLOAT('###,###,##0.00',SOMA);
      while length(texto2) < 11 do texto2 := ' '+texto2;
      GRID.Rows[I].Add('-------------------------------------------------------------------');
      I := I + 1;
      GRID.Rows[i].Add('TOTAL DAS RECEITAS....................................: '+TEXTO2);
      I := I + 1;

      grid.RowCount := i + 1;

      qrresumo.close;
      qrresumo.sql.clear;
      qrresumo.sql.add('select plano.conta, plano.codigo, sum(caixa.valor) total from c000035 plano '+
                       'JOIN c000044 caixa on plano.codigo = caixa.codconta '+
                       ' and caixa.data = :datax and plano.tipo = 2 group by plano.conta, plano.codigo');
      qrresumo.Params.ParamByName('datax').asdatetime := frmmodulo.qrcaixa_operador.fieldbyname('data').asdatetime;
      qrresumo.Open;
      GRID.Rows[I].Add('*******************************************************************');I := I + 1;
      GRID.Rows[I].Add('                         D E S P E S A S                           ');I := I + 1;
      GRID.Rows[I].Add('*******************************************************************');I := I + 1;
      GRID.Rows[I].Add('CODIGO    NOME DA CONTA                                  VALOR - R$');I := I + 1;
      GRID.Rows[I].Add('-------------------------------------------------------------------');I := I + 1;

      QRRESUMO.FIRST;
      SOMA := 0;
      WHILE NOT QRRESUMO.EOF DO
      BEGIN
        texto := qrresumo.fieldbyname('codigo').asstring;
        texto1:= qrresumo.fieldbyname('conta').asstring;
        texto2:= formatfloat('###,###,##0.00',qrresumo.fieldbyname('total').asfloat);
        while length(texto1) < 45 do texto1 := texto1+' ';
        while length(texto1) > 45 do delete(texto1,46,1);
        while length(texto2) < 11 do texto2 := ' '+texto2;
        GRID.Rows[i].Add(texto+'    '+texto1+' '+texto2);
        SOMA := SOMA + QRRESUMO.FIELDBYNAME('TOTAL').ASFLOAT;
        qrresumo.next;
        i := i+1;
      END;
      TEXTO2 := FORMATFLOAT('###,###,##0.00',SOMA);
      while length(texto2) < 11 do texto2 := ' '+texto2;
      GRID.Rows[I].Add('-------------------------------------------------------------------');
      I := I + 1;
      GRID.Rows[i].Add('TOTAL DAS DESPESAS....................................: '+TEXTO2);
      I := I + 1;

      grid.RowCount := i + 1;
    end;

    end;





end;

procedure Tfrmcaixa.BitBtn4Click(Sender: TObject);
begin
  CLOSE;
end;

procedure Tfrmcaixa.BitBtn3Click(Sender: TObject);
begin
  // VERIFICAR
end;

procedure Tfrmcaixa.BitBtn2Click(Sender: TObject);
begin
  //
end;

procedure Tfrmcaixa.bcaixafechadoClick(Sender: TObject);
begin


  bincluir.Enabled := false;
  balterar.Enabled := false;
  bexcluir.Enabled := false;
  bfechar.Enabled := true;

  brelatorio.Enabled := true;

  MFECHAMENTO_CAIXA.Enabled := false;



  if frmmodulo.qrcaixa_operador.fieldbyname('situacao').asinteger = 3 then
  begin
     AberturadeNovoCaixa1.Enabled := true;
     ReaberturadeCaixa1.Enabled := false;
  end
  else
  begin
    if frmmodulo.qrcaixa_operador.FieldByName('codigo').asstring  = '000099' then
    begin
      AberturadeNovoCaixa1.Enabled := true;
      ReaberturadeCaixa1.Enabled := true;
    end
    else
    begin
      AberturadeNovoCaixa1.Enabled := false;
      ReaberturadeCaixa1.Enabled := true;
    end;
  end;




end;

procedure Tfrmcaixa.AberturadeNovoCaixa1Click(Sender: TObject);
begin
  if FRMMODULO.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING = '000099' then
  begin
    frmcaixa_abertura := tfrmcaixa_abertura.create(self);
    frmcaixa_abertura.edata.Date := date;
    frmcaixa_abertura.rsaldo.value := FRMMODULO.qrcaixa_operador.FIELDBYNAME('saldo').ASFLOAT;
    frmcaixa_abertura.ShowModal;
  end
  else
  begin
    frmcaixa_abertura_individual := tfrmcaixa_abertura_individual.create(self);
    frmcaixa_abertura_individual.edata.Date := date;
    frmcaixa_abertura_individual.rsaldo.value := 0;
    frmcaixa_abertura_individual.ShowModal;

  end;

  frmcaixa.OnShow(FRMCAIXA);

end;

procedure Tfrmcaixa.bcaixaabertoClick(Sender: TObject);
begin
  bincluir.Enabled := TRUE;
  balterar.Enabled := TRUE;
  bexcluir.Enabled := TRUE;
  bfechar.Enabled := TRUE;

  brelatorio.Enabled := true;
  ReaberturadeCaixa1.Enabled := FALSE;
  MFECHAMENTO_CAIXA.Enabled := TRUE;

  AberturadeNovoCaixa1.Enabled := FALSE;
end;

procedure Tfrmcaixa.bfecharClick(Sender: TObject);
begin
  CLOSE;
end;

procedure Tfrmcaixa.ReaberturadeCaixa1Click(Sender: TObject);
begin

    if frmprincipal.autentica('Reabrir caixa',4) then
    begin

  if FRMMODULO.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING = '000099' then
  begin
     if frmmodulo.qrcaixa_operador.fieldbyname('situacao').asinteger = 2 then
     begin
       qrmov.close;
       qrmov.SQL.Clear;
       qrmov.sql.add('delete from c000044 where data = :datax and historico like ''**RETIRADA**%'' and codoperador = ''000099''');
       qrmov.Params.ParamByName('datax').asdatetime :=  frmmodulo.qrcaixa_operador.fieldbyname('data').asdatetime;
       qrmov.execsql;

       frmmodulo.qrcaixa_operador.Edit;
       frmmodulo.qrcaixa_operador.fieldbyname('situacao').asinteger := 1;
       frmmodulo.qrcaixa_operador.fieldbyname('saldo').asfloat := 0;
       frmmodulo.qrcaixa_operador.Post;
       frmmodulo.conexao.Commit;
       frmcaixa.qrcaixa_mov.Refresh;
       frmcaixa.OnShow(frmcaixa);
       application.MessageBox('Caixa REABERTO com Sucesso!','Aviso',mb_ok+MB_ICONINFORMATION);
     end
     else
     begin
       application.messagebox('Caixa não está fechado!','Atenção',mb_ok+mb_iconerror);
       exit;
     end;
  end
  else
  begin
    if application.MessageBox('Confirma a reabertura deste caixa?','Caixa',mb_yesno+mb_iconquestion) = idyes then
    begin
      frmmodulo.qrcaixa_operador.Edit;
      frmmodulo.qrcaixa_operador.FieldByName('situacao').asinteger := 1;
      frmmodulo.qrcaixa_operador.Post;
      frmmodulo.Conexao.commit;
      LSITOPERADOR.Caption := 'ABERTO';
      LSITOPERADOR.Font.COLOR := CLBLUE;
      bcaixaabertoCLICK(FRMCAIXA);
    end;
  end;


  end;
end;

procedure Tfrmcaixa.MFECHAMENTO_CAIXAClick(Sender: TObject);
begin
  if FRMMODULO.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING = '000099' then
  begin
    frmcaixa_fechamento := tfrmcaixa_fechamento.create(self);
    FRMCAIXA_FECHAMENTO.RENTRADA.VALUE := RENTRADA.VALUE;
    FRMCAIXA_FECHAMENTO.RSAIDA.VALUE := RSAIDA.VALUE;
    FRMCAIXA_FECHAMENTO.RSALDO.VALUE := RSALDO.VALUE;
    FRMCAIXA_FECHAMENTO.RSUBSALDO.VALUE := RSALDO.VALUE;
    frmcaixa_fechamento.ldata.caption := ldatacaixa.caption;
    FRMCAIXA_FECHAMENTO.RSALDO.VALUE := rsaldo.value;
    frmcaixa_fechamento.showmodal;

    frmcaixa.OnShow(frmcaixa);







  end
  else
  begin
    if application.MessageBox('Confirma a fechamento deste caixa?','Caixa',mb_yesno+mb_iconquestion) = idyes then
    begin
      frmmodulo.qrcaixa_operador.Edit;
      frmmodulo.qrcaixa_operador.FieldByName('situacao').asinteger := 2;
      frmmodulo.qrcaixa_operador.Post;
      frmmodulo.Conexao.commit;
      LSITOPERADOR.Caption := 'FECHADO';
      LSITOPERADOR.Font.COLOR := CLRED;
      bcaixaFECHADOCLICK(FRMCAIXA);
      IF APPLICATION.MessageBox('Deseja imprimir a folha de caixa?','Aviso',mb_yesno+mb_iconquestion) = idyes then
      begin
        FRMLISTA_CAIXA2 := TFRMLISTA_CAIXA2.CREATE(SELF);
        FRMLISTA_CAIXA2.SHOWMODAL;
      end;
    end;
  end;
end;

procedure Tfrmcaixa.wwDBGrid1DrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
IF qrcaixa_mov.FieldByName('SAIDA').ASFLOAT > 0 THEN
   WWDBGRID1.Canvas.Font.Color := CLRED;

wwDbgrid1.DefaultDrawDataCell(Rect, field, State);
end;

procedure Tfrmcaixa.bincluirClick(Sender: TObject);
begin
  qrcaixa_mov.Insert;
  qrcaixa_mov.FieldByName('codigo').AsString := frmprincipal.codifica('000044');
  qrcaixa_mov.fieldbyname('codoperador').asstring := frmmodulo.qrcaixa_operador.fieldbyname('codigo').asstring;
  qrcaixa_mov.fieldbyname('codcaixa').asstring := frmmodulo.qrcaixa_operador.fieldbyname('codigo').asstring;
  qrcaixa_mov.FieldByName('data').asdatetime := frmmodulo.qrcaixa_operador.fieldbyname('data').asdatetime;

  frmcaixa_ficha := tfrmcaixa_ficha.create(self);
  frmcaixa_ficha.showmodal;

  QRCAIXA_MOV.Last;
end;

procedure Tfrmcaixa.balterarClick(Sender: TObject);
var cod : string;
begin
  IF (QRCAIXA_MOV.FIELDBYNAME('movimento').ASINTEGER = 1) OR (QRCAIXA_MOV.FIELDBYNAME('movimento').ASINTEGER = 2) THEN
  BEGIN
    cod := qrcaixa_mov.fieldbyname('codigo').asstring;
    qrcaixa_mov.edit;
    if qrcaixa_mov.FieldByName('movimento').asinteger = 2 then
    begin
      qrcaixa_mov.FieldByName('valor').Asfloat := qrcaixa_mov.FieldByName('valor').Asfloat * (-1);
    end;
    frmcaixa_ficha := tfrmcaixa_ficha.create(self);
    frmcaixa_ficha.showmodal;

    qrcaixa_mov.Locate('codigo',cod,[loCaseInsensitive]);
  END
  ELSE
  BEGIN
    APPLICATION.MEssagebox('Este lançamento não pode ser alterado!','Aviso',mb_ok+MB_ICONWARNING);
  END;
end;

procedure Tfrmcaixa.brelatorioClick(Sender: TObject);
begin
  If frmprincipal.acesso(codigo_usuario,'06.04') = 'NAO' then
  begin
    application.messagebox('Acesso não permitido!','Atenção',mb_ok+MB_ICONERROR);
    exit;
  end;

  FRMLISTA_CAIXA2 := TFRMLISTA_CAIXA2.CREATE(SELF);
  FRMLISTA_CAIXA2.SHOWMODAL;
end;

procedure Tfrmcaixa.bexcluirClick(Sender: TObject);
begin
  IF (QRCAIXA_MOV.FIELDBYNAME('movimento').ASINTEGER = 1) OR (QRCAIXA_MOV.FIELDBYNAME('movimento').ASINTEGER = 2) THEN
  BEGIN
    if frmprincipal.autentica('Excluir Lancto.caixa',4) then
    begin
      RENTRADA.Value := RENTRADA.Value - frmcaixa.qrcaixa_mov.fieldbyname('entrada').asfloat;
      Rsaida.Value :=   Rsaida.Value - frmcaixa.qrcaixa_mov.fieldbyname('saida').asfloat;
      frmcaixa.RSALDO.value := rentrada.value - rsaida.value;

      frmprincipal.log(codigo_usuario,'CAIXA',qrCAIXA_MOV.fieldbyname('codigo').asstring,'EXCLUIU',qrCAIXA_MOV.fieldbyname('historico').asstring);
      qrcaixa_mov.delete;
      frmmodulo.Conexao.Commit;
    end
    else
    begin
      Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
    end;
  end
  else
  begin
    APPLICATION.MEssagebox('Este lançamento não pode ser excluído!','Aviso',mb_ok+MB_ICONWARNING);
  end;
end;

procedure Tfrmcaixa.Incluir1Click(Sender: TObject);
begin
  if bincluir.Enabled then bincluirClick(frmcaixa);
end;

procedure Tfrmcaixa.Alterar1Click(Sender: TObject);
begin
 if balterar.Enabled then balterarClick(frmcaixa);
end;

procedure Tfrmcaixa.Excluir1Click(Sender: TObject);
begin
 if bexcluir.Enabled then bexcluirClick(frmcaixa);
end;

procedure Tfrmcaixa.Relatrios2Click(Sender: TObject);
begin
 if brelatorio.Enabled then brelatorioClick(frmcaixa);
end;

procedure Tfrmcaixa.Sair2Click(Sender: TObject);
begin
   if bfechar.Enabled then bfecharClick(frmcaixa);
end;

end.
{

// - 12345678901234567890

00 - IMPLANTAÇÃO DE SALDO
01 - LANCTO. ENTRADA
02 - LANCTO. SAIDA
03 - VENDA DINHEIRO
04 - VENDA CREDIARIO
05 - VENDA CHEQUE A VISTA
06 - VENDA CHEQUE A PRAZO
07 - VENDA CARTAO CREDITO
08 - VENDA CARTAO DEBITO
09 - RECEBTO. DINHEIRO
10 - RECEBTO. CHEQUE A.V.
11 - RECEBTO. CHEQUE A.P.
13 - RECEBTO. DE JUROS
14 - DESCONTO NO RECEBTO.
15 - RECEBTO. CARTAO
16 - RECEBTO. BOLETO
17 - OUTRAS ENTRADAS
18 - OUTRAS SAIDAS
19 - O.S. DINHEIRO
20 - O.S. CREDIARIO
21 - O.S. CHEQUE A VISTA
22 - O.S. CHEQUE A PRAZO
23 - O.S. CARTAO CREDITO
24 - O.S. CARTAO DEBITO
25 - PAGTO - DINHEIRO
26 - PAGTO - CHEQUE
27 - PAGTO - CHEQUE TERC.
28 - PAGTO - OUTROS
29 - PAGTO - CARTÃO DÉB.
30 - PAGTO - JUROS
31 - PAGTO - DEBITO CONTA

40 - VENDA CONVENIO
41 - VENDA CONVENIO VIDALINK
42 - VENDA FINANCEIRA



}
