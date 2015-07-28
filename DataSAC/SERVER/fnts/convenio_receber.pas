unit convenio_receber;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, TFlatPanelUnit, Grids, Wwdbigrd, Wwdbgrid, Collection,
  StdCtrls, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  cxGridCardView, cxGridDBCardView, cxBlobEdit, cxDBLookupComboBox, cxImage,
  cxLookAndFeels, Buttons, Menus, PageView, frxDesgn, frxClass, frxDBSet,
  cxCheckBox, Mask, rxtooledit, RxMemDS, AdvGlowButton, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, dxSkinscxPCPainter,
  cxLookAndFeelPainters;

type
  Tfrmconvenio_receber = class(TForm)
    FlatPanel1: TFlatPanel;
    Label1: TLabel;
    locconvenio: TEdit;
    Edit2: TEdit;
    ViewSplit1: TViewSplit;
    qrcliente: TZQuery;
    dscliente: TDataSource;
    qrclienteTOTAL: TFloatField;
    qrclienteCODIGO: TStringField;
    qrclienteNOME: TStringField;
    qrreceber: TZQuery;
    dsreceber: TDataSource;
    qrreceberCODIGO: TStringField;
    qrreceberCODVENDA: TStringField;
    qrreceberCODCLIENTE: TStringField;
    qrreceberDATA_EMISSAO: TDateTimeField;
    qrreceberDATA_VENCIMENTO: TDateTimeField;
    qrreceberDATA_PAGAMENTO: TDateTimeField;
    qrreceberVALOR_ATUAL: TFloatField;
    qrreceberDOCUMENTO: TStringField;
    qrreceberTIPO: TStringField;
    qrreceberSITUACAO: TIntegerField;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    qrproduto: TZQuery;
    dsproduto: TDataSource;
    qrprodutoCODIGO: TStringField;
    qrprodutoCODNOTA: TStringField;
    qrprodutoCODPRODUTO: TStringField;
    qrprodutoUNITARIO: TFloatField;
    qrprodutoTOTAL: TFloatField;
    qrprodutoICMS: TFloatField;
    qrprodutoIPI: TFloatField;
    qrprodutoCFOP: TStringField;
    qrprodutoDATA: TDateTimeField;
    qrprodutoNUMERONOTA: TStringField;
    qrprodutoCODCLIENTE: TStringField;
    qrprodutoDESCONTO: TFloatField;
    qrprodutoACRESCIMO: TFloatField;
    qrprodutoMOVIMENTO: TIntegerField;
    qrprodutoCODVENDEDOR: TStringField;
    qrprodutoCODGRADE: TStringField;
    qrprodutoSERIAL: TStringField;
    qrprodutoUNIDADE: TStringField;
    qrprodutoQTDE: TFloatField;
    qrprodutoVALOR_ICMS: TFloatField;
    qrprodutoICMS_REDUZIDO: TFloatField;
    qrprodutoBASE_CALCULO: TFloatField;
    qrprodutoVALOR_IPI: TFloatField;
    qrprodutoSITUACAO: TIntegerField;
    cxStyleRepository3: TcxStyleRepository;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    cxStyle8: TcxStyle;
    cxStyle9: TcxStyle;
    cxStyle10: TcxStyle;
    cxStyle11: TcxStyle;
    cxStyle12: TcxStyle;
    cxStyle13: TcxStyle;
    cxStyle14: TcxStyle;
    cxStyle15: TcxStyle;
    cxStyle16: TcxStyle;
    cxStyle17: TcxStyle;
    cxStyle18: TcxStyle;
    cxStyle19: TcxStyle;
    cxStyle20: TcxStyle;
    cxStyle21: TcxStyle;
    cxStyle22: TcxStyle;
    cxStyle23: TcxStyle;
    cxStyle24: TcxStyle;
    cxStyle25: TcxStyle;
    cxStyle26: TcxStyle;
    cxStyle27: TcxStyle;
    cxStyle28: TcxStyle;
    cxStyle29: TcxStyle;
    GridTableViewStyleSheetDevExpress: TcxGridTableViewStyleSheet;
    GridCardViewStyleSheetDevExpress: TcxGridCardViewStyleSheet;
    LookAndFeelController: TcxLookAndFeelController;
    cxStyle30: TcxStyle;
    cxStyle31: TcxStyle;
    cxStyle32: TcxStyle;
    cxStyle33: TcxStyle;
    cxStyle34: TcxStyle;
    qrprodutoPRODUTO: TStringField;
    qrproduto2: TZQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    StringField4: TStringField;
    DateTimeField1: TDateTimeField;
    StringField5: TStringField;
    StringField6: TStringField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    IntegerField1: TIntegerField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    FloatField7: TFloatField;
    FloatField8: TFloatField;
    FloatField9: TFloatField;
    FloatField10: TFloatField;
    FloatField11: TFloatField;
    IntegerField2: TIntegerField;
    StringField11: TStringField;
    dsproduto2: TDataSource;
    cxStyle35: TcxStyle;
    cxStyle36: TcxStyle;
    cxStyle37: TcxStyle;
    cxStyle38: TcxStyle;
    cxStyle39: TcxStyle;
    cxStyle40: TcxStyle;
    cxStyle41: TcxStyle;
    cxStyle42: TcxStyle;
    cxStyleRepository4: TcxStyleRepository;
    cxStyle43: TcxStyle;
    cxStyleRepository5: TcxStyleRepository;
    cxStyle44: TcxStyle;
    cxStyleRepository6: TcxStyleRepository;
    cxStyle45: TcxStyle;
    cxStyleRepository7: TcxStyleRepository;
    cxStyle46: TcxStyle;
    cxStyleRepository8: TcxStyleRepository;
    cxStyle47: TcxStyle;
    cxStyleRepository9: TcxStyleRepository;
    cxStyle48: TcxStyle;
    cxStyleRepository10: TcxStyleRepository;
    cxStyle49: TcxStyle;
    cxStyleRepository11: TcxStyleRepository;
    cxStyle50: TcxStyle;
    qrconvenio: TZQuery;
    Label2: TLabel;
    Button1: TButton;
    ViewSplit2: TViewSplit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    PopupMenu1: TPopupMenu;
    Fechamento1: TMenuItem;
    Extrato1: TMenuItem;
    N1: TMenuItem;
    Fechar1: TMenuItem;
    PageView1: TPageView;
    PageSheet1: TPageSheet;
    PageSheet2: TPageSheet;
    Grid: TcxGrid;
    grid_qrcliente: TcxGridDBTableView;
    grid_qrclienteCODIGO: TcxGridDBColumn;
    grid_qrclienteNOME: TcxGridDBColumn;
    grid_qrclienteTOTAL: TcxGridDBColumn;
    cvPeople: TcxGridDBCardView;
    cvPeopleName: TcxGridDBCardViewRow;
    cvPeoplePersonLineID: TcxGridDBCardViewRow;
    cvPeopleFIRSTNAME: TcxGridDBCardViewRow;
    cvPeopleSECONDNAME: TcxGridDBCardViewRow;
    cvPeopleNICKNAME: TcxGridDBCardViewRow;
    cvPeopleBIRTHNAME: TcxGridDBCardViewRow;
    cvPeopleDATEOFBIRTH: TcxGridDBCardViewRow;
    cvPeopleLOCATIONOFBIRTH: TcxGridDBCardViewRow;
    cvPeopleBIOGRAPHY: TcxGridDBCardViewRow;
    cvPeopleHOMEPAGE: TcxGridDBCardViewRow;
    cvPeopleID: TcxGridDBCardViewRow;
    cvPeopleFilmID: TcxGridDBCardViewRow;
    cvPeopleBIRTHCOUNTRY: TcxGridDBCardViewRow;
    cvPeopleGender: TcxGridDBCardViewRow;
    grid_qrproduto: TcxGridDBTableView;
    grid_qrprodutoCODPRODUTO: TcxGridDBColumn;
    grid_qrprodutoColumn1: TcxGridDBColumn;
    grid_qrprodutoQTDE: TcxGridDBColumn;
    grid_qrprodutoUNIDADE: TcxGridDBColumn;
    grid_qrprodutoUNITARIO: TcxGridDBColumn;
    grid_qrprodutoDESCONTO: TcxGridDBColumn;
    grid_qrprodutoACRESCIMO: TcxGridDBColumn;
    grid_qrprodutoTOTAL: TcxGridDBColumn;
    cvPhotos: TcxGridDBCardView;
    cvPhotosID: TcxGridDBCardViewRow;
    cvPhotosFILMID: TcxGridDBCardViewRow;
    cvPhotosSCREEN: TcxGridDBCardViewRow;
    cvPhotosICON: TcxGridDBCardViewRow;
    grid_qrreceber: TcxGridDBTableView;
    grid_qrreceberColumn1: TcxGridDBColumn;
    grid_qrreceberDATA_EMISSAO: TcxGridDBColumn;
    grid_qrreceberDATA_VENCIMENTO: TcxGridDBColumn;
    grid_qrreceberVALOR_ATUAL: TcxGridDBColumn;
    grid_produto_venda2: TcxGridDBTableView;
    grid_produto_venda2CODPRODUTO: TcxGridDBColumn;
    grid_produto_venda2Column1: TcxGridDBColumn;
    grid_produto_venda2QTDE: TcxGridDBColumn;
    grid_produto_venda2UNITARIO: TcxGridDBColumn;
    grid_produto_venda2UNIDADE: TcxGridDBColumn;
    grid_produto_venda2DESCONTO: TcxGridDBColumn;
    grid_produto_venda2ACRESCIMO: TcxGridDBColumn;
    grid_produto_venda2TOTAL: TcxGridDBColumn;
    grid_cliente: TcxGridLevel;
    grid_receber: TcxGridLevel;
    GRID_PRODUTO_VENDA: TcxGridLevel;
    grid_produto: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBCardView1: TcxGridDBCardView;
    cxGridDBCardViewRow1: TcxGridDBCardViewRow;
    cxGridDBCardViewRow2: TcxGridDBCardViewRow;
    cxGridDBCardViewRow3: TcxGridDBCardViewRow;
    cxGridDBCardViewRow4: TcxGridDBCardViewRow;
    cxGridDBCardViewRow5: TcxGridDBCardViewRow;
    cxGridDBCardViewRow6: TcxGridDBCardViewRow;
    cxGridDBCardViewRow7: TcxGridDBCardViewRow;
    cxGridDBCardViewRow8: TcxGridDBCardViewRow;
    cxGridDBCardViewRow9: TcxGridDBCardViewRow;
    cxGridDBCardViewRow10: TcxGridDBCardViewRow;
    cxGridDBCardViewRow11: TcxGridDBCardViewRow;
    cxGridDBCardViewRow12: TcxGridDBCardViewRow;
    cxGridDBCardViewRow13: TcxGridDBCardViewRow;
    cxGridDBCardViewRow14: TcxGridDBCardViewRow;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBCardView2: TcxGridDBCardView;
    cxGridDBCardViewRow15: TcxGridDBCardViewRow;
    cxGridDBCardViewRow16: TcxGridDBCardViewRow;
    cxGridDBCardViewRow17: TcxGridDBCardViewRow;
    cxGridDBCardViewRow18: TcxGridDBCardViewRow;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridDBTableView4: TcxGridDBTableView;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridDBColumn17: TcxGridDBColumn;
    cxGridDBColumn18: TcxGridDBColumn;
    cxGridDBColumn19: TcxGridDBColumn;
    cxGridDBColumn20: TcxGridDBColumn;
    cxGridDBColumn21: TcxGridDBColumn;
    cxGridDBColumn22: TcxGridDBColumn;
    cxGridDBColumn23: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    qrproduto3: TZQuery;
    dsproduto3: TDataSource;
    cxGridDBTableView1CODNOTA: TcxGridDBColumn;
    cxGridDBTableView1CODPRODUTO: TcxGridDBColumn;
    cxGridDBTableView1UNITARIO: TcxGridDBColumn;
    cxGridDBTableView1TOTAL: TcxGridDBColumn;
    cxGridDBTableView1DESCONTO: TcxGridDBColumn;
    cxGridDBTableView1UNIDADE: TcxGridDBColumn;
    cxGridDBTableView1QTDE: TcxGridDBColumn;
    cxGridDBTableView1PRODUTO: TcxGridDBColumn;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBTableView1Column2: TcxGridDBColumn;
    fxconvenio: TfrxReport;
    fscontasreceber: TfrxDBDataset;
    frxDesigner1: TfrxDesigner;
    Label3: TLabel;
    qrclienteCODCONVENIO: TStringField;
    fscliente: TfrxDBDataset;
    fsproduto: TfrxDBDataset;
    qrclienteCONVENIO: TStringField;
    qrpgto: TZQuery;
    BitBtn4: TBitBtn;
    Convenio1: TMenuItem;
    query: TZQuery;
    fsconvenio: TfrxDBDataset;
    queryTOTAL: TFloatField;
    queryDATA_EMISSAO: TDateTimeField;
    queryCODIGO: TStringField;
    queryNOME: TStringField;
    queryCODCONVENIO: TStringField;
    queryCODVENDA: TStringField;
    queryconvenio: TStringField;
    dsconvenio: TDataSource;
    edata: TDateEdit;
    qrproduto3CODIGO: TStringField;
    qrproduto3CODNOTA: TStringField;
    qrproduto3CODPRODUTO: TStringField;
    qrproduto3UNITARIO: TFloatField;
    qrproduto3TOTAL: TFloatField;
    qrproduto3ICMS: TFloatField;
    qrproduto3IPI: TFloatField;
    qrproduto3CFOP: TStringField;
    qrproduto3DATA: TDateTimeField;
    qrproduto3NUMERONOTA: TStringField;
    qrproduto3CODCLIENTE: TStringField;
    qrproduto3DESCONTO: TFloatField;
    qrproduto3ACRESCIMO: TFloatField;
    qrproduto3MOVIMENTO: TIntegerField;
    qrproduto3CODVENDEDOR: TStringField;
    qrproduto3CODGRADE: TStringField;
    qrproduto3SERIAL: TStringField;
    qrproduto3UNIDADE: TStringField;
    qrproduto3QTDE: TFloatField;
    qrproduto3VALOR_ICMS: TFloatField;
    qrproduto3ICMS_REDUZIDO: TFloatField;
    qrproduto3BASE_CALCULO: TFloatField;
    qrproduto3VALOR_IPI: TFloatField;
    qrproduto3SITUACAO: TIntegerField;
    qrproduto3ECF_SERIE: TStringField;
    qrproduto3ECF_CAIXA: TStringField;
    qrproduto3CODALIQUOTA: TStringField;
    qrproduto3CUPOM_NUMERO: TStringField;
    qrproduto3CUPOM_MODELO: TStringField;
    qrproduto3CUPOM_ITEM: TStringField;
    qrproduto3ALIQUOTA: TFloatField;
    qrproduto3CST: TStringField;
    qrproduto3LOTE_FABRICACAO: TStringField;
    qrproduto3MOVIMENTO_ESTOQUE: TFloatField;
    qrproduto3PRODUTO: TStringField;
    qrproduto3NOME: TStringField;
    qrproduto3CODCONVENIO: TStringField;
    qrproduto3desconto_convenio: TFloatField;
    queryDOCUMENTO: TStringField;
    qrproduto3SITUACAO_1: TIntegerField;
    qrproduto3DOCUMENTO: TStringField;
    qrcr_recibo: TRxMemoryData;
    qrcr_reciboFILTRO: TIntegerField;
    qrcr_recibosituacao2: TIntegerField;
    qrcr_reciboDATA_EMISSAO: TDateTimeField;
    qrcr_reciboCODIGO: TStringField;
    qrcr_reciboDATA_VENCIMENTO: TDateTimeField;
    qrcr_reciboDOCUMENTO: TStringField;
    qrcr_reciboVALOR_ORIGINAL: TFloatField;
    qrcr_reciboVALOR_PAGO: TFloatField;
    qrcr_reciboVALOR_ATUAL: TFloatField;
    qrcr_recibojuros: TFloatField;
    qrcr_reciboDIAS: TIntegerField;
    qrcr_reciboRESTANTE: TFloatField;
    qrcr_reciboCODCEDENTE: TStringField;
    qrcr_reciboTIPO: TStringField;
    qrcr_reciboVALOR_JUROS: TFloatField;
    qrcr_reciboDATA_PAGAMENTO: TDateTimeField;
    qrcr_reciboCODVENDEDOR: TStringField;
    qrcr_reciboCODCAIXA: TStringField;
    qrcr_reciboCODCLIENTE: TStringField;
    qrcr_reciboVALOR_DESCONTO: TFloatField;
    qrcr_reciboSITUACAO: TIntegerField;
    qrcr_reciboCODVENDA: TStringField;
    qrcr_reciboNOSSONUMERO: TStringField;
    qrcr_reciboCODREGIAO: TStringField;
    qrcr_recibobanco: TStringField;
    qrcr_reciboagencia: TStringField;
    qrcr_reciboconta: TStringField;
    bincluir: TAdvGlowButton;
    bitbtn5: TAdvGlowButton;
    AdvGlowButton1: TAdvGlowButton;
    bfechar: TAdvGlowButton;
    procedure locconvenioKeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Convenio1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure edataKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmconvenio_receber: Tfrmconvenio_receber;

