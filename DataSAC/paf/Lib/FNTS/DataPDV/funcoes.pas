unit funcoes;
//Unit contendo biblioteca de funcoes diversas
interface

uses
  IniFiles,
  SysUtils,
  Forms,
  Windows,
  classes,
  db,
  libeay32,
  OpenSSLUtils,
  MD5,
  Messages,
  StrUtils,

  ShellAPI,
  WinProcs,
  StdCtrls,
  Dialogs,
  Controls,
  Math;

type
  TAlinhamento = (taEsquerda, taDireita, taCentralizado); // tipos de alinhamentos
  // atualizar o totalizador geral
  function atualiza_totalizador(svalor:string):boolean;
  // comparar totalizador do paf com o do ecf
  function compara_totalizador():boolean;
  // assinatura digital
  procedure assinatura_digital(fNomearquivo:string);
  // Novo ato cotepe 09/09
  function GeraMD5Arquivo(pArquivo: String): String;
  function ReadPrivateKey(AFileName: TFileName): pEVP_PKEY;
  function Sign_RSA_MD5(privatekey, msg: string): string;
  function TirarEAD(sArquivo: String): boolean;
  // verificar se o ecf eh o mesmo registrado no sistema
  function verifica_ecf():boolean;
  // retornar codigo da aliquota
  function retorna_codigo_aliquota(aliquota:real):string;

  // formata_data
  function formata_data(data:string):TDateTime;
  function formata_hora(hora:string):string;
  //bloquear teclado
  procedure BlockInput(ABlockInput : boolean); stdcall; external 'USER32.DLL';

  function Retorna_aliquota(cst:string;aliquota:real;COD_ECF: Integer=0):string;
  procedure AcertaPadraoData;
  function troca_data(sdata:string):string;
  function somenteNumero(sNum:string):string;
//Codificacoes extendidas de sequenciais
  function codifica_reducaoZ():string;
  function codifica_cupom():string;
  function codifica_item(item:integer):string;
  function codifica_forma(idForma:integer):string;
  function codifica_crediario(idPrestacao:integer):string;

//Teclado GERTEC TEC 44 com display - DLL de comunicaÁ„o
  function OpenTec44: integer; stdcall; external 'Tec44Win.dll';
  function CloseTec44: integer; stdcall; external 'Tec44Win.dll';
  function FormFeed: integer; stdcall; external 'Tec44Win.dll';
  function LineFeed: integer; stdcall; external 'Tec44Win.dll';
  function CarRet: integer; stdcall; external 'Tec44Win.dll';
  function GoToXY(lin, col: integer): integer; stdcall; external 'Tec44Win.dll';
  function DispStr(Str: LPSTR): integer; stdcall; external 'Tec44Win.dll';
// Final das Funcoes do teclado GERTEC

  procedure Imprime_display_teclado(linha1,linha2:string);
  function Executa_Login(usuario,senha:string;funcao:string):boolean; // Autenticar o usuario
  Function Cript(Action, Src: String): String; // Criptografar e Descriptografar String
  function Zerar(texto:string;qtde:integer):string; // Acrescentar Zeros a esquerda em uma String
  function texto_justifica(texto : string; qtde_caracteres : integer;
                           caracter : string; Alinhamento: Talinhamento) : string; // Formatar Texto
  function tiraacento ( str: String ): String; // retirar acentos de uma string
  function Tiraacento_display ( str: String ): String; // retirar acentos para o display do teclado
  function UltimoDiaMes(Mdt: TDateTime) : TDateTime; // retorna o ultimo dia do mes de uma data

  function LerParametro(psNome: String; psTipo: String; pvDefault: Variant): Variant;
  procedure GravarParametro(psNome: String; psTipo: String; pvValor: Variant);
  function RetornarParametroString(psTipo: String; pvValor: Variant): String;

  function FormataStringD(Valor,Tamanho,Complemento : String):String;
  function FormataStringE(Valor,Tamanho,Complemento : String):String;
  function RetiraCaracter(Text : string) : string;
  function Year( Data : TDateTime ): Integer;


  function ValidaCPF(numCPF: string): boolean;
  function ValidaCNPJ(numCNPJ: string): boolean;
  function TestaCpf( xCPF:String ):Boolean;
  function TestaCgc(xCGC: String):Boolean;
  function VerificaCNPJ(I:string): Boolean;

  function PadL(s:string; n:integer): string;
  function PadR(s:string; n:integer): string;


  function centraliza(texto: String; tamanho: Integer): String;
  function Decimal_Is_Coma(var Valor:String):String;
  function FindReplace (Var Enc:String; Var subs: String; Var Texto: String): string;

  function AjustaStr ( str: String; tam: Integer ): String;

  Function  tirapontos(pValor:string):string;
  Function  tiratracos(pValor:string):string;
  Function  tirabarras(pValor:string):string;

  function arredondarABNT(const AValue: Double; const Digits: SmallInt):Double;



implementation

uses modulo, unECF, principal, Constantes;


const
  // chave privada
  ChavePEM =
