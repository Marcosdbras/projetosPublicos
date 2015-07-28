program pDental;

uses
  Forms,
  uDental in 'uDental.pas' {frmdental},
  umenu in 'umenu.pas' {frmprincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tfrmdental, frmdental);
  Application.CreateForm(Tfrmprincipal, frmprincipal);
  Application.Run;
end.
