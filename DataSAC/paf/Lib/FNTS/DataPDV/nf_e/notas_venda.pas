unit notas_venda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, DB, ImgList, StdCtrls, Mask,
  ToolEdit, ExtCtrls, TFlatPanelUnit, Collection, Buttons, Wwkeycb, Menus,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, DBGrids, Wwdatsrc,
  DBCtrls, PageView, AdvToolBar, AdvGlowButton, RzEdit, RzBtnEdt, RzDBEdit,
  AdvMenus, AdvMenuStylers, CurrEdit;

type
  Tfrmnotas_venda = class(TForm)
    dsvenda: TDataSource;
    PopupMenu1: TPopupMenu;
    N2aVia1: TMenuItem;
    CancelarVenda1: TMenuItem;
    Relatrios1: TMenuItem;
    Fechar1: TMenuItem;
    Filtro1: TMenuItem;
    QUERY: TZQuery;
    dsproduto_mov: TwwDataSource;
    qrproduto_mov: TZQuery;
    qrproduto: TZQuery;
    qrproduto_movCODIGO: TStringField;
    qrproduto_movCODNOTA: TStringField;
    qrproduto_movCODPRODUTO: TStringField;
    qrproduto_movUNITARIO: TFloatField;
    qrproduto_movTOTAL: TFloatField;
    qrproduto_movICMS: TFloatField;
    qrproduto_movIPI: TFloatField;
    qrproduto_movCFOP: TStringField;
    qrproduto_movDATA: TDateTimeField;
    qrproduto_movNUMERONOTA: TStringField;
    qrproduto_movCODCLIENTE: TStringField;
    qrproduto_movDESCONTO: TFloatField;
    qrproduto_movACRESCIMO: TFloatField;
    qrproduto_movMOVIMENTO: TIntegerField;
    qrproduto_movCODVENDEDOR: TStringField;
    qrproduto_movCODGRADE: TStringField;
    qrproduto_movSERIAL: TStringField;
    qrproduto_movUNIDADE: TStringField;
    qrproduto_movQTDE: TFloatField;
    qrproduto_movVALOR_ICMS: TFloatField;
    qrproduto_movICMS_REDUZIDO: TFloatField;
    qrproduto_movBASE_CALCULO: TFloatField;
    qrproduto_movVALOR_IPI: TFloatField;
    qrproduto_movSITUACAO: TIntegerField;
    qrproduto_movECF_SERIE: TStringField;
    qrproduto_movECF_CAIXA: TStringField;
    qrproduto_movCODALIQUOTA: TStringField;
    qrproduto_movCUPOM_NUMERO: TStringField;
    qrproduto_movCUPOM_MODELO: TStringField;
    qrproduto_movCUPOM_ITEM: TStringField;
    qrproduto_movALIQUOTA: TFloatField;
    qrproduto_movCST: TStringField;
    qrproduto_movproduto: TStringField;
    qrproduto_movcodbarra: TStringField;
    Query1: TZQuery;
    Visualizar1: TMenuItem;
    Panel1: TPanel;
    bcancelar: TAdvGlowButton;
    brelatorio: TAdvGlowButton;
    bcupomfiscal: TAdvGlowMenuButton;
    bfechar: TAdvGlowButton;
    Bevel1: TBevel;
    tab_principal: TPageView;
    PageSheet10: TPageSheet;
    PageSheet11: TPageSheet;
    wwDBGrid1: TwwDBGrid;
    Bevel2: TBevel;
    Panel3: TPanel;
    BFILTRO: TAdvGlowButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label20: TLabel;
    ecliente: TRzButtonEdit;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    ENUMERO: TEdit;
    Label21: TLabel;
    wwDBGrid2: TwwDBGrid;
    Panel2: TPanel;
    Bevel5: TBevel;
    Bevel4: TBevel;
    Label4: TLabel;
    Bevel3: TBevel;
    Label5: TLabel;
    Label6: TLabel;
    wwIncrementalSearch1: TwwIncrementalSearch;
    Bevel6: TBevel;
    Panel5: TPanel;
    Bevel8: TBevel;
    AdvGlowButton1: TAdvGlowButton;
    Label12: TLabel;
    lqtde_cupom: TLabel;
    Label15: TLabel;
    Label10: TLabel;
    qrcliente2: TZQuery;
    qrcliente2CODIGO: TStringField;
    qrcliente2NOME: TStringField;
    qrcliente2APELIDO: TStringField;
    qrcliente2ENDERECO: TStringField;
    qrcliente2BAIRRO: TStringField;
    qrcliente2CIDADE: TStringField;
    qrcliente2UF: TStringField;
    qrcliente2CEP: TStringField;
    qrcliente2COMPLEMENTO: TStringField;
    qrcliente2MORADIA: TIntegerField;
    qrcliente2TIPO: TIntegerField;
    qrcliente2SITUACAO: TIntegerField;
    qrcliente2TELEFONE1: TStringField;
    qrcliente2TELEFONE2: TStringField;
    qrcliente2TELEFONE3: TStringField;
    qrcliente2CELULAR: TStringField;
    qrcliente2EMAIL: TStringField;
    qrcliente2RG: TStringField;
    qrcliente2CPF: TStringField;
    qrcliente2FILIACAO: TStringField;
    qrcliente2ESTADOCIVIL: TStringField;
    qrcliente2CONJUGE: TStringField;
    qrcliente2PROFISSAO: TStringField;
    qrcliente2EMPRESA: TStringField;
    qrcliente2RENDA: TFloatField;
    qrcliente2LIMITE: TFloatField;
    qrcliente2REF1: TStringField;
    qrcliente2REF2: TStringField;
    qrcliente2CODVENDEDOR: TStringField;
    qrcliente2DATA_CADASTRO: TDateTimeField;
    qrcliente2DATA_ULTIMACOMPRA: TDateTimeField;
    qrcliente2OBS1: TStringField;
    qrcliente2OBS2: TStringField;
    qrcliente2OBS3: TStringField;
    qrcliente2OBS4: TStringField;
    qrcliente2OBS5: TStringField;
    qrcliente2OBS6: TStringField;
    qrcliente2NASCIMENTO: TStringField;
    qrcliente2CODREGIAO: TStringField;
    qrcliente2CODCONVENIO: TStringField;
    qrcliente2CODUSUARIO: TStringField;
    DBText1: TDBText;
    FlatPanel1: TFlatPanel;
    Label9: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    RzDBEdit1: TRzDBEdit;
    RzDBEdit2: TRzDBEdit;
    RzDBEdit3: TRzDBEdit;
    RzDBEdit4: TRzDBEdit;
    RzDBEdit5: TRzDBEdit;
    RzDBEdit6: TRzDBEdit;
    RzDBEdit7: TRzDBEdit;
    RzDBEdit8: TRzDBEdit;
    Bevel12: TBevel;
    menu_tabelas_fiscais: TAdvPopupMenu;
    ModelosdeNotasFiscais1: TMenuItem;
    CFOP1: TMenuItem;
    ClassesdeRecolhimento1: TMenuItem;
    N1: TMenuItem;
    MemorandodeExportao1: TMenuItem;
    AdvMenuOfficeStyler1: TAdvMenuOfficeStyler;
    N2: TMenuItem;
    Suprimento1: TMenuItem;
    Sangria1: TMenuItem;
    Bevel13: TBevel;
    RzDBNumericEdit1: TRzDBNumericEdit;
    Label8: TLabel;
    Label11: TLabel;
    RzDBNumericEdit2: TRzDBNumericEdit;
    Label13: TLabel;
    RzDBNumericEdit3: TRzDBNumericEdit;
    Label14: TLabel;
    RzDBNumericEdit4: TRzDBNumericEdit;
    Label16: TLabel;
    RzDBNumericEdit5: TRzDBNumericEdit;
    Label7: TLabel;
    RzDBNumericEdit6: TRzDBNumericEdit;
    Label19: TLabel;
    RzDBNumericEdit7: TRzDBNumericEdit;
    Bevel7: TBevel;
    FlatPanel2: TFlatPanel;
    Bevel14: TBevel;
    ltotal: TRxCalcEdit;
    lqtde: TRxCalcEdit;
    Label32: TLabel;
    RzDBNumericEdit15: TRzDBNumericEdit;
    RzDBNumericEdit16: TRzDBNumericEdit;
    RzDBNumericEdit17: TRzDBNumericEdit;
    RzDBNumericEdit18: TRzDBNumericEdit;
    Label33: TLabel;
    Cliente1: TMenuItem;
    N3: TMenuItem;
    BaixarInformaesdaECFDownloadMFD1: TMenuItem;
    Panel6: TPanel;
    Label34: TLabel;
    DBText2: TDBText;
    Bevel9: TBevel;
    Panel7: TPanel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    RzDBNumericEdit19: TRzDBNumericEdit;
    RzDBNumericEdit20: TRzDBNumericEdit;
    RzDBNumericEdit21: TRzDBNumericEdit;
    RzDBNumericEdit22: TRzDBNumericEdit;
    RzDBNumericEdit23: TRzDBNumericEdit;
    RzDBNumericEdit24: TRzDBNumericEdit;
    RzDBNumericEdit25: TRzDBNumericEdit;
    RzDBNumericEdit26: TRzDBNumericEdit;
    N4: TMenuItem;
    ProgramaTotalizardeRecebimento1: TMenuItem;
    Label25: TLabel;
    combo_situacao: TComboBox;
    ImageList1: TImageList;
    bcancel: TButton;
    FecharCNFV1: TMenuItem;
    bcontrato: TAdvGlowButton;
    Contrato1: TMenuItem;
    AdvGlowButton2: TAdvGlowButton;
    Imprimir1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bfecharClick(Sender: TObject);
    procedure BFILTROClick(Sender: TObject);
    procedure DateEdit1Enter(Sender: TObject);
    procedure DateEdit1Exit(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure brelatorioClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure eclienteButtonClick(Sender: TObject);
    procedure eclienteEnter(Sender: TObject);
    procedure eclienteKeyPress(Sender: TObject; var Key: Char);
    procedure ENUMEROKeyPress(Sender: TObject; var Key: Char);
    procedure ENUMEROExit(Sender: TObject);
    procedure tab_principalChange(Sender: TObject);
    procedure Visualizar1Click(Sender: TObject);
    procedure DateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure ModelosdeNotasFiscais1Click(Sender: TObject);
    procedure CFOP1Click(Sender: TObject);
    procedure ClassesdeRecolhimento1Click(Sender: TObject);
    procedure MemorandodeExportao1Click(Sender: TObject);
    procedure Suprimento1Click(Sender: TObject);
    procedure Sangria1Click(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure Cliente1Click(Sender: TObject);
    procedure N2aVia1Click(Sender: TObject);
    procedure BaixarInformaesdaECFDownloadMFD1Click(Sender: TObject);
    procedure ProgramaTotalizardeRecebimento1Click(Sender: TObject);
    procedure combo_situacaoKeyPress(Sender: TObject; var Key: Char);
    procedure bcancelClick(Sender: TObject);
    procedure FecharCNFV1Click(Sender: TObject);
    procedure bcontratoClick(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmnotas_venda: Tfrmnotas_venda;
  forma_pgto : string;
implementation

uses modulo, principal, loc_cliente, notas_venda_impressao,
  notas_venda_ecf, lista_venda2, xloc_cliente, ecf,
  notas_venda_ecf_leituraMemoria, suprimentocaixa, sangriacaixa,
  ecf_download, contrato_reserva, venda_reimpressao;

{$R *.dfm}

procedure Tfrmnotas_venda.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qrproduto_mov.Close;
  qrproduto.Close;

  ACTION := CAFREE;
end;

procedure Tfrmnotas_venda.FormShow(Sender: TObject);
begin
  frmmodulo.qrproduto.close;
  frmmodulo.qrproduto.sql.clear;
  frmmodulo.qrproduto.sql.add('select * from c000025');
  frmmodulo.qrproduto.open;

  frmmodulo.qrcliente.close;
  frmmodulo.qrcliente.sql.clear;
  frmmodulo.qrcliente.sql.add('select * from c000007');
  frmmodulo.qrcliente.open;

  frmmodulo.qrfunci.close;
  frmmodulo.qrfunci.sql.clear;
  frmmodulo.qrfunci.sql.add('select * from c000008');
  frmmodulo.qrfunci.open;




  FRMMODULO.qrcaixa_operador.OPEN;
  FRMMODULO.qrcaixa_operador.Locate('CODIGO','000099',[loCaseInsensitive]);

  DATEEDIT1.DATE := FRMMODULO.qrcaixa_operador.FIELDBYNAME('DATA').ASDATETIME;
  DATEEDIT2.DATE := FRMMODULO.QRCAIXA_OPERADOR.FIELDBYNAME('DATA').AsDateTime;
  ECLIENTE.Text := '';
  ECLIENTE.Text := '';

  COMBO_SITUACAO.ITEMINDEX := 1;

{  QUERY.Close;
  QUERY.SQL.CLEAR;
  QUERY.SQL.ADD('SELECT SUM(TOTAL) TOTAL, COUNT(CODIGO) QTDE FROM C000048 WHERE DATA >= :DATAI AND DATA <= :DATAF');
  QUERY.Params.ParamByName('datai').asdatetime := dateedit1.date;
  QUERY.Params.ParamByName('dataf').asdatetime := dateedit2.date;
  QUERY.open;

  LQTDE.value := QUERY.FIELDBYNAME('QTDE').ASinteger;
  Ltotal.value := qUERY.FIELDBYNAME('TOTAL').ASFLOAT;




  FRMMODULO.QRVENDA.Close;
  FRMMODULO.QRVENDA.SQL.CLEAR;
  FRMMODULO.QRVENDA.SQL.ADD('SELECT * FROM C000048 WHERE DATA >= :DATAI AND DATA <= :DATAF ORDER BY DATA, codigo');
  frmmodulo.qrvenda.Params.ParamByName('datai').asdatetime := dateedit1.date;
  frmmodulo.qrvenda.Params.ParamByName('dataf').asdatetime := dateedit2.date;
  FRMMODULO.QRVENDA.open;
  FRMMODULO.qrvenda.INDEXFIELDNAMES := 'CODIGO';

}

  BFILTROClick(FRMNOTAS_VENDA);
end;

procedure Tfrmnotas_venda.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmnotas_venda.BFILTROClick(Sender: TObject);
var cod_venda, cliente : string;
SITUACAO : STRING;

begin
  if (enumero.text = '000000') or (enumero.text = '') then cod_venda := '' else cod_venda := ' and codigo = '''+enumero.text+'''';
  if ecliente.Text = '' then cliente := ''  else cliente := ' and codcliente = '''+copy(ecliente.text,1,6)+'''';


  if combo_situacao.itemindex = 0 then situacao := '';
  if combo_situacao.itemindex = 1 then situacao := ' and situacao = 1';
  if combo_situacao.itemindex = 2 then situacao := ' and situacao = 2';

  QUERY.Close;
  QUERY.SQL.CLEAR;
  QUERY.SQL.ADD('SELECT SUM(TOTAL) TOTAL, COUNT(CODIGO) QTDE FROM C000048 WHERE DATA >= :DATAI AND DATA <= :DATAF'+cod_venda+cliente+SITUACAO);
  QUERY.Params.ParamByName('datai').asdatetime := dateedit1.date;
  QUERY.Params.ParamByName('dataf').asdatetime := dateedit2.date;
  QUERY.open;

  LQTDE.value := QUERY.FIELDBYNAME('QTDE').ASinteger;
  Ltotal.value := QUERY.FIELDBYNAME('TOTAL').ASFLOAT;

  FRMMODULO.QRVENDA.Close;
  FRMMODULO.QRVENDA.SQL.CLEAR;
  FRMMODULO.QRVENDA.SQL.ADD('SELECT * FROM C000048 WHERE DATA >= :DATAI AND DATA <= :DATAF '+cod_venda+cliente+SITUACAO+'ORDER BY DATA, codigo');
  frmmodulo.qrvenda.Params.ParamByName('datai').asdatetime := dateedit1.date;
  frmmodulo.qrvenda.Params.ParamByName('dataf').asdatetime := dateedit2.date;
  FRMMODULO.QRVENDA.open;
  FRMMODULO.qrvenda.INDEXFIELDNAMES := 'CODIGO';



end;

procedure Tfrmnotas_venda.DateEdit1Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmnotas_venda.DateEdit1Exit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
end;

procedure Tfrmnotas_venda.BitBtn2Click(Sender: TObject);
begin
  DATEEDIT1.SETFOCUS;
end;

procedure Tfrmnotas_venda.bcancelarClick(Sender: TObject);
var
  caixa : boolean;

begin


   IF FRMMODULO.QRVENDA.FIELDBYNAME('SITUACAO').ASINTEGER = 2 THEN
   BEGIN
     APPLICATION.MESSAGEBOX('Esta venda já foi cancelada!','Erro',mb_ok+mb_iconerror);
     exit;
   END;

//try


      if not frmPrincipal.autentica('Cancelar Venda',nivel_exclusao) then
      begin
        application.messagebox('Desculpe! Seu acesso não foi autorizado!','Aviso',mb_ok+MB_ICONERROR);
        exit;
      end
      else
      begin
        caixa := true;
        frmmodulo.qrcaixa_operador.open;
        frmmodulo.qrcaixa_operador.Locate('codigo',frmmodulo.qrvenda.fieldbyname('codcaixa').asstring,[loCaseInsensitive]);
        if frmmodulo.qrvenda.FieldByName('data').asstring <> frmmodulo.qrcaixa_operador.FieldByName('data').asstring then
        begin
          if application.messagebox('Esta venda não foi feita nesta data! Deseja continuar?','Atenção',mb_yesno+MB_ICONWARNING+MB_DEFBUTTON2) = idyes then
          begin
            caixa := true;
          end
          else
            exit;
        END
        else
        begin
          if frmmodulo.qrcaixa_operador.FieldByName('situacao').asinteger <> 1 then
          begin
            application.messagebox('O caixa que efetuou esta venda está fechado! Impossível efetuar o cancelamento!','Atenção',mb_oK+MB_ICONerror);
            exit;
          end;
        end;

          (*------lançamento no caixa------*)



          ////  LANCAMENTOS ESPECIFICOS DE CADA FORMA DE PAGAMENTO
          frmmodulo.qrcaixa_mov.OPEN;
          if FRMMODULO.QRVENDA.FIELDBYNAME('MEIO_DINHEIRO').ASFLOAT <> 0 then
          begin
             frmmodulo.qrcaixa_mov.insert;
             frmmodulo.qrcaixa_mov.FieldByName('codigo').asstring      := frmprincipal.codifica('000044');
             frmmodulo.qrcaixa_mov.fieldbyname('codcaixa').asstring    := FRMMODULO.QRVENDA.FIELDBYNAME('CODCAIXA').ASSTRING;
             frmmodulo.qrcaixa_mov.fieldbyname('codoperador').asstring := FRMMODULO.QRVENDA.FIELDBYNAME('CODCAIXA').ASSTRING;
             frmmodulo.qrcaixa_mov.fieldbyname('data').asstring        := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
             frmmodulo.qrcaixa_mov.fieldbyname('saida').asfloat        := FRMMODULO.QRVENDA.FIELDBYNAME('MEIO_DINHEIRO').ASFLOAT;
             frmmodulo.qrcaixa_mov.FieldByName('valor').asfloat        := FRMMODULO.QRVENDA.FIELDBYNAME('MEIO_DINHEIRO').ASFLOAT*(-1);
             frmmodulo.qrconfig.open;
             frmmodulo.qrcaixa_mov.fieldbyname('codconta').asstring    := frmmodulo.qrconfig.fieldbyname('PLANO_VENDA_AV').asstring;
             frmmodulo.qrcaixa_mov.fieldbyname('movimento').asINTEGER  := 3; // venda em dinheiro
             frmmodulo.qrcaixa_mov.fieldbyname('historico').asstring   := 'CANCELAMENTO Venda No. '+FRMMODULO.QRVENDA.FIELDBYNAME('CODIGO').ASSTRING+' - '+FRMMODULO.QRVENDA.FIELDBYNAME('CLIENTE').ASSTRING;
             frmmodulo.qrcaixa_mov.post;
           end;

          frmmodulo.qrcaixa_mov.OPEN;
          if FRMMODULO.QRVENDA.FIELDBYNAME('MEIO_CHEQUEAV').ASFLOAT <> 0 then
          begin
             frmmodulo.qrcaixa_mov.insert;
             frmmodulo.qrcaixa_mov.FieldByName('codigo').asstring      := frmprincipal.codifica('000044');
             frmmodulo.qrcaixa_mov.fieldbyname('codcaixa').asstring    := FRMMODULO.QRVENDA.FIELDBYNAME('CODCAIXA').ASSTRING;
             frmmodulo.qrcaixa_mov.fieldbyname('codoperador').asstring := FRMMODULO.QRVENDA.FIELDBYNAME('CODCAIXA').ASSTRING;
             frmmodulo.qrcaixa_mov.fieldbyname('data').asstring        := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
             frmmodulo.qrcaixa_mov.FieldByName('valor').asfloat        := FRMMODULO.QRVENDA.FIELDBYNAME('MEIO_CHEQUEAV').ASFLOAT * (-1);
             frmmodulo.qrconfig.open;
             frmmodulo.qrcaixa_mov.fieldbyname('codconta').asstring    := frmmodulo.qrconfig.fieldbyname('PLANO_VENDA_AV').asstring;

             frmmodulo.qrcaixa_mov.fieldbyname('movimento').asINTEGER  := 5; // venda CHEQUE AV
             frmmodulo.qrcaixa_mov.fieldbyname('historico').asstring   := 'CANCELAMENTO Venda No. '+FRMMODULO.QRVENDA.FIELDBYNAME('CODIGO').ASSTRING+' - '+FRMMODULO.QRVENDA.FIELDBYNAME('CLIENTE').ASSTRING;
             frmmodulo.qrcaixa_mov.post;
           end;
          frmmodulo.qrcaixa_mov.OPEN;
          if FRMMODULO.QRVENDA.FIELDBYNAME('MEIO_CHEQUEAP').ASFLOAT <> 0 then
          begin
             frmmodulo.qrcaixa_mov.insert;
             frmmodulo.qrcaixa_mov.FieldByName('codigo').asstring      := frmprincipal.codifica('000044');
             frmmodulo.qrcaixa_mov.fieldbyname('codcaixa').asstring    := FRMMODULO.QRVENDA.FIELDBYNAME('CODCAIXA').ASSTRING;
             frmmodulo.qrcaixa_mov.fieldbyname('codoperador').asstring := FRMMODULO.QRVENDA.FIELDBYNAME('CODCAIXA').ASSTRING;
             frmmodulo.qrcaixa_mov.fieldbyname('data').asstring        := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
             frmmodulo.qrcaixa_mov.FieldByName('valor').asfloat        := FRMMODULO.QRVENDA.FIELDBYNAME('MEIO_CHEQUEAP').ASFLOAT * (-1);
             frmmodulo.qrconfig.open;
             frmmodulo.qrcaixa_mov.fieldbyname('codconta').asstring    := frmmodulo.qrconfig.fieldbyname('PLANO_VENDA_AP').asstring;

             frmmodulo.qrcaixa_mov.fieldbyname('movimento').asINTEGER  := 6; // venda CHEQUE AP
             frmmodulo.qrcaixa_mov.fieldbyname('historico').asstring   := 'CANCELAMENTO Venda No. '+FRMMODULO.QRVENDA.FIELDBYNAME('CODIGO').ASSTRING+' - '+FRMMODULO.QRVENDA.FIELDBYNAME('CLIENTE').ASSTRING;
             frmmodulo.qrcaixa_mov.post;
           end;
          frmmodulo.qrcaixa_mov.OPEN;
          if FRMMODULO.QRVENDA.FIELDBYNAME('MEIO_CARTAOCRED').ASFLOAT <> 0 then
          begin
             frmmodulo.qrcaixa_mov.insert;
             frmmodulo.qrcaixa_mov.FieldByName('codigo').asstring      := frmprincipal.codifica('000044');
             frmmodulo.qrcaixa_mov.fieldbyname('codcaixa').asstring    := FRMMODULO.QRVENDA.FIELDBYNAME('CODCAIXA').ASSTRING;
             frmmodulo.qrcaixa_mov.fieldbyname('codoperador').asstring := FRMMODULO.QRVENDA.FIELDBYNAME('CODCAIXA').ASSTRING;
             frmmodulo.qrcaixa_mov.fieldbyname('data').asstring        := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
             frmmodulo.qrcaixa_mov.FieldByName('valor').asfloat        := FRMMODULO.QRVENDA.FIELDBYNAME('MEIO_CARTAOCRED').ASFLOAT * (-1);
             frmmodulo.qrconfig.open;
             frmmodulo.qrcaixa_mov.fieldbyname('codconta').asstring    := frmmodulo.qrconfig.fieldbyname('PLANO_VENDA_AP').asstring;

             frmmodulo.qrcaixa_mov.fieldbyname('movimento').asINTEGER  := 7; // VENDA CARTAO CRED
             frmmodulo.qrcaixa_mov.fieldbyname('historico').asstring   := 'CANCELAMENTO Venda No. '+FRMMODULO.QRVENDA.FIELDBYNAME('CODIGO').ASSTRING+' - '+FRMMODULO.QRVENDA.FIELDBYNAME('CLIENTE').ASSTRING;
             frmmodulo.qrcaixa_mov.post;
           end;
          frmmodulo.qrcaixa_mov.OPEN;
          if FRMMODULO.QRVENDA.FIELDBYNAME('MEIO_CARTAODEB').ASFLOAT <> 0 then
          begin
             frmmodulo.qrcaixa_mov.insert;
             frmmodulo.qrcaixa_mov.FieldByName('codigo').asstring      := frmprincipal.codifica('000044');
             frmmodulo.qrcaixa_mov.fieldbyname('codcaixa').asstring    := FRMMODULO.QRVENDA.FIELDBYNAME('CODCAIXA').ASSTRING;
             frmmodulo.qrcaixa_mov.fieldbyname('codoperador').asstring := FRMMODULO.QRVENDA.FIELDBYNAME('CODCAIXA').ASSTRING;
             frmmodulo.qrcaixa_mov.fieldbyname('data').asstring        := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
             frmmodulo.qrcaixa_mov.FieldByName('valor').asfloat        := FRMMODULO.QRVENDA.FIELDBYNAME('MEIO_CARTAODEB').ASFLOAT * (-1);
             frmmodulo.qrconfig.open;
             frmmodulo.qrcaixa_mov.fieldbyname('codconta').asstring    := frmmodulo.qrconfig.fieldbyname('PLANO_VENDA_AP').asstring;
             frmmodulo.qrcaixa_mov.fieldbyname('movimento').asINTEGER  := 8; // venda CARTAO DEB
             frmmodulo.qrcaixa_mov.fieldbyname('historico').asstring   := 'CANCELAMENTO Venda No. '+FRMMODULO.QRVENDA.FIELDBYNAME('CODIGO').ASSTRING+' - '+FRMMODULO.QRVENDA.FIELDBYNAME('CLIENTE').ASSTRING;
             frmmodulo.qrcaixa_mov.post;
           end;
          frmmodulo.qrcaixa_mov.OPEN;
          if FRMMODULO.QRVENDA.FIELDBYNAME('MEIO_CREDIARIO').ASFLOAT <> 0 then
          begin
             frmmodulo.qrcaixa_mov.insert;
             frmmodulo.qrcaixa_mov.FieldByName('codigo').asstring      := frmprincipal.codifica('000044');
             frmmodulo.qrcaixa_mov.fieldbyname('codcaixa').asstring    := FRMMODULO.QRVENDA.FIELDBYNAME('CODCAIXA').ASSTRING;
             frmmodulo.qrcaixa_mov.fieldbyname('codoperador').asstring := FRMMODULO.QRVENDA.FIELDBYNAME('CODCAIXA').ASSTRING;
             frmmodulo.qrcaixa_mov.fieldbyname('data').asstring        := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
             frmmodulo.qrcaixa_mov.FieldByName('valor').asfloat        := FRMMODULO.QRVENDA.FIELDBYNAME('MEIO_CREDIARIO').ASFLOAT * (-1);
             frmmodulo.qrconfig.open;
             frmmodulo.qrcaixa_mov.fieldbyname('codconta').asstring    := frmmodulo.qrconfig.fieldbyname('PLANO_VENDA_AP').asstring;

             frmmodulo.qrcaixa_mov.fieldbyname('movimento').asINTEGER  := 4; // venda CREDIARIO
             frmmodulo.qrcaixa_mov.fieldbyname('historico').asstring   := 'CANCELAMENTO Venda No. '+FRMMODULO.QRVENDA.FIELDBYNAME('CODIGO').ASSTRING+' - '+FRMMODULO.QRVENDA.FIELDBYNAME('CLIENTE').ASSTRING;
             frmmodulo.qrcaixa_mov.post;
           end;

          (*------final lancto  caixa------*)


          frmmodulo.qrcontasreceber.Close;
          frmmodulo.qrcontasreceber.SQL.Clear;
          frmmodulo.qrcontasreceber.sql.add('select * from c000049 where codvenda = '''+frmmodulo.qrvenda.fieldbyname('codigo').asstring+'''');
          frmmodulo.qrcontasreceber.open;
          frmmodulo.qrcontasreceber.First;


          while frmmodulo.qrcontasreceber.recordcount <> 0 do
          begin
            frmmodulo.qrcontasreceber.delete;
          end;

          frmmodulo.qrproduto_mov.close;
          frmmodulo.qrproduto_mov.SQL.Clear;
          frmmodulo.qrproduto_mov.sql.add('select * from c000032 where codnota = '''+frmmodulo.qrvenda.fieldbyname('codigo').asstring+''' and codcliente = '''+frmmodulo.qrvenda.fieldbyname('codcliente').asstring+''' and movimento <> 9');
          frmmodulo.qrproduto_mov.Open;
          frmmodulo.qrproduto_mov.First;
          frmmodulo.qrproduto.open;
          frmmodulo.qrgrade_produto.Open;
          frmmodulo.qrserial_produto.open;
          while frmmodulo.qrproduto_mov.recordcount <> 0 do
          begin
            if frmmodulo.qrproduto.Locate('codigo',frmmodulo.qrproduto_mov.fieldbyname('codproduto').asstring,[loCaseInsensitive]) then
            begin
              case frmmodulo.qrproduto_mov.FieldByName('movimento').asinteger of
              2 : begin  // venda normal
                    // grade
                    if frmmodulo.qrproduto_mov.FieldByName('codgrade').AsString <> '' then
                    begin
                      frmmodulo.qrgrade_produto.close;
                      frmmodulo.qrgrade_produto.sql.clear;
                      frmmodulo.qrgrade_produto.sql.add('select * from c000021 where codigo = '''+frmmodulo.qrproduto_mov.FieldByName('codgrade').AsString+'''');
                      frmmodulo.qrgrade_produto.open;
                      if frmmodulo.qrgrade_produto.RecNo = 1 then
                      begin
                        frmmodulo.qrgrade_produto.edit;
                        frmmodulo.qrgrade_produto.fieldbyname('estoque').asfloat := frmmodulo.qrgrade_produto.fieldbyname('estoque').asfloat + frmmodulo.qrproduto_mov.fieldbyname('qtde').asfloat;
                        frmmodulo.qrgrade_produto.post;
                      end;
                    end
                    else
                    begin  // serial
                      if frmmodulo.qrproduto_mov.FieldByName('serial').AsString <> '' then
                      begin
                        frmmodulo.qrserial_produto.close;
                        frmmodulo.qrserial_produto.SQL.clear;
                        frmmodulo.qrserial_produto.sql.add('select * from c000022 where serial = '''+frmmodulo.qrproduto_mov.FieldByName('serial').AsString+'''');
                        frmmodulo.qrserial_produto.sql.add('and codcliente = '''+frmmodulo.qrproduto_mov.fieldbyname('codcliente').asstring+'''');
                        frmmodulo.qrserial_produto.open;
                        if frmmodulo.qrserial_produto.RecNo = 1 then
                        begin
                          frmmodulo.qrserial_produto.edit;
                          frmmodulo.qrserial_produto.fieldbyname('situacao').asfloat := 1;
                          frmmodulo.qrserial_produto.fieldbyname('cliente').asstring := '';
                          frmmodulo.qrserial_produto.fieldbyname('codcliente').asstring := '';
                          frmmodulo.qrserial_produto.FieldByName('DATAVENDA').ASSTRING := '';
                          frmmodulo.qrserial_produto.fieldbyname('codvenda').asstring := '';
                          frmmodulo.qrserial_produto.fieldbyname('precovenda').asstring := '';
                          frmmodulo.qrserial_produto.post;
                        end;
                      end;
                    end;
                  end;
              7 : begin // devolucao do produto


                    // grade
                    if frmmodulo.qrproduto_mov.FieldByName('codgrade').AsString <> '' then
                    begin
                      frmmodulo.qrgrade_produto.close;
                      frmmodulo.qrgrade_produto.sql.clear;
                      frmmodulo.qrgrade_produto.sql.add('select * from c000021 where codigo = '''+frmmodulo.qrproduto_mov.FieldByName('codgrade').AsString+'''');
                      frmmodulo.qrgrade_produto.open;
                      if frmmodulo.qrgrade_produto.RecNo = 1 then
                      begin
                        frmmodulo.qrgrade_produto.edit;
                        frmmodulo.qrgrade_produto.fieldbyname('estoque').asfloat := frmmodulo.qrgrade_produto.fieldbyname('estoque').asfloat - frmmodulo.qrproduto_mov.fieldbyname('qtde').asfloat;
                        frmmodulo.qrgrade_produto.post;
                      end;
                    end
                    else
                    begin  // serial
                      if frmmodulo.qrproduto_mov.FieldByName('serial').AsString <> '' then
                      begin
                        frmmodulo.qrserial_produto.close;
                        frmmodulo.qrserial_produto.SQL.clear;
                        frmmodulo.qrserial_produto.sql.add('select * from c000022 where serial = '''+frmmodulo.qrproduto_mov.FieldByName('serial').AsString+'''');
                        frmmodulo.qrserial_produto.sql.add('and codcliente = '''+frmmodulo.qrproduto_mov.fieldbyname('codcliente').asstring+'''');
                        frmmodulo.qrserial_produto.open;
                        if frmmodulo.qrserial_produto.RecNo = 1 then
                        begin
                          frmmodulo.qrserial_produto.edit;
                          frmmodulo.qrserial_produto.fieldbyname('situacao').asfloat := 2;
                          frmmodulo.qrserial_produto.post;
                        end;
                      end;
                    end;
                  end;
              end;
            end;
            frmmodulo.qrproduto_mov.delete;
          end;

          ltotal.value := ltotal.value - frmmodulo.qrvenda.fieldbyname('total').asfloat;
          lqtde.value := lqtde.Value - 1;


          if frmmodulo.qrvenda.fieldbyname('cod_financeira_lancto').asstring <> '' then
          begin
            query.close;
            query.sql.clear;
            query.sql.add('delete from c000123 where codigo = '''+frmmodulo.qrvenda.fieldbyname('cod_financeira_lancto').asstring+'''');
            query.execsql;
          end;

            // cartao de credito
            query.close;
            query.sql.clear;
            query.sql.add('delete from c000124 where cod_venda = '''+frmmodulo.qrvenda.fieldbyname('cod_financeira_lancto').asstring+'''');
            query.execsql;


          frmprincipal.log(codigo_usuario,'VENDA',FRMMODULO.qrVENDA.fieldbyname('codigo').asstring,'EXCLUIU',FRMMODULO.qrVENDA.fieldbyname('CLIENTE').asstring);
          frmmodulo.qrvenda.edit;
          frmmodulo.qrvenda.fieldbyname('situacao').asinteger := 2;
          frmmodulo.qrvenda.post;
                
          frmmodulo.Conexao.Commit;
      end;
//  except
//    showmessage('A operação gerou erros! O processamento foi interrompido.');
//    frmmodulo.Conexao.Rollback;
//  end;
end;

procedure Tfrmnotas_venda.brelatorioClick(Sender: TObject);
begin
  frmlista_venda2 := tfrmlista_venda2.create(self);
  frmlista_venda2.ShowModal;



end;

procedure Tfrmnotas_venda.BitBtn1Click(Sender: TObject);
begin

{
  if application.messagebox('Deseja Ré-imprimir segunda via (Comprovante Não Fiscal Vinculado)?','Aviso',mb_yesno+mb_iconquestion) = idyes then
    begin
      // --------------------- EMISSAO DO COMPROVANTE NAO FISCAL VINCULADO COMO NOTA DE VENDA --------------------------\\

      application.ProcessMessages;
      if ecf_abre_CNFV(ecf_modelo,'','','') <> 'ERRO' then
        BEGIN
          if ecf_usa_CNFV(ecf_modelo,'COMPROVANTE DE DÉBITO   CUPOM FISCAL No: '+frmmodulo.qrvendaNUMERO_CUPOM_FISCAL.AsString) = 'ERRO' then exit;
          if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
          if ecf_usa_CNFV(ecf_modelo,'PRODUTO                    QTDE   VALOR    TOTAL' ) = 'ERRO' then exit;
          if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
          qrproduto_mov.First;
          while not qrproduto_mov.Eof do
          begin
            if ecf_usa_CNFV(ecf_modelo,frmPrincipal.texto_justifica(qrproduto_mov.fieldbyname('codproduto').asstring,6,'0','E')+' '+
                            frmPrincipal.texto_justifica(qrproduto_mov.fieldbyname('produto').asstring,19,' ','D')+
                            frmPrincipal.texto_justifica(formatfloat('######0',qrproduto_mov.fieldbyname('qtde').asfloat),4,' ','E')+
                            frmPrincipal.texto_justifica(formatfloat('######0.00',qrproduto_mov.fieldbyname('unitario').asfloat),9,' ','E')+
                            frmPrincipal.texto_justifica(formatfloat('######0.00',qrproduto_mov.fieldbyname('total').asfloat),9,' ','E')) = 'ERRO' then exit;
              qrproduto_mov.Next;
          end;
          if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
          if ecf_usa_CNFV(ecf_modelo,'TOTAL DOS PRODUTOS .................R$ '+frmPrincipal.texto_justifica(formatfloat('######0.00',QUERY1.FIELDBYNAME('TOTAL').ASFLOAT-QUERY1.FIELDBYNAME('DESCONTO').ASFLOAT),9,' ','E')) = 'ERRO' then exit;
          if ecf_usa_CNFV(ecf_modelo,'DESCONTO ...........................R$ '+frmPrincipal.texto_justifica(formatfloat('######0.00',QUERY1.FIELDBYNAME('DESCONTO').ASFLOAT),9,' ','E')) = 'ERRO' then exit;
          if ecf_usa_CNFV(ecf_modelo,'T O T A L ..........................R$ '+frmPrincipal.texto_justifica(formatfloat('######0.00',QUERY1.FIELDBYNAME('TOTAL').ASFLOAT),9,' ','E')) = 'ERRO' then exit;
          if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
          if ecf_usa_CNFV(ecf_modelo,'' ) = 'ERRO' then exit;
          if ecf_usa_CNFV(ecf_modelo,'' ) = 'ERRO' then exit;
          if ecf_usa_CNFV(ecf_modelo,'' ) = 'ERRO' then exit;
          if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
          if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('CLIENTE.: '+frmmodulo.qrvendaCODCLIENTE.AsString+'-'+frmmodulo.qrvendacliente.AsString,48,' ','D')) = 'ERRO' then exit;
          //if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica(('ENDERECO: '+frmmodulo.qrvendacliente.deilsonAsStringendereco').asstring+' '+frmmodulo.qrcliente.fieldbyname('cidade').asstring+'/'+frmmodulo.qrcliente.fieldbyname('uf').asstring),48,' ','D')) = 'ERRO' then exit;
          //if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('CPF/CNPJ: '+frmmodulo.qrcliente.fieldbyname('cpf').asstring,42,' ','D')) = 'ERRO' then exit;
          if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('VENDEDOR: '+frmmodulo.qrvendaCODVENDEDOR.AsString+'-'+frmmodulo.qrvendavendedor.AsString,42,' ','D')) = 'ERRO' then exit;

          if frmmodulo.qrvenda.FieldByName('MEIO_CONVENIO').AsFloat > 0 then
          begin
            if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('CONVENIO: ',48,' ','D')) = 'ERRO' then exit;
            if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
            if ecf_usa_CNFV(ecf_modelo,'Autorizo descontar em folha o valor da compra.' ) = 'ERRO' then exit;
          end
       else
          begin
            if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
            if ecf_usa_CNFV(ecf_modelo,'Reconheço e pagarei a divida aqui apresentada.  ' ) = 'ERRO' then exit;
         end;
       if ecf_fecha_CNFV(ecf_modelo) = 'ERRO' then exit;
     end;
   end;
 }
end;

procedure Tfrmnotas_venda.eclienteButtonClick(Sender: TObject);
begin
        resultado_pesquisa1 := '';
        parametro_pesquisa :=  ecliente.text;
        frmxloc_cliente := tfrmxloc_cliente.create(self);
        frmxloc_cliente.showmodal;
        if resultado_pesquisa1 <> '' then
        begin
          ecliente.text := resultado_pesquisa1+' '+resultado_pesquisa2;

        end;
end;

procedure Tfrmnotas_venda.eclienteEnter(Sender: TObject);
begin
  ecliente.Text := '';
end;

procedure Tfrmnotas_venda.eclienteKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    if ecliente.text <> '' then
    begin
    qrcliente2.close;
    qrcliente2.sql.Clear;
    qrcliente2.sql.add('select * from c000007 where codigo = '''+frmprincipal.zerarcodigo(copy(ecliente.Text,1,6),6)+'''');
    qrcliente2.Open;
    if qrcliente2.RecordCount > 0 then
    begin
      if qrcliente2.RecordCount = 1 then
      begin
        ecliente.text := qrcliente2.fieldbyname('codigo').asstring +' '+ qrcliente2.fieldbyname('nome').asstring;
        enumero.SetFocus;
      end
      else
      begin
        resultado_pesquisa1 := '';
        parametro_pesquisa :=  'select * from c000007 where upper(nome) like '''+ansiuppercase(ecliente.text)+'%'' order by nome';
        frmxloc_cliente := tfrmxloc_cliente.create(self);
        frmxloc_cliente.showmodal;
        if resultado_pesquisa1 <> '' then
        begin
          ecliente.text := resultado_pesquisa1+' '+resultado_pesquisa2;
            enumero.SetFocus;

        end;
      end;
    end
    else
    begin
      application.messagebox('Cliente não encontrado!','Atenção',mb_ok+mb_iconerror);
        resultado_pesquisa1 := '';
        parametro_pesquisa :=  '';
        frmxloc_cliente := tfrmxloc_cliente.create(self);
        frmxloc_cliente.showmodal;
        if resultado_pesquisa1 <> '' then
        begin
          ecliente.text := resultado_pesquisa1+' '+resultado_pesquisa2;
            enumero.SetFocus;

        end;

    end;
    end;



  end;

end;

procedure Tfrmnotas_venda.ENUMEROKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmnotas_venda.ENUMEROExit(Sender: TObject);
begin
  enumero.text := frmprincipal.zerarcodigo(enumero.text,6);
end;

procedure Tfrmnotas_venda.tab_principalChange(Sender: TObject);
var i : integer;
begin
   { for i := 0 to frmnotas_venda.ComponentCount - 1 do
    begin
    if frmnotas_venda.Components[i] is tzquery then
       begin
       tzquery(frmnotas_venda.Components[i]).Connection := frmmodulo.Conexao;
       end;
    end; }

  if tab_principal.ActivePageIndex = 1 then
  begin
//    QUERY1.Close;
//    QUERY1.SQL.CLEAR;
//    QUERY1.SQL.ADD('SELECT SUM(TOTAL) TOTAL,SUM(DESCONTO) DESCONTO, COUNT(CODIGO) QTDE FROM C000032 WHERE numeronota = '''+frmmodulo.qrvenda.fieldbyname('codigo').asstring+'''');
//    QUERY1.SQL.ADD('and data = :vdat');
//    QUERY1.params.ParamByName('vdat').AsDateTime := frmmodulo.qrvenda.fieldbyname('data').AsDateTime;
//    QUERY1.open;
    qrproduto_mov.Connection := frmmodulo.Conexao;
    qrproduto.Connection     := frmmodulo.Conexao;
    qrproduto_mov.Close;
    qrproduto_mov.SQL.Clear;
    qrproduto_mov.SQL.Add('select * from c000032 where CODnota = '''+frmmodulo.qrvenda.fieldbyname('codigo').asstring+'''');
    qrproduto_mov.SQL.Add('and data = :vdat');
    qrproduto_mov.params.ParamByName('vdat').AsDateTime := frmmodulo.qrvenda.fieldbyname('data').AsDateTime;

    qrproduto_mov.Open;

    LQTDE_cupom.Caption := inttostr(qrproduto_mov.RecordCount);

  end;


end;

procedure Tfrmnotas_venda.Visualizar1Click(Sender: TObject);
begin
  tab_principal.ActivePageIndex := 1;
end;

procedure Tfrmnotas_venda.DateEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmnotas_venda.DateEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then  PERFORM(WM_NEXTDLGCTL,0,0);
end;

procedure Tfrmnotas_venda.ModelosdeNotasFiscais1Click(Sender: TObject);
begin
  ecf_leitura_x(ecf_modelo);
end;

procedure Tfrmnotas_venda.CFOP1Click(Sender: TObject);
begin
  frmnotas_venda_ecf_leituramemoria := tfrmnotas_venda_ecf_leituramemoria.create(self);
  frmnotas_venda_ecf_leituramemoria.showmodal;
end;

procedure Tfrmnotas_venda.ClassesdeRecolhimento1Click(Sender: TObject);
var texto : pansichar;
TXT : TEXTFILE;
cnpj_cpf, ie_rg, TEXTOS : STRING;
i : integer;
begin
  if frmprincipal.autentica('Redução Z',nivel_exclusao) then
  begin
    texto := pansichar('Este procedimento fechará o Caixa da ECF, permitindo efetuar novas vendas após as 00:00 hs!'+#13+'Confirma a emissão da REDUÇÃO Z?');
    if application.messagebox(texto,'Atenção - Redução Z',mb_yesno+MB_ICONWARNING+MB_DEFBUTTON2) = idyes then
    begin
      ecf_reducao_z(ecf_modelo);
      frmPrincipal.GravaReducaoZ;
    END;


  end
  else
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
  end;

end;

procedure Tfrmnotas_venda.MemorandodeExportao1Click(Sender: TObject);
var texto : pansichar;
cp : string;
i : integer;
begin
       if frmprincipal.autentica('Cancel.Cupom',nivel_exclusao) then
       begin
        TRY
         i := strtoint(ecf_numero_cupom(ecf_modelo));
         texto := pansichar(frmprincipal.zerarcodigo(inttostr(i-1),6));
         texto := pansichar('Confirma o Cancelamento do Cupom Nº '+texto+'?');
         Application.ProcessMessages;
         EXCEPT
          TEXTO := 'Confirma o Cancelamento do Cupom?';
         END;
         if application.messagebox(texto,'Cancelamento de Cupom',mb_yesno+MB_ICONWARNING+MB_DEFBUTTON2) = idyes then
         begin
           if  ecf_cancela_cupom(ecf_modelo,'') = 'OK' then
           begin
             cp := frmprincipal.zerarcodigo(inttostr(i-1),6);
             if frmmodulo.qrvenda.Locate('numero_cupom_fiscal',cp,[loCaseInsensitive]) then
             begin
               bcancelclick(frmnotas_venda);
             end;
           end;
         end;
       end
       else
       begin
         Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
       end;
end;

procedure Tfrmnotas_venda.Suprimento1Click(Sender: TObject);
begin
  if frmprincipal.autentica_caixa('Suprimento',0) then
  begin
    frmsuprimentocaixa := tfrmsuprimentocaixa.create(self);
    frmsuprimentocaixa.Edit1.text := frmmodulo.qrcaixa_operador.FIELDBYNAME('codigo').ASSTRING;
    frmsuprimentocaixa.showmodal;
  end
  else
  begin
    application.messagebox('Não autorizado!','Atenção',mb_ok+MB_ICONERROR);
  end;
end;

procedure Tfrmnotas_venda.Sangria1Click(Sender: TObject);
begin
  if frmprincipal.autentica_caixa('Sangria',0) then
  begin
    frmsangriacaixa := tfrmsangriacaixa.create(self);
    frmsangriacaixa.Edit1.text := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
    frmsangriacaixa.showmodal;
  end
  else
  begin
    application.messagebox('Não autorizado!','Atenção',mb_ok+MB_ICONERROR);
  end;

end;

procedure Tfrmnotas_venda.AdvGlowButton1Click(Sender: TObject);
begin
  frmmodulo.qrcontasreceber.Close;
  frmmodulo.qrcontasreceber.SQL.Clear;
  frmmodulo.qrcontasreceber.sql.add('select * from c000049 where codvenda = '''+frmmodulo.qrvenda.fieldbyname('codigo').asstring+'''');
  frmmodulo.qrcontasreceber.open;
  frmmodulo.qrcontasreceber.First;

  if (frmmodulo.qrvenda.fieldbyname('codcliente').asstring <> 'S/CLIE') AND (frmmodulo.qrvenda.fieldbyname('codcliente').asstring <> '')then
  begin
    frmmodulo.qrcliente.close;
    frmmodulo.qrcliente.sql.clear;
    frmmodulo.qrcliente.sql.add('select * from c000007 where codigo = '''+FRMMODULO.QRVENDA.FIELDBYNAME('CODCLIENTE').ASSTRING+'''');
    frmmodulo.qrcliente.open;
    IF FRMMODULO.QRCLIENTE.RecordCount > 0 THEN
    BEGIN
      frmnotas_venda_impressao := tfrmnotas_venda_impressao.create(self);
      frmnotas_venda_impressao.showmodal;
    end
    else
    begin
      application.messagebox('Houve erro na procura do cliente! Impossível prosseguir!','Atenção',mb_ok+MB_ICONERROR);
      exit;
    end;
  END
  ELSE
  BEGIN
    frmnotas_venda_impressao := tfrmnotas_venda_impressao.create(self);
    frmnotas_venda_impressao.showmodal;
  END;
  frmmodulo.qrcliente.close;
  frmmodulo.qrcliente.sql.clear;
  frmmodulo.qrcliente.sql.add('select * from c000007');
  frmmodulo.qrcliente.open;
end;

procedure Tfrmnotas_venda.Cliente1Click(Sender: TObject);
begin
  ecliente.setfocus;
end;

procedure Tfrmnotas_venda.N2aVia1Click(Sender: TObject);
begin
  tab_principal.ActivePageIndex := 0;
end;

procedure Tfrmnotas_venda.BaixarInformaesdaECFDownloadMFD1Click(
  Sender: TObject);
begin
  frmecf_download := tfrmecf_download.create(self);
  frmecf_download.showmodal;
end;

procedure Tfrmnotas_venda.ProgramaTotalizardeRecebimento1Click(
  Sender: TObject);
var  totalizador : string;
begin
   totalizador := INPUTBOX('Totalizador','Informe o nº do totalizador:','3');
   ecf_programa_totalizador(ECF_MODELO,totalizador);
end;

procedure Tfrmnotas_venda.combo_situacaoKeyPress(Sender: TObject;
  var Key: Char);
begin
    if key = #13 then bfiltro.setfocus;
end;

procedure Tfrmnotas_venda.bcancelClick(Sender: TObject);
var caixa : boolean;
begin
           IF FRMMODULO.QRVENDA.FIELDBYNAME('SITUACAO').ASINTEGER = 2 THEN
           BEGIN
             exit;
           END;
//try

              caixa := true;
              frmmodulo.qrcaixa_operador.open;
              frmmodulo.qrcaixa_operador.Locate('codigo',frmmodulo.qrvenda.fieldbyname('codcaixa').asstring,[loCaseInsensitive]);
              if frmmodulo.qrvenda.FieldByName('data').asstring <> frmmodulo.qrcaixa_operador.FieldByName('data').asstring then
              begin
                if application.messagebox('Esta venda não foi feita nesta data! Deseja continuar?','Atenção',mb_yesno+MB_ICONWARNING+MB_DEFBUTTON2) = idyes then
                begin
                  caixa := true;
                end
                else
                  exit;
              END
              else
              begin
                if frmmodulo.qrcaixa_operador.FieldByName('situacao').asinteger <> 1 then
                begin
                  application.messagebox('O caixa que efetuou esta venda está fechado! Impossível efetuar o cancelamento!','Atenção',mb_oK+MB_ICONerror);
                  exit;
                end;
              end;

                (*------lançamento no caixa------*)



                ////  LANCAMENTOS ESPECIFICOS DE CADA FORMA DE PAGAMENTO
                frmmodulo.qrcaixa_mov.OPEN;
                if FRMMODULO.QRVENDA.FIELDBYNAME('MEIO_DINHEIRO').ASFLOAT <> 0 then
                begin
                   frmmodulo.qrcaixa_mov.insert;
                   frmmodulo.qrcaixa_mov.FieldByName('codigo').asstring := frmprincipal.codifica('000044');
                   frmmodulo.qrcaixa_mov.fieldbyname('codcaixa').asstring := FRMMODULO.QRVENDA.FIELDBYNAME('CODCAIXA').ASSTRING;
                   frmmodulo.qrcaixa_mov.fieldbyname('codoperador').asstring := FRMMODULO.QRVENDA.FIELDBYNAME('CODCAIXA').ASSTRING;
                   frmmodulo.qrcaixa_mov.fieldbyname('data').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
                   frmmodulo.qrcaixa_mov.fieldbyname('saida').asfloat := FRMMODULO.QRVENDA.FIELDBYNAME('MEIO_DINHEIRO').ASFLOAT;
                   frmmodulo.qrcaixa_mov.FieldByName('valor').asfloat := FRMMODULO.QRVENDA.FIELDBYNAME('MEIO_DINHEIRO').ASFLOAT*(-1);
                   frmmodulo.qrconfig.open;
                   frmmodulo.qrcaixa_mov.fieldbyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_VENDA_AV').asstring;
                   frmmodulo.qrcaixa_mov.fieldbyname('movimento').asINTEGER := 3; // venda em dinheiro
                   frmmodulo.qrcaixa_mov.fieldbyname('historico').asstring := 'CANCELAMENTO Venda No. '+FRMMODULO.QRVENDA.FIELDBYNAME('CODIGO').ASSTRING+' - '+FRMMODULO.QRVENDA.FIELDBYNAME('CLIENTE').ASSTRING;
                   frmmodulo.qrcaixa_mov.post;
                 end;

                frmmodulo.qrcaixa_mov.OPEN;
                if FRMMODULO.QRVENDA.FIELDBYNAME('MEIO_CHEQUEAV').ASFLOAT <> 0 then
                begin
                   frmmodulo.qrcaixa_mov.insert;
                   frmmodulo.qrcaixa_mov.FieldByName('codigo').asstring := frmprincipal.codifica('000044');
                   frmmodulo.qrcaixa_mov.fieldbyname('codcaixa').asstring := FRMMODULO.QRVENDA.FIELDBYNAME('CODCAIXA').ASSTRING;
                   frmmodulo.qrcaixa_mov.fieldbyname('codoperador').asstring := FRMMODULO.QRVENDA.FIELDBYNAME('CODCAIXA').ASSTRING;
                   frmmodulo.qrcaixa_mov.fieldbyname('data').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
                   frmmodulo.qrcaixa_mov.FieldByName('valor').asfloat := FRMMODULO.QRVENDA.FIELDBYNAME('MEIO_CHEQUEAV').ASFLOAT * (-1);
                   frmmodulo.qrconfig.open;
                   frmmodulo.qrcaixa_mov.fieldbyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_VENDA_AV').asstring;

                   frmmodulo.qrcaixa_mov.fieldbyname('movimento').asINTEGER := 5; // venda CHEQUE AV
                   frmmodulo.qrcaixa_mov.fieldbyname('historico').asstring := 'CANCELAMENTO Venda No. '+FRMMODULO.QRVENDA.FIELDBYNAME('CODIGO').ASSTRING+' - '+FRMMODULO.QRVENDA.FIELDBYNAME('CLIENTE').ASSTRING;
                   frmmodulo.qrcaixa_mov.post;
                 end;
                frmmodulo.qrcaixa_mov.OPEN;
                if FRMMODULO.QRVENDA.FIELDBYNAME('MEIO_CHEQUEAP').ASFLOAT <> 0 then
                begin
                   frmmodulo.qrcaixa_mov.insert;
                   frmmodulo.qrcaixa_mov.FieldByName('codigo').asstring := frmprincipal.codifica('000044');
                   frmmodulo.qrcaixa_mov.fieldbyname('codcaixa').asstring := FRMMODULO.QRVENDA.FIELDBYNAME('CODCAIXA').ASSTRING;
                   frmmodulo.qrcaixa_mov.fieldbyname('codoperador').asstring := FRMMODULO.QRVENDA.FIELDBYNAME('CODCAIXA').ASSTRING;
                   frmmodulo.qrcaixa_mov.fieldbyname('data').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
                   frmmodulo.qrcaixa_mov.FieldByName('valor').asfloat := FRMMODULO.QRVENDA.FIELDBYNAME('MEIO_CHEQUEAP').ASFLOAT * (-1);
                   frmmodulo.qrconfig.open;
                   frmmodulo.qrcaixa_mov.fieldbyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_VENDA_AP').asstring;

                   frmmodulo.qrcaixa_mov.fieldbyname('movimento').asINTEGER := 6; // venda CHEQUE AP
                   frmmodulo.qrcaixa_mov.fieldbyname('historico').asstring := 'CANCELAMENTO Venda No. '+FRMMODULO.QRVENDA.FIELDBYNAME('CODIGO').ASSTRING+' - '+FRMMODULO.QRVENDA.FIELDBYNAME('CLIENTE').ASSTRING;
                   frmmodulo.qrcaixa_mov.post;
                 end;
                frmmodulo.qrcaixa_mov.OPEN;
                if FRMMODULO.QRVENDA.FIELDBYNAME('MEIO_CARTAOCRED').ASFLOAT <> 0 then
                begin
                   frmmodulo.qrcaixa_mov.insert;
                   frmmodulo.qrcaixa_mov.FieldByName('codigo').asstring := frmprincipal.codifica('000044');
                   frmmodulo.qrcaixa_mov.fieldbyname('codcaixa').asstring := FRMMODULO.QRVENDA.FIELDBYNAME('CODCAIXA').ASSTRING;
                   frmmodulo.qrcaixa_mov.fieldbyname('codoperador').asstring := FRMMODULO.QRVENDA.FIELDBYNAME('CODCAIXA').ASSTRING;
                   frmmodulo.qrcaixa_mov.fieldbyname('data').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
                   frmmodulo.qrcaixa_mov.FieldByName('valor').asfloat := FRMMODULO.QRVENDA.FIELDBYNAME('MEIO_CARTAOCRED').ASFLOAT * (-1);
                   frmmodulo.qrconfig.open;
                   frmmodulo.qrcaixa_mov.fieldbyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_VENDA_AP').asstring;

                   frmmodulo.qrcaixa_mov.fieldbyname('movimento').asINTEGER := 7; // VENDA CARTAO CRED
                   frmmodulo.qrcaixa_mov.fieldbyname('historico').asstring := 'CANCELAMENTO Venda No. '+FRMMODULO.QRVENDA.FIELDBYNAME('CODIGO').ASSTRING+' - '+FRMMODULO.QRVENDA.FIELDBYNAME('CLIENTE').ASSTRING;
                   frmmodulo.qrcaixa_mov.post;
                 end;
                frmmodulo.qrcaixa_mov.OPEN;
                if FRMMODULO.QRVENDA.FIELDBYNAME('MEIO_CARTAODEB').ASFLOAT <> 0 then
                begin
                   frmmodulo.qrcaixa_mov.insert;
                   frmmodulo.qrcaixa_mov.FieldByName('codigo').asstring := frmprincipal.codifica('000044');
                   frmmodulo.qrcaixa_mov.fieldbyname('codcaixa').asstring := FRMMODULO.QRVENDA.FIELDBYNAME('CODCAIXA').ASSTRING;
                   frmmodulo.qrcaixa_mov.fieldbyname('codoperador').asstring := FRMMODULO.QRVENDA.FIELDBYNAME('CODCAIXA').ASSTRING;
                   frmmodulo.qrcaixa_mov.fieldbyname('data').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
                   frmmodulo.qrcaixa_mov.FieldByName('valor').asfloat := FRMMODULO.QRVENDA.FIELDBYNAME('MEIO_CARTAODEB').ASFLOAT * (-1);
                   frmmodulo.qrconfig.open;
                   frmmodulo.qrcaixa_mov.fieldbyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_VENDA_AP').asstring;
                   frmmodulo.qrcaixa_mov.fieldbyname('movimento').asINTEGER := 8; // venda CARTAO DEB
                   frmmodulo.qrcaixa_mov.fieldbyname('historico').asstring := 'CANCELAMENTO Venda No. '+FRMMODULO.QRVENDA.FIELDBYNAME('CODIGO').ASSTRING+' - '+FRMMODULO.QRVENDA.FIELDBYNAME('CLIENTE').ASSTRING;
                   frmmodulo.qrcaixa_mov.post;
                 end;
                frmmodulo.qrcaixa_mov.OPEN;
                if FRMMODULO.QRVENDA.FIELDBYNAME('MEIO_CREDIARIO').ASFLOAT <> 0 then
                begin
                   frmmodulo.qrcaixa_mov.insert;
                   frmmodulo.qrcaixa_mov.FieldByName('codigo').asstring := frmprincipal.codifica('000044');
                   frmmodulo.qrcaixa_mov.fieldbyname('codcaixa').asstring := FRMMODULO.QRVENDA.FIELDBYNAME('CODCAIXA').ASSTRING;
                   frmmodulo.qrcaixa_mov.fieldbyname('codoperador').asstring := FRMMODULO.QRVENDA.FIELDBYNAME('CODCAIXA').ASSTRING;
                   frmmodulo.qrcaixa_mov.fieldbyname('data').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
                   frmmodulo.qrcaixa_mov.FieldByName('valor').asfloat := FRMMODULO.QRVENDA.FIELDBYNAME('MEIO_CREDIARIO').ASFLOAT * (-1);
                   frmmodulo.qrconfig.open;
                   frmmodulo.qrcaixa_mov.fieldbyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_VENDA_AP').asstring;

                   frmmodulo.qrcaixa_mov.fieldbyname('movimento').asINTEGER := 4; // venda CREDIARIO
                   frmmodulo.qrcaixa_mov.fieldbyname('historico').asstring := 'CANCELAMENTO Venda No. '+FRMMODULO.QRVENDA.FIELDBYNAME('CODIGO').ASSTRING+' - '+FRMMODULO.QRVENDA.FIELDBYNAME('CLIENTE').ASSTRING;
                   frmmodulo.qrcaixa_mov.post;
                 end;

                (*------final lancto  caixa------*)


                frmmodulo.qrcontasreceber.Close;
                frmmodulo.qrcontasreceber.SQL.Clear;
                frmmodulo.qrcontasreceber.sql.add('select * from c000049 where codvenda = '''+frmmodulo.qrvenda.fieldbyname('codigo').asstring+'''');
                frmmodulo.qrcontasreceber.open;
                frmmodulo.qrcontasreceber.First;


                while frmmodulo.qrcontasreceber.recordcount <> 0 do
                begin
                  frmmodulo.qrcontasreceber.delete;
                end;

                frmmodulo.qrproduto_mov.close;
                frmmodulo.qrproduto_mov.SQL.Clear;
                frmmodulo.qrproduto_mov.sql.add('select * from c000032 where codnota = '''+frmmodulo.qrvenda.fieldbyname('codigo').asstring+''' and codcliente = '''+frmmodulo.qrvenda.fieldbyname('codcliente').asstring+''' and movimento <> 9');
                frmmodulo.qrproduto_mov.Open;
                frmmodulo.qrproduto_mov.First;
                frmmodulo.qrproduto.open;
                frmmodulo.qrgrade_produto.Open;
                frmmodulo.qrserial_produto.open;
                while frmmodulo.qrproduto_mov.recordcount <> 0 do
                begin
                  if frmmodulo.qrproduto.Locate('codigo',frmmodulo.qrproduto_mov.fieldbyname('codproduto').asstring,[loCaseInsensitive]) then
                  begin
                    case frmmodulo.qrproduto_mov.FieldByName('movimento').asinteger of
                    2 : begin  // venda normal
                          // grade
                          if frmmodulo.qrproduto_mov.FieldByName('codgrade').AsString <> '' then
                          begin
                            frmmodulo.qrgrade_produto.close;
                            frmmodulo.qrgrade_produto.sql.clear;
                            frmmodulo.qrgrade_produto.sql.add('select * from c000021 where codigo = '''+frmmodulo.qrproduto_mov.FieldByName('codgrade').AsString+'''');
                            frmmodulo.qrgrade_produto.open;
                            if frmmodulo.qrgrade_produto.RecNo = 1 then
                            begin
                              frmmodulo.qrgrade_produto.edit;
                              frmmodulo.qrgrade_produto.fieldbyname('estoque').asfloat := frmmodulo.qrgrade_produto.fieldbyname('estoque').asfloat + frmmodulo.qrproduto_mov.fieldbyname('qtde').asfloat;
                              frmmodulo.qrgrade_produto.post;
                            end;
                          end
                          else
                          begin  // serial
                            if frmmodulo.qrproduto_mov.FieldByName('serial').AsString <> '' then
                            begin
                              frmmodulo.qrserial_produto.close;
                              frmmodulo.qrserial_produto.SQL.clear;
                              frmmodulo.qrserial_produto.sql.add('select * from c000022 where serial = '''+frmmodulo.qrproduto_mov.FieldByName('serial').AsString+'''');
                              frmmodulo.qrserial_produto.open;
                              if frmmodulo.qrserial_produto.RecNo = 1 then
                              begin
                                frmmodulo.qrserial_produto.edit;
                                frmmodulo.qrserial_produto.fieldbyname('situacao').asfloat := 1;
                                frmmodulo.qrserial_produto.fieldbyname('cliente').asstring := '';
                                frmmodulo.qrserial_produto.fieldbyname('codcliente').asstring := '';
                                frmmodulo.qrserial_produto.FieldByName('DATAVENDA').ASSTRING := '';
                                frmmodulo.qrserial_produto.fieldbyname('codvenda').asstring := '';
                                frmmodulo.qrserial_produto.fieldbyname('precovenda').asstring := '';
                                frmmodulo.qrserial_produto.post;
                              end;
                            end;
                          end;
                        end;
                    7 : begin // devolucao do produto


                          // grade
                          if frmmodulo.qrproduto_mov.FieldByName('codgrade').AsString <> '' then
                          begin
                            frmmodulo.qrgrade_produto.close;
                            frmmodulo.qrgrade_produto.sql.clear;
                            frmmodulo.qrgrade_produto.sql.add('select * from c000021 where codigo = '''+frmmodulo.qrproduto_mov.FieldByName('codgrade').AsString+'''');
                            frmmodulo.qrgrade_produto.open;
                            if frmmodulo.qrgrade_produto.RecNo = 1 then
                            begin
                              frmmodulo.qrgrade_produto.edit;
                              frmmodulo.qrgrade_produto.fieldbyname('estoque').asfloat := frmmodulo.qrgrade_produto.fieldbyname('estoque').asfloat - frmmodulo.qrproduto_mov.fieldbyname('qtde').asfloat;
                              frmmodulo.qrgrade_produto.post;
                            end;
                          end
                          else
                          begin  // serial
                            if frmmodulo.qrproduto_mov.FieldByName('serial').AsString <> '' then
                            begin
                              frmmodulo.qrserial_produto.close;
                              frmmodulo.qrserial_produto.SQL.clear;
                              frmmodulo.qrserial_produto.sql.add('select * from c000022 where serial = '''+frmmodulo.qrproduto_mov.FieldByName('serial').AsString+'''');
                              frmmodulo.qrserial_produto.open;
                              if frmmodulo.qrserial_produto.RecNo = 1 then
                              begin
                                frmmodulo.qrserial_produto.edit;
                                frmmodulo.qrserial_produto.fieldbyname('situacao').asfloat := 2;
                                frmmodulo.qrserial_produto.post;
                              end;
                            end;
                          end;
                        end;
                    end;
                  end;
                  frmmodulo.qrproduto_mov.delete;
                end;

                ltotal.value := ltotal.value - frmmodulo.qrvenda.fieldbyname('total').asfloat;
                lqtde.value := lqtde.Value - 1;


                if frmmodulo.qrvenda.fieldbyname('cod_financeira_lancto').asstring <> '' then
                begin
                  query.close;
                  query.sql.clear;
                  query.sql.add('delete from c000123 where codigo = '''+frmmodulo.qrvenda.fieldbyname('cod_financeira_lancto').asstring+'''');
                  query.execsql;
                end;

                frmprincipal.log(codigo_usuario,'VENDA',FRMMODULO.qrVENDA.fieldbyname('codigo').asstring,'EXCLUIU',FRMMODULO.qrVENDA.fieldbyname('CLIENTE').asstring);
                frmmodulo.qrvenda.edit;
                frmmodulo.qrvenda.fieldbyname('situacao').asinteger := 2;
                frmmodulo.qrvenda.post;
                
                frmmodulo.Conexao.Commit;


end;

procedure Tfrmnotas_venda.FecharCNFV1Click(Sender: TObject);
begin
  ecf_fecha_CNFV(ecf_modelo);
end;

procedure Tfrmnotas_venda.bcontratoClick(Sender: TObject);
begin
  frmcontrato_reserva := tfrmcontrato_reserva.create(self);
//    aqui
  // filtrar cliente
  frmcontrato_reserva.qrcliente.close;
  frmcontrato_reserva.qrcliente.sql.clear;
  frmcontrato_reserva.qrcliente.sql.add('select * from c000007');
  frmcontrato_reserva.qrcliente.sql.add('where codigo = '''+frmmodulo.qrvenda.fieldbyname('codcliente').asstring+'''');
  frmcontrato_reserva.qrcliente.open;

  // produtos
  frmcontrato_reserva.qrproduto.Close;
  frmcontrato_reserva.qrproduto.SQL.Clear;
  frmcontrato_reserva.qrproduto.SQL.Add('select c000032.*, c000025.produto from c000032, c000025');
  frmcontrato_reserva.qrProduto.SQL.add('where c000032.codproduto = c000025.codigo and CODnota = '''+frmmodulo.qrvenda.fieldbyname('codigo').asstring+'''');
  frmcontrato_reserva.qrproduto.SQL.Add('and data = :vdat');
  frmcontrato_reserva.qrproduto.params.ParamByName('vdat').AsDateTime := frmmodulo.qrvenda.fieldbyname('data').AsDateTime;
  frmcontrato_reserva.qrproduto.Open;

  // prestacao
  frmcontrato_reserva.qrprestacao.Close;
  frmcontrato_reserva.qrprestacao.SQL.Clear;
  frmcontrato_reserva.qrprestacao.sql.add('select * from c000049 where codvenda = '''+frmmodulo.qrvenda.fieldbyname('codigo').asstring+''' and situacao = 1');
  frmcontrato_reserva.qrprestacao.open;

  // venda

  frmcontrato_reserva.qrvenda.close;
  frmcontrato_reserva.qrvenda.sql.clear;
  frmcontrato_reserva.qrvenda.sql.add('select * from c000048 where codigo = '''+frmmodulo.qrvenda.fieldbyname('codigo').asstring+'''');
  frmcontrato_reserva.qrvenda.open;

  


  frmcontrato_reserva.showmodal;
end;

procedure Tfrmnotas_venda.AdvGlowButton2Click(Sender: TObject);
begin
  frmmodulo.qrcontasreceber.Close;
  frmmodulo.qrcontasreceber.SQL.Clear;
  frmmodulo.qrcontasreceber.sql.add('select * from c000049 where codvenda = '''+frmmodulo.qrvenda.fieldbyname('codigo').asstring+'''');
  frmmodulo.qrcontasreceber.open;
  frmmodulo.qrcontasreceber.First;

  if (frmmodulo.qrvenda.fieldbyname('codcliente').asstring <> 'S/CLIE') AND (frmmodulo.qrvenda.fieldbyname('codcliente').asstring <> '')then
  begin
    frmmodulo.qrcliente.close;
    frmmodulo.qrcliente.sql.clear;
    frmmodulo.qrcliente.sql.add('select * from c000007 where codigo = '''+FRMMODULO.QRVENDA.FIELDBYNAME('CODCLIENTE').ASSTRING+'''');
    frmmodulo.qrcliente.open;
    IF FRMMODULO.QRCLIENTE.RecordCount > 0 THEN
    BEGIN
      frmnotas_venda_impressao := tfrmnotas_venda_impressao.create(self);
      frmnotas_venda_impressao.showmodal;
    end
    else
    begin
      application.messagebox('Houve erro na procura do cliente! Impossível prosseguir!','Atenção',mb_ok+MB_ICONERROR);
      exit;
    end;
  END
  ELSE
  BEGIN
    frmnotas_venda_impressao := tfrmnotas_venda_impressao.create(self);
    frmnotas_venda_impressao.showmodal;
  END;
  frmmodulo.qrcliente.close;
  frmmodulo.qrcliente.sql.clear;
  frmmodulo.qrcliente.sql.add('select * from c000007');
  frmmodulo.qrcliente.open;
end;

end.
