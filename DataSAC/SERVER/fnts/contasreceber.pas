unit contasreceber;

interface                                                                                                                            

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls, Collection, TFlatPanelUnit,
  StdCtrls, Mask, rxtooledit, rxcurredit, wwdblook, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, Buttons, ImgList, Menus, DBCtrls, RxMemDS,
  RzEdit, RzBtnEdt, PageView, AdvGlowButton, frxClass, frxDBSet, frxDesgn,
  CRBatchMove, MemDS, VirtualTable, DBGrids, AdvToolBar;

type
  Tfrmcontasreceber = class(TForm)
    qrcontasreceber: TZQuery;
    qrcontasreceberCODIGO: TStringField;
    qrcontasreceberCODVENDEDOR: TStringField;
    qrcontasreceberCODCAIXA: TStringField;
    qrcontasreceberCODCLIENTE: TStringField;
    qrcontasreceberDATA_EMISSAO: TDateTimeField;
    qrcontasreceberDATA_VENCIMENTO: TDateTimeField;
    qrcontasreceberDATA_PAGAMENTO: TDateTimeField;
    qrcontasreceberVALOR_ORIGINAL: TFloatField;
    qrcontasreceberVALOR_PAGO: TFloatField;
    qrcontasreceberVALOR_JUROS: TFloatField;
    qrcontasreceberVALOR_ATUAL: TFloatField;
    qrcontasreceberVALOR_DESCONTO: TFloatField;
    qrcontasreceberDOCUMENTO: TStringField;
    qrcontasreceberTIPO: TStringField;
    qrcontasreceberSITUACAO: TIntegerField;
    qrcontasreceberFILTRO: TIntegerField;
    qrcontasreceber_pgto: TZQuery;
    dscontasreceber: TDataSource;
    qrcontasreceberDIAS: TIntegerField;
    qrcontasrecebersituacao2: TIntegerField;
    ImageList1: TImageList;
    qrcontasreceberRESTANTE: TFloatField;
    qrcontasreceberjuros: TFloatField;
    PopupMenu1: TPopupMenu;
    Receber1: TMenuItem;
    Liquidar1: TMenuItem;
    Incluir1: TMenuItem;
    Alterar1: TMenuItem;
    Excluir1: TMenuItem;
    Extornar1: TMenuItem;
    Recebimentos1: TMenuItem;
    Relatrios1: TMenuItem;
    Produtos1: TMenuItem;
    Filtro1: TMenuItem;
    Renegociar1: TMenuItem;
    Funes1: TMenuItem;
    Fechar1: TMenuItem;
    qrcontasreceber_pgtoCODCONTA: TStringField;
    qrcontasreceber_pgtoDATA: TDateTimeField;
    qrcontasreceber_pgtoVALOR_PARCELA: TFloatField;
    qrcontasreceber_pgtoVALOR_JUROS: TFloatField;
    qrcontasreceber_pgtoVALOR_DESCONTO: TFloatField;
    qrcontasreceber_pgtoVALOR_PAGO: TFloatField;
    qrcontasreceber_pgtoDINHEIRO: TFloatField;
    qrcontasreceber_pgtoCHEQUEAV: TFloatField;
    qrcontasreceber_pgtoCHEQUEAP: TFloatField;
    qrcontasreceber_pgtoCARTAO: TFloatField;
    qrcontasreceber_pgtoBOLETO: TFloatField;
    qrcontasreceber_pgtoTROCO: TFloatField;
    qrcontasreceber_pgtoCREDITO: TFloatField;
    qrcontasreceber_pgtoCODCLIENTE: TStringField;
    qrproduto_mov: TZQuery;
    qrproduto_movDATA: TDateTimeField;
    qrproduto_movCODNOTA: TStringField;
    qrproduto_movNUMERONOTA: TStringField;
    qrproduto_movMOV: TStringField;
    qrproduto_movQTDE: TFloatField;
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
    qrcontasreceber_pgtoCAIXA_BANCO: TIntegerField;
    qrcontasreceberCODVENDA: TStringField;
    qrcontasreceberNOSSONUMERO: TStringField;
    qrcontasreceberCODREGIAO: TStringField;
    qrcontasreceberCODCEDENTE: TStringField;
    qrcontasreceberbanco: TStringField;
    qrcontasreceberagencia: TStringField;
    qrcontasreceberconta: TStringField;
    qrservico: TZQuery;
    qrservicoCODSERVICO: TStringField;
    qrservicoSERVICO: TStringField;
    qrservicoCOMPLEMENTO: TStringField;
    qrservicoVALOR: TFloatField;
    qrservicoCODTECNICO: TStringField;
    qrservicoTECNICO: TStringField;
    qrservicoDATA: TDateTimeField;
    qrservicoCODOS: TStringField;
    qrservicoCODCLIENTE: TStringField;
    ZQuery1: TZQuery;
    qrproduto_movUNIDADE: TStringField;
    QUERY: TZQuery;
    Panel1: TPanel;
    Label4: TLabel;
    Label17: TLabel;
    bfiltrar: TButton;
    Edit3: TEdit;
    edit1: TRzButtonEdit;
    edit2: TRzEdit;
    Label18: TLabel;
    Label23: TLabel;
    combo_situacao: TComboBox;
    Bevel1: TBevel;
    PageView1: TPageView;
    PageSheet1: TPageSheet;
    PageSheet2: TPageSheet;
    PageSheet3: TPageSheet;
    wwDBGrid1: TwwDBGrid;
    DBEdit1: TDBEdit;
    FlatPanel3: TFlatPanel;
    Label13: TLabel;
    DBText1: TDBText;
    pselecao: TFlatPanel;
    Label15: TLabel;
    rselecao: TRxCalcEdit;
    FlatPanel5: TFlatPanel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    FlatPanel2: TFlatPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    rvalor: TRxCalcEdit;
    rjuro: TRxCalcEdit;
    rtotal: TRxCalcEdit;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Bevel5: TBevel;
    Panel2: TPanel;
    Bevel6: TBevel;
    button1: TAdvGlowButton;
    bliquidar: TAdvGlowButton;
    Bevel7: TBevel;
    balterar: TAdvGlowButton;
    bexcluir: TAdvGlowButton;
    bextornar: TAdvGlowButton;
    bfechar: TAdvGlowButton;
    Bevel8: TBevel;
    brelatorios: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    Bevel9: TBevel;
    brenegociar: TAdvGlowButton;
    bfuncoes: TAdvGlowButton;
    Bevel10: TBevel;
    dscontasreceber_pgto: TDataSource;
    Panel3: TPanel;
    Bevel11: TBevel;
    Label29: TLabel;
    DBText11: TDBText;
    Label30: TLabel;
    DBText12: TDBText;
    Label31: TLabel;
    DBText13: TDBText;
    Label32: TLabel;
    DBText15: TDBText;
    Label33: TLabel;
    DBText16: TDBText;
    Panel4: TPanel;
    wwDBGrid2: TwwDBGrid;
    Panel5: TPanel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    DBText6: TDBText;
    DBText7: TDBText;
    DBText8: TDBText;
    DBText9: TDBText;
    DBText10: TDBText;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    Label34: TLabel;
    Bevel12: TBevel;
    ptampa_recebimento: TFlatPanel;
    Panel6: TPanel;
    Label35: TLabel;
    DBText14: TDBText;
    Label36: TLabel;
    DBText17: TDBText;
    Label37: TLabel;
    DBText18: TDBText;
    Label38: TLabel;
    DBText19: TDBText;
    Label39: TLabel;
    DBText20: TDBText;
    Bevel13: TBevel;
    Panel7: TPanel;
    Bevel14: TBevel;
    wwDBGrid3: TwwDBGrid;
    dsproduto_mov: TDataSource;
    dsservico_mov: TDataSource;
    wwDBGrid4: TwwDBGrid;
    Panel8: TPanel;
    Bevel15: TBevel;
    Bevel16: TBevel;
    plegenda: THeaderView;
    HeaderView3: THeaderView;
    Image1: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label5: TLabel;
    ltaxa: TLabel;
    lmulta: TLabel;
    lcarencia: TLabel;
    Label16: TLabel;
    Image2: TImage;
    Label7: TLabel;
    Label6: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    bfechar_legenda: TAdvGlowButton;
    bitbtn1: TAdvGlowButton;
    qrproduto_movSERIAL: TStringField;
    qrproduto_movALIQUOTA: TFloatField;
    qrproduto_movCST: TStringField;
    ptampa_produto: TFlatPanel;
    Label40: TLabel;
    RelaodeContas1: TMenuItem;
    Label41: TLabel;
    rpago: TRxCalcEdit;
    Label42: TLabel;
    roriginal: TRxCalcEdit;
    Bevel17: TBevel;
    fxduplicata: TfrxReport;
    fxdesenhar: TfrxDesigner;
    fsduplicata: TfrxDBDataset;
    qrduplicata: TRxMemoryData;
    qrduplicataemitente_fantasia: TStringField;
    qrduplicataemitente_razao: TStringField;
    qrduplicataemitente_slogan: TStringField;
    qrduplicataemitente_telefone: TStringField;
    qrduplicataemitente_endereco: TStringField;
    qrduplicataemitente_cnpj: TStringField;
    qrduplicataemitente_ie: TStringField;
    qrduplicatadata_emissao: TStringField;
    qrduplicatafatura_numero: TStringField;
    qrduplicatafatura_valor: TStringField;
    qrduplicataduplicata_numero: TStringField;
    qrduplicataduplicata_valor: TStringField;
    qrduplicatadata_vencimento: TStringField;
    qrduplicatadesconto: TStringField;
    qrduplicatadesconto_ate: TStringField;
    qrduplicatacondicoes_especiais: TStringField;
    qrduplicatasacado_nome: TStringField;
    qrduplicatasacado_endereco: TStringField;
    qrduplicatasacado_municipio: TStringField;
    qrduplicatasacado_uf: TStringField;
    qrduplicatasacado_cep: TStringField;
    qrduplicatasacado_praca: TStringField;
    qrduplicatasacado_cnpj: TStringField;
    qrduplicatasacado_ie: TStringField;
    qrduplicatanotas_ficais: TStringField;
    qrduplicataextenso: TStringField;
    qrvenda: TZQuery;
    qrvendaCODIGO: TStringField;
    qrvendaCUPOM_FISCAL: TIntegerField;
    qrvendaTOTAL: TFloatField;
    qrcliente: TZQuery;
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
    Panel9: TPanel;
    Bevel18: TBevel;
    Label43: TLabel;
    Label44: TLabel;
    lendereco: TLabel;
    Label45: TLabel;
    lcpf: TLabel;
    Label47: TLabel;
    llimite: TLabel;
    CRBatchMove1: TCRBatchMove;
    QRCr: TVirtualTable;
    DataSource1: TDataSource;
    Label46: TLabel;
    DBText21: TDBText;
    qrproduto_movPRODUTO: TStringField;
    breceber: TAdvGlowButton;
    bincluir: TAdvGlowMenuButton;
    PopupMenu2: TPopupMenu;
    Simples1: TMenuItem;
    EmGrupo1: TMenuItem;
    qrcontasreceberNUMERO_CUPOM: TStringField;
    qrcr_reciboNUMERO_CUPOM: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure qrcontasreceberCalcFields(DataSet: TDataSet);
    procedure bfechar_legendaClick(Sender: TObject);
    procedure wwDBGrid1TitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure bfecharClick(Sender: TObject);
    procedure breceberClick(Sender: TObject);
    procedure bliquidarClick(Sender: TObject);
    procedure bexcluirClick(Sender: TObject);
    procedure bextornarClick(Sender: TObject);
    procedure bfuncoesClick(Sender: TObject);
    procedure wwDBGrid1Enter(Sender: TObject);
    procedure wwDBGrid1Exit(Sender: TObject);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure wwDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure rselecaoChange(Sender: TObject);
    procedure bfiltrarClick(Sender: TObject);
    procedure bincluirClick(Sender: TObject);
    procedure balterarClick(Sender: TObject);
    procedure brenegociarClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBText2Click(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure brelatoriosClick(Sender: TObject);
    procedure edit1ButtonClick(Sender: TObject);
    procedure button1Click(Sender: TObject);
    procedure Recebimentos1Click(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure PageView1Change(Sender: TObject);
    procedure Produtos1Click(Sender: TObject);
    procedure combo_situacaoChange(Sender: TObject);
    procedure RelaodeContas1Click(Sender: TObject);
    procedure Filtro1Click(Sender: TObject);
    procedure edit2Enter(Sender: TObject);
    procedure EmGrupo1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcontasreceber: Tfrmcontasreceber;
  juro_carencia : integer;
  juro_taxa, juro_multa, total_original, total_juros, total_credito : real;
  numero_venda, codigo_vendedor : string;
  tipo_boleto : integer;
  nossonumero_ok : boolean;
  marcados : boolean;

  PRESTACOES : STRING;
  numero_terminal : string;

implementation

uses modulo, contasreceber_pgto, principal,
  contasreceber_ficha, contasreceber_alterar,
  contasreceber_renegociar, contasreceber_juros,
  temp, contasreceber_boleto, contasreceber_tipoboleto,
  contasreceber_cedente, xloc_cliente, contasreceber_impressao,
  lista_receber2, extenso1, contasreceber_duplicata, contasreceber_recibo2,
  contasreceber_movimentacao, contasreceber_ficha_varios, ecf;

{$R *.dfm}

procedure Tfrmcontasreceber.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin



   qrcontasreceber.close;

  qrcr_recibo.close;
  qrcr.close;
  qrduplicata.close;

  qrcr_recibo := nil;
  qrcr := nil;
  qrduplicata := nil;


  frmmodulo.qrcontasreceber.close;

  FRMMODULO.QRCLIENTE.CLOSE;
  FRMMOdULO.QRCLIENTE.SQL.CLEAR;
  FRMMODULO.QRCLIENTe.SQL.ADD('select * from c000007 ORDER BY NOME');
  FRMMODULO.Conexao.Rollback;

  action := cafree;


end;

procedure Tfrmcontasreceber.FormShow(Sender: TObject);
begin


    frmmodulo.qrconfig.open;
    numero_terminal := registro_terminal;
    if numero_terminal = '' then
    begin
      application.messagebox('Não foi configurado o número do terminal! Esta venda será finalizada!','Erro',mb_ok+mb_iconerror);
      close;
      exit;
    end;



  ptampa_recebimento.top := 0;
  ptampa_recebimento.Left := 0;

  ptampa_PRODUTO.top := 0;
  ptampa_PRODUTO.Left := 0;



  nossonumero_ok   := false;
  pselecao.visible := false;
  rselecao.Value   := 0;
  total_juros      := 0;
  total_original   := 0;

  FRMMODULO.qrconfig.OPEN;
  juro_carencia := frmmodulo.qrconfig.FieldByName('CONTASRECEBER_CARENCIA').asinteger;
  juro_taxa     := frmmodulo.qrconfig.FieldByName('CONTASRECEBER_TAXAJUROS').asfloat;
  juro_multa    := frmmodulo.qrconfig.FieldByName('CONTASRECEBER_multa').asfloat;

  qrcontasreceber.close;
  qrcontasreceber.sql.clear;
  qrcontasreceber.sql.add('select * from c000049 where codcliente = ''nenhum''');
  qrcontasreceber.Open;



  qrcr.open;
  while qrcr.RecordCount > 0 do qrcr.delete;
  qrcr.refresh;


  edit1.setfocus;
end;

procedure Tfrmcontasreceber.qrcontasreceberCalcFields(DataSet: TDataSet);
var valor, juro, multa: real;
dias : integer;
begin


  valor := QRCONTASRECEBER.fieldbyname('valor_ATUAL').asfloat;


  if QRCONTASRECEBER.FieldBYNAME('SITUACAO').ASINTEGER = 2 THEN QRCONTASRECEBER.FieldByName('SITUACAO2').ASINTEGER := 2;
  if QRCONTASRECEBER.FieldBYNAME('SITUACAO').ASINTEGER = 1 THEN
  begin
    if QRCONTASRECEBER.FieldBYNAME('DATA_VENCIMENTO').ASDATETIME = DATE THEN QRCONTASRECEBER.FieldByName('SITUACAO2').ASINTEGER := 4;
    if QRCONTASRECEBER.FieldBYNAME('DATA_VENCIMENTO').ASDATETIME < DATE THEN QRCONTASRECEBER.FieldByName('SITUACAO2').ASINTEGER := 3;
    if QRCONTASRECEBER.FieldBYNAME('DATA_VENCIMENTO').ASDATETIME > DATE THEN QRCONTASRECEBER.FieldByName('SITUACAO2').ASINTEGER := 1;
  END;
  QRCONTASRECEBER.FieldByName('restante').asfloat := 0;

  if QRCONTASRECEBER.fieldbyname('situacao').asinteger = 1 then
  begin
    if valor > 0 then
    begin
      if QRCONTASRECEBER.FieldByName('data_pagamento').asfloat > 0 then // puxar pelo ultimo pagamento
      begin
        if QRCONTASRECEBER.FieldByName('data_pagamento').asfloat > QRCONTASRECEBER.fieldbyname('data_vencimento').asdatetime then
           dias := trunc(date - QRCONTASRECEBER.fieldbyname('data_pagamento').asdatetime)
        else
          dias := trunc(date - QRCONTASRECEBER.fieldbyname('data_vencimento').asdatetime);
      end
      else
      begin // puxar pela data de vencimento
        dias := trunc(date - QRCONTASRECEBER.fieldbyname('data_vencimento').asdatetime);

        // soh cobrar a multa se nao tiver nenhum pagamento!
        if juro_multa > 0 then
        begin
          multa := (valor * (juro_multa/100));
        end;
      end;

      if juro_taxa <> 0 then
      begin
        IF (DIAS - JURO_CARENCIA) > 0 THEN
        BEGIN
          juro := (valor * ((juro_taxa/100) * (DIAS {- juro_carencia})));
          valor := valor + juro + multa;
        END;
      end;
      QRCONTASRECEBER.FieldByName('dias').AsInteger := dias;
      if (dias - juro_carencia) > 0 then
      begin
        QRCONTASRECEBER.FieldByName('dias').AsInteger := dias;
        QRCONTASRECEBER.fieldbyname('restante').asfloat := valor;
        QRCONTASRECEBER.fieldbyname('juros').asfloat := juro + multa;
      end
      else
      begin
        QRCONTASRECEBER.fieldbyname('restante').asfloat := QRCONTASRECEBER.fieldbyname('valor_atual').asfloat;
      end;

    end
    else
    begin
      QRCONTASRECEBER.FieldByName('dias').AsInteger := 0;
      QRCONTASRECEBER.fieldbyname('restante').asfloat := valor;
      QRCONTASRECEBER.fieldbyname('juros').asfloat := 0;
      QRCONTASRECEBER.fieldbyname('situacao2').asinteger := 5;

    end;
  end
  else
  begin
    QRCONTASRECEBER.FieldByName('dias').AsInteger := 0;
    QRCONTASRECEBER.fieldbyname('restante').asfloat := valor;
    QRCONTASRECEBER.fieldbyname('juros').asfloat := 0;
  end;











end;

procedure Tfrmcontasreceber.bfechar_legendaClick(Sender: TObject);
begin
  plegenda.visible := false;
end;

procedure Tfrmcontasreceber.wwDBGrid1TitleButtonClick(Sender: TObject;
  AFieldName: String);
begin
  if afieldname = 'situacao2' then
  begin
    button1click(Frmcontasreceber);
  end;
end;

procedure Tfrmcontasreceber.bfecharClick(Sender: TObject);
begin
  if bfechar.caption = 'ESC | Fechar' then close;
  if bfechar.Caption  = 'ESC | Retornar' then
  begin
    bfechar.caption := 'ESC | Fechar';
    edit1.setfocus;
  end;
end;

procedure Tfrmcontasreceber.breceberClick(Sender: TObject);
begin

  if rselecao.value = 0 then wwDBGrid1.OnDblClick(frmcontasreceber);

    if frmPrincipal.autentica_caixa('Recebimento',0) then
    begin
      if frmmodulo.qrcaixa_operador.FieldByName('situacao').asinteger = 1 then
      begin

        frmcontasreceber_pgto := tfrmcontasreceber_pgto.create(self);
        with frmcontasreceber_pgto do
        begin
          rliquido.Value := total_original;
          rjuros.value   := total_juros;
          rtotal.value   := rselecao.Value;
        end;
        frmcontasreceber_pgto.showmodal;

        bfiltrarclick(frmcontasreceber);
        qrcontasreceber.IndexFieldNames := 'CODIGO';
        frmcontasreceber.qrcontasreceber.First;
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

procedure Tfrmcontasreceber.bliquidarClick(Sender: TObject);
begin
  qrcr.First;
  rselecao.Value := 0;
  total_original := 0;
  total_juros    := 0;
  while not qrcr.Eof do
  begin
    qrcr.edit;
    qrcr.FieldByName('filtro').asinteger := 1;
    qrcr.post;
    rselecao.value := rselecao.value + qrcr.fieldbyname('restante').asfloat;
    total_original := total_original + qrcr.fieldbyname('valor_atual').asfloat;
    total_juros    := total_juros    + qrcr.fieldbyname('juros').asfloat;
    qrcr.next;
  end;

  breceber.OnClick(frmcontasreceber);
end;

procedure Tfrmcontasreceber.bexcluirClick(Sender: TObject);
var
  reg_atual, reg_exclui : integer;
begin

{
  if excluir_prestacao <> '1' then
    begin
      application.messagebox('Esta função está desabilitada!','Atenção',mb_ok+MB_ICONWARNING);
      exit;
    end;
}

  if qrcr.RecordCount = 0 then
    begin
      application.messagebox('Não tem nenhuma conta selecionada!','Aviso',mb_ok+MB_ICONWARNING);
      exit;
    end;

  if not frmPrincipal.autentica('Excluir Prestação',4) then
    begin
      application.messagebox('Desculpe! Seu acesso não foi autorizado!','Aviso',mb_ok+MB_ICONERROR);
      exit;
    end
  else
    begin
      If frmprincipal.acesso(codigo_usuario,'04.07') = 'LIMITADO' then
        begin
          application.messagebox('Acesso não permitido!','Atenção',mb_ok+MB_ICONERROR);
          exit;
        end;

      reg_atual := QRCr.RecNo;
      reg_exclui := 0;
      QRCr.First;
      while not QRCr.Eof do begin
        if QRCr.FieldByName('filtro').AsInteger = 1 then
          begin
            reg_exclui := reg_exclui + 1;
          end;
        QRCr.Next;
      end;

      if reg_exclui > 0 then
        begin
          QRCr.First;
          while not QRCr.Eof do begin
            if QRCr.FieldByName('filtro').AsInteger = 1 then
              begin
                //frmprincipal.log(codigo_usuario,'C.RECEBER',QRCr.fieldbyname('codigo').asstring,'EXCLUIU',QRCR.FIELDBYNAME('CODIGO').ASSTRING+' - '+EDIT1.TEXT);
                frmprincipal.log(frmmodulo.qrUsuario.fieldbyname('codigo').asstring,'C.RECEBER',QRCr.fieldbyname('codigo').asstring,'EXCLUIU',QRCR.FIELDBYNAME('CODIGO').ASSTRING+' - '+EDIT1.TEXT);

                qrcontasreceber_pgto.close;
                qrcontasreceber_pgto.SQL.Clear;
                qrcontasreceber_pgto.SQL.Add('delete from c000050 where CODCONTA = '''+qrcR.fieldbyname('codigo').asstring+''' and codcliente = '''+qrcr.fieldbyname('codcliente').asstring+'''');
                qrcontasreceber_pgto.ExecSQL;

                qrcontasreceber.close;
                qrcontasreceber.sql.clear;
                qrcontasreceber.sql.add('delete from c000049 where codigo = '''+qrcr.fieldbyname('codigo').asstring+'''');
                qrcontasreceber.ExecSQL;
              end;
            QRCr.Next;
          end;
        end
      else
        begin

          QRCr.RecNo := reg_atual;

          //frmprincipal.log(codigo_usuario,'C.RECEBER',QRCr.fieldbyname('codigo').asstring,'EXCLUIU',QRCR.FIELDBYNAME('CODIGO').ASSTRING+' - '+EDIT1.TEXT);
          frmprincipal.log(frmmodulo.qrUsuario.fieldbyname('codigo').asstring,'C.RECEBER',QRCr.fieldbyname('codigo').asstring,'EXCLUIU',QRCR.FIELDBYNAME('CODIGO').ASSTRING+' - '+EDIT1.TEXT);

          qrcontasreceber_pgto.close;
          qrcontasreceber_pgto.SQL.Clear;
          qrcontasreceber_pgto.SQL.Add('delete from c000050 where CODCONTA = '''+qrcR.fieldbyname('codigo').asstring+''' and codcliente = '''+qrcr.fieldbyname('codcliente').asstring+'''');
          qrcontasreceber_pgto.ExecSQL;

          qrcontasreceber.close;
          qrcontasreceber.sql.clear;
          qrcontasreceber.sql.add('delete from c000049 where codigo = '''+qrcr.fieldbyname('codigo').asstring+'''');
          qrcontasreceber.ExecSQL;

        end;
      frmmodulo.Conexao.Commit;
      bfiltrarClick(frmcontasreceber);
    end;

end;

procedure Tfrmcontasreceber.bextornarClick(Sender: TObject);
var rec : integer;
tot : real;
begin
  if qrcr.RecordCount = 0 then
  begin
     application.messagebox('Não tem nenhuma conta selecionada!','Aviso',mb_ok+MB_ICONWARNING);
     exit;
  end;
  frmmodulo.qrcaixa_operador.Open;
  frmmodulo.qrcaixa_operador.Locate('codigo','000099',[loCaseInsensitive]);
  qrcontasreceber_pgto.close;
  qrcontasreceber_pgto.SQL.Clear;
  qrcontasreceber_pgto.SQL.Add('select * from c000050 where CODCONTA = '''+copy(qrcr.fieldbyname('codigo').asstring,1,9)+
                               ''' and codcliente = '''+qrcr.fieldbyname('codcliente').asstring+
                               ''' and data = :datai');
  qrcontasreceber_pgto.Params.ParamByName('datai').asdatetime := frmmodulo.qrcaixa_operador.fieldbyname('data').asdatetime;
  qrcontasreceber_pgto.open;
  qrcontasreceber_pgto.first;


  rec := qrcontasreceber_pgto.RecordCount;



  if  rec = 0 then
  begin
     application.messagebox('Esta conta não possue recebimentos nesta data!','Aviso',mb_ok+MB_ICONWARNING);
     exit;
  end;

            if not frmPrincipal.autentica('Extornar Recebimento',3) then
            begin
              application.messagebox('Desculpe! Seu acesso não foi autorizado!','Aviso',mb_ok+MB_ICONERROR);
              exit;
            end
            else
            begin
                   tot := 0;
                 while qrcontasreceber_pgto.RecordCount <> 0 do
                 begin


                   if qrcontasreceber_pgto.FIELDBYNAME('CAIXA_BANCO').ASINTEGER = 1 then // caixa
                   begin
                     if qrcontasreceber_pgto.FieldByName('dinheiro').asfloat <> 0 then
                     begin
                       frmmodulo.qrcaixa_mov.OPEN;
                       frmmodulo.qrcaixa_mov.insert;
                       frmmodulo.qrcaixa_mov.FieldByName('codigo').asstring      := frmprincipal.codifica('000044');
                       frmmodulo.qrcaixa_mov.fieldbyname('codoperador').asstring := frmmodulo.qrcaixa_operador.fieldbyname('codigo').asstring;
                       frmmodulo.qrcaixa_mov.fieldbyname('data').asstring        := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
                       frmmodulo.qrcaixa_mov.fieldbyname('valor').asfloat        := (qrcontasreceber_pgto.FieldByName('dinheiro').asfloat)*(-1);
                       frmmodulo.qrcaixa_mov.fieldbyname('saida').asfloat      := qrcontasreceber_pgto.FieldByName('dinheiro').asfloat;
                       frmmodulo.qrconfig.open;
                       frmmodulo.qrcaixa_mov.fieldbyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_RECEBTO_CREDIARIO').asstring;

                       frmmodulo.qrcaixa_mov.fieldbyname('movimento').asINTEGER  := 9;
                       frmmodulo.qrcaixa_mov.fieldbyname('historico').asstring   := 'Estorno Docto: '+frmcontasreceber.qrcr.fieldbyname('documento').asstring;
                       frmmodulo.qrcaixa_mov.post;
                     end;
                     if qrcontasreceber_pgto.FieldByName('chequeav').asfloat <> 0 then
                     begin
                       frmmodulo.qrcaixa_mov.OPEN;
                       frmmodulo.qrcaixa_mov.insert;
                       frmmodulo.qrcaixa_mov.FieldByName('codigo').asstring      := frmprincipal.codifica('000044');
                       frmmodulo.qrcaixa_mov.fieldbyname('codoperador').asstring := frmmodulo.qrcaixa_operador.fieldbyname('codigo').asstring;
                       frmmodulo.qrcaixa_mov.fieldbyname('data').asstring        := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
                       frmmodulo.qrcaixa_mov.fieldbyname('valor').asfloat        := (qrcontasreceber_pgto.FieldByName('chequeav').asfloat)*(-1);
                       frmmodulo.qrconfig.open;
                       frmmodulo.qrcaixa_mov.fieldbyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_RECEBTO_CREDIARIO').asstring;

                       frmmodulo.qrcaixa_mov.fieldbyname('movimento').asINTEGER  := 10;
                       frmmodulo.qrcaixa_mov.fieldbyname('historico').asstring   := 'Estorno Docto: '+frmcontasreceber.qrcr.fieldbyname('documento').asstring;
                       frmmodulo.qrcaixa_mov.post;
                     end;
                     if qrcontasreceber_pgto.FieldByName('chequeap').asfloat <> 0 then
                     begin
                       frmmodulo.qrcaixa_mov.OPEN;
                       frmmodulo.qrcaixa_mov.insert;
                       frmmodulo.qrcaixa_mov.FieldByName('codigo').asstring      := frmprincipal.codifica('000044');
                       frmmodulo.qrcaixa_mov.fieldbyname('codoperador').asstring := frmmodulo.qrcaixa_operador.fieldbyname('codigo').asstring;
                       frmmodulo.qrcaixa_mov.fieldbyname('data').asstring        := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
                       frmmodulo.qrcaixa_mov.fieldbyname('valor').asfloat        := (qrcontasreceber_pgto.FieldByName('chequeap').asfloat)*(-1);
                       frmmodulo.qrconfig.open;
                       frmmodulo.qrcaixa_mov.fieldbyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_RECEBTO_CREDIARIO').asstring;

                       frmmodulo.qrcaixa_mov.fieldbyname('movimento').asINTEGER  := 11;
                       frmmodulo.qrcaixa_mov.fieldbyname('historico').asstring   := 'Estorno Docto: '+frmcontasreceber.qrcr.fieldbyname('documento').asstring;
                       frmmodulo.qrcaixa_mov.post;
                     end;
                     if qrcontasreceber_pgto.FieldByName('cartao').asfloat <> 0 then
                     begin
                       frmmodulo.qrcaixa_mov.OPEN;
                       frmmodulo.qrcaixa_mov.insert;
                       frmmodulo.qrcaixa_mov.FieldByName('codigo').asstring      := frmprincipal.codifica('000044');
                       frmmodulo.qrcaixa_mov.fieldbyname('codoperador').asstring := frmmodulo.qrcaixa_operador.fieldbyname('codigo').asstring;
                       frmmodulo.qrcaixa_mov.fieldbyname('data').asstring        := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
                       frmmodulo.qrcaixa_mov.fieldbyname('valor').asfloat        := (qrcontasreceber_pgto.FieldByName('cartao').asfloat)*(-1);
                       frmmodulo.qrconfig.open;
                       frmmodulo.qrcaixa_mov.fieldbyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_RECEBTO_CREDIARIO').asstring;

                       frmmodulo.qrcaixa_mov.fieldbyname('movimento').asINTEGER  := 12;
                       frmmodulo.qrcaixa_mov.fieldbyname('historico').asstring   := 'Estorno Docto: '+frmcontasreceber.qrcr.fieldbyname('documento').asstring;
                       frmmodulo.qrcaixa_mov.post;
                     end;
                     if qrcontasreceber_pgto.FieldByName('boleto').asfloat <> 0 then
                     begin
                       frmmodulo.qrcaixa_mov.OPEN;
                       frmmodulo.qrcaixa_mov.insert;
                       frmmodulo.qrcaixa_mov.FieldByName('codigo').asstring      := frmprincipal.codifica('000044');
                       frmmodulo.qrcaixa_mov.fieldbyname('codoperador').asstring := frmmodulo.qrcaixa_operador.fieldbyname('codigo').asstring;
                       frmmodulo.qrcaixa_mov.fieldbyname('data').asstring        := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
                       frmmodulo.qrcaixa_mov.fieldbyname('valor').asfloat        := (qrcontasreceber_pgto.FieldByName('boleto').asfloat)*(-1);
                       frmmodulo.qrconfig.open;
                       frmmodulo.qrcaixa_mov.fieldbyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_RECEBTO_CREDIARIO').asstring;

                       frmmodulo.qrcaixa_mov.fieldbyname('movimento').asINTEGER  := 15;
                       frmmodulo.qrcaixa_mov.fieldbyname('historico').asstring   := 'Estorno Docto: '+frmcontasreceber.qrcr.fieldbyname('documento').asstring;
                       frmmodulo.qrcaixa_mov.post;
                     end;
                     if qrcontasreceber_pgto.FieldByName('valor_desconto').asfloat <> 0 then
                     begin
                       frmmodulo.qrcaixa_mov.OPEN;
                       frmmodulo.qrcaixa_mov.insert;
                       frmmodulo.qrcaixa_mov.FieldByName('codigo').asstring      := frmprincipal.codifica('000044');
                       frmmodulo.qrcaixa_mov.fieldbyname('codoperador').asstring := frmmodulo.qrcaixa_operador.fieldbyname('codigo').asstring;
                       frmmodulo.qrcaixa_mov.fieldbyname('data').asstring        := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
                       frmmodulo.qrcaixa_mov.fieldbyname('valor').asfloat        := (qrcontasreceber_pgto.FieldByName('valor_desconto').asfloat)*(-1);
                       frmmodulo.qrconfig.open;
                       frmmodulo.qrcaixa_mov.fieldbyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_RECEBTO_CREDIARIO').asstring;

                       frmmodulo.qrcaixa_mov.fieldbyname('movimento').asINTEGER  := 14;
                       frmmodulo.qrcaixa_mov.fieldbyname('historico').asstring   := 'Desc.Recebto. Docto: '+frmcontasreceber.qrcr.fieldbyname('documento').asstring;
                       frmmodulo.qrcaixa_mov.post;
                     end;
                     if qrcontasreceber_pgto.FieldByName('valor_juros').asfloat <> 0 then
                     begin
                       frmmodulo.qrcaixa_mov.OPEN;
                       frmmodulo.qrcaixa_mov.insert;
                       frmmodulo.qrcaixa_mov.FieldByName('codigo').asstring      := frmprincipal.codifica('000044');
                       frmmodulo.qrcaixa_mov.fieldbyname('codoperador').asstring := frmmodulo.qrcaixa_operador.fieldbyname('codigo').asstring;
                       frmmodulo.qrcaixa_mov.fieldbyname('data').asstring        := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
                       frmmodulo.qrcaixa_mov.fieldbyname('valor').asfloat        := (qrcontasreceber_pgto.FieldByName('valor_juros').asfloat)*(-1);
                       frmmodulo.qrconfig.open;
                       frmmodulo.qrcaixa_mov.fieldbyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_RECEBTO_CREDIARIO').asstring;

                       frmmodulo.qrcaixa_mov.fieldbyname('movimento').asINTEGER  := 13;
                       frmmodulo.qrcaixa_mov.fieldbyname('historico').asstring   := 'Estorno Juros Recebido Docto: '+frmcontasreceber.qrcr.fieldbyname('documento').asstring;
                       frmmodulo.qrcaixa_mov.post;
                     end;
                   end
                   else
                   begin
                     frmmodulo.qrcaixa_mov.open;
                     frmmodulo.qrcaixa_mov.Insert;
                     frmmodulo.qrcaixa_mov.FieldByName('codigo').asstring     := frmprincipal.codifica('000044');
                     frmmodulo.qrcaixa_mov.fieldbyname('codcaixa').asstring   := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
                     frmmodulo.qrcaixa_mov.fieldbyname('codoperador').asstring:= frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
                     frmmodulo.qrcaixa_mov.fieldbyname('data').asstring       := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
                     frmmodulo.qrcaixa_mov.fieldbyname('saida').asfloat       := 0;
                     frmmodulo.qrcaixa_mov.FieldByName('valor').asfloat       := (qrcontasreceber_pgto.fieldbyname('valor_pago').asfloat)*(-1);
                       frmmodulo.qrconfig.open;
                       frmmodulo.qrcaixa_mov.fieldbyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_RECEBTO_CREDIARIO').asstring;

                     frmmodulo.qrcaixa_mov.fieldbyname('movimento').asINTEGER := 15; // BOLETO
                     frmmodulo.qrcaixa_mov.fieldbyname('historico').asstring  := 'Estorno Docto: '+frmcontasreceber.qrcr.fieldbyname('documento').asstring;
                     frmmodulo.qrcaixa_mov.post;




                     if qrcontasreceber_pgto.FieldByName('valor_desconto').asfloat <> 0 then
                     begin
                       frmmodulo.qrcaixa_mov.OPEN;
                       frmmodulo.qrcaixa_mov.insert;
                       frmmodulo.qrcaixa_mov.FieldByName('codigo').asstring      := frmprincipal.codifica('000044');
                       frmmodulo.qrcaixa_mov.fieldbyname('codoperador').asstring := frmmodulo.qrcaixa_operador.fieldbyname('codigo').asstring;
                       frmmodulo.qrcaixa_mov.fieldbyname('data').asstring        := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
                       frmmodulo.qrcaixa_mov.fieldbyname('valor').asfloat        := (qrcontasreceber_pgto.FieldByName('valor_desconto').asfloat)*(-1);
                       frmmodulo.qrconfig.open;
                       frmmodulo.qrcaixa_mov.fieldbyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_RECEBTO_CREDIARIO').asstring;

                       frmmodulo.qrcaixa_mov.fieldbyname('movimento').asINTEGER  := 14;
                       frmmodulo.qrcaixa_mov.fieldbyname('historico').asstring   := 'Estorno Desc.Recebto. Docto: '+frmcontasreceber.qrcr.fieldbyname('documento').asstring;
                       frmmodulo.qrcaixa_mov.post;
                     end;
                     if qrcontasreceber_pgto.FieldByName('valor_juros').asfloat <> 0 then
                     begin
                       frmmodulo.qrcaixa_mov.OPEN;
                       frmmodulo.qrcaixa_mov.insert;
                       frmmodulo.qrcaixa_mov.FieldByName('codigo').asstring      := frmprincipal.codifica('000044');
                       frmmodulo.qrcaixa_mov.fieldbyname('codoperador').asstring := frmmodulo.qrcaixa_operador.fieldbyname('codigo').asstring;
                       frmmodulo.qrcaixa_mov.fieldbyname('data').asstring        := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
                       frmmodulo.qrcaixa_mov.fieldbyname('valor').asfloat        := (qrcontasreceber_pgto.FieldByName('valor_juros').asfloat)*(-1);
                       frmmodulo.qrconfig.open;
                       frmmodulo.qrcaixa_mov.fieldbyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_RECEBTO_CREDIARIO').asstring;

                       frmmodulo.qrcaixa_mov.fieldbyname('movimento').asINTEGER  := 13;
                       frmmodulo.qrcaixa_mov.fieldbyname('historico').asstring   := 'Estorno Juros Recebido Docto: '+frmcontasreceber.qrcr.fieldbyname('documento').asstring;
                       frmmodulo.qrcaixa_mov.post;
                     end;
                   end; // banco


                   qrcontasreceber.close;
                   qrcontasreceber.sql.clear;
                   qrcontasreceber.sql.add('select * from c000049 where codigo = '''+qrcr.fieldbyname('codigo').asstring+'''');
                   qrcontasreceber.open;

                   tot := tot + qrcontasreceber_pgto.FieldByName('valor_pago').asfloat;


                   qrcontasreceber.edit;
                   qrcontasreceber.FieldByName('valor_pago').asfloat :=
                   qrcontasreceber.FieldByName('valor_pago').asfloat - qrcontasreceber_pgto.FieldByName('valor_pago').asfloat;
                   qrcontasreceber.FieldByName('valor_atual').asfloat :=
                   qrcontasreceber.FieldByName('valor_atual').asfloat + qrcontasreceber_pgto.FieldByName('valor_pago').asfloat;
                   qrcontasreceber.FieldByName('situacao').asinteger := 1;
                   qrcontasreceber.FieldByName('data_pagamento').asstring := '';
                   qrcontasreceber.post;


                   qrcontasreceber_pgto.Delete;
                 end;
                 frmmodulo.Conexao.Commit;
                 qrcontasreceber.Refresh;


                 if tot > 0 then
                 begin
                   ecf_sangriaX(ecf_modelo,FORMATFLOAT('##############0.00',tot));

                 end;



                 showmessage('Estorno feito com sucesso!');

                 bfiltrarClick(frmcontasreceber);
            end;



end;

procedure Tfrmcontasreceber.bfuncoesClick(Sender: TObject);
var obs1, obs2 : string;
i : integer;
begin
  if rselecao.value = 0 then wwDBGrid1DblClick(frmcontasreceber);
  frmcontasreceber_tipoboleto := tfrmcontasreceber_tipoboleto.create(self);
  frmcontasreceber_tipoboleto.showmodal;

  case tipo_boleto of
  1 : begin
        frmcontasreceber_cedente := tfrmcontasreceber_cedente.create(self);
        frmcontasreceber_cedente.showmodal;
      end;
  2 : begin

            if not frmPrincipal.autentica('Boleto Prestações',3) then
            begin
              application.messagebox('Desculpe! Seu acesso não foi autorizado!','Aviso',mb_ok+MB_ICONERROR);
              exit;
            end
            else
            begin

              i := i;
              obs1 := '';
              obs2 := '';
              frmcontasreceber_boleto := tfrmcontasreceber_boleto.create(self);


              qrcr.first;
              while not qrcr.Eof do
              begin
                if qrcr.FieldByName('filtro').asinteger = 1 then
                begin
                  if length(obs1) < 75 then
                  begin
                    obs1 := obs1+', '+qrcr.fieldbyname('codigo').asstring;
                  end
                  else
                  begin
                    obs2 := obs2+', '+qrcr.fieldbyname('codigo').asstring;
                  end;
                end;
                qrcr.next;
              end;
              if copy(obs1,1,1) = ','  then delete(obs1,1,2);
              if copy(obs2,1,1) = ','  then delete(obs2,1,2);

              frmcontasreceber_boleto.eobs1.text := obs1;
              frmcontasreceber_boleto.eobs2.text := obs2;


              frmcontasreceber_boleto.rvalor.value :=  rselecao.value - total_juros;
              frmcontasreceber_boleto.rjuros.value :=  total_juros;
              frmcontasreceber_boleto.ratualizado.value :=  rselecao.Value;
              frmcontasreceber_boleto.rliquido.value :=  rselecao.Value;
              numero_venda := qrcontasreceber.fieldbyname('codvenda').asstring;
              codigo_vendedor := qrcontasreceber.fieldbyname('codvendedor').asstring;
              frmcontasreceber_boleto.showmodal;
            end;
    end;

    3 : begin
          qrduplicata.open;
          while qrduplicata.recordcount <> 0 do qrduplicata.delete;
          qrduplicata.Refresh;

              qrcr.first;
              while not qrcr.Eof do
              begin
                if qrcr.FieldByName('filtro').asinteger = 1 then
                begin
                  qrduplicata.insert;
                  qrduplicata.fieldbyname('emitente_fantasia').asstring := emitente_fantasia;
                  qrduplicata.fieldbyname('emitente_RAZAO').asstring := emitente_nome;
                  qrduplicata.fieldbyname('emitente_telefone').asstring := 'Fone: '+emitente_telefone;
                  qrduplicata.fieldbyname('emitente_endereco').asstring := emitente_endereco+' - '+emitente_cidade+' - '+emitente_cep;
                  qrduplicata.fieldbyname('emitente_cnpj').asstring := emitente_cnpj;
                  qrduplicata.fieldbyname('emitente_ie').asstring := emitente_ie;

                  QUERY.Close;
                  QUERY.SQL.CLEAR;
                  QUERY.SQL.ADD('SELECT * FROM C000048 WHERE CODIGO = '''+QRCR.FIELDBYNAME('CODVENDA').ASSTRING+'''');
                  QUERY.OPEN;
                  IF QUERY.RECORDCOUNT > 0 THEN
                  BEGIN
                     qrduplicata.fieldbyname('FATURA_NUMERO').asstring := QUERY.fieldbyname('NUMERO_cupom_fiscal').asstring;
                     qrduplicata.fieldbyname('fatura_valor').asstring := formatfloat('###,###,##0.00',qUERY.fieldbyname('TOTAL').asfloat)
                  END
                  ELSE
                  BEGIN
                    qrduplicata.fieldbyname('FATURA_NUMERO').asstring := qrcr.fieldbyname('codvenda').asstring;
                    qrduplicata.fieldbyname('fatura_valor').asstring := formatfloat('###,###,##0.00',qrcr.fieldbyname('restante').asfloat);
                  END;


                  qrduplicata.fieldbyname('duplicata_numero').asstring := qrcr.fieldbyname('codigo').asstring;
                  qrduplicata.fieldbyname('duplicata_valor').asstring := formatfloat('###,###,##0.00',qrcr.fieldbyname('restante').asfloat);
                  qrduplicata.fieldbyname('data_vencimento').asstring := qrcr.fieldbyname('data_vencimento').asstring;
                  qrduplicata.fieldbyname('data_emissao').asstring := qrcr.fieldbyname('data_emissao').asstring;
                  qrduplicata.fieldbyname('extenso').asstring :=  AnsiUpperCase(extenso(qrcr.fieldbyname('restante').asfloat));
                  qrcliente.close;
                  qrcliente.sql.clear;
                  qrcliente.sql.add('select * from c000007 where codigo = '''+qrcr.fieldbyname('codcliente').asstring+'''');
                  qrcliente.Open;
                  qrduplicata.fieldbyname('sacado_nome').asstring := qrcliente.fieldbyname('nome').asstring;
                  qrduplicata.fieldbyname('sacado_endereco').asstring := qrcliente.fieldbyname('endereco').asstring + ' '+qrcliente.fieldbyname('bairro').asstring;
                  qrduplicata.fieldbyname('sacado_municipio').asstring := qrcliente.fieldbyname('cidade').asstring;
                  qrduplicata.fieldbyname('sacado_uf').asstring := qrcliente.fieldbyname('uf').asstring;
                  qrduplicata.fieldbyname('sacado_cep').asstring := qrcliente.fieldbyname('cep').asstring;
                  qrduplicata.fieldbyname('sacado_cnpj').asstring := qrcliente.fieldbyname('cpf').asstring;
                  qrduplicata.fieldbyname('sacado_ie').asstring := qrcliente.fieldbyname('rg').asstring;
                  qrduplicata.fieldbyname('sacado_praca').asstring := emitente_cidade;
                  qrduplicata.post;
                end;
                qrcr.next;
              end;

              FXduplicata.LoadFromFile('\DATASAC\server\rel\f000150.fr3');
              FXduplicata.ShowReport;

        end;

      4:begin   // renegociar duplicatas


            if not frmPrincipal.autentica('Duplicata',3) then
            begin
              application.messagebox('Desculpe! Seu acesso não foi autorizado!','Aviso',mb_ok+MB_ICONERROR);
              exit;
            end
            else
            begin

              frmcontasreceber_duplicata := tfrmcontasreceber_duplicata.create(self);
              frmcontasreceber_duplicata.rvalor.value :=  rselecao.value - total_juros;
              frmcontasreceber_duplicata.rjuros.value :=  total_juros;
              frmcontasreceber_duplicata.ratualizado.value :=  rselecao.Value;
              frmcontasreceber_duplicata.rliquido.value :=  rselecao.Value;
              numero_venda := qrcontasreceber.fieldbyname('codvenda').asstring;
              codigo_vendedor := qrcontasreceber.fieldbyname('codvendedor').asstring;
              frmcontasreceber_duplicata.showmodal;
            end;
        end;

  end;
end;

procedure Tfrmcontasreceber.wwDBGrid1Enter(Sender: TObject);
begin
  bfechar.Caption := 'ESC | Retornar';
end;

procedure Tfrmcontasreceber.wwDBGrid1Exit(Sender: TObject);
begin
    bfechar.Caption := 'ESC | Fechar';
end;

procedure Tfrmcontasreceber.wwDBGrid1DblClick(Sender: TObject);
begin
TRY
  if qrcr.FieldByName('situacao').asinteger = 1 then
  begin
    if qrcr.FieldByName('filtro').asstring = '1' then
    begin
      qrcr.Edit;
      qrcr.fieldbyname('filtro').AsString := '0';
      qrcr.Post;
      frmmodulo.Conexao.Commit;
      rselecao.value := rselecao.value - qrcr.fieldbyname('restante').asfloat;
      total_original := total_original - qrcr.fieldbyname('valor_atual').asfloat;
      total_juros    := total_juros    - qrcr.fieldbyname('juros').asfloat;
    end
    else
    begin
      IF qrcr.FieldByName('filtro').asstring = '0' then
      BEGIN
        qrcr.Edit;
        qrcr.fieldbyname('filtro').AsString := '1';
        qrcr.Post;
        frmmodulo.Conexao.Commit;
        rselecao.value := rselecao.value + qrcr.fieldbyname('restante').asfloat;
        total_original := total_original + qrcr.fieldbyname('valor_atual').asfloat;
        total_juros    := total_juros    + qrcr.fieldbyname('juros').asfloat;
      END;
    end;
  end
  else
  begin
    if qrcr.FieldByName('filtro').asstring = '1' then
    begin
      qrcr.Edit;
      qrcr.fieldbyname('filtro').AsString := '0';
      qrcr.Post;
    end
    else
    begin
      IF qrcr.FieldByName('filtro').asstring = '0' then
      BEGIN
        qrcr.Edit;
        qrcr.fieldbyname('filtro').AsString := '1';
        qrcr.Post;
      END;
    end;
  end;
EXCEPT

END;
end;

procedure Tfrmcontasreceber.wwDBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #32 then
  begin
    wwDBGrid1DblClick(frmcontasreceber);
  end;
  if key = #13 then breceberclick(frmcontasreceber);
end;

procedure Tfrmcontasreceber.rselecaoChange(Sender: TObject);
begin
  IF RSELECAO.Value <> 0 THEN PSELECAO.VISIBLE := TRUE ELSE
  PSELECAO.VISIBLE := FALSE;
end;


procedure Tfrmcontasreceber.bfiltrarClick(Sender: TObject);
VAR SITUACAO : STRING;

          rvalorx,
          rJUROx,
          rTOTALx,
          roriginalx,
          rpagox : real;
          i,x : integer;
          texto : string;

begin

  lendereco.caption := frmmodulo.qrcliente.fieldbyname('endereco').asstring+' '+
                       frmmodulo.qrcliente.fieldbyname('bairro').asstring+' - '+
                       frmmodulo.qrcliente.fieldbyname('cidade').asstring+'/'+
                       frmmodulo.qrcliente.fieldbyname('uf').asstring;



  lcpf.caption := frmmodulo.qrcliente.fieldbyname('cpf').asstring;
  llimite.caption := formatfloat('###,###,##0.00',frmmodulo.qrcliente.fieldbyname('limite').asfloat);

  qrcr.Clear;


  IF COMBO_SITUACAO.ItemIndex = 0 THEN situacao := ' AND SITUACAO = 1 ';
  IF COMBO_SITUACAO.ItemIndex = 1 THEN situacao := ' AND SITUACAO = 1 AND DATA_VENCIMENTO <= :DATAX ';
  IF COMBO_SITUACAO.ItemIndex = 2 THEN situacao := ' AND SITUACAO = 2 ';
  IF COMBO_SITUACAO.ItemIndex = 3 then situacao := '';
  wwdbgrid1.datasource := nil;

    if (edit1.text <> '') then
    begin

        qrcontasreceber.close;
        qrcontasreceber.sql.clear;
        qrcontasreceber.sql.add('select * from c000049 where codcliente = '''+frmmodulo.qrcliente.fieldbyname('codigo').asstring+''''+situacao+' order by data_vencimento desc');
        IF COMBO_SITUACAO.ItemIndex = 1 THEN qrcontasreceber.Params.ParamByName('datax').asdatetime := date;
        qrcontasreceber.Open;


        qrcr.refresh;
        CRBatchMove1.Execute;
        qrcr.open;





        qrcontasreceber.first;
        if qrcontasreceber.RecordCount = 0 then
          begin
            if desbloqueia_cliente = 1 then
              begin
                FRMMODULO.QRCLIENTE.CLOSE;
                FRMMOdULO.QRCLIENTE.SQL.CLEAR;
                FRMMODULO.QRCLIENTe.SQL.ADD('select * from c000007 where codigo = '''+edit3.Text+'''');
                FRMMODULO.qrcliente.OPEN;
                if FRMMODULO.qrcliente.RecordCount = 1 then
                  begin
                    if FRMMODULO.qrcliente.FieldByName('SITUACAO').AsInteger = 3 then
                      begin
                        FRMMODULO.qrcliente.Edit;
                        FRMMODULO.qrcliente.FieldByName('SITUACAO').AsInteger := 1;
                        FRMMODULO.qrcliente.Post;
                        FRMMODULO.Conexao.Commit;
                      end;
                  end;
              end;
          end;





 //       QRCR.Open;



        roriginalx := 0;
        rpagox := 0;
        RVALORx := 0;
        RJUROx := 0;
        RTOTALx := 0;
        while not qrcontasreceber.eof do
        begin
    {     qrcr.Insert;
          qrcr.fieldbyname('FILTRO').AsINTEGER         := 0;
          qrcr.fieldbyname('DATA_EMISSAO').AsString    := qrcontasreceber.fieldbyname('DATA_EMISSAO').AsString;
          qrcr.fieldbyname('CODIGO').AsString          := qrcontasreceber.fieldbyname('CODIGO').ASSTRING;
          qrcr.fieldbyname('DATA_VENCIMENTO').AsString := qrcontasreceber.fieldbyname('DATA_VENCIMENTO').ASSTRING;
          qrcr.fieldbyname('DOCUMENTO').AsString       := qrcontasreceber.fieldbyname('DOCUMENTO').ASSTRING;
          qrcr.fieldbyname('VALOR_ORIGINAL').AsString  := qrcontasreceber.fieldbyname('VALOR_ORIGINAL').ASSTRING;
          qrcr.fieldbyname('VALOR_PAGO').AsString      := qrcontasreceber.fieldbyname('VALOR_PAGO').ASSTRING;
          qrcr.fieldbyname('VALOR_ATUAL').AsString     := qrcontasreceber.fieldbyname('VALOR_ATUAL').ASSTRING;
          qrcr.fieldbyname('CODCEDENTE').AsString      := qrcontasreceber.fieldbyname('CODCEDENTE').ASSTRING;
          qrcr.fieldbyname('TIPO').AsString            := qrcontasreceber.fieldbyname('TIPO').ASSTRING;
          qrcr.fieldbyname('VALOR_JUROS').AsString     := qrcontasreceber.fieldbyname('VALOR_JUROS').ASSTRING;
          qrcr.fieldbyname('DATA_PAGAMENTO').AsString  := qrcontasreceber.fieldbyname('DATA_PAGAMENTO').ASSTRING;
          qrcr.fieldbyname('CODVENDEDOR').AsString     := qrcontasreceber.fieldbyname('CODVENDEDOR').ASSTRING;
          qrcr.fieldbyname('CODCAIXA').AsString        := qrcontasreceber.fieldbyname('CODCAIXA').ASSTRING;
          qrcr.fieldbyname('CODCLIENTE').AsString      := qrcontasreceber.fieldbyname('CODCLIENTE').ASSTRING;
          qrcr.fieldbyname('VALOR_DESCONTO').AsString  := qrcontasreceber.fieldbyname('VALOR_DESCONTO').ASSTRING;
          qrcr.fieldbyname('SITUACAO').AsString        := qrcontasreceber.fieldbyname('SITUACAO').ASSTRING;
          qrcr.fieldbyname('CODVENDA').AsString        := qrcontasreceber.fieldbyname('CODVENDA').ASSTRING;
          qrcr.fieldbyname('NOSSONUMERO').AsString     := qrcontasreceber.fieldbyname('NOSSONUMERO').ASSTRING;
          qrcr.fieldbyname('CODREGIAO').AsString       := qrcontasreceber.fieldbyname('CODREGIAO').ASSTRING;
          qrcr.post;



     }
         



          rvalorx    := RVALORx    + qrcontasreceber.FIELDBYNAME('VALOR_ATUAL').AsFloat;
          rJUROx     := RJUROx     + qrcontasreceber.FIELDBYNAME('JUROS').AsFloat;
          rTOTALx    := RTOTALx    + qrcontasreceber.FIELDBYNAME('RESTANTE').AsFloat;
          roriginalx := Roriginalx + qrcontasreceber.FIELDBYNAME('valor_original').AsFloat;
          rpagox     := Rpagox     + qrcontasreceber.FIELDBYNAME('valor_pago').AsFloat;

           qrcontasreceber.next;
        end;

          rvalor.value    := RVALORx;
          rJURO.value     := RJUROx;
          rTOTAL.value    := RTOTALx;
          roriginal.value := Roriginalx;
          rpago.value     := Rpagox;


  
      //  qrcR.Refresh;

      qrcr.indexfieldnames := 'data_vencimento';




        rselecao.value := 0;
        total_juros    := 0;
        total_original  := 0;

        pselecao.visible := false;
        PAGEVIEW1.ActivePageIndex := 0;





    end
    else
    begin
    if (edit2.text <> '')  then
    begin
        qrcr.open;
        while qrcr.RecordCount <> 0 do qrcr.delete;
        qrcontasreceber.close;
        qrcontasreceber.sql.clear;
        i := pos(';',edit2.text);
        x := pos('/',edit2.text);
        if  (i+x) > 0 then
        begin
          if i > 0 then
          begin
            texto := edit2.text;
            delete(texto,i,1);
            insert('/',texto,i);
            edit2.text := texto;
          end;
          qrcontasreceber.sql.add('select * from c000049 where codigo = '''+edit2.text+''''+situacao+' order by data_vencimento');
        end
        else
          qrcontasreceber.sql.add('select * from c000049 where nossonumero like ''%'+edit2.text+'%'''+situacao+' order by data_vencimento');
        IF COMBO_SITUACAO.ItemIndex = 1 THEN qrcontasreceber.Params.ParamByName('datax').asdatetime := date;
        qrcontasreceber.Open;
        if qrcontasreceber.RecordCount > 0 then
        begin
          FRMMODULO.QRCLIENTE.CLOSE;
          FRMMOdULO.QRCLIENTE.SQL.CLEAR;
          FRMMODULO.QRCLIENTe.SQL.ADD('select * from c000007 where codigo = '''+qrcontasreceber.fieldbyname('codcliente').asstring+'''');
          FRMMODULO.qrcliente.OPEN;
          edit1.text := frmmodulo.qrcliente.fieldbyname('nome').asstring;
          edit3.text := frmmodulo.qrcliente.fieldbyname('codigo').asstring;


        qrcontasreceber.first;

        qrcr.refresh;
        CRBatchMove1.Execute;
        qrcr.open;





        roriginalx := 0;
        rpagox := 0;
        RVALORx := 0;
        RJUROx := 0;
        RTOTALx := 0;
        while not qrcontasreceber.eof do
        begin
      {    qrcr.Insert;
          qrcr.fieldbyname('FILTRO').AsINTEGER         := 0;
          qrcr.fieldbyname('DATA_EMISSAO').AsString    := qrcontasreceber.fieldbyname('DATA_EMISSAO').AsString;
          qrcr.fieldbyname('CODIGO').AsString          := qrcontasreceber.fieldbyname('CODIGO').ASSTRING;
          qrcr.fieldbyname('DATA_VENCIMENTO').AsString := qrcontasreceber.fieldbyname('DATA_VENCIMENTO').ASSTRING;
          qrcr.fieldbyname('DOCUMENTO').AsString       := qrcontasreceber.fieldbyname('DOCUMENTO').ASSTRING;
          qrcr.fieldbyname('VALOR_ORIGINAL').AsString  := qrcontasreceber.fieldbyname('VALOR_ORIGINAL').ASSTRING;
          qrcr.fieldbyname('VALOR_PAGO').AsString      := qrcontasreceber.fieldbyname('VALOR_PAGO').ASSTRING;
          qrcr.fieldbyname('VALOR_ATUAL').AsString     := qrcontasreceber.fieldbyname('VALOR_ATUAL').ASSTRING;
          qrcr.fieldbyname('CODCEDENTE').AsString      := qrcontasreceber.fieldbyname('CODCEDENTE').ASSTRING;
          qrcr.fieldbyname('TIPO').AsString            := qrcontasreceber.fieldbyname('TIPO').ASSTRING;
          qrcr.fieldbyname('VALOR_JUROS').AsString     := qrcontasreceber.fieldbyname('VALOR_JUROS').ASSTRING;
          qrcr.fieldbyname('DATA_PAGAMENTO').AsString  := qrcontasreceber.fieldbyname('DATA_PAGAMENTO').ASSTRING;
          qrcr.fieldbyname('CODVENDEDOR').AsString     := qrcontasreceber.fieldbyname('CODVENDEDOR').ASSTRING;
          qrcr.fieldbyname('CODCAIXA').AsString        := qrcontasreceber.fieldbyname('CODCAIXA').ASSTRING;
          qrcr.fieldbyname('CODCLIENTE').AsString      := qrcontasreceber.fieldbyname('CODCLIENTE').ASSTRING;
          qrcr.fieldbyname('VALOR_DESCONTO').AsString  := qrcontasreceber.fieldbyname('VALOR_DESCONTO').ASSTRING;
          qrcr.fieldbyname('SITUACAO').AsString        := qrcontasreceber.fieldbyname('SITUACAO').ASSTRING;
          qrcr.fieldbyname('CODVENDA').AsString        := qrcontasreceber.fieldbyname('CODVENDA').ASSTRING;
          qrcr.fieldbyname('NOSSONUMERO').AsString     := qrcontasreceber.fieldbyname('NOSSONUMERO').ASSTRING;
          qrcr.fieldbyname('CODREGIAO').AsString       := qrcontasreceber.fieldbyname('CODREGIAO').ASSTRING;
          qrcr.post;

       }   rvalorx := RVALORx + QRCONTASRECEBER.FIELDBYNAME('VALOR_ATUAL').AsFloat;
          rJUROx := RJUROx + QRCONTASRECEBER.FIELDBYNAME('JUROS').AsFloat;
          rTOTALx := RTOTALx + QRCONTASRECEBER.FIELDBYNAME('RESTANTE').AsFloat;
          roriginalx := Roriginalx + QRCONTASRECEBER.FIELDBYNAME('valor_original').AsFloat;
          rpagox := Rpagox + QRCONTASRECEBER.FIELDBYNAME('valor_pago').AsFloat;

           qrcontasreceber.next;
        end;

          rvalor.value := RVALORx;
          rJURO.value := RJUROx;
          rTOTAL.value := RTOTALx;
          roriginal.value := Roriginalx;
          rpago.value := Rpagox;


  //      qrcR.Refresh;




        rselecao.value := 0;
        total_juros    := 0;
        total_original  := 0;

        pselecao.visible := false;
        PAGEVIEW1.ActivePageIndex := 0;
        end
        else
        begin
          Application.messagebox('Boleto não encontrado!','Aviso',mb_ok+MB_ICONWARNING);
          edit2.setfocus;
        end;




    end;

    end;

    wwdbgrid1.datasource := dscontasreceber;
    wwdbgrid1.SetFocus;
end;

procedure Tfrmcontasreceber.bincluirClick(Sender: TObject);
begin
   if frmPrincipal.autentica_caixa('Incluir Conta',0) then
   begin
     frmcontasreceber_ficha := tfrmcontasreceber_ficha.create(self);
     qrcontasreceber.close;
     qrcontasreceber.sql.clear;
     qrcontasreceber.sql.add('select * from c000049 where codigo = ''nenhum''');
     qrcontasreceber.open;
     qrcontasreceber.Insert;
     frmcontasreceber_ficha.showmodal;
   end
   else
   begin
      APPLICATION.MESSAGEBOX('Não autorizado!','Aviso',mb_ok+MB_ICONERROR);
   end;
   edit1.SetFocus;
end;

procedure Tfrmcontasreceber.balterarClick(Sender: TObject);
begin
  if qrCR.RecordCount = 0 then
  begin
     application.messagebox('Não tem nenhuma conta selecionada!','Aviso',mb_ok+MB_ICONWARNING);
     exit;
  end;
  if qrCR.fieldbyname('situacao').asinteger <> 1 then
  begin
    application.messagebox('Esta conta não está em aberto! Impossível alterar.','Atenção',mb_ok+mb_iconwarning);
    exit;
  end;
  if qrCR.fieldbyname('valor_pago').asfloat <> 0 then
  begin
    application.messagebox('Esta conta possue lançamentos de pagamentos!','Atenção',mb_ok+mb_iconwarning);
    exit;
  end;



            if not frmPrincipal.autentica('Alterar Prestação',nivel_exclusao) then
            begin
              application.messagebox('Desculpe! Seu acesso não foi autorizado!','Aviso',mb_ok+MB_ICONERROR);
              exit;
            end
            else
            begin
              QRCONTASRECEBER.Close;
              QRCONTASRECEBER.SQL.CLEAR;
              QRCONTASRECEBER.SQL.Add('SELECT * FROM C000049 WHERE CODIGO = '''+QRCR.FIELDBYNAME('CODIGO').ASSTRING+'''');
              QRCONTASRECEBER.OPEN;

              frmcontasreceber_alterar := tfrmcontasreceber_alterar.create(self);
              qrcontasreceber.edit;

              frmcontasreceber_alterar.showmodal;
              bfiltrarClick(frmcontasreceber);
            end;

end;

procedure Tfrmcontasreceber.brenegociarClick(Sender: TObject);
begin
  if rselecao.value = 0 then wwDBGrid1DblClick(frmcontasreceber);


            if not frmPrincipal.autentica('Renegociar Prestações',3) then
            begin
              application.messagebox('Desculpe! Seu acesso não foi autorizado!','Aviso',mb_ok+MB_ICONERROR);
              exit;
            end
            else
            begin
              frmcontasreceber_renegociar := tfrmcontasreceber_renegociar.create(self);
              frmcontasreceber_renegociar.rvalor.value :=  rselecao.value - total_juros;
              frmcontasreceber_renegociar.rjuros.value :=  total_juros;
              frmcontasreceber_renegociar.ratualizado.value :=  rselecao.Value;
              frmcontasreceber_renegociar.rliquido.value :=  rselecao.Value;
              numero_venda := qrcr.fieldbyname('codvenda').asstring;
              codigo_vendedor := qrcr.fieldbyname('codvendedor').asstring;
              frmcontasreceber_renegociar.showmodal;
            end;




end;

procedure Tfrmcontasreceber.BitBtn1Click(Sender: TObject);
begin
            if not frmPrincipal.autentica('Alterar Juros',4) then
            begin
              application.messagebox('Desculpe! Seu acesso não foi autorizado!','Aviso',mb_ok+MB_ICONERROR);
              exit;
            end
            else
            begin
              frmcontasreceber_juros := tfrmcontasreceber_juros.create(self);
              frmcontasreceber_juros.showmodal;

              ltaxa.Caption := formatfloat('###,###,##0.00',juro_taxa)+'%';
              lmulta.Caption := formatfloat('###,###,##0.00',juro_multa)+'%';
              lcarencia.Caption := inttostr(juro_carencia)+' dia(s)';
              qrcontasreceber.Refresh;

              bfiltrarClick(frmcontasreceber);

            end;
end;

procedure Tfrmcontasreceber.Edit1Enter(Sender: TObject);
begin
  edit1.SelectAll;
  tedit(sender).color := $00A0FAF8;
end;

procedure Tfrmcontasreceber.Edit1Exit(Sender: TObject);
begin
 tedit(sender).color := clwindow;
end;

procedure Tfrmcontasreceber.Edit1KeyPress(Sender: TObject; var Key: Char);
var cli : string;
begin
  if key = #13 then
  begin
    cli := frmprincipal.zerarcodigo(eDIT1.text,6);
    if cli <> '000000' then
    begin
      FRMMODULO.QRCLIENTE.CLOSE;
      FRMMOdULO.QRCLIENTE.SQL.CLEAR;
      FRMMODULO.QRCLIENTe.SQL.ADD('select * from c000007 where codigo = '''+cli+''' order by nome');
      FRMMODULO.qrcliente.OPEN;
      IF FRMMODULO.qrcliente.RecNo = 1 THEN
      BEGIN
        edit1.text := frmmodulo.qrcliente.fieldbyname('nome').asstring;

        resultado_pesquisa1 := frmmodulo.qrcliente.fieldbyname('codigo').asstring;
        edit3.text := resultado_pesquisa1;
        bfiltrarClick(frmcontasreceber);
        exit;
      END;
    end;

    FRMMODULO.QRCLIENTE.CLOSE;
    FRMMOdULO.QRCLIENTE.SQL.CLEAR;
    FRMMODULO.QRCLIENTe.SQL.ADD('select * from c000007 where upper(nome) like '''+ANSIUPPERCASE(edit1.text)+'%'' order by nome');
    FRMMODULO.qrcliente.OPEN;
    if frmmodulo.qrcliente.recordcount > 0 then
    begin
      if frmmodulo.qrcliente.RecordCount = 1 then
      begin
        edit1.text := frmmodulo.qrcliente.fieldbyname('nome').asstring;
        edit3.Text := frmmodulo.qrcliente.fieldbyname('codigo').asstring;
        bfiltrarClick(frmcontasreceber);
        exit;
      end
      else
      begin
        parametro_pesquisa := frmmodulo.qrcliente.sql.text;
        frmXloc_cliente := tfrmXloc_cliente.create(self);
        frmXloc_cliente.showmodal;

        if resultado_pesquisa1 <> '' then
        begin
          edit1.text := RESULTADO_PESQUISA2;
          edit3.text := resultado_pesquisa1;

          FRMMODULO.QRCLIENTE.CLOSE;
          FRMMOdULO.QRCLIENTE.SQL.CLEAR;
          FRMMODULO.QRCLIENTe.SQL.ADD('select * from c000007 where codigo = '''+resultado_pesquisa1+'''');
          FRMMODULO.qrcliente.OPEN;

          bfiltrarClick(frmcontasreceber);
          exit;
        end;
      end;
   end
   else
   begin
      application.messagebox('Cliente não encontrado!','Atenção!', MB_OK+MB_ICONERROR);
      edit1.setfocus;
      exit;
    end;
  end;

end;

procedure Tfrmcontasreceber.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    if (edit2.Text = '') then edit1.setfocus else
    bfiltrarClick(frmcontasreceber);
  end;
end;

procedure Tfrmcontasreceber.DBText2Click(Sender: TObject);
begin
  if nossonumero_ok then
  begin
    qrcontasreceber.Edit;
    qrcontasreceber.fieldbyname('nossonumero').asstring := inputbox('Alterar Boleto','Informe o "Nosso Número":',dbtext2.Caption);
    qrcontasreceber.post;
    frmmodulo.Conexao.Commit;
  end
  else
  begin
     if frmPrincipal.autentica('Alterar Boleto',3) then
     begin
        nossonumero_ok := true;
        qrcontasreceber.Edit;
        qrcontasreceber.fieldbyname('nossonumero').asstring := inputbox('Alterar Boleto','Informe o "Nosso Número":',dbtext2.Caption);
        qrcontasreceber.post;
        frmmodulo.Conexao.Commit;
     end
     else
     begin
       nossonumero_ok := false;
     end;
  end;
end;

procedure Tfrmcontasreceber.DBEdit1Change(Sender: TObject);
begin
  IF DBEDIT1.Text = '' THEN FLATPANEL5.Color := CLBTNFACE ELSE FLATPANEL5.Color := $00A0FAF8;
end;

procedure Tfrmcontasreceber.brelatoriosClick(Sender: TObject);
begin
  frmcontasreceber_impressao := tfrmcontasreceber_impressao.create(self);
  frmcontasreceber_IMPRESSAO.showmodal;
end;

procedure Tfrmcontasreceber.edit1ButtonClick(Sender: TObject);
begin
  frmXloc_cliente := tfrmXloc_cliente.create(self);
  frmXloc_cliente.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
      edit1.text := resultado_pesquisa2;
      edit3.text := resultado_pesquisa1;
      FRMMODULO.QRCLIENTE.CLOSE;
      FRMMOdULO.QRCLIENTE.SQL.CLEAR;
      FRMMODULO.QRCLIENTe.SQL.ADD('select * from c000007 where codigo = '''+resultado_pesquisa1+'''');
      FRMMODULO.qrcliente.OPEN;
    bfiltrarClick(frmcontasreceber);
   end
   else
   begin
     edit1.setfocus;
   end;
end;

procedure Tfrmcontasreceber.button1Click(Sender: TObject);
begin
  ltaxa.Caption := formatfloat('###,###,##0.00',juro_taxa)+'%';
  lmulta.Caption := formatfloat('###,###,##0.00',juro_multa)+'%';
  lcarencia.Caption := inttostr(juro_carencia)+' dia(s)';


  plegenda.visible := true;
  bfechar_legenda.SetFocus;
end;

procedure Tfrmcontasreceber.Recebimentos1Click(Sender: TObject);
begin
pageview1.ActivePageIndex := 1;
end;

procedure Tfrmcontasreceber.AdvGlowButton2Click(Sender: TObject);
begin
  frmlista_receber2 := tfrmlista_receber2.create(self);
  frmlista_receber2.showmodal;
end;

procedure Tfrmcontasreceber.PageView1Change(Sender: TObject);
begin
  if pageview1.ActivePageIndex = 0 then
  begin


  end;
  if pageview1.ActivePageIndex = 1 then
  begin
    if qrcr.RecordCount = 0 then
    begin
     ptampa_recebimento.Visible := true;
     ptampa_recebimento.Caption := 'Não tem nenhuma conta selecionada!';
    end
    else
    begin
     qrcontasreceber_pgto.close;
     qrcontasreceber_pgto.SQL.Clear;
     qrcontasreceber_pgto.SQL.Add('select * from c000050 where CODCONTA = '''+copy(qrcr.fieldbyname('codigo').asstring,1,9)+''' and codcliente = '''+qrcr.fieldbyname('codcliente').asstring+''' order by data');
     qrcontasreceber_pgto.open;
     if qrcontasreceber_pgto.RecordCount = 0 then
     begin
       ptampa_recebimento.Visible := true;
       ptampa_recebimento.Caption := 'Esta conta não possue nenhum recebimento!';
     end
     else
       ptampa_recebimento.Visible := false;
    end;
  end;

  if pageview1.ActivePageIndex = 2 then
  begin
    if qrcr.RecordCount = 0 then
    begin
       ptampa_produto.Visible := true;
       ptampa_produto.Caption := 'Não tem nenhuma conta selecionada!';
       exit;
    end;

  try
    qrproduto_mov.close;
    qrproduto_mov.SQL.clear;
    qrproduto_mov.sql.add('select mov.*, pro.produto from c000032 mov, c000025 pro where mov.codproduto = pro.codigo and codnota = '''+qrcr.fieldbyname('codvenda').asstring+''' and movimento in (0,2,7,9) and codcliente = '''+qrcr.fieldbyname('codcliente').asstring+''' order by codigo');
    qrproduto_mov.open;




    qrservico.close;
    qrservico.SQL.clear;
    qrservico.sql.add('select * from c000053 where codos = '''+qrcr.fieldbyname('codvenda').asstring+''' and codcliente = '''+qrcr.fieldbyname('codcliente').asstring+'''');
    qrservico.open;
  except
       ptampa_produto.Visible := true;
       ptampa_produto.Caption := 'Houve erro no filtro! Verifique os Dados!';
       exit;
  end;

  end;
end;

procedure Tfrmcontasreceber.Produtos1Click(Sender: TObject);
begin
  pageview1.ActivePageIndex := 2;
end;

procedure Tfrmcontasreceber.combo_situacaoChange(Sender: TObject);
begin
  bfiltrarClick(frmcontasreceber);
end;

procedure Tfrmcontasreceber.RelaodeContas1Click(Sender: TObject);
begin
  pageview1.ActivePageIndex := 0;
end;

procedure Tfrmcontasreceber.Filtro1Click(Sender: TObject);
VAR X : INTEGER;
begin
  X := combo_situacao.Items.Count - 1;
  if combo_situacao.ItemIndex = x then
     combo_situacao.ItemIndex := 0
  else
     combo_situacao.ItemIndex := combo_situacao.ItemIndex + 1;

     combo_situacaoChange(frmcontasreceber);

end;

procedure Tfrmcontasreceber.edit2Enter(Sender: TObject);
begin
  edit1.text := '';
end;

procedure Tfrmcontasreceber.EmGrupo1Click(Sender: TObject);
begin
   if frmPrincipal.autentica_caixa('Incluir Conta',0) then
   begin
    frmcontasreceber_ficha_varios := tfrmcontasreceber_ficha_varios.create(self);
    frmcontasreceber_ficha_varios.showmodal;
   end
   else
   begin
      APPLICATION.MESSAGEBOX('Não autorizado!','Aviso',mb_ok+MB_ICONERROR);
   end;


end;

end.
