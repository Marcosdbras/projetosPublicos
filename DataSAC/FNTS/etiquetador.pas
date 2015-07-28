unit etiquetador;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, TFlatPanelUnit, Mask, DBCtrls, wwdblook, StdCtrls, Wwdbdlg,
  dxCore,  Grids, DBGrids, Db, Wwdatsrc, DBTables, Wwtable,
  Wwdbigrd, Wwdbgrid, Buttons, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, Collection, Menus, frxClass, frxDBSet, frxDesgn, frxBarcode,
  ComCtrls, wwdbedit;

type
  Tfrmetiquetador = class(TForm)
    dsetiq: TwwDataSource;
    wwDBGrid1: TwwDBGrid;
    qretiq: TZQuery;
    qretiqCODPRODUTO: TStringField;
    qretiqQTDE: TIntegerField;
    bgerar: TBitBtn;
    bexcluir: TBitBtn;
    bfechar: TBitBtn;
    pimprimir: THeaderView;
    HeaderView2: THeaderView;
    ComboBox1: TComboBox;
    Label8: TLabel;
    Label9: TLabel;
    ComboBox2: TComboBox;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    COMBOPRODUTO: TwwDBLookupCombo;
    ViewSplit1: TViewSplit;
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
    BitBtn2: TBitBtn;
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
    procedure FormShow(Sender: TObject);
    procedure bfecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bexcluirClick(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure bgerarClick(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure ComboBox1Enter(Sender: TObject);
    procedure ComboBox2Enter(Sender: TObject);
    procedure ComboBox1Exit(Sender: TObject);
    procedure ComboBox2Exit(Sender: TObject);
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmetiquetador: Tfrmetiquetador;

implementation

uses Principal, Modulo, loc_produto, xloc_produto_entrada, Math, filial,
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
var q : real;
f,arquivo, txt : textfile;
ETIQ : INTEGER;
EMP1, EMP2, EMP3, EMP4, EMP5, texto,cod1,cod2,cod3,cod4,cod5,valor1,valor2,valor3,valor4,valor5,prod1,prod2,prod3,prod4,prod5, prod6 : string;
entrada : string;
xx, avista1, avista2, prestacao1, prestacao2 : string;
qa, i : integer;
begin
  if combobox1.ItemIndex = 0 then  // 2 - Bobina | 11,10 cm x 3,40 cm | 01 Fileira
  begin
    xx := frmPrincipal.zerarcodigo(qretiq.fieldbyname('qtde').asstring,2);
    qretiq.Refresh;
    qretiq.First;
    assignfile(f,'lpt1');
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
      WRITELN(F,'103200000120028'+'       REDE MULTI MARKET      ');
      WRITELN(F,'125400000390076'+'R$ '+FORMATFLOAT('###,###,##0.00',qretiq.FIELDBYNAME('VALOR').ASFLOAT));
      xx := qretiq.fieldbyname('qtde').asstring; while Length(xx) < 4 do xx := '0'+xx;
      WRITELN(F,'^'+qretiq.fieldbyname('qtde').asstring);
      WRITELN(F,'Q'+xx);
      WRITELN(F,'E');


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
      WRITELN(F,'A2');
      WRITELN(F,'D11');
      WRITELN(F,'191100500680032TESTE DE IMPRESSAO');
      WRITELN(F,'^01');
      WRITELN(F,'Q0001');
      WRITELN(F,'E');
}
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
          prestacao1 := '('+QRPRODUTO.FIELDBYNAME('complemento').ASstring+' x '+FORMATFLOAT('###,###,##0.00',(qrproduto.FIELDBYNAME('preco').ASFLOAT / QRPRODUTO.FIELDBYNAME('complemento').ASinteger))+')';
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
            prestacao2 := '('+QRPRODUTO.FIELDBYNAME('complemento').ASstring+' x '+FORMATFLOAT('###,###,##0.00',(qrproduto.FIELDBYNAME('preco').ASFLOAT / QRPRODUTO.FIELDBYNAME('complemento').ASinteger))+')';
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
      assignfile(f,'lpt1');
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
          prestacao1 := '('+QRPRODUTO.FIELDBYNAME('complemento').ASstring+' x '+FORMATFLOAT('###,###,##0.00',(qrproduto.FIELDBYNAME('preco').ASFLOAT / QRPRODUTO.FIELDBYNAME('complemento').ASinteger))+')';
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
            prestacao2 := '('+QRPRODUTO.FIELDBYNAME('complemento').ASstring+' x '+FORMATFLOAT('###,###,##0.00',(qrproduto.FIELDBYNAME('preco').ASFLOAT / QRPRODUTO.FIELDBYNAME('complemento').ASinteger))+')';
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
        WRITELN(F,'122100002370046'+emitente_fantasia);
        WRITELN(F,'111200002210034'+frmmodulo.qremitente.fieldbyname('HOMEPAGE').asstring);
//        WRITELN(F,'321100001140191'+'REF: '+emp1);
        WRITELN(F,'121100002080019'+'CODIGO:'+cod1);
        WRITELN(F,'121100001620020'+'TAM:'+prod3);
        WRITELN(F,'1A6302501120033'+cod1);
        WRITELN(F,'121100000160022'+'A PRAZO:');
        WRITELN(F,'121100000550021'+prod1);
        WRITELN(F,'121100000710021'+'CODIGO:'+cod1);
        WRITELN(F,'121100000710130'+'TAM:'+prod3);
        WRITELN(F,'121100001920020'+prod1);
        WRITELN(F,'121100001770020'+prod2);
        WRITELN(F,'121100000350021'+'A VISTA:');
        WRITELN(F,'121100000360072'+avista1);
        WRITELN(F,'111100000370126'+'(10% DESC.)');
        WRITELN(F,'121100000160072'+valor1);
        WRITELN(F,'111100000170127'+prestacao1);










        if prod4 <> '' then
        begin
          WRITELN(F,'122100002370243'+emitente_fantasia);
          WRITELN(F,'111200002210231'+frmmodulo.qremitente.fieldbyname('HOMEPAGE').asstring);
//          WRITELN(F,'321100001140388'+'REF: '+emp2);
          WRITELN(F,'121100002080216'+'CODIGO:'+cod2);
          WRITELN(F,'121100001620217'+'TAM:'+prod6);
          WRITELN(F,'1A6302501120230'+cod2);
          WRITELN(F,'121100000160219'+'A PRAZO:');
          WRITELN(F,'121100000550218'+prod4);
          WRITELN(F,'121100000710218'+'CODIGO:'+cod2);
          WRITELN(F,'121100000710327'+'TAM:'+prod6);
          WRITELN(F,'121100001920217'+prod4);
          WRITELN(F,'121100001770217'+prod5);
          WRITELN(F,'121100000350218'+'A VISTA:');
          WRITELN(F,'121100000360269'+avista2);
          WRITELN(F,'111100000370323'+'(10% DESC.)');
          WRITELN(F,'121100000160269'+valor2);
          WRITELN(F,'111100000170324'+prestacao2);
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
      assignfile(f,'lpt1');
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
      assignfile(f,'lpt1');
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
      assignfile(f,'lpt1');
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
      fXproduto.LoadFromFile('\elpro\siscom\server\rel\f000077.fr3');
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

















        WRITELN(F,'A2');
        WRITELN(F,'D11');

        WRITELN(F,'1a4202000130016'+cod1);
        WRITELN(F,'191100100660010'+'Cod: '+cod1);
        WRITELN(F,'191100400340016'+valor1);
        WRITELN(F,'121100000020026'+emitente_fantasia);
        WRITELN(F,'191100100660085'+'Tam: '+emp1);
        WRITELN(F,'191100100540010'+prod1);

        if prod3 <> '' then
        begin
          WRITELN(F,'1a4202000130158'+cod2);
          WRITELN(F,'191100100660152'+'Cod: '+cod2);
          WRITELN(F,'191100400340158'+valor2);
          WRITELN(F,'121100000020168'+emitente_fantasia);
          WRITELN(F,'191100100660227'+'Tam: '+emp2);
          WRITELN(F,'191100100540152'+prod3);
        end;
        if prod5 <> '' then
        begin
          WRITELN(F,'1a4202000130300'+cod3);
          WRITELN(F,'191100100660294'+'Cod: '+cod3);
          WRITELN(F,'191100400340300'+valor3);
          WRITELN(F,'121100000020310'+emitente_fantasia);
          WRITELN(F,'191100100660369'+'Tam: '+emp3);
          WRITELN(F,'191100100540294'+prod5);
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
      assignfile(f,'lpt1');
      rewrite(f);
      while not eof(txt) do
      begin
        readln(txt,entrada);
        writeln(f,entrada);
      end;
      closefile(txt);
      closefile(f);
  end;






  pimprimir.visible := false;
end;

procedure Tfrmetiquetador.ComboBox1Enter(Sender: TObject);
begin
  combobox1.Color := clyellow;
end;

procedure Tfrmetiquetador.ComboBox2Enter(Sender: TObject);
begin
  combobox2.Color := clyellow;
end;

procedure Tfrmetiquetador.ComboBox1Exit(Sender: TObject);
begin
  combobox1.Color := clwindow;
end;

procedure Tfrmetiquetador.ComboBox2Exit(Sender: TObject);
begin
  combobox2.Color := clwindow;
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
  tedit(sender).color := clyellow;
end;

procedure Tfrmetiquetador.eqtdeExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
end;

procedure Tfrmetiquetador.eprodutoEnter(Sender: TObject);
begin
  tedit(sender).color := clyellow;
end;

procedure Tfrmetiquetador.COMBOCODIGOExit(Sender: TObject);
begin

    IF FRMMODULO.QRPRODUTO.LOCATE('CODBARRA',COMBOCODIGO.TEXT,[loCaseInsensitive]) THEN
    BEGIN
      QRETIQ.FIELDBYNAME('PRODUTO').ASSTRING := FRMMODULO.QRPRODUTO.FIELDBYNAME('PRODUTO').ASSTRING;
      QRETIQ.FIELDBYNAME('VALOR').ASFLOAT := FRMMODULO.QRPRODUTO.FIELDBYNAME('PRECOVENDA').ASFLOAT;
      QRETIQ.FIELDBYNAME('CODBARRA').ASSTRING := FRMMODULO.QRPRODUTO.FIELDBYNAME('CODBARRA').ASSTRING;
      QRETIQ.FIELDBYNAME('CODPRODUTO').ASSTRING := FRMMODULO.QRPRODUTO.FIELDBYNAME('CODIGO').ASSTRING;

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

  CASE COMBOBOX1.ITEMINDEX OF
  0 : BEGIN COMBOBOX2.ITEMINDEX := 0; BITBTN1.VISIBLE := FALSE; END;
  1 : BEGIN COMBOBOX2.ITEMINDEX := 0; BITBTN1.VISIBLE := FALSE; END;
  2 : BEGIN COMBOBOX2.ITEMINDEX := 1; BITBTN1.VISIBLE := TRUE; END;
  3 : BEGIN COMBOBOX2.ITEMINDEX := 1; BITBTN1.VISIBLE := TRUE; END;
  4 : BEGIN COMBOBOX2.ITEMINDEX := 0; BITBTN1.VISIBLE := FALSE; END;
  end;
end;

procedure Tfrmetiquetador.BitBtn1Click(Sender: TObject);
begin
  if combobox1.ItemIndex = 2 then
  begin
    fXproduto.LoadFromFile('\elpro\siscom\server\rel\f000077.fr3');
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

     qrproduto_mov.close;
     qrproduto_mov.sql.clear;
     qrproduto_mov.SQL.add('select * from c000032 where codnota = '''+RESULTADO_PESQUISA1+''' and movimento = 1 order by codigo');
     qrproduto_mov.open;

     pimport.Visible := true;
     bar.Position := 0;

     bar.Max := qrproduto_mov.RECORDCOUNT;
     qrproduto_mov.first;
     application.ProcessMessages;
     while not qrproduto_mov.eof do
     begin
        qretiq.Insert;
        qretiq.FieldByName('codproduto').asstring := qrproduto_mov.fieldbyname('codigo').asstring;
        qretiq.FieldByName('produto').asstring := qrproduto_mov.fieldbyname('produto').asstring;
        qretiq.FieldByName('qtde').asfloat := qrproduto_mov.fieldbyname('qtde').asfloat;
        qretiq.FieldByName('valor').asfloat := qrproduto_mov.fieldbyname('precovenda').asfloat;
        qretiq.FieldByName('unidade').asstring := qrproduto_mov.fieldbyname('unidade').asstring;
        qretiq.post;
        qrproduto_mov.next;
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

end.




