program Project1;

uses
  Forms,
  uatualizaBanco in 'uatualizaBanco.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
