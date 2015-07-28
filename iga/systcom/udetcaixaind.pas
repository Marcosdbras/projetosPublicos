unit udetcaixaind;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons;

type
  Tfrmdetcaixaind = class(TForm)
    btnsair: TBitBtn;
    btnestornar: TBitBtn;
    DBGrid1: TDBGrid;
    procedure btnsairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmdetcaixaind: Tfrmdetcaixaind;

implementation
    uses ugeral, udados, ufrenteecf;
{$R *.dfm}

procedure Tfrmdetcaixaind.btnsairClick(Sender: TObject);
begin
close;
end;

procedure Tfrmdetcaixaind.FormShow(Sender: TObject);
begin

frmdados.cds_caixa.Active := false;

frmdados.cds_caixa.Filtered := false;
frmdados.cds_caixa.Filter := 'cusu = '+inttostr(icusu);
frmdados.cds_caixa.Filtered := true;

frmdados.cds_caixa.Active := true;


end;

procedure Tfrmdetcaixaind.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
frmdados.cds_caixa.Active := false;
end;

end.
