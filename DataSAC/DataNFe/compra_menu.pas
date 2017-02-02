unit compra_menu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, AdvOfficeStatusBar, ImgList, AdvMenus, AdvMenuStylers,
  AdvToolBar, AdvToolBarStylers, AdvPreviewMenu, AdvPreviewMenuStylers,
  AdvOfficeStatusBarStylers, AdvGlowButton, Grids, Wwdbigrd, Wwdbgrid, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Menus, DBCtrls, Mask,
  RzEdit, RzDBEdit, RzDBBnEd, ToolEdit, RzBtnEdt, frxClass, frxPreview,
  frxDesgn, ExtCtrls;

type
  Tfrmcompra_menu = class(TForm)
    AdvMenuOfficeStyler1: TAdvMenuOfficeStyler;
    qrnota: TZQuery;
    qrnotaCODIGO: TStringField;
    qrnotaNUMERO: TStringField;
    qrnotaCODEMPRESA: TStringField;
    qrnotaCODFORNECEDOR: TStringField;
    qrnotaMODELO: TStringField;
    qrnotaESPECIE: TStringField;
    qrnotaSERIE: TStringField;
    qrnotaCFOP: TStringField;
    qrnotaDATA_EMISSAO: TDateTimeField;
    qrnotaDATA_LANCAMENTO: TDateTimeField;
    qrnotaCONF_BASEICMS: TFloatField;
    qrnotaCONF_VALORICMS: TFloatField;
    qrnotaCONF_BASESUB: TFloatField;
    qrnotaCONF_VALORSUB: TFloatField;
    qrnotaCONF_FRETE: TFloatField;
    qrnotaCONF_SEGURO: TFloatField;
    qrnotaCONF_OUTRAS: TFloatField;
    qrnotaCONF_IPI: TFloatField;
    qrnotaCONF_DESCONTO: TFloatField;
    qrnotaCONF_TOTALPRODUTOS: TFloatField;
    qrnotaCONF_TOTALNOTA: TFloatField;
    qrnotaCONF_ICMSRETIDO: TFloatField;
    qrnotaCONF_ICMSREDITO_PERC: TFloatField;
    qrnotaBASE_ICMS: TFloatField;
    qrnotaVALOR_ICMS: TFloatField;
    qrnotaBASE_SUB: TFloatField;
    qrnotaFRETE: TFloatField;
    qrnotaSEGURO: TFloatField;
    qrnotaOUTRAS: TFloatField;
    qrnotaIPI: TFloatField;
    qrnotaDESCONTO: TFloatField;
    qrnotaTOTAL_PRODUTOS: TFloatField;
    qrnotaTOTAL_NOTA: TFloatField;
    qrnotaTRANSP_NOME: TStringField;
    qrnotaTRANSP_FRETE: TStringField;
    qrnotaTRANSP_PLACA: TStringField;
    qrnotaTRANSP_PLACAUF: TStringField;
    qrnotaTRANSP_IE: TStringField;
    qrnotaTRANSP_CNPJ: TStringField;
    qrnotaTRANSP_ENDERECO: TStringField;
    qrnotaTRANSP_CIDADE: TStringField;
    qrnotaTRANSP_UF: TStringField;
    qrnotaTRANSP_QTDE: TFloatField;
    qrnotaTRANSP_ESPECIE: TStringField;
    qrnotaTRANSP_MARCA: TStringField;
    qrnotaTRANSP_NUMERO: TStringField;
    qrnotaTRANSP_PESOBRUTO: TFloatField;
    qrnotaTRANSP_PESOLIQUIDO: TFloatField;
    qrnotaOBS1: TStringField;
    qrnotaOBS2: TStringField;
    qrnotaOBS3: TStringField;
    qrnotaOBS4: TStringField;
    qrnotaOBS5: TStringField;
    qrnotaOBS6: TStringField;
    qrnotaOBS7: TStringField;
    qrnotaempresa: TStringField;
    qrnotafornecedor: TStringField;
    dsnota: TDataSource;
    qrempresa: TZQuery;
    qrempresaCODIGO: TStringField;
    qrempresaFILIAL: TStringField;
    qrempresaNOTAFISCAL: TIntegerField;
    qrempresaENDERECO: TStringField;
    qrempresaCIDADE: TStringField;
    qrempresaUF: TStringField;
    qrempresaCEP: TStringField;
    qrempresaTELEFONE: TStringField;
    qrempresaCNPJ: TStringField;
    qrempresaIE: TStringField;
    qrempresaSEQNF: TIntegerField;
    qrempresaFAX: TStringField;
    qrempresaOBS1: TStringField;
    qrempresaOBS2: TStringField;
    qrempresaCONTRIBUINTE_IPI: TStringField;
    qrempresaSUBSTITUTO_TRIBUTARIO: TStringField;
    qrempresaEMPRESA_ESTADUAL: TStringField;
    qrempresaOPTANTE_SIMPLES: TStringField;
    qrempresaOPTANTE_SUPER_SIMPLES: TStringField;
    qrempresaECF: TStringField;
    qrempresaTIPO: TIntegerField;
    qrempresaIPI: TFloatField;
    qrempresaISS: TFloatField;
    qrempresaNUMERO: TStringField;
    qrempresaRESPONSAVEL: TStringField;
    qrempresaCOMPLEMENTO: TStringField;
    qrempresaBAIRRO: TStringField;
    qrmodelo: TZQuery;
    qrmodeloSINTEGRA: TStringField;
    qrmodeloMODELO: TStringField;
    qrmodeloCODIGO: TStringField;
    qrmodeloSIGLA: TStringField;
    qrmodeloTIPO_REGISTRO: TStringField;
    qrfornecedor: TZQuery;
    qrfornecedorCODIGO: TStringField;
    qrfornecedorNOME: TStringField;
    qrfornecedorFANTASIA: TStringField;
    qrfornecedorENDERECO: TStringField;
    qrfornecedorBAIRRO: TStringField;
    qrfornecedorCIDADE: TStringField;
    qrfornecedorUF: TStringField;
    qrfornecedorCEP: TStringField;
    qrfornecedorCOMPLEMENTO: TStringField;
    qrfornecedorTELEFONE1: TStringField;
    qrfornecedorTELEFONE2: TStringField;
    qrfornecedorFAX: TStringField;
    qrfornecedorCONTATO1: TStringField;
    qrfornecedorCONTATO2: TStringField;
    qrfornecedorCELULAR1: TStringField;
    qrfornecedorCELULAR2: TStringField;
    qrfornecedorEMAIL: TStringField;
    qrfornecedorHOMEPAGE: TStringField;
    qrfornecedorCNPJ: TStringField;
    qrfornecedorIE: TStringField;
    qrfornecedorBANCO: TStringField;
    qrfornecedorAGENCIA: TStringField;
    qrfornecedorCONTA: TStringField;
    qrfornecedorOBS1: TStringField;
    qrfornecedorOBS2: TStringField;
    qrfornecedorOBS3: TStringField;
    qrfornecedorDATA: TDateTimeField;
    qrfornecedorTIPO: TIntegerField;
    qrfornecedorASSISTENCIA_TECNICA: TIntegerField;
    menu_tabelas_fiscais: TAdvPopupMenu;
    ClassesdeRecolhimento1: TMenuItem;
    ModelosdeNotasFiscais1: TMenuItem;
    CFOP1: TMenuItem;
    qrnotaVALOR_SUB: TFloatField;
    qrnotaITENS: TIntegerField;
    pop: TAdvPopupMenu;
    Incluir2: TMenuItem;
    Alterar2: TMenuItem;
    Excluir2: TMenuItem;
    LocalizarFiltro2: TMenuItem;
    Relatrios2: TMenuItem;
    Sair2: TMenuItem;
    qrfornecedor2: TZQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    StringField18: TStringField;
    StringField19: TStringField;
    StringField20: TStringField;
    StringField21: TStringField;
    StringField22: TStringField;
    StringField23: TStringField;
    StringField24: TStringField;
    StringField25: TStringField;
    StringField26: TStringField;
    DateTimeField1: TDateTimeField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    qrproduto: TZQuery;
    qrnota_item: TZQuery;
    qrgrade_entrada: TZQuery;
    qrnotaTIPO: TStringField;
    qrnotaNOTA_FISCAL: TStringField;
    qrnotaCODREMETENTE: TStringField;
    qrnotaREMETENTE: TStringField;
    qrnotaVALOR_MERCADORIAS: TFloatField;
    qrnotaICMS_ISENTO: TFloatField;
    qrnotaICMS_OUTRAS: TFloatField;
    qrnotaDESCONTO_INCIDENTE: TIntegerField;
    qrnota_antes: TZQuery;
    qritem_antes: TZQuery;
    qrnotaITEM_FRETE_VALOR: TFloatField;
    qrnotaITEM_FRETE_BASE: TFloatField;
    qrnotaITEM_FRETE_ALIQUOTA: TFloatField;
    qrnotaITEM_FRETE_ICMS: TFloatField;
    qrnotaITEM_SEGURO_VALOR: TFloatField;
    qrnotaITEM_SEGURO_BASE: TFloatField;
    qrnotaITEM_SEGURO_ALIQUOTA: TFloatField;
    qrnotaITEM_SEGURO_ICMS: TFloatField;
    qrnotaITEM_PIS_VALOR: TFloatField;
    qrnotaITEM_PIS_BASE: TFloatField;
    qrnotaITEM_PIS_ALIQUOTA: TFloatField;
    qrnotaITEM_PIS_ICMS: TFloatField;
    qrnotaITEM_COMPLEMENTO_VALOR: TFloatField;
    qrnotaITEM_COMPLEMENTO_BASE: TFloatField;
    qrnotaITEM_COMPLEMENTO_ALIQUOTA: TFloatField;
    qrnotaITEM_COMPLEMENTO_ICMS: TFloatField;
    qrnotaITEM_SERVICO_VALOR: TFloatField;
    qrnotaITEM_SERVICO_BASE: TFloatField;
    qrnotaITEM_SERVICO_ALIQUOTA: TFloatField;
    qrnotaITEM_SERVICO_ICMS: TFloatField;
    qrnotaITEM_OUTRAS_VALOR: TFloatField;
    qrnotaITEM_OUTRAS_BASE: TFloatField;
    qrnotaITEM_OUTRAS_ALIQUOTA: TFloatField;
    qrnotaITEM_OUTRAS_ICMS: TFloatField;
    qrnotaITEM_ESPECIAL_TOTAL: TFloatField;
    qrnotaITEM_ESPECIAL_VALOR: TFloatField;
    qrnota_total: TZQuery;
    qrprodutoCODIGO: TStringField;
    qrprodutoCODBARRA: TStringField;
    qrprodutoPRODUTO: TStringField;
    qrprodutoUNIDADE: TStringField;
    qrprodutoDATA_CADASTRO: TDateTimeField;
    qrprodutoCODGRUPO: TStringField;
    qrprodutoCODSUBGRUPO: TStringField;
    qrprodutoCODFORNECEDOR: TStringField;
    qrprodutoCODMARCA: TStringField;
    qrprodutoDATA_ULTIMACOMPRA: TDateTimeField;
    qrprodutoPRECOCUSTO: TFloatField;
    qrprodutoPRECOVENDA: TFloatField;
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
    qrprodutoCODRECEITA: TStringField;
    qrprodutoFOTO: TStringField;
    qrprodutoDATA_ULTIMACOMPRA_ANTERIOR: TDateTimeField;
    qrprodutoNOTAFISCAL_ANTERIOR: TStringField;
    qrprodutoCODFORNECEDOR_ANTERIOR: TStringField;
    qrprodutoPRECOCUSTO_ANTERIOR: TFloatField;
    qrprodutoPRECOVENDA_ANTERIOR: TFloatField;
    qrprodutoCUSTOMEDIO: TFloatField;
    qrprodutoAUTO_APLICACAO: TStringField;
    qrprodutoAUTO_COMPLEMENTO: TStringField;
    qrprodutoDATA_REMARCACAO_CUSTO: TDateTimeField;
    qrprodutoDATA_REMARCACAO_VENDA: TDateTimeField;
    qrprodutoPRECO_PROMOCAO: TFloatField;
    qrprodutoDATA_PROMOCAO: TDateTimeField;
    qrprodutoFIM_PROMOCAO: TDateTimeField;
    qrprodutoCST: TStringField;
    qrprodutoCLASSIFICACAO_FISCAL: TStringField;
    qrprodutoNBM: TStringField;
    qrprodutoNCM: TStringField;
    qrprodutoALIQUOTA: TFloatField;
    qrprodutoIPI: TFloatField;
    qrprodutoREDUCAO: TFloatField;
    qrprodutoQTDE_EMBALAGEM: TFloatField;
    qrprodutoTIPO: TStringField;
    qrprodutoPESO_LIQUIDO: TFloatField;
    qrprodutoFARMACIA_CONTROLADO: TStringField;
    qrprodutoFARMACIA_APRESENTACAO: TIntegerField;
    qrprodutoFARMACIA_REGISTRO_MEDICAMENTO: TStringField;
    qrprodutoFARMACIA_PMC: TFloatField;
    qrprodutoULTIMA_ALTERACAO: TDateTimeField;
    qrprodutoULTIMA_CARGA: TDateTimeField;
    qrprodutoDATA_INVENTARIO: TDateTimeField;
    qrprodutoCUSTO_INVENTARIO: TFloatField;
    qrprodutoESTOQUE_INVENTARIO: TFloatField;
    qrnotaBASEICMS_PRODUTOS: TIntegerField;
    qrnotaCONF_ITEM_ESPECIAL: TFloatField;
    Panel2: TPanel;
    bincluir: TAdvGlowButton;
    balterar: TAdvGlowButton;
    bexcluir: TAdvGlowButton;
    brelatorio: TAdvGlowButton;
    btabela: TAdvGlowMenuButton;
    bfechar: TAdvGlowButton;
    Bevel7: TBevel;
    Panel1: TPanel;
    Label22: TLabel;
    Label5: TLabel;
    rtotal: TRzNumericEdit;
    rqde: TRzNumericEdit;
    grid: TwwDBGrid;
    Panel3: TPanel;
    Bevel1: TBevel;
    Label8: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    efornecedor: TRzButtonEdit;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    ENUMERO: TEdit;
    bfiltrar: TAdvGlowButton;
    RzDBEdit1: TRzDBEdit;
    Bevel2: TBevel;
    Label6: TLabel;
    Bevel3: TBevel;
    qrnotaSITUACAO: TIntegerField;
    qrpagar: TZQuery;
    qrnotaconta: TStringField;
    Label1: TLabel;
    qrnotaCREDITO_ICMS: TFloatField;
    qrnotaPIS: TFloatField;
    qrnotaCOFINS: TFloatField;
    qrnotaOBS8: TStringField;
    qrprodutoESTOQUE: TFloatField;
    qrnotaOPERACAO: TStringField;
    qrnotaINTEGRACAO: TIntegerField;
    N1: TMenuItem;
    ImportaNotaFiscalEletrnica1: TMenuItem;
    btotaliza_nota: TButton;
    qrprodutoNOTAFISCAL: TStringField;
    procedure bincluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bfecharClick(Sender: TObject);
    procedure balterarClick(Sender: TObject);
    procedure bexcluirClick(Sender: TObject);
    procedure brelatorioClick(Sender: TObject);
    procedure b(Sender: TObject);
    procedure gridRowChanged(Sender: TObject);
    procedure Alterar2Click(Sender: TObject);
    procedure abelasFunes2Click(Sender: TObject);
    procedure CFOP1Click(Sender: TObject);
    procedure ClassesdeRecolhimento1Click(Sender: TObject);
    procedure ModelosdeNotasFiscais1Click(Sender: TObject);
    procedure efornecedorKeyPress(Sender: TObject; var Key: Char);
    procedure efornecedorButtonClick(Sender: TObject);
    procedure ENUMEROKeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure BfiltrarClick(Sender: TObject);
    procedure ENUMEROExit(Sender: TObject);
    procedure btotaliza_notaClick(Sender: TObject);
    procedure efornecedorEnter(Sender: TObject);
    procedure gridTitleButtonClick(Sender: TObject; AFieldName: String);
    procedure ImportaNotaFiscalEletrnica1Click(Sender: TObject);
    procedure ENUMEROEnter(Sender: TObject);
    procedure DateEdit1Exit(Sender: TObject);
  private
    { Private declarations }
  public
  vopcao_nfe,vopcao_item: integer;
    { Public declarations }
  end;

