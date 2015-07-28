unit ecf_sweda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;



type
  Tfrmecf_Sweda = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
//******************  COMANDOS ECF DO COMERCIO PLUS *************************\\


function ecf_abre_ecf(ecf:string;porta:INTEGER):string;
function ecf_fechar_ecf(ecf:string):string;


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
  frmecf_Sweda: Tfrmecf_Sweda;
  Status:array[0..512] of Char;
  Comando: array[0..512] of Char;
  RETORNO : INTEGER;

  { Declaracao da DLL Sweda swecf}


  function  ECFWrite(Comando:PChar):longint; stdcall; external 'SWECF.DLL' index 3;
  Function  ECFRead(Status:PChar;Extensao:longint):Longint;stdcall; external 'SWECF.DLL' index 4;
  procedure ECFClose; stdcall; external 'SWECF.DLL' index 2;
  function  ECFOpen(numero:longint;tempo:longint;log:longint;mostra:longint):integer; stdcall; external 'SWECF.DLL' index 1;

implementation

uses principal, modulo;

{$R *.dfm}




function analisa_retorno(retorno:string;ecf:string):string;
VAR RT : STRING;
TEXTO : PANSICHAR;
begin

  RT := TRIM(RETORNO);


  if ECF = 'SWEDA' then
  begin
       if copy(rt,1,2) = '.-' Then
       begin
         if (copy(rt,1,3) = '.-P') then
         begin
           texto := pansichar('Não foi possível executar o comando!'+#13+'Motivo: '+'Impressora Fiscal não responde.');
           APPLICATION.MESSAGEBOX(texto,'Atenção',mb_ok+MB_ICONerror);
           RESULT := 'ERRO';
         end
         else
         begin
           texto := pansichar('Não foi possível executar o comando!'+#13+'Motivo: '+copy(rt,11,100)+'.');
           APPLICATION.MESSAGEBOX(texto,'Atenção',mb_ok+MB_ICONerror);
           RESULT := 'ERRO';
         end;
       end
       else
       begin
         RESULT := 'OK';
       end;

  end;
end;

function tfrmecf_sweda.ecf_abre_ecf(ecf:string;porta:INTEGER):string;
begin
 ECFOpen(PORTA,20,0,0);
end;
function tfrmecf_sweda.ecf_fechar_ecf(ecf:string):string;
begin
 ECFClose;
end;


function tfrmecf_sweda.ecf_registro_60A(ecf:string):string;
begin
end;


function tfrmecf_sweda.ecf_registro_60M(ecf:string):string;
begin
end;


function tfrmecf_sweda.ecf_numero_serie(ecf:string):string;
  var cNumeroSerie : String;
      iConta       : Integer;
Begin

    Comando := #27+'.273}';
    Retorno := ECFWrite(Comando);
    ECFRead(STATUS,512);
    IF analisa_retorno(STATUS,'SWEDA') = 'OK' THEN
      result := COPY(status,13,9)
    ELSE
      RESULT := 'ERRO';

end;


function tfrmecf_sweda.ecf_abre_CNFV(ecf:string;forma_pgto:string;valor:string;numero_cupom:string):string;
begin

end;

function tfrmecf_sweda.ecf_usa_CNFV(ecf:string;texto:string):string;
begin
end;

function tfrmecf_sweda.ecf_fecha_CNFV(ecf:string):string;
begin
end;

function tfrmecf_sweda.ecf_arredondamento(ecf:string;tipo:string):string;
begin
end;
function tfrmecf_sweda.ecf_leitura_x(ecf:string):string;
begin
    Comando := #27+'.13N}';
    EcfWrite(Comando);
    ECFRead(STATUS,512);
    result := analisa_retorno(STATUS,'SWEDA');
end;

function tfrmecf_sweda.ecf_reducao_z(ecf:string):string;
begin
    Comando := #27+'.14N}';
    EcfWrite(Comando);
    ECFRead(STATUS,512);
    result := analisa_retorno(STATUS,'SWEDA');
end;

function tfrmecf_sweda.ecf_leitura_memoria_fiscal(ecf:string;data_inicial:string;data_final:string):string;
begin

    DATA_INICIAL := copy(data_inicial,1,2)+copy(data_inicial,4,2)+copy(data_inicial,9,2);
    DATA_FINAL :=   copy(data_final,1,2)+copy(data_final,4,2)+copy(data_final,9,2);

    StrPCopy(Comando, #27+'.16'+data_inicial+data_final+'}');

    EcfWrite(Comando);
    ECFRead(STATUS,512);
    result :=  analisa_retorno(STATUS,'SWEDA');
end;

function tfrmecf_sweda.ecf_suprimentoX(ecf:string;valor:string;forma_pgto:string):string;
begin

    RESULT := 'OK';

end;
function tfrmecf_sweda.ecf_sangriaX(ecf:string;valor:string):string;
begin
    RESULT := '00';
end;
function tfrmecf_sweda.ecf_operador(ecf:string;operador:string):string;
begin
    RESULT := '00';
end;

function tfrmecf_sweda.ecf_ligada(ecf:string):string;
begin
    Comando := #27+'.23}';
    Retorno := ECFWrite(Comando);
    ECFRead(STATUS,512);
    result :=  analisa_retorno(STATUS,'SWEDA');
end;

function tfrmecf_sweda.ecf_modeloecf(ecf:string):string;
begin
end;

function tfrmecf_sweda.ecf_abre_gaveta(ecf:string):string;
begin
    Comando := #27+'.42}';
    Retorno := ECFWrite(Comando);
    ECFRead(STATUS,512);
    result := analisa_retorno(STATUS,'SWEDA');
end;
function tfrmecf_sweda.ecf_numero_cupom(ecf:string):string;
var numero_cupom: String;
iconta : integer;
begin
    Comando := #27+'.271}';
    RETORNO := ECFWrite(Comando);
    ECFRead(STATUS,512);
    IF analisa_retorno(STATUS,'SWEDA') = 'OK' THEN
      result := COPY(status,14,4)
    ELSE
      RESULT := 'ERRO';
end;
function tfrmecf_sweda.ecf_numero_caixa(ecf:string):string;
var numero_caixa: String;
iconta : integer;
begin
    Comando := #27+'.273}';
    RETORNO := ECFWrite(Comando);
    ECFRead(STATUS,512);
    IF analisa_retorno(STATUS,'SWEDA') = 'OK' THEN
      result := COPY(status,4,3)
    ELSE
      RESULT := 'ERRO';
end;
function tfrmecf_sweda.ecf_data_hora(ecf:string):string;
var data, hora: String;
iconta : integer;
begin
    Comando := #27+'.271}';
    Retorno := ECFWrite(Comando);
    ECFRead(STATUS,512);
    IF analisa_retorno(STATUS,'SWEDA') = 'OK' THEN
    begin
      DATA := COPY(STATUS,8,6);
      insert('/',data,3);
      insert('/',data,6);
      ReSULT := DATA;
    end
    ELSE
      RESULT := 'ERRO';
end;

function tfrmecf_sweda.ecf_cancela_cupom(ecf:string):string;
begin
    Comando := #27+'.05}';
    RETORNO := ECFWrite(Comando);
    ECFRead(STATUS,512);
    result := analisa_retorno(STATUS,'SWEDA');
end;
function tfrmecf_sweda.ecf_abre_cupom(ecf:string;cpf:string):string;
begin
    Comando:=#27+'.17                    }';
    RETORNO := ECFWrite(Comando);
    ECFRead(STATUS,512);
    result := analisa_retorno(STATUS,'SWEDA');
end;

function tfrmecf_sweda.ecf_vende_item_completo(ecf: string;Codigo: String; produto: String; Aliquota: String; Unitario: real; quantidade: real; Valor_Desconto: real; Valor_Acrescimo: real; Unidade:string;total:real ):string;
var posicao : integer;
quantidade_string, unitario_string, texto, total_string, ST : string;
begin
  if codigo = ''  then codigo := '999999';
  if codigo = '0' then codigo := '999999';
  if codigo = '00000' then codigo := '999999';
        quantidade_string := formatfloat('###############0.000',quantidade);
        unitario_string := formatfloat('###############0.00',unitario);


        if arredonda then
          total_string := formatfloat('###############0.00',total)
        else
        begin
          texto := floattostr(unitario * quantidade);
          i := pos(',',texto);
          if i > 0 then
          begin
            delete(texto,i+3,99);
          end;
           total_string := texto;
        end;


    posicao := pos(',',quantidade_STRING); if posicao > 0 then delete(quantidade_STRING,posicao,1); quantidade_string := frmprincipal.texto_justifica(quantidade_string,7,'0','E');
    posicao := pos(',',unitario_STRING);   if posicao > 0 then delete(uniTario_STRING,posicao,1); unitario_string := frmprincipal.texto_justifica(unitario_string,9,'0','E');
    posicao := pos(',',total_STRING);      if posicao > 0 then delete(total_STRING,posicao,1); total_string := frmprincipal.texto_justifica(total_string,12,'0','E');
    ST := copy(aliquota,1,1);
    IF (ST <> 'F' )AND (ST <> 'I' )AND( ST <> 'N') THEN
    BEGIN
      ST := 'T'+COPY(ALIQUOTA,1,2);
    END
    ELSE
    BEGIN
      ST := ST+'  ';
    END;
    PRODUTO := frmprincipal.texto_justifica(produto,24,' ','D');
    CODIGO := frmprincipal.texto_justifica(codigo,13,'0','E');

    StrPCopy(Comando,#27+'.01'+CODIGO+quantidade_string+unitario_string+total_string+PRODUTO+ST+'}');
    RETORNO := ECFWrite(Comando);
    ECFRead(STATUS,512);
    result :=  analisa_retorno(STATUS,'SWEDA');

end;

function tfrmecf_sweda.ecf_vende_item(ecf:string;codigo:string;produto:string;aliquota:string;tipo_quantidade:string;quantidade:real;casas_decimais:integer;unitario:real;tipo_desconto:string;valor_desconto:real;Desconto_Acrescimo:string;total:real):string;
var posicao : integer;
quantidade_string, unitario_string, texto, total_string, ST : string;
begin
  if codigo = ''  then codigo := '999999';
  if codigo = '0' then codigo := '999999';
  if codigo = '00000' then codigo := '999999';
    quantidade_string := formatfloat('###############0.000',quantidade);
    unitario_string := formatfloat('###############0.000',unitario);
    total_string := formatfloat('###############0.00',total);

    posicao := pos(',',quantidade_STRING); if posicao > 0 then delete(quantidade_STRING,posicao,1); quantidade_string := frmprincipal.texto_justifica(quantidade_string,7,'0','E');
    posicao := pos(',',unitario_STRING);   if posicao > 0 then delete(uniTario_STRING,posicao,1); unitario_string := frmprincipal.texto_justifica(unitario_string,9,'0','E');
    posicao := pos(',',total_STRING);      if posicao > 0 then delete(total_STRING,posicao,1); total_string := frmprincipal.texto_justifica(total_string,12,'0','E');

    IF ALIQUOTA = '02,00' THEN ALIQUOTA := 'T'+aliquota_ecf[2];
    IF ALIQUOTA = '03,00' THEN ALIQUOTA := 'T'+aliquota_ecf[3];
    IF ALIQUOTA = '04,00' THEN ALIQUOTA := 'T'+aliquota_ecf[4];
    IF ALIQUOTA = '07,00' THEN ALIQUOTA := 'T'+aliquota_ecf[7];
    IF ALIQUOTA = '12,00' THEN ALIQUOTA := 'T'+aliquota_ecf[12];
    IF ALIQUOTA = '17,00' THEN ALIQUOTA := 'T'+aliquota_ecf[17];
    IF ALIQUOTA = '25,00' THEN ALIQUOTA := 'T'+aliquota_ecf[25];
    IF ALIQUOTA = '27,00' THEN ALIQUOTA := 'T'+aliquota_ecf[27];
    IF ALIQUOTA = 'II'    THEN ALIQUOTA := 'I  ';
    IF ALIQUOTA = 'FF'    THEN ALIQUOTA := 'F  ';
    IF ALIQUOTA = 'NN'    THEN ALIQUOTA := 'N  ';



    PRODUTO := '~'+frmprincipal.texto_justifica(produto,23,' ','D');
    CODIGO := frmprincipal.texto_justifica(codigo,13,'0','E');
    StrPCopy(Comando,#27+'.01'+CODIGO+quantidade_string+unitario_string+total_string+PRODUTO+ALIQUOTA+'}');

    RETORNO := ECFWrite(Comando);
    ECFRead(STATUS,512);
    result :=  analisa_retorno(STATUS,'SWEDA');

end;
function tfrmecf_sweda.ecf_inicia_fechamento_cupom(ecf:string;Acrescimo_ou_desconto:string;tipo_acrescimo_desconto:string;valor_acrescimo_desconto:real;valor_total:real):string;
VAR DESCONTO_STRING, ACRESCIMO_STRING : STRING;
posicao : integer;
begin
    if acrescimo_ou_desconto = 'D' then
    begin
      IF valor_acrescimo_DESCONTO > 0 THEN
      BEGIN
        DESCONTO_STRING := formatfloat('###############0.00',valor_acrescimo_DESCONTO);
        posicao := pos(',',DESCONTO_STRING); if posicao > 0 then delete(DESCONTO_STRING,posicao,1); DESCONTO_string := frmprincipal.texto_justifica(DESCONTO_string,12,'0','E');

        StrPCopy(Comando,#27+'.03'+'          '+DESCONTO_STRING+'S}');

        RETORNO := ECFWrite(Comando);
        ECFRead(STATUS,512);
        result := analisa_retorno(STATUS,'SWEDA');
      END;
    end
    else
    begin
      IF valor_acrescimo_DESCONTO > 0 THEN
      BEGIN

        ACRESCIMO_STRING := formatfloat('###############0.00',valor_acrescimo_DESCONTO);
        posicao := pos(',',ACRESCIMO_STRING); if posicao > 0 then delete(ACRESCIMO_STRING,posicao,1);
        ACRESCIMO_string := frmprincipal.texto_justifica(ACRESCIMO_string,11,'0','E');


        StrPCopy(Comando,#27+'.11'+'51'+'0000'+ACRESCIMO_STRING+'S}');

        RETORNO := ECFWrite(Comando);
        ECFRead(STATUS,512);
        result := analisa_retorno(STATUS,'SWEDA');
      END;
    end;


end;
function tfrmecf_sweda.ecf_efetua_forma_pgto(ecf:string;forma_pgto:string;valor:real):string;
begin

end;
function tfrmecf_sweda.ecf_efetua_forma_pgto_especial(ecf:string;forma_pgto1:string;valor1:real;forma_pgto2:string;valor2:real;forma_pgto3:string;valor3:real;forma_pgto4:string;valor4:real;forma_pgto5:string;valor5:real;forma_pgto6:string;valor6:real):string;
var posicao : integer;
begin

    if valor1 > 0 then
    begin
       forma_pgto1 := formatfloat('###############0.00',valor1);
       posicao := pos(',',forma_pgto1); if posicao > 0 then delete(forma_pgto1,posicao,1); forma_pgto1 := frmprincipal.texto_justifica(forma_pgto1,12,'0','E');
       forma_pgto1 := '01'+forma_pgto1;
    end;
    if (valor2 > 0) or (valor3 > 0) then
    begin
       forma_pgto2 := formatfloat('###############0.00',valor2+valor3);
       posicao := pos(',',forma_pgto2); if posicao > 0 then delete(forma_pgto2,posicao,1); forma_pgto2 := frmprincipal.texto_justifica(forma_pgto2,12,'0','E');
       forma_pgto2 := '02'+forma_pgto2;
    end;
    if (valor4 > 0) or (valor5 > 0) then
    begin
       forma_pgto4 := formatfloat('###############0.00',valor4+valor5);
       posicao := pos(',',forma_pgto4); if posicao > 0 then delete(forma_pgto4,posicao,1); forma_pgto4 := frmprincipal.texto_justifica(forma_pgto4,12,'0','E');
       forma_pgto4 := '03'+forma_pgto4;
    end;
    if valor6 > 0 then
    begin
       forma_pgto6 := formatfloat('###############0.00',valor6);
       posicao := pos(',',forma_pgto6); if posicao > 0 then delete(forma_pgto6,posicao,1); forma_pgto6 := frmprincipal.texto_justifica(forma_pgto6,12,'0','E');
       forma_pgto6 := '06'+forma_pgto6;
    end;

    StrPCopy(Comando,#27+'.10'+forma_pgto1+forma_pgto2+forma_pgto4+forma_pgto6+'}');
    RETORNO := ECFWrite(Comando);
    ECFRead(STATUS,512);
    result := analisa_retorno(STATUS,'SWEDA');
end;

function tfrmecf_sweda.ecf_identifica_consumidor(ecf:string;nome:string;endereco:string;cpf:string):string;
begin
end;
function tfrmecf_sweda.ecf_termina_fechamento(ecf:string;mensagem:string):string;
begin
end;
function tfrmecf_sweda.ecf_termina_fechamento_especial(ecf:string;cliente:string;endereco:string;cpf:string):string;
var operador : string;
begin
    cliente := 'Cliente..: '+frmprincipal.texto_justifica(cliente,29,' ','D');
    cpf :=     'CPF/CNPJ.: '+frmprincipal.texto_justifica(CPF,29,' ','D');
    endereco :='Endereco.: '+frmprincipal.texto_justifica(endereco,29,' ','D');
    operador := frmprincipal.texto_justifica(FRMMODULO.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING + ' '+ FRMMODULO.QRCAIXA_OPERADOR.FIELDBYNAME('NOME').ASSTRING,29,' ','D');

    application.ProcessMessages;


    StrPCopy(Comando,#27+'.12NN0'+cliente+'0'+cpf+'}');

        RETORNO := ECFWrite(Comando);
        ECFRead(STATUS,512);
        result := analisa_retorno(STATUS,'SWEDA');

end;


function tfrmecf_sweda.ecf_cancela_item(ecf:string;item:string):string;
begin
    StrPCopy(Comando,#27+'.04'+ITEM+'}');
        RETORNO := ECFWrite(Comando);
        ECFRead(STATUS,512);
        result := analisa_retorno(STATUS,'SWEDA');

end;


end.
