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

 // Varifica se valor string é inteiro
Function IsInteger(sString:string):Integer;

function PathSysIni(ini: TTipoIni): string;
procedure GravaIni(Sessao, Chave: String; Valor: string; TipoIni: TTipoIni);
function LerIni(Sessao, Chave: String; ValorPadrao: string;TipoIni: TTipoIni): string;

const
  Kernel_INISessao_Telas = 'PLANOFUNDO';




implementation

uses Classes, principal;

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


end.
