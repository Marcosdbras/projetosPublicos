unit xloc_financeira;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, wwdbedit, Wwdotdot, Wwdbcomb, ExtCtrls,
  Collection, TFlatPanelUnit, Menus, Grids, Wwdbigrd, Wwdbgrid, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, MemDS, DBAccess, IBC;

type
  Tfrmxloc_financeira = class(TForm)
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
    Bevel2: TBevel;
    Label7: TLabel;
    lvoltar: TLabel;
    N1: TMenuItem;
    Fechar1: TMenuItem;
    Bevel3: TBevel;
    query: TIBCQuery;
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
  frmxloc_financeira: Tfrmxloc_financeira;
  voltar : boolean;

implementation

uses modulo, principal;

{$R *.dfm}

procedure Tfrmxloc_financeira.Localizarpor1Click(Sender: TObject);
VAR X : INTEGER;
begin
  X := combo_localizar.Items.Count - 1;
  if combo_localizar.ItemIndex = x then
     combo_localizar.ItemIndex := 0
  else
     combo_localizar.ItemIndex := combo_localizar.ItemIndex + 1
end;

procedure Tfrmxloc_financeira.Referncia1Click(Sender: TObject);
VAR X : INTEGER;
begin
  X := combo_referencia.Items.Count - 1;
  if combo_referencia.ItemIndex = x then
     combo_referencia.ItemIndex := 0
  else
     combo_referencia.ItemIndex := combo_referencia.ItemIndex + 1

end;

procedure Tfrmxloc_financeira.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ACTION := CAFREE;
end;

procedure Tfrmxloc_financeira.Fechar1Click(Sender: TObject);
begin
  if voltar then loc.setfocus else
  begin
    resultado_pesquisa1 := '';
    resultado_pesquisa2 := '';
    close;
  end;
end;

procedure Tfrmxloc_financeira.locKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_down then
  begin
    grid.setfocus;
  end;
end;

procedure Tfrmxloc_financeira.GRIDKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    if query.RecNo > 0 then
    begin
      resultado_pesquisa1 := query.fieldbyname('NUMERO').asstring;
      resultado_pesquisa2 := query.fieldbyname('BANCO').asstring;
      resultado_pesquisa3 := QUERY.FIELDBYNAME('RESSARCIMENTO').ASSTRING;
      resultado_pesquisa4 := QUERY.FIELDBYNAME('PRAZO').ASSTRING;
      close;
    end;
  end;
end;

procedure Tfrmxloc_financeira.locKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    if query.RecNo > 0 then
    begin
      resultado_pesquisa1 := query.fieldbyname('NUMERO').asstring;
      resultado_pesquisa2 := query.fieldbyname('BANCO').asstring;
      resultado_pesquisa3 := QUERY.FIELDBYNAME('RESSARCIMENTO').ASSTRING;
      resultado_pesquisa4 := QUERY.FIELDBYNAME('PRAZO').ASSTRING;
      close;
    end;
  end;
end;

procedure Tfrmxloc_financeira.locEnter(Sender: TObject);
begin
  tedit(sender).color := $00A0FAF8;
  voltar := false;
end;

procedure Tfrmxloc_financeira.locExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
end;

procedure Tfrmxloc_financeira.FormShow(Sender: TObject);
begin
  voltar := false;
  query.Close;
  query.SQL.clear;
  query.SQL.Add('select * from c000013 where NUMERO = ''XXXXXX''');
  query.open;

end;

procedure Tfrmxloc_financeira.GRIDEnter(Sender: TObject);
begin
  voltar := true;
  lvoltar.Caption := 'VOLTAR';
end;

procedure Tfrmxloc_financeira.GRIDExit(Sender: TObject);
begin
  lvoltar.Caption := 'FECHAR';
  VOLTAR := FALSE;
end;

procedure Tfrmxloc_financeira.locChange(Sender: TObject);
var ref, tipo : string;
begin
  if combo_referencia.ItemIndex = 0 then ref := '' else ref := '%';
  case combo_localizar.ItemIndex  OF
  0:TIPO := 'BANCO';
  1:TIPO := 'NUMERO';
  end;

  try
    query.close;
    query.sql.clear;
    if loc.text = '' then
      query.sql.Add('select * from c000013 where NUMERO = ''xxxxxx''')
    else
      query.sql.Add('select * from c000013 where FINANCEIRA = 1 AND upper('+tipo+') like '''+ref+loc.Text+'%'' order by '+tipo);
    query.open;
  except
  end;
end;

procedure Tfrmxloc_financeira.GRIDDblClick(Sender: TObject);
begin
      resultado_pesquisa1 := query.fieldbyname('NUMERO').asstring;
      resultado_pesquisa2 := query.fieldbyname('BANCO').asstring;
      resultado_pesquisa3 := QUERY.FIELDBYNAME('RESSARCIMENTO').ASSTRING;
      resultado_pesquisa4 := QUERY.FIELDBYNAME('PRAZO').ASSTRING;
      close;

end;

procedure Tfrmxloc_financeira.ParmetrosdaPesquisa1Click(Sender: TObject);
begin
  LOC.SETFOCUS;
end;

end.
