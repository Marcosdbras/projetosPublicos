unit xloc_notafiscal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, wwdbedit, Wwdotdot, Wwdbcomb, ExtCtrls,
  Collection, TFlatPanelUnit, Menus, Grids, Wwdbigrd, Wwdbgrid, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, DBCtrls, Buttons;

type
  Tfrmxloc_notafiscal = class(TForm)
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
    QUERY2: TZQuery;
    PPROCURA: TFlatPanel;
    wwDBGrid1: TwwDBGrid;
    DS2: TDataSource;
    queryCODIGO: TStringField;
    queryNUMERO: TStringField;
    queryCFOP: TStringField;
    queryDATA: TDateTimeField;
    queryCODCLIENTE: TStringField;
    queryVALOR_PRODUTOS: TFloatField;
    queryTOTAL_NOTA: TFloatField;
    queryBASE_CALCULO: TFloatField;
    queryVALOR_ICMS: TFloatField;
    queryBASE_SUB: TFloatField;
    queryICMS_SUB: TFloatField;
    queryFRETE: TFloatField;
    querySEGURO: TFloatField;
    queryOUTRAS_DESPESAS: TFloatField;
    queryVALOR_TOTAL_IPI: TFloatField;
    queryITENS: TIntegerField;
    queryDESCONTO: TFloatField;
    queryCODTRANSPORTADOR: TStringField;
    queryFRETE_CONTA: TIntegerField;
    queryPLACA: TStringField;
    queryPLACA_UF: TStringField;
    queryVOL_QTDE: TFloatField;
    queryVOL_ESPECIE: TStringField;
    queryVOL_MARCA: TStringField;
    queryVOL_NUMERO: TStringField;
    queryPESO_LIQUIDO: TFloatField;
    queryPESO_BRUTO: TFloatField;
    querySITUACAO: TIntegerField;
    queryMOTIVO: TStringField;
    queryFATURAMENTO_DATA1: TDateTimeField;
    queryFATURAMENTO_DATA2: TDateTimeField;
    queryFATURAMENTO_DATA3: TDateTimeField;
    queryFATURAMENTO_DATA4: TDateTimeField;
    queryFATURAMENTO_NUMERO1: TStringField;
    queryFATURAMENTO_NUMERO2: TStringField;
    queryFATURAMENTO_NUMERO3: TStringField;
    queryFATURAMENTO_NUMERO4: TStringField;
    queryFATURAMENTO_VALOR1: TFloatField;
    queryFATURAMENTO_VALOR2: TFloatField;
    queryFATURAMENTO_VALOR3: TFloatField;
    queryFATURAMENTO_VALOR4: TFloatField;
    queryCODFILIAL: TStringField;
    queryOBS1: TStringField;
    queryOBS2: TStringField;
    queryOBS3: TStringField;
    queryINF1: TStringField;
    queryINF2: TStringField;
    queryINF3: TStringField;
    queryINF4: TStringField;
    queryINF5: TStringField;
    queryDATA_SAIDA: TDateTimeField;
    queryHORA: TStringField;
    querySITUACAO_A: TStringField;
    queryMODELO_NF: TStringField;
    querySERIE_NF: TStringField;
    queryVALOR_ISENTO_ICMS: TFloatField;
    queryALIQUOTA_ICMS: TFloatField;
    queryCLIENTE: TStringField;
    Bevel3: TBevel;
    procedure Localizarpor1Click(Sender: TObject);
    procedure Referncia1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Fechar1Click(Sender: TObject);
    procedure locKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GRIDKeyPress(Sender: TObject; var Key: Char);
    procedure locKeyPress(Sender: TObject; var Key: Char);
    procedure locEnter(Sender: TObject);
    procedure locExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure GRIDEnter(Sender: TObject);
    procedure GRIDExit(Sender: TObject);
    procedure locChange(Sender: TObject);
    procedure GRIDDblClick(Sender: TObject);
    procedure wwDBGrid1Enter(Sender: TObject);
    procedure wwDBGrid1Exit(Sender: TObject);
    procedure wwDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure ParmetrosdaPesquisa1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmxloc_notafiscal: Tfrmxloc_notafiscal;
  voltar : boolean;

implementation

uses modulo_nfe, produto;

{$R *.dfm}

procedure Tfrmxloc_notafiscal.Localizarpor1Click(Sender: TObject);
VAR X : INTEGER;
begin
  X := combo_localizar.Items.Count - 1;
  if combo_localizar.ItemIndex = x then
     combo_localizar.ItemIndex := 0
  else
     combo_localizar.ItemIndex := combo_localizar.ItemIndex + 1
end;

procedure Tfrmxloc_notafiscal.Referncia1Click(Sender: TObject);
VAR X : INTEGER;
begin
  X := combo_referencia.Items.Count - 1;
  if combo_referencia.ItemIndex = x then
     combo_referencia.ItemIndex := 0
  else
     combo_referencia.ItemIndex := combo_referencia.ItemIndex + 1

end;

procedure Tfrmxloc_notafiscal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ACTION := CAFREE;
end;

