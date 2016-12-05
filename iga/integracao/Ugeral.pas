unit uGeral;

interface


uses
  Windows, Messages, DBTables, Db, SysUtils, Classes, Graphics ,
  Controls, Forms, Dialogs, Menus,  ExtCtrls ,WinProcs, StdCtrls,
  Buttons, DBCtrls, Mask, ComCtrls, Grids, DBGrids, SqlExpr,
  ImgList, dbcgrids, strUtils, math, ShellAPI, IniFiles,
  Dbclient,Winsock,  IdStack, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdHTTP;



  Function Botoes(P:TPanel;B:Boolean):Boolean;
  Function Estado(sUF:string;Mensagem:Boolean):Boolean;
  Function SM(Mensagem:String):Boolean;
  Function tirapontos(pValor:string):string;
  Function cript(senha,chave,operacao : string) : string;
  Function Extenso(mNum:Currency):String;
  Function SerialNum(FDrive:String) :String;
  Function MesExtenso(mDt:tDateTime):String;
  Function DataPorExtenso(mDt:tDateTime):String;
  Function Arred0dec(pValor:real):real;
  Function Arre1dec(pValor:real):real;
  function TrataAcentos(Dados : String) : String;
  Procedure le_ecf;
  Procedure bloqueio(arquivo:String);
  Procedure desbloqueio(arquivo:String);
  procedure EnDecryptFile(INFName, OutFName : String; Chave : Word);
  procedure fechatodos;
  function FindReplace (Var Enc:String; Var subs: String; Var Texto: String): string;
  function Decimal_Is_Point(var Valor:String):String;
  function Bar_Is_Point(var sData:string):string;
  function datainvertida(var sData:string):string;
  function EnDecryptString(StrValue : String; Chave: Word) : String;
  function LerArqTexto ( nomeDoArquivo: String ):string;
  function AlinNumD(iEspaco:integer;fValor:real):String;
//  function Locaiza_ItensUsuS(iAc:Integer;cUsu:String):Integer;
  Function JanelaExiste(Classe,Janela:String) :Boolean;
  Function DelphiCarregado : Boolean;
  function NetSend(dest, source, msg: string): longint;
  function replicar(sCaracter:string;iVezes:integer):String;
  function AlinNumD3(iEspaco:integer;fValor:real):String;
  procedure PostKeyEx32(Key: Word; const Shift: TShiftState; SpecialKey: boolean);
  procedure iniciavarglobal;
  Function Arredondar(value: double;casas : integer): double;
  function DiaData (Data:String):Integer;
  function AnoData (Data:String):Integer;
  function calculaMediaIntegracao (somaNotas:double):String;
  function calculaMediaIntegracao2 (somaNotas:double;dQntdNotas:integer):String;
  function Localiza_Itens_Usuario(MenuItem:tMenuItem;cUsu:String):Integer;
  function Localiza_DetItens_Usuario(AcesTag:integer;cUsu:integer;Op:String):Integer;
  procedure AtualizaBim;
  procedure calculaMediaEAssiduidade;
  procedure atualizaNotasEFaltas;
  function dataBD(Dia,Mes,Ano:String):String;
  function verificaAluDeve(mes:Integer):String;
  procedure geraContas;
  procedure verificaTrabalhos;
  procedure verificaAvaliacoes;
  procedure verificaAssiduidade;
  function Grid_Ordena_e_PintaTitulo(xGrid: DBGrids.TDBGrid; Column: TColumn; CDS: TClientDataSet): boolean;
  procedure estornaConta;

 {variáveis globais}

 Var
   hfile:thandle = Invalid_Handle_Value;
   form_ativo: string = '';
   Tabela:String = '';
   Tabela_Ant:String = '';

   blogin:boolean;
   codSerie,
   icusu,
   iTag:integer;
   exec:integer;
   iQntd:integer;
   bEofBaixa:boolean;
   sNumSerieHD,
   sBIM,
   sNumCheque,
   sDataCheque,
   sBancoCheque : string;
   codalu:Integer;

   dtrabalhos,
   dprovas:double;

   bAltDesc,
   bAltVend,
   bAltP,
   bLanDesc,
   bVenda,
   bLimiteDesc,
   bVSEstq,
   bVSAtend,
   bfechavendab,
   bPgtoOrc,
   bFvb,

   //modulo Cadastro variavel de inserção
   bAlunosI,
   bMateriasI,
   bSeriesI,
   bUsuariosI,
   bAnoLetivoI,
   bDataI,
   bRelMatI,
   bNotasI,
   bProjetoI,
   bAluPedInfI,
   bFichaIndAluI,
   bCursoI,
   bGradCurI,
   bCalendarioI,
   bHistoricoI,
   bEventoI,


   // Caixa
   bTrocoI,
   bSangriaI,
   bCaixaI,


   //modulo controle financeiro variavel de inserção
   bContasRecI,
   bContasRecebidasI,
   bGeraContasI,
   bBaixaContasI,
   bReciboI,
   bContasRecNubiaI,
   bContasRecebidasNubiaI,

   //modulo Banco de dados variavel de inserção
   bConfigI,

   //modulo Cadastro variavel de edição
   bAlunosA,
   bMateriasA,
   bSeriesA,
   bUsuariosA,
   bAnoLetivoA,
   bDataA,
   bRelMatA,
   bNotasA,
   bProjetoA,
   bAluPedInfA,
   bFichaIndAluA,
   bGradCurA,
   bCursoA,
   bCalendarioA,
   bHistoricoA,
   bEventoA,


   // Caixa
   bTrocoA,
   bSangriaA,
   bCaixaA,


   //modulo controle financeiro variavel de edição
   bContasRecA,
   bContasRecebidasA,
   bGeraContasA,
   bBaixaContasA,
   bReciboA,  
   bContasRecNubiaA,
   bContasRecebidasNubiaA,

   //modulo Banco de dados variavel de edição
   bConfigA,

   //modulo Cadastro variavel de exclução
   bAlunosE,
   bMateriasE,
   bSeriesE,
   bReorganizaAlu,
   bUsuariosE,
   bAnoLetivoE,
   bDataE,
   bRelMatE,
   bNotasE,
   bProjetoE,
   bAluPedInfE,
   bFichaIndAluE,
   bGradCurE,
   bCursoE,
   bCalendarioE,
   bHistoricoE,
   bEventoE,


   // Caixa
   bTrocoE,
   bSangriaE,
   bCaixaE,



   //modulo controle financeiro variavel de exclução
   bContasRecE,
   bContasRecebidasE,
   bGeraContasE,
   bBaixaContasE,
   bReciboE,
   bContasRecNubiaE,
   bContasRecebidasNubiaE,

   //modulo Banco de dados variavel de exclução
   bConfigE,

   //modulo Cadastro variavel de exibição LookFor
   bAlunosV,
   bMateriasV,
   bSeriesV,
   bUsuariosV,
   bAnoLetivoV,
   bDataV,
   bRelMatV,
   bNotasV,
   bProjetoV,
   bAluPedInfV,
   bFichaIndAluV,
   bCursoV,
   bGradCurV,
   bCalendarioV,
   bHistoricoV,
   bEventoV,


   // Caixa
   bTrocoV,
   bSangriaV,
   bCaixaV,


   //modulo controle financeiro variavel de visão
   bContasRecV,
   bContasRecebidasV,
   bGeraContasV,
   bBaixaContasV,
   bReciboV,
   bContasRecNubiaV,
   bContasRecebidasNubiaV,

   //modulo de impressões
   bBoletimV,
   bNotaSerieMatV,
   bEmailV,
   bMatriculaAteV,
   bAluProV,
   bMatMesV,
   bCancelMatMesV,
   bAluAlmocoV,
   bAluNFV,
   bAluReciboV,
   bSerProV,
   bBoletosV,
   bDocPendentesV,
   bPerIntV,
   bPerEspV,
   bPagApostV,
   bEntApostV,
   bEmailAluPedInfV,
   bAluDevSecV,
   bAluDevAdvV,
   bAssejtV,
   bHistEFV,
   bHistEIV,
   bHistEMV,
   bRelAluSerieV,
   bRelAluPorSerieV,
   bRelAluPorSeriePilotoV,
   brelalunogV,
   bRelMatriculasV,
   bRelNotaDetV,
   bRelContasDiariaV,
   bRelEtapaV,      
   bRelEtapaAssV,
   bRelEventosV,

   //modulo Banco de dados variavel de exibição  LookFor
   bConfigV:boolean;

implementation

uses UDados, UPesqUsuEAcesso, UPesqAluno, UPesqSerie, UPesqMat, uconfbcofb,
  UProjeto, UAluPedInf, UEscSerieEProj, UFichaIndAlu, UPesqCurso,
  UPesqGradCur, UPesqCalendario, UPesqContasRec, UDP, UAluProjeto,
  UBaixaConta, UGeraContas, UPesqEvento, UPesqHistorico, uPesqRecibo,
  UFrmPesqContasRecNubia, UEscSerie, UEscSerieEEvento, usangria, uingestao, ucaixaap,
  upesqsangria;
// uses uApDados, uIndice, uPesqvf, upesqvfey, uconfbcofb, uprincipal, upesqpro, upnivelace, uDados,
  //    upesqforn, upesqcli, upesqpag, upesqcla, upesqclap, ucopiaapl, uConfig, upesqvprod, uPesqVd;


procedure EnDecryptFile(INFName, OutFName : String; Chave : Word);
var
InMS, OutMS : TMemoryStream;
I : Integer;
C : byte;
begin
  {Como usar
  EnDecryptFile(vardir+'cliente.dbf', vardir+'cliente.dbf', 15);
  }
  InMS := TMemoryStream.Create;
  OutMS := TMemoryStream.Create;
  try
    InMS.LoadFromFile(INFName);
    InMS.Position := 0;
    for I := 0 to InMS.Size - 1 do
       begin
         InMS.Read(C, 1);
         C := (C xor not(ord(chave shr I)));
         OutMS.Write(C,1);
       end;
    //endfor
    OutMS.SaveToFile(OutFName);
  finally
    InMS.Free;
    OutMS.Free;
  end;

end;


Procedure Bloqueio(Arquivo:String);
begin
//hfile := createfile(pchar(Arquivo),Generic_Read,File_Share_Read,nil,Open_Existing,0,0);
hfile := createfile(pchar('Arquivo.doc'),Generic_Read,File_Share_Read,nil,Open_Existing,0,0);
end;

