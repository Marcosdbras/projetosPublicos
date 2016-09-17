program pacbr_tcpip;

uses
  Forms,
  uacbr_tcpip in 'uacbr_tcpip.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
