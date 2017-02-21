program brRestaurante;

uses
  Forms,
  principal in 'principal.pas' {frmPrincipal},
  comanda in 'comanda.pas' {frmComanda},
  Modulo in 'Modulo.pas' {frmModulo: TDataModule},
  mesa_consumo in 'mesa_consumo.pas' {frmMesa_consumo},
  loc_produto in 'loc_produto.pas' {frmLoc_produto},
  transf_Mesa in 'transf_Mesa.pas' {frmTransf_Mesa},
  balanca in 'balanca.pas' {frmBalanca},
  mesa_abertura in 'mesa_abertura.pas' {frmmesa_abertura};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'DataBAR - Atendimento a Bares e Restaurantes';
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