Procedure desBloqueio(Arquivo:String);
begin
if hfile <> Invalid_Handle_Value then
   CloseHandle(hfile);
//endi
end;

function TrataAcentos(Dados : String) : String;
var
Retorno : String;
i, y : Integer;
const
Codigos: array[1..29] of String = (#160,#133,#198,#131,#181,#183,#199,
#182,#130,#136,#144,#210,#161,#214,#162,#111,#228,#229,#224,#174,#163,
#129,#233,#154,#135,#128,#167,#166,#248);
begin // Teclado 850 Multilingua
for i := 1 to Length(Dados) do
begin
y := Pos(Dados[i], 'áàãâÁÀÃÂéêÉÊíÍóôõÕÓÔúüÚÜçÇºª°');
if y > 0 then
Retorno := Retorno + Codigos[y]
else
Retorno := Retorno + Dados[i];
end;
Result := Retorno;
end;

//Para usá-la, basta fazer a chamada da seguinte maneira:
//Writeln(Arqtxt, TrataAcentos(string_acentuada));

//Funcão p/ Mover p/ o Proximo registro
Function  SM(Mensagem:String):Boolean;
begin
    ShowMessage(Mensagem);
    SM:=True;
end;

Function  Botoes(P:TPanel;B:Boolean):Boolean;
var
  I: Integer;
Begin
  For I:= 0 to P.ControlCount - 1 do    // o for e de zero a numero total de botoes.
      P.Controls[I].Enabled:=B;
 Botoes:=True;
End;

Function Estado(sUF:string;Mensagem:Boolean):Boolean ;
Begin
     If (suf <> 'RS') and
        (suf <> 'PR') and
        (suf <> 'SC') and
        (suf <> 'SP') and
        (suf <> 'Rj') and
        (suf <> 'ES') and
        (suf <> 'MG') and
        (suf <> 'SE') and
        (suf <> 'AL') and
        (suf <> 'PE') and
        (suf <> 'RN') and
        (suf <> 'BA') and
        (suf <> 'PI') and
        (suf <> 'MA') and
        (suf <> 'PB') and
        (suf <> 'PA') and
        (suf <> 'AC') and
        (suf <> 'AM') and
        (suf <> 'TO') and
        (suf <> 'AP') and
        (suf <> 'RR') and
        (suf <> 'RO') and
        (suf <> 'MT') and
        (suf <> 'MS') and
        (suf <> 'DF') and
        (suf <> 'GO') Then

        begin
           Estado:=False ;
           If Mensagem = True then
              ShowMessage('Este Estado não Existe');
       end
  Else
    Estado:=True;
End;

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

function Cript(senha,chave,operacao: string) : string;
var
   i, tamanhostring, pos, posletra, tamanhochave : integer;
begin
   result := '';
   result := senha;
   tamanhostring := length(senha);
   tamanhochave  := length(chave);
   for i := 1 to tamanhostring do
      begin
         pos := (i mod tamanhochave);
         if pos = 0 then pos := tamanhochave;
         pos := pos + 7;
         if operacao = 'descript' then
            begin
               posLetra := ord(result[i]) + pos;
            end
         else
            begin
               posLetra := ord(result[i]) - pos;
            end;
         //endif
         result[i] := chr(posletra);
      end;
   //endfor
end;

Function Extenso(mNum:Currency):String;

  Function NrBaixos(mNumB:Integer):String;
    Const mStrNumB : Array[0..18] of pChar = ('um', 'dois', 'três', 'quatro', 'cinco', 'seis', 'sete',
          'oito', 'nove', 'dez', 'onze', 'doze', 'treze', 'quatorze', 'quinze', 'dezesseis', 'dezessete', 'dezoito',
          'dezenove');
    begin
      result := '';
      result := mStrNumb[mNumb -1]+' ';
    end;
  //endfunction

  Function NrMedios(mNumM:Integer):String;
    Var
      mStrNumM,
      mStrDig : String;
    begin
      mStrNumM := '';
      mStrDig := '';
      result := '';

      if mNumM < 20 then
         Result := NrBaixos(mNumM)
      else
         begin
           Result := '';
           mStrDig := '00'+IntToStr(mNumM);
           mStrDig := Copy (mStrDig,length(mStrDig)-1,2);
           mStrNumM := 'vinte    trinta   quarenta '+'cinquenta sessenta setenta  '+'oitenta  noventa  ';
           Result := TrimRight( Copy( mStrNumM,((StrToInt(mStrDig[1])-2)*9)+1,9))+' ';
           if StrtoInt(mStrDig[2]) > 0 then
              Result := Result + 'e '+NrBaixos(StrtoInt(mStrDig[2]));
           //endi
         end;
      //endi
    end;
  //endfunction

  Function NrAltos(mNumA:Integer):String;
    Var
      mStrNumA,
      mStrDig:String;
    begin

      mStrNumA := '';
      mStrDig := '';
      result := '';

      if mNumA = 100 then
         Result := 'Cem '
      else
         begin
           Result := '';
           mStrDig := '00'+IntToStr(mNumA);
           mStrDig := Copy(mStrDig,length(mStrDig)-2,3);
           mStrNumA := 'cento        duzentos   '+'trezentos   quatrocentos '+'quinhentos seiscentos  setecentos  '+'oitocentos  novecentos  ';
           if StrtoInt(mStrDig[1]) > 0 then
              Result := TrimRight(Copy(mStrNumA,((StrToInt(mStrDig[1])-1)*12)+1,12))+' ';
           //endi
           if StrToInt(Copy(mStrDig,2,2)) > 0 then
              begin
                if Length(Result) > 0 then
                   Result := Result + 'e ';
                //endi
                Result := Result + NrMedios(StrToInt(Copy(mStrDig,2,2)));
              end;
           //endi
         end;
      //endi
    end;
  //endfunction

  var
    mStrNomes, StrPart, mNumString : String;
    i, numpart, mPos: Integer; partDec:Real;
  begin
    mStrNomes := '';
    StrPart := '';
    mNumString := '';
    result := '';
    i := 0;
    numpart := 0;
    mPos := 0;
    partDec := 0;

    mNumString := FormatFloat('00000000000000',mNum*100);
    mStrNomes := 'bilhão  bilhões milhão  milhões '+'mil     mil     ';
    for i := 1 to 4 do
       begin
         strPart := Copy(mNumString,((i-1)*3)+1,3);
         numPart := StrToInt(StrPart);
         if NumPart = 1 then
            mPos := 1
         else
            mPos := 8;
         //endi
         if NumPart > 0 then
            begin
              if length(Result) > 0 then
                 Result := Result + ', ';
              //endi
              Result := Result + NrAltos(NumPart);
              Result := Result + TrimRight( Copy ( mStrNomes,( (i - 1) * 16) + mPos,8) );
              if not i = 4 then
                 Result := Result + ' ';
              //endi
            end;
         //endi
       end;
    //endf
    if length(Result) > 0 then
       begin
         if int(mNum) = 1 then
            Result := Result + ' real'
         else
            Result := Result + ' reais ';
         //endi
       end;
    //endi
    if frac(mNum) > 0 then
      begin
        if Length(Result) > 0 then
           Result := Result + 'e ';
        //endi
        PartDec := (mNum - int(mNum))*100;
        NumPart := trunc(PartDec);
        if PartDec = 1 then
           Result := Result + 'um centavo'
        else
           Result := Result + NrMedios(NumPart)+'centavos';
        //endi
      end;
    //endi
  end;

Function SerialNum(FDrive:String) :String;
Var Serial:DWord;
    DirLen,Flags: DWord;
    DLabel : Array[0..11] of Char;
begin
  Try GetVolumeInformation(PChar(FDrive+':\'),dLabel,12,@Serial,DirLen,Flags,nil,0);
    Result := IntToHex(Serial,8);
  Except
    Result :='';
  end;
end;

Function MesExtenso(mDt:tDateTime):String;
var ano, mes, dia :word;
const meses : array [0..11] of pchar = ('Janeiro','Fevereiro','Março','Abril','Maio','Junho','Julho','Agosto','Setembro','Outubro','Novembro','Dezembro');
begin
  DecodeDate(mDt,ano,mes,dia);
  result := meses[mes-1];
end;

Function DataPorExtenso(mDt:tDateTime):String;
var ano, mes, dia :word;
begin
  DecodeDate(mDt,ano,mes,dia);
  result := Inttostr(dia)+' de '+MesExtenso(mDt)+' de '+InttoStr(ano);
end;

Function Arred0dec(pValor:real):real;
var pMult:real;
begin
  pMult := Round(pValor*100);
  result := Round(pMult/100);
end;

Function Arre1Dec(pValor:real):real;
begin
  Result := strtofloat(formatfloat('0.0',pValor));
end;




Procedure le_ecf;
var
  vardir : String;
begin

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

function Decimal_Is_Point(var Valor:String):String;
var sEnc, sSubs, sInfAnt:string;
begin
  try
    sEnc := ',';
    sSubs := '.';
    sInfAnt := formatfloat('0.00',strtofloat(Valor));
    result := findreplace(sEnc,sSubs,sinfAnt);
  except
    result := Valor;
  end;
end;

function Bar_Is_Point(var sData:string):string;
var sEnc, sSubs, sInfAnt, sdatasys:string;
    idia, imes, iano:word;
begin
  try
    strtodatetime(sData);
    sEnc := '/';
    sSubs := '.';
    decodedate(strtodate(sData),iano,imes,idia);
    sdatasys := formatfloat('00',idia)+'/'+formatfloat('00',imes)+'/'+formatfloat('0000',iano);
    sInfAnt := sDataSys;
    result := findreplace(sEnc,sSubs,sInfAnt);
  except
    result := sData;
  end;
end;

function datainvertida(var sData:string):string;
var
  iDia, iMes, iAno:Word;
begin
  try
    decodedate(strtodate(sData),iAno,iMes,idia);
    result := formatfloat('00',imes)+'/'+formatfloat('00',idia)+'/'+formatfloat('00',iano);
  except
    result := sData;
  end;

end;


function EnDecryptString(StrValue : String; Chave: Word) : String;
{
Edit2.text:=EnDecryptString(Edit1.text, 236);
}
var
I: Integer;
OutValue : String;
begin
OutValue := '';
for I := 1 to Length(StrValue) do
OutValue := OutValue + char(Not(ord(StrValue[I])-Chave));
Result := OutValue;
end;

function LerArqTexto ( nomeDoArquivo: String ):string;
var arq: TextFile;
linha: String;
begin
AssignFile ( arq, nomeDoArquivo );
Reset ( arq );
ReadLn ( arq, linha );
result := result + linha;
while not Eof ( arq ) do
begin
{ Processe a linha lida aqui. }
{ Para particionar a linha lida em pedaços, use a função Copy. }
ReadLn ( arq, linha );
result := result + linha;
end;

CloseFile ( arq );
end;







function AlinNumD3(iEspaco:integer;fValor:real):String;
var
  pLen, pDif, x:integer;
  s0:string;
begin
s0 := '';
pLen := length(formatfloat('###,##0.000',fvalor));
pDif := iEspaco - pLen;
for x := 1 to pDif do
    begin
      s0 := (s0 + ' ');
   end;
//endfor
result := s0+formatfloat('###,##0.000',fvalor);
end;




function AlinNumD(iEspaco:integer;fValor:real):String;
var
  pLen, pDif, x:integer;
  s0:string;
begin
s0 := '';
pLen := length(formatfloat('###,##0.00',fvalor));
pDif := iEspaco - pLen;
for x := 1 to pDif do
    begin
      s0 := (s0 + ' ');
   end;
//endfor
result := s0+formatfloat('###,##0.00',fvalor);
end;


Function JanelaExiste(Classe,Janela:String) :Boolean;
var
  PClasse,PJanela : array[0..79] of char;
begin
  if Classe = '' then
  PClasse[0] := #0
  else
  StrPCopy(PClasse,Classe);
  if Janela = '' then
  PJanela[0] := #0
  else
  StrPCopy(PJanela,Janela);
  if FindWindow(PClasse,PJAnela) <> 0 then
  result := true
  else
  Result := false;
end;

Function DelphiCarregado : Boolean;
begin
  Result := False;
  if JanelaExiste('TPropertyInspector','Object Inspector') then
  result := True
end;

function NetSend(dest, source, msg: string): longint;
type
  TNetMessageBufferSendFunction = function(servername, msgname, fromname:
  PWideChar; buf: PWideChar; buflen: Cardinal): longint; stdcall;
var
  NetMessageBufferSend: TNetMessageBufferSendFunction;
  SourceWideChar: PWideChar;
  DestWideChar: PWideChar;
  MessagetextWideChar: PWideChar;
  Handle: THandle;
begin

  Handle := LoadLibrary('NETAPI32.DLL');
  if Handle = 0 then
  begin
  Result := GetLastError;
  exit;
  end;

  @NetMessageBufferSend := GetProcAddress(Handle, 'NetMessageBufferSend');
  if @NetMessageBufferSend = nil then
  begin
  Result := GetLastError;
  exit;
  end;

  MessagetextWideChar := nil;
  SourceWideChar := nil;
  DestWideChar := nil;

  try
  GetMem(MessagetextWideChar, Length(msg) * SizeOf(WideChar) + 1);
  GetMem(DestWideChar, 20 * SizeOf(WideChar) + 1);
  StringToWideChar(msg, MessagetextWideChar, Length(msg) *
  SizeOf(WideChar) + 1);
  StringToWideChar(Dest, DestWideChar, 20 * SizeOf(WideChar) + 1);
  if source = '' then
  result := NetMessageBufferSend(nil, DestWideChar, nil,
  MessagetextWideChar, Length(msg) * SizeOf(WideChar) + 1)
  else
  begin
  GetMem(SourceWideChar, 20 * SizeOf(WideChar) + 1);
  StringToWideChar(source, SourceWideChar, 20 * SizeOf(WideChar) + 1);
  result := NetMessageBufferSend(nil, DestWideChar, SourceWideChar,
  MessagetextWideChar, Length(msg) * SizeOf(WideChar) + 1);
  freemem(SourceWideChar);
  end;
  finally
  FreeMem(MessagetextWideChar);
  FreeLibrary(Handle);
  end;
end;

function replicar(sCaracter:string;iVezes:integer):String;
var x:integer;

begin
  for x  := 1 to iVezes do
     begin
       result := result + sCaracter;
     end;
  //endf

end;


procedure PostKeyEx32(Key: Word; const Shift: TShiftState; SpecialKey: boolean);
type
TShiftKeyInfo = Record
shift: Byte;
vkey : Byte;
End;
byteset = Set of 0..7;
const
ShiftKeys: array [1..3] of TShiftKeyInfo =
((shift: Ord(ssCtrl); vkey: VK_CONTROL ),
(shift: Ord(ssShift); vkey: VK_SHIFT ),
(shift: Ord(ssAlt); vkey: VK_MENU ));
var
Flag: DWORD;
bShift: ByteSet absolute shift;
i: Integer;
begin
for i := 1 to 3 do begin
if shiftkeys[i].shift in bShift then
Keybd_Event(ShiftKeys[i].vkey,
MapVirtualKey(ShiftKeys[i].vkey, 0), 0, 0);
end; // for
if SpecialKey Then
Flag := KEYEVENTF_EXTENDEDKEY
else
Flag := 0;
Keybd_Event(Key, MapvirtualKey(Key, 0), Flag, 0);
Flag := Flag or KEYEVENTF_KEYUP;
Keybd_Event(Key, MapvirtualKey(Key, 0), Flag, 0);
for i := 3 DownTo 1 do
begin
if ShiftKeys[i].shift in bShift then
Keybd_Event(shiftkeys[i].vkey,
MapVirtualKey(ShiftKeys[i].vkey, 0),
KEYEVENTF_KEYUP, 0);
end; // for
end; // PostKeyEx32

procedure iniciavarglobal;
begin
   bAltDesc := false;
   bAltVend := false;
   bAltP := false;
   bLanDesc := false;
   bVenda := false;
   bLimiteDesc := false;
   bVSEstq := false;
   bVSAtend := false;
   bfechavendab := false;
   bPgtoOrc := false;
   bFvb := false;

   bAlunosI := False;
   bMateriasI := False;
   bSeriesI := False;
   bUsuariosI := False;
   bAnoLetivoI := False;
   bDataI := False;
   bRelMatI := False;
   bNotasI := False;
   bProjetoI := False;
   bAluPedInfI := False;
   bFichaIndAluI := False;
   bCursoI := False;
   bGradCurI := False;
   bCalendarioI := False;
   bHistoricoI := False;
   bEventoI := False;



   // Caixa
   bTrocoI:= False;
   bSangriaI:= False;
   bCaixaI:= False;



   bContasRecI := False;
   bContasRecebidasI := False;
   bGeraContasI := False;
   bBaixaContasI := False;
   bReciboI := False;
   bContasRecNubiaI := False;
   bContasRecebidasNubiaI := False;

   bConfigI := False;

   bAlunosA := False;
   bMateriasA := False;
   bSeriesA := False;
   bUsuariosA := False;
   bAnoLetivoA := False;
   bDataA := False;
   bRelMatA := False;
   bNotasA := False;
   bProjetoA := False;
   bAluPedInfA := False;
   bFichaIndAluA := False;
   bCursoA := False;
   bGradCurA := False;
   bCalendarioA := False;
   bHistoricoA := False;
   bEventoA := False;

   // Caixa
   bTrocoA:= False;
   bSangriaA:= False;
   bCaixaA:= False;



   bContasRecA := False;
   bContasRecebidasA := False;
   bGeraContasA := False;
   bBaixaContasA := False;
   bReciboA := False;

   bConfigA := False;

   bAlunosE := False;
   bMateriasE := False;
   bSeriesE := False;
   bReorganizaAlu := false;
   bUsuariosE := False;
   bAnoLetivoE := False;
   bDataE := False;
   bRelMatE := False;
   bNotasE := False;
   bProjetoE := False;
   bAluPedInfE := False;
   bFichaIndAluE := False;
   bCursoE := False;
   bGradCurE := False;
   bCalendarioE := False;
   bHistoricoE := False;
   bEventoE := False;
   
   // Caixa
   bTrocoE:= False;
   bSangriaE:= False;
   bCaixaE:= False;

   bContasRecE := False;
   bContasRecebidasE := False;
   bGeraContasE := False;
   bBaixaContasE := False;
   bReciboE := False;

   bConfigE := False;

   bAlunosV := False;
   bMateriasV := False;
   bSeriesv := False;
   bUsuariosV := False;
   bAnoLetivoV := False;
   bDataV := False;
   bRelMatV := False;
   bNotasV := False;
   bProjetoV := False;
   bAluPedInfV := False;
   bFichaIndAluV := False;
   bCursoV := False;
   bGradCurV := False;
   bCalendarioV := False;
   bHistoricoV := False;
   bEventoV := False;

   // Caixa
   bTrocoV:= False;
   bSangriaV:= False;
   bCaixaV:= False;
   
   bContasRecV := False;
   bContasRecebidasV := False;
   bGeraContasV := False;
   bBaixaContasV := False;
   bReciboV := False;

   bBoletimV := False;
   bNotaSerieMatV := False;
   bEmailV := False;
   bMatriculaAteV := False;
   bAluProV := False;
   bMatMesV := False;
   bCancelMatMesV := False;
   bAluAlmocoV := False;
   bAluNFV := False;
   bAluReciboV := False;
   bSerProV := False;
   bBoletosV := False;
   bDocPendentesV := False;
   bPerIntV := False;
   bPerEspV := False;
   bPagApostV := False;
   bEntApostV := False;
   bEmailAluPedInfV := False;
   bAluDevSecV := False;
   bAluDevAdvV := False;
   bAssejtV := False;
   bHistEFV := False;
   bHistEIV := False;
   bHistEMV := False;
   bRelAluSerieV := False;
   bRelAluPorSerieV := False;
   bRelAluPorSeriePilotoV := False;
   brelalunogV := false;
   bRelMatriculasV := False;
   bRelNotaDetV := False;
   bRelContasDiariaV := False;
   bRelEtapaV := False;
   bRelEtapaAssV := False;
   bRelEventosV := False;

   bConfigV := False;
end;


Function Arredondar(value: double;casas : integer): double;
Var fracao, Total:real;
decimal:string;
begin
try
fracao:=Frac(value); //Retorna a parte fracionária de um número
decimal:=(RightStr(floattostr(fracao),length(floattostr(fracao))-2)); //decimal recebe a parte decimal
//enquanto o tamanho da variavel decimal for maior que o número de casas faça
while length(decimal) > casas do
begin
//Verifica se o último digito da variável decimal é maior que 5
  if strtoint(RightStr(decimal,1))>5 then
  begin
    //Descarta o último digito da variável Decimal
    decimal:=leftstr(decimal,length(decimal)-1);
    //Soma o valor número da variavel decimal + 1
    decimal:=floattostr(strtofloat(decimal) + 1);
  end
  else
    decimal:=leftstr(decimal,length(decimal)-1); //Descarta o último digito da variável Decimal
  end;
  result:=(int(value) + (strtofloat(decimal)/100)); //devolve o resultado para a função
except
Raise Exception.Create('Erro no arredondamento');
end;
end;





function DiaData(data:string):Integer;
var
  idia:word;
  imes:word;
  iano:word;
begin
  decodedate(strtodate(data),iano,imes,idia);
  result:=idia;
end;


function AnoData(data:string):Integer;
var
  idia:word;
  imes:word;
  iano:word;
begin
  decodedate(strtodate(data),iano,imes,idia);
  result:=iano;
end;

function calculaMediaIntegracao (somaNotas:double):String;
var
  dQntdNotas:double;
  itamanho,
  iDecimal:integer;
  iFracao:real;
  sDecimal:String;
begin
dqntdNotas:=0;
sDecimal:='';
itamanho:=0;
iFracao:=0.0;
with FrmDados do
begin
  dQntdNotas:= dQntdNotas + DBX_Avaliacoes.RecordCount;
  dQntdNotas := dQntdNotas + DBX_Trabalhos.RecordCount;

  if dqntdNotas <> 0 then
  begin
    iFracao:=frac(somaNotas/dqntdNotas);
    sDecimal:=(RightStr(floattostr(ifracao),length(floattostr(ifracao))-2));
    itamanho := length(sDecimal);
    sDecimal := leftstr(sDecimal,length(sdecimal)-(itamanho-2));
    if length(sDecimal) = 0 then
      sDecimal:='0';

    iDecimal:=strtoint(sDecimal);
    somaNotas := int(somaNotas/dqntdNotas);

    if length(sDecimal) = 1 then
    begin
      iDecimal := iDecimal*10;
      sDecimal:= inttostr(iDecimal);
    end;
    //endi

    if(strtoint(sDecimal) <= 24) then
    begin
      sDecimal := '0';
    end
    else if (strtoint(sDecimal) <= 74) then
    begin
      sDecimal := '50';
    end
    else
    begin
      //showmessage('Valor antes do incremento ' + floattostr(somaNotas)+ ' valor apos incremento ' + floattostr(somaNotas + 1));
      somaNotas := somaNotas+1;
      sDecimal:='0';
    end;
    //endi

    result := formatfloat('###,###,##0.0',(somaNotas + (strtofloat(sDecimal)/100)));
  end;
  //endi
end;
//endth
end;

function calculaMediaIntegracao2 (somaNotas:double;dQntdNotas:integer):String;
var
  itamanho,
  iDecimal:integer;
  iFracao:real;
  sDecimal:String;
begin
sDecimal := '';
itamanho := 0;
iFracao := 0.0;
with FrmDados do
begin
  if dQntdNotas <> 0 then
  begin
    iFracao := frac(somaNotas/dqntdNotas);
    sDecimal := (RightStr(floattostr(ifracao),length(floattostr(ifracao))-2));
    itamanho := length(sDecimal);
    sDecimal := leftstr(sDecimal,length(sdecimal)-(itamanho-2));
    if length(sDecimal) = 0 then
      sDecimal:='0';

    iDecimal:=strtoint(sDecimal);

    if length(sDecimal) = 1 then
    begin
      iDecimal := iDecimal*10;
      sDecimal:= inttostr(iDecimal);
    end;
    //endi

    if (dQntdNotas <> 0) then
      somaNotas := int(somaNotas/dQntdNotas);
    //endi

    if(strtoint(sDecimal) <= 24) then
    begin
      sDecimal := '0';
    end
    else if (strtoint(sDecimal) <= 74) then
    begin
      sDecimal := '50';
    end
    else
    begin
      somaNotas := somaNotas+1;
      sDecimal:='0';
    end;
    //endi
    result:=formatfloat('###,###,##0.0',((somaNotas + (strtofloat(sDecimal)/100))));
  end;
  //endi
end;
//endth
end;

function dataBD(Dia,Mes,Ano:String):String;
var
  imes:integer;
begin
  if(MEs='Janeiro')then
  begin
    imes:=01;
  end
  else if(Mes='Fevereiro') then
  begin
    imes:=02;
  end
  else if(Mes='Março')then
  begin
    imes:=03;
  end
  else if(Mes='Abril') then
  begin
    imes:=04;
  end
  else if(Mes='Maio')then
  begin
    imes:=05;
  end
  else if(Mes='Junho') then
  begin
    imes:=06;
  end
  else if(Mes='Julho')then
  begin
    imes:=07;
  end
  else if(Mes='Agosto') then
  begin
    imes:=08;
  end
  else if(Mes='Setembro')then
  begin
    imes:=09;
  end
  else if(Mes='Outubro') then
  begin
    imes:=10;
  end
  else if(Mes='Novembro')then
  begin
    imes:=11;
  end
  else
  begin
    imes:=12;
  end;
  result:=Dia+'/'+inttostr(imes)+'/'+ano;
end;


function Localiza_Itens_Usuario(MenuItem:tMenuItem;cUsu:String):Integer;
begin
try

  with frmdados do begin
     dbx_exec.Active := false;
     dbx_exec.SQL.Clear;
     //SHOWMESSAGE(inttostr(MenuItem.Tag));
     dbx_exec.SQL.Add('select * from invsysf where codsys = '+inttostr(MenuItem.Tag)+' and codusu = '+cUsu);
     dbx_exec.Active := true;
     result := Dbx_exec.recordcount;
     //showmessage(inttostr(Dbx_exec.recordcount));
  end;

except
  result := 0;
end;
end;

function Localiza_DetItens_Usuario(AcesTag:integer;cUsu:integer;Op:String):Integer;
begin

try
  with frmdados do begin
     dbx_exec.Active := false;
     dbx_exec.SQL.Clear;
     if Op = 'I' then
        dbx_exec.SQL.Add('select * from invsysf where codsys = '+inttostr(AcesTag)+' and codusu = '+inttostr(cUsu)+ ' and Ins = '+QuotedStr('T'));
     //endi
     if Op = 'A' then
        dbx_exec.SQL.Add('select * from invsysf where codsys = '+inttostr(AcesTag)+' and codusu = '+inttostr(cUsu)+ ' and UpDt = '+QuotedStr('T'));
     //endi
     if Op = 'E' then
        dbx_exec.SQL.Add('select * from invsysf where codsys = '+inttostr(AcesTag)+' and codusu = '+inttostr(cUsu)+ ' and Del = '+QuotedStr('T'));
     //endi
     if Op = 'N' then
        dbx_exec.SQL.Add('select * from invsysf where codsys = '+inttostr(AcesTag)+' and codusu = '+inttostr(cUsu)+ ' and Nega = '+QuotedStr('T'));
     //endi
     if Op = 'V' then
        dbx_exec.SQL.Add('select * from invsysf where codsys = '+inttostr(AcesTag)+' and codusu = '+inttostr(cUsu)+ ' and LookFor = '+QuotedStr('T'));
     //endi
     if Op = 'R' then
        dbx_exec.SQL.Add('select * from invsysf where codsys = '+inttostr(AcesTag)+' and codusu = '+inttostr(cUsu)+ ' and Restrito = '+QuotedStr('T'));
     //endi
     if Op = 'CF' then
        dbx_exec.SQL.Add('select * from invsysf where codsys = '+inttostr(AcesTag)+' and codusu = '+inttostr(cUsu)+ ' and Confidencial = '+QuotedStr('T'));
     //endi

     dbx_exec.Active := true;
     result := Dbx_exec.recordcount;

  end;
  except
  result := 0;
end;
end;

procedure fechatodos;
begin

  if Frmpesqsangria <> nil then
     Frmpesqsangria.Close;
  //endi

  if FrmCaixaap <> nil then
     FrmCaixaap.Close;
  //endi

  if Frmsangria <> nil then
    Frmsangria.Close;
  //endi

  if Frmingestao <> nil then
    Frmingestao.Close;
  //endi

  if FrmpNivelace <> nil then
    Frmpnivelace.Close;
  //endi

  if FrmPesqAluno <> nil then
    FrmPesqAluno.Close;
  //endi

  if FrmPesqSerie <> nil then
    FrmPesqSerie.Close;
  //endi

  if FrmPesqMat <> nil then
    FrmPesqMat.Close;
  //endi

  if Frmconfbcofb <> nil then
    Frmconfbcofb.Close;
  //endi

  if FrmProjeto <> nil then
    FrmProjeto.Close;
  //endi

  if FrmAluPedInf <> nil then
    FrmAluPedInf.close;
  //endi

  if FrmEscSerieEProj <> nil then
    FrmEscSerieEProj.Close;
  //endi

  if FrmFichaIndAlu <> nil then
    FrmFichaIndAlu.Close;
  //endi

  if FrmPesqCurso <> nil then
    FrmPesqCurso.Close;
  //endi

  if FrmPesqGradCur <> nil then
    FrmPesqGradCur.Close;
  //endi

  if FrmPesqCalendario <> nil then
    FrmPesqCalendario.Close;
  //endi

  if FrmPesqContasRec <> nil then
    FrmPesqContasRec.Close;
  //endi

  if FrmBaixaConta <> nil then
    FrmBaixaConta.Close;
  //endi

  if FrmGeraContas <> nil then
    FrmGeraContas.Close;
  //endi

  if FrmPesqEvento <> nil then
    FrmPesqEvento.Close;
  //endi

  if FrmPesqHistorico <> nil then
    FrmPesqHistorico.Close;
  //endi

  if FrmPesqRecibo <> nil then
    FrmPesqRecibo.Close;
  //endi

  if FrmPesqContasRecNubia <> nil then
    FrmPEsqContasRecNubia.Close;
  //endi

  if FrmEscSerie <> nil then
    FrmEscSerie.Close;
  //endi

  if FrmEscSerieEEvento <> nil then
    FrmEscSerieEEvento.Close;
  //endi
end;

procedure atualizaBim;
begin
  with FrmPesqSerie do
  begin
    if (FrmPesqSerie.CBXBimInicio.Text = '1º Bimestre')and (FrmPesqSerie.CBXBimFinal.Text = '1º Bimestre')then
    begin
      sBIM:=' AND BIM IN ('+quotedstr('1')+','+quotedstr('R1')+')';
    end

    else if (FrmPesqSerie.CBXBimInicio.Text = '1º Bimestre')and (FrmPesqSerie.CBXBimFinal.Text = '2º Bimestre')then
    begin
      sBIM:=' AND BIM in ('+quotedstr('1')+','+quotedstr('2')+','+quotedstr('R1')+','+quotedstr('R2')+')';
    end

    else if (FrmPesqSerie.CBXBimInicio.Text = '1º Bimestre')and (FrmPesqSerie.CBXBimFinal.Text = '3º Bimestre')then
    begin
      sBIM:=' AND BIM in ('+quotedstr('1')+','+quotedstr('2')+','+quotedstr('3')+','+quotedstr('R1')+','+quotedstr('R2')+','+quotedstr('R3')+')';
    end

    else if (FrmPesqSerie.CBXBimInicio.Text = '1º Bimestre')and (FrmPesqSerie.CBXBimFinal.Text = '4º Bimestre')then
    begin
      sBIM:=' AND BIM in ('+quotedstr('1')+','+quotedstr('2')+','+quotedstr('3')+','+quotedstr('4')+','+quotedstr('R1')+','+quotedstr('R2')+','+quotedstr('R3')+','+quotedstr('R4')+')';
    end

    else if (FrmPesqSerie.CBXBimInicio.Text = '2º Bimestre')and (FrmPesqSerie.CBXBimFinal.Text = '2º Bimestre')then
    begin
      sBIM:=' AND BIM IN ('+quotedstr('2')+','+quotedstr('R2')+')';
    end

    else if (FrmPesqSerie.CBXBimInicio.Text = '2º Bimestre')and (FrmPesqSerie.CBXBimFinal.Text = '3º Bimestre')then
    begin
      sBIM:=' AND BIM in ('+quotedstr('2')+','+quotedstr('3')+','+quotedstr('R2')+','+quotedstr('R3')+')';
    end

    else if (FrmPesqSerie.CBXBimInicio.Text = '2º Bimestre')and (FrmPesqSerie.CBXBimFinal.Text = '4º Bimestre')then
    begin
      sBIM:=' AND BIM in ('+quotedstr('2')+','+quotedstr('3')+','+quotedstr('4')+','+quotedstr('R2')+','+quotedstr('R3')+','+quotedstr('R4')+')';
    end

    else if (FrmPesqSerie.CBXBimInicio.Text = '3º Bimestre')and (FrmPesqSerie.CBXBimFinal.Text = '3º Bimestre')then
    begin
      sBIM:=' AND BIM IN ('+quotedstr('3')+','+quotedstr('R3')+')';
    end

    else if (FrmPesqSerie.CBXBimInicio.Text = '3º Bimestre')and (FrmPesqSerie.CBXBimFinal.Text = '4º Bimestre')then
    begin
      sBIM:=' AND BIM in ('+quotedstr('3')+','+quotedstr('4')+','+quotedstr('R3')+','+quotedstr('R4')+')';
    end

    else if (FrmPesqSerie.CBXBimInicio.Text = '4º Bimestre')and (FrmPesqSerie.CBXBimFinal.Text = '4º Bimestre')then
    begin
      sBIM:=' AND BIM IN ('+quotedstr('4')+','+quotedstr('R4')+')';
    end

    else
    begin
      sBIM:=' AND BIM = 0';
    end;
    //endi
  end;
  //endth
end;

procedure calculaMediaEAssiduidade;
var
  //iFaltas:integer;
  sCodigoSerieAlu,
  sCodigoMat:string;
  recuperacao : boolean;
begin
if(FrmPesqSerie <> nil) then
begin
  recuperacao := False;
  with FrmDados do
  begin
   if (FrmPesqSerie.PnlAlunos.Visible = true) and (FrmPesqSerie.DBLookupComboBox1.text <> '') then
   begin
    sCodigoSerieAlu:=inttostr(FrmDados.CDS_RelTurmaSerieAlu.FieldByName('CODIGO').AsInteger);
    sCodigoMat:=inttostr(FrmDados.CDS_SerieMat.fieldByName('CODMAT').AsInteger);

    DBX_Teste.Active:=False;
    DBX_Teste.SQL.Clear;
    DBX_Teste.SQL.Add('SELECT * FROM AVALIACOES  WHERE CODRELALUSER = '+sCodigoSerieAlu+' and CODMAT = '+sCodigoMat+sBIM+' and not BIM in ('+quotedstr('1')+','+quotedstr('2')+','+quotedstr('3')+','+quotedstr('4')+')');
    DBX_Teste.Active:=True;
    if (DBX_Teste.RecordCount <> 0)then
    begin
      dPROVAS := DBX_Teste.FieldByName('NOTA').AsFloat;
      recuperacao := True;
      iQntd := iQntd - DBX_Teste.RecordCount;
    end
    else
    begin
      dPROVAS := 0.0;
    end;

    DBX_Teste.Active:=False;
    DBX_Teste.SQL.Clear;
    DBX_Teste.SQL.Add('SELECT * FROM Trabalhos  WHERE CODRELALUSER = '+sCodigoSerieAlu+' and CODMAT = '+sCodigoMat+sBIM+' and not BIM in ('+quotedstr('1')+','+quotedstr('2')+','+quotedstr('3')+','+quotedstr('4')+')');
    DBX_Teste.Active:=True;
    if (DBX_Teste.RecordCount <> 0)then
    begin
      dTrabalhos := DBX_Teste.FieldByName('NOTA').AsFloat;
      recuperacao := True;
      iQntd := iQntd - DBX_Teste.RecordCount;
    end
    else
    begin
      dTrabalhos := 0.0;
    end;

    FrmPesqSerie.LblFinal.Caption := formatfloat('###,###,##0.0',dprovas+dtrabalhos);

      DBX_Teste.Active:=False;
      DBX_Teste.SQL.Clear;
      DBX_Teste.SQL.Add('SELECT SUM(NOTA) AS SOMA FROM TRABALHOS  WHERE CODRELALUSER = '+sCodigoSerieAlu+' and CODMAT = ' + sCodigoMat+ sBIM+' and not BIM in ('+quotedstr('R1')+','+quotedstr('R2')+','+quotedstr('R3')+','+quotedstr('R4')+')');
      DBX_Teste.Active:=True;
      if (DBX_Teste.RecordCount <> 0) AND (FrmPesqSerie.DBLookupComboBox1.Text <> '')then
      begin
        dtrabalhos := DBX_Teste.fieldByName('SOMA').AsFloat;
        FrmPesqSerie.LblTrabalhos.Caption := formatfloat('###,###,##0.0',dTrabalhos/DBX_Teste.RecordCount);
      end
      else
      begin
        FrmPesqSerie.LblTrabalhos.Caption:='';
      end;

      DBX_Teste.Active:=False;
      DBX_Teste.SQL.Clear;
      DBX_Teste.SQL.Add('SELECT SUM(NOTA) AS SOMA FROM AVALIACOES  WHERE CODRELALUSER = 0' + sCodigoSerieAlu + ' and CODMAT = 0' + sCodigoMat + sBIM + ' and not BIM in (' + quotedstr('R1') + ',' + quotedstr('R2') + ',' + quotedstr('R3') + ','+quotedstr('R4') + ')');
      DBX_Teste.Active:=True;
      if (DBX_Teste.RecordCount <> 0) and (FrmPesqSerie.DBLookupComboBox1.Text <> '')then
      begin
        dPROVAS := DBX_Teste.fieldByName('SOMA').AsFloat;
        FrmPesqSerie.LblProvas.Caption := formatfloat('###,###,##0.0',dprovas/DBX_Teste.RecordCount);
      end
      else
      begin
        FrmPesqSerie.LblProvas.Caption:='';
      end;

    if not recuperacao then
    begin
      FrmPesqSerie.LblFinal.Caption := calculaMediaIntegracao(dprovas+dtrabalhos);
    end
    else
    begin
      if strtofloat(FrmPesqSerie.LblFinal.Caption) < strtofloat(calculaMediaIntegracao2(dprovas+dtrabalhos,iQntd)) then
      BEGIN
        FrmPesqSerie.LblFinal.Caption := calculaMediaIntegracao2(dPROVAS+dtrabalhos,iQntd);
      end;
      //endi
    end;
    //endi

    if FrmPesqSerie.DBLookupComboBox1.Text = '' then
    begin
      FrmPesqSerie.GridProvas.Options:=[dgTitles,dgIndicator,dgColumnResize,dgColLines,dgRowLines,dgTabs,dgConfirmDelete,dgCancelOnExit];
      FrmPesqSerie.GridTrabalho.Options:=[dgTitles,dgIndicator,dgColumnResize,dgColLines,dgRowLines,dgTabs,dgConfirmDelete,dgCancelOnExit];
      FrmPesqSerie.GridFaltas.Options:=[dgTitles,dgIndicator,dgColumnResize,dgColLines,dgRowLines,dgTabs,dgConfirmDelete,dgCancelOnExit];
    end
    else
    begin
      FrmPesqSerie.GridProvas.Options:=[dgEditing,dgTitles,dgIndicator,dgColumnResize,dgColLines,dgRowLines,dgTabs,dgConfirmDelete,dgCancelOnExit];
      FrmPesqSerie.GridTrabalho.Options:=[dgEditing,dgTitles,dgIndicator,dgColumnResize,dgColLines,dgRowLines,dgTabs,dgConfirmDelete,dgCancelOnExit];
      FrmPesqSerie.GridFaltas.Options:=[dgEditing,dgTitles,dgIndicator,dgColumnResize,dgColLines,dgRowLines,dgTabs,dgConfirmDelete,dgCancelOnExit];
    end;
    //endi
   end;
   //endi
  end;
  //endth
end;
//endi
end;

procedure atualizaNotasEFaltas;
var
  sCodigoSerieAlu,
  sCodigoMat:string;
begin
if(FrmPesqSerie <> nil) then
begin
  with FrmDados do
  begin
    if FrmPesqSerie.PnlAlunos.Visible = True then
    begin
      iQntd := 0;

      sCodigoSerieAlu:=inttostr(FrmDados.CDS_RelTurmaSerieAlu.FieldByName('CODIGO').AsInteger);
      sCodigoMat:=inttostr(FrmDados.CDS_SerieMat.fieldByName('CODMAT').AsInteger);

      CDS_Avaliacoes.Active:=False;
      CDS_AvaliacoesCODRELALUSER.DefaultExpression := CDS_RelTurmaSerieAlu.fieldByName('CODIGO').AsString;
      CDS_AvaliacoesCODMAT.DefaultExpression := CDS_SerieMat.fieldByName('CODMAT').AsString;
      DBX_Avaliacoes.Active:=False;
      if (FrmPesqSerie.DBLookupComboBox1.Text <> '') then
      begin
        DBX_Avaliacoes.SQL.Clear;
        DBX_Avaliacoes.SQL.Add('SELECT * FROM AVALIACOES  WHERE CODRELALUSER = '+sCodigoSerieAlu+' and CODMAT = '+sCodigoMat+sBim+' order by BIM');
      end
      else
      begin
        DBX_Avaliacoes.SQL.Clear;
        DBX_Avaliacoes.SQL.Add('SELECT * FROM AVALIACOES  WHERE CODRELALUSER = '+sCodigoSerieAlu+' and CODMAT = 0' );
      end;
      //endi
        DBX_Avaliacoes.Active:=True;
        CDS_Avaliacoes.Active:=True;
        iQntd := iQntd+CDS_Avaliacoes.RecordCount;

      CDS_Assiduidade.Active:=False;
      CDS_AssiduidadeCODRELALUSER.DefaultExpression:=CDS_RelTurmaSerieAlu.fieldByName('CODIGO').AsString;
      CDS_AssiduidadeCODMAT.DefaultExpression:=CDS_SerieMat.fieldByName('CODMAT').AsString;
      DBX_Assiduidade.Active:=False;
      if (FrmPesqSerie.DBLookupComboBox1.Text <> '') then
      begin
        DBX_Assiduidade.SQL.Clear;
        DBX_Assiduidade.SQL.Add('SELECT A.* FROM Assiduidade A WHERE A.CODRELALUSER = 0'+sCodigoSerieAlu+' and A.CODMAT = 0'+sCodigoMat+sBIM+'order by BIM');
      end
      else
      begin
        DBX_Assiduidade.SQL.Clear;
        DBX_Assiduidade.SQL.Add('SELECT A.* FROM Assiduidade A WHERE A.CODRELALUSER = 0'+sCodigoSerieAlu+' and A.CODMAT = 0');
      end;
      //endi
      DBX_Assiduidade.Active:=True;
      CDS_Assiduidade.Active:=True;

      CDS_Trabalhos.Active:=False;
      CDS_TrabalhosCODRELALUSER.DefaultExpression := CDS_RelTurmaSerieAlu.fieldByName('CODIGO').AsString;
      CDS_TrabalhosCODMAT.DefaultExpression := CDS_SerieMat.fieldByName('CODMAT').AsString;
      DBX_Trabalhos.Active:=False;
      if (FrmPesqSerie.DBLookupComboBox1.Text <> '') then
      begin
        DBX_Trabalhos.SQL.Clear;
        DBX_Trabalhos.SQL.Add('SELECT * FROM TRABALHOS WHERE CODRELALUSER = '+sCodigoSerieAlu+' and CODMAT = '+sCodigoMat+ sBIM+' order by BIM')
      end
      else
      begin
        DBX_Trabalhos.SQL.Clear;
        DBX_Trabalhos.SQL.Add('SELECT * FROM TRABALHOS WHERE CODRELALUSER = '+sCodigoSerieAlu+' and CODMAT = 0');
      end;
      //endi
      DBX_Trabalhos.Active:=True;
      CDS_Trabalhos.Active:=True;
      iQntd := iQntd + CDS_Trabalhos.RecordCount;
    end;
    //endi

    if FrmPesqSerie.DBLookupComboBox1.Text = '' then
    begin
      FrmPesqSerie.GridProvas.Options:=[dgTitles,dgIndicator,dgColumnResize,dgColLines,dgRowLines,dgTabs,dgConfirmDelete,dgCancelOnExit];
      FrmPesqSerie.GridTrabalho.Options:=[dgTitles,dgIndicator,dgColumnResize,dgColLines,dgRowLines,dgTabs,dgConfirmDelete,dgCancelOnExit];
      FrmPesqSerie.GridFaltas.Options:=[dgTitles,dgIndicator,dgColumnResize,dgColLines,dgRowLines,dgTabs,dgConfirmDelete,dgCancelOnExit];
    end
    else
    begin
      FrmPesqSerie.GridProvas.Options:=[dgEditing,dgTitles,dgIndicator,dgColumnResize,dgColLines,dgRowLines,dgTabs,dgConfirmDelete,dgCancelOnExit];
      FrmPesqSerie.GridTrabalho.Options:=[dgEditing,dgTitles,dgIndicator,dgColumnResize,dgColLines,dgRowLines,dgTabs,dgConfirmDelete,dgCancelOnExit];
      FrmPesqSerie.GridFaltas.Options:=[dgEditing,dgTitles,dgIndicator,dgColumnResize,dgColLines,dgRowLines,dgTabs,dgConfirmDelete,dgCancelOnExit];
    end;
    //endi
  end;
  //endth
end;
//endi
end;

function verificaAluDeve(mes:Integer):String;
var
  codAlu,
  Meses:String;
begin
  meses := '';
  if mes = 1 then
  begin
    Meses := ' and (Jan = '+quotedstr('N') + ')';
  end
  else if mes = 2 then
  begin
    Meses := ' and (Jan = '+quotedstr('N') + ' or Fev = '+quotedstr('N') + ')';
  end
  else if mes = 3 then
  begin
    Meses := ' and (Jan = '+quotedstr('N') + ' or Fev = '+quotedstr('N') +' or Mar = ' + quotedstr('N') + ')';
  end
  else if mes = 4 then
  begin
    Meses := ' and (Jan = '+quotedstr('N') + ' or Fev = '+quotedstr('N') +' or Mar = ' + quotedstr('N')+ ' or Abr = '+ quotedstr('N') +')';
  end
  else if mes = 5 then
  begin
    Meses := ' and (Jan = '+quotedstr('N') + ' or Fev = '+quotedstr('N') +' or Mar = ' + quotedstr('N')+ ' or Abr = '+quotedstr('N') +' or Mai = ' + quotedstr('N')+ ')';
  end
  else if mes = 6 then
  begin
    Meses := ' and (Jan = '+quotedstr('N') + ' or Fev = '+quotedstr('N') +' or Mar = ' + quotedstr('N')+ ' or Abr = '+quotedstr('N') +' or Mai = ' + quotedstr('N')+ ' or Jun = '+')';
  end
  else if mes = 7 then
  begin
    Meses := ' and (Jan = '+quotedstr('N') + ' or Fev = '+quotedstr('N') +' or Mar = ' + quotedstr('N')+ ' or Abr = '+quotedstr('N') +' or Mai = ' + quotedstr('N')+ ' or Jun = '+quotedstr('N') +' or Jul = ' + quotedstr('N')+ ')';
  end
  else if mes = 8 then
  begin
    Meses := ' and (Jan = '+quotedstr('N') + ' or Fev = '+quotedstr('N') +' or Mar = ' + quotedstr('N')+ ' or Abr = '+quotedstr('N') +' or Mai = ' + quotedstr('N')+ ' or Jun = '+quotedstr('N') +' or Jul = ' + quotedstr('N')+ ' or Ago = '+quotedstr('N') + ')';
  end
  else if mes = 9 then
  begin
    Meses := ' and (Jan = '+quotedstr('N') + ' or Fev = '+quotedstr('N') +' or Mar = ' + quotedstr('N')+ ' or Abr = '+quotedstr('N') +' or Mai = ' + quotedstr('N')+ ' or Jun = '+quotedstr('N') +' or Jul = ' + quotedstr('N')+ ' or Ago = '+quotedstr('N') +' or Sete = ' + quotedstr('N')+ ')';
  end
  else if mes = 10 then
  begin
    Meses := ' and (Jan = '+quotedstr('N') + ' or Fev = '+quotedstr('N') +' or Mar = ' + quotedstr('N')+ ' or Abr = '+quotedstr('N') +' or Mai = ' + quotedstr('N')+ ' or Jun = '+quotedstr('N') +' or Jul = ' + quotedstr('N')+ ' or Ago = '+quotedstr('N') +' or Sete = ' + quotedstr('N')+ ' or Out = '+quotedstr('N') +')';
  end
  else if mes = 11 then
  begin
    Meses := ' and (Jan = '+quotedstr('N') + ' or Fev = '+quotedstr('N') +' or Mar = ' + quotedstr('N')+ ' or Abr = '+quotedstr('N') +' or Mai = ' + quotedstr('N')+ ' or Jun = '+quotedstr('N') +' or Jul = ' + quotedstr('N')+ ' or Ago = '+quotedstr('N') +' or Sete = ' + quotedstr('N')+ ' or Out = '+quotedstr('N') +' or Nov = ' + quotedstr('N') + ')';
  end
  else
  begin
    Meses := ' and (Jan = '+quotedstr('N') + ' or Fev = '+quotedstr('N') +' or Mar = ' + quotedstr('N')+ ' or Abr = '+quotedstr('N') +' or Mai = ' + quotedstr('N')+ ' or Jun = '+quotedstr('N') +' or Jul = ' + quotedstr('N')+ ' or Ago = '+quotedstr('N') +' or Sete = ' + quotedstr('N')+ ' or Out = '+quotedstr('N') +' or Nov = ' + quotedstr('N') + ' or Dez = ' + quotedstr('N') + ')';
  end;
  //endi

  codalu := '';
  with FrmDados do
  begin
    DBX_CADALUNO.Active := True;
    CDS_CADALUNO.Active := True;
    CDS_CadAluno.Prior;

    while not CDS_CadAluno.Eof do
    begin
      DBX_Teste.Active := False;
      DBX_Teste.SQL.Clear;
      DBX_Teste.SQL.Add('select * from mensalidade where coddp is null and codprojeto is null and codaluno = ' + CDS_CadAluno.FieldByName('CODIGO').asString + Meses);
      DBX_Teste.Active := True;

      if DBX_Teste.RecordCount <> 0 then
      begin
        codalu := codAlu + CDS_CadAluno.FieldByName('CODIGO').AsString + ', ';
      end;
      //endi

      CDS_CadAluno.Next;
    end;
    //ednwh
  end;
  //endth
  result := codalu;
end;


procedure geraContas;
var
  ia,
  ib:integer;
  sdata:String;
  iano,
  idia:word;
begin
  if bContasRecI then
  begin
    if FrmDaDOS.CDS_Mensalidade.FieldByName('ContasRec').AsString <> 'S' then
    begin
      FrmDados.CDS_ContasRec.Active := False;
      FrmDados.DBX_ContasRec.Active := False;
      FrmDados.DBX_ContasRec.SQL.Clear;
      FrmDados.DBX_ContasRec.SQL.Add('SELECT * FROM CONTASARECEBER');
      FrmDados.dbx_contasRec.Active:=True;
      FrmDados.cds_contasRec.Active:=True;

      if (FrmPesqAluno <> nil) and (FrmDP = nil) and (FrmAluProjeto = nil) then
      begin
        try
        with frmdados do
        begin
          ia := 1;
          idia := Cds_CadAluAnual.fieldByName('DT_PGMTO').AsInteger;
          iano := CDS_Mensalidade.fieldByName('ANOLETIVO').AsInteger;
          while ia <= 12 do
          begin
            Cds_ContasRec.Append;
            Cds_ContasRec.FieldByName('Valor').AsFloat := CDS_CadAluAnual.fieldByName('VALOR').AsFloat;
            CDS_ContasRec.FieldByName('CODAlu').AsInteger := CDS_Mensalidade.fieldByName('CODAluno').AsInteger;
            sdata := inttostr(idia) + '/' +inttostr(ia)+'/'+inttostr(iano);
            CDS_ContasRec.FieldByName('DATA').AsDateTime := strtodate(sdata);
            CDS_ContasRec.FieldByName('TIPO').AsString := 'MENSALIDADE';
            CDS_ContasRec.FieldByName('EMISSAO').AsDateTime := date;
            CDS_ContasRec.FieldByName('ANO').AsString := CDS_Mensalidade.FieldByName('ANOLETIVO').AsString;
            CDS_ContasRec.Post;
            ia := ia + 1;
          end;
          //endwh
        end;
        //endth

        with FrmDados do
        begin
          CDS_Mensalidade.Edit;
          CDS_Mensalidade.FieldByName('CONTASREC').AsString := 'S';
          CDS_Mensalidade.Post;
        end;
        //endth

        showmessage('Operação de gerar contas a receber realizada com sucesso!');
        except
          showmessage('Falha na operação de gerar contas a receber!');
        end;
        //endtry
      end
      else if (FrmPesqAluno <> nil) and (FrmDP <> nil) and (FrmAluProjeto = nil) then
      begin
        try
        with frmdados do
        begin
          ia:= 1;
          idia := Cds_CadAluAnual.fieldByName('DT_PGMTO').AsInteger;
          iano := CDS_Mensalidade.fieldByName('ANOLETIVO').AsInteger;
          while ia <= 12 do
          begin
            Cds_ContasRec.Append;
            Cds_ContasRec.FieldByName('Valor').AsFloat := CDS_DP.fieldByName('VALOR').AsFloat;
            CDS_ContasRec.FieldByName('CODAlu').AsInteger := CDS_Mensalidade.fieldByName('CODAluno').AsInteger;
            sdata := inttostr(idia) + '/' +inttostr(ia)+'/'+inttostr(iano);
            CDS_ContasRec.FieldByName('DATA').AsDateTime := strtodate(sdata);
            CDS_ContasRec.FieldByName('TIPO').AsString := 'DP';
            CDS_ContasRec.FieldByName('EMISSAO').AsDateTime := date;
            CDS_ContasRec.FieldByName('ANO').AsString := CDS_Mensalidade.FieldByName('ANOLETIVO').AsString;
            CDS_ContasRec.Post;
            ia := ia + 1;
          end;
          //endwh
        end;
        //endth
        showmessage('Operação de gerar contas a receber realizada com sucesso!');
        with FrmDados do
        begin
          CDS_Mensalidade.Edit;
          CDS_Mensalidade.FieldByName('CONTASREC').AsString := 'S';
          CDS_Mensalidade.Post;
        end;
        //endth
        except
          showmessage('Falha na operação de gerar contas a receber!');
        end;
        //endtry
      end
      else if (FrmPesqAluno <> nil) and (FrmDP = nil) and (FrmAluProjeto <> nil) then
      begin
        try
        with frmdados do
        begin
          ia := 1;
          idia := Cds_CadAluAnual.fieldByName('DT_PGMTO').AsInteger;
          iano := CDS_Mensalidade.fieldByName('ANOLETIVO').AsInteger;
          while ia <= 12 do
          begin
            Cds_ContasRec.Append;
            Cds_ContasRec.FieldByName('Valor').AsFloat := CDS_AluProjeto.fieldByName('VALOR').AsFloat;
            CDS_ContasRec.FieldByName('CODAlu').AsInteger := CDS_Mensalidade.fieldByName('CODAluno').AsInteger;
            sdata := inttostr(idia) + '/' +inttostr(ia)+'/'+inttostr(iano);
            CDS_ContasRec.FieldByName('DATA').AsDateTime := strtodate(sdata);
            CDS_ContasRec.FieldByName('TIPO').AsString := 'PROJETO';
            CDS_ContasRec.FieldByName('EMISSAO').AsDateTime := date;
            CDS_ContasRec.FieldByName('ANO').AsString := CDS_Mensalidade.FieldByName('ANOLETIVO').AsString;
            CDS_ContasRec.Post;
            ia := ia + 1;
          end;
          //endwh
        end;
        //endth
        showmessage('Operação de gerar contas a receber realizada com sucesso!');
        with FrmDados do
        begin
          CDS_Mensalidade.Edit;
          CDS_Mensalidade.FieldByName('CONTASREC').AsString := 'S';
          CDS_Mensalidade.Post;
        end;
        //endth
        except
          showmessage('Falha na operação de gerar contas a receber!');
        end;
        //endtry
      end;
      //endi
    end;
    //endi
  end;
  //endi
end;

procedure VerificaTrabalhos;
var
  iDBIM:integer;
  sBIM:String;
begin
 with FrmDados do
 begin
  sBIM := CDS_Trabalhos.FieldByName('BIM').AsString;
  if (sBIM <> '1') and (sBIM <> '2') and (sBIM <> '3') and (sBIM <> '4') then
  begin
    if (FrmPesqSerie.CBXBimInicio.Text = '1º Bimestre')then
    begin
      iDBIM:=1;
    end
    else if (FrmPesqSerie.CBXBimInicio.Text = '1º Bimestre')then
    begin
      iDBIM:=1;
    end
    else if (FrmPesqSerie.CBXBimInicio.Text = '1º Bimestre')then
    begin
      iDBIM:=1;
    end
    else if (FrmPesqSerie.CBXBimInicio.Text = '1º Bimestre')then
    begin
      iDBIM:=1;
    end
    else if (FrmPesqSerie.CBXBimInicio.Text = '2º Bimestre')then
    begin
      iDBIM:=2;
    end
    else if (FrmPesqSerie.CBXBimInicio.Text = '2º Bimestre')then
    begin
      iDBIM:=2;
    end
    else if (FrmPesqSerie.CBXBimInicio.Text = '2º Bimestre')then
    begin
      iDBIM:=2;
    end
    else if (FrmPesqSerie.CBXBimInicio.Text = '3º Bimestre')then
    begin
      iDBIM:=3;
    end
    else if (FrmPesqSerie.CBXBimInicio.Text = '3º Bimestre')then
    begin
      iDBIM:=3;
    end
    else if (FrmPesqSerie.CBXBimInicio.Text = '4º Bimestre')then
    begin
      iDBIM:=4;
    end
    else
    begin
      iDBIM:=1;
    end;

    CDS_Trabalhos.FieldByName('BIM').AsString := inttostr(iDBIM);
  end;
  //endi
 end;
 //endth
end;

procedure verificaAvaliacoes;
var
  iDBIM:integer;
  sBIM:String;
begin
 with FrmDados do
 begin
  sBIM := CDS_Avaliacoes.FieldByName('BIM').AsString;
  if (sBIM  <> '1') and (sBIM <> '2') and (sBIM <> '3') and (sBIM <> '4') and (sBim <> 'R1') and (sBim <> 'R2') and (sBim <> 'R3') and (sBim <> 'R4') then
  begin
    if (FrmPesqSerie.CBXBimInicio.Text = '1º Bimestre')then
    begin
      iDBIM:=1;
    end
    else if (FrmPesqSerie.CBXBimInicio.Text = '1º Bimestre')then
    begin
      iDBIM:=1;
    end
    else if (FrmPesqSerie.CBXBimInicio.Text = '1º Bimestre')then
    begin
      iDBIM:=1;
    end
    else if (FrmPesqSerie.CBXBimInicio.Text = '1º Bimestre')then
    begin
      iDBIM:=1;
    end
    else if (FrmPesqSerie.CBXBimInicio.Text = '2º Bimestre')then
    begin
      iDBIM:=2;
    end
    else if (FrmPesqSerie.CBXBimInicio.Text = '2º Bimestre')then
    begin
      iDBIM:=2;
    end
    else if (FrmPesqSerie.CBXBimInicio.Text = '2º Bimestre')then
    begin
      iDBIM:=2;
    end
    else if (FrmPesqSerie.CBXBimInicio.Text = '3º Bimestre')then
    begin
      iDBIM:=3;
    end
    else if (FrmPesqSerie.CBXBimInicio.Text = '3º Bimestre')then
    begin
      iDBIM:=3;
    end
    else if (FrmPesqSerie.CBXBimInicio.Text = '4º Bimestre')then
    begin
      iDBIM:=4;
    end
    else
    begin
      iDBIM:=1;
    end;

    CDS_Avaliacoes.FieldByName('BIM').AsString := inttostr(iDBIM);
  end;
  //endi
 end;
 //endth
end;

procedure verificaAssiduidade;
var
  iDBIM:integer;
  sBIM:String;
begin
 with FrmDados do
 begin
  sBIM := CDS_Assiduidade.FieldByName('BIM').AsString;
  if (sBIM <> '1') and (sBIM <> '2') and (sBIM <> '3') and (sBIM <> '4') then
  begin
    if (FrmPesqSerie.CBXBimInicio.Text = '1º Bimestre')then
    begin
      iDBIM:=1;
    end
    else if (FrmPesqSerie.CBXBimInicio.Text = '1º Bimestre')then
    begin
      iDBIM:=1;
    end
    else if (FrmPesqSerie.CBXBimInicio.Text = '1º Bimestre')then
    begin
      iDBIM:=1;
    end
    else if (FrmPesqSerie.CBXBimInicio.Text = '1º Bimestre')then
    begin
      iDBIM:=1;
    end
    else if (FrmPesqSerie.CBXBimInicio.Text = '2º Bimestre')then
    begin
      iDBIM:=2;
    end
    else if (FrmPesqSerie.CBXBimInicio.Text = '2º Bimestre')then
    begin
      iDBIM:=2;
    end
    else if (FrmPesqSerie.CBXBimInicio.Text = '2º Bimestre')then
    begin
      iDBIM:=2;
    end
    else if (FrmPesqSerie.CBXBimInicio.Text = '3º Bimestre')then
    begin
      iDBIM:=3;
    end
    else if (FrmPesqSerie.CBXBimInicio.Text = '3º Bimestre')then
    begin
      iDBIM:=3;
    end
    else if (FrmPesqSerie.CBXBimInicio.Text = '4º Bimestre')then
    begin
      iDBIM:=4;
    end
    else
    begin
      iDBIM:=1;
    end;

    CDS_Assiduidade.FieldByName('BIM').AsString:=inttostr(iDBIM);
  end;
  //endi
 end;
 //endth
end;

function Grid_Ordena_e_PintaTitulo(xGrid: DBGrids.TDBGrid; Column: TColumn; CDS: TClientDataSet): boolean;
const
  idxDefault = 'DEFAULT_ORDER';
var
  strColumn: string;
  bolUsed: Boolean;
  idOptions: TIndexOptions;
  I: Integer;
  VDescendField: string;
begin

  Result := false;
  if not CDS.Active then exit;

  strColumn := idxDefault;

  // Se for campo calculado não deve fazer nada
  if (Column.Field.FieldKind = fkCalculated) then exit;

  // O índice já está em uso
  bolUsed := (Column.Field.FieldName = cds.IndexName);

  // Verifica a existência do índice e propriedades
  CDS.IndexDefs.Update;
  idOptions := [];
  for I := 0 to CDS.IndexDefs.Count - 1 do
  begin
    if cds.IndexDefs.Items[I].Name = Column.Field.FieldName then
    begin
      strColumn := Column.Field.FieldName;
      // Determina como deve ser criado o índice, inverte a condição ixDescending
      case (ixDescending in cds.IndexDefs.Items[I].Options) of
        True: begin
            idOptions := [];
            VDescendField := '';
          end;
        False: begin
            idOptions := [ixDescending];
            vDescendField := strColumn;
          end;
      end;
    end;
  end;

  // Se não encontrou o índice, ou o índice já esta em uso...
  if (strColumn = idxDefault) or bolUsed then
  begin
    if bolUsed then
      CDS.DeleteIndex(Column.Field.FieldName);
    try
      CDS.AddIndex(Column.Field.FieldName, Column.Field.FieldName, idOptions, VDescendField, '', 0);
      strColumn := Column.Field.FieldName;
    except
        // O índice esta indeterminado, passo para o padrão
      if bolUsed then strColumn := idxDefault;
    end;
  end;

  for I := 0 to xGRID.Columns.Count - 1 do begin
    if Pos(StrColumn, xGrid.Columns[I].Field.FieldName) <> 0 then
      xGrid.Columns[I].Title.Font.Color := clBlue
    else
      xGrid.Columns[I].Title.Font.Color := clWindowText;
  end;

  try
    CDS.IndexName := strColumn;
  except
    CDS.IndexName := idxDefault;
  end;

  result := true;
end;

procedure estornaConta;
var
  ia,
  ib:integer;
  sdata,
  sMens,
  scodmens:String;
  iano,
  idia:word;
begin
  if bContasRecE then
  begin
    //if (FrmDaDOS.CDS_Mensalidade.FieldByName('ContasRec').AsString = 'S') and (FrmDados.CDS_Mensalidade.FieldByName('ANOLETIVO').AsString = '') then
    if (FrmDaDOS.CDS_Mensalidade.FieldByName('ContasRec').AsString = 'S') then
    begin
      if (FrmPesqAluno <> nil) and (FrmDP = nil) and (FrmAluProjeto = nil) then
      begin
        try
        with frmdados do
        begin
          FrmDados.CDS_ContasRec.Active := False;
          FrmDados.DBX_ContasRec.Active := False;
          FrmDados.DBX_ContasRec.SQL.Clear;
          FrmDados.DBX_ContasRec.SQL.Add('SELECT * FROM CONTASARECEBER where codalu = ' + FrmDados.CDS_Mensalidade.fieldByName('CODAluno').AsString + ' and tipo = ' + quotedstr('MENSALIDADE') + ' and ano = ' + CDS_Mensalidade.FieldByNAme('ANOLETIVO').AsString+'and pago is null' );
          FrmDados.dbx_contasRec.Active:=True;
          FrmDados.cds_contasRec.Active:=True;

          while CDS_ContasRec.RecordCount <> 0 do
          begin
            CDS_ContasRec.Delete;
          end;
          //endwh
        end;
        //endth

        with FrmDados do
        begin
          sCodMens := CDS_Mensalidade.FieldByName('CODIGO').AsString;
          CDS_Mensalidade.Active := False;
          DBX_Mensalidade.Active := False;
          sMens := DBX_Mensalidade.SQL.Text;
          DBX_Mensalidade.SQL.Clear;
          iniciatransacao;
          DBX_Mensalidade.SQL.Add('UPDATE mensalidade SET contasrec = NULL WHERE CODIGO = ' + sCodMens);
          DBX_Mensalidade.ExecSQL;
          finalizatransacao;
          DBX_Mensalidade.SQL.Clear;
          DBX_Mensalidade.SQL.Add(sMens);
          DBX_Mensalidade.Active := True;
          CDS_Mensalidade.Active := True;
        end;
        //endth

        showmessage('Operação de estorno das contas realizada com sucesso!');
        except
          showmessage('Falha na operação de estorno das contas!');
        end;
        //endtry
      end
      else if (FrmPesqAluno <> nil) and (FrmDP <> nil) and (FrmAluProjeto = nil) then
      begin
        try
        with frmdados do
        begin
          FrmDados.CDS_ContasRec.Active := False;
          FrmDados.DBX_ContasRec.Active := False;
          FrmDados.DBX_ContasRec.SQL.Clear;
          FrmDados.DBX_ContasRec.SQL.Add('SELECT * FROM CONTASARECEBER where codalu = ' + FrmDados.CDS_Mensalidade.fieldByName('CODAluno').AsString + ' and tipo = ' + quotedstr('DP') + ' and ano = ' + CDS_Mensalidade.FieldByNAme('ANOLETIVO').AsString);
          FrmDados.dbx_contasRec.Active:=True;
          FrmDados.cds_contasRec.Active:=True;

          while CDS_ContasRec.RecordCount <> 0 do
          begin
            CDS_ContasRec.Delete;
          end;
          //endwh
        end;
        //endth

        with FrmDados do
        begin
          sCodMens := CDS_Mensalidade.FieldByName('CODIGO').AsString;
          CDS_Mensalidade.Active := False;
          DBX_Mensalidade.Active := False;
          sMens := DBX_Mensalidade.SQL.Text;
          DBX_Mensalidade.SQL.Clear;
          iniciatransacao;
          DBX_Mensalidade.SQL.Add('UPDATE mensalidade SET contasrec = NULL WHERE CODIGO = ' + sCodMens);
          DBX_Mensalidade.ExecSQL;
          finalizatransacao;
          DBX_Mensalidade.SQL.Clear;
          DBX_Mensalidade.SQL.Add(sMens);
          DBX_Mensalidade.Active := True;
          CDS_Mensalidade.Active := True;
        end;
        //endth
          showmessage('Operação de estorno das contas realizada com sucesso!');
        except
          showmessage('Falha na operação de estorno das contas a receber!');
        end;
        //endtry
      end
      else if (FrmPesqAluno <> nil) and (FrmDP = nil) and (FrmAluProjeto <> nil) then
      begin
        try
        with frmdados do
        begin
          FrmDados.CDS_ContasRec.Active := False;
          FrmDados.DBX_ContasRec.Active := False;
          FrmDados.DBX_ContasRec.SQL.Clear;
          FrmDados.DBX_ContasRec.SQL.Add('SELECT * FROM CONTASARECEBER where codalu = ' + FrmDados.CDS_Mensalidade.fieldByName('CODAluno').AsString + ' and tipo = ' + quotedstr('PROJETO') + ' and ano = ' + CDS_Mensalidade.FieldByNAme('ANOLETIVO').AsString);
          FrmDados.dbx_contasRec.Active:=True;
          FrmDados.cds_contasRec.Active:=True;

          while CDS_ContasRec.RecordCount <> 0 do
          begin
            CDS_ContasRec.Delete;
          end;
          //endwh
        end;
        //endth

        with FrmDados do
        begin
          sCodMens := CDS_Mensalidade.FieldByName('CODIGO').AsString;
          CDS_Mensalidade.Active := False;
          DBX_Mensalidade.Active := False;
          sMens := DBX_Mensalidade.SQL.Text;
          DBX_Mensalidade.SQL.Clear;
          iniciatransacao;
          DBX_Mensalidade.SQL.Add('UPDATE mensalidade SET contasrec = NULL WHERE CODIGO = ' + sCodMens);
          DBX_Mensalidade.ExecSQL;
          finalizatransacao;
          DBX_Mensalidade.SQL.Clear;
          DBX_Mensalidade.SQL.Add(sMens);
          DBX_Mensalidade.Active := True;
          CDS_Mensalidade.Active := True;
        end;
        //endth
        showmessage('Operação de estorno da conta realizada com sucesso!');
        except
          showmessage('Falha na operação de estorno da conta!');
        end;
        //endtry
      end;
      //endi
    end
    else
    begin
      if (FrmDaDOS.CDS_Mensalidade.FieldByName('ContasRec').AsString = 'S') then
        showmessage('Esta conta não pode ser estornada!')
      else
        showmessage('Esta conta ainda não foi gerada!');
    end;
    //endi
  end;
  //endi
end;


end.