implementation

uses modulo, xloc_convenio, principal, convenio_pgto;

{$R *.dfm}

procedure Tfrmconvenio_receber.locconvenioKeyPress(Sender: TObject;
  var Key: Char);
var
dia : integer;
begin
  if key = #13 then
  begin
    qrconvenio.close;
    qrconvenio.sql.clear;
    qrconvenio.sql.add('select * from c000071 where upper(nome) like '''+AnsiUpperCase(locconvenio.text)+'%'' order by nome');
    qrconvenio.open;


    if qrconvenio.RecordCount > 0 then
    begin
      if qrconvenio.RecordCount > 1 then
      begin
         resultado_pesquisa1 := '';
         resultado_pesquisa2 := '';
         RESULTADO_PESQUISA3 := '';
         parametro_pesquisa := LOCCONVENIO.TEXT;

         frmxloc_convenio := tfrmxloc_convenio.create(self);
         frmxloc_convenio.showmodal;

         if resultado_pesquisa1 <>'' then
         begin
           if resultado_pesquisa3 <> '' then
           begin
             if length(resultado_pesquisa3) < 2 then resultado_pesquisa3 := '0'+resultado_pesquisa3;
             dia := strtoint(copy(datetostr(date),1,2));
             if strtoint(resultado_pesquisa3) > dia then
             begin
               edata.Text := resultado_pesquisa3+copy(datetostr(date),3,8);
             end
             else
             begin
               edata.Text := resultado_pesquisa3+copy(datetostr(incmonth(date,1)),3,8);
             end;
           end
           else
           begin
            edata.Text := datetostr(date);
           end;
           qrcliente.close;
           qrcliente.sql.clear;
           qrcliente.sql.add('select sum(rec.valor_atual) total,');
           qrcliente.sql.add('rec.data_emissao,');
           qrcliente.sql.add('cli.codigo,');
           qrcliente.sql.add('cli.nome,');
           qrcliente.sql.Add('cli.codconvenio');
           qrcliente.sql.add('from');
           qrcliente.sql.add('c000049 rec,');
           qrcliente.sql.add('c000007 cli');
           qrcliente.sql.add('where');
           qrcliente.sql.add('rec.codcliente = cli.codigo');
           qrcliente.sql.add('and rec.situacao = 1');
           qrcliente.sql.add('and cli.codconvenio = '''+resultado_pesquisa1+'''');
           qrcliente.sql.add('and rec.data_emissao <= :datax');
           qrcliente.sql.add('group by');
           qrcliente.sql.add('rec.data_emissao,');
           qrcliente.sql.add('cli.codigo,');
           qrcliente.sql.add('cli.nome,');
           qrcliente.sql.add('cli.codconvenio');
           qrcliente.sql.add('order by');
           qrcliente.sql.add('cli.nome');
           qrcliente.Params.ParamByName('datax').asdatetime := strtodate(edata.Text);
           qrcliente.open;
           locconvenio.text := resultado_pesquisa2;
           edit2.text := resultado_pesquisa1;
           Button1Click(FRMCONVENIO_RECEBER);
           grid.SetFocus;
         end;

      end
      else
      begin
           RESULTADO_PESQUISA3 := QRCONVENIO.FieldByName('DIA_FECHAMENTO').ASSTRING;
           if resultado_pesquisa3 <> '' then
           begin
             if length(resultado_pesquisa3) < 2 then resultado_pesquisa3 := '0'+resultado_pesquisa3;
             dia := strtoint(copy(datetostr(date),1,2));
             if strtoint(resultado_pesquisa3) > dia then
             begin
               edata.Text := resultado_pesquisa3+copy(datetostr(date),3,8);
             end
             else
             begin
               edata.Text := resultado_pesquisa3+copy(datetostr(incmonth(date,1)),3,8);
             end;
           end
           else
           begin
            edata.Text := datetostr(date);
           end;



        qrcliente.close;
        qrcliente.sql.clear;
        qrcliente.sql.add('select sum(rec.valor_atual) total,');
//        qrcliente.sql.add('rec.data_emissao,');
        qrcliente.sql.add('cli.codigo,');
        qrcliente.sql.add('cli.nome,');
        qrcliente.sql.Add('cli.codconvenio');
        qrcliente.sql.add('from');
        qrcliente.sql.add('c000049 rec,');
        qrcliente.sql.add('c000007 cli');
        qrcliente.sql.add('where');
        qrcliente.sql.add('rec.codcliente = cli.codigo');
        qrcliente.sql.add('and rec.situacao = 1');
        qrcliente.sql.add('and cli.codconvenio = '''+qrconvenio.fieldbyname('codigo').asstring+'''');
        qrcliente.sql.add('and rec.data_emissao <= :datax');
        qrcliente.sql.add('group by');
//        qrcliente.sql.add('rec.data_emissao,');
        qrcliente.sql.add('cli.codigo,');
        qrcliente.sql.add('cli.nome,');
        qrcliente.sql.add('cli.codconvenio');
        qrcliente.sql.add('order by');
        qrcliente.sql.add('cli.nome');
        qrcliente.Params.ParamByName('datax').asdatetime := strtodate(edata.Text);
        qrcliente.open;
        locconvenio.text := QRCONVENIO.FIELDBYNAME('NOME').ASSTRING;
        edit2.text := QRCONVENIO.FIELDBYNAME('CODIGO').ASSTRING;

        Button1Click(FRMCONVENIO_RECEBER);
      end;
    end
    else
    begin
      application.messagebox('Convênio não encontrado!','Atenção',mb_ok+mb_iconwarning);
    end;
  end;
end;

procedure Tfrmconvenio_receber.Button1Click(Sender: TObject);
begin
  QRPRODUTO.CLOSE;
  QRPRODUTO.SQL.CLEAR;
  QRPRODUTO.SQL.ADD('select');
  QRPRODUTO.SQL.ADD('MOV.*,');
  QRPRODUTO.SQL.ADD('PRO.PRODUTO');
  QRPRODUTO.SQL.ADD('from c000032 MOV,');
  QRPRODUTO.SQL.ADD('c000025 PRO');
  QRPRODUTO.SQL.ADD('WHERE');
  QRPRODUTO.SQL.ADD('MOV.CODPRODUTO = PRO.CODIGO');
  QRPRODUTO.SQL.ADD('AND MOV.MOVIMENTO <> 9');
  QRPRODUTO.Open;

  QRPRODUTO2.CLOSE;
  QRPRODUTO2.SQL.CLEAR;
  QRPRODUTO2.SQL.ADD('select');
  QRPRODUTO2.SQL.ADD('MOV.*,');
  QRPRODUTO2.SQL.ADD('PRO.PRODUTO');
  QRPRODUTO2.SQL.ADD('from c000032 MOV,');
  QRPRODUTO2.SQL.ADD('c000025 PRO');
  QRPRODUTO2.SQL.ADD('WHERE');
  QRPRODUTO2.SQL.ADD('MOV.CODPRODUTO = PRO.CODIGO');
  QRPRODUTO2.SQL.ADD('AND MOV.MOVIMENTO <> 9');
  QRPRODUTO2.Open;

  QRPRODUTO3.CLOSE;
  QRPRODUTO3.SQL.CLEAR;
  QRPRODUTO3.SQL.ADD('select');
  QRPRODUTO3.SQL.ADD('MOV.*,');
  QRPRODUTO3.SQL.ADD('CLI.NOME,CLI.CODCONVENIO,');
  QRPRODUTO3.SQL.ADD('PRO.PRODUTO,');
  QRPRODUTO3.SQL.ADD('CR.SITUACAO,');
  QRPRODUTO3.SQL.ADD('CR.DOCUMENTO');
  QRPRODUTO3.SQL.ADD('from c000032 MOV,');
  QRPRODUTO3.SQL.ADD('c000025 PRO,');
  QRPRODUTO3.SQL.ADD('C000007 CLI,');
  QRPRODUTO3.SQL.ADD('C000049 CR');
  QRPRODUTO3.SQL.ADD('WHERE');
  QRPRODUTO3.SQL.ADD('MOV.CODPRODUTO = PRO.CODIGO');
  QRPRODUTO3.SQL.ADD('AND MOV.CODCLIENTE = CLI.CODIGO');
  QRPRODUTO3.SQL.Add('AND MOV.CODNOTA = CR.CODVENDA');
  QRPRODUTO3.SQL.ADD('AND MOV.MOVIMENTO <> 9');
  QRPRODUTO3.SQL.ADD('AND CR.SITUACAO = 1');
  QRPRODUTO3.SQL.ADD('AND CLI.CODCONVENIO = '''+EDIT2.TEXT+'''');
  QRPRODUTO3.SQL.ADD('ORDER BY CODCLIENTE, DATA');
  QRPRODUTO3.Open;

  QRRECEBER.CLOSE;
  QRRECEBER.SQL.CLEAR;
  QRRECEBER.SQL.ADD('select');
  QRRECEBER.SQL.ADD('CR.*,');
  QRRECEBER.SQL.ADD('CLI.CODCONVENIO');
  QRRECEBER.SQL.ADD('from c000049 CR,');
  QRRECEBER.SQL.ADD('C000007 CLI');
  QRRECEBER.SQL.ADD('where');
  QRRECEBER.SQL.ADD('cr.codcliente = cli.codigo');
  QRRECEBER.SQL.ADD('and cr.situacao = 1');
  QRRECEBER.SQL.ADD('and codconvenio = '''+edit2.text+'''');
  qrreceber.sql.add('and CR.tipo = ''CONVENIO''');
  QRRECEBER.SQL.ADD('order by data_vencimento');
  qrreceber.open;


