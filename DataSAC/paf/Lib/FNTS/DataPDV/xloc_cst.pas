unit xloc_cst;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, wwdbedit, Wwdotdot, Wwdbcomb, ExtCtrls,
  Collection, TFlatPanelUnit, Menus, Grids, Wwdbigrd, Wwdbgrid, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, MemDS, DBAccess, IBC;

type
  Tfrmxloc_cst = class(TForm)
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
  frmxloc_cst: Tfrmxloc_cst;
  voltar : boolean;

implementation

uses modulo;

{$R *.dfm}

procedure Tfrmxloc_cst.Localizarpor1Click(Sender: TObject);
VAR X : INTEGER;
begin
  X := combo_localizar.Items.Count - 1;
  if combo_localizar.ItemIndex = x then
     combo_localizar.ItemIndex := 0
  else
     combo_localizar.ItemIndex := combo_localizar.ItemIndex + 1
end;

procedure Tfrmxloc_cst.Referncia1Click(Sender: TObject);
VAR X : INTEGER;
begin
  X := combo_referencia.Items.Count - 1;
  if combo_referencia.ItemIndex = x then
     combo_referencia.ItemIndex := 0
  else
     combo_referencia.ItemIndex := combo_referencia.ItemIndex + 1

end;

procedure Tfrmxloc_cst.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
PARAMETRO_PESQUISA := '';
  ACTION := CAFREE;
end;

procedure Tfrmxloc_cst.Fechar1Click(Sender: TObject);
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

procedure Tfrmxloc_cst.locKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_down then
  begin
    grid.setfocus;
  end;
end;

procedure Tfrmxloc_cst.GRIDKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    if query.RecNo > 0 then
    begin
      resultado_pesquisa1 := query.fieldbyname('codigo').asstring;
      resultado_pesquisa2 := query.fieldbyname('SITUACAO').asstring;
      close;
    end;
  end;
end;

procedure Tfrmxloc_cst.locKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    if query.RecNo > 0 then
    begin
      resultado_pesquisa1 := query.fieldbyname('codigo').asstring;
      resultado_pesquisa2 := query.fieldbyname('SITUACAO').asstring;
      close;
    end;
  end;
end;

procedure Tfrmxloc_cst.locEnter(Sender: TObject);
begin
  tedit(sender).color := $00A0FAF8;
  voltar := false;
end;

procedure Tfrmxloc_cst.locExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
end;

procedure Tfrmxloc_cst.FormShow(Sender: TObject);
begin
  voltar := false;
  query.Close;
  query.SQL.clear;
  IF parametro_pesquisa = '' THEN
  BEGIN
  query.SQL.Add('select * from c000083 where codigo Is NOT NULL ORDER BY SITUACAO');
  query.open;
  LOC.SETFOCUS;
  END
  ELSE
  BEGIN
  query.SQL.Add('select * from c000083 where codigo Is NOT NULL AND UPPER(NOME) LIKE '''+ANSIUPPERCASE(PARAMETRO_PESQUISA)+'%'' ORDER BY SITUACAO');
  query.open;
  GRID.SetFocus;
  END;


end;

procedure Tfrmxloc_cst.GRIDEnter(Sender: TObject);
begin
  voltar := true;
  lvoltar.Caption := 'VOLTAR';
end;

procedure Tfrmxloc_cst.GRIDExit(Sender: TObject);
begin
  lvoltar.Caption := 'FECHAR';
  VOLTAR := FALSE;
end;

procedure Tfrmxloc_cst.locChange(Sender: TObject);
var ref, tipo : string;
begin
  if combo_referencia.ItemIndex = 0 then ref := '' else ref := '%';
  case combo_localizar.ItemIndex  OF
  0:TIPO := 'ATUALIZACAO';
  1:TIPO := 'CODIGO';
  end;

  try
    query.close;
    query.sql.clear;
    if loc.text = '' then
      query.sql.Add('select * from c000083 where codigo IS NOT NULL ORDER BY SITUACAO')
    else
      query.sql.Add('select * from c000083 where upper('+tipo+') like '''+ref+loc.Text+'%'' order by '+tipo);
    query.open;
  except
  end;
end;

procedure Tfrmxloc_cst.GRIDDblClick(Sender: TObject);
begin
      resultado_pesquisa1 := query.fieldbyname('codigo').asstring;
      resultado_pesquisa2 := query.fieldbyname('SITUACAO').asstring;
      close;

end;

procedure Tfrmxloc_cst.ParmetrosdaPesquisa1Click(Sender: TObject);
begin
  LOC.SETFOCUS;
end;

end.