procedure Tfrmxloc_notafiscal.Fechar1Click(Sender: TObject);
begin
  if voltar then loc.setfocus else
  begin
    resultado_pesquisa1 := '';
    resultado_pesquisa2 := '';
    close;
  end;
end;

procedure Tfrmxloc_notafiscal.locKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_down then
  begin
    IF PPROCURA.Visible THEN WWDBGRID1.SetFocus ELSE grid.setfocus;
  end;
end;

procedure Tfrmxloc_notafiscal.GRIDKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    if query.RecNo > 0 then
    begin
      resultado_pesquisa1 := query.fieldbyname('codigo').asstring;
      close;
    end;
  end;
end;

procedure Tfrmxloc_notafiscal.locKeyPress(Sender: TObject; var Key: Char);
var ref, tipo : string;
begin
  if key = #13 then
  begin
    if combo_referencia.ItemIndex = 0 then ref := '' else ref := '%';

    if combo_localizar.ItemIndex = 0 then
    begin
      TIPO := 'NUMERO';
      query.close;
      query.sql.clear;
      if loc.text = '' then
        query.sql.Add('select * from c000061 where codigo = ''xxxxxx''')
      else
        query.sql.Add('select * from c000061 where upper('+tipo+') like '''+ref+loc.Text+'%'' order by '+tipo);
      query.open;
    END;

    if combo_localizar.ItemIndex = 2 then
    begin
      TRY
      TIPO := 'DATA';
      query.close;
      query.sql.clear;
      if loc.text = '' then
        query.sql.Add('select * from c000061 where codigo = ''xxxxxx''')
      else
      BEGIN
        query.sql.Add('select * from c000061 where DATA = :DATAX  order by '+tipo);
        QUERY.Params.ParamByName('DATAX').ASDATETIME := STRTODATE(LOC.TEXT);
      END;
      query.open;
      EXCEPT
      END;
    END;

    if combo_localizar.ItemIndex = 1 then
    begin
      IF PPROCURA.Visible THEN
      BEGIN
          query.close;
          query.sql.clear;
          query.sql.Add('select * from c000061 where CODCLIENTE = '''+query2.fieldbyname('codigo').asstring+''' order by NUMERO');
          query.open;
          pprocura.Visible := false;
      END
      ELSE
      BEGIN
        if query.RecNo > 0 then
        begin
          resultado_pesquisa1 := query.fieldbyname('CODIGO').asstring;
          close;
        end;
      END;
    end;
  end;
end;

procedure Tfrmxloc_notafiscal.locEnter(Sender: TObject);
begin
  tedit(sender).color := $00A0FAF8;
  voltar := false;
end;

procedure Tfrmxloc_notafiscal.locExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
end;

procedure Tfrmxloc_notafiscal.FormShow(Sender: TObject);
begin
    query.Close;
    query.SQL.clear;
    query.SQL.Add('select * from c000061 where codigo = ''XXXXXX''');
    query.open;
    loc.setfocus;

end;

procedure Tfrmxloc_notafiscal.GRIDEnter(Sender: TObject);
begin
  voltar := true;
  lvoltar.Caption := 'VOLTAR';
end;

procedure Tfrmxloc_notafiscal.GRIDExit(Sender: TObject);
begin
  lvoltar.Caption := 'FECHAR';
  VOLTAR := FALSE;
end;

procedure Tfrmxloc_notafiscal.locChange(Sender: TObject);
var ref, tipo : string;
begin
    if combo_referencia.ItemIndex = 0 then ref := '' else ref := '%';
    IF COMBO_LOCALIZAR.ItemIndex = 1 THEN // CLIENTE
    BEGIN
      QUERY2.Close;
      QUERY2.SQL.CLEAR;
      if loc.text = '' then
        query2.sql.Add('select * from c000007 where codigo = ''xxxxxx''')
      ELSE
        QUERY2.SQL.ADD('SELECT * FROM C000007 where upper(NOME) like '''+ref+loc.Text+'%'' order by NOME');
      QUERY2.OPEN;
      IF QUERY2.RecordCount > 0 THEN
      BEGIN
        PPROCURA.Visible := TRUE;
      END
      else
        PPROCURA.Visible := false;

    END;





end;

procedure Tfrmxloc_notafiscal.GRIDDblClick(Sender: TObject);
begin
      resultado_pesquisa1 := query.fieldbyname('codigo').asstring;
      close;

end;

procedure Tfrmxloc_notafiscal.wwDBGrid1Enter(Sender: TObject);
begin
  voltar := true;
  lvoltar.Caption := 'VOLTAR';
end;

procedure Tfrmxloc_notafiscal.wwDBGrid1Exit(Sender: TObject);
begin
  lvoltar.Caption := 'FECHAR';
  VOLTAR := FALSE;
end;

procedure Tfrmxloc_notafiscal.wwDBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then locKeyPress(frmxloc_NOTAFISCAL,key);
  loc.setfocus;
end;

procedure Tfrmxloc_notafiscal.ParmetrosdaPesquisa1Click(Sender: TObject);
begin
  LOC.SETFOCUS;
end;

end.