'-----BEGIN RSA PRIVATE KEY-----'+ #13#10 +
'MIICXAIBAAKBgQCoW8HIeiPbZIHL7vJNS4bqKfMY67SFxdO65vrGSU6oG6GDZarW'+ #13#10 +
'6pknB1+KZVBxfd4ewplxeVPmglKaU0R7vGKRkabM5ozH0XnXOrEjvRe+sRlwNeXW'+ #13#10 +
'qXrXfcISXCCe1SjZ51qQFqLalRkzFe3zgC8s+Tvf8GLjuw/kt/qO/rieNwIDAQAB'+ #13#10 +
'AoGAZNpKlGiucC+eHWcvWSREVqP4j1YrVvNx6YWSdhPV/ZhHwam2lHYGdr3Q+tvE'+ #13#10 +
'O6hV1gFm3/X5T52EFBSLcsAgHvBvneGTev/BckpN4WYqZ9JNTu5M2QpcFagtZ9i/'+ #13#10 +
'CO5RE7AkDJj4Fy76a9E44MgA2nhPXBg71E/rRE+Eq8ZNKIECQQDdUIp5DgQ9IqOK'+ #13#10 +
'zemh16Qae/bVc2Tl+b9IZ+03TUvTdxvPCn2Mbx8HDw90vjVpW+MgegB24nCqLjbc'+ #13#10 +
'IHWi2TZ3AkEAwr6JuzvYA5vOkhfMsZUH43tAX94+dpWJgxe5XfsmG89ffxANjSNy'+ #13#10 +
'/1qlcrBMz4XWfiOO8gayM7LnaaqX180GQQJARZQYtM5PTtkhCXaLSTJ+iUUH6TuK'+ #13#10 +
'MTM/jAgAcC6A9E6yE3l81zXoT1PQzCcwq5sT4RX6J2YxfY9h9/rMgRJBKQJBALIO'+ #13#10 +
'Zn3jpIkAHyoiSoyfd3v9SAmfeTsRVI6g1WJhbCGHRIg3lDxUiiOBrL4lBcXEWC4y'+ #13#10 +
'stMFXk+4pq9NQ9IS6kECQA+2QchQLyqyHShhUQYbP1yV1xZoVxZS9Gf7nvogRn9+'+ #13#10 +
'LFo6ChY+5/M8giZAB14A6dRzCZJMNOQfZQX8oD5reYw='+ #13#10 +
'-----END RSA PRIVATE KEY-----';


function arredondarABNT(const AValue: Double; const Digits: SmallInt):Double;
var
   Pow, PowValue, RestPart : Extended;
   IntPart, FracPart, LastNumber : Integer;
Begin
   Pow      := intpower(10, abs(Digits) );
   PowValue := SimpleRoundTo( AValue * Pow, -9) ; // SimpleRoundTo elimina dizimas ;
   IntPart  := trunc( PowValue );
   FracPart := trunc( frac( PowValue ) * 100);

   if (FracPart > 50) then
      Inc( IntPart )

   else if (FracPart = 50) then
    begin
      LastNumber := round( frac( IntPart / 10) * 10);

      if odd(LastNumber) then
         Inc( IntPart )
      else
       begin
         RestPart := frac( PowValue * 10 ) ;

         if RestPart > 0 then
            Inc( IntPart );
       end ;
    end ;

   Result := (IntPart / Pow);
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

function AjustaStr ( str: String; tam: Integer ): String;
begin
  while Length ( str ) < tam do
  str := str + ' ';
  if Length ( str ) > tam then
  str := Copy ( str, 1, tam );
  Result := str;
end;

function PadL(s:string; n:integer): string;
begin
  Result := Format('%-' + IntToStr(n) + '.' + IntToStr(n) + 's', [s]);
end;

function PadR(s:string; n:integer): string;
begin
Result := Format('%' + IntToStr(n) + '.' + IntToStr(n) + 's', [s]);
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
                //1∞ dÌgito
                total:=0;
                for x:=1 to 9 do
                        total:=total + (StrToInt(cpf[x]) * x);
                dg1:=total mod 11;
                if dg1 = 10 then
                        dg1:=0;
                //2∞ dÌgito
                total:=0;
                for x:=1 to 8 do
                        total:=total + (StrToInt(cpf[x + 1]) * (x));
                total:=total + (dg1 * 9);
                dg2:=total mod 11;
                if dg2 = 10 then
                        dg2:=0;
                //ValidaÁ„o final
                if dg1 = StrToInt(cpf[10]) then
                        if dg2 = StrToInt(cpf[11]) then
                                ret:=True;
                //Inv·lidos

                case AnsiIndexStr(cpf,['00000000000','11111111111','22222222222','33333333333','44444444444',

                                                           '55555555555','66666666666','77777777777','88888888888','99999999999']) of

                        0..9:   ret:=False;

                        end;

                end
        else
                begin
                //Se n„o informado deixa passar
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
                //1∞ digito
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
                //2∞ digito
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
                //ValidaÁ„o final
                if (dg1 = StrToInt(Copy(cnpj, 13, 1))) and (dg2 = StrToInt(Copy(cnpj, 14, 1))) then
                        ret:=True
                else
                        ret:=False;
        except
                ret:=False;
                end;
        //Inv·lidos
        case AnsiIndexStr(cnpj,['00000000000000','11111111111111','22222222222222','33333333333333','44444444444444',

                                                   '55555555555555','66666666666666','77777777777777','88888888888888','99999999999999']) of

                0..9:   ret:=False;

                end;
        end;
ValidaCNPJ:=ret;
end;

function TestaCpf( xCPF:String ):Boolean;
{Testa se o CPF È v·lido ou n„o}
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
{Testa se o CGC È v·lido ou n„o}
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




function TirarEAD(sArquivo: String): boolean;
var  slArq: TStringList;  i: Integer;  Ead : String;
begin
  Result := True;
  try
      slArq := TStringList.Create;
          try
                slArq.LoadFromFile(sArquivo);
                i := slArq.count - 1; //ultima linha do arquivo
                if UpperCase(Copy(slArq[i],1,3)) = 'EAD' then
                   slArq.delete(i);   //deleta a ultima linha
                slArq.add('');        //adiciona uma quebra
                slArq.SaveToFile(sArquivo);
          finally
                FreeAndNil(slArq);
          end;
  except
     Result := False;
  end;
end;

