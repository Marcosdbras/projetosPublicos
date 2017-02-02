unit principal2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvToolBar, RzPanel, StdCtrls, AdvPanel, ExtCtrls,
  TFlatPanelUnit, jpeg, AdvShapeButton, AdvGlowButton, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, Menus, AdvMenus, Registry, AdvToolBarStylers,
  DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, math, CheckCPF;

type
  Tfrmprincipal2 = class(TForm)
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    ptopo: TAdvOfficeStatusBar;
    barquivo: TAdvGlowButton;
    bestoque: TAdvGlowButton;
    bmovimento: TAdvGlowButton;
    bsair: TAdvGlowButton;
    AdvShapeButton1: TAdvShapeButton;
    Image5: TImage;
    Image2: TImage;
    Image1: TImage;
    pop_outros_cadastros: TAdvPopupMenu;
    Setor2: TMenuItem;
    N1: TMenuItem;
    Veculos1: TMenuItem;
    bveiculoc: TMenuItem;
    N2: TMenuItem;
    FormasdePagamento1: TMenuItem;
    CondiesdePagamento1: TMenuItem;
    N3: TMenuItem;
    Cidades1: TMenuItem;
    CNAE1: TMenuItem;
    N4: TMenuItem;
    Cores1: TMenuItem;
    amanho1: TMenuItem;
    pop_tabela_fiscal: TAdvPopupMenu;
    bcfop2: TMenuItem;
    CSTCdigodaSituaoTributria1: TMenuItem;
    ModelosdeDocumentosFiscais1: TMenuItem;
    NCMNomenclaturaMercosul1: TMenuItem;
    CSOSNCdigodaOperaodeSituaodoSimplesNacional1: TMenuItem;
    pop_nf_saida: TAdvPopupMenu;
    MenuItem1: TMenuItem;
    Bconhecimento: TMenuItem;
    MemorandodeExportao1: TMenuItem;
    pop_principal: TAdvPopupMenu;
    Venda1: TMenuItem;
    ConsultadePreos1: TMenuItem;
    Oramento1: TMenuItem;
    Caixa1: TMenuItem;
    Produtos1: TMenuItem;
    Clientes1: TMenuItem;
    ContasaReceber1: TMenuItem;
    ContasaPagar1: TMenuItem;
    NotaFiscal1: TMenuItem;
    OrdemdeServio1: TMenuItem;
    SairdoSistema1: TMenuItem;
    AnularSaida1: TMenuItem;
    ConsultaServio1: TMenuItem;
    AdvToolBarOfficeStyler1: TAdvToolBarOfficeStyler;
    pfundo: TFlatPanel;
    pnormal: TAdvPanel;
    AdvPanel4: TAdvPanel;
    parquivo: TAdvToolBar;
    bfiliais: TAdvGlowButton;
    bcliente: TAdvGlowButton;
    bfornecedor: TAdvGlowButton;
    btransp: TAdvGlowButton;
    boutros: TAdvGlowButton;
    bcfop: TAdvGlowButton;
    Pestoque: TAdvToolBar;
    bproduto: TAdvGlowButton;
    bgrupo: TAdvGlowButton;
    bmarca: TAdvGlowButton;
    PMOVIMENTO: TAdvToolBar;
    bNFeletronica: TAdvGlowButton;
    qrmestre: TZQuery;
    CheckCPF1: TCheckCPF;
    procedure bsairClick(Sender: TObject);
    procedure FechePrograma(Programa: Pchar);
    procedure bfiliaisClick(Sender: TObject);
    function acesso(usuario:string;funcao:string):string;
    procedure bclienteClick(Sender: TObject);
    procedure bfornecedorClick(Sender: TObject);
    procedure btranspClick(Sender: TObject);
    procedure boutrosClick(Sender: TObject);
    procedure bcfopClick(Sender: TObject);
    procedure bcfop2Click(Sender: TObject);
    procedure CSTCdigodaSituaoTributria1Click(Sender: TObject);
    procedure ModelosdeDocumentosFiscais1Click(Sender: TObject);
    procedure NCMNomenclaturaMercosul1Click(Sender: TObject);
    procedure CSOSNCdigodaOperaodeSituaodoSimplesNacional1Click(
      Sender: TObject);
    procedure bprodutoClick(Sender: TObject);
    procedure bgrupoClick(Sender: TObject);
    procedure bmarcaClick(Sender: TObject);
    procedure bNFeletronicaClick(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure BconhecimentoClick(Sender: TObject);
    procedure MemorandodeExportao1Click(Sender: TObject);
    procedure barquivoClick(Sender: TObject);
    procedure bestoqueClick(Sender: TObject);
    procedure barquivoEnter(Sender: TObject);
    procedure bestoqueEnter(Sender: TObject);
    procedure bmovimentoEnter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    function autentica(funcao : string;nivel:integer) : boolean;
    procedure barquivoMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure bestoqueMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure bmovimentoMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }

    FHoje: TDateTime;

    vfil_codigo,vfil_nome,vfil_cnpj,vfil_ie,vfil_cst,vfil_cipi,vfil_simples,vfil_ssimples,vfil_estadual: string;
    vcontador : integer;

    function adic_codifica(Tabela:string):string;
    function codifica(Tabela:string):string;
    function zerarcodigo(codigo:string;qtde:integer):string;
    Function Cript(Action, Src: String): String;
    function Arredondar(Value: Extended; Decimals: integer): Extended;
    function TiraCaracterEspecial(texto:string):string;
    function FormataValorProsoft(fValor:Real;fQtde:Integer):string;
    function RemoveAcentos(Str:String): String;
    function somenteNumero(sNum:string):string;
    function TestaCnpj(xCNPJ: String):Boolean;
    function UltimoDiaMes(Mdt: TDateTime) : TDateTime;
    function Locregistro(tabela : TDataSet; valor:string;campo : string):boolean;
    procedure limpaedit (Form:Tform);
    function texto_justifica(texto : string; qtde_caracteres : integer; caracter : string; tipo:string) : string;
    procedure agenda(vsituacao,vtipo,vnome,vtelefone1,vtelefone2,vtelefone3,vcelular,vemail,vfax,vhomepage,vtipoi:string);
    function ChecaEstado(Dado : string) : boolean;
    procedure log(CODUSUARIO,TABELA,CODREGISTRO,FUNCAO,hISTORICO:string);
    function tiraacento ( str: String ): String;
    function CalculaDigEAN13(Cod:String):String;


  end;

