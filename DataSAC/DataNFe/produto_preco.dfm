object frmproduto_preco: Tfrmproduto_preco
  Left = 299
  Top = 294
  BorderStyle = bsToolWindow
  Caption = 'PRODUTO | Atualiza'#231#227'o de Pre'#231'o'
  ClientHeight = 387
  ClientWidth = 560
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object ppreco: TPanel
    Left = 0
    Top = 0
    Width = 560
    Height = 353
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object FlatPanel9: TFlatPanel
      Left = 402
      Top = 0
      Width = 33
      Height = 13
      ParentColor = True
      ColorHighLight = clBtnFace
      ColorShadow = clBtnFace
      TabOrder = 0
      UseDockManager = True
    end
    object FlatPanel10: TFlatPanel
      Left = 490
      Top = 0
      Width = 33
      Height = 13
      ParentColor = True
      ColorHighLight = clBtnFace
      ColorShadow = clBtnFace
      TabOrder = 1
      UseDockManager = True
    end
    object GroupBox1: TGroupBox
      Left = 7
      Top = 3
      Width = 226
      Height = 63
      Caption = 'Valores Anteriores'
      Enabled = False
      TabOrder = 2
      object Label7: TLabel
        Left = 8
        Top = 16
        Width = 77
        Height = 13
        Caption = 'Pre'#231'o de Custo:'
      end
      object Label8: TLabel
        Left = 8
        Top = 40
        Width = 79
        Height = 13
        Caption = 'Pre'#231'o de Venda:'
      end
      object edcusto: TRzNumericEdit
        Left = 112
        Top = 12
        Width = 105
        Height = 21
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        IntegersOnly = False
        DisplayFormat = '###,###,##0.00'
      end
      object edvenda: TRzNumericEdit
        Left = 112
        Top = 36
        Width = 105
        Height = 21
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        IntegersOnly = False
        DisplayFormat = '###,###,##0.00'
      end
    end
    object GroupBox3: TGroupBox
      Left = 6
      Top = 67
      Width = 226
      Height = 274
      Caption = 'Custos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      object Label19: TLabel
        Left = 8
        Top = 16
        Width = 130
        Height = 13
        Caption = 'Valor da Nota Fiscal'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label20: TLabel
        Left = 8
        Top = 46
        Width = 31
        Height = 13
        Caption = 'ICMS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Bevel1: TBevel
        Left = 0
        Top = 227
        Width = 226
        Height = 2
      end
      object Label21: TLabel
        Left = 8
        Top = 241
        Width = 117
        Height = 13
        Caption = 'Custo Mercadoria:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label73: TLabel
        Left = 8
        Top = 118
        Width = 53
        Height = 13
        Caption = 'Desconto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label74: TLabel
        Left = 8
        Top = 149
        Width = 29
        Height = 13
        Caption = 'Frete'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label75: TLabel
        Left = 8
        Top = 207
        Width = 17
        Height = 13
        Caption = 'IPI'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label77: TLabel
        Left = 8
        Top = 168
        Width = 41
        Height = 13
        Caption = 'Seguro'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label78: TLabel
        Left = 8
        Top = 187
        Width = 97
        Height = 13
        Caption = 'Outras Despesas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label79: TLabel
        Left = 122
        Top = 48
        Width = 15
        Height = 9
        Caption = '(-)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -9
        Font.Name = 'Lucida Console'
        Font.Style = []
        ParentFont = False
      end
      object Label81: TLabel
        Left = 122
        Top = 120
        Width = 15
        Height = 9
        Caption = '(-)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -9
        Font.Name = 'Lucida Console'
        Font.Style = []
        ParentFont = False
      end
      object Label82: TLabel
        Left = 122
        Top = 148
        Width = 15
        Height = 9
        Caption = '(+)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -9
        Font.Name = 'Lucida Console'
        Font.Style = []
        ParentFont = False
      end
      object Label83: TLabel
        Left = 122
        Top = 168
        Width = 15
        Height = 9
        Caption = '(+)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -9
        Font.Name = 'Lucida Console'
        Font.Style = []
        ParentFont = False
      end
      object Label84: TLabel
        Left = 122
        Top = 188
        Width = 15
        Height = 9
        Caption = '(+)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -9
        Font.Name = 'Lucida Console'
        Font.Style = []
        ParentFont = False
      end
      object Label85: TLabel
        Left = 122
        Top = 209
        Width = 15
        Height = 9
        Caption = '(+)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -9
        Font.Name = 'Lucida Console'
        Font.Style = []
        ParentFont = False
      end
      object Bevel5: TBevel
        Left = 0
        Top = 37
        Width = 226
        Height = 2
      end
      object Bevel6: TBevel
        Left = 0
        Top = 138
        Width = 226
        Height = 2
      end
      object Label1: TLabel
        Left = 8
        Top = 70
        Width = 20
        Height = 13
        Caption = 'PIS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 122
        Top = 72
        Width = 15
        Height = 9
        Caption = '(-)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -9
        Font.Name = 'Lucida Console'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 8
        Top = 94
        Width = 45
        Height = 13
        Caption = 'COFINS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 122
        Top = 96
        Width = 15
        Height = 9
        Caption = '(-)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -9
        Font.Name = 'Lucida Console'
        Font.Style = []
        ParentFont = False
      end
      object DBEdit19: TDBEdit
        Left = 141
        Top = 13
        Width = 80
        Height = 21
        DataField = 'VALOR_ULTIMA_COMPRA'
        DataSource = dspreco
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnEnter = DBEdit19Enter
        OnExit = DBEdit19Exit
        OnKeyPress = DBEdit19KeyPress
      end
      object DBEdit20: TDBEdit
        Left = 141
        Top = 42
        Width = 80
        Height = 21
        DataField = 'ICMS_ENTRADA'
        DataSource = dspreco
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnEnter = DBEdit19Enter
        OnExit = DBEdit19Exit
        OnKeyPress = DBEdit19KeyPress
      end
      object DBEdit21: TDBEdit
        Left = 141
        Top = 114
        Width = 80
        Height = 21
        DataField = 'DESCONTO'
        DataSource = dspreco
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        OnEnter = DBEdit19Enter
        OnExit = DBEdit19Exit
        OnKeyPress = DBEdit19KeyPress
      end
      object DBEdit63: TDBEdit
        Left = 141
        Top = 142
        Width = 80
        Height = 21
        DataField = 'FRETE'
        DataSource = dspreco
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        OnEnter = DBEdit19Enter
        OnExit = DBEdit19Exit
        OnKeyPress = DBEdit19KeyPress
      end
      object DBEdit64: TDBEdit
        Left = 141
        Top = 162
        Width = 80
        Height = 21
        DataField = 'SEGURO'
        DataSource = dspreco
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
        OnEnter = DBEdit19Enter
        OnExit = DBEdit19Exit
        OnKeyPress = DBEdit19KeyPress
      end
      object DBEdit65: TDBEdit
        Left = 141
        Top = 182
        Width = 80
        Height = 21
        DataField = 'OUTRAS_DESPESAS'
        DataSource = dspreco
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
        OnEnter = DBEdit19Enter
        OnExit = DBEdit19Exit
        OnKeyPress = DBEdit19KeyPress
      end
      object DBEdit66: TDBEdit
        Left = 141
        Top = 202
        Width = 80
        Height = 21
        DataField = 'IPI'
        DataSource = dspreco
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 12
        OnEnter = DBEdit19Enter
        OnExit = DBEdit19Exit
        OnKeyPress = DBEdit19KeyPress
      end
      object DBEdit67: TDBEdit
        Left = 141
        Top = 237
        Width = 80
        Height = 21
        DataField = 'CUSTO_COMPRA'
        DataSource = dspreco
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 13
        OnEnter = DBEdit19Enter
        OnKeyPress = DBEdit19KeyPress
      end
      object DBEdit68: TDBEdit
        Left = 56
        Top = 43
        Width = 62
        Height = 21
        DataField = 'ICMS_ENTRADA_P'
        DataSource = dspreco
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnEnter = DBEdit19Enter
        OnExit = DBEdit68Exit
        OnKeyPress = DBEdit19KeyPress
      end
      object FlatPanel1: TFlatPanel
        Left = 185
        Top = 0
        Width = 33
        Height = 13
        ParentColor = True
        ColorHighLight = clBtnFace
        ColorShadow = clBtnFace
        TabOrder = 14
        UseDockManager = True
        object Label86: TLabel
          Left = 10
          Top = 0
          Width = 16
          Height = 13
          Caption = 'R$'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object DBEdit69: TDBEdit
        Left = 56
        Top = 202
        Width = 62
        Height = 21
        DataField = 'IPI_P'
        DataSource = dspreco
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 11
        OnEnter = DBEdit19Enter
        OnExit = DBEdit69Exit
        OnKeyPress = DBEdit19KeyPress
      end
      object DBEdit1: TDBEdit
        Left = 56
        Top = 67
        Width = 62
        Height = 21
        DataField = 'PIS_ENTRADA_P'
        DataSource = dspreco
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnEnter = DBEdit19Enter
        OnExit = DBEdit1Exit
        OnKeyPress = DBEdit19KeyPress
      end
      object DBEdit2: TDBEdit
        Left = 141
        Top = 66
        Width = 80
        Height = 21
        DataField = 'PIS_ENTRADA'
        DataSource = dspreco
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnEnter = DBEdit19Enter
        OnExit = DBEdit19Exit
        OnKeyPress = DBEdit19KeyPress
      end
      object DBEdit4: TDBEdit
        Left = 56
        Top = 91
        Width = 62
        Height = 21
        DataField = 'COFINS_ENTRADA_P'
        DataSource = dspreco
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnEnter = DBEdit19Enter
        OnExit = DBEdit4Exit
        OnKeyPress = DBEdit19KeyPress
      end
      object DBEdit6: TDBEdit
        Left = 141
        Top = 90
        Width = 80
        Height = 21
        DataField = 'COFINS_ENTRADA'
        DataSource = dspreco
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        OnEnter = DBEdit19Enter
        OnExit = DBEdit19Exit
        OnKeyPress = DBEdit19KeyPress
      end
    end
    object GroupBox4: TGroupBox
      Left = 235
      Top = 67
      Width = 317
      Height = 274
      Caption = 'Comercializa'#231#227'o'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      object Label22: TLabel
        Left = 8
        Top = 14
        Width = 90
        Height = 13
        Caption = 'ICMS de Sa'#237'da:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label23: TLabel
        Left = 8
        Top = 34
        Width = 25
        Height = 13
        Caption = 'PIS:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label24: TLabel
        Left = 8
        Top = 54
        Width = 50
        Height = 13
        Caption = 'COFINS:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label25: TLabel
        Left = 8
        Top = 74
        Width = 115
        Height = 13
        Caption = 'Contribui'#231#227'o Social:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label26: TLabel
        Left = 8
        Top = 94
        Width = 110
        Height = 13
        Caption = 'Custo Operacional:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label27: TLabel
        Left = 8
        Top = 114
        Width = 61
        Height = 13
        Caption = 'Comiss'#227'o:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Bevel2: TBevel
        Left = 0
        Top = 133
        Width = 316
        Height = 2
      end
      object Label28: TLabel
        Left = 8
        Top = 140
        Width = 111
        Height = 13
        Caption = 'Total dos Custos:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label41: TLabel
        Left = 9
        Top = 224
        Width = 105
        Height = 13
        Caption = 'Pre'#231'o de Venda:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label50: TLabel
        Left = 134
        Top = 36
        Width = 15
        Height = 9
        Caption = '(+)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -9
        Font.Name = 'Lucida Console'
        Font.Style = []
        ParentFont = False
      end
      object Label51: TLabel
        Left = 134
        Top = 56
        Width = 15
        Height = 9
        Caption = '(+)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -9
        Font.Name = 'Lucida Console'
        Font.Style = []
        ParentFont = False
      end
      object Label52: TLabel
        Left = 134
        Top = 76
        Width = 15
        Height = 9
        Caption = '(+)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -9
        Font.Name = 'Lucida Console'
        Font.Style = []
        ParentFont = False
      end
      object Label53: TLabel
        Left = 134
        Top = 96
        Width = 15
        Height = 9
        Caption = '(+)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -9
        Font.Name = 'Lucida Console'
        Font.Style = []
        ParentFont = False
      end
      object Label54: TLabel
        Left = 134
        Top = 116
        Width = 15
        Height = 9
        Caption = '(+)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -9
        Font.Name = 'Lucida Console'
        Font.Style = []
        ParentFont = False
      end
      object Label39: TLabel
        Left = 134
        Top = 16
        Width = 15
        Height = 9
        Caption = '(+)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -9
        Font.Name = 'Lucida Console'
        Font.Style = []
        ParentFont = False
      end
      object Bevel4: TBevel
        Left = 0
        Top = 159
        Width = 317
        Height = 2
      end
      object Label40: TLabel
        Left = 8
        Top = 166
        Width = 105
        Height = 13
        Caption = 'Lucro Desejado:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label49: TLabel
        Left = 134
        Top = 168
        Width = 15
        Height = 9
        Caption = '(+)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -9
        Font.Name = 'Lucida Console'
        Font.Style = []
        ParentFont = False
      end
      object Bevel7: TBevel
        Left = 0
        Top = 185
        Width = 316
        Height = 2
      end
      object Label71: TLabel
        Left = 210
        Top = -2
        Width = 14
        Height = 13
        Caption = '%'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label72: TLabel
        Left = 291
        Top = -1
        Width = 16
        Height = 13
        Caption = 'R$'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBEdit23: TDBEdit
        Left = 152
        Top = 30
        Width = 75
        Height = 21
        DataField = 'PIS_P'
        DataSource = dspreco
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnEnter = DBEdit19Enter
        OnExit = DBEdit19Exit
        OnKeyPress = DBEdit19KeyPress
      end
      object DBEdit24: TDBEdit
        Left = 152
        Top = 50
        Width = 75
        Height = 21
        DataField = 'COFINS_P'
        DataSource = dspreco
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnEnter = DBEdit19Enter
        OnExit = DBEdit19Exit
        OnKeyPress = DBEdit19KeyPress
      end
      object DBEdit25: TDBEdit
        Left = 152
        Top = 70
        Width = 75
        Height = 21
        DataField = 'CONTRIBUICAO_SOCIAL_P'
        DataSource = dspreco
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnEnter = DBEdit19Enter
        OnExit = DBEdit19Exit
        OnKeyPress = DBEdit19KeyPress
      end
      object DBEdit26: TDBEdit
        Left = 152
        Top = 90
        Width = 75
        Height = 21
        DataField = 'CUSTO_OPERACIONAL_P'
        DataSource = dspreco
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnEnter = DBEdit19Enter
        OnExit = DBEdit19Exit
        OnKeyPress = DBEdit19KeyPress
      end
      object DBEdit27: TDBEdit
        Left = 152
        Top = 110
        Width = 75
        Height = 21
        DataField = 'COMISSAO_P'
        DataSource = dspreco
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnEnter = DBEdit19Enter
        OnExit = DBEdit19Exit
        OnKeyPress = DBEdit19KeyPress
      end
      object DBEdit33: TDBEdit
        Left = 228
        Top = 30
        Width = 80
        Height = 21
        DataField = 'PIS'
        DataSource = dspreco
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
      end
      object DBEdit34: TDBEdit
        Left = 228
        Top = 50
        Width = 80
        Height = 21
        DataField = 'COFINS'
        DataSource = dspreco
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
      end
      object DBEdit35: TDBEdit
        Left = 228
        Top = 70
        Width = 80
        Height = 21
        DataField = 'CONTRIBUICAO_SOCIAL'
        DataSource = dspreco
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
      end
      object DBEdit36: TDBEdit
        Left = 228
        Top = 90
        Width = 80
        Height = 21
        DataField = 'CUSTO_OPERACIONAL'
        DataSource = dspreco
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
      end
      object DBEdit37: TDBEdit
        Left = 228
        Top = 110
        Width = 80
        Height = 21
        DataField = 'COMISSAO'
        DataSource = dspreco
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 11
      end
      object DBEdit38: TDBEdit
        Left = 152
        Top = 136
        Width = 75
        Height = 21
        DataField = 'TOTAL_CUSTO_P'
        DataSource = dspreco
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 12
        OnEnter = DBEdit19Enter
        OnKeyPress = DBEdit19KeyPress
      end
      object DBEdit3: TDBEdit
        Left = 228
        Top = 136
        Width = 80
        Height = 21
        DataField = 'TOTAL_CUSTO'
        DataSource = dspreco
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 13
      end
      object DBEdit8: TDBEdit
        Left = 152
        Top = 10
        Width = 75
        Height = 21
        DataField = 'ICMS_SAIDA_P'
        DataSource = dspreco
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnEnter = DBEdit19Enter
        OnExit = DBEdit19Exit
        OnKeyPress = DBEdit19KeyPress
      end
      object DBEdit9: TDBEdit
        Left = 228
        Top = 10
        Width = 80
        Height = 21
        DataField = 'ICMS_SAIDA'
        DataSource = dspreco
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 14
      end
      object DBEdit22: TDBEdit
        Left = 152
        Top = 162
        Width = 75
        Height = 21
        DataField = 'LUCRO_P'
        DataSource = dspreco
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        OnEnter = DBEdit19Enter
        OnExit = DBEdit22Exit
        OnKeyPress = DBEdit19KeyPress
      end
      object DBEdit32: TDBEdit
        Left = 228
        Top = 162
        Width = 80
        Height = 21
        DataField = 'LUCRO'
        DataSource = dspreco
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 15
      end
      object DBEdit5: TRxDBCalcEdit
        Left = 152
        Top = 221
        Width = 153
        Height = 25
        DataField = 'PRECO_VENDA'
        DataSource = dspreco
        DisplayFormat = '###,###,##0.000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        NumGlyphs = 2
        ParentFont = False
        TabOrder = 16
        OnKeyPress = DBEdit5KeyPress
      end
    end
    object bnovopreco_venda: TBitBtn
      Left = 343
      Top = 16
      Width = 129
      Height = 25
      Caption = 'bnovopreco_venda'
      TabOrder = 5
      Visible = False
      OnClick = bnovopreco_vendaClick
    end
    object bar: TProgressBar
      Left = 0
      Top = 348
      Width = 560
      Height = 5
      Align = alBottom
      TabOrder = 6
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 354
    Width = 560
    Height = 33
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object batualiza: TAdvGlowButton
      Left = 220
      Top = 4
      Width = 182
      Height = 24
      Caption = 'Atualizar Grade e Produto'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 49
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000000467414D410000AFC837058AE90000001974455874536F6674776172
        650041646F626520496D616765526561647971C9653C0000029B4944415478DA
        62BC7AF5EA7F2060F8F7EF1F03884666036931131393D70C78004000315EBE7C
        F9BF96961686C4F3E7CF195EBE7CC9F0FBF76F317373739C8600041013C82610
        78FAF429C3C58B17191E3F7E0CE64B4A4A32888A8A32303333BF3A7AF4A8282E
        0300028809E45C1078FDFA3583A1A121E3AB57AFCE7DFBF60DEC0D696969B821
        070F1EC46A084000C10D10161666387DFAF44F205F94858585E1FDEB5F0C27F6
        BC6190959565101717071BB26FDF3E0C4300028805E605904219191936A09F65
        BF7E6260583BF729C3AF1FA0406560B0749507BBE8C99327AF76EDDA25E6E6E6
        060F13800002B9E0FBBB77EFC01C90A2CFEFFF31AC9AF998819B87854154929D
        E1CAE94F0CC777BF61505454649092926200BAEED5B66DDBE02E0108209001EE
        77EEDCF9FEE6CD1B903319DE019DFEFBE77F0646264606661646063E4156B821
        CACACA2057820DD9B46913D8108000620479E1D8B163D6408376ABAAAA728202
        EDDEF5CF0CBBD7BE046A666360656362F8FBE73FC387B7BF18744CF918ACDD45
        196EDDBAC570EFDE3D869F3F7F8A01041013C8142B2BABA340035C6FDCB8F11D
        180B0C4A9ABC0CAEC1E20C9FDE035DF3EB1FD0350C6083AE5F7C07F4E67F0626
        26263006EAE102082046582082003094AD81FCDD9A9A9A9C1212126097EC5CF3
        8281959599818B978121305186E1E9B34760DBBF7EFDAA141C1C7C1F2080500C
        0081DDBB7783BDA3A3A3C3094A4C77AF7D6238B1F71D4358BA1CC3C347F7C09A
        BF7CF9A2141212721FA41E2080300C0081EDDBB7830DD1D3D3E3042526100006
        34C3DDBB77C136C3348300400061350004366FDE6C0194DBA7AFAFCFF9E3C70F
        B8B3913583004000E1340004366CD8600174C93E4E2000393B3434F43EBA1A80
        00C26B0008AC59B306E4926740CD8FB0C903041800317E55ED538993D2000000
        0049454E44AE426082}
      TabOrder = 0
      OnClick = batualizaClick
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
    object BITBTN1: TAdvGlowButton
      Left = 407
      Top = 4
      Width = 108
      Height = 24
      Caption = 'ESC | Cancelar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 49
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000000467414D410000AFC837058AE90000001974455874536F6674776172
        650041646F626520496D616765526561647971C9653C000002E74944415478DA
        62FCFFFF3F032500208058D0059EB636C431FCFB9BF9FFEF3F7D86BF7FBFFFFF
        FB87E1FFDFBF9C407C91E1CF9FE9F213A62D42560F10408CC82E006A8E67E5E3
        5A2060A4C9C0CACFC3F0FFF71F0686BFFF18188172BFDEBE67787BE40CC3CF57
        6F9214672E980FD303104070039EB6D427B2F072CD1334D66260FBF69481E1D5
        2306867FFF18184086FCFCC9C0C02FC9F0935786E1F5C1130C3F5FBF4D565EB4
        721E481F4000810D78DA5C97C8C207D46C04D4FC15A8F9D93D06A07381D6FE06
        1AF01B62C8AF5F0C0CE20A0C3F05E4185E1E380E7249A2EAEA4D0B0002880964
        0AD09F9982869A0C6C1F1F33303CBACDC02028C3C0A0E308D4F89781E13BD076
        4D2B0606216906865B5718D89FDC6010B334027AEF5726482F40004102F1CF5F
        3D566E6E06866B409B7F026DE2E06760B0F26360E0126460F8F619C8F6626058
        3505287F8981E1F6550676653DA001BFF5415A0102086CC0FF3FBFBFFDFFF993
        9D1164E30FA08DE70E3230B0703230B8864342EAE0460686C33B20728C4C0CFF
        7EFC0219F00D240510406003FE81FC0B73EEF75F104DACEC88B862051AF6E71F
        DC00A08B419682A5000208E282DFBFB9191980B1F1ED1BC410637B0606870006
        865D6B18183E7F6060084E01062C305656CC640029636204E9F9C30DD20B1040
        9030F8FDFBF2EFB7EF8DD984810175E71A03C3BD1B0C0C8B263030ECDB04B40D
        68D3ABE7C0787E0C894E252D861FAFDE805C7019A4152080A05EF83DFDD591D3
        73444DF519D8BF7D6760B80994BB7611128D20EFED580F36E88FB216C34F251D
        8667BBF7010DF83B1DA4172080E009E96E4C680A2B2FCF6C313323068EFB5780
        2E01BAE2FF3F706AFCFDF307C33F3965865FC0D07FB9673F300DBC4ED5397365
        0E481F4000A124E55BC13E89ECFCBCF3C4CC8C19D804F819FE0213CFBF7F7FC1
        01F7FDCD5B8637FB0F32FC7CFE3249E7EC55785206082046F4DC78D3CB29EEFF
        9F3FC0CCF4571F487F674064A64B403C5DF7ECB585C8EA01028891D2EC0C1060
        008C5756165E6F8C750000000049454E44AE426082}
      TabOrder = 1
      OnClick = BitBtn1Click
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
    object batualiza_grade: TAdvGlowButton
      Left = 31
      Top = 4
      Width = 182
      Height = 24
      Caption = 'Atualizar apenas a Grade'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 49
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000000467414D410000AFC837058AE90000001974455874536F6674776172
        650041646F626520496D616765526561647971C9653C0000033A4944415478DA
        62FCFFFF3F0321D073A4FDEB9FBF7F242BEC6B3FA1CB0104101321CDDD875BBF
        0A700970FDFBF7EF63FDAE2A3E74798000C26B40E7A196AF02DC025C32A2B20C
        C2BCC20C20434A3717A218021040380DE838D8FC55905B904B56548EE1F3AF0F
        0C724043C4F84519FEFFFFF731674D3ADC108000C26A40FB81A6AF823C825C20
        4D9F7E7E64F8F1E707C3C12B87199424951924852419FEFDFFFF3169691CD810
        8000C230A06D7F0354B31CC3E5475718EE3CBB0BD4F08F41435995E123D0256A
        32AA0C1282120CBFFFFC7E01520F10408CC8B1D0B2AFFE1BD0AF9C0A620A0CEA
        C21A0CD29C720CEBAFAC65B8FBE11683A2A422032F2B2FC3B9BBE7196E3DB9FD
        6769C24A56901E800002BB60CAA97ED5E6BD75BF847884809AE519AE006D0669
        9E7F6C1E83859C250333130B030F2B0FC3D93BE719EE3CBD0BE433B344CC0D61
        01E9050820A629A7FA6ADF7F7A7F0BA89955515C81E1D3AF4F0CBFFFFF02DBEC
        A1E3C1B0E4D462062D194D8673B7CF33DC7E7A9B21C73D87415E5C9EE1F7DFDF
        0D2003000288B16177F57F501429892B327CFAFD89E1C7DFEF0C206F3D7DF59C
        818591854113A8F9EC9D730CEF5E3C65E0F8CEC0F0F91B30507F7F67F8C0F093
        E137279B10400031BB243829FEFCFDD300649A10B720C3E91B67194404851984
        F98419A405A519CEDC3EC7F0F9CD4B06114E26062B63330667530F861F2CAF18
        5EBEBDC9F0F2C13369800062626064A8FCF3EF0FC383970F189EBC79C260AB6D
        C3C0CAC4060EB033B7CE32BCFCF282E1E3B3670C061AFA0C7F99FE32E84BBA32
        FC65FCCD60A16BC5F0EFF7AF10800062AA766C78FEEBF7AF392A62AA0C779EDF
        6378F8F21150331FC3E99B67186E3EB9C520C62DCEF0E6E32B0656461E063FCD
        5C706C153BCF625016D30331390002081C0BBFFEFCEA79F8EEC15F50A0DD7A7A
        8BE1F4ADD30CD71EDDF8CFC4C8B4F3C6A31BD56F3FBEFA71F5D931868EDD8990
        54BA2B91E1EEAB4B20E60F8000821AF0FBDE8BF72F37AF3AB1F21F28CAAE3DBC
        FE879585C50C18D2596BD236B4011352EF894BC718D8185818365F9EC6C0060C
        DC23170E82B44E05082078424A5D9E68084C5DB3819AEA8189642B7A0AB5C891
        EA00525940CC0BC49F8178DA8929CF2A00020C00148B47725AC4E10000000000
        49454E44AE426082}
      TabOrder = 2
      OnClick = batualiza_gradeClick
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
  end
  object bpreco_venda: TBitBtn
    Left = 48
    Top = 505
    Width = 129
    Height = 25
    Caption = 'bpreco_venda'
    TabOrder = 2
    Visible = False
    OnClick = bpreco_vendaClick
  end
  object dspreco: TDataSource
    DataSet = frmmodulo.qrpreco
    Left = 161
    Top = 153
  end
  object query1: TZQuery
    Connection = frmmodulo.Conexao
    Params = <>
    Left = 264
    Top = 16
  end
  object query: TZQuery
    Connection = frmmodulo.Conexao
    Params = <>
    Left = 296
    Top = 16
  end
  object qrprod: TZQuery
    Connection = frmmodulo.Conexao
    Params = <>
    Left = 320
    Top = 48
  end
  object PopupMenu1: TPopupMenu
    Left = 360
    Top = 48
    object cancelar1: TMenuItem
      Caption = 'cancelar'
      ShortCut = 27
      OnClick = cancelar1Click
    end
  end
end
