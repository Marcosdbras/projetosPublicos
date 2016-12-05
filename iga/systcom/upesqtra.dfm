object frmpesqtra: Tfrmpesqtra
  Left = 0
  Top = 0
  Width = 1024
  Height = 738
  Caption = 'Pesquisa Ficha de Tratamento e Or'#231'amento'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Shape2: TShape
    Left = 832
    Top = 193
    Width = 177
    Height = 396
    Brush.Style = bsClear
  end
  object Shape4: TShape
    Left = 5
    Top = 609
    Width = 1004
    Height = 78
    Brush.Style = bsClear
  end
  object Shape1: TShape
    Left = 3
    Top = 193
    Width = 200
    Height = 399
    Brush.Style = bsClear
  end
  object Label3: TLabel
    Left = 15
    Top = 117
    Width = 79
    Height = 22
    Caption = 'Pesquisa'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -19
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object lbltitdatai: TLabel
    Left = 816
    Top = 72
    Width = 154
    Height = 17
    Caption = 'Abertura de Tratamento'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object spdfiltrar: TSpeedButton
    Left = 972
    Top = 89
    Width = 33
    Height = 33
    Flat = True
    Glyph.Data = {
      66010000424D6601000000000000760000002800000014000000140000000100
      040000000000F000000000000000000000001000000010000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333300003333333333333333333300003333333330033003300300003333
      3333300330033003000033303333333333333333000033000333333333333333
      000030F000333333333333330000330F000333333333333300003330F0000000
      73333333000033330F0078887033333300003333300788FF8703333300003333
      30788888F877333300003333308888888F80333300003333307888888F803333
      000033333078FF8888803333000033333777FF88887733330000333333077888
      8703333300003333333077777033333300003333333370007333333300003333
      33333333333333330000}
    OnClick = spdfiltrarClick
  end
  object spdlimpar: TSpeedButton
    Left = 972
    Top = 141
    Width = 33
    Height = 33
    Flat = True
    Glyph.Data = {
      42010000424D4201000000000000760000002800000011000000110000000100
      040000000000CC00000000000000000000001000000010000000000000000000
      BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
      7777700000007777777777777777700000007770707070707070700000007777
      7777777777777000000077707770707777707000000077777777077777777000
      000077707778787777707000000077777070707070777000000071F077777777
      77707000000011F778877777777770000000711F11F070707070700000007718
      1777777777777000000077811F777777777770000000811771F7777777777000
      0000187777177777777770000000777777777777777770000000777777777777
      777770000000}
    OnClick = spdlimparClick
  end
  object Label18: TLabel
    Left = 212
    Top = 124
    Width = 45
    Height = 17
    Caption = 'Cliente'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label19: TLabel
    Left = 705
    Top = 573
    Width = 76
    Height = 17
    Caption = 'Funcion'#225'rio'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object Label20: TLabel
    Left = 705
    Top = 506
    Width = 96
    Height = 17
    Caption = 'Representante'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object spdnova: TSpeedButton
    Left = 6
    Top = 7
    Width = 152
    Height = 58
    Caption = '&NOVO TRATAMENTO'
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555000000
      000055555F77777777775555000FFFFFFFF0555F777F5FFFF55755000F0F0000
      FFF05F777F7F77775557000F0F0FFFFFFFF0777F7F7F5FFFFFF70F0F0F0F0000
      00F07F7F7F7F777777570F0F0F0FFFFFFFF07F7F7F7F5FFFFFF70F0F0F0F0000
      00F07F7F7F7F777777570F0F0F0FFFFFFFF07F7F7F7F5FFF55570F0F0F0F000F
      FFF07F7F7F7F77755FF70F0F0F0FFFFF00007F7F7F7F5FF577770F0F0F0F00FF
      0F057F7F7F7F77557F750F0F0F0FFFFF00557F7F7F7FFFFF77550F0F0F000000
      05557F7F7F77777775550F0F0000000555557F7F7777777555550F0000000555
      55557F7777777555555500000005555555557777777555555555}
    Layout = blGlyphTop
    NumGlyphs = 2
    OnClick = spdnovaClick
  end
  object lbltitdesc: TLabel
    Left = 214
    Top = 72
    Width = 94
    Height = 17
    Caption = 'Classificar por'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 379
    Top = 72
    Width = 59
    Height = 17
    Caption = 'Localizar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object spdalterar: TSpeedButton
    Left = 166
    Top = 7
    Width = 152
    Height = 58
    Caption = '&ALTERAR'
    Layout = blGlyphTop
    NumGlyphs = 2
    OnClick = spdalterarClick
  end
  object spdexcluir: TSpeedButton
    Left = 326
    Top = 7
    Width = 152
    Height = 58
    Caption = '&EXCLUIR'
    Layout = blGlyphTop
    NumGlyphs = 2
    OnClick = spdexcluirClick
  end
  object spdcancelar: TSpeedButton
    Left = 887
    Top = 5
    Width = 128
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
  object Label1: TLabel
    Left = 816
    Top = 124
    Width = 21
    Height = 17
    Caption = 'At'#233
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object SpeedButton2: TSpeedButton
    Left = 18
    Top = 623
    Width = 152
    Height = 58
    Caption = '&RECEBER'
    Layout = blGlyphTop
    NumGlyphs = 2
    OnClick = SpeedButton2Click
  end
  object SpeedButton3: TSpeedButton
    Left = 487
    Top = 7
    Width = 152
    Height = 58
    Caption = '&RELAT'#211'RIO'
    Layout = blGlyphTop
    NumGlyphs = 2
    OnClick = SpeedButton3Click
  end
  object SpeedButton4: TSpeedButton
    Left = 11
    Top = 207
    Width = 178
    Height = 58
    Caption = '&CLIENTES'
    Layout = blGlyphTop
    NumGlyphs = 2
    OnClick = SpeedButton4Click
  end
  object SpeedButton5: TSpeedButton
    Left = 11
    Top = 271
    Width = 178
    Height = 58
    Caption = '&FUNCION'#193'RIOS'
    Layout = blGlyphTop
    NumGlyphs = 2
    OnClick = SpeedButton5Click
  end
  object SpeedButton6: TSpeedButton
    Left = 11
    Top = 335
    Width = 178
    Height = 58
    Caption = 'F&ORNECEDORES'
    Layout = blGlyphTop
    NumGlyphs = 2
    OnClick = SpeedButton6Click
  end
  object SpeedButton7: TSpeedButton
    Left = 176
    Top = 623
    Width = 152
    Height = 58
    Caption = 'C&LASSE DE CONTAS'
    Layout = blGlyphTop
    NumGlyphs = 2
    OnClick = SpeedButton7Click
  end
  object Label2: TLabel
    Left = 7
    Top = 183
    Width = 189
    Height = 22
    Caption = ' CADASTRO GERAL '
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -19
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 10
    Top = 600
    Width = 129
    Height = 22
    Caption = ' FINANCEIRO '
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -19
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object SpeedButton8: TSpeedButton
    Left = 335
    Top = 623
    Width = 152
    Height = 58
    Caption = '&PAGAR'
    Layout = blGlyphTop
    NumGlyphs = 2
    OnClick = SpeedButton8Click
  end
  object Label5: TLabel
    Left = 847
    Top = 184
    Width = 131
    Height = 22
    Caption = ' UTILIT'#193'RIOS '
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -19
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object SpeedButton1: TSpeedButton
    Left = 845
    Top = 271
    Width = 152
    Height = 58
    Caption = 'A&GENDA'
    Layout = blGlyphTop
    NumGlyphs = 2
    OnClick = SpeedButton1Click
  end
  object SpeedButton9: TSpeedButton
    Left = 11
    Top = 399
    Width = 178
    Height = 58
    Caption = 'TRATAMENTO'
    Layout = blGlyphTop
    NumGlyphs = 2
    OnClick = SpeedButton9Click
  end
  object SpeedButton10: TSpeedButton
    Left = 11
    Top = 463
    Width = 178
    Height = 58
    Caption = 'FORMA PAGTO'
    Layout = blGlyphTop
    NumGlyphs = 2
    OnClick = SpeedButton10Click
  end
  object spdcomissao: TSpeedButton
    Left = 492
    Top = 623
    Width = 152
    Height = 58
    Caption = '&COMISS'#195'O'
    Layout = blGlyphTop
    NumGlyphs = 2
    OnClick = spdcomissaoClick
  end
  object SpeedButton11: TSpeedButton
    Left = 652
    Top = 623
    Width = 152
    Height = 58
    Caption = '&CAIXA DETALHADO'
    Layout = blGlyphTop
    NumGlyphs = 2
    OnClick = SpeedButton11Click
  end
  object DtpDataI: TDateTimePicker
    Left = 816
    Top = 95
    Width = 153
    Height = 25
    Date = 39647.643559745370000000
    Time = 39647.643559745370000000
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnKeyPress = DtpDataIKeyPress
  end
  object DtpDataF: TDateTimePicker
    Left = 816
    Top = 145
    Width = 153
    Height = 25
    Date = 39647.643731724540000000
    Time = 39647.643731724540000000
    DateMode = dmUpDown
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnKeyPress = DtpDataIKeyPress
  end
  object cbxnomecli: TDBLookupComboBox
    Left = 211
    Top = 145
    Width = 601
    Height = 25
    DataField = 'CODCLI'
    DataSource = frmDados.Dts_Temp
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = []
    KeyField = 'CODIGO'
    ListField = 'NOME'
    ListSource = frmDados.Dts_Clientes
    NullValueKey = 46
    ParentFont = False
    TabOrder = 3
    OnKeyPress = DtpDataIKeyPress
  end
  object cbxnomefun: TDBLookupComboBox
    Left = 704
    Top = 516
    Width = 189
    Height = 25
    DataField = 'COD'
    DataSource = frmDados.Dts_Temp
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = []
    KeyField = 'CODIGO'
    ListField = 'NOME'
    ListSource = frmDados.Dst_Funcionarios
    NullValueKey = 46
    ParentFont = False
    TabOrder = 5
    Visible = False
    OnKeyPress = DtpDataIKeyPress
  end
  object cbxnomerep: TDBLookupComboBox
    Left = 704
    Top = 528
    Width = 189
    Height = 25
    DataField = 'COD1'
    DataSource = frmDados.Dts_Temp
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = []
    KeyField = 'CODIGO'
    ListField = 'NOME'
    ListSource = frmDados.Dst_Representantes
    NullValueKey = 46
    ParentFont = False
    TabOrder = 6
    Visible = False
    OnKeyPress = DtpDataIKeyPress
  end
  object dbgos: TDBGrid
    Left = 212
    Top = 183
    Width = 601
    Height = 410
    DataSource = frmDados.Dts_sVenda
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = dbgosDblClick
  end
  object cbxclassificar: TComboBox
    Left = 211
    Top = 95
    Width = 165
    Height = 25
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = []
    ItemHeight = 17
    ParentFont = False
    TabOrder = 0
    Text = 'cbxclassificar'
    OnClick = cbxclassificarClick
    OnKeyPress = DtpDataIKeyPress
  end
  object edidesc: TEdit
    Left = 379
    Top = 95
    Width = 430
    Height = 25
    CharCase = ecUpperCase
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Text = 'EDIDESC'
    OnKeyPress = DtpDataIKeyPress
  end
  object btninfo: TButton
    Left = 845
    Top = 207
    Width = 152
    Height = 58
    Caption = 'INFORMA'#199#195'O'
    TabOrder = 8
    TabStop = False
    OnClick = btninfoClick
  end
  object skin: TSkinData
    Active = False
    DisableTag = 99
    SkinControls = [xcMainMenu, xcPopupMenu, xcToolbar, xcControlbar, xcCombo, xcCheckBox, xcRadioButton, xcProgress, xcScrollbar, xcEdit, xcButton, xcBitBtn, xcSpeedButton, xcPanel, xcGroupBox, xcStatusBar, xcTab]
    SkinStore = '(none)'
    SkinFormtype = sfMainform
    Left = 848
    Top = 24
    SkinStream = {00000000}
  end
  object MainMenu1: TMainMenu
    Left = 568
    Top = 208
    object Menu1: TMenuItem
      Caption = 'Menu'
    end
  end
end
