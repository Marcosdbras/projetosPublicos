unit principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvToolBar, RzPanel, StdCtrls, AdvPanel, ExtCtrls,ShellApi,
  TFlatPanelUnit, jpeg, AdvShapeButton, AdvGlowButton, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, Menus, AdvMenus, Registry, AdvToolBarStylers,
  DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, math, CheckCPF,
  ExceptionLog;

type
  Tfrmprincipal = class(TForm)
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
    FormasdePagamento1: TMenuItem;
    CondiesdePagamento1: TMenuItem;
    N3: TMenuItem;
    Cidades1: TMenuItem;
    N4: TMenuItem;
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
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    Image3: TImage;
    EurekaLog1: TEurekaLog;
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
    procedure bmovimentoClick(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure AdvGlowButton1MouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure AdvGlowButton1Enter(Sender: TObject);
    procedure AdvGlowButton2Enter(Sender: TObject);
    procedure AdvGlowButton2MouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
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
    function Space(const Len: integer): string;
    function tira_ponto(texto:string):string;
    (*T E F*)

    Procedure Daruma_Analisa_Retorno();
    Procedure Daruma_Retorno_Impressora();

    function AnalisaRetornoECF: integer;
    function AnalisaRetornoComando(retorno:integer): integer;
    function AnalisaRetorno(retorno:integer): integer;

    function msgcard() : boolean;
    function msgcheck() : boolean;
    function autentica_caixa(funcao:string;nivel:integer) : boolean;
    function tbReplChar(const Ch: Char; const Len: integer): string;
    Procedure ExecutePrograma(Nome, Parametros: String);



   (*----------------------------------------*)

    procedure GravaReducaoZ;
    function formata_valor(valor:string):string;

  end;

var
  frmprincipal: Tfrmprincipal;
  autenticado:boolean;
  qtde_dias_ativacao : integer;
  DATA_TERMINO : TDATETIME;
  nc_caixa : integer;
  res_expirado,res_instalacao,res_data,res_termino, res_empresa , res_rsocial , res_cnpj :string;
  cont_inventario : boolean;
  conexao_sistema : string;

  usuario_temp : string;

  // TEF_DIAL
  USA_TEF, usa_tecban : BOOLEAN;
  retmsg, TEFFINAL, jafinalizado, foiconectado : BOOLEAN;
  ret_cheque : integer;
  elcheque : boolean; // variavel q controla o se a venda eh cheque ou cartao para impressao do CV
  daruma_retorno: integer;
  continua : boolean;
  iRet : Integer;
  venda_TEF : boolean;
  //


implementation

uses modulo, empresa, cliente, fornecedor, transportador, cfop,
  cst, modelo_fiscal, Ncm, xloc_csosn, produto, produto_ligth,
  produto_farma, produto_auto, grupo, marca, notafiscal_menu, conhecimento,
  memorando_menu, senha, senha_caixa, msgcartao, msgcheque,ecf, progresso;

{$R *.dfm}

Procedure tfrmprincipal.ExecutePrograma(Nome, Parametros: String);
Var
 Comando: Array[0..1024] of Char;
 Parms: Array[0..1024] of Char;
begin
  StrPCopy(Comando, Nome);
  StrPCopy(Parms, Parametros);
  ShellExecute(0, Nil, Comando, Parms, Nil, SW_ShowNormal);
end;



function tfrmprincipal.autentica_caixa(funcao:string;nivel:integer) : boolean;
begin
  frmsenha_caixa := tfrmsenha_caixa.create(self);
  frmsenha_caixa.lfuncao.caption := inttostr(nivel)+' - '+funcao;
  frmsenha_caixa.showmodal;

  result := autenticado;
end;


function tfrmprincipal.msgcard() : boolean;
begin
  frmmsgcartao := tfrmmsgcartao.create(self);
  frmmsgcartao.showmodal;
  result := retmsg;
end;

function tfrmprincipal.msgcheck() : boolean;
begin
  frmmsgcheque := tfrmmsgcheque.create(self);
  frmmsgcheque.showmodal;
  result := retmsg;
end;


Procedure Tfrmprincipal.Daruma_Analisa_Retorno();
  Begin

    if Daruma_Retorno = -27 then
      Daruma_Retorno_Impressora();

    if Daruma_Retorno = 0 then
    begin
       continua := false;
       application.messagebox( 'Erro de comunicação, a Função nao conseguiu enviar o comando','Erro',mb_ok+MB_ICONERROR);
    end;

    If Daruma_Retorno = -1 Then
    begin
       continua := false;
       application.messagebox( 'Erro de Execução da Função','Erro',mb_ok+MB_ICONERROR);
    end;

    if Daruma_Retorno = -2  then
    begin
      continua := false;
      application.messagebox( 'Parâmetro inválido passado na função.!','Erro',mb_ok+MB_ICONERROR);
    end;

    if Daruma_Retorno = -3  then
    begin
      continua := false;
       application.messagebox( 'Alíquota não programada no ECF. !','Erro',mb_ok+MB_ICONERROR);
    end;

    If Daruma_Retorno = -4 Then
    begin
      continua := false;
       application.messagebox( 'A Chave ou Valor no Registry não Foi Encontado.!','Erro',mb_ok+MB_ICONERROR);
    end;

    If Daruma_Retorno = -5 Then
    begin
      continua := false;
       application.messagebox( 'Erro ao Abrir a Porta de Comunicação','Erro',mb_ok+MB_ICONERROR);
    end;

    If Daruma_Retorno = -6 Then
    begin
      continua := false;
       application.messagebox( 'Impressora desligada ou cabo de comunicação desconectado.','Erro',mb_ok+MB_ICONERROR);
    end;

    If Daruma_Retorno = -7 Then
    begin
      continua := false;
       application.messagebox( 'Banco não encontrado ou não cadastrado no Registry','Erro',mb_ok+MB_ICONERROR);
    end;

    If Daruma_Retorno = -8 Then
    begin
      continua := false;
      application.messagebox( ' Erro ao criar ou gravar no arquivo STATUS.TXT ou RETORNO.TXT.','Erro',mb_ok+MB_ICONERROR);
    end;

  END;

{A Rotina Abaixo Analisa o Retorno da Impressora, do ECF}
Procedure Tfrmprincipal.Daruma_Retorno_Impressora();
  Var Daruma_iACK, Daruma_iST1, Daruma_iST2: Integer;
      Daruma_MSG: String;

  Begin
    Daruma_iACK := 0; //Variaveis devem ser inicializadas para Alocar Espaco
    Daruma_iST1 := 0;
    Daruma_iST2 := 0;
    Daruma_MSG :='';
    Daruma_Retorno := Daruma_FI_RetornoImpressora(Daruma_iACK, Daruma_iST1, Daruma_iST2);
    If Daruma_iACK = 6 then
       BEGIN


          // Verifica ST1

          IF Daruma_iST1 >= 128 Then BEGIN Daruma_iST1 := Daruma_iST1 - 128; Daruma_MSG := 'Papel Acabou!!' + #13 + #10; END;
          IF Daruma_iST1 >= 64  Then BEGIN Daruma_iST1 := Daruma_iST1 - 64;  Daruma_MSG := Daruma_MSG + 'Papel Acabando!!' + #13 + #10; continua := true; END;
          IF Daruma_iST1 >= 32  Then BEGIN Daruma_iST1 := Daruma_iST1 - 32;  Daruma_MSG := Daruma_MSG + 'Erro no Relogio!!' + #13 + #10;END;
          IF Daruma_iST1 >= 16  Then BEGIN Daruma_iST1 := Daruma_iST1 - 16;  Daruma_MSG := Daruma_MSG + 'Impressora em Erro!!' + #13 + #10;END;
          IF Daruma_iST1 >= 8   Then BEGIN Daruma_iST1 := Daruma_iST1 - 8;   Daruma_MSG := Daruma_MSG + 'Falta o ESC no comando!!' + #13 + #10;END;
          IF Daruma_iST1 >= 4   Then BEGIN Daruma_iST1 := Daruma_iST1 - 4;   Daruma_MSG := Daruma_MSG + 'Nao existe o Comando!!' + #13 + #10;END;
          IF Daruma_iST1 >= 2   Then BEGIN Daruma_iST1 := Daruma_iST1 - 2;   Daruma_MSG := Daruma_MSG + 'Cupom Aberto!!' + #13 + #10;END;
          IF Daruma_iST1 >= 1   Then BEGIN Daruma_iST1 := Daruma_iST1 - 1;   Daruma_MSG := Daruma_MSG + 'Parametro Errado!!' + #13 + #10;END;

          // Verifica ST2

          IF Daruma_iST2 >= 128 Then BEGIN Daruma_iST2 := Daruma_iST2 - 128; Daruma_MSG := Daruma_MSG + 'Parametro Invalido!!' + #13 + #10;END;
          IF Daruma_iST2 >= 64  Then BEGIN Daruma_iST2 := Daruma_iST2 - 64;  Daruma_MSG := Daruma_MSG + 'MF Lotada!!' + #13 + #10;END;
          IF Daruma_iST2 >= 32  Then BEGIN Daruma_iST2 := Daruma_iST2 - 32;  Daruma_MSG := Daruma_MSG + 'Erro na Ram!!' + #13 + #10;END;
          IF Daruma_iST2 >= 16  Then BEGIN Daruma_iST2 := Daruma_iST2 - 16;  Daruma_MSG := Daruma_MSG + 'Aliquota Nao Programada!!' + #13 + #10;END;
          IF Daruma_iST2 >= 8   Then BEGIN Daruma_iST2 := Daruma_iST2 - 8;   Daruma_MSG := Daruma_MSG + 'Nao cabe mais Aliquota!!' + #13 + #10;END;
          IF Daruma_iST2 >= 4   Then BEGIN Daruma_iST2 := Daruma_iST2 - 4;   Daruma_MSG := Daruma_MSG + 'Canc. Nao Permitido!!' + #13 + #10;END;
          IF Daruma_iST2 >= 2   Then BEGIN Daruma_iST2 := Daruma_iST2 - 2;   Daruma_MSG := Daruma_MSG + 'CNPJ nao Programado!!' + #13 + #10;END;
          IF Daruma_iST2 >= 1   Then BEGIN Daruma_iST2 := Daruma_iST2 - 1;   Daruma_MSG := Daruma_MSG + 'Comando Nao Executado!!' + #13 + #10;END;

          if Length(Daruma_MSG) > 1 then
          APPLICATION.MESSAGEBOX(pansichar(daruma_msg),'Atenção',mb_ok+mb_iconwarning);
       End;

    If Daruma_iACK = 21 Then BEGIN
        APPLICATION.MESSAGEBOX('Erro Fatal na Impressora! A aplicação será finalizada!','Erro',mb_ok+mb_iconerror);
       Application.Terminate;
       Exit;
    End;
   END;


function Tfrmprincipal.AnalisaRetornoECF: integer;
Var iACK, iST1, iST2: Integer;
Begin
  iACK := 0; iST1 := 0; iST2 := 0;
  iRet := Bematech_FI_RetornoImpressora(iACK, iST1, iST2);
  If iACK = 6 then
  begin
    if iST1 = 64  Then
    begin
      iST1 := iST1 - 64;
      application.messagebox('Papel está terminando','Atenção',mb_ok+mb_iconwarning);
      IRET := 1;
      CONTINUA := TRUE;
    end
    ELSE
    BEGIN
      if iST1 = 128 Then
      begin
        iST1 := iST1 - 128;
        application.messagebox('Fim do Papel','Erro',mb_ok+MB_ICONERROR);
        iret := 0;
      end;
      if iST1 = 192 Then
      begin
        iST1 := iST1 - 128;
        application.messagebox('Fim do Papel','Erro',mb_ok+MB_ICONERROR);
        iret := 0;
      end;
      if iST1 = 32  Then
      begin
        iST1 := iST1 - 32;
        application.messagebox('Erro no relógio interno do ECF','Erro',mb_ok+MB_ICONERROR);
      end;
      if iST1 = 16  Then
      begin
        iST1 := iST1 - 16;
        application.messagebox('Impressora em erro - Desligue e ligue o ECF','Erro',mb_ok+MB_ICONERROR);
        continua := false;
      end;
      if iST1 = 8   Then
      begin
        iST1 := iST1 - 8;
        application.messagebox('Erro no envio do comando','Erro',mb_ok+MB_ICONERROR);
        continua := false;
      end;
      if iST1 = 4   Then
      begin
        iST1 := iST1 - 4;
        application.messagebox('Comando inexistente','Erro',mb_ok+MB_ICONERROR);
        continua := false;
      end;
      if iST1 = 2   Then
      begin
        iST1 := iST1 - 2;
        application.messagebox('Cupom Fiscal aberto','Erro',mb_ok+MB_ICONERROR);
        venda_TEF := true;
      end;
      if iST1 = 1   Then
      begin
        iST1 := iST1 - 1;
        application.messagebox('Parâmetro inválido','Erro',mb_ok+MB_ICONERROR);
        continua := false;
      end;
      // Verifica ST2
      if iST2 = 128 Then
      begin
        iST2 := iST2 - 128;
        application.messagebox('Tipo de comando inválido','Erro',mb_ok+MB_ICONERROR);
        continua := false;
      end;
      if iST2 = 64  Then
      begin
        iST2 := iST2 - 64;
        application.messagebox('Memória Fiscal cheia','Erro',mb_ok+MB_ICONERROR);
        continua := false;
      end;
      if iST2 = 32  Then
      begin
        iST2 := iST2 - 32;
        application.messagebox('Erro na CMOS do ECF','Erro',mb_ok+MB_ICONERROR);
        continua := false;
      end;
      if iST2 = 16  Then
      begin
        iST2 := iST2 - 16;
        application.messagebox('Alíquota não programada','Erro',mb_ok+MB_ICONERROR);
        continua := false;
      end;
      if iST2 = 8   Then
      begin
        iST2 := iST2 - 8;
        application.messagebox('Capacidade de alíquotas esgotada','Erro',mb_ok+MB_ICONERROR);
        continua := false;
      end;
      if iST2 = 5   Then
        begin
          iST2 := iST2 - 4;
          application.messagebox('Cancelamento não permitido! Verifique se o mesmo já foi cancelado!','Erro',mb_ok+MB_ICONERROR);
          continua := false;
        end;



      if iST2 = 4   Then
        begin
          iST2 := iST2 - 4;
          application.messagebox('Cancelamento não permitido pelo ECF','Erro',mb_ok+MB_ICONERROR);
          continua := false;
        end;
      if iST2 = 2   Then
        begin
          iST2 := iST2 - 2;
          application.messagebox('CNPJ/IE não programados','Erro',mb_ok+MB_ICONERROR);
          continua := false;
        end;
      if iST2 = 1   Then
        begin
          iST2 := iST2 - 1;
          application.messagebox('Comando não executado','Erro',mb_ok+MB_ICONERROR);
          continua := false;
        end;
     END;// ACABANDO O PAPEL....
   end;

    If iACK = 21 Then
      begin
       application.messagebox( pansichar('Atenção!!!' + #13 + #10 +'A Impressora retornou NAK. O programa será abortado.'),'Erro',mb_ok+mb_iconerror);
       continua := false;
       Application.Terminate;
       Exit;
      end;



    result := iRet;
end;


function Tfrmprincipal.AnalisaRetornoComando(retorno:integer): integer;
begin

    if retorno < 1 then continua := false;

    if retorno = 0 then
       application.messagebox( 'Erro de Comunicação !','Erro',mb_ok+MB_ICONERROR);
    If retorno = -1 Then
       application.messagebox( 'Erro de Execução na Função. Verifique!','Erro',mb_ok+MB_ICONERROR);

    if retorno = -2  then
       application.messagebox( 'Parâmetro Inválido!','Erro',mb_ok+MB_ICONERROR);

    if retorno = -3  then
       application.messagebox( 'Alíquota não programada!','Erro',mb_ok+MB_ICONERROR);

    If retorno = -4 Then
       application.messagebox( 'Arquivo BemaFI32.INI não encontrado. Verifique!','Erro',mb_ok+MB_ICONERROR);

    If retorno = -5 Then
       application.messagebox( 'Erro ao Abrir a Porta de Comunicação','Erro',mb_ok+MB_ICONERROR);

    If retorno = -6 Then
       application.messagebox( 'Impressora Desligada ou Desconectada','Erro',mb_ok+MB_ICONERROR);

    If retorno = -7 Then
       application.messagebox( 'Banco Não Cadastrado no Arquivo BemaFI32.ini','Erro',mb_ok+MB_ICONERROR);

    If retorno = -8 Then
       application.messagebox( 'Erro ao Criar ou Gravar no Arquivo Retorno.txt ou Status.txt','Erro',mb_ok+MB_ICONERROR);

    if retorno = -18 then
       application.messagebox( 'Não foi possível abrir arquivo INTPOS.001 !','Erro',mb_ok+MB_ICONERROR);

    if retorno = -19 then
       application.messagebox( 'Parâmetro diferentes !','Erro',mb_ok+MB_ICONERROR);

    if retorno = -20 then
       application.messagebox( 'Transação cancelada pelo Operador !','Erro',mb_ok+MB_ICONERROR);

    if retorno = -21 then
       application.messagebox( 'A Transação não foi aprovada !','Erro',mb_ok+MB_ICONERROR);

    if retorno = -22 then
       application.messagebox( 'Não foi possível terminal a Impressão !','Erro',mb_ok+MB_ICONERROR);

    if retorno = -23 then
       application.messagebox( 'Não foi possível terminal a Operação !','Erro',mb_ok+MB_ICONERROR);

    if retorno = -24 then
       application.messagebox( 'Forma de pagamento não programada.','Erro',mb_ok+MB_ICONERROR);

    if retorno = -25 then
       application.messagebox( 'Totalizador não fiscal não programado.','Erro',mb_ok+MB_ICONERROR);

    if retorno = -26 then
       application.messagebox( 'Transação já Efetuada !','Erro',mb_ok+MB_ICONERROR);

    if retorno = -28 then
       application.messagebox( 'Não há Informações para serem Impressas !','Erro',mb_ok+MB_ICONERROR);
    result := retorno;
end;

function Tfrmprincipal.AnalisaRetorno(retorno:integer): integer;
begin
  iRet := AnalisaRetornoComando(retorno);
  iRet := AnalisaRetornoECF();
  result := iRet;
end;


function tfrmprincipal.tira_ponto(texto:string):string;
var i : integer;
begin
   i := pos('.',texto) + pos(',',texto);
   while i <> 0 do
   begin
     if pos('.',texto) > 0 then delete(texto,i,1);
     if pos(',',texto) > 0 then delete(texto,i,1);
      i := pos('.',texto) + pos(',',texto);
   end;
   result := texto;
end;

function tfrmprincipal.Space(const Len: integer): string;
begin
     Result := tbReplChar(#32, Len);
end;

function tfrmprincipal.tbReplChar(const Ch: Char; const Len: integer): string;
var
  I: integer;
begin
  SetLength(Result, Len);
  for I := 1 to Len do
  Result[I] := Ch;
end;


function tfrmprincipal.CalculaDigEAN13(Cod:String):String;
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



function tfrmprincipal.tiraacento ( str: String ): String;
var
i: Integer;
begin
for i := 1 to Length ( str ) do
case str[i] of
'è': str[i] := 'e';
'ì': str[i] := 'i';
'ù': str[i] := 'u';
'î': str[i] := 'i';
'û': str[i] := 'u';
'á': str[i] := ' ';//
'é': str[i] := '‚';//
'í': str[i] := '¡';//
'ó': str[i] := '¢';//
'ú': str[i] := '£';//
'à': str[i] := '…';//
'ò': str[i] := '•';//
'â': str[i] := 'ƒ';//
'ê': str[i] := 'ˆ';//
'ô': str[i] := '“';//
'ä': str[i] := '„';//
'ë': str[i] := '‰';//
'ï': str[i] := '‹';//
'ö': str[i] := '”';//
'ü': str[i] := '';//
'ã': str[i] := '†';//
'õ': str[i] := 'o';
'ñ': str[i] := '¤';//
'ç': str[i] := '‡';//
'Á': str[i] := 'A';
'É': str[i] := '';//
'Í': str[i] := 'I';
'Ó': str[i] := 'O';
'Ú': str[i] := 'U';
'À': str[i] := 'A';
'È': str[i] := 'E';
'Ì': str[i] := 'I';
'Ò': str[i] := 'O';
'Ù': str[i] := 'U';
'Â': str[i] := '';
'Ê': str[i] := 'E';
'Î': str[i] := 'I';
'Ô': str[i] := 'O';
'Û': str[i] := 'U';
'Ä': str[i] := 'A';
'Ë': str[i] := 'E';
'Ï': str[i] := 'I';
'Ö': str[i] := 'O';
'Ü': str[i] := 'š';//
'Ã': str[i] := 'A';
'Õ': str[i] := 'O';
'Ñ': str[i] := '¥';//
'Ç': str[i] := '€';//
'ª': str[i] := '¦';//
'º': str[i] := '§';//
end;
Result := str;
end;


procedure tfrmprincipal.log(CODUSUARIO,TABELA,CODREGISTRO,FUNCAO,hISTORICO:string);
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

function Tfrmprincipal.ChecaEstado(Dado : string) : boolean;
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


function Tfrmprincipal.somenteNumero(sNum:string):string;
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

procedure tfrmprincipal.agenda(vsituacao,vtipo,vnome,vtelefone1,vtelefone2,vtelefone3,vcelular,vemail,vfax,vhomepage,vtipoi:string);
begin

  // tipoi
  {
   1. 'CLIENTE'
   2. 'CONTATO'
   3. 'FORNECEDOR'
   4. 'FUNCIONÁRIO'
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
      frmmodulo.queryagenda.params.parambyname('codigo').AsString := frmprincipal.codifica('000034');
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

procedure tfrmprincipal.LimpaEdit (Form: TForm);
var
i : Integer;
begin
  for i := 0 to Form.ComponentCount - 1 do
  if Form.Components[i] is TCustomEdit then (Form.Components[i] as TCustomEdit).Clear;
end;

function tfrmprincipal.texto_justifica(texto : string; qtde_caracteres : integer; caracter : string; tipo:string) : string;
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


function tfrmprincipal.Locregistro(tabela : TDataSet; valor:string;campo : string):boolean;
begin
  if tabela.Locate(campo,valor,[loCaseInsensitive]) then
  begin
    result := true;
  end
  else
  begin
    Application.MessageBox('Registro não encontrado!!','Erro',mb_ok+mb_iconwarning);
    result := false;
  end;


end;
function tfrmprincipal.UltimoDiaMes(Mdt: TDateTime) : TDateTime;
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

function tfrmprincipal.TestaCnpj(xCNPJ: String):Boolean;
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

function Tfrmprincipal.RemoveAcentos(Str:String): String;
Const ComAcento = 'àâêôûãõáéíóúçüÀÂÊÔÛÃÕÁÉÍÓÚÇÜ';
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



function tfrmprincipal.TiraCaracterEspecial(texto:string):string;
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


function Tfrmprincipal.Arredondar(Value: Extended; Decimals: integer): Extended;
var
  Factor, Fraction: Extended;
begin
  Factor := IntPower(10, Decimals);
  { A conversão para string e depois para float evita
    erros de arredondamentos indesejáveis. }
  Value := StrToFloat(FloatToStr(Value * Factor));
  Result := Int(Value);
  Fraction := Frac(Value);
  if Fraction >= 0.5 then
    Result := Result + 1
  else if Fraction <= -0.5 then
    Result := Result - 1;
  Result := Result / Factor;
end;


function tfrmprincipal.zerarcodigo(codigo:string;qtde:integer):string;
begin
  while length(codigo) < qtde do codigo := '0'+codigo;
  result := codigo;
end;

function Tfrmprincipal.FormataValorProsoft(fValor:Real;fQtde:Integer):string;
var
   troca : string;
begin
  troca := frmprincipal.zerarcodigo(frmprincipal.somenteNumero(formatcurr('0.00', fValor)),fQtde-1);
  result := Copy(troca,1,(fQtde-3))+'.'+Copy(troca,(fQtde-2),2);
end;
function tfrmprincipal.adic_codifica(tabela:string):string;
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
      result := frmprincipal.zerarcodigo(inttostr(frmmodulo.qradic_mestre.fieldbyname('sequencia').asinteger),6);
      frmmodulo.qradic_mestre.Edit;
      frmmodulo.qradic_mestre.fieldbyname('sequencia').asinteger := frmmodulo.qradic_mestre.fieldbyname('sequencia').asinteger + 1;
      frmmodulo.qradic_mestre.Post;
    end;
  end
  else
  begin
    Showmessage('Não foi possível concluir com a operação!'+#13+'Erro: Código de sequência não encontrado na tabela de códigos.');
    frmmodulo.conexao_adic.Rollback;
  end;
end;

function tfrmprincipal.codifica(tabela:string):string;
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
    result := frmprincipal.zerarcodigo(inttostr(xcod),6);
  end
  else
  begin
    Showmessage('Não foi possível concluir com a operação!'+#13+'Erro: Código de sequência não encontrado na tabela de códigos.');
  end;
  Application.ProcessMessages;
end;

Function tfrmprincipal.Cript(Action, Src: String): String;
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
function tfrmprincipal.autentica(funcao:string;nivel:integer) : boolean;
begin
  frmsenha := tfrmsenha.create(self);
  frmsenha.lfuncao.caption := inttostr(nivel)+' - '+funcao;
  frmsenha.showmodal;
  result := autenticado;

end;

function tfrmprincipal.acesso(usuario:string;funcao:string):string;
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

procedure tfrmprincipal.FechePrograma(Programa: Pchar);
var
   hHandle : THandle;
begin
   hHandle := FindWindow( nil, Programa);

   if hHandle <> 0 then
      PostMessage( hHandle, WM_QUIT, 0, 0);

end;



procedure Tfrmprincipal.bsairClick(Sender: TObject);
begin
  if application.messagebox('Confirma o encerramento do Sistema?','Aviso',mb_yesno+MB_ICONWARNING) = idyes then
    begin
      frmprincipal.FechePrograma('DataComm');
      frmmodulo.Conexao.Connected := false;
      Application.Terminate;
    end
    else
      TAdvGlowButton(sender).setfocus;
end;

procedure Tfrmprincipal.bfiliaisClick(Sender: TObject);
begin
  bfiliais.SetFocus;
  frmEMPRESA := tfrmEMPRESA.create(self);
  frmEMPRESA.showmodal;
  TAdvGlowButton(sender).setfocus;
end;

procedure Tfrmprincipal.bclienteClick(Sender: TObject);
begin
  frmcliente := tfrmcliente.create(self);
  frmcliente.showmodal;
    TAdvGlowButton(sender).setfocus;
end;

procedure Tfrmprincipal.bfornecedorClick(Sender: TObject);
begin
  FRMFORNECEDOR := TFRMFORNECEDOR.CREATE(SELF);
  FRMFORNECEDOR.SHOWMODAL;
    TAdvGlowButton(sender).setfocus;
end;

procedure Tfrmprincipal.btranspClick(Sender: TObject);
begin
  frmtransportador := tfrmtransportador.create(self);
  frmtransportador.showmodal;
    TAdvGlowButton(sender).setfocus;
end;

procedure Tfrmprincipal.boutrosClick(Sender: TObject);
begin
  pop_outros_cadastros.Popup(parquivo.left+213,parquivo.top+145);
end;

procedure Tfrmprincipal.bcfopClick(Sender: TObject);
begin
  pop_tabela_fiscal.Popup(parquivo.left+213,parquivo.top+165);
end;

procedure Tfrmprincipal.bcfop2Click(Sender: TObject);
begin
  FRMCFOP := TFRMCFOP.CREATE(SELF);
  FRMCFOP.SHOWMODAL;
  bcfop.setfocus;
end;

procedure Tfrmprincipal.CSTCdigodaSituaoTributria1Click(Sender: TObject);
begin
  frmcst := tfrmcst.create(self);
  frmcst.showmodal;
    bcfop.setfocus;
end;

procedure Tfrmprincipal.ModelosdeDocumentosFiscais1Click(Sender: TObject);
begin
  FRMmodelo_fiscal := TFRMmodelo_fiscal.CREATE(SELF);
  FRMmodelo_fiscal.SHOWMODAL;
    bcfop.setfocus;
end;

procedure Tfrmprincipal.NCMNomenclaturaMercosul1Click(Sender: TObject);
begin
  frmNcm := tfrmNcm.create(self);
  frmNcm.showmodal;
end;

procedure Tfrmprincipal.CSOSNCdigodaOperaodeSituaodoSimplesNacional1Click(
  Sender: TObject);
begin
  frmxloc_csosn := tfrmxloc_csosn.create(self);
  frmxloc_csosn.showmodal;
end;

procedure Tfrmprincipal.bprodutoClick(Sender: TObject);
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

procedure Tfrmprincipal.bgrupoClick(Sender: TObject);
begin
  frmgrupo := tfrmgrupo.create(self);
  frmgrupo.showmodal;
    TAdvGlowButton(sender).setfocus;
end;

procedure Tfrmprincipal.bmarcaClick(Sender: TObject);
begin
  FRMMARCA := TFRMMARCA.CREATE(SELF);
  FRMMARCA.SHOWMODAL;
    TAdvGlowButton(sender).setfocus;
end;

procedure Tfrmprincipal.bNFeletronicaClick(Sender: TObject);
begin
 pop_nf_saida.Popup(pmovimento.left+205,pmovimento.top+55);
end;

procedure Tfrmprincipal.MenuItem1Click(Sender: TObject);
begin
  frmnotafiscal_menu := tfrmnotafiscal_menu.create(self);
  frmnotafiscal_menu.showmodal;
end;

procedure Tfrmprincipal.BconhecimentoClick(Sender: TObject);
begin
  frmconhecimento := tfrmconhecimento.create(self);
  frmconhecimento.showmodal;
end;

procedure Tfrmprincipal.MemorandodeExportao1Click(Sender: TObject);
begin
  frmmemorando_menu := Tfrmmemorando_menu.CREATE(SELF);
  frmmemorando_menu.SHOWMODAL;
end;

procedure Tfrmprincipal.barquivoClick(Sender: TObject);
begin
  bfiliais.Setfocus;
end;

procedure Tfrmprincipal.bestoqueClick(Sender: TObject);
begin
  BPRODUTO.SETFOCUS;
end;

procedure Tfrmprincipal.barquivoEnter(Sender: TObject);
begin
  PARQUIVO.Visible :=    TRUE;
  PESTOQUE.Visible :=    FALSE;
  PMOVIMENTO.VISIBLE :=  FALSE;
end;

procedure Tfrmprincipal.bestoqueEnter(Sender: TObject);
begin
  PARQUIVO.Visible :=    FALSE;
  PESTOQUE.Visible :=    TRUE;
  PMOVIMENTO.VISIBLE :=  FALSE;
end;

procedure Tfrmprincipal.bmovimentoEnter(Sender: TObject);
begin
  PARQUIVO.Visible :=    FALSE;
  PESTOQUE.Visible :=    FALSE;
//  PMOVIMENTO.VISIBLE :=  TRUE;

end;

procedure Tfrmprincipal.FormCreate(Sender: TObject);
var txt : textfile;
entrada : string;
begin

  if (Screen.Width = 1024) and (screen.Height = 768) then
  begin
    WIDTH := 1024;
    Height := 738;
  end;

  PARQUIVO.Top  := 75;
  parquivo.left := 78;
  PESTOQUE.TOP  := 75;
  PMOVIMENTO.Top:= 75;
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

procedure Tfrmprincipal.FormShow(Sender: TObject);

begin

 caption := 'DataNF-e                                         ';

  frmmodulo.qrfilial.close;
  frmmodulo.qrfilial.sql.clear;
  frmmodulo.qrfilial.sql.add('select * from c000004 order by filial');
  frmmodulo.qrfilial.open;

//   frmmodulo.qrconfig.open;
//   nivel_usuario := frmmodulo.qrusuario.fieldbyname('nivel').asinteger;
//   codigo_usuario := frmmodulo.qrusuario.fieldbyname('codigo').asstring;
//   frmprincipal.PopupMenu := Pop_principal;
//   frmprincipal.Menu := nil;

   BARQUIVO.SetFOCUS;

end;

procedure Tfrmprincipal.barquivoMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  TAdvGlowButton(sender).SetFocus;
end;

procedure Tfrmprincipal.bestoqueMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  TAdvGlowButton(sender).SetFocus;
end;

procedure Tfrmprincipal.bmovimentoMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
    TAdvGlowButton(sender).SetFocus;
end;


procedure TfrmPrincipal.GravaReducaoZ;
VAR TXT : TEXTFILE;
TEXTO, cnpj_cpf, ie_rg : STRING;
i : integer;

begin
  //if application.messagebox('Deseja Gravar a REDUÇÃO Z?','Atenção - Redução Z',mb_yesno+MB_ICONWARNING+MB_DEFBUTTON2) = idyes then
  //begin

  //****************************************************************
  // Inicio da criação do registro 60M - REDUÇÃO Z
  //****************************************************************

       frmprogresso := tfrmprogresso.create(self);
       frmprogresso.barra.Position := 0;
       frmprogresso.show;
       Application.ProcessMessages;

      (***************** CRIAR ARQUIVO TIPO 60 M *****************)
       cnpj_cpf := emitente_cnpj;
       i := pos('.',cnpj_cpf);
       while i > 0 do
       begin
         delete(cnpj_cpf,i,1);
         i := pos('.',cnpj_cpf);
       end;
       i := pos('/',cnpj_cpf);
       while i > 0 do
       begin
         delete(cnpj_cpf,i,1);
         i := pos('/',cnpj_cpf);
       end;
       i := pos('-',cnpj_cpf);
       while i > 0 do
       begin
         delete(cnpj_cpf,i,1);
         i := pos('-',cnpj_cpf);
       end;


       ie_rg := emitente_ie;
       i := pos('.',ie_rg);
       while i > 0 do
       begin
         delete(ie_rg,i,1);
         i := pos('.',ie_rg);
       end;
       i := pos('-',ie_rg);
       while i > 0 do
       begin
         delete(ie_rg,i,1);
         i := pos('-',ie_rg);
       end;

  //TRY

       frmmodulo.qrsintegra_r60.close;
       frmmodulo.qrsintegra_r60.sql.clear;
       frmmodulo.qrsintegra_r60.SQL.Add('select * from sintegra_reg60 where ID IS NOT NULL');
       frmmodulo.qrsintegra_r60.Open;

       frmmodulo.qrsintegra_r60.insert;
       frmmodulo.qrsintegra_r60.FieldByName('ID').asstring := '1';
       frmmodulo.qrsintegra_r60.FieldByName('movimento').asstring := '1';
       frmmodulo.qrsintegra_r60.FieldByName('CODIGO_EMPRESA').asinteger := 1;
       frmmodulo.qrsintegra_r60.FieldByName('cnpj').asstring := cnpj_cpf;
       frmmodulo.qrsintegra_r60.FieldByName('ie').asstring := ie_rg;
       frmmodulo.qrsintegra_r60.FieldByName('uf').asstring := emitente_uf;

       frmprogresso.ltexto.caption := 'Gerando REGISTRO 60 ANALÍTICO para o SINTEGRA...';
       frmprogresso.barra.Position := 5;
       Application.ProcessMessages;

       I := 1;

       ecf_registro_60A(ecf_modelo);

       {
       if ecf_modelo = 'DARUMA' then frmecf_daruma.ecf_registro_60A(ecf_modelo);
       if ecf_modelo = 'BEMATECH' then frmecf_BEMATECH.ecf_registro_60A(ecf_modelo);
       if ecf_modelo = 'SWEDA' then frmecf_SWEDA.ecf_registro_60A(ecf_modelo);
       if ecf_modelo = 'URANO' then frmecf_URANO.ecf_registro_60A(ecf_modelo);
       if ecf_modelo = 'YANCO' then frmecf_YANCO.ecf_registro_60A(ecf_modelo);
       }

       if FileExists('\retorno.txt') then
       begin
         ASSIGNFILE(TXT,'\retorno.txt');
         reset(txt);
         while not eof(txt) do
         begin
         
           readln(txt,texto);

           IF (I > 9) AND (copy(texto,CAMPO_INI,CAMPO_QTDE) <> 'ISS.......................:') then

           BEGIN

            if copy(texto,1,4) = '0700' then
              begin
                frmmodulo.qrsintegra_r60.FieldByName('aliquota01').asfloat := strtofloat(copy(texto,1,4))/100;
                texto := (TrimLeft(copy(texto,RESULTADO_INI,RESULTADO_QTDE)));
                frmmodulo.qrsintegra_r60.FieldByName('VALOR_TPARCIAL01').asstring :=  formata_valor(texto);
                frmmodulo.qrsintegra_r60.FieldByName('BASE01').asstring :=  formata_valor(texto);
              end;
            if copy(texto,1,4) = '1200' then
              begin
                frmmodulo.qrsintegra_r60.FieldByName('aliquota02').asfloat := strtofloat(copy(texto,1,4))/100;
                texto := (TrimLeft(copy(texto,RESULTADO_INI,RESULTADO_QTDE)));
                frmmodulo.qrsintegra_r60.FieldByName('VALOR_TPARCIAL02').asstring :=  formata_valor(texto);
                frmmodulo.qrsintegra_r60.FieldByName('BASE02').asstring :=  formata_valor(texto);
              end;

            if copy(texto,1,4) = '1700' then
              begin
                frmmodulo.qrsintegra_r60.FieldByName('aliquota03').asfloat := strtofloat(copy(texto,1,4))/100;
                texto := (TrimLeft(copy(texto,RESULTADO_INI,RESULTADO_QTDE)));
                frmmodulo.qrsintegra_r60.FieldByName('VALOR_TPARCIAL03').asstring :=  formata_valor(texto);
                frmmodulo.qrsintegra_r60.FieldByName('BASE03').asstring :=  formata_valor(texto);
              end;
            if copy(texto,1,4) = '2500' then
              begin
                frmmodulo.qrsintegra_r60.FieldByName('aliquota04').asfloat := strtofloat(copy(texto,1,4))/100;
                texto := (TrimLeft(copy(texto,RESULTADO_INI,RESULTADO_QTDE)));
                frmmodulo.qrsintegra_r60.FieldByName('VALOR_TPARCIAL04').asstring :=  formata_valor(texto);
                frmmodulo.qrsintegra_r60.FieldByName('BASE04').asstring :=  formata_valor(texto);
              end;
            if copy(texto,1,4) = '2700' then
              begin
                frmmodulo.qrsintegra_r60.FieldByName('aliquota05').asfloat := strtofloat(copy(texto,1,4))/100;
                texto := (TrimLeft(copy(texto,RESULTADO_INI,RESULTADO_QTDE)));
                frmmodulo.qrsintegra_r60.FieldByName('VALOR_TPARCIAL05').asstring :=  formata_valor(texto);
                frmmodulo.qrsintegra_r60.FieldByName('BASE05').asstring :=  formata_valor(texto);
              end;

           {
              IF frmmodulo.qrsintegra_r60.FieldByName('aliquota01').asfloat = 0 then
              begin
                frmmodulo.qrsintegra_r60.FieldByName('aliquota01').asfloat := strtofloat(copy(texto,1,4))/100;
                texto := (TrimLeft(copy(texto,RESULTADO_INI,RESULTADO_QTDE)));
                frmmodulo.qrsintegra_r60.FieldByName('VALOR_TPARCIAL01').asstring :=  formata_valor(texto);
                frmmodulo.qrsintegra_r60.FieldByName('BASE01').asstring :=  formata_valor(texto);

              end
              else
              begin
                IF frmmodulo.qrsintegra_r60.FieldByName('aliquota02').asfloat = 0 then
                begin
                  frmmodulo.qrsintegra_r60.FieldByName('aliquota02').asfloat := strtofloat(copy(texto,1,4))/100;
                  texto := (TrimLeft(copy(texto,RESULTADO_INI,RESULTADO_QTDE)));
                  frmmodulo.qrsintegra_r60.FieldByName('VALOR_TPARCIAL02').asstring :=  formata_valor(texto);
                  frmmodulo.qrsintegra_r60.FieldByName('BASE02').asstring :=  formata_valor(texto);

                end
                else
                begin
                  IF frmmodulo.qrsintegra_r60.FieldByName('aliquota03').asfloat = 0 then
                  begin
                    frmmodulo.qrsintegra_r60.FieldByName('aliquota03').asfloat := strtofloat(copy(texto,1,4))/100;
                    texto := (TrimLeft(copy(texto,RESULTADO_INI,RESULTADO_QTDE)));
                    frmmodulo.qrsintegra_r60.FieldByName('VALOR_TPARCIAL03').asstring :=  formata_valor(texto);
                    frmmodulo.qrsintegra_r60.FieldByName('BASE03').asstring :=  formata_valor(texto);
                  end
                  else
                  begin
                    IF frmmodulo.qrsintegra_r60.FieldByName('aliquota04').asfloat = 0 then
                    begin
                      frmmodulo.qrsintegra_r60.FieldByName('aliquota04').asfloat := strtofloat(copy(texto,1,4))/100;
                      texto := (TrimLeft(copy(texto,RESULTADO_INI,RESULTADO_QTDE)));
                      frmmodulo.qrsintegra_r60.FieldByName('VALOR_TPARCIAL04').asstring :=  formata_valor(texto);
                      frmmodulo.qrsintegra_r60.FieldByName('BASE04').asstring :=  formata_valor(texto);
                    end
                    else
                    begin
                      frmmodulo.qrsintegra_r60.FieldByName('aliquota05').asfloat := strtofloat(copy(texto,1,4))/100;
                      texto := (TrimLeft(copy(texto,RESULTADO_INI,RESULTADO_QTDE)));
                      frmmodulo.qrsintegra_r60.FieldByName('VALOR_TPARCIAL05').asstring :=  formata_valor(texto);
                      frmmodulo.qrsintegra_r60.FieldByName('BASE05').asstring :=  formata_valor(texto);

                    end;
                  end;
                end;
              end;

              }

           end;




           if copy(texto,CAMPO_INI,CAMPO_QTDE) = 'Data de emissão...........:' then
           begin
             texto := (TrimLeft(copy(texto,RESULTADO_INI,RESULTADO_QTDE)));
             //showmessage(texto);
             Insert(copy(datetostr(date),7,2),texto,7);
             frmmodulo.qrsintegra_r60.FieldByName('DATA_EMISSAO').asstring := texto;
           end;


           frmmodulo.qrconfig.open;
           if frmmodulo.qrconfig.fieldbyname('ECF_SERIAL').asstring <> '' then
           begin
            frmmodulo.qrsintegra_r60.FieldByName('NRO_SERIE_EQP').asstring := frmmodulo.qrconfig.fieldbyname('ECF_SERIAL').asstring;
           end
           else
           begin
             if copy(texto,CAMPO_INI,CAMPO_QTDE) = 'Número de série...........:' then
             begin
               texto := (TrimLeft(copy(texto,RESULTADO_INI,RESULTADO_QTDE)));
               frmmodulo.qrsintegra_r60.FieldByName('NRO_SERIE_EQP').asstring := texto;
             end;
           end;

           if copy(texto,CAMPO_INI,CAMPO_QTDE) = 'Cancelamentos.............:' then
           begin
             texto := (TrimLeft(copy(texto,RESULTADO_INI,RESULTADO_QTDE)));
             frmmodulo.qrsintegra_r60.FieldByName('CANCELAMENTO').asstring := formata_valor(texto);
           end;
           if copy(texto,CAMPO_INI,CAMPO_QTDE) = 'Descontos.................:' then
           begin
             texto := (TrimLeft(copy(texto,RESULTADO_INI,RESULTADO_QTDE)));
             frmmodulo.qrsintegra_r60.FieldByName('DESCONTO').asstring := formata_valor(texto);
           end;
           if copy(texto,CAMPO_INI,CAMPO_QTDE) = 'ISS.......................:' then
           begin
             texto := (TrimLeft(copy(texto,RESULTADO_INI,RESULTADO_QTDE)));
             frmmodulo.qrsintegra_r60.FieldByName('ISSQN').asstring := formata_valor(texto);
           end;
           if copy(texto,CAMPO_INI,CAMPO_QTDE) = 'F.........................:' then
           begin
             texto := (TrimLeft(copy(texto,RESULTADO_INI,RESULTADO_QTDE)));
             frmmodulo.qrsintegra_r60.FieldByName('SUBSTITUICAO_TRIBUTARIA').asstring := formata_valor(texto);
           end;
           if copy(texto,CAMPO_INI,CAMPO_QTDE) = 'I.........................:' then
           begin
             texto := (TrimLeft(copy(texto,RESULTADO_INI,RESULTADO_QTDE)));
             frmmodulo.qrsintegra_r60.FieldByName('ISENTO').asstring := formata_valor(texto);
           end;
           if copy(texto,CAMPO_INI,CAMPO_QTDE) = 'N.........................:' then
           begin
             texto := (TrimLeft(copy(texto,RESULTADO_INI,RESULTADO_QTDE)));
             frmmodulo.qrsintegra_r60.FieldByName('NAO_INCIDENCIA').asstring := formata_valor(texto);
           end;

           frmmodulo.qrsintegra_r60.FieldByName('NRO_CONTADOR_CANCELAMENTO').asinteger := 0;

           I := I + 1;
           frmprogresso.barra.Position := frmprogresso.barra.Position + 5;
           Application.ProcessMessages;
         end;
         closefile(txt);
         deletefile('\retorno.txt');
       end;

       Application.ProcessMessages;
       if FileExists('\retorno.txt') then DELETEFILE('\RETORNO.TXT');
       frmprogresso.ltexto.caption := 'Gerando REGISTRO 60 MESTRE para o SINTEGRA...';
       Application.ProcessMessages;

       ecf_registro_60M(ecf_modelo);

       {
       if ecf_modelo = 'DARUMA' then frmecf_daruma.ecf_registro_60M(ecf_modelo);
       if ecf_modelo = 'BEMATECH' then frmecf_BEMATECH.ecf_registro_60M(ecf_modelo);
       if ecf_modelo = 'SWEDA' then frmecf_SWEDA.ecf_registro_60M(ecf_modelo);
       if ecf_modelo = 'URANO' then frmecf_URANO.ecf_registro_60M(ecf_modelo);
       if ecf_modelo = 'YANCO' then frmecf_YANCO.ecf_registro_60M(ecf_modelo);
       }

       if FileExists('\retorno.txt') then
       begin
         ASSIGNFILE(TXT,'\retorno.txt');
         reset(txt);
         while not eof(txt) do
         begin
           readln(txt,texto);
           frmmodulo.qrconfig.open;
           if frmmodulo.qrconfig.fieldbyname('ECF_CAIXA').asstring <> '' then
           begin
             frmmodulo.qrsintegra_r60.FieldByName('NRO_ORDEM_EQP').asstring := frmmodulo.qrconfig.fieldbyname('ECF_CAIXA').asstring;
           end
           else
           begin
             if copy(texto,CAMPO_INI,CAMPO_QTDE) = 'Número do equipamento.....:' then
             begin
               texto := (TrimLeft(copy(texto,RESULTADO_INI,RESULTADO_QTDE)));
               frmmodulo.qrsintegra_r60.FieldByName('NRO_ORDEM_EQP').asstring := texto;
             end;
           end;

           if copy(texto,CAMPO_INI,CAMPO_QTDE) = 'Modelo do documento fiscal:' then
           begin
             texto := (TrimLeft(copy(texto,RESULTADO_INI,RESULTADO_QTDE)));
             frmmodulo.qrsintegra_r60.FieldByName('MODELO_DOC').asstring := texto;
           end;
           if copy(texto,CAMPO_INI,CAMPO_QTDE) = 'COO inicial...............:' then
           begin
             texto := (TrimLeft(copy(texto,RESULTADO_INI,RESULTADO_QTDE)));
             frmmodulo.qrsintegra_r60.FieldByName('NRO_CONTADOR_INICIO').asstring := texto;
           end;
           if copy(texto,CAMPO_INI,CAMPO_QTDE) = 'COO final.................:' then
           begin
             texto := (TrimLeft(copy(texto,RESULTADO_INI,RESULTADO_QTDE)));
             frmmodulo.qrsintegra_r60.FieldByName('NRO_CONTADOR_FIM').asstring := texto;
           end;
           if copy(texto,CAMPO_INI,CAMPO_QTDE) = 'Contador de reduções......:' then
           begin
             texto := (TrimLeft(copy(texto,RESULTADO_INI,RESULTADO_QTDE)));
             frmmodulo.qrsintegra_r60.FieldByName('NRO_CONTADOR_Z').asstring := texto;
           end;
           if (copy(texto,CAMPO_INI,CAMPO_QTDE) = 'Reinicio de Operação......:') OR (copy(texto,CAMPO_INI,CAMPO_QTDE) = 'Reinicio de Operacao......:') then
           begin
             texto := (TrimLeft(copy(texto,RESULTADO_INI,RESULTADO_QTDE)));
             frmmodulo.qrsintegra_r60.FieldByName('CONTADOR_REINICIO').asstring := texto;
           end;
           if copy(texto,CAMPO_INI,CAMPO_QTDE) = 'Venda Bruta...............:' then
           begin
             texto := (TrimLeft(copy(texto,RESULTADO_INI,RESULTADO_QTDE)));
             frmmodulo.qrsintegra_r60.FieldByName('VALOR_VENDA_BRUTA').asstring := formata_valor(texto);
           end;
           if copy(texto,CAMPO_INI,CAMPO_QTDE) = 'Totalizador geral.........:' then
           begin
             texto := (TrimLeft(copy(texto,RESULTADO_INI,RESULTADO_QTDE)));
             frmmodulo.qrsintegra_r60.FieldByName('VALOR_TOTAL_GERAL').asstring := formata_valor(texto);
           end;
           frmprogresso.barra.Position := frmprogresso.barra.Position + 5;
           Application.ProcessMessages;
         end;
         closefile(txt);
         deletefile('\retorno.txt');
       end;
       frmprogresso.barra.Position := 100;
       Application.ProcessMessages;

    frmmodulo.qrsintegra_r60.FieldByName('valor_venda_liquida').AsFloat :=
    frmmodulo.qrsintegra_r60.FieldByName('valor_venda_bruta').AsFloat -
    frmmodulo.qrsintegra_r60.FieldByName('cancelamento').AsFloat -
    frmmodulo.qrsintegra_r60.FieldByName('desconto').AsFloat +
    frmmodulo.qrsintegra_r60.FieldByName('issqn').AsFloat ;

       frmprogresso.Close;
       frmmodulo.qrsintegra_r60.post;
       frmmodulo.Conexao.Commit;

  //EXCEPT
  //  APPLICATION.MESSAGEBOX('Houve falha no processamento do Registro 60M e 60A para geração do sintegra! Favor verificar!','Atenção',mb_ok+mb_iconerror);
  //  frmmodulo.Conexao.rollback;

  //END;

  //****************************************************************
  // Final da criação do registro 60M - REDUÇÃO Z
  //****************************************************************

  //end;
end;

function TfrmPrincipal.formata_valor(valor:string):string;
var i : integer;
begin
  i := pos('.',valor);
  while i <> 0 do
  begin
      delete(valor,i,1);
      i := pos('.',valor);
  end;
  result := valor;
end;



procedure Tfrmprincipal.bmovimentoClick(Sender: TObject);
begin
  frmnotafiscal_menu := tfrmnotafiscal_menu.create(self);
  frmnotafiscal_menu.showmodal;

end;

procedure Tfrmprincipal.AdvGlowButton1Click(Sender: TObject);
begin
  frmconhecimento := tfrmconhecimento.create(self);
  frmconhecimento.showmodal;
end;

procedure Tfrmprincipal.AdvGlowButton2Click(Sender: TObject);
begin
  frmmemorando_menu := Tfrmmemorando_menu.CREATE(SELF);
  frmmemorando_menu.SHOWMODAL;
end;

procedure Tfrmprincipal.AdvGlowButton1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
    TAdvGlowButton(sender).SetFocus;
end;

procedure Tfrmprincipal.AdvGlowButton1Enter(Sender: TObject);
begin
  PARQUIVO.Visible :=    FALSE;
  PESTOQUE.Visible :=    FALSE;
//  PMOVIMENTO.VISIBLE :=  TRUE;

end;

procedure Tfrmprincipal.AdvGlowButton2Enter(Sender: TObject);
begin
  PARQUIVO.Visible :=    FALSE;
  PESTOQUE.Visible :=    FALSE;
//  PMOVIMENTO.VISIBLE :=  TRUE;

end;

procedure Tfrmprincipal.AdvGlowButton2MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
    TAdvGlowButton(sender).SetFocus;
end;

end.