function compara_totalizador():boolean;
var svalor : string;
aquivo_ini : TIniFile;
begin
  // homologacao do tef comentar esta funcao e sempre retornar TRUE

  //  result := true;

  arquivo_ini := TIniFile.Create('c:\DATASAC\paf\cfg\DataPaf.dll');
  //TOTALIZADOR_GERAL
  sValor := Cript('D',Arquivo_ini.ReadString('B9A7BF57','68E560E56B85FD1365F90007205E93A4A0BE',''));

  if Trim(sECF_Serial) <> Cript('D',Arquivo_ini.ReadString('B9A7BF57','D875EF1310639C','')) then
  begin
   application.messagebox(Pchar('N˙mero de sÈrie do ecf n„o confere!'+#13+
                                'ECF:'+sECF_Serial+#13+
                                'Arquivo:'+Cript('D',Arquivo_ini.ReadString('B9A7BF57','D875EF1310639C',''))),'Erro',mb_ok+mb_iconerror);
   arquivo_ini.Free;
   BlockInput(false);
   result := false;
   exit;
  end;

  arquivo_ini.Free;

   // atualizar o totalizador geral do PAF com a do ECF
   REPEAT
     sMsg := cECF_Grande_Total(iECF_Modelo);
     iF sMsg = 'ERRO' then
     begin
       if application.messagebox(pansichar('Erro ao verificar totalizador do ECF!'+#13+
                                           'Mensagem: '+sMsg+#13+
                                           'Deseja tentar outra vez?'),'Erro',mb_yesno+
                                           MB_ICONERROR) = idno then
       break;

     end;
   UNTIL sMsg <> 'ERRO';


   if sMsg <> 'ERRO' then
   begin
     try
       if formatfloat('#############0.00',strtofloat(sMsg)) =
          formatfloat('#############0.00',strtofloat(sValor)) then
         result := true
       else
       begin

         BlockInput(false);
         application.messagebox('O totalizador geral do ECF n„o confere com o valor armazenado!',
                                'Erro',mb_ok+MB_ICONERROR);
         result := false;



