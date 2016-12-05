object frmconfig: Tfrmconfig
  Left = 112
  Top = 106
  Width = 898
  Height = 611
  BorderIcons = []
  Caption = 'Informa'#231#245'es da Empresa'
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
    Width = 890
    Height = 45
    Align = alTop
  end
  object spdconfirma: TSpeedButton
    Left = 840
    Top = 4
    Width = 38
    Height = 33
    Flat = True
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
      555555555555555555555555555555555555555555FF55555555555559055555
      55555555577FF5555555555599905555555555557777F5555555555599905555
      555555557777FF5555555559999905555555555777777F555555559999990555
      5555557777777FF5555557990599905555555777757777F55555790555599055
      55557775555777FF5555555555599905555555555557777F5555555555559905
      555555555555777FF5555555555559905555555555555777FF55555555555579
      05555555555555777FF5555555555557905555555555555777FF555555555555
      5990555555555555577755555555555555555555555555555555}
    NumGlyphs = 2
    OnClick = spdconfirmaClick
  end
  object SpeedButton1: TSpeedButton
    Left = 800
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
  object Label1: TLabel
    Left = 8
    Top = 48
    Width = 63
    Height = 13
    Caption = 'Raz'#227'o Social'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 8
    Top = 88
    Width = 71
    Height = 13
    Caption = 'Nome Fantasia'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 8
    Top = 128
    Width = 27
    Height = 13
    Caption = 'CNPJ'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 169
    Top = 128
    Width = 16
    Height = 13
    Caption = 'I.E.'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 458
    Top = 128
    Width = 33
    Height = 13
    Caption = 'Cidade'
    FocusControl = edicidade
  end
  object Label6: TLabel
    Left = 8
    Top = 171
    Width = 46
    Height = 13
    Caption = 'Endere'#231'o'
    FocusControl = ediendereco
  end
  object Label8: TLabel
    Left = 8
    Top = 260
    Width = 27
    Height = 13
    Caption = 'e-mail'
    FocusControl = DBEdit8
  end
  object Label15: TLabel
    Left = 5
    Top = 214
    Width = 33
    Height = 13
    Caption = 'Estado'
    FocusControl = ediestado
  end
  object Bevel3: TBevel
    Left = 640
    Top = 48
    Width = 240
    Height = 233
  end
  object spdimpfig: TSpeedButton
    Left = 831
    Top = 289
    Width = 23
    Height = 22
    Hint = 'Importar Figura'
    Flat = True
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      33333333333FFFFFFFFF333333000000000033333377777777773333330FFFFF
      FFF03333337F333333373333330FFFFFFFF03333337F3FF3FFF73333330F00F0
      00F03333F37F773777373330330FFFFFFFF03337FF7F3F3FF3F73339030F0800
      F0F033377F7F737737373339900FFFFFFFF03FF7777F3FF3FFF70999990F00F0
      00007777777F7737777709999990FFF0FF0377777777FF37F3730999999908F0
      F033777777777337F73309999990FFF0033377777777FFF77333099999000000
      3333777777777777333333399033333333333337773333333333333903333333
      3333333773333333333333303333333333333337333333333333}
    NumGlyphs = 2
    ParentShowHint = False
    ShowHint = True
    OnClick = spdimpfigClick
  end
  object spdcancimp: TSpeedButton
    Left = 857
    Top = 289
    Width = 23
    Height = 22
    Hint = 'Apagar Figura'
    Flat = True
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
      55555FFFFFFF5F55FFF5777777757559995777777775755777F7555555555550
      305555555555FF57F7F555555550055BB0555555555775F777F55555550FB000
      005555555575577777F5555550FB0BF0F05555555755755757F555550FBFBF0F
      B05555557F55557557F555550BFBF0FB005555557F55575577F555500FBFBFB0
      B05555577F555557F7F5550E0BFBFB00B055557575F55577F7F550EEE0BFB0B0
      B05557FF575F5757F7F5000EEE0BFBF0B055777FF575FFF7F7F50000EEE00000
      B0557777FF577777F7F500000E055550805577777F7555575755500000555555
      05555777775555557F5555000555555505555577755555557555}
    NumGlyphs = 2
    ParentShowHint = False
    ShowHint = True
    OnClick = spdcancimpClick
  end
  object imgFoto: TImage
    Left = 642
    Top = 50
    Width = 234
    Height = 229
    ParentShowHint = False
    ShowHint = False
    Stretch = True
  end
  object Label7: TLabel
    Left = 184
    Top = 308
    Width = 78
    Height = 13
    Caption = 'Codigo UF IBGE'
    Visible = False
  end
  object Label9: TLabel
    Left = 831
    Top = 368
    Width = 47
    Height = 13
    Caption = 'codufibge'
    FocusControl = DBLookupComboBox1
    Visible = False
  end
  object Label10: TLabel
    Left = 830
    Top = 336
    Width = 50
    Height = 13
    Caption = 'siglaufibge'
    FocusControl = DBLookupComboBox2
    Visible = False
  end
  object Label11: TLabel
    Left = 331
    Top = 308
    Width = 100
    Height = 13
    Caption = 'Cod. Munic'#237'pio IBGE'
    FocusControl = DBLookupComboBox3
    Visible = False
  end
  object Label12: TLabel
    Left = 313
    Top = 171
    Width = 37
    Height = 13
    Caption = 'N'#250'mero'
    FocusControl = DBEdit9
  end
  object Label13: TLabel
    Left = 528
    Top = 171
    Width = 64
    Height = 13
    Caption = 'Complemento'
    FocusControl = DBEdit10
  end
  object Label14: TLabel
    Left = 8
    Top = 309
    Width = 86
    Height = 13
    Caption = 'C'#243'digo Pa'#237's IBGE'
    FocusControl = DBLookupComboBox5
    Visible = False
  end
  object Label16: TLabel
    Left = 402
    Top = 171
    Width = 27
    Height = 13
    Caption = 'Bairro'
    FocusControl = edibairro
  end
  object Label17: TLabel
    Left = 311
    Top = 128
    Width = 21
    Height = 13
    Caption = 'CEP'
    FocusControl = edicep
  end
  object Label18: TLabel
    Left = 83
    Top = 213
    Width = 24
    Height = 13
    Caption = 'Fone'
    FocusControl = DBEdit13
  end
  object Label19: TLabel
    Left = 314
    Top = 213
    Width = 92
    Height = 13
    Caption = 'Outras Informa'#231#245'es'
    FocusControl = DBEdit13
  end
  object Label20: TLabel
    Left = 312
    Top = 262
    Width = 61
    Height = 13
    Caption = 'C'#243'digo IBGE'
  end
  object SpeedButton2: TSpeedButton
    Left = 425
    Top = 144
    Width = 23
    Height = 22
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333333333FF3333333333333C0C333333333333F777F3333333333CC0F0C3
      333333333777377F33333333C30F0F0C333333337F737377F333333C00FFF0F0
      C33333F7773337377F333CC0FFFFFF0F0C3337773F33337377F3C30F0FFFFFF0
      F0C37F7373F33337377F00FFF0FFFFFF0F0C7733373F333373770FFFFF0FFFFF
      F0F073F33373F333373730FFFFF0FFFFFF03373F33373F333F73330FFFFF0FFF
      00333373F33373FF77333330FFFFF000333333373F333777333333330FFF0333
      3333333373FF7333333333333000333333333333377733333333333333333333
      3333333333333333333333333333333333333333333333333333}
    NumGlyphs = 2
    OnClick = SpeedButton2Click
  end
  object Label21: TLabel
    Left = 401
    Top = 260
    Width = 71
    Height = 13
    Caption = 'C'#243'digo do Pais'
  end
  object DBEdit1: TDBEdit
    Left = 10
    Top = 64
    Width = 623
    Height = 21
    DataField = 'CAMPO1'
    DataSource = frmDados.Dts_Config
    TabOrder = 0
    OnKeyPress = DBEdit1KeyPress
  end
  object DBEdit2: TDBEdit
    Left = 8
    Top = 104
    Width = 625
    Height = 21
    DataField = 'CAMPO2'
    DataSource = frmDados.Dts_Config
    TabOrder = 1
    OnKeyPress = DBEdit1KeyPress
  end
  object DBEdit3: TDBEdit
    Left = 8
    Top = 144
    Width = 153
    Height = 21
    DataField = 'CAMPO3'
    DataSource = frmDados.Dts_Config
    TabOrder = 2
    OnKeyPress = DBEdit1KeyPress
  end
  object DBEdit4: TDBEdit
    Left = 168
    Top = 144
    Width = 137
    Height = 21
    DataField = 'CAMPO4'
    DataSource = frmDados.Dts_Config
    TabOrder = 3
    OnKeyPress = DBEdit1KeyPress
  end
  object edicidade: TDBEdit
    Left = 456
    Top = 144
    Width = 176
    Height = 21
    DataField = 'CAMPO5'
    DataSource = frmDados.Dts_Config
    TabOrder = 4
    OnKeyPress = DBEdit1KeyPress
  end
  object ediendereco: TDBEdit
    Left = 8
    Top = 187
    Width = 297
    Height = 21
    DataField = 'CAMPO6'
    DataSource = frmDados.Dts_Config
    TabOrder = 6
    OnKeyPress = DBEdit1KeyPress
  end
  object DBEdit7: TDBEdit
    Left = 312
    Top = 231
    Width = 321
    Height = 21
    DataField = 'CAMPO7'
    DataSource = frmDados.Dts_Config
    TabOrder = 12
    OnKeyPress = DBEdit1KeyPress
  end
  object DBEdit8: TDBEdit
    Left = 8
    Top = 276
    Width = 297
    Height = 21
    DataField = 'CAMPO8'
    DataSource = frmDados.Dts_Config
    TabOrder = 13
    OnKeyPress = DBEdit1KeyPress
  end
  object ediestado: TDBEdit
    Left = 5
    Top = 230
    Width = 59
    Height = 21
    DataField = 'CAMPO16'
    DataSource = frmDados.Dts_Config
    TabOrder = 5
    OnKeyPress = DBEdit1KeyPress
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 187
    Top = 349
    Width = 133
    Height = 21
    DataField = 'codufibge'
    DataSource = frmDados.Dts_Config
    TabOrder = 17
    Visible = False
    OnKeyPress = DBEdit1KeyPress
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 187
    Top = 325
    Width = 134
    Height = 21
    DataField = 'siglaufibge'
    DataSource = frmDados.Dts_Config
    TabOrder = 16
    Visible = False
    OnKeyPress = DBEdit1KeyPress
  end
  object DBLookupComboBox3: TDBLookupComboBox
    Left = 328
    Top = 325
    Width = 138
    Height = 21
    DataField = 'codmibge'
    DataSource = frmDados.Dts_Config
    TabOrder = 18
    Visible = False
    OnKeyPress = DBEdit1KeyPress
  end
  object DBLookupComboBox4: TDBLookupComboBox
    Left = 328
    Top = 349
    Width = 137
    Height = 21
    DataField = 'codmc_ibge'
    DataSource = frmDados.Dts_Config
    TabOrder = 19
    Visible = False
    OnKeyPress = DBEdit1KeyPress
  end
  object DBEdit9: TDBEdit
    Left = 311
    Top = 186
    Width = 84
    Height = 21
    DataField = 'NRO'
    DataSource = frmDados.Dts_Config
    TabOrder = 7
    OnKeyPress = DBEdit1KeyPress
  end
  object DBEdit10: TDBEdit
    Left = 528
    Top = 185
    Width = 105
    Height = 21
    DataField = 'CAMPO17'
    DataSource = frmDados.Dts_Config
    TabOrder = 9
    OnKeyPress = DBEdit1KeyPress
  end
  object DBLookupComboBox5: TDBLookupComboBox
    Left = 8
    Top = 325
    Width = 169
    Height = 21
    DataField = 'npais'
    DataSource = frmDados.Dts_Config
    TabOrder = 14
    Visible = False
    OnKeyPress = DBEdit1KeyPress
  end
  object DBLookupComboBox6: TDBLookupComboBox
    Left = 8
    Top = 349
    Width = 170
    Height = 21
    DataField = 'cpaisibge'
    DataSource = frmDados.Dts_Config
    TabOrder = 15
    Visible = False
    OnKeyPress = DBEdit1KeyPress
  end
  object edibairro: TDBEdit
    Left = 400
    Top = 186
    Width = 123
    Height = 21
    DataField = 'BAIRRO'
    DataSource = frmDados.Dts_Config
    TabOrder = 8
    OnKeyPress = DBEdit1KeyPress
  end
  object edicep: TDBEdit
    Left = 311
    Top = 144
    Width = 114
    Height = 21
    DataField = 'CEP'
    DataSource = frmDados.Dts_Config
    TabOrder = 10
    OnKeyPress = DBEdit1KeyPress
  end
  object DBEdit13: TDBEdit
    Left = 80
    Top = 230
    Width = 225
    Height = 21
    DataField = 'FONE'
    DataSource = frmDados.Dts_Config
    TabOrder = 11
    OnKeyPress = DBEdit1KeyPress
  end
  object DBRadioGroup1: TDBRadioGroup
    Left = 640
    Top = 384
    Width = 241
    Height = 105
    Caption = 'Regime Tribut'#225'rio'
    DataField = 'CRT'
    DataSource = frmDados.Dts_Config
    Items.Strings = (
      '1 - Simple Nacional'
      '2 - Excesso de Sub-Limite de Receita Bruta'
      '3 - Regime Normal')
    TabOrder = 20
    Values.Strings = (
      '1'
      '2'
      '3')
  end
  object edicodigoibge: TDBEdit
    Left = 313
    Top = 276
    Width = 80
    Height = 21
    DataField = 'codigoibge'
    DataSource = frmDados.Dts_Config
    TabOrder = 21
  end
  object edicodigoibgeuf: TDBEdit
    Left = 400
    Top = 276
    Width = 49
    Height = 21
    DataField = 'codigoibgeuf'
    DataSource = frmDados.Dts_Config
    TabOrder = 22
    Visible = False
  end
  object DBEdit5: TDBEdit
    Left = 401
    Top = 276
    Width = 121
    Height = 21
    DataField = 'codigoibgepais'
    DataSource = frmDados.Dts_Config
    TabOrder = 23
  end
  object opdAbrirfig: TOpenPictureDialog
    Left = 793
    Top = 286
  end
end
