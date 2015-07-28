unit classe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxDBLookupComboBox, cxBlobEdit,
  cxImage, cxGridLevel, cxGridTableView, cxGridDBTableView,
  cxGridCustomTableView, cxGridCardView, cxGridDBCardView, cxControls,
  cxGridCustomView, cxGrid, cxLookAndFeels, cxClasses, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ImgList, ExtCtrls, Collection, StdCtrls,
  Buttons, Menus;

type
  Tfrmclasse = class(TForm)
    qrfiscal_classe: TZQuery;
    qrfiscal_classeCODIGO: TStringField;
    qrfiscal_classeCLASSE: TStringField;
    qrfiscal_classe_pis: TZQuery;
    qrfiscal_classe_pisCODIGO: TStringField;
    qrfiscal_classe_pisCODCLASSE: TStringField;
    qrfiscal_classe_pisALIQUOTA_PIS: TFloatField;
    qrfiscal_classe_pisVALIDADE_PIS: TDateTimeField;
    qrfiscal_classe_cofins: TZQuery;
    qrfiscal_classe_cofinsCODIGO: TStringField;
    qrfiscal_classe_cofinsCODCLASSE: TStringField;
    qrfiscal_classe_cofinsALIQUOTA_COFINS: TFloatField;
    qrfiscal_classe_cofinsVALIDADE_COFINS: TDateTimeField;
    qrfiscal_classe_csll: TZQuery;
    qrfiscal_classe_csllCODIGO: TStringField;
    qrfiscal_classe_csllCODCLASSE: TStringField;
    qrfiscal_classe_csllALIQUOTA_CSLL: TFloatField;
    qrfiscal_classe_csllVALIDADE_CSLL: TDateTimeField;
    qrfiscal_classe_irrf: TZQuery;
    qrfiscal_classe_irrfCODIGO: TStringField;
    qrfiscal_classe_irrfCODCLASSE: TStringField;
    qrfiscal_classe_irrfALIQUOTA_IRRF: TFloatField;
    qrfiscal_classe_irrfVALIDADE_IRRF: TDateTimeField;
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
    dsfiscal_classe: TDataSource;
    dsfiscal_classe_pis: TDataSource;
    dsfiscal_classe_cofins: TDataSource;
    dsfiscal_classe_csll: TDataSource;
    dsfiscal_classe_irrf: TDataSource;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle3: TcxStyle;
    ViewSplit1: TViewSplit;
    bincluir: TBitBtn;
    balterar: TBitBtn;
    bexcluir: TBitBtn;
    bfechar: TBitBtn;
    Pop1: TPopupMenu;
    Incluir1: TMenuItem;
    Alterar1: TMenuItem;
    Excluir1: TMenuItem;
    Localizar1: TMenuItem;
    Relatrios1: TMenuItem;
    Fechar1: TMenuItem;
    Panel1: TPanel;
    Grid: TcxGrid;
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
    cvPhotos: TcxGridDBCardView;
    cvPhotosID: TcxGridDBCardViewRow;
    cvPhotosFILMID: TcxGridDBCardViewRow;
    cvPhotosSCREEN: TcxGridDBCardViewRow;
    cvPhotosICON: TcxGridDBCardViewRow;
    grid_produto_venda2: TcxGridDBTableView;
    grid_produto_venda2CODPRODUTO: TcxGridDBColumn;
    grid_produto_venda2Column1: TcxGridDBColumn;
    grid_produto_venda2QTDE: TcxGridDBColumn;
    grid_produto_venda2UNITARIO: TcxGridDBColumn;
    grid_produto_venda2UNIDADE: TcxGridDBColumn;
    grid_produto_venda2DESCONTO: TcxGridDBColumn;
    grid_produto_venda2ACRESCIMO: TcxGridDBColumn;
    grid_produto_venda2TOTAL: TcxGridDBColumn;
    grid_qrclasse: TcxGridDBTableView;
    grid_qrclasseCODIGO: TcxGridDBColumn;
    grid_qrclasseCLASSE: TcxGridDBColumn;
    GPIS: TcxGridDBTableView;
    GPISALIQUOTA_PIS: TcxGridDBColumn;
    GPISVALIDADE_PIS: TcxGridDBColumn;
    GCOFINS: TcxGridDBTableView;
    GCOFINSALIQUOTA_COFINS: TcxGridDBColumn;
    GCOFINSVALIDADE_COFINS: TcxGridDBColumn;
    GCSLL: TcxGridDBTableView;
    GCSLLALIQUOTA_CSLL: TcxGridDBColumn;
    GCSLLVALIDADE_CSLL: TcxGridDBColumn;
    GIRRF: TcxGridDBTableView;
    GIRRFALIQUOTA_IRRF: TcxGridDBColumn;
    GIRRFVALIDADE_IRRF: TcxGridDBColumn;
    GRID_CLASSE: TcxGridLevel;
    grid_pis: TcxGridLevel;
    grid_cofins: TcxGridLevel;
    grid_csll: TcxGridLevel;
    grid_irrf: TcxGridLevel;
    procedure bfecharClick(Sender: TObject);
    procedure bincluirClick(Sender: TObject);
    procedure balterarClick(Sender: TObject);
    procedure bexcluirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure qrfiscal_classe_pisBeforePost(DataSet: TDataSet);
    procedure qrfiscal_classe_cofinsBeforePost(DataSet: TDataSet);
    procedure qrfiscal_classe_csllBeforePost(DataSet: TDataSet);
    procedure qrfiscal_classe_irrfBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmclasse: Tfrmclasse;