var
  frmcompra_menu: Tfrmcompra_menu;
     vrecno: integer;
implementation

uses modulo, principal, compra, cfop, cst, modelo_fiscal, xloc_fornecedor,
  compra_item, lista_notaentrada, lista_notacompra, importa_nfe;

{$R *.dfm}

procedure Tfrmcompra_menu.bincluirClick(Sender: TObject);
begin
  vrecno := qrnota.RecNo;

  vopcao_nfe := 1;

  qrnota.Insert;

  qrnota.FieldByName('codigo').asstring := frmprincipal.codifica('000061');
  qrnota.fieldbyname('tipo').asstring := 'COMPRA P/ REVENDA';
  qrnota.FIELDBYNAME('DESCONTO_INCIDENTE').ASFLOAT := 0;
  qrnotaINTEGRACAO.AsInteger := 0;
  dsnota.dataset.fieldbyname('obs7').asstring := qrnota.FieldByName('codigo').asstring;
  qrnota.fieldbyname('situacao').asinteger := 2;
  qrnota.FieldByName('BASEICMS_PRODUTOS').AsInteger := 1;
  qrnota.fieldbyname('data_lancamento').asdatetime := date;

  frmcompra := tfrmcompra.create(self);
  frmcompra.rtipo.ItemIndex := 0;
  frmcompra.showmodal;
  qrnota.refresh;

  qrnota.RecNo := vrecno;

  qrempresa.close;
  qrempresa.sql.clear;
  qrempresa.sql.add('select * from  c000004');
  qrempresa.Open;

  qrfornecedor.close;
  qrfornecedor.sql.clear;
  qrfornecedor.sql.add('select * from  c000009');
  qrfornecedor.Open;

  btotaliza_notaClick(frmcompra_menu);

  qrnota.RecNo := vrecno;

