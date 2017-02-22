unit xloc_cheque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, wwdbedit, Wwdotdot, Wwdbcomb, ExtCtrls,
  Collection, TFlatPanelUnit, Menus, Grids, Wwdbigrd, Wwdbgrid, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  Tfrmxloc_cheque = class(TForm)
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
    Bevel3: TBevel;
    queryCODIGO: TStringField;
    queryEMISSAO: TDateTimeField;
    queryVENCIMENTO: TDateTimeField;
    queryDATA_DEPOSITO1: TDateTimeField;
    queryDATA_DEPOSITO2: TDateTimeField;
    queryDATA_DEVOLUCAO1: TDateTimeField;
    queryDATA_DEVOLUCAO2: TDateTimeField;
    querySITUACAO: TIntegerField;
    queryCODCLIENTE: TStringField;
    queryTITULAR: TStringField;
    queryCODBANCO: TStringField;
    queryAGENCIA: TStringField;
    queryCONTA: TStringField;
    queryDATA_CONTA: TDateTimeField;
    queryNUMERO: TStringField;
    queryVALOR: TFloatField;
    queryDESCONTO: TFloatField;
    queryLIQUIDO: TFloatField;
    queryCODVENDA: TStringField;
    queryOBS1: TStringField;
    queryOBS2: TStringField;
    queryCODCONTAS_PAGAR: TStringField;
    queryDESTINO: TStringField;
    queryDATA_BAIXA: TDateTimeField;
    queryCODCONTA_CORRENTE: TStringField;
    queryCODCONTA: TStringField;
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
    procedure ParmetrosdaPesquisa1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmxloc_cheque: Tfrmxloc_cheque;
  voltar : boolean;

implementation

uses modulo_nfe;

{$R *.dfm}

procedure Tfrmxloc_cheque.Localizarpor1Click(Sender: TObject);
VAR X : INTEGER;
begin
  X := combo_localizar.Items.Count - 1;
  if combo_localizar.ItemIndex = x then
     combo_localizar.ItemIndex := 0
  else
     combo_localizar.ItemIndex := combo_localizar.ItemIndex + 1
end;

procedure Tfrmxloc_cheque.Referncia1Click(Sender: TObject);
VAR X : INTEGER;
begin
  X := combo_referencia.Items.Count - 1;
  if combo_referencia.ItemIndex = x then
     combo_referencia.ItemIndex := 0
  else
     combo_referencia.ItemIndex := combo_referencia.ItemIndex + 1

end;

procedure Tfrmxloc_cheque.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
PARAMETRO_PESQUISA := '';
  ACTION := CAFREE;
end;

procedure Tfrmxloc_cheque.Fechar1Click(Sender: TObject);
begin
  if voltar then loc.setfocus else
  begin
    resultado_pesquisa1 := '';
    resultado_pesquisa2 := '';
    resultado_pesquisa3 := '';
    RESULTADO_PESQUISA4 := '';
    close;
  end;
end;

procedure Tfrmxloc_cheque.locKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_down then
  begin
    grid.setfocus;
  end;
end;

procedure Tfrmxloc_cheque.GRIDKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    if query.RecNo > 0 then
    begin
      resultado_pesquisa1 := query.fieldbyname('CODIGO').asstring;
      resultado_pesquisa2 := query.fieldbyname('TITULAR').asstring;
      close;
    end;
  end;
end;

procedure Tfrmxloc_cheque.locKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    if query.RecNo > 0 then
    begin
      resultado_pesquisa1 := query.fieldbyname('CODIGO').asstring;
      resultado_pesquisa2 := query.fieldbyname('TITULAR').asstring;
      close;
    end;
  end;
end;

procedure Tfrmxloc_cheque.locEnter(Sender: TObject);
begin
  tedit(sender).color := $00A0FAF8;
  voltar := false;
end;

procedure Tfrmxloc_cheque.locExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
end;

procedure Tfrmxloc_cheque.FormShow(Sender: TObject);
begin
  voltar := false;
  query.Close;
  query.SQL.clear;
  IF parametro_pesquisa = '' THEN
  BEGIN
  query.SQL.Add('select * from c000040 where CODIGO Is NOT NULL and  TIPO '+PARAMETRO_PESQUISA+'  ORDER BY VENCIMENTO');
  query.open;

  END
  ELSE
  BEGIN
  query.SQL.Add('select * from c000040 where CODIGO Is NOT NULL AND TIPO '+PARAMETRO_PESQUISA+' ORDER BY VENCIMENTO');
  query.open;

  END;
  LOC.SETFOCUS;

end;

procedure Tfrmxloc_cheque.GRIDEnter(Sender: TObject);
begin
  voltar := true;
  lvoltar.Caption := 'VOLTAR';
end;

procedure Tfrmxloc_cheque.GRIDExit(Sender: TObject);
begin
  lvoltar.Caption := 'FECHAR';
  VOLTAR := FALSE;
end;

procedure Tfrmxloc_cheque.locChange(Sender: TObject);
var ref, tipo : string;
begin
  if combo_referencia.ItemIndex = 0 then ref := '' else ref := '%';
  case combo_localizar.ItemIndex  OF
  0:TIPO := 'NUMERO';
  1:TIPO := 'VENCIMENTO';
  2:TIPO := 'TITULAR';
  end;

  try
    query.close;
    query.sql.clear;
    if loc.text = '' then
      query.sql.Add('select * from c000040 where CODIGO IS NOT NULL and tipo '+parametro_pesquisa+' ORDER BY VENCIMENTO')
    else
      query.sql.Add('select * from c000040 where upper('+tipo+') like '''+ref+loc.Text+'%'' and tipo '+parametro_pesquisa+' order by '+tipo);
    query.open;
  except
  end;
end;

procedure Tfrmxloc_cheque.GRIDDblClick(Sender: TObject);
begin
   resultado_pesquisa1 := query.fieldbyname('CODIGO').asstring;
   resultado_pesquisa2 := query.fieldbyname('TITULAR').asstring;
   close;

end;

procedure Tfrmxloc_cheque.ParmetrosdaPesquisa1Click(Sender: TObject);
begin
  LOC.SETFOCUS;
end;

end.