implementation

uses modulo, principal, classe_ficha;

{$R *.dfm}

procedure Tfrmclasse.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmclasse.bincluirClick(Sender: TObject);
begin
  qrfiscal_classe.insert;
  qrfiscal_classe.fieldbyname('codigo').asstring := frmprincipal.codifica('000084');
  qrfiscal_classe_pis.close;
  qrfiscal_classe_pis.SQL.clear;
  qrfiscal_classe_pis.sql.add('select * from c000084a where codclasse = '''+qrfiscal_classe.fieldbyname('codigo').asstring+'''');
  qrfiscal_classe_pis.open;

  qrfiscal_classe_cofins.close;
  qrfiscal_classe_cofins.SQL.clear;
  qrfiscal_classe_cofins.sql.add('select * from c000084b where codclasse = '''+qrfiscal_classe.fieldbyname('codigo').asstring+'''');
  qrfiscal_classe_cofins.open;

  qrfiscal_classe_csll.close;
  qrfiscal_classe_csll.SQL.clear;
  qrfiscal_classe_csll.sql.add('select * from c000084c where codclasse = '''+qrfiscal_classe.fieldbyname('codigo').asstring+'''');
  qrfiscal_classe_csll.open;

  qrfiscal_classe_irrf.close;
  qrfiscal_classe_irrf.SQL.clear;
  qrfiscal_classe_irrf.sql.add('select * from c000084d where codclasse = '''+qrfiscal_classe.fieldbyname('codigo').asstring+'''');
  qrfiscal_classe_irrf.open;

  frmclasse_ficha := tfrmclasse_ficha.create(self);
  frmclasse_ficha.showmodal;






  qrfiscal_classe_pis.close;
  qrfiscal_classe_pis.SQL.clear;
  qrfiscal_classe_pis.sql.add('select * from c000084a');
  qrfiscal_classe_pis.open;

  qrfiscal_classe_pis.REFRESH;

  qrfiscal_classe_cofins.close;
  qrfiscal_classe_cofins.SQL.clear;
  qrfiscal_classe_cofins.sql.add('select * from c000084b');
  qrfiscal_classe_cofins.open;
    qrfiscal_classe_cofins.REFRESH;

  qrfiscal_classe_csll.close;
  qrfiscal_classe_csll.SQL.clear;
  qrfiscal_classe_csll.sql.add('select * from c000084c');
  qrfiscal_classe_csll.open;
  qrfiscal_classe_csll.REFRESH;

  qrfiscal_classe_irrf.close;
  qrfiscal_classe_irrf.SQL.clear;
  qrfiscal_classe_irrf.sql.add('select * from c000084d');
  qrfiscal_classe_irrf.open;
  qrfiscal_classe_irrf.REFRESH;


end;

procedure Tfrmclasse.balterarClick(Sender: TObject);
begin
  qrfiscal_classe_pis.close;
  qrfiscal_classe_pis.SQL.clear;
  qrfiscal_classe_pis.sql.add('select * from c000084a where codclasse = '''+qrfiscal_classe.fieldbyname('codigo').asstring+'''');
  qrfiscal_classe_pis.open;

  qrfiscal_classe_cofins.close;
  qrfiscal_classe_cofins.SQL.clear;
  qrfiscal_classe_cofins.sql.add('select * from c000084b where codclasse = '''+qrfiscal_classe.fieldbyname('codigo').asstring+'''');
  qrfiscal_classe_cofins.open;

  qrfiscal_classe_csll.close;
  qrfiscal_classe_csll.SQL.clear;
  qrfiscal_classe_csll.sql.add('select * from c000084c where codclasse = '''+qrfiscal_classe.fieldbyname('codigo').asstring+'''');
  qrfiscal_classe_csll.open;

  qrfiscal_classe_irrf.close;
  qrfiscal_classe_irrf.SQL.clear;
  qrfiscal_classe_irrf.sql.add('select * from c000084d where codclasse = '''+qrfiscal_classe.fieldbyname('codigo').asstring+'''');
  qrfiscal_classe_irrf.open;

  qrfiscal_classe.Edit;

  frmclasse_ficha := tfrmclasse_ficha.create(self);
  frmclasse_ficha.showmodal;


  qrfiscal_classe_pis.close;
  qrfiscal_classe_pis.SQL.clear;
  qrfiscal_classe_pis.sql.add('select * from c000084a');
  qrfiscal_classe_pis.open;

  qrfiscal_classe_pis.REFRESH;

  qrfiscal_classe_cofins.close;
  qrfiscal_classe_cofins.SQL.clear;
  qrfiscal_classe_cofins.sql.add('select * from c000084b');
  qrfiscal_classe_cofins.open;
    qrfiscal_classe_cofins.REFRESH;

  qrfiscal_classe_csll.close;
  qrfiscal_classe_csll.SQL.clear;
  qrfiscal_classe_csll.sql.add('select * from c000084c');
  qrfiscal_classe_csll.open;
  qrfiscal_classe_csll.REFRESH;

  qrfiscal_classe_irrf.close;
  qrfiscal_classe_irrf.SQL.clear;
  qrfiscal_classe_irrf.sql.add('select * from c000084d');
  qrfiscal_classe_irrf.open;
  qrfiscal_classe_irrf.REFRESH;
  

end;

procedure Tfrmclasse.bexcluirClick(Sender: TObject);
begin
  if frmprincipal.autentica('Excluir CLASSE',4) then
  begin
    qrfiscal_classe.Delete;
    frmmodulo.Conexao.commit;
  end
  else
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
  end;
end;

procedure Tfrmclasse.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmclasse.FormShow(Sender: TObject);
begin
  qrfiscal_classe.close;
  qrfiscal_classe.SQL.clear;
  qrfiscal_classe.sql.add('select * from c000084 order by codigo');
  qrfiscal_classe.open;

  qrfiscal_classe_pis.close;
  qrfiscal_classe_pis.SQL.clear;
  qrfiscal_classe_pis.sql.add('select * from c000084a');
  qrfiscal_classe_pis.open;

  qrfiscal_classe_cofins.close;
  qrfiscal_classe_cofins.SQL.clear;
  qrfiscal_classe_cofins.sql.add('select * from c000084b');
  qrfiscal_classe_cofins.open;

  qrfiscal_classe_csll.close;
  qrfiscal_classe_csll.SQL.clear;
  qrfiscal_classe_csll.sql.add('select * from c000084c');
  qrfiscal_classe_csll.open;

  qrfiscal_classe_irrf.close;
  qrfiscal_classe_irrf.SQL.clear;
  qrfiscal_classe_irrf.sql.add('select * from c000084d');
  qrfiscal_classe_irrf.open;
end;

procedure Tfrmclasse.qrfiscal_classe_pisBeforePost(DataSet: TDataSet);
begin
  qrfiscal_classe_pis.FieldByName('codclasse').asstring := qrfiscal_classe.fieldbyname('codigo').asstring;
  qrfiscal_classe_pis.FieldByName('codigo').asstring := frmprincipal.codifica('000084');

end;

procedure Tfrmclasse.qrfiscal_classe_cofinsBeforePost(DataSet: TDataSet);
begin
  qrfiscal_classe_cofins.FieldByName('codclasse').asstring := qrfiscal_classe.fieldbyname('codigo').asstring;
  qrfiscal_classe_cofins.FieldByName('codigo').asstring := frmprincipal.codifica('000084');

end;

procedure Tfrmclasse.qrfiscal_classe_csllBeforePost(DataSet: TDataSet);
begin
  qrfiscal_classe_csll.FieldByName('codclasse').asstring := qrfiscal_classe.fieldbyname('codigo').asstring;
  qrfiscal_classe_csll.FieldByName('codigo').asstring := frmprincipal.codifica('000084');

end;

procedure Tfrmclasse.qrfiscal_classe_irrfBeforePost(DataSet: TDataSet);
begin
  qrfiscal_classe_irrf.FieldByName('codclasse').asstring := qrfiscal_classe.fieldbyname('codigo').asstring;
  qrfiscal_classe_irrf.FieldByName('codigo').asstring := frmprincipal.codifica('000084');

end;

end.
