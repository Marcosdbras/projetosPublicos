unit funcoes;

//Unit contendo biblioteca de funcoes diversas



interface

uses
  IniFiles,
  SysUtils,
  Forms,
  Windows;

type
  TAlinhamento = (taEsquerda, taDireita, taCentralizado); // tipos de alinhamentos
  function somenteNumero(sNum:string):string;
//Codificacoes extendidas de sequenciais
  function codifica_cupom():string;
  function codifica_item(item:integer):string;
  function codifica_forma(idForma:integer):string;
  function codifica_crediario(idPrestacao:integer):string;
//Teclado GERTEC TEC 44 com display - DLL de comunica��o
  function OpenTec44: integer; stdcall; external '\siscom\paf\cfg\s7Teclado.dll';
  function CloseTec44: integer; stdcall; external '\siscom\paf\cfg\s7Teclado.dll';
  function FormFeed: integer; stdcall; external '\siscom\paf\cfg\s7Teclado.dll';
  function LineFeed: integer; stdcall; external '\siscom\paf\cfg\s7Teclado.dll';
  function CarRet: integer; stdcall; external '\siscom\paf\cfg\s7Teclado.dll';
  function GoToXY(lin, col: integer): integer; stdcall; external '\siscom\paf\cfg\s7Teclado.dll';
  function DispStr(Str: LPSTR): integer; stdcall; external '\siscom\paf\cfg\s7Teclado.dll';
// Final das Funcoes do teclado GERTEC

  procedure Imprime_display_teclado(linha1,linha2:string);
  function Executa_Login(usuario,senha:string;funcao:string):boolean; // Autenticar o usuario
  Function Cript(Action, Src: String): String; // Criptografar e Descriptografar String
  function Zerar(texto:string;qtde:integer):string; // Acrescentar Zeros a esquerda em uma String
  function texto_justifica(texto : string; qtde_caracteres : integer;
                           caracter : string; Alinhamento: Talinhamento) : string; // Formatar Texto
  function tiraacento ( str: String ): String; // retirar acentos de uma string
  function Tiraacento_display ( str: String ): String; // retirar acentos para o display do teclado

implementation

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
function codifica_cupom():string;
begin
//
end;
function codifica_item(item:integer):string;
begin
//
end;
function codifica_forma(idForma:integer):string;
begin
//
end;
function codifica_crediario(idPrestacao:integer):string;
begin
//
end;

// Imprimir no display do teclado
procedure Imprime_display_teclado(linha1,linha2:string);
begin
//
end;

function Executa_Login(usuario,senha:string;funcao:string):boolean;
var i : integer;
begin

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
'�': str[i] := 'e';
'�': str[i] := 'i';
'�': str[i] := 'u';
'�': str[i] := 'i';
'�': str[i] := 'u';
'�': str[i] := '�';//
'�': str[i] := '�';//
'�': str[i] := '�';//
'�': str[i] := '�';//
'�': str[i] := '�';//
'�': str[i] := '�';//
'�': str[i] := '�';//
'�': str[i] := '�';//
'�': str[i] := '�';//
'�': str[i] := '�';//
'�': str[i] := '�';//
'�': str[i] := '�';//
'�': str[i] := '�';//
'�': str[i] := '�';//
'�': str[i] := '�';//
'�': str[i] := '�';//
'�': str[i] := 'o';
'�': str[i] := '�';//
'�': str[i] := '�';//
'�': str[i] := 'A';
'�': str[i] := '�';//
'�': str[i] := 'I';
'�': str[i] := 'O';
'�': str[i] := 'U';
'�': str[i] := 'A';
'�': str[i] := 'E';
'�': str[i] := 'I';
'�': str[i] := 'O';
'�': str[i] := 'U';
'�': str[i] := '�';
'�': str[i] := 'E';
'�': str[i] := 'I';
'�': str[i] := 'O';
'�': str[i] := 'U';
'�': str[i] := 'A';
'�': str[i] := 'E';
'�': str[i] := 'I';
'�': str[i] := 'O';
'�': str[i] := '�';//
'�': str[i] := 'A';
'�': str[i] := 'O';
'�': str[i] := '�';//
'�': str[i] := '�';//
'�': str[i] := '�';//
'�': str[i] := '�';//
end;
Result := str;
end;

function Tiraacento_display ( str: String ): String;
var
i: Integer;
begin
for i := 1 to Length ( str ) do
case str[i] of
'�': str[i] := 'e';
'�': str[i] := 'i';
'�': str[i] := 'u';
'�': str[i] := 'i';
'�': str[i] := 'u';
'�': str[i] := 'a';//
'�': str[i] := 'e';//
'�': str[i] := 'i';//
'�': str[i] := 'o';//
'�': str[i] := 'u';//
'�': str[i] := 'a';//
'�': str[i] := 'o';//
'�': str[i] := 'a';//
'�': str[i] := 'e';//
'�': str[i] := 'o';//
'�': str[i] := 'a';//
'�': str[i] := 'e';//
'�': str[i] := 'i';//
'�': str[i] := 'o';//
'�': str[i] := 'u';//
'�': str[i] := 'a';//
'�': str[i] := 'o';
'�': str[i] := 'n';//
'�': str[i] := 'c';//
'�': str[i] := 'A';
'�': str[i] := 'E';//
'�': str[i] := 'I';
'�': str[i] := 'O';
'�': str[i] := 'U';
'�': str[i] := 'A';
'�': str[i] := 'E';
'�': str[i] := 'I';
'�': str[i] := 'O';
'�': str[i] := 'U';
'�': str[i] := 'A';
'�': str[i] := 'E';
'�': str[i] := 'I';
'�': str[i] := 'O';
'�': str[i] := 'U';
'�': str[i] := 'A';
'�': str[i] := 'E';
'�': str[i] := 'I';
'�': str[i] := 'O';
'�': str[i] := 'U';//
'�': str[i] := 'A';
'�': str[i] := 'O';
'�': str[i] := 'N';//
'�': str[i] := 'C';//
'�': str[i] := 'a';//
'�': str[i] := 'o';//
end;
Result := str;
end;

end.
