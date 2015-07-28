unit produto_consultapreco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, wwdbedit, Wwdotdot, Wwdbcomb, ExtCtrls,
  Collection, TFlatPanelUnit, Menus, Grids, Wwdbigrd, Wwdbgrid, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, DBCtrls, Buttons,
  ToolEdit, CurrEdit, RXDBCtrl, AdvGlowButton;

type
  Tfrmproduto_consultapreco = class(TForm)
    FlatPanel1: TFlatPanel;
    combo_localizar: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    combo_referencia: TComboBox;
    Bevel1: TBevel;
    Label4: TLabel;
    Label5: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    loc: TEdit;
    PopupMenu1: TPopupMenu;
    Localizarpor1: TMenuItem;
    Referncia1: TMenuItem;
    ParmetrosdaPesquisa1: TMenuItem;
    GRID: TwwDBGrid;
    ds: TDataSource;
    query: TZQuery;
    Bevel2: TBevel;
    Label7: TLabel;
    lvoltar: TLabel;
    N1: TMenuItem;
    Fechar1: TMenuItem;
    queryCODIGO: TStringField;
    queryCODBARRA: TStringField;
    queryPRODUTO: TStringField;
    queryUNIDADE: TStringField;
    queryDATA_CADASTRO: TDateTimeField;
    queryCODGRUPO: TStringField;
    queryCODSUBGRUPO: TStringField;
    queryCODFORNECEDOR: TStringField;
    queryCODMARCA: TStringField;
    queryDATA_ULTIMACOMPRA: TDateTimeField;
    queryNOTAFISCAL: TStringField;
    queryPRECOCUSTO: TFloatField;
    queryPRECOVENDA: TFloatField;
    queryDATA_ULTIMAVENDA: TDateTimeField;
    queryESTOQUE: TFloatField;
    queryESTOQUEMINIMO: TFloatField;
    queryCODALIQUOTA: TStringField;
    queryAPLICACAO: TMemoField;
    queryLOCALICAZAO: TStringField;
    queryPESO: TFloatField;
    queryVALIDADE: TStringField;
    queryCOMISSAO: TFloatField;
    queryUSA_BALANCA: TIntegerField;
    queryUSA_SERIAL: TIntegerField;
    queryUSA_GRADE: TIntegerField;
    queryCODRECEITA: TStringField;
    queryFOTO: TStringField;
    queryDATA_ULTIMACOMPRA_ANTERIOR: TDateTimeField;
    queryNOTAFISCAL_ANTERIOR: TStringField;
    queryCODFORNECEDOR_ANTERIOR: TStringField;
    queryPRECOCUSTO_ANTERIOR: TFloatField;
    queryPRECOVENDA_ANTERIOR: TFloatField;
    queryCUSTOMEDIO: TFloatField;
    queryAUTO_APLICACAO: TStringField;
    queryAUTO_COMPLEMENTO: TStringField;
    queryDATA_REMARCACAO_CUSTO: TDateTimeField;
    queryDATA_REMARCACAO_VENDA: TDateTimeField;
    queryPRECO_PROMOCAO: TFloatField;
    queryDATA_PROMOCAO: TDateTimeField;
    queryFIM_PROMOCAO: TDateTimeField;
    queryFORNECEDOR: TStringField;
    FlatPanel2: TFlatPanel;
    Bevel3: TBevel;
    Label8: TLabel;
    DBText1: TDBText;
    queryMARCA: TStringField;
    queryGRUPO: TStringField;
    querySUBGRUPO: TStringField;
    QUERY2: TZQuery;
    PPROCURA: TFlatPanel;
    wwDBGrid1: TwwDBGrid;
    DS2: TDataSource;
    Cadastrarnovoprodutos1: TMenuItem;
    Label12: TLabel;
    AlterarProduto1: TMenuItem;
    Bevel6: TBevel;
    Label13: TLabel;
    DBText4: TDBText;
    Bevel7: TBevel;
    Bevel8: TBevel;
    Bevel4: TBevel;
    Label9: TLabel;
    Label14: TLabel;
    Bevel5: TBevel;
    Label10: TLabel;
    DBText2: TDBText;
    Bevel9: TBevel;
    Label15: TLabel;
    DBText3: TDBText;
    queryESTOQUE_ATUAL: TFloatField;
    RxCalcEdit1: TRxDBCalcEdit;
    RxCalcEdit2: TRxDBCalcEdit;
    FotodoProduto1: TMenuItem;
    BFOTO: TAdvGlowButton;
    AdvGlowButton1: TAdvGlowButton;
    ConsultaServio1: TMenuItem;
    procedure Localizarpor1Click(Sender: TObject);
    procedure Referncia1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Fechar1Click(Sender: TObject);
    procedure locKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure locKeyPress(Sender: TObject; var Key: Char);
    procedure locEnter(Sender: TObject);
    procedure locExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure GRIDEnter(Sender: TObject);
    procedure GRIDExit(Sender: TObject);
    procedure locChange(Sender: TObject);
    procedure wwDBGrid1Enter(Sender: TObject);
    procedure wwDBGrid1Exit(Sender: TObject);
    procedure wwDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure ParmetrosdaPesquisa1Click(Sender: TObject);
    procedure RxCalcEdit2Change(Sender: TObject);
    procedure GRIDRowChanged(Sender: TObject);
    procedure FotodoProduto1Click(Sender: TObject);
    procedure BFOTOClick(Sender: TObject);
    procedure ConsultaServio1Click(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmproduto_consultapreco: Tfrmproduto_consultapreco;
  voltar : boolean;

implementation

uses modulo_nfe, produto, principal, produto_ligth, produto_farma,
  produto_auto, produto_foto, xloc_servico;

{$R *.dfm}

procedure Tfrmproduto_consultapreco.Localizarpor1Click(Sender: TObject);
VAR X : INTEGER;
begin
  X := combo_localizar.Items.Count - 1;
  if combo_localizar.ItemIndex = x then
     combo_localizar.ItemIndex := 0
  else
     combo_localizar.ItemIndex := combo_localizar.ItemIndex + 1
end;

procedure Tfrmproduto_consultapreco.Referncia1Click(Sender: TObject);
VAR X : INTEGER;
begin
  X := combo_referencia.Items.Count - 1;
  if combo_referencia.ItemIndex = x then
     combo_referencia.ItemIndex := 0
  else
     combo_referencia.ItemIndex := combo_referencia.ItemIndex + 1

end;

procedure Tfrmproduto_consultapreco.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ACTION := CAFREE;
end;

procedure Tfrmproduto_consultapreco.Fechar1Click(Sender: TObject);
begin
  if voltar then loc.setfocus else
  begin
    resultado_pesquisa1 := '';
    resultado_pesquisa2 := '';
    close;
  end;
end;

procedure Tfrmproduto_consultapreco.locKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_down then
  begin
    IF PPROCURA.Visible THEN WWDBGRID1.SetFocus ELSE grid.setfocus;
  end;
end;

procedure Tfrmproduto_consultapreco.locKeyPress(Sender: TObject; var Key: Char);
var ref, tipo : string;
begin
  if key = #13 then
  begin
    if combo_referencia.ItemIndex = 0 then ref := '' else ref := '%';
    if combo_localizar.ItemIndex < 3 then
    begin
      case combo_localizar.ItemIndex  OF
      0:TIPO := 'prod.PRODUTO';
      1:TIPO := 'prod.CODIGO';
      2:TIPO := 'prod.CODBARRA';
      end;
      try
        query.close;
        query.sql.clear;
        if loc.text = '' then
          query.sql.Add('select prod.*, estq.* from c000025 prod, c000100 estq where situacao <> 1 and prod.codigo = estq.codproduto and prod.codigo is null')
        ELSE
          if loc.text = '*' then
            query.sql.Add('select prod.*, estq.* from c000025 prod, c000100 estq where  situacao <> 1 and  prod.codigo = estq.codproduto order by '+tipo)
          else
          begin
            query.sql.add('select prod.*, estq.* from c000025 prod, c000100 estq where  situacao <> 1 and prod.codigo = estq.codproduto');
            query.sql.Add('and upper('+tipo+') like '''+ref+loc.Text+'%'' order by '+tipo);
          end;
        query.open;
      except
      end;
    end
    else
    begin
      IF PPROCURA.Visible THEN
      BEGIN
        IF combo_localizar.ItemIndex = 3 THEN
        BEGIN
          query.close;
          query.sql.clear;
          query.sql.Add('select prod.*, estq.* from c000025 prod, c000100 estq where  situacao <> 1 and prod.codigo = estq.codproduto and CODFORNECEDOR = '''+query2.fieldbyname('codigo').asstring+''' order by produto');
          query.open;
          pprocura.Visible := false;
        END;
        IF combo_localizar.ItemIndex = 4 THEN
        BEGIN
          query.close;
          query.sql.clear;
          query.sql.Add('select prod.*, estq.* from c000025 prod, c000100 estq where  situacao <> 1 and prod.codigo = estq.codproduto and CODmarca = '''+query2.fieldbyname('codigo').asstring+''' order by produto');
          query.open;
          pprocura.Visible := false;
        END;
      END
      ELSE
      BEGIN
        if query.RecNo > 0 then
        begin
          resultado_pesquisa1 := query.fieldbyname('codigo').asstring;
          resultado_pesquisa2 := query.fieldbyname('PRODUTO').asstring;
        end;
      END;
    end;
  end;
end;

procedure Tfrmproduto_consultapreco.locEnter(Sender: TObject);
begin
  tedit(sender).color := $00A0FAF8;
  voltar := false;
end;

procedure Tfrmproduto_consultapreco.locExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
end;

procedure Tfrmproduto_consultapreco.FormShow(Sender: TObject);
begin
  atualiza_produto_novo := false;
  voltar := false;
    query.Close;
    query.SQL.clear;
    query.SQL.Add('select prod.*, estq.* from c000025 prod, c000100 estq where  situacao <> 1 and prod.codigo = estq.codproduto and codigo is null');
    query.open;
    loc.setfocus;


  if frmmodulo.qrconfig.FieldByName('ramo_atividade').asinteger = 2 then // supermercado
    combo_localizar.ItemIndex := 2;
end;

procedure Tfrmproduto_consultapreco.GRIDEnter(Sender: TObject);
begin
  IF QUERY.FIELDBYNAME('foto').ASSTRING <> '' THEN bfoto.enabled := true else bfoto.enabled := false;
  voltar := true;
  lvoltar.Caption := 'VOLTAR';
end;

procedure Tfrmproduto_consultapreco.GRIDExit(Sender: TObject);
begin
  lvoltar.Caption := 'FECHAR';
  VOLTAR := FALSE;
end;

procedure Tfrmproduto_consultapreco.locChange(Sender: TObject);
var ref, tipo : string;
begin
  if combo_referencia.ItemIndex = 0 then ref := '' else ref := '%';
  IF COMBO_LOCALIZAR.ITEMINDEX < 3 THEN
  BEGIN
   //
  END
  ELSE
  BEGIN
    IF COMBO_LOCALIZAR.ItemIndex = 3 THEN // FORNECEDOR
    BEGIN
      QUERY2.Close;
      QUERY2.SQL.CLEAR;
      if loc.text = '' then
        query2.sql.Add('select * from c000009 where codigo = ''xxxxxx''')
      ELSE
        QUERY2.SQL.ADD('SELECT * FROM C000009 where upper(NOME) like '''+ref+loc.Text+'%'' order by NOME');
      QUERY2.OPEN;
      IF QUERY2.RecordCount > 0 THEN
      BEGIN
        PPROCURA.Visible := TRUE;
      END
      else
        PPROCURA.Visible := false;

    END;

    IF COMBO_LOCALIZAR.ItemIndex = 4 THEN // marca
    BEGIN
      QUERY2.Close;
      QUERY2.SQL.CLEAR;
      if loc.text = '' then
        query2.sql.Add('select * from c000019 where codigo = ''xxxxxx''')
      ELSE
        QUERY2.SQL.ADD('SELECT * FROM C000019 where upper(NOME) like '''+ref+loc.Text+'%'' order by NOME');
      QUERY2.OPEN;
      IF QUERY2.RecordCount > 0 THEN
      BEGIN
        PPROCURA.Visible := TRUE;
      END
      else
        PPROCURA.Visible := false;
    END;
  END;



end;

procedure Tfrmproduto_consultapreco.wwDBGrid1Enter(Sender: TObject);
begin
  voltar := true;
  lvoltar.Caption := 'VOLTAR';
end;

procedure Tfrmproduto_consultapreco.wwDBGrid1Exit(Sender: TObject);
begin
  lvoltar.Caption := 'FECHAR';
  VOLTAR := FALSE;
end;

procedure Tfrmproduto_consultapreco.wwDBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then locKeyPress(frmproduto_consultapreco,key);
  loc.setfocus;
end;

procedure Tfrmproduto_consultapreco.ParmetrosdaPesquisa1Click(Sender: TObject);
begin
  loc.setfocus;
end;

procedure Tfrmproduto_consultapreco.RxCalcEdit2Change(Sender: TObject);
begin
  if rxcalcedit2.value > 0 then
    rxcalcedit2.Font.Color := clAqua else
    rxcalcedit2.Font.color := clred;
end;

procedure Tfrmproduto_consultapreco.GRIDRowChanged(Sender: TObject);
begin
  IF QUERY.FIELDBYNAME('foto').ASSTRING <> '' THEN bfoto.enabled := true else bfoto.enabled := false;
end;

procedure Tfrmproduto_consultapreco.FotodoProduto1Click(Sender: TObject);
begin
  if bfoto.enabled then bfotoclick(frmproduto_consultapreco);
end;

procedure Tfrmproduto_consultapreco.BFOTOClick(Sender: TObject);
begin
  try
  frmproduto_foto := tfrmproduto_foto.create(self);
  frmproduto_foto.Image2.Picture.LoadFromFile(query.fieldbyname('foto').asstring);
  frmproduto_foto.showmodal;
  except
    application.messagebox('Caminho inválido!','Aviso',mb_ok+mb_iconerror);
  end;
  grid.SetFocus;
end;

procedure Tfrmproduto_consultapreco.ConsultaServio1Click(Sender: TObject);
begin
  frmxloc_servico := tfrmxloc_servico.create(self);
  frmxloc_servico.showmodal;
  LOC.SETFOCUS;
end;

procedure Tfrmproduto_consultapreco.AdvGlowButton1Click(Sender: TObject);
begin
  frmxloc_servico := tfrmxloc_servico.create(self);
  frmxloc_servico.showmodal;
  LOC.SETFOCUS;

end;

end.
