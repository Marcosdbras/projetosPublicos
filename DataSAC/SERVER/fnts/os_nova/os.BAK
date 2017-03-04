unit os;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ToolEdit, RXDBCtrl, StdCtrls, Mask, DBCtrls, ExtCtrls,
  TFlatPanelUnit, Buttons, Collection, wwdblook, ComCtrls, PageView,
  wwdbedit, Wwdotdot, Wwdbcomb, Grids, Wwdbigrd, Wwdbgrid, CurrEdit, DB,
  Menus, ZAbstractRODataset, ZDataset, ZAbstractDataset, Wwdbdlg, RpDefine,
  RpCon, RpConDS, AdvShapeButton, AdvGlowButton, RzEdit, RzDBEdit, RzDBBnEd,
  RxMemDS,maskutils, IBCustomDataSet, IBQuery;

type
  TfrmOS = class(TForm)
    PageView1: TPageView;
    PageSheet1: TPageSheet;
    PageSheet2: TPageSheet;
    PageSheet3: TPageSheet;
    PageSheet5: TPageSheet;
    GroupBox3: TGroupBox;
    DBDateEdit2: TDBDateEdit;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label16: TLabel;
    DBEdit4: TDBEdit;
    PageSheet7: TPageSheet;
    Label17: TLabel;
    DBEdit5: TDBEdit;
    Label18: TLabel;
    DBEdit6: TDBEdit;
    wwDBGrid2: TwwDBGrid;
    Label19: TLabel;
    DBEdit7: TDBEdit;
    Label20: TLabel;
    DBEdit8: TDBEdit;
    Label21: TLabel;
    DBEdit9: TDBEdit;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label35: TLabel;
    dsos: TDataSource;
    enometecnico: TDBEdit;
    PopupMenu1: TPopupMenu;
    Laudo1: TMenuItem;
    Servios1: TMenuItem;
    Produtos1: TMenuItem;
    Deslocamento1: TMenuItem;
    erceiros1: TMenuItem;
    Oramento1: TMenuItem;
    Cancelar1: TMenuItem;
    Cancelar2: TMenuItem;
    N1: TMenuItem;
    Panel1: TPanel;
    gconclusao: TGroupBox;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    DBDateEdit3: TDBDateEdit;
    DBDateEdit4: TDBDateEdit;
    DBEdit11: TDBEdit;
    enomesetor: TDBEdit;
    Label41: TLabel;
    dsos_servico: TDataSource;
    gridservico: TwwDBGrid;
    qros_servico: TZQuery;
    qros_servicoCODSERVICO: TStringField;
    qros_servicoCOMPLEMENTO: TStringField;
    qros_servicoVALOR: TFloatField;
    qros_servicoCODTECNICO: TStringField;
    qros_servicoDATA: TDateTimeField;
    qros_servicoSERVICO: TStringField;
    qros_servicoTECNICO: TStringField;
    COMBOSERVICO: TwwDBLookupCombo;
    ESERVICO: TwwDBEdit;
    qros_servicoCODOS: TStringField;
    qros_servicoCODCLIENTE: TStringField;
    N2: TMenuItem;
    ExcluirServio1: TMenuItem;
    combotecnico: TwwDBLookupComboDlg;
    dsos_produto: TDataSource;
    qrproduto_grade: TZQuery;
    qrproduto_gradeNUMERACAO: TStringField;
    qrproduto_gradeESTOQUE: TFloatField;
    qrproduto_gradeCOR: TStringField;
    qrproduto_gradeCODBARRA: TStringField;
    qrproduto_gradeCODIGO: TStringField;
    qrproduto_gradeCODPRODUTO: TStringField;
    qrproduto_serial: TZQuery;
    qrproduto_serialSERIAL: TStringField;
    qrproduto_serialNUMERONOTA: TStringField;
    qrproduto_serialESTOQUE: TFloatField;
    qrproduto_serialDATACOMPRA: TDateTimeField;
    qrproduto_serialPRECOCUSTO: TFloatField;
    qrproduto_serialPRECOVENDA: TFloatField;
    qrproduto_serialCLIENTE: TStringField;
    qrproduto_serialDATAVENDA: TDateTimeField;
    qrproduto_serialCODNOTA: TStringField;
    qrproduto_serialCODIGO: TStringField;
    qrproduto_serialCODPRODUTO: TStringField;
    qrproduto_serialCODCLIENTE: TStringField;
    qrproduto_serialSITUACAO: TIntegerField;
    qrproduto_serialCODITEM: TStringField;
    qrproduto_serialCODFORNECEDOR: TStringField;
    qrproduto_serialCODVENDA_ITEM: TStringField;
    qrproduto_serialFILTRO: TIntegerField;
    qrproduto_serialCODVENDA: TStringField;
    IncluirProduto1: TMenuItem;
    eveiculo: TDBEdit;
    blocveiculo: TBitBtn;
    enomeveiculo: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    qrOS_contasreceber: TZQuery;
    qrOS_contasreceberPRESTACAO: TIntegerField;
    qrOS_contasreceberVENCIMENTO: TDateTimeField;
    qrOS_contasreceberTIPO: TStringField;
    qrOS_contasreceberDOCUMENTO: TStringField;
    qrOS_contasreceberVALOR: TFloatField;
    Label43: TLabel;
    DBEdit18: TDBEdit;
    EDETECTADO: TDBMemo;
    dsservicos_periodicos: TDataSource;
    pgravar: TFlatPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    Panel2: TPanel;
    Label42: TLabel;
    RxDBCalcEdit1: TRxDBCalcEdit;
    Bevel1: TBevel;
    Bevel2: TBevel;
    FlatPanel2: TFlatPanel;
    Label1: TLabel;
    enomeatendente: TDBEdit;
    COMBOTIPO: TwwDBComboBox;
    AdvShapeButton1: TAdvShapeButton;
    Bevel5: TBevel;
    Bevel6: TBevel;
    Label46: TLabel;
    Bevel7: TBevel;
    DBText1: TDBText;
    DBText2: TDBText;
    Label2: TLabel;
    Label3: TLabel;
    eatendent: TRzDBButtonEdit;
    Label5: TLabel;
    Label6: TLabel;
    enomecliente: TDBEdit;
    DBEdit10: TDBEdit;
    ecliente: TRzDBButtonEdit;
    Panel3: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    combomarca: TwwDBLookupCombo;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    wwDBComboBox1: TwwDBComboBox;
    bperiodico: TComboBox;
    Bevel3: TBevel;
    Bevel8: TBevel;
    Label4: TLabel;
    AdvShapeButton2: TAdvShapeButton;
    Label47: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Bevel9: TBevel;
    Label48: TLabel;
    EDEFEITO: TDBMemo;
    EOBS: TDBMemo;
    Label49: TLabel;
    Bevel10: TBevel;
    combosituacao: TwwDBComboBox;
    Label50: TLabel;
    Bevel4: TBevel;
    EINTERVENCAO: TDBMemo;
    Label51: TLabel;
    bexcluir_servico: TAdvGlowButton;
    Bevel11: TBevel;
    Bevel12: TBevel;
    bincluir_produto: TAdvGlowButton;
    bexcluir_produto: TAdvGlowButton;
    eobs_terceiro: TDBMemo;
    Label33: TLabel;
    Label34: TLabel;
    eterceiro: TDBEdit;
    blocterceiro: TBitBtn;
    enometerceiro: TDBEdit;
    DBEdit20: TDBEdit;
    Label29: TLabel;
    etecnico: TRzDBButtonEdit;
    esetor: TRzDBButtonEdit;
    qros_produto: TRxMemoryData;
    qros_produtoCODPRODUTO: TStringField;
    qros_produtoUNIDADE: TStringField;
    qros_produtoCST: TStringField;
    qros_produtoSERIAL: TStringField;
    qros_produtoQTDE: TFloatField;
    qros_produtoUNITARIO: TFloatField;
    qros_produtoTOTAL: TFloatField;
    qros_produtoALIQUOTA: TFloatField;
    qros_produtoCODIGO: TStringField;
    qros_produtoCODNOTA: TStringField;
    qros_produtoICMS: TFloatField;
    qros_produtoIPI: TFloatField;
    qros_produtoCFOP: TStringField;
    qros_produtoDATA: TDateTimeField;
    qros_produtoNUMERONOTA: TStringField;
    qros_produtoCODCLIENTE: TStringField;
    qros_produtoDESCONTO: TFloatField;
    qros_produtoACRESCIMO: TFloatField;
    qros_produtoMOVIMENTO: TIntegerField;
    qros_produtoCODVENDEDOR: TStringField;
    qros_produtoCODGRADE: TStringField;
    qros_produtoMOVIMENTO_ESTOQUE: TFloatField;
    qrproduto: TZQuery;
    query: TZQuery;
    qros_produtoproduto: TStringField;
    PESTOQUE: TPanel;
    Bevel13: TBevel;
    Bevel14: TBevel;
    restoque: TCheckBox;
    bdias: TRxCalcEdit;
    Label30: TLabel;
    qrOS_contasreceberTERMINAL: TStringField;
    qrcontasreceber: TZQuery;
    qrcliente: TZQuery;
    qrclienteCODIGO: TIBStringField;
    qrclienteNOME: TIBStringField;
    qrclienteAPELIDO: TIBStringField;
    qrclienteENDERECO: TIBStringField;
    qrclienteBAIRRO: TIBStringField;
    qrclienteCIDADE: TIBStringField;
    qrclienteUF: TIBStringField;
    qrclienteCEP: TIBStringField;
    qrclienteCOMPLEMENTO: TIBStringField;
    qrclienteMORADIA: TIntegerField;
    qrclienteTIPO: TIntegerField;
    qrclienteSITUACAO: TIntegerField;
    qrclienteTELEFONE1: TIBStringField;
    qrclienteTELEFONE2: TIBStringField;
    qrclienteTELEFONE3: TIBStringField;
    qrclienteCELULAR: TIBStringField;
    qrclienteEMAIL: TIBStringField;
    qrclienteRG: TIBStringField;
    qrclienteCPF: TIBStringField;
    qrclienteFILIACAO: TIBStringField;
    qrclienteESTADOCIVIL: TIBStringField;
    qrclienteCONJUGE: TIBStringField;
    qrclientePROFISSAO: TIBStringField;
    qrclienteEMPRESA: TIBStringField;
    qrclienteRENDA: TFloatField;
    qrclienteLIMITE: TFloatField;
    qrclienteREF1: TIBStringField;
    qrclienteREF2: TIBStringField;
    qrclienteCODVENDEDOR: TIBStringField;
    qrclienteDATA_CADASTRO: TDateTimeField;
    qrclienteDATA_ULTIMACOMPRA: TDateTimeField;
    qrclienteOBS1: TIBStringField;
    qrclienteOBS2: TIBStringField;
    qrclienteOBS3: TIBStringField;
    qrclienteOBS4: TIBStringField;
    qrclienteOBS5: TIBStringField;
    qrclienteOBS6: TIBStringField;
    qrclienteNASCIMENTO: TIBStringField;
    qrclienteCODREGIAO: TIBStringField;
    qrclienteCODCONVENIO: TIBStringField;
    qrclienteCODUSUARIO: TIBStringField;
    qrclienteSEXO: TIBStringField;
    qrclienteHISTORICO: TBlobField;
    qrclientePREVISAO: TDateTimeField;
    qrclienteCOD_MUNICIPIO_IBGE: TIBStringField;
    procedure DBDateEdit1Exit(Sender: TObject);
    procedure DBDateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure EVENDEDOREnter(Sender: TObject);
    procedure EVENDEDORExit(Sender: TObject);
    procedure eatendentExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure eatendentEnter(Sender: TObject);
    procedure rinternaKeyPress(Sender: TObject; var Key: Char);
    procedure rexternaKeyPress(Sender: TObject; var Key: Char);
    procedure eclienteExit(Sender: TObject);
    procedure DBEdit10Enter(Sender: TObject);
    procedure DBEdit10Exit(Sender: TObject);
    procedure DBEdit10KeyPress(Sender: TObject; var Key: Char);
    procedure ravulsoKeyPress(Sender: TObject; var Key: Char);
    procedure combomarcaEnter(Sender: TObject);
    procedure combomarcaExit(Sender: TObject);
    procedure edefeitoEnter(Sender: TObject);
    procedure edefeitoExit(Sender: TObject);
    procedure eobsEnter(Sender: TObject);
    procedure eobsExit(Sender: TObject);
    procedure DBDateEdit2Enter(Sender: TObject);
    procedure DBDateEdit2Exit(Sender: TObject);
    procedure etecnicoExit(Sender: TObject);
    procedure edetectadoEnter(Sender: TObject);
    procedure edetectadoExit(Sender: TObject);
    procedure combosituacaoExit(Sender: TObject);
    procedure wwDBComboBox1Enter(Sender: TObject);
    procedure eintervencaoEnter(Sender: TObject);
    procedure eintervencaoExit(Sender: TObject);
    procedure BCANCELARClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Laudo1Click(Sender: TObject);
    procedure combosituacaoEnter(Sender: TObject);
    procedure BGRAVARClick(Sender: TObject);
    procedure esetorExit(Sender: TObject);
    procedure combosituacaoKeyPress(Sender: TObject; var Key: Char);
    procedure combosituacaoChange(Sender: TObject);
    procedure DBEdit11KeyPress(Sender: TObject; var Key: Char);
    procedure etecnicoEnter(Sender: TObject);
    procedure ESERVICOButtonClick(Sender: TObject);
    procedure qros_servicoBeforePost(DataSet: TDataSet);
    procedure bexcluir_servicoClick(Sender: TObject);
    procedure Servios1Click(Sender: TObject);
    procedure qros_servicoBeforeEdit(DataSet: TDataSet);
    procedure qros_servicoBeforeInsert(DataSet: TDataSet);
    procedure qros_servicoAfterPost(DataSet: TDataSet);
    procedure ExcluirServio1Click(Sender: TObject);
    procedure COMBOSERVICOExit(Sender: TObject);
    procedure ESERVICOExit(Sender: TObject);
    procedure combotecnicoExit(Sender: TObject);
    procedure qros_servicoPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure PageView1Change(Sender: TObject);
    procedure bincluir_produtoClick(Sender: TObject);
    procedure DBEdit6Enter(Sender: TObject);
    procedure DBEdit6Exit(Sender: TObject);
    procedure DBEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit8KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit8Enter(Sender: TObject);
    procedure DBEdit8Exit(Sender: TObject);
    procedure bexcluir_produtoClick(Sender: TObject);
    procedure IncluirProduto1Click(Sender: TObject);
    procedure eveiculoEnter(Sender: TObject);
    procedure eveiculoExit(Sender: TObject);
    procedure blocveiculoClick(Sender: TObject);
    procedure DBEdit16KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit14Exit(Sender: TObject);
    procedure Deslocamento1Click(Sender: TObject);
    procedure Produtos1Click(Sender: TObject);
    procedure esetorEnter(Sender: TObject);
    procedure eterceiroExit(Sender: TObject);
    procedure blocterceiroClick(Sender: TObject);
    procedure eobs_terceiroEnter(Sender: TObject);
    procedure eobs_terceiroExit(Sender: TObject);
    procedure DBEdit21Exit(Sender: TObject);
    procedure DBEdit22Exit(Sender: TObject);
    procedure erceiros1Click(Sender: TObject);
    procedure DBEdit9Change(Sender: TObject);
    procedure DBEdit4Change(Sender: TObject);
    procedure DBEdit17Change(Sender: TObject);
    procedure DBEdit23Change(Sender: TObject);
    procedure qrOS_contasreceberBeforeEdit(DataSet: TDataSet);
    procedure qrOS_contasreceberBeforeInsert(DataSet: TDataSet);
    procedure DBDateEdit3Enter(Sender: TObject);
    procedure edefeitoKeyPress(Sender: TObject; var Key: Char);
    procedure eobsKeyPress(Sender: TObject; var Key: Char);
    procedure edetectadoKeyPress(Sender: TObject; var Key: Char);
    procedure COMBOTIPOEnter(Sender: TObject);
    procedure COMBOTIPOExit(Sender: TObject);
    procedure COMBOTIPOKeyPress(Sender: TObject; var Key: Char);
    procedure wwDBComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure gridservicoExit(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure eatendentButtonClick(Sender: TObject);
    procedure eatendentKeyPress(Sender: TObject; var Key: Char);
    procedure eclienteButtonClick(Sender: TObject);
    procedure etecnicoKeyPress(Sender: TObject; var Key: Char);
    procedure etecnicoButtonClick(Sender: TObject);
    procedure esetorButtonClick(Sender: TObject);
    procedure bperiodicoKeyPress(Sender: TObject; var Key: Char);
    procedure restoqueClick(Sender: TObject);
    procedure qrOS_contasreceberBeforePost(DataSet: TDataSet);
    procedure DBEdit18Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOS: TfrmOS;
  valor_anterior : real;
  selecionado : boolean;
  FINALIZADO : BOOLEAN;
  lancando_contasreceber : boolean;
  valor_prestacao : real;
  continuar : boolean;
    cupom_fiscal : boolean;
      item_excluido, item : integer;
      excluidos : ARRAY [1..100] OF STRING;
      numero_terminal : string;


implementation

uses modulo, locvendedor, principal,  loc_setor,
  loc_veiculo, os_item_2, xloc_cliente, os_servicosperiodicos,
  loc_fornecedor;

{$R *.dfm}

// -------------------------------------------------------------------------- //
procedure TfrmOS.DBDateEdit1Exit(Sender: TObject);
begin
    tedit(SENDER).color := clwindow;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOS.DBDateEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

// -------------------------------------------------------------------------- //
procedure TfrmOS.EVENDEDOREnter(Sender: TObject);
begin
  tedit(SENDER).color := $00A0FAF8;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOS.EVENDEDORExit(Sender: TObject);
begin
  tedit(SENDER).color := clwindow;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOS.eatendentExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  IF (frmmodulo.qros.state = dsinsert) or (frmmodulo.qros.State = dsedit) then
  begin
    frmmodulo.qros.fieldbyname('codatendente').asstring := frmprincipal.zerarcodigo(eatendent.text,6);

    if eatendent.text <> '000000' then
    begin
      with frmmodulo do
      begin
        qrfunci.close;
        qrfunci.sql.clear;
        qrfunci.sql.add('select * from c000008 where situacao = 1');
        qrfunci.sql.add('and codigo = '''+eAtendent.text+'''');
        qrfunci.open;
      end;
      if frmmodulo.qrfunci.recordcount = 0 then
      BEGIN
        eatendentButtonClick(frmos);
      END
      else
      begin
        COMBOTIPO.SETFOCUS;
      end;
    end
    else
      eatendentButtonClick(frmos);
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOS.FormShow(Sender: TObject);
begin
   FINALIZADO := FALSE;

    frmmodulo.qrconfig.open;
    numero_terminal := registro_terminal;
    if numero_terminal = '' then
    begin
      application.messagebox('Não foi configurado o número do terminal! Esta venda será finalizada!','Erro',mb_ok+mb_iconerror);
      close;
      exit;
    end;


    qrOS_contasreceber.close;
    qrOS_contasreceber.sql.clear;
    qrOS_contasreceber.SQL.Add('delete from cl00002 where terminal = '''+numero_terminal+'''');
    qrOS_contasreceber.ExecSQL;


   frmmodulo.qrveiculo.close;
   frmmodulo.qrveiculo.sql.clear;
   frmmodulo.qrveiculo.sql.add('select * from c000054 order by nome');
   frmmodulo.qrveiculo.open;
   frmmodulo.qrveiculo.IndexFieldNames := 'nome';

   frmmodulo.qrcliente.close;
   frmmodulo.qrcliente.sql.clear;
   frmmodulo.qrcliente.sql.add('select * from c000007 order by nome');
   frmmodulo.qrcliente.open;
   frmmodulo.qrcliente.indexfieldnames := 'nome';

   frmmodulo.qrmarca.Close;
   frmmodulo.qrmarca.sql.clear;
   frmmodulo.qrmarca.sql.add('select * from c000019 order by NOME');
   frmmodulo.qrmarca.open;
   frmmodulo.qrmarca.indexfieldnames := 'nome';


   frmmodulo.qrfunci.close;
   frmmodulo.qrfunci.sql.clear;
   frmmodulo.qrfunci.sql.add('select * from c000008 WHERE SITUACAO=1 order by nome');
   frmmodulo.qrfunci.open;
   frmmodulo.qrfunci.indexfieldnames := 'nome';

   frmmodulo.qrsetor.close;
   frmmodulo.qrsetor.sql.clear;
   frmmodulo.qrsetor.SQL.add('select * from c000052 order by setor');
   frmmodulo.qrsetor.open;
   frmmodulo.qrsetor.indexfieldnames := 'setor';

   frmmodulo.qrservico.Close;
   frmmodulo.qrservico.sql.clear;
   frmmodulo.qrservico.SQL.Add('select * from c000011 order by servico');
   frmmodulo.qrservico.open;
   frmmodulo.qrservico.indexfieldnames := 'servico';

   query.close;
   query.sql.clear;
   query.sql.add('select * from c000032 where codnota = '''+frmmodulo.qros.fieldbyname('codigo').asstring+''' and movimento = 9');
   query.open;
   query.first;
   qros_produto.Open;

   while qros_produto.RecordCount <> 0 do qros_produto.delete;
   while not query.eof do
   begin
     qrproduto.close;
     qrproduto.sql.clear;
     qrproduto.sql.add('select * from c000025 where codigo = '''+query.fieldbyname('codproduto').asstring+'''');
     qrproduto.open;
     qros_produto.insert;
     qros_produto.fieldbyname('codigo').asstring     := query.fieldbyname('codigo').asstring;
     qros_produto.fieldbyname('codproduto').asstring := query.fieldbyname('codproduto').asstring;
     qros_produto.fieldbyname('produto').asstring    := qrproduto.fieldbyname('produto').asstring;
     qros_produto.fieldbyname('unidade').asstring    := query.fieldbyname('unidade').asstring;
     qros_produto.fieldbyname('cst').asstring        := query.fieldbyname('cst').asstring;
     qros_produto.fieldbyname('serial').asstring     := query.fieldbyname('serial').asstring;
     qros_produto.fieldbyname('qtde').asfloat        := query.fieldbyname('qtde').asfloat;
     qros_produto.fieldbyname('unitario').asfloat    := query.fieldbyname('unitario').asfloat;
     qros_produto.fieldbyname('total').asfloat       := query.fieldbyname('total').asfloat;
     qros_produto.fieldbyname('aliquota').asfloat    := query.fieldbyname('aliquota').asfloat;
     qros_produto.FieldByName('desconto').asfloat    := query.fieldbyname('desconto').asfloat;
     qros_produto.fieldbyname('serial').asstring     := query.fieldbyname('serial').asstring;
     qros_produto.fieldbyname('codgrade').asstring   := query.fieldbyname('codgrade').asstring;
     qros_produto.fieldbyname('codcliente').asstring := 'OK';
     qros_produto.post;
     query.next;
   end;
   item_excluido := 0;


   if frmmodulo.qros.State = dsinsert then restoque.checked := true;
   if frmmodulo.qros.State = dsedit then
   begin
      if frmmodulo.qros.fieldbyname('cor').AsString =  'NAO' then
      restoque.Checked := false else restoque.Checked := true;
      restoque.Enabled := false;
   end;

   qros_servico.close;
   qros_servico.sql.clear;
   qros_servico.sql.add('select * from c000053 where codos = '''+frmmodulo.qros.fieldbyname('codigo').asstring+'''');
   qros_servico.open;

  frmmodulo.qrservicos_periodicos.close;
  frmmodulo.qrservicos_periodicos.sql.clear;
  frmmodulo.qrservicos_periodicos.sql.add('select * from servicos_periodicos where codcliente = '''+frmmodulo.qros.fieldbyname('codcliente').asstring+''' and ');
  frmmodulo.qrservicos_periodicos.sql.add('marca  = '''+frmmodulo.qros.fieldbyname('marca').asstring+''' and ');
  frmmodulo.qrservicos_periodicos.sql.add('modelo = '''+frmmodulo.qros.fieldbyname('modelo').asstring+''' and ');
  frmmodulo.qrservicos_periodicos.sql.add('serie  = '''+frmmodulo.qros.fieldbyname('serial').asstring+'''');
  frmmodulo.qrservicos_periodicos.open;

  if frmmodulo.qrservicos_periodicos.RecordCount > 0 then
  begin
     bperiodico.ItemIndex := 0;
     bdias.Value := frmmodulo.qrservicos_periodicosPERIODO.AsInteger;
  end;

  pageview1.ActivePageIndex := 0;

  if frmmodulo.qros.State = dsinsert then
    eatendent.setfocus
  else
    dbdateedit2.setfocus;

end;

// -------------------------------------------------------------------------- //
procedure TfrmOS.eatendentEnter(Sender: TObject);
begin
   TEDIT(SENDER).Color := $00A0FAF8;
   frmmodulo.qrfunci.close;
   frmmodulo.qrfunci.sql.clear;
   frmmodulo.qrfunci.sql.add('select * from c000008 WHERE SITUACAO=1 order by nome');
   frmmodulo.qrfunci.open;
   frmmodulo.qrfunci.indexfieldnames := 'nome';

end;

// -------------------------------------------------------------------------- //
procedure TfrmOS.rinternaKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then ecliente.setfocus;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOS.rexternaKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then ecliente.setfocus;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOS.eclienteExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  IF (frmmodulo.qros.state = dsinsert) or (frmmodulo.qros.State = dsedit) then
  begin
    frmmodulo.qros.fieldbyname('codcliente').asstring := frmprincipal.zerarcodigo(ecliente.text,6);
    if ecliente.text <> '000000' then
    begin
      if not frmprincipal.Locregistro(frmmodulo.qrcliente,ecliente.text,'codigo') then
        eclientebuttonclick(Frmos)
      else
      begin
         IF DBEDIT10.TEXT = '' THEN FRMMODULO.QROS.FieldByName('SOLICITANTE').ASSTRING := 'O MESMO';
         dbedit10.setfocus;
      end;
    end
    else
      eclientebuttonclick(Frmos);
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOS.DBEdit10Enter(Sender: TObject);
begin
  tedit(Sender).color := $00A0FAF8;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOS.DBEdit10Exit(Sender: TObject);
begin
  tedit(Sender).color := clwindow;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOS.DBEdit10KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then combomarca.setfocus;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOS.ravulsoKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then edefeito.setfocus;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOS.combomarcaEnter(Sender: TObject);
begin
  tedit(sender).color := $00A0FAF8;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOS.combomarcaExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOS.edefeitoEnter(Sender: TObject);
begin
  edefeito.Color := $00A0FAF8;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOS.edefeitoExit(Sender: TObject);
Begin
  edefeito.Color := clwindow;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOS.eobsEnter(Sender: TObject);
begin
  eobs.Color := $00A0FAF8;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOS.eobsExit(Sender: TObject);
begin
  eObS.Color := clwindow;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOS.DBDateEdit2Enter(Sender: TObject);
begin
  tedit(sender).color := $00A0FAF8;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOS.DBDateEdit2Exit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOS.etecnicoExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  IF (frmmodulo.qros.state = dsinsert) or (frmmodulo.qros.State = dsedit) then
  begin

     frmmodulo.qrfunci.close;
     frmmodulo.qrfunci.sql.clear;
     frmmodulo.qrfunci.sql.add('select * from c000008 WHERE SITUACAO = 1 AND F_TECNICO = 1 order by nome');
     frmmodulo.qrfunci.open;

    frmmodulo.qros.fieldbyname('DETECTADO_CODTECNICO').asstring := frmprincipal.zerarcodigo(etecnico.text,6);
    if etecnico.text <> '000000' then
    begin

      if not frmprincipal.Locregistro(frmmodulo.qrfunci,etecnico.text,'codigo') then
        etecnicobuttonclick(Frmos)
      else
      begin
        esetor.setfocus;
      end;
    end
    else
     etecnicobuttonclick(Frmos);
  end;



     frmmodulo.qrfunci.close;
     frmmodulo.qrfunci.sql.clear;
     frmmodulo.qrfunci.sql.add('select * from c000008 WHERE SITUACAO = 1');
     frmmodulo.qrfunci.open;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOS.edetectadoEnter(Sender: TObject);
begin
  edetectado.Color := $00A0FAF8;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOS.edetectadoExit(Sender: TObject);
begin
  edetectado.Color := clwindow;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOS.combosituacaoExit(Sender: TObject);
begin
  combosituacao.Color := clwindow;
  if combosituacao.Text = 'FECHADA' then
  gconclusao.Visible := true else gconclusao.Visible := false;



end;

// -------------------------------------------------------------------------- //
procedure TfrmOS.wwDBComboBox1Enter(Sender: TObject);
begin
  edetectado.Color := $00A0FAF8;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOS.eintervencaoEnter(Sender: TObject);
begin
  eintervencao.Color := $00A0FAF8;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOS.eintervencaoExit(Sender: TObject);
begin
  eintervencao.Color := clwindow;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOS.BCANCELARClick(Sender: TObject);
begin
  if bcancelar.caption = 'Fechar' then
  begin
    FRMMODULO.QRCLIENTE.Locate('CODIGO',FRMMODULO.QROS.FIELDBYNAME('CODCLIENTE').ASSTRING,[loCaseInsensitive]);
//    frmos_impressao := tfrmos_impressao.create(self);
//    frmos_impressao.showmodal;
    finalizado := false;
    close;
  end
  else
  begin
    IF APPLICATION.MESSAGEBOX('Tem certeza que deseja cancelar esta Ordem de Serviço?','Atenção!',mb_yesno+MB_ICONWARNING+MB_DEFBUTTON2) = IDYES THEN
    BEGIN
      IF (FRMMODULO.QROS.State = DSINSERT) OR (FRMMODULO.qros.State = DSEDIT) THEN
      begin
        frmmodulo.qros.cancel;
        frmmodulo.Conexao.Rollback;
        FINALIZADO := TRUE;
      end;
      close;
    END;
  end;
  
end;

// -------------------------------------------------------------------------- //
procedure TfrmOS.FormClose(Sender: TObject; var Action: TCloseAction);
begin




  IF NOT FINALIZADO THEN
  BEGIN
    IF (FRMMODULO.QROS.State = DSINSERT) OR (FRMMODULO.qros.State = DSEDIT) THEN
       FRMMODULO.QROS.Cancel;
  end;
    FRMMODULO.Conexao.commit;
    frmmodulo.conexaolocal.commit;


  action := cafree;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOS.Laudo1Click(Sender: TObject);
begin
  PageView1.ActivePageindex := 0;
  dbdateedit2.setfocus;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOS.combosituacaoEnter(Sender: TObject);
begin
  combosituacao.Color := $00A0FAF8;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOS.BGRAVARClick(Sender: TObject);
var
  vstatus : string;
  continua : string;
  i : integer;

  texto : pansichar;
  Data: TDateTime;
  dia, mes, ano: Word;
  dias : integer;
  vlimite : double;

begin

  if ecliente.Text <> '' then
    begin
      qrcliente.close;
      qrcliente.sql.clear;
      qrcliente.sql.add('select * from c000007 where codigo = '''+ecliente.text+'''');
      qrcliente.open;
    end;


  ///  aqui


  qrcontasreceber.close;
  qrcontasreceber.sql.clear;
  qrcontasreceber.sql.add('select codcliente,situacao,data_vencimento,SUM(VALOR_ATUAL) TOTAL_CLIENTE from c000049 where codcliente = '''+ecliente.Text+''' and situacao = 1');
  qrcontasreceber.sql.add('GROUP BY codcliente,situacao,DATA_VENCIMENTO');
  qrcontasreceber.Open;

  (*  VERIFICAR QUANTO AINDA TEM DE LIMITE *)
  vlimite := 0;
  qrcontasreceber.first;
  while not qrcontasreceber.Eof do
  begin
    vlimite := vlimite + qrcontasreceber.fieldbyname('total_cliente').AsFloat;
    qrcontasreceber.Next;
  end;


  (* VERIFICAR SE HA PRESTACOES EM ATRAZO *)
  qrcontasreceber.First;
  if verifica_prestacao_atrazo = '1' then
  begin
    while not qrcontasreceber.Eof do
    begin
      dias := trunc(date - qrcontasreceber.fieldbyname('data_vencimento').asdatetime);
      if dias >= frmmodulo.qrconfig.FieldByName('contasreceber_bloqueio').AsInteger then
      begin
        texto := pansichar('Cliente com Prestação vencida a ' + inttostr(dias)+' Dias!, Deseja continuar?');
        if application.MessageBox(texto,'Atenção',mb_yesno+MB_ICONWARNING) = idyes then
        begin
          if not frmPrincipal.autentica('Liberar venda',3) then
          begin
            application.messagebox('Desculpe! Seu acesso não foi autorizado!','Aviso',mb_ok+MB_ICONERROR);
            ECLIENTE.SetFocus;
            exit;
          end;
        end
        else
        begin
          ECLIENTE.SetFocus;
          exit;
        end;
        Break;
      end;
      qrcontasreceber.Next;
    end;
  end;


  case qrcliente.FieldByName('situacao').asinteger of

  2 : begin // em observacao
        texto := pansichar('Cliente com Crédito em Observação:'+#13+
                           qrcliente.fieldbyname('obs1').asstring+#13+
                           qrcliente.fieldbyname('obs2').asstring+#13+
                           qrcliente.fieldbyname('obs3').asstring+#13+
                           qrcliente.fieldbyname('obs4').asstring+#13+
                           'Deseja continuar?');
        if application.MessageBox(texto,'Atenção',mb_yesno+MB_ICONWARNING) = idyes then
          begin
            if not frmPrincipal.autentica('Liberar venda',3) then
            begin
              application.messagebox('Desculpe! Seu acesso não foi autorizado!','Aviso',mb_ok+MB_ICONERROR);
              ECLIENTE.SetFocus;
             exit;
            end;
          end
        else
          begin
            ECLIENTE.setfocus;
            exit;
          end;

      end;



  3 : begin // bloqueado

        texto := pansichar('Cliente com crédito Bloqueado!, Deseja continuar?');
        if application.MessageBox(texto,'Atenção',mb_yesno+MB_ICONWARNING) = idyes then
          begin
            if not frmPrincipal.autentica('Liberar venda',4) then
            begin
              application.messagebox('Desculpe! Seu acesso não foi autorizado!','Aviso',mb_ok+MB_ICONERROR);
              ECLIENTE.SetFocus;
             exit;
            end;
          end
        else
          begin
            ECLIENTE.setfocus;
            exit;
          end;

      end;
  4 : begin // inativo
        texto := pansichar('Cliente INATIVO!, Deseja continuar?');
        if application.MessageBox(texto,'Atenção',mb_yesno+MB_ICONWARNING) = idyes then
          begin
            if not frmPrincipal.autentica('Liberar venda',3) then
            begin
              application.messagebox('Desculpe! Seu acesso não foi autorizado!','Aviso',mb_ok+MB_ICONERROR);
              ECLIENTE.SetFocus;
             exit;
            end;
          end
        else
          begin
            ECLIENTE.setfocus;
            exit;
          end;

      end;
  5 : begin // spc
        application.messagebox('Desculpe! Cliente no SPC, Verifique!','Aviso',mb_ok+MB_ICONEXCLAMATION);
        ECLIENTE.SetFocus;
        exit;

      end;
  end;

  limite_disponivel := qrcliente.FIELDBYNAME('LIMITE').ASFLOAT - vlimite;


     if qrcliente.FIELDBYNAME('LIMITE').ASFLOAT <> 0 then
     begin
       IF limite_disponivel <= 0 THEN
       BEGIN
         texto := pansichar('Este cliente possue um limite disponível de:'+#13+' ---> R$ '+formatfloat('###,###,##0.00',(qrcliente.FIELDBYNAME('LIMITE').ASFLOAT - vlimite))+'  <--- '+#13+'É necessário autorização para prosseguir! '+#13+'Deseja continuar?');
         if application.MessageBox(texto,'Atenção',mb_yesno+MB_ICONWARNING) = idyes then
         begin
           if not frmPrincipal.autentica('Liberar venda',3) then
           begin
             application.messagebox('Desculpe! Seu acesso não foi autorizado!','Aviso',mb_ok+MB_ICONERROR);
             ECLIENTE.SetFocus;
             exit;
           end;
         end
         else
         begin
           ECLIENTE.SetFocus;
           exit;
         end;
       END;
     END;


  //aqui


  IF NOT BGRAVAR.Visible THEN EXIT;

  if frmmodulo.qros.FieldByName('CODATENDENTE').asstring = '' then
  begin
    showmessage('Não foi informado o atendente!');
    ecliente.setfocus;
    exit;
  end;


  if frmmodulo.qros.FieldByName('codcliente').asstring = '' then
  begin
    showmessage('Não foi informado o cliente!');
    ecliente.setfocus;
    exit;
  end
  else
  begin
    frmmodulo.qrcliente.locate('codigo',frmmodulo.qros.fieldbyname('codcliente').asstring,[locaseinsensitive]);
  end;

  // ***** produtos excluidos

    for i := 1 to 100 do
    begin
      if excluidos[i] <> '' then
      begin
        query.close;
        query.sql.clear;
        query.sql.add('delete from c000032 where codigo = '''+excluidos[i]+'''');
        query.execsql;
        frmmodulo.conexao.commit;
      end;
    end;

  // ************ lancar produtos no movimento ************* ///

  qros_produto.first;
  while not qros_produto.eof do
  begin
    query.close;
    query.sql.clear;
    query.sql.add('select * from c000032 where codigo = '''+qros_produto.fieldbyname('codigo').asstring+'''');
    query.open;

    repeat
      try
        continua := 'ok';
        if query.RecordCount > 0 then
        begin
          query.edit;
          query.FieldByName('codigo').asstring      := qros_produto.FieldByName('codigo').asstring;
          query.FieldByName('codproduto').asstring  := qros_produto.FieldByName('codproduto').asstring;
          query.FieldByName('unidade').asstring     := qros_produto.FieldByName('unidade').asstring;
          query.FieldByName('ALIQUOTA').asFLOAT     := qros_produto.FieldByName('aliquota').asfloat;
          query.FieldByName('CST').asSTRING         := qros_produto.FieldByName('cst').asstring;
          query.FieldByName('qtde').asfloat         := qros_produto.FieldByName('qtde').asfloat;
          query.FieldByName('unitario').asfloat     := qros_produto.FieldByName('unitario').asfloat;
          query.FieldByName('total').asfloat        := qros_produto.FieldByName('total').asfloat;
          query.FieldByName('desconto').asfloat     := qros_produto.FieldByName('desconto').asfloat;


          query.fieldbyname('codnota').asstring     := frmmodulo.qros.fieldbyname('codigo').asstring;
          query.fieldbyname('data').asstring        := frmmodulo.qros.fieldbyname('data').asstring;
          query.fieldbyname('codcliente').asstring  := frmmodulo.qros.fieldbyname('codcliente').asstring;
          query.fieldbyname('codvendedor').asstring := frmmodulo.qros.fieldbyname('codatendente').asstring;
          query.fieldbyname('serial').asstring      := qros_produto.fieldbyname('serial').asstring;
          query.fieldbyname('codgrade').asstring    := qros_produto.fieldbyname('codgrade').asstring;
          if restoque.Checked then
          begin
            query.FieldByName('movimento').asinteger  := 9;
            query.FieldByName('movimento_estoque').asfloat := qros_produto.FieldByName('qtde').asfloat * (-1);
          end
          else
          begin
            query.FieldByName('movimento').asinteger  := 99;
            query.FieldByName('movimento_estoque').asfloat := 0;
          end;
          query.post;
          frmmodulo.conexao.commit;
        end
        else
        begin
          query.Insert;
          query.FieldByName('codigo').asstring      := qros_produto.FieldByName('codigo').asstring;
          query.FieldByName('codproduto').asstring  := qros_produto.FieldByName('codproduto').asstring;
          query.FieldByName('unidade').asstring     := qros_produto.FieldByName('unidade').asstring;
          query.FieldByName('ALIQUOTA').asFLOAT     := qros_produto.FieldByName('aliquota').asfloat;
          query.FieldByName('CST').asSTRING         := qros_produto.FieldByName('cst').asstring;
          query.FieldByName('qtde').asfloat         := qros_produto.FieldByName('qtde').asfloat;
          query.FieldByName('unitario').asfloat     := qros_produto.FieldByName('unitario').asfloat;
          query.FieldByName('total').asfloat        := qros_produto.FieldByName('total').asfloat;
          query.FieldByName('desconto').asfloat     := qros_produto.FieldByName('desconto').asfloat;
          query.fieldbyname('codnota').asstring     := frmmodulo.qros.fieldbyname('codigo').asstring;
          query.fieldbyname('data').asstring        := frmmodulo.qros.fieldbyname('data').asstring;
          query.fieldbyname('codcliente').asstring  := frmmodulo.qros.fieldbyname('codcliente').asstring;
          query.fieldbyname('codvendedor').asstring := frmmodulo.qros.fieldbyname('codatendente').asstring;
          query.fieldbyname('serial').asstring      := qros_produto.fieldbyname('serial').asstring;
          query.fieldbyname('codgrade').asstring    := qros_produto.fieldbyname('codgrade').asstring;
          if restoque.Checked then
          begin
            query.FieldByName('movimento').asinteger  := 9;
            query.FieldByName('movimento_estoque').asfloat := qros_produto.FieldByName('qtde').asfloat * (-1);
          end
          else
          begin
            query.FieldByName('movimento').asinteger  := 99;
            query.FieldByName('movimento_estoque').asfloat := 0;
          end;
          query.post;
          frmmodulo.conexao.commit;
        end;
      except
        continua := 'nao';
      end;
    until continua = 'ok';
    qros_produto.next;
  end;

  qros_servico.FIRST;


  if ComboSituacao.Text = 'FECHADA' then
  begin
    if APPLICATION.MESSAGEBOX('Confirma o encerramento desta O.S.?','Atenção',mb_yesno+mb_iconquestion) = Idno
      then exit;
  end;

  if combosituacao.Text = 'ABERTA - Aguardando Confirmação' then
    frmmodulo.qros.fieldbyname('st').asinteger := 2
  else
  if combosituacao.Text = 'ABERTA - Executando Serviços' then
    frmmodulo.qros.fieldbyname('st').asinteger := 3
  else
  if combosituacao.Text = 'ABERTA - Executando Serviços' then
    frmmodulo.qros.fieldbyname('st').asinteger := 4;

  IF FRMMODULO.QROS.STATE = DSINSERT THEN
    FRMMODULO.QROS.FIELDBYNAME('HORA').ASSTRING := TIMETOSTR(TIME);

  if restoque.Checked then
    frmmodulo.qros.fieldbyname('cor').asstring := 'SIM'
  else
    frmmodulo.qros.fieldbyname('cor').asstring := 'NAO';


  FRMMODULO.qros.Post;
  FRMMODULO.QRCLIENTE.Locate('CODIGO',FRMMODULO.QROS.FIELDBYNAME('CODCLIENTE').ASSTRING,[loCaseInsensitive]);
  FRMMODULO.Conexao.Commit;


//    frmos_impressao := tfrmos_impressao.create(self);
//    frmos_impressao.showmodal;


  FINALIZADO := TRUE;
  CLOSE;

end;

// -------------------------------------------------------------------------- //
procedure TfrmOS.esetorExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  IF (frmmodulo.qros.state = dsinsert) or (frmmodulo.qros.State = dsedit) then
  begin
    frmmodulo.qros.fieldbyname('codsetor').asstring := frmprincipal.zerarcodigo(esetor.text,6);
    if esetor.text <> '000000' then
    begin
      if not frmprincipal.Locregistro(frmmodulo.qrsetor,esetor.text,'codigo') then
        esetorbuttonclick(Frmos)
      else
      begin
        edetectado.setfocus;
      end;
    end
    else
        esetorbuttonclick(Frmos);
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOS.combosituacaoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then eintervencao.SetFocus;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOS.combosituacaoChange(Sender: TObject);
begin
  if combosituacao.Text = 'FECHADA' then
  BEGIN
    FRMMODULO.qrcaixa_operador.Open;
    FRMMODULO.qrcaixa_operador.Locate('CODIGO','000099',[loCaseInsensitive]);
    if frmmodulo.qrcaixa_operador.FieldByName('situacao').asinteger = 1 then
    begin
      frmmodulo.qros.fieldbyname('CONCLUSAO_DATA').asdatetime := frmmodulo.qrcaixa_operador.fieldbyname('data').asdatetime;
      gconclusao.Visible := true;
    END
    ELSE
    BEGIN
      APPLICATION.MessageBox('O caixa do sistema está fechado! Favor verificar!','Atenção',mb_ok+MB_ICONERROR);
      abort;

    END;



  END
  else
  BEGIN
    gconclusao.Visible := false;
  END;

end;

// -------------------------------------------------------------------------- //
procedure TfrmOS.DBEdit11KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOS.etecnicoEnter(Sender: TObject);
begin
   TEDIT(SENDER).Color := $00A0FAF8;
{   frmmodulo.qrfunci.close;
   frmmodulo.qrfunci.sql.clear;
   frmmodulo.qrfunci.sql.add('select * from c000008 where UPPER(funcao) like '''+'%TÉC%'+''' or UPPER(funcao) like '''+'%TEC%'+'''  order by nome');
   frmmodulo.qrfunci.open;
   frmmodulo.qrfunci.indexfieldnames := 'nome';}
end;

// -------------------------------------------------------------------------- //
procedure TfrmOS.ESERVICOButtonClick(Sender: TObject);
begin
  SHOWMESSAGE('');
end;

// -------------------------------------------------------------------------- //
procedure TfrmOS.qros_servicoBeforePost(DataSet: TDataSet);
begin
  qros_servico.FieldByName('codos').AsString := frmmodulo.qros.fieldbyname('codigo').asstring;
  qros_servico.FieldByName('codcliente').AsString := frmmodulo.qros.fieldbyname('codcliente').asstring;
  qros_servico.FieldByName('data').AsString := frmmodulo.qros.fieldbyname('data').asstring;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOS.bexcluir_servicoClick(Sender: TObject);
begin
  if application.MessageBox('Confirma a Exclusão do Item?','Atenção',mb_yesno+MB_ICONWARNING) = idyes then
  begin
    frmmodulo.qros.fieldbyname('servico_subtotal').asfloat :=
    frmmodulo.qros.fieldbyname('servico_subtotal').asfloat -
    qros_servico.fieldbyname('valor').asfloat;

    frmmodulo.qros.fieldbyname('servico_total').asfloat :=
    frmmodulo.qros.fieldbyname('servico_subtotal').asfloat -
    frmmodulo.qros.fieldbyname('servico_desconto').asfloat ;


    qros_servico.delete;
    gridservico.setfocus;
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOS.Servios1Click(Sender: TObject);
begin
  PageView1.ActivePageindex := 1;
  gridservico.SetFocus;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOS.qros_servicoBeforeEdit(DataSet: TDataSet);
begin
  valor_anterior := qros_servico.fieldbyname('valor').asfloat;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOS.qros_servicoBeforeInsert(DataSet: TDataSet);
begin
  valor_anterior := 0;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOS.qros_servicoAfterPost(DataSet: TDataSet);
begin
    frmmodulo.qros.fieldbyname('servico_subtotal').asfloat :=
    frmmodulo.qros.fieldbyname('servico_subtotal').asfloat +
    qros_servico.fieldbyname('valor').asfloat -
    valor_anterior;

    frmmodulo.qros.fieldbyname('servico_total').asfloat :=
    frmmodulo.qros.fieldbyname('servico_subtotal').asfloat -
    frmmodulo.qros.fieldbyname('servico_desconto').asfloat ;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOS.ExcluirServio1Click(Sender: TObject);
begin
IF PAGEVIEW1.ACTIVEPAGEINDEX = 1 THEN
BEGIN

  if bexcluir_servico.Enabled then
  begin
    bexcluir_servicoClick(frmos);
  end;
END;
IF PAGEVIEW1.ACTIVEPAGEINDEX = 2 THEN
BEGIN

  if bexcluir_produto.Enabled then
  begin
    bexcluir_produtoClick(frmos);
  end;
END;

end;

// -------------------------------------------------------------------------- //
procedure TfrmOS.COMBOSERVICOExit(Sender: TObject);
begin
  if comboservico.Text <> '' then
  begin
    if frmmodulo.qrservico.Locate('servico',comboservico.Text,[loCaseInsensitive]) then
    begin
      qros_servico.fieldbyname('codservico').asstring := frmmodulo.qrservico.fieldbyname('codigo').asstring;
      qros_servico.fieldbyname('valor').asfloat := frmmodulo.qrservico.fieldbyname('valor').asfloat;
    end
    else
    begin
      application.messagebox('Serviço não encontrado!','Atenção',mb_ok+MB_ICONWARNING);
      comboservico.text := '';
      comboservico.setfocus;
    end;
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOS.ESERVICOExit(Sender: TObject);
begin
  if eservico.Text <> '' then
  begin
    qros_servico.fieldbyname('codservico').asstring := frmprincipal.zerarcodigo(eservico.Text,6);
    if frmmodulo.qrservico.Locate('codigo',eservico.Text,[loCaseInsensitive]) then
    begin
      qros_servico.fieldbyname('servico').asstring := frmmodulo.qrservico.fieldbyname('servico').asstring;
      qros_servico.fieldbyname('valor').asfloat := frmmodulo.qrservico.fieldbyname('valor').asfloat;
    end
    else
    begin
      application.messagebox('Serviço não encontrado!','Atenção',mb_ok+MB_ICONWARNING);
      qros_servico.fieldbyname('codservico').asstring := '';
      eservico.setfocus;
    end;
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOS.combotecnicoExit(Sender: TObject);
begin
  if combotecnico.Text <> '' then
  begin
    qros_servico.fieldbyname('codtecnico').asstring := frmprincipal.zerarcodigo(combotecnico.Text,6);

     frmmodulo.qrfunci.close;
     frmmodulo.qrfunci.sql.clear;
     frmmodulo.qrfunci.sql.add('select * from c000008 WHERE SITUACAO = 1 AND F_TECNICO = 1 order by nome');
     frmmodulo.qrfunci.open;

    if frmmodulo.qrfunci.Locate('codigo',combotecnico.Text,[loCaseInsensitive]) then
    begin
      //
    end
    else
    begin
      application.messagebox('Técnico não encontrado!','Atenção',mb_ok+MB_ICONWARNING);
      qros_servico.fieldbyname('codtecnico').asstring := '';
      combotecnico.setfocus;
    end;
  end;

     frmmodulo.qrfunci.close;
     frmmodulo.qrfunci.sql.clear;
     frmmodulo.qrfunci.sql.add('select * from c000008 WHERE SITUACAO = 1 order by nome');
     frmmodulo.qrfunci.open;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOS.qros_servicoPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  ShowMessage('Favor informar o serviço!');
  Action:= daAbort;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOS.PageView1Change(Sender: TObject);
begin




  if PageView1.ActivePageindex = 1 then
  begin
    if frmmodulo.qros.fieldbyname('codcliente').asstring <> '' then
    begin
      bexcluir_servico.Enabled := true;
    end
    else
    begin
      bexcluir_servico.Enabled := false;
    end;

      
  end;

  if PageView1.ActivePageindex = 2 then // produtos
  begin
    if frmmodulo.qros.fieldbyname('codcliente').asstring <> '' then
    begin
      bexcluir_produto.Enabled := true;
      bincluir_produto.Enabled := true;
    end
    else
    begin
      bexcluir_produto.Enabled := false;
      bincluir_produto.Enabled := false;
    end;
  end
  else
  begin
    bexcluir_produto.Enabled := false;
    bincluir_produto.Enabled := false;
  end;

  if pageview1.ActivePageIndex = 4 then
  begin
    frmmodulo.qrfornecedor.close;
    frmmodulo.qrfornecedor.sql.clear;
    frmmodulo.qrfornecedor.sql.add('select * from c000009 where assistencia_tecnica = 1 order by nome');
    frmmodulo.qrfornecedor.open;
    frmmodulo.qrfornecedor.IndexFieldNames := 'nome';

  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOS.bincluir_produtoClick(Sender: TObject);
var item, qtde, total : real;
begin
  frmos_item_2 := tfrmos_item_2.create(self);
  frmos_item_2.showmodal;


  qtde := 0; total := 0; item := 0;

  qros_produto.First;
  while not qros_produto.eof do
  begin
    total := total + qros_produto.fieldbyname('total').asfloat;
    item := item + 1;
    qros_produto.next;
  end;
  frmmodulo.qros.fieldbyname('produto_subtotal').asfloat := total;
  frmmodulo.qros.fieldbyname('produto_total').asfloat :=
  frmmodulo.qros.fieldbyname('produto_subtotal').asfloat -
  frmmodulo.qros.fieldbyname('produto_desconto').asfloat ;
  qros_produto.Refresh;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOS.DBEdit6Enter(Sender: TObject);
begin
  tedit(sender).color := $00A0FAF8;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOS.DBEdit6Exit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
  frmmodulo.qros.fieldbyname('servico_total').asfloat :=
  frmmodulo.qros.fieldbyname('servico_subtotal').asfloat -
  frmmodulo.qros.fieldbyname('servico_desconto').asfloat ;

end;

// -------------------------------------------------------------------------- //
procedure TfrmOS.DBEdit6KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOS.DBEdit8KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOS.DBEdit8Enter(Sender: TObject);
begin
  tedit(sender).color := $00A0FAF8;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOS.DBEdit8Exit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
  frmmodulo.qros.fieldbyname('produto_total').asfloat :=
  frmmodulo.qros.fieldbyname('produto_subtotal').asfloat -
  frmmodulo.qros.fieldbyname('produto_desconto').asfloat ;

end;

// -------------------------------------------------------------------------- //
procedure TfrmOS.bexcluir_produtoClick(Sender: TObject);
begin

  if application.messagebox('Confirma a exclusão do registro?','Aviso',mb_yesno+MB_ICONWARNING) = idyes then
  begin

      if qros_produto.fieldbyname('serial').asstring <> '' then
      begin
        frmmodulo.qrserial_produto.Open;
        if frmmodulo.qrserial_produto.Locate('serial',frmmodulo.qrproduto_mov.FieldByName('serial').AsString,[loCaseInsensitive]) then
        begin
          frmmodulo.qrserial_produto.Close;
          frmmodulo.qrserial_produto.sql.Clear;
          frmmodulo.qrserial_produto.SQL.Add('update c000022 set situacao = 1, cliente = null, datavenda = null, precovenda = 0 where codproduto = '''+qros_produto.fieldbyname('codproduto').asstring+''' and serial = '''+qros_produto.fieldbyname('serial').asstring+'''');
          frmmodulo.qrserial_produto.ExecSQL;
        end;
      end;


      frmmodulo.qros.fieldbyname('produto_subtotal').ASFLOAT :=frmmodulo.qros.fieldbyname('produto_subtotal').ASFLOAT - qros_produto.fieldbyname('total').asfloat;

      frmmodulo.qros.fieldbyname('produto_total').asfloat :=
      frmmodulo.qros.fieldbyname('produto_subtotal').asfloat -
      frmmodulo.qros.fieldbyname('produto_desconto').asfloat ;

      item_excluido := item_excluido + 1;
      excluidos[item_excluido] := qros_produto.fieldbyname('codigo').asstring;
      qros_produto.Delete;
    end
    else
    begin
      application.messagebox('Não possível prosseguir com a exclusão! O Produto não pode ser localizado no cadastro de estoque.','Atenção',mb_ok+MB_ICONWARNING);
    end;

end;

// -------------------------------------------------------------------------- //
procedure TfrmOS.IncluirProduto1Click(Sender: TObject);
begin
  if bincluir_produto.Enabled then
  begin
    bincluir_produtoClick(FRMOS);
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOS.eveiculoEnter(Sender: TObject);
begin
   TEDIT(SENDER).Color := $00A0FAF8;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOS.eveiculoExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
try
  IF (frmmodulo.qros.state = dsinsert) or (frmmodulo.qros.State = dsedit) then
  begin
    frmmodulo.qros.fieldbyname('codveiculo').asstring := frmprincipal.zerarcodigo(eveiculo.text,6);
    if eveiculo.text <> '000000' then
    begin
      if not frmprincipal.Locregistro(frmmodulo.qrveiculo,eveiculo.text,'codigo') then
        blocveiculoclick(Frmos)
      else
      begin
        dbedit12.setfocus;
      end;
    end
    else
      blocveiculo.SetFocus;
  end;
except
end;
end;


// -------------------------------------------------------------------------- //
procedure TfrmOS.blocveiculoClick(Sender: TObject);
begin
  frmloc_veiculo := tfrmloc_veiculo.create(self);
  frmloc_veiculo.showmodal;
  frmmodulo.qros.fieldbyname('codveiculo').asstring := frmmodulo.qrveiculo.fieldbyname('codigo').asstring;
  dbedit12.setfocus;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOS.DBEdit16KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOS.DBEdit14Exit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
  frmmodulo.qros.fieldbyname('desloc_total').asfloat :=
  frmmodulo.qros.fieldbyname('desloc_combustivel').asfloat +
  frmmodulo.qros.fieldbyname('desloc_refeicao').asfloat +
  frmmodulo.qros.fieldbyname('desloc_hospedagem').asfloat ;

end;

// -------------------------------------------------------------------------- //
procedure TfrmOS.Deslocamento1Click(Sender: TObject);
begin
  PageView1.ActivePageindex := 3;
  eveiculo.setfocus;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOS.Produtos1Click(Sender: TObject);
begin
  PageView1.ActivePageindex := 2;
  wwdbgrid2.setfocus;
end;

procedure// -------------------------------------------------------------------------- //
 TfrmOS.esetorEnter(Sender: TObject);
begin
  tedit(sender).color := $00A0FAF8;
end;

procedure TfrmOS.eterceiroExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
try
  IF (frmmodulo.qros.state = dsinsert) or (frmmodulo.qros.State = dsedit) then
  begin
    frmmodulo.qros.fieldbyname('codterceiro').asstring := frmprincipal.zerarcodigo(eterceiro.text,6);
    if eterceiro.text <> '000000' then
    begin
      if not frmprincipal.Locregistro(frmmodulo.qrfornecedor,eterceiro.text,'codigo') then
        blocterceiroclick(Frmos)
      else
      begin
        frmmodulo.qros.fieldbyname('TERCEIRO_CONTATO').asstring := frmmodulo.qrfornecedor.fieldbyname('contato1').asstring;
        dbedit20.setfocus;

      end;
    end
    else
      blocterceiro.SetFocus;
  end;
except
end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOS.blocterceiroClick(Sender: TObject);
begin
  frmmodulo.qrfornecedor.close;
  frmmodulo.qrfornecedor.sql.clear;
  frmmodulo.qrfornecedor.sql.add('select * from c000009 order by NOME');
  frmmodulo.qrfornecedor.open;

  frmloc_fornecedor := tfrmloc_fornecedor.create(self);
  frmloc_fornecedor.Caption := 'Localizar Empresa (Tercerizada)';
  frmloc_fornecedor.showmodal;
  frmmodulo.qros.fieldbyname('codterceiro').asstring := frmmodulo.qrfornecedor.fieldbyname('codigo').asstring;
  frmmodulo.qros.fieldbyname('TERCEIRO_CONTATO').asstring := frmmodulo.qrfornecedor.fieldbyname('contato1').asstring;
  dbedit20.setfocus;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOS.eobs_terceiroEnter(Sender: TObject);
begin
  eobs_terceiro.Color := $00A0FAF8;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOS.eobs_terceiroExit(Sender: TObject);
begin
  eobs_terceiro.Color := clwindow;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOS.DBEdit21Exit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
  frmmodulo.qros.fieldbyname('TERCEIRO_TOTAL').asfloat :=
  frmmodulo.qros.fieldbyname('TERCEIRO_valor').asfloat +
  frmmodulo.qros.fieldbyname('TERCEIRO_comissao').asfloat ;

end;

// -------------------------------------------------------------------------- //
procedure TfrmOS.DBEdit22Exit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
  frmmodulo.qros.fieldbyname('TERCEIRO_TOTAL').asfloat :=
  frmmodulo.qros.fieldbyname('TERCEIRO_valor').asfloat +
  frmmodulo.qros.fieldbyname('TERCEIRO_comissao').asfloat ;

end;

// -------------------------------------------------------------------------- //
procedure TfrmOS.erceiros1Click(Sender: TObject);
begin
  pageview1.ActivePageindex := 4;
  eterceiro.SetFocus;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOS.DBEdit9Change(Sender: TObject);
begin
  if (frmmodulo.qros.State = dsinsert) or (frmmodulo.qros.State = dsedit) then
  begin
    frmmodulo.qros.fieldbyname('subtotal').asfloat :=
    frmmodulo.qros.fieldbyname('PRODUTO_TOTAL').asfloat +
    frmmodulo.qros.fieldbyname('SERVICO_TOTAL').asfloat +
    frmmodulo.qros.fieldbyname('DESLOC_TOTAL').asfloat +
    frmmodulo.qros.fieldbyname('TERCEIRO_TOTAL').asfloat;

    frmmodulo.qros.fieldbyname('total').asfloat :=
    frmmodulo.qros.fieldbyname('subtotal').asfloat +
    frmmodulo.qros.fieldbyname('acrescimo').asfloat -
    frmmodulo.qros.fieldbyname('desconto').asfloat ;


  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOS.DBEdit4Change(Sender: TObject);
begin
  if (frmmodulo.qros.State = dsinsert) or (frmmodulo.qros.State = dsedit) then
  begin
    frmmodulo.qros.fieldbyname('subtotal').asfloat :=
    frmmodulo.qros.fieldbyname('PRODUTO_TOTAL').asfloat +
    frmmodulo.qros.fieldbyname('SERVICO_TOTAL').asfloat +
    frmmodulo.qros.fieldbyname('DESLOC_TOTAL').asfloat +
    frmmodulo.qros.fieldbyname('TERCEIRO_TOTAL').asfloat;

    frmmodulo.qros.fieldbyname('total').asfloat :=
    frmmodulo.qros.fieldbyname('subtotal').asfloat +
    frmmodulo.qros.fieldbyname('acrescimo').asfloat -
    frmmodulo.qros.fieldbyname('desconto').asfloat ;

  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOS.DBEdit17Change(Sender: TObject);
begin
  if (frmmodulo.qros.State = dsinsert) or (frmmodulo.qros.State = dsedit) then
  begin
    frmmodulo.qros.fieldbyname('subtotal').asfloat :=
    frmmodulo.qros.fieldbyname('PRODUTO_TOTAL').asfloat +
    frmmodulo.qros.fieldbyname('SERVICO_TOTAL').asfloat +
    frmmodulo.qros.fieldbyname('DESLOC_TOTAL').asfloat +
    frmmodulo.qros.fieldbyname('TERCEIRO_TOTAL').asfloat;

    frmmodulo.qros.fieldbyname('total').asfloat :=
    frmmodulo.qros.fieldbyname('subtotal').asfloat +
    frmmodulo.qros.fieldbyname('acrescimo').asfloat -
    frmmodulo.qros.fieldbyname('desconto').asfloat ;

  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOS.DBEdit23Change(Sender: TObject);
begin
  if (frmmodulo.qros.State = dsinsert) or (frmmodulo.qros.State = dsedit) then
  begin
    frmmodulo.qros.fieldbyname('subtotal').asfloat :=
    frmmodulo.qros.fieldbyname('PRODUTO_TOTAL').asfloat +
    frmmodulo.qros.fieldbyname('SERVICO_TOTAL').asfloat +
    frmmodulo.qros.fieldbyname('DESLOC_TOTAL').asfloat +
    frmmodulo.qros.fieldbyname('TERCEIRO_TOTAL').asfloat;
    frmmodulo.qros.fieldbyname('total').asfloat :=
    frmmodulo.qros.fieldbyname('subtotal').asfloat +
    frmmodulo.qros.fieldbyname('acrescimo').asfloat -
    frmmodulo.qros.fieldbyname('desconto').asfloat ;

  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOS.qrOS_contasreceberBeforeEdit(DataSet: TDataSet);
begin
  valor_prestacao := qrOS_contasreceber.fieldbyname('valor').asfloat;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOS.qrOS_contasreceberBeforeInsert(DataSet: TDataSet);
begin
   valor_prestacao := 0;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOS.DBDateEdit3Enter(Sender: TObject);
begin
   tedit(Sender).color := $00A0FAF8;

end;

// -------------------------------------------------------------------------- //
procedure TfrmOS.edefeitoKeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN ABORT;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOS.eobsKeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN ABORT;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOS.edetectadoKeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN ABORT;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOS.COMBOTIPOEnter(Sender: TObject);
begin
  TEDIT(SENDER).COLOR := $00A0FAF8;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOS.COMBOTIPOExit(Sender: TObject);
begin
  TEDIT(SENDER).COLOR := CLWINDOW;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOS.COMBOTIPOKeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN ECLIENTE.SetFocus;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOS.wwDBComboBox1KeyPress(Sender: TObject; var Key: Char);
begin
    IF KEY = #13 THEN PERFORM(WM_NEXTDLGCTL,0,0);
end;

// -------------------------------------------------------------------------- //
procedure TfrmOS.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN PERFORM(WM_NEXTDLGCTL,0,0);
end;

// -------------------------------------------------------------------------- //
procedure TfrmOS.gridservicoExit(Sender: TObject);
begin
  IF (qros_servico.State = DSINSERT) OR (qros_servico.State = DSEDIT) THEN
  BEGIN
    QROS_SERVICO.Cancel;
  END;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOS.DBEdit3Exit(Sender: TObject);
begin
  tedit(sender).color := clwindow;

  frmmodulo.qrservicos_periodicos.close;
  frmmodulo.qrservicos_periodicos.sql.clear;
  frmmodulo.qrservicos_periodicos.sql.add('select * from servicos_periodicos where codcliente = '''+frmmodulo.qros.fieldbyname('codcliente').asstring+''' and ');
  frmmodulo.qrservicos_periodicos.sql.add('marca  = '''+frmmodulo.qros.fieldbyname('marca').asstring+''' and ');
  frmmodulo.qrservicos_periodicos.sql.add('modelo = '''+frmmodulo.qros.fieldbyname('modelo').asstring+''' and ');
  frmmodulo.qrservicos_periodicos.sql.add('serie  = '''+frmmodulo.qros.fieldbyname('serial').asstring+'''');
  frmmodulo.qrservicos_periodicos.open;
  if frmmodulo.qrservicos_periodicos.RecordCount > 0 then
    begin
      bperiodico.ItemIndex := 0;
    end;


end;

// -------------------------------------------------------------------------- //
procedure TfrmOS.eatendentButtonClick(Sender: TObject);
begin

   frmmodulo.qrfunci.close;
   frmmodulo.qrfunci.sql.clear;
   frmmodulo.qrfunci.sql.add('select * from c000008 WHERE SITUACAO = 1 order by nome');
   frmmodulo.qrfunci.open;
   frmmodulo.qrfunci.indexfieldnames := 'nome';

  frmlocvendedor := tfrmlocvendedor.create(self);
  frmlocvendedor.showmodal;
  frmmodulo.qros.fieldbyname('codatendente').asstring := frmmodulo.qrfunci.fieldbyname('codigo').asstring;
   COMBOTIPO.SETFOCUS;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOS.eatendentKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

// -------------------------------------------------------------------------- //
procedure TfrmOS.eclienteButtonClick(Sender: TObject);
begin
  frmXloc_cliente := tfrmXloc_cliente.create(self);
  frmXloc_cliente.showmodal;
  frmmodulo.qros.fieldbyname('codcliente').asstring := RESULTADO_PESQUISA1;
  IF DBEDIT10.TEXT = '' THEN FRMMODULO.QROS.FieldByName('SOLICITANTE').ASSTRING := 'O MESMO';
  dbedit10.setfocus;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOS.etecnicoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

// -------------------------------------------------------------------------- //
procedure TfrmOS.etecnicoButtonClick(Sender: TObject);
begin
   frmmodulo.qrfunci.close;
   frmmodulo.qrfunci.sql.clear;
   frmmodulo.qrfunci.sql.add('select * from c000008 WHERE SITUACAO = 1 AND F_TECNICO = 1 order by nome');
   frmmodulo.qrfunci.open;
   frmmodulo.qrfunci.indexfieldnames := 'nome';

  frmlocvendedor := tfrmlocvendedor.create(self);
  frmlocvendedor.showmodal;
  frmmodulo.qros.fieldbyname('DETECTADO_CODTECNICO').asstring := frmmodulo.qrfunci.fieldbyname('codigo').asstring;
   frmmodulo.qrfunci.close;
   frmmodulo.qrfunci.sql.clear;
   frmmodulo.qrfunci.sql.add('select * from c000008 WHERE SITUACAO = 1 order by nome');
   frmmodulo.qrfunci.open;
   

  esetor.setfocus;



end;

// -------------------------------------------------------------------------- //
procedure TfrmOS.esetorButtonClick(Sender: TObject);
begin

  frmloc_setor := tfrmloc_setor.create(self);
  frmloc_setor.showmodal;
  frmmodulo.qros.fieldbyname('codsetor').asstring := frmmodulo.qrsetor.fieldbyname('codigo').asstring;
  edetectado.setfocus;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOS.bperiodicoKeyPress(Sender: TObject; var Key: Char);
begin
IF KEY = #13 THEN PERFORM(WM_NEXTDLGCTL,0,0);
end;

// -------------------------------------------------------------------------- //
procedure TfrmOS.restoqueClick(Sender: TObject);
begin
if pageview1.ActivePageIndex = 2 then
begin
  IF RESTOQUE.Checked = FALSE THEN
  BEGIN
    if not frmPrincipal.autentica('Estoque',4) then
    begin
      restoque.Checked := true;
    END;
  END;
end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOS.qrOS_contasreceberBeforePost(DataSet: TDataSet);
begin
  qros_contasreceber.fieldbyname('terminal').asstring := numero_terminal;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOS.DBEdit18Exit(Sender: TObject);
var texto : string;
begin
  TEDIT(SENDER).COLOR := CLWINDOW;
end;

end.



