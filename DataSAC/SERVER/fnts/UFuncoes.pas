unit UFuncoes;

interface

uses Windows, Forms,  SysUtils, ShellAPI, StrUtils, dialogs, inifiles;

type
  TTipoIni = (TiConexao, TiTerminal, TiECF);

 // Pega o N° da Unidade do sistema
function SystemDrive: String;

 // Insere zeros a esquerda
Function StrZero(const I: Integer; const Casas: byte): string; overload; // Zeros Antes String
Function StrZero(const s: string; const Casas: byte): string;  overload;

 // Aciona Gaveta de Dinheiro impressora nao fiscal
Function AcionaGavetaNaoFiscal(sPorta:string): Boolean;

 // Ler Arquivo txt de configurações e busca por referencia inicial
Function LerArquivoTxt(sArquivo, sLinhaReferencia, RetPadrao:string):string;

//function Imp_Inicia_Abertura_Nota(sPorta:string; Acrescimo_ou_Desconto:string;tipo:string;valor:real):string;

function Imp_Abre_Cupom(sPorta:string;CPF,Nome,Endereco:string; pbImprimirNoCabecalho: Boolean = False):string;
function Imp_Vende_item(sPorta:string;Codigo,produto,unidade,aliquota:string;quantidade,valor_unitario,valor_desconto:real;
                        valor_acrescimo:real;tipo_desconto_acrescimo:string;total:real):string;
function Imp_Inicia_Fechamento(sPorta:string; Acrescimo_ou_Desconto:string;tipo:string;valor:real):string;  // Imprime Fechamento desconto ou acrescimo
function Imp_Forma_Pgto(sPorta:string;forma_pgto:string;valor:real):string;
function Imp_Termina_Fechamento(sPorta:string; Mensagem:string):string;
function Imp_Cancela_Item(sPorta:string;Item:string):string;
function Imp_Cancela_Cupom(sPorta:string):string;
function PadL(s:string; n:integer): string;
function PadR(s:string; n:integer): string;

 // Varifica se valor string é inteiro
Function IsInteger(sString:string):Integer;

function PathSysIni(ini: TTipoIni): string;
procedure GravaIni(Sessao, Chave: String; Valor: string; TipoIni: TTipoIni);
function LerIni(Sessao, Chave: String; ValorPadrao: string;TipoIni: TTipoIni): string;
function Decimal_Is_Coma(var Valor:String):String;
function FindReplace (Var Enc:String; Var subs: String; Var Texto: String): string;
function datacriexe:string;
function datamodexe:string;
function FileAgeCreate(const FileName: string): Integer;
Function  tirapontos(pValor:string):string;
Function  tiratracos(pValor:string):string;
Function  tirabarras(pValor:string):string;

function ValidaCPF(numCPF: string): boolean;   // atualmente em uso no sistema
function ValidaCNPJ(numCNPJ: string): boolean;  // atualmente em uso no sistema
function validapis(Dado : String) : boolean;
function ValiData(Data: String):Boolean;
function TestaCpf( xCPF:String ):Boolean;
function TestaCgc(xCGC: String):Boolean;

function VerificaCNPJ(I:string): Boolean;





const
  Kernel_INISessao_Telas = 'PLANOFUNDO';

var
  bbloqueado:boolean = true;
  abloqueio: array of string;


implementation

uses Classes, principal;


function VerificaCNPJ(I:string): Boolean;

var

cnpj: array[1..15] of integer;

apoio: array[0..15] of integer;

f: integer;//para uso no for

total: integer;//para totalização dos valores

D1: integer;//primeiro dígito calculado

D2: integer;//segundo dígito calculado

begin

//Primeiro teste: o número de algarismos

if (Length(I)<>14) then result:=false

