unit extenso1;

interface
function extenso (valor: real): string;

implementation

uses
  SysUtils,  Dialogs;

function extenso (valor: real): string;
var
 Centavos, Centena, Milhar, Milhao, Texto, msg: string;
const
 Unidades: array[1..9] of string = ('Um', 'Dois', 'Tres', 'Quatro', 'Cinco',
                                    'Seis', 'Sete', 'Oito', 'Nove');
 Dez: array[1..9] of string = ('Onze', 'Doze', 'Treze', 'Quatorze', 'Quinze',
                               'Dezesseis', 'Dezessete', 'Dezoito', 'Dezenove');

 Dezenas: array[1..9] of string = ('Dez', 'Vinte', 'Trinta', 'Quarenta',
                                   'Cinquenta', 'Sessenta', 'Setenta',
                                   'Oitenta', 'Noventa');
 Centenas: array[1..9] of string = ('Cento', 'Duzentos', 'Trezentos',
                                    'Quatrocentos', 'Quinhentos', 'Seiscentos',
                                    'Setecentos', 'Oitocentos', 'Novecentos');

function ifs(Expressao: Boolean; CasoVerdadeiro, CasoFalso: String): String;

begin
 if Expressao
  then Result:=CasoVerdadeiro
  else Result:=CasoFalso;
end;

function MiniExtenso (trio: string): string;
var
Unidade, Dezena, Centena: string;
begin
Unidade:='';
Dezena:='';
Centena:='';
if (trio[2]='1') and (trio[3]<>'0') then
 begin
  Unidade:=Dez[strtoint(trio[3])];
  Dezena:='';
 end
else
 begin
  if trio[2]<>'0' then Dezena:=Dezenas[strtoint(trio[2])];
  if trio[3]<>'0' then Unidade:=Unidades[strtoint(trio[3])];
 end;
if (trio[1]='1') and (Unidade='') and (Dezena='')

 then Centena:='Cem'
else
 if trio[1]<>'0'
  then Centena:=Centenas[strtoint(trio[1])]
  else Centena:='';
 Result:= Centena + ifs((Centena<>'') and ((Dezena<>'') or (Unidade<>'')), ' e ', '')
          + Dezena + ifs((Dezena<>'') and (Unidade<>''),' e ', '') + Unidade;
end;

begin
if (valor>999999.99) or (valor<0) then
 begin
  msg:='O valor está fora do intervalo permitido.';
  msg:=msg+'O número deve ser maior ou igual a zero e menor que 999.999,99.';
  msg:=msg+' Se não for corrigido o número não será escrito por extenso.';

  showmessage(msg);
  Result:='';
  exit;
 end;
if valor=0 then
 begin
  Result:='';
  Exit;
 end;
Texto:=formatfloat('000000.00',valor);
Milhar:=MiniExtenso(Copy(Texto,1,3));
Centena:=MiniExtenso(Copy(Texto,4,3));
Centavos:=MiniExtenso('0'+Copy(Texto,8,2));
Result:=Milhar;
if Milhar<>'' then
  if copy(texto,4,3)='000' then
   Result:=Result+' Mil Reais'
  else
   Result:=Result+' Mil, ';
if (((copy(texto,4,2)='00') and (Milhar<>'')
    and (copy(texto,6,1)<>'0')) or (centavos=''))

    and (Centena<>'') then Result:=Result+' e ';
if (Milhar+Centena <>'') then Result:=Result+Centena;
if (Milhar='') and (copy(texto,4,3)='001') then
  Result:=Result+' Real'
 else
  if (copy(texto,4,3)<>'000') then Result:=Result+' Reais';
if Centavos='' then
 begin
  Result:=Result+'.';
  Exit;
 end
else
 begin
  if Milhar+Centena='' then
    Result:=Centavos
   else
    Result:=Result+', e '+Centavos;
if (copy(texto,8,2)='01') and (Centavos<>'') then

  Result:=Result+' Centavo.'
 else
  Result:=Result+' Centavos.';
end;
end;

end.

Acrópole Delphi® - Cultura on line...
 