end;

procedure Tfrmconvenio_receber.BitBtn3Click(Sender: TObject);
begin
  CLOSE;
end;

procedure Tfrmconvenio_receber.BitBtn1Click(Sender: TObject);
var total : real;
begin

  if qrcliente.State = dsbrowse then
  begin

    if frmPrincipal.autentica_caixa('Recebimento',0) then
    begin
      if frmmodulo.qrcaixa_operador.FieldByName('situacao').asinteger = 1 then
      begin
        qrcliente.first;
            total := 0;
            while not qrcliente.eof do
              begin
                //if datetostr(qrcliente.fieldbyname('data_emissao').AsDateTime) <= EDATA.Text then
//                if qrcliente.fieldbyname('data_emissao').AsDateTime <= strtodate(EDATA.Text) then
//                  begin
                    total := total + qrcliente.fieldbyname('total').asfloat;
//                  end;
                qrcliente.next;
              end;

            if total > 0 then
              begin
                frmconvenio_pgto := tfrmconvenio_pgto.create(self);
                with frmconvenio_pgto do
                  begin
                    rliquido.Value := total;
                    rjuros.value   := 0;
                    rtotal.value   := total;
                  end;
                  frmconvenio_pgto.showmodal;
              end
            else
              Application.MessageBox('Não Há Contas de Convênio na Faixa de Data Base Vencidas! Favor verificar...','Atenção',mb_ok+MB_ICONWARNING);

      END
      ELSE
      BEGIN
      APPLICATION.MESSAGEBOX('Este caixa está fechado! Favor verificar...','Atenção',mb_ok+MB_ICONWARNING);
    END;
    end
    else
    begin
      APPLICATION.MESSAGEBOX('Não autorizado!','Aviso',mb_ok+MB_ICONERROR);
    end;
  end;

