unit fiscal_entrada_menu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Collection, TFlatPanelUnit, Mask, ToolEdit,
  Buttons, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxDBLookupComboBox, cxBlobEdit,
  cxImage, ZAbstractRODataset, ZAbstractDataset, ZDataset, cxGridLevel,
  cxGridCardView, cxGridDBCardView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid, Menus;

type
  Tfrmfiscal_entrada_menu = class(TForm)
    FlatPanel1: TFlatPanel;
    ViewSplit1: TViewSplit;
    Label2: TLabel;
    DateEdit1: TDateEdit;
    Label3: TLabel;
    DateEdit2: TDateEdit;
    BitBtn1: TBitBtn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle30: TcxStyle;
    cxStyle31: TcxStyle;
    cxStyle32: TcxStyle;
    cxStyle33: TcxStyle;
    cxStyle34: TcxStyle;
    cxStyle35: TcxStyle;
    cxStyle36: TcxStyle;
    cxStyle37: TcxStyle;
    cxStyle38: TcxStyle;
    cxStyle39: TcxStyle;
    cxStyle40: TcxStyle;
    cxStyle41: TcxStyle;
    cxStyle42: TcxStyle;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle4: TcxStyle;
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
    Grid: TcxGrid;
    grid_qrnota: TcxGridDBTableView;
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
    grid_nota: TcxGridLevel;
    qrnota: TZQuery;
    dsnota: TDataSource;
    qrnotaTOTAL_GERAL: TFloatField;
    qrnotaDATA: TDateTimeField;
    qrnotaNOTAFISCAL: TStringField;
    qrnotaMODELO_NF: TStringField;
    qrnotaOBS2: TStringField;
    grid_qrnotaTOTAL_GERAL: TcxGridDBColumn;
    grid_qrnotaDATA: TcxGridDBColumn;
    grid_qrnotaNOTAFISCAL: TcxGridDBColumn;
    grid_qrnotaMODELO_NF: TcxGridDBColumn;
    grid_qrnotaOBS2: TcxGridDBColumn;
    qritem: TZQuery;
    dsitem: TDataSource;
    qritemTIPO: TStringField;
    qritemDATA_EMISSAO: TStringField;
    qritemNRO_SERIE_EQP: TStringField;
    qritemNRO_ORDEM_EQP: TStringField;
    qritemMODELO_DOC: TStringField;
    qritemNRO_CONTADOR_INICIO: TStringField;
    qritemNRO_CONTADOR_FIM: TStringField;
    qritemNRO_CONTADOR_Z: TStringField;
    qritemCONTADOR_REINICIO: TStringField;
    qritemVALOR_VENDA_BRUTA: TFloatField;
    qritemVALOR_TOTAL_GERAL: TFloatField;
    qritemBRANCOS: TStringField;
    qritemDATAHORA_RECEBIMENTO: TDateTimeField;
    qritemMODELO_NF: TStringField;
    qritemDATAHORA_INI: TDateTimeField;
    qritemDATAHORA_FIM: TDateTimeField;
    qritemDATAHORA_EMISSAO: TDateTimeField;
    qritemTOTAL: TFloatField;
    qritemBASE_CALCULO: TFloatField;
    qritemBASE_ICMS: TFloatField;
    qritemVALOR_ICMS: TFloatField;
    qritemNOTAFISCAL: TStringField;
    qritemMOVIMENTO: TIntegerField;
    qritemCOD_PEDIDOS: TStringField;
    qritemNUM_ITEM: TStringField;
    qritemCD_PRODUTO: TStringField;
    qritemQUANTIDADE: TFloatField;
    qritemCL_FIS: TStringField;
    qritemPRODUTO: TStringField;
    qritemAPR_UND: TStringField;
    qritemS_TRIB: TStringField;
    qritemALIQUOTA_IPI: TFloatField;
    qritemBASE_IPI: TFloatField;
    qritemVALOR_IPI: TFloatField;
    qritemALIQUOTA_ICMS: TFloatField;
    qritemREDUCAO_BASE_ICMS: TFloatField;
    qritemBASE_ICMS_SUBST: TFloatField;
    qritemDATAHORA: TDateTimeField;
    qritemVALOR_DESCONTO: TFloatField;
    qritemSUBTOTAL: TFloatField;
    qritemCFOP: TStringField;
    qritemOUTRAS_IPI: TFloatField;
    qritemISENTAS_IPI: TFloatField;
    qritemOUTRAS_ICMS: TFloatField;
    qritemISENTAS_ICMS: TFloatField;
    qritemIPI_NAO_CREDITADO: TFloatField;
    qritemFRETE: TFloatField;
    qritemSEGURO: TFloatField;
    qritemOUTRAS_DESPESAS: TFloatField;
    qritemTIPO_FRETE: TStringField;
    ViewSplit2: TViewSplit;
    bincluir: TBitBtn;
    brelatorio: TBitBtn;
    bfechar: TBitBtn;
    PopupMenu1: TPopupMenu;
    Incluir1: TMenuItem;
    Excluir1: TMenuItem;
    Relatrios1: TMenuItem;
    Fechar1: TMenuItem;
    bexcluir: TBitBtn;
    GRID_ITEM: TcxGridLevel;
    GRID_QRITEM: TcxGridDBTableView;
    qrnotaCODIGO: TStringField;
    qritemCODNOTA: TStringField;
    GRID_QRITEMCD_PRODUTO: TcxGridDBColumn;
    GRID_QRITEMQUANTIDADE: TcxGridDBColumn;
    GRID_QRITEMPRODUTO: TcxGridDBColumn;
    GRID_QRITEMAPR_UND: TcxGridDBColumn;
    GRID_QRITEMALIQUOTA_ICMS: TcxGridDBColumn;
    GRID_QRITEMSUBTOTAL: TcxGridDBColumn;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    cxStyle8: TcxStyle;
    cxStyle9: TcxStyle;
    cxStyle10: TcxStyle;
    cxStyle11: TcxStyle;
    cxStyle12: TcxStyle;
    cxStyle13: TcxStyle;
    qrproduto: TZQuery;
    qrnotaVALOR_CONTABIL: TFloatField;
    qrgrade_entrada: TZQuery;
    procedure bfecharClick(Sender: TObject);
    procedure bexcluirClick(Sender: TObject);
    procedure bincluirClick(Sender: TObject);
    procedure brelatorioClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DateEdit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmfiscal_entrada_menu: Tfrmfiscal_entrada_menu;

