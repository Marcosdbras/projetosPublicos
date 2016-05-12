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

const
  Kernel_INISessao_Telas = 'PLANOFUNDO';

var
  bbloqueado:boolean = true;
  abloqueio: array of string;


implementation

uses Classes, principal;


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
