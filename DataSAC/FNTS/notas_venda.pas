unit notas_venda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls, Collection, StdCtrls,
  Buttons, Menus, jpeg;

type
  Tfrmnotas_venda = class(TForm)
    wwDBGrid1: TwwDBGrid;
    dsvenda: TDataSource;
    BitBtn2: TBitBtn;
    PopupMenu1: TPopupMenu;
    Imprimir1: TMenuItem;
    Sair1: TMenuItem;
    Image1: TImage;
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmnotas_venda: Tfrmnotas_venda;

implementation

uses modulo, notas_venda_impressao;

{$R *.dfm}

procedure Tfrmnotas_venda.FormShow(Sender: TObject);
begin
  FRMMODULO.QRCLIENTE.CLOSE;
  FRMMODULO.QRCLIENTE.SQL.CLEAR;
  FRMMODULO.QRCLIENTE.SQL.ADD('SELECT * FROM C000007 ORDER BY NOME');
  FRMMODULO.QRCLIENTE.OPEN;

  if ecf_modelo = '' then
  begin
    frmmodulo.qrvenda.close;
    frmmodulo.qrvenda.sql.clear;
    frmmodulo.qrvenda.sql.add('select * from c000048 where codcaixa = '''+codigo_caixa+''' and data = :datax order by codigo');
    frmmodulo.qrvenda.Params.ParamByName('datax').asdatetime := strtodate(data_caixa);
    frmmodulo.qrvenda.open;
  end
  else
  begin
    frmmodulo.qrvenda.close;
    frmmodulo.qrvenda.sql.clear;
    frmmodulo.qrvenda.sql.add('select * from c000048 where codcaixa = '''+codigo_caixa+''' and cupom_fiscal = 1 and data = :datax order by codigo');
    frmmodulo.qrvenda.Params.ParamByName('datax').asdatetime := strtodate(data_caixa);
    frmmodulo.qrvenda.open;
  end;
end;

procedure Tfrmnotas_venda.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmnotas_venda.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

end.
