unit loc_banco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, Collection, ExtCtrls, DB, StdCtrls, Wwkeycb,
  Wwdbigrd, Wwdbgrid, MemDS, DBAccess, IBC;

type
  Tfrmloc_banco = class(TForm)
    dsbanco: TDataSource;
    DBGRID1: TwwDBGrid;
    Panel1: TPanel;
    Label1: TLabel;
    loc: TwwIncrementalSearch;
    Bevel1: TBevel;
    qrbanco: TIBCQuery;
    procedure locChange(Sender: TObject);
    procedure locKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure locEnter(Sender: TObject);
    procedure locExit(Sender: TObject);
    procedure locKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmloc_banco: Tfrmloc_banco;

implementation

uses modulo, principal;

{$R *.dfm}

procedure Tfrmloc_banco.locChange(Sender: TObject);
begin
  qrBANCO.Locate('BANCO',loc.text,[lopartialkey]);
end;

procedure Tfrmloc_banco.locKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) or (key = #27) then close;
end;

procedure Tfrmloc_banco.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
  begin
    resultado_pesquisa1 := qrbanco.fieldbyname('numero').asstring;
    resultado_pesquisa2 := qrbanco.fieldbyname('banco').asstring;
    close;
  end
  else
   if (key = #27) then close;
end;

procedure Tfrmloc_banco.DBGrid1DblClick(Sender: TObject);
begin
  resultado_pesquisa1 := qrbanco.fieldbyname('numero').asstring;
  resultado_pesquisa2 := qrbanco.fieldbyname('banco').asstring;
  CLOSE;
end;

procedure Tfrmloc_banco.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
ACTION := CAFREE;
end;

procedure Tfrmloc_banco.locEnter(Sender: TObject);
begin
  TEDIT(SENDER).Color := CLYELLOW;
end;

procedure Tfrmloc_banco.locExit(Sender: TObject);
begin
  TEDIT(SENDER).Color := CLWINDOW;
end;

procedure Tfrmloc_banco.locKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  IF KEY = VK_DOWN THEN DBGRID1.SETFOCUS;
end;

procedure Tfrmloc_banco.FormShow(Sender: TObject);
begin
  qrbanco.open;
  resultado_pesquisa1 := '';
  resultado_pesquisa2 := '';
end;

end.
