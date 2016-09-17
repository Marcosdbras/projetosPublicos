unit uretrans_sat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, StdCtrls, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, MemDS, DBAccess, IBC;

type
  Tfrmretransmitir_sat = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    btncancelar: TButton;
    btnlancar: TButton;
    dbgpedido: TDBGrid;
    dbgitens: TDBGrid;
    Label3: TLabel;
    dtspedido: TDataSource;
    dtsitens: TDataSource;
    sqlItens: TIBCQuery;
    sqlPedido: TIBCQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmretransmitir_sat: Tfrmretransmitir_sat;

implementation
   uses modulo;
{$R *.dfm}

end.
