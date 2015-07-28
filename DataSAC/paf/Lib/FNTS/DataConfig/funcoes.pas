unit funcoes;

interface

uses
  IniFiles,
  SysUtils,
  Forms,
  Windows,
  DB,
  IBC;

type
  TAlinhamento = (taEsquerda, taDireita, taCentralizado); // tipos de alinhamentos

  Function Cript(Action, Src: String): String; // Criptografar e Descriptografar String
  function Zerar(texto:string;qtde:integer):string; // Acrescentar Zeros a esquerda em uma String
  function tiraacento ( str: String ): String; // retirar acentos de uma string
  function somenteNumero(sNum:string):string;
  function LerParametro(psNome: String; psTipo: String; pvDefault: Variant): Variant;
  procedure GravarParametro(psNome: String; psTipo: String; pvValor: Variant);
  function RetornarParametroString(psTipo: String; pvValor: Variant): String;

implementation

  Uses Principal;

// -------------------------------------------------------------------------- //
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

// -------------------------------------------------------------------------- //
function Zerar(texto:string;qtde:integer):string;
begin
  while length(texto) < qtde do texto := '0'+texto;
  result := texto;
end;

// -------------------------------------------------------------------------- //
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

// -------------------------------------------------------------------------- //
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

// -------------------------------------------------------------------------- //
// GUIO: Faz a leitura uma informaÁ„o na tabela CONFIG
function LerParametro(psNome: String; psTipo: String; pvDefault: Variant): Variant;
var
  sValor: String;

begin
  with frmPrincipal.qrPAF do
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
          Application.MessageBox('Erro', 'Erro de leitura de par‚metro da funÁ„o LerParametro()',
            MB_OK + MB_ICONERROR);

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

  with frmPrincipal.qrPAF do
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

end.
