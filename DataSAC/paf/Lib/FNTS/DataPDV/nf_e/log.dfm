object frmlog: Tfrmlog
  Left = 126
  Top = 128
  BorderStyle = bsDialog
  Caption = 'LOG | Controle de Vers'#245'es / Atualiza'#231#227'o'
  ClientHeight = 410
  ClientWidth = 667
  Color = clBtnFace
  Font.Charset = OEM_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Terminal'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 8
  object PageView1: TPageView
    Left = 0
    Top = 0
    Width = 667
    Height = 410
    ActivePage = PageSheet1
    ActivePageIndex = 0
    AdaptiveColors = True
    Align = alTop
    BackgroundColor = clSilver
    BackgroundKind = bkSolid
    Indent = 2
    Margin = 0
    Options = [pgBoldActiveTab, pgCloseButton, pgTopBorder]
    ShowTabs = True
    Spacing = 0
    TabHeight = 17
    TabOrder = 0
    TabStyle = tsWhidbey
    TopIndent = 3
    object PageSheet1: TPageSheet
      Left = 0
      Top = 21
      Width = 667
      Height = 389
      Caption = 'IMPLEMENTACOES'
      DisplayMode = tdGlyph
      ImageIndex = 0
      Margin = 0
      PageIndex = 0
      TabColor = clWindow
      TabWidth = 0
      TransparentColor = clNone
      object RichEdit1: TRichEdit
        Left = 0
        Top = 0
        Width = 667
        Height = 389
        Align = alClient
        BorderStyle = bsNone
        Color = clBtnFace
        Font.Charset = OEM_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Terminal'
        Font.Style = []
        Lines.Strings = (
          
            ' ---------------------------------------------------------------' +
            '---------------------------------------'
          ' 04/06/2007 -> MODULO DE FARMACIA - Termino da implementacao.'
          
            ' ---------------------------------------------------------------' +
            '---------------------------------------'
          
            ' 05/06/2007 -> O.S. Auto Pecas - Impressao de Cupom fiscal somen' +
            'te dos produtos, sem que imprima troco'
          '               no final do cupom.'
          
            ' ---------------------------------------------------------------' +
            '---------------------------------------'
          
            ' 05/06/2007 -> CANCELAMENTO DE VENDA - Corrigido problema em que' +
            ' o Serial nao retornava para o estoque.'
          
            ' ---------------------------------------------------------------' +
            '---------------------------------------'
          
            ' 05/06/2007 -> NOTA FISCAL DE ENTRADA - Impressao separada da NF' +
            ' de Saida, arquivo F000080.FR3'
          
            ' ---------------------------------------------------------------' +
            '---------------------------------------'
          
            ' 05/06/2007 -> CUPOM FISCAL - Venda de Item com diferenciacao da' +
            ' Unidade'
          
            ' ---------------------------------------------------------------' +
            '---------------------------------------'
          
            ' 05/06/2007 -> PAPEL DE PAREDE - Excluido a rotina de troca de p' +
            'apel. Copiar os arquivos FUNDO_800.JPG e'
          '               FUNDO_1024.JPG para a pasta C:\ELPRO\COMPLUS\IMG '
          
            ' ---------------------------------------------------------------' +
            '---------------------------------------'
          
            ' 05/06/2007 -> TELA PRINCIPAL #2 (Uso de Mouse) - Habilitada par' +
            'a o uso. Tamanho "800 x 600" e "1024x768"'
          
            ' ---------------------------------------------------------------' +
            '---------------------------------------'
          ' 05/06/2007 -> VERSAO ATUAL 7.0.20'
          
            ' ---------------------------------------------------------------' +
            '---------------------------------------'
          
            ' 11/06/2007 -> CONTRATO DE VENDA - Impressao Tinta/Laser com Cap' +
            'a'
          
            ' ---------------------------------------------------------------' +
            '---------------------------------------'
          
            ' 11/06/2007 -> VENDA - Cliente bloqueado nao permite fazer venda' +
            ' no crediario.'
          
            ' ---------------------------------------------------------------' +
            '---------------------------------------'
          
            ' 11/06/2007 -> CLIENTES - Grava o Usuario que cadastrou o client' +
            'e {script}'
          
            ' ---------------------------------------------------------------' +
            '---------------------------------------'
          
            ' 11/06/2007 -> NOTAS DE VENDA - ECF - Funcao de Sangria e Suprim' +
            'ento'
          
            ' ---------------------------------------------------------------' +
            '---------------------------------------'
          ' 11/06/2007 -> MODULO FINANCEIRO COMPLETO'
          
            ' ---------------------------------------------------------------' +
            '---------------------------------------'
          ' 11/06/2007 -> MODULO DE FARMACIA - IMPRESSAO OK'
          
            ' ---------------------------------------------------------------' +
            '---------------------------------------'
          ' 05/06/2007 -> VERSAO ATUAL 7.0.21'
          ''
          ''
          ''
          ''
          '')
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
    object PageSheet2: TPageSheet
      Left = 0
      Top = 21
      Width = 667
      Height = 389
      Caption = 'SCRIPTS DE TABELAS'
      DisplayMode = tdGlyph
      ImageIndex = 0
      Margin = 0
      PageIndex = 1
      TabColor = clWindow
      TabWidth = 0
      TransparentColor = clNone
      object RichEdit2: TRichEdit
        Left = 0
        Top = 0
        Width = 667
        Height = 389
        Align = alClient
        BorderStyle = bsNone
        Color = clBtnFace
        Font.Charset = OEM_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Terminal'
        Font.Style = []
        Lines.Strings = (
          
            ' ---------------------------------------------------------------' +
            '---------------------------------------'
          ' ALTER TABLE C000001'
          '    ADD EXTRATO_TIPONOTA INTEGER,'
          '    ADD BOBINA_SUBIRPAPEL INTEGER,'
          '    ADD CLASSIFICACAO VARCHAR(10),'
          '    ADD PLANO_VENDA_AV VARCHAR(30),'
          '    ADD PLANO_VENDA_AP VARCHAR(30),'
          '    ADD PLANO_OS_AV VARCHAR(30),'
          '    ADD PLANO_OS_AP VARCHAR(30),'
          '    ADD PLANO_OUTRAS_ENTRADAS VARCHAR(30),'
          '    ADD PLANO_RECEBTO_CREDIARIO VARCHAR(30),'
          '    ADD NF_ITENS_PAGINA INTEGER,'
          '    ADD NF_ITENS_TRANSPORTE INTEGER,'
          '    ADD NF_LINHA_TRANSPORTE INTEGER,'
          '    ADD NF_SALTO_PAGINA INTEGER,'
          '    ADD NF_TIPO INTEGER,'
          '    ADD PLANO_OUTRAS_SAIDAS VARCHAR(30),'
          '    ADD NF_IMPRESSORA VARCHAR(100),'
          '    ADD VENDA_FECHAMENTO_CAIXA INTEGER '
          
            ' ---------------------------------------------------------------' +
            '---------------------------------------'
          ' ALTER TABLE C000003'
          '    ADD CODVENDEDOR VARCHAR(6)'
          
            ' ---------------------------------------------------------------' +
            '---------------------------------------'
          ' ALTER TABLE C000007'
          '    ADD CODCONVENIO VARCHAR(6)'
          
            ' ---------------------------------------------------------------' +
            '---------------------------------------'
          'ALTER TABLE C000032'
          '    ADD VALOR_ICMS NUMERIC(15,2),'
          '    ADD ICMS_REDUZIDO NUMERIC(15,2),'
          '    ADD BASE_CALCULO NUMERIC(15,2),'
          '    ADD VALOR_IPI NUMERIC(15,2),'
          '    ADD SITUACAO INTEGER'
          
            ' ---------------------------------------------------------------' +
            '---------------------------------------'
          'ALTER TABLE C000035'
          '    ADD CLASSIFICACAO VARCHAR(10),'
          '    ADD CODGRUPO VARCHAR(6),'
          '    ADD NIVEL INTEGER'
          
            ' ---------------------------------------------------------------' +
            '---------------------------------------'
          'ALTER TABLE C000045'
          '    ADD SITUACAO_ATUAL VARCHAR(100)'
          
            ' ---------------------------------------------------------------' +
            '---------------------------------------'
          'ALTER TABLE C000048'
          '    ADD RETIRADO VARCHAR(50)'
          
            ' ---------------------------------------------------------------' +
            '---------------------------------------'
          'ALTER TABLE C000051 DROP INTERVENCOES'
          
            ' ---------------------------------------------------------------' +
            '---------------------------------------'
          'ALTER TABLE C000051'
          '    ADD INTERVENCOES BLOB SUB_TYPE 0 SEGMENT SIZE 240'
          
            ' ---------------------------------------------------------------' +
            '---------------------------------------'
          'ALTER TABLE C000054'
          '    ADD CIDADE VARCHAR(50)'
          
            ' ---------------------------------------------------------------' +
            '---------------------------------------'
          'CREATE TABLE C000069 ('
          '    XCODPRODUTO  VARCHAR(6),'
          '    XPRODUTO     VARCHAR(80),'
          '    XQTDE        NUMERIC(15,2),'
          '    XVALOR       NUMERIC(15,2),'
          '    XTOTAL       NUMERIC(15,2),'
          '    XUNIDADE     VARCHAR(3),'
          '    XCODOS       VARCHAR(6)'
          ');'
          
            ' ---------------------------------------------------------------' +
            '---------------------------------------'
          'CREATE TABLE C000070 ('
          '    CODCLIENTE VARCHAR(6),'
          '    NOME VARCHAR(50),'
          '    PARENTESCO VARCHAR(10),'
          '    TELEFONE VARCHAR(20))'
          
            ' ---------------------------------------------------------------' +
            '---------------------------------------'
          'CREATE TABLE C000071 ('
          '    CODIGO          VARCHAR(6) NOT NULL,'
          '    NOME            VARCHAR(80),'
          '    ENDERECO        VARCHAR(80),'
          '    BAIRRO          VARCHAR(30),'
          '    CIDADE          VARCHAR(40),'
          '    UF              VARCHAR(2),'
          '    CEP             VARCHAR(15),'
          '    TELEFONE1       VARCHAR(20),'
          '    TELEFONE2       VARCHAR(20),'
          '    CONTATO         VARCHAR(50),'
          '    CELULAR         VARCHAR(50),'
          '    DIA_PGTO        VARCHAR(5),'
          '    CNPJ            VARCHAR(30),'
          '    IE              VARCHAR(30),'
          '    DATA_CADASTRO   DATE,'
          '    FAX             VARCHAR(25),'
          '    EMAIL           VARCHAR(80),'
          '    DESCONTO        NUMERIC(15,2),'
          '    DIA_FECHAMENTO  INTEGER,'
          '    DIA_PAGAMENTO   INTEGER,'
          '    LIMITE          NUMERIC(15,2)'
          ');'
          
            ' ---------------------------------------------------------------' +
            '---------------------------------------'
          'ALTER TABLE C999999'
          '    ADD FAX VARCHAR(20),'
          '    ADD NUMERO VARCHAR(10),'
          '    ADD COMPLEMENTO VARCHAR(30),'
          '    ADD CONTRIBUINTE_IPI INTEGER,'
          '    ADD SUBSTITUTO_TRIBUTARIO INTEGER,'
          '    ADD COMENTARIOS VARCHAR(50)'
          
            ' ---------------------------------------------------------------' +
            '---------------------------------------'
          'CREATE TABLE CL00006 ('
          '    CODIGO  VARCHAR(6),'
          '    TEXTO1  VARCHAR(50),'
          '    TEXTO2  VARCHAR(50),'
          '    TEXTO3  VARCHAR(50),'
          '    VALOR1  NUMERIC(15,2),'
          '    VALOR2  NUMERIC(15,2),'
          '    VALOR3  NUMERIC(15,2),'
          '    CAMPO1  VARCHAR(50),'
          '    CAMPO2  VARCHAR(50),'
          '    CAMPO3  VARCHAR(50),'
          '    CAMPO4  VARCHAR(50),'
          '    VALOR4  NUMERIC(15,2)'
          ');'
          
            ' ---------------------------------------------------------------' +
            '---------------------------------------'
          'CREATE TABLE CL00007 ('
          '    CODIGO VARCHAR(6) NOT NULL,'
          '    CODBARRA VARCHAR(13),'
          '    PRODUTO VARCHAR(60),'
          '    UNIDADE VARCHAR(5),'
          '    LOCALIZACAO VARCHAR(50),'
          '    COMPLEMENTO VARCHAR(50),'
          '    APLICACAO VARCHAR(50),'
          '    FORNECEDOR VARCHAR(50),'
          '    MARCA VARCHAR(50),'
          '    ESTOQUE NUMERIC(15,2),'
          '    PRECO NUMERIC(15,2)'
          '    );'
          
            ' ---------------------------------------------------------------' +
            '---------------------------------------'
          'ALTER TABLE C000007'
          '    ADD CODUSUARIO VARCHAR(6)'
          
            ' ---------------------------------------------------------------' +
            '---------------------------------------'
          'ALTER TABLE C000001'
          '    ADD DESCONTO_AVISTA NUMERIC(15,2)'
          
            ' ---------------------------------------------------------------' +
            '---------------------------------------'
          '  ALTER TABLE C000001'
          '  ADD  DESCONTO_AVISTA                  NUMERIC(15,2),'
          '  ADD  DESCONTO_PRODUTO                 NUMERIC(15,2),'
          '  ADD  DESCONTO_TOTALNOTA               NUMERIC(15,2),'
          '  ADD  TIPO_VENDA                       VARCHAR(20)'
          
            ' ---------------------------------------------------------------' +
            '---------------------------------------'
          'CREATE TABLE C000072 ('
          '    COMANDO      VARCHAR(30),'
          '    NUMERO       VARCHAR(6),'
          '    DESCONTO     NUMERIC(15,2),'
          '    ACRESCIMO    NUMERIC(15,2),'
          '    DINHEIRO     NUMERIC(15,2),'
          '    CHEQUEAV     NUMERIC(15,2),'
          '    CHEQUEAP     NUMERIC(15,2),'
          '    CARTAOCRED   NUMERIC(15,2),'
          '    CARTAODEB    NUMERIC(15,2),'
          '    PROMISSORIA  NUMERIC(15,2),'
          '    CLIENTE      VARCHAR(50),'
          '    ENDERECO     VARCHAR(50),'
          '    CIDADE       VARCHAR(50),'
          '    CPF          VARCHAR(50),'
          '    CONVENIO     VARCHAR(50),'
          '    VENDEDOR     VARCHAR(50),'
          '    SEQUENCIA    VARCHAR(10)'
          ');'
          
            ' ---------------------------------------------------------------' +
            '---------------------------------------'
          'CREATE TABLE C000073 ('
          '    NUMERO      VARCHAR(6),'
          '    CODPRODUTO  VARCHAR(13),'
          '    PRODUTO     VARCHAR(30),'
          '    UNIDADE     VARCHAR(5),'
          '    QTDE        NUMERIC(15,2),'
          '    VALOR       NUMERIC(15,2),'
          '    TOTAL       NUMERIC(15,2),'
          '    DESCONTO    NUMERIC(15,2),'
          '    ACRESCIMO   NUMERIC(15,2),'
          '    ALIQUOTA    VARCHAR(5)'
          ');'
          
            ' ---------------------------------------------------------------' +
            '---------------------------------------'
          'CREATE TABLE C000074 ('
          '    CODIGO               VARCHAR(6) NOT NULL,'
          '    CODCAIXA             VARCHAR(6),'
          '    CODVENDEDOR          VARCHAR(6),'
          '    DATA                 DATE,'
          '    CODCLIENTE           VARCHAR(6),'
          '    OBS                  VARCHAR(50),'
          '    MEIO_DINHEIRO        NUMERIC(15,3),'
          '    MEIO_CHEQUEAV        NUMERIC(15,3),'
          '    MEIO_CHEQUEAP        NUMERIC(15,3),'
          '    MEIO_CARTAOCRED      NUMERIC(15,3),'
          '    MEIO_CARTAODEB       NUMERIC(15,3),'
          '    MEIO_CREDIARIO       NUMERIC(15,3),'
          '    SUBTOTAL             NUMERIC(15,3),'
          '    DESCONTO             NUMERIC(15,3),'
          '    ACRESCIMO            NUMERIC(15,3),'
          '    TOTAL                NUMERIC(15,3),'
          '    CUPOM_FISCAL         INTEGER,'
          '    NUMERO_CUPOM_FISCAL  VARCHAR(10),'
          '    RETIRADO             VARCHAR(50)'
          ');'
          
            ' ---------------------------------------------------------------' +
            '---------------------------------------'
          ''
          'CREATE TABLE C000075 ('
          '    CODIGO         VARCHAR(6) NOT NULL,'
          '    CODNOTA        VARCHAR(6),'
          '    CODPRODUTO     VARCHAR(6),'
          '    UNITARIO       NUMERIC(15,2),'
          '    TOTAL          NUMERIC(15,2),'
          '    ICMS           NUMERIC(15,2),'
          '    IPI            NUMERIC(15,2),'
          '    CFOP           VARCHAR(6),'
          '    DATA           DATE,'
          '    NUMERONOTA     VARCHAR(6),'
          '    CODCLIENTE     VARCHAR(6),'
          '    DESCONTO       NUMERIC(15,2),'
          '    ACRESCIMO      NUMERIC(15,2),'
          '    MOVIMENTO      INTEGER,'
          '    CODVENDEDOR    VARCHAR(6),'
          '    CODGRADE       VARCHAR(6),'
          '    SERIAL         VARCHAR(25),'
          '    UNIDADE        VARCHAR(3),'
          '    QTDE           NUMERIC(15,3),'
          '    VALOR_ICMS     NUMERIC(15,2),'
          '    ICMS_REDUZIDO  NUMERIC(15,2),'
          '    BASE_CALCULO   NUMERIC(15,2),'
          '    VALOR_IPI      NUMERIC(15,2),'
          '    SITUACAO       INTEGER'
          ');'
          
            ' ---------------------------------------------------------------' +
            '---------------------------------------'
          'CREATE TABLE C000076 ('
          '    CODIGO           VARCHAR(9) NOT NULL,'
          '    CODVENDA         VARCHAR(7),'
          '    CODVENDEDOR      VARCHAR(6),'
          '    CODCAIXA         VARCHAR(6),'
          '    CODCLIENTE       VARCHAR(6),'
          '    DATA_EMISSAO     DATE,'
          '    DATA_VENCIMENTO  DATE,'
          '    DATA_PAGAMENTO   DATE,'
          '    VALOR_ORIGINAL   NUMERIC(15,3),'
          '    VALOR_PAGO       NUMERIC(15,3),'
          '    VALOR_JUROS      NUMERIC(15,3),'
          '    VALOR_ATUAL      NUMERIC(15,3),'
          '    VALOR_DESCONTO   NUMERIC(15,2),'
          '    DOCUMENTO        VARCHAR(20),'
          '    TIPO             VARCHAR(20),'
          '    SITUACAO         INTEGER,'
          '    FILTRO           INTEGER,'
          '    NOSSONUMERO      VARCHAR(30),'
          '    CODREGIAO        VARCHAR(6),'
          '    CODCEDENTE       VARCHAR(6)'
          ');'
          
            ' ---------------------------------------------------------------' +
            '---------------------------------------'
          '// 26/06/2007'
          'alter table c000062'
          'add     MARGEM_AGREGADA       NUMERIC(15,2),'
          'add     BASE_SUB              NUMERIC(15,2),'
          'add     ICMS_SUB              NUMERIC(15,2)')
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
  end
end