else

  begin

  //Antes do teste propriamente dito temos que montar a matriz com os

  //os algarismos do CNPJ e depois uma matriz apoio) que terá os números

  //que ajudarão a verificar so dígitos verificadores

  //

  //Monta matriz cnpj

  for f := 1 to 14 do

      begin

       cnpj[f]:=strtoint(I[f]);

      end;

  end;

  //Monta matriz de apoio

  apoio[0]:=6;//só será usada no cálculo do segundo dígito verificador

  apoio[1]:=5;

  apoio[2]:=4;

  apoio[3]:=3;

  apoio[4]:=2;

  apoio[5]:=9;

  apoio[6]:=8;

  apoio[7]:=7;

  apoio[8]:=6;

  apoio[9]:=5;

  apoio[10]:=4;

  apoio[11]:=3;

  apoio[12]:=2;

  //Começa cálculo do primeiro dígito verificador

  total:=0;//variável que conterá a soma da operação com os números

  for f := 1 to 12 do

        begin

          total:=total+(cnpj[f]*apoio[f]);

        end;

  D1 := total mod 11;

      if (D1<2) then D1:=0 else D1:=11-D1;

      if (D1<>cnpj[13]) then

        begin

          //Primeiro dígito verificador não confere

          Result:=false;

        end else

                begin

                 //Entrou aqui, então o primeiro dígito confere!

                 total:=0;

                 for f := 0 to 12 do

                        begin

                           total:=total+(cnpj[f+1]*apoio[f]);

                        end;

                 D2 :=total mod 11;

                 if (D2<2) then D2:=0 else D2:=11-D2;

                 if (D2<>cnpj[14]) then

                        begin

                           //Segunod digito verificador não confere

                           Result:=false;

                        end else Result:=true;

                 end;



end;





function TestaCpf( xCPF:String ):Boolean;
{Testa se o CPF é válido ou não}
Var
d1,d4,xx,nCount,resto,digito1,digito2 : Integer;
Check : String;
Begin
d1 := 0; d4 := 0; xx := 1;
for nCount := 1 to Length( xCPF )-2 do
    begin
    if Pos( Copy( xCPF, nCount, 1 ), '/-.' ) = 0 then
       begin
       d1 := d1 + ( 11 - xx ) * StrToInt( Copy( xCPF, nCount, 1 ) );
       d4 := d4 + ( 12 - xx ) * StrToInt( Copy( xCPF, nCount, 1 ) );
       xx := xx+1;
       end;
    end;
resto := (d1 mod 11);
if resto < 2 then
   begin
   digito1 := 0;
   end
else
   begin
   digito1 := 11 - resto;
   end;
d4 := d4 + 2 * digito1;
resto := (d4 mod 11);
if resto < 2 then
   begin
   digito2 := 0;
   end
else
   begin
   digito2 := 11 - resto;
   end;
Check := IntToStr(Digito1) + IntToStr(Digito2);
if Check <> copy(xCPF,succ(length(xCPF)-2),2) then
   begin
   Result := False;
   end
else
   begin
   Result := True;
   end;
end;


function TestaCgc(xCGC: String):Boolean;
{Testa se o CGC é válido ou não}
Var
d1,d4,xx,nCount,fator,resto,digito1,digito2 : Integer;
Check : String;
begin
d1 := 0;
d4 := 0;
xx := 1;
for nCount := 1 to Length( xCGC )-2 do
    begin
    if Pos( Copy( xCGC, nCount, 1 ), '/-.' ) = 0 then
       begin
       if xx < 5 then
          begin
          fator := 6 - xx;
          end
       else
          begin
          fator := 14 - xx;
          end;
       d1 := d1 + StrToInt( Copy( xCGC, nCount, 1 ) ) * fator;
       if xx < 6 then
          begin
          fator := 7 - xx;
          end
       else
          begin
          fator := 15 - xx;
          end;
       d4 := d4 + StrToInt( Copy( xCGC, nCount, 1 ) ) * fator;
       xx := xx+1;
       end;
    end;
    resto := (d1 mod 11);
    if resto < 2 then
       begin
       digito1 := 0;
       end
   else
       begin
       digito1 := 11 - resto;
       end;
   d4 := d4 + 2 * digito1;
   resto := (d4 mod 11);
   if resto < 2 then
      begin
      digito2 := 0;
      end
   else
      begin
      digito2 := 11 - resto;
      end;
   Check := IntToStr(Digito1) + IntToStr(Digito2);
   if Check <> copy(xCGC,succ(length(xCGC)-2),2) then
      begin
      Result := False;
      end
   else
      begin
      Result := True;
      end;
end;




function validapis(Dado : String) : boolean;
{Testa se o número do pis é válido ou não}
var
i, wsoma, Wm11, Wdv,wdigito : Integer;
begin
if Trim(Dado) <> '' Then
   begin
   wdv := strtoint(copy(Dado, 11, 1));
   wsoma := 0;
   wm11 := 2;
   for i := 1 to 10 do
       begin
       wsoma := wsoma + (wm11 *strtoint(copy(Dado,11 - I, 1)));
       if wm11 < 9 then
          begin
          wm11 := wm11+1
          end
       else
          begin
          wm11 := 2;
          end;
       end;
   wdigito := 11 - (wsoma MOD 11);
   if wdigito > 9 then
      begin
      wdigito := 0;
      end;
   if wdv = wdigito then
      begin
      validapis := true;
      end
   else
      begin
      validapis := false;
      end;
   end;
