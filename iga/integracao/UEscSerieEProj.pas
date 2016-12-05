unit UEscSerieEProj;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, Buttons, ExtCtrls;

type
  TFrmEscSerieEProj = class(TForm)
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEscSerieEProj: TFrmEscSerieEProj;

implementation

uses UDados, URelSerieAluProj;

{$R *.dfm}

procedure TFrmEscSerieEProj.SpeedButton1Click(Sender: TObject);
begin
  FrmRelSerieAluProj := TFrmRelSerieAluProj.Create(self);
  FrmRelSerieAluProj.QuickRep1.PreviewModal;
  FrmRelSerieAluProj.Free;
end;

procedure TFrmEscSerieEProj.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := CaFree;
  FrmEscSerieEProj := nil;
end;

end.
