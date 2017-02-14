unit etiquetador;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, TFlatPanelUnit, Mask, DBCtrls, wwdblook, StdCtrls, Wwdbdlg,
  dxCore,  Grids, DBGrids, Db, Wwdatsrc, DBTables, Wwtable,
  Wwdbigrd, Wwdbgrid, Buttons, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, Collection, Menus, frxClass, frxDBSet, frxDesgn, frxBarcode,
  ComCtrls, wwdbedit, rxtooledit, AdvGlowButton, RzEdit;

type
  Tfrmetiquetador = class(TForm)
    dsetiq: TwwDataSource;
    wwDBGrid1: TwwDBGrid;
    qretiq: TZQuery;
    qretiqCODPRODUTO: TStringField;
    qretiqQTDE: TIntegerField;
    pimprimir: THeaderView;
    HeaderView2: THeaderView;
    ComboBox1: TComboBox;
    Label8: TLabel;
    Label9: TLabel;
    combo_impressora: TComboBox;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    COMBOPRODUTO: TwwDBLookupCombo;
    COMBOCODIGO: TwwDBLookupComboDlg;
    qretiqPRODUTO: TStringField;
    qretiqVALOR: TFloatField;
    qretiqUNIDADE: TStringField;
    PopupMenu1: TPopupMenu;
    Fechar1: TMenuItem;
    BitBtn1: TBitBtn;
    frxDesigner1: TfrxDesigner;
    fxproduto: TfrxReport;
    fsproduto: TfrxDBDataset;
    qretiqlocalizacao: TStringField;
    qretiqfornecedor: TStringField;
    qretiqmarca: TStringField;
    qretiqcomplemento: TStringField;
    qretiqauto_aplicacao: TStringField;
    qretiqcodbarra: TStringField;
    QRPRODUTO: TZQuery;
    QRPRODUTOCODIGO: TStringField;
    QRPRODUTOCODBARRA: TStringField;
    QRPRODUTOPRODUTO: TStringField;
    QRPRODUTOUNIDADE: TStringField;
    QRPRODUTOLOCALIZACAO: TStringField;
    QRPRODUTOCOMPLEMENTO: TStringField;
    QRPRODUTOAPLICACAO: TStringField;
    QRPRODUTOFORNECEDOR: TStringField;
    QRPRODUTOMARCA: TStringField;
    QRPRODUTOESTOQUE: TFloatField;
    QRPRODUTOPRECO: TFloatField;
    frxBarCodeObject1: TfrxBarCodeObject;
    Pimport: THeaderView;
    HeaderView3: THeaderView;
    bar: TProgressBar;
    qrproduto_mov: TZQuery;
    qrproduto_movDATA: TDateTimeField;
    qrproduto_movCODNOTA: TStringField;
    qrproduto_movNUMERONOTA: TStringField;
    qrproduto_movMOV: TStringField;
    qrproduto_movUNITARIO: TFloatField;
    qrproduto_movTOTAL: TFloatField;
    qrproduto_movCODPRODUTO: TStringField;
    qrproduto_movICMS: TFloatField;
    qrproduto_movIPI: TFloatField;
    qrproduto_movCFOP: TStringField;
    qrproduto_movCODCLIENTE: TStringField;
    qrproduto_movDESCONTO: TFloatField;
    qrproduto_movACRESCIMO: TFloatField;
    qrproduto_movCODIGO: TStringField;
    qrproduto_movCODVENDEDOR: TStringField;
    qrproduto_movMOVIMENTO: TIntegerField;
    qrproduto_movCODGRADE: TStringField;
    qrproduto_movSERIAL: TStringField;
    qrproduto_movUNIDADE: TStringField;
    qrproduto_movQTDE: TFloatField;
    qrproduto_movVALOR_ICMS: TFloatField;
    qrproduto_movICMS_REDUZIDO: TFloatField;
    qrproduto_movBASE_CALCULO: TFloatField;
    qrproduto_movproduto: TStringField;
    qrproduto_movprecovenda: TFloatField;
    Query1: TQuery;
    QRPRODUTORESTRITO: TStringField;
    QRPRODUTOPRECOCUSTO: TFloatField;
    qretiqTAMANHO: TStringField;
    qretiqTEXTO: TStringField;
    RVALOR: TwwDBEdit;
    qrgrade: TZQuery;
    QRPRODUTOULTIMA_COMPRA: TDateTimeField;
    qretiqultima_compra: TDateField;
    qrremarcados: TZQuery;
    pperiodo: THeaderView;
    HeaderView4: THeaderView;
    Label11: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    query: TZQuery;
    bgerar: TAdvGlowButton;
    BitBtn2: TAdvGlowButton;
    bexcluir: TAdvGlowButton;
    BitBtn3: TAdvGlowButton;
    bfechar: TAdvGlowButton;
    Bevel1: TBevel;
    bok: TAdvGlowButton;
    pdesconto: THeaderView;
    HeaderView5: THeaderView;
    bdesconto: TAdvGlowButton;
    edesconto: TRzNumericEdit;
    Label3: TLabel;
    procedure FormShow(Sender: TObject);
    procedure bfecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bexcluirClick(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure bgerarClick(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure ComboBox1Enter(Sender: TObject);
    procedure combo_impressoraEnter(Sender: TObject);
    procedure ComboBox1Exit(Sender: TObject);
    procedure combo_impressoraExit(Sender: TObject);
    procedure ComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure eprodutoKeyPress(Sender: TObject; var Key: Char);
    procedure eqtdeEnter(Sender: TObject);
    procedure eqtdeExit(Sender: TObject);
    procedure eprodutoEnter(Sender: TObject);
    procedure COMBOCODIGOExit(Sender: TObject);
    procedure COMBOPRODUTOExit(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure QRPRODUTOCalcFields(DataSet: TDataSet);
    procedure BitBtn3Click(Sender: TObject);
    procedure bokClick(Sender: TObject);
    procedure DateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit2Exit(Sender: TObject);
    procedure DateEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure bdescontoClick(Sender: TObject);
    procedure edescontoExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmetiquetador: Tfrmetiquetador;
  vdesconto : double;
  vetq_07,vetq_07_1,vetq_07_2 : Integer;

implementation

uses Principal, Modulo,xloc_produto_entrada, Math, filial,
  etiqueta_grade;

{$R *.DFM}

procedure Tfrmetiquetador.FormShow(Sender: TObject);
begin
  combobox1.ItemIndex := 1;
  qretiq.close;
  qretiq.SQL.clear;
  qretiq.sql.add('delete from cl00005');
  qretiq.ExecSQL;
  qretiq.SQL.Clear;
  qretiq.SQL.add('select * from cl00005');
  qretiq.open;

  frmmodulo.qrproduto.Close;
  frmmodulo.qrproduto.sql.clear;
  frmmodulo.qrproduto.sql.add('select * from c000025 order by produto');
  frmmodulo.qrproduto.open;
  frmmodulo.qrproduto.IndexFieldNames := 'produto';

end;

procedure Tfrmetiquetador.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmetiquetador.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmetiquetador.bexcluirClick(Sender: TObject);
begin
  qretiq.Delete;
  frmmodulo.Conexao.Commit;
end;

procedure Tfrmetiquetador.BitBtn9Click(Sender: TObject);
begin
  pimprimir.visible := false;
end;

procedure Tfrmetiquetador.bgerarClick(Sender: TObject);
begin
   pimprimir.visible := true;
   combobox1.setfocus;
end;

procedure Tfrmetiquetador.BitBtn8Click(Sender: TObject);
var
  q : real;
  f,arquivo, txt : textfile;
  ETIQ : INTEGER;
  EMP1, EMP2, EMP3, EMP4, EMP5, EMP6, texto,cod1,cod2,cod3,cod4,cod5,cod6,valor1,valor2,valor3,valor4,valor5,prod1,prod2,prod3,prod4,prod5, prod6 : string;
  DAT1, DAT2, DAT3 , TAM1, TAM2, TAM3: string;
  COD_EXTRA1, COD_EXTRA2 : String;

  entrada : string;
  xx, avista1, avista2, prestacao1, prestacao2 : string;
  vparcelas, vparcelas1, vvista, vprazo : double;
  qa, i : integer;
begin



 if combobox1.ItemIndex = 13 then
 begin
    application.ProcessMessages;
    qa := qretiq.recordcount;
    ASSIGNFILE(F,'c:\etiqueta.prn');
    REWRITE(F);
    WRITELN(F,'c0000');
    WRITELN(F,'KI503');
    WRITELN(F,'O0220');
    WRITELN(F,'f220');
    WRITELN(F,'KW0425');
    WRITELN(F,'KI7');
    WRITELN(F,'V0');
    WRITELN(F,'L');
    WRITELN(F,'H13');
    WRITELN(F,'PC');

    QRPRODUTO.CLOSE;
    QRPRODUTO.SQL.CLEAR;
    QRPRODUTO.SQL.ADD('DELETE FROM CL00007');
    QRPRODUTO.ExecSQL;

    QRPRODUTO.CLOSE;
    QRPRODUTO.SQL.CLEAR;
    QRPRODUTO.SQL.ADD('SELECT * FROM CL00007');
    QRPRODUTO.OPEN;


    qretiq.FIRST;
    WHILE NOT QRETIQ.EOF DO
    BEGIN
      FOR I := 1 TO QRETIQ.FIELDBYNAME('QTDE').ASINTEGER DO
      BEGIN
        QRPRODUTO.INSERT;
        QRPRODUTO.FIELDBYNAME('CODIGO').ASSTRING := QRETIQ.FIELDBYNAME('CODPRODUTO').ASSTRING;
        QRPRODUTO.FIELDBYNAME('CODbarra').ASSTRING := QRETIQ.FIELDBYNAME('CODbarra').ASSTRING;
        QRPRODUTO.FIELDBYNAME('PRODUTO').ASSTRING := QRETIQ.FIELDBYNAME('PRODUTO').ASSTRING;
        QRPRODUTO.FIELDBYNAME('PRECO').ASFLOAT := QRETIQ.FIELDBYNAME('VALOR').ASFLOAT;
        QRPRODUTO.FIELDBYNAME('complemento').ASSTRING := QRETIQ.FIELDBYNAME('texto').ASSTRING;
        QRPRODUTO.FIELDBYNAME('marca').ASSTRING := QRETIQ.FIELDBYNAME('marca').ASSTRING;
        QRPRODUTO.POST;
      END;
      QRETIQ.NEXT;
    END;
    QRPRODUTO.Refresh;
    i := qrproduto.RecordCount;


    xx := frmPrincipal.zerarcodigo(inttostr(i),2);
    qa := 0;
    qrproduto.first;
      while not qrproduto.eof do
      begin
        cod1 := ''; cod2 := ''; cod3 := ''; cod4 := ''; cod5 := '';
        prod1 := ''; prod2 := ''; prod3 := ''; prod4 := ''; prod5 := ''; prod6 := '';
        valor1 := ''; valor2 := ''; valor3 := ''; valor4 := ''; valor5 := '';
        EMP1 := ''; EMP2 := ''; EMP3 := ''; EMP4 := ''; EMP5 := '';
        PROD1 := qrproduto.FIELDBYNAME('PRODUTO').ASSTRING;
        WHILE LENGTH(PROD1) > 25 DO DELETE(PROD1,26,1);
        prod2 := qrproduto.FIELDBYNAME('CODbarra').ASSTRING;
        VALOR1 := 'R$ '+FORMATFLOAT('###,###,##0.00',qrproduto.FIELDBYNAME('preco').ASFLOAT);
        COD1 := qrproduto.FIELDBYNAME('CODigo').ASSTRING; WHILE LENGTH(COD1) < 6 DO COD1 := '0'+COD1;
        EMP1 := qrproduto.FIELDBYNAME('restrito').ASSTRING;

        qrproduto.next;
        qa := qa + 1;

        if qa <> i then
        begin

          PROD3 := qrproduto.FIELDBYNAME('PRODUTO').ASSTRING;
          WHILE LENGTH(PROD3) > 25 DO DELETE(PROD3,26,1);
          prod4 := qrproduto.FIELDBYNAME('CODbarra').ASSTRING;
          VALOR2 := 'R$ '+FORMATFLOAT('###,###,##0.00',qrproduto.FIELDBYNAME('preco').ASFLOAT);
          COD2 := qrproduto.FIELDBYNAME('CODigo').ASSTRING; WHILE LENGTH(COD2) < 6 DO COD1 := '0'+COd2;
          EMP2 := qrproduto.FIELDBYNAME('restrito').ASSTRING;
          qrproduto.next;
          qa := qa + 1;
          if LENGTH(PROD1) > 25 then DELETE(PROD2,26,1);

          if qa <> i then
          begin

            PROD5 := qrproduto.FIELDBYNAME('PRODUTO').ASSTRING;
            WHILE LENGTH(PROD5) > 25 DO DELETE(PROD5,26,1);
            prod6 := qrproduto.FIELDBYNAME('CODbarra').ASSTRING;
            VALOR3 := 'R$ '+FORMATFLOAT('###,###,##0.00',qrproduto.FIELDBYNAME('preco').ASFLOAT);
            COD3 := qrproduto.FIELDBYNAME('CODigo').ASSTRING; WHILE LENGTH(COD3) < 6 DO COD3 := '0'+COD3;
            EMP3:= qrproduto.FIELDBYNAME('restrito').ASSTRING;
            qrproduto.next;
            qa := qa + 1;
          end;
        end;

        WRITELN(F,'A2');
        WRITELN(F,'D11');

        WRITELN(F,'1a4202000120016'+cod1);
        WRITELN(F,'191100200640010'+'Cod: '+prod2);
        WRITELN(F,'191100400330016'+valor1);
        WRITELN(F,'121100000010026'+emitente_fantasia);
        WRITELN(F,'191100100650085'+emp1);
        WRITELN(F,'191100100530010'+prod1);

        if prod3 <> '' then
        begin
          WRITELN(F,'1a4202000120158'+cod2);
          WRITELN(F,'191100200640152'+'Cod: '+prod4);
          WRITELN(F,'191100400330158'+valor2);
          WRITELN(F,'121100000010168'+emitente_fantasia);
          WRITELN(F,'191100100650227'+emp2);
          WRITELN(F,'191100100530152'+prod3);

        end;
        if prod5 <> '' then
        begin
          WRITELN(F,'1a4202000120300'+cod3);
          WRITELN(F,'191100200640294'+'Cod: '+prod6);
          WRITELN(F,'191100400330300'+valor3);
          WRITELN(F,'121100000010310'+emitente_fantasia);
          WRITELN(F,'191100100650369'+emp3);
          WRITELN(F,'191100100530294'+prod5);
        end;

//        qa := qa + 1;
        writeln(f,'^'+xx);
        writeln(f,'Q0001');
        writeln(f,'E');
        if i <> qa then
        begin
          writeln(f,'L');
        end;
      END;


      CLOSEFILE(F);

      application.ProcessMessages;

      assignfile(txt,'c:\etiqueta.prn');
      reset(txt);
      assignfile(f,impressora_venda);
      rewrite(f);
      while not eof(txt) do
      begin
        readln(txt,entrada);
        writeln(f,entrada);
      end;
      closefile(txt);
      closefile(f);
  end;





  if combobox1.ItemIndex = 0 then  // 2 - Bobina | 11,10 cm x 3,40 cm | 01 Fileira
  begin
    xx := frmPrincipal.zerarcodigo(qretiq.fieldbyname('qtde').asstring,2);
    qretiq.Refresh;
    qretiq.First;
    assignfile(f,impressora_venda);
    rewrite(f);
    WHILE NOT qretiq.Eof DO
    BEGIN
      WRITELN(F,'c0000');
      WRITELN(F,'KI503');
      WRITELN(F,'O0220');
      WRITELN(F,'f220');
      WRITELN(F,'KW0437'); //KW0425
      WRITELN(F,'KI7');
      WRITELN(F,'V0');
      WRITELN(F,'L');
      WRITELN(F,'H13');
      WRITELN(F,'PC');
      WRITELN(F,'A2');
      WRITELN(F,'D11');
      PROD1 := copy(qretiq.FIELDBYNAME('PRODUTO').ASSTRING,1,26);
      WRITELN(F,'123200000960022'+PROD1);
      //WRITELN(F,'103200000120028'+'       REDE MULTI MARKET      '); 
      WRITELN(F,'103200000120028'+'       ' + trim(emitente_fantasia) +'      ');
      WRITELN(F,'125400000390076'+'R$ '+FORMATFLOAT('###,###,##0.00',qretiq.FIELDBYNAME('VALOR').ASFLOAT));
      xx := qretiq.fieldbyname('qtde').asstring; while Length(xx) < 4 do xx := '0'+xx;
      WRITELN(F,'^'+qretiq.fieldbyname('qtde').asstring);
      WRITELN(F,'Q'+xx);
      WRITELN(F,'E');


     qretiq.Next;
    END;
    CLOSEFILE(F);
  end;

  if combobox1.ItemIndex = 9 then  // 2 - Bobina | 10,40 cm x 3,00 cm | 01 Fileira
  begin
    xx := frmPrincipal.zerarcodigo(qretiq.fieldbyname('qtde').asstring,2);
    qretiq.Refresh;
    qretiq.First;
    assignfile(f,impressora_venda);
    rewrite(f);
    WHILE NOT qretiq.Eof DO
    BEGIN
      WRITELN(F,'c0000');
      WRITELN(F,'KI503');
      WRITELN(F,'O0220');
      WRITELN(F,'f220');
      WRITELN(F,'KW0425'); //KW0425
      WRITELN(F,'KI7');
      WRITELN(F,'V0');
      WRITELN(F,'L');
      WRITELN(F,'H13');
      WRITELN(F,'PC');
      WRITELN(F,'A2');
      WRITELN(F,'D11');

      PROD1 := copy(qretiq.FIELDBYNAME('PRODUTO').ASSTRING,1,26);
      PROD2 := qretiq.FIELDBYNAME('CODPRODUTO').ASSTRING;
      PROD3 := qretiq.FIELDBYNAME('MARCA').ASSTRING;

      WRITELN(F,'191100600730015'+PROD1);
      WRITELN(F,'192200500240116'+'R$ '+FORMATFLOAT('###,###,##0.00',qretiq.FIELDBYNAME('VALOR').ASFLOAT));
      WRITELN(F,'191100300310018'+PROD2);
      WRITELN(F,'191100200640017'+emitente_fantasia);
      WRITELN(F,'191100400040018'+PROD3);

      xx := qretiq.fieldbyname('qtde').asstring; while Length(xx) < 4 do xx := '0'+xx;
      WRITELN(F,'^'+qretiq.fieldbyname('qtde').asstring);
      WRITELN(F,'Q'+xx);
      WRITELN(F,'E');

      qretiq.Next;
    END;
    CLOSEFILE(F);
  end;

  //***************************************************************

  if combobox1.ItemIndex = 5 then
  begin


    frmmodulo.qremitente.Open;

    application.ProcessMessages;
    qa := qretiq.recordcount;
    ASSIGNFILE(F,'c:\etiqueta.prn');
    REWRITE(F);
    WRITELN(F,'c0000');
    WRITELN(F,'KI503');
    WRITELN(F,'O0220');
    WRITELN(F,'f220');
    WRITELN(F,'KW0394');
    WRITELN(F,'KI7');
    WRITELN(F,'V0');
    WRITELN(F,'L');
    WRITELN(F,'H13');
    WRITELN(F,'PC');





    QRPRODUTO.CLOSE;
    QRPRODUTO.SQL.CLEAR;
    QRPRODUTO.SQL.ADD('DELETE FROM CL00007');
    QRPRODUTO.ExecSQL;

    QRPRODUTO.CLOSE;
    QRPRODUTO.SQL.CLEAR;
    QRPRODUTO.SQL.ADD('SELECT * FROM CL00007');
    QRPRODUTO.OPEN;


    qretiq.FIRST;
    WHILE NOT QRETIQ.EOF DO
    BEGIN
      FOR I := 1 TO QRETIQ.FIELDBYNAME('QTDE').ASINTEGER DO
      BEGIN
        QRPRODUTO.INSERT;
        QRPRODUTO.FIELDBYNAME('CODIGO').ASSTRING := QRETIQ.FIELDBYNAME('CODPRODUTO').ASSTRING;
        QRPRODUTO.FIELDBYNAME('CODbarra').ASSTRING := QRETIQ.FIELDBYNAME('CODbarra').ASSTRING;
        QRPRODUTO.FIELDBYNAME('PRODUTO').ASSTRING := QRETIQ.FIELDBYNAME('PRODUTO').ASSTRING;
        QRPRODUTO.FIELDBYNAME('PRECO').ASFLOAT := QRETIQ.FIELDBYNAME('VALOR').ASFLOAT;
        QRPRODUTO.FIELDBYNAME('aplicacao').ASSTRING := QRETIQ.FIELDBYNAME('tamanho').ASSTRING;
        QRPRODUTO.FIELDBYNAME('complemento').ASSTRING := QRETIQ.FIELDBYNAME('texto').ASSTRING;
        QRPRODUTO.FIELDBYNAME('marca').ASSTRING := QRETIQ.FIELDBYNAME('marca').ASSTRING;
        QRPRODUTO.POST;
      END;
      QRETIQ.NEXT;
    END;
    QRPRODUTO.Refresh;
    i := qrproduto.RecordCount;


    xx := frmPrincipal.zerarcodigo(inttostr(i),2);
    qa := 0;
    qrproduto.first;
      while not qrproduto.eof do
      begin
        cod1 := ''; cod2 := ''; cod3 := ''; cod4 := ''; cod5 := '';
        prod1 := ''; prod2 := ''; prod3 := ''; prod4 := ''; prod5 := ''; prod6 := '';
        valor1 := ''; valor2 := ''; valor3 := ''; valor4 := ''; valor5 := '';
        EMP1 := ''; EMP2 := ''; EMP3 := ''; EMP4 := ''; EMP5 := '';

        PROD1 := qrproduto.FIELDBYNAME('PRODUTO').ASSTRING;
        prod2 := qrproduto.FIELDBYNAME('marca').ASSTRING;
        prod3 := qrproduto.fieldbyname('aplicacao').asstring;

        avista1 := 'R$ '+FORMATFLOAT('###,###,##0.00',(qrproduto.FIELDBYNAME('preco').ASFLOAT-(qrproduto.FIELDBYNAME('preco').ASFLOAT*0.10)));

        prestacao1 := '';
        if QRPRODUTO.FIELDBYNAME('complemento').ASSTRINg <> '' then
        begin
          prestacao1 := '('+QRPRODUTO.FIELDBYNAME('complemento').ASstring+' x R$'+FORMATFLOAT('###,###,##0.00',(qrproduto.FIELDBYNAME('preco').ASFLOAT / QRPRODUTO.FIELDBYNAME('complemento').ASinteger))+')';
        end;

        if LENGTH(PROD1) > 25 then DELETE(PROD1,26,100);
        if LENGTH(PROD2) > 25 then DELETE(PROD2,26,100);

        VALOR1 := 'R$ '+FORMATFLOAT('###,###,##0.00',qrproduto.FIELDBYNAME('preco').ASFLOAT);
        COD1 := qrproduto.FIELDBYNAME('CODigo').ASSTRING; WHILE LENGTH(COD1) < 6 DO COD1 := '0'+COD1;
        EMP1 := qrproduto.FIELDBYNAME('CODbarra').ASSTRING;
        qrproduto.next;
        qa := qa + 1;





        if qa <> i then
        begin
          PROD4 := qrproduto.FIELDBYNAME('PRODUTO').ASSTRING;
          prod5 := qrproduto.FIELDBYNAME('marca').ASSTRING;
          prod6 := qrproduto.fieldbyname('aplicacao').asstring;

          avista2 := 'R$ '+FORMATFLOAT('###,###,##0.00',(qrproduto.FIELDBYNAME('preco').ASFLOAT-(qrproduto.FIELDBYNAME('preco').ASFLOAT*0.10)));
          prestacao2 := '';
          if QRPRODUTO.FIELDBYNAME('complemento').ASSTRINg <> '' then
          begin
            prestacao2 := '('+QRPRODUTO.FIELDBYNAME('complemento').ASstring+' x R$'+FORMATFLOAT('###,###,##0.00',(qrproduto.FIELDBYNAME('preco').ASFLOAT / QRPRODUTO.FIELDBYNAME('complemento').ASinteger))+')';
          end;



          if LENGTH(PROD4) > 25 then DELETE(PROD4,26,100);
          if LENGTH(PROD5) > 25 then DELETE(PROD5,26,100);

          VALOR2 := 'R$ '+FORMATFLOAT('###,###,##0.00',qrproduto.FIELDBYNAME('preco').ASFLOAT);
          COD2 := qrproduto.FIELDBYNAME('CODigo').ASSTRING; WHILE LENGTH(COD1) < 6 DO COD1 := '0'+COD1;
          EMP2 := qrproduto.FIELDBYNAME('CODbarra').ASSTRING;
          qrproduto.next;
          qa := qa + 1;
        end;




        WRITELN(F,'A2');
        WRITELN(F,'D11');
        WRITELN(F,'322100000390165'+emitente_fantasia);
        WRITELN(F,'311200000550176'+frmmodulo.qremitente.fieldbyname('HOMEPAGE').asstring);
        WRITELN(F,'321100001140191'+'REF: '+emp1);
        WRITELN(F,'321100000680192'+'CODIGO:'+cod1);
        WRITELN(F,'321100001140078'+'TAM:'+prod3);
        WRITELN(F,'3A6302501630178'+cod1);
        WRITELN(F,'321100002600189'+'A PRAZO:');
        WRITELN(F,'321100002210190'+'REF:'+emp1+' '+copy(prod1,1,17));
        WRITELN(F,'321100002050190'+'CODIGO:'+cod1);
        WRITELN(F,'321100002050081'+'TAM:'+prod3);
        WRITELN(F,'321100000840191'+prod1);
        WRITELN(F,'321100000990191'+prod2);
        WRITELN(F,'321100002410190'+'A VISTA:');
        WRITELN(F,'321100002400139'+avista1);
        WRITELN(F,'311100002380085'+'(10% DESC.)');
        WRITELN(F,'321100002600139'+valor1);
        WRITELN(F,'311100002580084'+prestacao1);



        if prod4 <> '' then
        begin
          WRITELN(F,'322100000390362'+emitente_fantasia);
          WRITELN(F,'311200000550373'+frmmodulo.qremitente.fieldbyname('HOMEPAGE').asstring);
          WRITELN(F,'321100001140388'+'REF: '+emp2);
          WRITELN(F,'321100000680389'+'CODIGO:'+cod2);
          WRITELN(F,'321100001140275'+'TAM:'+prod6);
          WRITELN(F,'3A6302501630375'+cod2);
          WRITELN(F,'321100002600386'+'A PRAZO:');
          WRITELN(F,'321100002210387'+'REF:'+emp2+' '+copy(prod4,1,17));
          WRITELN(F,'321100002050387'+'CODIGO:'+cod2);
          WRITELN(F,'321100002050278'+'TAM:'+prod6);
          WRITELN(F,'321100000840388'+prod4);
          WRITELN(F,'321100000990388'+prod5);
          WRITELN(F,'321100002410387'+'A VISTA:');
          WRITELN(F,'321100002400336'+avista2);
          WRITELN(F,'311100002380282'+'(10% DESC.)');
          WRITELN(F,'321100002600336'+valor2);
          WRITELN(F,'311100002580281'+prestacao2);
        end;






        writeln(f,'^'+xx);
        writeln(f,'Q0001');
        writeln(f,'E');
        if i <> qa then
        begin
          writeln(f,'L');
        end;
      END;




      CLOSEFILE(F);

      application.ProcessMessages;

      assignfile(txt,'c:\etiqueta.prn');
      reset(txt);
      assignfile(f,impressora_venda);
      rewrite(f);
      while not eof(txt) do
      begin
        readln(txt,entrada);
        writeln(f,entrada);
      end;
      closefile(txt);
      closefile(f);
  end;



//***********************************************

//***********************************************

//***********************************************

//***********************************************

//***********************************************

//***********************************************

//***********************************************







  if combobox1.ItemIndex = 6 then
  begin

    vdesconto := edesconto.Value/100;

    frmmodulo.qremitente.Open;

    application.ProcessMessages;
    qa := qretiq.recordcount;
    //ASSIGNFILE(F,'c:\etiqueta.prn');
    assignfile(f,impressora_venda);
    REWRITE(F);
    WRITELN(F,'c0000');
    WRITELN(F,'KI503');
    WRITELN(F,'O0220');
    WRITELN(F,'f220');
    WRITELN(F,'KW0394');
    WRITELN(F,'KI7');
    WRITELN(F,'V0');
    WRITELN(F,'L');
    WRITELN(F,'H13');
    WRITELN(F,'PC');


    QRPRODUTO.CLOSE;
    QRPRODUTO.SQL.CLEAR;
    QRPRODUTO.SQL.ADD('DELETE FROM CL00007');
    QRPRODUTO.ExecSQL;

    QRPRODUTO.CLOSE;
    QRPRODUTO.SQL.CLEAR;
    QRPRODUTO.SQL.ADD('SELECT * FROM CL00007');
    QRPRODUTO.OPEN;

    qretiq.FIRST;
    WHILE NOT QRETIQ.EOF DO
    BEGIN
      FOR I := 1 TO QRETIQ.FIELDBYNAME('QTDE').ASINTEGER DO
      BEGIN
        QRPRODUTO.INSERT;
        QRPRODUTO.FIELDBYNAME('CODIGO').ASSTRING := QRETIQ.FIELDBYNAME('CODPRODUTO').ASSTRING;
        QRPRODUTO.FIELDBYNAME('CODbarra').ASSTRING := QRETIQ.FIELDBYNAME('CODbarra').ASSTRING;
        QRPRODUTO.FIELDBYNAME('PRODUTO').ASSTRING := QRETIQ.FIELDBYNAME('PRODUTO').ASSTRING;
        QRPRODUTO.FIELDBYNAME('PRECO').ASFLOAT := QRETIQ.FIELDBYNAME('VALOR').ASFLOAT;
        QRPRODUTO.FIELDBYNAME('aplicacao').ASSTRING := QRETIQ.FIELDBYNAME('tamanho').ASSTRING;
        QRPRODUTO.FIELDBYNAME('complemento').ASSTRING := QRETIQ.FIELDBYNAME('texto').ASSTRING;
        QRPRODUTO.FIELDBYNAME('marca').ASSTRING := QRETIQ.FIELDBYNAME('marca').ASSTRING;
        QRPRODUTO.FIELDBYNAME('LOCALIZACAO').ASSTRING := qretiq.FIELDBYNAME('localizacao').ASSTRING;
        QRPRODUTO.POST;
      END;
      QRETIQ.NEXT;
    END;
    QRPRODUTO.Refresh;
    i := qrproduto.RecordCount;


    xx := frmPrincipal.zerarcodigo(inttostr(i),2);
    qa := 0;
    qrproduto.first;
      while not qrproduto.eof do
      begin
        cod1 := ''; cod2 := ''; cod3 := ''; cod4 := ''; cod5 := '';
        prod1 := ''; prod2 := ''; prod3 := ''; prod4 := ''; prod5 := ''; prod6 := '';
        valor1 := ''; valor2 := ''; valor3 := ''; valor4 := ''; valor5 := '';
        EMP1 := ''; EMP2 := ''; EMP3 := ''; EMP4 := ''; EMP5 := '';
        COD_EXTRA1 := ''; COD_EXTRA2  := '';

        if QRPRODUTO.FIELDBYNAME('complemento').ASstring <> '' then
          vparcelas := StrToFloat(QRPRODUTO.FIELDBYNAME('complemento').ASstring)
        else
          vparcelas := 0;

        PROD1 := qrproduto.FIELDBYNAME('PRODUTO').ASSTRING;
        prod2 := qrproduto.FIELDBYNAME('marca').ASSTRING;
        prod3 := qrproduto.fieldbyname('aplicacao').asstring;

//        avista1 := 'R$ '+FORMATFLOAT('###,###,##0.00',(qrproduto.FIELDBYNAME('preco').ASFLOAT-(qrproduto.FIELDBYNAME('preco').ASFLOAT*0.10)));
        avista1 := 'R$ '+FORMATFLOAT('###,###,##0.00',(qrproduto.FIELDBYNAME('preco').ASFLOAT-(qrproduto.FIELDBYNAME('preco').ASFLOAT*vdesconto)));

        prestacao1 := '';
        if QRPRODUTO.FIELDBYNAME('complemento').ASSTRINg <> '' then
        begin
          prestacao1 := '('+QRPRODUTO.FIELDBYNAME('complemento').ASstring+' x R$'+FORMATFLOAT('###,###,##0.00',(qrproduto.FIELDBYNAME('preco').ASFLOAT / vparcelas))+')';
        end;

        if LENGTH(PROD1) > 25 then DELETE(PROD1,26,100);
        if LENGTH(PROD2) > 25 then DELETE(PROD2,26,100);

        VALOR1 := 'R$ '+FORMATFLOAT('###,###,##0.00',qrproduto.FIELDBYNAME('preco').ASFLOAT);

        vvista := qrproduto.FIELDBYNAME('preco').ASFLOAT-(qrproduto.FIELDBYNAME('preco').ASFLOAT*vdesconto);
        vprazo := qrproduto.FIELDBYNAME('preco').ASFLOAT;

        COD1 := qrproduto.FIELDBYNAME('CODigo').ASSTRING; WHILE LENGTH(COD1) < 6 DO COD1 := '0'+COD1;

        if vetq_07 = 0 then
          COD_EXTRA1 := ''
        else if vetq_07 = 1 then
          COD_EXTRA1 := QRPRODUTOCODIGO.AsString
        else if vetq_07 = 2 then
          COD_EXTRA1 := QRPRODUTOLOCALIZACAO.AsString;

        EMP1 := qrproduto.FIELDBYNAME('CODbarra').ASSTRING;
        qrproduto.next;
        qa := qa + 1;

        if qa <> i then
        begin
          if QRPRODUTO.FIELDBYNAME('complemento').ASstring <> '' then
            vparcelas1 := StrToFloat(QRPRODUTO.FIELDBYNAME('complemento').ASstring)
          else
            vparcelas1 := 0;

          PROD4 := qrproduto.FIELDBYNAME('PRODUTO').ASSTRING;
          prod5 := qrproduto.FIELDBYNAME('marca').ASSTRING;
          prod6 := qrproduto.fieldbyname('aplicacao').asstring;

//          avista2 := 'R$ '+FORMATFLOAT('###,###,##0.00',(qrproduto.FIELDBYNAME('preco').ASFLOAT-(qrproduto.FIELDBYNAME('preco').ASFLOAT*0.10)));
          avista2 := 'R$ '+FORMATFLOAT('###,###,##0.00',(qrproduto.FIELDBYNAME('preco').ASFLOAT-(qrproduto.FIELDBYNAME('preco').ASFLOAT*vdesconto)));

          prestacao2 := '';
          if QRPRODUTO.FIELDBYNAME('complemento').ASSTRINg <> '' then
          begin
            prestacao2 := '('+QRPRODUTO.FIELDBYNAME('complemento').ASstring+' x R$'+FORMATFLOAT('###,###,##0.00',(qrproduto.FIELDBYNAME('preco').ASFLOAT / vparcelas1))+')';
          end;

          if LENGTH(PROD4) > 25 then DELETE(PROD4,26,100);
          if LENGTH(PROD5) > 25 then DELETE(PROD5,26,100);

          VALOR2 := 'R$ '+FORMATFLOAT('###,###,##0.00',qrproduto.FIELDBYNAME('preco').ASFLOAT);

          vvista := qrproduto.FIELDBYNAME('preco').ASFLOAT-(qrproduto.FIELDBYNAME('preco').ASFLOAT*vdesconto);
          vprazo := qrproduto.FIELDBYNAME('preco').ASFLOAT;

          COD2 := qrproduto.FIELDBYNAME('CODigo').ASSTRING; WHILE LENGTH(COD1) < 6 DO COD1 := '0'+COD1;
          if vetq_07 = 0 then
            COD_EXTRA2 := ''
          else if vetq_07 = 1 then
            COD_EXTRA2 := QRPRODUTOCODIGO.AsString
          else if vetq_07 = 2 then
            COD_EXTRA2 := QRPRODUTOLOCALIZACAO.AsString;

          EMP2 := qrproduto.FIELDBYNAME('CODbarra').ASSTRING;
          qrproduto.next;
          qa := qa + 1;

        end;

        if vparcelas = 0 then vparcelas := 1;

        if combo_impressora.Text = 'ARGOX - OS 214' then
          begin

            if vetq_07_2 = 0 then  // 5,0 cm x 7,5 cm
              begin

                WRITELN(F,'A2');
                WRITELN(F,'D11');
                WRITELN(F,'122200002400023'+emitente_fantasia);
                WRITELN(F,'111200002220027'+frmmodulo.qremitente.fieldbyname('HOMEPAGE').asstring);
                if vetq_07_1 = 0 then
                  WRITELN(F,'121100002080019'+'CODIGO:'+cod1)     // codigo do produto
                else
                  WRITELN(F,'121100002080019'+'REF : ' + EMP1);   // codigo de barra

                WRITELN(F,'121100002080130'+'TAM:'+prod3);
                WRITELN(F,'1A6302501330030'+cod1);
                WRITELN(F,'121100000480021'+'A PRAZO:');
                WRITELN(F,'121100001100021'+'CODIGO:'+cod1);
                WRITELN(F,'121100001110130'+'TAM:'+prod3);
                WRITELN(F,'121100001920020'+prod1);
                WRITELN(F,'121100001770020'+prod2);
                WRITELN(F,'121100000830021'+'A VISTA:');
                WRITELN(F,'141100000600020'+avista1);
                WRITELN(F,'141100000230020'+valor1);
                WRITELN(F,'121100000270115'+prestacao1);
                WRITELN(F,'121100000970021'+prod1);
                WRITELN(F,'121100000100026'+'Taxa de Juros '+FORMATFLOAT('###,###,##0.00',(((vprazo/vvista)-1)*100)/vparcelas)+'% a.m.');
                WRITELN(F,'111100000730117'+COD_EXTRA1);

                if vparcelas1 = 0 then vparcelas1 := 1;

                if prod4 <> '' then
                  begin
                    WRITELN(F,'122200002400220'+emitente_fantasia);
                    WRITELN(F,'111200002220224'+frmmodulo.qremitente.fieldbyname('HOMEPAGE').asstring);
                    if vetq_07_1 = 0 then
                      WRITELN(F,'121100002080216'+'CODIGO:'+cod2)    // codigo do produto
                    else
                      WRITELN(F,'121100002080216'+'REF : ' + EMP2);  // codigo de barra

                    WRITELN(F,'121100002080327'+'TAM:'+prod6);
                    WRITELN(F,'1A6302501330227'+cod2);
                    WRITELN(F,'121100000480218'+'A PRAZO:');
                    WRITELN(F,'121100001100218'+'CODIGO:'+cod2);
                    WRITELN(F,'121100001110327'+'TAM:'+prod6);
                    WRITELN(F,'121100001920217'+prod4);
                    WRITELN(F,'121100001770217'+prod5);
                    WRITELN(F,'121100000830218'+'A VISTA:');
                    WRITELN(F,'141100000600217'+avista2);
                    WRITELN(F,'141100000230217'+valor2);
                    WRITELN(F,'121100000270312'+prestacao2);
                    WRITELN(F,'121100000970218'+prod4);
                    WRITELN(F,'121100000100223'+'Taxa de Juros '+FORMATFLOAT('###,###,##0.00',(((vprazo/vvista)-1)*100)/vparcelas1)+'% a.m.');
                    WRITELN(F,'111100000730314'+COD_EXTRA2);
                  end;

                writeln(f,'^'+xx);
                writeln(f,'Q0001');
                writeln(f,'E');
                if i <> qa then
                  begin
                    writeln(f,'L');
                  end;
              end
            else   // 4,0 cm x 5,5 cm
              begin

                WRITELN(F,'A2');
                WRITELN(F,'D11');
                WRITELN(F,'122200001860006'+emitente_fantasia);
                WRITELN(F,'111200001670006'+frmmodulo.qremitente.fieldbyname('HOMEPAGE').asstring);
                WRITELN(F,'121100001540004'+'CODIGO:'+cod1);     // codigo do produto
                WRITELN(F,'1A6302500810006'+cod1);
                WRITELN(F,'121100000220006'+'A PRAZO:');
                WRITELN(F,'121100001400004'+prod1);
                WRITELN(F,'121100001250004'+prod2);
                WRITELN(F,'121100000500006'+'A VISTA:');
                WRITELN(F,'131100000330005'+avista1);
                WRITELN(F,'131100000040005'+valor1);
                WRITELN(F,'121100000060078'+prestacao1);
                WRITELN(F,'121100000690003'+'Taxa de Juros '+FORMATFLOAT('###,###,##0.00',(((vprazo/vvista)-1)*100)/vparcelas)+'% a.m.');

                if vparcelas1 = 0 then vparcelas1 := 1;

                if prod4 <> '' then
                  begin
                    WRITELN(F,'122200001860163'+emitente_fantasia);
                    WRITELN(F,'111200001670163'+frmmodulo.qremitente.fieldbyname('HOMEPAGE').asstring);
                    WRITELN(F,'121100001540161'+'CODIGO:'+cod2);    // codigo do produto
                    WRITELN(F,'1A6302500810163'+cod2);
                    WRITELN(F,'121100000220163'+'A PRAZO:');
                    WRITELN(F,'121100001400161'+prod4);
                    WRITELN(F,'121100001250161'+prod5);
                    WRITELN(F,'121100000500163'+'A VISTA:');
                    WRITELN(F,'131100000330162'+avista2);
                    WRITELN(F,'131100000040162'+valor2);
                    WRITELN(F,'121100000060235'+prestacao2);
                    WRITELN(F,'121100000690160'+'Taxa de Juros '+FORMATFLOAT('###,###,##0.00',(((vprazo/vvista)-1)*100)/vparcelas1)+'% a.m.');
                  end;

                writeln(f,'^'+xx);
                writeln(f,'Q0001');
                writeln(f,'E');

                {
                ^02
                Q0001
                E
                }

                if i <> qa then
                  begin
                    writeln(f,'L');
                  end;


              end;
          end
        else  // Impressora ZEBRA

          begin
            if vetq_07_2 = 0 then  // 5,0 cm x 7,5 cm
              begin

                WRITELN(F,'A2');
                WRITELN(F,'D11');
                WRITELN(F,'122200002400023'+emitente_fantasia);
                WRITELN(F,'111200002220027'+frmmodulo.qremitente.fieldbyname('HOMEPAGE').asstring);
                
                if vetq_07_1 = 0 then
                  WRITELN(F,'121100002080019'+'CODIGO:'+cod1)     // codigo do produto
                else
                  WRITELN(F,'121100002080019'+'REF : ' + EMP1);   // codigo de barra

                WRITELN(F,'121100002080130'+'TAM:'+prod3);
                WRITELN(F,'1A6302501330030'+cod1);
                WRITELN(F,'121100000480021'+'A PRAZO:');
                WRITELN(F,'121100001100021'+'CODIGO:'+cod1);
                WRITELN(F,'121100001110130'+'TAM:'+prod3);
                WRITELN(F,'121100001920020'+prod1);
                WRITELN(F,'121100001770020'+prod2);
                WRITELN(F,'121100000830021'+'A VISTA:');
                WRITELN(F,'141100000600020'+avista1);
                WRITELN(F,'141100000230020'+valor1);
                WRITELN(F,'121100000270115'+prestacao1);
                WRITELN(F,'121100000970021'+prod1);
                WRITELN(F,'121100000100026'+'Taxa de Juros '+FORMATFLOAT('###,###,##0.00',(((vprazo/vvista)-1)*100)/vparcelas)+'% a.m.');
                WRITELN(F,'111100000730117'+COD_EXTRA1);

                if vparcelas1 = 0 then vparcelas1 := 1;

                if prod4 <> '' then
                  begin
                    WRITELN(F,'122200002400220'+emitente_fantasia);
                    WRITELN(F,'111200002220224'+frmmodulo.qremitente.fieldbyname('HOMEPAGE').asstring);
                    if vetq_07_1 = 0 then
                      WRITELN(F,'121100002080216'+'CODIGO:'+cod2)    // codigo do produto
                    else
                      WRITELN(F,'121100002080216'+'REF : ' + EMP2);  // codigo de barra

                    WRITELN(F,'121100002080327'+'TAM:'+prod6);
                    WRITELN(F,'1A6302501330227'+cod2);
                    WRITELN(F,'121100000480218'+'A PRAZO:');
                    WRITELN(F,'121100001100218'+'CODIGO:'+cod2);
                    WRITELN(F,'121100001110327'+'TAM:'+prod6);
                    WRITELN(F,'121100001920217'+prod4);
                    WRITELN(F,'121100001770217'+prod5);
                    WRITELN(F,'121100000830218'+'A VISTA:');
                    WRITELN(F,'141100000600217'+avista2);
                    WRITELN(F,'141100000230217'+valor2);
                    WRITELN(F,'121100000270312'+prestacao2);
                    WRITELN(F,'121100000970218'+prod4);
                    WRITELN(F,'121100000100223'+'Taxa de Juros '+FORMATFLOAT('###,###,##0.00',(((vprazo/vvista)-1)*100)/vparcelas1)+'% a.m.');
                    WRITELN(F,'111100000730314'+COD_EXTRA2);
                  end;

                writeln(f,'^'+xx);
                writeln(f,'Q0001');
                writeln(f,'E');
                if i <> qa then
                  begin
                    writeln(f,'L');
                  end;
              end
            else   // 4,0 cm x 5,5 cm
              begin

                WRITELN(F,'A2');
                WRITELN(F,'D11');
                WRITELN(F,'122200001860006'+emitente_fantasia);
                WRITELN(F,'111200001670006'+frmmodulo.qremitente.fieldbyname('HOMEPAGE').asstring);
                WRITELN(F,'121100001540004'+'CODIGO:'+cod1);     // codigo do produto
                WRITELN(F,'1A6302500810006'+cod1);
                WRITELN(F,'121100000220006'+'A PRAZO:');
                WRITELN(F,'121100001400004'+prod1);
                WRITELN(F,'121100001250004'+prod2);
                WRITELN(F,'121100000500006'+'A VISTA:');
                WRITELN(F,'131100000330005'+avista1);
                WRITELN(F,'131100000040005'+valor1);
                WRITELN(F,'121100000060078'+prestacao1);
                WRITELN(F,'121100000690003'+'Taxa de Juros '+FORMATFLOAT('###,###,##0.00',(((vprazo/vvista)-1)*100)/vparcelas)+'% a.m.');

                if vparcelas1 = 0 then vparcelas1 := 1;

                if prod4 <> '' then
                  begin
                    WRITELN(F,'122200001860163'+emitente_fantasia);
                    WRITELN(F,'111200001670163'+frmmodulo.qremitente.fieldbyname('HOMEPAGE').asstring);
                    WRITELN(F,'121100001540161'+'CODIGO:'+cod2);    // codigo do produto
                    WRITELN(F,'1A6302500810163'+cod2);
                    WRITELN(F,'121100000220163'+'A PRAZO:');
                    WRITELN(F,'121100001400161'+prod4);
                    WRITELN(F,'121100001250161'+prod5);
                    WRITELN(F,'121100000500163'+'A VISTA:');
                    WRITELN(F,'131100000330162'+avista2);
                    WRITELN(F,'131100000040162'+valor2);
                    WRITELN(F,'121100000060235'+prestacao2);
                    WRITELN(F,'121100000690160'+'Taxa de Juros '+FORMATFLOAT('###,###,##0.00',(((vprazo/vvista)-1)*100)/vparcelas1)+'% a.m.');
                  end;

                writeln(f,'^'+xx);
                writeln(f,'Q0001');
                writeln(f,'E');

                {
                ^02
                Q0001
                E
                }

                if i <> qa then
                  begin
                    writeln(f,'L');
                  end;


              end;

          end;
      END;
      CLOSEFILE(F);

      application.ProcessMessages;

      //assignfile(txt,'c:\etiqueta.prn');
      assignfile(f,impressora_venda);
      reset(txt);
      assignfile(f,impressora_venda);
      rewrite(f);
      while not eof(txt) do
      begin
        readln(txt,entrada);
        writeln(f,entrada);
      end;
      closefile(txt);
      closefile(f);
  end;

  if combobox1.ItemIndex = 1 then
  begin

    application.ProcessMessages;
    qa := qretiq.recordcount;
    ASSIGNFILE(F,'c:\etiqueta.prn');
    REWRITE(F);
    WRITELN(F,'c0000');
    WRITELN(F,'KI503');
    WRITELN(F,'O0220');
    WRITELN(F,'f220');
    WRITELN(F,'KW0425');
    WRITELN(F,'KI7');
    WRITELN(F,'V0');
    WRITELN(F,'L');
    WRITELN(F,'H13');
    WRITELN(F,'PC');





    QRPRODUTO.CLOSE;
    QRPRODUTO.SQL.CLEAR;
    QRPRODUTO.SQL.ADD('DELETE FROM CL00007');
    QRPRODUTO.ExecSQL;

    QRPRODUTO.CLOSE;
    QRPRODUTO.SQL.CLEAR;
    QRPRODUTO.SQL.ADD('SELECT * FROM CL00007');
    QRPRODUTO.OPEN;


    qretiq.FIRST;
    WHILE NOT QRETIQ.EOF DO
    BEGIN
      FOR I := 1 TO QRETIQ.FIELDBYNAME('QTDE').ASINTEGER DO
      BEGIN
        QRPRODUTO.INSERT;
        QRPRODUTO.FIELDBYNAME('CODIGO').ASSTRING := QRETIQ.FIELDBYNAME('CODPRODUTO').ASSTRING;
        QRPRODUTO.FIELDBYNAME('CODbarra').ASSTRING := QRETIQ.FIELDBYNAME('CODbarra').ASSTRING;
        QRPRODUTO.FIELDBYNAME('PRODUTO').ASSTRING := QRETIQ.FIELDBYNAME('PRODUTO').ASSTRING;
        QRPRODUTO.FIELDBYNAME('PRECO').ASFLOAT := QRETIQ.FIELDBYNAME('VALOR').ASFLOAT;
        QRPRODUTO.POST;
      END;
      QRETIQ.NEXT;
    END;
    QRPRODUTO.Refresh;
    i := qrproduto.RecordCount;


    xx := frmPrincipal.zerarcodigo(inttostr(i),2);
    qa := 0;
    qrproduto.first;
      while not qrproduto.eof do
      begin
        cod1 := ''; cod2 := ''; cod3 := ''; cod4 := ''; cod5 := '';
        prod1 := ''; prod2 := ''; prod3 := ''; prod4 := ''; prod5 := ''; prod6 := '';
        valor1 := ''; valor2 := ''; valor3 := ''; valor4 := ''; valor5 := '';
        EMP1 := ''; EMP2 := ''; EMP3 := ''; EMP4 := ''; EMP5 := '';
        PROD1 := qrproduto.FIELDBYNAME('PRODUTO').ASSTRING;
        prod2 := '';
        if LENGTH(PROD1) > 25 then
        begin
          prod2 := copy(prod1,26,26);
          DELETE(PROD1,26,100);
        end;
        VALOR1 := 'R$ '+FORMATFLOAT('###,###,##0.00',qrproduto.FIELDBYNAME('preco').ASFLOAT);
        COD1 := qrproduto.FIELDBYNAME('CODigo').ASSTRING; WHILE LENGTH(COD1) < 6 DO COD1 := '0'+COD1;
        EMP1 := qrproduto.FIELDBYNAME('CODbarra').ASSTRING;
        qrproduto.next;
        qa := qa + 1;

        if qa <> i then
        begin
          PROD3 := qrproduto.FIELDBYNAME('PRODUTO').ASSTRING;
          prod4 := '';
          if LENGTH(PROD3) > 25 then
          begin
             prod4 := copy(prod3,26,26);
             DELETE(PROD3,26,100);
          end;
          VALOR2 := 'R$ '+FORMATFLOAT('###,###,##0.00',qrproduto.FIELDBYNAME('preco').ASFLOAT);
          COD2 := qrproduto.FIELDBYNAME('CODigo').ASSTRING; WHILE LENGTH(COD2) < 6 DO COD1 := '0'+COd2;
          EMP2 := qrproduto.FIELDBYNAME('CODbarra').ASSTRING;
          qrproduto.next;
          qa := qa + 1;


          if qa <> i then
          begin

            PROD5 := qrproduto.FIELDBYNAME('PRODUTO').ASSTRING;
            prod6 := '';
            if LENGTH(PROD5) > 25 then
            begin
               prod6 := copy(prod5,26,26);
               DELETE(PROD5,26,100);
            end;
            VALOR3 := 'R$ '+FORMATFLOAT('###,###,##0.00',qrproduto.FIELDBYNAME('preco').ASFLOAT);
            COD3 := qrproduto.FIELDBYNAME('CODigo').ASSTRING; WHILE LENGTH(COD3) < 6 DO COD3 := '0'+COD3;
            EMP3 := qrproduto.FIELDBYNAME('CODbarra').ASSTRING;
            qrproduto.next;
            qa := qa + 1;
          end;
        end;

















        WRITELN(F,'A2');
        WRITELN(F,'D11');

        WRITELN(F,'1A4202100150010'+cod1);
        WRITELN(F,'111200000610010'+prod1);
        WRITELN(F,'111200000480010'+prod2);
        WRITELN(F,'121100000030065'+valor1);
        writeln(f,'121100000030009'+emp1);

        if prod3 <> '' then
        begin
          WRITELN(F,'1A4202100150152'+cod2);
          WRITELN(F,'111200000610152'+prod3);
          WRITELN(F,'111200000480152'+prod4);
          WRITELN(F,'121100000030207'+valor2);
          writeln(f,'121100000030151'+emp2);
        end;
        if prod5 <> '' then
        begin
          WRITELN(F,'1A4202100150294'+cod3);
          WRITELN(F,'111200000610294'+prod5);
          WRITELN(F,'111200000480294'+prod6);
          WRITELN(F,'121100000030349'+valor3);
          writeln(f,'121100000030293'+emp3);
        end;


//        qa := qa + 1;
        writeln(f,'^'+xx);
        writeln(f,'Q0001');
        writeln(f,'E');
        if i <> qa then
        begin
          writeln(f,'L');
        end;
      END;




      CLOSEFILE(F);

      application.ProcessMessages;

      assignfile(txt,'c:\etiqueta.prn');
      reset(txt);
      assignfile(f,impressora_venda);
      rewrite(f);
      while not eof(txt) do
      begin
        readln(txt,entrada);
        writeln(f,entrada);
      end;
      closefile(txt);
      closefile(f);
  end;

  if combobox1.ItemIndex = 8 then
  begin


    application.ProcessMessages;
    qa := qretiq.recordcount;
    ASSIGNFILE(F,'c:\etiqueta.prn');
    REWRITE(F);
{
    WRITELN(F,'c0000');
    WRITELN(F,'KI503');
    WRITELN(F,'O0220');
    WRITELN(F,'f220');
    WRITELN(F,'KW0425');
    WRITELN(F,'KI7');
    WRITELN(F,'V0');
    WRITELN(F,'L');
    WRITELN(F,'H13');
    WRITELN(F,'PC');

 }

    WRITELN(F,'c0000');
    WRITELN(F,'KI503');
    WRITELN(F,'O0220');
    WRITELN(F,'f220');
    WRITELN(F,'KW0425');
    WRITELN(F,'KI7');
    WRITELN(F,'V0');
    WRITELN(F,'L');
    WRITELN(F,'H13');
    WRITELN(F,'PC');


    QRPRODUTO.CLOSE;
    QRPRODUTO.SQL.CLEAR;
    QRPRODUTO.SQL.ADD('DELETE FROM CL00007');
    QRPRODUTO.ExecSQL;

    QRPRODUTO.CLOSE;
    QRPRODUTO.SQL.CLEAR;
    QRPRODUTO.SQL.ADD('SELECT * FROM CL00007');
    QRPRODUTO.OPEN;


    qretiq.FIRST;
    WHILE NOT QRETIQ.EOF DO
    BEGIN
      FOR I := 1 TO QRETIQ.FIELDBYNAME('QTDE').ASINTEGER DO
      BEGIN
        QRPRODUTO.INSERT;
        QRPRODUTO.FIELDBYNAME('CODIGO').ASSTRING := QRETIQ.FIELDBYNAME('CODPRODUTO').ASSTRING;
        QRPRODUTO.FIELDBYNAME('CODbarra').ASSTRING := QRETIQ.FIELDBYNAME('CODBARRA').ASSTRING;
        QRPRODUTO.FIELDBYNAME('PRODUTO').ASSTRING := QRETIQ.FIELDBYNAME('PRODUTO').ASSTRING;
        QRPRODUTO.FIELDBYNAME('PRECO').ASFLOAT := QRETIQ.FIELDBYNAME('VALOR').ASFLOAT;
        QRPRODUTO.FIELDBYNAME('LOCALIZACAO').ASSTRING := QRETIQ.FIELDBYNAME('LOCALIZACAO').ASSTRING;


        QRPRODUTO.POST;
      END;
      QRETIQ.NEXT;
    END;
    QRPRODUTO.Refresh;
    i := qrproduto.RecordCount;


    xx := frmPrincipal.zerarcodigo(inttostr(i),2);
    qa := 0;
    qrproduto.first;
      while not qrproduto.eof do
      begin
        cod1 := ''; cod2 := ''; cod3 := ''; cod4 := ''; cod5 := '';
        prod1 := ''; prod2 := ''; prod3 := ''; prod4 := ''; prod5 := ''; prod6 := '';
        valor1 := ''; valor2 := ''; valor3 := ''; valor4 := ''; valor5 := '';
        EMP1 := ''; EMP2 := ''; EMP3 := ''; EMP4 := ''; EMP5 := '';
        PROD1 := COPY(qrproduto.FIELDBYNAME('PRODUTO').ASSTRING,1,25);
        PROD2 := COPY(qrproduto.FIELDBYNAME('LOCALIZACAO').ASSTRING,1,25);
        VALOR1 := 'R$ '+FORMATFLOAT('###,###,##0.00',qrproduto.FIELDBYNAME('preco').ASFLOAT);
        COD1 := qrproduto.FIELDBYNAME('CODigo').ASSTRING; WHILE LENGTH(COD1) < 6 DO COD1 := '0'+COD1;
        EMP1 := '';//qrproduto.FIELDBYNAME('CODbarra').ASSTRING;
        qrproduto.next;
        qa := qa + 1;

        if qa <> i then
        begin
            PROD3 := COPY(qrproduto.FIELDBYNAME('PRODUTO').ASSTRING,1,25);
            prod4 := COPY(qrproduto.FIELDBYNAME('LOCALIZACAO').ASSTRING,1,25);
          VALOR2 := 'R$ '+FORMATFLOAT('###,###,##0.00',qrproduto.FIELDBYNAME('preco').ASFLOAT);
          COD2 := qrproduto.FIELDBYNAME('CODigo').ASSTRING; WHILE LENGTH(COD2) < 6 DO COD1 := '0'+COd2;
          EMP2 := '';//qrproduto.FIELDBYNAME('CODbarra').ASSTRING;
          qrproduto.next;
          qa := qa + 1;


          if qa <> i then
          begin

            PROD5 := COPY(qrproduto.FIELDBYNAME('PRODUTO').ASSTRING,1,25);
            prod6 := COPY(qrproduto.FIELDBYNAME('LOCALIZACAO').ASSTRING,1,25);
            VALOR3 := 'R$ '+FORMATFLOAT('###,###,##0.00',qrproduto.FIELDBYNAME('preco').ASFLOAT);
            COD3 := qrproduto.FIELDBYNAME('CODigo').ASSTRING; WHILE LENGTH(COD3) < 6 DO COD3 := '0'+COD3;
            EMP3 := '';//qrproduto.FIELDBYNAME('CODbarra').ASSTRING;
            qrproduto.next;
            qa := qa + 1;
          end;
        end;

















        WRITELN(F,'A2');
        WRITELN(F,'D11');


        //WRITELN(F,'1A4202100150010'+cod1);
        //WRITELN(F,'111200000610010'+prod1);
        //WRITELN(F,'111200000480010'+prod2);
        //WRITELN(F,'121100000030065'+valor1);  // valor pequeno

        WRITELN(F,'1A4201100250010'+cod1);
        WRITELN(F,'111200000610010'+prod1);
        WRITELN(F,'111200000480010'+prod2);
        WRITELN(F,'191200200010066'+valor1);    // valor grande
        writeln(f,'121100000070009'+emp1);

        if prod3 <> '' then
        begin
          //WRITELN(F,'1A4202100150152'+cod2);
          //WRITELN(F,'111200000610152'+prod3);
          //WRITELN(F,'111200000480152'+prod4);
          //WRITELN(F,'121100000030207'+valor2);  // valor pequeno

          WRITELN(F,'1A4201100250152'+cod2);
          WRITELN(F,'111200000610152'+prod3);
          WRITELN(F,'111200000480152'+prod4);
          WRITELN(F,'191200200010208'+valor2);    // valor grande
          writeln(f,'121100000070151'+emp2);
        end;
        if prod5 <> '' then
        begin
          //WRITELN(F,'1A4202100150294'+cod3);
          //WRITELN(F,'111200000610294'+prod5);
          //WRITELN(F,'111200000480294'+prod6);
          //WRITELN(F,'121100000030349'+valor3);  // valor pequena

          WRITELN(F,'1A4201100250294'+cod3);
          WRITELN(F,'111200000610294'+prod5);
          WRITELN(F,'111200000480294'+prod6);
          WRITELN(F,'191200200010350'+valor3);    // valor grande
          writeln(f,'121100000070293'+emp3);
        end;


//        qa := qa + 1;
        writeln(f,'^'+xx);
        writeln(f,'Q0001');
        writeln(f,'E');
        if i <> qa then
        begin
          writeln(f,'L');
        end;
      END;




      CLOSEFILE(F);

      application.ProcessMessages;

      assignfile(txt,'c:\etiqueta.prn');
      reset(txt);
      assignfile(f,impressora_venda);
      rewrite(f);
      while not eof(txt) do
      begin
        readln(txt,entrada);
        writeln(f,entrada);
      end;
      closefile(txt);
      closefile(f);
  end;



  if combobox1.ItemIndex = 4 then
  begin




    application.ProcessMessages;
    qa := qretiq.recordcount;
    ASSIGNFILE(F,'c:\etiqueta.prn');
    REWRITE(F);
    WRITELN(F,'c0000');
    WRITELN(F,'KI503');
    WRITELN(F,'O0220');
    WRITELN(F,'f220');
    WRITELN(F,'KW0425');
    WRITELN(F,'KI7');
    WRITELN(F,'V0');
    WRITELN(F,'L');
    WRITELN(F,'H13');
    WRITELN(F,'PC');





    QRPRODUTO.CLOSE;
    QRPRODUTO.SQL.CLEAR;
    QRPRODUTO.SQL.ADD('DELETE FROM CL00007');
    QRPRODUTO.ExecSQL;

    QRPRODUTO.CLOSE;
    QRPRODUTO.SQL.CLEAR;
    QRPRODUTO.SQL.ADD('SELECT * FROM CL00007');
    QRPRODUTO.OPEN;


    qretiq.FIRST;
    WHILE NOT QRETIQ.EOF DO
    BEGIN
      FOR I := 1 TO QRETIQ.FIELDBYNAME('QTDE').ASINTEGER DO
      BEGIN
        QRPRODUTO.INSERT;
        QRPRODUTO.FIELDBYNAME('CODIGO').ASSTRING := QRETIQ.FIELDBYNAME('CODPRODUTO').ASSTRING;
        QRPRODUTO.FIELDBYNAME('CODbarra').ASSTRING := QRETIQ.FIELDBYNAME('localizacao').ASSTRING;
        QRPRODUTO.FIELDBYNAME('PRODUTO').ASSTRING := QRETIQ.FIELDBYNAME('PRODUTO').ASSTRING;
        QRPRODUTO.FIELDBYNAME('PRECO').ASFLOAT := QRETIQ.FIELDBYNAME('VALOR').ASFLOAT;
        QRPRODUTO.POST;
      END;
      QRETIQ.NEXT;
    END;
    QRPRODUTO.Refresh;
    i := qrproduto.RecordCount;


    xx := frmPrincipal.zerarcodigo(inttostr(i),2);
    qa := 0;
    qrproduto.first;
      while not qrproduto.eof do
      begin
        cod1 := ''; cod2 := ''; cod3 := ''; cod4 := ''; cod5 := '';
        prod1 := ''; prod2 := ''; prod3 := ''; prod4 := ''; prod5 := ''; prod6 := '';
        valor1 := ''; valor2 := ''; valor3 := ''; valor4 := ''; valor5 := '';
        EMP1 := ''; EMP2 := ''; EMP3 := ''; EMP4 := ''; EMP5 := '';
        PROD1 := qrproduto.FIELDBYNAME('PRODUTO').ASSTRING;
        WHILE LENGTH(PROD1) > 25 DO DELETE(PROD1,26,1);
        prod2 := qrproduto.FIELDBYNAME('CODbarra').ASSTRING;
        VALOR1 := 'R$ '+FORMATFLOAT('###,###,##0.00',qrproduto.FIELDBYNAME('preco').ASFLOAT);
        COD1 := qrproduto.FIELDBYNAME('CODigo').ASSTRING; WHILE LENGTH(COD1) < 6 DO COD1 := '0'+COD1;
        EMP1 := '';

        qrproduto.next;
        qa := qa + 1;

        if qa <> i then
        begin

          PROD3 := qrproduto.FIELDBYNAME('PRODUTO').ASSTRING;
          WHILE LENGTH(PROD3) > 25 DO DELETE(PROD3,26,1);
          prod4 := qrproduto.FIELDBYNAME('CODbarra').ASSTRING;
          VALOR2 := 'R$ '+FORMATFLOAT('###,###,##0.00',qrproduto.FIELDBYNAME('preco').ASFLOAT);
          COD2 := qrproduto.FIELDBYNAME('CODigo').ASSTRING; WHILE LENGTH(COD2) < 6 DO COD1 := '0'+COd2;
          EMP2 := '';
          qrproduto.next;
          qa := qa + 1;
          if LENGTH(PROD1) > 25 then DELETE(PROD2,26,1);

          if qa <> i then
          begin

            PROD5 := qrproduto.FIELDBYNAME('PRODUTO').ASSTRING;
            WHILE LENGTH(PROD5) > 25 DO DELETE(PROD5,26,1);
            prod6 := qrproduto.FIELDBYNAME('CODbarra').ASSTRING;
            VALOR3 := 'R$ '+FORMATFLOAT('###,###,##0.00',qrproduto.FIELDBYNAME('preco').ASFLOAT);
            COD3 := qrproduto.FIELDBYNAME('CODigo').ASSTRING; WHILE LENGTH(COD3) < 6 DO COD3 := '0'+COD3;
            EMP3 := '';
            qrproduto.next;
            qa := qa + 1;
          end;
        end;

















        WRITELN(F,'A2');
        WRITELN(F,'D11');

        WRITELN(F,'1A4202100150010'+cod1);
        WRITELN(F,'111200000610010'+prod1);
        WRITELN(F,'111200000480010'+prod2);
        WRITELN(F,'121100000030065'+valor1);
        writeln(f,'121100000030009'+emp1);

        if prod3 <> '' then
        begin
          WRITELN(F,'1A4202100150152'+cod2);
          WRITELN(F,'111200000610152'+prod3);
          WRITELN(F,'111200000480152'+prod4);
          WRITELN(F,'121100000030207'+valor2);
          writeln(f,'121100000030151'+emp2);
        end;
        if prod5 <> '' then
        begin
          WRITELN(F,'1A4202100150294'+cod3);
          WRITELN(F,'111200000610294'+prod5);
          WRITELN(F,'111200000480294'+prod6);
          WRITELN(F,'121100000030349'+valor3);
          writeln(f,'121100000030293'+emp3);
        end;


//        qa := qa + 1;
        writeln(f,'^'+xx);
        writeln(f,'Q0001');
        writeln(f,'E');
        if i <> qa then
        begin
          writeln(f,'L');
        end;
      END;




      CLOSEFILE(F);

      application.ProcessMessages;

      assignfile(txt,'c:\etiqueta.prn');
      reset(txt);
      assignfile(f,impressora_venda);
      rewrite(f);
      while not eof(txt) do
      begin
        readln(txt,entrada);
        writeln(f,entrada);
      end;
      closefile(txt);
      closefile(f);
  end;




  if combobox1.ItemIndex = 2 then
  begin
    QRPRODUTO.CLOSE;
    QRPRODUTO.SQL.CLEAR;
    QRPRODUTO.SQL.ADD('DELETE FROM CL00007');
    QRPRODUTO.ExecSQL;

    QRPRODUTO.CLOSE;
    QRPRODUTO.SQL.CLEAR;
    QRPRODUTO.SQL.ADD('SELECT * FROM CL00007');
    QRPRODUTO.OPEN;


    qretiq.FIRST;
    WHILE NOT QRETIQ.EOF DO
    BEGIN
      FOR I := 1 TO QRETIQ.FIELDBYNAME('QTDE').ASINTEGER DO
      BEGIN
        QRPRODUTO.INSERT;
        QRPRODUTO.FIELDBYNAME('CODIGO').ASSTRING := QRETIQ.FIELDBYNAME('CODPRODUTO').ASSTRING;
        QRPRODUTO.FIELDBYNAME('PRODUTO').ASSTRING := QRETIQ.FIELDBYNAME('PRODUTO').ASSTRING;
        QRPRODUTO.FIELDBYNAME('LOCALIZACAO').ASSTRING := QRETIQ.FIELDBYNAME('LOCALIZACAO').ASSTRING;
        QRPRODUTO.FIELDBYNAME('APLICACAO').ASSTRING := QRETIQ.FIELDBYNAME('AUTO_APLICACAO').ASSTRING;
        QRPRODUTO.FIELDBYNAME('FORNECEDOR').ASSTRING := QRETIQ.FIELDBYNAME('FORNECEDOR').ASSTRING;
        QRPRODUTO.FIELDBYNAME('MARCA').ASSTRING := QRETIQ.FIELDBYNAME('MARCA').ASSTRING;
        QRPRODUTO.FIELDBYNAME('COMPLEMENTO').ASSTRING := QRETIQ.FIELDBYNAME('COMPLEMENTO').ASSTRING;
        QRPRODUTO.FIELDBYNAME('PRODUTO').ASSTRING := QRETIQ.FIELDBYNAME('PRODUTO').ASSTRING;
        QRPRODUTO.FIELDBYNAME('PRECO').ASFLOAT := QRETIQ.FIELDBYNAME('VALOR').ASFLOAT;
        QRPRODUTO.FIELDBYNAME('CODBARRA').ASSTRING := QRETIQ.FIELDBYNAME('CODBARRA').ASSTRING;
        QRPRODUTO.POST;
      END;
      QRETIQ.NEXT;
    END;
    QRPRODUTO.Refresh;
    if combobox1.ItemIndex = 2 then
    begin
      fXproduto.LoadFromFile('\DATASAC\server\rel\f000077.fr3');
      fxproduto.SHOWREPORT;
    end;


  end;

  if combobox1.ItemIndex = 3 then
  begin
    QRPRODUTO.CLOSE;
    QRPRODUTO.SQL.CLEAR;
    QRPRODUTO.SQL.ADD('DELETE FROM CL00007');
    QRPRODUTO.ExecSQL;

    QRPRODUTO.CLOSE;
    QRPRODUTO.SQL.CLEAR;
    QRPRODUTO.SQL.ADD('SELECT * FROM CL00007');
    QRPRODUTO.OPEN;


    qretiq.FIRST;
    WHILE NOT QRETIQ.EOF DO
    BEGIN
      FOR I := 1 TO QRETIQ.FIELDBYNAME('QTDE').ASINTEGER DO
      BEGIN
        QRPRODUTO.INSERT;
        QRPRODUTO.FIELDBYNAME('CODIGO').ASSTRING := QRETIQ.FIELDBYNAME('CODPRODUTO').ASSTRING;
        QRPRODUTO.FIELDBYNAME('PRODUTO').ASSTRING := QRETIQ.FIELDBYNAME('PRODUTO').ASSTRING;
        QRPRODUTO.FIELDBYNAME('PRECO').ASFLOAT := QRETIQ.FIELDBYNAME('VALOR').ASFLOAT;
        QRPRODUTO.POST;
      END;
      QRETIQ.NEXT;
    END;
    QRPRODUTO.Refresh;
    i := qrproduto.RecordCount;
    qa := 0;
    qrproduto.first;
    assignfile(arquivo,impressora_venda);
    rewrite(arquivo);
    writeln(arquivo,#27+#51);
    WRITELN(ARQUIVO,'');
    WRITELN(ARQUIVO,'');
    WRITELN(ARQUIVO,'');
    writeln(arquivo,#27+#50);
    while not qrproduto.eof do
    begin
        cod1 := ''; cod2 := ''; cod3 := ''; cod4 := ''; cod5 := '';
        prod1 := ''; prod2 := ''; prod3 := ''; prod4 := ''; prod5 := '';
        valor1 := ''; valor2 := ''; valor3 := ''; valor4 := ''; valor5 := '';
        EMP1 := ''; EMP2 := ''; EMP3 := ''; EMP4 := ''; EMP5 := '';

        cod1 := qrproduto.fieldbyname('codigo').asstring;
        prod1 := qrproduto.fieldbyname('produto').asstring;
        valor1 := 'R$ '+formatfloat('###,###,##0.00',qrproduto.fieldbyname('preco').asfloat);
        EMP1 := emitente_fantasia;
        qrproduto.next;
        qa := qa + 1;
        if qa <> i then
        begin
          cod2 := qrproduto.fieldbyname('codigo').asstring;
          prod2 := qrproduto.fieldbyname('produto').asstring;
          valor2 := 'R$ '+formatfloat('###,###,##0.00',qrproduto.fieldbyname('preco').asfloat);
          EMP2 := emitente_fantasia;
          qrproduto.next;
          qa := qa + 1;
          if qa <> i then
          begin
            cod3 := qrproduto.fieldbyname('codigo').asstring;
            prod3 := qrproduto.fieldbyname('produto').asstring;
            valor3 := 'R$ '+formatfloat('###,###,##0.00',qrproduto.fieldbyname('preco').asfloat);
            EMP3 := emitente_fantasia;
            qrproduto.next;
            qa := qa + 1;
            if qa <> i then
            begin
              cod4 := qrproduto.fieldbyname('codigo').asstring;
              prod4 := qrproduto.fieldbyname('produto').asstring;
              valor4 := 'R$ '+formatfloat('###,###,##0.00',qrproduto.fieldbyname('preco').asfloat);
              EMP4 := emitente_fantasia;
              qrproduto.next;
              qa := qa + 1;
              if qa <> i then
              begin
                cod5 := qrproduto.fieldbyname('codigo').asstring;
                prod5 := qrproduto.fieldbyname('produto').asstring;
                valor5 := 'R$ '+formatfloat('###,###,##0.00',qrproduto.fieldbyname('preco').asfloat);
                EMP5 := emitente_fantasia;
                QA := QA+1;
                qrproduto.next;
              end;
            end;
          end;
        end;

        write(arquivo,#27#77+#15+#27#72+#20,frmprincipal.texto_justifica(EMP1,18,' ','D')+'      ');
        write(arquivo,#27#77+#15+#27#72+#20,frmprincipal.texto_justifica(EMP2,18,' ','D')+'      ');
        write(arquivo,#27#77+#15+#27#72+#20,frmprincipal.texto_justifica(EMP3,18,' ','D')+'      ');
        write(arquivo,#27#77+#15+#27#72+#20,frmprincipal.texto_justifica(EMP4,18,' ','D')+'      ');
        writeLN(arquivo,#27#77+#15+#27#72+#20,frmprincipal.texto_justifica(EMP5,18,' ','D'));

        write(arquivo,#27#77+#15+#27#72+#20,frmprincipal.texto_justifica(prod1,18,' ','D')+'      ');
        write(arquivo,#27#77+#15+#27#72+#20,frmprincipal.texto_justifica(prod2,18,' ','D')+'      ');
        write(arquivo,#27#77+#15+#27#72+#20,frmprincipal.texto_justifica(prod3,18,' ','D')+'      ');
        write(arquivo,#27#77+#15+#27#72+#20,frmprincipal.texto_justifica(prod4,18,' ','D')+'      ');
        writeLN(arquivo,#27#77+#15+#27#72+#20,frmprincipal.texto_justifica(prod5,18,' ','D'));

        write(arquivo,#27#77+#15+#27#72+#20,frmprincipal.texto_justifica(cod1,6,' ','E')+' '+frmprincipal.texto_justifica(valor1,10,' ','E')+'       ');
        write(arquivo,#27#77+#15+#27#72+#20,frmprincipal.texto_justifica(cod2,6,' ','E')+' '+frmprincipal.texto_justifica(valor2,10,' ','E')+'       ');
        write(arquivo,#27#77+#15+#27#72+#20,frmprincipal.texto_justifica(cod3,6,' ','E')+' '+frmprincipal.texto_justifica(valor3,10,' ','E')+'       ');
        write(arquivo,#27#77+#15+#27#72+#20,frmprincipal.texto_justifica(cod4,6,' ','E')+' '+frmprincipal.texto_justifica(valor4,10,' ','E')+'       ');
        writeLN(arquivo,#27#77+#15+#27#72+#20,frmprincipal.texto_justifica(cod5,6,' ','E')+' '+frmprincipal.texto_justifica(valor5,10,' ','E'));

        WRITELN(ARQUIVO,'');
    end;
    CLOSEFILE(ARQUIVO);
  end;













































  if combobox1.ItemIndex = 7 then
  begin




    application.ProcessMessages;
    qa := qretiq.recordcount;
    ASSIGNFILE(F,'c:\etiqueta.prn');
    REWRITE(F);
    WRITELN(F,'c0000');
    WRITELN(F,'KI503');
    WRITELN(F,'O0220');
    WRITELN(F,'f220');
    WRITELN(F,'KW0425');
    WRITELN(F,'KI7');
    WRITELN(F,'V0');
    WRITELN(F,'L');
    WRITELN(F,'H13');
    WRITELN(F,'PC');







    QRPRODUTO.CLOSE;
    QRPRODUTO.SQL.CLEAR;
    QRPRODUTO.SQL.ADD('DELETE FROM CL00007');
    QRPRODUTO.ExecSQL;

    QRPRODUTO.CLOSE;
    QRPRODUTO.SQL.CLEAR;
    QRPRODUTO.SQL.ADD('SELECT * FROM CL00007');
    QRPRODUTO.OPEN;


    qretiq.FIRST;
    WHILE NOT QRETIQ.EOF DO
    BEGIN
      FOR I := 1 TO QRETIQ.FIELDBYNAME('QTDE').ASINTEGER DO
      BEGIN
        QRPRODUTO.INSERT;
        QRPRODUTO.FIELDBYNAME('CODIGO').ASSTRING := QRETIQ.FIELDBYNAME('CODPRODUTO').ASSTRING;
        QRPRODUTO.FIELDBYNAME('CODbarra').ASSTRING := QRETIQ.FIELDBYNAME('CODbarra').ASSTRING;
        QRPRODUTO.FIELDBYNAME('PRODUTO').ASSTRING := QRETIQ.FIELDBYNAME('PRODUTO').ASSTRING;
        QRPRODUTO.FIELDBYNAME('PRECO').ASFLOAT := QRETIQ.FIELDBYNAME('VALOR').ASFLOAT;
        QRPRODUTO.FIELDBYNAME('aplicacao').ASSTRING := QRETIQ.FIELDBYNAME('tamanho').ASSTRING;
        QRPRODUTO.FIELDBYNAME('complemento').ASSTRING := QRETIQ.FIELDBYNAME('texto').ASSTRING;
        QRPRODUTO.FIELDBYNAME('marca').ASSTRING := QRETIQ.FIELDBYNAME('marca').ASSTRING;
        QRPRODUTO.POST;
      END;
      QRETIQ.NEXT;
    END;
    QRPRODUTO.Refresh;
    i := qrproduto.RecordCount;


    xx := frmPrincipal.zerarcodigo(inttostr(i),2);
    qa := 0;
    qrproduto.first;
      while not qrproduto.eof do
      begin
        cod1 := ''; cod2 := ''; cod3 := ''; cod4 := ''; cod5 := '';
        prod1 := ''; prod2 := ''; prod3 := ''; prod4 := ''; prod5 := ''; prod6 := '';
        valor1 := ''; valor2 := ''; valor3 := ''; valor4 := ''; valor5 := '';
        EMP1 := ''; EMP2 := ''; EMP3 := ''; EMP4 := ''; EMP5 := '';
        PROD1 := qrproduto.FIELDBYNAME('PRODUTO').ASSTRING;
        WHILE LENGTH(PROD1) > 25 DO DELETE(PROD1,26,1);
        prod2 := qrproduto.FIELDBYNAME('CODbarra').ASSTRING;
        VALOR1 := 'R$ '+FORMATFLOAT('###,###,##0.00',qrproduto.FIELDBYNAME('preco').ASFLOAT);
        COD1 := qrproduto.FIELDBYNAME('CODigo').ASSTRING; WHILE LENGTH(COD1) < 6 DO COD1 := '0'+COD1;
        EMP1 := qrproduto.FIELDBYNAME('complemento').ASSTRING;

        qrproduto.next;
        qa := qa + 1;

        if qa <> i then
        begin

          PROD3 := qrproduto.FIELDBYNAME('PRODUTO').ASSTRING;
          WHILE LENGTH(PROD3) > 25 DO DELETE(PROD3,26,1);
          prod4 := qrproduto.FIELDBYNAME('CODbarra').ASSTRING;
          VALOR2 := 'R$ '+FORMATFLOAT('###,###,##0.00',qrproduto.FIELDBYNAME('preco').ASFLOAT);
          COD2 := qrproduto.FIELDBYNAME('CODigo').ASSTRING; WHILE LENGTH(COD2) < 6 DO COD1 := '0'+COd2;
          EMP2 := qrproduto.FIELDBYNAME('complemento').ASSTRING;
          qrproduto.next;
          qa := qa + 1;
          if LENGTH(PROD1) > 25 then DELETE(PROD2,26,1);

          if qa <> i then
          begin

            PROD5 := qrproduto.FIELDBYNAME('PRODUTO').ASSTRING;
            WHILE LENGTH(PROD5) > 25 DO DELETE(PROD5,26,1);
            prod6 := qrproduto.FIELDBYNAME('CODbarra').ASSTRING;
            VALOR3 := 'R$ '+FORMATFLOAT('###,###,##0.00',qrproduto.FIELDBYNAME('preco').ASFLOAT);
            COD3 := qrproduto.FIELDBYNAME('CODigo').ASSTRING; WHILE LENGTH(COD3) < 6 DO COD3 := '0'+COD3;
            EMP3:= qrproduto.FIELDBYNAME('complemento').ASSTRING;
            qrproduto.next;
            qa := qa + 1;
          end;
        end;

{

        WRITELN(F,'A2');
        WRITELN(F,'D11');

        WRITELN(F,'1a4202000130016'+cod1);
        WRITELN(F,'191100100660010'+'Cod: '+prod2);
        WRITELN(F,'191100400340016'+valor1);
        WRITELN(F,'121100000020026'+emitente_fantasia);
        WRITELN(F,'191100100660085'+'Tam: '+emp1);
        WRITELN(F,'191100100540010'+prod1);

        if prod3 <> '' then
        begin
          WRITELN(F,'1a4202000130158'+cod2);
          WRITELN(F,'191100100660152'+'Cod: '+prod4);
          WRITELN(F,'191100400340158'+valor2);
          WRITELN(F,'121100000020168'+emitente_fantasia);
          WRITELN(F,'191100100660227'+'Tam: '+emp2);
          WRITELN(F,'191100100540152'+prod3);
        end;
        if prod5 <> '' then
        begin
          WRITELN(F,'1a4202000130300'+cod3);
          WRITELN(F,'191100100660294'+'Cod: '+prod6);
          WRITELN(F,'191100400340300'+valor3);
          WRITELN(F,'121100000020310'+emitente_fantasia);
          WRITELN(F,'191100100660369'+'Tam: '+emp3);
          WRITELN(F,'191100100540294'+prod5);
        end;

}

        WRITELN(F,'A2');
        WRITELN(F,'D11');

        WRITELN(F,'1a4202000120016'+cod1);
        WRITELN(F,'191100200640010'+'Cod: '+prod2);
        WRITELN(F,'191100400330012'+valor1);
        WRITELN(F,'121100000010026'+emitente_fantasia);
        WRITELN(F,'191100100650085'+'Tam: '+emp1);
        WRITELN(F,'191100100530010'+prod1);
        WRITELN(F,'191100100370095'+'A Vista');

        if prod3 <> '' then
        begin
          WRITELN(F,'1a4202000120158'+cod2);
          WRITELN(F,'191100200640152'+'Cod: '+prod4);
          WRITELN(F,'191100400330154'+valor2);
          WRITELN(F,'121100000010168'+emitente_fantasia);
          WRITELN(F,'191100100650227'+'Tam: '+emp2);
          WRITELN(F,'191100100530152'+prod3);
          WRITELN(F,'191100100370237'+'A Vista');

        end;
        if prod5 <> '' then
        begin
          WRITELN(F,'1a4202000120300'+cod3);
          WRITELN(F,'191100200640294'+'Cod: '+prod6);
          WRITELN(F,'191100400330296'+valor3);
          WRITELN(F,'121100000010310'+emitente_fantasia);
          WRITELN(F,'191100100650369'+'Tam: '+emp3);
          WRITELN(F,'191100100530294'+prod5);
          WRITELN(F,'191100100370379'+'A Vista');
        end;

//        qa := qa + 1;
        writeln(f,'^'+xx);
        writeln(f,'Q0001');
        writeln(f,'E');
        if i <> qa then
        begin
          writeln(f,'L');
        end;
      END;


      CLOSEFILE(F);

      application.ProcessMessages;

      assignfile(txt,'c:\etiqueta.prn');
      reset(txt);
      assignfile(f,impressora_venda);
      rewrite(f);
      while not eof(txt) do
      begin
        readln(txt,entrada);
        writeln(f,entrada);
      end;
      closefile(txt);
      closefile(f);
  end;




     // ETIQUETA PEQUENA BIBAL

    if combobox1.ItemIndex = 10 then
  begin




    application.ProcessMessages;
    qa := qretiq.recordcount;
    ASSIGNFILE(F,'c:\etiqueta.prn');
    REWRITE(F);
    WRITELN(F,'c0000');
    WRITELN(F,'KI503');
    WRITELN(F,'O0220');
    WRITELN(F,'f220');
    WRITELN(F,'KW0425');
    WRITELN(F,'KI7');
    WRITELN(F,'V0');
    WRITELN(F,'L');
    WRITELN(F,'H13');
    WRITELN(F,'PC');





    QRPRODUTO.CLOSE;
    QRPRODUTO.SQL.CLEAR;
    QRPRODUTO.SQL.ADD('DELETE FROM CL00007');
    QRPRODUTO.ExecSQL;

    QRPRODUTO.CLOSE;
    QRPRODUTO.SQL.CLEAR;
    QRPRODUTO.SQL.ADD('SELECT * FROM CL00007');
    QRPRODUTO.OPEN;


    qretiq.FIRST;
    WHILE NOT QRETIQ.EOF DO
    BEGIN
      FOR I := 1 TO QRETIQ.FIELDBYNAME('QTDE').ASINTEGER DO
      BEGIN
        QRPRODUTO.INSERT;
        QRPRODUTO.FIELDBYNAME('CODIGO').ASSTRING := QRETIQ.FIELDBYNAME('CODPRODUTO').ASSTRING;
        QRPRODUTO.FIELDBYNAME('CODbarra').ASSTRING := QRETIQ.FIELDBYNAME('CODbarra').ASSTRING;
        QRPRODUTO.FIELDBYNAME('PRODUTO').ASSTRING := QRETIQ.FIELDBYNAME('PRODUTO').ASSTRING;
        QRPRODUTO.FIELDBYNAME('PRECO').ASFLOAT := QRETIQ.FIELDBYNAME('VALOR').ASFLOAT;
        QRPRODUTO.FIELDBYNAME('LOCALIZACAO').AsString := QRETIQ.FIELDBYNAME('LOCALIZACAO').AsString;
        QRPRODUTO.FIELDBYNAME('ULTIMA_COMPRA').AsString := QRETIQ.FIELDBYNAME('ULTIMA_COMPRA').AsString;
        QRPRODUTO.POST;
      END;
      QRETIQ.NEXT;
    END;
    QRPRODUTO.Refresh;
    i := qrproduto.RecordCount;


    xx := frmPrincipal.zerarcodigo(inttostr(i),2);
    qa := 0;
    qrproduto.first;
      while not qrproduto.eof do
      begin
        cod1 := ''; cod2 := ''; cod3 := ''; cod4 := ''; cod5 := ''; cod6 := '';
        prod1 := ''; prod2 := ''; prod3 := ''; prod4 := ''; prod5 := ''; prod6 := '';
        valor1 := ''; valor2 := ''; valor3 := ''; valor4 := ''; valor5 := '';
        EMP1 := ''; EMP2 := ''; EMP3 := ''; EMP4 := ''; EMP5 := ''; EMP6 := '';
        PROD1 := qrproduto.FIELDBYNAME('PRODUTO').ASSTRING;
        prod2 := '';
        if LENGTH(PROD1) > 25 then
        begin
          prod2 := copy(prod1,26,26);
          DELETE(PROD1,26,100);
        end;
        VALOR1 := 'R$ '+FORMATFLOAT('###,###,##0.00',qrproduto.FIELDBYNAME('preco').ASFLOAT);
        COD1 := qrproduto.FIELDBYNAME('CODigo').ASSTRING; WHILE LENGTH(COD1) < 6 DO COD1 := '0'+COD1;
        EMP1 := qrproduto.FIELDBYNAME('CODbarra').ASSTRING;
        EMP4 := qrproduto.FIELDBYNAME('LOCALIZACAO').ASSTRING;
        DAT1 := copy(DateToStr(qrproduto.FIELDBYNAME('ULTIMA_COMPRA').AsDateTime),7,4)+
                copy(DateToStr(qrproduto.FIELDBYNAME('ULTIMA_COMPRA').AsDateTime),4,2)+
                copy(DateToStr(qrproduto.FIELDBYNAME('ULTIMA_COMPRA').AsDateTime),1,2);
        qrproduto.next;
        qa := qa + 1;

        if qa <> i then
        begin
          PROD3 := qrproduto.FIELDBYNAME('PRODUTO').ASSTRING;
          prod4 := '';
          if LENGTH(PROD3) > 25 then
          begin
             prod4 := copy(prod3,26,26);
             DELETE(PROD3,26,100);
          end;
          VALOR2 := 'R$ '+FORMATFLOAT('###,###,##0.00',qrproduto.FIELDBYNAME('preco').ASFLOAT);
          COD2 := qrproduto.FIELDBYNAME('CODigo').ASSTRING; WHILE LENGTH(COD2) < 6 DO COD1 := '0'+COd2;
          EMP2 := qrproduto.FIELDBYNAME('CODbarra').ASSTRING;
          EMP5 := qrproduto.FIELDBYNAME('LOCALIZACAO').ASSTRING;
          DAT2 := copy(DateToStr(qrproduto.FIELDBYNAME('ULTIMA_COMPRA').AsDateTime),7,4)+
                  copy(DateToStr(qrproduto.FIELDBYNAME('ULTIMA_COMPRA').AsDateTime),4,2)+
                  copy(DateToStr(qrproduto.FIELDBYNAME('ULTIMA_COMPRA').AsDateTime),1,2);

          qrproduto.next;
          qa := qa + 1;


          if qa <> i then
          begin

            PROD5 := qrproduto.FIELDBYNAME('PRODUTO').ASSTRING;
            prod6 := '';
            if LENGTH(PROD5) > 25 then
            begin
               prod6 := copy(prod5,26,26);
               DELETE(PROD5,26,100);
            end;
            VALOR3 := 'R$ '+FORMATFLOAT('###,###,##0.00',qrproduto.FIELDBYNAME('preco').ASFLOAT);
            COD3 := qrproduto.FIELDBYNAME('CODigo').ASSTRING; WHILE LENGTH(COD3) < 6 DO COD3 := '0'+COD3;
            EMP3 := qrproduto.FIELDBYNAME('CODbarra').ASSTRING;
            EMP6 := qrproduto.FIELDBYNAME('LOCALIZACAO').ASSTRING;
            DAT3 := copy(DateToStr(qrproduto.FIELDBYNAME('ULTIMA_COMPRA').AsDateTime),7,4)+
                    copy(DateToStr(qrproduto.FIELDBYNAME('ULTIMA_COMPRA').AsDateTime),4,2)+
                    copy(DateToStr(qrproduto.FIELDBYNAME('ULTIMA_COMPRA').AsDateTime),1,2);

            qrproduto.next;
            qa := qa + 1;
          end;
        end;

















        WRITELN(F,'A2');
        WRITELN(F,'D11');

        WRITELN(F,'1A4202000180033'+cod1);
        WRITELN(F,'191100100650023'+prod1);
        WRITELN(F,'191100200010089'+valor1);
        //WRITELN(F,'111100000030024'+'COD:'+EMP1);
        WRITELN(F,'111100000030024'+EMP1);
        writeln(f,'191100100540023'+emp4);
        writeln(f,'191100100540102'+DAT1);

        if prod3 <> '' then

        begin
          WRITELN(F,'1A4202000180172'+cod2);
          WRITELN(F,'191100100650162'+prod3);
          WRITELN(F,'191100200010228'+valor2);
          //WRITELN(F,'111100000030163'+'COD:'+EMP2);
          WRITELN(F,'111100000030163'+EMP2);
          writeln(f,'191100100540162'+EMP5);
          writeln(f,'191100100540241'+DAT2);
        end;
        if prod5 <> '' then

        begin
          WRITELN(F,'1A4202000180311'+cod3);
          WRITELN(F,'191100100650301'+prod5);
          WRITELN(F,'191100200010367'+valor3);
          //WRITELN(F,'111100000030302'+'COD:'+EMP3);
          WRITELN(F,'111100000030302'+EMP3);
          writeln(f,'191100100540301'+emp6);
          writeln(f,'191100100540380'+DAT3);
        end;








//        qa := qa + 1;
        writeln(f,'^'+xx);
        writeln(f,'Q0001');
        writeln(f,'E');
        if i <> qa then
        begin
          writeln(f,'L');
        end;
      END;




      CLOSEFILE(F);

      application.ProcessMessages;

      assignfile(txt,'c:\etiqueta.prn');
      reset(txt);
      assignfile(f,impressora_venda);
      rewrite(f);
      while not eof(txt) do
      begin
        readln(txt,entrada);
        writeln(f,entrada);
      end;
      closefile(txt);
      closefile(f);
  end;


     // ETIQUETA GRANDE BIBAL

  if combobox1.ItemIndex = 11 then
  begin


    frmmodulo.qremitente.Open;

    application.ProcessMessages;
    qa := qretiq.recordcount;
    ASSIGNFILE(F,'c:\etiqueta.prn');
    REWRITE(F);
    WRITELN(F,'c0000');
    WRITELN(F,'KI503');
    WRITELN(F,'O0220');
    WRITELN(F,'f220');
    WRITELN(F,'KW0343');
    WRITELN(F,'KI7');
    WRITELN(F,'V0');
    WRITELN(F,'L');
    WRITELN(F,'H13');
    WRITELN(F,'PC');



    QRPRODUTO.CLOSE;
    QRPRODUTO.SQL.CLEAR;
    QRPRODUTO.SQL.ADD('DELETE FROM CL00007');
    QRPRODUTO.ExecSQL;

    QRPRODUTO.CLOSE;
    QRPRODUTO.SQL.CLEAR;
    QRPRODUTO.SQL.ADD('SELECT * FROM CL00007');
    QRPRODUTO.OPEN;


    qretiq.FIRST;
    WHILE NOT QRETIQ.EOF DO
    BEGIN
      FOR I := 1 TO QRETIQ.FIELDBYNAME('QTDE').ASINTEGER DO
      BEGIN
        QRPRODUTO.INSERT;
        QRPRODUTO.FIELDBYNAME('CODIGO').ASSTRING := QRETIQ.FIELDBYNAME('CODPRODUTO').ASSTRING;
        QRPRODUTO.FIELDBYNAME('CODbarra').ASSTRING := QRETIQ.FIELDBYNAME('CODbarra').ASSTRING;
        QRPRODUTO.FIELDBYNAME('PRODUTO').ASSTRING := QRETIQ.FIELDBYNAME('PRODUTO').ASSTRING;
        QRPRODUTO.FIELDBYNAME('PRECO').ASFLOAT := QRETIQ.FIELDBYNAME('VALOR').ASFLOAT;
        QRPRODUTO.FIELDBYNAME('LOCALIZACAO').AsString := QRETIQ.FIELDBYNAME('LOCALIZACAO').AsString;
        QRPRODUTO.FIELDBYNAME('ULTIMA_COMPRA').AsString := QRETIQ.FIELDBYNAME('ULTIMA_COMPRA').AsString;

        QRPRODUTO.POST;
      END;
      QRETIQ.NEXT;
    END;
    QRPRODUTO.Refresh;
    i := qrproduto.RecordCount;


    xx := frmPrincipal.zerarcodigo(inttostr(i),2);
    qa := 0;
    qrproduto.first;
      while not qrproduto.eof do
      begin
        cod1 := ''; cod2 := ''; cod3 := ''; cod4 := ''; cod5 := '';
        prod1 := ''; prod2 := ''; prod3 := ''; prod4 := ''; prod5 := ''; prod6 := '';
        valor1 := ''; valor2 := ''; valor3 := ''; valor4 := ''; valor5 := '';
        EMP1 := ''; EMP2 := ''; EMP3 := ''; EMP4 := ''; EMP5 := '';

        PROD1 := qrproduto.FIELDBYNAME('PRODUTO').ASSTRING;
        prod2 := '';
        if LENGTH(PROD1) > 24 then
        begin
          prod2 := copy(prod1,25,26);
          DELETE(PROD1,25,100);
        end;

        avista1 := 'R$ '+FORMATFLOAT('###,###,##0.00',(qrproduto.FIELDBYNAME('preco').ASFLOAT-(qrproduto.FIELDBYNAME('preco').ASFLOAT*0.10)));
        VALOR1 := 'R$ '+FORMATFLOAT('###,###,##0.00',qrproduto.FIELDBYNAME('preco').ASFLOAT);
        COD1 := qrproduto.FIELDBYNAME('CODigo').ASSTRING; WHILE LENGTH(COD1) < 6 DO COD1 := '0'+COD1;
        EMP1 := qrproduto.FIELDBYNAME('CODbarra').ASSTRING;
        EMP3 := qrproduto.FIELDBYNAME('LOCALIZACAO').ASSTRING;
        DAT1 := copy(DateToStr(qrproduto.FIELDBYNAME('ULTIMA_COMPRA').AsDateTime),7,4)+
                copy(DateToStr(qrproduto.FIELDBYNAME('ULTIMA_COMPRA').AsDateTime),4,2)+
                copy(DateToStr(qrproduto.FIELDBYNAME('ULTIMA_COMPRA').AsDateTime),1,2);

        qrproduto.next;
        qa := qa + 1;





        if qa <> i then
        begin
          PROD3 := qrproduto.FIELDBYNAME('PRODUTO').ASSTRING;
          prod4 := '';
          if LENGTH(PROD3) > 24 then
          begin
            prod4 := copy(prod3,25,26);
            DELETE(PROD3,25,100);
          end;

          avista2 := 'R$ '+FORMATFLOAT('###,###,##0.00',(qrproduto.FIELDBYNAME('preco').ASFLOAT-(qrproduto.FIELDBYNAME('preco').ASFLOAT*0.10)));

          VALOR2 := 'R$ '+FORMATFLOAT('###,###,##0.00',qrproduto.FIELDBYNAME('preco').ASFLOAT);
          COD2 := qrproduto.FIELDBYNAME('CODigo').ASSTRING; WHILE LENGTH(COD1) < 6 DO COD1 := '0'+COD1;
          EMP2 := qrproduto.FIELDBYNAME('CODbarra').ASSTRING;
          EMP4 := qrproduto.FIELDBYNAME('LOCALIZACAO').ASSTRING;
          DAT2 := copy(DateToStr(qrproduto.FIELDBYNAME('ULTIMA_COMPRA').AsDateTime),7,4)+
                copy(DateToStr(qrproduto.FIELDBYNAME('ULTIMA_COMPRA').AsDateTime),4,2)+
                copy(DateToStr(qrproduto.FIELDBYNAME('ULTIMA_COMPRA').AsDateTime),1,2);

          qrproduto.next;
          qa := qa + 1;
        end;


        WRITELN(F,'A2');
        WRITELN(F,'D11');

        WRITELN(F,'131100001860061'+emitente_fantasia);
        WRITELN(F,'121100001700012'+prod1);
        WRITELN(F,'191100001360011'+EMP3);
        WRITELN(F,'1A4203400850028'+cod1);
        WRITELN(F,'111200000290015'+'CODIGO:'+cod1);
        WRITELN(F,'121200000050098'+valor1);
        WRITELN(F,'121100001580012'+prod2);
        WRITELN(F,'191100001360111'+DAT1);
        WRITELN(F,'192100000680084'+valor1);


        if prod4 <> '' then
        begin
          WRITELN(F,'131100001860226'+emitente_fantasia);
          WRITELN(F,'121100001700177'+prod3);
          WRITELN(F,'191100001360176'+EMP4);
          WRITELN(F,'1A4203400850193'+cod2);
          WRITELN(F,'111200000290180'+'CODIGO:'+cod2);
          WRITELN(F,'121200000050263'+valor2);
          WRITELN(F,'121100001580177'+prod4);
          WRITELN(F,'191100001360276'+DAT2);
          WRITELN(F,'192100000680249'+valor2);
        end;



        writeln(f,'^'+xx);
        writeln(f,'Q0001');
        writeln(f,'E');
        if i <> qa then
        begin
          writeln(f,'L');
        end;
      END;




      CLOSEFILE(F);

      application.ProcessMessages;

      assignfile(txt,'c:\etiqueta.prn');
      reset(txt);
      assignfile(f,impressora_venda);
      rewrite(f);
      while not eof(txt) do
      begin
        readln(txt,entrada);
        writeln(f,entrada);
      end;
      closefile(txt);
      closefile(f);
  end;


  // ETIQUETA DE GONDOLA DE SUPERMERCADO

  if combobox1.ItemIndex = 12 then  // 2 - Bobina | 11,10 cm x 3,40 cm | 01 Fileira
  begin
    xx := frmPrincipal.zerarcodigo(qretiq.fieldbyname('qtde').asstring,2);
    qretiq.Refresh;
    qretiq.First;
    assignfile(f,impressora_venda);
    rewrite(f);
    WHILE NOT qretiq.Eof DO
    BEGIN
      WRITELN(F,'c0000');
      WRITELN(F,'KI503');
      WRITELN(F,'O0220');
      WRITELN(F,'f220');
      WRITELN(F,'KW0409'); //KW0425
      WRITELN(F,'KI7');
      WRITELN(F,'V0');
      WRITELN(F,'L');
      WRITELN(F,'H12');
      WRITELN(F,'PC');
      WRITELN(F,'A2');
      WRITELN(F,'D11');
      entrada := copy(qretiq.fieldbyname('codbarra').asstring,1,12); while length(entrada) < 12 DO ENTRADA := '0'+ENTRADA;
      WRITELN(F,'1F3303000310209'+ENTRADA);
      WRITELN(F,'222100001150376'+QRETIQ.FIELDBYNAME('CODPRODUTO').ASSTRING);
      WRITELN(F,'122100000100015'+TRIM(EMITENTE_FANTASIA));
      WRITELN(F,'121100000100328'+DATETOSTR(DATE));
      WRITELN(F,'192300400240013R$'+FORMATFLOAT('###,###,##0.00',qretiq.FIELDBYNAME('VALOR').ASFLOAT));
      WRITELN(F,'131200000830040'+copy(qretiq.FIELDBYNAME('PRODUTO').ASSTRING,1,30));
      xx := qretiq.fieldbyname('qtde').asstring; while Length(xx) < 4 do xx := '0'+xx;
      WRITELN(F,'^'+qretiq.fieldbyname('qtde').asstring);
      WRITELN(F,'Q'+xx);
      WRITELN(F,'E');
     qretiq.Next;
    END;
    CLOSEFILE(F);
  end;


  if combobox1.ItemIndex = 15 then  // tamanho e referencia
  begin




    application.ProcessMessages;
    qa := qretiq.recordcount;
    ASSIGNFILE(F,'c:\etiqueta.prn');
    REWRITE(F);
    WRITELN(F,'c0000');
    WRITELN(F,'KI503');
    WRITELN(F,'O0220');
    WRITELN(F,'f220');
    WRITELN(F,'KW0425');
    WRITELN(F,'KI7');
    WRITELN(F,'V0');
    WRITELN(F,'L');
    WRITELN(F,'H13');
    WRITELN(F,'PC');

//KW0433




    QRPRODUTO.CLOSE;
    QRPRODUTO.SQL.CLEAR;
    QRPRODUTO.SQL.ADD('DELETE FROM CL00007');
    QRPRODUTO.ExecSQL;

    QRPRODUTO.CLOSE;
    QRPRODUTO.SQL.CLEAR;
    QRPRODUTO.SQL.ADD('SELECT * FROM CL00007');
    QRPRODUTO.OPEN;


    qretiq.FIRST;
    WHILE NOT QRETIQ.EOF DO
    BEGIN
      FOR I := 1 TO QRETIQ.FIELDBYNAME('QTDE').ASINTEGER DO
      BEGIN
        QRPRODUTO.INSERT;
        QRPRODUTO.FIELDBYNAME('CODIGO').ASSTRING := QRETIQ.FIELDBYNAME('CODPRODUTO').ASSTRING;
        QRPRODUTO.FIELDBYNAME('CODbarra').ASSTRING := QRETIQ.FIELDBYNAME('CODbarra').ASSTRING;
        QRPRODUTO.FIELDBYNAME('PRODUTO').ASSTRING := QRETIQ.FIELDBYNAME('PRODUTO').ASSTRING;
        QRPRODUTO.FIELDBYNAME('aplicacao').AsString := QRETIQ.FIELDBYNAME('tamanho').AsString;
        QRPRODUTO.POST;
      END;
      QRETIQ.NEXT;
    END;
    QRPRODUTO.Refresh;
    i := qrproduto.RecordCount;


    xx := frmPrincipal.zerarcodigo(inttostr(i),2);
    qa := 0;
    qrproduto.first;
      while not qrproduto.eof do
      begin
        cod1 := ''; cod2 := ''; cod3 := ''; cod4 := ''; cod5 := '';
        prod1 := ''; prod2 := ''; prod3 := ''; prod4 := ''; prod5 := ''; prod6 := '';
        tam1 := ''; tam2 := ''; tam3 := '';
        EMP1 := ''; EMP2 := ''; EMP3 := ''; EMP4 := ''; EMP5 := '';
        PROD1 := qrproduto.FIELDBYNAME('PRODUTO').ASSTRING;
        prod2 := '';
        if LENGTH(PROD1) > 25 then
        begin
          prod2 := copy(prod1,26,26);
          DELETE(PROD1,26,100);
        end;
        TAM1 := qrproduto.FIELDBYNAME('aplicacao').AsString;
        COD1 := qrproduto.FIELDBYNAME('CODigo').ASSTRING; WHILE LENGTH(COD1) < 6 DO COD1 := '0'+COD1;
        EMP1 := qrproduto.FIELDBYNAME('CODbarra').ASSTRING;
        qrproduto.next;
        qa := qa + 1;

        if qa <> i then
        begin
          PROD3 := qrproduto.FIELDBYNAME('PRODUTO').ASSTRING;
          prod4 := '';
          if LENGTH(PROD3) > 25 then
          begin
             prod4 := copy(prod3,26,26);
             DELETE(PROD3,26,100);
          end;
          TAM2 := qrproduto.FIELDBYNAME('aplicacao').AsString;
          COD2 := qrproduto.FIELDBYNAME('CODigo').ASSTRING; WHILE LENGTH(COD2) < 6 DO COD1 := '0'+COd2;
          EMP2 := qrproduto.FIELDBYNAME('CODbarra').ASSTRING;
          qrproduto.next;
          qa := qa + 1;


          if qa <> i then
          begin

            PROD5 := qrproduto.FIELDBYNAME('PRODUTO').ASSTRING;
            prod6 := '';
            if LENGTH(PROD5) > 25 then
            begin
               prod6 := copy(prod5,26,26);
               DELETE(PROD5,26,100);
            end;
            TAM3 := qrproduto.FIELDBYNAME('aplicacao').AsString;
            COD3 := qrproduto.FIELDBYNAME('CODigo').ASSTRING; WHILE LENGTH(COD3) < 6 DO COD3 := '0'+COD3;
            EMP3 := qrproduto.FIELDBYNAME('CODbarra').ASSTRING;
            qrproduto.next;
            qa := qa + 1;
          end;
        end;


        WRITELN(F,'A2');
        WRITELN(F,'D11');

        WRITELN(F,'1A4202000000018'+cod1);
        WRITELN(F,'121100000560018'+'REF:');
        WRITELN(F,'121100000370017'+'TAM:');
        WRITELN(F,'141100000520043'+EMP1);
        writeln(F,'191100400310042'+TAM1);

        if prod3 <> '' then
        begin
          WRITELN(F,'1A4202000000159'+cod2);
          WRITELN(F,'121100000560159'+'REF:');
          WRITELN(F,'121100000370158'+'TAM:');
          WRITELN(F,'141100000520184'+EMP2);
          writeln(f,'191100400310183'+TAM2);
        end;
        if prod5 <> '' then
        begin
          WRITELN(F,'1A4202000000300'+cod3);
          WRITELN(F,'121100000560300'+'REF:');
          WRITELN(F,'121100000370299'+'TAM:');
          WRITELN(F,'141100000520325'+EMP3);
          writeln(f,'191100400310324'+TAM3);
        end;


//        qa := qa + 1;
        writeln(f,'^'+xx);
        writeln(f,'Q0001');
        writeln(f,'E');
        if i <> qa then
        begin
          writeln(f,'L');
        end;
      END;




      CLOSEFILE(F);

      application.ProcessMessages;

      assignfile(txt,'c:\etiqueta.prn');
      reset(txt);
      assignfile(f,impressora_venda);
      rewrite(f);
      while not eof(txt) do
      begin
        readln(txt,entrada);
        writeln(f,entrada);
      end;
      closefile(txt);
      closefile(f);
  end;



  if combobox1.ItemIndex = 14 then  // 18 Gondola
  begin
    xx := frmPrincipal.zerarcodigo(qretiq.fieldbyname('qtde').asstring,2);
    qretiq.Refresh;
    qretiq.First;
    assignfile(f,impressora_venda);
    rewrite(f);
    WHILE NOT qretiq.Eof DO
    BEGIN
      WRITELN(F,'c0000');
      WRITELN(F,'KI503');
      WRITELN(F,'O0220');
      WRITELN(F,'f220');
      WRITELN(F,'KW0327');
      WRITELN(F,'KI7');
      WRITELN(F,'V0');
      WRITELN(F,'L');
      WRITELN(F,'H12');
      WRITELN(F,'PC');
      WRITELN(F,'A2');
      WRITELN(F,'D11');
      WRITELN(F,'131100000970009'+QRETIQ.FIELDBYNAME('CODPRODUTO').ASSTRING+' '+copy(qretiq.FIELDBYNAME('PRODUTO').ASSTRING,1,30));
      WRITELN(F,'124500000350067R$ '+FORMATFLOAT('###,###,##0.00',qretiq.FIELDBYNAME('VALOR').ASFLOAT));
      WRITELN(F,'131100000070111'+qretiq.fieldbyname('codbarra').asstring);
      xx := qretiq.fieldbyname('qtde').asstring; while Length(xx) < 4 do xx := '0'+xx;
      WRITELN(F,'^'+qretiq.fieldbyname('qtde').asstring);
      WRITELN(F,'Q'+xx);
      WRITELN(F,'E');
     qretiq.Next;
    END;
    CLOSEFILE(F);
  end;




  pimprimir.visible := false;
end;

procedure Tfrmetiquetador.ComboBox1Enter(Sender: TObject);
begin
  combobox1.Color := $00A0FAF8;
end;

procedure Tfrmetiquetador.combo_impressoraEnter(Sender: TObject);
begin
  combo_impressora.Color := $00A0FAF8;
end;

procedure Tfrmetiquetador.ComboBox1Exit(Sender: TObject);
begin

  combobox1.Color := clwindow;


end;

procedure Tfrmetiquetador.combo_impressoraExit(Sender: TObject);
begin
  combo_impressora.Color := clwindow;
end;

procedure Tfrmetiquetador.ComboBox1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmetiquetador.eprodutoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmetiquetador.eqtdeEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmetiquetador.eqtdeExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
end;

procedure Tfrmetiquetador.eprodutoEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmetiquetador.COMBOCODIGOExit(Sender: TObject);
begin

    IF FRMMODULO.QRPRODUTO.LOCATE('CODBARRA',COMBOCODIGO.TEXT,[loCaseInsensitive]) THEN
    BEGIN
      QRETIQ.FIELDBYNAME('PRODUTO').ASSTRING := FRMMODULO.QRPRODUTO.FIELDBYNAME('PRODUTO').ASSTRING;
      QRETIQ.FIELDBYNAME('VALOR').ASFLOAT := FRMMODULO.QRPRODUTO.FIELDBYNAME('PRECOVENDA').ASFLOAT;
      QRETIQ.FIELDBYNAME('CODBARRA').ASSTRING := FRMMODULO.QRPRODUTO.FIELDBYNAME('CODBARRA').ASSTRING;
      QRETIQ.FIELDBYNAME('CODPRODUTO').ASSTRING := FRMMODULO.QRPRODUTO.FIELDBYNAME('CODIGO').ASSTRING;
      QRETIQ.FIELDBYNAME('ULTIMA_COMPRA').AsDateTime := FRMMODULO.QRPRODUTO.FIELDBYNAME('DATA_ULTIMACOMPRA').AsDateTime;

      QRETIQ.FIELDBYNAME('QTDE').ASINTEGER := 1;

      if frmmodulo.qrproduto.fieldbyname('usa_grade').asinteger = 1 then
      begin
        qrgrade.close;
        qrgrade.sql.clear;
        qrgrade.sql.add('select * from c000021 where codproduto = '''+frmmodulo.qrproduto.fieldbyname('codigo').asstring+''' order by codigo');
        qrgrade.open;
        if qrgrade.RecordCount > 0 then
        begin
          frmetiqueta_grade := tfrmetiqueta_grade.create(self);
          frmetiqueta_grade.showmODal;
          if resultado_pesquisa1 <> '' then
          begin
            qretiq.FieldByName('tamanho').asstring := resultado_pesquisa1;
          end;
        end;

      end;

    END
    ELSE
    BEGIN
      QRETIQ.FIELDBYNAME('CODPRODUTO').ASSTRING := frmPrincipal.zerarcodigo(COMBOCODIGO.Text,6);
      IF COMBOCODIGO.Text <> '000000' THEN
      BEGIN
        IF FRMMODULO.QRPRODUTO.LOCATE('CODIGO',COMBOCODIGO.TEXT,[loCaseInsensitive]) THEN
        BEGIN
          QRETIQ.FIELDBYNAME('PRODUTO').ASSTRING := FRMMODULO.QRPRODUTO.FIELDBYNAME('PRODUTO').ASSTRING;
          QRETIQ.FIELDBYNAME('VALOR').ASFLOAT := FRMMODULO.QRPRODUTO.FIELDBYNAME('PRECOVENDA').ASFLOAT;
          QRETIQ.FIELDBYNAME('QTDE').ASINTEGER := 1;
          QRETIQ.FIELDBYNAME('CODBARRA').ASSTRING := FRMMODULO.QRPRODUTO.FIELDBYNAME('CODBARRA').ASSTRING;
          QRETIQ.FIELDBYNAME('ULTIMA_COMPRA').AsDateTime := FRMMODULO.QRPRODUTO.FIELDBYNAME('DATA_ULTIMACOMPRA').AsDateTime;



      if frmmodulo.qrproduto.fieldbyname('usa_grade').asinteger = 1 then
      begin
        qrgrade.close;
        qrgrade.sql.clear;
        qrgrade.sql.add('select * from c000021 where codproduto = '''+frmmodulo.qrproduto.fieldbyname('codigo').asstring+''' order by codigo');
        qrgrade.open;
        if qrgrade.RecordCount > 0 then
        begin
          frmetiqueta_grade := tfrmetiqueta_grade.create(self);
          frmetiqueta_grade.showmODal;
          if resultado_pesquisa1 <> '' then
          begin
            qretiq.FieldByName('tamanho').asstring := resultado_pesquisa1;
          end;
        end;

      end;




        END;
      END;
    END;

        QRETIQ.FIELDBYNAME('TEXTO').ASSTRING := '3';

end;

procedure Tfrmetiquetador.COMBOPRODUTOExit(Sender: TObject);
begin
  IF COMBOPRODUTO.Text <> '' THEN
  BEGIN
    IF FRMMODULO.QRPRODUTO.LOCATE('PRODUTO',COMBOPRODUTO.TEXT,[loPartialKey]) THEN
    BEGIN
      QRETIQ.FIELDBYNAME('CODPRODUTO').ASSTRING := FRMMODULO.QRPRODUTO.FIELDBYNAME('CODIGO').ASSTRING;
      QRETIQ.FIELDBYNAME('CODBARRA').ASSTRING := FRMMODULO.QRPRODUTO.FIELDBYNAME('CODBARRA').ASSTRING;
      QRETIQ.FIELDBYNAME('VALOR').ASFLOAT := FRMMODULO.QRPRODUTO.FIELDBYNAME('PRECOVENDA').ASFLOAT;
      QRETIQ.FIELDBYNAME('QTDE').ASINTEGER := 1;
      QRETIQ.FIELDBYNAME('ULTIMA_COMPRA').AsDateTime := FRMMODULO.QRPRODUTO.FIELDBYNAME('DATA_ULTIMACOMPRA').AsDateTime;

      IF FRMMODULO.QRPRODUTO.FIELDBYNAME('PRECOVENDA').ASFLOAT > 0 THEN QRETIQ.FIELDBYNAME('TEXTO').ASSTRING := '3';

      if frmmodulo.qrproduto.fieldbyname('usa_grade').asinteger = 1 then
      begin
        qrgrade.close;
        qrgrade.sql.clear;
        qrgrade.sql.add('select * from c000021 where codproduto = '''+frmmodulo.qrproduto.fieldbyname('codigo').asstring+''' order by codigo');
        qrgrade.open;
        if qrgrade.RecordCount > 0 then
        begin
          frmetiqueta_grade := tfrmetiqueta_grade.create(self);
          frmetiqueta_grade.showmODal;
          if resultado_pesquisa1 <> '' then
          begin
            qretiq.FieldByName('tamanho').asstring := resultado_pesquisa1;
          end;
        end;

      end;

    END;
  END;
end;

procedure Tfrmetiquetador.Fechar1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmetiquetador.ComboBox1Change(Sender: TObject);
begin


 if combobox1.ItemIndex = 6 then
  begin
    pdesconto.Visible := true;
    pdesconto.Top := 291;
    pdesconto.Left := 174;

    FRMMODULO.qrconfig.OPEN;
    edesconto.Value := frmmodulo.qrconfig.FieldByName('DESCONTO_PRODUTO').asfloat;
    vetq_07   := frmmodulo.qrconfigETIQUETA_07.AsInteger;
    vetq_07_1 := frmmodulo.qrconfigETIQUETA_07_1.AsInteger;
    vetq_07_2 := frmmodulo.qrconfigETIQUETA_07_2.AsInteger;

  end
  else
    pdesconto.Visible := FALSE;


  CASE COMBOBOX1.ITEMINDEX OF
  0 : BEGIN combo_impressora.ITEMINDEX := 0; BITBTN1.VISIBLE := FALSE; END;
  1 : BEGIN combo_impressora.ITEMINDEX := 0; BITBTN1.VISIBLE := FALSE; END;
  2 : BEGIN combo_impressora.ITEMINDEX := 2; BITBTN1.VISIBLE := TRUE; END;
  3 : BEGIN combo_impressora.ITEMINDEX := 2; BITBTN1.VISIBLE := TRUE; END;
  4 : BEGIN combo_impressora.ITEMINDEX := 0; BITBTN1.VISIBLE := FALSE; END;
  end;

end;

procedure Tfrmetiquetador.BitBtn1Click(Sender: TObject);
begin
  if combobox1.ItemIndex = 2 then
  begin
    fXproduto.LoadFromFile('\DATASAC\server\rel\f000077.fr3');
    fxproduto.DESIGNREPORT;
  end;
end;

procedure Tfrmetiquetador.BitBtn2Click(Sender: TObject);
begin
  FRMXLOC_PRODUTO_ENTRADA := TFRMXLOC_PRODUTO_ENTRADA.CREATE(SELF);
  FRMXLOC_PRODUTO_ENTRADA.SHOWMODAL;

  IF resultado_pesquisa1 <> '' THEN
    BEGIN
      qretiq.close;
      qretiq.SQL.clear;
      qretiq.sql.add('delete from cl00005');
      qretiq.ExecSQL;
      qretiq.SQL.Clear;
      qretiq.SQL.add('select * from cl00005');
      qretiq.open;


      Query.close;
      Query.sql.clear;
      Query.SQL.add('select e.codproduto,e.qtde,p.produto,p.precovenda,p.unidade from ');
      Query.SQL.add('c000088 e,c000025 p where e.notafiscal = '''+RESULTADO_PESQUISA1+''' and');
      Query.SQL.add('e.codproduto = p.codigo order by e.notafiscal');
      Query.open;

      if query.RecordCount = 0 then
       begin
         application.messagebox('Item(s) da Nota Fiscal Não Encontrado, Verifique!','Atenção!',mb_ok+mb_iconwarning);
         wwdbgrid1.setfocus;
         exit;
       end;

     pimport.Visible := true;
     bar.Position := 0;

     bar.Max := Query.RECORDCOUNT;
     Query.first;
     application.ProcessMessages;
     while not Query.eof do
     begin
        qretiq.Insert;
        qretiq.FieldByName('codproduto').asstring := Query.fieldbyname('codproduto').asstring;
        qretiq.FieldByName('produto').asstring := Query.fieldbyname('produto').asstring;

        IF FRMMODULO.QRCONFIG.FIELDBYNAME('RAMO_ATIVIDADE').ASINTEGER = 2 then
          begin
            if importa_quantidade_nota = 2 then
              qretiq.FieldByName('qtde').asfloat := 1
            else
              qretiq.FieldByName('qtde').asfloat := Query.fieldbyname('qtde').asfloat;
          end
        else
          begin
            qretiq.FieldByName('qtde').asfloat := Query.fieldbyname('qtde').asfloat;
          end;

        qretiq.FieldByName('valor').asfloat := Query.fieldbyname('precovenda').asfloat;
        qretiq.FieldByName('unidade').asstring := Query.fieldbyname('unidade').asstring;
        qretiq.FieldByName('TEXTO').asstring := '3';
        qretiq.post;
        Query.next;
        bar.position := bar.position + 1;
        application.ProcessMessages;
     end;
     pimport.Visible := false;
     wwdbgrid1.setfocus;
  END;

end;

procedure Tfrmetiquetador.QRPRODUTOCalcFields(DataSet: TDataSet);
VAR I : INTEGER;
CODIG, LETRA : STRING;
begin
    I := length(formatfloat('########0.00', QRproduto.fieldbyname('precocusto').asfloat));
    CODIG := '';
    while i <> 0 do
    begin
      letra := copy(formatfloat('########0.00', QRproduto.fieldbyname('precocusto').asfloat),i,1);
      if letra = '1' then codig :=  'I'+CODIG;
      if letra = '2' then codig :=  'H'+CODIG;
      if letra = '3' then codig :=  'G'+CODIG;
      if letra = '4' then codig :=  'F'+CODIG;
      if letra = '5' then codig :=  'E'+CODIG;
      if letra = '6' then codig :=  'D'+CODIG;
      if letra = '7' then codig :=  'C'+CODIG;
      if letra = '8' then codig :=  'B'+CODIG;
      if letra = '9' then codig :=  'A'+CODIG;
      if letra = '0' then codig :=  'M'+CODIG;
      if letra = ',' then codig :=  ','+CODIG;
      i := i - 1;
    end;
    QRproduto.FIELDBYNAME('RESTRITO').ASSTRING := CODIG;

end;

procedure Tfrmetiquetador.BitBtn3Click(Sender: TObject);
begin

  pperiodo.Visible := true;
  pperiodo.Top := 161;
  pperiodo.Left := 88;

  DateEdit1.Date := date;
  DateEdit2.Date := date;
  bok.SetFocus;

end;

procedure Tfrmetiquetador.bokClick(Sender: TObject);
begin
  qretiq.close;
  qretiq.SQL.clear;
  qretiq.sql.add('delete from cl00005');
  qretiq.ExecSQL;
  qretiq.SQL.Clear;
  qretiq.SQL.add('select * from cl00005');
  qretiq.open;

  qrremarcados.close;
  qrremarcados.sql.clear;
  qrremarcados.SQL.add('select * from c000025');
  qrremarcados.sql.add('where precovenda_novo > ''0'' and');
  qrremarcados.sql.add('DATA_REMARCACAO_VENDA >= :data_ini and');
  qrremarcados.sql.add('DATA_REMARCACAO_VENDA <= :data_fim');
  qrremarcados.ParamByName('data_ini').asdatetime := DateEdit1.Date;
  qrremarcados.ParamByName('data_fim').asdatetime := DateEdit2.Date;
  qrremarcados.open;

  pperiodo.Visible := false;

  pimport.Visible := true;
  bar.Position := 0;

     bar.Max := qrremarcados.RECORDCOUNT;
     qrremarcados.first;
     application.ProcessMessages;
     while not qrremarcados.eof do
     begin
        qretiq.Insert;
        qretiq.FieldByName('codproduto').asstring := qrremarcados.fieldbyname('codigo').asstring;
        qretiq.FieldByName('produto').asstring := qrremarcados.fieldbyname('produto').asstring;
        qretiq.FieldByName('qtde').asfloat := 1;
        qretiq.FieldByName('valor').asfloat := qrremarcados.fieldbyname('precovenda').asfloat;
        qretiq.FieldByName('unidade').asstring := qrremarcados.fieldbyname('unidade').asstring;
        qretiq.FieldByName('texto').AsString := '3';
        qretiq.post;
        qrremarcados.next;
        bar.position := bar.position + 1;
        application.ProcessMessages;
     end;
     pimport.Visible := false;
     wwdbgrid1.setfocus;
end;

procedure Tfrmetiquetador.DateEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure Tfrmetiquetador.DateEdit2Exit(Sender: TObject);
begin
  bokClick(frmetiquetador);
end;

procedure Tfrmetiquetador.DateEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bok.setfocus;
end;

procedure Tfrmetiquetador.bdescontoClick(Sender: TObject);
begin
  pdesconto.Visible := false;
  BitBtn8.SetFocus;
end;

procedure Tfrmetiquetador.edescontoExit(Sender: TObject);
begin
  bdescontoClick(frmetiquetador);
end;

end.




