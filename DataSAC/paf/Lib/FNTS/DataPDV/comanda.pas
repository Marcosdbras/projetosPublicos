unit comanda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, WinSkinData, StdCtrls, Buttons, pngimage, ExtCtrls;

type
  Tfrmcomanda = class(TForm)
    SkinData1: TSkinData;
    Label1: TLabel;
    ediComanda: TEdit;
    Image1: TImage;
    Label2: TLabel;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcomanda: Tfrmcomanda;

implementation

{$R *.dfm}
      uses venda;
procedure Tfrmcomanda.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
     begin
       frmvenda.numcomanda := edicomanda.Text;
       close;
     end;
  //endi

  if key = #27 then
     begin
       frmvenda.numcomanda := '';
       close;
     end;

end;

end.
