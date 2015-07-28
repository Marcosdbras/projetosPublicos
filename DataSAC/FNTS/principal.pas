unit principal;

interface                                                         

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, XPMan, Mask, ToolEdit, CurrEdit, jpeg,
  Grids, Wwdbigrd, Wwdbgrid, Collection, DB, ExtLabel, Menus,IniFiles,
  TFlatPanelUnit, TFlatGroupBoxUnit, RXCtrls, RXClock, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, Buttons, CheckCPF, ExeInfo, FileCtrl,
  FlCtrlEx;

type
  Tfrmprincipal = class(TForm)
    Image1: TImage;
    eproduto: TEdit;
    XPManifest1: TXPManifest;
    Shape1: TShape;
    Label1: TLabel;
    lproduto: TLabel;
    dsitem: TDataSource;
    rtotalgeral: TRxCalcEdit;
    lstatus: TLabel;
    Label19: TLabel;
    Edit1: TEdit;
    PopupMenu1: TPopupMenu;
    Menu1: TMenuItem;
    FecharCupom1: TMenuItem;
    CancelarCupom1: TMenuItem;
    CancelarItem1: TMenuItem;
    ConsultadePreos1: TMenuItem;
    ConsultadeClientes1: TMenuItem;
    AbrirGaveta1: TMenuItem;
    AcionaBalana1: TMenuItem;
    N1: TMenuItem;
    Sair1: TMenuItem;
    pcampos: TFlatGroupBox;
    Label4: TLabel;
    rqtde: TRxCalcEdit;
    runitario: TRxCalcEdit;
    Label5: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    rtotal: TRxCalcEdit;
    Label7: TLabel;
    icerto: TImage;
    lstatus2: TLabel;
    iexclamacao: TImage;
    iinformacao: TImage;
    Timer1: TTimer;
    ltotal: TRxLabel;
    Foracancelamentodecupom1: TMenuItem;
    estatus: TEdit;
    estatus2: TEdit;
    RxClock1: TRxClock;
    CaixaIndisponvel1: TMenuItem;
    paltera: TFlatPanel;
    AlterarPreo1: TMenuItem;
    query: TZQuery;
    Procura1: TMenuItem;
    ldata_caixa: TLabel;
    PCUPOM: TFlatPanel;
    Label10: TLabel;
    Label11: TLabel;
    Label9: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    wwDBGrid1: TwwDBGrid;
    PCUPOM_TITULO: TLabel;
    Label8: TLabel;
    ierro: TImage;
    Label2: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    LLECF: TLabel;
    Label20: TLabel;
    LOPERADOR: TLabel;
    panel1: TFlatPanel;
    image_logo: TImage;
    SVERMELHO: TImage;
    SVERDE: TImage;
    image3: TImage;
    pajuda: THeaderView;
    Ajuda1: TMenuItem;
    BitBtn1: TBitBtn;
    Image2: TImage;
    Label18: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label40: TLabel;
    image_livre: TImage;
    Label15: TLabel;
    lecf_caixa: TLabel;
    Label45: TLabel;
    lecf_serie: TLabel;
    timerbalanca: TTimer;
    FechamentoemDinheiro1: TMenuItem;
    N2: TMenuItem;
    Label41: TLabel;
    Label46: TLabel;
    CheckCPF1: TCheckCPF;
    qrcontasreceber: TZQuery;
    ExeInfo1: TExeInfo;
    lalteracao: TLabel;
    lversao: TLabel;
    ZQuery1: TZQuery;
    vendido: TZQuery;
    MainMenu1: TMainMenu;
    menu2: TMenuItem;
    troca1: TMenuItem;
    troca2: TMenuItem;
    fl: TFileListBoxEx;
    timer_atualiza: TTimer;
    bcarga: TButton;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    AtualizaPDV1: TMenuItem;
    AtualizarServidor1: TMenuItem;
    patualiza: TFlatPanel;
    ZQuery2: TZQuery;
    qrreceber: TZQuery;
    qrreceber2: TZQuery;
    FecharCNFV1: TMenuItem;
    focar1: TMenuItem;
    procedure eprodutoEnter(Sender: TObject);
    procedure eprodutoKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure rtotalgeralChange(Sender: TObject);
    procedure Menu1Click(Sender: TObject);
    procedure CancelarItem1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure CancelarCupom1Click(Sender: TObject);
    procedure ConsultadePreos1Click(Sender: TObject);
    procedure AbrirGaveta1Click(Sender: TObject);
    procedure FecharCupom1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure AcionaBalana1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Foracancelamentodecupom1Click(Sender: TObject);
    procedure estatusChange(Sender: TObject);
    procedure estatus2Change(Sender: TObject);
    procedure eprodutoChange(Sender: TObject);
    procedure CaixaIndisponvel1Click(Sender: TObject);
    procedure rqtdeKeyPress(Sender: TObject; var Key: Char);
    procedure runitarioKeyPress(Sender: TObject; var Key: Char);
    procedure AlterarPreo1Click(Sender: TObject);
    procedure ConsultadeClientes1Click(Sender: TObject);
    procedure Procura1Click(Sender: TObject);
    procedure Ajuda1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn1Exit(Sender: TObject);
    procedure BitBtn1KeyPress(Sender: TObject; var Key: Char);
    procedure wwDBGrid1DrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure runitarioEnter(Sender: TObject);
    procedure rtotalKeyPress(Sender: TObject; var Key: Char);
    procedure FechamentoemDinheiro1Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure troca2Click(Sender: TObject);
    procedure troca1Click(Sender: TObject);
    procedure timer_atualizaTimer(Sender: TObject);
    procedure bcargaClick(Sender: TObject);
    procedure AtualizaPDV1Click(Sender: TObject);
    procedure AtualizarServidor1Click(Sender: TObject);
    procedure FecharCNFV1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

       (*T E F*)

       Procedure Daruma_Analisa_Retorno();
       Procedure Daruma_Retorno_Impressora();

       function AnalisaRetornoECF: integer;
       function AnalisaRetornoComando(retorno:integer): integer;
       function AnalisaRetorno(retorno:integer): integer;

       function msgcard() : boolean;
       function msgcheck() : boolean;



       (*----------------------------------------*)


      // ---< Procedures bloquear teclado >---
            function UltimoDiaMes(Mdt: TDateTime) : TDateTime;
        procedure AcertaPadraoData;
        procedure mensagem(linha1, linha2,  desenho, mensagem_final :string);
        function autentica(funcao : string;nivel:integer) : boolean;
        function autentica_cancelamento(funcao:string;nivel:integer) : boolean;
        function autentica_caixa(funcao:string;nivel:integer) : boolean;
        Function Cript(Action, Src: String): String;
        function codifica(Tabela:string;qtde_digitos:integer):string;
        function texto_justifica(texto : string; qtde_caracteres : integer; caracter : string; tipo:string) : string;
        function tiraacento ( str: String ): String;
        function zerarcodigo(codigo:string;qtde:integer):string;
        function Locregistro(tabela : TDataSet; valor:string;campo : string):boolean;
        procedure limpaedit (Form:Tform);
        function somenteNumero(sNum:string):string;
        function TestaCnpj(xCNPJ: String):Boolean;
        function ChecaEstado(Dado : string) : boolean;
        function DataDeCriacao(Arq: string): TDateTime;


  end;


var
  frmprincipal: Tfrmprincipal;
  venda_aberta: boolean; // variavel para verificar se existe vem em andamento
  produto_balanca : boolean; // variavel para verificar se o produto eh da balanca
  item : integer;
  numero_cupom : string;
  lancando_contasreceber :boolean;
  continuar : boolean;
  autenticado : boolean;
  codcliente : string;
  
  sel_cliente : boolean;
  numero_venda : string;
  situacao_caixa : string;
  consumidor_codigo, consumidor_nome, consumidor_endereco, consumidor_cidade, consumidor_uf, consumidor_cpf : string;
  toledo_porta, toledo_baudrate, toledo_paridade, toledo_databits, toledo_opcoes : integer;
  i : integer;
  MSG_FINAL : STRING;
  limite_disponivel : real;
  MUDOU_2 : STRING;
  ALTERA_PRECO : BOOLEAN;
  dados_procura : string;
  peso_balanca : real;
  DATA_INICIAL, DATA_FINAL : TDATETIME;

  tempo_atualizacao : integer;

  (*VARIAVEIS IMPLEMENTADAS PARA A FUNCAO TEF*)
  elcheque : boolean; // variavel q controla o se a venda eh cheque ou cartao para impressao do CV
  daruma_retorno: integer;
  continua : boolean;
  iRet : Integer;
  venda : boolean;
  USA_TEF, usa_tecban : BOOLEAN;
  retmsg, TEFFINAL, jafinalizado, foiconectado : BOOLEAN;

  ret_cheque : integer;


implementation


uses modulo, loc_produto, menu, item_cancelar, consulta_preco,
  venda_fechamento, senha_caixa, senha, caixa_fechado, balanca, troco,
  UConstantes, caixa_indisponivel, Math, loc_cliente, cliente_consulta,
  aviso, fechamento_dinheiro, ecf_daruma, ecf_bematech, ecf_sweda,
  ecf_urano, ecf_yanco, unFuncoesTEF, msgcartao, msgcheque;

{$R *.dfm}


