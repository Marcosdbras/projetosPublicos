unit uAtu;

interface

uses
  Classes, SysUtils, Messages;

type
  thAtualiza = class(TThread)
  private
    { Private declarations }
  protected
    procedure Execute; override;
    procedure mensagem;
  end;

implementation

  uses udados, uprincipal, ugeral, ubaixaAut;

{ Important: Methods and properties of objects in visual components can only be
  used in a method called using Synchronize, for example,

      Synchronize(UpdateCaption);

  and UpdateCaption could look like,

    procedure thAtualiza.UpdateCaption;
    begin
      Form1.Caption := 'Updated in a thread';
    end;

// thAtualiza}


procedure thAtualiza.mensagem;
begin
//
end;





procedure thAtualiza.Execute;
var
   imin:integer;
begin
  { Place thread code here }
  imin := 1200*1000;

  while true do
    begin
      sleep(imin);
      Synchronize(mensagem);
      if not bEofBaixa then
         BaixaAuto;
      //endi   
    end;
  //endw



end;

end.
