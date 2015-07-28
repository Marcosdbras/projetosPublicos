unit loc_contacorrent;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, Collection, ExtCtrls, DB, StdCtrls, Wwkeycb,
  ComCtrls, Wwdbigrd, Wwdbgrid;

type
  Tfrmloc_contacorrente = class(TForm)
    dscontacorrente: TDataSource;
    Panel1: TPanel;
    Bevel1: TBevel;
    DBGrid1: TwwDBGrid;
    Label1: TLabel;
    loc: TwwIncrementalSearch;
    StatusBar1: TStatusBar;
    procedure locChange(Sender: TObject);
    procedure locKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmloc_contacorrente: Tfrmloc_contacorrente;

implementation

uses modulo;

{$R *.dfm}

procedure Tfrmloc_contacorrente.locChange(Sender: TObject);
begin
  frmmodulo.qrcontacorrente.Locate('CONTA',loc.text,[lopartialkey]);
end;

procedure Tfrmloc_contacorrente.locKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) or (key = #27) then close;
end;

procedure Tfrmloc_contacorrente.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) or (key = #27) then close;
end;

procedure Tfrmloc_contacorrente.DBGrid1DblClick(Sender: TObject);
begin
  CLOSE;
end;

procedure Tfrmloc_contacorrente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
ACTION := CAFREE;
end;

end.
