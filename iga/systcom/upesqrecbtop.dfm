object frmpesqrecbtop: Tfrmpesqrecbtop
  Left = 0
  Top = 0
  Width = 1024
  Height = 738
  BorderIcons = []
  Caption = 'Pesquisa de Contas '#224' Receber'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDefault
  WindowState = wsMaximized
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlsuperior: TPanel
    Left = 0
    Top = 0
    Width = 1016
    Height = 42
    Align = alTop
    TabOrder = 3
    object spdconfirma: TSpeedButton
      Left = 912
      Top = 4
      Width = 105
      Height = 33
      Caption = 'Fechar'
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333333333333333333333C3333333333333337F3333333333333C0C3333
        333333333777F33333333333C0F0C3333333333377377F333333333C0FFF0C33
        3333333777F377F3333333CCC0FFF0C333333373377F377F33333CCCCC0FFF0C
        333337333377F377F3334CCCCCC0FFF0C3337F3333377F377F33C4CCCCCC0FFF
        0C3377F333F377F377F33C4CC0CCC0FFF0C3377F3733F77F377333C4CCC0CC0F
        0C333377F337F3777733333C4C00CCC0333333377F773337F3333333C4CCCCCC
        3333333377F333F7333333333C4CCCC333333333377F37733333333333C4C333
        3333333333777333333333333333333333333333333333333333}
      NumGlyphs = 2
      OnClick = spdconfirmaClick
    end
  end
  object pnlinferior: TPanel
    Left = 0
    Top = 663
    Width = 1016
    Height = 41
    Align = alBottom
    TabOrder = 2
  end
  object pnlesq: TPanel
    Left = 0
    Top = 42
    Width = 201
    Height = 621
    Align = alLeft
    TabOrder = 1
    object Bevel6: TBevel
      Left = 1
      Top = 49
      Width = 199
      Height = 571
      Align = alClient
    end
    object Bevel1: TBevel
      Left = 1
      Top = 1
      Width = 199
      Height = 48
      Align = alTop
    end
    object Label3: TLabel
      Left = 57
      Top = 12
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
    object Label1: TLabel
      Left = 8
      Top = 525
      Width = 66
      Height = 17
      Caption = 'C'#243'digo de'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label2: TLabel
      Left = 8
      Top = 574
      Width = 21
      Height = 17
      Caption = 'At'#233
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object spdlimpar: TSpeedButton
      Left = 160
      Top = 174
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
    object spdfiltrar: TSpeedButton
      Left = 160
      Top = 122
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
    object lbltitdatai: TLabel
      Left = 8
      Top = 103
      Width = 19
      Height = 17
      Caption = 'De'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 8
      Top = 160
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
    object Label8: TLabel
      Left = 8
      Top = 214
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
    object Label9: TLabel
      Left = 8
      Top = 473
      Width = 93
      Height = 17
      Caption = 'Agrup. Contas'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label10: TLabel
      Left = 8
      Top = 268
      Width = 57
      Height = 17
      Caption = 'Situa'#231#227'o'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label20: TLabel
      Left = 8
      Top = 321
      Width = 127
      Height = 17
      Caption = 'Tipo de Pagamento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label30: TLabel
      Left = 8
      Top = 372
      Width = 154
      Height = 17
      Caption = 'Forma de Recebimento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label32: TLabel
      Left = 8
      Top = 420
      Width = 54
      Height = 17
      Caption = 'Dentista'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object lbltitdesc: TLabel
      Left = 8
      Top = 54
      Width = 96
      Height = 17
      Caption = 'Classificar Por'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object DtpDataI: TDateTimePicker
      Left = 8
      Top = 124
      Width = 137
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
    end
    object DtpDataF: TDateTimePicker
      Left = 8
      Top = 181
      Width = 137
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
      TabOrder = 3
    end
    object edicodigoi: TEdit
      Left = 8
      Top = 545
      Width = 129
      Height = 25
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = 'edicodigoi'
      Visible = False
      OnKeyPress = edicodigoiKeyPress
    end
    object edicodigof: TEdit
      Left = 8
      Top = 595
      Width = 129
      Height = 25
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Text = 'edicodigof'
      Visible = False
      OnKeyPress = edicodigofKeyPress
    end
    object cbxnomecli: TDBLookupComboBox
      Left = 48
      Top = 236
      Width = 148
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
      TabOrder = 5
      OnClick = cbxnomecliClick
      OnEnter = cbxnomecliEnter
      OnKeyDown = cbxnomecliKeyDown
      OnKeyPress = edidescricaoKeyPress
    end
    object cbxnomecla: TDBLookupComboBox
      Left = 8
      Top = 495
      Width = 188
      Height = 25
      DataField = 'CODCLA'
      DataSource = frmDados.Dts_Temp
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      KeyField = 'CODIGO'
      ListField = 'DESCRICAO'
      ListSource = frmDados.Dts_Classe
      NullValueKey = 46
      ParentFont = False
      TabOrder = 6
      Visible = False
      OnClick = cbxnomeclaClick
      OnEnter = cbxnomeclaEnter
      OnKeyDown = cbxnomeclaKeyDown
    end
    object cbxnomesitrec: TDBLookupComboBox
      Left = 8
      Top = 290
      Width = 188
      Height = 25
      DataField = 'CODSITREC'
      DataSource = frmDados.Dts_Temp
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      KeyField = 'CODIGO'
      ListField = 'DESCRICAO'
      ListSource = frmDados.Dts_SituRec
      NullValueKey = 46
      ParentFont = False
      TabOrder = 7
      OnClick = cbxnomesitrecClick
      OnEnter = cbxnomesitrecEnter
      OnKeyDown = cbxnomesitrecKeyDown
    end
    object cbxnometipopgto: TDBLookupComboBox
      Left = 8
      Top = 343
      Width = 188
      Height = 25
      DataField = 'COD'
      DataSource = frmDados.Dts_Temp
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      KeyField = 'CODIGO'
      ListField = 'DESCRICAO'
      ListSource = frmDados.dts_Tipo_Pgto
      NullValueKey = 46
      ParentFont = False
      TabOrder = 8
      OnClick = cbxnomesitrecClick
      OnEnter = cbxnomesitrecEnter
      OnKeyDown = cbxnomesitrecKeyDown
    end
    object cbxnometipoop: TDBLookupComboBox
      Left = 8
      Top = 394
      Width = 188
      Height = 25
      DataField = 'COD1'
      DataSource = frmDados.Dts_Temp
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      KeyField = 'CODIGO'
      ListField = 'DESCRICAO'
      ListSource = frmDados.dts_Tipo_Pgto
      NullValueKey = 46
      ParentFont = False
      TabOrder = 9
      OnClick = cbxnomesitrecClick
      OnEnter = cbxnomesitrecEnter
      OnKeyDown = cbxnomesitrecKeyDown
    end
    object ediccli_f: TDBEdit
      Left = 8
      Top = 236
      Width = 36
      Height = 25
      DataField = 'CODCLI'
      DataSource = frmDados.Dts_Temp
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnKeyPress = ediccli_fKeyPress
    end
    object cbxnomefun: TDBLookupComboBox
      Left = 5
      Top = 442
      Width = 188
      Height = 25
      DataField = 'COD2'
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
      TabOrder = 10
      Visible = False
      OnClick = cbxnomesitrecClick
      OnEnter = cbxnomesitrecEnter
      OnKeyDown = cbxnomesitrecKeyDown
    end
    object cbxclassificar: TComboBox
      Left = 8
      Top = 73
      Width = 185
      Height = 25
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ItemHeight = 17
      ParentFont = False
      TabOrder = 11
      Text = 'cbxclassificar'
      OnClick = cbxclassificarClick
      OnKeyDown = cbxclassificarKeyDown
      OnKeyPress = cbxclassificarKeyPress
    end
  end
  object pnldir: TPanel
    Left = 201
    Top = 42
    Width = 815
    Height = 621
    Align = alClient
    TabOrder = 0
    object Bevel2: TBevel
      Left = 1
      Top = 1
      Width = 813
      Height = 48
      Align = alTop
    end
    object Bevel5: TBevel
      Left = 1
      Top = 49
      Width = 813
      Height = 49
      Align = alTop
    end
    object Label6: TLabel
      Left = 9
      Top = 50
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
    object Label5: TLabel
      Left = 344
      Top = 448
      Width = 29
      Height = 13
      Caption = 'Totais'
    end
    object lbltotval: TLabel
      Left = 586
      Top = 448
      Width = 36
      Height = 13
      Alignment = taRightJustify
      Caption = 'lbltotval'
    end
    object spdant: TSpeedButton
      Left = 458
      Top = 70
      Width = 23
      Height = 22
      Flat = True
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333000033333
        3333330003333333333333000333333333333300033333333333000000033333
        3333300000333333333333000333333333333330333333333333333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      OnClick = spdantClick
    end
    object spdprox: TSpeedButton
      Left = 484
      Top = 70
      Width = 23
      Height = 22
      Flat = True
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        0333333333333330003333333333330000033333333330000000333333333330
        0033333333333330003333333333333000333333333330000333}
      OnClick = spdproxClick
    end
    object edicodprod: TEdit
      Left = 139
      Top = 560
      Width = 78
      Height = 25
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Text = 'edicodprod'
      Visible = False
      OnChange = edidescChange
    end
    object edidesc: TEdit
      Left = 8
      Top = 69
      Width = 449
      Height = 25
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = 'EDIDESC'
      OnChange = edidescChange
      OnKeyPress = edidescKeyPress
    end
    object pnlsalvarficha: TPanel
      Left = 299
      Top = 8
      Width = 150
      Height = 34
      BevelOuter = bvNone
      TabOrder = 4
      object sPdGravar: TSpeedButton
        Left = 2
        Top = 2
        Width = 33
        Height = 30
        Hint = 'Salvar'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Comic Sans MS'
        Font.Style = []
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
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnClick = sPdGravarClick
      end
      object spdcancelar2310: TSpeedButton
        Left = 37
        Top = 2
        Width = 33
        Height = 30
        Hint = 'Cancelar'
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
        ParentShowHint = False
        ShowHint = True
        OnClick = spdcancelar2310Click
      end
      object spdiconea: TSpeedButton
        Left = 73
        Top = 2
        Width = 33
        Height = 30
        Hint = 'Parar de efetuar venda'
        Flat = True
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        Visible = False
      end
    end
    object pnlficha: TPanel
      Left = 1
      Top = 98
      Width = 813
      Height = 522
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 5
      object Label4: TLabel
        Left = 214
        Top = 42
        Width = 32
        Height = 13
        Caption = 'Cliente'
      end
      object Label11: TLabel
        Left = 6
        Top = 98
        Width = 43
        Height = 13
        Caption = 'N.o Dup.'
        FocusControl = edinumnf
      end
      object Label12: TLabel
        Left = 6
        Top = 42
        Width = 39
        Height = 13
        Caption = 'Emiss'#227'o'
        FocusControl = edidte
      end
      object Label13: TLabel
        Left = 214
        Top = 127
        Width = 34
        Height = 13
        Caption = 'Vencto'
        FocusControl = edidtv
      end
      object Label14: TLabel
        Left = 499
        Top = 127
        Width = 24
        Height = 13
        Caption = 'Valor'
        FocusControl = edivalor
      end
      object Label16: TLabel
        Left = 6
        Top = 151
        Width = 58
        Height = 13
        Caption = 'Observa'#231#227'o'
        FocusControl = mmoobs
      end
      object Label17: TLabel
        Left = 6
        Top = 71
        Width = 55
        Height = 13
        Caption = 'Documento'
        FocusControl = edidoc
      end
      object Label18: TLabel
        Left = 214
        Top = 72
        Width = 62
        Height = 13
        Caption = 'Agrup. Conta'
        Visible = False
      end
      object Label15: TLabel
        Left = 6
        Top = 16
        Width = 56
        Height = 13
        Caption = 'Referente a'
        FocusControl = edidescricao
      end
      object Label21: TLabel
        Left = 214
        Top = 98
        Width = 46
        Height = 13
        Caption = 'Tipo Pgto'
        FocusControl = cbxtipopgto
      end
      object lbltitnped: TLabel
        Left = 425
        Top = 91
        Width = 68
        Height = 13
        Caption = 'N.o do Pedido'
      end
      object lbltitnos: TLabel
        Left = 425
        Top = 108
        Width = 41
        Height = 13
        Caption = 'N.o O.S.'
      end
      object Label27: TLabel
        Left = 6
        Top = 127
        Width = 36
        Height = 13
        Caption = 'Parcela'
        FocusControl = ediparc
      end
      object Label19: TLabel
        Left = 6
        Top = 220
        Width = 42
        Height = 13
        Caption = 'Situa'#231#227'o'
        FocusControl = edicsit
      end
      object Label22: TLabel
        Left = 278
        Top = 220
        Width = 52
        Height = 13
        Caption = 'Liquida'#231#227'o'
        FocusControl = edidtl
      end
      object Label26: TLabel
        Left = 451
        Top = 220
        Width = 69
        Height = 13
        Caption = 'Data Da Baixa'
        FocusControl = edidtb
      end
      object Label28: TLabel
        Left = 275
        Top = 248
        Width = 110
        Height = 13
        Caption = 'Forma de Recebimento'
        FocusControl = cbxntipoop
      end
      object Label29: TLabel
        Left = 6
        Top = 248
        Width = 61
        Height = 13
        Caption = 'Valor Liquido'
        FocusControl = edivalliq
      end
      object lblnped: TDBText
        Left = 512
        Top = 91
        Width = 73
        Height = 17
        Alignment = taRightJustify
        DataField = 'NPED'
        DataSource = frmDados.Dts_Vencto
      end
      object lblnos: TDBText
        Left = 535
        Top = 108
        Width = 51
        Height = 17
        Alignment = taRightJustify
        DataField = 'NOS'
        DataSource = frmDados.Dts_Vencto
      end
      object lblparte: TDBText
        Left = 592
        Top = 91
        Width = 17
        Height = 17
        Alignment = taRightJustify
        DataField = 'PARTE'
        DataSource = frmDados.Dts_Vencto
      end
      object lblpartenos: TDBText
        Left = 593
        Top = 108
        Width = 17
        Height = 17
        Alignment = taRightJustify
        DataField = 'PARTE'
        DataSource = frmDados.Dts_Vencto
      end
      object lblvlrreal: TLabel
        Left = 8
        Top = 336
        Width = 38
        Height = 13
        Caption = 'lblvlrreal'
        Visible = False
      end
      object Label23: TLabel
        Left = 8
        Top = 275
        Width = 39
        Height = 13
        Caption = 'Dentista'
        FocusControl = cbxnfun
        Visible = False
      end
      object Label24: TLabel
        Left = 464
        Top = 275
        Width = 8
        Height = 13
        Caption = '%'
        FocusControl = cbxnfun
        Visible = False
      end
      object Label25: TLabel
        Left = 275
        Top = 275
        Width = 45
        Height = 13
        Caption = 'Comiss'#227'o'
        FocusControl = cbxnfun
        Visible = False
      end
      object Label31: TLabel
        Left = 496
        Top = 275
        Width = 14
        Height = 13
        Caption = 'R$'
        FocusControl = cbxnfun
        Visible = False
      end
      object edinumnf: TDBEdit
        Left = 80
        Top = 95
        Width = 79
        Height = 21
        DataField = 'NUMNF'
        DataSource = frmDados.Dts_Vencto
        TabOrder = 7
        OnKeyPress = edidescricaoKeyPress
      end
      object edidte: TDBEdit
        Left = 80
        Top = 39
        Width = 129
        Height = 21
        DataField = 'DTE'
        DataSource = frmDados.Dts_Vencto
        TabOrder = 1
        OnKeyPress = edidescricaoKeyPress
      end
      object edidtv: TDBEdit
        Left = 282
        Top = 123
        Width = 87
        Height = 21
        DataField = 'DTV'
        DataSource = frmDados.Dts_Vencto
        TabOrder = 10
        OnKeyPress = edidescricaoKeyPress
      end
      object edivalor: TDBEdit
        Left = 530
        Top = 123
        Width = 80
        Height = 21
        DataField = 'VALOR'
        DataSource = frmDados.Dts_Vencto
        TabOrder = 11
        OnKeyPress = edidescricaoKeyPress
      end
      object mmoobs: TDBMemo
        Left = 80
        Top = 151
        Width = 529
        Height = 48
        DataField = 'OBS'
        DataSource = frmDados.Dts_Vencto
        TabOrder = 12
      end
      object cbxncli: TDBLookupComboBox
        Left = 330
        Top = 39
        Width = 280
        Height = 21
        DataField = 'ncli'
        DataSource = frmDados.Dts_Vencto
        TabOrder = 3
        OnKeyPress = edidescricaoKeyPress
      end
      object ediccli: TDBEdit
        Left = 282
        Top = 39
        Width = 41
        Height = 21
        DataField = 'CCLI'
        DataSource = frmDados.Dts_Vencto
        TabOrder = 2
        OnKeyPress = edidescricaoKeyPress
      end
      object edidoc: TDBEdit
        Left = 80
        Top = 67
        Width = 529
        Height = 21
        DataField = 'DOC'
        DataSource = frmDados.Dts_Vencto
        TabOrder = 4
        OnKeyPress = edidescricaoKeyPress
      end
      object cbxncla: TDBLookupComboBox
        Left = 386
        Top = 67
        Width = 225
        Height = 21
        DataField = 'ncla'
        DataSource = frmDados.Dts_Vencto
        TabOrder = 6
        Visible = False
        OnKeyPress = edidescricaoKeyPress
      end
      object cbxnagrupcod: TDBLookupComboBox
        Left = 282
        Top = 67
        Width = 97
        Height = 21
        DataField = 'ngrupocla'
        DataSource = frmDados.Dts_Vencto
        TabOrder = 5
        Visible = False
        OnKeyPress = edidescricaoKeyPress
      end
      object edidescricao: TDBEdit
        Left = 80
        Top = 11
        Width = 529
        Height = 21
        DataField = 'DESCRICAO'
        DataSource = frmDados.Dts_Vencto
        TabOrder = 0
        OnKeyPress = edidescricaoKeyPress
      end
      object cbxtipopgto: TDBLookupComboBox
        Left = 282
        Top = 95
        Width = 134
        Height = 21
        DataField = 'n_tipo_pgto'
        DataSource = frmDados.Dts_Vencto
        TabOrder = 8
        OnKeyPress = edidescricaoKeyPress
      end
      object ediparc: TDBEdit
        Left = 80
        Top = 123
        Width = 81
        Height = 21
        DataField = 'PARC'
        DataSource = frmDados.Dts_Vencto
        TabOrder = 9
        OnKeyPress = edidescricaoKeyPress
      end
      object edicsit: TDBEdit
        Left = 80
        Top = 216
        Width = 25
        Height = 21
        DataField = 'CSIT'
        DataSource = frmDados.Dts_Vencto
        TabOrder = 13
        OnKeyPress = edidescricaoKeyPress
      end
      object edinsit: TDBLookupComboBox
        Left = 109
        Top = 216
        Width = 156
        Height = 21
        DataField = 'nsiturec'
        DataSource = frmDados.Dts_Vencto
        TabOrder = 14
        OnKeyPress = edidescricaoKeyPress
      end
      object edidtl: TDBEdit
        Left = 344
        Top = 216
        Width = 89
        Height = 21
        DataField = 'DTL'
        DataSource = frmDados.Dts_Vencto
        TabOrder = 15
        OnKeyPress = edidescricaoKeyPress
      end
      object edidtb: TDBEdit
        Left = 528
        Top = 216
        Width = 81
        Height = 21
        DataField = 'DTB'
        DataSource = frmDados.Dts_Vencto
        TabOrder = 16
        OnKeyPress = edidescricaoKeyPress
      end
      object cbxntipoop: TDBLookupComboBox
        Left = 392
        Top = 244
        Width = 217
        Height = 21
        DataField = 'ntipoop'
        DataSource = frmDados.Dts_Vencto
        TabOrder = 18
        OnKeyPress = edidescricaoKeyPress
      end
      object edivalliq: TDBEdit
        Left = 80
        Top = 244
        Width = 185
        Height = 21
        DataField = 'VALLIQ'
        DataSource = frmDados.Dts_Vencto
        TabOrder = 17
        OnKeyPress = edidescricaoKeyPress
      end
      object cbxnfun: TDBLookupComboBox
        Left = 80
        Top = 272
        Width = 187
        Height = 21
        DataField = 'nfun'
        DataSource = frmDados.Dts_Vencto
        TabOrder = 19
        Visible = False
        OnExit = cbxnfunExit
        OnKeyPress = cbxclassificarKeyPress
      end
      object edipcom: TDBEdit
        Left = 392
        Top = 272
        Width = 65
        Height = 21
        DataField = 'PCOM'
        DataSource = frmDados.Dts_Vencto
        TabOrder = 20
        Visible = False
        OnExit = edipcomExit
        OnKeyPress = edidescricaoKeyPress
      end
      object edivcom: TDBEdit
        Left = 520
        Top = 272
        Width = 89
        Height = 21
        DataField = 'VCOM'
        DataSource = frmDados.Dts_Vencto
        TabOrder = 21
        Visible = False
        OnExit = edivcomExit
        OnKeyPress = edidescricaoKeyPress
      end
    end
    object dbgrecbto: TDBGrid
      Left = 10
      Top = 464
      Width = 679
      Height = 97
      DataSource = frmDados.Dts_Vencto
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnEnter = dbgrecbtoEnter
      OnExit = dbgrecbtoExit
      OnKeyPress = dbgrecbtoKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'DTE'
          Title.Caption = 'Emiss'#227'o'
          Width = 61
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ncli'
          Title.Caption = 'Nome do Cliente'
          Width = 178
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DTV'
          Title.Caption = 'Vencto'
          Width = 71
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DTL'
          Title.Caption = 'Liquida'#231#227'o'
          Width = 71
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DTB'
          Title.Caption = 'Baixa'
          Width = 68
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOS'
          Title.Caption = 'N.o O.S.'
          Width = 49
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NPED'
          Title.Caption = 'N.o Ped.'
          Width = 51
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PARTE'
          Title.Caption = ' '
          Width = 17
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR'
          Title.Caption = 'Valor'
          Width = 61
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nsiturec'
          Title.Caption = 'Situa'#231#227'o'
          Width = 47
          Visible = True
        end>
    end
    object pnllista: TPanel
      Left = 2
      Top = 8
      Width = 295
      Height = 35
      BevelOuter = bvNone
      TabOrder = 3
      object spdIncluir171: TSpeedButton
        Left = 2
        Top = 2
        Width = 33
        Height = 30
        Hint = 'Incluir'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -15
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        Glyph.Data = {
          7A040000424D7A04000000000000360000002800000011000000150000000100
          1800000000004404000000000000000000000000000000000000BFBFBFBFBFBF
          7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
          7F7F7F7F7F7F7F7F7F7F7F7F7F00BFBFBFBFBFBF7F7F7F7F7F7F7F7F7F7F7F7F
          7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
          7F007F00007F00007F00007F00007F00007F00007F00007F00007F00007F0000
          7F00007F00007F00007F00007F00007F7F7F7F7F7F007F000000FFFFFFFFFFFF
          FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFF00FFFF
          7F00007F7F7F7F7F7F007F0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F00007F7F7F7F7F7F007F00
          00FFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFF00
          FFFFFFFFFFFFFFFF7F00007F7F7F7F7F7F007F0000FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F00007F
          7F7F7F7F7F007F000000FFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
          FF00FFFFFFFFFFFFFFFFFFFFFF00FFFF7F00007F7F7F7F7F7F007F0000FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF7F00007F7F7F7F7F7F007F0000FFFFFFFFFFFF00FFFFFFFFFFFFFFFF
          FFFFFF00FFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFF7F00007F7F7F7F7F
          7F007F0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF7F00007F7F7F7F7F7F007F000000FFFFFFFFFFFF
          FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFF00FFFF
          7F00007F7F7F7F7F7F007F0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F00007F7F7F7F7F7F007F00
          00FFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFF00
          FFFFFFFFFFFFFFFF7F00007F7F7F7F7F7F007F0000FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF007F7FBFBFBFBFBFBF7F00007F
          7F7FBFBFBF007F000000FFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
          FF00FFFF7F00007F00007F00007F00007F0000BFBFBFBFBFBF007F0000FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F0000FFFFFFFFFF
          FF7F0000BFBFBFBFBFBFBFBFBF007F0000FFFFFFFFFFFF00FFFFFFFFFFFFFFFF
          FFFFFF00FFFFFFFFFFFFFFFF7F0000FFFFFF7F0000BFBFBFBFBFBFBFBFBFBFBF
          BF007F0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          7F00007F0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F00007F00007F00007F
          00007F00007F00007F00007F00007F00007F00007F0000BFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00}
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnClick = spdIncluir171Click
      end
      object spdAlterar172: TSpeedButton
        Left = 37
        Top = 2
        Width = 33
        Height = 30
        Hint = 'Alterar'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -15
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        Glyph.Data = {
          42050000424D4205000000000000360000002800000016000000130000000100
          1800000000000C050000C30E0000C30E00000000000000000000BFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB7B7B7BCAFAE9A7E
          7B9F756F288686978E8EC0B9B9BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB4B4B4BFACAB9E8785DC
          756EF5A39FA3BFBA4DB5B5914844BC837FC0B6B6BFBFBFBFBFBFBFBFBFBFBFBF
          0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB3B3B3BBA6A4AE8D8BD48582
          B3B3AEF8AAA89EDCE167E8EBBEBCBFB76865974B47B9827FC0B5B5BFBFBFBFBF
          BFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFB4B4B4B5A09EBA908D8D9B97DDA9
          A7A8D4D86BE7EAE0DEE36FE6EA8BE0E477E4E8AEACAB974B4786433FB9817EC0
          B6B5BFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFB4B4B4AC9695939F9BBFB0AFAA
          D2D4CDE3E790E3E7DEE3E7E3DDE1A9A8AB4FA8B97F8EBC75CECF7F7F7B773B39
          AA544FAB918FB9B9B9BFBFBF0000BFBFBFBFBFBFBFBFBFB6B6B68BB8B77FD9DA
          7BE3E7B9E8EBE9E0E4BCA7AAA1B0B1B19C9F9E9E9E5F5F7F4B4DA2C2E3E7B3A2
          A08E4643AA544F937977949494BBBBBB0000BFBFBFBFBFBFBFBFBFBFBFBFB7C9
          CBD7E3E7D0E1E5C4F1F4F3D5DB4B8B8C27CFCF33D4D4A5A5B4404995AEBCD9E8
          E1E5E7CBCEC8787690778DA0A2ABABABABBDBDBD0000BFBFBFBFBFBFBFBFBFBF
          BFBFC4BFC0E6DFE0FFF7F8F8DDE2B19F576C811E9CF4EB033E9922748A3C3495
          B5DDE286E5E9E7E3E7D3A09DB69BA1B9BCBFBFBFBFBFBFBF0000BFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFDFC6CAFFEAEDB3AF668381597F7F12218D8200707F1269
          6B77212D9BAFAFC2FCFCE7E3E7E0DFE1CD9A96C2ABAABFBFBFBFBFBF0000BFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBDBCBC99999980807576761E1616006503030C
          767F323F9BDBDCDBE5BBB8D7E8EB82E3E793E1E5E08F8DC5A5A2BFBDBDBFBFBF
          0000BFBFBFBFBFBFBFBFBFBFBFBFB2B2B29090907F7F737171231A1A00000000
          121212989293DDEFF2FDD0D6A5DFE461E3E585DDE089F9FAECDCE1D9817CC1B0
          AFBFBFBF0000BFBFBFBFBFBFBFBFBFAFAFAF6D6262694F4D7469311F1F000000
          001A1A1A948789FFD5DBFFDCE1E6FFFF6FF6FB3FBCCA95B5C3BADBE5C9F0F3D8
          9F9CD0B6B7C0BFBF0000BFBFBFBFBFBFAEAEAE616161715440D983675C302E00
          0000202020959595F7D6DAF7FFFFB2FBFBB6E5EA36C4E452A5D54FA8D73BBEE1
          91E4EAE1CDD1B2D7DBD0C3C60000BFBFBFB1B1B15E5E5E4F4F3C6767296B4E28
          3B2221242424979797F2F2F2FFE8EBDDFFFF6CF8F8A1D5DD44B5DD49AFDA45B4
          DC47B1DB95D3DDD5C8CB81E0E3D8C6CA0000B6B6B65555555252416868272222
          00000000272727818181CECECEF9F9F9E7E7EAD1FFFFD1FFFF63FFFF7CEEF788
          B1CB85ACC680EAF5A8E8E8D7C9CCDDC3C6C1BFBF0000B5B5B55757496B6B231F
          1F00000000272727828282B6B6B6BFBFBFD2D2D2EAFBFBE0FFFF69F8FAB2E4E8
          B7FFFF72D9D97AD3D393E7E770E1E1A1C9C9BFBFBFBFBFBF0000B9B9B16F6F1D
          1A1A00000000252525848484B7B7B7BFBFBFBFBFBFBFBFBFF9F9F9F8FBFCC3D4
          DAF3C9CFC8E0E0BAE4E45FDFDF6FD9D99BCACABAE6E6C0C6C6BFBFBF0000BDBD
          BC949481000000222222868686B9B9B9BFBFBFBFBFBFBFBFBFBFBFBFC9C9C9FA
          D0D5CBC0C2C8C0C1D4C5C7E4CACDC7C8CBC5C6C8BFBFBFC1C8C8BFC0C0BFBFBF
          0000BFBFBFBCBCBCADADADB1B1B1BBBBBBBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFC4BFC0BFBFBFBFBFBFC0BFBFC2BFBFC2BFBFC1BFBFBFBFBFBFBFBFBFBF
          BFBFBFBF0000}
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnClick = spdAlterar172Click
      end
      object spdExcluir173: TSpeedButton
        Left = 73
        Top = 2
        Width = 33
        Height = 30
        Hint = 'Excluir'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -15
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000010000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          77777777777777777777777700000000007777770FFFFFFFF07777770FFFFFFF
          F077771F0F888888F077711F0F85BFB8F0777711F11BFBF8F077777151788888
          F077777511FFFFFFF07775111F1FFF00007771570FF1FF0F077777770FFFFF00
          7777777700000007777777777777777777777777777777777777}
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnClick = spdExcluir173Click
      end
      object spdConsultar174: TSpeedButton
        Left = 108
        Top = 2
        Width = 33
        Height = 30
        Hint = 'Consulta'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -15
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        Glyph.Data = {
          EE000000424DEE000000000000007600000028000000100000000F0000000100
          04000000000078000000130B0000130B00001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
          888800000888880000080F000888880F00080F000888880F0008000000080000
          000800F000000F00000800F000800F00000800F000800F000008800000000000
          0088880F00080F000888880000080000088888800088800088888880F08880F0
          888888800088800088888888888888888888}
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnClick = spdConsultar174Click
      end
      object spdmenurel: TSpeedButton
        Left = 149
        Top = 2
        Width = 33
        Height = 30
        Hint = 'Relat'#243'rios'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -15
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
          00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
          8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
          8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
          8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
          03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
          03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
          33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
          33333337FFFF7733333333300000033333333337777773333333}
        NumGlyphs = 2
        ParentFont = False
        ParentShowHint = False
        PopupMenu = PopupMenu1
        ShowHint = True
        OnClick = spdmenurelClick
      end
    end
    object Panel1: TPanel
      Left = 496
      Top = 3
      Width = 97
      Height = 41
      BevelOuter = bvNone
      TabOrder = 6
      object spdestornar: TSpeedButton
        Left = 49
        Top = 6
        Width = 33
        Height = 30
        Hint = 'Estornar'
        Flat = True
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        Visible = False
      end
      object spdbaixar: TSpeedButton
        Left = 13
        Top = 6
        Width = 33
        Height = 30
        Hint = 'Baixar'
        Flat = True
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        Visible = False
      end
    end
  end
  object imgfichadetalhe: TImageList
    Left = 839
    Top = 538
    Bitmap = {
      494C010103000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001001000000000000008
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001F00
      1F001F000000000000000000000000000000000000000000007C007C00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      1F0000000000000000000000000000000000000000000000007C007C00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000007C007C007C007C007C007C
      0000000000000000000000000000000000000000007C007C007C007C007C007C
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000007C007C007C007C007C007C
      0000000000000000000000000000000000000000007C007C007C007C007C007C
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000007C007C00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000007C007C00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      1F000000000000000000000000000000000000000000000000001F0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      1F001F0000000000000000000000000000000000000000001F001F0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000EF3DE07FEF3D0000000000001F001F001F001F001F001F00
      1F001F001F001F000000007C007C0000000000001F001F001F001F001F001F00
      1F001F001F001F000000007C007C000000000000000000000000000000000000
      0000000000000000000000000000000000000000007C007C007C000000000000
      0000000000000000E07FE07FE07F0000000000001F001F001F001F001F001F00
      1F001F001F001F000000007C007C0000000000001F001F001F001F001F001F00
      1F001F001F001F000000007C007C000000000000000000000000000000000000
      0000000000000000000000000000000000000000007C007C007C000000000000
      0000000000000000EF3DE07FEF3D000000000000000000000000000000000000
      1F001F0000000000000000000000000000000000000000001F001F0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000007C007C007C000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      1F000000000000000000000000000000000000000000000000001F0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00F01FFFFFFFFF0000F83FE7F8FFF80000
      EC6FE7F8FFF80000FEFF81FF81FF0000BFFB81FC81FC0000FFFFE7FCFFFC0000
      7FFDE7FFFFFF0000FFFFFFFCFFFC00007FFDFEFCF7FC0000FFE3FE7FE7FF0000
      07C180138013000007C180138013000007C1FE7FE7FF000007E3FEF8F7F80000
      07EFFFF8FFF80000FABFFFFFFFFF000000000000000000000000000000000000
      000000000000}
  end
  object PopupMenu1: TPopupMenu
    Left = 443
    Top = 58
    object Completo1: TMenuItem
      Caption = 'Geral'
      OnClick = Completo1Click
    end
    object Comisso1: TMenuItem
      Caption = 'Comiss'#227'o'
      OnClick = Comisso1Click
    end
  end
end