end;

procedure Tfrmconvenio_receber.BitBtn2Click(Sender: TObject);
begin
  FRMMODULO.QRRELATORIO.OPEN;
  FRMMODULO.QRRELATORIO.Edit;
  frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'CONVÊNIO - Extrato de Débito';
  frmmodulo.qrrelatorio.fieldbyname('LINHA2').AsString := 'Data Base do Fechamento: '+edata.Text;
  frmmodulo.qrrelatorio.fieldbyname('LINHA3').AsString := locconvenio.Text;

  QRPRODUTO3.MasterFields := 'CODIGO';
  QRPRODUTO3.MasterSource := dscliente;
  QRPRODUTO3.IndexFieldNames :=  'CODCLIENTE';
  //QRPRODUTO3.IndexFieldNames :=  'DATA';
  QRPRODUTO3.Refresh;

  fxconvenio.LoadFromFile('\DATASAC\server\rel\f000087.fr3');
  fxCONVENIO.ShowReport;

  QRPRODUTO3.MasterFields := '';
  QRPRODUTO3.MasterSource := NIL;
  QRPRODUTO3.IndexFieldNames :=  '';

end;

procedure Tfrmconvenio_receber.Convenio1Click(Sender: TObject);
begin
  BitBtn4Click(frmconvenio_receber);
