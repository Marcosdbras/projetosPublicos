unit loc_caixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, Collection, ExtCtrls, DB, StdCtrls, Wwkeycb,
  Wwdbigrd, Wwdbgrid;

type
  Tfrmloc_caixa = class(TForm)
    dsfunci: TDataSource;
    wwDBGrid1: TwwDBGrid;
    procedure locChange(Sender: TObject);
    procedure locKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure locEnter(Sender: TObject);
    procedure locExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmloc_caixa: Tfrmloc_caixa;

implementation

uses modulo;

{$R *.dfm}

procedure Tfrmloc_caixa.locChange(Sender: TObject);
begin
//  frmmodulo.qrregiao.Locate('regiao',loc.text,[lopartialkey]);
end;

procedure Tfrmloc_caixa.locKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) or (key = #27) then close;
end;

procedure Tfrmloc_caixa.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) or (key = #27) then close;
end;

procedure Tfrmloc_caixa.DBGrid1DblClick(Sender: TObject);
begin
  CLOSE;
end;

procedure Tfrmloc_caixa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
ACTION := CAFREE;
end;

procedure Tfrmloc_caixa.locEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmloc_caixa.locExit(Sender: TObject);
begin
  TEDIT(SENDER).COLOR := CLWINDOW;
end;

end.
