unit loc_grupo_servico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, Collection, ExtCtrls, DB, StdCtrls, Wwkeycb,
  Wwdbigrd, Wwdbgrid, ComCtrls;

type
  Tfrmloc_grupo_servico = class(TForm)
    dsgrupo_servico: TDataSource;
    StatusBar1: TStatusBar;
    DBGRID1: TwwDBGrid;
    Panel1: TPanel;
    Label1: TLabel;
    loc: TwwIncrementalSearch;
    Bevel1: TBevel;
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
  frmloc_grupo_servico: Tfrmloc_grupo_servico;

implementation

uses modulo;

{$R *.dfm}

procedure Tfrmloc_grupo_servico.locChange(Sender: TObject);
begin
  frmmodulo.qrGRUPO_SERVICO.Locate('GRUPO',loc.text,[lopartialkey]);
end;

procedure Tfrmloc_grupo_servico.locKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) or (key = #27) then close;
end;

procedure Tfrmloc_grupo_servico.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) or (key = #27) then close;
end;

procedure Tfrmloc_grupo_servico.DBGrid1DblClick(Sender: TObject);
begin
  CLOSE;
end;

procedure Tfrmloc_grupo_servico.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
ACTION := CAFREE;
end;

end.