end;

procedure Tfrmcompra_menu.FormShow(Sender: TObject);
begin

  qrmodelo.CLOSE;
  QRMODELO.SQL.CLEAR;
  QRMODELO.SQL.ADD('SELECT * FROM C000082 ORDER BY SINTEGRA');
  QRMODELO.OPEN;
  QRMODELO.IndexFieldNames := 'SINTEGRA';

  FRMMODULO.QRFILIAL.close;
  FRMMODULO.QRFILIAL.sql.clear;
  FRMMODULO.QRFILIAL.sql.add('select * from c000004');
  FRMMODULO.QRFILIAL.Open;

  FRMMODULO.qrfornecedor.close;
  FRMMODULO.qrfornecedor.sql.clear;
  FRMMODULO.qrfornecedor.sql.add('select * from c000009');
  FRMMODULO.qrfornecedor.Open;

 dateedit1.text := '01/'+copy(datetostr(date),4,7);
 dateedit2.date := frmprincipal.UltimoDiaMes(date);

  qrnota.close;
  qrnota.sql.clear;
  qrnota.SQL.add('select * from c000087 where data_lancamento BETWEEN :datai and :dataf order by data_lancamento');
  qrnota.params.ParamByName('datai').asdatetime := dateedit1.date;
  qrnota.params.ParamByName('dataf').asdatetime := dateedit2.date;
  qrnota.open;


  rqde.Value   := qrnota.RecordCount;

  btotaliza_notaClick(frmcompra_menu);

  gridRowChanged(frmcompra_menu);
