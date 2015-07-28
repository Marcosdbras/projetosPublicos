unit lista_caixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, Buttons, Mask, ToolEdit, Collection, ExtCtrls,
  RpDefine, RpCon, RpConDS, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset;

type
  TFrmlista_caixa = class(TForm)
    Panel1: TPanel;
    ViewSplit2: TViewSplit;
    HeaderView1: THeaderView;
    FlipView1: TFlipView;
    rfolha: TRadioButton;
    rsaidas: TRadioButton;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    ViewSplit1: TViewSplit;
    bimprimir: TBitBtn;
    bcancelar: TBitBtn;
    PopupMenu1: TPopupMenu;
    Imprimir1: TMenuItem;
    Cancelar1: TMenuItem;
    rrecebimentos: TRadioButton;
    rfluxo: TRadioButton;
    gcaixa: TGroupBox;
    ecaixa: TEdit;
    bloccaixa: TBitBtn;
    enomecaixa: TEdit;
    qrcaixa_mov: TZQuery;
    qrcaixa_movCODOPERADOR: TStringField;
    qrcaixa_movDESCRICAO_MOVIMENTO: TStringField;
    qrcaixa_movHISTORICO: TStringField;
    qrcaixa_movVALOR: TFloatField;
    qrcaixa_movENTRADA: TFloatField;
    qrcaixa_movSAIDA: TFloatField;
    qrcaixa_movCODCAIXA: TStringField;
    qrcaixa_movCODIGO: TStringField;
    qrcaixa_movDATA: TDateTimeField;
    qrcaixa_movCODCONTA: TStringField;
    qrcaixa_movMOVIMENTO: TIntegerField;
    qrcaixa_movCONTA: TStringField;
    rvcaixa_mov: TRvDataSetConnection;
    Qrsoma: TZQuery;
    qrresumo: TZQuery;
    rvsoma: TRvDataSetConnection;
    rvresumo_caixa: TRvDataSetConnection;
    gfluxo: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox3: TCheckBox;
    procedure bloccaixaClick(Sender: TObject);
    procedure ecaixaExit(Sender: TObject);
    procedure ecaixaKeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure bcancelarClick(Sender: TObject);
    procedure bimprimirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ecaixaEnter(Sender: TObject);
    procedure DateEdit1Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qrcaixa_movCalcFields(DataSet: TDataSet);
    procedure rfolhaClick(Sender: TObject);
    procedure rfluxoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frmlista_caixa: TFrmlista_caixa;

implementation

uses loc_caixa, modulo, principal;

{$R *.dfm}

procedure TFrmlista_caixa.bloccaixaClick(Sender: TObject);
begin
  frmloc_caixa := tfrmloc_caixa.create(self);
  frmloc_caixa.showmodal;
  enomecaixa.Text := frmmodulo.qrcaixa_OPERADOR.fieldbyname('nome').asstring;
  ecaixa.Text := frmmodulo.qrcaixa_OPERADOR.fieldbyname('codigo').asstring;
  DATEEDIT1.setfocus;
end;

procedure TFrmlista_caixa.ecaixaExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  ecaixa.text := frmprincipal.zerarcodigo(ecaixa.text,6);
  if ecaixa.text <> '000000' then
  begin
     if not frmprincipal.Locregistro(frmmodulo.qrcaixa_OPERADOR,ecaixa.text,'codigo') then
        bloccaixaclick(Frmlista_CAIXA)
     else
     begin
       ecaixa.Text := frmmodulo.qrcaixa_OPERADOR.fieldbyname('codigo').asstring;
       enomecaixa.Text := frmmodulo.qrcaixa_OPERADOR.fieldbyname('nome').asstring;
       DATEEDIT1.setfocus;
     end;
  end
  else
  begin
    ENOMECAIXA.Text := '';
    bloccaixa.setfocus;
  end;
end;

procedure TFrmlista_caixa.ecaixaKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure TFrmlista_caixa.DateEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bimprimir.setfocus;
end;

