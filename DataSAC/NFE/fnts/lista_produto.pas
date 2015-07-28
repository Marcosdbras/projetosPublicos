unit lista_produto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, Buttons, Collection, ExtCtrls, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, RpDefine, RpCon, RpConDS,
  FR_DSet, FR_DBSet, FR_E_CSV, FR_E_TXT, FR_E_HTM, FR_E_RTF, FR_Class;

type
  TFrmlista_produto = class(TForm)
    Panel1: TPanel;
    ViewSplit2: TViewSplit;
    HeaderView1: THeaderView;
    FlipView1: TFlipView;
    rbalanca: TRadioButton;
    rinventario: TRadioButton;
    rtabela1: TRadioButton;
    rsimples: TRadioButton;
    gproduto: TGroupBox;
    eproduto: TEdit;
    ViewSplit1: TViewSplit;
    bimprimir: TBitBtn;
    bcancelar: TBitBtn;
    PopupMenu1: TPopupMenu;
    Imprimir1: TMenuItem;
    Cancelar1: TMenuItem;
    FlipView3: TFlipView;
    rcodigo: TRadioButton;
    rnome: TRadioButton;
    rbarras: TRadioButton;
    ggrupo: TGroupBox;
    egrupo: TEdit;
    blocgrupo: TBitBtn;
    enomegrupo: TEdit;
    gsubgrupo: TGroupBox;
    esubgrupo: TEdit;
    blocsubgrupo: TBitBtn;
    enomesubgrupo: TEdit;
    gmarca: TGroupBox;
    emarca: TEdit;
    blocmarca: TBitBtn;
    enomemarca: TEdit;
    gfornecedor: TGroupBox;
    efornecedor: TEdit;
    blocfornecedor: TBitBtn;
    enomefornecedor: TEdit;
    FlipView2: TFlipView;
    r1: TRadioButton;
    r2: TRadioButton;
    r3: TRadioButton;
    r4: TRadioButton;
    r5: TRadioButton;
    r6: TRadioButton;
    gestoque: TGroupBox;
    rtodos: TRadioButton;
    rcomestoque: TRadioButton;
    rsemestoque: TRadioButton;
    rnegativo: TRadioButton;
    ginventario: TGroupBox;
    rvenda: TRadioButton;
    rcusto: TRadioButton;
    rgrade: TRadioButton;
    rserial: TRadioButton;
    blocproduto: TBitBtn;
    enomeproduto: TEdit;
    qrproduto: TZQuery;
    qrprodutoPRODUTO: TStringField;
    qrprodutoUNIDADE: TStringField;
    qrprodutomarca: TStringField;
    qrprodutofornecedor: TStringField;
    qrprodutoESTOQUE: TFloatField;
    qrprodutoPRECOVENDA: TFloatField;
    qrprodutoCODIGO: TStringField;
    qrprodutoCODBARRA: TStringField;
    qrprodutoDATA_CADASTRO: TDateTimeField;
    qrprodutoCODGRUPO: TStringField;
    qrprodutoCODSUBGRUPO: TStringField;
    qrprodutoCODFORNECEDOR: TStringField;
    qrprodutoCODMARCA: TStringField;
    qrprodutoDATA_ULTIMACOMPRA: TDateTimeField;
    qrprodutoNOTAFISCAL: TStringField;
    qrprodutoPRECOCUSTO: TFloatField;
    qrprodutoDATA_ULTIMAVENDA: TDateTimeField;
    qrprodutoESTOQUEMINIMO: TFloatField;
    qrprodutoCODALIQUOTA: TStringField;
    qrprodutoAPLICACAO: TMemoField;
    qrprodutoLOCALICAZAO: TStringField;
    qrprodutoPESO: TFloatField;
    qrprodutoVALIDADE: TStringField;
    qrprodutoCOMISSAO: TFloatField;
    qrprodutoUSA_BALANCA: TIntegerField;
    qrprodutoUSA_SERIAL: TIntegerField;
    qrprodutoUSA_GRADE: TIntegerField;
    qrprodutogrupo: TStringField;
    qrprodutosubgrupo: TStringField;
    qrprodutoreceita: TStringField;
    qrprodutoCODRECEITA: TStringField;
    qrprodutoFOTO: TStringField;
    qrprodutoDATA_ULTIMACOMPRA_ANTERIOR: TDateTimeField;
    qrprodutoNOTAFISCAL_ANTERIOR: TStringField;
    qrprodutoCODFORNECEDOR_ANTERIOR: TStringField;
    qrprodutoPRECOCUSTO_ANTERIOR: TFloatField;
    qrprodutoPRECOVENDA_ANTERIOR: TFloatField;
    qrprodutoCUSTOMEDIO: TFloatField;
    dsproduto2: TRvDataSetConnection;
    qrsubgrupo: TZQuery;
    rvsubgrupo2: TRvDataSetConnection;
    qrprodutoTOTAL: TFloatField;
    qrprodutoAUTO_APLICACAO: TStringField;
    qrprodutoAUTO_COMPLEMENTO: TStringField;
    qrprodutoDATA_REMARCACAO_CUSTO: TDateTimeField;
    qrprodutoDATA_REMARCACAO_VENDA: TDateTimeField;
    qrprodutopreco: TFloatField;
    frReport1: TfrReport;
    frRTFExport1: TfrRTFExport;
    frHTMExport1: TfrHTMExport;
    frTextExport1: TfrTextExport;
    frCSVExport1: TfrCSVExport;
    frproduto: TfrDBDataSet;
    qremitente: TZQuery;
    qremitenteCODIGO: TStringField;
    qremitenteNOME: TStringField;
    qremitenteFANTASIA: TStringField;
    qremitenteENDERECO: TStringField;
    qremitenteBAIRRO: TStringField;
    qremitenteCIDADE: TStringField;
    qremitenteUF: TStringField;
    qremitenteCEP: TStringField;
    qremitenteTELEFONE: TStringField;
    qremitenteCNPJ: TStringField;
    qremitenteIE: TStringField;
    qremitenteEMAIL: TStringField;
    qremitenteHOMEPAGE: TStringField;
    qremitenteRESPONSAVEL: TStringField;
    qremitenteCELULAR: TStringField;
    qremitenteLOGO: TBlobField;
    qremitenteFAX: TStringField;
    qremitenteNUMERO: TStringField;
    qremitenteCOMPLEMENTO: TStringField;
    qremitenteCONTRIBUINTE_IPI: TIntegerField;
    qremitenteSUBSTITUTO_TRIBUTARIO: TIntegerField;
    qrrelatorio: TZQuery;
    qrrelatorioLINHA1: TStringField;
    qrrelatorioLINHA2: TStringField;
    qrrelatorioLINHA3: TStringField;
    qrrelatorioLINHA4: TStringField;
    qrrelatorioLINHA5: TStringField;
    qrrelatorioLINHA6: TStringField;
    qrrelatorioLINHA7: TStringField;
    qrrelatorioLINHA8: TStringField;
    qrrelatorioLINHA9: TStringField;
    qrrelatorioLINHA10: TStringField;
    qrrelatorioVALOR1: TFloatField;
    qrrelatorioVALOR2: TFloatField;
    qrrelatorioVALOR3: TFloatField;
    qrrelatorioVALOR4: TFloatField;
    qrrelatorioVALOR5: TFloatField;
    qrrelatorioVALOR6: TFloatField;
    qrrelatorioVALOR7: TFloatField;
    qrrelatorioVALOR8: TFloatField;
    qrrelatorioVALOR9: TFloatField;
    qrrelatorioVALOR10: TFloatField;
    qrrelatorioVALOR11: TFloatField;
    qrrelatorioVALOR12: TFloatField;
    qrrelatorioVALOR13: TFloatField;
    qrrelatorioVALOR14: TFloatField;
    qrrelatorioVALOR15: TFloatField;
    qrrelatorioVALOR16: TFloatField;
    qrrelatorioVALOR17: TFloatField;
    qrrelatorioVALOR18: TFloatField;
    qrrelatorioVALOR19: TFloatField;
    qrrelatorioVALOR20: TFloatField;
    qrrelatorioVALOR21: TFloatField;
    qrrelatorioVALOR22: TFloatField;
    qrrelatorioVALOR23: TFloatField;
    qrrelatorioVALOR24: TFloatField;
    qrrelatorioVALOR25: TFloatField;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure eprodutoEnter(Sender: TObject);
    procedure eprodutoExit(Sender: TObject);
    procedure egrupoExit(Sender: TObject);
    procedure esubgrupoExit(Sender: TObject);
    procedure emarcaExit(Sender: TObject);
    procedure efornecedorExit(Sender: TObject);
    procedure eprodutoKeyPress(Sender: TObject; var Key: Char);
    procedure blocprodutoClick(Sender: TObject);
    procedure blocgrupoClick(Sender: TObject);
    procedure blocsubgrupoClick(Sender: TObject);
    procedure blocmarcaClick(Sender: TObject);
    procedure blocfornecedorClick(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure bimprimirClick(Sender: TObject);
    procedure rsimplesClick(Sender: TObject);
    procedure rtabela1Click(Sender: TObject);
    procedure rinventarioClick(Sender: TObject);
    procedure rbalancaClick(Sender: TObject);
    procedure egrupoKeyPress(Sender: TObject; var Key: Char);
    procedure esubgrupoKeyPress(Sender: TObject; var Key: Char);
    procedure emarcaKeyPress(Sender: TObject; var Key: Char);
    procedure efornecedorKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure qrprodutoCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frmlista_produto: TFrmlista_produto;

implementation

uses modulo, principal, loc_produto, loc_grupo, loc_subgrupo, loc_marca,
  loc_fornecedor;

{$R *.dfm}

procedure TFrmlista_produto.FormShow(Sender: TObject);
begin
  FRMMODULO.QRPRODUTO.Close;
  FRMMODULO.QRPRODUTO.SQL.CLEAR;
  FRMMODULO.QRPRODUTO.SQL.ADD('SELECT * FROM C000025 ORDER BY CODIGO');
  FRMMODULO.QRPRODUTO.OPEN;

  FRMMODULO.QRGRUPO.Close;
  FRMMODULO.QRGRUPO.SQL.CLEAR;
  FRMMODULO.QRGRUPO.SQL.ADD('SELECT * FROM C000017 ORDER BY CODIGO');
  FRMMODULO.QRGRUPO.OPEN;

  FRMMODULO.QRMARCA.Close;
  FRMMODULO.QRMARCA.SQL.CLEAR;
  FRMMODULO.QRMARCA.SQL.ADD('SELECT * FROM C000019 ORDER BY CODIGO');
  FRMMODULO.QRMARCA.OPEN;

  FRMMODULO.QRFORNECEDOR.Close;
  FRMMODULO.QRFORNECEDOR.SQL.CLEAR;
  FRMMODULO.QRFORNECEDOR.SQL.ADD('SELECT * FROM C000009 ORDER BY CODIGO');
  FRMMODULO.QRFORNECEDOR.OPEN;
  EPRODUTO.SETFOCUS;
end;

procedure TFrmlista_produto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TFrmlista_produto.eprodutoEnter(Sender: TObject);
begin
  tedit(sender).color := clyellow;
end;

procedure TFrmlista_produto.eprodutoExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  ePRODUTO.text := frmprincipal.zerarcodigo(ePRODUTO.text,6);
  if ePRODUTO.text <> '000000' then
  begin
     if not frmprincipal.Locregistro(frmmodulo.qrPRODUTO,ePRODUTO.text,'codigo') then
        blocPRODUTO.OnClick(Frmlista_PRODUTO)
     else
     begin
       ePRODUTO.Text := frmmodulo.qrPRODUTO.fieldbyname('codigo').asstring;
       enomePRODUTO.Text := frmmodulo.qrPRODUTO.fieldbyname('PRODUTO').asstring;
     end;
  end
  else
  begin
    ENOMEproduto.TEXT := '';
  end;

end;

procedure TFrmlista_produto.egrupoExit(Sender: TObject);
begin
 tedit(sender).Color := clwindow;
  egrupo.text := frmprincipal.zerarcodigo(egrupo.text,6);
  if egrupo.text <> '000000' then
  begin
     if not frmprincipal.Locregistro(frmmodulo.qrgrupo,egrupo.text,'codigo') then
        blocgrupo.onclick(Frmlista_produto)
     else
     begin
       egrupo.Text := frmmodulo.qrgrupo.fieldbyname('codigo').asstring;
       enomegrupo.Text := frmmodulo.qrgrupo.fieldbyname('grupo').asstring;
     end;
  end
  else
  begin
    ENOMEgrupo.TEXT := '';
  end;

end;

procedure TFrmlista_produto.esubgrupoExit(Sender: TObject);
begin
 tedit(sender).Color := clwindow;
  esubgrupo.text := frmprincipal.zerarcodigo(esubgrupo.text,6);
  if esubgrupo.text <> '000000' then
  begin
     if not frmprincipal.Locregistro(frmmodulo.qrsubgrupo,esubgrupo.text,'codigo') then
        blocsubgrupo.onclick(Frmlista_produto)
     else
     begin
       esubgrupo.Text := frmmodulo.qrsubgrupo.fieldbyname('codigo').asstring;
       enomesubgrupo.Text := frmmodulo.qrsubgrupo.fieldbyname('subgrupo').asstring;
     end;
  end
  else
  begin
    ENOMEsubgrupo.TEXT := '';
  end;
end;

procedure TFrmlista_produto.emarcaExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  emarca.text := frmprincipal.zerarcodigo(emarca.text,6);
  if emarca.text <> '000000' then
  begin
     if not frmprincipal.Locregistro(frmmodulo.qrmarca,emarca.text,'codigo') then
        blocmarca.onclick(Frmlista_produto)
     else
     begin
       emarca.Text := frmmodulo.qrmarca.fieldbyname('codigo').asstring;
       enomemarca.Text := frmmodulo.qrmarca.fieldbyname('nome').asstring;
     end;
  end
  else
  begin
    ENOMEmarca.TEXT := '';
  end;
end;

procedure TFrmlista_produto.efornecedorExit(Sender: TObject);
begin
 tedit(sender).Color := clwindow;
  efornecedor.text := frmprincipal.zerarcodigo(efornecedor.text,6);
  if efornecedor.text <> '000000' then
  begin
     if not frmprincipal.Locregistro(frmmodulo.qrfornecedor,efornecedor.text,'codigo') then
        blocfornecedor.onclick(Frmlista_produto)
     else
     begin
       efornecedor.Text := frmmodulo.qrfornecedor.fieldbyname('codigo').asstring;
       enomefornecedor.Text := frmmodulo.qrfornecedor.fieldbyname('nome').asstring;
     end;
  end
  else
  begin
    Enomefornecedor.TEXT := '';
  end;

end;

procedure TFrmlista_produto.eprodutoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then egrupo.setfocus;
end;

procedure TFrmlista_produto.blocprodutoClick(Sender: TObject);
begin
  frmloc_produto := tfrmloc_produto.create(self);
  frmloc_produto.showmodal;
  enomeproduto.Text := frmmodulo.qrproduto.fieldbyname('produto').asstring;
  eproduto.Text := frmmodulo.qrproduto.fieldbyname('codigo').asstring;

end;

procedure TFrmlista_produto.blocgrupoClick(Sender: TObject);
begin
  frmloc_grupo := tfrmloc_grupo.create(self);
  frmloc_grupo.showmodal;
  enomegrupo.Text := frmmodulo.qrgrupo.fieldbyname('grupo').asstring;
  egrupo.Text := frmmodulo.qrgrupo.fieldbyname('codigo').asstring;
end;

procedure TFrmlista_produto.blocsubgrupoClick(Sender: TObject);
begin
  frmloc_subgrupo := tfrmloc_subgrupo.create(self);
  frmloc_subgrupo.showmodal;
  enomesubgrupo.Text := frmmodulo.qrsubgrupo.fieldbyname('subgrupo').asstring;
  esubgrupo.Text := frmmodulo.qrsubgrupo.fieldbyname('codigo').asstring;

end;

procedure TFrmlista_produto.blocmarcaClick(Sender: TObject);
begin
  frmloc_marca := tfrmloc_marca.create(self);
  frmloc_marca.showmodal;
  enomemarca.Text := frmmodulo.qrmarca.fieldbyname('nome').asstring;
  emarca.Text := frmmodulo.qrmarca.fieldbyname('codigo').asstring;

end;

procedure TFrmlista_produto.blocfornecedorClick(Sender: TObject);
begin
  frmloc_fornecedor := tfrmloc_fornecedor.create(self);
  frmloc_fornecedor.showmodal;
  enomefornecedor.Text := frmmodulo.qrfornecedor.fieldbyname('nome').asstring;
  efornecedor.Text := frmmodulo.qrfornecedor.fieldbyname('codigo').asstring;
end;

procedure TFrmlista_produto.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure TFrmlista_produto.bimprimirClick(Sender: TObject);
var produto, grupo, subgrupo, marca, fornecedor, estoque, ordem, balanca : string;
begin
   frmmodulo.qrrelatorio.open;
   frmmodulo.qrrelatorio.edit;




   if (eproduto.Text = '000000')    or (eproduto.Text = '')      then produto    := ' codigo <> '''+'XXXXXX'+'''' else produto := ' CODIGO = '''+eproduto.text+'''';
   if (egrupo.Text = '000000')      or (egrupo.Text = '')        then grupo      := '' else grupo      := ' and CODGRUPO = '''     +egrupo.text+'''';
   if (esubgrupo.Text = '000000')   or (esubgrupo.Text = '')     then subgrupo   := '' else subgrupo   := ' and CODSUBGRUPO = '''  +esubgrupo.text+'''';
   if (emarca.Text = '000000')      or (emarca.Text = '')        then marca      := '' else marca      := ' and CODMARCA = '''     +emarca.text+'''';
   if (efornecedor.Text = '000000') or (efornecedor.Text = '')   then fornecedor := '' else fornecedor := ' and CODFORNECEDOR = '''+efornecedor.text+'''';
   if rbalanca.Checked then balanca := ' and usa_balanca = 1 ' else balanca := '';



   if rnome.Checked   then ordem :=  ' order by produto';
   if rcodigo.Checked then ordem :=  ' order by codigo';
   if rbarras.Checked  then ordem := ' order by codbarra';

   if rcomestoque.Checked then
   begin
     estoque := ' and estoque > 0 ';
     frmmodulo.qrrelatorio.fieldbyname('linha5').asstring := 'COM ESTOQUE';
   end;
   if rnegativo.Checked then
   BEGIN
     estoque := ' and estoque < 0 ';
     frmmodulo.qrrelatorio.fieldbyname('linha5').asstring := 'ESTOQUE NEGATIVO';
   end;

   if rsemestoque.Checked then
   BEGIN
     estoque := ' and estoque <= 0 ';
     frmmodulo.qrrelatorio.fieldbyname('linha5').asstring := 'SEM ESTOQUE';
   end;

   if rtodos.Checked then
   BEGIN
     estoque := '';
     frmmodulo.qrrelatorio.fieldbyname('linha5').asstring := 'TODOS';
   end;


   frmmodulo.qrrelatorio.fieldbyname('linha1').asstring := enomegrupo.TEXT;
   frmmodulo.qrrelatorio.fieldbyname('linha2').asstring := enomesubgrupo.TEXT;
   frmmodulo.qrrelatorio.fieldbyname('linha3').asstring := enomemarca.TEXT;
   frmmodulo.qrrelatorio.fieldbyname('linha4').asstring := enomefornecedor.TEXT;






   qrproduto.close;
   qrproduto.sql.clear;
   qrproduto.sql.add('select * from c000025 where '+produto+grupo+subgrupo+marca+fornecedor+balanca+estoque+ordem);
   qrproduto.open;
   
   if rsimples.Checked then
   begin
     FRMMODULO.QRRELATORIO.POST;
     frmmodulo.rel_system.SystemPreview.ZoomFactor := 110;
     frmmodulo.relatorio.ExecuteReport('relproduto_relacao');
   end;

   if rinventario.Checked then
   begin
//     QRRELATORIO.Open;
//     QRRELATORIO.EDIT;
//     qrrelatorio.FieldByName('LINHA4').ASSTRING := '';
//     QRRELATORIO.POST;
 //      frreport1.LoadFromFile('\elpro\complus\rel\frep\produto_INVENTARIO.frf');
//       frreport1.ShowReport;

     FRMMODULO.QRRELATORIO.POST;
     frmmodulo.rel_system.SystemPreview.ZoomFactor := 110;
     frmmodulo.relatorio.ExecuteReport('relproduto_inventario');

   end;



   if rbalanca.Checked then
   begin
     FRMMODULO.QRRELATORIO.POST;
     frmmodulo.rel_system.SystemPreview.ZoomFactor := 110;

     if r1.Checked then frmmodulo.relatorio.ExecuteReport('relproduto_balanca');
     if r4.Checked then
     begin

       if (eproduto.Text = '000000')    or (eproduto.Text = '')      then produto    := ' produto.codigo <> '''+'XXXXXX'+'''' else produto := ' produto.CODIGO = '''+eproduto.text+'''';
       if (egrupo.Text = '000000')      or (egrupo.Text = '')        then grupo      := '' else grupo      := ' and produto.CODGRUPO = '''     +egrupo.text+'''';
       if (esubgrupo.Text = '000000')   or (esubgrupo.Text = '')     then subgrupo   := '' else subgrupo   := ' and produto.CODSUBGRUPO = '''  +esubgrupo.text+'''';
       if (emarca.Text = '000000')      or (emarca.Text = '')        then marca      := '' else marca      := ' and produto.CODMARCA = '''     +emarca.text+'''';
       if (efornecedor.Text = '000000') or (efornecedor.Text = '')   then fornecedor := '' else fornecedor := ' and produto.CODFORNECEDOR = '''+efornecedor.text+'''';
       if rbalanca.Checked then balanca := ' and produto.usa_balanca = 1 ' else balanca := '';


       qrsubgrupo.close;
       qrsubgrupo.sql.clear;
       qrsubgrupo.SQL.add('select setor.codigo, setor.subgrupo, count(produto.codigo) '+
                                    'from c000018 setor'+
                                    ' Join c000025 produto on setor.codigo = produto.codsubgrupo '+
                                    ' and '+produto+grupo+subgrupo+marca+fornecedor+balanca+estoque+
                                    ' group by setor.codigo, setor.subgrupo order by setor.subgrupo');
       qrsubgrupo.open;
       frmmodulo.relatorio.ExecuteReport('relproduto_balanca_setor');
     end;
   end;


   

end;

procedure TFrmlista_produto.rsimplesClick(Sender: TObject);
begin
  gproduto.visible := true;
  ggrupo.visible := true;
  gsubgrupo.visible := true;
  gmarca.visible := true;
  gfornecedor.visible := true;
  gestoque.visible := true;
  ginventario.Visible := false;

  r1.visible := true;
  r2.visible := true;
  r3.visible := true;
  r4.visible := true;
  r5.Visible := true;
  r6.visible := true;

end;

procedure TFrmlista_produto.rtabela1Click(Sender: TObject);
begin
  gproduto.visible := true;
  ggrupo.visible := true;
  gsubgrupo.visible := true;
  gmarca.visible := true;
  gfornecedor.visible := true;
  gestoque.visible := false;
  ginventario.Visible := false;
  r1.visible := true;
  r2.visible := true;
  r3.visible := true;
  r4.visible := true;
  r5.Visible := true;
  r6.visible := true;
  
end;

procedure TFrmlista_produto.rinventarioClick(Sender: TObject);
begin
  gproduto.visible := true;
  ggrupo.visible := true;
  gsubgrupo.visible := true;
  gmarca.visible := true;
  gfornecedor.visible := true;
  gestoque.visible := true;
  ginventario.Visible := true;

  r1.visible := false;
  r2.visible := false;
  r3.visible := false;
  r4.visible := false;
  r5.Visible := false;
  r6.visible := false;

end;

procedure TFrmlista_produto.rbalancaClick(Sender: TObject);
begin
  gproduto.visible := false;
  ggrupo.visible := false;
  gsubgrupo.visible := false;
  gmarca.visible := false;
  gfornecedor.visible := false;
  gestoque.visible := false;
  ginventario.Visible := false;
  r1.visible := true;
  r2.visible := false;
  r3.visible := false;
  r4.visible := true;
  r5.Visible := false;
  r6.visible := false;



  
end;

procedure TFrmlista_produto.egrupoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then esubgrupo.setfocus;
end;

procedure TFrmlista_produto.esubgrupoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then emarca.setfocus;
end;

procedure TFrmlista_produto.emarcaKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then efornecedor.setfocus;
end;

procedure TFrmlista_produto.efornecedorKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bimprimir.setfocus;
end;

procedure TFrmlista_produto.FormCreate(Sender: TObject);
begin
  // VERIFICAR RELATORIO Q ESTAO FALTANDO
  
end;

procedure TFrmlista_produto.qrprodutoCalcFields(DataSet: TDataSet);
begin
 IF RINVENTARIO.CHECKED THEN
 BEGIN
  if rcusto.Checked then qrproduto.fieldbyname('preco').asfloat := qrproduto.fieldbyname('precocusto').asfloat;
  if rvenda.Checked then qrproduto.fieldbyname('preco').asfloat := qrproduto.fieldbyname('precovenda').asfloat;


  QRPRODUTO.FIELDBYNAME('TOTAL').ASFLOAT :=
  QRPRODUTO.FIELDBYNAME('ESTOQUE').ASFLOAT *
  QRPRODUTO.FIELDBYNAME('PREco').ASFLOAT ;
 END;


end;

end.
