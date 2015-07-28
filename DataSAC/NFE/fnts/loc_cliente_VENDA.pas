unit loc_cliente_VENDA;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, Collection, ExtCtrls, DB, StdCtrls, Wwkeycb,
  Buttons, Menus, Wwdbigrd, Wwdbgrid;

type
  Tfrmloc_cliente_VENDA = class(TForm)
    dscliente: TDataSource;
    ViewSplit1: TViewSplit;
    FlipPanel1: TFlipPanel;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    PopupMenu1: TPopupMenu;
    CadastrarNovoFornecedor1: TMenuItem;
    DBGRID1: TwwDBGrid;
    LOC: TEdit;
    procedure locChange(Sender: TObject);
    procedure locKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure locEnter(Sender: TObject);
    procedure locExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure locKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmloc_cliente_VENDA: Tfrmloc_cliente_VENDA;

implementation

uses modulo, cliente;

{$R *.dfm}

procedure Tfrmloc_cliente_VENDA.locChange(Sender: TObject);
begin
  frmmodulo.qrcliente.close;
  frmmodulo.qrcliente.SQL.clear;
  frmmodulo.qrcliente.SQL.add('select * from c000007 where upper(nome) like '''+loc.text+'%'' order by nome, codigo');
  frmmodulo.qrcliente.open;
  FRMMODULO.QRCLIENTE.INDEXFIELDNAMES := 'NOME';
end;

procedure Tfrmloc_cliente_VENDA.locKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) or (key = #27) then close;
end;

procedure Tfrmloc_cliente_VENDA.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13)  then close;
  IF KEY = #27 THEN LOC.SetFocus;
end;

procedure Tfrmloc_cliente_VENDA.DBGrid1DblClick(Sender: TObject);
begin
  CLOSE;
end;

procedure Tfrmloc_cliente_VENDA.BitBtn1Click(Sender: TObject);
begin
  frmcliente := tfrmcliente.create(self);
  frmcliente.showmodal;
end;

procedure Tfrmloc_cliente_VENDA.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   action := cafree;
end;

procedure Tfrmloc_cliente_VENDA.locEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmloc_cliente_VENDA.locExit(Sender: TObject);
begin
    TEDIT(SENDER).COLOR := CLWINDOW;
end;

procedure Tfrmloc_cliente_VENDA.FormShow(Sender: TObject);
begin
 frmmodulo.qrcliente.close;
  frmmodulo.qrcliente.SQL.clear;
  frmmodulo.qrcliente.SQL.add('select * from c000007 where CODIGO =  ''XXXXXX''');
  frmmodulo.qrcliente.open;



  LOC.SETFOCUS;
end;

procedure Tfrmloc_cliente_VENDA.locKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  IF KEY = VK_DOWN THEN DBGRID1.SETFOCUS;
end;

end.
