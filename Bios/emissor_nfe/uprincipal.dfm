object frmprincipal: Tfrmprincipal
  Left = 1
  Top = 1
  Width = 1292
  Height = 736
  Caption = 'Emissor NFE vers'#227'o 1.11'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MMMenu
  OldCreateOrder = False
  Position = poDesktopCenter
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 0
    Top = 42
    Width = 1337
    Height = 591
    Align = alClient
  end
  object Label1: TLabel
    Left = 16
    Top = 56
    Width = 32
    Height = 13
    Caption = 'Label1'
    Visible = False
  end
  object Label2: TLabel
    Left = 16
    Top = 72
    Width = 32
    Height = 13
    Caption = 'Label2'
    Visible = False
  end
  object pnlcentral: TPanel
    Left = 16
    Top = 56
    Width = 1321
    Height = 577
    BevelOuter = bvNone
    TabOrder = 3
    object Label3: TLabel
      Left = 8
      Top = 15
      Width = 179
      Height = 29
      Caption = 'Prezado cliente, '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 8
      Top = 77
      Width = 843
      Height = 29
      Caption = 
        'Assim como o certificado digital  este programa tamb'#233'm tem data ' +
        'de expira'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 8
      Top = 112
      Width = 819
      Height = 29
      Caption = 
        'isto ocorre pelo fato da necessidade de  manter manuten'#231#227'o peri'#243 +
        'dica desta'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 8
      Top = 149
      Width = 773
      Height = 29
      Caption = 
        'aplica'#231#227'o, gerando custo para os desenvolvedores, parceiros e cl' +
        'ientes.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 8
      Top = 184
      Width = 704
      Height = 29
      Caption = 
        'Por gentileza entre em contato com suporte t'#233'cnico nos telefones' +
        ':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 8
      Top = 222
      Width = 529
      Height = 29
      Caption = 'DDD (11) 97043-3730 /  96393-0108  /   3042-3730'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 8
      Top = 427
      Width = 309
      Height = 29
      Caption = 'Obrigado pela compreens'#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 8
      Top = 501
      Width = 233
      Height = 29
      Caption = 'Respons'#225'vel T'#233'cnico'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 8
      Top = 469
      Width = 134
      Height = 29
      Caption = 'Marcos Br'#225's'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label12: TLabel
      Left = 9
      Top = 254
      Width = 418
      Height = 29
      Caption = 'ou acesse o site www.marcosbras.com'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 408
      Top = 518
      Width = 585
      Height = 57
      Caption = 'FECHAR MENSAGEM E CONTINUAR EMITINDO AT'#201' EXPIRAR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object Memo1: TMemo
      Left = 408
      Top = 304
      Width = 585
      Height = 209
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Lines.Strings = (
        'Memo1')
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 1
      OnKeyPress = Memo1KeyPress
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1337
    Height = 42
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object TPanel
      Left = 0
      Top = 0
      Width = 1057
      Height = 42
      Align = alLeft
      BevelOuter = bvNone
      Ctl3D = True
      ParentCtl3D = False
      TabOrder = 0
      object btncadcli: TBitBtn
        Left = 124
        Top = 2
        Width = 113
        Height = 37
        Caption = '&Clientes'
        TabOrder = 0
        OnClick = btncadcliClick
      end
      object btnforn: TBitBtn
        Left = 240
        Top = 2
        Width = 113
        Height = 37
        Caption = '&Fornecedores'
        TabOrder = 1
        OnClick = btnfornClick
      end
      object btnprodutos: TBitBtn
        Left = 356
        Top = 2
        Width = 113
        Height = 37
        Caption = '&Produtos'
        TabOrder = 2
        OnClick = btnprodutosClick
      end
      object BitBtn1: TBitBtn
        Left = 473
        Top = 2
        Width = 113
        Height = 37
        Caption = '&Nota Fiscal'
        TabOrder = 3
        OnClick = BitBtn1Click
      end
      object btnimportar: TBitBtn
        Left = 8
        Top = 2
        Width = 113
        Height = 37
        Caption = '&Importar Pedido'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = btnimportarClick
        NumGlyphs = 2
      end
      object Button2: TButton
        Left = 624
        Top = 8
        Width = 75
        Height = 25
        Caption = 'Button2'
        TabOrder = 5
        Visible = False
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 633
    Width = 1337
    Height = 24
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object lblmensagem: TLabel
      Left = 9
      Top = 2
      Width = 86
      Height = 20
      Caption = 'lblmensagem'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -15
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 657
    Width = 1337
    Height = 19
    Panels = <>
  end
  object reResp: TMemo
    Left = 984
    Top = 56
    Width = 353
    Height = 193
    Lines.Strings = (
      'reResp')
    TabOrder = 4
  end
  object MMMenu: TMainMenu
    Left = 200
    Top = 48
    object Cadastros1: TMenuItem
      Caption = '&Cadastros'
      object IBGE1: TMenuItem
        Caption = '&IBGE'
        object Paises1: TMenuItem
          Caption = 'Paises'
          OnClick = Paises1Click
        end
        object Estados1: TMenuItem
          Caption = 'Estados'
          OnClick = Estados1Click
        end
        object Municpios1: TMenuItem
          Caption = 'Munic'#237'pios'
          OnClick = Municpios1Click
        end
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object Emitentes1: TMenuItem
        Caption = '&Emitentes'
        OnClick = Emitentes1Click
      end
      object ModeObra1: TMenuItem
        Caption = '-'
        OnClick = ModeObra1Click
      end
      object Destinatrios1: TMenuItem
        Caption = 'Clientes'
        OnClick = Destinatrios1Click
      end
      object Fornecedores1: TMenuItem
        Caption = 'Fornecedores'
        OnClick = Fornecedores1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object ransportadoras1: TMenuItem
        Caption = '&Transportadoras'
        OnClick = ransportadoras1Click
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object Unidade1: TMenuItem
        Caption = 'Unidade'
        OnClick = Unidade1Click
      end
      object ributaes1: TMenuItem
        Caption = 'T&ributa'#231#245'es'
        object Servio1: TMenuItem
          Caption = 'Servi'#231'o'
          object ImpostoI1: TMenuItem
            Caption = 'Imposto Sobre Servi'#231'o'
            OnClick = ImpostoI1Click
          end
          object iposdeServios1: TMenuItem
            Caption = 'Tipos de Servi'#231'os'
            OnClick = iposdeServios1Click
          end
          object RegimedeContribuio1: TMenuItem
            Caption = 'Regime de Contribui'#231#227'o'
            OnClick = RegimedeContribuio1Click
          end
        end
        object N7: TMenuItem
          Caption = '-'
        end
        object NaturezaOperaa1: TMenuItem
          Caption = 'Natureza Opera'#231#227'o'
          OnClick = NaturezaOperaa1Click
        end
        object CFOP1: TMenuItem
          Caption = 'CFOP'
          OnClick = CFOP1Click
        end
        object N5: TMenuItem
          Caption = '-'
        end
        object ICMS1: TMenuItem
          Caption = 'ICMS'
          OnClick = ICMS1Click
        end
        object IPI1: TMenuItem
          Caption = 'IPI'
          OnClick = IPI1Click
        end
        object PIS1: TMenuItem
          Caption = 'PIS'
          OnClick = PIS1Click
        end
        object ImpostoII1: TMenuItem
          Caption = 'Imposto Sobre Importa'#231#227'o'
          OnClick = ImpostoII1Click
        end
        object ImpostoIII1: TMenuItem
          Caption = 'Outros Impostos'
          OnClick = ImpostoIII1Click
        end
        object Cofins1: TMenuItem
          Caption = 'Cofins'
          OnClick = Cofins1Click
        end
        object N6: TMenuItem
          Caption = '-'
        end
        object SitTributriaAOrigem1: TMenuItem
          Caption = 'Sit. Tribut'#225'ria A (Origem)'
          OnClick = SitTributriaAOrigem1Click
        end
        object SitTributriaBContribuio1: TMenuItem
          Caption = 'Sit. Tribut'#225'ria B (Contribui'#231#227'o)'
          OnClick = SitTributriaBContribuio1Click
        end
        object ClassificaoFiscalNCM1: TMenuItem
          Caption = 'Classifica'#231#227'o Fiscal (NCM)'
          OnClick = ClassificaoFiscalNCM1Click
        end
        object ModDetBaseClculo1: TMenuItem
          Caption = 'Mod. Det. Base C'#225'lculo'
          OnClick = ModDetBaseClculo1Click
        end
        object ModDetBaseClculoSubsTrib1: TMenuItem
          Caption = 'Mod. Det. Base C'#225'lculo Subs. Trib.'
          OnClick = ModDetBaseClculoSubsTrib1Click
        end
        object N8: TMenuItem
          Caption = '-'
        end
        object RegimedeTributao1: TMenuItem
          Caption = 'Regime de Tributa'#231#227'o'
          OnClick = RegimedeTributao1Click
        end
        object CSOSN1: TMenuItem
          Caption = 'Simples Nacional (CSOSN)'
          OnClick = CSOSN1Click
        end
      end
      object Produtos1: TMenuItem
        Caption = '&Produtos'
        OnClick = Produtos1Click
      end
    end
    object Emissor1: TMenuItem
      Caption = '&Emissor'
      object NFE1: TMenuItem
        Caption = '&NFE'
        OnClick = NFE1Click
      end
    end
    object Lanados1: TMenuItem
      Caption = '&Lan'#231'ados'
      object NotasEmitidas1: TMenuItem
        Caption = 'Notas Emitida&s'
        OnClick = NotasEmitidas1Click
      end
    end
    object utilitario1: TMenuItem
      Caption = 'Utilit'#225'rios'
      object ExportarDados1: TMenuItem
        Caption = '&Exportar Dados TXT'
        OnClick = ExportarDados1Click
      end
      object ImportarDadosTXT1: TMenuItem
        Caption = 'Importar Dados TXT'
        OnClick = ImportarDadosTXT1Click
      end
      object N9: TMenuItem
        Caption = '-'
      end
      object ConsultaCEPnaInternet1: TMenuItem
        Caption = '&Consulta CEP na Internet'
        OnClick = ConsultaCEPnaInternet1Click
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object ApagaTodososDados1: TMenuItem
        Caption = 'Apaga Todos os Dados'
        OnClick = ApagaTodososDados1Click
      end
      object Reparar1: TMenuItem
        Caption = 'Corrigir Dados'
        OnClick = Reparar1Click
      end
    end
    object Configurao1: TMenuItem
      Caption = 'Configura'#231#227'o'
      object Indice1: TMenuItem
        Caption = 'Indice'
        OnClick = Indice1Click
      end
    end
  end
  object skin: TSkinData
    Active = False
    DisableTag = 99
    SkinControls = [xcMainMenu, xcPopupMenu, xcToolbar, xcControlbar, xcCombo, xcCheckBox, xcRadioButton, xcProgress, xcScrollbar, xcEdit, xcButton, xcBitBtn, xcSpeedButton, xcPanel, xcGroupBox, xcStatusBar, xcTab]
    SkinStore = '(none)'
    SkinFormtype = sfMainform
    Left = 608
    Top = 56
    SkinStream = {00000000}
  end
  object bloqueio: TLockApplication
    IDSistema = 251
    Demostracao = True
    Informacoes_adicionais = False
    Mostrar_Tela_Primeira_Vez = True
    Dias_Demostracao = 35
    Local_Registro = '\Software\Appro'
    Chave_Criptografia = 'LockApplication'
    Titulo_das_janelas = 'Sistema'
    Email_de_contato = 'eletronica-repa@bol.com.br'
    Site_da_Empresa = 'http://www.data.com'
    Telefones_de_Contato = '(011)97043-3730 tim'
    Versao_Trial = 1
    SMTP_Porta = 25
    EMAIL_Enviar = False
    EMAIL_Remetente = 'teste@data.com.br'
    EMAIL_Destino = 'eletronica-repa@bol.com.br'
    EMAIL_Assunto = 'Licen'#231'a ir'#225' expirar'
    EMAIL_Mensagen.Strings = (
      'Est'#225' mensagen '#233' personalizada e pode'
      'ser escrita pelo desenvolvedor para '
      'dados adicionais que deseja anexar ao'
      'e-mail! Delphi 2010')
    EMAIL_Dias_enviar = 180
    Left = 1040
    Top = 360
  end
  object Timer1: TTimer
    Left = 624
    Top = 376
  end
  object odpExec: TOpenDialog
    Left = 934
    Top = 486
  end
  object lHTTP: TIdHTTP
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = -1
    Request.ContentRangeStart = -1
    Request.ContentRangeInstanceLength = -1
    Request.Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    Request.Ranges.Units = 'bytes'
    Request.Ranges = <>
    HTTPOptions = [hoForceEncodeParams]
    Left = 24
    Top = 184
  end
  object XMLEnvio: TXMLDocument
    XML.Strings = (
      '<?xml version="1.0" encoding="utf-8" ?><response>'
      
        '<cep>69960-000</cep><uf>AC</uf><cidade>feijo</cidade><bairro></b' +
        'airro><tipo_logradouro></tipo_logradouro><logradouro></logradour' +
        'o><resultado></resultado><resultado_txt></resultado_txt><ibge_uf' +
        '>12</ibge_uf><ibge_municipio>1200302</ibge_municipio><erro>0</er' +
        'ro><msgerro></msgerro></response>')
    Left = 56
    Top = 184
    DOMVendorDesc = 'MSXML'
  end
  object IdHTTP1: TIdHTTP
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = -1
    Request.ContentRangeStart = -1
    Request.ContentRangeInstanceLength = -1
    Request.Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    Request.Ranges.Units = 'bytes'
    Request.Ranges = <>
    HTTPOptions = [hoForceEncodeParams]
    Left = 24
    Top = 416
  end
  object XMLDocument1: TXMLDocument
    Left = 56
    Top = 416
    DOMVendorDesc = 'MSXML'
  end
end