var
  frmprincipal2: Tfrmprincipal2;
  autenticado:boolean;
  qtde_dias_ativacao : integer;
  DATA_TERMINO : TDATETIME;
  nc_caixa : integer;
  res_expirado,res_instalacao,res_data,res_termino, res_empresa , res_rsocial , res_cnpj :string;
  cont_inventario : boolean;
  conexao_sistema : string;

  usuario_temp : string;


implementation

uses modulo, empresa, cliente, fornecedor, transportador, cfop,
  cst, modelo_fiscal, Ncm, xloc_csosn, produto, produto_ligth,
  produto_farma, produto_auto, grupo, marca, notafiscal_menu, conhecimento,
  memorando_menu, senha, principal;

{$R *.dfm}

function tfrmprincipal2.CalculaDigEAN13(Cod:String):String;
function Par(Cod:Integer):Boolean;
begin
Result:= Cod Mod 2 = 0 ;
end;
var
  i,
  SomaPar,
  SomaImpar:Integer;
begin
  SomaPar:=0;
  SomaImpar:=0;
  for i:=1 to 12 do
  if Par(i) then
     SomaPar:=SomaPar+StrToInt(Cod[i])
  else
     SomaImpar:=SomaImpar+StrToInt(Cod[i]);

  SomaPar:=SomaPar*3;
  i:=0;
  while i < (SomaPar+SomaImpar) do Inc(i,10);
  Result:=IntToStr(i-(SomaPar+SomaImpar));
end;