end;

procedure Tfrmconvenio_receber.BitBtn4Click(Sender: TObject);
begin
  query.close;
  query.sql.clear;
  query.sql.add('select sum(rec.valor_atual) total,');
  query.sql.add('rec.documento,');
  query.sql.add('rec.codvenda,');
  query.sql.add('rec.data_emissao,');
  query.sql.add('cli.codigo,');
  query.sql.add('cli.nome,');
  query.sql.Add('cli.codconvenio');
  query.sql.add('from');
  query.sql.add('c000049 rec,');
  query.sql.add('c000007 cli');
  query.sql.add('where');
  query.sql.add('rec.codcliente = cli.codigo');
  query.sql.add('and rec.situacao = 1');
  query.sql.add('and cli.codconvenio = '''+qrclienteCODCONVENIO.AsString+'''');
  query.sql.add('and rec.data_emissao <= :datax');
  query.sql.add('group by');
  query.sql.add('rec.documento,');
  query.sql.add('rec.codvenda,');
  query.sql.add('rec.data_emissao,');
  query.sql.add('cli.codigo,');
  query.sql.add('cli.nome,');
  query.sql.add('cli.codconvenio');
  query.sql.add('order by');
  query.sql.add('cli.nome,rec.data_emissao');
  query.Params.ParamByName('datax').asdatetime := strtodate(edata.Text);
  query.open;

  FRMMODULO.QRRELATORIO.OPEN;
  FRMMODULO.QRRELATORIO.Edit;
  frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'CONVÊNIO - Resumo dos Débitos';
  frmmodulo.qrrelatorio.fieldbyname('LINHA2').AsString := 'Data Base do Fechamento: '+edata.Text;
  frmmodulo.qrrelatorio.fieldbyname('LINHA3').AsString := locconvenio.Text;

  fxconvenio.LoadFromFile('\DATASAC\server\rel\f000136.fr3');
  fxCONVENIO.ShowReport;

end;

procedure Tfrmconvenio_receber.edataKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

end.
