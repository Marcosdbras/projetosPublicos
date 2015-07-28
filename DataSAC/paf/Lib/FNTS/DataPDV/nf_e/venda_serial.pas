unit venda_serial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, DB, StdCtrls, Buttons, Menus,
  ExtCtrls, AdvGlowButton;

type
  Tfrmvenda_serial = class(TForm)
    wwDBGrid1: TwwDBGrid;
    dsproduto: TDataSource;
    PopupMenu1: TPopupMenu;
    Cancelar1: TMenuItem;
    Panel1: TPanel;
    bitbtn1: TAdvGlowButton;
    Bevel1: TBevel;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure wwDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Cancelar1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmvenda_serial: Tfrmvenda_serial;

implementation

uses venda;

{$R *.dfm}

procedure Tfrmvenda_serial.BitBtn1Click(Sender: TObject);
begin
  close;
  
end;

procedure Tfrmvenda_serial.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmvenda_serial.FormShow(Sender: TObject);
begin
  selecionado := false;
end;

procedure Tfrmvenda_serial.wwDBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    selecionado := true;
    close;
  end;

  if key = #27 then
  begin
    selecionado := false;
    close;
  end;



end;

procedure Tfrmvenda_serial.Cancelar1Click(Sender: TObject);
begin
  close;
end;

end.