function tfrmprincipal2.tiraacento ( str: String ): String;
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


procedure tfrmprincipal2.log(CODUSUARIO,TABELA,CODREGISTRO,FUNCAO,hISTORICO:string);
begin
  frmmodulo.querylog.close;
  frmmodulo.querylog.SQL.clear;
  frmmodulo.querylog.sql.add('insert into c000101');
  frmmodulo.querylog.sql.add('(data,hora,codusuario,tabela,codregistro,funcao,historico)');
  frmmodulo.querylog.SQL.add('values');
  frmmodulo.querylog.sql.add('(:data,:hora,:codusuario,:tabela,:codregistro,:funcao,:historico)');
  frmmodulo.querylog.params.parambyname('data').asdatetime := date;
  frmmodulo.querylog.params.parambyname('hora').asstring := timetostr(time);
  frmmodulo.querylog.params.parambyname('codusuario').asstring := usuario_temp;
  frmmodulo.querylog.params.parambyname('tabela').asstring := TABELA;
  frmmodulo.querylog.params.parambyname('codregistro').asstring := copy(codregistro,1,10);
  frmmodulo.querylog.params.parambyname('funcao').asstring := copy(funcao,1,10);
  frmmodulo.querylog.params.parambyname('historico').asstring := copy(historico,1,80);
  frmmodulo.querylog.execsql;

  usuario_temp := codigo_usuario;

end;

function TfrmPrincipal2.ChecaEstado(Dado : string) : boolean;
const
  Estados = 'SPMGRJRSSCPRESDFMTMSGOTOBASEALPBPEMARNCEPIPAAMAPFNACRRROEX';
var
  Posicao : integer;
begin
Result := true;
if Dado <> '' then
  begin
  Posicao := Pos(UpperCase(Dado),Estados);
  if (Posicao = 0) or ((Posicao mod 2) = 0) then
  begin
  Result := false;
  end;
  end;
end;


function Tfrmprincipal2.somenteNumero(sNum:string):string;
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

procedure tfrmprincipal2.agenda(vsituacao,vtipo,vnome,vtelefone1,vtelefone2,vtelefone3,vcelular,vemail,vfax,vhomepage,vtipoi:string);
begin

  // tipoi
  {
   1. 'CLIENTE'
   2. 'CONTATO'
   3. 'FORNECEDOR'
   4. 'FUNCION¡RIO'
   5. 'OUTROS'
   6. 'TRANSPORTADOR'
  }

  if vsituacao = '1' then
    begin
      frmmodulo.queryagenda.close;
      frmmodulo.queryagenda.SQL.clear;
      frmmodulo.queryagenda.sql.add('insert into c000034');
      frmmodulo.queryagenda.sql.add('(codigo,tipo,nome,telefone1,telefone2,telefone3,celular,email,fax,homepage,tipoi)');
      frmmodulo.queryagenda.SQL.add('values');
      frmmodulo.queryagenda.sql.add('(:codigo,:tipo,:nome,:telefone1,:telefone2,:telefone3,:celular,:email,:fax,:homepage,:tipoi)');
      frmmodulo.queryagenda.params.parambyname('codigo').AsString := frmprincipal2.codifica('000034');
      frmmodulo.queryagenda.params.parambyname('tipo').AsString := vtipo;
      frmmodulo.queryagenda.params.parambyname('nome').asstring := vnome;
      frmmodulo.queryagenda.params.parambyname('telefone1').asstring := vtelefone1;
      frmmodulo.queryagenda.params.parambyname('telefone2').asstring := vtelefone2;
      frmmodulo.queryagenda.params.parambyname('telefone3').asstring := vtelefone3;
      frmmodulo.queryagenda.params.parambyname('celular').asstring := vcelular;
      frmmodulo.queryagenda.params.parambyname('email').asstring := vemail;
      frmmodulo.queryagenda.params.parambyname('fax').asstring := vfax;
      frmmodulo.queryagenda.params.parambyname('homepage').asstring := vhomepage;
      frmmodulo.queryagenda.params.parambyname('tipoi').AsInteger := strtoint(vtipoi);
      frmmodulo.queryagenda.execsql;
    end
  else if vsituacao = '2' then
    begin
    {
      frmmodulo.queryagenda.close;
      frmmodulo.queryagenda.SQL.clear;
      frmmodulo.queryagenda.sql.add('update c000034 set ');
      frmmodulo.queryagenda.sql.add('(tipo,nome,telefone1,telefone2,telefone3,celular,email,fax,homepage,tipoi)');
      frmmodulo.queryagenda.SQL.add('values');
      frmmodulo.queryagenda.sql.add('(:tipo,:nome,:telefone1,:telefone2,:telefone3,:celular,:email,:homepage,:tipoi)');
      frmmodulo.queryagenda.params.parambyname('tipo').AsString := vtipo;
      frmmodulo.queryagenda.params.parambyname('nome').asstring := vnome;
      frmmodulo.queryagenda.params.parambyname('telefone1').asstring := vtelefone1;
      frmmodulo.queryagenda.params.parambyname('telefone2').asstring := vtelefone2;
      frmmodulo.queryagenda.params.parambyname('telefone3').asstring := vtelefone2;
      frmmodulo.queryagenda.params.parambyname('celular').asstring := vcelular;
      frmmodulo.queryagenda.params.parambyname('email').asstring := vemail;
      frmmodulo.queryagenda.params.parambyname('fax').asstring := vfax;
      frmmodulo.queryagenda.params.parambyname('homepage').asstring := vhomepage;
      frmmodulo.queryagenda.params.parambyname('tipoi').AsInteger := strtoint(vtipoi);
      frmmodulo.queryagenda.execsql;
      }
    end;

