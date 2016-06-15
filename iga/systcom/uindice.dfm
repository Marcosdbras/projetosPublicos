object frmIndice: TfrmIndice
  Left = 108
  Top = 99
  Width = 891
  Height = 613
  BorderIcons = []
  Caption = #205'ndices'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 0
    Width = 883
    Height = 45
    Align = alTop
  end
  object Label18: TLabel
    Left = 6
    Top = 558
    Width = 301
    Height = 13
    Caption = 'Cuidado!!! Esse '#233' todo sistema de numera'#231#227'o do seu programa,'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label21: TLabel
    Left = 313
    Top = 558
    Width = 300
    Height = 13
    Caption = 'qualquer altera'#231#227'o sem conhecimento de suas fun'#231#245'es poder'#225' '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label27: TLabel
    Left = 617
    Top = 558
    Width = 183
    Height = 13
    Caption = 'desconfigura-lo, tornando-o inutiliz'#225'vel.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object spdconfirma: TSpeedButton
    Left = 768
    Top = 4
    Width = 38
    Height = 33
    Flat = True
    Glyph.Data = {
      06020000424D0602000000000000760000002800000028000000140000000100
      0400000000009001000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333333333333333333333333333333333333333333333
      33333333333333333333333333333FFFFFFFFFFFF33333380000000000008333
      33338888888888883F333330CC08CCF770CC03333338F38F333338F38F333330
      CC08CCF770CC03333338F38F333338F38F333330CC07887770CC03333338F38F
      FFFFF8338F333330CC60000006CC03333338F338888883338F333330CCCCCCCC
      CCCC03333338F33FFFFFFFF38F333330C6000000006C03333338F3888888883F
      8F333330C0FFFFFFFF0C03333338F8F33333338F8F333330C0FFFFFFFF0C0333
      3338F8F33333338F8F333330C0FFFFFFFF0C03333338F8F33333338F8F333330
      C0FFFFFFFF0C03333338F8F33333338F8F33333000FFFFFFFF0003333338F8F3
      3333338F8F333330C0FFFFFFFF0C03333338F8FFFFFFFF8F8333333800000000
      0000833333338888888888883333333333333333333333333333333333333333
      3333333333333333333333333333333333333333333333333333333333333333
      33333333333333333333}
    NumGlyphs = 2
    OnClick = spdconfirmaClick
  end
  object SpeedButton1: TSpeedButton
    Left = 728
    Top = 4
    Width = 38
    Height = 33
    Flat = True
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
      3333333777333777FF3333993333339993333377FF3333377FF3399993333339
      993337777FF3333377F3393999333333993337F777FF333337FF993399933333
      399377F3777FF333377F993339993333399377F33777FF33377F993333999333
      399377F333777FF3377F993333399933399377F3333777FF377F993333339993
      399377FF3333777FF7733993333339993933373FF3333777F7F3399933333399
      99333773FF3333777733339993333339933333773FFFFFF77333333999999999
      3333333777333777333333333999993333333333377777333333}
    NumGlyphs = 2
    OnClick = SpeedButton1Click
  end
  object sbxmsg: TScrollBox
    Left = 5
    Top = 52
    Width = 433
    Height = 189
    TabOrder = 0
    object Label3: TLabel
      Left = 8
      Top = 102
      Width = 58
      Height = 13
      Caption = 'Observa'#231#227'o'
    end
    object Label4: TLabel
      Left = 8
      Top = 185
      Width = 58
      Height = 13
      Caption = 'Observa'#231#227'o'
    end
    object Label6: TLabel
      Left = 8
      Top = 11
      Width = 93
      Height = 13
      Caption = 'Mensagem Rodap'#233
    end
    object Label7: TLabel
      Left = 8
      Top = 56
      Width = 114
      Height = 13
      Caption = 'Mensagem Fechamento'
    end
    object Label69: TLabel
      Left = 8
      Top = 265
      Width = 99
      Height = 13
      Caption = 'Observa'#231#227'o Rodap'#233
    end
    object Label10: TLabel
      Left = 12
      Top = 344
      Width = 64
      Height = 13
      Caption = 'Tela Principal'
    end
    object lblt1: TLabel
      Left = 12
      Top = 400
      Width = 60
      Height = 13
      Caption = 'Figura lateral'
    end
    object Label11: TLabel
      Left = 12
      Top = 456
      Width = 71
      Height = 13
      Caption = 'Figura Superior'
    end
    object Label12: TLabel
      Left = 12
      Top = 512
      Width = 106
      Height = 13
      Caption = 'Figura Principal Venda'
    end
    object mmoobs: TDBMemo
      Left = 8
      Top = 118
      Width = 369
      Height = 49
      DataField = 'OBS'
      DataSource = frmDados.Dts_Indice
      TabOrder = 0
    end
    object mmotxt: TDBMemo
      Left = 8
      Top = 201
      Width = 369
      Height = 55
      DataField = 'OBS1'
      DataSource = frmDados.Dts_Indice
      TabOrder = 1
    end
    object edimens: TDBEdit
      Left = 8
      Top = 28
      Width = 369
      Height = 21
      DataField = 'MENS'
      DataSource = frmDados.Dts_Indice
      TabOrder = 2
      OnKeyPress = mmoobsKeyPress
    end
    object editxt: TDBEdit
      Left = 8
      Top = 74
      Width = 369
      Height = 21
      DataField = 'TXT'
      DataSource = frmDados.Dts_Indice
      TabOrder = 3
      OnKeyPress = mmoobsKeyPress
    end
    object mmoobsrodape: TDBMemo
      Left = 8
      Top = 281
      Width = 369
      Height = 55
      DataField = 'OBS_RODAPE'
      DataSource = frmDados.Dts_Indice
      TabOrder = 4
    end
    object btntela_P: TButton
      Left = 8
      Top = 360
      Width = 385
      Height = 33
      Caption = 'btntela_P'
      TabOrder = 5
      OnClick = btntela_PClick
    end
    object btntela_L: TButton
      Left = 8
      Top = 416
      Width = 385
      Height = 33
      Caption = 'btntela_L'
      TabOrder = 6
      OnClick = btntela_LClick
    end
    object btntela_S: TButton
      Left = 8
      Top = 472
      Width = 385
      Height = 33
      Caption = 'btntela_S'
      TabOrder = 7
      OnClick = btntela_SClick
    end
    object btntela_pv: TButton
      Left = 8
      Top = 528
      Width = 385
      Height = 33
      Caption = 'btntela_pv'
      TabOrder = 8
      OnClick = btntela_pvClick
    end
  end
  object d: TScrollBox
    Left = 5
    Top = 336
    Width = 433
    Height = 216
    TabOrder = 1
    object Label34: TLabel
      Left = 3
      Top = 4
      Width = 161
      Height = 13
      Caption = 'Configura'#231#227'o para envio de e-mail'
    end
    object Label37: TLabel
      Left = 5
      Top = 23
      Width = 22
      Height = 13
      Caption = 'Host'
    end
    object Label35: TLabel
      Left = 685
      Top = 90
      Width = 102
      Height = 13
      Caption = 'Tipo de Autentica'#231#227'o'
      Visible = False
    end
    object Label36: TLabel
      Left = 835
      Top = 90
      Width = 107
      Height = 13
      Caption = '1=Login / 2=Nenhuma'
      Visible = False
    end
    object Label44: TLabel
      Left = 5
      Top = 61
      Width = 26
      Height = 13
      Caption = 'Login'
    end
    object Label38: TLabel
      Left = 161
      Top = 61
      Width = 31
      Height = 13
      Caption = 'Senha'
    end
    object Label39: TLabel
      Left = 5
      Top = 101
      Width = 25
      Height = 13
      Caption = 'Porta'
    end
    object Label40: TLabel
      Left = 680
      Top = 64
      Width = 87
      Height = 13
      Caption = 'Tipo Autentica'#231#227'o'
      Visible = False
    end
    object Label41: TLabel
      Left = 807
      Top = 64
      Width = 145
      Height = 13
      Caption = '1=Usar UserName e Password'
      Visible = False
    end
    object Label42: TLabel
      Left = 691
      Top = 115
      Width = 33
      Height = 13
      Caption = 'Vers'#227'o'
      Visible = False
    end
    object Label43: TLabel
      Left = 773
      Top = 116
      Width = 54
      Height = 13
      Caption = '1=Sv tipo 1'
      Visible = False
    end
    object Label45: TLabel
      Left = 66
      Top = 101
      Width = 27
      Height = 13
      Caption = 'e-mail'
    end
    object Label46: TLabel
      Left = 5
      Top = 143
      Width = 28
      Height = 13
      Caption = 'Nome'
    end
    object Label73: TLabel
      Left = 88
      Top = 142
      Width = 68
      Height = 13
      Caption = 'e-mail Retorno'
      FocusControl = ediemailret
    end
    object Label74: TLabel
      Left = 8
      Top = 186
      Width = 69
      Height = 13
      Caption = 'Nome Retorno'
      FocusControl = edinomeret
    end
    object ediauthtype: TEdit
      Left = 795
      Top = 87
      Width = 33
      Height = 21
      TabOrder = 0
      Text = 'ediauthtype'
      Visible = False
    end
    object edisocksauth: TEdit
      Left = 771
      Top = 60
      Width = 25
      Height = 21
      TabOrder = 1
      Text = 'edisocksauth'
      Visible = False
    end
    object edisocksversi: TEdit
      Left = 731
      Top = 112
      Width = 33
      Height = 21
      TabOrder = 2
      Text = 'edisocksversi'
      Visible = False
    end
    object edihost: TDBEdit
      Left = 4
      Top = 37
      Width = 254
      Height = 21
      DataField = 'HOST'
      DataSource = frmDados.Dts_Indice
      TabOrder = 3
      OnKeyPress = mmoobsKeyPress
    end
    object rgpauthtype: TDBRadioGroup
      Left = 264
      Top = 1
      Width = 145
      Height = 73
      Caption = 'Tipo Autentica'#231#227'o'
      DataField = 'AUTHTYPE'
      DataSource = frmDados.Dts_Indice
      Items.Strings = (
        'Nenhuma'
        'Login'
        'Custom')
      TabOrder = 4
      Values.Strings = (
        '0'
        '1'
        '2')
    end
    object ediuser_name: TDBEdit
      Left = 4
      Top = 75
      Width = 133
      Height = 21
      DataField = 'USER_NAME'
      DataSource = frmDados.Dts_Indice
      TabOrder = 5
      OnKeyPress = mmoobsKeyPress
    end
    object edipass_word: TDBEdit
      Left = 160
      Top = 75
      Width = 97
      Height = 21
      DataField = 'PASS_WORD'
      DataSource = frmDados.Dts_Indice
      PasswordChar = '*'
      TabOrder = 6
      OnKeyPress = mmoobsKeyPress
    end
    object ediport: TDBEdit
      Left = 5
      Top = 117
      Width = 50
      Height = 21
      DataField = 'PORT'
      DataSource = frmDados.Dts_Indice
      TabOrder = 7
      OnKeyPress = mmoobsKeyPress
    end
    object rgpversao: TDBRadioGroup
      Left = 264
      Top = 79
      Width = 145
      Height = 61
      Caption = 'Vers'#227'o Socket'
      DataField = 'SOCKSVERSI'
      DataSource = frmDados.Dts_Indice
      Items.Strings = (
        'Nenhuma'
        'Sv Tipo 1')
      TabOrder = 8
      Values.Strings = (
        '0'
        '1')
    end
    object rgpsockauth: TDBRadioGroup
      Left = 264
      Top = 143
      Width = 145
      Height = 57
      Caption = 'Tipo Aut. Socket'
      DataField = 'SOCKSAUTH'
      DataSource = frmDados.Dts_Indice
      Items.Strings = (
        'Nenhuma'
        'UserName e PassWord')
      TabOrder = 9
      Values.Strings = (
        '0'
        '1')
    end
    object edimail: TDBEdit
      Left = 64
      Top = 117
      Width = 193
      Height = 21
      DataField = 'EMAIL'
      DataSource = frmDados.Dts_Indice
      TabOrder = 10
      OnKeyPress = mmoobsKeyPress
    end
    object edinome: TDBEdit
      Left = 6
      Top = 159
      Width = 75
      Height = 21
      DataField = 'NOME'
      DataSource = frmDados.Dts_Indice
      TabOrder = 11
      OnKeyPress = mmoobsKeyPress
    end
    object ediemailret: TDBEdit
      Left = 88
      Top = 158
      Width = 169
      Height = 21
      DataField = 'EMAILRET'
      DataSource = frmDados.Dts_Indice
      TabOrder = 12
    end
    object edinomeret: TDBEdit
      Left = 88
      Top = 182
      Width = 168
      Height = 21
      DataField = 'NOMERET'
      DataSource = frmDados.Dts_Indice
      TabOrder = 13
    end
  end
  object sbxado: TScrollBox
    Left = 5
    Top = 244
    Width = 433
    Height = 89
    TabOrder = 2
    object Label55: TLabel
      Left = 8
      Top = 2
      Width = 227
      Height = 13
      Caption = 'Caminho bco dados systcom Produtos Vendidos'
    end
    object Label57: TLabel
      Left = 8
      Top = 39
      Width = 26
      Height = 13
      Caption = 'Login'
    end
    object Label58: TLabel
      Left = 160
      Top = 39
      Width = 31
      Height = 13
      Caption = 'Senha'
    end
    object Label61: TLabel
      Left = 8
      Top = 89
      Width = 184
      Height = 13
      Caption = 'Caminho bco dados systcom financeiro'
    end
    object Label62: TLabel
      Left = 8
      Top = 128
      Width = 126
      Height = 13
      Caption = 'Caminho bco dados DBF'#180's'
    end
    object Label19: TLabel
      Left = 8
      Top = 172
      Width = 127
      Height = 13
      Caption = 'Caminho Transmiss'#227'o NFE'
    end
    object Label82: TLabel
      Left = 8
      Top = 210
      Width = 124
      Height = 13
      Caption = 'Retorno Transmiss'#227'o NFE'
    end
    object btntesteado: TButton
      Left = 296
      Top = 51
      Width = 113
      Height = 25
      Caption = 'Testar Conex'#227'o Ado'
      TabOrder = 0
      OnClick = btntesteadoClick
    end
    object edicaminhoado: TDBEdit
      Left = 8
      Top = 17
      Width = 401
      Height = 21
      DataField = 'CAMINHOBCOADO'
      DataSource = frmDados.Dts_Indice
      TabOrder = 1
      OnKeyPress = mmoobsKeyPress
    end
    object ediloginado: TDBEdit
      Left = 8
      Top = 54
      Width = 145
      Height = 21
      DataField = 'LOGINADO'
      DataSource = frmDados.Dts_Indice
      TabOrder = 2
      OnKeyPress = mmoobsKeyPress
    end
    object edisenhaado: TDBEdit
      Left = 160
      Top = 55
      Width = 129
      Height = 21
      DataField = 'SENHAADO'
      DataSource = frmDados.Dts_Indice
      PasswordChar = '*'
      TabOrder = 3
      OnKeyPress = mmoobsKeyPress
    end
    object edicaminhoado_2: TDBEdit
      Left = 8
      Top = 103
      Width = 400
      Height = 21
      DataField = 'CAMINHOBCOADO_2'
      DataSource = frmDados.Dts_Indice
      TabOrder = 4
      OnKeyPress = mmoobsKeyPress
    end
    object EDICAMINHODBF_1: TDBEdit
      Left = 8
      Top = 145
      Width = 400
      Height = 21
      DataField = 'CAMINHODBF_1'
      DataSource = frmDados.Dts_Indice
      TabOrder = 5
      OnKeyPress = mmoobsKeyPress
    end
    object DBEdit1: TDBEdit
      Left = 8
      Top = 186
      Width = 401
      Height = 21
      CharCase = ecUpperCase
      DataField = 'DIRNFE'
      DataSource = frmDados.Dts_Indice
      TabOrder = 6
      OnKeyPress = DBEdit18KeyPress
    end
    object DBEdit9: TDBEdit
      Left = 8
      Top = 225
      Width = 401
      Height = 21
      CharCase = ecUpperCase
      DataField = 'RDIRNFE'
      DataSource = frmDados.Dts_Indice
      TabOrder = 7
      OnKeyPress = DBEdit18KeyPress
    end
    object rgbporta: TRadioGroup
      Left = 0
      Top = 250
      Width = 377
      Height = 116
      Caption = 'Caminho Emissor ECF'
      Items.Strings = (
        'Lpt1'
        'Lpt2'
        'Lpt3'
        'Lpt4'
        'Arquivo'
        'Rede')
      TabOrder = 8
      OnClick = rgbportaClick
    end
    object DBEdit10: TDBEdit
      Left = 0
      Top = 369
      Width = 377
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CAMINHO_ECF'
      DataSource = frmDados.Dts_Indice
      TabOrder = 9
      OnKeyPress = DBEdit18KeyPress
    end
    object DBRadioGroup3: TDBRadioGroup
      Left = 1
      Top = 397
      Width = 374
      Height = 49
      Caption = 'Ambiente S@T'
      DataField = 'ambientesat'
      DataSource = frmDados.Dts_Indice
      Items.Strings = (
        'Produ'#231#227'o'
        'Homologa'#231#227'o')
      TabOrder = 10
      Values.Strings = (
        '0'
        '1')
    end
  end
  object ScrollBox2: TScrollBox
    Left = 440
    Top = 53
    Width = 425
    Height = 188
    TabOrder = 3
    object Label59: TLabel
      Left = 8
      Top = 3
      Width = 71
      Height = 13
      Caption = 'Per'#237'odo Pr'#233'vio'
    end
    object Label60: TLabel
      Left = 56
      Top = 23
      Width = 21
      Height = 13
      Caption = 'Dias'
    end
    object Label63: TLabel
      Left = 131
      Top = 3
      Width = 101
      Height = 13
      Caption = 'Opcao Venda a Vista'
    end
    object Label64: TLabel
      Left = 8
      Top = 46
      Width = 111
      Height = 13
      Caption = 'Tipo padrao de Parcela'
    end
    object Label65: TLabel
      Left = 132
      Top = 45
      Width = 91
      Height = 13
      Caption = 'Limite de Desconto'
      FocusControl = edilimite
    end
    object Label66: TLabel
      Left = 216
      Top = 65
      Width = 8
      Height = 13
      Caption = '%'
    end
    object Label67: TLabel
      Left = 8
      Top = 87
      Width = 51
      Height = 13
      Caption = 'Max. Parc.'
      FocusControl = edimaxparc
    end
    object Label68: TLabel
      Left = 64
      Top = 87
      Width = 85
      Height = 13
      Caption = 'Num. C'#243'pia(s) Vd.'
      FocusControl = edinumcopiasvd
    end
    object Label70: TLabel
      Left = 243
      Top = 88
      Width = 91
      Height = 13
      Caption = 'Avan'#231'a Linha Bob.'
      FocusControl = ediavancalin
    end
    object Label71: TLabel
      Left = 8
      Top = 128
      Width = 73
      Height = 13
      Caption = 'Redu'#231#227'o ICMS'
      FocusControl = edireducaoicms
    end
    object Label72: TLabel
      Left = 30
      Top = 256
      Width = 82
      Height = 13
      Caption = 'Dados Adicionais'
      FocusControl = edida1
    end
    object Label76: TLabel
      Left = 108
      Top = 128
      Width = 47
      Height = 13
      Caption = 'Pr'#243'x. N.F.'
    end
    object Label77: TLabel
      Left = 161
      Top = 87
      Width = 16
      Height = 13
      Caption = 'Pd.'
      FocusControl = edipd
    end
    object Label13: TLabel
      Left = 243
      Top = 43
      Width = 94
      Height = 13
      Caption = 'Tp. Acum. Despesa'
    end
    object Label14: TLabel
      Left = 164
      Top = 128
      Width = 67
      Height = 13
      Caption = 'Venda Balc'#227'o'
    end
    object lblopavista: TLabel
      Left = 176
      Top = 24
      Width = 50
      Height = 13
      Caption = 'lblopavista'
    end
    object lbltppdrpgto: TLabel
      Left = 56
      Top = 64
      Width = 55
      Height = 13
      Caption = 'lbltppdrpgto'
    end
    object lblcodpass: TLabel
      Left = 288
      Top = 64
      Width = 50
      Height = 13
      Caption = 'lblcodpass'
    end
    object Label15: TLabel
      Left = 294
      Top = 128
      Width = 42
      Height = 13
      Caption = 'Produtos'
      Visible = False
    end
    object Label16: TLabel
      Left = 243
      Top = 3
      Width = 76
      Height = 13
      Caption = 'Tp. Acum. Ativo'
    end
    object lblcodativo: TLabel
      Left = 288
      Top = 24
      Width = 51
      Height = 13
      Caption = 'lblcodativo'
    end
    object Label17: TLabel
      Left = 8
      Top = 191
      Width = 46
      Height = 13
      Caption = 'Pr'#233'-Prazo'
      FocusControl = ediprazo
    end
    object lblcodcsitp: TLabel
      Left = 106
      Top = 210
      Width = 50
      Height = 13
      Caption = 'lblcodcsitp'
    end
    object Label20: TLabel
      Left = 65
      Top = 191
      Width = 102
      Height = 13
      Caption = 'Cod. Sit. Conta Pagar'
    end
    object Label22: TLabel
      Left = 197
      Top = 191
      Width = 115
      Height = 13
      Caption = 'Cod. Sit. Conta Receber'
    end
    object lblcodcsitr: TLabel
      Left = 238
      Top = 210
      Width = 47
      Height = 13
      Caption = 'lblcodcsitr'
    end
    object Label31: TLabel
      Left = 155
      Top = 256
      Width = 71
      Height = 13
      Caption = 'Destaque linha'
    end
    object Label32: TLabel
      Left = 339
      Top = 256
      Width = 36
      Height = 13
      Caption = 'Imprime'
    end
    object Label33: TLabel
      Left = 8
      Top = 280
      Width = 9
      Height = 13
      Caption = '1)'
    end
    object Label47: TLabel
      Left = 8
      Top = 304
      Width = 9
      Height = 13
      Caption = '2)'
    end
    object Label48: TLabel
      Left = 8
      Top = 328
      Width = 9
      Height = 13
      Caption = '3)'
    end
    object Label49: TLabel
      Left = 8
      Top = 352
      Width = 9
      Height = 13
      Caption = '4)'
    end
    object Label50: TLabel
      Left = 8
      Top = 376
      Width = 9
      Height = 13
      Caption = '5)'
    end
    object Label51: TLabel
      Left = 8
      Top = 400
      Width = 9
      Height = 13
      Caption = '6)'
    end
    object Label52: TLabel
      Left = 8
      Top = 428
      Width = 9
      Height = 13
      Caption = '7)'
    end
    object Label53: TLabel
      Left = 8
      Top = 450
      Width = 9
      Height = 13
      Caption = '8)'
    end
    object Label54: TLabel
      Left = 16
      Top = 1072
      Width = 37
      Height = 13
      Caption = 'Entrega'
    end
    object Label56: TLabel
      Left = 16
      Top = 1093
      Width = 46
      Height = 13
      Caption = 'Comercial'
    end
    object Label75: TLabel
      Left = 16
      Top = 1116
      Width = 46
      Height = 13
      Caption = 'Cobran'#231'a'
    end
    object Label78: TLabel
      Left = 16
      Top = 1049
      Width = 80
      Height = 13
      Caption = 'Correspond'#234'ncia'
    end
    object Label79: TLabel
      Left = 321
      Top = 1048
      Width = 35
      Height = 13
      Caption = 'Mostrar'
    end
    object Label80: TLabel
      Left = 103
      Top = 1048
      Width = 28
      Height = 13
      Caption = 'T'#237'tulo'
    end
    object Label81: TLabel
      Left = 16
      Top = 1148
      Width = 197
      Height = 13
      Caption = 'T'#237'tulos outras informa'#231#245'es sobre o cliente'
    end
    object lblcodcsitp1: TLabel
      Left = 106
      Top = 234
      Width = 56
      Height = 13
      Caption = 'lblcodcsitp1'
    end
    object lblcodcsitr1: TLabel
      Left = 238
      Top = 234
      Width = 53
      Height = 13
      Caption = 'lblcodcsitr1'
    end
    object Bevel3: TBevel
      Left = 16
      Top = 1534
      Width = 337
      Height = 53
      Shape = bsFrame
    end
    object Label85: TLabel
      Left = 24
      Top = 1539
      Width = 32
      Height = 13
      Caption = 'Inativo'
    end
    object Label86: TLabel
      Left = 202
      Top = 1539
      Width = 53
      Height = 13
      Caption = 'Bloqueiado'
    end
    object ediperiodo: TDBEdit
      Left = 8
      Top = 20
      Width = 41
      Height = 21
      DataField = 'PERIODO_PREVIO'
      DataSource = frmDados.Dts_Indice
      TabOrder = 0
      OnKeyPress = mmoobsKeyPress
    end
    object rgbehorc: TDBRadioGroup
      Left = 15
      Top = 478
      Width = 352
      Height = 52
      Caption = 'Inicia Imprimir no Frente de Caixa'
      Columns = 2
      DataField = 'EHORC'
      DataSource = frmDados.Dts_Indice
      Items.Strings = (
        'Pedido'
        'Em Branco'
        'Or'#231'amento')
      TabOrder = 13
      Values.Strings = (
        '1'
        '0'
        '2')
    end
    object DBRadioGroup1: TDBRadioGroup
      Left = 15
      Top = 534
      Width = 352
      Height = 52
      Caption = 'Inicia Prefer'#234'ncia no Frente de Caixa'
      Columns = 2
      DataField = 'EHENTREGA'
      DataSource = frmDados.Dts_Indice
      Items.Strings = (
        'Entrega'
        'Em Branco'
        'Retira')
      TabOrder = 14
      Values.Strings = (
        '1'
        '0'
        '2')
    end
    object edilimite: TDBEdit
      Left = 132
      Top = 61
      Width = 77
      Height = 21
      DataField = 'LIMITEDESC'
      DataSource = frmDados.Dts_Indice
      TabOrder = 4
      OnKeyPress = edilimiteKeyPress
    end
    object edimaxparc: TDBEdit
      Left = 8
      Top = 103
      Width = 49
      Height = 21
      DataField = 'MAXPARC'
      DataSource = frmDados.Dts_Indice
      TabOrder = 6
      OnKeyPress = edimaxparcKeyPress
    end
    object edinumcopiasvd: TDBEdit
      Left = 64
      Top = 103
      Width = 89
      Height = 21
      DataField = 'NCOPIASV'
      DataSource = frmDados.Dts_Indice
      TabOrder = 7
      OnKeyPress = edinumcopiasvdKeyPress
    end
    object DBRadioGroup6: TDBRadioGroup
      Left = 15
      Top = 754
      Width = 350
      Height = 78
      Caption = 'Tipo de Impress'#227'o Venda Balc'#227'o'
      Columns = 2
      DataField = 'TPIMPV'
      DataSource = frmDados.Dts_Indice
      Items.Strings = (
        'N'#227'o Imprime'
        'Raz'#227'o   30 Lin X   80 Col'
        'Raz'#227'o   30 Lin X 140 Col'
        'Bobina  70 Col'
        'Bobina 60 Col')
      TabOrder = 15
      Values.Strings = (
        '0'
        '1'
        '2'
        '3'
        '4')
    end
    object ediavancalin: TDBEdit
      Left = 243
      Top = 104
      Width = 97
      Height = 21
      DataField = 'PULALINHA'
      DataSource = frmDados.Dts_Indice
      TabOrder = 9
      OnKeyPress = ediavancalinKeyPress
    end
    object DBRadioGroup9: TDBRadioGroup
      Left = 15
      Top = 888
      Width = 349
      Height = 45
      Caption = 'Quantidade Linhas Notas Fiscais'
      Columns = 2
      DataField = 'LINHAS_NF'
      DataSource = frmDados.Dts_Indice
      Items.Strings = (
        '66 Linhas'
        '88 Linhas')
      TabOrder = 16
      Values.Strings = (
        '0'
        '1')
    end
    object edireducaoicms: TDBEdit
      Left = 8
      Top = 144
      Width = 81
      Height = 21
      DataField = 'REDUCAOICMS'
      DataSource = frmDados.Dts_Indice
      TabOrder = 10
      OnKeyPress = edireducaoicmsKeyPress
    end
    object edida1: TDBEdit
      Left = 29
      Top = 273
      Width = 300
      Height = 21
      DataField = 'DA1'
      DataSource = frmDados.Dts_Indice
      TabOrder = 17
      OnKeyPress = edida1KeyPress
    end
    object edida2: TDBEdit
      Left = 29
      Top = 298
      Width = 300
      Height = 21
      DataField = 'DA2'
      DataSource = frmDados.Dts_Indice
      TabOrder = 18
      OnKeyPress = edida2KeyPress
    end
    object edida3: TDBEdit
      Left = 29
      Top = 323
      Width = 300
      Height = 21
      DataField = 'DA3'
      DataSource = frmDados.Dts_Indice
      TabOrder = 19
      OnKeyPress = edida3KeyPress
    end
    object edida4: TDBEdit
      Left = 29
      Top = 348
      Width = 300
      Height = 21
      DataField = 'DA4'
      DataSource = frmDados.Dts_Indice
      TabOrder = 20
      OnKeyPress = edida4KeyPress
    end
    object edida5: TDBEdit
      Left = 29
      Top = 373
      Width = 300
      Height = 21
      DataField = 'DA5'
      DataSource = frmDados.Dts_Indice
      TabOrder = 21
      OnKeyPress = edida5KeyPress
    end
    object edida6: TDBEdit
      Left = 29
      Top = 397
      Width = 300
      Height = 21
      DataField = 'DA6'
      DataSource = frmDados.Dts_Indice
      TabOrder = 22
      OnKeyPress = edida6KeyPress
    end
    object edida7: TDBEdit
      Left = 29
      Top = 422
      Width = 300
      Height = 21
      DataField = 'DA7'
      DataSource = frmDados.Dts_Indice
      TabOrder = 23
      OnKeyPress = edida7KeyPress
    end
    object edida8: TDBEdit
      Left = 29
      Top = 446
      Width = 300
      Height = 21
      TabStop = False
      DataField = 'DA8'
      DataSource = frmDados.Dts_Indice
      TabOrder = 24
      OnKeyPress = edida8KeyPress
    end
    object DBRadioGroup19: TDBRadioGroup
      Left = 15
      Top = 994
      Width = 349
      Height = 52
      Caption = 'Quando Inserir Nova Cota'#231#227'o'
      Columns = 2
      DataField = 'QDONOVOPEDINT'
      DataSource = frmDados.Dts_Indice
      Items.Strings = (
        'Nenhum'
        'Or'#231'amento'
        'Pedido'
        'Nota Fiscal')
      TabOrder = 25
      Values.Strings = (
        '-1'
        '0'
        '1'
        '2')
    end
    object edicodavista: TDBEdit
      Left = 133
      Top = 20
      Width = 36
      Height = 21
      DataField = 'CODAVISTA'
      DataSource = frmDados.Dts_Indice
      TabOrder = 1
      OnChange = edicodavistaChange
      OnKeyPress = edicodavistaKeyPress
    end
    object ediparcpadrao: TDBEdit
      Left = 10
      Top = 60
      Width = 39
      Height = 21
      DataField = 'PARCPADRAO'
      DataSource = frmDados.Dts_Indice
      TabOrder = 3
      OnChange = ediparcpadraoChange
      OnKeyPress = ediparcpadraoKeyPress
    end
    object edinnf: TEdit
      Left = 96
      Top = 144
      Width = 57
      Height = 21
      TabOrder = 11
      Text = 'edinnf'
      OnKeyPress = edinnfKeyPress
    end
    object edipd: TDBEdit
      Left = 159
      Top = 103
      Width = 74
      Height = 21
      DataField = 'NCOPIASO'
      DataSource = frmDados.Dts_Indice
      TabOrder = 8
      OnKeyPress = edipdKeyPress
    end
    object DBRadioGroup20: TDBRadioGroup
      Left = 15
      Top = 672
      Width = 350
      Height = 78
      Caption = 'Tipo de Impress'#227'o Venda Interna'
      Columns = 2
      DataField = 'TPIMPVI'
      DataSource = frmDados.Dts_Indice
      Items.Strings = (
        'N'#227'o Imprime'
        'Direto LPT1 Carta Cont'#237'nuo '
        'Laser Jato de Tinta A4'
        'Bobina  70 Col X 2 Linhas'
        'Bobina 70 Col X 1 Linha'
        'Modelo 2')
      TabOrder = 26
      Values.Strings = (
        '0'
        '1'
        '2'
        '3'
        '4'
        '5')
    end
    object editipoctapass: TDBEdit
      Left = 245
      Top = 60
      Width = 36
      Height = 21
      DataField = 'TIPOCTAPASSIVO'
      DataSource = frmDados.Dts_Indice
      TabOrder = 5
      OnChange = editipoctapassChange
      OnKeyPress = editipoctapassKeyPress
    end
    object ckbimpcabcli: TCheckBox
      Left = 160
      Top = 141
      Width = 105
      Height = 17
      TabStop = False
      Caption = 'Imp. Cab. Inf. Cli?'
      TabOrder = 27
    end
    object ckbimpvlrreccli: TCheckBox
      Left = 160
      Top = 157
      Width = 105
      Height = 17
      TabStop = False
      Caption = 'Imp. Vlr. Rec. Cli?'
      TabOrder = 28
    end
    object ckbgravaqua: TCheckBox
      Left = 293
      Top = 139
      Width = 85
      Height = 17
      TabStop = False
      Caption = 'Grava Qtde?'
      TabOrder = 29
      Visible = False
    end
    object editipoctaativo: TDBEdit
      Left = 245
      Top = 20
      Width = 36
      Height = 21
      DataField = 'TIPOCTAATIVO'
      DataSource = frmDados.Dts_Indice
      TabOrder = 2
      OnChange = editipoctaativoChange
      OnKeyPress = editipoctapassKeyPress
    end
    object ediprazo: TDBEdit
      Left = 9
      Top = 206
      Width = 45
      Height = 21
      DataField = 'PRAZO'
      DataSource = frmDados.Dts_Indice
      TabOrder = 12
    end
    object edicsitp: TDBEdit
      Left = 63
      Top = 206
      Width = 36
      Height = 21
      DataField = 'CSITP'
      DataSource = frmDados.Dts_Indice
      TabOrder = 30
      OnChange = edicsitpChange
      OnKeyPress = editipoctapassKeyPress
    end
    object edicsitr: TDBEdit
      Left = 195
      Top = 206
      Width = 36
      Height = 21
      DataField = 'CSITR'
      DataSource = frmDados.Dts_Indice
      TabOrder = 31
      OnChange = edicsitrChange
      OnKeyPress = editipoctapassKeyPress
    end
    object DBRadioGroup24: TDBRadioGroup
      Left = 16
      Top = 1405
      Width = 337
      Height = 52
      Caption = 'Principal C'#243'digo do Sistema'
      Columns = 2
      DataField = 'CODPRINPRO'
      DataSource = frmDados.Dts_Indice
      Items.Strings = (
        'Autom'#225'tico'
        'Auxiliar'
        'Barra')
      TabOrder = 32
      Values.Strings = (
        '1'
        '2'
        '3')
    end
    object CKBIMPDESTDA1: TCheckBox
      Left = 352
      Top = 275
      Width = 17
      Height = 17
      Caption = 'Imprime Destaque Linha 1'
      TabOrder = 33
    end
    object CKBIMPDESTDA2: TCheckBox
      Left = 352
      Top = 300
      Width = 17
      Height = 17
      Caption = 'Imprime Destaque Linha 2'
      TabOrder = 34
    end
    object CKBIMPDESTDA3: TCheckBox
      Left = 352
      Top = 325
      Width = 17
      Height = 17
      Caption = 'Imprime Destaque Linha 3'
      TabOrder = 35
    end
    object CKBIMPDESTDA4: TCheckBox
      Left = 352
      Top = 349
      Width = 17
      Height = 17
      Caption = 'Imprime Destaque Linha 4'
      TabOrder = 36
    end
    object CKBIMPDESTDA5: TCheckBox
      Left = 351
      Top = 374
      Width = 17
      Height = 17
      Caption = 'Imprime Destaque Linha 5'
      TabOrder = 37
    end
    object CKBIMPDESTDA6: TCheckBox
      Left = 351
      Top = 398
      Width = 17
      Height = 17
      Caption = 'Imprime Destaque Linha 6'
      TabOrder = 38
    end
    object CKBIMPDESTDA7: TCheckBox
      Left = 351
      Top = 423
      Width = 17
      Height = 17
      Caption = 'Imprime Destaque Linha 7'
      TabOrder = 39
    end
    object CKBIMPDESTDA8: TCheckBox
      Left = 351
      Top = 448
      Width = 17
      Height = 17
      Caption = 'Imprime Destaque Linha 8'
      TabOrder = 40
    end
    object CKBVENDVENDA: TCheckBox
      Left = 15
      Top = 594
      Width = 233
      Height = 17
      Caption = 'Permite Venda Sem Escolha de Vendedor'
      TabOrder = 41
    end
    object CKBOBRCLIPARC: TCheckBox
      Left = 15
      Top = 612
      Width = 217
      Height = 17
      Caption = 'Permite Parcelar Sem Cliente'
      TabOrder = 42
    end
    object CKBABRIRPRODFV: TCheckBox
      Left = 15
      Top = 629
      Width = 215
      Height = 17
      Caption = 'Listar Produto Filtrando Descri'#231#227'o'
      TabOrder = 43
    end
    object CKBABRRESUPRODV: TCheckBox
      Left = 15
      Top = 648
      Width = 233
      Height = 17
      Caption = 'Mostrar Resumo de Produtos na Venda'
      TabOrder = 44
    end
    object CKBBAIXAQDOORCPED: TCheckBox
      Left = 15
      Top = 834
      Width = 241
      Height = 17
      Caption = 'Baixar Mercadoria no Or'#231'amento Interno'
      TabOrder = 45
    end
    object CKBTCLFINALIZA: TCheckBox
      Left = 15
      Top = 852
      Width = 201
      Height = 17
      Caption = 'Permite Finalizar Pedido Com <F11>'
      TabOrder = 46
    end
    object CKBCOMPACTAR_LINHAS_NF: TCheckBox
      Left = 15
      Top = 938
      Width = 218
      Height = 17
      Caption = 'Condesar Impress'#227'o Nota Fiscal'
      TabOrder = 47
    end
    object CKBIMPVLRCB: TCheckBox
      Left = 15
      Top = 957
      Width = 249
      Height = 17
      Caption = 'Imprime Valor Etiqueta C'#243'digo de Barra'
      TabOrder = 48
    end
    object ckbmostraendent: TCheckBox
      Left = 335
      Top = 1069
      Width = 18
      Height = 17
      Caption = 'Mostra Endere'#231'o Entrega'
      TabOrder = 49
    end
    object ckbmostraendcom: TCheckBox
      Left = 335
      Top = 1091
      Width = 18
      Height = 17
      Caption = 'Mostra Endere'#231'o Comercial'
      TabOrder = 50
    end
    object ckbmostraendcob: TCheckBox
      Left = 335
      Top = 1114
      Width = 18
      Height = 17
      Caption = 'Mostra Endere'#231'o Cobran'#231'a'
      TabOrder = 51
    end
    object ckbmostrafotocli: TCheckBox
      Left = 15
      Top = 974
      Width = 153
      Height = 17
      Caption = 'Mostra Foto Cliente'
      TabOrder = 52
    end
    object edititendent: TEdit
      Left = 104
      Top = 1067
      Width = 209
      Height = 21
      TabOrder = 53
      Text = 'edititendent'
      OnKeyPress = edinnfKeyPress
    end
    object edititendcom: TEdit
      Left = 104
      Top = 1090
      Width = 209
      Height = 21
      TabOrder = 54
      Text = 'edititendcom'
      OnKeyPress = edinnfKeyPress
    end
    object edititendcob: TEdit
      Left = 104
      Top = 1113
      Width = 209
      Height = 21
      TabOrder = 55
      Text = 'edititendcob'
      OnKeyPress = edinnfKeyPress
    end
    object edioutinfcli1: TEdit
      Left = 16
      Top = 1166
      Width = 337
      Height = 21
      TabOrder = 56
      Text = 'edioutinfcli1'
      OnKeyPress = edinnfKeyPress
    end
    object edioutinfcli2: TEdit
      Left = 16
      Top = 1189
      Width = 337
      Height = 21
      TabOrder = 57
      Text = 'edioutinfcli2'
      OnKeyPress = edinnfKeyPress
    end
    object edioutinfcli3: TEdit
      Left = 16
      Top = 1213
      Width = 337
      Height = 21
      TabOrder = 58
      Text = 'edioutinfcli3'
      OnKeyPress = edinnfKeyPress
    end
    object edioutinfcli4: TEdit
      Left = 16
      Top = 1237
      Width = 337
      Height = 21
      TabOrder = 59
      Text = 'edioutinfcli4'
      OnKeyPress = edinnfKeyPress
    end
    object edioutinfcli5: TEdit
      Left = 16
      Top = 1261
      Width = 337
      Height = 21
      TabOrder = 60
      Text = 'edioutinfcli5'
      OnKeyPress = edinnfKeyPress
    end
    object edioutinfcli6: TEdit
      Left = 16
      Top = 1285
      Width = 337
      Height = 21
      TabOrder = 61
      Text = 'edioutinfcli6'
      OnKeyPress = edinnfKeyPress
    end
    object edioutinfcli7: TEdit
      Left = 16
      Top = 1309
      Width = 337
      Height = 21
      TabOrder = 62
      Text = 'edioutinfcli7'
      OnKeyPress = edinnfKeyPress
    end
    object edioutinfcli8: TEdit
      Left = 16
      Top = 1333
      Width = 337
      Height = 21
      TabOrder = 63
      Text = 'edioutinfcli8'
      OnKeyPress = edinnfKeyPress
    end
    object edioutinfcli9: TEdit
      Left = 16
      Top = 1357
      Width = 337
      Height = 21
      TabOrder = 64
      Text = 'edioutinfcli9'
      OnKeyPress = edinnfKeyPress
    end
    object edioutinfcli10: TEdit
      Left = 16
      Top = 1381
      Width = 337
      Height = 21
      TabOrder = 65
      Text = 'edioutinfcli10'
      OnKeyPress = edinnfKeyPress
    end
    object edicsitp1: TDBEdit
      Left = 63
      Top = 230
      Width = 36
      Height = 21
      DataField = 'CSITP1'
      DataSource = frmDados.Dts_Indice
      TabOrder = 66
      OnChange = edicsitpChange
      OnKeyPress = editipoctapassKeyPress
    end
    object edicsitr1: TDBEdit
      Left = 195
      Top = 230
      Width = 36
      Height = 21
      DataField = 'CSITR1'
      DataSource = frmDados.Dts_Indice
      TabOrder = 67
      OnChange = edicsitrChange
      OnKeyPress = editipoctapassKeyPress
    end
    object DBRadioGroup2: TDBRadioGroup
      Left = 16
      Top = 1460
      Width = 337
      Height = 65
      Caption = 'Etiqueta C'#243'digo de Barras'
      Columns = 2
      DataField = 'TIPOETIQ'
      DataSource = frmDados.Dts_Indice
      Items.Strings = (
        'Brother Simples 62 mm X 29 mm'
        'Brother Simples 29 mm X 40 mm V'
        'Jato de Tinta/Laser (A4)')
      TabOrder = 68
      Values.Strings = (
        '1'
        '2'
        '3')
    end
    object cbxsitcliinat: TDBLookupComboBox
      Left = 24
      Top = 1558
      Width = 161
      Height = 21
      DataField = 'CSITCLIINAT'
      DataSource = frmDados.Dts_Indice
      KeyField = 'CODIGO'
      ListField = 'DESCRICAO'
      ListSource = frmDados.Dts_SituCadCli
      NullValueKey = 46
      TabOrder = 69
    end
    object cbxsitclibloq: TDBLookupComboBox
      Left = 200
      Top = 1557
      Width = 145
      Height = 21
      DataField = 'CSITCLIBLOQ'
      DataSource = frmDados.Dts_Indice
      KeyField = 'CODIGO'
      ListField = 'DESCRICAO'
      ListSource = frmDados.Dts_SituCadCli
      NullValueKey = 46
      TabOrder = 70
    end
    object ckbimpconcomitate: TCheckBox
      Left = 160
      Top = 172
      Width = 129
      Height = 17
      TabStop = False
      Caption = 'Imp. Concomitate?'
      TabOrder = 71
    end
    object ckbmostrainfofinadd: TCheckBox
      Left = 16
      Top = 870
      Width = 201
      Height = 17
      Caption = 'Mostra Informa'#231#227'o Financeira'
      TabOrder = 72
    end
    object ckbop: TCheckBox
      Left = 245
      Top = 594
      Width = 132
      Height = 17
      TabStop = False
      Caption = 'Ordem de Produ'#231#227'o?'
      TabOrder = 73
    end
  end
  object ScrollBox1: TScrollBox
    Left = 440
    Top = 244
    Width = 425
    Height = 205
    TabOrder = 4
    object Label1: TLabel
      Left = 8
      Top = 138
      Width = 184
      Height = 13
      Caption = 'Identica'#231#227'o Produto Ordem de Servi'#231'o'
      FocusControl = DBEdit18
    end
    object Label2: TLabel
      Left = 8
      Top = 306
      Width = 89
      Height = 13
      Caption = 'Outras Infoma'#231#245'es'
      FocusControl = DBEdit20
    end
    object Label5: TLabel
      Left = 8
      Top = 469
      Width = 136
      Height = 13
      Caption = 'Infoma'#231#245'es Complementares'
      FocusControl = DBEdit20
    end
    object Label8: TLabel
      Left = 8
      Top = 2
      Width = 101
      Height = 13
      Caption = 'Tipo de Equipamento'
      FocusControl = DBEdit18
    end
    object Label9: TLabel
      Left = 8
      Top = 58
      Width = 51
      Height = 13
      Caption = 'Obrigat'#243'rio'
      FocusControl = DBEdit18
    end
    object Bevel2: TBevel
      Left = 8
      Top = 736
      Width = 337
      Height = 53
    end
    object Label83: TLabel
      Left = 19
      Top = 731
      Width = 73
      Height = 13
      Caption = ' Venda Balc'#227'o '
    end
    object DBEdit18: TDBEdit
      Left = 8
      Top = 154
      Width = 329
      Height = 21
      CharCase = ecUpperCase
      DataField = 'ID1'
      DataSource = frmDados.Dts_Indice
      TabOrder = 6
      OnKeyPress = DBEdit18KeyPress
    end
    object DBEdit19: TDBEdit
      Left = 8
      Top = 178
      Width = 329
      Height = 21
      CharCase = ecUpperCase
      DataField = 'ID2'
      DataSource = frmDados.Dts_Indice
      TabOrder = 7
      OnKeyPress = DBEdit18KeyPress
    end
    object DBEdit20: TDBEdit
      Left = 8
      Top = 202
      Width = 313
      Height = 21
      CharCase = ecUpperCase
      DataField = 'DESC1'
      DataSource = frmDados.Dts_Indice
      TabOrder = 8
      OnKeyPress = DBEdit18KeyPress
    end
    object DBEdit21: TDBEdit
      Left = 8
      Top = 226
      Width = 313
      Height = 21
      CharCase = ecUpperCase
      DataField = 'DESC2'
      DataSource = frmDados.Dts_Indice
      TabOrder = 9
      OnKeyPress = DBEdit18KeyPress
    end
    object DBEdit22: TDBEdit
      Left = 8
      Top = 250
      Width = 313
      Height = 21
      CharCase = ecUpperCase
      DataField = 'DESC3'
      DataSource = frmDados.Dts_Indice
      TabOrder = 10
      OnKeyPress = DBEdit18KeyPress
    end
    object DBEdit23: TDBEdit
      Left = 8
      Top = 274
      Width = 313
      Height = 21
      CharCase = ecUpperCase
      DataField = 'DESC4'
      DataSource = frmDados.Dts_Indice
      TabOrder = 11
      OnKeyPress = DBEdit18KeyPress
    end
    object DBEdit24: TDBEdit
      Left = 8
      Top = 322
      Width = 313
      Height = 21
      CharCase = ecUpperCase
      DataField = 'DESC5'
      DataSource = frmDados.Dts_Indice
      TabOrder = 12
      OnKeyPress = DBEdit18KeyPress
    end
    object DBEdit25: TDBEdit
      Left = 8
      Top = 346
      Width = 313
      Height = 21
      CharCase = ecUpperCase
      DataField = 'DESC6'
      DataSource = frmDados.Dts_Indice
      TabOrder = 13
      OnKeyPress = DBEdit18KeyPress
    end
    object DBEdit26: TDBEdit
      Left = 8
      Top = 370
      Width = 313
      Height = 21
      CharCase = ecUpperCase
      DataField = 'DESC7'
      DataSource = frmDados.Dts_Indice
      TabOrder = 14
      OnKeyPress = DBEdit18KeyPress
    end
    object DBEdit27: TDBEdit
      Left = 8
      Top = 394
      Width = 313
      Height = 21
      CharCase = ecUpperCase
      DataField = 'DESC8'
      DataSource = frmDados.Dts_Indice
      TabOrder = 15
      OnKeyPress = DBEdit18KeyPress
    end
    object DBEdit28: TDBEdit
      Left = 8
      Top = 418
      Width = 313
      Height = 21
      CharCase = ecUpperCase
      DataField = 'DESC9'
      DataSource = frmDados.Dts_Indice
      TabOrder = 16
      OnKeyPress = DBEdit18KeyPress
    end
    object DBEdit29: TDBEdit
      Left = 8
      Top = 441
      Width = 313
      Height = 21
      CharCase = ecUpperCase
      DataField = 'DESC10'
      DataSource = frmDados.Dts_Indice
      TabOrder = 17
      OnKeyPress = DBEdit18KeyPress
    end
    object DBEdit30: TDBEdit
      Left = 8
      Top = 707
      Width = 313
      Height = 21
      CharCase = ecUpperCase
      DataField = 'DESC20'
      DataSource = frmDados.Dts_Indice
      TabOrder = 18
      OnKeyPress = DBEdit18KeyPress
    end
    object DBEdit31: TDBEdit
      Left = 8
      Top = 486
      Width = 313
      Height = 21
      CharCase = ecUpperCase
      DataField = 'DESC11'
      DataSource = frmDados.Dts_Indice
      TabOrder = 19
      OnKeyPress = DBEdit18KeyPress
    end
    object DBEdit32: TDBEdit
      Left = 8
      Top = 510
      Width = 313
      Height = 21
      CharCase = ecUpperCase
      DataField = 'DESC12'
      DataSource = frmDados.Dts_Indice
      TabOrder = 20
      OnKeyPress = DBEdit18KeyPress
    end
    object DBEdit33: TDBEdit
      Left = 8
      Top = 534
      Width = 313
      Height = 21
      CharCase = ecUpperCase
      DataField = 'DESC13'
      DataSource = frmDados.Dts_Indice
      TabOrder = 21
      OnKeyPress = DBEdit18KeyPress
    end
    object DBEdit36: TDBEdit
      Left = 8
      Top = 564
      Width = 313
      Height = 21
      CharCase = ecUpperCase
      DataField = 'DESC14'
      DataSource = frmDados.Dts_Indice
      TabOrder = 22
      OnKeyPress = DBEdit18KeyPress
    end
    object DBEdit37: TDBEdit
      Left = 8
      Top = 588
      Width = 313
      Height = 21
      CharCase = ecUpperCase
      DataField = 'DESC15'
      DataSource = frmDados.Dts_Indice
      TabOrder = 23
      OnKeyPress = DBEdit18KeyPress
    end
    object DBEdit38: TDBEdit
      Left = 8
      Top = 612
      Width = 313
      Height = 21
      CharCase = ecUpperCase
      DataField = 'DESC16'
      DataSource = frmDados.Dts_Indice
      TabOrder = 24
      OnKeyPress = DBEdit18KeyPress
    end
    object DBEdit39: TDBEdit
      Left = 8
      Top = 636
      Width = 313
      Height = 21
      CharCase = ecUpperCase
      DataField = 'DESC17'
      DataSource = frmDados.Dts_Indice
      TabOrder = 25
      OnKeyPress = DBEdit18KeyPress
    end
    object DBEdit40: TDBEdit
      Left = 8
      Top = 660
      Width = 313
      Height = 21
      CharCase = ecUpperCase
      DataField = 'DESC18'
      DataSource = frmDados.Dts_Indice
      TabOrder = 26
      OnKeyPress = DBEdit18KeyPress
    end
    object DBEdit41: TDBEdit
      Left = 8
      Top = 684
      Width = 313
      Height = 21
      CharCase = ecUpperCase
      DataField = 'DESC19'
      DataSource = frmDados.Dts_Indice
      TabOrder = 27
      OnKeyPress = DBEdit18KeyPress
    end
    object ckbtdesc1: TCheckBox
      Left = 328
      Top = 202
      Width = 14
      Height = 17
      TabOrder = 28
    end
    object ckbtdesc2: TCheckBox
      Left = 329
      Top = 226
      Width = 13
      Height = 17
      TabOrder = 29
    end
    object ckbtdesc3: TCheckBox
      Left = 328
      Top = 250
      Width = 13
      Height = 17
      TabOrder = 30
    end
    object ckbtdesc4: TCheckBox
      Left = 328
      Top = 274
      Width = 13
      Height = 17
      TabOrder = 31
    end
    object ckbtdesc5: TCheckBox
      Left = 328
      Top = 322
      Width = 13
      Height = 17
      TabOrder = 32
    end
    object ckbtdesc6: TCheckBox
      Left = 328
      Top = 346
      Width = 13
      Height = 17
      TabOrder = 33
    end
    object ckbtdesc7: TCheckBox
      Left = 328
      Top = 370
      Width = 13
      Height = 17
      TabOrder = 34
    end
    object ckbtdesc8: TCheckBox
      Left = 329
      Top = 394
      Width = 13
      Height = 17
      TabOrder = 35
    end
    object ckbtdesc9: TCheckBox
      Left = 329
      Top = 418
      Width = 13
      Height = 17
      TabOrder = 36
    end
    object ckbtdesc10: TCheckBox
      Left = 329
      Top = 441
      Width = 13
      Height = 17
      TabOrder = 37
    end
    object ckbtdesc11: TCheckBox
      Left = 329
      Top = 486
      Width = 13
      Height = 17
      TabOrder = 38
    end
    object ckbtdesc12: TCheckBox
      Left = 329
      Top = 510
      Width = 13
      Height = 17
      TabOrder = 39
    end
    object ckbtdesc13: TCheckBox
      Left = 329
      Top = 534
      Width = 13
      Height = 17
      TabOrder = 40
    end
    object ckbtdesc14: TCheckBox
      Left = 329
      Top = 564
      Width = 13
      Height = 17
      TabOrder = 41
    end
    object ckbtdesc15: TCheckBox
      Left = 329
      Top = 588
      Width = 13
      Height = 17
      TabOrder = 42
    end
    object ckbtdesc16: TCheckBox
      Left = 329
      Top = 612
      Width = 13
      Height = 17
      TabOrder = 43
    end
    object ckbtdesc17: TCheckBox
      Left = 329
      Top = 636
      Width = 13
      Height = 17
      TabOrder = 44
    end
    object ckbtdesc18: TCheckBox
      Left = 329
      Top = 660
      Width = 13
      Height = 17
      TabOrder = 45
    end
    object ckbtdesc19: TCheckBox
      Left = 329
      Top = 684
      Width = 13
      Height = 17
      TabOrder = 46
    end
    object ckbtdesc20: TCheckBox
      Left = 329
      Top = 707
      Width = 13
      Height = 17
      TabOrder = 47
    end
    object DBEdit34: TDBEdit
      Left = 9
      Top = 19
      Width = 104
      Height = 21
      CharCase = ecUpperCase
      DataField = 'TPEQPOS'
      DataSource = frmDados.Dts_Indice
      TabOrder = 0
    end
    object ckbnomecliobr: TCheckBox
      Left = 8
      Top = 85
      Width = 97
      Height = 17
      Caption = 'Nome'
      TabOrder = 1
    end
    object ckbcpfcliobr: TCheckBox
      Left = 127
      Top = 84
      Width = 97
      Height = 17
      Caption = 'CPF'
      TabOrder = 2
    end
    object ckbrgcliobr: TCheckBox
      Left = 238
      Top = 85
      Width = 97
      Height = 17
      Caption = 'RG'
      TabOrder = 3
    end
    object ckbid1cliobr: TCheckBox
      Left = 8
      Top = 107
      Width = 97
      Height = 17
      Caption = 'ID1'
      TabOrder = 4
    end
    object ckbfonecliobr: TCheckBox
      Left = 127
      Top = 105
      Width = 97
      Height = 17
      Caption = 'Telefone'
      TabOrder = 5
    end
    object ckbmostraapl: TCheckBox
      Left = 25
      Top = 749
      Width = 111
      Height = 14
      Caption = 'Mostra Aplica'#231#227'o'
      TabOrder = 48
    end
    object ckbmostracodaux: TCheckBox
      Left = 190
      Top = 749
      Width = 111
      Height = 14
      Caption = 'Mostra Cod. Auxliar'
      TabOrder = 49
    end
    object ckbmostramarca: TCheckBox
      Left = 25
      Top = 769
      Width = 111
      Height = 14
      Caption = 'Mostra Marca'
      TabOrder = 50
    end
  end
  object ScrollBox3: TScrollBox
    Left = 440
    Top = 452
    Width = 425
    Height = 100
    TabOrder = 5
    object Label24: TLabel
      Left = 216
      Top = 78
      Width = 111
      Height = 13
      Caption = 'Tipo Impress'#227'o DANFE'
      FocusControl = DBEdit3
    end
    object Label23: TLabel
      Left = 220
      Top = 103
      Width = 35
      Height = 13
      Caption = 'Modelo'
      FocusControl = DBEdit2
    end
    object Label25: TLabel
      Left = 220
      Top = 128
      Width = 24
      Height = 13
      Caption = 'S'#233'rie'
      FocusControl = DBEdit4
    end
    object Label26: TLabel
      Left = 220
      Top = 155
      Width = 72
      Height = 13
      Caption = 'Finalidade NFE'
      FocusControl = DBEdit5
    end
    object Label28: TLabel
      Left = 222
      Top = 176
      Width = 118
      Height = 13
      Caption = 'Mod. Base C'#225'lculo ICMS'
      FocusControl = DBEdit6
    end
    object Label29: TLabel
      Left = 224
      Top = 201
      Width = 17
      Height = 13
      Caption = 'PIS'
      FocusControl = DBEdit7
    end
    object Label30: TLabel
      Left = 224
      Top = 226
      Width = 39
      Height = 13
      Caption = 'COFINS'
      FocusControl = DBEdit8
    end
    object DBRadioGroup22: TDBRadioGroup
      Left = 8
      Top = 3
      Width = 193
      Height = 70
      Caption = ' ECF '
      DataField = 'TIPOIMPF'
      DataSource = frmDados.Dts_Indice
      Items.Strings = (
        'NENHUMA'
        'SWEDA'
        'BEMATECH')
      TabOrder = 0
      Values.Strings = (
        '0'
        '1'
        '2')
    end
    object ckbecflanca: TCheckBox
      Left = 112
      Top = 16
      Width = 81
      Height = 17
      Caption = 'Lan'#231'a ECF?'
      TabOrder = 1
    end
    object DBRadioGroup23: TDBRadioGroup
      Left = 206
      Top = 3
      Width = 193
      Height = 70
      Caption = 'Impress'#227'o Fiscal'
      DataField = 'TIPOIMPNF'
      DataSource = frmDados.Dts_Indice
      Items.Strings = (
        'NENHUMA'
        'LPT1'
        'NFE')
      TabOrder = 2
      Values.Strings = (
        '0'
        '1'
        '2')
    end
    object DBEdit3: TDBEdit
      Left = 354
      Top = 73
      Width = 43
      Height = 21
      DataField = 'TPIMP'
      DataSource = frmDados.Dts_Indice
      TabOrder = 3
    end
    object DBEdit2: TDBEdit
      Left = 354
      Top = 97
      Width = 43
      Height = 21
      DataField = 'MODEL'
      DataSource = frmDados.Dts_Indice
      TabOrder = 4
    end
    object DBEdit4: TDBEdit
      Left = 354
      Top = 122
      Width = 41
      Height = 21
      DataField = 'SERIE'
      DataSource = frmDados.Dts_Indice
      TabOrder = 5
    end
    object DBEdit5: TDBEdit
      Left = 354
      Top = 147
      Width = 41
      Height = 21
      DataField = 'FINNFE'
      DataSource = frmDados.Dts_Indice
      TabOrder = 6
    end
    object DBEdit6: TDBEdit
      Left = 352
      Top = 172
      Width = 40
      Height = 21
      DataField = 'MODBC'
      DataSource = frmDados.Dts_Indice
      TabOrder = 7
    end
    object DBEdit7: TDBEdit
      Left = 352
      Top = 198
      Width = 38
      Height = 21
      DataField = 'PISNT'
      DataSource = frmDados.Dts_Indice
      TabOrder = 8
    end
    object DBEdit8: TDBEdit
      Left = 352
      Top = 224
      Width = 37
      Height = 21
      DataField = 'COFINSNT'
      DataSource = frmDados.Dts_Indice
      TabOrder = 9
    end
    object btnconfint: TButton
      Left = 8
      Top = 152
      Width = 193
      Height = 25
      Caption = 'Configura'#231#227'o Interna'
      TabOrder = 10
      OnClick = btnconfintClick
    end
    object btncomanda: TButton
      Left = 8
      Top = 181
      Width = 193
      Height = 25
      Caption = 'Imprime Etiqueta Comanda'
      TabOrder = 11
      OnClick = btncomandaClick
    end
    object dbgtipoqtdeecf: TDBRadioGroup
      Left = 8
      Top = 80
      Width = 193
      Height = 65
      Caption = 'TIPO QTDE ECF'
      DataField = 'TIPOQTDEECF'
      DataSource = frmDados.Dts_Indice
      Items.Strings = (
        'INTEIRO'
        'FRACION'#193'RIO')
      TabOrder = 12
      Values.Strings = (
        '0'
        '1')
      Visible = False
    end
  end
  object tabIndice: TTable
    Left = 685
    Top = 282
  end
  object tabmodulos: TTable
    Left = 672
    Top = 272
  end
  object dtstipo: TDataSource
    DataSet = tabtipo
    Left = 760
    Top = 265
  end
  object tabtipo: TTable
    Left = 752
    Top = 257
  end
  object tabtemp: TTable
    Left = 608
    Top = 264
  end
  object dtstemp: TDataSource
    DataSet = tabtemp
    Left = 616
    Top = 272
  end
  object pctDial: TOpenPictureDialog
    Left = 88
    Top = 40
  end
end
