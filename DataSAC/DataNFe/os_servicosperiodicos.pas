unit os_servicosperiodicos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ImgList, AdvGlowButton, DB, Grids, Wwdbigrd, Wwdbgrid,
  AdvOfficeStatusBar, AdvToolBar, AdvOfficeStatusBarStylers,
  AdvToolBarStylers, DBCtrls, StdCtrls, Mask, RzEdit, RzDBEdit, ExtCtrls;

type
  Tfrmos_servicosperiodicos = class(TForm)
    AdvToolBarOfficeStyler1: TAdvToolBarOfficeStyler;
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    dsservicos_periodicos: TDataSource;
    ImageList1: TImageList;
    ImageList2: TImageList;
    PopupMenu1: TPopupMenu;
    Retorna1: TMenuItem;
    GRID5: TwwDBGrid;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Bevel1: TBevel;
    RzDBEdit1: TRzDBEdit;
    RzDBEdit2: TRzDBEdit;
    Panel2: TPanel;
    Bevel2: TBevel;
    bfechar: TAdvGlowButton;
    procedure bfecharClick(Sender: TObject);
    procedure Retorna1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmos_servicosperiodicos: Tfrmos_servicosperiodicos;

implementation

uses modulo, os;

{$R *.dfm}

procedure Tfrmos_servicosperiodicos.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmos_servicosperiodicos.Retorna1Click(Sender: TObject);
begin
close;
end;

procedure Tfrmos_servicosperiodicos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;

end;

procedure Tfrmos_servicosperiodicos.FormShow(Sender: TObject);
begin
  frmmodulo.qrservicos_periodicos.close;
  frmmodulo.qrservicos_periodicos.sql.clear;
  frmmodulo.qrservicos_periodicos.sql.add('select * from servicos_periodicos');
  frmmodulo.qrservicos_periodicos.sql.add('where codcliente = '''+frmmodulo.qrcliente.fieldbyname('codigo').AsString+'''');
  frmmodulo.qrservicos_periodicos.open;

end;

end.
