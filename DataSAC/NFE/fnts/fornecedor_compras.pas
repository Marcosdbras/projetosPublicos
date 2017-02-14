unit fornecedor_compras;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvToolBar, AdvToolBarStylers, DB, ImgList, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, Menus, Grids, Wwdbigrd, Wwdbgrid, StdCtrls,
  RzEdit, Mask, rxtooledit, AdvGlowButton, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, DBCtrls, ExtCtrls;

type
  Tfrmfornecedor_compras = class(TForm)
    Pop2: TPopupMenu;
    Pesquisa1: TMenuItem;
    Cancelar1: TMenuItem;
    dsnota: TDataSource;
    dsfornecedor: TDataSource;
    imprimir1: TMenuItem;
    qrcompras: TZQuery;
    qrcomprasCODPRODUTO: TStringField;
    qrcomprasQTDE: TFloatField;
    qrcomprasDATA: TDateTimeField;
    qrcomprasNOTAFISCAL: TStringField;
    qrcomprasPRODUTO: TStringField;
    qrcomprasUNIDADE: TStringField;
    qrcomprasPRECOCUSTO: TFloatField;
    qrcomprasPRECOVENDA: TFloatField;
    qrcomprasESTOQUE: TFloatField;
    qrcomprasUNITARIO: TFloatField;
    Panel1: TPanel;
    bfechar: TAdvGlowButton;
    Bevel1: TBevel;
    Panel2: TPanel;
    Label56: TLabel;
    Label18: TLabel;
    Label1: TLabel;
    edata_inicio: TDateEdit;
    edata_final: TDateEdit;
    ENUMERO: TEdit;
    bfiltrar: TAdvGlowButton;
    GRID: TwwDBGrid;
    btotaliza_nota: TButton;
    Panel3: TPanel;
    DBText1: TDBText;
    DBText2: TDBText;
    Label2: TLabel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Label5: TLabel;
    rqde: TRzNumericEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BfiltrarClick(Sender: TObject);
    procedure btotaliza_compraClick(Sender: TObject);
    procedure bfecharClick(Sender: TObject);
    procedure Cancelar1Click(Sender: TObject);
    procedure Pesquisa1Click(Sender: TObject);
    procedure bimprimeClick(Sender: TObject);
    procedure imprimir1Click(Sender: TObject);
    procedure edata_inicioEnter(Sender: TObject);
    procedure edata_inicioExit(Sender: TObject);
    procedure edata_inicioKeyPress(Sender: TObject; var Key: Char);
    procedure ENUMEROExit(Sender: TObject);
    procedure ENUMEROKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmfornecedor_compras: Tfrmfornecedor_compras;

implementation

uses principal, modulo;

{$R *.dfm}

procedure Tfrmfornecedor_compras.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmfornecedor_compras.FormShow(Sender: TObject);
begin

 edata_inicio.text := '01/'+copy(datetostr(date),4,7);
 edata_final.date := frmprincipal.UltimoDiaMes(date);


 BfiltrarClick(frmfornecedor_compras);
 edata_inicio.Setfocus;

end;

procedure Tfrmfornecedor_compras.BfiltrarClick(Sender: TObject);
var
  nota : string;
begin

  if (enumero.text = '000000') or (enumero.text = '') then nota := '' else nota := ' and n.numero = '''+enumero.text+'''';
   {
  qrcompras.close;
  qrcompras.sql.clear;
  qrcompras.SQL.add('select i.*,n.*,p.* from c000088 i,c000087 n,c000025 p');
  qrcompras.SQL.add('where n.codfornecedor = '''+frmmodulo.qrfornecedorCODIGO.AsString+'''');
  qrcompras.SQL.add('and i.codigo = n.codigo');
  qrcompras.SQL.add('and p.codfornecedor = n.codfornecedor');
  qrcompras.SQL.add('and n.data_lancamento >= :datai and n.data_lancamento <= :dataf');
  qrcompras.SQL.add('order by n.data_lancamento,n.codfornecedor,p.produto');
  qrcompras.params.ParamByName('datai').asdatetime := edata_inicio.date;
  qrcompras.params.ParamByName('dataf').asdatetime := edata_final.date;
  qrcompras.open;
  }

  qrcompras.close;
  qrcompras.sql.clear;
  qrcompras.SQL.add('select i.*,p.*, n.* from c000088 i,  c000087 n, c000025 p');
  qrcompras.SQL.add('where n.codfornecedor = '''+frmmodulo.qrfornecedorCODIGO.AsString+'''');
  qrcompras.sql.add('and i.codnota = n.codigo '+nota);
  qrcompras.SQL.add('and p.codigo = i.codproduto');
  qrcompras.SQL.add('and i.data >= :datai and i.data <= :dataf');
  qrcompras.SQL.add('order by i.data,p.produto');
  qrcompras.params.ParamByName('datai').asdatetime := edata_inicio.date;
  qrcompras.params.ParamByName('dataf').asdatetime := edata_final.date;
  qrcompras.open;

  btotaliza_compraClick(frmfornecedor_compras);

  GRID.SetFocus;

end;

procedure Tfrmfornecedor_compras.btotaliza_compraClick(Sender: TObject);
begin
  rqde.value := 0;
  //rtotal.value := 0;
  dsnota.DataSet := nil;
  qrcompras.first;
  while not qrcompras.Eof do
  begin
     rqde.Value := rqde.Value + 1;
     //rtotal.value := rtotal.value + .qradic_nota.fieldbyname('total_nota').asfloat;
     qrcompras.next;
  end;
  dsnota.DataSet := qrcompras;

end;

procedure Tfrmfornecedor_compras.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmfornecedor_compras.Cancelar1Click(Sender: TObject);
begin
   bfecharClick(frmfornecedor_compras);
end;

procedure Tfrmfornecedor_compras.Pesquisa1Click(Sender: TObject);
begin
  ENUMERO.SetFocus;
end;

procedure Tfrmfornecedor_compras.bimprimeClick(Sender: TObject);
begin
//
end;

procedure Tfrmfornecedor_compras.imprimir1Click(Sender: TObject);
begin
  bimprimeClick(frmfornecedor_compras);
end;

procedure Tfrmfornecedor_compras.edata_inicioEnter(Sender: TObject);
begin
tedit(sender).Color := $00A0FAF8;

end;

procedure Tfrmfornecedor_compras.edata_inicioExit(Sender: TObject);
begin
tedit(sender).Color := clwindow;

end;

procedure Tfrmfornecedor_compras.edata_inicioKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure Tfrmfornecedor_compras.ENUMEROExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  ENUMERO.Text := frmPrincipal.zerarcodigo(ENUMERO.Text,6);


end;

procedure Tfrmfornecedor_compras.ENUMEROKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bfiltrar.setfocus;
end;

end.
