unit uescetiqjato;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  Tfrmescetiqjato = class(TForm)
    rgbetiq: TRadioGroup;
    btnimprime: TBitBtn;
    btncancela: TBitBtn;
    procedure btncancelaClick(Sender: TObject);
    procedure btnimprimeClick(Sender: TObject);
    procedure apagadados;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmescetiqjato: Tfrmescetiqjato;

implementation

uses uetiqjato, uDados, uetiqjato60;

{$R *.dfm}

procedure Tfrmescetiqjato.btncancelaClick(Sender: TObject);
begin
close;
end;

procedure Tfrmescetiqjato.btnimprimeClick(Sender: TObject);
begin
      if rgbetiq.ItemIndex = 0 then
         begin
           frmetiqjato := tfrmetiqjato.Create(self);
           frmetiqjato.relatorio.Preview;
           frmetiqjato.Free;
         end;
      //endi

      if rgbetiq.ItemIndex = 1 then
         begin
           frmetiqjato60 := tfrmetiqjato60.Create(self);
           frmetiqjato60.relatorio.Preview;
           frmetiqjato60.Free;
         end;
      //endi


      if application.MessageBox('Deseja Excluir Registros?','Atenção',mb_YesNo + mb_DefButton2) = idYes then
         begin
           apagadados;

         end;
      //endi

end;

procedure Tfrmescetiqjato.apagadados;
begin

  frmdados.cdsetiq.First;
  while not frmdados.cdsetiq.Eof do
    begin
      frmdados.cdsetiq.Delete;
    end;
  //endw


end;


end.