implementation

uses modulo, fiscal_entrada, principal;

{$R *.dfm}

procedure Tfrmfiscal_entrada_menu.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmfiscal_entrada_menu.bexcluirClick(Sender: TObject);
begin
  if frmprincipal.autentica('Excluir NOTA',4) then
  begin
    FRMMODULO.QRITEM.CLOSE;
    FRMMODULO.QRITEM.SQL.CLEAR;
    FRMMODULO.QRITEM.SQL.ADD('DELETE FROM C000085 WHERE CODNOTA = '''+QRNOTA.FIELDBYNAME('CODIGO').ASSTRING+'''');
    FRMMODULO.QRITEM.ExecSQL;

    FRMMODULO.QRNOTA.CLOSE;
    FRMMODULO.QRNOTA.SQL.CLEAR;
    FRMMODULO.QRNOTA.SQL.ADD('DELETE FROM C000086 WHERE CODIGO = '''+QRNOTA.FIELDBYNAME('CODIGO').ASSTRING+'''');
    FRMMODULO.QRNOTA.ExecSQL;

    FRMMODULO.QRPRODUTO_MOV.CLOSE;
    FRMMODULO.QRPRODUTO_MOV.SQL.CLEAR;
    FRMMODULO.QRPRODUTO_MOV.SQL.ADD('select *  FROM C000032 WHERE CODNOTA = '''+QRNOTA.FIELDBYNAME('CODIGO').ASSTRING+''' AND MOVIMENTO = 1');
    FRMMODULO.QRPRODUTO_MOV.open;

    frmmodulo.qrproduto_mov.first;
    while frmmodulo.qrproduto_mov.recordcount <> 0 do
    begin

        qrgrade_entrada.Close;
        qrgrade_entrada.SQL.clear;
        qrgrade_entrada.SQL.add('select * from c000033 where coditem = '''+FRMMODULO.QRPRODUTO_MOV.fieldbyname('codigo').asstring+'''');
        qrgrade_entrada.Open;

        frmmodulo.qrgrade_produto.close;
        frmmodulo.qrgrade_produto.sql.clear;
        frmmodulo.qrgrade_produto.SQL.Add('select * from c000021 where codproduto = '''+FRMMODULO.qrproduto_mov.fieldbyname('codproduto').asstring+'''');
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



          qrproduto.close;
          qrproduto.sql.Clear;
          qrproduto.sql.add('select * from c000025 where codigo = '''+frmmodulo.qrproduto_mov.fieldbyname('codproduto').asstring+'''');
          qrproduto.open;
          qrproduto.edit;
          qrproduto.FieldByName('estoque').asfloat := qrproduto.FieldByName('estoque').asfloat - frmmodulo.qrproduto_mov.fieldbyname('qtde').asfloat;
          qrproduto.Post;
          frmmodulo.qrproduto_mov.delete;
    end;






    FRMMODULO.QRPRODUTO_MOV.CLOSE;
    FRMMODULO.QRPRODUTO_MOV.SQL.CLEAR;
    FRMMODULO.QRPRODUTO_MOV.SQL.ADD('SELECT * FROM C000032 WHERE CODNOTA = ''XXXXXX''');
    FRMMODULO.QRPRODUTO_MOV.EXECSQL;
    FRMMODULO.Conexao.Commit;
    QRNOTA.Refresh;
  end
  else
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
  end;