{          application.MessageBox(pansichar('O totalizador geral do ECF n„o confere com o valor armazenado no'+
                                 ' PAF-ECF!'+#13+
                                 'Valor armazenado: '+sValor+#13+
                                 'Valor no ECF: '+sMsg+#13+
                                 'O sistema verificar· alguns par‚metros de'+
                                 ' seguranÁa para fazer a sua recomposiÁ„o!'),'AtenÁ„o',mb_ok+
                                 MB_ICONWARNING);


          // verificar o CRZ, CRO e Venda Bruta da ultima reducao z do sistema com a da ecf!

          frmmodulo.query.close;
          frmmodulo.query.sql.clear;
          frmmodulo.query.sql.add('select crz, cro, venda_bruta');
          frmmodulo.query.sql.add('from reducaoz');
          frmmodulo.query.sql.add('where ecf = '''+sECF_Serial+''' and');
          frmmodulo.query.sql.add('data_movimento = (');
          frmmodulo.query.sql.add('  select max(data_movimento) from reducaoz');
          frmmodulo.query.sql.add('    where ecf = '''+secf_serial+''')');
          frmmodulo.query.open;

          sMsg := cECF_ReducaoZ_Contador_CRZ(iECF_Modelo);
          if frmModulo.query.FieldByName('crZ').asstring = sMsg then
          begin
            sMsg := cECF_ReducaoZ_Contador_CRO(iECF_Modelo);
            if frmModulo.query.fieldbyname('cro').asstring = sMsg then
            begin
              sMsg := cECF_ReducaoZ_Venda_Bruta(iECF_Modelo);
              if formatfloat('#######0.00',strtofloat(sMsg)) =
               formatfloat('#######0.00',frmModulo.query.fieldbyname('venda_bruta').asfloat) then
               begin
                 sMsg := 'OK';
               end;
            end;


            }
          end;


          {

          if sMsg = 'OK' then
          begin
            // recompor o atualizador
             // atualizar o totalizador geral do PAF com a do ECF
             REPEAT
               SMSG := cECF_Grande_Total(iECF_Modelo);
               iF Smsg = 'ERRO' then
               begin
                 if application.messagebox(pansichar('Erro ao verificar totalizador do ECF!'+#13+
                                                     'Mensagem: '+sMsg+#13+
                                                     'Deseja tentar outra vez?'),'Erro',mb_yesno+
                                                     MB_ICONERROR) = idno then
                 break;

               end
               else
               begin
                 atualiza_totalizador(SMSG);
               end;
             UNTIL SmSG <> 'ERRO';

             if sMsg <> 'ERRO' then
             begin
               application.messagebox('AtualizaÁ„o do Totalizador feita com sucesso!','Aviso',
                                      mb_ok+MB_ICONINFORMATION);
               result := true;
             end
             else result := false;
          end
          else
            Result := false;

       end;}
     except
       result := false;
     end;

   end
   else
     result := false;

end;

function atualiza_totalizador(svalor:string):boolean;
var arquivo_ini : TIniFile;
begin
  TRY
{  frmmodulo.qrtotalizador.close;
  frmmodulo.qrtotalizador.SQL.clear;
  frmmodulo.qrtotalizador.SQL.add('select info28 from PAF where codigo = 1');
  frmmodulo.qrtotalizador.open;

  sValor := Cript('D',frmmodulo.qrtotalizador.fieldbyname('info28').ASSTRING);
  if sValor <> '' then
    valor := strtofloat(sValor)+valor;
}
  if somentenumero(svalor) <> '' then
  begin
    arquivo_ini := TIniFile.Create('c:\DATASAC\paf\cfg\DataPaf.dll');
    //TOTALIZADOR_GERAL
    Arquivo_ini.WriteString('B9A7BF57','68E560E56B85FD1365F90007205E93A4A0BE',cript('C',sValor));
    arquivo_ini.Free;
  end;
  RESULT := TRUE;
  EXCEPT
    RESULT := FALSE;
  END;
end;

procedure assinatura_digital(fNomearquivo:string);
var
  strMD5: String;
  rsa   : String;
  strList : TStringList;
  bContinua : boolean;
begin

 repeat

  try
    bcontinua := true;
    // gerar arquivo com a chave PRIVADA
    StrList := TStringList.Create;
    StrList.Text := ChavePEM;
    StrList.SaveToFile(ExtractFilePath(ParamStr(0)) + 'chave.pem');
    StrList.Free;

    strList := TStringList.Create;
    strList.LoadFromFile(FNomeArquivo);
    strList.SaveToFile(FNomeArquivo);
    strMD5 := GeraMD5Arquivo(FNomeArquivo);
    rsa := Sign_RSA_MD5(ExtractFilePath(ParamStr(0)) + 'chave.pem', strMD5);
    strList.Add('EAD' + rsa);
    strList.SaveToFile(FNomeArquivo);
    strList.Free;
    DeleteFile(pansichar(ExtractFilePath(ParamStr(0)) + 'chave.pem'));

  except
    on E:Exception do
    begin
      if application.MessageBox(pansichar('Erro ao assinar o arquivo!'+#13+
                                          'Mensagem: '+E.Message+#13+
                                          'Deseja tentar outra vez?'),'Erro',mb_yesno+mb_iconerror) =
                                          idYes then
      bcontinua := false
      else
      bcontinua := true;
    end;
  end;

 until bContinua;
end;

function ReadPrivateKey(AFileName: TFileName): pEVP_PKEY;
var
  keyfile : pBIO;
  a : pEVP_PKEY;
begin
  a := Nil;
  keyfile := BIO_new(BIO_s_file());
  BIO_read_filename(keyfile, PChar(AFilename));
  result := PEM_read_bio_PrivateKey(keyfile, a, nil, nil);
  BIO_free(keyfile);
  if result = nil then
  raise Exception.Create('N„o foi possÌvel ler a chave privada. ' + GetErrorMessage);
end;

// FunÁ„o que assina...
// privatekey È o nome do arquivo que contem a chave privada.
// msg È o md5 modificado de acordo com o ato cotepe.

function Sign_RSA_MD5(privatekey, msg : string): string;
var
  Len: cardinal;
  inbuf, outbuf: array [0..1023] of char;
  key: pEVP_PKEY;
begin
  AppStartup();
  key := ReadPrivateKey(privatekey);
  len := RSA_private_encrypt(length(msg), PChar(msg), outbuf, key.pkey.rsa, RSA_NO_PADDING);
  BinToHex(outbuf, inbuf, Len);
  EVP_cleanup();
  inbuf[2*Len]:=#0;
  Result := StrPas(inbuf);
end;

// Gera o md5 de acordo com o ato cotepe.
// usei uma classe de terceiro para calcular o md5.
Function GeraMD5Arquivo(pArquivo : String) : String;
Var
  Dig : TMD5Digest;
  i : Integer;
  inStr : String;
Begin
  Dig := MD5File(pArquivo);

  inStr := Chr(16);
  For i := 0 to 15 do
  begin
  inStr := inStr + Chr(Dig.v[i]);
  end;
  inStr := inStr + StringOfChar(#0, 128);
  inStr := Copy(inStr, 1, 128);


  Result := inStr;
End;

function retorna_codigo_aliquota(aliquota:real):string;
begin
   frmmodulo.tbAliquota.Open;
   if frmModulo.tbAliquota.Locate('Aliquota',aliquota,[loCaseInsensitive]) then
     result := frmmodulo.tbAliquota.fieldbyname('codigo').asstring
   else
     result := 'N1'; // retorna nao tributado por default

end;

function verifica_ecf():boolean;
begin
  repeat
    sMsg := cECF_Numero_Serie(iECF_Modelo);
    if sMsg = 'ERR0' then
    begin
      if application.messagebox(pansichar('Erro ao verificar n˙mero de sÈrie no ECF!'+#13+
                                       'Deseja tentar outra vez?'),'Erro',mb_yesno+MB_ICONERROR) =
      idNo then
      begin
        result := false;
        break;
      end;
    end
    else
    begin
      if sMsg = sECF_Serial then
        result := true
      else
      begin
        Application.MessageBox(pansichar('O n˙mero de sÈrio do ECF n„o confere com o registrado no PAF!'+#13+
                               'A funÁ„o n„o ser· executada!'+#13+
                               'Mensagem Retornada do ECF: '+sMsg),'Erro',mb_ok+mb_iconerror);
        result := false;
      end;
    end;
  until sMsg <> 'ERRO';
end;

function formata_data(data:string):TDateTime;
begin
  if length(data) = 6 then
  begin
    data := copy(data,1,2)+'/'+
            copy(data,3,2)+'/'+
            IntToStr(Year(now))+ copy(data,5,2);

  end
  else
  begin
    if length(data) = 8 then
    begin
      data := copy(data,1,2)+'/'+
              copy(data,3,2)+'/'+
              copy(data,5,4);
    end;
  end;
  result := strtodate(data);
end;
function formata_hora(hora:string):string;
begin


  if length(hora) = 4 then
  begin
    hora := copy(hora,1,2)+':'+
            copy(hora,3,2)+':00';

  end
  else
  begin
    if length(hora) = 6 then
    begin
      hora := copy(hora,1,2)+':'+
              copy(hora,3,2)+':'+
              copy(hora,5,4);
    end;
  end;
  result :=hora;
end;

// -------------------------------------------------------------------------- //
function Retorna_aliquota(cst:string;aliquota:real;COD_ECF: Integer=0):string;
begin
  // substituicao tributaria
  if (cst = '060') or
     (cst = '010') or
     (cst = '070') then
  begin
    if COD_ECF = EPSON then
      Result := 'F'

    else
     result := 'FF';

  end
  else
  if (cst = '040') or
     (cst = '030') then
  begin
    if COD_ECF = EPSON then
      Result := 'I'

    else
     result := 'II';

  end
  else
  if (cst = '041') or
     (cst = '050') or
     (cst = '051') or
     (cst = '090') then
  begin
    if COD_ECF = EPSON then
      Result := 'N'

    else
     result := 'NN';

  end
  else
   IF COD_ECF = DARUMA then
    result := 'T'+somentenumero(formatfloat('00.00',aliquota))
   ELSE
    result := somentenumero(formatfloat('00.00',aliquota));

end;

// -------------------------------------------------------------------------- //
procedure AcertaPadraoData;
const
  arrShortDayNames: array[1..7] of string[3] = ('Dom','Seg','Ter','Qua','Qui','Sex','Sab');
  arrLongDayNames: array[1..7] of string[15] =
('Domingo','Segunda','TerÁa', 'Quarta','Quinta','Sexta', 'S·bado');
  arrShortMonthNames: array[1..12] of string[3] =
('Jan','Fev','Mar','Abr','Mai','Jun','Jul','Ago','Set','Out','Nov','Dez');
  arrLongMonthNames: array[1..12] of string[15] =
('Janeiro','Fevereiro','MarÁo','Abril','Maio', 'Junho','Julho','Agosto', 'Setembro','Outubro','Novembro','Dezembro');
var
  ii: integer;
begin
  ShortDateFormat := 'dd/mm/yyyy';
  DecimalSeparator := ',';
  ThousandSeparator := '.';
  for ii := 1 to 7 do
    begin
      ShortDayNames[ii] := arrShortDayNames[ii];
      LongDayNames[ii] := arrLongDayNames[ii];
    end;
  for ii := 1 to 12 do
    begin
      ShortMonthNames[ii] := arrShortMonthNames[ii];
      LongMonthNames[ii] := arrLongMonthNames[ii];
    end;
end;



function troca_data(Sdata:string):string;
begin
  sdata := somentenumero(sdata);
  if length(sdata) = 6 then
    RESULT := copy(Sdata,5,2)+copy(Sdata,3,2)+copy(Sdata,1,2)
  else
    RESULT := copy(Sdata,5,4)+copy(Sdata,3,2)+copy(Sdata,1,2);
end;

function somenteNumero(sNum:string):string;
var s1, s2: string;
    i: Integer;
begin
     s1 := snum;
     s2 := '';
     for i := 1 to Length(s1) do
          if s1[i] in ['0'..'9'] then
               s2 := s2 + s1[i];
     result:=s2;
end;

function codifica_reducaoz():string;
begin
  result :=
  zerar(sECF_Serial,20)+ // numero de serie do ecf
  zerar(sECF_Caixa,3)+   // numero do caixa do ecf
  zerar(cECF_ReducaoZ_Contador_COO(iECF_Modelo),12); // coo da reducao z
end;


function codifica_cupom():string;
begin
  result :=
  zerar(sECF_Serial,20)+ // numero de serie do ecf
  zerar(sECF_Caixa,3)+   // numero do caixa do ecf
  zerar(sNumero_Cupom,12); // numero do cupom fiscal
end;
function codifica_item(item:integer):string;
begin
  result :=
  zerar(sECF_Serial,20)+ // numero de serie do ecf
  zerar(sECF_Caixa,3)+   // numero do caixa do ecf
  zerar(sNumero_Cupom,12)+ // numero do cupom fiscal
  zerar(inttostr(item),3); // numero do item
end;
function codifica_forma(idForma:integer):string;
begin
  result :=
  zerar(sECF_Serial,20)+ // numero de serie do ecf
  zerar(sECF_Caixa,3)+   // numero do caixa do ecf
  zerar(sNumero_Cupom,12)+ // numero do cupom fiscal
  zerar(inttostr(idForma),3); // numero do item
end;
function codifica_crediario(idPrestacao:integer):string;
begin
  result :=
  zerar(sECF_Serial,20)+ // numero de serie do ecf
  zerar(sECF_CAixa,3)+   // numero do caixa do ecf
  zerar(sNumero_Cupom,12)+ // numero do cupom fiscal
  zerar(inttostr(idPrestacao),3); // numero do item
end;

// Imprimir no display do teclado
procedure Imprime_display_teclado(linha1,linha2:string);
begin
  if iTeclado_Modelo = 1 then
  begin
    // Limpar o display
    FormFeed;
    // Mostra na linha 1 do display
    strpcopy(@men,tiraacento_display(linha1));
    DispStr(@men);
    // Mostra na linha 2 do display
    LineFeed;                            //PrÛmixa linha
    CarRet;                              //comeÁo da linha
    strpcopy(@men,tiraacento_display(linha2));
    DispStr(@men);                       //mostra no display
  end;
end;

function Executa_Login(usuario,senha:string;funcao:string):boolean;
var i : integer;
begin
   result := false;
   // usuario de gerencial para cancelamento de funcoes
   if usuario = 'MESTREDATAPDV' then
   begin

     for i := 1 to 5 do
     begin
       frmmodulo.query.close;
       frmmodulo.query.sql.clear;
       frmmodulo.query.sql.add('select * from adm');
       frmmodulo.query.sql.add('where info1 = '''+usuario+'_'+inttostr(i)+'''');
       frmmodulo.query.sql.add('and info2 ='''+senha+'''');
       frmmodulo.query.Open;
       if frmmodulo.query.recordcount > 0 then
       begin
         result := true;
         break;
       end;
     end;
   end
   else
   begin
     // usuario normal
     frmmodulo.query.close;
     frmmodulo.query.sql.clear;
     frmmodulo.query.sql.add('select * from adm');
     frmmodulo.query.sql.add('where codigo = '+usuario);
     frmmodulo.query.sql.add('and info2 = '''+senha+'''');
     frmmodulo.query.open;
     if frmmodulo.query.recordcount > 0 then
     begin
       if funcao = '001' then // entrada no sistema e troca de operador
       begin
         icodigo_Usuario := strtoint(usuario);
         sNome_Operador := frmmodulo.query.fieldbyname('info1').asstring;
       end;
       result := true;
     end;
   end;
end;

Function Cript(Action, Src: String): String;
Label Fim;
var KeyLen : Integer;
KeyPos : Integer;
OffSet : Integer;
Dest, Key : String;
SrcPos : Integer;
SrcAsc : Integer;
TmpSrcAsc : Integer;
Range : Integer;
begin
  if (Src = '') Then
  begin
    Result:= '';
    Goto Fim;
  end;
  Key := 'YUQL23K1PIUF90AERVNNMKH02NMIHJ12042 E18XM01HIBQAS150AVDOUYQA90UD1APSA12POIENC1K3210N0419RTIKJ';

  Dest := '';
  KeyLen := Length(Key);
  KeyPos := 0;
  SrcPos := 0;
  SrcAsc := 0;
  Range := 256;
  if (Action = UpperCase('C')) then
  begin
    Randomize;
    OffSet := Random(Range);
    Dest := Format('%1.2x',[OffSet]);
    for SrcPos := 1 to Length(Src) do
    begin
      Application.ProcessMessages;
      SrcAsc := (Ord(Src[SrcPos]) + OffSet) Mod 255;
      if KeyPos < KeyLen then KeyPos := KeyPos + 1 else KeyPos := 1;
      SrcAsc := SrcAsc Xor Ord(Key[KeyPos]);
      Dest := Dest + Format('%1.2x',[SrcAsc]);
      OffSet := SrcAsc;
    end;
  end
  Else
  if (Action = UpperCase('D')) then
  begin
    OffSet := StrToInt('$'+ copy(Src,1,2));
    SrcPos := 3;
  repeat
  SrcAsc := StrToInt('$'+ copy(Src,SrcPos,2));
  if (KeyPos < KeyLen) Then KeyPos := KeyPos + 1 else KeyPos := 1;
  TmpSrcAsc := SrcAsc Xor Ord(Key[KeyPos]);
  if TmpSrcAsc <= OffSet then TmpSrcAsc := 255 + TmpSrcAsc - OffSet
  else TmpSrcAsc := TmpSrcAsc - OffSet;
  Dest := Dest + Chr(TmpSrcAsc);
  OffSet := SrcAsc;
  SrcPos := SrcPos + 2;
  until (SrcPos >= Length(Src));
  end;
  Result:= Dest;
  Fim:
END;

function Zerar(texto:string;qtde:integer):string;
begin
  while length(texto) < qtde do texto := '0'+texto;
  result := texto;
end;
function texto_justifica(texto : string; qtde_caracteres : integer; caracter : string;
                         Alinhamento : tAlinhamento) : string;
begin
   texto := tiraacento(texto);
   if Alinhamento = taDireita then
   begin
     while length(texto) < qtde_caracteres do texto := caracter+texto;
     while length(texto) > qtde_caracteres do delete(texto,(qtde_caracteres + 1), 1);
   end;
   if Alinhamento = taEsquerda then
   begin
     while length(texto) < qtde_caracteres do texto := texto+caracter;
     while length(texto) > qtde_caracteres do delete(texto,(qtde_caracteres + 1), 1);
   end;
   if Alinhamento = taCentralizado then
   begin
     if (qtde_caracteres mod 2) <> 0 then qtde_caracteres := qtde_caracteres - 1;
     while length(texto) < qtde_caracteres do texto := caracter+texto+caracter;
     while length(texto) > qtde_caracteres do delete(texto,(qtde_caracteres + 1), 1);
   end;
   result := texto;
end;

function Tiraacento ( str: String ): String;
var
i: Integer;
begin
for i := 1 to Length ( str ) do
case str[i] of
'Ë': str[i] := 'e';
'Ï': str[i] := 'i';
'˘': str[i] := 'u';
'Ó': str[i] := 'i';
'˚': str[i] := 'u';
'·': str[i] := '†';//
'È': str[i] := 'Ç';//
'Ì': str[i] := '°';//
'Û': str[i] := '¢';//
'˙': str[i] := '£';//
'‡': str[i] := 'Ö';//
'Ú': str[i] := 'ï';//
'‚': str[i] := 'É';//
'Í': str[i] := 'à';//
'Ù': str[i] := 'ì';//
'‰': str[i] := 'Ñ';//
'Î': str[i] := 'â';//
'Ô': str[i] := 'ã';//
'ˆ': str[i] := 'î';//
'¸': str[i] := 'Å';//
'„': str[i] := 'Ü';//
'ı': str[i] := 'o';
'Ò': str[i] := '§';//
'Á': str[i] := 'á';//
'¡': str[i] := 'A';
'…': str[i] := 'ê';//
'Õ': str[i] := 'I';
'”': str[i] := 'O';
'⁄': str[i] := 'U';
'¿': str[i] := 'A';
'»': str[i] := 'E';
'Ã': str[i] := 'I';
'“': str[i] := 'O';
'Ÿ': str[i] := 'U';
'¬': str[i] := 'è';
' ': str[i] := 'E';
'Œ': str[i] := 'I';
'‘': str[i] := 'O';
'€': str[i] := 'U';
'ƒ': str[i] := 'A';
'À': str[i] := 'E';
'œ': str[i] := 'I';
'÷': str[i] := 'O';
'‹': str[i] := 'ö';//
'√': str[i] := 'A';
'’': str[i] := 'O';
'—': str[i] := '•';//
'«': str[i] := 'Ä';//
'™': str[i] := '¶';//
'∫': str[i] := 'ß';//
end;
Result := str;
end;

// -------------------------------------------------------------------------- //
function Tiraacento_display ( str: String ): String;
var
i: Integer;
begin
for i := 1 to Length ( str ) do
case str[i] of
'Ë': str[i] := 'e';
'Ï': str[i] := 'i';
'˘': str[i] := 'u';
'Ó': str[i] := 'i';
'˚': str[i] := 'u';
'·': str[i] := 'a';//
'È': str[i] := 'e';//
'Ì': str[i] := 'i';//
'Û': str[i] := 'o';//
'˙': str[i] := 'u';//
'‡': str[i] := 'a';//
'Ú': str[i] := 'o';//
'‚': str[i] := 'a';//
'Í': str[i] := 'e';//
'Ù': str[i] := 'o';//
'‰': str[i] := 'a';//
'Î': str[i] := 'e';//
'Ô': str[i] := 'i';//
'ˆ': str[i] := 'o';//
'¸': str[i] := 'u';//
'„': str[i] := 'a';//
'ı': str[i] := 'o';
'Ò': str[i] := 'n';//
'Á': str[i] := 'c';//
'¡': str[i] := 'A';
'…': str[i] := 'E';//
'Õ': str[i] := 'I';
'”': str[i] := 'O';
'⁄': str[i] := 'U';
'¿': str[i] := 'A';
'»': str[i] := 'E';
'Ã': str[i] := 'I';
'“': str[i] := 'O';
'Ÿ': str[i] := 'U';
'¬': str[i] := 'A';
' ': str[i] := 'E';
'Œ': str[i] := 'I';
'‘': str[i] := 'O';
'€': str[i] := 'U';
'ƒ': str[i] := 'A';
'À': str[i] := 'E';
'œ': str[i] := 'I';
'÷': str[i] := 'O';
'‹': str[i] := 'U';//
'√': str[i] := 'A';
'’': str[i] := 'O';
'—': str[i] := 'N';//
'«': str[i] := 'C';//
'™': str[i] := 'a';//
'∫': str[i] := 'o';//
end;
Result := str;
end;

function UltimoDiaMes(Mdt: TDateTime) : TDateTime;
{ retorna o ultimo dia o mes, de uma data fornecida}
var
  ano, mes, dia : word;
  mDtTemp : TDateTime;
begin
  Decodedate(mDt, ano, mes, dia);
  mDtTemp := (mDt - dia) + 33;
  Decodedate(mDtTemp, ano, mes, dia);
  Result := mDtTemp - dia;
end;

// -------------------------------------------------------------------------- //
// GUIO: Faz a leitura uma informaÁ„o na tabela CONFIG
function LerParametro(psNome: String; psTipo: String; pvDefault: Variant): Variant;
var
  sValor: String;

begin
  with frmModulo.Query do
  begin
    try
      if Active then
        Close;

      SQL.Text := 'Select PARNOM, PARVAL, PARTIP FROM CONFIG WHERE PARNOM = '
        + QuotedStr(psNome);
        
      Open;

      if IsEmpty then
      begin
        sValor := RetornarParametroString(psTipo, pvDefault);

        GravarParametro(psNome, psTipo, sValor);
        Result := LerParametro(psNome, psTipo, pvDefault);
      end
      else
      begin
        try
          if UpperCase(psTipo) = 'C' then
            Result := FieldByName('PARVAL').AsString
          else
          if (UpperCase(psTipo) = 'N') then
            Result := StrToFloat(FieldByName('PARVAL').AsString)
          else
          if (UpperCase(psTipo) = 'D') then
            Result := StrToDate(FieldByName('PARVAL').AsString)
          else
          if (UpperCase(psTipo) = 'I') then
            Result := StrToInt(FieldByName('PARVAL').AsString)
          else
          if (UpperCase(psTipo) = 'B') then
            Result := (FieldByName('PARVAL').AsString = '1')
          else
            Result := FieldByName('PARVAL').AsString;
        except
          Application.MessageBox('Erro de leitura de par‚metro da funÁ„o LerParametro()',
            'Erro', MB_OK + MB_ICONERROR);

          Abort;
        end;
      end;
    finally
      Close;
    end;
  end;
end;

// -------------------------------------------------------------------------- //
// GUIO: Grava uma informaÁ„o na tabela CONFIG
procedure GravarParametro(psNome: String; psTipo: String; pvValor: Variant);
var
  sValor: String;

begin
  sValor := RetornarParametroString(psTipo, pvValor);

  with frmModulo.Query do
  begin
    try
      if Active then
        Close;

      SQL.Text := 'Select PARNOM, PARVAL, PARTIP FROM CONFIG WHERE PARNOM = ' + QuotedStr(psNome);
      Open;

      if IsEmpty then
      begin
        Close;
        SQL.Text := 'INSERT INTO CONFIG (CODIGO, PARNOM, PARVAL, PARTIP) VALUES (1, '
          + QuotedStr(psNome)
          + ', '
          + QuotedStr(sValor)
          + ', '
          + QuotedStr(psTipo)
          + ')';

        if not Prepared then
          Prepare;

        ExecSQL;
      end
      else
      begin
        Close;
        SQL.Text := 'UPDATE CONFIG SET '
          + ' PARVAL = ' + QuotedStr(sValor) + ', '
          + ' PARTIP = ' + QuotedStr(psTipo)
          + ' WHERE PARNOM = ' + QuotedStr(psNome);

        if not Prepared then
          Prepare;

        ExecSQL;
      end;
    finally
      Close;
    end;
  end;
end;

// -------------------------------------------------------------------------- //
// GUIO: Retornar o valor passado em forma de string para poder ser armazenado
function RetornarParametroString(psTipo: String; pvValor: Variant): String;
begin
  if UpperCase(psTipo) = 'C' then
    Result := pvValor
  else
  if (UpperCase(psTipo) = 'N') then
  begin
    try
      Result := FloatToStr(pvValor);
    except
      Result := '0.00';
    end;
  end
  else
  if (UpperCase(psTipo) = 'D') then
  begin
    try
      Result := DateToStr(pvValor);
    except
      Result := DateToStr(Date);
    end
  end
  else
  if (UpperCase(psTipo) = 'I') then
  begin
    try
      Result := IntToStr(pvValor);
    except
      Result := '0';
    end;
  end
  else
  if (UpperCase(psTipo) = 'B') then
  begin
    try
      if pvValor then
        Result := '1'   // 0 - Falso, 1 - Verdadeiro.  D„„mmm!!!
      else
        Result := '0';

    except
      Result := '0';

    end;
  end
  else
    Result := '';

end;

function FormataStringD(Valor,Tamanho,Complemento : String):String;
var X, Y : Integer;
begin
   Y := Length(Valor);
   For X := Y to StrToInt(Tamanho) do
     begin
        If (x<>StrToInt(Tamanho)) then
           Valor := Complemento + Valor
        else
           Valor := '' + Valor ;
     end;
   Result := Valor;
end;

function FormataStringE(Valor,Tamanho,Complemento : String):String;
var X, Y : Integer;
begin
   Y := Length(Valor);
   For X := Y to StrToInt(Tamanho) do
     begin
        If (x <> StrToInt(Tamanho)) then
           Valor := Valor + Complemento
        else
           Valor := Valor + '';
     end;
   Result := Valor;
end;

function RetiraCaracter(Text: string) : string;
var n : integer;
begin
   for n:= 1 to length(Text) do
     begin
        if (Copy(Text,n,1) = '.') or (Copy(Text,n,1) = '-') or (copy(text,n,1) = ',') or (copy(text,n,1) = '/') or (copy(text,n,1) = ':') then
           Delete(Text,n,1);
     end;
   Result:= Text;
end;

function Year( Data : TDateTime ): Integer;
var
  Dia,Mes,Ano:Word;
begin
  DecodeDate(Data,Ano,Mes,Dia);
  Result := Ano;
end;


/////////////////////////////////////////////////////////////////////////////

//FunÁ„o de validaÁ„o da CNPJ

//Baseado no artigo Algoritmo CNPJ do Clube da Inform·tica

//http://www.clubedainformatica.com.br/mostraartigo.php?artigo=63

/////////////////////////////////////////////////////////////////////////////

function VerificaCNPJ(I:string): Boolean;

var

cnpj: array[1..15] of integer;

apoio: array[0..15] of integer;

f: integer;//para uso no for

total: integer;//para totalizaÁ„o dos valores

D1: integer;//primeiro dÌgito calculado

D2: integer;//segundo dÌgito calculado

begin

//Primeiro teste: o n˙mero de algarismos

if (Length(I)<>14) then result:=false

else

  begin

  //Antes do teste propriamente dito temos que montar a matriz com os

  //os algarismos do CNPJ e depois uma matriz apoio) que ter· os n˙meros

  //que ajudar„o a verificar so dÌgitos verificadores

  //

  //Monta matriz cnpj

  for f := 1 to 14 do

      begin

       cnpj[f]:=strtoint(I[f]);

      end;

  end;

  //Monta matriz de apoio

  apoio[0]:=6;//sÛ ser· usada no c·lculo do segundo dÌgito verificador

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

  //ComeÁa c·lculo do primeiro dÌgito verificador

  total:=0;//vari·vel que conter· a soma da operaÁ„o com os n˙meros

  for f := 1 to 12 do

        begin

          total:=total+(cnpj[f]*apoio[f]);

        end;

  D1 := total mod 11;

      if (D1<2) then D1:=0 else D1:=11-D1;

      if (D1<>cnpj[13]) then

        begin

          //Primeiro dÌgito verificador n„o confere

          Result:=false;

        end else

                begin

                 //Entrou aqui, ent„o o primeiro dÌgito confere!

                 total:=0;

                 for f := 0 to 12 do

                        begin

                           total:=total+(cnpj[f+1]*apoio[f]);

                        end;

                 D2 :=total mod 11;

                 if (D2<2) then D2:=0 else D2:=11-D2;

                 if (D2<>cnpj[14]) then

                        begin

                           //Segunod digito verificador n„o confere

                           Result:=false;

                        end else Result:=true;

                 end;



end;


function centraliza(texto: String; tamanho: Integer): String;
var aux: Integer;
    textoCentralizado: String;
begin




  if (tamanho > length(texto)) then
    begin
      aux := trunc((tamanho - length(texto))/ 2);

      textoCentralizado := stringOfchar('#',aux) + texto + stringOfchar('#',aux);

      if (Length(textoCentralizado) < tamanho) then
        textoCentralizado := textoCentralizado+'#';

    end
    else
      textoCentralizado := texto;

  Result := textoCentralizado;

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