end;

function ValiData(Data: String):Boolean;
{Testa se uma data é válida ou não}
var
TesteData: TDateTime;
begin
Result:=True;
try
  TesteData := StrToDate(Data);
except
  Result := False;
end;
end;


function ValidaCPF(numCPF: string): boolean;
var
        cpf: string;
        x, total, dg1, dg2: Integer;
        ret: boolean;
begin
ret:=True;
for x:=1 to Length(numCPF) do
        if not (numCPF[x] in ['0'..'9', '-', '.', ' ']) then
                ret:=False;
if ret then
        begin
        ret:=True;
        cpf:='';
        for x:=1 to Length(numCPF) do
                if numCPF[x] in ['0'..'9'] then
                        cpf:=cpf + numCPF[x];
        if Length(cpf) <> 11 then
                ret:=False;
        if ret then
                begin
                //1° dígito
                total:=0;
                for x:=1 to 9 do
                        total:=total + (StrToInt(cpf[x]) * x);
                dg1:=total mod 11;
                if dg1 = 10 then
                        dg1:=0;
                //2° dígito
                total:=0;
                for x:=1 to 8 do
                        total:=total + (StrToInt(cpf[x + 1]) * (x));
                total:=total + (dg1 * 9);
                dg2:=total mod 11;
                if dg2 = 10 then
                        dg2:=0;
                //Validação final
                if dg1 = StrToInt(cpf[10]) then
                        if dg2 = StrToInt(cpf[11]) then
                                ret:=True;
                //Inválidos

                case AnsiIndexStr(cpf,['00000000000','11111111111','22222222222','33333333333','44444444444',

                                                           '55555555555','66666666666','77777777777','88888888888','99999999999']) of

                        0..9:   ret:=False;

                        end;

                end
        else
                begin
                //Se não informado deixa passar
                if cpf = '' then
                        ret:=True;
                end;
        end;
ValidaCPF:=ret;
end;


function ValidaCNPJ(numCNPJ: string): boolean;
var
  cnpj: string;
  dg1, dg2: integer;
  x, total: integer;
  ret: boolean;
begin
ret:=False;
cnpj:='';
//Analisa os formatos
if Length(numCNPJ) = 18 then
        if (Copy(numCNPJ,3,1) + Copy(numCNPJ,7,1) + Copy(numCNPJ,11,1) + Copy(numCNPJ,16,1) = '../-') then
                begin
                cnpj:=Copy(numCNPJ,1,2) + Copy(numCNPJ,4,3) + Copy(numCNPJ,8,3) + Copy(numCNPJ,12,4) + Copy(numCNPJ,17,2);
                ret:=True;
                end;
if Length(numCNPJ) = 14 then
        begin
        cnpj:=numCNPJ;
        ret:=True;
        end;
//Verifica
if ret then
        begin
        try
                //1° digito
                total:=0;
                for x:=1 to 12 do
                        begin
                        if x < 5 then
                                Inc(total, StrToInt(Copy(cnpj, x, 1)) * (6 - x))
                        else
                                Inc(total, StrToInt(Copy(cnpj, x, 1)) * (14 - x));
                        end;
                dg1:=11 - (total mod 11);
                if dg1 > 9 then
                        dg1:=0;
                //2° digito
                total:=0;
                for x:=1 to 13 do
                        begin
                        if x < 6 then
                                Inc(total, StrToInt(Copy(cnpj, x, 1)) * (7 - x))
                        else
                                Inc(total, StrToInt(Copy(cnpj, x, 1)) * (15 - x));
                        end;
                dg2:=11 - (total mod 11);
                if dg2 > 9 then
                        dg2:=0;
                //Validação final
                if (dg1 = StrToInt(Copy(cnpj, 13, 1))) and (dg2 = StrToInt(Copy(cnpj, 14, 1))) then
                        ret:=True
                else
                        ret:=False;
        except
                ret:=False;
                end;
        //Inválidos
        case AnsiIndexStr(cnpj,['00000000000000','11111111111111','22222222222222','33333333333333','44444444444444',

                                                   '55555555555555','66666666666666','77777777777777','88888888888888','99999999999999']) of

                0..9:   ret:=False;

                end;
        end;
ValidaCNPJ:=ret;
end;