(*FUNCOES ACRESCENTADAS PARA O TEF*)

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
       application.messagebox( 'Erro de comunicaÁ„o, a FunÁ„o nao conseguiu enviar o comando','Erro',mb_ok+MB_ICONERROR);
    end;

    If Daruma_Retorno = -1 Then
    begin
       continua := false;
       application.messagebox( 'Erro de ExecuÁ„o da FunÁ„o','Erro',mb_ok+MB_ICONERROR);
    end;

    if Daruma_Retorno = -2  then
    begin
      continua := false;
       application.messagebox( 'Par‚metro inv·lido passado na funÁ„o.!','Erro',mb_ok+MB_ICONERROR);
    end;

    if Daruma_Retorno = -3  then
    begin
      continua := false;
       application.messagebox( 'AlÌquota n„o programada no ECF. !','Erro',mb_ok+MB_ICONERROR);
    end;

    If Daruma_Retorno = -4 Then
    begin
      continua := false;
       application.messagebox( 'A Chave ou Valor no Registry n„o Foi Encontado.!','Erro',mb_ok+MB_ICONERROR);
    end;

    If Daruma_Retorno = -5 Then
    begin
      continua := false;
       application.messagebox( 'Erro ao Abrir a Porta de ComunicaÁ„o','Erro',mb_ok+MB_ICONERROR);
    end;

    If Daruma_Retorno = -6 Then
    begin
      continua := false;
       application.messagebox( 'Impressora desligada ou cabo de comunicaÁ„o desconectado.','Erro',mb_ok+MB_ICONERROR);
    end;

    If Daruma_Retorno = -7 Then
    begin
      continua := false;
       application.messagebox( 'Banco n„o encontrado ou n„o cadastrado no Registry','Erro',mb_ok+MB_ICONERROR);
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
          APPLICATION.MESSAGEBOX(pansichar(daruma_msg),'AtenÁ„o',mb_ok+mb_iconwarning);
       End;

    If Daruma_iACK = 21 Then BEGIN
        APPLICATION.MESSAGEBOX('Erro Fatal na Impressora! A aplicaÁ„o ser· finalizada!','Erro',mb_ok+mb_iconerror);
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
      application.messagebox('Papel est· terminando','AtenÁ„o',mb_ok+mb_iconwarning);
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
        application.messagebox('Erro no relÛgio interno do ECF','Erro',mb_ok+MB_ICONERROR);
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
        venda := true;
      end;
      if iST1 = 1   Then
      begin
        iST1 := iST1 - 1;
        application.messagebox('Par‚metro inv·lido','Erro',mb_ok+MB_ICONERROR);
        continua := false;
      end;
      // Verifica ST2
      if iST2 = 128 Then
      begin
        iST2 := iST2 - 128;
        application.messagebox('Tipo de comando inv·lido','Erro',mb_ok+MB_ICONERROR);
        continua := false;
      end;
      if iST2 = 64  Then
      begin
        iST2 := iST2 - 64;
        application.messagebox('MemÛria Fiscal cheia','Erro',mb_ok+MB_ICONERROR);
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
        application.messagebox('AlÌquota n„o programada','Erro',mb_ok+MB_ICONERROR);
        continua := false;
      end;
      if iST2 = 8   Then
      begin
        iST2 := iST2 - 8;
        application.messagebox('Capacidade de alÌquotas esgotada','Erro',mb_ok+MB_ICONERROR);
        continua := false;
      end;
      if iST2 = 5   Then
        begin
          iST2 := iST2 - 4;
          application.messagebox('Cancelamento n„o permitido! Verifique se o mesmo j· foi cancelado!','Erro',mb_ok+MB_ICONERROR);
          continua := false;
        end;



      if iST2 = 4   Then
        begin
          iST2 := iST2 - 4;
          application.messagebox('Cancelamento n„o permitido pelo ECF','Erro',mb_ok+MB_ICONERROR);
          continua := false;
        end;
      if iST2 = 2   Then
        begin
          iST2 := iST2 - 2;
          application.messagebox('CNPJ/IE n„o programados','Erro',mb_ok+MB_ICONERROR);
          continua := false;
        end;
      if iST2 = 1   Then
        begin
          iST2 := iST2 - 1;
          application.messagebox('Comando n„o executado','Erro',mb_ok+MB_ICONERROR);
          continua := false;
        end;
     END;// ACABANDO O PAPEL....
   end;

    If iACK = 21 Then
      begin
       application.messagebox( pansichar('AtenÁ„o!!!' + #13 + #10 +'A Impressora retornou NAK. O programa ser· abortado.'),'Erro',mb_ok+mb_iconerror);
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
       application.messagebox( 'Erro de ComunicaÁ„o !','Erro',mb_ok+MB_ICONERROR);
    If retorno = -1 Then
       application.messagebox( 'Erro de ExecuÁ„o na FunÁ„o. Verifique!','Erro',mb_ok+MB_ICONERROR);

    if retorno = -2  then
       application.messagebox( 'Par‚metro Inv·lido!','Erro',mb_ok+MB_ICONERROR);

    if retorno = -3  then
       application.messagebox( 'AlÌquota n„o programada!','Erro',mb_ok+MB_ICONERROR);

    If retorno = -4 Then
       application.messagebox( 'Arquivo BemaFI32.INI n„o encontrado. Verifique!','Erro',mb_ok+MB_ICONERROR);

    If retorno = -5 Then
       application.messagebox( 'Erro ao Abrir a Porta de ComunicaÁ„o','Erro',mb_ok+MB_ICONERROR);

    If retorno = -6 Then
       application.messagebox( 'Impressora Desligada ou Desconectada','Erro',mb_ok+MB_ICONERROR);

    If retorno = -7 Then
       application.messagebox( 'Banco N„o Cadastrado no Arquivo BemaFI32.ini','Erro',mb_ok+MB_ICONERROR);

    If retorno = -8 Then
       application.messagebox( 'Erro ao Criar ou Gravar no Arquivo Retorno.txt ou Status.txt','Erro',mb_ok+MB_ICONERROR);

    if retorno = -18 then
       application.messagebox( 'N„o foi possÌvel abrir arquivo INTPOS.001 !','Erro',mb_ok+MB_ICONERROR);

    if retorno = -19 then
       application.messagebox( 'Par‚metro diferentes !','Erro',mb_ok+MB_ICONERROR);

    if retorno = -20 then
       application.messagebox( 'TransaÁ„o cancelada pelo Operador !','Erro',mb_ok+MB_ICONERROR);

    if retorno = -21 then
       application.messagebox( 'A TransaÁ„o n„o foi aprovada !','Erro',mb_ok+MB_ICONERROR);

    if retorno = -22 then
       application.messagebox( 'N„o foi possÌvel terminal a Impress„o !','Erro',mb_ok+MB_ICONERROR);

    if retorno = -23 then
       application.messagebox( 'N„o foi possÌvel terminal a OperaÁ„o !','Erro',mb_ok+MB_ICONERROR);

    if retorno = -24 then
       application.messagebox( 'Forma de pagamento n„o programada.','Erro',mb_ok+MB_ICONERROR);

    if retorno = -25 then
       application.messagebox( 'Totalizador n„o fiscal n„o programado.','Erro',mb_ok+MB_ICONERROR);

    if retorno = -26 then
       application.messagebox( 'TransaÁ„o j· Efetuada !','Erro',mb_ok+MB_ICONERROR);

    if retorno = -28 then
       application.messagebox( 'N„o h· InformaÁıes para serem Impressas !','Erro',mb_ok+MB_ICONERROR);
    result := retorno;
end;

function Tfrmprincipal.AnalisaRetorno(retorno:integer): integer;
begin
  iRet := AnalisaRetornoComando(retorno);
  iRet := AnalisaRetornoECF();
  result := iRet;
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
procedure tfrmprincipal.mensagem(linha1, linha2, desenho, mensagem_final :string);
begin
  BEEP;
  i := 0;
  estatus.text := linha1;
  estatus2.text := linha2;
  icerto.Visible := false;
  ierro.Visible := false;
  iinformacao.Visible := false;
  iexclamacao.visible := false;

  if desenho = 'CERTO' then icerto.visible := true;
  if desenho = 'ERRO' then iERRO.visible := true;
  if desenho = 'EXCLAMACAO' then iEXCLAMACAO.visible := true;
  if desenho = 'INFORMACAO' then iINFORMACAO.visible := true;
  MSG_FINAL := MENSAGEM_FINAL;
  timer1.Enabled := true;
end;

function tfrmprincipal.autentica(funcao:string;nivel:integer) : boolean;
begin
  frmsenha := tfrmsenha.create(self);
  frmsenha.lfuncao.caption := inttostr(nivel)+' - '+funcao;
  frmsenha.showmodal;
  result := autenticado;
end;

function tfrmprincipal.autentica_cancelamento(funcao:string;nivel:integer) : boolean;
begin

  if libera_cancelamanto = '0' then
    begin
      frmsenha := tfrmsenha.create(self);
      frmsenha.lfuncao.caption := inttostr(nivel)+' - '+funcao;
      frmsenha.showmodal;
    end
  else
    autenticado := true;

  result := autenticado;
end;

function tfrmprincipal.autentica_caixa(funcao:string;nivel:integer) : boolean;
begin
  frmsenha_caixa := tfrmsenha_caixa.create(self);
  frmsenha_caixa.lfuncao.caption := inttostr(nivel)+' - '+funcao;
  frmsenha_caixa.showmodal;

  result := autenticado;
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
end;



procedure Tfrmprincipal.AcertaPadraoData;
const arrShortDayNames: array[1..7] of string[3] = ('Dom','Seg','Ter','Qua',
  'Qui','Sex','Sab');
  arrLongDayNames: array[1..7] of string[15] = ('Domingo','Segunda','TerÁa',
  'Quarta','Quinta','Sexta', 'S·bado');
  arrShortMonthNames: array[1..12] of string[3] = ('Jan','Fev','Mar','Abr',
  'Mai','Jun','Jul','Ago','Set','Out','Nov','Dez');
  arrLongMonthNames: array[1..12] of string[15] = ('Janeiro','Fevereiro',
  'MarÁo','Abril','Maio', 'Junho','Julho','Agosto', 'Setembro','Outubro',
  'Novembro','Dezembro');
var ii: integer;
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

function tfrmprincipal.codifica(tabela:string;qtde_digitos:integer):string;
begin
  frmmodulo.qrmestre.close;
  frmmodulo.qrmestre.sql.Clear;
  frmmodulo.qrmestre.sql.add('select * from c000000 where codigo = '''+tabela+'''');
  frmmodulo.qrMestre.Open;
  if frmmodulo.qrmestre.RecNo = 1 then
  begin
    if frmmodulo.qrmestre.FieldByName('sequencia').asinteger < 1 then
    begin
      result := '000001';
      frmmodulo.qrMestre.Edit;
      frmmodulo.qrMestre.fieldbyname('sequencia').asinteger := 2;
      frmmodulo.qrMestre.Post;
    end
    else
    begin
      result := frmprincipal.zerarcodigo(inttostr(frmmodulo.qrMestre.fieldbyname('sequencia').asinteger),qtde_digitos);
      frmmodulo.qrMestre.Edit;
      frmmodulo.qrMestre.fieldbyname('sequencia').asinteger := frmmodulo.qrMestre.fieldbyname('sequencia').asinteger + 1;
      frmmodulo.qrMestre.Post;
    end;
  end
  else
  begin
    Showmessage('N„o foi possÌvel concluir com a operaÁ„o!'+#13+'Erro: CÛdigo de sequÍncia n„o encontrado na tabela de cÛdigos.');
    frmmodulo.Conexao.Rollback;
  end;
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
function tfrmprincipal.tiraacento ( str: String ): String;
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
function tfrmprincipal.zerarcodigo(codigo:string;qtde:integer):string;
begin
  while length(codigo) < qtde do codigo := '0'+codigo;
  result := codigo;
end;

procedure Tfrmprincipal.eprodutoEnter(Sender: TObject);
begin
  eproduto.SelectAll;
end;


procedure Tfrmprincipal.eprodutoKeyPress(Sender: TObject; var Key: Char);
var texto: string;
    i : integer;
    A : STRING;
    CODIGO_ALIQUOTA : STRING;
    v, valort : real;
    aliquota : string;

    NOME_PRODUTO, CODIGO_BARRA : STRING;


var
status, aux: integer;
  Peso: array[0..5]of char;
  P : REAL;
begin
  if key = #13 then
  begin

    if ecf_modelo = 'SWEDA' then
    begin
      arredonda := false;
    end;

    EDIT1.SETFOCUS;
    EPRODUTO.SETFOCUS;

    if eproduto.text = '' then exit;
    IF EPRODUTO.TEXT = ' ' THEN EXIT;
    if not venda_aberta then // verificar se ha cupom em andamento
    begin



      consumidor_nome:= '';
      consumidor_endereco := '';
      consumidor_cidade := '';
      consumidor_uf := '';
      consumidor_cpf := '';

      codcliente := '';
      estatus.text := 'Abrindo Cupom...';

      (*********** DARUMA ***********)
      if ecf_modelo = 'DARUMA' then if frmecf_daruma.ecf_abre_cupom(ecf_modelo,'') = 'ERRO' then exit;
      if ecf_modelo = 'DARUMA' then numero_cupom := frmecf_daruma.ecf_numero_cupom(ecf_modelo);
      (*********** BEMATECH ***********)
      if ecf_modelo = 'BEMATECH' then if frmecf_BEMATECH.ecf_abre_cupom(ecf_modelo,'') = 'ERRO' then exit;
      if ecf_modelo = 'BEMATECH' then numero_cupom := frmecf_BEMATECH.ecf_numero_cupom(ecf_modelo);
      (*********** SWEDA ***********)
      if ecf_modelo = 'SWEDA' then if frmecf_SWEDA.ecf_abre_cupom(ecf_modelo,'') = 'ERRO' then exit;
      if ecf_modelo = 'SWEDA' then numero_cupom := frmecf_SWEDA.ecf_numero_cupom(ecf_modelo);
      (*********** URANO ***********)
      if ecf_modelo = 'URANO' then if frmecf_URANO.ecf_abre_cupom(ecf_modelo,'') = 'ERRO' then exit;
      if ecf_modelo = 'URANO' then numero_cupom := frmecf_URANO.ecf_numero_cupom(ecf_modelo);
      (*********** YANCO ***********)
      if ecf_modelo = 'YANCO' then if frmecf_YANCO.ecf_abre_cupom(ecf_modelo,'') = 'ERRO' then exit;
      if ecf_modelo = 'YANCO' then numero_cupom := frmecf_YANCO.ecf_numero_cupom(ecf_modelo);



      jafinalizado := false;
      elcheque := false;



      frmmodulo.qrItem.close;
      frmmodulo.qritem.SQL.clear;
      frmmodulo.qritem.sql.add('delete from sc00001');
      frmmodulo.qritem.sql.add('where ecf_serial = '''+ frmmodulo.qrconfig.fieldbyname('ECF_SERIAL').AsString +'''');
      frmmodulo.qritem.execsql;
      frmmodulo.qrItem.close;
      frmmodulo.qritem.SQL.clear;
      frmmodulo.qritem.sql.add('select * from sc00001');
      frmmodulo.qritem.sql.add('where ecf_serial = '''+ frmmodulo.qrconfig.fieldbyname('ECF_SERIAL').AsString +'''');
      frmmodulo.qritem.sql.add('order by sequencia');
      frmmodulo.qritem.open;
      estatus.text := 'Cupom Aberto!';
      rqtde.value := 0;
      runitario.value := 0;
      rtotal.value := 0;
      rtotalgeral.Value := 0;
      pcupom.visible := true;
      venda_aberta := true;
      sequencia := 1;
      item := 1;





      numero_cupomx := numero_cupom;

      pcupom_titulo.Caption :='Cupom Fiscal N∫ '+numero_cupom+'        '+data_caixa+'         Cx: '+codigo_caixa;
    end;

  if balanca_venda = '1' then
  begin
  IF balanca_modelo = 'TOLEDO' then
  begin
    try
      if UConstantes.PegaPeso(0,Peso,pchar('c:\')) = cSucesso then
      begin
         try
           peso_balanca := strtofloat(StrPas(Peso))/1000;
         except
           peso_balanca := 0;
         end;
      end
      else
      BEGIN
        peso_balanca := 0;
      END;
    except
      peso_balanca := 0;
    end;
  end;
  end;



    if peso_balanca <> 0 then rqtde.value := peso_balanca else rqtde.value := 1;

    produto_balanca := false;

    estatus.text := 'Imprimindo Item...';
    codigo := eproduto.text;
    a :=  copy(codigo,1,1);
    for I := 1 To Length(A) Do
    begin
      if (A[I] in ['A'..'Z']) then
      begin
        frmloc_produto := tfrmloc_produto.create(self);
        dados_procura := eproduto.text;
        frmloc_produto.edit1.text := eproduto.Text;
        frmloc_produto.ShowModal;
        eproduto.Text := codigo;
        if codigo = '' then
          exit
        ELSE
        BEGIN
          EPRODUTO.Text := CODIGO;
          EXIT;
        END;
      end;
    END;


    if (pos('*',codigo) > 0) or (pos('X',codigo) >0) then
    begin
       if (pos('*',codigo) > 0) then  i := pos('*',codigo);
       if (pos('X',codigo) > 0) then  i := pos('X',codigo);

      if i > 0 then
      begin
        texto := codigo;
        delete(texto,i,30);
        try
          rqtde.Value := strtofloat(texto);
        except
           mensagem('Quantidade','Inv·lida!','EXCLAMACAO','Informe o Produto...');
           exit;
        end;
        codigo := copy(codigo,(i+1),30);
      end
      else
      begin
        i := pos('X',codigo);
        if i > 0 then
        begin
          texto := codigo;
          delete(texto,i,13);
          try
            rqtde.Value := strtofloat(texto);
          except
           mensagem('Quantidade','Inv·lida!','EXCLAMACAO','Informe o Produto...');
           exit;
          end;
          codigo := copy(codigo,(i+1),13);
        end;
      end;
    end;



    // VERIFICAR SE EH PRODUTO PESADO - BALANCA

    if length(codigo) > 6 then
    begin
      if copy(codigo,1,1) = '2' then
      begin
         try
           texto := copy(codigo,7,6);
           rtotal.Value := strtofloat(texto)/100;
         codigo := copy(codigo,2,QTDE_CODIGO_BALANCA);
         codigo := inttostr(strtoint(codigo));

         produto_balanca := true;
         except

           mensagem('CÛdigo de Barras','Inv·lido!','ERRO','Informe o Produto...');
            exit;
         end;



      end
      else
        produto_balanca := false;
    END;


    frmmodulo.qrproduto.close;
    frmmodulo.qrproduto.sql.clear;
    frmmodulo.qrproduto.sql.add('select * from c000025 where codigo = '''+codigo+''' or codbarra = '''+copy(codigo,1,13)+'''');
    frmmodulo.qrproduto.Open;


    if frmmodulo.qrproduto.recordcount > 0 then
    begin
      lproduto.caption := frmmodulo.qrproduto.fieldbyname('produto').asstring;
      IF FRMMODULO.QRPRODUTO.FIELDBYNAME('PRECO_PROMOCAO').ASFLOAT <> 0 THEN
      BEGIN
        IF (DATE >= FRMMODULO.QRPRODUTO.FIELDBYNAME('DATA_PROMOCAO').ASDATETIME) AND (DATE <= FRMMODULO.QRPRODUTO.FIELDBYNAME('FIM_PROMOCAO').ASDATETIME) THEN
        BEGIN
          runitario.value := frmmodulo.qrproduto.fieldbyname('precO_PROMOCAO').asfloat;
        END
        ELSE
          runitario.value := frmmodulo.qrproduto.fieldbyname('precovenda').asfloat;

      END
      ELSE
        runitario.value := frmmodulo.qrproduto.fieldbyname('precovenda').asfloat;



      if ALTERA_PRECO then
      begin
        rqtde.setfocus;
        exit;
      end;
      ///// produto de balanca
      if produto_balanca then
      begin

        rqtde.value := strtofloat(formatfloat('##########0.00',rtotal.value)) / strtofloat(formatfloat('##########0.000',runitario.value));
        rqtde.value := rtotal.value / runitario.value;
      end
      else
      begin  // produto normal

           if rqtde.value = 0 then  rqtde.value := 1;

           if arredonda then
              rtotal.value := runitario.value * rqtde.value
           else
           begin
             texto := floattostr(runitario.value * rqtde.value);
             i := pos(',',texto);
             if i > 0 then
             begin
               delete(texto,i+3,99);
             end;
             rtotal.value := strtofloat(texto);
           end;

      end;
    end
    else
    begin



      frmmodulo.qrcodbarra.close;
      frmmodulo.qrcodbarra.SQL.Clear;
      frmmodulo.qrcodbarra.sql.add('select * from c000055 where codbarra = '''+codigo+'''');
      frmmodulo.qrcodbarra.Open;


      if frmmodulo.qrcodbarra.RecordCount > 0 then
      begin
        frmmodulo.qrproduto.close;
        frmmodulo.qrproduto.sql.clear;
        frmmodulo.qrproduto.sql.add('select * from c000025 where codigo = '''+frmmodulo.qrcodbarra.fieldbyname('codproduto').asstring+'''');
        frmmodulo.qrproduto.Open;
        if frmmodulo.qrproduto.RecordCount > 0 then
        begin
          lproduto.caption := frmmodulo.qrproduto.fieldbyname('produto').asstring;
          IF FRMMODULO.QRPRODUTO.FIELDBYNAME('PRECO_PROMOCAO').ASFLOAT <> 0 THEN
          BEGIN
            IF (DATE >= FRMMODULO.QRPRODUTO.FIELDBYNAME('DATA_PROMOCAO').ASDATETIME) AND (DATE <= FRMMODULO.QRPRODUTO.FIELDBYNAME('FIM_PROMOCAO').ASDATETIME) THEN
            BEGIN
              runitario.value := frmmodulo.qrproduto.fieldbyname('precO_PROMOCAO').asfloat;
            END
            ELSE
              runitario.value := frmmodulo.qrproduto.fieldbyname('precovenda').asfloat;
          END
          ELSE
            runitario.value := frmmodulo.qrproduto.fieldbyname('precovenda').asfloat;


          if produto_balanca then
          begin
            rqtde.value := strtofloat(formatfloat('##########0.00',rtotal.value)) / strtofloat(formatfloat('##########0.000',runitario.value));
            if ecf_modelo = 'SWEDA' then
            begin
              texto :=  formatfloat('###,###,##0.00',(runitario.value * rqtde.value) - trunc(runitario.value * rqtde.value));
              i := pos(',',texto);
              texto := copy(texto,i+2,2);
              if strtofloat(texto) = 0 then
              begin
                arredonda := true;
              end;
            end;
            if arredonda then
              rtotal.value := runitario.value * rqtde.value
            else
            begin
              texto := floattostr(runitario.value * rqtde.value);
              i := pos(',',texto);
              if i > 0 then
              begin
                delete(texto,i+3,99);
              end;
              rtotal.value := strtofloat(texto);
             end;
           end
           else
           begin  // produto normal
             if rqtde.value = 0 then  rqtde.value := 1;
             if ecf_modelo = 'SWEDA' then
             begin
               texto :=  formatfloat('###,###,##0.00',(runitario.value * rqtde.value) - trunc(runitario.value * rqtde.value));
               i := pos(',',texto);
               texto := copy(texto,i+2,2);
               if strtofloat(texto) = 0 then
               begin
                 arredonda := true;
               end;
             end;
             if arredonda then
                rtotal.value := runitario.value * rqtde.value
             else
             begin
               texto := floattostr(runitario.value * rqtde.value);
               i := pos(',',texto);
               if i > 0 then
               begin
                 delete(texto,i+3,99);
               end;
               rtotal.value := strtofloat(texto);
             end;
           end;
        end
        else
        begin
          mensagem('Produto','n„o cadastrado!','EXCLAMACAO','Informe o Produto...');
          frmaviso.showmodal;
          exit;
        end;
      end
      else
      begin
        mensagem('Produto','n„o cadastrado!','EXCLAMACAO','Informe o Produto...');
        frmaviso.showmodal;
        exit;
      end;
   end;


{     If ESTOQUE_NEGATIVO = 0 then
     begin

       zquery1.close;
       zquery1.SQL.clear;
       zquery1.SQL.add('select * from c000100 where codproduto = '''+frmmodulo.qrproduto.fieldbyname('codigo').asstring+'''');
       zquery1.open;

       vendido.close;
       vendido.sql.clear;
       vendido.sql.add('select sum(qtde) vendido from SC00001 where codproduto = '''+frmmodulo.qrproduto.fieldbyname('codigo').asstring+'''');
       vendido.open;


       if (zquery1.fieldbyname('estoque_atual').asfloat + vendido.fieldbyname('vendido').asfloat) < rqtde.value then
       begin
           application.messagebox('Produto sem Estoque, Verifique!','AtenÁ„o',mb_ok+MB_ICONERROR);
           exit;
       end;
     end;

}
        IF (FRMMODULO.QRPRODUTO.FIELDBYNAME('CST').ASSTRING = '060') OR (FRMMODULO.QRPRODUTO.FIELDBYNAME('CST').ASSTRING = '010') OR (FRMMODULO.QRPRODUTO.FIELDBYNAME('CST').ASSTRING = '070') THEN ALIQUOTA := 'FF' ELSE
        IF (FRMMODULO.QRPRODUTO.FIELDBYNAME('CST').ASSTRING = '040') OR (FRMMODULO.QRPRODUTO.FIELDBYNAME('CST').ASSTRING = '030') THEN ALIQUOTA := 'II' ELSE
        IF (FRMMODULO.QRPRODUTO.FIELDBYNAME('CST').ASSTRING = '041') OR (FRMMODULO.QRPRODUTO.FIELDBYNAME('CST').ASSTRING = '050') OR (FRMMODULO.QRPRODUTO.FIELDBYNAME('CST').ASSTRING = '051') OR (FRMMODULO.QRPRODUTO.FIELDBYNAME('CST').ASSTRING = '090') THEN ALIQUOTA := 'NN' ELSE
        BEGIN
           aliquota := formatfloat('00.00',frmmodulo.qrproduto.fieldbyname('aliquota').asfloat);
        end;

        NOME_PRODUTO := frmprincipal.texto_justifica(frmmodulo.qrproduto.fieldbyname('produto').asstring,29,' ','D');
        CODIGO_BARRA := frmmodulo.qrproduto.fieldbyname('codBARRA').asstring;


        IF ecf_modelo = 'DARUMA' then
        begin
          if frmecf_daruma.ecf_vende_item(ecf_modelo,CODIGO_BARRA,NOME_PRODUTO,ALIQUOTA,'F',rqtde.value,2,runitario.value,'$',0,'D',RTOTAL.VALUE) = 'ERRO' THEN
          BEGIN
            estatus.text := 'Erro ao Imprimir!';
            exit;
          END;
        end;
        IF ecf_modelo = 'BEMATECH' then
        begin
          if frmecf_BEMATECH.ecf_vende_item(ecf_modelo,CODIGO_BARRA,NOME_PRODUTO,ALIQUOTA,'F',rqtde.value,2,runitario.value,'$',0,'D',RTOTAL.VALUE) = 'ERRO' THEN
          BEGIN
            estatus.text := 'Erro ao Imprimir!';
            exit;
          END;
        end;
        IF ecf_modelo = 'SWEDA' then
        begin
          if frmecf_SWEDA.ecf_vende_item(ecf_modelo,CODIGO_BARRA,NOME_PRODUTO,ALIQUOTA,'F',rqtde.value,2,runitario.value,'$',0,'D',RTOTAL.VALUE) = 'ERRO' THEN
          BEGIN
            estatus.text := 'Erro ao Imprimir!';
            exit;
          END;
        end;
        IF ecf_modelo = 'URANO' then
        begin
          if frmecf_URANO.ecf_vende_item(ecf_modelo,CODIGO_BARRA,NOME_PRODUTO,ALIQUOTA,'F',rqtde.value,2,runitario.value,'$',0,'D',RTOTAL.VALUE) = 'ERRO' THEN
          BEGIN
            estatus.text := 'Erro ao Imprimir!';
            exit;
          END;
        end;
        IF ecf_modelo = 'YANCO' then
        begin
          if frmecf_YANCO.ecf_vende_item(ecf_modelo,CODIGO_BARRA,NOME_PRODUTO,ALIQUOTA,'F',rqtde.value,2,runitario.value,'$',0,'D',RTOTAL.VALUE) = 'ERRO' THEN
          BEGIN
            estatus.text := 'Erro ao Imprimir!';
            exit;
          END;
        end;









   frmmodulo.qrItem.insert;
   frmmodulo.qritem.fieldbyname('codproduto').asstring := frmmodulo.qrproduto.fieldbyname('codigo').asstring;
   frmmodulo.qritem.fieldbyname('cupom').asstring      := numero_cupom;
   frmmodulo.qritem.fieldbyname('ECF_SERIAL').asstring := frmmodulo.qrconfig.fieldbyname('ECF_SERIAL').AsString;
   FRMMODULO.QRITEM.FIELDBYNAME('ALIQUOTA').ASfloat    := frmmodulo.qrproduto.fieldbyname('aliquota').asfloat;
   FRMMODULO.QRITEM.FIELDBYNAME('CST').ASSTRING        := frmmodulo.qrproduto.fieldbyname('CST').asSTRING;
   frmmodulo.qritem.fieldbyname('produto').asstring    := frmmodulo.qrproduto.fieldbyname('produto').asstring;
   frmmodulo.qritem.fieldbyname('QTDE').asFLOAT        := RQTDE.VALUE;
   frmmodulo.qritem.fieldbyname('UNITARIO').asFLOAT    := RUNITARIO.VALUE;
   frmmodulo.qritem.fieldbyname('TOTAL').asFLOAT       := RTOTAL.VALUE;
   FRMMODULO.QRITEM.FIELDBYNAME('UNIDADE').AsString    := FRMMODULO.QRPRODUTO.FIELDBYNAME('UNIDADE').ASSTRING;
   FRMMODULO.QRITEM.FIELDBYNAME('ITEM').ASSTRING       := FRMPRINCIPAL.zerarcodigo(INTTOSTR(ITEM),3);
   item := item + 1;
   FRMMODULO.QRITEM.FIELDBYNAME('sequencia').ASinteger := sequencia;
   sequencia := sequencia + 1;
   frmmodulo.qritem.post;
   frmmodulo.ConexaoLocal.Commit;
   frmmodulo.qritem.refresh;
   frmmodulo.qritem.last;

   rtotalgeral.value := rtotalgeral.value + rtotal.value;








          eproduto.Text := '';
          APPLICATION.ProcessMessages;
          mensagem('Item Impresso!','','CERTO','Informe o Produto...');







  end;

end;

procedure Tfrmprincipal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
TRY
  IF BALANCA_MODELO = 'TOLEDO' then
  begin
    UConstantes.FechaPorta;
  end;
  if ecf_modelo = 'SWEDA' then
  begin
    FRMECF_SWEDA.ecf_fechar_ecf('SWEDA');
  end;
  if ecf_modelo = 'DARUMA' then frmecf_daruma.destroy;
  if ecf_modelo = 'BEMATECH' then frmecf_bematech.destroy;
  if ecf_modelo = 'URANO' then frmecf_bematech.destroy;
  if ecf_modelo = 'YANCO' then frmecf_bematech.destroy;
  if ecf_modelo = 'SWEDA' then frmecf_sweda.destroy;

  IF VENDA_ABERTA THEN
  BEGIN
     mensagem('Venda Aberta!','Favor verificar!','EXCLAMACAO','Informe o Produto...');
     abort;
  END;
EXCEPT
END;
  action := cafree;
end;

procedure Tfrmprincipal.FormShow(Sender: TObject);
VAR CX99 : STRING;
P : INTEGER;
ArquivoINI:TIniFile;

  vData_Inventario, Data: TDateTime;

  f : textfile;
  slinha : string;

  r:string;
  TERMINA : BOOLEAN;


begin


   // VERIFICAR SE O GP ESTA ATIVO


   IF USA_TEF THEN
   BEGIN

        if FileExists(sTEFKoneKPath+'gp.tmp') then
        begin
          begin
           assignfile(f,sTEFKoneKPath+'gp.tmp');
           reset(f);
           readln(f,slinha);
           closefile(f);
          end;
        end;

        if slinha = 'TECBAN' then
        begin
          itefTecban := 1 ;
          sTEFPath := 'C:\TEF_DISC\'
        end
        else
        begin
          sTEFPath := 'C:\TEF_DIAL\';
          itefTecban := 0;
        end;
        TEFVerificaGerenciadorAtivo;
        TEFVerificaArquivosPendentes;
        TEFVerificaOperacaoPendente;

   end;
















  bcargaclick(Frmprincipal);




  If ecf_modelo <> '' then
  begin
     if ecf_modelo = 'SWEDA' then
     begin
        try
           p := strtoint(copy(ecf_porta,4,1));
           frmecf_sweda.ecf_abre_ecf('SWEDA',P);

          IF frmecf_sweda.ecf_ligada('SWEDA') = 'ERRO' then
          BEGIN
           Application.MessageBox('Houve erro na abertura da porta!','ECF - Sweda',mb_ok+MB_ICONERROR);
          END;
        except
          application.MessageBox('Houve erro na abertura da porta!','ECF - Sweda',mb_ok+MB_ICONERROR);
        end;
     end
     else
     begin
          if ecf_modelo = 'DARUMA'   then r := frmecf_Daruma.ecf_ligada('DARUMA');
          if ecf_modelo = 'BEMATECH' then r := frmecf_Bematech.ecf_ligada('BEMATECH');

          if r <> 'OK' then
          begin
            repeat
             if application.messagebox('ECF n„o est· pronto! Tentar outra vez?','Erro no ECF',mb_yesno+mb_iconerror) = idyes then
             begin
              if ecf_modelo = 'DARUMA'   then r := frmecf_Daruma.ecf_ligada('DARUMA');
              if ecf_modelo = 'BEMATECH' then r := frmecf_Bematech.ecf_ligada('BEMATECH');
             end
             else
             begin
               R := 'OK';
               TERMINA := TRUE;

             end;
            until r = 'OK';

          end;

     end;
  end;

  

  IF TERMINA THEN APPLICATION.Terminate;

  frmmodulo.qrconfig.open;
  lecf_caixa.caption := frmmodulo.qrconfig.fieldbyname('ecf_caixa').asstring;
  lecf_serie.caption := frmmodulo.qrconfig.fieldbyname('ecf_serial').asstring;

  image_logo.top := 107;
  image_logo.Left := 609;

  IMAGE_LOGO.Picture.LoadFromFile('\DataSAC\IMG\LOGO.JPG');
  IMAGE_livre.Picture.LoadFromFile('\DataSAC\IMG\faixa_livre.JPG');

  LPRODUTO.CAPTION := '';
  rqtde.Value := 0;
  runitario.Value := 0;
  RTOTAL.VALUE := 0;

  pANEL1.Top := 0;
  PANEL1.Left := 0;

  ALTERA_PRECO := FALSE;
  pcupom.top := 91;
  pcupom.left := 1;
//  llogo.top := 247;
//  llogo.Left := 0;

  if not autentica('Entrada no Sistema',2) then
  begin
     application.messagebox('Acesso n„o permitido!','AtenÁ„o!',mb_ok+MB_ICONWARNING);
     close;
  end;


      situacao_caixa := 'FECHADO';

      frmmodulo.qrcaixa_operador.close;
      frmmodulo.qrcaixa_operador.SQL.clear;
      frmmodulo.qrcaixa_operador.sql.add('select * from c000045 where codigo = '''+frmmodulo.qrconfig.fieldbyname('cod_caixa_atual').asstring+''' and situacao = 1');
      frmmodulo.qrcaixa_operador.open;

  if (frmmodulo.qrcaixa_operador.fieldbyname('data').AsDateTime <> Date) and (frmmodulo.qrcaixa_operador.fieldbyname('situacao').asinteger = 1) then
    begin
         application.messagebox('A Data do Caixa est· diferente da atual!','AtenÁ„o', MB_IconInformation + MB_OK);
    end;

  FRMMODULO.QRCONFIG.OPEN;
  if frmmodulo.qrconfig.FieldByName('UTILIZA_LANCAMENTO_CAIXA').asstring = 'SIM' THEN
  BEGIN
    if frmmodulo.qrconfig.FieldByName('CAIXA_ATUAL').asstring = 'FECHADO' THEN
    BEGIN
      frmcaixa_fechado := tfrmcaixa_fechado.create(self);
      frmcaixa_fechado.showmodal;
    END
    ELSE
    BEGIN
      frmmodulo.qrcaixa_operador.close;
      frmmodulo.qrcaixa_operador.SQL.clear;
      frmmodulo.qrcaixa_operador.sql.add('select * from c000045 where codigo = '''+frmmodulo.qrconfig.fieldbyname('cod_caixa_atual').asstring+''' and situacao = 1');
      frmmodulo.qrcaixa_operador.open;
      data_caixa := frmmodulo.qrcaixa_operador.fieldbyname('data').asstring;
      codigo_caixa := frmmodulo.qrcaixa_operador.fieldbyname('codigo').asstring;
      SITUACAO_CAIXA := 'ABERTO';
    END;
  end
  else
  begin
      data_caixa := frmmodulo.qrcaixa_operador.fieldbyname('data').asstring;
      codigo_caixa := '000099';
      SITUACAO_CAIXA := 'ABERTO';
  end;
  ldata_caixa.caption := data_caixa;

  LOPERADOR.CAPTION := FRMMODULO.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING + ' '+ FRMMODULO.QRCAIXA_OPERADOR.FIELDBYNAME('NOME').ASSTRING;
  venda_aberta := false;
  frmmodulo.qrItem.close;
  frmmodulo.qritem.SQL.clear;
  frmmodulo.qritem.sql.add('delete from sc00001');
  frmmodulo.qritem.execsql;

  frmmodulo.qrItem.close;
  frmmodulo.qritem.SQL.clear;
  frmmodulo.qritem.sql.add('select * from sc00001');
  frmmodulo.qritem.open;


  IF ECF_MODELO =  '' THEN
  BEGIN
     SVERMELHO.VISIBLE := TRUE;
     SVERMELHO.Visible := FALSE;
  END
  ELSE
  BEGIN
     SVERDE.VISIBLE := TRUE;
     SVERMELHO.Visible := FALSE;
  END;

  LLECF.CAPTION := ECF_MODELO;


  estatus.TEXT := '...';

  pcupom.visible := false;



  if alterar_preco = '2' then
  begin
    ALTERA_PRECO := true;
    paltera.visible := true;
    pcampos.Enabled := true;
  end;
  if alterar_preco = '3' then
  begin
    ALTERA_PRECO := true;
    paltera.visible := true;
    pcampos.Enabled := true;
    paltera.Caption := '[ALTERAR PRECO]';
    runitario.DecimalPlaces := 3;
    runitario.DisplayFormat := '###,###,##0.000';
  end;


    if balanca_modelo = 'TOLEDO' THEN
    BEGIN
      if AbrePorta(toledo_porta+1,toledo_BaudRate,toledo_databits,toledo_paridade) = cSucesso then
        timerbalanca.Enabled := true
      else
         ShowMessage('Falha na Abertura da Porta!!!');

    END;  

  Data := DataDeCriacao('C:\DataSAC\DataVenda.exe');
  LVERSAO.CAPTION := 'Vers„o '+ExeInfo1.fileVersion;
  lalteracao.Caption := 'Atualizado Em: '+DateTimeToStr(Data);


end;

procedure Tfrmprincipal.rtotalgeralChange(Sender: TObject);
begin
  ltotal.caption := formatfloat('###,###,##0.00',rtotalgeral.value);
end;

procedure Tfrmprincipal.Menu1Click(Sender: TObject);
begin
  frmmenu := tfrmmenu.create(self);
  frmmenu.showmodal;
end;

procedure Tfrmprincipal.CancelarItem1Click(Sender: TObject);
begin
  if venda_aberta then
        begin
          frmitem_cancelar := tfrmitem_cancelar.create(self);
          frmitem_cancelar.showmodal;
        end
  else
  begin

           mensagem('Cupom','Fechado!','EXCLAMACAO','...');
           LTOTAL.Caption := '';


  end;
end;

procedure Tfrmprincipal.Sair1Click(Sender: TObject);
begin
  beep;
  if application.messagebox('Confirma a saÌda do sistema?','AtenÁ„o!',mb_yesno+mb_iconquestion) = idyes then close;

end;

procedure Tfrmprincipal.CancelarCupom1Click(Sender: TObject);
var resultado : string;
begin


  if venda_aberta then

  begin

    IF autentica_cancelamento('Cancelar Cupom',4) then

    begin
      if application.messagebox('Confirma o cancelamento do cupom?','AtenÁ„o',mb_yesno+MB_ICONWARNING) = idyes then
      begin

        if ecf_modelo = '' then resultado := 'OK';
        IF ECF_MODELO = 'DARUMA'   then resultado := frmecf_daruma.ecf_cancela_cupom(ecf_modelo);
        IF ECF_MODELO = 'BEMATECH' then resultado := frmecf_BEMATECH.ecf_cancela_cupom(ecf_modelo);
        IF ECF_MODELO = 'SWEDA'    then resultado := frmecf_SWEDA.ecf_cancela_cupom(ecf_modelo);
        IF ECF_MODELO = 'URANO'    then resultado := frmecf_URANO.ecf_cancela_cupom(ecf_modelo);
        IF ECF_MODELO = 'YANCO'    then resultado := frmecf_YANCO.ecf_cancela_cupom(ecf_modelo);

        if resultado = 'OK' then
        begin
          frmmodulo.Conexao.Rollback;
          rqtde.value := 0;
          runitario.value := 0;
          rtotal.value := 0;
          rtotalgeral.Value := 0;
          pcupom.visible := false;
          eproduto.text := '';
          mensagem('Cupom Fiscal','Cancelado!','INFORMACAO','...');
          LTOTAL.CAPTION := '';
          lproduto.CAPTION := '';
          venda_aberta := FALSE;
        end;
      end;
    end;
  end
  else
  begin
    mensagem('Cupom','Fechado!','EXCLAMACAO','...');
    LTOTAL.Caption := '';
  end;

{



  if venda_aberta then
  begin
    IF autentica('Cancelar Cupom',4) then
    begin
      if application.messagebox('Confirma o cancelamento do cupom?','AtenÁ„o',mb_yesno+MB_ICONWARNING) = idyes then
      begin
        IF ECF_MODELO = 'DARUMA'   then resultado := frmecf_daruma.ecf_cancela_cupom(ecf_modelo);
        IF ECF_MODELO = 'BEMATECH' then resultado := frmecf_BEMATECH.ecf_cancela_cupom(ecf_modelo);
        IF ECF_MODELO = 'SWEDA'    then resultado := frmecf_SWEDA.ecf_cancela_cupom(ecf_modelo);
        IF ECF_MODELO = 'URANO'    then resultado := frmecf_URANO.ecf_cancela_cupom(ecf_modelo);
        IF ECF_MODELO = 'YANCO'    then resultado := frmecf_YANCO.ecf_cancela_cupom(ecf_modelo);

        if resultado = 'OK' then
        begin
          frmmodulo.Conexao.Rollback;

          rqtde.value := 0;
          runitario.value := 0;
          rtotal.value := 0;
          rtotalgeral.Value := 0;
          pcupom.visible := false;
          eproduto.text := '';
          mensagem('Cupom Fiscal','Cancelado!','INFORMACAO','...');
          LTOTAL.CAPTION := '';
          lproduto.CAPTION := '';
          venda_aberta := FALSE;
        end;
      end;
    end;
  end
  else
  begin
    mensagem('Cupom','Fechado!','EXCLAMACAO','...');
    LTOTAL.Caption := '';
  end;
 }

end;

procedure Tfrmprincipal.ConsultadePreos1Click(Sender: TObject);
begin
  frmconsulta_preco := tfrmconsulta_preco.create(self);
  frmconsulta_preco.showmodal;
end;
procedure Tfrmprincipal.AbrirGaveta1Click(Sender: TObject);
begin
        IF ECF_MODELO = 'DARUMA'   then FRMECF_DARUMA.ecf_abre_gaveta(ecf_modelo);
        IF ECF_MODELO = 'BEMATECH' then FRMECF_bematech.ecf_abre_gaveta(ecf_modelo);
        IF ECF_MODELO = 'SWEDA'    then FRMECF_sweda.ecf_abre_gaveta(ecf_modelo);
        IF ECF_MODELO = 'URANO'    then FRMECF_urano.ecf_abre_gaveta(ecf_modelo);
        IF ECF_MODELO = 'YANCO'    then FRMECF_yanco.ecf_abre_gaveta(ecf_modelo);

        IF ECF_MODELO = '' THEN
        BEGIN
          FRMMODULO.QRCONFIG.Open;
          IF FRMMODULO.qrconfig.fieldbyname('ecf_modelo').asstring = 'DARUMA'   then FRMECF_DARUMA.ecf_abre_gaveta(FRMMODULO.qrconfig.fieldbyname('ecf_modelo').asstring);
          IF FRMMODULO.qrconfig.fieldbyname('ecf_modelo').asstring = 'BEMATECH' then FRMECF_bematech.ecf_abre_gaveta(FRMMODULO.qrconfig.fieldbyname('ecf_modelo').asstring);
          IF FRMMODULO.qrconfig.fieldbyname('ecf_modelo').asstring = 'SWEDA'    then FRMECF_sweda.ecf_abre_gaveta(FRMMODULO.qrconfig.fieldbyname('ecf_modelo').asstring);
          IF FRMMODULO.qrconfig.fieldbyname('ecf_modelo').asstring = 'URANO'    then FRMECF_urano.ecf_abre_gaveta(FRMMODULO.qrconfig.fieldbyname('ecf_modelo').asstring);
          IF FRMMODULO.qrconfig.fieldbyname('ecf_modelo').asstring = 'YANCO'    then FRMECF_yanco.ecf_abre_gaveta(FRMMODULO.qrconfig.fieldbyname('ecf_modelo').asstring);
        END;


end;

procedure Tfrmprincipal.FecharCupom1Click(Sender: TObject);
begin
  if not venda_aberta then
  begin
    mensagem('Cupom','Fechado!','EXCLAMACAO','...');
    LTOTAL.Caption := '';
        exit;
  end;
  if rtotalgeral.value = 0 then
  begin
    mensagem('Esta Venda','est· zerada!','EXCLAMACAO','Informe o Produto...');
    exit;
  end
  else
  begin
    frmvenda_fechamento := tfrmvenda_fechamento.create(self);
    frmvenda_fechamento.showmodal;
  end;
end;

procedure Tfrmprincipal.FormCreate(Sender: TObject);
var
  ArquivoINI:TIniFile;


begin

  AcertaPadraoData;
  ArquivoINI:=TIniFile.Create(ExtractFilePath(ParamStr(0))+cArquivoINI);
  try
    toledo_porta                   := ArquivoINI.ReadInteger(cSessaoConf,cPorta,0);
    toledo_baudrate                := ArquivoINI.ReadInteger(cSessaoConf,cBaudRate,0);
    toledo_paridade                := ArquivoINI.ReadInteger(cSessaoConf,cParidade,2);
    toledo_databits                := ArquivoINI.ReadInteger(cSessaoConf,cDataBits,0);
    toledo_opcoes     := ArquivoINI.ReadInteger(cSessaoConf,cDiponibi,0);
    if ArquivoINI.ReadBool(cSessaoConf,cContinuo,False) then
    if toledo_porta < 7 then
    BEGIN
       AbrePorta(toledo_porta+1,toledo_BaudRate,toledo_databits,toledo_paridade);
    END;
  finally
    ArquivoINI.Free;
  end;




end;

procedure Tfrmprincipal.AcionaBalana1Click(Sender: TObject);
begin
  timerbalanca.Enabled := false;
  frmbalanca := tfrmbalanca.create(self);
  frmbalanca.showmodal;
  timerbalanca.Enabled := true;
end;

procedure Tfrmprincipal.Timer1Timer(Sender: TObject);
begin
  i := i + 1;
  if i = 2 then
  begin
    icerto.visible :=  false;
    ierro.Visible := false;
    iexclamacao.Visible := false;
    iinformacao.Visible := false;
    estatus.text := MSG_FINAL;
    estatus2.text := '';
    timer1.Enabled := false;
    i := 0;
  end;
end;

procedure Tfrmprincipal.Foracancelamentodecupom1Click(Sender: TObject);
var resultado : string;

begin
  if autentica_cancelamento('Cancelamento de Cupom',4 ) then
  begin
        IF ECF_MODELO = 'DARUMA'   then resultado := frmecf_daruma.ecf_cancela_cupom(ecf_modelo);
        IF ECF_MODELO = 'BEMATECH' then resultado := frmecf_BEMATECH.ecf_cancela_cupom(ecf_modelo);
        IF ECF_MODELO = 'SWEDA'    then resultado := frmecf_SWEDA.ecf_cancela_cupom(ecf_modelo);
        IF ECF_MODELO = 'URANO'    then resultado := frmecf_URANO.ecf_cancela_cupom(ecf_modelo);
        IF ECF_MODELO = 'YANCO'    then resultado := frmecf_YANCO.ecf_cancela_cupom(ecf_modelo);

      if resultado = 'OK' then
      begin
        frmmodulo.Conexao.Rollback;
        rqtde.value := 0;
        runitario.value := 0;
        rtotal.value := 0;
        rtotalgeral.Value := 0;
        pcupom.visible := false;
        eproduto.text := '';
         mensagem('Cupom Fiscal','Cancelado!','INFORMACAO','...');
         LTOTAL.Caption := '';
        lproduto.CAPTION := '';
        venda_aberta := FALSE;
      end;

  end
  else
  begin
    application.messagebox('N„o autorizado!','Erro',mb_ok+MB_ICONERROR);
  end;
end;

procedure Tfrmprincipal.estatusChange(Sender: TObject);
begin
  lstatus.Caption := estatus.Text;
  if estatus.text = '...' then
  begin
    panel1.Visible := true;
  end
  else
  begin
    panel1.Visible := false;
  end;
end;

procedure Tfrmprincipal.estatus2Change(Sender: TObject);
begin
    lstatus2.caption := estatus2.Text;
end;

procedure Tfrmprincipal.eprodutoChange(Sender: TObject);
begin
  IF eproduto.text <> '' THEN
  BEGIN
     estatus.Text := 'Informe o Produto...';
  END
  else
  begin
    if not venda_aberta then
    begin
      estatus.Text := '...';
    end;
  end;
end;

procedure Tfrmprincipal.CaixaIndisponvel1Click(Sender: TObject);
begin
  if venda_aberta then
  begin
    application.messagebox('Existe uma venda em andamento! Favor verificar!','AtenÁ„o',mb_ok+MB_ICONWARNING);
    exit;
  end;
  frmcaixa_indisponivel := tfrmcaixa_indisponivel.create(self);
  frmcaixa_indisponivel.showmodal;
end;

procedure Tfrmprincipal.rqtdeKeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN
  begin
    rtotal.Value :=
    rqtde.Value *
    runitario.value;
    PERFORM(WM_NEXTDLGCTL,0,0);
  end;
end;

procedure Tfrmprincipal.runitarioKeyPress(Sender: TObject; var Key: Char);
var texto: string;
    i : integer;
    A : STRING;
    CODIGO_ALIQUOTA, ALIQUOTA : STRING;
    v, valort : real;
nome_produto, codigo_barra : string;

XTOTAL, XQTDE : Double;
XTOTAL_LETRA : STRING;

UNIDADE : STRING;
begin
  IF KEY = #13 THEN
  BEGIN

    rtotal.Value :=
    rqtde.Value *
    runitario.value;

    eproduto.SetFocus;
    eproduto.Text := '';


        UNIDADE := 'UN';
        IF FRMMODULO.QRPRODUTO.FIELDBYNAME('UNIDADE').ASSTRING <> '' THEN UNIDADE := FRMMODULO.QRPRODUTO.FIELDBYNAME('UNIDADE').ASSTRING;


        IF (FRMMODULO.QRPRODUTO.FIELDBYNAME('CST').ASSTRING = '060') OR (FRMMODULO.QRPRODUTO.FIELDBYNAME('CST').ASSTRING = '010') OR (FRMMODULO.QRPRODUTO.FIELDBYNAME('CST').ASSTRING = '070') THEN ALIQUOTA := 'FF' ELSE
        IF (FRMMODULO.QRPRODUTO.FIELDBYNAME('CST').ASSTRING = '040') OR (FRMMODULO.QRPRODUTO.FIELDBYNAME('CST').ASSTRING = '030') THEN ALIQUOTA := 'II' ELSE
        IF (FRMMODULO.QRPRODUTO.FIELDBYNAME('CST').ASSTRING = '041') OR (FRMMODULO.QRPRODUTO.FIELDBYNAME('CST').ASSTRING = '050') OR (FRMMODULO.QRPRODUTO.FIELDBYNAME('CST').ASSTRING = '051') OR (FRMMODULO.QRPRODUTO.FIELDBYNAME('CST').ASSTRING = '090') THEN ALIQUOTA := 'NN' ELSE
        BEGIN
           aliquota := formatfloat('00.00',frmmodulo.qrproduto.fieldbyname('aliquota').asfloat);
        end;


        NOME_PRODUTO := frmprincipal.texto_justifica(' '+frmmodulo.qrproduto.fieldbyname('produto').asstring,29,' ','D');
        CODIGO_BARRA := frmmodulo.qrproduto.fieldbyname('codBARRA').asstring;

          //  registrar item

        IF ARREDONDA_TOTAL = '1' THEN
        BEGIN
          if (rqtde.value - trunc(rqtde.value) > 0) then
          begin
            XQTDE :=  STRTOFLOAT(FORMATFLOAT('###,###,##0.000', RTOTAL.VALUE / runitario.VALUE));
            XTOTAL := 0;

            WHILE (STRTOFLOAT(FLOATTOSTR(XTOTAL))-STRTOFLOAT(FLOATTOSTR(RTOTAL.VALUE))) <> 0 DO
            BEGIN
              XTOTAL_LETRA := FLOATTOSTR(XQTDE * RUNITARIO.VALUE);
              XTOTAL_LETRA := COPY(XTOTAL_LETRA,0,POS(',',XTOTAL_LETRA)-1) + COPY(XTOTAL_LETRA,POS(',',XTOTAL_LETRA),3);
              XTOTAL := STRTOFLOAT(XTOTAL_LETRA);
              XQTDE := XQTDE + (0.001);
            END;

          end
          else
          begin
            XQTDE := RQTDE.VALUE;
          end;
        END
        ELSE
        BEGIN
          XQTDE := RQTDE.VALUE;
        END;


        IF ecf_modelo = 'DARUMA' then
        begin

           if  FRMECF_DARUMA.ecf_vende_item_completo(ECF_MODELO,CODIGO_BARRA,NOME_PRODUTO,ALIQUOTA, RUNITARIO.VALUE, XQTDE, 0,0, Unidade, RTOTAL.VALUE ) = 'ERRO' THEN
          BEGIN
            estatus.text := 'Erro ao Imprimir!';
            exit;
          END;
       end;
        IF ecf_modelo = 'BEMATECH' then
        begin
          if frmecf_BEMATECH.ecf_vende_item(ecf_modelo,CODIGO_BARRA,NOME_PRODUTO,ALIQUOTA,'F',XQTDE,2,runitario.value,'$',0,'D',RTOTAL.VALUE) = 'ERRO' THEN
          BEGIN
            estatus.text := 'Erro ao Imprimir!';
            exit;
          END;
        end;
        IF ecf_modelo = 'SWEDA' then
        begin
          if frmecf_SWEDA.ecf_vende_item(ecf_modelo,CODIGO_BARRA,NOME_PRODUTO,ALIQUOTA,'F',XQTDE,2,runitario.value,'$',0,'D',RTOTAL.VALUE) = 'ERRO' THEN
          BEGIN
            estatus.text := 'Erro ao Imprimir!';
            exit;
          END;
        end;
        IF ecf_modelo = 'URANO' then
        begin
          if frmecf_URANO.ecf_vende_item(ecf_modelo,CODIGO_BARRA,NOME_PRODUTO,ALIQUOTA,'F',XQTDE,2,runitario.value,'$',0,'D',RTOTAL.VALUE) = 'ERRO' THEN
          BEGIN
            estatus.text := 'Erro ao Imprimir!';
            exit;
          END;
        end;
        IF ecf_modelo = 'YANCO' then
        begin
          if frmecf_YANCO.ecf_vende_item(ecf_modelo,CODIGO_BARRA,NOME_PRODUTO,ALIQUOTA,'F',XQTDE,2,runitario.value,'$',0,'D',RTOTAL.VALUE) = 'ERRO' THEN
          BEGIN
            estatus.text := 'Erro ao Imprimir!';
            exit;
          END;
        end;






        if ecf_modelo = 'SWEDA' then
        begin
          arredonda := false;
        end;


   frmmodulo.qrItem.insert;
   frmmodulo.qritem.fieldbyname('codproduto').asstring       := frmmodulo.qrproduto.fieldbyname('codigo').asstring;
   frmmodulo.qritem.fieldbyname('produto').asstring          := frmmodulo.qrproduto.fieldbyname('produto').asstring;
   frmmodulo.qritem.fieldbyname('QTDE').asFLOAT              := RQTDE.VALUE;
   frmmodulo.qritem.fieldbyname('UNITARIO').asFLOAT          := RUNITARIO.VALUE;
   frmmodulo.qritem.fieldbyname('TOTAL').asFLOAT             := RTOTAL.VALUE;
   FRMMODULO.QRITEM.FIELDBYNAME('UNIDADE').AsString          := FRMMODULO.QRPRODUTO.FIELDBYNAME('UNIDADE').ASSTRING;
   TEXTO := INTTOSTR(ITEM); WHILE LENGTH(TEXTO) < 3 DO texto := '0'+texto;
   FRMMODULO.QRITEM.FIELDBYNAME('ITEM').ASSTRING             := TEXTO;
   FRMMODULO.QRITEM.FIELDBYNAME('sequencia').ASinteger       := sequencia;
   FRMMODULO.QRITEM.FIELDBYNAME('ALIQUOTA').ASfloat          := frmmodulo.qrproduto.fieldbyname('aliquota').asfloat;
   FRMMODULO.QRITEM.FIELDBYNAME('CST').ASSTRING              := frmmodulo.qrproduto.fieldbyname('CST').asSTRING;
   frmmodulo.qritem.fieldbyname('cupom').asstring            := numero_cupom;
   frmmodulo.qritem.fieldbyname('ECF_SERIAL').asstring       := frmmodulo.qrconfig.fieldbyname('ECF_SERIAL').AsString;
   sequencia := sequencia + 1;
   frmmodulo.qritem.post;


   frmmodulo.ConexaoLocal.commit;
   frmmodulo.qritem.refresh;
   frmmodulo.qritem.last;



   item := item + 1;

   rtotalgeral.value := rtotalgeral.value + rtotal.value;

   eproduto.Text := '';



           mensagem('Item Impresso!','','CERTO','Informe o Produto...');
      Application.ProcessMessages;

  END;
end;

procedure Tfrmprincipal.AlterarPreo1Click(Sender: TObject);
begin
  if ALTERA_PRECO then
  begin
    ALTERA_PRECO := false;
    paltera.visible := false;
    pcampos.Enabled := false;
  end
  else
  begin
    ALTERA_PRECO := true;
    paltera.visible := true;
    pcampos.Enabled := true;
  end;
end;

procedure Tfrmprincipal.ConsultadeClientes1Click(Sender: TObject);

var
 Data: TDateTime;
dia, mes, ano: Word;
texto,texto1 : string;

begin

  try
  frmmodulo.Conexao_servidor.Connected := true;
  except
    application.messagebox('Falha na conex„o com o servidor!','Error',mb_ok+mb_iconerror);
    exit;
  end;



  if frmmodulo.conexao_servidor.Connected = false then exit;

  codcliente := '';
  frmloc_cliente := tfrmloc_cliente.create(self);
  frmloc_cliente.showmodal;

  if codcliente <> '' then
  begin

    qrreceber.close;
    qrreceber.sql.clear;
    qrreceber.sql.add('select codcliente,situacao,data_vencimento,valor_original,SUM(VALOR_ATUAL) TOTAL_CLIENTE from c000049 where codcliente = '''+frmmodulo.qrcliente.fieldbyname('codigo').asstring+''' and situacao = 1');
    qrreceber.sql.add('GROUP BY codcliente,situacao,DATA_VENCIMENTO,valor_original');
    qrreceber.Open;

    if verifica_prestacao_atrazo = '1' then // prestaÁ„o em atrazo
      begin
        while not qrreceber.Eof do
          begin
            Data := date - qrreceber.FieldByName('DATA_VENCIMENTO').AsDateTime;
            DecodeDate( Data, ano, mes, dia);

            if data > 0 then
              begin
                texto  := FloatToStr(Data)+' Dias!';
                texto1 := 'R$ ' + Formatfloat('###,###,##0.00',qrreceber.FieldByName('valor_original').AsFloat);
                Break;
              end;
           qrreceber.Next;
         end;
      end;

    frmcliente_consulta := tfrmcliente_consulta.create(self);
    with frmcliente_consulta do
    begin
      lcliente.Caption := frmmodulo.qrcliente.fieldbyname('codigo').asstring+' - '+frmmodulo.qrcliente.fieldbyname('nome').asstring;
      lendereco.Caption := frmmodulo.qrcliente.fieldbyname('endereco').asstring;
      lbairro.Caption := frmmodulo.qrcliente.fieldbyname('bairro').asstring;
      lcidade.Caption := frmmodulo.qrcliente.fieldbyname('cidade').asstring;
      luf.Caption := frmmodulo.qrcliente.fieldbyname('uf').asstring;
      ltelefone.Caption := frmmodulo.qrcliente.fieldbyname('telefone1').asstring + ' / '+frmmodulo.qrcliente.fieldbyname('telefone2').asstring+' / '+frmmodulo.qrcliente.fieldbyname('celular').asstring;
      lcep.Caption := frmmodulo.qrcliente.fieldbyname('cep').asstring;
      lcpf.Caption := frmmodulo.qrcliente.fieldbyname('cpf').asstring;
      lrg.Caption := frmmodulo.qrcliente.fieldbyname('rg').asstring;

      ldias_atrazo.Caption := texto;
      lvalor_prestacao.Caption := texto1;

      LLIMITE.Caption := formatfloat('###,###,##0.00',frmmodulo.qrcliente.fieldbyname('limite').asfloat);


        qrreceber2.close;
        qrreceber2.sql.clear;
        qrreceber2.sql.add('select SUM(VALOR_ATUAL) TOTAL_CLIENTE from c000049 where codcliente = '''+frmmodulo.qrcliente.fieldbyname('codigo').asstring+''' and situacao = 1');
        qrreceber2.Open;

        Ldisponivel.Caption := formatfloat('###,###,##0.00',FRMMODULO.qrcliente.FIELDBYNAME('LIMITE').ASFLOAT - qrreceber2.FIELDBYNAME('TOTAL_CLIENTE').ASFLOAT);
        Lutilizado.Caption := formatfloat('###,###,##0.00',qrreceber2.FIELDBYNAME('TOTAL_CLIENTE').ASFLOAT);


      IF FRMMODULO.QRCLIENTE.FIELDBYNAME('SITUACAO').ASINTEGER = 1 THEN
      BEGIN
         LABEL1.CAPTION := 'APROVADO';
         LABEL1.Font.Color := CLlime;
      END;

      IF FRMMODULO.QRCLIENTE.FIELDBYNAME('SITUACAO').ASINTEGER = 2 THEN
      BEGIN
         LABEL1.CAPTION := 'EM OBS.';
         LABEL1.Font.Color := clAqua;
      END;

      IF FRMMODULO.QRCLIENTE.FIELDBYNAME('SITUACAO').ASINTEGER = 3 THEN
      BEGIN
         LABEL1.CAPTION := 'BLOQUEADO';
         LABEL1.Font.Color := $000080FF;
      END;

      o1.caption := frmmodulo.qrcliente.fieldbyname('obs1').asstring;
      o2.caption := frmmodulo.qrcliente.fieldbyname('obs2').asstring;
      o3.caption := frmmodulo.qrcliente.fieldbyname('obs3').asstring;
      o4.caption := frmmodulo.qrcliente.fieldbyname('obs4').asstring;

    end;

    if (FRMMODULO.qrcliente.FIELDBYNAME('LIMITE').ASFLOAT - qrreceber2.FIELDBYNAME('TOTAL_CLIENTE').ASFLOAT) > 0 then
      frmcliente_consulta.LDISPONIVEL.Font.color := clLIME else
      begin
      frmcliente_consulta.LDISPONIVEL.Font.color := $000080FF ;
      frmcliente_consulta.LDISPONIVEL.Caption := '0,00';
      end;


    frmcliente_consulta.showmodal;
  end;
end;

procedure Tfrmprincipal.Procura1Click(Sender: TObject);
begin
  dados_procura := eproduto.text;
  if dados_procura <> '' then
  begin
        frmloc_produto := tfrmloc_produto.create(self);
        frmloc_produto.edit1.text := dados_procura;
        frmloc_produto.ShowModal;
  end;
end;

procedure Tfrmprincipal.Ajuda1Click(Sender: TObject);
begin
  pajuda.visible := true;
  bitbtn1.setfocus;
end;

procedure Tfrmprincipal.BitBtn1Click(Sender: TObject);
begin
  pajuda.visible := false;
  eproduto.setfocus;
end;

procedure Tfrmprincipal.BitBtn1Exit(Sender: TObject);
begin
  pajuda.visible := false;
  eproduto.setfocus;

end;

procedure Tfrmprincipal.BitBtn1KeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #27 THEN EPRODUTO.SETFOCUS;
end;

procedure Tfrmprincipal.wwDBGrid1DrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin

  IF COPY(frmmodulo.qrItem.FIELDBYNAME('PRODUTO').ASSTRING,1,10) = '**CANCEL**' THEN
  BEGIN
    wwDbgrid1.CanvaS.Font.Color := clRED;
  end;
  wwDbgrid1.DefaultDrawDataCell(Rect, field, State);
end;

procedure Tfrmprincipal.runitarioEnter(Sender: TObject);
begin
  IF PALTERA.Caption = '[ALTERAR PRECO]' THEN
  begin
    rtotal.setfocus;
  end;
end;

procedure Tfrmprincipal.rtotalKeyPress(Sender: TObject; var Key: Char);
begin

 if key = #13 then
 begin
   if rtotal.value <> 0 then
   begin
     rqtde.value := rtotal.value / runitario.value;
     runitarioKeyPress(frmprincipal,key);
   end;
 end;
end;

procedure Tfrmprincipal.FechamentoemDinheiro1Click(Sender: TObject);
begin
  if not venda_aberta then
  begin
    mensagem('Cupom','Fechado!','EXCLAMACAO','...');
    LTOTAL.Caption := '';
        exit;
  end;
  if rtotalgeral.value = 0 then
  begin
    mensagem('Esta Venda','est· zerada!','EXCLAMACAO','Informe o Produto...');
    exit;
  end
  else
  begin
    frmfechamento_dinheiro := tfrmfechamento_dinheiro.create(self);
    frmfechamento_dinheiro.showmodal;
  end;
end;

function tfrmprincipal.Locregistro(tabela : TDataSet; valor:string;campo : string):boolean;
begin
  if tabela.Locate(campo,valor,[loCaseInsensitive]) then
  begin
    result := true;
  end
  else
  begin
    Application.MessageBox('Registro n„o encontrado!','Erro',mb_ok+mb_iconwarning);
    result := false;
  end;


end;

procedure tfrmprincipal.LimpaEdit (Form: TForm);
var
i : Integer;
begin
  for i := 0 to Form.ComponentCount - 1 do
  if Form.Components[i] is TCustomEdit then (Form.Components[i] as TCustomEdit).Clear;
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

 function TfrmPrincipal.ChecaEstado(Dado : string) : boolean;
const
  Estados = 'SPMGRJRSSCPRESDFMTMSGOTOBASEALPBPEMARNCEPIPAAMAPFNACRRRO';
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


procedure Tfrmprincipal.Image1Click(Sender: TObject);
begin
 if lalteracao.Visible = false then
    lalteracao.Visible := true
  else
    lalteracao.Visible := false;

end;

function TfrmPrincipal.DataDeCriacao(Arq: string): TDateTime;
var
  ffd: TWin32FindData;
  dft: DWORD;
  lft: TFileTime;
  h: THandle;
begin
  h := Windows.FindFirstFile(PChar(Arq), ffd);
  try
    if (INVALID_HANDLE_VALUE <> h) then begin
      //FileTimeToLocalFileTime(ffd.ftCreationTime, lft);  // criaÁ„o do arquivo
      FileTimeToLocalFileTime(ffd.ftLastAccessTime, lft );  // ultima alteraÁ„o
      FileTimeToDosDateTime(lft, LongRec(dft).Hi, LongRec(dft).Lo);
      Result := FileDateToDateTime(dft);
    end;
  finally
    Windows.FindClose(h);
  end;
end;

procedure Tfrmprincipal.troca2Click(Sender: TObject);
begin
  If ecf_modelo = '' then
  begin
    frmmodulo.QRCONFIG.OPEN;
    ECF_MODELO := FRMMODULO.qrconfig.fieldbyname('ecf_modelo').asstring;
    SVERDE.Visible := TRUE;
    SVERMELHO.VISIBLE := FALSE;
  end
  else
  begin
    ECF_MODELO := '';
    SVERDE.Visible := FALSE;
    SVERMELHO.VISIBLE := TRUE;
  end;
end;

procedure Tfrmprincipal.troca1Click(Sender: TObject);
begin
  If ecf_modelo = '' then
  begin
    frmmodulo.QRCONFIG.OPEN;
    ECF_MODELO := FRMMODULO.qrconfig.fieldbyname('ecf_modelo').asstring;
    SVERDE.Visible := TRUE;
    SVERMELHO.VISIBLE := FALSE;
  end
  else
  begin
    ECF_MODELO := '';
    SVERDE.Visible := FALSE;
    SVERMELHO.VISIBLE := TRUE;
  end;
end;

procedure Tfrmprincipal.timer_atualizaTimer(Sender: TObject);
begin
  tempo_atualizacao := tempo_atualizacao + 1;
  if venda_aberta = false then
  begin
    if tempo_atualizacao >= 60 then
    begin
      timer_atualiza.enabled := false;



       bcargaclick(frmprincipal);



      timer_atualiza.enabled := true;

    end;
  end;
end;

procedure Tfrmprincipal.bcargaClick(Sender: TObject);
var  txt : textfile;
  entrada : string;
begin


          if venda_aberta then
          begin
            application.messagebox('Venda aberta! ImpossÌvel prosseguir!','AtenÁ„o',mb_ok+mb_iconerror);
            exit;
          end;




      fl.Directory := '\DataSAC\BD\carga';
      fl.Refresh;
      fl.Update;
      while fl.Items.Count > 0 do
      begin
        fl.Selected[0] := true;
        if FileExists(fl.FileName) then
        begin
          Assignfile(txt,fl.FileName);
          reset(txt);
          while not eof(txt) do
          begin
            readln(txt,entrada);


            if copy(entrada,1,10) = 'PRODUTOS  ' THEN
            BEGIN
              IF COPY(ENTRADA,11,1) = '1' THEN // INCLUIR
              BEGIN
                zquery1.close;
                zquery1.sql.clear;
                zquery1.sql.add('select * from c000025 where codigo = '''+COPY(ENTRADA,12,6)+'''');
                zquery1.Open;
                if zquery1.recordcount = 0 then
                begin
                  zquery1.close;
                  zquery1.sql.clear;
                  zquery1.sql.add('insert into c000025');
                  zquery1.sql.add('(codigo,produto,unidade,precovenda,cst,aliquota,codbarra)');
                  zquery1.sql.add('values');
                  zquery1.sql.add('(:codigo,:produto,:unidade,:precovenda,:cst,:aliquota,:codbarra)');
                  zquery1.Params.ParamByName('codigo').asstring     := COPY(ENTRADA,12,6);
                  zquery1.Params.ParamByName('produto').asstring    := COPY(ENTRADA,18,60);
                  zquery1.Params.ParamByName('unidade').asstring    := COPY(ENTRADA,78,5);
                  zquery1.Params.ParamByName('precovenda').asFLOAT  := STRTOFLOAT(COPY(ENTRADA,83,12));
                  zquery1.Params.ParamByName('cst').asstring        := COPY(ENTRADA,95,3);
                  zquery1.Params.ParamByName('aliquota').asFLOAT    := STRTOFLOAT(COPY(ENTRADA,98,5));
                  zquery1.Params.ParamByName('codbarra').asstring   := COPY(ENTRADA,103,13);

                  zquery1.execsql;
                end
                else
                begin
                  zquery1.close;
                  zquery1.sql.clear;
                  zquery1.sql.add('update c000025 set');
                  zquery1.sql.add('codigo = :codigo, produto = :produto, unidade = :unidade, precovenda = :precovenda,');
                  zquery1.sql.add('cst = :cst, aliquota = :aliquota, codbarra = :codbarra');
                  zquery1.sql.add('where codigo = '''+COPY(ENTRADA,12,6)+'''');
                  zquery1.Params.ParamByName('codigo').asstring     := COPY(ENTRADA,12,6);
                  zquery1.Params.ParamByName('produto').asstring    := COPY(ENTRADA,18,60);
                  zquery1.Params.ParamByName('unidade').asstring    := COPY(ENTRADA,78,5);
                  zquery1.Params.ParamByName('precovenda').asFLOAT  := STRTOFLOAT(COPY(ENTRADA,83,12));
                  zquery1.Params.ParamByName('cst').asstring        := COPY(ENTRADA,95,3);
                  zquery1.Params.ParamByName('aliquota').asFLOAT    := STRTOFLOAT(COPY(ENTRADA,98,5));
                  zquery1.Params.ParamByName('codbarra').asstring   := COPY(ENTRADA,103,13);


                  zquery1.execsql;
                end;
              END
              ELSE
              BEGIN
                IF COPY(ENTRADA,11,1) = '2' THEN // ALTERAR
                BEGIN
                  zquery1.close;
                  zquery1.sql.clear;
                  zquery1.sql.add('update c000025 set');
                  zquery1.sql.add('codigo = :codigo, produto = :produto, unidade = :unidade, precovenda = :precovenda,');
                  zquery1.sql.add('cst = :cst, aliquota = :aliquota, codbarra = :codbarra');
                  zquery1.sql.add('where codigo = '''+COPY(ENTRADA,12,6)+'''');
                  zquery1.Params.ParamByName('codigo').asstring     := COPY(ENTRADA,12,6);
                  zquery1.Params.ParamByName('produto').asstring    := COPY(ENTRADA,18,60);
                  zquery1.Params.ParamByName('unidade').asstring    := COPY(ENTRADA,78,5);
                  zquery1.Params.ParamByName('precovenda').asFLOAT  := STRTOFLOAT(COPY(ENTRADA,83,12));
                  zquery1.Params.ParamByName('cst').asstring        := COPY(ENTRADA,95,3);
                  zquery1.Params.ParamByName('aliquota').asFLOAT    := STRTOFLOAT(COPY(ENTRADA,98,5));
                  zquery1.Params.ParamByName('codbarra').asstring   := COPY(ENTRADA,103,13);
                  zquery1.execsql;
                END
                ELSE
                BEGIN
                  IF COPY(ENTRADA,11,1) = '3' THEN // excluir
                  BEGIN
                    ZQUERY1.CLOSE;
                    ZQUERY1.SQL.CLEAR;
                    ZQUERY1.SQL.ADD('DELETE FROM C000025 WHERE CODIGO = '''+COPY(ENTRADA,12,6)+'''');
                    ZQUERY1.ExecSQL;
                  END;
                END;
              END;
            END; // PRODUTO



            if copy(entrada,1,10) = 'CLIENTES  ' THEN
            BEGIN
              IF COPY(ENTRADA,11,1) = '1' THEN // INCLUIR
              BEGIN


                zquery1.close;
                zquery1.sql.clear;
                zquery1.sql.add('select * from c000007 where codigo = '''+COPY(ENTRADA,12,6)+'''');
                zquery1.Open;
                if zquery1.recordcount = 0 then
                begin
                  zquery1.close;
                  zquery1.sql.clear;
                  zquery1.sql.add('insert into c000007');
                  zquery1.sql.add('(codigo,nome,situacao,limite,cpf,rg,endereco,bairro,cidade,uf,codconvenio)');
                  zquery1.sql.add('values');
                  zquery1.sql.add('(:codigo,:nome,:situacao,:limite,:cpf,:rg,:endereco,:bairro,:cidade,:uf,:codconvenio)');
                  zquery1.Params.ParamByName('codigo').asstring     := COPY(ENTRADA,12,6);
                  zquery1.Params.ParamByName('nome').asstring       := COPY(ENTRADA,18,60);
                  zquery1.Params.ParamByName('situacao').asinteger  := strtoint(COPY(ENTRADA,78,1));
                  zquery1.Params.ParamByName('limite').asFLOAT  := STRTOFLOAT(COPY(ENTRADA,79,12));
                  zquery1.Params.ParamByName('cpf').asstring        := COPY(ENTRADA,91,20);
                  zquery1.Params.ParamByName('rg').asstring   := COPY(ENTRADA,111,25);
                  zquery1.Params.ParamByName('endereco').asstring   := COPY(ENTRADA,136,60);
                  zquery1.Params.ParamByName('bairro').asstring   := COPY(ENTRADA,196,30);
                  zquery1.Params.ParamByName('cidade').asstring   := COPY(ENTRADA,226,30);
                  zquery1.Params.ParamByName('uf').asstring   := COPY(ENTRADA,256,2);
                  zquery1.Params.ParamByName('codconvenio').asstring   := COPY(ENTRADA,258,6);
                  zquery1.execsql;
                end
                else
                begin
                  zquery1.close;
                  zquery1.sql.clear;
                  zquery1.sql.add('update c000007 set');
                  zquery1.sql.add('codigo= :codigo,nome=:nome,situacao=:situacao,limite=:limite,cpf=:cpf,rg=:rg,endereco=:endereco,bairro=:bairro,cidade=:cidade,uf=:uf,codconvenio=:codconvenio');
                  zquery1.sql.add('where codigo = '''+COPY(ENTRADA,12,6)+'''');

                  zquery1.Params.ParamByName('codigo').asstring     := COPY(ENTRADA,12,6);
                  zquery1.Params.ParamByName('nome').asstring       := COPY(ENTRADA,18,60);
                  zquery1.Params.ParamByName('situacao').asinteger  := strtoint(COPY(ENTRADA,78,1));
                  zquery1.Params.ParamByName('limite').asFLOAT  := STRTOFLOAT(COPY(ENTRADA,79,12));
                  zquery1.Params.ParamByName('cpf').asstring        := COPY(ENTRADA,91,20);
                  zquery1.Params.ParamByName('rg').asstring   := COPY(ENTRADA,111,25);
                  zquery1.Params.ParamByName('endereco').asstring   := COPY(ENTRADA,136,60);
                  zquery1.Params.ParamByName('bairro').asstring   := COPY(ENTRADA,196,30);
                  zquery1.Params.ParamByName('cidade').asstring   := COPY(ENTRADA,226,30);
                  zquery1.Params.ParamByName('uf').asstring   := COPY(ENTRADA,256,2);
                  zquery1.Params.ParamByName('codconvenio').asstring   := COPY(ENTRADA,258,6);


                  zquery1.execsql;
                end;



              end
              else
              begin
                IF COPY(ENTRADA,11,1) = '2' THEN // ALTERAR
                BEGIN
                  zquery1.close;
                  zquery1.sql.clear;
                  zquery1.sql.add('update c000007 set');
                  zquery1.sql.add('codigo= :codigo,nome=:nome,situacao=:situacao,limite=:limite,cpf=:cpf,rg=:rg,endereco=:endereco,bairro=:bairro,cidade=:cidade,uf=:uf,codconvenio=:codconvenio');
                  zquery1.sql.add('where codigo = '''+COPY(ENTRADA,12,6)+'''');

                  zquery1.Params.ParamByName('codigo').asstring     := COPY(ENTRADA,12,6);
                  zquery1.Params.ParamByName('nome').asstring       := COPY(ENTRADA,18,60);
                  zquery1.Params.ParamByName('situacao').asinteger  := strtoint(COPY(ENTRADA,78,1));
                  zquery1.Params.ParamByName('limite').asFLOAT  := STRTOFLOAT(COPY(ENTRADA,79,12));
                  zquery1.Params.ParamByName('cpf').asstring        := COPY(ENTRADA,91,20);
                  zquery1.Params.ParamByName('rg').asstring   := COPY(ENTRADA,111,25);
                  zquery1.Params.ParamByName('endereco').asstring   := COPY(ENTRADA,136,60);
                  zquery1.Params.ParamByName('bairro').asstring   := COPY(ENTRADA,196,30);
                  zquery1.Params.ParamByName('cidade').asstring   := COPY(ENTRADA,226,30);
                  zquery1.Params.ParamByName('uf').asstring   := COPY(ENTRADA,256,2);
                  zquery1.Params.ParamByName('codconvenio').asstring   := COPY(ENTRADA,258,6);


                  zquery1.execsql;
                END
                ELSE
                BEGIN
                  IF COPY(ENTRADA,11,1) = '3' THEN // excluir
                  BEGIN
                    ZQUERY1.CLOSE;
                    ZQUERY1.SQL.CLEAR;
                    ZQUERY1.SQL.ADD('DELETE FROM C000007 WHERE CODIGO = '''+COPY(ENTRADA,12,6)+'''');
                    ZQUERY1.ExecSQL;
                  END;
                END;
              END;

            end; // clientes


          end;
          Closefile(txt);
          DeleteFile(fl.FileName);
        end;
        fl.Refresh;
        fl.Update;
      end;
      FRMMODULO.CONEXAO.COMMIT;

      tempo_atualizacao := 0;
      timer_atualiza.Enabled := true;


end;

procedure Tfrmprincipal.AtualizaPDV1Click(Sender: TObject);
begin
  bcargaclick(frmprincipal);
end;

procedure Tfrmprincipal.AtualizarServidor1Click(Sender: TObject);
var atualiza_serv : boolean;
begin
          // transmitir os dados para o servidor


          if venda_aberta then
          begin
            application.messagebox('Venda aberta! ImpossÌvel prosseguir!','AtenÁ„o',mb_ok+mb_iconerror);
            exit;
          end;



          atualiza_serv := false;

          try
            if frmmodulo.Conexao_servidor.Connected = false then
            begin
              if application.messagebox('Falha ao conectar ao servidor! Deseja tentar novamente?','Transimiss„o de Dados',mb_yesno+mb_iconerror) = idyes then
              begin
                frmmodulo.Conexao_servidor.Connected := true;
                if frmmodulo.Conexao_servidor.Connected  THEN ATUALIZA_SERV := true;
              end;
            end
            else
              atualiza_serv := true;

            if atualiza_serv then
            begin

              // atualizando as vendas


              patualiza.visible := true;
              application.ProcessMessages;

              zquery1.close;
              zquery1.sql.clear;
              zquery1.sql.add('select * from c000048');
              ZQuery1.open;
              zquery1.first;
              while not zquery1.eof do
              begin
                frmmodulo.qrservidor.close;
                frmmodulo.qrservidor.sql.clear;
                frmmodulo.qrservidor.sql.add('insert into c000048');
                frmmodulo.qrservidor.sql.add('(codigo,data,codcliente,codvendedor,');
                frmmodulo.qrservidor.sql.add('codcaixa,total,subtotal,meio_dinheiro,');
                frmmodulo.qrservidor.sql.add('meio_chequeav, meio_chequeap,meio_cartaocred,');
                frmmodulo.qrservidor.SQL.add('meio_cartaodeb,meio_crediario,desconto,acrescimo,');
                frmmodulo.qrservidor.sql.add('cupom_fiscal,numero_cupom_fiscal)');
                frmmodulo.qrservidor.sql.add('values');
                frmmodulo.qrservidor.sql.add('(:codigo,:datax,:codcliente,:codvendedor,');
                frmmodulo.qrservidor.sql.add(':codcaixa,:TOTAL,:SUBTOTAL,:DINHEIRO,');
                frmmodulo.qrservidor.sql.add(':CHEQUEAV,:CHEQUEAP,:CARTAOCRED,');
                frmmodulo.qrservidor.SQL.add(':CARTAODEB,:CREDIARIO,:DESCONTO,:ACRESCIMO,');
                frmmodulo.qrservidor.sql.add(':cupom_fiscal,:numero_cupom_fiscal)');
                frmmodulo.qrservidor.Params.ParamByName('codigo').asstring    := ZQUERY1.fieldbyname('codigo').asstring;
                frmmodulo.qrservidor.Params.ParamByName('codcliente').asstring    := ZQUERY1.fieldbyname('codcliente').asstring;
                frmmodulo.qrservidor.Params.ParamByName('codCAIXA').asstring    := ZQUERY1.fieldbyname('codcAIXA').asstring;
                frmmodulo.qrservidor.Params.ParamByName('numero_cupom_fiscal').asstring    := ZQUERY1.fieldbyname('numero_cupom_fiscal').asstring;
                frmmodulo.qrservidor.Params.ParamByName('codvendedor').asstring    := ZQUERY1.fieldbyname('codvendedor').asstring;
                frmmodulo.qrservidor.Params.ParamByName('cupom_fiscal').asINTEGER    := ZQUERY1.fieldbyname('cupom_fiscal').asINTEGER;
                frmmodulo.qrservidor.Params.ParamByName('datax').asdatetime   := ZQUERY1.fieldbyname('data').asdatetime;
                frmmodulo.qrservidor.Params.ParamByName('TOTAL').asFLOAT      := ZQUERY1.fieldbyname('total').asfloat;
                frmmodulo.qrservidor.Params.ParamByName('SUBTOTAL').asFLOAT   := ZQUERY1.fieldbyname('subtotal').asfloat;
                frmmodulo.qrservidor.Params.ParamByName('DINHEIRO').asFLOAT   := ZQUERY1.fieldbyname('MEIO_dinheiro').asfloat;
                frmmodulo.qrservidor.Params.ParamByName('CHEQUEAV').asFLOAT   := ZQUERY1.fieldbyname('MEIO_chequeav').asfloat;
                frmmodulo.qrservidor.Params.ParamByName('CHEQUEAP').asFLOAT   := ZQUERY1.fieldbyname('mEIO_chequeap').asfloat;
                frmmodulo.qrservidor.Params.ParamByName('CARTAODEB').asFLOAT  := ZQUERY1.fieldbyname('MEIO_cartaodeb').asfloat;
                frmmodulo.qrservidor.Params.ParamByName('CARTAOCRED').asFLOAT := ZQUERY1.fieldbyname('MEIO_cartaocred').asfloat;
                frmmodulo.qrservidor.Params.ParamByName('CREDIARIO').asFLOAT  := ZQUERY1.fieldbyname('MEIO_crediario').asfloat;
                frmmodulo.qrservidor.Params.ParamByName('DESCONTO').asFLOAT   := ZQUERY1.fieldbyname('desconto').asfloat;
                frmmodulo.qrservidor.Params.ParamByName('ACRESCIMO').asFLOAT  := ZQUERY1.fieldbyname('acrescimo').asfloat;
                frmmodulo.qrservidor.ExecSQL;
                ZQUERY1.Next;
              end;


              zquery1.close;
              zquery1.sql.clear;
              zquery1.sql.add('select * from c000049');
              ZQuery1.open;
              zquery1.first;
              while not zquery1.eof do
              begin
                frmmodulo.qrservidor.Close;
                frmmodulo.qrservidor.SQL.clear;
                frmmodulo.qrservidor.SQL.add('insert into c000049');
                frmmodulo.qrservidor.SQL.add('(codigo,codvenda,codcliente,codvendedor,codcaixa,data_emissao,data_vencimento,valor_original,');
                frmmodulo.qrservidor.SQL.add('valor_atual,documento,tipo,situacao,filtro)');
                frmmodulo.qrservidor.SQL.add('values');
                frmmodulo.qrservidor.SQL.add('(:codigo,:codvenda,:codcliente,:codvendedor,:codcaixa,:data_emissao,:data_vencimento,:valor_original,');
                frmmodulo.qrservidor.SQL.add(':valor_atual,:documento,:tipo,:situacao,:filtro)');
                frmmodulo.qrservidor.Params.ParamByName('codigo').asstring := zquery1.FIELDBYNAME('codigo').ASstring;
                frmmodulo.qrservidor.Params.ParamByName('codvenda').asstring := zquery1.FIELDBYNAME('codvenda').ASstring;
                frmmodulo.qrservidor.Params.ParamByName('codcliente').asstring := zquery1.FIELDBYNAME('codcliente').ASstring;
                frmmodulo.qrservidor.Params.ParamByName('codvendedor').asstring := zquery1.FIELDBYNAME('codvendedor').ASstring;
                frmmodulo.qrservidor.Params.ParamByName('codcaixa').asstring := zquery1.FIELDBYNAME('codcaixa').ASstring;
                frmmodulo.qrservidor.Params.ParamByName('documento').asstring := zquery1.FIELDBYNAME('documento').ASstring;
                frmmodulo.qrservidor.Params.ParamByName('tipo').asstring := zquery1.FIELDBYNAME('tipo').ASstring;
                frmmodulo.qrservidor.Params.ParamByName('filtro').asinteger := zquery1.FIELDBYNAME('filtro').ASinteger;
                frmmodulo.qrservidor.Params.ParamByName('situacao').asinteger := zquery1.FIELDBYNAME('situacao').ASinteger;
                frmmodulo.qrservidor.Params.ParamByName('data_vencimento').asdatetime := zquery1.FIELDBYNAME('data_VENCIMENTO').ASDATETIME;
                frmmodulo.qrservidor.Params.ParamByName('data_emissao').asdatetime := zquery1.fieldbyname('data_emissao').asfloat;
                frmmodulo.qrservidor.PARAMS.ParamByName('valor_atual').ASFLOAT := zquery1.fieldbyname('valor_atual').asfloat;
                frmmodulo.qrservidor.PARAMS.ParamByName('valor_original').ASFLOAT := zquery1.fieldbyname('valor_original').asfloat;
                frmmodulo.qrservidor.ExecSQL;
                ZQUERY1.next;
              END;


              zquery1.close;
              zquery1.sql.clear;
              zquery1.sql.add('select * from c000032');
              ZQuery1.open;
              zquery1.first;
              while not zquery1.eof do
              begin
                FRMMODULO.QRSERVIDOR.CLOSE;
                FRMMODULO.QRSERVIDOR.SQL.CLEAR;
                FRMMODULO.QRSERVIDOR.SQL.Add('insert into c000032');
                FRMMODULO.QRSERVIDOR.SQL.add('(codigo,codnota,serial,numeronota,');
                FRMMODULO.QRSERVIDOR.SQL.add('codproduto,qtde,movimento_estoque,unitario,');
                FRMMODULO.QRSERVIDOR.SQL.add('total,unidade,aliquota,');
                FRMMODULO.QRSERVIDOR.SQL.add('cupom_item,cupom_numero,cupom_modelo,');
                FRMMODULO.QRSERVIDOR.SQL.add('ecf_serie,ecf_caixa,codcliente,codvendedor,movimento,data,cst)');
                FRMMODULO.QRSERVIDOR.SQL.add('values');

                FRMMODULO.QRSERVIDOR.SQL.add('(:codigo,:codnota,:serial,:numeronota,');
                FRMMODULO.QRSERVIDOR.SQL.add(':codproduto,:qtde,:movimento_estoque,:unitario,');
                FRMMODULO.QRSERVIDOR.SQL.add(':total,:unidade,:aliquota,');
                FRMMODULO.QRSERVIDOR.SQL.add(':cupom_item,:cupom_numero,:cupom_modelo,');
                FRMMODULO.QRSERVIDOR.SQL.add(':ecf_serie,:ecf_caixa,:codcliente,:codvendedor,:movimento,:data,:cst)');

                FRMMODULO.QRSERVIDOR.Params.ParamByName('CODIGO').ASSTRING      := ZQUERY1.FIELDBYNAME('CODIGO').ASSTRING;
                FRMMODULO.QRSERVIDOR.Params.ParamByName('CODNOTA').ASSTRING     := ZQUERY1.FIELDBYNAME('CODNOTA').ASSTRING;
                FRMMODULO.QRSERVIDOR.Params.ParamByName('SERIAL').ASSTRING      := ZQUERY1.FIELDBYNAME('SERIAL').ASSTRING;
                FRMMODULO.QRSERVIDOR.Params.ParamByName('NUMERONOTA').ASSTRING  := ZQUERY1.FIELDBYNAME('NUMERONOTA').ASSTRING;
                FRMMODULO.QRSERVIDOR.Params.ParamByName('CODPRODUTO').ASSTRING  := ZQUERY1.FIELDBYNAME('CODPRODUTO').ASSTRING;
                FRMMODULO.QRSERVIDOR.Params.ParamByName('CODCLIENTE').ASSTRING  := ZQUERY1.FIELDBYNAME('CODCLIENTE').ASSTRING;
                FRMMODULO.QRSERVIDOR.Params.ParamByName('CODVENDEDOR').ASSTRING := ZQUERY1.FIELDBYNAME('CODVENDEDOR').ASSTRING;

                FRMMODULO.QRSERVIDOR.Params.ParamByName('QTDE').ASFLOAT := ZQUERY1.FIELDBYNAME('QTDE').ASFLOAT;
                FRMMODULO.QRSERVIDOR.Params.ParamByName('MOVIMENTO_ESTOQUE').ASFLOAT := ZQUERY1.FIELDBYNAME('MOVIMENTO_ESTOQUE').ASFLOAT;
                FRMMODULO.QRSERVIDOR.Params.ParamByName('UNITARIO').ASFLOAT := ZQUERY1.FIELDBYNAME('UNITARIO').ASFLOAT;
                FRMMODULO.QRSERVIDOR.Params.ParamByName('TOTAL').ASFLOAT := ZQUERY1.FIELDBYNAME('TOTAL').ASFLOAT;
                FRMMODULO.QRSERVIDOR.Params.ParamByName('ALIQUOTA').ASFLOAT := ZQUERY1.FIELDBYNAME('ALIQUOTA').ASFLOAT;

                FRMMODULO.QRSERVIDOR.Params.ParamByName('UNIDADE').ASSTRING  := ZQUERY1.FIELDBYNAME('UNIDADE').ASSTRING;
                FRMMODULO.QRSERVIDOR.Params.ParamByName('CST').ASSTRING  := ZQUERY1.FIELDBYNAME('CST').ASSTRING;
                FRMMODULO.QRSERVIDOR.Params.ParamByName('MOVIMENTO').ASINTEGER  := ZQUERY1.FIELDBYNAME('MOVIMENTO').ASINTEGER;
                FRMMODULO.QRSERVIDOR.Params.ParamByName('DATA').ASDATETIME  := ZQUERY1.FIELDBYNAME('DATA').ASDATETIME;
                FRMMODULO.QRSERVIDOR.Params.ParamByName('ECF_CAIXA').ASSTRING  := ZQUERY1.FIELDBYNAME('ECF_CAIXA').ASSTRING;
                FRMMODULO.QRSERVIDOR.Params.ParamByName('ECF_SERIE').ASSTRING  := ZQUERY1.FIELDBYNAME('ECF_SERIE').ASSTRING;
                FRMMODULO.QRSERVIDOR.Params.ParamByName('CUPOM_NUMERO').ASSTRING  := ZQUERY1.FIELDBYNAME('CUPOM_NUMERO').ASSTRING;
                FRMMODULO.QRSERVIDOR.Params.ParamByName('CUPOM_ITEM').ASSTRING  := ZQUERY1.FIELDBYNAME('CUPOM_ITEM').ASSTRING;
                FRMMODULO.QRSERVIDOR.Params.ParamByName('CUPOM_MODELO').ASSTRING  := ZQUERY1.FIELDBYNAME('CUPOM_MODELO').ASSTRING;

                FRMMODULO.QRSERVIDOR.ExecSQL;
                ZQUERY1.next;
              END;

              zquery1.close;
              zquery1.sql.clear;
              zquery1.sql.add('select * from c000044');
              ZQuery1.open;
              zquery1.first;
              while not zquery1.eof do
              begin
                frmmodulo.qrservidor.close;
                frmmodulo.qrservidor.sql.clear;
                frmmodulo.qrservidor.sql.add('insert into c000044');
                frmmodulo.qrservidor.sql.add('(codigo,codcaixa,codoperador,data,entrada,SAIDA,valor,codconta,movimento,historico)');
                frmmodulo.qrservidor.sql.add('values');
                frmmodulo.qrservidor.sql.add('(:codigo,:codcaixa,:codoperador,:data,:entrada,:SAIDA,:valor,:codconta,:movimento,:historico)');
                frmmodulo.qrservidor.params.ParamByName('codigo').asstring := zquery1.fieldbyname('codigo').asstring;
                frmmodulo.qrservidor.params.ParamByName('codcaixa').asstring := zquery1.fieldbyname('codcaixa').asstring;
                frmmodulo.qrservidor.params.ParamByName('codoperador').asstring := zquery1.fieldbyname('codoperador').asstring;
                frmmodulo.qrservidor.params.ParamByName('data').asdatetime := zquery1.fieldbyname('data').asdatetime;
                frmmodulo.qrservidor.params.ParamByName('codconta').asstring := zquery1.fieldbyname('codconta').asstring;
                frmmodulo.qrservidor.params.ParamByName('historico').asstring := zquery1.fieldbyname('historico').asstring;
                frmmodulo.qrservidor.params.ParamByName('MOVIMENTO').asINTEGER := zquery1.fieldbyname('MOVIMENTO').asINTEGER;
                frmmodulo.qrservidor.params.ParamByName('ENTRADA').asFLOAT := zquery1.fieldbyname('ENTRADA').asFLOAT;
                frmmodulo.qrservidor.params.ParamByName('SAIDA').asFLOAT := zquery1.fieldbyname('SAIDA').asFLOAT;
                frmmodulo.qrservidor.params.ParamByName('VALOR').asFLOAT := zquery1.fieldbyname('VALOR').asFLOAT;
                frmmodulo.qrservidor.ExecSQL;
                ZQUERY1.NEXT;

              END;

              zquery1.close;
              zquery1.sql.clear;
              zquery1.sql.add('select * from c000040');
              ZQuery1.open;
              zquery1.first;
              while not zquery1.eof do
              begin
                frmmodulo.qrservidor.close;
                frmmodulo.qrservidor.sql.clear;
                frmmodulo.qrservidor.sql.add('insert into c000040');
                FRMMODULO.QRSERVIDOR.SQL.ADD('(CODIGO,EMISSAO,VENCIMENTO,SITUACAO, CODCLIENTE,TITULAR,CODBANCO, AGENCIA,');
                FRMMODULO.QRSERVIDOR.SQL.ADD(' CONTA,DATA_CONTA,NUMERO,VALOR,DESCONTO,LIQUIDO,CODVENDA,OBS1,OBS2,DESTINO, CODCONTA_CORRENTE,CODCONTA)');
                FRMMODULO.QRSERVIDOR.SQL.ADD('VALUES');
                FRMMODULO.QRSERVIDOR.SQL.ADD('(:CODIGO,:EMISSAO,:VENCIMENTO,:SITUACAO, :CODCLIENTE,:TITULAR,:CODBANCO, :AGENCIA,');
                FRMMODULO.QRSERVIDOR.SQL.ADD(' :CONTA,:DATA_CONTA,:NUMERO,:VALOR,:DESCONTO,:LIQUIDO,:CODVENDA,:OBS1,:OBS2,:DESTINO, :CODCONTA_CORRENTE,:CODCONTA)');
                FRMMODULO.QRSERVIDOR.PARAMS.ParamByName('CODIGO').ASSTRING := ZQUERY1.FIELDBYNAME('CODIGO').ASSTRING;
                FRMMODULO.QRSERVIDOR.PARAMS.ParamByName('EMISSAO').ASDATETIME := ZQUERY1.FIELDBYNAME('EMISSAO').ASDATETIME;
                FRMMODULO.QRSERVIDOR.PARAMS.ParamByName('VENCIMENTO').ASDATETIME := ZQUERY1.FIELDBYNAME('VENCIMENTO').ASDATETIME;
                FRMMODULO.QRSERVIDOR.PARAMS.ParamByName('DATA_CONTA').ASDATETIME := ZQUERY1.FIELDBYNAME('DATA_CONTA').ASDATETIME;
                FRMMODULO.QRSERVIDOR.PARAMS.ParamByName('SITUACAO').ASINTEGER := ZQUERY1.FIELDBYNAME('SITUACAO').ASINTEGER;
                FRMMODULO.QRSERVIDOR.PARAMS.ParamByName('CODCLIENTE').ASSTRING := ZQUERY1.FIELDBYNAME('CODCLIENTE').ASSTRING;
                FRMMODULO.QRSERVIDOR.PARAMS.ParamByName('TITULAR').ASSTRING := ZQUERY1.FIELDBYNAME('TITULAR').ASSTRING;
                FRMMODULO.QRSERVIDOR.PARAMS.ParamByName('CODBANCO').ASSTRING := ZQUERY1.FIELDBYNAME('CODBANCO').ASSTRING;
                FRMMODULO.QRSERVIDOR.PARAMS.ParamByName('AGENCIA').ASSTRING := ZQUERY1.FIELDBYNAME('AGENCIA').ASSTRING;
                FRMMODULO.QRSERVIDOR.PARAMS.ParamByName('CONTA').ASSTRING := ZQUERY1.FIELDBYNAME('CONTA').ASSTRING;
                FRMMODULO.QRSERVIDOR.PARAMS.ParamByName('CODVENDA').ASSTRING := ZQUERY1.FIELDBYNAME('CODVENDA').ASSTRING;
                FRMMODULO.QRSERVIDOR.PARAMS.ParamByName('OBS1').ASSTRING := ZQUERY1.FIELDBYNAME('OBS1').ASSTRING;
                FRMMODULO.QRSERVIDOR.PARAMS.ParamByName('OBS2').ASSTRING := ZQUERY1.FIELDBYNAME('OBS2').ASSTRING;
                FRMMODULO.QRSERVIDOR.PARAMS.ParamByName('DESTINO').ASSTRING := ZQUERY1.FIELDBYNAME('DESTINO').ASSTRING;
                FRMMODULO.QRSERVIDOR.PARAMS.ParamByName('CODCONTA_CORRENTE').ASSTRING := ZQUERY1.FIELDBYNAME('CODCONTA_CORRENTE').ASSTRING;
                FRMMODULO.QRSERVIDOR.PARAMS.ParamByName('CODCONTA').ASSTRING := ZQUERY1.FIELDBYNAME('CODCONTA').ASSTRING;
                FRMMODULO.QRSERVIDOR.PARAMS.ParamByName('valor').asfloat := ZQUERY1.FIELDBYNAME('valor').asfloat;
                FRMMODULO.QRSERVIDOR.PARAMS.ParamByName('desconto').asfloat := ZQUERY1.FIELDBYNAME('desconto').asfloat;
                FRMMODULO.QRSERVIDOR.PARAMS.ParamByName('liquido').asfloat := ZQUERY1.FIELDBYNAME('liquido').asfloat;
                FRMMODULO.QRSERVIDOR.ExecSQL;
                ZQUERY1.NEXT;
              END;




              //********* APAGAR OS DADOS LOCAIS

              zquery1.close;
              zquery1.sql.clear;
              zquery1.sql.add('DELETE from c000048');
              ZQuery1.EXECSQL;

              zquery1.close;
              zquery1.sql.clear;
              zquery1.sql.add('DELETE from c000049');
              ZQuery1.EXECSQL;

              zquery1.close;
              zquery1.sql.clear;
              zquery1.sql.add('DELETE from c000032');
              ZQuery1.EXECSQL;

              zquery1.close;
              zquery1.sql.clear;
              zquery1.sql.add('DELETE from c000044');
              ZQuery1.EXECSQL;

              zquery1.close;
              zquery1.sql.clear;
              zquery1.sql.add('DELETE from c000040');
              ZQuery1.EXECSQL;

            end;
            if frmmodulo.conexao_servidor.Connected then frmmodulo.conexao_servidor.Commit;

            patualiza.Visible := false;
            frmmodulo.ConexaoLocal.Commit;
            FRMMODULO.Conexao.Commit;
          except

            application.messagebox('N„o foi possÌvel atualizar o servidor! Os dados ser„o armazenados para serem transmitidos em uma proxima conex„o!',
                                 'Erro de conex„o!',mb_ok+mb_iconwarning);

              frmmodulo.Conexao_servidor.Connected := false;
              patualiza.visible := FALSE;
              application.ProcessMessages;

          end;
          ///


end;

procedure Tfrmprincipal.FecharCNFV1Click(Sender: TObject);
begin
  if ecf_modelo = 'DARUMA' then frmecf_Daruma.ecf_fecha_CNFV('DARUMA');
  if ecf_modelo = 'BEMATECH' then frmecf_BEMATECH.ecf_fecha_CNFV('BEMATECH');
  if ecf_modelo = 'YANCO' then frmecf_YANCO.ecf_fecha_CNFV('YANCO');
  if ecf_modelo = 'SWEDA' then frmecf_SWEDA.ecf_fecha_CNFV('SWEDA');

  eproduto.setfocus;
end;

end.
