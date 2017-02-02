program patualizaBanco;

uses
  Forms,
  uatualizaBanco in 'uatualizaBanco.pas' {Form1},
  uGeral in 'Ugeral.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
