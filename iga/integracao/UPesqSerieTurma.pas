unit UPesqSerieTurma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids;

type
  TFrmPesqSerie = class(TForm)
    DBGrid1: TDBGrid;
    BtnInserir: TBitBtn;
    BtnEditar: TBitBtn;
    BtnMenu: TBitBtn;
    BtnExcluir: TBitBtn;
    BtnFiltrar: TBitBtn;
    BtnLimpFiltro: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPesqSerie: TFrmPesqSerie;

implementation

uses UDados;

{$R *.dfm}

end.