end;

procedure tfrmprincipal2.LimpaEdit (Form: TForm);
var
i : Integer;
begin
  for i := 0 to Form.ComponentCount - 1 do
  if Form.Components[i] is TCustomEdit then (Form.Components[i] as TCustomEdit).Clear;
end;

function tfrmprincipal2.texto_justifica(texto : string; qtde_caracteres : integer; caracter : string; tipo:string) : string;
begin
   texto := tiraacento(texto);
   if tipo = 'E' then
   begin
     while length(texto) < qtde_caracteres do texto := caracter+texto;
     while length(texto) > qtde_caracteres do delete(texto,(qtde_caracteres + 1), 1);
   end;
   if tipo = 'D' then
   begin
     while length(texto) < qtde_caracteres do texto := texto+caracter;
     while length(texto) > qtde_caracteres do delete(texto,(qtde_caracteres + 1), 1);
   end;
   if tipo = 'C' then
   begin
     if (qtde_caracteres mod 2) <> 0 then qtde_caracteres := qtde_caracteres - 1;
     while length(texto) < qtde_caracteres do texto := caracter+texto+caracter;
     while length(texto) > qtde_caracteres do delete(texto,(qtde_caracteres + 1), 1);
   end;
   result := texto;
end;


function tfrmprincipal2.Locregistro(tabela : TDataSet; valor:string;campo : string):boolean;
begin
  if tabela.Locate(campo,valor,[loCaseInsensitive]) then
  begin
    result := true;
  end
  else
  begin
    Application.MessageBox('Registro n„o encontrado!!','Erro',mb_ok+mb_iconwarning);
    result := false;
  end;


end;
function tfrmprincipal2.UltimoDiaMes(Mdt: TDateTime) : TDateTime;
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

function tfrmprincipal2.TestaCnpj(xCNPJ: String):Boolean;
Var
  d1,d4,xx,nCount,fator,resto,digito1,digito2 : Integer;
   Check : String;
