program PDVPlus;

uses
  Forms,
  principal in 'principal.pas' {frmprincipal},
  modulo in 'modulo.pas' {frmmodulo: TDataModule},
  venda_pdv in 'venda_pdv.pas' {frmvenda_pdv},
  venda_inicio in 'venda_inicio.pas' {frmvenda_inicio},
  mensagem_senha in 'mensagem_senha.pas' {frmmensagem_senha},
  mensagem in 'mensagem.pas' {frmmensagem},
  locproduto in 'locproduto.pas' {frmlocproduto},
  locvendedor in 'locvendedor.pas' {frmlocvendedor},
  loccliente in 'loccliente.pas' {frmloccliente},
  venda_fechamento_aprazo in 'venda_fechamento_aprazo.pas' {frmvenda_fechamento_aprazo},
  venda_fechamento_avista in 'venda_fechamento_avista.pas' {frmvenda_fechamento_avista},
  venda_impressao in 'venda_impressao.pas' {frmvenda_impressao},
  venda_relrazao in 'venda_relrazao.pas' {frmvenda_relrazao},
  preco in 'preco.pas' {frmpreco},
  orcamento in 'orcamento.pas' {frmorcamento},
  senha in 'senha.pas' {frmsenha},
  ecf in 'ecf.pas',
  cliente_info in 'cliente_info.pas' {frmcliente_info};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'DataSAC - PDV Plus';
  Application.CreateForm(Tfrmprincipal, frmprincipal);
  Application.CreateForm(Tfrmmodulo, frmmodulo);
  Application.CreateForm(Tfrmmensagem_senha, frmmensagem_senha);
  Application.CreateForm(Tfrmmensagem, frmmensagem);
  Application.CreateForm(Tfrmcliente_info, frmcliente_info);
  Application.Run;
end.
