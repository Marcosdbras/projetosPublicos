unit etiqueta_grade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, Wwdbigrd, Wwdbgrid;

type
  Tfrmetiqueta_grade = class(TForm)
    dsgrade: TDataSource;
    wwDBGrid1: TwwDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure wwDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure wwDBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmetiqueta_grade: Tfrmetiqueta_grade;

implementation

uses etiquetador, modulo;

{$R *.dfm}

procedure Tfrmetiqueta_grade.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ACTION := CAFREE;
end;

procedure Tfrmetiqueta_grade.wwDBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  IF KEY = #13 THEN
  BEGIN
    RESULTADO_PESQUISA1 :=  dsgrade.DATASET.FIELDBYNAME('NUMERACAO').ASSTRING;
    CLOSE;
  END;
  IF KEY = #27 THEN
  BEGIN
    RESULTADO_PESQUISA1 := '';
    CLOSE;
  END;
end;

procedure Tfrmetiqueta_grade.wwDBGrid1DblClick(Sender: TObject);
begin
    RESULTADO_PESQUISA1 :=  dsgrade.DATASET.FIELDBYNAME('NUMERACAO').ASSTRING;
    CLOSE;
end;

end.
