unit compra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DBCtrls, ExtCtrls, TFlatPanelUnit,
  AdvOfficeStatusBar, wwdblook, RzEdit,
  RzDBEdit, RzDBBnEd, ToolEdit, RXDBCtrl, RzLabel, AdvGlowButton,
  AdvToolBar, AdvToolBarStylers, AdvPreviewMenu,
  Grids, Wwdbigrd, Wwdbgrid, ImgList, RzPanel, RzCmboBx,  DB,
  ZAbstractRODataset, ZAbstractDataset, AdvOfficeStatusBarStylers
  {$IFDEF VER150}
  ,XPMan
  {$ENDIF}
  {$IFDEF VER160}
  ,XPMan
  {$ENDIF}
  {$IFDEF VER170}
  ,XPMan
  {$ENDIF}
  {$IFDEF VER180}
  ,XPMan, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset
  {$ENDIF},
  ZDataset, AdvPreviewMenuStylers, RzDBCmbo, AdvMenus, AdvMenuStylers,
  BaseGrid, AdvGrid, DBAdvGrid;


type
  Tfrmcompra = class(TForm)
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    stilo2: TAdvOfficeStatusBarOfficeStyler;
    Panel1: TPanel;
    AdvOfficeStatusBar2: TAdvOfficeStatusBar;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    enumero: TDBEdit;
    combo_modelo: TwwDBLookupCombo;
    eserie: TDBEdit;
    Label7: TLabel;
    Bevel1: TBevel;
    Label8: TLabel;
    ECODFORNECEDOR: TRzDBButtonEdit;
    DBEdit2: TDBEdit;
    Label9: TLabel;
    Label10: TLabel;
    Bevel2: TBevel;
    ebase_icms: TRzDBNumericEdit;
    Label11: TLabel;
    RzDBNumericEdit2: TRzDBNumericEdit;
    Label12: TLabel;
    ebase_subst: TRzDBNumericEdit;
    Label13: TLabel;
    evalor_subst: TRzDBNumericEdit;
    Label14: TLabel;
    RzDBNumericEdit5: TRzDBNumericEdit;
    Label15: TLabel;
    RzDBNumericEdit6: TRzDBNumericEdit;
    Label16: TLabel;
    RzDBNumericEdit7: TRzDBNumericEdit;
    Label17: TLabel;
    RzDBNumericEdit8: TRzDBNumericEdit;
    Label18: TLabel;
    Shape2: TShape;
    AdvOfficeStatusBar3: TAdvOfficeStatusBar;
    RzLabel1: TRzLabel;
    Label19: TLabel;
    RzDBNumericEdit9: TRzDBNumericEdit;
    RzDBNumericEdit10: TRzDBNumericEdit;
    rdesconto: TRzDBNumericEdit;
    GroupBox1: TGroupBox;
    RzDBNumericEdit12: TRzDBNumericEdit;
    GroupBox2: TGroupBox;
    etotalnota: TRzDBNumericEdit;
    AdvOfficeStatusBarOfficeStyler3: TAdvOfficeStatusBarOfficeStyler;
    AdvPreviewMenu1: TAdvPreviewMenu;
    AdvPreviewMenuOfficeStyler1: TAdvPreviewMenuOfficeStyler;
    AdvToolBarOfficeStyler1: TAdvToolBarOfficeStyler;
    tab_principal: TAdvToolBarPager;
    AdvPage1: TAdvPage;
    AdvPage2: TAdvPage;
    AdvPage3: TAdvPage;
    ImageList1: TImageList;
    AdvOfficeStatusBarOfficeStyler4: TAdvOfficeStatusBarOfficeStyler;
    bexcluir: TAdvGlowButton;
    bincluir: TAdvGlowButton;
    AdvOfficeStatusBar4: TAdvOfficeStatusBar;
    AdvOfficeStatusBarOfficeStyler5: TAdvOfficeStatusBarOfficeStyler;
    AdvOfficeStatusBar5: TAdvOfficeStatusBar;
    Label21: TLabel;
    Label22: TLabel;
    AdvOfficeStatusBarOfficeStyler6: TAdvOfficeStatusBarOfficeStyler;
    DBText1: TDBText;
    DBText2: TDBText;
    Panel2: TPanel;
    AdvOfficeStatusBar6: TAdvOfficeStatusBar;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    AdvOfficeStatusBar7: TAdvOfficeStatusBar;
    Label31: TLabel;
    AdvOfficeStatusBarOfficeStyler7: TAdvOfficeStatusBarOfficeStyler;
    Label34: TLabel;
    DBEdit4: TDBEdit;
    Label35: TLabel;
    RzDBComboBox1: TRzDBComboBox;
    Label36: TLabel;
    DBEdit5: TDBEdit;
    Label37: TLabel;
    DBEdit6: TDBEdit;
    Label38: TLabel;
    DBEdit7: TDBEdit;
    Label39: TLabel;
    DBEdit8: TDBEdit;
    Label40: TLabel;
    DBEdit9: TDBEdit;
    Label41: TLabel;
    DBEdit10: TDBEdit;
    Label42: TLabel;
    DBEdit11: TDBEdit;
    Bevel3: TBevel;
    Label43: TLabel;
    RzDBNumericEdit14: TRzDBNumericEdit;
    Label44: TLabel;
    DBEdit12: TDBEdit;
    Label45: TLabel;
    DBEdit13: TDBEdit;
    Label46: TLabel;
    DBEdit14: TDBEdit;
    Label47: TLabel;
    RzDBNumericEdit15: TRzDBNumericEdit;
    Label48: TLabel;
    RzDBNumericEdit16: TRzDBNumericEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    dsnota: TDataSource;
    ecodempresa: TRzDBButtonEdit;
    DBEdit22: TDBEdit;
    DBEdit1: TDBEdit;
    AdvMenuOfficeStyler1: TAdvMenuOfficeStyler;
    AdvPage4: TAdvPage;
    eemissao: TDBDateEdit;
    eentrada: TDBDateEdit;
    qrnota_item: TZQuery;
    dscompra_item: TDataSource;
    qrnota_itemCODIGO: TStringField;
    qrnota_itemITEM: TStringField;
    qrnota_itemCODNOTA: TStringField;
    qrnota_itemCODPRODUTO: TStringField;
    qrnota_itemCODLANCAMENTO: TStringField;
    qrnota_itemUN_COMPRA: TStringField;
    qrnota_itemUN_FRACAO: TStringField;
    qrnota_itemFRACAO: TFloatField;
    qrnota_itemCST: TStringField;
    qrnota_itemCFOP: TStringField;
    qrnota_itemQTDE: TFloatField;
    qrnota_itemUNITARIO: TFloatField;
    qrnota_itemSUBTOTAL: TFloatField;
    qrnota_itemDESCONTO: TFloatField;
    qrnota_itemTOTAL: TFloatField;
    qrnota_itemDESCONTO_P: TFloatField;
    qrnota_itemICMS_RETIDO: TStringField;
    qrnota_itemICMS_ALIQUOTA: TFloatField;
    qrnota_itemICMS_REDUCAO: TFloatField;
    qrnota_itemICMS_BASE: TFloatField;
    qrnota_itemICMS_VALOR: TFloatField;
    qrnota_itemICMS_VALORRETIDO: TFloatField;
    qrnota_itemICMS_ISENTO: TFloatField;
    qrnota_itemICMS_NAOTRIBUTADO: TFloatField;
    qrnota_itemSUB_MARGEM: TFloatField;
    qrnota_itemSUB_BASE: TFloatField;
    qrnota_itemSUB_VALOR: TFloatField;
    qrnota_itemIPI_ALIQUOTA: TFloatField;
    qrnota_itemIPI_BASE: TFloatField;
    qrnota_itemIPI_VALOR: TFloatField;
    qrnota_itemDATA: TDateTimeField;
    wwDBGrid1: TwwDBGrid;
    qrnota_itemproduto: TStringField;
    qrnota_itemnatureza: TStringField;
    qrnota_itemcst_descricao: TStringField;
    ecfop: TRzDBButtonEdit;
    Label6: TLabel;
    qrnota_itemTIPO: TIntegerField;
    qrnota_itemNOTAFISCAL: TStringField;
    qrnota_itemIPI_TIPO: TStringField;
    batualiza_itens: TButton;
    qrnota_itemFRETE: TFloatField;
    qrnota_itemOUTRAS: TFloatField;
    qrnota_itemSEGURO: TFloatField;
    qrnf: TZQuery;
    qrgrade_entrada: TZQuery;
    Label32: TLabel;
    combo_tipo: TRzDBComboBox;
    PCONHECIMENTO: TAdvOfficeStatusBar;
    Label49: TLabel;
    Label50: TLabel;
    DBEdit3: TDBEdit;
    ecodremetente: TRzDBButtonEdit;
    Label51: TLabel;
    emercadoria: TRzDBNumericEdit;
    Label52: TLabel;
    RzDBComboBox3: TRzDBComboBox;
    enota_fiscal: TDBEdit;
    XDESCONTO: TDBCheckBox;
    qrnota_itemCLASSIFICACAO_FISCAL: TStringField;
    AdvPage5: TAdvPage;
    RzDBNumericEdit1: TRzDBNumericEdit;
    RzDBNumericEdit11: TRzDBNumericEdit;
    RzDBNumericEdit13: TRzDBNumericEdit;
    RzDBNumericEdit17: TRzDBNumericEdit;
    AdvOfficeStatusBar1: TAdvOfficeStatusBar;
    Label60: TLabel;
    AdvOfficeStatusBar18: TAdvOfficeStatusBar;
    Label59: TLabel;
    RzDBNumericEdit18: TRzDBNumericEdit;
    RzDBNumericEdit19: TRzDBNumericEdit;
    RzDBNumericEdit20: TRzDBNumericEdit;
    RzDBNumericEdit21: TRzDBNumericEdit;
    RzDBNumericEdit22: TRzDBNumericEdit;
    RzDBNumericEdit23: TRzDBNumericEdit;
    RzDBNumericEdit24: TRzDBNumericEdit;
    RzDBNumericEdit25: TRzDBNumericEdit;
    RzDBNumericEdit26: TRzDBNumericEdit;
    RzDBNumericEdit27: TRzDBNumericEdit;
    RzDBNumericEdit28: TRzDBNumericEdit;
    RzDBNumericEdit29: TRzDBNumericEdit;
    RzDBNumericEdit30: TRzDBNumericEdit;
    RzDBNumericEdit31: TRzDBNumericEdit;
    RzDBNumericEdit32: TRzDBNumericEdit;
    RzDBNumericEdit33: TRzDBNumericEdit;
    RzDBNumericEdit34: TRzDBNumericEdit;
    RzDBNumericEdit35: TRzDBNumericEdit;
    RzDBNumericEdit36: TRzDBNumericEdit;
    RzDBNumericEdit37: TRzDBNumericEdit;
    AdvOfficeStatusBar19: TAdvOfficeStatusBar;
    Label61: TLabel;
    AdvOfficeStatusBar20: TAdvOfficeStatusBar;
    Label62: TLabel;
    AdvOfficeStatusBar21: TAdvOfficeStatusBar;
    Label63: TLabel;
    AdvOfficeStatusBar22: TAdvOfficeStatusBar;
    Label64: TLabel;
    AdvOfficeStatusBar23: TAdvOfficeStatusBar;
    Label65: TLabel;
    AdvOfficeStatusBar24: TAdvOfficeStatusBar;
    Label66: TLabel;
    AdvOfficeStatusBar25: TAdvOfficeStatusBar;
    Label67: TLabel;
    AdvOfficeStatusBar26: TAdvOfficeStatusBar;
    Label68: TLabel;
    AdvOfficeStatusBar27: TAdvOfficeStatusBar;
    Label69: TLabel;
    AdvOfficeStatusBar28: TAdvOfficeStatusBar;
    Label70: TLabel;
    AdvOfficeStatusBar29: TAdvOfficeStatusBar;
    Label71: TLabel;
    AdvOfficeStatusBar30: TAdvOfficeStatusBar;
    AdvOfficeStatusBar31: TAdvOfficeStatusBar;
    Label72: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    Label77: TLabel;
    AdvOfficeStatusBar32: TAdvOfficeStatusBar;
    AdvOfficeStatusBarOfficeStyler2: TAdvOfficeStatusBarOfficeStyler;
    DBText13: TDBText;
    AdvOfficeStatusBar33: TAdvOfficeStatusBar;
    DBText14: TDBText;
    Label53: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label33: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    edbicms: TRzNumericEdit;
    edfrete: TRzNumericEdit;
    edvicms: TRzNumericEdit;
    edseguro: TRzNumericEdit;
    edbst: TRzNumericEdit;
    edoutras: TRzNumericEdit;
    edipi: TRzNumericEdit;
    edvst: TRzNumericEdit;
    edtotal: TRzNumericEdit;
    edprodutos: TRzNumericEdit;
    balterar: TAdvGlowButton;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    AdvGlowButton4: TAdvGlowButton;
    AdvGlowButton5: TAdvGlowButton;
    procedure bcancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure ecodempresaButtonClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure ecodempresaKeyPress(Sender: TObject; var Key: Char);
    procedure enumeroExit(Sender: TObject);
    procedure enumeroEnter(Sender: TObject);
    procedure enumeroKeyPress(Sender: TObject; var Key: Char);
    procedure combo_modeloExit(Sender: TObject);
    procedure eserieExit(Sender: TObject);
    procedure ECODFORNECEDORKeyPress(Sender: TObject; var Key: Char);
    procedure ECODFORNECEDORButtonClick(Sender: TObject);
    procedure eemissaoEnter(Sender: TObject);
    procedure eentradaEnter(Sender: TObject);
    procedure evalor_substExit(Sender: TObject);
    procedure RzDBNumericEdit9Exit(Sender: TObject);
    procedure etotalnotaKeyPress(Sender: TObject; var Key: Char);
    procedure xdescontoClick(Sender: TObject);
    procedure ecfopKeyPress(Sender: TObject; var Key: Char);
    procedure ecfopButtonClick(Sender: TObject);
    procedure bincluirClick(Sender: TObject);
    procedure batualiza_itensClick(Sender: TObject);
    procedure bexcluirClick(Sender: TObject);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure RzDBComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit4Enter(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure RzDBNumericEdit16KeyPress(Sender: TObject; var Key: Char);
    procedure combo_tipoKeyPress(Sender: TObject; var Key: Char);
    procedure ecodremetenteKeyPress(Sender: TObject; var Key: Char);
    procedure ecodremetenteButtonClick(Sender: TObject);
    procedure RzDBComboBox3KeyPress(Sender: TObject; var Key: Char);
    procedure combo_tipoChange(Sender: TObject);
    procedure enota_fiscalExit(Sender: TObject);
    procedure DBEdit21KeyPress(Sender: TObject; var Key: Char);
    procedure RzDBNumericEdit1Exit(Sender: TObject);
    procedure RzDBNumericEdit37KeyPress(Sender: TObject; var Key: Char);
    procedure edvicmsExit(Sender: TObject);
    procedure balterarClick(Sender: TObject);
  private
    { Private declarations }
  public

     vbicms,vvicms,vipi,vbst,vvst,vfrete,vseguro,voutras,vprodutos,vtotal: double;
     vopcao: integer;
    { Public declarations }
  end;

var
  frmcompra: Tfrmcompra;
  itens : integer;
  altera_preco : boolean;
  xreducao : real;
  xipi : integer;


implementation

uses modulo, xloc_empresa, principal, xloc_fornecedor, xloc_cfop,
  compra_item, compra_menu;



{$R *.dfm}

procedure Tfrmcompra.bcancelarClick(Sender: TObject);
begin
  frmcompra_menu.qrnota.Cancel;
  frmmodulo.Conexao.Rollback;
  CLOSE;
end;

procedure Tfrmcompra.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmcompra.FormShow(Sender: TObject);

begin

  xipi := 0;
  altera_preco := true;
  xreducao := 0;


  pconhecimento.top := 5;
  pconhecimento.left:= 5;

  qrnota_item.Close;
  qrnota_item.sql.clear;
  qrnota_item.sql.add('select * from c000088 where codnota = '''+frmcompra_menu.qrnota.fieldbyname('codigo').asstring+''' order by item');
  qrnota_item.Open;
  itens := qrnota_item.RecordCount + 1;

     // atualiza somatoria da nota fiscal
     edbicms.Value       := frmcompra_menu.qrnota.fieldbyname('CONF_BASEICMS').asfloat;
     edvicms.Value       := frmcompra_menu.qrnota.fieldbyname('CONF_VALORICMS').asfloat;
     edipi.Value         := frmcompra_menu.qrnota.fieldbyname('CONF_IPI').asfloat;
     edbst.Value         := frmcompra_menu.qrnota.fieldbyname('CONF_BASESUB').asfloat;
     edvst.Value         := frmcompra_menu.qrnota.fieldbyname('CONF_VALORSUB').asfloat;
     edfrete.Value       := frmcompra_menu.qrnota.fieldbyname('CONF_FRETE').asfloat;
     edseguro.Value      := frmcompra_menu.qrnota.fieldbyname('CONF_SEGURO').asfloat;
     edoutras.Value      := frmcompra_menu.qrnota.fieldbyname('CONF_OUTRAS').asfloat;
     edprodutos.Value    := frmcompra_menu.qrnota.fieldbyname('CONF_TOTALPRODUTOS').asfloat;
     edtotal.Value       := frmcompra_menu.qrnota.fieldbyname('CONF_TOTALNOTA').asfloat;

     ecodempresa.SetFocus;

end;

procedure Tfrmcompra.ecodempresaButtonClick(Sender: TObject);
begin
  resultado_pesquisa1 := '';
  frmxloc_empresa := tfrmxloc_empresa.create(self);
  frmxloc_empresa.showmodal;
  if resultado_pesquisa1 <>'' then
  begin
     frmcompra_menu.qrempresa.close;
     frmcompra_menu.qrempresa.sql.clear;
     frmcompra_menu.qrempresa.sql.add('select * from c000004 where codigo = '''+resultado_pesquisa1+'''');
     frmcompra_menu.qrempresa.open;
     frmcompra_menu.qrnota.fieldbyname('codempresa').asstring := resultado_pesquisa1;
     enumero.setfocus;
  end;
end;

procedure Tfrmcompra.bgravarClick(Sender: TObject);
var texto : pansichar;
begin
   (********************** verificar se existe a mesma nota para o mesmo forncedor ***********************)
    if frmcompra_menu.qrnota.State = dsinsert then
    begin
      qrnf.close;
      qrnf.SQL.clear;
      qrnf.SQL.Add('select * from c000087 where numero = '''+frmcompra_menu.qrnota.fieldbyname('numero').asstring+''' and codfornecedor = '''+frmcompra_menu.qrnota.fieldbyname('codfornecedor').asstring+'''');
      qrnf.open;
      if qrnf.recordcount > 0 then
      begin
        application.messagebox('Já existe uma nota fiscal cadastrada com este número para este fornecedor!','Atenção',mb_ok+mb_iconerror);
        exit;
      end;
    end;
    (**********************lancar dados do conhecimento de transporte**********)

    IF COMBO_TIPO.ItemIndex = 3 THEN
    BEGIN

     // deilson
     
      frmcompra_menu.qrnota.fieldbyname('TOTAL_NOTA').asfloat := frmcompra_menu.qrnota.fieldbyname('CONF_TOTALNOTA').asfloat;
      frmcompra_menu.qrnota.fieldbyname('TOTAL_PRODUTOS').asfloat := frmcompra_menu.qrnota.fieldbyname('CONF_TOTALPRODUTOS').asfloat;

      frmcompra_menu.qrnota.fieldbyname('BASE_ICMS').asfloat := frmcompra_menu.qrnota.fieldbyname('CONF_BASEICMS').asfloat;
      frmcompra_menu.qrnota.fieldbyname('VALOR_ICMS').asfloat := frmcompra_menu.qrnota.fieldbyname('CONF_VALORICMS').asfloat;

      frmcompra_menu.qrnota.fieldbyname('SEGURO').asfloat := frmcompra_menu.qrnota.fieldbyname('CONF_SEGURO').asfloat;
      frmcompra_menu.qrnota.fieldbyname('OUTRAS').asfloat := frmcompra_menu.qrnota.fieldbyname('CONF_OUTRAS').asfloat;

      IF (frmcompra_menu.qrnota.fieldbyname('CONF_VALORICMS').asfloat = 0) AND (frmcompra_menu.qrnota.fieldbyname('CONF_VALORSUB').asfloat = 0) THEN
         frmcompra_menu.qrnota.fieldbyname('ICMS_ISENTO').asfloat :=  frmcompra_menu.qrnota.fieldbyname('CONF_TOTALPRODUTOS').asfloat;


    END;

    (**********************verificar campos obrigatorios***********************)
    if (ecodempresa.text = '') or (ecodempresa.text = '000000') then
    begin
      application.MessageBox('Favor informar a empresa!','Erro',mb_ok+mb_iconerror);
      exit;
    end;
    if (ecodfornecedor.text = '') or (ecodfornecedor.text = '000000') then
    begin
      application.MessageBox('Favor informar o fornecedor!','Erro',mb_ok+mb_iconerror);
      exit;
    end;
    if (enumero.text = '') or (enumero.text = '000000') then
    begin
      application.MessageBox('Favor informar o número da nota!','Erro',mb_ok+mb_iconerror);
      exit;
    end;

    if (frmcompra_menu.qrnota.fieldbyname('total_nota').asfloat = 0) or (frmcompra_menu.qrnota.fieldbyname('total_produtos').asfloat = 0) then
    begin
      application.MessageBox('Valor da Nota/Produtos zerado! Favor verificar!','Erro',mb_ok+mb_iconerror);
      exit;
    end;








{   (********************** verificar total da nota ***********************)
   if ((frmcompra_menu.qrnota.FieldByName('TOTAL_NOTA').asfloat-
       frmcompra_menu.qrnota.FieldByName('CONF_TOTALNOTA').asfloat) > 0.10) or
      ((frmcompra_menu.qrnota.FieldByName('TOTAL_NOTA').asfloat-
       frmcompra_menu.qrnota.FieldByName('CONF_TOTALNOTA').asfloat) < (-0.10)) then
   begin
     texto := pansichar('Houve inconsistência no valor total da nota!'+#13+
              'Diferença: R$'+formatfloat('###,###,##0.00',(frmcompra_menu.qrnota.FieldByName('TOTAL_NOTA').asfloat-frmcompra_menu.qrnota.FieldByName('conf_TOTALNOTA').asfloat))+#13+
              'Deseja prosseguir com a finalização?');

     if application.messagebox(texto,'Atenção',mb_yesno+MB_ICONWARNING+MB_DEFBUTTON2) = idno then exit;
   end;
}   (********************** verificar total dos produtos ***********************)
   if ((frmcompra_menu.qrnota.FieldByName('TOTAL_produtos').asfloat-
       frmcompra_menu.qrnota.FieldByName('conf_TOTALprodutos').asfloat) > 0.10) or
      ((frmcompra_menu.qrnota.FieldByName('TOTAL_produtos').asfloat-
       frmcompra_menu.qrnota.FieldByName('CONF_TOTALprodutos').asfloat) < (-0.10)) then
   begin
     texto := pansichar('Houve inconsistência no valor total dos Produtos!'+#13+
              'Diferença: R$'+formatfloat('###,###,##0.00',(frmcompra_menu.qrnota.FieldByName('TOTAL_NOTA').asfloat-frmcompra_menu.qrnota.FieldByName('conf_TOTALNOTA').asfloat))+#13+
              'Deseja prosseguir com a finalização?');

     if application.messagebox(texto,'Atenção',mb_yesno+MB_ICONWARNING+MB_DEFBUTTON2) = idno then exit;
   end;
   (********************** verificar total do ipi ***********************)

   if ((frmcompra_menu.qrnota.FieldByName('ipi').asfloat-
       frmcompra_menu.qrnota.FieldByName('conf_ipi').asfloat) > 0.10) or
      ((frmcompra_menu.qrnota.FieldByName('ipi').asfloat-
       frmcompra_menu.qrnota.FieldByName('CONF_ipi').asfloat) < (-0.10)) then
   begin
     texto := pansichar('Houve inconsistência no valor total do IPI!'+#13+
              'Diferença: R$'+formatfloat('###,###,##0.00',(frmcompra_menu.qrnota.FieldByName('TOTAL_NOTA').asfloat-frmcompra_menu.qrnota.FieldByName('conf_TOTALNOTA').asfloat))+#13+
              'Deseja prosseguir com a finalização?');

     if application.messagebox(texto,'Atenção',mb_yesno+MB_ICONWARNING+MB_DEFBUTTON2) = idno then exit;
   end;




   if frmcompra_menu.qrnota.state = dsinsert then
   begin
      FRMMODULO.QRPRODUTO_MOV.CLOSE;
      FRMMODULO.QRPRODUTO_MOV.SQL.CLEAR;
      FRMMODULO.QRPRODUTO_MOV.SQL.ADD('SELECT * FROM C000032 WHERE CODNOTA = ''XXXXXX''');
      FRMMODULO.QRPRODUTO_MOV.OPEN;

      qrnota_item.first;
      while not qrnota_item.eof do
      begin
            frmmodulo.qrproduto_mov.Insert;
            frmmodulo.qrproduto_mov.FieldByName('codigo').AsString       := frmcompra.qrnota_item.fieldbyname('codlancamento').asstring;
            frmmodulo.qrproduto_mov.fieldbyname('codnota').AsString      := frmcompra.qrnota_item.fieldbyname('codnota').asstring+'NE';
            frmmodulo.qrproduto_mov.fieldbyname('SERIAL').AsString       := frmcompra.qrnota_item.fieldbyname('codigo').asstring;
            frmmodulo.qrproduto_mov.fieldbyname('numeronota').AsString   := frmcompra_menu.qrnota.fieldbyname('NUMERO').asstring;
            frmmodulo.qrproduto_mov.fieldbyname('codproduto').asstring   := qrnota_item.fieldbyname('codproduto').asstring;
            if frmcompra.qrnota_item.FieldByName('fracao').asfloat > 0 then
            begin
              frmmodulo.qrproduto_mov.fieldbyname('qtde').asfloat := frmcompra.qrnota_item.FieldByName('qtde').asfloat * frmcompra.qrnota_item.FieldByName('fracao').asfloat;
              frmmodulo.qrproduto_mov.fieldbyname('unitario').asfloat := frmcompra.qrnota_item.FieldByName('total').asfloat/(frmcompra.qrnota_item.FieldByName('qtde').asfloat * frmcompra.qrnota_item.FieldByName('fracao').asfloat);
            end
            ELSE
            begin
              frmmodulo.qrproduto_mov.fieldbyname('qtde').asfloat := frmcompra.qrnota_item.FieldByName('qtde').asfloat;
              frmmodulo.qrproduto_mov.fieldbyname('unitario').asfloat := frmcompra.qrnota_item.FieldByName('total').asfloat/frmcompra.qrnota_item.FieldByName('qtde').asfloat;
            end;
            frmmodulo.qrproduto_mov.fieldbyname('total').asfloat         := qrnota_item.fieldbyname('total').asfloat;
            frmmodulo.qrproduto_mov.fieldbyname('unidade').asstring      := qrnota_item.fieldbyname('un_fracao').AsString;
            frmmodulo.qrproduto_mov.fieldbyname('aliquota').asFLOAT      := qrnota_item.fieldbyname('ICMS_ALIQUOTA').asFLOAT;
            frmmodulo.qrproduto_mov.fieldbyname('cupom_modelo').asstring := frmcompra_menu.qrnota.FIELDBYNAME('MODELO').ASSTRING;
            frmmodulo.qrproduto_mov.fieldbyname('codcliente').AsString   := '000000';
            frmmodulo.qrproduto_mov.fieldbyname('codvendedor').AsString  := 'S/VEND';
            frmmodulo.qrproduto_mov.fieldbyname('MOVIMENTO').AsINTEGER := 1;
            frmmodulo.qrproduto_mov.FieldByName('data').asstring := frmcompra_menu.qrnota.FIELDBYNAME('DATA_emissao').ASSTRING;
            frmmodulo.qrproduto_mov.Post;
            qrnota_item.Next;
      end;
   end
   ELSE
   BEGIN
        qrnota_item.first;
        while not qrnota_item.eof do
        begin
          FRMMODULO.QRPRODUTO_MOV.CLOSE;
          FRMMODULO.QRPRODUTO_MOV.SQL.CLEAR;
          FRMMODULO.QRPRODUTO_MOV.SQL.ADD('SELECT * FROM C000032 WHERE CODIGO = '''+qrnota_item.FIELDBYNAME('CODLANCAMENTO').ASSTRING+'''');
          FRMMODULO.QRPRODUTO_MOV.OPEN;
          IF FRMMODULO.QRPRODUTO_MOV.RecordCount > 0 THEN
          BEGIN
            frmmodulo.qrproduto_mov.EDIT;
            frmmodulo.qrproduto_mov.fieldbyname('codnota').AsString      := frmcompra.qrnota_item.fieldbyname('codnota').asstring+'NE';
            frmmodulo.qrproduto_mov.fieldbyname('numeronota').AsString   := frmcompra_menu.qrnota.fieldbyname('NUMERO').asstring;
            frmmodulo.qrproduto_mov.fieldbyname('codproduto').asstring   := qrnota_item.fieldbyname('codproduto').asstring;
            if frmcompra.qrnota_item.FieldByName('fracao').asfloat > 0 then
            begin
              frmmodulo.qrproduto_mov.fieldbyname('qtde').asfloat := frmcompra.qrnota_item.FieldByName('qtde').asfloat * frmcompra.qrnota_item.FieldByName('fracao').asfloat;
              frmmodulo.qrproduto_mov.fieldbyname('unitario').asfloat := frmcompra.qrnota_item.FieldByName('total').asfloat/(frmcompra.qrnota_item.FieldByName('qtde').asfloat * frmcompra.qrnota_item.FieldByName('fracao').asfloat);
            end
            ELSE
            begin
              frmmodulo.qrproduto_mov.fieldbyname('qtde').asfloat := frmcompra.qrnota_item.FieldByName('qtde').asfloat;
              frmmodulo.qrproduto_mov.fieldbyname('unitario').asfloat := frmcompra.qrnota_item.FieldByName('total').asfloat/frmcompra.qrnota_item.FieldByName('qtde').asfloat;
            end;
            frmmodulo.qrproduto_mov.fieldbyname('total').asfloat         := qrnota_item.fieldbyname('total').asfloat;
            frmmodulo.qrproduto_mov.fieldbyname('unidade').asstring      := qrnota_item.fieldbyname('un_fracao').AsString;

            frmmodulo.qrproduto_mov.fieldbyname('aliquota').asFLOAT      := qrnota_item.fieldbyname('ICMS_ALIQUOTA').asFLOAT;
            frmmodulo.qrproduto_mov.fieldbyname('cupom_modelo').asstring := frmcompra_menu.qrnota.FIELDBYNAME('MODELO').ASSTRING;
            frmmodulo.qrproduto_mov.fieldbyname('codcliente').AsString   := '000000';
            frmmodulo.qrproduto_mov.fieldbyname('codvendedor').AsString  := 'S/VEND';
            frmmodulo.qrproduto_mov.fieldbyname('MOVIMENTO').AsINTEGER := 1;
            frmmodulo.qrproduto_mov.FieldByName('data').asstring := frmcompra_menu.qrnota.FIELDBYNAME('DATA_emissao').ASSTRING;
            frmmodulo.qrproduto_mov.Post;
          END
          ELSE
          BEGIN
            frmmodulo.qrproduto_mov.Insert;
            frmmodulo.qrproduto_mov.FieldByName('codigo').AsString       := frmcompra.qrnota_item.fieldbyname('codlancamento').asstring;
            frmmodulo.qrproduto_mov.fieldbyname('codnota').AsString      := frmcompra.qrnota_item.fieldbyname('codnota').asstring+'NE';
            frmmodulo.qrproduto_mov.fieldbyname('SERIAL').AsString       := frmcompra.qrnota_item.fieldbyname('codigo').asstring;
            frmmodulo.qrproduto_mov.fieldbyname('numeronota').AsString   := frmcompra_menu.qrnota.fieldbyname('NUMERO').asstring;
            frmmodulo.qrproduto_mov.fieldbyname('codproduto').asstring   := qrnota_item.fieldbyname('codproduto').asstring;
            if frmcompra.qrnota_item.FieldByName('fracao').asfloat > 0 then
            begin
              frmmodulo.qrproduto_mov.fieldbyname('qtde').asfloat := frmcompra.qrnota_item.FieldByName('qtde').asfloat * frmcompra.qrnota_item.FieldByName('fracao').asfloat;
              frmmodulo.qrproduto_mov.fieldbyname('unitario').asfloat := frmcompra.qrnota_item.FieldByName('total').asfloat/(frmcompra.qrnota_item.FieldByName('qtde').asfloat * frmcompra.qrnota_item.FieldByName('fracao').asfloat);
            end
            ELSE
            begin
              frmmodulo.qrproduto_mov.fieldbyname('qtde').asfloat := frmcompra.qrnota_item.FieldByName('qtde').asfloat;
              frmmodulo.qrproduto_mov.fieldbyname('unitario').asfloat := frmcompra.qrnota_item.FieldByName('total').asfloat/frmcompra.qrnota_item.FieldByName('qtde').asfloat;
            end;
            frmmodulo.qrproduto_mov.fieldbyname('total').asfloat         := qrnota_item.fieldbyname('total').asfloat;
            frmmodulo.qrproduto_mov.fieldbyname('unidade').asstring      := qrnota_item.fieldbyname('un_fracao').AsString;

            frmmodulo.qrproduto_mov.fieldbyname('aliquota').asFLOAT      := qrnota_item.fieldbyname('ICMS_ALIQUOTA').asFLOAT;
            frmmodulo.qrproduto_mov.fieldbyname('cupom_modelo').asstring := frmcompra_menu.qrnota.FIELDBYNAME('MODELO').ASSTRING;
            frmmodulo.qrproduto_mov.fieldbyname('codcliente').AsString   := '000000';
            frmmodulo.qrproduto_mov.fieldbyname('codvendedor').AsString  := 'S/VEND';
            frmmodulo.qrproduto_mov.fieldbyname('MOVIMENTO').AsINTEGER := 1;
            frmmodulo.qrproduto_mov.FieldByName('data').asstring := frmcompra_menu.qrnota.FIELDBYNAME('DATA_emissao').ASSTRING;
            frmmodulo.qrproduto_mov.Post;
          END;
          qrnota_item.next;
        end;

   END;


   // ajusta o total da nota pelo rodapé
     frmcompra_menu.qrnota.fieldbyname('TOTAL_NOTA').asfloat := edtotal.Value;
     frmcompra_menu.qrnota.fieldbyname('TOTAL_PRODUTOS').asfloat := edprodutos.Value;

     frmcompra_menu.qrnota.fieldbyname('CONF_TOTALNOTA').asfloat := edtotal.Value;
     frmcompra_menu.qrnota.fieldbyname('CONF_TOTALPRODUTOS').asfloat := edprodutos.Value;

     frmcompra_menu.qrnota.fieldbyname('CONF_BASEICMS').asfloat := ebase_icms.Value;
     frmcompra_menu.qrnota.fieldbyname('CONF_VALORICMS').asfloat := edvicms.Value;

     frmcompra_menu.qrnota.fieldbyname('CONF_BASESUB').asfloat := edbst.Value;
     frmcompra_menu.qrnota.fieldbyname('CONF_VALORSUB').asfloat := edvst.Value;

     frmcompra_menu.qrnota.fieldbyname('CONF_FRETE').asfloat := edfrete.Value;
     frmcompra_menu.qrnota.fieldbyname('CONF_SEGURO').asfloat := edseguro.Value;
     frmcompra_menu.qrnota.fieldbyname('CONF_OUTRAS').asfloat := edoutras.Value;
     frmcompra_menu.qrnota.fieldbyname('CONF_IPI').asfloat := edipi.Value;

     frmcompra_menu.qrnota.fieldbyname('CONF_DESCONTO').asfloat := rdesconto.Value;

     frmcompra_menu.qrnota.fieldbyname('CONF_ICMSRETIDO').asfloat := RzDBNumericEdit9.Value;

   frmcompra_menu.qrnota.post;
   frmmodulo.conexao.commit;



   close;
end;

procedure Tfrmcompra.ecodempresaKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    if frmcompra_menu.qrnota.State <> dsedit then if frmcompra_menu.qrnota.State <> dsinsert then exit;

    frmcompra_menu.qrnota.fieldbyname('codempresa').asstring := frmprincipal.zerarcodigo(tedit(sender).Text,6);
    if tedit(sender).Text <> '000000' then
    begin
      frmcompra_menu.qrempresa.close;
      frmcompra_menu.qrempresa.sql.clear;
      frmcompra_menu.qrempresa.sql.add('select * from c000004 where codigo = '''+ecodempresa.text+'''');
      frmcompra_menu.qrempresa.open;
      if frmcompra_menu.qrempresa.recordcount = 0 then
      begin
        application.messagebox('Empresa não cadastrada!','Aviso',mb_ok+mb_iconwarning);
        ecodempresa.setfocus;
      end
      else
        Perform(wm_nextdlgctl,0,0);
    end
    else
    begin
      ecodempresaButtonClick(frmcompra);
    end;
  end;
end;

procedure Tfrmcompra.enumeroExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
  if frmcompra_menu.qrnota.State <> dsedit then if frmcompra_menu.qrnota.State <> dsinsert then exit;

  frmcompra_menu.qrnota.fieldbyname('numero').asstring := frmprincipal.zerarcodigo(frmcompra_menu.qrnota.fieldbyname('numero').asstring,6);

  if frmcompra_menu.qrnota.FieldByName('numero').asstring = '000000' then
  begin
    application.messagebox('Favor informar um número válido!','Atenção',mb_ok+MB_ICONERROR);
    enumero.setfocus;
  end;
end;

procedure Tfrmcompra.enumeroEnter(Sender: TObject);
begin
  tedit(sender).color := $00A8FFFF;
end;

procedure Tfrmcompra.enumeroKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmcompra.combo_modeloExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
  if frmcompra_menu.qrnota.State <> dsedit then if frmcompra_menu.qrnota.State <> dsinsert then exit;

  if not frmcompra_menu.qrmodelo.Locate('sintegra',combo_modelo.text,[loCaseInsensitive]) then
  begin
    application.messagebox('Modelo de documento não encontrado!','Atenção!',mb_ok+MB_ICONWARNING);
    combo_modelo.setfocus;
  end
  else
  begin
     frmcompra_menu.qrnota.fieldbyname('especie').asstring := frmcompra_menu.qrmodelo.fieldbyname('sigla').asstring;
  end;
end;

procedure Tfrmcompra.eserieExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
end;

procedure Tfrmcompra.ECODFORNECEDORKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    if frmcompra_menu.qrnota.State <> dsedit then if frmcompra_menu.qrnota.State <> dsinsert then exit;

    frmcompra_menu.qrnota.fieldbyname('codfornecedor').asstring := frmprincipal.zerarcodigo(tedit(sender).Text,6);
    if tedit(sender).Text <> '000000' then
    begin
      frmcompra_menu.qrfornecedor.close;
      frmcompra_menu.qrfornecedor.sql.clear;
      frmcompra_menu.qrfornecedor.sql.add('select * from c000009 where codigo = '''+ecodfornecedor.text+'''');
      frmcompra_menu.qrfornecedor.open;
      if frmcompra_menu.qrfornecedor.recordcount = 0 then
      begin
        application.messagebox('Fornecedor não cadastrado!','Aviso',mb_ok+mb_iconwarning);
        ecodfornecedor.setfocus;
      end
      else
        Perform(wm_nextdlgctl,0,0);
    end
    else
    begin
      ecodfornecedorButtonClick(frmcompra);
    end;
  end;
end;

procedure Tfrmcompra.ECODFORNECEDORButtonClick(Sender: TObject);
begin
  resultado_pesquisa1 := '';
  frmxloc_fornecedor := tfrmxloc_fornecedor.create(self);
  frmxloc_fornecedor.showmodal;
  if resultado_pesquisa1 <>'' then
  begin
     frmcompra_menu.qrfornecedor.close;
     frmcompra_menu.qrfornecedor.sql.clear;
     frmcompra_menu.qrfornecedor.sql.add('select * from c000009 where codigo = '''+resultado_pesquisa1+'''');
     frmcompra_menu.qrfornecedor.open;
     frmcompra_menu.qrnota.fieldbyname('codfornecedor').asstring := resultado_pesquisa1;
     eemissao.setfocus;
  end;
end;

procedure Tfrmcompra.eemissaoEnter(Sender: TObject);
begin
  if eemissao.Text = '  /  /    ' then eemissao.date := date;
end;

procedure Tfrmcompra.eentradaEnter(Sender: TObject);
begin
  if eentrada.Text = '  /  /    ' then eentrada.date := date;
end;

procedure Tfrmcompra.evalor_substExit(Sender: TObject);
begin
 if frmcompra_menu.qrnota.State <> dsedit then if frmcompra_menu.qrnota.State <> dsinsert then exit;

 if frmcompra_menu.qrnota.fieldbyname('CONF_ICMSRETIDO').asfloat > 0 then
 begin
   if xdesconto.checked then
      frmcompra_menu.qrnota.fieldbyname('CONF_TOTALNOTA').asfloat :=
      frmcompra_menu.qrnota.fieldbyname('CONF_ICMSRETIDO').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_TOTALPRODUTOS').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_FRETE').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_SEGURO').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_OUTRAS').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_IPI').asfloat -
      frmcompra_menu.qrnota.fieldbyname('CONF_DESCONTO').asfloat
   else
      frmcompra_menu.qrnota.fieldbyname('CONF_TOTALNOTA').asfloat :=
      frmcompra_menu.qrnota.fieldbyname('CONF_ICMSRETIDO').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_TOTALPRODUTOS').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_FRETE').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_SEGURO').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_OUTRAS').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_IPI').asfloat;
 end
 else
 begin
   if xdesconto.checked then
      frmcompra_menu.qrnota.fieldbyname('CONF_TOTALNOTA').asfloat :=
      frmcompra_menu.qrnota.fieldbyname('CONF_VALORSUB').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_TOTALPRODUTOS').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_FRETE').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_SEGURO').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_OUTRAS').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_IPI').asfloat -
      frmcompra_menu.qrnota.fieldbyname('CONF_DESCONTO').asfloat
   else
      frmcompra_menu.qrnota.fieldbyname('CONF_TOTALNOTA').asfloat :=
      frmcompra_menu.qrnota.fieldbyname('CONF_VALORSUB').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_TOTALPRODUTOS').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_FRETE').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_SEGURO').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_OUTRAS').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_IPI').asfloat;
 end;

end;

procedure Tfrmcompra.RzDBNumericEdit9Exit(Sender: TObject);
begin
 if frmcompra_menu.qrnota.State <> dsedit then if frmcompra_menu.qrnota.State <> dsinsert then exit;

 if frmcompra_menu.qrnota.fieldbyname('CONF_ICMSRETIDO').asfloat > 0 then
 begin
   if xdesconto.checked then
      frmcompra_menu.qrnota.fieldbyname('CONF_TOTALNOTA').asfloat :=
      frmcompra_menu.qrnota.fieldbyname('CONF_ICMSRETIDO').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_TOTALPRODUTOS').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_FRETE').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_SEGURO').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_OUTRAS').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_IPI').asfloat -
      frmcompra_menu.qrnota.fieldbyname('CONF_DESCONTO').asfloat
   else
      frmcompra_menu.qrnota.fieldbyname('CONF_TOTALNOTA').asfloat :=
      frmcompra_menu.qrnota.fieldbyname('CONF_ICMSRETIDO').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_TOTALPRODUTOS').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_FRETE').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_SEGURO').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_OUTRAS').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_IPI').asfloat;


       IF frmcompra_menu.qrnota.fieldbyname('CONF_VALORICMS').asfloat > 0 THEN
          frmcompra_menu.qrnota.fieldbyname('CONF_ICMSREDITO_PERC').asfloat  :=
            (frmcompra_menu.qrnota.fieldbyname('CONF_ICMSRETIDO').asfloat * 100) / frmcompra_menu.qrnota.fieldbyname('CONF_VALORICMS').asfloat;


 end
 else
 begin
   if xdesconto.checked then
      frmcompra_menu.qrnota.fieldbyname('CONF_TOTALNOTA').asfloat :=
      frmcompra_menu.qrnota.fieldbyname('CONF_VALORSUB').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_TOTALPRODUTOS').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_FRETE').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_SEGURO').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_OUTRAS').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_IPI').asfloat -
      frmcompra_menu.qrnota.fieldbyname('CONF_DESCONTO').asfloat
   else
      frmcompra_menu.qrnota.fieldbyname('CONF_TOTALNOTA').asfloat :=
      frmcompra_menu.qrnota.fieldbyname('CONF_VALORSUB').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_TOTALPRODUTOS').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_FRETE').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_SEGURO').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_OUTRAS').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_IPI').asfloat;
 end;



end;

procedure Tfrmcompra.etotalnotaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin

    tab_principal.ActivePageIndex := 0;
    if combo_tipo.ItemIndex = 3 then
    begin
      pconhecimento.Visible := true;
      enota_fiscal.setfocus;
      
    end
    else
    begin
      pconhecimento.Visible := false;
      bincluir.setfocus;
    end;
  end;
end;

procedure Tfrmcompra.xdescontoClick(Sender: TObject);
begin
  if xdesconto.Checked then
  begin

 if frmcompra_menu.qrnota.State <> dsedit then if frmcompra_menu.qrnota.State <> dsinsert then exit;

 if frmcompra_menu.qrnota.fieldbyname('CONF_ICMSRETIDO').asfloat > 0 then
 begin
   if xdesconto.checked then
      frmcompra_menu.qrnota.fieldbyname('CONF_TOTALNOTA').asfloat :=
      frmcompra_menu.qrnota.fieldbyname('CONF_ICMSRETIDO').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_TOTALPRODUTOS').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_FRETE').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_SEGURO').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_OUTRAS').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_IPI').asfloat -
      frmcompra_menu.qrnota.fieldbyname('CONF_DESCONTO').asfloat
   else
      frmcompra_menu.qrnota.fieldbyname('CONF_TOTALNOTA').asfloat :=
      frmcompra_menu.qrnota.fieldbyname('CONF_ICMSRETIDO').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_TOTALPRODUTOS').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_FRETE').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_SEGURO').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_OUTRAS').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_IPI').asfloat;
 end
 else
 begin
   if xdesconto.checked then
      frmcompra_menu.qrnota.fieldbyname('CONF_TOTALNOTA').asfloat :=
      frmcompra_menu.qrnota.fieldbyname('CONF_VALORSUB').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_TOTALPRODUTOS').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_FRETE').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_SEGURO').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_OUTRAS').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_IPI').asfloat -
      frmcompra_menu.qrnota.fieldbyname('CONF_DESCONTO').asfloat
   else
      frmcompra_menu.qrnota.fieldbyname('CONF_TOTALNOTA').asfloat :=
      frmcompra_menu.qrnota.fieldbyname('CONF_VALORSUB').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_TOTALPRODUTOS').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_FRETE').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_SEGURO').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_OUTRAS').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_IPI').asfloat;
 end;

  end;
end;

procedure Tfrmcompra.ecfopKeyPress(Sender: TObject;
  var Key: Char);
begin
     if key = #13 then
          begin
               if frmcompra_menu.qrnota.State <> dsedit then if frmcompra_menu.qrnota.State <> dsinsert then exit;
                    if tedit(sender).Text <> '' then
                         begin
                              frmmodulo.qrcfop.close;
                              frmmodulo.qrcfop.sql.clear;
                              frmmodulo.qrcfop.sql.add('select * from c000030 where cfop = '''+ecfop.text+''' and tipo = 1');
                              frmmodulo.qrcfop.open;
                              if frmmodulo.qrcfop.recordcount = 0 then
                                   begin
                                        application.messagebox('CFOP não cadastrado ou não é de entrada!','Aviso',mb_ok+mb_iconwarning);
                                        ecfop.setfocus;
                                   end
                              else
                                   Perform(wm_nextdlgctl,0,0);
                              end
                    else
                         begin
                              ecfopButtonClick(frmcompra);
                         end;
          end;
end;

procedure Tfrmcompra.ecfopButtonClick(Sender: TObject);
begin
  resultado_pesquisa1 := '';
  parametro_pesquisa := ' = 1 '; 
  frmxloc_cfOP := tfrmxloc_cfOP.create(self);
  frmxloc_cfOP.showmodal;
  if resultado_pesquisa1 <>'' then
  begin
     frmmodulo.qrcfOP.close;
     frmmodulo.qrcfOP.sql.clear;
     frmmodulo.qrcfOP.sql.add('select * from c000030 where cfop = '''+resultado_pesquisa1+'''');
     frmmodulo.qrcfOP.open;
     frmcompra_menu.qrnota.fieldbyname('cfOP').asstring := resultado_pesquisa1;
     ebase_icms.setfocus;
  end;
end;

procedure Tfrmcompra.bincluirClick(Sender: TObject);
begin
     if (frmcompra_menu.qrnota.FieldByName('numero').asstring = '000000') and (frmcompra_menu.qrnota.FieldByName('numero').asstring = '') then
          begin
               application.messagebox('Favor informar um número válido para Nota Fiscal!','Atenção',mb_ok+MB_ICONERROR);
               enumero.setfocus;
               exit;
          end;

          vopcao := 1;

          vbicms    := 0;
          vvicms    := 0;
          vipi      := 0;
          vbst      := 0;
          vvst      := 0;
          vfrete    := 0;
          vseguro   := 0;
          voutras   := 0;
          vprodutos := 0;
          vtotal    := 0;

          qrnota_item.Insert;
          qrnota_item.fieldbyname('codigo').asstring := frmprincipal.codifica('000032');
          qrnota_item.fieldbyname('codlancamento').asstring := qrnota_item.fieldbyname('codigo').asstring;
          qrnota_item.fieldbyname('data').asdatetime := frmcompra_menu.qrnota.fieldbyname('DATA_LANCAMENTO').asfloat;
          codigo_it := qrnota_item.fieldbyname('codigo').asstring;
          qrnota_item.fieldbyname('codnota').asstring := frmcompra_menu.qrnota.fieldbyname('codigo').asstring;
          qrnota_item.fieldbyname('notafiscal').asstring := frmcompra_menu.qrnota.fieldbyname('numero').asstring;
          qrnota_item.fieldbyname('CFOP').asstring := frmcompra_menu.qrnota.fieldbyname('CFOP').asstring;

          if frmcompra_menu.qrnota.FieldByName('CONF_ICMSRETIDO').asfloat > 0 then
               qrnota_item.fieldbyname('icms_retido').asstring := 'S' else qrnota_item.fieldbyname('icms_retido').asstring := 'N';

          qrnota_item.FieldByName('item').AsString := frmprincipal.zerarcodigo(inttostr(itens),3);
          qrnota_item.fieldbyname('IPI_TIPO').AsString := '0.Não Tem IPI';
          frmcompra_item := tfrmcompra_item.create(self);
          frmcompra_item.showmodal;

          qrnota_item.Refresh;
          batualiza_itensClick(frmcompra);

          bgravar.setfocus;
end;

procedure Tfrmcompra.batualiza_itensClick(Sender: TObject);
begin
  frmcompra_menu.qrnota.fieldbyname('BASE_ICMS').asfloat := 0;
  frmcompra_menu.qrnota.fieldbyname('valor_ICMS').asfloat := 0;
  frmcompra_menu.qrnota.fieldbyname('BASE_sub').asfloat := 0;
  frmcompra_menu.qrnota.fieldbyname('valor_sub').asfloat := 0;
  frmcompra_menu.qrnota.fieldbyname('frete').asfloat := 0;
  frmcompra_menu.qrnota.fieldbyname('seguro').asfloat := 0;
  frmcompra_menu.qrnota.fieldbyname('outras').asfloat := 0;
  frmcompra_menu.qrnota.fieldbyname('ipi').asfloat := 0;
  frmcompra_menu.qrnota.fieldbyname('total_produtos').asfloat := 0;


  frmcompra_menu.qrnota.fieldbyname('ipi').asfloat := 0;
  frmcompra_menu.qrnota.fieldbyname('ICMS_ISENTO').asfloat := 0;


  ITENS := 1;

  frmcompra.qrnota_item.First;

  while not frmcompra.qrnota_item.Eof do
  begin

  frmcompra_menu.qrnota.fieldbyname('ICMS_ISENTO').asfloat := frmcompra_menu.qrnota.fieldbyname('ICMS_ISENTO').asfloat +
                                                            frmcompra.qrnota_item.fieldbyname('ICMS_ISENTO').asfloat+
                                                            frmcompra.qrnota_item.fieldbyname('ICMS_NAOTRIBUTADO').asfloat;






  frmcompra_menu.qrnota.fieldbyname('BASE_ICMS').asfloat := frmcompra_menu.qrnota.fieldbyname('BASE_ICMS').asfloat +
                                                            frmcompra.qrnota_item.fieldbyname('icms_base').asfloat;

  frmcompra_menu.qrnota.fieldbyname('valor_ICMS').asfloat := frmcompra_menu.qrnota.fieldbyname('valor_ICMS').asfloat +
                                                            frmcompra.qrnota_item.fieldbyname('icms_valor').asfloat;

  frmcompra_menu.qrnota.fieldbyname('BASE_sub').asfloat := frmcompra_menu.qrnota.fieldbyname('Base_sub').asfloat +
                                                            frmcompra.qrnota_item.fieldbyname('sub_base').asfloat;

  frmcompra_menu.qrnota.fieldbyname('valor_sub').asfloat := frmcompra_menu.qrnota.fieldbyname('valor_sub').asfloat +
                                                            frmcompra.qrnota_item.fieldbyname('sub_valor').asfloat;

  frmcompra_menu.qrnota.fieldbyname('frete').asfloat := frmcompra_menu.qrnota.fieldbyname('frete').asfloat +
                                                        frmcompra.qrnota_item.fieldbyname('frete').asfloat;

  frmcompra_menu.qrnota.fieldbyname('seguro').asfloat := frmcompra_menu.qrnota.fieldbyname('seguro').asfloat +
                                                        frmcompra.qrnota_item.fieldbyname('seguro').asfloat;

  frmcompra_menu.qrnota.fieldbyname('outras').asfloat := frmcompra_menu.qrnota.fieldbyname('outras').asfloat +
                                                        frmcompra.qrnota_item.fieldbyname('outras').asfloat;

  frmcompra_menu.qrnota.fieldbyname('ipi').asfloat := frmcompra_menu.qrnota.fieldbyname('ipi').asfloat +
                                                        frmcompra.qrnota_item.fieldbyname('ipi_valor').asfloat;




  frmcompra_menu.qrnota.fieldbyname('total_produtos').asfloat := frmcompra_menu.qrnota.fieldbyname('total_produtos').asfloat +
                                                                 frmcompra.qrnota_item.fieldbyname('total').asfloat;





  if (xdesconto.Checked) and ( frmcompra_menu.qrnota.fieldbyname('CONF_DESCONTO').asfloat > 0) then
  begin
    frmcompra_menu.qrnota.fieldbyname('desconto').asfloat := frmcompra_menu.qrnota.fieldbyname('CONF_DESCONTO').asfloat;
    frmcompra_menu.qrnota.fieldbyname('total_nota').asfloat :=     frmcompra_menu.qrnota.fieldbyname('total_produtos').asfloat +
                                                                   frmcompra_menu.qrnota.fieldbyname('frete').asfloat +
                                                                   frmcompra_menu.qrnota.fieldbyname('seguro').asfloat +
                                                                   frmcompra_menu.qrnota.fieldbyname('outras').asfloat +
                                                                   frmcompra_menu.qrnota.fieldbyname('ipi').asfloat +
                                                                   frmcompra_menu.qrnota.fieldbyname('valor_sub').asfloat -
                                                                   frmcompra_menu.qrnota.fieldbyname('desconto').asfloat;
  end
  else
  begin
    if ( frmcompra_menu.qrnota.fieldbyname('CONF_DESCONTO').asfloat > 0) then
    begin
       frmcompra_menu.qrnota.fieldbyname('desconto').asfloat := frmcompra_menu.qrnota.fieldbyname('CONF_DESCONTO').asfloat;
       frmcompra_menu.qrnota.fieldbyname('total_nota').asfloat :=     frmcompra_menu.qrnota.fieldbyname('total_produtos').asfloat +
                                                                      frmcompra_menu.qrnota.fieldbyname('frete').asfloat +
                                                                      frmcompra_menu.qrnota.fieldbyname('seguro').asfloat +
                                                                      frmcompra_menu.qrnota.fieldbyname('outras').asfloat +
                                                                      frmcompra_menu.qrnota.fieldbyname('ipi').asfloat +
                                                                      frmcompra_menu.qrnota.fieldbyname('valor_sub').asfloat;

    end
    else
    begin
       frmcompra_menu.qrnota.fieldbyname('desconto').asfloat := 0;
       frmcompra_menu.qrnota.fieldbyname('total_nota').asfloat :=     frmcompra_menu.qrnota.fieldbyname('total_produtos').asfloat +
                                                                      frmcompra_menu.qrnota.fieldbyname('frete').asfloat +
                                                                      frmcompra_menu.qrnota.fieldbyname('seguro').asfloat +
                                                                      frmcompra_menu.qrnota.fieldbyname('outras').asfloat +
                                                                      frmcompra_menu.qrnota.fieldbyname('ipi').asfloat +
                                                                      frmcompra_menu.qrnota.fieldbyname('valor_sub').asfloat +
                                                                      frmcompra_menu.qrnota.fieldbyname('ITEM_ESPECIAL_TOTAL').asfloat ;

    end;
  end;





     ITENS := ITENS + 1;

    frmcompra.qrnota_item.next;
  end;

  frmcompra_menu.qrnota.fieldbyname('itens').asinteger := itens - 1;


      //action := cafree;

end;

procedure Tfrmcompra.bexcluirClick(Sender: TObject);
begin

          vbicms    := 0;
          vvicms    := 0;
          vipi      := 0;
          vbst      := 0;
          vvst      := 0;
          vfrete    := 0;
          vseguro   := 0;
          voutras   := 0;
          vprodutos := 0;
          vtotal    := 0;

  if application.messagebox('Confirma a exclusão do item?','Atenção',mb_yesno+mb_iconwarning) = idyes then
  begin


          IF qrnota_item.FIELDBYNAME('CODLANCAMENTO').ASSTRING <> 'XXXXXX' THEN
          BEGIN
            FRMMODULO.QRPRODUTO_MOV.CLOSE;
            FRMMODULO.QRPRODUTO_MOV.SQL.CLEAR;
            FRMMODULO.QRPRODUTO_MOV.SQL.ADD('DELETE FROM C000032 WHERE CODIGO = '''+qrnota_item.FIELDBYNAME('CODLANCAMENTO').ASSTRING+'''');
            FRMMODULO.QRPRODUTO_MOV.ExecSQL;

            qrgrade_entrada.Close;
            qrgrade_entrada.SQL.clear;
            qrgrade_entrada.SQL.add('select * from c000033 where coditem = '''+qrnota_item.FIELDBYNAME('CODLANCAMENTO').ASSTRING+'''');
            qrgrade_entrada.Open;

            frmmodulo.qrgrade_produto.close;
            frmmodulo.qrgrade_produto.sql.clear;
            frmmodulo.qrgrade_produto.SQL.Add('select * from c000021 where codproduto = '''+qrnota_item.FIELDBYNAME('CODPRODUTO').ASSTRING+'''');
            frmmodulo.qrgrade_produto.open;

            while qrgrade_entrada.RecordCount <> 0 do
            BEGIN
              if frmmodulo.qrgrade_produto.Locate('codigo',qrgrade_entrada.fieldbyname('codgrade').asstring,[loCaseInsensitive]) then
              begin
                frmmodulo.qrgrade_produto.edit;
                frmmodulo.qrgrade_produto.FieldByName('estoque').asfloat := frmmodulo.qrgrade_produto.FieldByName('estoque').asfloat -
                                                                            qrgrade_entrada.FieldByName('qtde').asfloat;
                frmmodulo.qrgrade_produto.post;
              end;
              qrgrade_entrada.delete;
            END;


            frmmodulo.qrproduto.close;
            frmmodulo.qrproduto.sql.clear;
            frmmodulo.qrproduto.sql.add('select * from c000025 where codigo = '''+qrnota_item.fieldbyname('codproduto').asstring+'''');
            frmmodulo.qrproduto.open;
            IF frmmodulo.qrproduto.recordcount > 0 THEN
            BEGIN
              frmmodulo.qrproduto.edit;
              IF qrnota_item.FieldByName('fracao').asfloat > 0 then
                frmmodulo.qrproduto.fieldbyname('estoque').asfloat := frmmodulo.qrproduto.fieldbyname('estoque').asfloat - (qrnota_item.fieldbyname('qtde').asfloat *qrnota_ITEM.FIELDBYNAME('FRACAO').ASFLOAT)
              else
                frmmodulo.qrproduto.fieldbyname('estoque').asfloat := frmmodulo.qrproduto.fieldbyname('estoque').asfloat - qrnota_item.fieldbyname('qtde').asfloat;
              frmmodulo.qrproduto.FieldByName('DATA_ULTIMACOMPRA').asstring := frmmodulo.qrproduto.FieldByName('DATA_ULTIMACOMPRA_ANTERIOR').asstring;
              frmmodulo.qrproduto.FieldByName('notafiscal').asstring        := frmmodulo.qrproduto.FieldByName('notafiscal_ANTERIOR').asstring;
              frmmodulo.qrproduto.FieldByName('codfornecedor').asstring     := frmmodulo.qrproduto.FieldByName('codfornecedor_ANTERIOR').asstring;
              frmmodulo.qrproduto.post;
            END;
          END;


    qrnota_item.delete;
    qrnota_item.Refresh;


  frmcompra_menu.qrnota.fieldbyname('BASE_ICMS').asfloat := 0;
  frmcompra_menu.qrnota.fieldbyname('valor_ICMS').asfloat := 0;
  frmcompra_menu.qrnota.fieldbyname('BASE_sub').asfloat := 0;
  frmcompra_menu.qrnota.fieldbyname('valor_sub').asfloat := 0;
  frmcompra_menu.qrnota.fieldbyname('frete').asfloat := 0;
  frmcompra_menu.qrnota.fieldbyname('seguro').asfloat := 0;
  frmcompra_menu.qrnota.fieldbyname('outras').asfloat := 0;
  frmcompra_menu.qrnota.fieldbyname('ipi').asfloat := 0;
  frmcompra_menu.qrnota.fieldbyname('total_produtos').asfloat := 0;
    frmcompra_menu.qrnota.fieldbyname('ICMS_ISENTO').asfloat := 0;


  itens := 1;



  frmcompra.qrnota_item.First;

  while not frmcompra.qrnota_item.Eof do
  begin

  frmcompra_menu.qrnota.fieldbyname('ICMS_ISENTO').asfloat := frmcompra_menu.qrnota.fieldbyname('ICMS_ISENTO').asfloat +
                                                            frmcompra.qrnota_item.fieldbyname('ICMS_ISENTO').asfloat+
                                                            frmcompra.qrnota_item.fieldbyname('ICMS_NAOTRIBUTADO').asfloat;



  frmcompra_menu.qrnota.fieldbyname('BASE_ICMS').asfloat := frmcompra_menu.qrnota.fieldbyname('BASE_ICMS').asfloat +
                                                            frmcompra.qrnota_item.fieldbyname('icms_base').asfloat;

  frmcompra_menu.qrnota.fieldbyname('valor_ICMS').asfloat := frmcompra_menu.qrnota.fieldbyname('valor_ICMS').asfloat +
                                                            frmcompra.qrnota_item.fieldbyname('icms_valor').asfloat;

  frmcompra_menu.qrnota.fieldbyname('BASE_sub').asfloat := frmcompra_menu.qrnota.fieldbyname('Base_sub').asfloat +
                                                            frmcompra.qrnota_item.fieldbyname('sub_base').asfloat;

  frmcompra_menu.qrnota.fieldbyname('valor_sub').asfloat := frmcompra_menu.qrnota.fieldbyname('valor_sub').asfloat +
                                                            frmcompra.qrnota_item.fieldbyname('sub_valor').asfloat;

  frmcompra_menu.qrnota.fieldbyname('frete').asfloat := frmcompra_menu.qrnota.fieldbyname('frete').asfloat +
                                                        frmcompra.qrnota_item.fieldbyname('frete').asfloat;

  frmcompra_menu.qrnota.fieldbyname('seguro').asfloat := frmcompra_menu.qrnota.fieldbyname('seguro').asfloat +
                                                        frmcompra.qrnota_item.fieldbyname('seguro').asfloat;

  frmcompra_menu.qrnota.fieldbyname('outras').asfloat := frmcompra_menu.qrnota.fieldbyname('outras').asfloat +
                                                        frmcompra.qrnota_item.fieldbyname('outras').asfloat;

  frmcompra_menu.qrnota.fieldbyname('ipi').asfloat := frmcompra_menu.qrnota.fieldbyname('ipi').asfloat +
                                                        frmcompra.qrnota_item.fieldbyname('ipi_valor').asfloat;

  frmcompra_menu.qrnota.fieldbyname('total_produtos').asfloat := frmcompra_menu.qrnota.fieldbyname('total_produtos').asfloat +
                                                                 frmcompra.qrnota_item.fieldbyname('total').asfloat;





  if (xdesconto.Checked) and ( frmcompra_menu.qrnota.fieldbyname('CONF_DESCONTO').asfloat > 0) then
  begin
    frmcompra_menu.qrnota.fieldbyname('desconto').asfloat := frmcompra_menu.qrnota.fieldbyname('CONF_DESCONTO').asfloat;
    frmcompra_menu.qrnota.fieldbyname('total_nota').asfloat :=     frmcompra_menu.qrnota.fieldbyname('total_produtos').asfloat +
                                                                   frmcompra_menu.qrnota.fieldbyname('frete').asfloat +
                                                                   frmcompra_menu.qrnota.fieldbyname('seguro').asfloat +
                                                                   frmcompra_menu.qrnota.fieldbyname('outras').asfloat +
                                                                   frmcompra_menu.qrnota.fieldbyname('ipi').asfloat +
                                                                   frmcompra_menu.qrnota.fieldbyname('valor_sub').asfloat -
                                                                   frmcompra_menu.qrnota.fieldbyname('desconto').asfloat;
  end
  else
  begin
    if ( frmcompra_menu.qrnota.fieldbyname('CONF_DESCONTO').asfloat > 0) then
    begin
       frmcompra_menu.qrnota.fieldbyname('desconto').asfloat := frmcompra_menu.qrnota.fieldbyname('CONF_DESCONTO').asfloat;
       frmcompra_menu.qrnota.fieldbyname('total_nota').asfloat :=     frmcompra_menu.qrnota.fieldbyname('total_produtos').asfloat +
                                                                      frmcompra_menu.qrnota.fieldbyname('frete').asfloat +
                                                                      frmcompra_menu.qrnota.fieldbyname('seguro').asfloat +
                                                                      frmcompra_menu.qrnota.fieldbyname('outras').asfloat +
                                                                      frmcompra_menu.qrnota.fieldbyname('ipi').asfloat +
                                                                      frmcompra_menu.qrnota.fieldbyname('valor_sub').asfloat;

    end
    else
    begin
       frmcompra_menu.qrnota.fieldbyname('desconto').asfloat := 0;
       frmcompra_menu.qrnota.fieldbyname('total_nota').asfloat :=     frmcompra_menu.qrnota.fieldbyname('total_produtos').asfloat +
                                                                      frmcompra_menu.qrnota.fieldbyname('frete').asfloat +
                                                                      frmcompra_menu.qrnota.fieldbyname('seguro').asfloat +
                                                                      frmcompra_menu.qrnota.fieldbyname('outras').asfloat +
                                                                      frmcompra_menu.qrnota.fieldbyname('ipi').asfloat +
                                                                      frmcompra_menu.qrnota.fieldbyname('valor_sub').asfloat +
                                                                      frmcompra_menu.qrnota.fieldbyname('ITEM_ESPECIAL_TOTAL').asfloat ;
    end;



  end;


    frmcompra.qrnota_item.Edit;
    frmcompra.qrnota_item.FieldByName('item').asstring := frmprincipal.zerarcodigo(inttostr(itens),3);
    frmcompra.qrnota_item.post;
    frmcompra.qrnota_item.next;
    itens := itens + 1;
  end;

     frmcompra_menu.qrnota.fieldbyname('itens').asinteger := itens - 1;



     batualiza_itensClick(frmcompra);

     edtotal.Value := (edprodutos.Value+edvst.Value+edfrete.Value+edseguro.Value+edoutras.Value+edipi.Value)-rdesconto.Value;

  end;
end;

procedure Tfrmcompra.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmcompra.RzDBComboBox1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then dbedit5.setfocus;
end;

procedure Tfrmcompra.DBEdit4Enter(Sender: TObject);
begin
   tedit(sender).color :=  $00A8FFFF;
end;

procedure Tfrmcompra.DBEdit4Exit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
end;

procedure Tfrmcompra.RzDBNumericEdit16KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmcompra.combo_tipoKeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 then ecodfornecedor.setfocus;
end;

procedure Tfrmcompra.ecodremetenteKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    if frmcompra_menu.qrnota.State <> dsedit then if frmcompra_menu.qrnota.State <> dsinsert then exit;

    frmcompra_menu.qrnota.fieldbyname('codremetente').asstring := frmprincipal.zerarcodigo(tedit(sender).Text,6);
    if tedit(sender).Text <> '000000' then
    begin
      frmcompra_menu.qrfornecedor.close;
      frmcompra_menu.qrfornecedor.sql.clear;
      frmcompra_menu.qrfornecedor.sql.add('select * from c000009 where codigo = '''+ecodremetente.text+'''');
      frmcompra_menu.qrfornecedor.open;
      if frmcompra_menu.qrfornecedor.recordcount = 0 then
      begin
        application.messagebox('Fornecedor/Remetente não cadastrado!','Aviso',mb_ok+mb_iconwarning);
        ecodremetente.setfocus;
      end
      else
        Perform(wm_nextdlgctl,0,0);
    end
    else
    begin
      ecodremetenteButtonClick(frmcompra);
    end;
  end;
end;

procedure Tfrmcompra.ecodremetenteButtonClick(Sender: TObject);
begin
  resultado_pesquisa1 := '';
  frmxloc_fornecedor := tfrmxloc_fornecedor.create(self);
  frmxloc_fornecedor.showmodal;
  if resultado_pesquisa1 <>'' then
  begin
     frmcompra_menu.qrfornecedor.close;
     frmcompra_menu.qrfornecedor.sql.clear;
     frmcompra_menu.qrfornecedor.sql.add('select * from c000009 where codigo = '''+resultado_pesquisa1+'''');
     frmcompra_menu.qrfornecedor.open;
     frmcompra_menu.qrnota.fieldbyname('codremetente').asstring := resultado_pesquisa1;
     emercadoria.setfocus;
  end;
end;

procedure Tfrmcompra.RzDBComboBox3KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmcompra.combo_tipoChange(Sender: TObject);
begin
 if combo_tipo.ItemIndex = 3 then
    PCONHECIMENTO.visible := true else
    pconhecimento.Visible := false;
end;

procedure Tfrmcompra.enota_fiscalExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
  if frmcompra_menu.qrnota.State <> dsedit then if frmcompra_menu.qrnota.State <> dsinsert then exit;

  frmcompra_menu.qrnota.fieldbyname('nota_fiscal').asstring :=
  frmprincipal.zerarcodigo(frmcompra_menu.qrnota.fieldbyname('nota_fiscal').asstring,6);

  qrnf.close;
  qrnf.sql.clear;
  qrnf.sql.add('select * from c000087 where numero = '''+frmcompra_menu.qrnota.fieldbyname('nota_fiscal').asstring+'''');
  qrnf.open;
  if qrnf.recordcount = 1 then
  begin
    frmcompra_menu.QRNOTA.fieldbyname('codremetente').asstring :=    QRNF.fieldbyname('codfornecedor').asstring;
    frmcompra_menu.QRNOTA.fieldbyname('VALOR_MERCADORIAS').asstring :=    QRNF.fieldbyname('total_produtos').asstring;

  end;

end;

procedure Tfrmcompra.DBEdit21KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmcompra.RzDBNumericEdit1Exit(Sender: TObject);
begin
 if frmcompra_menu.qrnota.State <> dsedit then if frmcompra_menu.qrnota.State <> dsinsert then exit;

 WITH FRMCOMPRA_MENU.qrnota DO
 BEGIN
   IF FieldByName('ITEM_FRETE_VALOR').ASFLOAT > 0 THEN
   BEGIN
     IF FieldByName('ITEM_FRETE_BASE').ASFLOAT = 0 THEN FieldByName('ITEM_FRETE_BASE').ASFLOAT := FieldByName('ITEM_FRETE_VALOR').ASFLOAT;
     IF FieldByName('ITEM_FRETE_BASE').ASFLOAT > 0 THEN
     BEGIN
       IF (FieldByName('ITEM_FRETE_BASE').ASFLOAT > 0) AND (FieldByName('ITEM_FRETE_ALIQUOTA').ASFLOAT > 0) THEN
       BEGIN
         FieldByName('ITEM_FRETE_ICMS').ASFLOAT := FieldByName('ITEM_FRETE_BASE').ASFLOAT * (FieldByName('ITEM_FRETE_ALIQUOTA').ASFLOAT/100);
       END;
     END;
   END;

   IF FieldByName('ITEM_SEGURO_VALOR').ASFLOAT > 0 THEN
   BEGIN
     IF FieldByName('ITEM_SEGURO_BASE').ASFLOAT = 0 THEN FieldByName('ITEM_SEGURO_BASE').ASFLOAT := FieldByName('ITEM_SEGURO_VALOR').ASFLOAT;
     IF FieldByName('ITEM_SEGURO_BASE').ASFLOAT > 0 THEN
     BEGIN
       IF (FieldByName('ITEM_SEGURO_BASE').ASFLOAT > 0) AND (FieldByName('ITEM_SEGURO_ALIQUOTA').ASFLOAT > 0) THEN
       BEGIN
         FieldByName('ITEM_SEGURO_ICMS').ASFLOAT := FieldByName('ITEM_SEGURO_BASE').ASFLOAT * (FieldByName('ITEM_SEGURO_ALIQUOTA').ASFLOAT/100);
       END;
     END;
   END;

   IF FieldByName('ITEM_PIS_VALOR').ASFLOAT > 0 THEN
   BEGIN
     IF FieldByName('ITEM_PIS_BASE').ASFLOAT = 0 THEN FieldByName('ITEM_PIS_BASE').ASFLOAT := FieldByName('ITEM_PIS_VALOR').ASFLOAT;
     IF FieldByName('ITEM_PIS_BASE').ASFLOAT > 0 THEN
     BEGIN
       IF (FieldByName('ITEM_PIS_BASE').ASFLOAT > 0) AND (FieldByName('ITEM_PIS_ALIQUOTA').ASFLOAT > 0) THEN
       BEGIN
         FieldByName('ITEM_PIS_ICMS').ASFLOAT := FieldByName('ITEM_PIS_BASE').ASFLOAT * (FieldByName('ITEM_PIS_ALIQUOTA').ASFLOAT/100);
       END;
     END;
   END;

   IF FieldByName('ITEM_COMPLEMENTO_VALOR').ASFLOAT > 0 THEN
   BEGIN
     IF FieldByName('ITEM_COMPLEMENTO_BASE').ASFLOAT = 0 THEN FieldByName('ITEM_COMPLEMENTO_BASE').ASFLOAT := FieldByName('ITEM_COMPLEMENTO_VALOR').ASFLOAT;
     IF FieldByName('ITEM_COMPLEMENTO_BASE').ASFLOAT > 0 THEN
     BEGIN
       IF (FieldByName('ITEM_COMPLEMENTO_BASE').ASFLOAT > 0) AND (FieldByName('ITEM_COMPLEMENTO_ALIQUOTA').ASFLOAT > 0) THEN
       BEGIN
         FieldByName('ITEM_COMPLEMENTO_ICMS').ASFLOAT := FieldByName('ITEM_COMPLEMENTO_BASE').ASFLOAT * (FieldByName('ITEM_COMPLEMENTO_ALIQUOTA').ASFLOAT/100);
       END;
     END;
   END;

   IF FieldByName('ITEM_SERVICO_VALOR').ASFLOAT > 0 THEN
   BEGIN
     IF FieldByName('ITEM_SERVICO_BASE').ASFLOAT = 0 THEN FieldByName('ITEM_SERVICO_BASE').ASFLOAT := FieldByName('ITEM_SERVICO_VALOR').ASFLOAT;
     IF FieldByName('ITEM_SERVICO_BASE').ASFLOAT > 0 THEN
     BEGIN
       IF (FieldByName('ITEM_SERVICO_BASE').ASFLOAT > 0) AND (FieldByName('ITEM_SERVICO_ALIQUOTA').ASFLOAT > 0) THEN
       BEGIN
         FieldByName('ITEM_SERVICO_ICMS').ASFLOAT := FieldByName('ITEM_SERVICO_BASE').ASFLOAT * (FieldByName('ITEM_SERVICO_ALIQUOTA').ASFLOAT/100);
       END;
     END;
   END;

   IF FieldByName('ITEM_OUTRAS_VALOR').ASFLOAT > 0 THEN
   BEGIN
     IF FieldByName('ITEM_OUTRAS_BASE').ASFLOAT = 0 THEN FieldByName('ITEM_OUTRAS_BASE').ASFLOAT := FieldByName('ITEM_OUTRAS_VALOR').ASFLOAT;
     IF FieldByName('ITEM_OUTRAS_BASE').ASFLOAT > 0 THEN
     BEGIN
       IF (FieldByName('ITEM_OUTRAS_BASE').ASFLOAT > 0) AND (FieldByName('ITEM_OUTRAS_ALIQUOTA').ASFLOAT > 0) THEN
       BEGIN
         FieldByName('ITEM_OUTRAS_ICMS').ASFLOAT := FieldByName('ITEM_OUTRAS_BASE').ASFLOAT * (FieldByName('ITEM_OUTRAS_ALIQUOTA').ASFLOAT/100);
       END;
     END;
   END;


   FieldByName('ITEM_ESPECIAL_VALOR').ASFLOAT :=
   FieldByName('ITEM_FRETE_VALOR').ASFLOAT +
   FieldByName('ITEM_SEGURO_VALOR').ASFLOAT +
   FieldByName('ITEM_PIS_VALOR').ASFLOAT +
   FieldByName('ITEM_COMPLEMENTO_VALOR').ASFLOAT +
   FieldByName('ITEM_SERVICO_VALOR').ASFLOAT +
   FieldByName('ITEM_OUTRAS_VALOR').ASFLOAT;

   FieldByName('ITEM_ESPECIAL_TOTAL').ASFLOAT :=
   FieldByName('ITEM_FRETE_ICMS').ASFLOAT +
   FieldByName('ITEM_SEGURO_ICMS').ASFLOAT +
   FieldByName('ITEM_PIS_ICMS').ASFLOAT +
   FieldByName('ITEM_COMPLEMENTO_ICMS').ASFLOAT +
   FieldByName('ITEM_SERVICO_ICMS').ASFLOAT +
   FieldByName('ITEM_OUTRAS_ICMS').ASFLOAT;


       frmcompra_menu.qrnota.fieldbyname('total_nota').asfloat :=     frmcompra_menu.qrnota.fieldbyname('total_produtos').asfloat +
                                                                      frmcompra_menu.qrnota.fieldbyname('frete').asfloat +
                                                                      frmcompra_menu.qrnota.fieldbyname('seguro').asfloat +
                                                                      frmcompra_menu.qrnota.fieldbyname('outras').asfloat +
                                                                      frmcompra_menu.qrnota.fieldbyname('ipi').asfloat +
                                                                      frmcompra_menu.qrnota.fieldbyname('valor_sub').asfloat +
                                                                      frmcompra_menu.qrnota.fieldbyname('ITEM_ESPECIAL_TOTAL').asfloat ;







 END;


end;

procedure Tfrmcompra.RzDBNumericEdit37KeyPress(Sender: TObject;
  var Key: Char);
begin
  IF KEY = #13 THEN BGRAVAR.SetFocus;
end;

procedure Tfrmcompra.edvicmsExit(Sender: TObject);
begin
     edtotal.Value := (edprodutos.Value+edvst.Value+edfrete.Value+edseguro.Value+edoutras.Value+edipi.Value)-rdesconto.Value;
end;

procedure Tfrmcompra.balterarClick(Sender: TObject);
begin
     vopcao := 2;
          vbicms    := 0;
          vvicms    := 0;
          vipi      := 0;
          vbst      := 0;
          vvst      := 0;
          vfrete    := 0;
          vseguro   := 0;
          voutras   := 0;
          vprodutos := 0;
          vtotal    := 0;

     qrnota_item.Edit;
     frmcompra_item := tfrmcompra_item.create(self);
     frmcompra_item.showmodal;
     qrnota_item.Refresh;

     batualiza_itensClick(frmcompra);

     edtotal.Value := (edprodutos.Value+edvst.Value+edfrete.Value+edseguro.Value+edoutras.Value+edipi.Value)-rdesconto.Value;

     bgravar.setfocus;

end;

End.