procedure TFrmlista_caixa.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure TFrmlista_caixa.bimprimirClick(Sender: TObject);
var caixa, periodo : string;
begin
  frmmodulo.qrrelatorio.open;
  frmmodulo.qrrelatorio.edit;
  if (ecaixa.Text = '000000') or (ecaixa.Text = '')   then caixa    := '' else caixa := ' and codoperador = '''+ecaixa.text+'''';
  periodo := ' data_vencimento >= :datai and data_vencimento <= :dataf ';
  frmmodulo.qrrelatorio.FieldByName('linha5').AsString := dateedit1.text+' a '+dateedit2.text;
  frmmodulo.qrrelatorio.FieldByName('linha3').AsString := ecaixa.Text+' '+enomecaixa.text;





         qrsoma.Close;
         qrsoma.SQL.clear;
         qrsoma.sql.add('select sum(entrada) total_entrada, sum(saida) total_saida, '+ // total_entrada e total_saida
                        '(select sum(VALOR) from c000044 where movimento = 03 and data >= :datai and data <= :dataf '+caixa+'), '+ // sum
                        '(select sum(VALOR) from c000044 where movimento = 04 and data >= :datai and data <= :dataf '+caixa+'), '+ // sum_1
                        '(select sum(VALOR) from c000044 where movimento = 05 and data >= :datai and data <= :dataf '+caixa+'), '+ // sum_2
                        '(select sum(VALOR) from c000044 where movimento = 06 and data >= :datai and data <= :dataf '+caixa+'), '+ // sum_3
                        '(select sum(VALOR) from c000044 where movimento = 07 and data >= :datai and data <= :dataf '+caixa+'), '+ // sum_4
                        '(select sum(VALOR) from c000044 where movimento = 08 and data >= :datai and data <= :dataf '+caixa+'), '+ // sum_5
                        '(select sum(VALOR) from c000044 where movimento = 09 and data >= :datai and data <= :dataf '+caixa+'), '+ // 6 rec dinheiro
                        '(select sum(VALOR) from c000044 where movimento = 10 and data >= :datai and data <= :dataf '+caixa+'), '+ // 7 rec che av
                        '(select sum(VALOR) from c000044 where movimento = 11 and data >= :datai and data <= :dataf '+caixa+'), '+ // 8 rec che ap
                        '(select sum(VALOR) from c000044 where movimento = 12 and data >= :datai and data <= :dataf '+caixa+'), '+ // 9 rec cartao
                        '(select sum(VALOR) from c000044 where movimento = 13 and data >= :datai and data <= :dataf '+caixa+'), '+ // 10 rec juros
                        '(select sum(VALOR) from c000044 where movimento = 14 and data >= :datai and data <= :dataf '+caixa+'), '+ // 11 rec desconto
                        '(select sum(VALOR) from c000044 where movimento = 15 and data >= :datai and data <= :dataf '+caixa+'), '+ // 12 rec boleto
                        '(select sum(VALOR) from c000044 where movimento = 25 and data >= :datai and data <= :dataf '+caixa+'), '+ // 13 pagar - caixa
                        '(select sum(VALOR) from c000044 where movimento = 26 and data >= :datai and data <= :dataf '+caixa+'), '+ // 14 pagar - banco
                        '(select sum(VALOR) from c000044 where movimento = 27 and data >= :datai and data <= :dataf '+caixa+'), '+ // 15 pagar - terceiro
                        '(select sum(VALOR) from c000044 where movimento = 2 and data >= :datai and data <= :dataf '+caixa+'), '+ // 16 LANCTO SAIDA
                        '(select sum(VALOR) from c000044 where movimento = 17 and data >= :datai and data <= :dataf '+caixa+') '+ // 17 OUTRAS SAIDAS

                        'from c000044 where  data >= :datai and data <= :dataf '+caixa);
         qrsoma.Params.ParamByName('datai').asdatetime := dateedit1.date;
         qrsoma.Params.ParamByName('dataf').asdatetime := dateedit2.date;
         qrsoma.open;


         frmmodulo.qrrelatorio.FieldByName('valor1').Asfloat := qrsoma.fieldbyname('total_entrada').asfloat;
         frmmodulo.qrrelatorio.FieldByName('valor2').Asfloat := qrsoma.fieldbyname('total_saida').asfloat;
         frmmodulo.qrrelatorio.FieldByName('valor3').Asfloat := qrsoma.fieldbyname('total_entrada').asfloat - qrsoma.fieldbyname('total_saida').asfloat;

         frmmodulo.qrrelatorio.FieldByName('valor4').Asfloat   := qrsoma.fieldbyname('sum').asfloat; // dinheiro
         frmmodulo.qrrelatorio.FieldByName('valor5').Asfloat   := qrsoma.fieldbyname('sum_1').asfloat; // crediario
         frmmodulo.qrrelatorio.FieldByName('valor6').Asfloat   := qrsoma.fieldbyname('sum_2').asfloat; // cheque a vista
         frmmodulo.qrrelatorio.FieldByName('valor7').Asfloat   := qrsoma.fieldbyname('sum_3').asfloat; // cheque a prazo
         frmmodulo.qrrelatorio.FieldByName('valor8').Asfloat   := qrsoma.fieldbyname('sum_4').asfloat; // cartao cred
         frmmodulo.qrrelatorio.FieldByName('valor9').Asfloat   := qrsoma.fieldbyname('sum_5').asfloat; // cartao deb

         frmmodulo.qrrelatorio.FieldByName('valor10').Asfloat := qrsoma.fieldbyname('sum').asfloat +
                                                                 qrsoma.fieldbyname('sum_1').asfloat +
                                                                 qrsoma.fieldbyname('sum_2').asfloat +
                                                                 qrsoma.fieldbyname('sum_3').asfloat +
                                                                 qrsoma.fieldbyname('sum_4').asfloat +
                                                                 qrsoma.fieldbyname('sum_5').asfloat ;





      frmmodulo.qrrelatorio.FieldByName('valor11').Asfloat   := qrsoma.fieldbyname('sum_6').asfloat; // DINHEIRO
      frmmodulo.qrrelatorio.FieldByName('valor12').Asfloat   := qrsoma.fieldbyname('sum_7').asfloat; // CHEQUE AV
      frmmodulo.qrrelatorio.FieldByName('valor13').Asfloat   := qrsoma.fieldbyname('sum_8').asfloat; // CHEQUE AP
      frmmodulo.qrrelatorio.FieldByName('valor14').Asfloat     := qrsoma.fieldbyname('sum_9').asfloat; // CARTAO

      frmmodulo.qrrelatorio.FieldByName('valor15').Asfloat      := qrsoma.fieldbyname('sum_10').asfloat; // JUROS
      frmmodulo.qrrelatorio.FieldByName('valor16').Asfloat   := qrsoma.fieldbyname('sum_11').asfloat; // DESCONTO
      frmmodulo.qrrelatorio.FieldByName('valor17').Asfloat     := qrsoma.fieldbyname('sum_12').asfloat; //BOLETO

      frmmodulo.qrrelatorio.FieldByName('valor18').Asfloat := qrsoma.fieldbyname('sum_6').asfloat + // TOTAL
                                                                 qrsoma.fieldbyname('sum_7').asfloat +
                                                                 qrsoma.fieldbyname('sum_8').asfloat +
                                                                 qrsoma.fieldbyname('sum_9').asfloat +
                                                                 qrsoma.fieldbyname('sum_12').asfloat ;

      frmmodulo.qrrelatorio.FieldByName('valor19').Asfloat   := qrsoma.fieldbyname('sum_13').asfloat;
      frmmodulo.qrrelatorio.FieldByName('valor20').Asfloat   := qrsoma.fieldbyname('sum_14').asfloat;
      frmmodulo.qrrelatorio.FieldByName('valor21').Asfloat   := qrsoma.fieldbyname('sum_15').asfloat;

      frmmodulo.qrrelatorio.FieldByName('valor22').Asfloat   := qrsoma.fieldbyname('sum_13').asfloat +
                                                                qrsoma.fieldbyname('sum_14').asfloat +
                                                                qrsoma.fieldbyname('sum_15').asfloat;

      frmmodulo.qrrelatorio.FieldByName('valor25').Asfloat   := qrsoma.fieldbyname('sum_16').asfloat +
                                                                qrsoma.fieldbyname('sum_17').asfloat ;





    if rfolha.Checked then
    begin
      qrcaixa_mov.close;
      qrcaixa_mov.SQL.Clear;
      qrcaixa_mov.sql.add('select * from c000044 where data >= :datai and data <= :dataf '+caixa+' order by codigo');
      qrcaixa_mov.Params.ParamByName('datai').asdatetime := dateedit1.date;
      qrcaixa_mov.Params.ParamByName('dataf').asdatetime := dateedit2.date;
      qrcaixa_mov.open;

      frmmodulo.qrrelatorio.post;
      frmmodulo.rel_system.SystemPreview.ZoomFactor := 110;
      frmmodulo.relatorio.ExecuteReport('RelCaixa_Folha');
   end;
   if rrecebimentos.Checked then
   begin

         frmmodulo.qrrelatorio.FieldByName('valor10').Asfloat := frmmodulo.qrrelatorio.FieldByName('valor4').Asfloat +
                                                                 frmmodulo.qrrelatorio.FieldByName('valor6').Asfloat +
                                                                 frmmodulo.qrrelatorio.FieldByName('valor9').Asfloat ;

         frmmodulo.qrrelatorio.FieldByName('valor22').Asfloat := frmmodulo.qrrelatorio.FieldByName('valor18').Asfloat+frmmodulo.qrrelatorio.FieldByName('valor10').Asfloat;
      qrcaixa_mov.close;
      qrcaixa_mov.SQL.Clear;
      qrcaixa_mov.sql.add('select * from c000044 where data >= :datai and data <= :dataf '+caixa+' and movimento in (3,5,8,9,10,11,15,16) order by codigo');
      qrcaixa_mov.Params.ParamByName('datai').asdatetime := dateedit1.date;
      qrcaixa_mov.Params.ParamByName('dataf').asdatetime := dateedit2.date;
      qrcaixa_mov.open;

      frmmodulo.qrrelatorio.post;
      frmmodulo.rel_system.SystemPreview.ZoomFactor := 110;
      frmmodulo.relatorio.ExecuteReport('RelCaixa_recebimento');
   end;

   if rsaidas.Checked then
   begin



         frmmodulo.qrrelatorio.FieldByName('valor1').Asfloat :=
         frmmodulo.qrrelatorio.FieldByName('valor22').Asfloat +
         frmmodulo.qrrelatorio.FieldByName('valor25').Asfloat;



      qrcaixa_mov.close;
      qrcaixa_mov.SQL.Clear;
      qrcaixa_mov.sql.add('select * from c000044 where data >= :datai and data <= :dataf '+caixa+' and movimento in (2,17,22,26,27) order by codigo');
      qrcaixa_mov.Params.ParamByName('datai').asdatetime := dateedit1.date;
      qrcaixa_mov.Params.ParamByName('dataf').asdatetime := dateedit2.date;
      qrcaixa_mov.open;

      frmmodulo.qrrelatorio.post;
      frmmodulo.rel_system.SystemPreview.ZoomFactor := 110;
      frmmodulo.relatorio.ExecuteReport('RelCaixa_pagamento');
   end;














end;

procedure TFrmlista_caixa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TFrmlista_caixa.ecaixaEnter(Sender: TObject);
begin
  tedit(sender).color := clyellow;
end;

procedure TFrmlista_caixa.DateEdit1Exit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
end;

procedure TFrmlista_caixa.FormShow(Sender: TObject);
begin
  FRMMODULO.QRCAIXA_OPERADOR.CLOSE;
  FRMMODULO.QRCAIXA_OPERADOR.SQL.CLEAR;
  FRMMODULO.QRCAIXA_OPERADOR.SQL.ADD('SELECT * FROM C000045 ORDER BY CODIGO');
  FRMMODULO.QRCAIXA_OPERADOR.OPEN;
  FRMMODULO.QRCAIXA_OPERADOR.INDEXFIELDNAMES := 'CODIGO';
  ecaixa.setfocus;
end;

procedure TFrmlista_caixa.qrcaixa_movCalcFields(DataSet: TDataSet);
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

procedure TFrmlista_caixa.rfolhaClick(Sender: TObject);
begin
  gfluxo.visible := false;
  gcaixa.visible := true;
end;

procedure TFrmlista_caixa.rfluxoClick(Sender: TObject);
begin
  gfluxo.visible := true;
  gcaixa.visible := false;

  // verificar

end;

end.