function tirapontos(pValor:string):string;
var pPosI:integer;
var pPosF:integer;
var pNovoValor:string;
begin
   result := '';
   pNovoValor:='';
   pPosI:=1;
   while true do
     begin
       pPosF := pos('.',pValor);
       if pPosF > 0 then
          begin
            pNovoValor:=pNovoValor+copy(pValor,pPosI,pPosF - 1);
            pValor:=copy(pValor,pPosF+1,length(pValor));
          end
       else
          begin
            result:=pNovoValor+pValor;
            exit;
          end;
     end;
 //endw
end;

function tiratracos(pValor:string):string;
var pPosI:integer;
var pPosF:integer;
var pNovoValor:string;
begin
   result := '';
   pNovoValor:='';
   pPosI:=1;
   while true do
     begin
       pPosF := pos('-',pValor);
       if pPosF > 0 then
          begin
            pNovoValor:=pNovoValor+copy(pValor,pPosI,pPosF - 1);
            pValor:=copy(pValor,pPosF+1,length(pValor));
          end
       else
          begin
            result:=pNovoValor+pValor;
            exit;
          end;
     end;
 //endw
end;


function tirabarras(pValor:string):string;
var pPosI:integer;
var pPosF:integer;
var pNovoValor:string;
begin
   result := '';
   pNovoValor:='';
   pPosI:=1;
   while true do
     begin
       pPosF := pos('/',pValor);
       if pPosF > 0 then
          begin
            pNovoValor:=pNovoValor+copy(pValor,pPosI,pPosF - 1);
            pValor:=copy(pValor,pPosF+1,length(pValor));
          end
       else
          begin
            result:=pNovoValor+pValor;
            exit;
          end;
     end;
 //endw
end;



function datacriexe:string;
var  FlDt: Integer;
begin
  FlDt := FileAgeCreate(ParamStr(0));
  result := DateToStr(FileDateToDateTime(FlDt));
end;

function datamodexe:string;
var  FlDt: Integer;
begin
  FlDt := FileAge(ParamStr(0));
  result := DateToStr(FileDateToDateTime(FlDt));

end;

function FileAgeCreate(const FileName: string): Integer;
var
  Handle: THandle;
  FindData: TWin32FindData;
  LocalFileTime: TFileTime;
begin
  Handle := FindFirstFile(PChar(FileName), FindData);
  if Handle <> INVALID_HANDLE_VALUE then
  begin
    Windows.FindClose(Handle);
    if (FindData.dwFileAttributes and FILE_ATTRIBUTE_DIRECTORY) = 0 then
    begin
      FileTimeToLocalFileTime(FindData.ftCreationTime, LocalFileTime);
      if FileTimeToDosDateTime(LocalFileTime, LongRec(Result).Hi,
        LongRec(Result).Lo) then Exit;
    end;
  end;
  Result := -1;
end;





function PadL(s:string; n:integer): string;
begin
  Result := Format('%-' + IntToStr(n) + '.' + IntToStr(n) + 's', [s]);
end;

function PadR(s:string; n:integer): string;
begin
Result := Format('%' + IntToStr(n) + '.' + IntToStr(n) + 's', [s]);
end;


function SystemDrive: String;
var
  DirWin, SystemDriv: String;
begin
  SetLength(DirWin, MAX_PATH);
  GetSystemDirectory(Pchar(DirWin), MAX_PATH);
  SystemDriv := Copy(DirWin, 1, 3);
  Result := SystemDriv
end;

Function AcionaGavetaNaoFiscal(sPorta:string): Boolean;
Var
  txt : TextFile;
  sComando,sArquivo:string;
begin
  sArquivo := ExtractFilePath(Application.ExeName) + '\tmp.prn';

  if FileExists(sArquivo) then
    DeleteFile(sArquivo);

  try

    // Comando para Acionar a Gaveta de Dinheiro
    AssignFile(txt, sArquivo );
    Rewrite(txt);
    sComando := #27 + #118 + #140;
    Writeln(txt,scomando);
    CloseFile(txt);

    Result := CopyFile(Pchar(sArquivo),Pchar(sPorta),false);

  except

    Result := False;

  end;


end;

Function LerArquivoTxt(sArquivo, sLinhaReferencia,RetPadrao:string):string;
var
    txt:TStrings;
    i:Integer;
    s:WideString;
