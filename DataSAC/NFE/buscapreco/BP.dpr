program BP;

uses
  Forms,
  Windows,
  buscapreco in 'buscapreco.pas' {frmbuscapreco};

var
    Hand : THandle;

{$R *.res}

begin
  Hand := FindWindow('TApplication', 'Busca Preco');
  if hand = 0 then
  begin
    Application.Initialize;
    Application.Title := 'Siscom 8.2 :: Busca Preco';
  Application.CreateForm(Tfrmbuscapreco, frmbuscapreco);
    Application.Run;
  end
  else
  begin
    ShowWindow(Hand,SW_NORMAL);
    application.terminate;

  end;
end.