end;

procedure Tfrmfiscal_entrada_menu.bincluirClick(Sender: TObject);
begin
  frmfiscal_entrada := tfrmfiscal_entrada.create(self);
  frmfiscal_entrada.showmodal;
  
  qrnota.refresh;
  qritem.refresh;
end;

procedure Tfrmfiscal_entrada_menu.brelatorioClick(Sender: TObject);
begin
//
end;

procedure Tfrmfiscal_entrada_menu.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmfiscal_entrada_menu.FormShow(Sender: TObject);
begin
  qrnota.close;
  qrnota.sql.clear;
  qrnota.sql.add('select sum(valor_contabil) total_geral,');
  qrnota.sql.add('data,');
  qrnota.sql.add('CODIGO,');
  qrnota.sql.add('notafiscal,');
  qrnota.sql.add('modelo_nf,');
  qrnota.sql.add('obs2,');
  qrnota.sql.add('valor_contabil');
  qrnota.sql.add('from c000086');
  qrnota.sql.add('group by');
  qrnota.sql.add('data,');
  qrnota.sql.add('codigo,');
  qrnota.sql.add('notafiscal,');
  qrnota.sql.add('modelo_nf,');
  qrnota.sql.add('valor_contabil,');
  qrnota.sql.add('obs2');
  qrnota.sql.add('order by data');
  qrnota.open;

  qritem.open;

end;

procedure Tfrmfiscal_entrada_menu.BitBtn1Click(Sender: TObject);
begin
  qrnota.close;
  qrnota.sql.clear;
  qrnota.sql.add('select sum(valor_contabil) total_geral,');
  qrnota.sql.add('data,');
  qrnota.sql.add('CODIGO,');
  qrnota.sql.add('notafiscal,');
  qrnota.sql.add('modelo_nf,');
  qrnota.sql.add('valor_contabil,');
  qrnota.sql.add('obs2');
  qrnota.sql.add('from c000086');
  qrnota.sql.add('where data >= :datai and data <= :dataf');
  qrnota.sql.add('group by');
  qrnota.sql.add('data,');
  qrnota.sql.add('codigo,');
  qrnota.sql.add('notafiscal,');
  qrnota.sql.add('modelo_nf,');
  qrnota.sql.add('valor_contabil,');
  qrnota.sql.add('obs2');
  qrnota.sql.add('order by data');
  qrnota.params.ParamByName('datai').asdatetime := DateEdit1.date;
  qrnota.params.ParamByName('dataf').asdatetime := DateEdit2.date;
  qrnota.open;
end;

procedure Tfrmfiscal_entrada_menu.DateEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

end.
