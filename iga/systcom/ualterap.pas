unit ualterap;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, Grids, DBGrids, StdCtrls, Mask, DBCtrls, SqlExpr,
  Db;

type
  TfrmAlteraP = class(TForm)
    sPdGravar: TSpeedButton;
    spdcancelar2310: TSpeedButton;
    Label3: TLabel;
    ediqtde: TDBEdit;
    Label4: TLabel;
    ediprve: TDBEdit;
    Label5: TLabel;
    edisubtotal: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    lblnpro: TLabel;
    procedure spdcancelar2310Click(Sender: TObject);
    procedure ediqtdeKeyPress(Sender: TObject; var Key: Char);
    procedure ediqtdeExit(Sender: TObject);
    procedure sPdGravarClick(Sender: TObject);
    procedure ediprveExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAlteraP: TfrmAlteraP;

implementation

uses uGeral, uDados;

{$R *.dfm}

procedure TfrmAlteraP.spdcancelar2310Click(Sender: TObject);
begin
  if frmdados.Cds_vendab.State in [dsinsert, dsedit] then
     frmdados.Cds_vendab.Cancel;
  //endi
  close;
end;

procedure TfrmAlteraP.ediqtdeKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmAlteraP.ediqtdeExit(Sender: TObject);
begin
frmdados.Cds_Vendab.Edit;
frmdados.Cds_Vendab.FieldByName('subtotal').asfloat := frmdados.Cds_Vendab.FieldByName('qtde').asfloat * frmdados.Cds_Vendab.FieldByName('prve').asfloat
//edisubtotal.Text := floattostr(strtofloat(tirapontos(ediqtde.Text))*strtofloat(tirapontos(ediprve.Text)));
end;

procedure TfrmAlteraP.sPdGravarClick(Sender: TObject);
begin
  if frmdados.Cds_vendab.State in [dsinsert, dsedit] then
     frmdados.Cds_vendab.Post;
  //endi
  close;
end;

procedure TfrmAlteraP.ediprveExit(Sender: TObject);
begin
frmdados.Cds_Vendab.Edit;
frmdados.Cds_Vendab.FieldByName('subtotal').asfloat := frmdados.Cds_Vendab.FieldByName('qtde').asfloat * frmdados.Cds_Vendab.FieldByName('prve').asfloat
//edisubtotal.Text := floattostr(strtofloat(tirapontos(ediqtde.Text))*strtofloat(tirapontos(ediprve.Text)));
end;

procedure TfrmAlteraP.FormShow(Sender: TObject);
begin
lblnpro.Caption := frmdados.Cds_Vendab.fieldbyname('npro').asString;
end;

end.