begin
d1 := 0;
d4 := 0;
xx := 1;
for nCount := 1 to Length( xCNPJ )-2 do
    begin
    if Pos( Copy( xCNPJ, nCount, 1 ), '/-.' ) = 0 then
    begin
    if xx < 5 then
    begin
    fator := 6 - xx;
    end
    else
   begin
   fator := 14 - xx;
   end;
   d1 := d1 + StrToInt( Copy( xCNPJ, nCount, 1 ) ) * fator;
   if xx < 6 then
    begin
    fator := 7 - xx;
   end
   else
   begin
   fator := 15 - xx;    end;
   d4 := d4 + StrToInt( Copy( xCNPJ, nCount, 1 ) ) * fator;
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
   if Check <> copy(xCNPJ,succ(length(xCNPJ)-2),2) then
    begin
    Result := False;
   end
   else
    begin
    Result := True;
   end;
 end;

function TfrmPrincipal2.RemoveAcentos(Str:String): String;
Const ComAcento = '‡‚ÍÙ˚„ı·ÈÌÛ˙Á¸¿¬ ‘€√’¡…Õ”⁄«‹';
SemAcento = 'aaeouaoaeioucuAAEOUAOAEIOUCU';
Var
  x : Integer;
Begin
  For x := 1 to Length(Str) do
    Begin
      if Pos(Str[x],ComAcento)<>0 Then
        begin
          Str[x] := SemAcento[Pos(Str[x],ComAcento)];
        end;
    end;
  Result := Str;
end;



function tfrmprincipal2.TiraCaracterEspecial(texto:string):string;
var i : integer;
begin
   i := pos('-',texto) + pos('_',texto);
   while i <> 0 do
   begin
     if pos('-',texto) > 0 then delete(texto,i,1);
     if pos('_',texto) > 0 then delete(texto,i,1);
      i := pos('-',texto) + pos('_',texto);
   end;
   result := texto;
end;


function TfrmPrincipal2.Arredondar(Value: Extended; Decimals: integer): Extended;
var
  Factor, Fraction: Extended;
begin
  Factor := IntPower(10, Decimals);
  { A convers„o para string e depois para float evita
    erros de arredondamentos indesej·veis. }
  Value := StrToFloat(FloatToStr(Value * Factor));
  Result := Int(Value);
  Fraction := Frac(Value);
  if Fraction >= 0.5 then
    Result := Result + 1
  else if Fraction <= -0.5 then
    Result := Result - 1;
  Result := Result / Factor;
end;


function tfrmprincipal2.zerarcodigo(codigo:string;qtde:integer):string;
begin
  while length(codigo) < qtde do codigo := '0'+codigo;
  result := codigo;
end;

function TfrmPrincipal2.FormataValorProsoft(fValor:Real;fQtde:Integer):string;
var
   troca : string;
begin
  troca := frmPrincipal2.zerarcodigo(FRMPRINCIPAL2.somenteNumero(formatcurr('0.00', fValor)),fQtde-1);
  result := Copy(troca,1,(fQtde-3))+'.'+Copy(troca,(fQtde-2),2);
