unit pedido_grade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, TFlatPanelUnit, StdCtrls, ExtCtrls,
  DB, DBAccess, IBC, DBGrids{, CRGrid};

type
  Tfrmpedido_grade = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    FlatPanel1: TFlatPanel;
    dsgrade: TDataSource;
    wwDBGrid1: TDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure wwDBGrid1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmpedido_grade: Tfrmpedido_grade;

implementation

uses venda_pdv, modulo;

{$R *.dfm}

procedure Tfrmpedido_grade.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmpedido_grade.wwDBGrid1DblClick(Sender: TObject);
begin
  resultado_pesquisa1 := frmvenda_pdv.qrgrade.fieldbyname('codigo').asstring;
  close;
end;

procedure Tfrmpedido_grade.wwDBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #27 then
  begin
    resultado_pesquisa1 := '';
    close;
  end;
  if key = #13 then
  begin
    resultado_pesquisa1 := frmvenda_pdv.qrgrade.fieldbyname('codigo').asstring;
    close;
  end;
end;

end.
