unit loc_transportador;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, Collection, ExtCtrls, DB, StdCtrls, Wwkeycb,
  Buttons, Menus, Wwdbigrd, Wwdbgrid, ComCtrls, AdvGlowButton;

type
  Tfrmloc_transportador = class(TForm)
    dstransportador: TDataSource;
    PopupMenu1: TPopupMenu;
    CadastrarNovoFornecedor1: TMenuItem;
    Panel1: TPanel;
    Label1: TLabel;
    loc: TwwIncrementalSearch;
    bitbtn1: TAdvGlowButton;
    Bevel1: TBevel;
    StatusBar1: TStatusBar;
    DBGRID1: TwwDBGrid;
    procedure locChange(Sender: TObject);
    procedure locKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmloc_transportador: Tfrmloc_transportador;

implementation

uses modulo, transportador;

{$R *.dfm}

procedure Tfrmloc_transportador.locChange(Sender: TObject);
begin
  frmmodulo.qrTRANSPORTADOR.Locate('NOME',loc.text,[lopartialkey]);
end;

procedure Tfrmloc_transportador.locKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) or (key = #27) then close;
end;

procedure Tfrmloc_transportador.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) or (key = #27) then close;
end;

procedure Tfrmloc_transportador.DBGrid1DblClick(Sender: TObject);
begin
  CLOSE;
end;

procedure Tfrmloc_transportador.BitBtn1Click(Sender: TObject);
begin
  frmtransportador := tfrmtransportador.create(self);
  frmtransportador.showmodal;
end;

procedure Tfrmloc_transportador.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   action := cafree;
end;

procedure Tfrmloc_transportador.FormShow(Sender: TObject);
begin
  frmmodulo.qrtransportador.Close;
  frmmodulo.qrtransportador.SQL.Clear;
  frmmodulo.qrtransportador.SQL.Add('select * from c000010');
  frmmodulo.qrtransportador.Open;
end;

end.
