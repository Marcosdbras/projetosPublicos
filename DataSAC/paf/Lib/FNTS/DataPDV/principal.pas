unit principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Registry, ACBrBase, ACBrBAL, ACBrDevice,
  Menus, AdvMenus,ShellApi,
  DB, DBAccess, IBC, Grids, DBGrids, MemDS,
  IniFiles, // unit de leitura do arquivo INI
  ComCtrls, ExtCtrls, RzPanel, AdvGlowButton, frxpngimage,
  AdvOfficeStatusBar, ImgList, AdvShapeButton, AdvPanel, TFlatPanelUnit,
  AdvOfficeStatusBarStylers, AdvMenuStylers, pngimage;

type
  TfrmPrincipal = class(TForm)
    popMovimento: TAdvMainMenu;
    Configuraes1: TMenuItem;
    ECF1: TMenuItem;
    IBCDataSource1: TIBCDataSource;
    Sair1: TMenuItem;
    Movimento1: TMenuItem;
    NotaFiscalMod2SerieD1: TMenuItem;
    query2: TIBCQuery;
    query3: TIBCQuery;
    query: TIBCQuery;
    qrForma: TIBCQuery;
    Balana1: TMenuItem;
    Geral1: TMenuItem;
    Bevel1: TBevel;
    MenuFiscal1: TMenuItem;
    ImageList1: TImageList;
    pstatus: TAdvOfficeStatusBar;
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    ptopo: TAdvOfficeStatusBar;
    Bevel2: TBevel;
    AdvShapeButton1: TAdvShapeButton;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    AdvGlowButton175: TAdvGlowButton;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton4: TAdvGlowButton;
    Panel1: TPanel;
    AdvGlowButton5: TAdvGlowButton;
    AdvShapeButton2: TAdvShapeButton;
    AdvGlowButton6: TAdvGlowButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ECF1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure NotaFiscalMod2SerieD1Click(Sender: TObject);
    procedure MenuFiscal1Click(Sender: TObject);
    procedure Balana1Click(Sender: TObject);
    procedure Geral1Click(Sender: TObject);
    procedure AdvGlowButton3Click(Sender: TObject);
    procedure AdvGlowButton175Click(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure AdvGlowButton4Click(Sender: TObject);
    procedure AdvGlowButton5Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Panel1Resize(Sender: TObject);
    procedure AdvGlowButton6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    stipoimp, sportaimp, sdatabitsimp, sbaudrateimp,
    shandimp, sstopimp, sparityimp, stimeoutimp,
    seqfiscalon, scliente_nome, scliente_cnpj, scliente_ie,
    scliente_im, scliente_endereco, scliente_bairro, scliente_cidade,
    scliente_uf, scliente_cep:string;

    vardir:string;

    cupomini:TInifile;

    arq:TextFile;

//  Funcoes DataPDV
    function codifica(Tabela:string;qtde_digitos:integer):string;
    Procedure ExecutePrograma(Nome, Parametros: String);

// Final funcoes DataPDV

  end;

type
  Tbandeira_tef = (Tef_Redecard, Tef_Visanet, Tef_Amex, Tef_TecBan,
                   Tef_Hipercard, Tef_Tribanco ); // tipo de bandeira tef



var
  frmPrincipal: TfrmPrincipal;

  // configurações

  bPermite_DAV_ECF, // ativa/desativa impressao do dav no ECF
  bPermite_DAV_NF, // ativa/desativa impressao do dav em equipamento nao fiscal
  bPermite_Prevenda, // ativa/desativa fechamento de pre-venda
  bPermite_OS // ativa/desativa ordem de servico
  : boolean;

  // retorno da busca de produtos
  sProd_nome,
  sProd_barra,
  sProd_unidade,
  sProd_CST : string;
  iProd_codigo : integer;
  rProd_aliquota,
  rProd_Estoque,
  rProd_preco,
  rProd_qtde,
  rProd_total,
  rProd_desconto_maximo : real; // armazenar o desconto maximo permitido por produto
  rProd_desconto, rProd_acrescimo: real; // armazenar o desconto e acrescimo no item
  bProd_promocao : boolean; // armazenar se o produto estah em promocao
  sProd_Tamanho: String;
  sProd_Cor: String;

  (* Retorno do ECF *)
  sMsg : string;

  (*Lista de aliquotas*)
   laliquota : TstringList;
  (* Lista de Formas de Pagamento que exigem tratamento especial no fechamento da venda*)
    lForma_Cheque, lForma_Crediario,
    lForma_Cartao, lForma_dinheiro,
    lForma_Convenio :  TStringList;
  (* Dados do ECF *)
    sECF_Serial : string;          // numero de serie do ECF registrado no sistema
    sECF_Caixa : string;           // numero do caixa do ECF
    sECF_Operador : string;        // numero do operadoro do ECF
    iECF_Modelo : integer;         // modelo do ECF - 1 Bema / 2 Daruma / 3 Sweda / 4 Epson
    sECF_Codigo_Sefa : string;     // Cod do ECf na Sefa - Ver sistema VALIDADOR ECF
    sECF_MF_Adicional : string;    // Letra indicativa da MF adicional do ECF (geralmente em branco)
    sECF_Tipo : string;            // tipo do ecf ECF-IF ou ECF-PDV
    sECF_Marca : string;           // Marcao do Ecf
    sECF_Modelo : String;          // Modelo do ECF
    sECF_Versao_SB : string;       // Versao do Software Basico do ECF
    sECF_Data_SB : string;         // data de instalacao do Software basico do ecf
    sECF_Hora_SB : string;         // hora de instalacao do software basico
    sECF_Porta : string;
    sECF_usuario : string;
    sECF_Desconto_Iss : string;
    sECF_Diretorio_MFD : string;   // diretorio onde serah gravado o arquivo mdf feito por sistema
                                   // externo
  (* Informacoes temporarias do ECF *)
    dData_Sistema : Tdatetime;
    dData_Movimento : Tdatetime;
    hHora_Cupom : TDateTime;
    sNumero_Cupom : string;        // numero do coo atual
    sNumero_Venda: string;         // Numero do cupom fiscal atual
    sNumero_contador_cupom : string;        // numero de contador do cupom fiscal atual
    sCOO, sGNF, sGRG, sCDC, sCER : string;  // outros contadores do ecf
  (* Display do Teclado *)
    men: array[0..40] of byte;              // armazenar dados para impressao no display do teclado
  (* Dados da empresa *)
    sEmpresa_CNPJ, sEmpresa_Nome, sEmpresa_IE, sEmpresa_IM,
    sEmpresa_Endereco, sempresa_Rua, sempresa_Numero, sempresa_Bairro,
    sEmpresa_Cidade, sempresa_complemento, sempresa_CEP,
    sempresa_telefone, sempresa_fax, sempresa_email,
    sEmpresa_UF, sempresa_Codigo, sempresa_ibge : string;
  (* Dados da Sistema / Empresa Desenvolvedora *)
    sPAF_Nome : string;
    sPAF_Versao : string;
    sPAF_Executavel : string;
    sPAF_Empresa : string;
    sPAF_CNPJ : string;
    sPAF_IE : string;
    sPAF_IM : string;
    sPAF_Endereco : string;
    sPAF_Telefone : string;
    sPAF_Contato : string;
    sPAF_Laudo : string;
    sPAF_MD5 : string;
  (* Classificar o tipo de venda do sistema*)
    iTipo_Venda : integer;                       // 1 Super 2 Prevenda 3 Posto
  (* Configuraçoes do Banco de Dados *)
    iTamanho_codigo_balanca : integer;           // tamanho do codigo da balaca 4 ou 5
    bTruncar_valor : boolean;                    // config para nao permitir arredondamento do valor total do item
    bMuda_qtde : boolean;                        // configuracao para permitir a edicao da qtde
    bMuda_unitario : boolean;                    // configuracao para permitir a edicao do preco unitario
    bMuda_total: boolean;                        // config para permitir a edicao do valor total (POSTO DE COMBUSTIVEL)
    bSenha_Cancel_Item : boolean;                // exigir senha no cancelamento do item
    bSenha_Cancel_Cupom : boolean;               // exigir senha no cancelamento do cupom

    iBal_time : integer;                         // configuracao de time out da balanca
    sBal_Resposta : string;                      // resposta da balanca
    rBal_peso : real;                            // peso lido na balanca

    iTeclado_Modelo : integer;                   // modelo do teclado
    sTeclado_porta  : string;                    // porta do teclado
    sPasta_foto_produto : string;                // pasta onde estao as fotos dos produtos
    sPasta_config : string;
    sPasta_sistema : string;
    bBusca_foto_produto : boolean;               // buscar foto do produto
    iPesquisa_produto : integer;                 // listar no grid do form produto_consulta os itens filtrados
                                                 // 0 - pesquisa feita no form de pesquisa
                                                 // 1 - pesquisa feita na venda
                                                 // 2 - pesquisa feita no form de consulta de preco



    SDAV_ATUALIZADO : STRING;

  (* Dados do Consumidor *)
    sCli_Nome, sCli_Endereco, sCli_CPF, sCli_Cidade, sCli_Placa, sCli_Km,
    sCli_uf, sCli_codigo, scli_cep, scli_vendedor : string;

  (* Controles de venda *)
    bVenda_Cartao, bVenda_Crediario,
    bVenda_Cheque, bVenda_dinheiro,
    bVenda_Convenio : boolean;                   // verificar se foi vendido nas formas de pagamento que exigem
                                                 // tratamento especial
    bConsulta_crediario : boolean;               // verificar se a consulta na tela de clientes eh para o
                                                 // crediario;
    iCrediario_prestacao : integer;              // armazenar a qtde de prestacoes no crediario
    sCrediario_Nome : string;                    // nome da forma de pagamento de creadiario

    bCadastra_Cheque, bCadastra_Placa,
    bCadastra_Convenio, bCadastra_Crediario : boolean; // verificar cadastramentos no final da venda

    sTotalizador_Crediario,
    sNome_Totalizador_Crediario : string;        // nome do totalizador gravado no ecf para emissao de compro-
                                                 // vante nao fiscal no final da venda em crediario.

    sTotalizador_Recebimento,
    sNome_Totalizador_Recebimento : string;      // nome do totalizador gravado no ecf para emissao de compro-
                                                 // vante nao fiscal no final da venda em crediario.


    sIndice_Sangria, sIndice_Suprimento : string; // numero do indice gravado na impressora da
                                                  // sangria e do suprimento
    iComprovente_Crediario,
    iComprovante_Crediario_produto : integer;    // Imprimir comprovante nao fiscal do crediairo

  (* T E F *)
    bTEF,                                        // verificar se utiliza TEF
    bTEF_Cheque,                                 // Utiliza Consulta de Cheque por TEF
    bTEF_TecBan : boolean;                       // Utiliza bandeira TECBAN
    sForma_Temp : string;                        // armezar temporariamente a forma de pagamento a ser lancada no tef
  (* armazenar bandeira escolhida do tef *)
  Tef_Bandeira_escolhida : Tbandeira_tef;

  (* Outras*)
    bContinua : boolean;                         // Continuar ou nao um procedimento/funcao
    bSair_campo : boolean;                       // forçar a edicao do campo
    bSupervisor_autenticado : boolean;           // verifiar se o supervisor foi logado

  (* Usuario e Senha *)
    sFuncao_Senha : string;                      // determinar a funcao para a tela de senha
    busuario_autenticado : boolean;              // verificar se o usuario foi autenticado
    icodigo_Usuario : integer;                   // codigo do usuario logado
    sNome_Operador : string;                     // nome do operador

  (* Identificacao do consumidor no inicio da venda --> CAt52 *)
    bIdentifica_consumidor : boolean;
    sConsumidor_CPF, sConsumidor_Nome, sConsumidor_Endereco : string;

  (* variaveis de comunicao com o servidor *)
  sServidor_host, sServidor_Base : string;
  bServidor_Conexao : boolean;

  (* Pre venda *)
  bLanca_pre_venda : boolean; // flag para fazer o fechamento da pre-venda
  sPre_Venda_Numero : string; // armazenar o numero da prevenda para ser impresso no final do cupom
  iPre_venda_codigo, iPre_Venda_Vendedor, iPre_venda_cliente : integer; // codigo do vendedor e do cliente
  rPre_venda_desconto, rPre_venda_acrescimo : real; // acrescimo e desconto no fechamento


  (* OS *)
  bLanca_OS : boolean; // flag para fazer o fechamento da OS
  sOS_Numero : string; // armazenar o numero da prevenda para ser impresso no final do cupom
  iOS_codigo, iOS_Vendedor, iOS_cliente : integer; // codigo do vendedor e do cliente
  rOS_desconto, rOS_acrescimo : real; // acrescimo e desconto no fechamento


  (* Abasteciento *)
  bLanca_Abastecimento : boolean; // flag para fazer o fechamento do abastecimento

  (* Mesas *)
  bLanca_Mesa : boolean; // flag para fazer o fechamento da Mesa
  sMesa_Numero : string; // armazenar o numero da mesa para ser impresso no final do cupom
  iMesa_codigo: integer; // codigo da Mesa


  (* dav *)
  sDav_numero : string; // armazenar o numero do dav caso for ser impresso no final do cupom
  iDav_Os_tipo : integer; // tipo de os 0 -> Comum, 1 -> Mecanica

  (* atualizacao de dados *)
  sCarga_data, scarga_hora : string; // data e hora da ultima atualizacao de dados
  Arquivo_ini : TIniFile; // nome do arquivo .ini

  (*flag de retorno da situacao do caixa e da venda*)
  bCaixa_aberto : boolean;
  bativa_venda : boolean;

  // ramo de atividade
  sRamo_Tipo : string;

  // posto - rodape do cupom fiscal
  sPosto_rodape:string;
  iCodigo_abastecimento, ilinha_abastecimento : integer;

  // posto - porta de comunicacao com Concentrador
  iPosto_porta : integer;

  // habilitar mensagem de apuracao de erro no tef
  bHabilita_msg : boolean;

  // verificar se o cupom estah aberto, caso o comando direto da ecf falhe
  bcupom_aberto : boolean;

  // verificar se pede senha ao dar desconto
  isenha_desconto : integer;
  rDesconto_maximo : real;

  // GUIO: Identifica o índice de Substituição, Isento e Não Incidência
  // de acordo com o ECF
  sFF: String; // Substituicao
  sNN: String; // Não Incidência
  sII: String; // Isento

  // GUIO: Verificar se vai pedir para identificar o vendedor no fechamento
  // da venda ou não
  bIdentificarVendedor: Boolean;

  // GUIO: Identifica qual o campo será mostrado na coluna onde ´tem o código
  // de barras na consulta do produto
  // 0 - Código de Barras, 1 - Referência, 2 - Referência+Tamanho+Cor
  iColunaCOnsultaProdutos: Integer;

implementation

uses modulo, funcoes, venda, senha, unECF, msg_Operador, config_ecf, unTEF,
  TEF_Cancelamento, Orcamento, produto_consulta, Orcamento_Abrir, Math,
  caixa_abertura, menu_fiscal, notafiscal_menu, config_balanca, Config,
  UtiSplash, preco_consulta, preco_consultap , ContasReceberNovo;


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

// -------------------------------------------------------------------------- //
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
      result := '0000000001';
      frmmodulo.qrMestre.Edit;
      frmmodulo.qrMestre.fieldbyname('sequencia').asinteger := 2;
      frmmodulo.qrMestre.Post;

    end
    else
    begin
      result := zerar(inttostr(frmmodulo.qrMestre.fieldbyname('sequencia').asinteger),qtde_digitos);
      frmmodulo.qrMestre.Edit;
      frmmodulo.qrMestre.fieldbyname('sequencia').asinteger := frmmodulo.qrMestre.fieldbyname('sequencia').asinteger + 1;
      frmmodulo.qrMestre.Post;
    end;
  end
  else
  begin
    Showmessage('Não foi possível concluir com a operação!'+#13+'Erro: Código de sequência não encontrado na tabela de códigos.');
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if Application.MessageBox('Confirma o encerramento do sistema?','Aviso',
                             mb_yesno+MB_ICONWARNING) = idNo then
  begin
    abort;
  end
  else
  begin
  // liberar array da memoria
   Finalize(men);
   Finalize(tbTotalizador);

  // liberar sistema da memoria
   action := cafree;
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.FormCreate(Sender: TObject);
var  Registro: TRegistry;
begin
  Top := 0;
  Left := 0;

//  bHabilita_msg := true;

  try
    AcertaPadraoData;
  except
  end;
  // Abrindo Registro do Windows para buscar configuracoes
  Registro            := TRegistry.Create;
  Registro.RootKey    := HKEY_LOCAL_MACHINE;
  if Registro.OpenKey('SOFTWARE',false) then
  begin
     if Registro.OpenKey('DataPDV',false) then
     begin
       if Registro.openkey('PDV',false) then
       begin
         (************** BANCO DE DADOS *************)
         if Registro.OpenKey('Dados',false) then
         begin
            // criando o formulario de dados
            frmModulo := TfrmModulo.create(self);

            try
              frmModulo.conexao.Connected := false;
              frmModulo.conexao.Database := Registro.ReadString('Local_Base');
              frmModulo.conexao.Connected := true;

              ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////


              try
                if Registro.ReadString('Servidor_Ativo') = 'SIM' then
                begin
                  frmModulo.Conexao_Servidor.Connected := false;
                  frmModulo.Conexao_Servidor.Server := Registro.ReadString('Servidor_Host');
                  frmModulo.Conexao_Servidor.Database := Registro.ReadString('Servidor_Base');
                  frmModulo.Conexao_Servidor.Connected := true;
                  bServidor_Conexao := true;
                end
                else
                begin
                  bServidor_Conexao := false;
                end;
              except
                bServidor_Conexao := false;
         //     showmessage('Debug Info: Conexão Servidor ');
              end;
            except
               application.messagebox(pansichar('Não foi possível conectar ao banco de dados local!'+#13+
                                                'Caminho: '+Registro.ReadString('Local_Base')+#13+
                                                ' O sistema será finalizado!'),'Erro',mb_ok+mb_iconerror);
             Application.Terminate;
               exit;
            end;


         end
         else
         begin
             application.messagebox('Houve falha na leitura do registro do banco de dados!'+
             ' O sistema será finalizado!','Erro',mb_ok+mb_iconerror);
             Application.Terminate;
             exit;
         end;
         Registro.CloseKey;
         Registro.OpenKey('SOFTWARE',false);
         Registro.OpenKey('DataPDV',false);
         Registro.OpenKey('PDV',false);
         (*************** BALANCA ******************)
         if Registro.OpenKey('Balanca',false) then
         begin
           frmModulo.Balanca.Desativar;
           // Modelos --> 0 --> Nenhum , 1 --> Filizola, 2 --> Toledo
           IF strtoint(Registro.ReadString('Modelo')) <> 0 THEN
           BEGIN
             frmmodulo.balanca.Modelo  := TACBrBALModelo( strtoint(Registro.ReadString('Modelo')) );
             frmmodulo.balanca.Device.HandShake :=
               TACBrHandShake( strtoint(Registro.ReadString('Handshaking')) );
             frmmodulo.balanca.Device.Parity :=
               TACBrSerialParity( strtoint(Registro.ReadString('Parity')) );
             frmmodulo.balanca.Device.Stop :=
               TACBrSerialStop( strtoint(Registro.ReadString('Stopbits')) );
             frmmodulo.balanca.Device.Porta := Registro.ReadString('Porta');
             frmmodulo.balanca.Device.Data := strtoint(Registro.ReadString('Databits'));
             frmmodulo.balanca.Device.Baud :=  strtoint(Registro.ReadString('Baudrate'));
             ibal_time := strtoint(Registro.ReadString('Timeout'));
           END;
         end
         else
         begin
           application.messagebox('Houve falha na leitura do registro da Balança!'+
           ' Favor contactar o suporte!','Erro',mb_ok+mb_iconerror);
         end;
         Registro.CloseKey;
         (************* Final balanca ************)

         (********* TECLADO *************)
         Registro.OpenKey('SOFTWARE',false);
         Registro.OpenKey('DataPDV',false);
         Registro.OpenKey('PDV',false);
         if Registro.OpenKey('Teclado',false) then
         begin
           iteclado_modelo:= strtoint(Registro.ReadString('Modelo'));
           steclado_porta := Registro.ReadString('Porta');
         end
         else
         begin
           application.messagebox('Houve falha na leitura do registro do teclado! '+
           'Favor contactar o suporte!','Erro',mb_ok+mb_iconerror);
         end;
         Registro.CloseKey;
         (********* Final do TECLADO *************)

         (********* ECF *************)
         Registro.OpenKey('SOFTWARE',false);
         Registro.OpenKey('DataPDV',false);
         Registro.OpenKey('PDV',false);
         if Registro.OpenKey('ECF',false) then
         begin
           sECF_Porta := Registro.ReadString('Porta');
         end
         else
         begin
           application.messagebox('Houve falha na leitura do registro do ECF! '+
           'Favor contactar o suporte!','Erro',mb_ok+mb_iconerror);
         end;
         Registro.CloseKey;
       end
       else
       begin
          application.messagebox('Houve falha na leitura do registro do PDV!'+
          ' Favor contactar o suporte!','Erro',mb_ok+mb_iconerror);
       end;
     end
     else
     begin
       application.messagebox('Houve falha na leitura do registro de configurações!'+
       ' Favor contactar o suporte!','Erro',mb_ok+mb_iconerror);
       application.Terminate;
     end;
  end
  else
  begin
    application.messagebox('Houve falha na leitura do registro de configurações!'+
    ' Favor contactar o suporte!','Erro',mb_ok+mb_iconerror);
    application.Terminate;
  end;

  // abrir arquivo .ini


  // Buscar dados na tabela PAF


  // abrir arquivo .ini
  Arquivo_ini := TIniFile.Create('C:\DATASAC\paf\cfg\DataPaf.dll');

  //[PAF]
  //NOME
  sPAF_Nome := Cript('D',Arquivo_ini.ReadString('D37DEB63','C84EC847C0',''));
  //VERSAO
  sPAF_Versao:= Cript('D',Arquivo_ini.ReadString('D37DEB63','49C659FA0271F3','') );
  //MD5
  sPAF_MD5:= Cript('D',Arquivo_ini.ReadString('D37DEB63','2329383C','') );
  //LAUDO
  sPAF_LAUDO:= Cript('D',Arquivo_ini.ReadString('D37DEB63','2329383D','') );

  pStatus.Panels[1].Text := sPAF_Nome + ' - ' + sPAF_Versao;
  pStatus.Panels[2].Text := 'Laudo PAF-ECF: ' + sPAF_Laudo;

  //EXECUTAVEL
  sPaf_Executavel := Cript('D',Arquivo_ini.ReadString('D37DEB63','75E369FF0F569991D64CD1','') );


  //[EMPRESA DESENVOLVEDORA]
  //NOME
  sPAF_Empresa := Cript('D',Arquivo_ini.ReadString('F764E464FA72F673A2B6B253DE145AE870948F9DA2B9B1','61F613313A',''));
  //CNPJ
  sPAF_CNPJ := Cript('D',Arquivo_ini.ReadString('F764E464FA72F673A2B6B253DE145AE870948F9DA2B9B1','031F38D968',''));
  //IE
  sPAF_IE := Cript('D',Arquivo_ini.ReadString('F764E464FA72F673A2B6B253DE145AE870948F9DA2B9B1','75E778',''));
  //IM
  sPAF_IM := Cript('D',Arquivo_ini.ReadString('F764E464FA72F673A2B6B253DE145AE870948F9DA2B9B1','8696B6',''));
  //TELEFONE
  sPAF_Telefone := Cript('D',Arquivo_ini.ReadString('F764E464FA72F673A2B6B253DE145AE870948F9DA2B9B1','8FBA55F07AF271F40B',''));
  //ENDERECO
  SPAF_Endereco := Cript('D',Arquivo_ini.ReadString('F764E464FA72F673A2B6B253DE145AE870948F9DA2B9B1','8FBA55F07AF271F40c',''));
  //CONTATO
  sPAF_Contato := Cript('D',Arquivo_ini.ReadString('F764E464FA72F673A2B6B253DE145AE870948F9DA2B9B1','8FBA55F07AF271F40D',''));


  //[ECF]
  //MARCA
  sECF_Marca := Cript('D',Arquivo_ini.ReadString('B9A7BF57','13392FD058AB','' ));
  // COD DO ECF
  iECF_Modelo := strtoint(Cript('D',Arquivo_ini.ReadString('B9A7BF57','13392FD058AC','0')));
  //MODELO
  sECF_Modelo := Cript('D',Arquivo_ini.ReadString('B9A7BF57','A4A8A2B7B0CE2D',''));
  //TIPO
  sECF_Tipo := Cript('D',Arquivo_ini.ReadString('B9A7BF57','6E9BB153EE',''));
  //SERIAL
  sECF_Serial := Cript('D',Arquivo_ini.ReadString('B9A7BF57','D875EF1310639C',''));
  //NUMERO
  sECF_Caixa := Cript('D',Arquivo_ini.ReadString('B9A7BF57','7299BB58D11656',''));
  //CNIF
  sECF_Codigo_Sefa := Cript('D',Arquivo_ini.ReadString('B9A7BF57','5CC640D853',''));
  //USUARIO
  sECF_Usuario := Cript('D',Arquivo_ini.ReadString('B9A7BF57','B655FD020F53AFB5',''));
  //PERMITE_ISSQN
  sECF_Desconto_Iss := Cript('D',Arquivo_ini.ReadString('B9A7BF57','B058C84ADB1758D607001A38CF27',''));
  //DIRETORIO_:= Cript('D',Arquivo_FISCAL
  sECF_Diretorio_MFD := Cript('D',Arquivo_ini.ReadString('B9A7BF57','BC58F41617599BA6DE7E948094DC020A2526D354D36AE6609C',''));


  //[USUARIO]

  //NOME
  sEmpresa_Nome := Cript('D',Arquivo_ini.ReadString('4CF8193FCC2D45DF','5EF5100C1D',''));
  //CNPJ
  sEmpresa_CNPJ:= Cript('D',Arquivo_ini.ReadString('4CF8193FCC2D45DF','C855F6162C',''));
  //IE
  sEmpresa_IE:= Cript('D',Arquivo_ini.ReadString('4CF8193FCC2D45DF','292B25',''));
  //IM
  sEmpresa_IM:= Cript('D',Arquivo_ini.ReadString('4CF8193FCC2D45DF','3ADA7D',''));
  //ENDERECO
  sEmpresa_Endereco:= Cript('D',Arquivo_ini.ReadString('4CF8193FCC2D45DF','3ADA7E',''))+' '+
  {BAIRRO}            Cript('D',Arquivo_ini.ReadString('4CF8193FCC2D45DF','3ADA7F',''))+' '+
  {CIDADE}            Cript('D',Arquivo_ini.ReadString('4CF8193FCC2D45DF','3ADA7G',''))+' '+
  {UF}                Cript('D',Arquivo_ini.ReadString('4CF8193FCC2D45DF','3ADA7H',''))+' '+
  {CEP}               Cript('D',Arquivo_ini.ReadString('4CF8193FCC2D45DF','3ADA7I',''));
  // UF
  sEmpresa_UF := Cript('D',Arquivo_ini.ReadString('4CF8193FCC2D45DF','3ADA7H',''));

  // TIPO DE ATIVIDADE
  // 1 NORMAL, 2 AUTOPECAS , 3 POSTO , 4 RESTAURANTE
  sRamo_Tipo := Cript('D',Arquivo_ini.ReadString('4CF8193FCC2D45DF','3ADA80',''));

  //[OUTRAS OPCOES]
  //PRE-VENDA
  if Cript('D',Arquivo_ini.ReadString('43CB7499A7DA1D76F41511353CB6','D67E859B84E81D2055C6','')) = 'ATIVADO' then
    bPermite_Prevenda := true
  else
    bPermite_Prevenda := false;

  //DAV_ECF
  if Cript('D',Arquivo_ini.ReadString('43CB7499A7DA1D76F41511353CB6','78E57299B4CB3CC9','')) = 'ATIVADO' then
    bPermite_DAV_ECF := true
  ELSE
    bPermite_DAV_ECF := false;

  //DAV_NF
  if Cript('D',Arquivo_ini.ReadString('43CB7499A7DA1D76F41511353CB6','6AF76C93BE3FB6','')) = 'ATIVADO' then
    bPermite_DAV_NF := true
  ELSE
    bPermite_DAV_NF := false;

  //OS
  if Cript('D',Arquivo_ini.ReadString('43CB7499A7DA1D76F41511353CB6','6AF76C93BE3FB7','')) = 'ATIVADO' then
    bPermite_OS := true
  ELSE
    bPermite_OS := false;

  //OS  - tipo de dav
  if Cript('D',Arquivo_ini.ReadString('43CB7499A7DA1D76F41511353CB6','6AF76C93BE3FC8','')) = 'ATIVADO' then
    iDav_Os_tipo := 1
  ELSE
    iDav_Os_tipo := 0;

  // liberar arquivo ini da memoria
  Arquivo_ini.Free;

  // codigo da empresa
  IF bServidor_Conexao THEN
  BEGIN
    frmmodulo.qrfilial.open;
    sempresa_Codigo := frmModulo.qrfilial.fieldbyname('codigo').asstring;
    sempresa_ibge := frmModulo.qrfilial.fieldbyname('COD_MUNICIPIO_IBGE').asstring;
    sempresa_Rua := frmModulo.qrfilial.fieldbyname('endereco').asstring;
    sempresa_Numero := frmModulo.qrfilial.fieldbyname('numero').asstring;
    sempresa_Bairro := frmModulo.qrfilial.fieldbyname('bairro').asstring;
    sEmpresa_Cidade := frmModulo.qrfilial.fieldbyname('cidade').asstring;
    sempresa_complemento := frmModulo.qrfilial.fieldbyname('complemento').asstring;
    sempresa_CEP := frmModulo.qrfilial.fieldbyname('Cep').asstring;
    sempresa_telefone := frmModulo.qrfilial.fieldbyname('telefone').asstring;
    sempresa_fax := frmModulo.qrfilial.fieldbyname('fax').asstring;
    sempresa_email := frmModulo.qrfilial.fieldbyname('email').asstring;
  END
  ELSE
  BEGIN
    sempresa_Codigo := '';
    sempresa_ibge := '';
    sempresa_Rua := '';
    sempresa_Numero := '';
    sempresa_Bairro := '';
    sEmpresa_Cidade := '';
    sempresa_complemento := '';
    sempresa_CEP := '';
    sempresa_telefone := '';
    sempresa_fax := '';
    sempresa_email := '';
  END;

  // abrir banco de dados de configuracoes local
  frmmodulo.query.close;
  frmmodulo.query.sql.clear;
  frmmodulo.query.sql.add('select * from config');
  frmmodulo.query.open;

  isenha_desconto := frmModulo.query.fieldbyname('senha_desconto').AsInteger;
  rDesconto_maximo := frmmodulo.query.fieldbyname('desconto_maximo').asfloat;


  iComprovente_Crediario := frmModulo.query.fieldbyname('COMPROVANTE_CREDIARIO').asinteger;
  iComprovante_Crediario_produto := frmmodulo.query.fieldbyname('COMPROVANTE_CREDIARIO_PRODUTO').asinteger;


  sTotalizador_Crediario := frmmodulo.query.fieldbyname('TOTALIZADOR_NF_CREDIARIO').asstring;
  sNome_Totalizador_Crediario :=
                            frmmodulo.query.fieldbyname('Nome_TOTALIZADOR_NF_CREDIARIO').asstring;

  sTotalizador_Recebimento := frmmodulo.query.fieldbyname('TOTALIZADOR_NF_RECEBIMENTO').asstring;
  sNome_Totalizador_Recebimento :=
                            frmmodulo.query.fieldbyname('Nome_TOTALIZADOR_NF_RECEBIMENTO').asstring;


  sIndice_Sangria := frmModulo.query.fieldbyname('totalizador_sangria').asstring;
  sIndice_Suprimento := frmModulo.query.fieldbyname('totalizador_suprimento').asstring;


  // alimentar as variaveis com as formas de pagamentos pre-definidas que exigem tratamentos
  // especiais no fechamento da venda
  if frmmodulo.query.RecordCount > 0 then
  begin
    lForma_Cheque := TStringList.Create;
    lForma_Cheque.CommaText := frmmodulo.query.fieldbyname('forma_cheque').asstring;

    lForma_Cartao := TStringList.Create;
    lForma_Cartao.CommaText := frmmodulo.query.fieldbyname('forma_cartao').asstring;

    lForma_Crediario := TstringList.Create;
    lForma_Crediario.CommaText := frmmodulo.query.fieldbyname('forma_crediario').asstring;

    lForma_Convenio := TStringList.Create;
    lForma_Convenio.CommaText := frmmodulo.query.fieldbyname('forma_convenio').asstring;

    lForma_Dinheiro := TStringList.Create;
    lForma_Dinheiro.CommaText := frmmodulo.query.fieldbyname('forma_dinheiro').asstring;
  end;

  // alimentando as variaveis globais do sistema

  iTamanho_codigo_balanca := 5;
  bTruncar_valor          := true;

  If frmmodulo.query.fieldbyname('muda_qtde').asinteger = 1 then
    bMuda_qtde := true else bMuda_qtde := false;

  if frmmodulo.query.fieldbyname('muda_unitario').asinteger = 1 then
    bMuda_unitario := true else bMuda_unitario := false;
  if frmModulo.query.fieldbyname('muda_total').asinteger = 1 then
    bMuda_total := true else bmuda_total := false;  // somente qdo for posto de combustivel

  bSenha_Cancel_Item      := true;
  bSenha_Cancel_Cupom     := true;

  bCadastra_cheque        := true;

  bCadastra_Crediario     := true;

  sPasta_foto_produto     := 'c:\DATASAC\paf\img\produtos';
  sPasta_config           := 'c:\DATASAC\paf\cfg';
  bBusca_foto_produto     := false;
  sPasta_sistema          := 'c:\DataSAC\paf';

  // TEF
  if frmmodulo.query.FieldByName('usa_tef').asinteger = 1 then
  begin
    bTEF := true;
    if frmModulo.query.fieldbyname('usa_tef_tecban').asinteger = 1 then
      bTEF_TecBan := true else
      bTEF_TecBan := false;
  end
  else
  begin
    bTEF := false;
    bTEF_TecBan := false;
  end;


  // alimentacao das variaveis de identificaco de consumidor para atender
  // CAT52 - Nf paulista

  if frmmodulo.query.fieldbyname('nf_paulista').asinteger = 1 then
    bIdentifica_consumidor := true
  else
    bIdentifica_consumidor := false;
//  iTeclado_Modelo := 0;

{
0 NENHUM
1 BEMATECH
2 DARUMA
3 SWEDA
4 EPSON
}


  // tipo da venda
  // 1 - VENDA DE SUPERMERCADO
  // 2 - PREVENDA
  // 3 - MECANICA
  // 4 - POSTO DE COMBUSTIVEL
  // 5 - RESTAURANTE

  iTipo_Venda := 1;
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.FormShow(Sender: TObject);
var
 sForma : string;
 i, x : integer;
// variaveis para acertar a data e hora
  dDataHora: TSystemTime;
  Ano, Mes, Dia,
  H, M, S, Mil: word;
  sLinha : string;
  txt : textFile;
  arquivo_nao_fiscal_ini : TIniFile;
begin

  vardir:=extractfilepath(application.ExeName);


  //flag cupom aberto
  cupomini := TInifile.Create(vardir+'flashflag.dll');


  // abrir arquivo .ini
  arquivo_nao_fiscal_ini := TIniFile.Create('c:\DataSAC\paf\cfg\DataPaf.dll');


  //Impressora não fiscal e s@t

  stipoimp :=  Cript('D',  arquivo_nao_fiscal_ini.ReadString('4CF8193FCC2D45DF','3ADA7J1','')   );

  sportaimp:= Cript('D',  arquivo_nao_fiscal_ini.ReadString('4CF8193FCC2D45DF','3ADA7J2','')  );

  sdatabitsimp:= Cript('D',  arquivo_nao_fiscal_ini.ReadString('4CF8193FCC2D45DF','3ADA7J3','')  );

  sbaudrateimp:= Cript('D',  arquivo_nao_fiscal_ini.ReadString('4CF8193FCC2D45DF','3ADA7J4','')  );

  shandimp:= Cript('D',  arquivo_nao_fiscal_ini.ReadString('4CF8193FCC2D45DF','3ADA7J5','')  );

  sstopimp:= Cript('D',  arquivo_nao_fiscal_ini.ReadString('4CF8193FCC2D45DF','3ADA7J6','')  );

  sparityimp:= Cript('D',  arquivo_nao_fiscal_ini.ReadString('4CF8193FCC2D45DF','3ADA7J7','')  );

  stimeoutimp:= Cript('D',  arquivo_nao_fiscal_ini.ReadString('4CF8193FCC2D45DF','3ADA7J8','')  );

  seqfiscalon:= Cript('D',  arquivo_nao_fiscal_ini.ReadString('4CF8193FCC2D45DF','3ADA7J9','')  );

  //NOME
  scliente_nome := Cript('D',   arquivo_nao_fiscal_ini.ReadString('4CF8193FCC2D45DF','5EF5100C1D','')    );

  //CNPJ
  scliente_cnpj := Cript('D', arquivo_nao_fiscal_ini.ReadString('4CF8193FCC2D45DF','C855F6162C','')   );

  //IE
  scliente_ie := Cript('D', arquivo_nao_fiscal_ini.ReadString('4CF8193FCC2D45DF','292B25','')  );

  //IM
  scliente_im := Cript('D', arquivo_nao_fiscal_ini.ReadString('4CF8193FCC2D45DF','3ADA7D','')  );

  //Endereco
  scliente_endereco := Cript('D', arquivo_nao_fiscal_ini.ReadString('4CF8193FCC2D45DF','3ADA7E',''));

  //Bairro
  scliente_bairro := Cript('D', arquivo_nao_fiscal_ini.ReadString('4CF8193FCC2D45DF','3ADA7F','') );

  //Cidade
  scliente_cidade := Cript('D', arquivo_nao_fiscal_ini.ReadString('4CF8193FCC2D45DF','3ADA7G',''));

  //UF
  scliente_uf := Cript('D',arquivo_nao_fiscal_ini.ReadString('4CF8193FCC2D45DF','3ADA7H',''));

  //CEP
  scliente_cep := Cript('D',arquivo_nao_fiscal_ini.ReadString('4CF8193FCC2D45DF','3ADA7I','') );


  // liberar arquivo ini da memoria
  arquivo_nao_fiscal_ini.Free;

  frmmodulo.query.Close;
  frmmodulo.query.SQL.Clear;
  frmmodulo.query.SQL.Add('select count(*) as totreg from totalizadores_ecf');
  frmmodulo.query.Open;

  if frmmodulo.query.FieldByName('totreg').AsInteger = 0 then
    begin

      frmmodulo.query.Close;
      frmmodulo.query.SQL.Clear;
      frmmodulo.query.SQL.Add('insert into totalizadores_ecf (gt) values (0)');
      frmmodulo.query.ExecSQL;


    end;



  sFuncao_Senha := '001';
  frmSenha := tfrmSenha.create(self);
  frmSenha.showmodal;

  try
    Application.CreateForm(TFrmUtiSplash, frmUtiSplash);
    frmUtiSplash.Show;


  // TEF
  // tem que ser verificado antes da ecf

  {
  IF bTEF THEN
  BEGIN
    frmUtiSplash.lb_msg.caption := 'Aguarde! Preparando ambiente TEF...';
    frmUtiSplash.p.Percent := 9;
    frmUtiSplash.show;
    frmUtiSplash.Refresh;

    sLinha := '';
    if FileExists(sTEFTemp_Path+'gp.tmp') then
    begin
      begin
       assignfile(txt,sTEFTemp_Path+'gp.tmp');
       reset(txt);
       readln(txt,slinha);
       closefile(txt);
      end;
    end;
    if slinha = 'TECBAN' then
    begin
      itefTecban := 1;
      sTEFPath := 'C:\TEF_DISC\'
    end
    else
    begin
      if slinha = 'HIPERCARD' then
      begin
        itefTecban := 2;
        sTEFPath := 'C:\HiperTEF\HiperLINK\'
      end
      else
      begin
        sTEFPath := 'C:\TEF_DIAL\';
        itefTecban := 0;
      end;
    end;

    TEFVerificaGerenciadorAtivo;
    TEFVerificaArquivosPendentes;
    TEFVerificaOperacaoPendente;
//  frmUtiSplash.Hide;
  end;
}

  if busuario_Autenticado then
  begin
    // antes de iniciar a tela venda, verificar as configuracoes necessarias

    // VERIFICAR ECF
    // abrir porta serial
    repeat
       sMsg := cECF_Abre(iECF_Modelo,sECF_Porta);
       if sMsg <> 'OK' then
       begin
         frmUtiSplash.Hide;

         if application.messagebox(pansichar('Erro ao tentar abrir a porta - '+sECF_Porta+
                                         #13+'Deseja tentar outra vez?'),'ECF', mb_yesno+
            mb_iconerror) = idno then
         begin
            Application.Terminate;
            exit;
         end;

         frmUtiSplash.Show;
         frmUtiSplash.Refresh;
       end;
    until
      sMsg = 'OK';
    frmUtiSplash.hide;

    frmUtiSplash.lb_msg.caption := 'Aguarde! Localizando o ECF...';
    frmUtiSplash.p.Percent := 9*2;
    frmUtiSplash.show;
    frmUtiSplash.Refresh;

    bAtiva_venda := true;


    // liberar/bloquear porta caso o ecf seja daruma

    if iECF_Modelo = 2 then
      cECF_Daruma_Libera_Porta('NAO')
    else
      cECF_Daruma_Libera_Porta('SIM');


    bcupom_aberto := false;

    // verificando se o ECF esta ligado
    repeat
       sMsg := cECF_Ligada(iECF_Modelo);
       if sMsg <> 'OK' then
       begin
         IF Trim(sMsg) <> 'Cupom Aberto' then
         begin
           frmUtiSplash.hide;
           if application.messagebox(pansichar('ECF desligado ou não conectado!'+#13+
                                               'Mensagem: '+sMsg+#13+
                                               'Deseja tentar outra vez?'),
                                     'ECF', mb_yesno+
              mb_iconerror) = idno then
           begin
              break;
           end
           else
           begin
             frmUtiSplash.show;
             frmUtiSplash.Refresh;
           end;
         end
         else
         begin
           bcupom_aberto := true;
           sMsg:= 'OK';
         end;
       end;
    until
      sMsg = 'OK';

    if sMsg = 'OK' then
    begin
       // desligar as janelas da sweda
       sMsg := cECF_Desliga_Janelas(iECF_Modelo);

       frmUtiSplash.lb_msg.caption := 'Aguarde! Veficando número de série do ECF...';
       frmUtiSplash.p.Percent := 9*3;
       frmUtiSplash.show;
       frmUtiSplash.Refresh;
      // Numero de Serie do ECF
      repeat
        sMsg := cECF_Numero_Serie(iECF_Modelo);
        if sMsg = 'ERRO' then
        begin
          frmUtiSplash.hide;
          if application.messagebox('Erro ao tentar obter o número de série do ECF!'+#13+
                                    'Deseja tentar outra vez?',
                                    'ECF', mb_yesno+
              mb_iconerror) = idno then
          begin
            bAtiva_venda := false;
            break;
          end
          else
          begin
            frmUtiSplash.show;
            frmUtiSplash.Refresh;
          end;
        end
        else
        begin
          if sMSG <> sECF_Serial then
          begin
            frmUtiSplash.Hide;

            Application.messagebox(pchar(
            'O número de série da ECF não confere com o registrado no PAF-ECF!'+#13+
                                   'ECF: '+sMSG+#13+
                                   'PAF: '+sECF_Serial+#13+
                                   'As funções de venda serão bloqueadas!'),'Erro',MB_OK+
                                   MB_ICONERROR);
            bativa_venda := false;
            break;
          end;

          frmUtiSplash.Show;
          frmUtiSplash.Refresh;
        end;
      until
        sMsg <> 'ERRO';


      // Numero do caixa do ECF
      if sMsg <> 'ERRO' then
      begin
        frmUtiSplash.lb_msg.caption := 'Aguarde! Lendo número do caixa do ECF...';
        frmUtiSplash.p.Percent := 9*4;
        frmUtiSplash.show;
        frmUtiSplash.Refresh;
        repeat
           sMsg := cECF_Numero_Caixa(iECF_Modelo);
           if sMsg = 'ERRO' then
           begin
             frmUtiSplash.hide;
             if application.messagebox('Erro ao tentar obter o número do caixa do ECF!'+#13+
                                       'Deseja tentar outra vez?',
                                       'ECF', mb_yesno+
                mb_iconerror) = idno then
             begin
                bAtiva_venda := false;
                break;
             end
             else
             begin
               frmUtiSplash.show;
               frmUtiSplash.Refresh;
             end;
           end
           else
           begin
            if sMSG <> sECF_Caixa then
            begin
              frmUtiSplash.Hide;

              application.messagebox(pansichar(
              'O número do ECF não confere com o registrado no PAF-ECF!'+#13+
                                     'ECF: '+sMSG+#13+
                                     'PAF: '+sECF_Caixa+#13+
                                     'O sistema será finalizado!'),'Erro',MB_OK+
                                     MB_ICONERROR);
              bAtiva_venda := false;
              break;

            end;

            frmUtiSplash.Show;
            frmUtiSplash.Refresh;
        end;
        until
          sMsg <> 'ERRO';
      end;


      //  verificar a data e hora do ecf
      if sMsg <> 'ERRO' then
      begin
        frmUtiSplash.lb_msg.caption := 'Aguarde! Lendo data e hora do ECF...';
        frmUtiSplash.p.Percent := 9*5;
        frmUtiSplash.show;
        frmUtiSplash.Refresh;
        repeat
          sMsg := cECF_Data_Hora(iECF_Modelo);
          if sMsg = 'ERRO' then
          begin
            frmUtiSplash.hide;
            if application.messagebox('Erro ao tentar obter a data e hora do ECF!'+#13+
                                       'Deseja tentar outra vez?',
                                       'ECF', mb_yesno+
                mb_iconerror) = idno then
            begin
              bAtiva_venda := false;
              break;
            end
            else
            begin
              frmUtiSplash.show;
              frmUtiSplash.Refresh;
            end;
          end
          else
          begin
            try
            dData_Sistema := strtodate(copy(smsg,1,10));
            except
              on E:exception do
              begin
                frmUtiSplash.Hide;

                application.messagebox(pansichar('Erro ao extrair data do ecf!'+#13+
                                                 'Mensagem:'+E.Message+#13+
                                                 'O sistema bloqueará as funções de venda!'),
                                                 'Erro',mb_ok+mb_iconerror);
                bativa_venda := false;
                exit;

                frmUtiSplash.Show;
                frmUtiSplash.Refresh;
              end;
            end;

            if dData_Sistema <> Date then
            begin

              frmUtiSplash.Hide;

              if application.messagebox(pansichar(
              'A data do computador está diferente da data do ECF!'+#13+
                                     'ECF: '+DateToStr(dData_sistema)+#13+
                                     'Computador: '+DateToStr(Date)+#13+
                                     'Deseja corrigir a data computador'),'Erro',mb_yesno+
                                     MB_ICONWARNING) = idYes then
              begin
                DecodeDate(dData_Sistema, Ano, Mes, Dia);
                DecodeTime(strtotime(copy(cECF_Data_Hora(iECF_Modelo),12,8)), H, M, S, Mil);
                with dDataHora do
                  begin
                    wYear := Ano;
                    wMonth := Mes;
                    wDay := Dia;
                    wHour := H;
                    wMinute := M;
                    wSecond := S;
                    wMilliseconds := Mil;
                  end;
                SetLocalTime(dDataHora);
              end
              else
              begin
                application.MessageBox('O sistema será finalizado!','Erro',mb_ok+
                                      mb_iconerror);
                BATIVA_VENDA := FALSE;
                exit;
              end;

              frmUtiSplash.Show;
              frmUtiSplash.Refresh;
            end
            else
            begin
              // verificar se a hora tem diferenca de 5 minutos
              if ((time - strtotime(copy(cECF_Data_Hora(iECF_Modelo),12,8 ))) >
                 strtotime('00:05:00'))
              or
                 ((strtotime(copy(cECF_Data_Hora(iECF_Modelo),12,8 ))-time) >
                 strtotime('00:05:00')) then
              begin
                frmUtiSplash.Hide;

                if application.messagebox(pansichar(
                'A hora do computador está diferente da hora do ECF!'+#13+
                                       'ECF: '+copy(cECF_Data_Hora(iECF_Modelo),12,8)+#13+
                                       'Computador: '+timetostr(time)+#13+
                                       'Deseja corrigir a hora do computador'),'Erro',mb_yesno+
                                       MB_ICONWARNING) = idYes then
                begin



                  DecodeDate(dData_Sistema, Ano, Mes, Dia);
                  DecodeTime(strtotime(copy(cECF_Data_Hora(iECF_Modelo),12,8)), H, M, S, Mil);
                  with dDataHora do
                    begin
                      wYear := Ano;
                      wMonth := Mes;
                      wDay := Dia;
                      wHour := H;
                      wMinute := M;
                      wSecond := S;
                      wMilliseconds := Mil;
                    end;
                  SetLocalTime(dDataHora);
                end
                else
                begin
                  // verificar se a diferenca eh maior q 59 minutos (permitido)
                  if ( time - strtotime(copy(cECF_Data_Hora(iECF_Modelo),12,8)) >
                  strtotime('00:59:59')) then
                  begin
                    application.MessageBox('O sistema será finalizado!','Erro',mb_ok+
                                          mb_iconerror);
                    bativa_venda := FALSE;
                    exit;
                  end;
                end;

                frmUtiSplash.Show;
                frmUtiSplash.Refresh;
              end;
            end;
          end;
        until sMsg <> 'ERRO';
      end;

{
      // verificar se a data do movimento eh igual ao do sistema
      if sMsg <> 'ERRO' then
      begin
        frmUtiSplash.lb_msg.caption := 'Aguarde! Extraindo data do Movimento...';
        frmUtiSplash.p.Percent := 9*6;
        frmUtiSplash.show;
        frmUtiSplash.Refresh;

        repeat
          sMsg := cECF_Data_Movimento(iECF_Modelo);
          if sMsg = 'ERRO' then
          begin
            frmUtiSplash.hide;
            if application.messagebox('Erro ao tentar obter a data do movimento do ECF!'+#13+
                                       'Deseja tentar outra vez?',
                                       'ECF', mb_yesno+
                mb_iconerror) = idno then
            begin
              bAtiva_venda := false;
              break;
            end
            else
            begin
              frmUtiSplash.show;
              frmUtiSplash.Refresh;
            end;
          end
          else
          begin

            if (sMsg='00/00/2000') or (sMsg = '01/01/2000') or (sMsg='')then
            begin
              // sem movimento no dia
              dData_Movimento := dData_Sistema;
            end
            else
            begin
              try
                dData_Movimento := StrToDate(sMsg);
              except
                on E:exception do
                begin
                  frmUtiSplash.Hide;

                  application.messagebox(pansichar('Erro ao tentar obter a data do movimento do ECF!'+#13+
                                                   'Mensagem retornada: '+E.Message+#13+
                                                   'As funções de venda serão bloqueadas!'),'Erro',
                                                   mb_ok+mb_iconerror);
                  bativa_venda := false;
                  sMsg := 'ERRO';

                  frmUtiSplash.Show;
                  frmUtiSplash.Refresh;
                end;
              end;
            end;
          end;
        until smsg <> 'ERRO';
      end;

}

      // formas de pagamento do ECF
      if sMsg <> 'ERRO' then
      begin
        frmUtiSplash.lb_msg.caption := 'Aguarde! Lendo as formas de Pagamento do ECF...';
        frmUtiSplash.p.Percent := 9*7;
        frmUtiSplash.show;
        frmUtiSplash.Refresh;

        repeat
           sMsg := cECF_Le_Formas_Pgto(iECF_Modelo);
           if sMsg = 'ERRO' then
           begin
             frmUtiSplash.hide;
             if application.messagebox('Erro ao tentar obter as formas de pagamento do ECF!'+#13+
                                       'Deseja tentar outra vez?',
                                       'ECF', mb_yesno+
                mb_iconerror) = idno then
             begin
                bAtiva_venda := false;
                break;
             end
             else
             begin
               frmUtiSplash.show;
               frmUtiSplash.Refresh;
             end;
           end;
        until
          sMsg <> 'ERRO';
      end;
{
      // Verificar o status do caixa
      bcaixa_aberto := true;

      if sMsg <> 'ERRO' then
      begin
        frmUtiSplash.lb_msg.caption := 'Aguarde! Extraindo data do movimento da Redução Z...';
        frmUtiSplash.p.Percent := 9*8;
        frmUtiSplash.show;
        frmUtiSplash.Refresh;

        repeat
          sMsg := cECF_ReducaoZ_Data_Movimento(iECF_Modelo);

          if sMsg = 'ERRO' then
          begin
            frmUtiSplash.hide;
            if application.messagebox('Erro ao tentar obter a data do movimento '+
                                     'da última Redução Z!'+#13+
                                     'Deseja tentar outra vez?',
                                     'ECF', mb_yesno+
             mb_iconerror) = idno then
            begin
              bAtiva_venda := false;
              break;
            end
            else
            begin
              frmUtiSplash.show;
              frmUtiSplash.Refresh;
            end;
          end
          else
          begin
            insert('/',sMsg,3);
            insert('/',sMsg,6);
            frmmodulo.query.close;
            frmmodulo.query.sql.clear;
            frmmodulo.query.sql.add('select * from config');
            frmmodulo.query.open;

            if (StrToDate(sMsg) = dData_Sistema) and
               (StrToDate(sMsg) = frmmodulo.query.fieldbyname('caixa_data_movto').asdatetime) and
               (frmmodulo.query.fieldbyname('caixa_situacao').asstring = 'FECHADO') then
            begin
               frmUtiSplash.Hide;

               Application.MessageBox(pansichar(
                'ECF já foi emitido a Redução Z!'+#13+
                'Data do Movimento: '+datetostr(dData_sistema)+#13+
                'Data da Redução Z: '+sMsg+#13+
                'As funções de venda serão bloqueadas!'),
                'Atenção',mb_ok+mb_iconWarning);

                bativa_venda := false;

                frmUtiSplash.Show;
                frmUtiSplash.Refresh;
            end
            else
            begin
              frmUtiSplash.Hide;

              try
                if (StrToDate(sMsg) < dData_Sistema) and
                     (StrToDate(sMsg) = frmmodulo.query.fieldbyname('caixa_data_movto').asdatetime) and
                     (frmmodulo.query.fieldbyname('caixa_situacao').asstring = 'FECHADO')  then
                begin
                  if application.MessageBox(pansichar('C A I X A   F E C H A D O!'+#13+
                                                      'Deseja realizar a sua abertura?'),'Aviso',mb_yesno+
                                                      MB_ICONQUESTION) = idYes then
                  begin
                    bcaixa_aberto := false ;

                  end
                  else
                  begin
                   Application.MessageBox(pansichar(
                    'As funções de venda serão bloqueadas!'),
                    'Atenção',mb_ok+mb_iconWarning);

                   bAtiva_Venda := false;
                  end;
                end;
              finally
                frmUtiSplash.Show;
                frmUtiSplash.Refresh;
              end;
            end;
          end;
        until sMsg <> 'ERRO';
      end;
}

       // Verificar dos do Cadastros do sistema se eh igual ao do ecf
       sECF_Operador := Zerar(inttostr(icodigo_Usuario),6);

       if sMsg <> 'ERRO' then
       begin

         frmUtiSplash.lb_msg.caption := 'Aguarde! Montando tabela de alíquotas...';
         frmUtiSplash.p.Percent := 9*9;
         frmUtiSplash.show;
         frmUtiSplash.Refresh;
         repeat
           sMsg := cECF_Verifica_Aliquotas(iECF_Modelo);

           if sMsg = 'ERRO' then
           begin
             frmUtiSplash.Hide;

             if application.messagebox(pansichar('Erro ao extrair alíquotas do ECF!'+#13+
                                              'Deseja tentar outra vez?'),'Erro',mb_yesno+mb_iconerror)=
                                              idno then
             begin
               bativa_venda := false;
               break;
             end;

             frmUtiSplash.Show;
             frmUtiSplash.Refresh;
           end
           else
           begin
              frmmodulo.tbAliquota.Open;
              frmModulo.tbAliquota.Refresh;
              laliquota := TStringList.Create;
              laliquota.CommaText := sMsg;
              for i := 0 to laliquota.Count - 1 do
              begin
                 frmmodulo.tbAliquota.Insert;
                 frmmodulo.tbAliquota.fieldbyname('codigo').asstring := Zerar(inttostr(i+1),2)+laliquota[i];
                 try
                  frmmodulo.tbAliquota.FieldByName('aliquota').asfloat := strtofloat(copy(laliquota[i],2,4))/100;
                 except
                 end;
                 frmmodulo.tbAliquota.Post;
              end;
              frmUtiSplash.Hide;
           end;
         until sMsg <> 'ERRO';
       end;
      {

       // versao do software basico
       if sMsg <> 'ERRO' then
       begin
          frmUtiSplash.lb_msg.caption := 'Aguarde! Lendo dados do Software Básico do ECF...';
          frmUtiSplash.p.Percent := 9*10;
          frmUtiSplash.show;
          frmUtiSplash.Refresh;

          repeat
             sMsg := cECF_Versao_SB(iECF_Modelo);
             if sMsg = 'ERRO' then
             begin
               frmUtiSplash.hide;
               if application.messagebox('Erro ao tentar obter versão do software básico!'+#13+
                                         'Deseja tentar outra vez?',
                                         'ECF', mb_yesno+
                  mb_iconerror) = idno then
               begin
                  bAtiva_venda := false;
                  break;
               end
               else
               begin
                 frmUtiSplash.show;
                 frmUtiSplash.Refresh;
               end;
             end
             else
               sECF_Versao_SB := sMsg;
          until
            sMsg <> 'ERRO';
       end;
       // versao do software basico
       if sMsg <> 'ERRO' then
       begin
          frmUtiSplash.lb_msg.caption := 'Aguarde! Lendo dados do Software Básico do ECF...';
          frmUtiSplash.p.Percent := 9*11;
          frmUtiSplash.show;
          frmUtiSplash.Refresh;

          repeat
             sMsg := cECF_Data_Hora_SB(iECF_Modelo);
             if sMsg = 'ERRO' then
             begin
               frmUtiSplash.hide;
               if application.messagebox('Erro ao tentar obter data e hora do software básico!'+#13+
                                         'Deseja tentar outra vez?',
                                         'ECF', mb_yesno+
                  mb_iconerror) = idno then
               begin
                  bAtiva_venda := false;
                  break;
               end
               else
               begin
                 frmUtiSplash.show;
                 frmUtiSplash.Refresh;
               end;
             end
             else //25072008081622
             begin
               sECF_Data_SB := copy(smsg,5,4)+copy(smsg,3,2)+copy(smsg,1,2);
               sECF_Hora_SB := copy(smsg,9,6);
             end;
          until
            sMsg <> 'ERRO';
       end;

      }
       // GUIO: Extrai e armazena em buffer os nomes dos relatórios gerenciais
       if sMsg <> 'ERRO' then
       begin
         frmUtiSplash.lb_msg.caption := 'Aguarde! Montando tabela de Relatórios Gerenciais...';
         frmUtiSplash.p.Percent := 100;
         frmUtiSplash.show;
         frmUtiSplash.Refresh;

         repeat
           sMsg := cECF_VerificarRelatoriosGerenciais(iECF_Modelo);

           if sMsg = 'ERRO' then
           begin
             frmUtiSplash.Hide;

             if application.messagebox(pansichar('Erro ao verificar relatórios gerenciais cadastrados no ECF!'+#13+
                                              'Deseja tentar outra vez?'),'Erro',mb_yesno+mb_iconerror)=
                                              idno then
             begin
               bativa_venda := false;
               break;
             end;

             frmUtiSplash.Show;
             frmUtiSplash.Refresh;
           end;
         until sMsg <> 'ERRO';
       end;
      {
       if sMsg <> 'ERRO' then
       begin
         frmUtiSplash.lb_msg.caption := 'Programando modo Trucamento / Arredondamento..';
         frmUtiSplash.p.Percent := 100;
         frmUtiSplash.show;
         frmUtiSplash.Refresh;

         repeat
           sMsg := cECF_ProgramaIAT(iECF_Modelo,true);   // true = truncamento  | false = arredondamento

           if sMsg = 'ERRO' then
           begin
             frmUtiSplash.Hide;

             if application.messagebox(pansichar('Erro ao programador indice de arredondamento / trucamento!'+#13+
                                              'Deseja tentar outra vez?'),'Erro',mb_yesno+mb_iconerror)=
                                              idno then
             begin
               bativa_venda := false;
               break;
             end;

             frmUtiSplash.Show;
             frmUtiSplash.Refresh;
           end;
         until sMsg <> 'ERRO';
       end;
}
       // GUIO: Oculta o Splash caso ainda esteja visivel
       frmUtiSplash.hide;

    end
    else
    begin
      bativa_venda := false;
    end;

{
   // verificar nas configuracoes qual o tipo de venda
      if iTipo_venda = 1 then // venda PDV SUPERMERCADO
      BEGIN
        if bativa_venda then
        begin
          if not bcupom_aberto then
          begin

            sMsg :=  cECF_Cupom_Fiscal_Aberto(iECF_Modelo);

            if  (sMsg <> 'SIM') then
            begin
              if not compara_totalizador then
              begin
                application.messagebox('Não foi possível recompor o totalizador do PAF ECF!'+#13+
                                       'As funções de vendas serão bloqueadas!'+#13+
                                       'Favor entrar em contato com o suporte técnico para '+
                                       'resolver esta situação!','Erro',mb_ok+mb_iconerror);
                exit;
              end;
            END;
          end;

          // FRMVENDA := TFRMVENDA.CREATE(SELF);
          // FRMVENDA.lb_numero_serie.Caption := sECF_Serial;
          // frmvenda.lb_ecf_caixa.Caption := sECF_Caixa;
          // frmvenda.lb_operador.caption := copy(sNome_Operador,1,10);
          // FRMVENDA.SHOWMODAL;
        end
        else
        begin
          application.messagebox('ECF não está pronto! As funções de venda serão bloqueadas!',
          'Atenção',mb_ok+MB_ICONWARNING);
        end;
      END;

 }
  end
  else
  begin
    Application.Terminate;
  end;

  finally
    FreeAndNil(frmUtiSplash);
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.ECF1Click(Sender: TObject);
begin
  frmConfig_ecf := tfrmConfig_ECF.create(self);
  frmconfig_ecf.showmodal;
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.FormDestroy(Sender: TObject);
begin
  // encerrrar comunicacao com o ecf
  cECF_Fecha(iECF_Modelo);
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.Sair1Click(Sender: TObject);
begin
  close;
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.NotaFiscalMod2SerieD1Click(Sender: TObject);
begin
  frmNotafiscal_menu := tfrmNotaFiscal_menu.create(self);
  frmNotafiscal_menu.showmodal;
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.MenuFiscal1Click(Sender: TObject);
begin
  frmMenu_fiscal := tfrmMenu_fiscal.create(self);
  frmMenu_fiscal.showmodal;
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.Balana1Click(Sender: TObject);
begin
  frmconfig_balanca := tfrmconfig_balanca.create(self);
  frmconfig_balanca.showmodal;
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.Geral1Click(Sender: TObject);
begin
  frmconfig := tfrmconfig.create(self);
  frmconfig.showmodal;
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.AdvGlowButton3Click(Sender: TObject);
begin
  frmconfig_ECF := tfrmconfig_ECF.create(self);
  frmconfig_ECF.showmodal;

end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.AdvGlowButton175Click(Sender: TObject);
begin
  frmconfig := tfrmconfig.create(self);
  frmconfig.showmodal;
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.AdvGlowButton1Click(Sender: TObject);
begin
//  frmNotafiscal_menu := tfrmNotaFiscal_menu.create(self);
//  frmNotafiscal_menu.showmodal;

  frmprincipal.ExecutePrograma('DataNFe.exe','');

end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.AdvGlowButton2Click(Sender: TObject);
begin
  frmMenu_fiscal := tfrmMenu_fiscal.create(self);
  frmMenu_fiscal.showmodal;
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.AdvGlowButton4Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmPrincipal.AdvGlowButton5Click(Sender: TObject);
var
sForma : string;
i, x : integer;
// variaveis para acertar a data e hora
  dDataHora: TSystemTime;
  Ano, Mes, Dia,
  H, M, S, Mil: word;
  sLinha : string;
  txt : textFile;
  
begin

  try
    Application.CreateForm(TFrmUtiSplash, frmUtiSplash);
    frmUtiSplash.Show;


  // TEF
  // tem que ser verificado antes da ecf

  IF bTEF THEN
  BEGIN
    frmUtiSplash.lb_msg.caption := 'Aguarde! Preparando ambiente TEF...';
    frmUtiSplash.p.Percent := 9;
    frmUtiSplash.show;
    frmUtiSplash.Refresh;

    sLinha := '';
    if FileExists(sTEFTemp_Path+'gp.tmp') then
    begin
      begin
       assignfile(txt,sTEFTemp_Path+'gp.tmp');
       reset(txt);
       readln(txt,slinha);
       closefile(txt);
      end;
    end;
    if slinha = 'TECBAN' then
    begin
      itefTecban := 1;
      sTEFPath := 'C:\TEF_DISC\'
    end
    else
    begin
      if slinha = 'HIPERCARD' then
      begin
        itefTecban := 2;
        sTEFPath := 'C:\HiperTEF\HiperLINK\'
      end
      else
      begin
        sTEFPath := 'C:\TEF_DIAL\';
        itefTecban := 0;
      end;
    end;

    TEFVerificaGerenciadorAtivo;
    TEFVerificaArquivosPendentes;
    TEFVerificaOperacaoPendente;
//  frmUtiSplash.Hide;
  end;


    // antes de iniciar a tela venda, verificar as configuracoes necessarias

{    // VERIFICAR ECF
    // abrir porta serial
    repeat
       sMsg := cECF_Abre(iECF_Modelo,sECF_Porta);
       if sMsg <> 'OK' then
       begin
         frmUtiSplash.Hide;

         if application.messagebox(pansichar('Erro ao tentar abrir a porta - '+sECF_Porta+
                                         #13+'Deseja tentar outra vez?'),'ECF', mb_yesno+
            mb_iconerror) = idno then
         begin
            Application.Terminate;
            exit;
         end;

         frmUtiSplash.Show;
         frmUtiSplash.Refresh;
       end;
    until
      sMsg = 'OK';
    frmUtiSplash.hide;
}
    frmUtiSplash.lb_msg.caption := 'Aguarde! Localizando o ECF...';
    frmUtiSplash.p.Percent := 9*2;
    frmUtiSplash.show;
    frmUtiSplash.Refresh;

    bAtiva_venda := true;

    // liberar/bloquear porta caso o ecf seja daruma
    if iECF_Modelo = 2 then
      cECF_Daruma_Libera_Porta('NAO')
    else
      cECF_Daruma_Libera_Porta('SIM');


    bcupom_aberto := false;

    // verificando se o ECF esta ligado
    repeat
       sMsg := cECF_Ligada(iECF_Modelo);
       if sMsg <> 'OK' then
       begin
         IF sMsg <> 'Cupom Aberto' then
         begin
           frmUtiSplash.hide;
           if application.messagebox(pansichar('ECF desligado ou não conectado!'+#13+
                                               'Mensagem: '+sMsg+#13+
                                               'Deseja tentar outra vez?'),
                                     'ECF', mb_yesno+
              mb_iconerror) = idno then
           begin
              break;
           end
           else
           begin
             frmUtiSplash.show;
             frmUtiSplash.Refresh;
           end;
         end
         else
         begin
           bcupom_aberto := true;
           sMsg:= 'OK';
         end;
       end;
    until
      sMsg = 'OK';


    if sMsg = 'OK' then
    begin
       // desligar as janelas da sweda
       sMsg := cECF_Desliga_Janelas(iECF_Modelo);

       frmUtiSplash.lb_msg.caption := 'Aguarde! Veficando número de série do ECF...';
       frmUtiSplash.p.Percent := 9*3;
       frmUtiSplash.show;
       frmUtiSplash.Refresh;
      // Numero de Serie do ECF
      repeat
        sMsg := cECF_Numero_Serie(iECF_Modelo);
        if sMsg = 'ERRO' then
        begin
          frmUtiSplash.hide;
          if application.messagebox('Erro ao tentar obter o número de série do ECF!'+#13+
                                    'Deseja tentar outra vez?',
                                    'ECF', mb_yesno+
              mb_iconerror) = idno then
          begin
            bAtiva_venda := false;
            break;
          end
          else
          begin
            frmUtiSplash.show;
            frmUtiSplash.Refresh;
          end;
        end
        else
        begin
          if sMSG <> sECF_Serial then
          begin
            frmUtiSplash.Hide;

            Application.messagebox(pchar(
            'O número de série da ECF não confere com o registrado no PAF-ECF!'+#13+
                                   'ECF: '+sMSG+#13+
                                   'PAF: '+sECF_Serial+#13+
                                   'As funções de venda serão bloqueadas!'),'Erro',MB_OK+
                                   MB_ICONERROR);
            bativa_venda := false;
            break;
          end;

          frmUtiSplash.Show;
          frmUtiSplash.Refresh;
        end;
      until
        sMsg <> 'ERRO';


      // Numero do caixa do ECF
      if sMsg <> 'ERRO' then
      begin
        frmUtiSplash.lb_msg.caption := 'Aguarde! Lendo número do caixa do ECF...';
        frmUtiSplash.p.Percent := 9*4;
        frmUtiSplash.show;
        frmUtiSplash.Refresh;
        repeat
           sMsg := cECF_Numero_Caixa(iECF_Modelo);
           if sMsg = 'ERRO' then
           begin
             frmUtiSplash.hide;
             if application.messagebox('Erro ao tentar obter o número do caixa do ECF!'+#13+
                                       'Deseja tentar outra vez?',
                                       'ECF', mb_yesno+
                mb_iconerror) = idno then
             begin
                bAtiva_venda := false;
                break;
             end
             else
             begin
               frmUtiSplash.show;
               frmUtiSplash.Refresh;
             end;
           end
           else
           begin
            if sMSG <> sECF_Caixa then
            begin
              frmUtiSplash.Hide;

              application.messagebox(pansichar(
              'O número do ECF não confere com o registrado no PAF-ECF!'+#13+
                                     'ECF: '+sMSG+#13+
                                     'PAF: '+sECF_Caixa+#13+
                                     'O sistema será finalizado!'),'Erro',MB_OK+
                                     MB_ICONERROR);
              bAtiva_venda := false;
              break;

            end;

            frmUtiSplash.Show;
            frmUtiSplash.Refresh;
        end;
        until
          sMsg <> 'ERRO';
      end;


      //  verificar a data e hora do ecf
      if sMsg <> 'ERRO' then
      begin
        frmUtiSplash.lb_msg.caption := 'Aguarde! Lendo data e hora do ECF...';
        frmUtiSplash.p.Percent := 9*5;
        frmUtiSplash.show;
        frmUtiSplash.Refresh;
        repeat
          sMsg := cECF_Data_Hora(iECF_Modelo);
          if sMsg = 'ERRO' then
          begin
            frmUtiSplash.hide;
            if application.messagebox('Erro ao tentar obter a data e hora do ECF!'+#13+
                                       'Deseja tentar outra vez?',
                                       'ECF', mb_yesno+
                mb_iconerror) = idno then
            begin
              bAtiva_venda := false;
              break;
            end
            else
            begin
              frmUtiSplash.show;
              frmUtiSplash.Refresh;
            end;
          end
          else
          begin
            try
            
            dData_Sistema := strtodate(copy(smsg,1,10));
            except
              on E:exception do
              begin
                frmUtiSplash.Hide;

                application.messagebox(pansichar('Erro ao extrair data do ecf!'+#13+
                                                 'Mensagem:'+E.Message+#13+
                                                 'O sistema bloqueará as funções de venda!'),
                                                 'Erro',mb_ok+mb_iconerror);
                bativa_venda := false;
                exit;

                frmUtiSplash.Show;
                frmUtiSplash.Refresh;
              end;
            end;

            if dData_Sistema <> Date then
            begin

              frmUtiSplash.Hide;

              if application.messagebox(pansichar(
              'A data do computador está diferente da data do ECF!'+#13+
                                     'ECF: '+DateToStr(dData_sistema)+#13+
                                     'Computador: '+DateToStr(Date)+#13+
                                     'Deseja corrigir a data computador'),'Erro',mb_yesno+
                                     MB_ICONWARNING) = idYes then
              begin
                DecodeDate(dData_Sistema, Ano, Mes, Dia);
                DecodeTime(strtotime(copy(cECF_Data_Hora(iECF_Modelo),12,8)), H, M, S, Mil);
                with dDataHora do
                  begin
                    wYear := Ano;
                    wMonth := Mes;
                    wDay := Dia;
                    wHour := H;
                    wMinute := M;
                    wSecond := S;
                    wMilliseconds := Mil;
                  end;
                SetLocalTime(dDataHora);
              end
              else
              begin
                application.MessageBox('O sistema será finalizado!','Erro',mb_ok+
                                      mb_iconerror);
                BATIVA_VENDA := FALSE;
                exit;
              end;

              frmUtiSplash.Show;
              frmUtiSplash.Refresh;
            end
            else
            begin
              // verificar se a hora tem diferenca de 5 minutos
              if ((time - strtotime(copy(cECF_Data_Hora(iECF_Modelo),12,8 ))) >
                 strtotime('00:05:00'))
              or
                 ((strtotime(copy(cECF_Data_Hora(iECF_Modelo),12,8 ))-time) >
                 strtotime('00:05:00')) then
              begin
                frmUtiSplash.Hide;

                if application.messagebox(pansichar(
                'A hora do computador está diferente da hora do ECF!'+#13+
                                       'ECF: '+copy(cECF_Data_Hora(iECF_Modelo),12,8)+#13+
                                       'Computador: '+timetostr(time)+#13+
                                       'Deseja corrigir a hora do computador'),'Erro',mb_yesno+
                                       MB_ICONWARNING) = idYes then
                begin



                  DecodeDate(dData_Sistema, Ano, Mes, Dia);
                  DecodeTime(strtotime(copy(cECF_Data_Hora(iECF_Modelo),12,8)), H, M, S, Mil);
                  with dDataHora do
                    begin
                      wYear := Ano;
                      wMonth := Mes;
                      wDay := Dia;
                      wHour := H;
                      wMinute := M;
                      wSecond := S;
                      wMilliseconds := Mil;
                    end;
                  SetLocalTime(dDataHora);
                end
                else
                begin
                  // verificar se a diferenca eh maior q 59 minutos (permitido)
                  if ( time - strtotime(copy(cECF_Data_Hora(iECF_Modelo),12,8)) >
                  strtotime('00:59:59')) then
                  begin
                    application.MessageBox('O sistema será finalizado!','Erro',mb_ok+
                                          mb_iconerror);
                    bativa_venda := FALSE;
                    exit;
                  end;
                end;

                frmUtiSplash.Show;
                frmUtiSplash.Refresh;
              end;
            end;
          end;
        until sMsg <> 'ERRO';
      end;

      // verificar se a data do movimento eh igual ao do sistema
      if sMsg <> 'ERRO' then
      begin
        frmUtiSplash.lb_msg.caption := 'Aguarde! Extraindo data do Movimento...';
        frmUtiSplash.p.Percent := 9*6;
        frmUtiSplash.show;
        frmUtiSplash.Refresh;

        repeat

          sMsg := cECF_Data_Movimento(iECF_Modelo);

          if sMsg = 'ERRO' then
          begin
            frmUtiSplash.hide;
            if application.messagebox('Erro ao tentar obter a data do movimento do ECF!'+#13+
                                       'Deseja tentar outra vez?',
                                       'ECF', mb_yesno+
                mb_iconerror) = idno then
            begin
              bAtiva_venda := false;
              break;
            end
            else
            begin
              frmUtiSplash.show;
              frmUtiSplash.Refresh;
            end;
          end
          else
          begin

            if (sMsg = '00/00/2000') or (sMsg = '01/01/2000') or (sMsg = '00/00/0000') then
            begin
              // sem movimento no dia
              dData_Movimento := dData_Sistema;
            end
            else
            begin
              try
                dData_Movimento := StrToDate(sMsg);
              except
                on E:exception do
                begin
                  frmUtiSplash.Hide;

                  application.messagebox(pansichar('Erro ao tentar obter a data do movimento do ECF!'+#13+
                                                   'Mensagem retornada: '+E.Message+#13+
                                                   'As funções de venda serão bloqueadas!'),'Erro',
                                                   mb_ok+mb_iconerror);
                  bativa_venda := false;
                  sMsg := 'ERRO';

                  frmUtiSplash.Show;
                  frmUtiSplash.Refresh;
                end;
              end;
            end;
          end;
        until smsg <> 'ERRO';
      end;
{
      // formas de pagamento do ECF
      if sMsg <> 'ERRO' then
      begin
        frmUtiSplash.lb_msg.caption := 'Aguarde! Lendo as formas de Pagamento do ECF...';
        frmUtiSplash.p.Percent := 9*7;
        frmUtiSplash.show;
        frmUtiSplash.Refresh;

        repeat
           sMsg := cECF_Le_Formas_Pgto(iECF_Modelo);
           if sMsg = 'ERRO' then
           begin
             frmUtiSplash.hide;
             if application.messagebox('Erro ao tentar obter as formas de pagamento do ECF!'+#13+
                                       'Deseja tentar outra vez?',
                                       'ECF', mb_yesno+
                mb_iconerror) = idno then
             begin
                bAtiva_venda := false;
                break;
             end
             else
             begin
               frmUtiSplash.show;
               frmUtiSplash.Refresh;
             end;
           end;
        until
          sMsg <> 'ERRO';
      end;
}
      // Verificar o status do caixa
      bcaixa_aberto := true;

      if sMsg <> 'ERRO' then
      begin
        frmUtiSplash.lb_msg.caption := 'Aguarde! Extraindo data do movimento da Redução Z...';
        frmUtiSplash.p.Percent := 9*8;
        frmUtiSplash.show;
        frmUtiSplash.Refresh;

        repeat
          if iECF_Modelo <> 3 then
           sMsg := cECF_ReducaoZ_Data_Movimento(iECF_Modelo)
          else
           sMsg:=Copy(SomenteNumero(DateToStr(now)),1,4)+Copy(SomenteNumero(DateToStr(now)),7,2);

          if sMsg = 'ERRO' then
          begin
            frmUtiSplash.hide;
            if application.messagebox('Erro ao tentar obter a data do movimento '+
                                     'da última Redução Z!'+#13+
                                     'Deseja tentar outra vez?',
                                     'ECF', mb_yesno+
             mb_iconerror) = idno then
            begin
              bAtiva_venda := false;
              break;
            end
            else
            begin
              frmUtiSplash.show;
              frmUtiSplash.Refresh;
            end;
          end
          else
          begin

            insert('/',sMsg,3);
            insert('/',sMsg,6);
            frmmodulo.query.close;
            frmmodulo.query.sql.clear;
            frmmodulo.query.sql.add('select * from config');
            frmmodulo.query.open;

            if (StrToDate(sMsg) = dData_Sistema) and
               (StrToDate(sMsg) = frmmodulo.query.fieldbyname('caixa_data_movto').asdatetime) and
               (frmmodulo.query.fieldbyname('caixa_situacao').asstring = 'FECHADO') then
            begin
               frmUtiSplash.Hide;

               Application.MessageBox(pansichar(
                'ECF já foi emitido a Redução Z!'+#13+
                'Data do Movimento: '+datetostr(dData_sistema)+#13+
                'Data da Redução Z: '+sMsg+#13+
                'As funções de venda serão bloqueadas!'),
                'Atenção',mb_ok+mb_iconWarning);

                bativa_venda := false;

                frmUtiSplash.Show;
                frmUtiSplash.Refresh;
            end
            else
            begin
              frmUtiSplash.Hide;

              try
                if (StrToDate(sMsg) < dData_Sistema) and
                     (StrToDate(sMsg) = frmmodulo.query.fieldbyname('caixa_data_movto').asdatetime) and
                     (frmmodulo.query.fieldbyname('caixa_situacao').asstring = 'FECHADO')  then
                begin
                  if application.MessageBox(pansichar('C A I X A   F E C H A D O!'+#13+
                                                      'Deseja realizar a sua abertura?'),'Aviso',mb_yesno+
                                                      MB_ICONQUESTION) = idYes then
                  begin
                    bcaixa_aberto := false;

                  end
                  else
                  begin
                   Application.MessageBox(pansichar(
                    'As funções de venda serão bloqueadas!'),
                    'Atenção',mb_ok+mb_iconWarning);

                   bAtiva_Venda := false;
                  end;
                end;
              finally
                frmUtiSplash.Show;
                frmUtiSplash.Refresh;
              end;
            end;
          end;
        until sMsg <> 'ERRO';
      end;

   // Verificar dos do Cadastros do sistema se eh igual ao do ecf
   sECF_Operador := Zerar(inttostr(icodigo_Usuario),6);
{
   if sMsg <> 'ERRO' then
   begin
     frmUtiSplash.lb_msg.caption := 'Aguarde! Montando tabela de alíquotas...';
     frmUtiSplash.p.Percent := 9*9;
     frmUtiSplash.show;
     frmUtiSplash.Refresh;
     repeat
       sMsg := cECF_Verifica_Aliquotas(iECF_Modelo);

       if sMsg = 'ERRO' then
       begin
         frmUtiSplash.Hide;

         if application.messagebox(pansichar('Erro ao extrair alíquotas do ECF!'+#13+
                                          'Deseja tentar outra vez?'),'Erro',mb_yesno+mb_iconerror)=
                                          idno then
         begin
           bativa_venda := false;
           break;
         end;

         frmUtiSplash.Show;
         frmUtiSplash.Refresh;
       end
       else
       begin
          frmmodulo.tbAliquota.Open;
          frmModulo.tbAliquota.Refresh;
          laliquota := TStringList.Create;
          laliquota.CommaText := sMsg;
          for i := 0 to laliquota.Count - 1 do
          begin
            frmmodulo.tbAliquota.Insert;
            frmmodulo.tbAliquota.fieldbyname('codigo').asstring := Zerar(inttostr(i+1),2)+laliquota[i];
            try
             frmmodulo.tbAliquota.FieldByName('aliquota').asfloat := strtofloat(copy(laliquota[i],2,4))/100;
            except
              frmmodulo.tbAliquota.FieldByName('aliquota').asfloat:=0.00;
            end;
            frmmodulo.tbAliquota.Post;
          end;
          frmUtiSplash.Hide;
       end;
     until sMsg <> 'ERRO';
   end;
}
   // versao do software basico
   if sMsg <> 'ERRO' then
   begin
      frmUtiSplash.lb_msg.caption := 'Aguarde! Lendo dados do Software Básico do ECF...';
      frmUtiSplash.p.Percent := 9*10;
      frmUtiSplash.show;
      frmUtiSplash.Refresh;

      repeat
         sMsg := cECF_Versao_SB(iECF_Modelo);
         if sMsg = 'ERRO' then
         begin
           frmUtiSplash.hide;
           if application.messagebox('Erro ao tentar obter versão do software básico!'+#13+
                                     'Deseja tentar outra vez?',
                                     'ECF', mb_yesno+
              mb_iconerror) = idno then
           begin
              bAtiva_venda := false;
              break;
           end
           else
           begin
             frmUtiSplash.show;
             frmUtiSplash.Refresh;
           end;
         end
         else
           sECF_Versao_SB := sMsg;
      until
        sMsg <> 'ERRO';
   end;
   // versao do software basico
   if sMsg <> 'ERRO' then
   begin
      frmUtiSplash.lb_msg.caption := 'Aguarde! Lendo dados do Software Básico do ECF...';
      frmUtiSplash.p.Percent := 9*11;
      frmUtiSplash.show;
      frmUtiSplash.Refresh;

      repeat
         if iECF_Modelo <>3 then
          sMsg := cECF_Data_Hora_SB(iECF_Modelo)
         else
          sMsg := '25072008081622';

         if sMsg = 'ERRO' then
         begin
           frmUtiSplash.hide;
           if application.messagebox('Erro ao tentar obter data e hora do software básico!'+#13+
                                     'Deseja tentar outra vez?',
                                     'ECF', mb_yesno+
              mb_iconerror) = idno then
           begin
              bAtiva_venda := false;
              break;
           end
           else
           begin
             frmUtiSplash.show;
             frmUtiSplash.Refresh;
           end;
         end
         else //25072008081622
         begin
           sECF_Data_SB := copy(smsg,5,4)+copy(smsg,3,2)+copy(smsg,1,2);
           sECF_Hora_SB := copy(smsg,9,6);
         end;
      until
        sMsg <> 'ERRO';
   end;

{
   // GUIO: Extrai e armazena em buffer os nomes dos relatórios gerenciais
   if sMsg <> 'ERRO' then
   begin
     frmUtiSplash.lb_msg.caption := 'Aguarde! Montando tabela de Relatórios Gerenciais...';
     frmUtiSplash.p.Percent := 100;
     frmUtiSplash.show;
     frmUtiSplash.Refresh;

     repeat
       sMsg := cECF_VerificarRelatoriosGerenciais(iECF_Modelo);

       if sMsg = 'ERRO' then
       begin
         frmUtiSplash.Hide;

         if application.messagebox(pansichar('Erro ao verificar relatórios gerenciais cadastrados no ECF!'+#13+
                                          'Deseja tentar outra vez?'),'Erro',mb_yesno+mb_iconerror)=
                                          idno then
         begin
           bativa_venda := false;
           break;
         end;

         frmUtiSplash.Show;
         frmUtiSplash.Refresh;
       end;
     until sMsg <> 'ERRO';
   end;
}
   // GUIO: Oculta o Splash caso ainda esteja visivel
   frmUtiSplash.hide;

    end
    else
    begin
      bativa_venda := false;
    end;

   // verificar nas configuracoes qual o tipo de venda
      if iTipo_venda = 1 then // venda PDV SUPERMERCADO
      BEGIN
        if bativa_venda then
        begin
          if not bcupom_aberto then
          begin
            sMsg :=  cECF_Cupom_Fiscal_Aberto(iECF_Modelo);

            if  (sMsg <> 'SIM') then
            begin
              if not compara_totalizador then
              begin
                application.messagebox('Não foi possível recompor o totalizador do PAF ECF!'+#13+
                                       'As funções de vendas serão bloqueadas!'+#13+
                                       'Favor entrar em contato com o suporte técnico para '+
                                       'resolver esta situação!','Erro',mb_ok+mb_iconerror);
                exit;
              end;
            END;
          end;

          FRMVENDA := TFRMVENDA.CREATE(SELF);
          FRMVENDA.lb_numero_serie.Caption := sECF_Serial;
          frmvenda.lb_ecf_caixa.Caption    := sECF_Caixa;
          frmvenda.lb_operador.caption     := copy(sNome_Operador,1,10);
          FRMVENDA.SHOWMODAL;
        end
        else
        begin
          application.messagebox('ECF não está pronto! As funções de venda serão bloqueadas!',
          'Atenção',mb_ok+MB_ICONWARNING);
        end;
      END;

  finally
    FreeAndNil(frmUtiSplash);
  end;
end;


procedure TfrmPrincipal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if Key=VK_F6  then advGlowButton5.Click;
 if Key=VK_F2  then advGlowButton1.Click;
 if Key=VK_F4  then advGlowButton6.Click;
 if Key=VK_F7  then advGlowButton3.Click;
 if Key=VK_F8  then advGlowButton2.Click;
 if Key=VK_F9  then advGlowButton175.Click;
 if Key=VK_F11 then advGlowButton4.Click;
end;

procedure TfrmPrincipal.Panel1Resize(Sender: TObject);
begin
 advshapebutton2.left:=trunc((Panel1.width - advshapebutton2.width) / 2);
 advshapebutton2.top :=trunc((Panel1.height - advshapebutton2.height) / 2) ;
end;

procedure TfrmPrincipal.AdvGlowButton6Click(Sender: TObject);
begin
  frmpreco_consultap := tfrmpreco_consultap.create(self);
  frmpreco_consultap.showmodal;

end;

end.