end;

procedure Tfrmcompra_menu.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ACTION := CAFREE;
end;

procedure Tfrmcompra_menu.bfecharClick(Sender: TObject);
begin
   close;
end;

procedure Tfrmcompra_menu.balterarClick(Sender: TObject);
begin
  vrecno := qrnota.RecNo;
  vopcao_nfe := 2;
  qrnota.edit;

  frmcompra := tfrmcompra.create(self);
  frmcompra.showmodal;

  qrnota.refresh;
  qrnota.RecNo := vrecno;
  qrempresa.close;
  qrempresa.sql.clear;
  qrempresa.sql.add('select * from  c000004');
  qrempresa.Open;

  qrfornecedor.close;
  qrfornecedor.sql.clear;
  qrfornecedor.sql.add('select * from  c000009');
  qrfornecedor.Open;

  btotaliza_notaClick(frmcompra_menu);

  qrnota.RecNo := vrecno;

end;

procedure Tfrmcompra_menu.bexcluirClick(Sender: TObject);
begin

  if application.messagebox('Confirma a exclusão desta nota fiscal?','Excluir',mb_yesno+MB_ICONWARNING+MB_DEFBUTTON2) = idyes then
  begin
    if frmprincipal.autentica('Exluir NF',4) then
    begin

      qrnota_item.close;
      qrnota_item.sql.clear;
      qrnota_item.sql.add('select * from c000088 where codnota = '''+qrnota.fieldbyname('codigo').asstring+'''');
      qrnota_item.open;
      qrnota_item.first;

      while qrnota_item.RecordCount <> 0 do
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

            QRPAGAR.CLOSE;
            QRPAGAR.SQL.CLEAR;
            QRPAGAR.SQL.ADD('DELETE FROM C000046 WHERE CODNOTA = '''+FRMCOMPRA_MENU.QRNOTA.FIELDBYNAME('CODIGO').ASSTRING+''' and situacao = 1');
            QRPAGAR.ExecSQL;

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
          END;
          qrnota_item.delete;
      end;
      qrnota.delete;
      frmmodulo.Conexao.commit;
    end;
  end;
  bfiltrarClick(frmcompra_menu);
end;

procedure Tfrmcompra_menu.brelatorioClick(Sender: TObject);
begin
  FRMLISTA_NOTACOMPRA := TFRMLISTA_NOTACOMPRA.CREATE(SELF);
  FRMLISTA_NOTACOMPRA.SHOWMODAL;
end;

procedure Tfrmcompra_menu.b(Sender: TObject);
begin
//
end;

procedure Tfrmcompra_menu.gridRowChanged(Sender: TObject);
begin
  IF QRNOTA.FIELDBYNAME('SITUACAO').ASINTEGER = 2 THEN
    BALTERAR.Enabled := TRUE ELSE BALTERAR.Enabled := FALSE;
end;

procedure Tfrmcompra_menu.Alterar2Click(Sender: TObject);
begin
  if balterar.Enabled then balterarClick(frmcompra_menu);
end;

procedure Tfrmcompra_menu.abelasFunes2Click(Sender: TObject);
begin
 btabela.Click;
end;

procedure Tfrmcompra_menu.CFOP1Click(Sender: TObject);
begin
  FRMCFOP := TFRMCFOP.CREATE(SELF);
  FRMCFOP.SHOWMODAL;
end;

procedure Tfrmcompra_menu.ClassesdeRecolhimento1Click(Sender: TObject);
begin
  FRMcst := TFRMcst.CREATE(SELF);
  FRMcst.SHOWMODAL;
end;

procedure Tfrmcompra_menu.ModelosdeNotasFiscais1Click(Sender: TObject);
begin
  FRMmodelo_fiscal := TFRMmodelo_fiscal.CREATE(SELF);
  FRMmodelo_fiscal.SHOWMODAL;
end;

procedure Tfrmcompra_menu.efornecedorKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    if efornecedor.text <> '' then
    begin
    qrfornecedor2.close;
    qrfornecedor2.sql.Clear;
    //qrfornecedor2.sql.add('select * from c000009 where upper(nome) like '''+ansiuppercase(efornecedor.Text)+'%'' or codigo = '''+frmprincipal.zerarcodigo(efornecedor.Text,6)+'''');
    qrfornecedor2.sql.add('select * from c000009 where codigo = '''+frmprincipal.zerarcodigo(copy(efornecedor.Text,1,6),6)+'''');
    qrfornecedor2.Open;
    if qrfornecedor2.RecordCount > 0 then
    begin
      if qrfornecedor2.RecordCount = 1 then
      begin
        efornecedor.text := qrfornecedor2.fieldbyname('codigo').asstring +' '+ qrfornecedor2.fieldbyname('nome').asstring;
        enumero.SetFocus;
      end
      else
      begin
        resultado_pesquisa1 := '';
        parametro_pesquisa :=  'select * from c000009 where upper(nome) like '''+ansiuppercase(efornecedor.text)+'%'' order by nome';
        frmxloc_fornecedor := tfrmxloc_fornecedor.create(self);
        frmxloc_fornecedor.showmodal;
        if resultado_pesquisa1 <> '' then
        begin
          efornecedor.text := resultado_pesquisa1+' '+resultado_pesquisa2;
            enumero.SetFocus;

        end;
      end;
    end
    else
    begin
      application.messagebox('Fornecedor não encontrado!','Atenção',mb_ok+mb_iconerror);
        resultado_pesquisa1 := '';
        parametro_pesquisa :=  '';
        frmxloc_fornecedor := tfrmxloc_fornecedor.create(self);
        frmxloc_fornecedor.showmodal;
        if resultado_pesquisa1 <> '' then
        begin
          efornecedor.text := resultado_pesquisa1+' '+resultado_pesquisa2;
            enumero.SetFocus;
      
        end;

    end;
    end;


    PERFORM(WM_NEXTDLGCTL,0,0);
  end;


end;

procedure Tfrmcompra_menu.efornecedorButtonClick(Sender: TObject);
begin
        resultado_pesquisa1 := '';
        parametro_pesquisa :=  efornecedor.text;
        frmxloc_fornecedor := tfrmxloc_fornecedor.create(self);
        frmxloc_fornecedor.showmodal;
        if resultado_pesquisa1 <> '' then
        begin
          efornecedor.text := resultado_pesquisa1+' '+resultado_pesquisa2;
          enumero.setfocus;

        end;
end;

procedure Tfrmcompra_menu.ENUMEROKeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN PERFORM(WM_NEXTDLGCTL,0,0)
end;

procedure Tfrmcompra_menu.DateEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  IF KEY = #13 THEN bfiltrar.setfocus;
end;

procedure Tfrmcompra_menu.BfiltrarClick(Sender: TObject);
var fornecedor, nota : string;
begin
  if efornecedor.Text = '' then fornecedor := ''  else fornecedor := ' and codfornecedor = '''+copy(efornecedor.text,1,6)+'''';
  if (enumero.text = '000000') or (enumero.text = '') then nota := '' else nota := ' and numero = '''+enumero.text+'''';

  qrnota.close;
  qrnota.sql.clear;
  if (enumero.text = '000000') or (enumero.text = '') then
  begin
    qrnota.SQL.add('select * from c000087 where data_lancamento BETWEEN :datai and :dataf '+fornecedor+nota+' order by data_lancamento');
    qrnota.params.ParamByName('datai').asdatetime := dateedit1.date;
    qrnota.params.ParamByName('dataf').asdatetime := dateedit2.date;
  end
  else
    qrnota.SQL.add('select * from c000087 where codigo is not null '+nota+' order by data_lancamento');
  qrnota.open;

  rqde.Value   := qrnota.RecordCount;

  btotaliza_notaClick(frmcompra_menu);

  gridRowChanged(frmcompra_menu);
  enumero.text := '';
end;

procedure Tfrmcompra_menu.ENUMEROExit(Sender: TObject);
begin
  enumero.text := frmprincipal.zerarcodigo(enumero.text,6);
  tedit(sender).Color := clwindow;
end;

procedure Tfrmcompra_menu.btotaliza_notaClick(Sender: TObject);
begin
  rqde.value := 0;
  rtotal.value := 0;
  dsnota.DataSet := nil;
  qrnota.first;
  while not qrnota.Eof do
  begin
     rqde.Value := rqde.Value + 1;
     rtotal.value := rtotal.value + qrnota.fieldbyname('total_nota').asfloat;

    qrnota.next;
  end;
  dsnota.DataSet := qrnota;


end;

procedure Tfrmcompra_menu.efornecedorEnter(Sender: TObject);
begin
     efornecedor.Text := '';
     tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmcompra_menu.gridTitleButtonClick(Sender: TObject;
  AFieldName: String);
  var fornecedor, nota : string;
begin

   if (ansiuppercase(aFieldName) = ansiuppercase('numero'))or
      (ansiuppercase(aFieldName) = ansiuppercase('data_emissao'))or
      (ansiuppercase(aFieldName) = ansiuppercase('obs7'))or
      (ansiuppercase(aFieldName) = ansiuppercase('data_lancamento'))or
      (ansiuppercase(aFieldName) = ansiuppercase('modelo'))or
      (ansiuppercase(aFieldName) = ansiuppercase('especie'))or
      (ansiuppercase(aFieldName) = ansiuppercase('serie'))or
      (ansiuppercase(aFieldName) = ansiuppercase('numero'))or
      (ansiuppercase(aFieldName) = ansiuppercase('cfop'))or
      (ansiuppercase(aFieldName) = ansiuppercase('total_nota'))or
      (ansiuppercase(aFieldName) = ansiuppercase('base_icms'))or
      (ansiuppercase(aFieldName) = ansiuppercase('valor_icms'))or
      (ansiuppercase(aFieldName) = ansiuppercase('ipi'))then
   begin
     if efornecedor.Text = '' then fornecedor := ''  else fornecedor := ' and codfornecedor = '''+copy(efornecedor.text,1,6)+'''';
     if (enumero.text = '000000') or (enumero.text = '') then nota := '' else nota := ' and numero = '''+enumero.text+'''';

     qrnota.close;
     qrnota.sql.clear;
     qrnota.SQL.add('select * from c000087 where data_lancamento BETWEEN :datai and :dataf '+fornecedor+nota+' order by '+afieldname);
     qrnota.params.ParamByName('datai').asdatetime := dateedit1.date;
     qrnota.params.ParamByName('dataf').asdatetime := dateedit2.date;
     qrnota.open;
   end;

   if ansiuppercase(afieldname) = 'FORNECEDOR' then
   begin
     if efornecedor.Text = '' then fornecedor := ''  else fornecedor := ' and codfornecedor = '''+copy(efornecedor.text,1,6)+'''';
     if (enumero.text = '000000') or (enumero.text = '') then nota := '' else nota := ' and numero = '''+enumero.text+'''';
     qrnota.close;
     qrnota.sql.clear;
     qrnota.SQL.add('select * from c000087 where data_lancamento BETWEEN :datai and :dataf '+fornecedor+nota+' order by codfornecedor, data_lancamento');
     qrnota.params.ParamByName('datai').asdatetime := dateedit1.date;
     qrnota.params.ParamByName('dataf').asdatetime := dateedit2.date;
     qrnota.open;
   end;
end;

procedure Tfrmcompra_menu.ImportaNotaFiscalEletrnica1Click(
  Sender: TObject);
begin
  frmimporta_nfe := tfrmimporta_nfe.create(self);
  frmimporta_nfe.showmodal;
  qrnota.Refresh;
end;

procedure Tfrmcompra_menu.ENUMEROEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmcompra_menu.DateEdit1Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
end;

end.