begin
    Result := RetPadrao;
    
  if not FileExists(sArquivo) then
  begin
    Result := RetPadrao;
    Exit;
  end;

  try
    txt := TStringList.Create;

    txt.Clear;
    txt.LoadFromFile(sArquivo);

    for i := 0 to txt.Count - 1 do
    begin
      s := txt[i];

      if Pos( sLinhaReferencia, Copy(s,1,8) ) > 0 then
      begin
        Result := Copy(s,9,length(s));
        Exit;
      end;

    end;

    finally
        txt.Free;
    end;

end;

function Imp_Inicia_Fechamento(sPorta:string; Acrescimo_ou_Desconto:string;tipo:string;valor:real):string;
begin
  ShowMessage('Imprime aqui o inicio do fechamento' + #13#10 + Acrescimo_ou_Desconto);
  Result := 'OK';
end;

function Imp_Forma_Pgto(sPorta:string;forma_pgto:string;valor:real):string;
begin
  ShowMessage('Imprime aqui as formas de pagamento ' + #13#10 +  forma_pgto);
  Result := 'OK';
end;

function Imp_Termina_Fechamento(sPorta:string; Mensagem:string):string;
begin
  ShowMessage('Imprime aqui o fechamento nao fiscal' + #13#10 + Mensagem);
  Result := 'OK';
end;

function Imp_Vende_item(sPorta:string;Codigo,produto,unidade,aliquota:string;quantidade,valor_unitario,valor_desconto:real;
                        valor_acrescimo:real;tipo_desconto_acrescimo:string;total:real):string;
begin
  ShowMessage('Imprime aqui o item: ' + produto);
  Result := 'OK';
end;

function Imp_Cancela_Item(sPorta:string;Item:string):string;
begin
  ShowMessage('Imprime cancelamento do item: ' + Item);
  Result := 'OK';
end;

function Imp_Cancela_Cupom(sPorta:string):string;
begin
  ShowMessage('Imprime cancelamento do cupom nao fiscal ');
  Result := 'OK';
end;

Function StrZero(const I: Integer; const Casas: byte): string; // Zeros Antes String
var
  Ch: char;
begin
  Result := IntToStr(I);
  if Length(Result) > Casas then
  begin
    Ch := '*';
    Result := '';
  end
  else
    Ch := '0';

  while Length(Result) < Casas do
    Result := Ch + Result;
end;

Function StrZero(const s: string; const Casas: byte): string;  overload;
var
  Ch: char;
begin
  Result := s;;
  if Length(Result) > Casas then
  begin
    Ch := '*';
    Result := '';
  end
  else
    Ch := '0';

  while Length(Result) < Casas do
    Result := Ch + Result;
end;

Function IsInteger(sString:string):Integer;
begin
  try
  Result := StrToInt(sString);
  except
    Result := 0;
  end;
end;

function Imp_Abre_Cupom(sPorta:string;CPF,Nome,Endereco:string; pbImprimirNoCabecalho: Boolean = False):string;
begin

  ShowMessage('Imprime aqui a abertura do cupom nao fiscal ');

  Result := 'OK';

end;

procedure GravaIni(Sessao, Chave: String; Valor: string; TipoIni: TTipoIni);
begin

  with TIniFile.Create(PathSysIni(TipoIni)) do
    Try
      WriteString(Sessao, Chave, Valor);
    Finally
      Free;
    end;
end;

function LerIni(Sessao, Chave: String; ValorPadrao: string;TipoIni: TTipoIni): string;
begin

  with TIniFile.Create(PathSysIni(TipoIni)) do
    Try
      result := ReadString(Sessao, Chave, ValorPadrao);
    Finally
      Free;
    end;

end;

function PathSysIni(ini: TTipoIni): string;
var
  str_arquivo: string;
begin

  Result := ExtractFilePath(Application.ExeName) + 'DataSAC.ini';

end;


function Decimal_Is_Coma(var Valor:String):String;
var sEnc, sSubs, sInfAnt:string;
begin
  try
    sEnc := '.';
    sSubs := ',';
    sInfAnt := Valor;
    result := findreplace(sEnc,sSubs,sinfAnt);
  except
    result := Valor;
  end;
end;


function FindReplace (Var Enc:String; Var subs: String; Var Texto: String): string;
Var
i, Posicao: Integer;
Linha: string;
Begin
For i:= 0 to length(texto) do
begin
Linha := Texto;
Repeat
Posicao:=Pos(Enc,Linha);
If Posicao > 0 then
Begin
Delete(Linha,Posicao,Length(Enc));
Insert(Subs,Linha,Posicao);
Texto:=Linha;
end;
until Posicao = 0;
end;

result := texto;
end;


end.