end;
function tfrmprincipal2.adic_codifica(tabela:string):string;
begin

  frmmodulo.qradic_mestre.open;
  frmmodulo.qradic_mestre.CommitUpdates;
  frmmodulo.qradic_mestre.Refresh;
  if frmmodulo.qradic_mestre.Locate('codigo',tabela,[loCaseInsensitive]) then
  begin

    if frmmodulo.qradic_mestre.FieldByName('sequencia').asinteger < 1 then
    begin
      result := '000001';
      frmmodulo.qradic_mestre.Edit;
      frmmodulo.qradic_mestre.fieldbyname('sequencia').asinteger := 2;
      frmmodulo.qradic_mestre.Post;
    end
    else
    begin
      result := frmprincipal2.zerarcodigo(inttostr(frmmodulo.qradic_mestre.fieldbyname('sequencia').asinteger),6);
      frmmodulo.qradic_mestre.Edit;
      frmmodulo.qradic_mestre.fieldbyname('sequencia').asinteger := frmmodulo.qradic_mestre.fieldbyname('sequencia').asinteger + 1;
      frmmodulo.qradic_mestre.Post;
    end;
  end
  else
  begin
    Showmessage('N„o foi possÌvel concluir com a operaÁ„o!'+#13+'Erro: CÛdigo de sequÍncia n„o encontrado na tabela de cÛdigos.');
    frmmodulo.conexao_adic.Rollback;
  end;
end;

function tfrmprincipal2.codifica(tabela:string):string;
var xcod : integer;
begin
//  transMestre.active := true;
  qrmestre.close;
  qrmestre.sql.clear;
  qrmestre.sql.add('select * from c000000 where codigo = '''+tabela+'''');
  qrmestre.open;
  if qrmestre.recordcount > 0 then
  begin
    xcod := qrmestre.fieldbyname('sequencia').asinteger;
    if xcod < 1 then xcod := 1;
    qrmestre.close;
    qrmestre.sql.clear;
    qrmestre.sql.add('update c000000 set sequencia = sequencia + 1 where codigo = '''+tabela+'''');
    qrmestre.execsql;
  //  transMestre.commit;
    result := frmprincipal2.zerarcodigo(inttostr(xcod),6);
  end
  else
  begin
    Showmessage('N„o foi possÌvel concluir com a operaÁ„o!'+#13+'Erro: CÛdigo de sequÍncia n„o encontrado na tabela de cÛdigos.');
  end;
  Application.ProcessMessages;
end;

Function tfrmprincipal2.Cript(Action, Src: String): String;
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
  Key := 'YUQL23KL23DF90WI5E1JAS467NMCXXL6JAOAUWWMCL0AOMM4A4VZYW9KHJUI2347EJHJKDF3424SKL K3LAKDJSL9RTIKJ';
//  Key := 'YUQL%%$#%3DF#0WI5E$JA$46#NM@XXL6JAOAUW%$#@0AOMM4$4VZYW&&HJUI23@7E%#@!DF34#4SKL K3LA@DJSL9RTIKJ';
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








//////////////////////////////////////////////////////////////////////
function tfrmprincipal2.autentica(funcao:string;nivel:integer) : boolean;
begin
  frmsenha := tfrmsenha.create(self);
  frmsenha.lfuncao.caption := inttostr(nivel)+' - '+funcao;
  frmsenha.showmodal;
  result := autenticado;

end;

function tfrmprincipal2.acesso(usuario:string;funcao:string):string;
begin
  try
    frmmodulo.qrUsuario_funcao.Close;
    frmmodulo.qrusuario_funcao.SQL.clear;
    frmmodulo.qrusuario_funcao.sql.add('select * from c000067 where codusuario ='''+usuario+''' and funcao like '''+funcao+'%''');
    frmmodulo.qrusuario_funcao.open;
    if frmmodulo.qrusuario_funcao.RecNo = 1 then
      begin
        result := FRMMODULO.QRUSUARIO_FUNCAO.FIELDBYNAME('ACESSO').ASSTRING;
      end
    else
      begin
        result :='NAO';
      end;
  except
    result := 'NAO';
  end;

end;

procedure tfrmprincipal2.FechePrograma(Programa: Pchar);
var
   hHandle : THandle;
begin
   hHandle := FindWindow( nil, Programa);

   if hHandle <> 0 then
      PostMessage( hHandle, WM_QUIT, 0, 0);

end;



procedure Tfrmprincipal2.bsairClick(Sender: TObject);
begin
  if application.messagebox('Confirma o encerramento do Sistema?','Aviso',mb_yesno+MB_ICONWARNING) = idyes then
    begin
      frmprincipal2.FechePrograma('DataComm');
      frmmodulo.Conexao.Connected := false;
      Application.Terminate;
    end
    else
      TAdvGlowButton(sender).setfocus;
end;

procedure Tfrmprincipal2.bfiliaisClick(Sender: TObject);
begin
  bfiliais.SetFocus;
  frmEMPRESA := tfrmEMPRESA.create(self);
  frmEMPRESA.showmodal;
  TAdvGlowButton(sender).setfocus;
end;

procedure Tfrmprincipal2.bclienteClick(Sender: TObject);
begin
  frmcliente := tfrmcliente.create(self);
  frmcliente.showmodal;
    TAdvGlowButton(sender).setfocus;
end;

procedure Tfrmprincipal2.bfornecedorClick(Sender: TObject);
begin
  FRMFORNECEDOR := TFRMFORNECEDOR.CREATE(SELF);
  FRMFORNECEDOR.SHOWMODAL;
    TAdvGlowButton(sender).setfocus;
end;

procedure Tfrmprincipal2.btranspClick(Sender: TObject);
begin
  frmtransportador := tfrmtransportador.create(self);
  frmtransportador.showmodal;
    TAdvGlowButton(sender).setfocus;
end;

procedure Tfrmprincipal2.boutrosClick(Sender: TObject);
begin
  pop_outros_cadastros.Popup(parquivo.left+213,parquivo.top+145);
end;

procedure Tfrmprincipal2.bcfopClick(Sender: TObject);
begin
  pop_tabela_fiscal.Popup(parquivo.left+213,parquivo.top+165);
end;

procedure Tfrmprincipal2.bcfop2Click(Sender: TObject);
begin
  FRMCFOP := TFRMCFOP.CREATE(SELF);
  FRMCFOP.SHOWMODAL;
  bcfop.setfocus;
end;

procedure Tfrmprincipal2.CSTCdigodaSituaoTributria1Click(Sender: TObject);
begin
  frmcst := tfrmcst.create(self);
  frmcst.showmodal;
    bcfop.setfocus;
end;

procedure Tfrmprincipal2.ModelosdeDocumentosFiscais1Click(Sender: TObject);
begin
  FRMmodelo_fiscal := TFRMmodelo_fiscal.CREATE(SELF);
  FRMmodelo_fiscal.SHOWMODAL;
    bcfop.setfocus;
end;

procedure Tfrmprincipal2.NCMNomenclaturaMercosul1Click(Sender: TObject);
begin
  frmNcm := tfrmNcm.create(self);
  frmNcm.showmodal;
end;

procedure Tfrmprincipal2.CSOSNCdigodaOperaodeSituaodoSimplesNacional1Click(
  Sender: TObject);
begin
  frmxloc_csosn := tfrmxloc_csosn.create(self);
  frmxloc_csosn.showmodal;
end;

procedure Tfrmprincipal2.bprodutoClick(Sender: TObject);
begin
  FRMMODULO.QRCONFIG.OPEN;
  IF FRMMODULO.QRCONFIG.FieldByName('CADASTRO_PRODUTO').asstring = 'NORMAL' then
  begin
    frmproduto := tfrmproduto.create(self);
    frmproduto.showmodal;
  end
  else
  begin
    IF FRMMODULO.QRCONFIG.FieldByName('CADASTRO_PRODUTO').asstring = 'LIGHT' then
    begin
      frmproduto_LIGTH := tfrmproduto_LIGTH.create(self);
      frmproduto_LIGTH.showmodal;
    end
    else
    begin
      IF FRMMODULO.QRCONFIG.FieldByName('CADASTRO_PRODUTO').asstring = 'FARMA' THEN
      BEGIN
          frmproduto_FARMA := tfrmproduto_FARMA.create(self);
          frmproduto_FARMA.showmodal;
      END
      ELSE
      BEGIN
        IF FRMMODULO.QRCONFIG.FieldByName('CADASTRO_PRODUTO').asstring = 'PECAS' then
        begin
          frmproduto_AUTO := tfrmproduto_AUTO.create(self);
          frmproduto_AUTO.showmodal;
        end;
      END;
    end;
  end;
    TAdvGlowButton(sender).setfocus;
end;

procedure Tfrmprincipal2.bgrupoClick(Sender: TObject);
begin
  frmgrupo := tfrmgrupo.create(self);
  frmgrupo.showmodal;
    TAdvGlowButton(sender).setfocus;
end;

procedure Tfrmprincipal2.bmarcaClick(Sender: TObject);
begin
  FRMMARCA := TFRMMARCA.CREATE(SELF);
  FRMMARCA.SHOWMODAL;
    TAdvGlowButton(sender).setfocus;
end;

procedure Tfrmprincipal2.bNFeletronicaClick(Sender: TObject);
begin
 pop_nf_saida.Popup(pmovimento.left+205,pmovimento.top+55);
end;

procedure Tfrmprincipal2.MenuItem1Click(Sender: TObject);
begin
  frmnotafiscal_menu := tfrmnotafiscal_menu.create(self);
  frmnotafiscal_menu.showmodal;
end;

procedure Tfrmprincipal2.BconhecimentoClick(Sender: TObject);
begin
  frmconhecimento := tfrmconhecimento.create(self);
  frmconhecimento.showmodal;
end;

procedure Tfrmprincipal2.MemorandodeExportao1Click(Sender: TObject);
begin
  frmmemorando_menu := Tfrmmemorando_menu.CREATE(SELF);
  frmmemorando_menu.SHOWMODAL;
end;

procedure Tfrmprincipal2.barquivoClick(Sender: TObject);
begin
  bfiliais.Setfocus;
end;

procedure Tfrmprincipal2.bestoqueClick(Sender: TObject);
begin
  BPRODUTO.SETFOCUS;
end;

procedure Tfrmprincipal2.barquivoEnter(Sender: TObject);
begin
  PARQUIVO.Visible :=    TRUE;
  PESTOQUE.Visible :=    FALSE;
  PMOVIMENTO.VISIBLE :=  FALSE;
end;

procedure Tfrmprincipal2.bestoqueEnter(Sender: TObject);
begin
  PARQUIVO.Visible :=    FALSE;
  PESTOQUE.Visible :=    TRUE;
  PMOVIMENTO.VISIBLE :=  FALSE;
end;

procedure Tfrmprincipal2.bmovimentoEnter(Sender: TObject);
begin
  PARQUIVO.Visible :=    FALSE;
  PESTOQUE.Visible :=    FALSE;
  PMOVIMENTO.VISIBLE :=  TRUE;

end;

procedure Tfrmprincipal2.FormCreate(Sender: TObject);
var txt : textfile;
entrada : string;
begin

  if (Screen.Width = 1024) and (screen.Height = 768) then
  begin
    WIDTH := 1024;
    Height := 738;
  end;

  PARQUIVO.Top  := 60;
  parquivo.left := 78;
  PESTOQUE.TOP  := 60;
  PMOVIMENTO.Top:= 60;
  PESTOQUE.LEFT :=    182;
  PMOVIMENTO.LEFT :=  285;
  {
  try

      (*  VERIFICAR SE O COMPUTADOR EH UMA ATUALIZACAO*)
      assignfile(txt,'\DataSAC\server\dll\com.ini');
      reset(txt);
      while not eof(txt) do

      begin
        readln(txt,entrada);
        if copy(entrada,1,7) = '999-002' then conexao_sistema := trim(copy(entrada,9,50));
      end;

      CloseFile(txt);


  except
  end;
  }
end;

procedure Tfrmprincipal2.FormShow(Sender: TObject);

begin

 caption := 'DataNF-e                                         ';

  frmmodulo.qrfilial.close;
  frmmodulo.qrfilial.sql.clear;
  frmmodulo.qrfilial.sql.add('select * from c000004 order by filial');
  frmmodulo.qrfilial.open;

//   frmmodulo.qrconfig.open;
//   nivel_usuario := frmmodulo.qrusuario.fieldbyname('nivel').asinteger;
//   codigo_usuario := frmmodulo.qrusuario.fieldbyname('codigo').asstring;
   frmprincipal2.PopupMenu := Pop_principal;
   frmprincipal2.Menu := nil;

   BARQUIVO.SetFOCUS;

end;

procedure Tfrmprincipal2.barquivoMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  TAdvGlowButton(sender).SetFocus;
end;

procedure Tfrmprincipal2.bestoqueMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  TAdvGlowButton(sender).SetFocus;
end;

procedure Tfrmprincipal2.bmovimentoMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
     TAdvGlowButton(sender).SetFocus;
end;

end.
