unit ecf_urano;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  Tfrmecf_Urano = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
  private
    { Private declarations }

  public
    { Public declarations }
//******************  COMANDOS ECF DO COMERCIO PLUS *************************\\


(*------------------------------ COMANDOS PRA O SINTEGRA --------------------*)
function ecf_registro_60A(ecf:string):string;
function ecf_registro_60M(ecf:string):string;
(*----------------------------- COMANDOS DE LEITURAS E PARAMETROS ------------------------------*)
function ecf_numero_serie(ecf:string):string;
function ecf_arredondamento(ecf:string;tipo:string):string;
function ecf_leitura_x(ecf:string):string;
function ecf_reducao_z(ecf:string):string;
function ecf_leitura_memoria_fiscal(ecf:string;data_inicial:string;data_final:string):string;
function ecf_abre_gaveta(ecf:string):string;
function ecf_suprimentoX(ecf:string;valor:string;forma_pgto:string):string;
function ecf_sangriaX(ecf:string;valor:string):string;
function ecf_operador(ecf:string;operador:string):string;


(*----------------------------- COMANDOS DE INFORMACOES ---------------------------*)
function ecf_numero_cupom(ecf:string):string;
function ecf_numero_caixa(ecf:string):string;
function ecf_data_hora(ecf:string):string;
function ecf_ligada(ecf:string):string;
function ecf_modeloecf(ecf:string):string;

(*----------------------------- COMANDOS DE CUPOM ---------------------------------*)
function ecf_cancela_cupom(ecf:string):string;
function ecf_abre_cupom(ecf:string;CPF:string):string;
function ecf_vende_item(ecf:string;codigo:string;produto:string;aliquota:string;tipo_quantidade:string;quantidade:real;casas_decimais:integer;unitario:real;tipo_desconto:string;valor_desconto:real;Desconto_Acrescimo:string;total:real):string;
function ecf_vende_item_completo(ecf: string;Codigo: String; produto: String; Aliquota: String; Unitario: real; quantidade: real; Valor_Desconto: real; Valor_Acrescimo: real; Unidade:string;total:real ):string;
function ecf_inicia_fechamento_cupom(ecf:string;Acrescimo_ou_desconto:string;tipo_acrescimo_desconto:string;valor_acrescimo_desconto:real;valor_total:real):string;
function ecf_efetua_forma_pgto(ecf:string;forma_pgto:string;valor:real):string;
function ecf_efetua_forma_pgto_especial(ecf:string;forma_pgto1:string;valor1:real;forma_pgto2:string;valor2:real;forma_pgto3:string;valor3:real;forma_pgto4:string;valor4:real;forma_pgto5:string;valor5:real;forma_pgto6:string;valor6:real):string;
function ecf_identifica_consumidor(ecf:string;nome:string;endereco:string;cpf:string):string;
function ecf_termina_fechamento(ecf:string;mensagem:string):string;
function ecf_termina_fechamento_especial(ecf:string;cliente:string;endereco:string;cpf:string):string;
function ecf_cancela_item(ecf:string;item:string):string;

(*----------------------------- COMPROVANTE NAO FISCAL VINCULADO ------------------*)

function ecf_abre_CNFV(ecf:string;forma_pgto:string;valor:string;numero_cupom:string):string;
function ecf_usa_CNFV(ecf:string;texto:string):string;
function ecf_fecha_CNFV(ecf:string):string;        
  end;





var
  frmecf_URANO: Tfrmecf_URANO;
  ret : string;

implementation

{$R *.dfm}


function tfrmecf_urano.ecf_registro_60A(ecf:string):string;
begin
end;
function tfrmecf_urano.ecf_registro_60M(ecf:string):string;
begin
end;
function tfrmecf_urano.ecf_numero_serie(ecf:string):string;
Begin
end;
function tfrmecf_urano.ecf_abre_CNFV(ecf:string;forma_pgto:string;valor:string;numero_cupom:string):string;
begin
end;
function tfrmecf_urano.ecf_usa_CNFV(ecf:string;texto:string):string;
begin
end;
function tfrmecf_urano.ecf_fecha_CNFV(ecf:string):string;
begin
end;
function tfrmecf_urano.ecf_arredondamento(ecf:string;tipo:string):string;
begin
end;
function tfrmecf_urano.ecf_leitura_x(ecf:string):string;
begin
end;
function tfrmecf_urano.ecf_reducao_z(ecf:string):string;
begin
end;
function tfrmecf_urano.ecf_leitura_memoria_fiscal(ecf:string;data_inicial:string;data_final:string):string;
begin
end;
function tfrmecf_urano.ecf_suprimentoX(ecf:string;valor:string;forma_pgto:string):string;
begin
end;
function tfrmecf_urano.ecf_sangriaX(ecf:string;valor:string):string;
begin
end;
function tfrmecf_urano.ecf_operador(ecf:string;operador:string):string;
begin
end;
function tfrmecf_urano.ecf_ligada(ecf:string):string;
begin
end;
function tfrmecf_urano.ecf_modeloecf(ecf:string):string;
begin
end;
function tfrmecf_urano.ecf_abre_gaveta(ecf:string):string;
begin
end;
function tfrmecf_urano.ecf_numero_cupom(ecf:string):string;
begin
end;
function tfrmecf_urano.ecf_numero_caixa(ecf:string):string;
begin
end;
function tfrmecf_urano.ecf_data_hora(ecf:string):string;
begin
end;
function tfrmecf_urano.ecf_cancela_cupom(ecf:string):string;
begin
end;
function tfrmecf_urano.ecf_abre_cupom(ecf:string;cpf:string):string;
begin
end;
function tfrmecf_urano.ecf_vende_item_completo(ecf: string;Codigo: String; produto: String; Aliquota: String; Unitario: real; quantidade: real; Valor_Desconto: real; Valor_Acrescimo: real; Unidade:string;total:real ):string;
begin
end;
function tfrmecf_urano.ecf_vende_item(ecf:string;codigo:string;produto:string;aliquota:string;tipo_quantidade:string;quantidade:real;casas_decimais:integer;unitario:real;tipo_desconto:string;valor_desconto:real;Desconto_Acrescimo:string;total:real):string;
begin
end;
function tfrmecf_urano.ecf_inicia_fechamento_cupom(ecf:string;Acrescimo_ou_desconto:string;tipo_acrescimo_desconto:string;valor_acrescimo_desconto:real;valor_total:real):string;
begin
end;
function tfrmecf_urano.ecf_efetua_forma_pgto(ecf:string;forma_pgto:string;valor:real):string;
begin
end;
function tfrmecf_urano.ecf_efetua_forma_pgto_especial(ecf:string;forma_pgto1:string;valor1:real;forma_pgto2:string;valor2:real;forma_pgto3:string;valor3:real;forma_pgto4:string;valor4:real;forma_pgto5:string;valor5:real;forma_pgto6:string;valor6:real):string;
begin
end;
function tfrmecf_urano.ecf_identifica_consumidor(ecf:string;nome:string;endereco:string;cpf:string):string;
begin
end;
function tfrmecf_urano.ecf_termina_fechamento(ecf:string;mensagem:string):string;
begin
end;
function tfrmecf_urano.ecf_termina_fechamento_especial(ecf:string;cliente:string;endereco:string;cpf:string):string;
begin
end;
function tfrmecf_urano.ecf_cancela_item(ecf:string;item:string):string;
begin
end;
end.

