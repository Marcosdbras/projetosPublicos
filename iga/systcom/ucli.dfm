object frmcli: Tfrmcli
  Left = 5
  Top = 4
  Width = 1021
  Height = 282
  BorderIcons = []
  Caption = 'Clientes'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object spdcancelar: TSpeedButton
    Left = 887
    Top = 8
    Width = 121
    Height = 49
    Caption = '&SAIR'
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
    Layout = blGlyphTop
    NumGlyphs = 2
    OnClick = spdcancelarClick
  end
  object Label38: TLabel
    Left = 7
    Top = 66
    Width = 73
    Height = 13
    Caption = 'C.P.F./C.N.P.J.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clTeal
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 128
    Top = 66
    Width = 42
    Height = 13
    Caption = 'C'#211'DIGO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clTeal
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 194
    Top = 66
    Width = 32
    Height = 13
    Caption = 'NOME'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clTeal
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 564
    Top = 66
    Width = 46
    Height = 13
    Caption = 'APELIDO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clTeal
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label39: TLabel
    Left = 7
    Top = 108
    Width = 43
    Height = 13
    Caption = 'R.G./I.E.'
    FocusControl = EDIIE
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clTeal
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 128
    Top = 108
    Width = 60
    Height = 13
    Caption = 'ENDERE'#199'O'
    FocusControl = ediendent
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clTeal
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object lbltitnroent: TLabel
    Left = 506
    Top = 108
    Width = 19
    Height = 13
    Caption = 'N.O'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clTeal
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 564
    Top = 108
    Width = 83
    Height = 13
    Caption = 'COMPLEMENTO'
    FocusControl = edicomplent
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clTeal
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label10: TLabel
    Left = 697
    Top = 108
    Width = 41
    Height = 13
    Caption = 'BAIRRO'
    FocusControl = edibairroent
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clTeal
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 7
    Top = 148
    Width = 40
    Height = 13
    Caption = 'CIDADE'
    FocusControl = edicidadeent
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clTeal
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label11: TLabel
    Left = 192
    Top = 148
    Width = 21
    Height = 13
    Caption = 'CEP'
    FocusControl = edicepent
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clTeal
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object imgFoto: TImage
    Left = 888
    Top = 70
    Width = 121
    Height = 131
    ParentShowHint = False
    ShowHint = False
    Stretch = True
  end
  object spdinsfoto: TSpeedButton
    Left = 888
    Top = 205
    Width = 22
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
    OnClick = spdinsfotoClick
  end
  object spdapafoto: TSpeedButton
    Left = 913
    Top = 205
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
    OnClick = spdapafotoClick
  end
  object Label3: TLabel
    Left = 287
    Top = 148
    Width = 24
    Height = 13
    Caption = 'DDD'
    FocusControl = edicepent
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clTeal
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label25: TLabel
    Left = 326
    Top = 148
    Width = 84
    Height = 13
    Caption = 'TELEFONE RES.'
    FocusControl = EDIFONEENT
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clTeal
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label24: TLabel
    Left = 501
    Top = 148
    Width = 86
    Height = 13
    Caption = 'TELEFONE COM.'
    FocusControl = EDIFONECOM
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clTeal
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label12: TLabel
    Left = 697
    Top = 148
    Width = 106
    Height = 13
    Caption = 'CELULAR / OUTROS'
    FocusControl = editelefones
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clTeal
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label13: TLabel
    Left = 7
    Top = 188
    Width = 52
    Height = 13
    Caption = 'CONTATO'
    FocusControl = edicontato
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clTeal
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label23: TLabel
    Left = 212
    Top = 190
    Width = 35
    Height = 13
    Caption = 'E-MAIL'
    FocusControl = ediemail
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clTeal
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label40: TLabel
    Left = 533
    Top = 188
    Width = 47
    Height = 13
    Caption = 'NASCTO.'
    FocusControl = EDIDATANASC
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clTeal
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object btnsalvar: TBitBtn
    Left = 762
    Top = 8
    Width = 121
    Height = 49
    Caption = '&Salvar'
    TabOrder = 0
    OnClick = btnsalvarClick
  end
  object edicpf: TDBEdit
    Left = 7
    Top = 80
    Width = 110
    Height = 21
    CharCase = ecUpperCase
    DataField = 'CPF'
    DataSource = frmDados.Dts_Clientes
    TabOrder = 1
    OnKeyPress = edicpfKeyPress
  end
  object ediccli: TDBEdit
    Left = 126
    Top = 80
    Width = 52
    Height = 21
    DataField = 'CCLI'
    DataSource = frmDados.Dts_sVenda
    TabOrder = 2
    OnKeyPress = edicpfKeyPress
  end
  object EDIIE: TDBEdit
    Left = 7
    Top = 123
    Width = 110
    Height = 21
    CharCase = ecUpperCase
    DataField = 'IE'
    DataSource = frmDados.Dts_Clientes
    TabOrder = 5
    OnKeyPress = edicpfKeyPress
  end
  object ediendent: TDBEdit
    Left = 126
    Top = 123
    Width = 369
    Height = 21
    CharCase = ecUpperCase
    DataField = 'ENDENT'
    DataSource = frmDados.Dts_Clientes
    TabOrder = 6
    OnKeyPress = edicpfKeyPress
  end
  object edinroent: TDBEdit
    Left = 504
    Top = 123
    Width = 50
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NROENT'
    DataSource = frmDados.Dts_Clientes
    TabOrder = 7
    OnKeyPress = edicpfKeyPress
  end
  object edicomplent: TDBEdit
    Left = 562
    Top = 123
    Width = 126
    Height = 21
    CharCase = ecUpperCase
    DataField = 'COMPLENT'
    DataSource = frmDados.Dts_Clientes
    TabOrder = 8
    OnKeyPress = edicpfKeyPress
  end
  object edibairroent: TDBEdit
    Left = 696
    Top = 123
    Width = 166
    Height = 21
    CharCase = ecUpperCase
    DataField = 'BAIRROENT'
    DataSource = frmDados.Dts_Clientes
    TabOrder = 9
    OnKeyPress = edicpfKeyPress
  end
  object edicidadeent: TDBEdit
    Left = 7
    Top = 163
    Width = 176
    Height = 21
    CharCase = ecUpperCase
    DataField = 'CIDADEENT'
    DataSource = frmDados.Dts_Clientes
    TabOrder = 10
    OnKeyPress = edicpfKeyPress
  end
  object edicepent: TDBEdit
    Left = 191
    Top = 163
    Width = 88
    Height = 21
    CharCase = ecUpperCase
    DataField = 'CEPENT'
    DataSource = frmDados.Dts_Clientes
    TabOrder = 11
    OnKeyPress = edicpfKeyPress
  end
  object edincli: TDBEdit
    Left = 191
    Top = 82
    Width = 361
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NOME'
    DataSource = frmDados.Dts_Clientes
    TabOrder = 3
    OnKeyPress = edicpfKeyPress
  end
  object edinfant: TDBEdit
    Left = 564
    Top = 82
    Width = 296
    Height = 21
    CharCase = ecUpperCase
    DataField = 'FANTASIA'
    DataSource = frmDados.Dts_Clientes
    TabOrder = 4
    OnKeyPress = edicpfKeyPress
  end
  object edidddeent: TDBEdit
    Left = 286
    Top = 163
    Width = 34
    Height = 21
    CharCase = ecUpperCase
    DataField = 'DDDEENT'
    DataSource = frmDados.Dts_Clientes
    TabOrder = 12
    OnKeyPress = edicpfKeyPress
  end
  object EDIFONEENT: TDBEdit
    Left = 326
    Top = 163
    Width = 169
    Height = 21
    CharCase = ecUpperCase
    DataField = 'TELEFONEENT'
    DataSource = frmDados.Dts_Clientes
    TabOrder = 13
    OnKeyPress = edicpfKeyPress
  end
  object EDIFONECOM: TDBEdit
    Left = 502
    Top = 163
    Width = 187
    Height = 21
    CharCase = ecUpperCase
    DataField = 'TELEFONECOM'
    DataSource = frmDados.Dts_Clientes
    TabOrder = 14
    OnKeyPress = edicpfKeyPress
  end
  object editelefones: TDBEdit
    Left = 697
    Top = 163
    Width = 168
    Height = 21
    CharCase = ecUpperCase
    DataField = 'TELEFONES'
    DataSource = frmDados.Dts_Clientes
    TabOrder = 15
    OnKeyPress = edicpfKeyPress
  end
  object edicontato: TDBEdit
    Left = 7
    Top = 203
    Width = 200
    Height = 21
    CharCase = ecUpperCase
    DataField = 'CONTATO'
    DataSource = frmDados.Dts_Clientes
    TabOrder = 16
    OnKeyPress = edicpfKeyPress
  end
  object ediemail: TDBEdit
    Left = 212
    Top = 204
    Width = 314
    Height = 21
    CharCase = ecLowerCase
    DataField = 'EMAIL'
    DataSource = frmDados.Dts_Clientes
    TabOrder = 17
    OnKeyPress = edicpfKeyPress
  end
  object EDIDATANASC: TDBEdit
    Left = 530
    Top = 203
    Width = 89
    Height = 21
    DataField = 'DATANASC'
    DataSource = frmDados.Dts_Clientes
    TabOrder = 18
    OnKeyPress = edicpfKeyPress
  end
  object opdAbrirfig: TOpenPictureDialog
    Left = 809
    Top = 6
  end
  object OpenDialog2: TOpenDialog
    Ctl3D = False
    Left = 736
    Top = 28
  end
end
