object frmconfig: Tfrmconfig
  Left = 18
  Top = 258
  Width = 1268
  Height = 968
  Caption = 'Configura'#231#245'es/Prefer'#234'ncias'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object ViewSplit1: TViewSplit
    Left = 177
    Top = 0
    Height = 934
  end
  object pestoque: TPanel
    Left = 965
    Top = 328
    Width = 414
    Height = 297
    BevelOuter = bvNone
    TabOrder = 13
    Visible = False
    object FlatPanel10: TFlatPanel
      Left = 0
      Top = 0
      Width = 414
      Height = 24
      Caption = 'FlatPanel1'
      Color = clWindow
      Align = alTop
      TabOrder = 0
      object HeaderView11: THeaderView
        Left = 2
        Top = 2
        Width = 410
        Height = 20
        AdaptiveColors = True
        BorderStyle = bsNone
        Caption = 'ESTOQUE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HeaderColor = clHighlight
        HeaderFont.Charset = ANSI_CHARSET
        HeaderFont.Color = clWindow
        HeaderFont.Height = -13
        HeaderFont.Name = 'Arial'
        HeaderFont.Style = [fsBold]
        HeaderSize = 20
        ParentColor = False
        ParentFont = False
      end
    end
  end
  object HeaderView1: THeaderView
    Left = 0
    Top = 0
    Width = 177
    Height = 934
    AdaptiveColors = True
    Align = alLeft
    BorderStyle = bsNone
    Caption = 'Op'#231#245'es'
    HeaderColor = clHighlight
    HeaderFont.Charset = ANSI_CHARSET
    HeaderFont.Color = clWindow
    HeaderFont.Height = -11
    HeaderFont.Name = 'Verdana'
    HeaderFont.Style = [fsBold]
    HeaderSize = 16
    ParentColor = False
    object arvore: TTreeView
      Left = 0
      Top = 16
      Width = 177
      Height = 281
      Align = alTop
      BevelOuter = bvNone
      BorderStyle = bsNone
      Indent = 19
      ReadOnly = True
      TabOrder = 0
      OnClick = arvoreClick
      OnKeyPress = arvoreKeyPress
      Items.Data = {
        0C0000001E0000000000000000000000FFFFFFFFFFFFFFFF0000000000000000
        05476572616C210000000000000000000000FFFFFFFFFFFFFFFF000000000000
        000008436164617374726F220000000000000000000000FFFFFFFFFFFFFFFF00
        00000000000000094D6F76696D656E746F240000000000000000000000FFFFFF
        FFFFFFFFFF00000000000000000B4661747572616D656E746F23000000000000
        0000000000FFFFFFFFFFFFFFFF00000000000000000A46696E616E636569726F
        280000000000000000000000FFFFFFFFFFFFFFFF00000000000000000F454346
        2F4E6F74612046697363616C210000000000000000000000FFFFFFFFFFFFFFFF
        000000000000000008456D6974656E7465250000000000000000000000FFFFFF
        FFFFFFFFFF00000000000000000C4571756970616D656E746F73200000000000
        000000000000FFFFFFFFFFFFFFFF0000000000000000074573746F7175652100
        00000000000000000000FFFFFFFFFFFFFFFF0000000001000000084176616EE7
        61646F260000000000000000000000FFFFFFFFFFFFFFFF00000000000000000D
        41646D696E6973747261646F72280000000000000000000000FFFFFFFFFFFFFF
        FF00000000010000000F426F6C65746F2042616E63E172696F25000000000000
        0000000000FFFFFFFFFFFFFFFF00000000000000000C50726F70726965646164
        6573280000000000000000000000FFFFFFFFFFFFFFFF00000000000000000F50
        6C616E6F20646520436F6E746173}
    end
  end
  object BitBtn1: TBitBtn
    Left = 363
    Top = 316
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 443
    Top = 316
    Width = 74
    Height = 25
    Caption = 'Aplicar'
    TabOrder = 2
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 523
    Top = 316
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 3
    OnClick = BitBtn3Click
  end
  object pmovimento: TPanel
    Left = 653
    Top = 248
    Width = 414
    Height = 297
    BevelOuter = bvNone
    TabOrder = 5
    Visible = False
    object FlatPanel3: TFlatPanel
      Left = 0
      Top = 0
      Width = 414
      Height = 24
      Caption = 'FlatPanel1'
      Color = clWindow
      Align = alTop
      TabOrder = 0
      object HeaderView4: THeaderView
        Left = 2
        Top = 2
        Width = 410
        Height = 20
        AdaptiveColors = True
        BorderStyle = bsNone
        Caption = 'MOVIMENTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HeaderColor = clHighlight
        HeaderFont.Charset = ANSI_CHARSET
        HeaderFont.Color = clWindow
        HeaderFont.Height = -13
        HeaderFont.Name = 'Arial'
        HeaderFont.Style = [fsBold]
        HeaderSize = 20
        ParentColor = False
        ParentFont = False
      end
    end
  end
  object padministrador: TPanel
    Left = 432
    Top = 632
    Width = 414
    Height = 297
    BevelOuter = bvNone
    TabOrder = 11
    Visible = False
    object FlatPanel9: TFlatPanel
      Left = 0
      Top = 0
      Width = 414
      Height = 24
      Caption = 'FlatPanel1'
      Color = clWindow
      Align = alTop
      TabOrder = 0
      object HeaderView10: THeaderView
        Left = 2
        Top = 2
        Width = 410
        Height = 20
        AdaptiveColors = True
        BorderStyle = bsNone
        Caption = 'ADMINISTRADOR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HeaderColor = clHighlight
        HeaderFont.Charset = ANSI_CHARSET
        HeaderFont.Color = clWindow
        HeaderFont.Height = -13
        HeaderFont.Name = 'Arial'
        HeaderFont.Style = [fsBold]
        HeaderSize = 20
        ParentColor = False
        ParentFont = False
      end
    end
  end
  object pgeral: TPanel
    Left = 432
    Top = 632
    Width = 414
    Height = 297
    BevelOuter = bvNone
    TabOrder = 0
    object FlatPanel1: TFlatPanel
      Left = 0
      Top = 0
      Width = 414
      Height = 24
      Caption = 'FlatPanel1'
      Color = clWindow
      Align = alTop
      TabOrder = 0
      object HeaderView2: THeaderView
        Left = 2
        Top = 2
        Width = 410
        Height = 20
        AdaptiveColors = True
        BorderStyle = bsNone
        Caption = 'GERAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HeaderColor = clHighlight
        HeaderFont.Charset = ANSI_CHARSET
        HeaderFont.Color = clWindow
        HeaderFont.Height = -13
        HeaderFont.Name = 'Arial'
        HeaderFont.Style = [fsBold]
        HeaderSize = 20
        ParentColor = False
        ParentFont = False
      end
    end
    object BitBtn7: TBitBtn
      Left = 200
      Top = 128
      Width = 193
      Height = 25
      Caption = 'Transfer'#234'ncia de Dados'
      TabOrder = 1
      OnClick = BitBtn7Click
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF7AC8EC2CA6DF2AA3DE28A0DC269DDB249AD92297D81F
        92D51A8BD21584CE107DCB0C76C80870C5056BC20267C05D9CD647B5E5BDE2F4
        F3FBFDEEFAFDEDFAFDEDFAFDEEFBFDEEFBFDEEFAFDEDFAFDECFAFDECFAFDEBFA
        FDF1FBFDAACDEA297ECAC3E7F761BEE7F3FBFDB4EEF957D9F457D9F456D7F257
        D6F157D5F156D8F350D7F44DD6F361D9F5E9FAFD4392D1B5D4EDFFFFFF5DC0EA
        9CD6F0E6F8FC8AE4F759DAF55AD9F33CA0D43CA0D453D5F151D7F44FD5F3D7F5
        FB87BEE454A0D8FFFFFFFFFFFFE2F4FB36B1E4F2FAFDC2F1FA5BDBF55BD9F363
        DEF556CAEA54D5F153D8F493E6F7E2F3FA1B89D0DEEDF8FFFFFFFFFFFFFFFFFF
        78CCEE8BD1EFE9FAFD93E5F75BD9F346B0DC3CA0D455D6F15BDAF4DDF7FC7CBF
        E687C3E8FFFFFFFFFFFFFFFFFFFFFFFFF6FCFE44B9E7C7E9F6E5F9FC5CD9F33C
        A0D43CA0D456D6F1C6F2FBBFE2F33AA3DCF5FAFDFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFB8E5F770C7ECF8FDFE5DDBF33DA1D43DA1D45BD8F3ECFAFD67BAE4B2DC
        F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF59C2EBA8DEF3ECF8FC3D
        A2D53DA2D5D3F4FBA1D6F05CB8E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFDAF2FB39B7E7F8FCFE93E8F89DEAF9EBF9FD30A9E0D7EEF9FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF73CDEF93D7F1F2
        FBFDE6F9FD8ED2EF85CEEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFF1FAFE43BDE9F0F9FCD4EEF942B7E7F1F9FDFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8CD7F384
        D3F081D0EFACE0F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFDFEFF5CC6EE68C9EEFDFEFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    end
    object GroupBox10: TGroupBox
      Left = 200
      Top = 32
      Width = 193
      Height = 89
      Caption = 'Quantidade de Casas Decimais'
      TabOrder = 2
      object Label31: TLabel
        Left = 16
        Top = 32
        Width = 111
        Height = 13
        Caption = 'para a Quantidade:'
      end
      object Label32: TLabel
        Left = 16
        Top = 56
        Width = 76
        Height = 13
        Caption = 'para o Valor:'
      end
      object wwDBSpinEdit1: TwwDBSpinEdit
        Left = 136
        Top = 24
        Width = 41
        Height = 21
        Increment = 1.000000000000000000
        DataField = 'CASAS_DECIMAIS_QTDE'
        DataSource = dsconfig
        TabOrder = 0
        UnboundDataType = wwDefault
      end
      object wwDBSpinEdit2: TwwDBSpinEdit
        Left = 136
        Top = 48
        Width = 41
        Height = 21
        Increment = 1.000000000000000000
        DataField = 'CASAS_DECIMAIS_VALOR'
        DataSource = dsconfig
        TabOrder = 1
        UnboundDataType = wwDefault
      end
    end
    object GroupBox12: TGroupBox
      Left = 0
      Top = 32
      Width = 193
      Height = 265
      Caption = 'Atividade Diferenciada'
      TabOrder = 3
      object Rramo_padrao: TRadioButton
        Left = 8
        Top = 16
        Width = 113
        Height = 17
        Caption = 'Padr'#227'o'
        TabOrder = 0
      end
      object rramo_supermercado: TRadioButton
        Left = 8
        Top = 32
        Width = 113
        Height = 17
        Caption = 'Supermercado'
        TabOrder = 1
      end
      object rramo_auto: TRadioButton
        Left = 8
        Top = 48
        Width = 113
        Height = 17
        Caption = 'Auto Pe'#231'as'
        TabOrder = 2
      end
      object rramo_farmacia: TRadioButton
        Left = 8
        Top = 64
        Width = 113
        Height = 17
        Caption = 'Farm'#225'cia'
        TabOrder = 3
      end
    end
  end
  object pfaturamento: TPanel
    Left = 853
    Top = 520
    Width = 414
    Height = 297
    BevelOuter = bvNone
    TabOrder = 9
    Visible = False
    object FlatPanel7: TFlatPanel
      Left = 0
      Top = 0
      Width = 414
      Height = 24
      Caption = 'FlatPanel1'
      Color = clWindow
      Align = alTop
      TabOrder = 0
      object HeaderView8: THeaderView
        Left = 2
        Top = 2
        Width = 410
        Height = 20
        AdaptiveColors = True
        BorderStyle = bsNone
        Caption = 'FATURAMENTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HeaderColor = clHighlight
        HeaderFont.Charset = ANSI_CHARSET
        HeaderFont.Color = clWindow
        HeaderFont.Height = -13
        HeaderFont.Name = 'Arial'
        HeaderFont.Style = [fsBold]
        HeaderSize = 20
        ParentColor = False
        ParentFont = False
      end
    end
    object GroupBox1: TGroupBox
      Left = 12
      Top = 24
      Width = 385
      Height = 177
      Caption = 'Impress'#227'o'
      TabOrder = 1
      object Label2: TLabel
        Left = 8
        Top = 17
        Width = 41
        Height = 13
        Caption = 'Venda:'
      end
      object Label3: TLabel
        Left = 304
        Top = 17
        Width = 29
        Height = 13
        Caption = 'Vias:'
      end
      object Label4: TLabel
        Left = 8
        Top = 41
        Width = 25
        Height = 13
        Caption = 'O.S.'
      end
      object Label5: TLabel
        Left = 304
        Top = 41
        Width = 29
        Height = 13
        Caption = 'Vias:'
      end
      object Label40: TLabel
        Left = 8
        Top = 65
        Width = 68
        Height = 13
        Caption = 'Or'#231'amento:'
      end
      object Label41: TLabel
        Left = 304
        Top = 65
        Width = 29
        Height = 13
        Caption = 'Vias:'
      end
      object DBEdit1: TDBEdit
        Left = 344
        Top = 14
        Width = 33
        Height = 21
        DataField = 'VENDA_QTDE_VIAS_NOTA'
        DataSource = dsconfig
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 344
        Top = 38
        Width = 33
        Height = 21
        DataField = 'OS_QTDE_VIAS_NOTA'
        DataSource = dsconfig
        TabOrder = 1
      end
      object GroupBox4: TGroupBox
        Left = 8
        Top = 117
        Width = 371
        Height = 53
        Caption = 'Impressora Matricial'
        TabOrder = 2
        object Label22: TLabel
          Left = 128
          Top = 8
          Width = 51
          Height = 13
          Caption = 'Caminho'
        end
        object Label38: TLabel
          Left = 288
          Top = 8
          Width = 77
          Height = 13
          Caption = 'Avan'#231'o Papel'
        end
        object RadioButton1: TRadioButton
          Left = 8
          Top = 16
          Width = 113
          Height = 17
          Caption = 'Local'
          Checked = True
          TabOrder = 0
          TabStop = True
        end
        object RadioButton2: TRadioButton
          Left = 8
          Top = 32
          Width = 113
          Height = 17
          Caption = 'Em Rede - Local:'
          TabOrder = 1
        end
        object DBEdit17: TDBEdit
          Left = 129
          Top = 24
          Width = 152
          Height = 21
          DataField = 'VENDA_PORTA_IMPRESSORA'
          DataSource = dsconfig
          TabOrder = 2
        end
        object DBEdit19: TDBEdit
          Left = 288
          Top = 24
          Width = 73
          Height = 21
          DataField = 'Bobina_subirpapel'
          DataSource = dsconfig
          TabOrder = 3
        end
      end
      object combo_os: TComboBox
        Left = 57
        Top = 37
        Width = 241
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 3
        Items.Strings = (
          '01 - Cupom Fiscal'
          '02 - Nota Fiscal'
          '03 - Formul'#225'rio Cont'#237'nuo - Raz'#227'o'
          '04 - Cont'#237'nuo (Auto-Pe'#231'as)'
          '05 - ------------------------------------------'
          '06 - Pr'#233'-impresso (Personalizado)'
          '07 - A4'
          '08 - Raz'#227'o (Laser)'
          '09 - Formul'#225'rio Cont'#237'nuo - Carta'
          '10 - -----------------------------------------'
          '11 - Raz'#227'o (Auto-Pe'#231'as)')
      end
      object combo_venda: TComboBox
        Left = 57
        Top = 13
        Width = 241
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 4
        Items.Strings = (
          '01 - Cupom Fiscal'
          '02 - Nota Fiscal'
          '03 - Bobina'
          '04 - Formul'#225'rio Cont'#237'nuo - Raz'#227'o'
          '05 - Formul'#225'rio Cont'#237'nuo - Carta'
          '06 - Pr'#233'-impresso (Personalizado)'
          '07 - Contrato/Guia de Entrega/Carn'#234
          '08 - Personalizado'
          '09 - Papel A4 - Laser / Tinta'
          '10 - Papel Raz'#227'o - Laser / Tinta'
          '11 - Formul'#225'rio Cont'#237'nuo - Raz'#227'o 2')
      end
      object DBEdit42: TDBEdit
        Left = 344
        Top = 62
        Width = 33
        Height = 21
        DataField = 'ORCAMENTO_QTDE_VIAS_NOTA'
        DataSource = dsconfig
        TabOrder = 5
      end
      object combo_orcamento: TComboBox
        Left = 80
        Top = 61
        Width = 218
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 6
        Items.Strings = (
          '01 - Papel A4'
          '03 - Formul'#225'rio Cont'#237'nuo - Raz'#227'o'
          '04 - Formul'#225'rio Cont'#237'nuo - Carta'
          '05 - Bobina')
      end
    end
    object GroupBox2: TGroupBox
      Left = 12
      Top = 201
      Width = 196
      Height = 97
      Caption = 'Op'#231#245'es'
      TabOrder = 2
      object DBCheckBox1: TDBCheckBox
        Left = 8
        Top = 16
        Width = 161
        Height = 17
        Caption = 'Vender Sem Estoque'
        DataField = 'ESTOQUE_NEGATIVO'
        DataSource = dsconfig
        TabOrder = 0
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBCheckBox4: TDBCheckBox
        Left = 8
        Top = 32
        Width = 161
        Height = 17
        Caption = 'Cadastrar Cheque'
        DataField = 'VENDA_CADASTRO_CHEQUE'
        DataSource = dsconfig
        TabOrder = 1
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBCheckBox5: TDBCheckBox
        Left = 8
        Top = 48
        Width = 161
        Height = 17
        Caption = 'Cadastrar Cart'#227'o'
        DataField = 'VENDA_CADASTRO_CARTAO'
        DataSource = dsconfig
        TabOrder = 2
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
    end
    object GroupBox3: TGroupBox
      Left = 212
      Top = 201
      Width = 185
      Height = 97
      Caption = 'Desconto M'#225'ximo Permitido'
      TabOrder = 3
      object Label1: TLabel
        Left = 8
        Top = 21
        Width = 72
        Height = 13
        Caption = 'Por Produto:'
      end
      object Label6: TLabel
        Left = 8
        Top = 45
        Width = 71
        Height = 13
        Caption = 'Por Servi'#231'o:'
      end
      object Label7: TLabel
        Left = 8
        Top = 68
        Width = 81
        Height = 13
        Caption = 'Total da Nota:'
      end
      object RxDBCalcEdit1: TRxDBCalcEdit
        Left = 96
        Top = 16
        Width = 81
        Height = 21
        DataSource = dsconfig
        DisplayFormat = '###,###,##0.00%'
        ButtonWidth = 0
        NumGlyphs = 2
        TabOrder = 0
      end
      object RxDBCalcEdit2: TRxDBCalcEdit
        Left = 96
        Top = 40
        Width = 81
        Height = 21
        DisplayFormat = '###,###,##0.00%'
        ButtonWidth = 0
        NumGlyphs = 2
        TabOrder = 1
      end
      object RxDBCalcEdit3: TRxDBCalcEdit
        Left = 96
        Top = 64
        Width = 81
        Height = 21
        DisplayFormat = '###,###,##0.00%'
        ButtonWidth = 0
        NumGlyphs = 2
        TabOrder = 2
      end
    end
  end
  object pfinanceiro: TPanel
    Left = 869
    Top = 8
    Width = 414
    Height = 297
    BevelOuter = bvNone
    TabOrder = 6
    Visible = False
    object FlatPanel4: TFlatPanel
      Left = 0
      Top = 0
      Width = 414
      Height = 24
      Caption = 'FlatPanel1'
      Color = clWindow
      Align = alTop
      TabOrder = 0
      object HeaderView5: THeaderView
        Left = 2
        Top = 2
        Width = 410
        Height = 20
        AdaptiveColors = True
        BorderStyle = bsNone
        Caption = 'FINANCEIRO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HeaderColor = clHighlight
        HeaderFont.Charset = ANSI_CHARSET
        HeaderFont.Color = clWindow
        HeaderFont.Height = -13
        HeaderFont.Name = 'Arial'
        HeaderFont.Style = [fsBold]
        HeaderSize = 20
        ParentColor = False
        ParentFont = False
      end
    end
    object GroupBox9: TGroupBox
      Left = 8
      Top = 32
      Width = 225
      Height = 65
      Caption = 'Alertas ao Entrar no Sistema'
      TabOrder = 1
      object DBCheckBox2: TDBCheckBox
        Left = 8
        Top = 24
        Width = 193
        Height = 17
        Caption = 'Contas a Pagar Vencidas'
        DataField = 'AVISO_CONTAS_PAGAR'
        DataSource = dsconfig
        TabOrder = 0
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBCheckBox3: TDBCheckBox
        Left = 8
        Top = 40
        Width = 193
        Height = 17
        Caption = 'Cheques de Clientes Vencidos'
        DataField = 'AVISO_CHEQUE'
        DataSource = dsconfig
        TabOrder = 1
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
    end
    object GroupBox11: TGroupBox
      Left = 8
      Top = 104
      Width = 225
      Height = 145
      Caption = 'Contas a Receber'
      TabOrder = 2
      object Label33: TLabel
        Left = 8
        Top = 24
        Width = 85
        Height = 13
        Caption = 'Taxa de Juros:'
      end
      object Label34: TLabel
        Left = 8
        Top = 48
        Width = 76
        Height = 13
        Caption = 'Multa Atrazo:'
      end
      object Label35: TLabel
        Left = 8
        Top = 72
        Width = 56
        Height = 13
        Caption = 'Car'#234'ncia:'
      end
      object Label36: TLabel
        Left = 8
        Top = 120
        Width = 106
        Height = 13
        Caption = 'Desconto M'#225'ximo:'
      end
      object RxDBCalcEdit4: TRxDBCalcEdit
        Left = 104
        Top = 16
        Width = 113
        Height = 21
        DataField = 'CONTASRECEBER_TAXAJUROS'
        DataSource = dsconfig
        DecimalPlaces = 3
        DisplayFormat = '###,###,##0.000% ao dia'
        ButtonWidth = 0
        NumGlyphs = 2
        TabOrder = 0
      end
      object RxDBCalcEdit5: TRxDBCalcEdit
        Left = 104
        Top = 40
        Width = 113
        Height = 21
        DataField = 'CONTASRECEBER_MULTA'
        DataSource = dsconfig
        DisplayFormat = '###,###,##0.000%'
        ButtonWidth = 0
        NumGlyphs = 2
        TabOrder = 1
      end
      object RxDBCalcEdit6: TRxDBCalcEdit
        Left = 104
        Top = 64
        Width = 113
        Height = 21
        DataField = 'CONTASRECEBER_CARENCIA'
        DataSource = dsconfig
        DisplayFormat = '###,###,##0 dias'
        ButtonWidth = 0
        NumGlyphs = 2
        TabOrder = 2
      end
      object DBCheckBox6: TDBCheckBox
        Left = 8
        Top = 96
        Width = 209
        Height = 17
        Caption = 'Permitir Desconto'
        DataField = 'CONTASRECEBER_DESCONTO_PERMITIR'
        DataSource = dsconfig
        TabOrder = 3
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object RxDBCalcEdit7: TRxDBCalcEdit
        Left = 128
        Top = 112
        Width = 89
        Height = 21
        DataField = 'CONTASRECEBER_DESCONTO_PERCENT'
        DataSource = dsconfig
        DisplayFormat = '###,###,##0.000'
        ButtonWidth = 0
        NumGlyphs = 2
        TabOrder = 4
      end
    end
    object GroupBox14: TGroupBox
      Left = 240
      Top = 32
      Width = 161
      Height = 65
      Caption = 'Boleto - Forma de Pgto.'
      TabOrder = 3
      object wwDBLookupCombo1: TwwDBLookupCombo
        Left = 8
        Top = 24
        Width = 145
        Height = 21
        DropDownAlignment = taLeftJustify
        DataField = 'BOLETO_FORMAPGTO'
        DataSource = dsconfig
        LookupTable = frmmodulo.qrformapgto
        LookupField = 'FORMAPGTO'
        Style = csDropDownList
        TabOrder = 0
        AutoDropDown = False
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
      end
    end
    object GroupBox15: TGroupBox
      Left = 240
      Top = 104
      Width = 161
      Height = 57
      Caption = 'Extrato - Impress'#227'o'
      TabOrder = 4
      object combo_extrato: TComboBox
        Left = 8
        Top = 21
        Width = 145
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 0
        Items.Strings = (
          '01 - Bobina'
          '02 - Papel A4 - Laser / Tinta')
      end
    end
  end
  object pcadastro: TPanel
    Left = 13
    Top = 328
    Width = 414
    Height = 297
    BevelOuter = bvNone
    TabOrder = 4
    Visible = False
    object FlatPanel2: TFlatPanel
      Left = 0
      Top = 0
      Width = 414
      Height = 24
      Caption = 'FlatPanel1'
      Color = clWindow
      Align = alTop
      TabOrder = 0
      object HeaderView3: THeaderView
        Left = 2
        Top = 2
        Width = 410
        Height = 20
        AdaptiveColors = True
        BorderStyle = bsNone
        Caption = 'CADASTRO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HeaderColor = clHighlight
        HeaderFont.Charset = ANSI_CHARSET
        HeaderFont.Color = clWindow
        HeaderFont.Height = -13
        HeaderFont.Name = 'Arial'
        HeaderFont.Style = [fsBold]
        HeaderSize = 20
        ParentColor = False
        ParentFont = False
      end
    end
    object GroupBox13: TGroupBox
      Left = 16
      Top = 32
      Width = 185
      Height = 57
      Caption = 'Produtos'
      TabOrder = 1
      object DBComboBox12: TDBComboBox
        Left = 8
        Top = 20
        Width = 169
        Height = 21
        Style = csDropDownList
        DataField = 'CADASTRO_PRODUTO'
        DataSource = dsconfig
        ItemHeight = 13
        Items.Strings = (
          'NORMAL'
          'LIGHT'
          'PECAS'
          'FARMA')
        TabOrder = 0
      end
    end
  end
  object pplano: TPanel
    Left = 445
    Top = 8
    Width = 414
    Height = 297
    BevelOuter = bvNone
    TabOrder = 14
    Visible = False
    object FlatPanel11: TFlatPanel
      Left = 0
      Top = 0
      Width = 414
      Height = 24
      Caption = 'FlatPanel1'
      Color = clWindow
      Align = alTop
      TabOrder = 0
      object HeaderView12: THeaderView
        Left = 2
        Top = 2
        Width = 410
        Height = 20
        AdaptiveColors = True
        BorderStyle = bsNone
        Caption = 'PLANO DE CONTAS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HeaderColor = clHighlight
        HeaderFont.Charset = ANSI_CHARSET
        HeaderFont.Color = clWindow
        HeaderFont.Height = -13
        HeaderFont.Name = 'Arial'
        HeaderFont.Style = [fsBold]
        HeaderSize = 20
        ParentColor = False
        ParentFont = False
      end
    end
    object PageView1: TPageView
      Left = 0
      Top = 24
      Width = 414
      Height = 201
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
      TabHeight = 16
      TabOrder = 1
      TabStyle = tsOneNote
      TopIndent = 3
      object PageSheet1: TPageSheet
        Left = 0
        Top = 20
        Width = 414
        Height = 181
        Caption = 'VENDAS'
        DisplayMode = tdGlyph
        ImageIndex = 0
        Margin = 0
        PageIndex = 0
        TabColor = 15653559
        TabWidth = 0
        TransparentColor = clNone
        object GroupBox16: TGroupBox
          Left = 0
          Top = 0
          Width = 414
          Height = 46
          Align = alTop
          Caption = 'VENDA '#192' VISTA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object DBEdit28: TDBEdit
            Left = 8
            Top = 16
            Width = 64
            Height = 20
            DataField = 'PLANO_VENDA_AV'
            DataSource = dsconfig
            Enabled = False
            TabOrder = 0
          end
          object blocregiao: TBitBtn
            Left = 72
            Top = 16
            Width = 25
            Height = 21
            TabOrder = 1
            OnClick = blocregiaoClick
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFCFDFEE7EEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBFD6494BA2166
              9C80A8C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFAFCFD6E9BC1548CBB88B4DC175E96FFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFD7AA3C96396C49CC0E36598
              C63070A4FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEE8CEB9DAB292D2A57FCFA07BD1
              A684ADA09874A1CBAACAE775A3CD3F7AAEDEE8F1FFFFFFFFFFFFFFFFFFFFFEFE
              E8C9AFE7C8ADF4E0CCF6E4D2F6E4D0F2DCC7DEB99BC6A79085ADD44F86BAE1EA
              F3FFFFFFFFFFFFFFFFFFFFFFFFF1DBC7ECCFB6F7E7D8F4DDC7F2D7BCF2D5BAF3
              DAC1F6E3D1DEBA9C9F9694E3ECF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDCDB1
              F6E6D6F5E0CBF3DAC1F3D9BFF2D7BCF2D6BAF3DAC1F2DDC8D1A787FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFEFCDAEF8EBDEF4DEC7F4DCC5F3DBC2F3D9C0F2
              D8BDF2D6BCF7E5D2D2A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D2B4
              F8ECE0F5E0CBF4DEC8F4DDC6F3DBC3F3DAC1F3D9BFF7E6D5D6AA86FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFF7DBC0F8EADDF6E6D5F5E0CBF4DFC9F4DDC7F4
              DCC4F5E0CAF4E1CFDEB898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE9D7
              F7E1CBF9EDE2F6E6D5F5E1CDF5E0CAF5E2CFF8E9DCEBCEB4EBD3BEFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAE3CDF8E1CCF9EBDDF8EDE1F8ECE1F7
              E8D9EFD4BCECCFB6FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFBEAD9F9DCC2F5D5B8F3D2B4F2D3B7F4E0CDFFFFFEFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          end
          object DBEdit30: TDBEdit
            Left = 97
            Top = 16
            Width = 91
            Height = 20
            Color = clBtnFace
            DataField = 'PLANO_CONTA1'
            DataSource = dsconfig
            TabOrder = 2
          end
          object DBEdit20: TDBEdit
            Left = 190
            Top = 16
            Width = 217
            Height = 20
            Color = clBtnFace
            DataField = 'PLANO_CONTA10'
            DataSource = dsconfig
            TabOrder = 3
          end
        end
        object GroupBox17: TGroupBox
          Left = 0
          Top = 46
          Width = 414
          Height = 46
          Align = alTop
          Caption = 'VENDAS '#192' PRAZO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          object DBEdit21: TDBEdit
            Left = 8
            Top = 16
            Width = 64
            Height = 20
            DataField = 'PLANO_VENDA_AP'
            DataSource = dsconfig
            Enabled = False
            TabOrder = 0
          end
          object BitBtn13: TBitBtn
            Left = 72
            Top = 16
            Width = 25
            Height = 21
            TabOrder = 1
            OnClick = BitBtn13Click
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFCFDFEE7EEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBFD6494BA2166
              9C80A8C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFAFCFD6E9BC1548CBB88B4DC175E96FFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFD7AA3C96396C49CC0E36598
              C63070A4FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEE8CEB9DAB292D2A57FCFA07BD1
              A684ADA09874A1CBAACAE775A3CD3F7AAEDEE8F1FFFFFFFFFFFFFFFFFFFFFEFE
              E8C9AFE7C8ADF4E0CCF6E4D2F6E4D0F2DCC7DEB99BC6A79085ADD44F86BAE1EA
              F3FFFFFFFFFFFFFFFFFFFFFFFFF1DBC7ECCFB6F7E7D8F4DDC7F2D7BCF2D5BAF3
              DAC1F6E3D1DEBA9C9F9694E3ECF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDCDB1
              F6E6D6F5E0CBF3DAC1F3D9BFF2D7BCF2D6BAF3DAC1F2DDC8D1A787FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFEFCDAEF8EBDEF4DEC7F4DCC5F3DBC2F3D9C0F2
              D8BDF2D6BCF7E5D2D2A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D2B4
              F8ECE0F5E0CBF4DEC8F4DDC6F3DBC3F3DAC1F3D9BFF7E6D5D6AA86FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFF7DBC0F8EADDF6E6D5F5E0CBF4DFC9F4DDC7F4
              DCC4F5E0CAF4E1CFDEB898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE9D7
              F7E1CBF9EDE2F6E6D5F5E1CDF5E0CAF5E2CFF8E9DCEBCEB4EBD3BEFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAE3CDF8E1CCF9EBDDF8EDE1F8ECE1F7
              E8D9EFD4BCECCFB6FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFBEAD9F9DCC2F5D5B8F3D2B4F2D3B7F4E0CDFFFFFEFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          end
          object DBEdit22: TDBEdit
            Left = 97
            Top = 16
            Width = 91
            Height = 20
            Color = clBtnFace
            DataField = 'PLANO_CONTA2'
            DataSource = dsconfig
            TabOrder = 2
          end
          object DBEdit23: TDBEdit
            Left = 190
            Top = 16
            Width = 217
            Height = 20
            Color = clBtnFace
            DataField = 'PLANO_CONTA20'
            DataSource = dsconfig
            TabOrder = 3
          end
        end
      end
      object PageSheet2: TPageSheet
        Left = 0
        Top = 20
        Width = 414
        Height = 181
        Caption = 'O.S.'
        DisplayMode = tdGlyph
        ImageIndex = 0
        Margin = 0
        PageIndex = 1
        TabColor = 13035201
        TabWidth = 0
        TransparentColor = clNone
        object GroupBox18: TGroupBox
          Left = 0
          Top = 0
          Width = 414
          Height = 46
          Align = alTop
          Caption = 'O.S. '#192' VISTA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object DBEdit24: TDBEdit
            Left = 8
            Top = 16
            Width = 64
            Height = 20
            DataField = 'PLANO_OS_AV'
            DataSource = dsconfig
            Enabled = False
            TabOrder = 0
          end
          object BitBtn14: TBitBtn
            Left = 72
            Top = 16
            Width = 25
            Height = 21
            TabOrder = 1
            OnClick = BitBtn14Click
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFCFDFEE7EEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBFD6494BA2166
              9C80A8C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFAFCFD6E9BC1548CBB88B4DC175E96FFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFD7AA3C96396C49CC0E36598
              C63070A4FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEE8CEB9DAB292D2A57FCFA07BD1
              A684ADA09874A1CBAACAE775A3CD3F7AAEDEE8F1FFFFFFFFFFFFFFFFFFFFFEFE
              E8C9AFE7C8ADF4E0CCF6E4D2F6E4D0F2DCC7DEB99BC6A79085ADD44F86BAE1EA
              F3FFFFFFFFFFFFFFFFFFFFFFFFF1DBC7ECCFB6F7E7D8F4DDC7F2D7BCF2D5BAF3
              DAC1F6E3D1DEBA9C9F9694E3ECF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDCDB1
              F6E6D6F5E0CBF3DAC1F3D9BFF2D7BCF2D6BAF3DAC1F2DDC8D1A787FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFEFCDAEF8EBDEF4DEC7F4DCC5F3DBC2F3D9C0F2
              D8BDF2D6BCF7E5D2D2A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D2B4
              F8ECE0F5E0CBF4DEC8F4DDC6F3DBC3F3DAC1F3D9BFF7E6D5D6AA86FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFF7DBC0F8EADDF6E6D5F5E0CBF4DFC9F4DDC7F4
              DCC4F5E0CAF4E1CFDEB898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE9D7
              F7E1CBF9EDE2F6E6D5F5E1CDF5E0CAF5E2CFF8E9DCEBCEB4EBD3BEFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAE3CDF8E1CCF9EBDDF8EDE1F8ECE1F7
              E8D9EFD4BCECCFB6FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFBEAD9F9DCC2F5D5B8F3D2B4F2D3B7F4E0CDFFFFFEFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          end
          object DBEdit25: TDBEdit
            Left = 97
            Top = 16
            Width = 91
            Height = 20
            Color = clBtnFace
            DataField = 'PLANO_CONTA3'
            DataSource = dsconfig
            TabOrder = 2
          end
          object DBEdit26: TDBEdit
            Left = 190
            Top = 16
            Width = 217
            Height = 20
            Color = clBtnFace
            DataField = 'PLANO_CONTA30'
            DataSource = dsconfig
            TabOrder = 3
          end
        end
        object GroupBox19: TGroupBox
          Left = 0
          Top = 46
          Width = 414
          Height = 46
          Align = alTop
          Caption = 'O.S. '#192' PRAZO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          object DBEdit27: TDBEdit
            Left = 8
            Top = 16
            Width = 64
            Height = 20
            DataField = 'PLANO_OS_AP'
            DataSource = dsconfig
            Enabled = False
            TabOrder = 0
          end
          object BitBtn15: TBitBtn
            Left = 72
            Top = 16
            Width = 25
            Height = 21
            TabOrder = 1
            OnClick = BitBtn15Click
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFCFDFEE7EEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBFD6494BA2166
              9C80A8C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFAFCFD6E9BC1548CBB88B4DC175E96FFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFD7AA3C96396C49CC0E36598
              C63070A4FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEE8CEB9DAB292D2A57FCFA07BD1
              A684ADA09874A1CBAACAE775A3CD3F7AAEDEE8F1FFFFFFFFFFFFFFFFFFFFFEFE
              E8C9AFE7C8ADF4E0CCF6E4D2F6E4D0F2DCC7DEB99BC6A79085ADD44F86BAE1EA
              F3FFFFFFFFFFFFFFFFFFFFFFFFF1DBC7ECCFB6F7E7D8F4DDC7F2D7BCF2D5BAF3
              DAC1F6E3D1DEBA9C9F9694E3ECF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDCDB1
              F6E6D6F5E0CBF3DAC1F3D9BFF2D7BCF2D6BAF3DAC1F2DDC8D1A787FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFEFCDAEF8EBDEF4DEC7F4DCC5F3DBC2F3D9C0F2
              D8BDF2D6BCF7E5D2D2A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D2B4
              F8ECE0F5E0CBF4DEC8F4DDC6F3DBC3F3DAC1F3D9BFF7E6D5D6AA86FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFF7DBC0F8EADDF6E6D5F5E0CBF4DFC9F4DDC7F4
              DCC4F5E0CAF4E1CFDEB898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE9D7
              F7E1CBF9EDE2F6E6D5F5E1CDF5E0CAF5E2CFF8E9DCEBCEB4EBD3BEFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAE3CDF8E1CCF9EBDDF8EDE1F8ECE1F7
              E8D9EFD4BCECCFB6FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFBEAD9F9DCC2F5D5B8F3D2B4F2D3B7F4E0CDFFFFFEFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          end
          object DBEdit29: TDBEdit
            Left = 97
            Top = 16
            Width = 91
            Height = 20
            Color = clBtnFace
            DataField = 'PLANO_CONTA4'
            DataSource = dsconfig
            TabOrder = 2
          end
          object DBEdit31: TDBEdit
            Left = 190
            Top = 16
            Width = 217
            Height = 20
            Color = clBtnFace
            DataField = 'PLANO_CONTA40'
            DataSource = dsconfig
            TabOrder = 3
          end
        end
      end
      object PageSheet3: TPageSheet
        Left = 0
        Top = 20
        Width = 414
        Height = 181
        Caption = 'ENTRADAS'
        DisplayMode = tdGlyph
        ImageIndex = 0
        Margin = 0
        PageIndex = 2
        TabColor = 9106937
        TabWidth = 0
        TransparentColor = clNone
        object GroupBox20: TGroupBox
          Left = 0
          Top = 46
          Width = 414
          Height = 46
          Align = alTop
          Caption = 'ENTRADAS DIVERSAS'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object DBEdit32: TDBEdit
            Left = 8
            Top = 16
            Width = 64
            Height = 20
            DataField = 'PLANO_OUTRAS_ENTRADAS'
            DataSource = dsconfig
            Enabled = False
            TabOrder = 0
          end
          object BitBtn16: TBitBtn
            Left = 72
            Top = 16
            Width = 25
            Height = 21
            TabOrder = 1
            OnClick = BitBtn16Click
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFCFDFEE7EEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBFD6494BA2166
              9C80A8C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFAFCFD6E9BC1548CBB88B4DC175E96FFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFD7AA3C96396C49CC0E36598
              C63070A4FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEE8CEB9DAB292D2A57FCFA07BD1
              A684ADA09874A1CBAACAE775A3CD3F7AAEDEE8F1FFFFFFFFFFFFFFFFFFFFFEFE
              E8C9AFE7C8ADF4E0CCF6E4D2F6E4D0F2DCC7DEB99BC6A79085ADD44F86BAE1EA
              F3FFFFFFFFFFFFFFFFFFFFFFFFF1DBC7ECCFB6F7E7D8F4DDC7F2D7BCF2D5BAF3
              DAC1F6E3D1DEBA9C9F9694E3ECF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDCDB1
              F6E6D6F5E0CBF3DAC1F3D9BFF2D7BCF2D6BAF3DAC1F2DDC8D1A787FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFEFCDAEF8EBDEF4DEC7F4DCC5F3DBC2F3D9C0F2
              D8BDF2D6BCF7E5D2D2A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D2B4
              F8ECE0F5E0CBF4DEC8F4DDC6F3DBC3F3DAC1F3D9BFF7E6D5D6AA86FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFF7DBC0F8EADDF6E6D5F5E0CBF4DFC9F4DDC7F4
              DCC4F5E0CAF4E1CFDEB898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE9D7
              F7E1CBF9EDE2F6E6D5F5E1CDF5E0CAF5E2CFF8E9DCEBCEB4EBD3BEFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAE3CDF8E1CCF9EBDDF8EDE1F8ECE1F7
              E8D9EFD4BCECCFB6FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFBEAD9F9DCC2F5D5B8F3D2B4F2D3B7F4E0CDFFFFFEFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          end
          object DBEdit33: TDBEdit
            Left = 97
            Top = 16
            Width = 91
            Height = 20
            Color = clBtnFace
            DataField = 'PLANO_CONTA6'
            DataSource = dsconfig
            TabOrder = 2
          end
          object DBEdit34: TDBEdit
            Left = 190
            Top = 16
            Width = 217
            Height = 20
            Color = clBtnFace
            DataField = 'PLANO_CONTA60'
            DataSource = dsconfig
            TabOrder = 3
          end
        end
        object GroupBox22: TGroupBox
          Left = 0
          Top = 0
          Width = 414
          Height = 46
          Align = alTop
          Caption = 'RECEBIMENTO DE CREDI'#193'RIO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          object DBEdit38: TDBEdit
            Left = 8
            Top = 16
            Width = 64
            Height = 20
            DataField = 'PLANO_RECEBTO_CREDIARIO'
            DataSource = dsconfig
            Enabled = False
            TabOrder = 0
          end
          object BitBtn18: TBitBtn
            Left = 72
            Top = 16
            Width = 25
            Height = 21
            TabOrder = 1
            OnClick = BitBtn18Click
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFCFDFEE7EEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBFD6494BA2166
              9C80A8C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFAFCFD6E9BC1548CBB88B4DC175E96FFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFD7AA3C96396C49CC0E36598
              C63070A4FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEE8CEB9DAB292D2A57FCFA07BD1
              A684ADA09874A1CBAACAE775A3CD3F7AAEDEE8F1FFFFFFFFFFFFFFFFFFFFFEFE
              E8C9AFE7C8ADF4E0CCF6E4D2F6E4D0F2DCC7DEB99BC6A79085ADD44F86BAE1EA
              F3FFFFFFFFFFFFFFFFFFFFFFFFF1DBC7ECCFB6F7E7D8F4DDC7F2D7BCF2D5BAF3
              DAC1F6E3D1DEBA9C9F9694E3ECF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDCDB1
              F6E6D6F5E0CBF3DAC1F3D9BFF2D7BCF2D6BAF3DAC1F2DDC8D1A787FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFEFCDAEF8EBDEF4DEC7F4DCC5F3DBC2F3D9C0F2
              D8BDF2D6BCF7E5D2D2A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D2B4
              F8ECE0F5E0CBF4DEC8F4DDC6F3DBC3F3DAC1F3D9BFF7E6D5D6AA86FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFF7DBC0F8EADDF6E6D5F5E0CBF4DFC9F4DDC7F4
              DCC4F5E0CAF4E1CFDEB898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE9D7
              F7E1CBF9EDE2F6E6D5F5E1CDF5E0CAF5E2CFF8E9DCEBCEB4EBD3BEFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAE3CDF8E1CCF9EBDDF8EDE1F8ECE1F7
              E8D9EFD4BCECCFB6FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFBEAD9F9DCC2F5D5B8F3D2B4F2D3B7F4E0CDFFFFFEFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          end
          object DBEdit39: TDBEdit
            Left = 97
            Top = 16
            Width = 91
            Height = 20
            Color = clBtnFace
            DataField = 'PLANO_CONTA5'
            DataSource = dsconfig
            TabOrder = 2
          end
          object DBEdit40: TDBEdit
            Left = 190
            Top = 16
            Width = 217
            Height = 20
            Color = clBtnFace
            DataField = 'PLANO_CONTA50'
            DataSource = dsconfig
            TabOrder = 3
          end
        end
      end
      object PageSheet4: TPageSheet
        Left = 0
        Top = 20
        Width = 414
        Height = 181
        Caption = 'SA'#205'DAS'
        DisplayMode = tdGlyph
        ImageIndex = 0
        Margin = 0
        PageIndex = 3
        TabColor = 11184895
        TabWidth = 0
        TransparentColor = clNone
        object GroupBox21: TGroupBox
          Left = 0
          Top = 0
          Width = 414
          Height = 46
          Align = alTop
          Caption = 'SA'#205'DAS DIVERSAS'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object DBEdit35: TDBEdit
            Left = 8
            Top = 16
            Width = 64
            Height = 20
            DataField = 'PLANO_OUTRAS_SAIDAS'
            DataSource = dsconfig
            Enabled = False
            TabOrder = 0
          end
          object BitBtn17: TBitBtn
            Left = 72
            Top = 16
            Width = 25
            Height = 21
            TabOrder = 1
            OnClick = BitBtn17Click
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFCFDFEE7EEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBFD6494BA2166
              9C80A8C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFAFCFD6E9BC1548CBB88B4DC175E96FFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFD7AA3C96396C49CC0E36598
              C63070A4FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEE8CEB9DAB292D2A57FCFA07BD1
              A684ADA09874A1CBAACAE775A3CD3F7AAEDEE8F1FFFFFFFFFFFFFFFFFFFFFEFE
              E8C9AFE7C8ADF4E0CCF6E4D2F6E4D0F2DCC7DEB99BC6A79085ADD44F86BAE1EA
              F3FFFFFFFFFFFFFFFFFFFFFFFFF1DBC7ECCFB6F7E7D8F4DDC7F2D7BCF2D5BAF3
              DAC1F6E3D1DEBA9C9F9694E3ECF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDCDB1
              F6E6D6F5E0CBF3DAC1F3D9BFF2D7BCF2D6BAF3DAC1F2DDC8D1A787FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFEFCDAEF8EBDEF4DEC7F4DCC5F3DBC2F3D9C0F2
              D8BDF2D6BCF7E5D2D2A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D2B4
              F8ECE0F5E0CBF4DEC8F4DDC6F3DBC3F3DAC1F3D9BFF7E6D5D6AA86FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFF7DBC0F8EADDF6E6D5F5E0CBF4DFC9F4DDC7F4
              DCC4F5E0CAF4E1CFDEB898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE9D7
              F7E1CBF9EDE2F6E6D5F5E1CDF5E0CAF5E2CFF8E9DCEBCEB4EBD3BEFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAE3CDF8E1CCF9EBDDF8EDE1F8ECE1F7
              E8D9EFD4BCECCFB6FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFBEAD9F9DCC2F5D5B8F3D2B4F2D3B7F4E0CDFFFFFEFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          end
          object DBEdit36: TDBEdit
            Left = 97
            Top = 16
            Width = 91
            Height = 20
            Color = clBtnFace
            DataField = 'PLANO_CONTA7'
            DataSource = dsconfig
            TabOrder = 2
          end
          object DBEdit37: TDBEdit
            Left = 190
            Top = 16
            Width = 217
            Height = 20
            Color = clBtnFace
            DataField = 'PLANO_CONTA70'
            DataSource = dsconfig
            TabOrder = 3
          end
        end
      end
    end
  end
  object Pequipamento: TPanel
    Left = 445
    Top = 312
    Width = 414
    Height = 297
    BevelOuter = bvNone
    TabOrder = 10
    Visible = False
    object FlatPanel8: TFlatPanel
      Left = 0
      Top = 0
      Width = 414
      Height = 24
      Caption = 'FlatPanel1'
      Color = clWindow
      Align = alTop
      TabOrder = 0
      object HeaderView9: THeaderView
        Left = 2
        Top = 2
        Width = 410
        Height = 20
        AdaptiveColors = True
        BorderStyle = bsNone
        Caption = 'EQUIPAMENTOS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HeaderColor = clHighlight
        HeaderFont.Charset = ANSI_CHARSET
        HeaderFont.Color = clWindow
        HeaderFont.Height = -13
        HeaderFont.Name = 'Arial'
        HeaderFont.Style = [fsBold]
        HeaderSize = 20
        ParentColor = False
        ParentFont = False
      end
    end
    object GroupBox5: TGroupBox
      Left = 0
      Top = 24
      Width = 414
      Height = 89
      Align = alTop
      Caption = 'Balan'#231'a Retaguarda (A'#231'ougue/Horti-fruti...)'
      TabOrder = 1
      object Label39: TLabel
        Left = 8
        Top = 41
        Width = 326
        Height = 13
        Caption = 'Pasta de arquivos de Expota'#231#227'o: (Formato: c:\xxx\xxx\)'
      end
      object DBComboBox6: TDBComboBox
        Left = 8
        Top = 19
        Width = 385
        Height = 21
        Style = csDropDownList
        DataField = 'BALANCA_MODELO'
        DataSource = dsconfig
        ItemHeight = 13
        Items.Strings = (
          '(Nenhum)'
          'FILIZOLA'
          'TOLEDO'
          'URANO')
        TabOrder = 0
      end
      object DBEdit41: TDBEdit
        Left = 8
        Top = 57
        Width = 385
        Height = 21
        DataField = 'BALANCA_CAMINHO'
        DataSource = dsconfig
        TabOrder = 1
      end
    end
    object GroupBox6: TGroupBox
      Left = 0
      Top = 113
      Width = 414
      Height = 67
      Align = alTop
      Caption = 'Balan'#231'a Check-Out'
      TabOrder = 2
      object Label26: TLabel
        Left = 8
        Top = 24
        Width = 45
        Height = 13
        Caption = 'Modelo:'
      end
      object Label27: TLabel
        Left = 8
        Top = 46
        Width = 35
        Height = 13
        Caption = 'Porta:'
      end
      object DBComboBox7: TDBComboBox
        Left = 64
        Top = 19
        Width = 329
        Height = 21
        Style = csDropDownList
        DataField = 'BALANCAPDV_MODELO'
        DataSource = dsconfig
        ItemHeight = 13
        Items.Strings = (
          '(Nenhum)'
          'FILIZOLA'
          'TOLEDO'
          'URANO')
        TabOrder = 0
      end
      object DBComboBox8: TDBComboBox
        Left = 64
        Top = 41
        Width = 113
        Height = 21
        Style = csDropDownList
        DataField = 'BALANCAPDV_PORTA'
        DataSource = dsconfig
        ItemHeight = 13
        Items.Strings = (
          '(Nenhum)'
          'COM1'
          'COM2'
          'COM3'
          'COM4'
          'COM5'
          'COM6'
          'COM7'
          'COM8'
          'COM9')
        TabOrder = 1
      end
    end
    object GroupBox7: TGroupBox
      Left = 0
      Top = 180
      Width = 414
      Height = 66
      Align = alTop
      Caption = 'Impressora de Cheque'
      TabOrder = 3
      object Label28: TLabel
        Left = 8
        Top = 24
        Width = 45
        Height = 13
        Caption = 'Modelo:'
      end
      object Label29: TLabel
        Left = 8
        Top = 46
        Width = 35
        Height = 13
        Caption = 'Porta:'
      end
      object DBComboBox9: TDBComboBox
        Left = 64
        Top = 19
        Width = 329
        Height = 21
        Style = csDropDownList
        DataField = 'IMPRESSORACHEQUE_MODELO'
        DataSource = dsconfig
        ItemHeight = 13
        Items.Strings = (
          '(Nenhum)'
          'BEMATECH')
        TabOrder = 0
      end
      object DBComboBox10: TDBComboBox
        Left = 64
        Top = 41
        Width = 113
        Height = 21
        Style = csDropDownList
        DataField = 'IMPRESSORACHEQUE_PORTA'
        DataSource = dsconfig
        ItemHeight = 13
        Items.Strings = (
          '(Nenhum)'
          'COM1'
          'COM2'
          'COM3'
          'COM4'
          'COM5'
          'COM6'
          'COM7'
          'COM8'
          'COM9')
        TabOrder = 1
      end
    end
    object GroupBox8: TGroupBox
      Left = 0
      Top = 246
      Width = 414
      Height = 47
      Align = alTop
      Caption = 'Impressora de C'#243'digo de Barras'
      TabOrder = 4
      object Label30: TLabel
        Left = 8
        Top = 24
        Width = 45
        Height = 13
        Caption = 'Modelo:'
      end
      object DBComboBox11: TDBComboBox
        Left = 64
        Top = 19
        Width = 329
        Height = 21
        Style = csDropDownList
        DataField = 'IMPRESSORABARRAS_MODELO'
        DataSource = dsconfig
        ItemHeight = 13
        Items.Strings = (
          '(Nenhum)'
          'ARGOX'
          'ZEBRA')
        TabOrder = 0
      end
    end
  end
  object pecf: TPanel
    Left = 381
    Top = 16
    Width = 414
    Height = 297
    BevelOuter = bvNone
    TabOrder = 7
    Visible = False
    object Label23: TLabel
      Left = 8
      Top = 32
      Width = 71
      Height = 13
      Caption = 'Modelo ECF:'
    end
    object Label24: TLabel
      Left = 8
      Top = 80
      Width = 69
      Height = 13
      Caption = 'Porta/Local:'
    end
    object Label25: TLabel
      Left = 8
      Top = 56
      Width = 29
      Height = 13
      Caption = 'Tipo:'
    end
    object FlatPanel5: TFlatPanel
      Left = 0
      Top = 0
      Width = 414
      Height = 24
      Caption = 'FlatPanel1'
      Color = clWindow
      Align = alTop
      TabOrder = 0
      object HeaderView6: THeaderView
        Left = 2
        Top = 2
        Width = 410
        Height = 20
        AdaptiveColors = True
        BorderStyle = bsNone
        Caption = 'ECF'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HeaderColor = clHighlight
        HeaderFont.Charset = ANSI_CHARSET
        HeaderFont.Color = clWindow
        HeaderFont.Height = -13
        HeaderFont.Name = 'Arial'
        HeaderFont.Style = [fsBold]
        HeaderSize = 20
        ParentColor = False
        ParentFont = False
      end
    end
    object DBComboBox3: TDBComboBox
      Left = 88
      Top = 27
      Width = 183
      Height = 21
      Style = csDropDownList
      DataField = 'ECF_MODELO'
      DataSource = dsconfig
      ItemHeight = 13
      Items.Strings = (
        ''
        'BEMATECH'
        'DARUMA')
      TabOrder = 1
    end
    object DBComboBox4: TDBComboBox
      Left = 88
      Top = 75
      Width = 183
      Height = 21
      DataField = 'ECF_PORTA'
      DataSource = dsconfig
      ItemHeight = 13
      Items.Strings = (
        ''
        'COM1'
        'COM2'
        'COM3'
        'COM4'
        'COM5'
        'COM6'
        'COM7'
        'COM8'
        'COM9')
      TabOrder = 2
    end
    object BitBtn6: TBitBtn
      Left = 276
      Top = 34
      Width = 129
      Height = 25
      Caption = 'Testar Comunica'#231#227'o'
      TabOrder = 3
      OnClick = BitBtn6Click
    end
    object DBComboBox5: TDBComboBox
      Left = 88
      Top = 51
      Width = 183
      Height = 21
      Style = csDropDownList
      DataField = 'ECF_TIPO'
      DataSource = dsconfig
      ItemHeight = 13
      Items.Strings = (
        ''
        'ECF-Local'
        'ECF-Remoto')
      TabOrder = 4
    end
    object BitBtn12: TBitBtn
      Left = 276
      Top = 62
      Width = 129
      Height = 25
      Caption = 'Fun'#231#245'es do ECF'
      TabOrder = 5
      OnClick = BitBtn12Click
    end
    object GroupBox23: TGroupBox
      Left = 12
      Top = 120
      Width = 385
      Height = 153
      Caption = 'Nota Fiscal'
      TabOrder = 6
      object Label42: TLabel
        Left = 8
        Top = 17
        Width = 29
        Height = 13
        Caption = 'Tipo:'
      end
      object Label45: TLabel
        Left = 72
        Top = 41
        Width = 99
        Height = 13
        Caption = 'Itens por P'#225'gina:'
      end
      object Label43: TLabel
        Left = 72
        Top = 65
        Width = 189
        Height = 13
        Caption = 'Linha do "Transporte de P'#225'gina":'
      end
      object Label44: TLabel
        Left = 72
        Top = 89
        Width = 251
        Height = 13
        Caption = 'Qtde. de Linhas para outra pr'#243'xima p'#225'gina:'
      end
      object Label46: TLabel
        Left = 8
        Top = 129
        Width = 71
        Height = 13
        Caption = 'Impressora:'
      end
      object DBEdit44: TDBEdit
        Left = 176
        Top = 38
        Width = 41
        Height = 21
        DataField = 'NF_ITENS_PAGINA'
        DataSource = dsconfig
        TabOrder = 1
      end
      object combo_nf: TComboBox
        Left = 57
        Top = 13
        Width = 241
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 0
        Items.Strings = (
          '01 - Fonte do Windows'
          '02 - Fonte do MS-DOS')
      end
      object DBEdit43: TDBEdit
        Left = 272
        Top = 62
        Width = 41
        Height = 21
        DataField = 'NF_LINHA_TRANSPORTE'
        DataSource = dsconfig
        TabOrder = 2
      end
      object DBEdit47: TDBEdit
        Left = 328
        Top = 86
        Width = 41
        Height = 21
        DataField = 'NF_SALTO_PAGINA'
        DataSource = dsconfig
        TabOrder = 3
      end
      object DBEdit45: TDBEdit
        Left = 88
        Top = 126
        Width = 281
        Height = 21
        DataField = 'NF_IMPRESSORA'
        DataSource = dsconfig
        TabOrder = 4
      end
      object Button1: TButton
        Left = 8
        Top = 64
        Width = 57
        Height = 25
        Caption = 'Padr'#227'o'
        TabOrder = 5
        OnClick = Button1Click
      end
    end
  end
  object pemitente: TPanel
    Left = 20
    Top = 119
    Width = 414
    Height = 314
    BevelOuter = bvNone
    TabOrder = 8
    Visible = False
    object FlatPanel6: TFlatPanel
      Left = 0
      Top = 0
      Width = 414
      Height = 24
      Caption = 'FlatPanel1'
      Color = clWindow
      Align = alTop
      TabOrder = 0
      object HeaderView7: THeaderView
        Left = 2
        Top = 2
        Width = 410
        Height = 20
        AdaptiveColors = True
        BorderStyle = bsNone
        Caption = 'EMITENTE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HeaderColor = clHighlight
        HeaderFont.Charset = ANSI_CHARSET
        HeaderFont.Color = clWindow
        HeaderFont.Height = -13
        HeaderFont.Name = 'Arial'
        HeaderFont.Style = [fsBold]
        HeaderSize = 20
        ParentColor = False
        ParentFont = False
      end
    end
    object pemitente2: TPanel
      Left = 8
      Top = 32
      Width = 414
      Height = 273
      BevelOuter = bvNone
      Enabled = False
      TabOrder = 1
      object Label8: TLabel
        Left = 10
        Top = 8
        Width = 45
        Height = 13
        Caption = 'C'#243'digo:'
      end
      object Label9: TLabel
        Left = 10
        Top = 32
        Width = 78
        Height = 13
        Caption = 'Raz'#227'o Social:'
      end
      object Label10: TLabel
        Left = 10
        Top = 56
        Width = 64
        Height = 13
        Caption = 'N.Fantasia:'
      end
      object Label11: TLabel
        Left = 10
        Top = 80
        Width = 58
        Height = 13
        Caption = 'Endere'#231'o:'
      end
      object Label12: TLabel
        Left = 10
        Top = 104
        Width = 40
        Height = 13
        Caption = 'Bairro:'
      end
      object Label13: TLabel
        Left = 10
        Top = 128
        Width = 45
        Height = 13
        Caption = 'Cidade:'
      end
      object Label14: TLabel
        Left = 229
        Top = 128
        Width = 19
        Height = 13
        Caption = 'UF:'
      end
      object Label15: TLabel
        Left = 282
        Top = 128
        Width = 28
        Height = 13
        Caption = 'CEP:'
      end
      object Label16: TLabel
        Left = 10
        Top = 152
        Width = 34
        Height = 13
        Caption = 'CNPJ:'
      end
      object Label17: TLabel
        Left = 250
        Top = 152
        Width = 17
        Height = 13
        Caption = 'IE:'
      end
      object Label18: TLabel
        Left = 10
        Top = 176
        Width = 36
        Height = 13
        Caption = 'Email:'
      end
      object Label19: TLabel
        Left = 10
        Top = 200
        Width = 71
        Height = 13
        Caption = 'Home-Page:'
      end
      object Label20: TLabel
        Left = 10
        Top = 224
        Width = 77
        Height = 13
        Caption = 'Respons'#225'vel:'
      end
      object Label21: TLabel
        Left = 10
        Top = 252
        Width = 46
        Height = 13
        Caption = 'Celular:'
      end
      object Label37: TLabel
        Left = 268
        Top = 104
        Width = 32
        Height = 13
        Caption = 'Fone:'
      end
      object DBEdit3: TDBEdit
        Left = 90
        Top = 4
        Width = 65
        Height = 21
        DataField = 'CODIGO'
        DataSource = dsemitente
        Enabled = False
        TabOrder = 0
      end
      object DBEdit4: TDBEdit
        Left = 90
        Top = 28
        Width = 313
        Height = 21
        DataField = 'NOME'
        DataSource = dsemitente
        TabOrder = 1
      end
      object DBEdit5: TDBEdit
        Left = 90
        Top = 52
        Width = 313
        Height = 21
        DataField = 'FANTASIA'
        DataSource = dsemitente
        TabOrder = 2
      end
      object DBEdit6: TDBEdit
        Left = 90
        Top = 76
        Width = 313
        Height = 21
        DataField = 'ENDERECO'
        DataSource = dsemitente
        TabOrder = 3
      end
      object DBEdit7: TDBEdit
        Left = 90
        Top = 100
        Width = 175
        Height = 21
        DataField = 'BAIRRO'
        DataSource = dsemitente
        TabOrder = 4
      end
      object DBEdit8: TDBEdit
        Left = 90
        Top = 124
        Width = 137
        Height = 21
        DataField = 'CIDADE'
        DataSource = dsemitente
        TabOrder = 6
      end
      object DBEdit9: TDBEdit
        Left = 250
        Top = 124
        Width = 28
        Height = 21
        DataField = 'UF'
        DataSource = dsemitente
        TabOrder = 7
      end
      object DBEdit10: TDBEdit
        Left = 314
        Top = 124
        Width = 89
        Height = 21
        DataField = 'CEP'
        DataSource = dsemitente
        TabOrder = 8
      end
      object DBEdit11: TDBEdit
        Left = 90
        Top = 148
        Width = 153
        Height = 21
        DataField = 'CNPJ'
        DataSource = dsemitente
        TabOrder = 9
      end
      object DBEdit12: TDBEdit
        Left = 274
        Top = 148
        Width = 129
        Height = 21
        DataField = 'IE'
        DataSource = dsemitente
        TabOrder = 10
      end
      object DBEdit13: TDBEdit
        Left = 90
        Top = 172
        Width = 313
        Height = 21
        DataField = 'EMAIL'
        DataSource = dsemitente
        TabOrder = 11
      end
      object DBEdit14: TDBEdit
        Left = 90
        Top = 196
        Width = 313
        Height = 21
        DataField = 'HOMEPAGE'
        DataSource = dsemitente
        TabOrder = 12
      end
      object DBEdit15: TDBEdit
        Left = 90
        Top = 220
        Width = 313
        Height = 21
        DataField = 'RESPONSAVEL'
        DataSource = dsemitente
        TabOrder = 13
      end
      object DBEdit16: TDBEdit
        Left = 90
        Top = 244
        Width = 121
        Height = 21
        DataField = 'CELULAR'
        DataSource = dsemitente
        TabOrder = 14
      end
      object BitBtn8: TBitBtn
        Left = 283
        Top = 2
        Width = 121
        Height = 25
        Caption = 'Logomarca'
        TabOrder = 15
        OnClick = BitBtn8Click
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF79B880569D5D619B6545774958745A7B7B7B86868688
          88888A8A8A8B8B8B6868685B7C5E47854D5F9863397A3E58895A69B87265B36F
          71BE7C61B36C5D9061E4E4E4818181A8A8A8ABABAB888888E1E1E175BB7D83C9
          8E73C07F54A35D327537E2F3E4C3E3C77BB982518D57A1C0A3EFEFEF7D7D7DA3
          A3A3A5A5A5848484EFEFEFA0D5A758AE6169AD719FC7A3BFD7C1FFFFFFFFFFFF
          FFFFFF8A8A8AEFEFEFEEEEEE7A7A7A9D9D9DA0A0A0808080EEEEEEF3F3F37070
          70E5E5E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF909090F0F0F0EEEEEE76767698
          98989B9B9B7B7B7BEEEEEEF3F3F3757575E5E5E5FFFFFFFFFFFFFFFFFFC7DBEA
          669CC28C8E90F5F5F5EEEEEE737373757575767676777777EEEEEEF3F3F3898A
          8C4D608DC1C8D9FFFFFFC7DCEC3A84BA5695C13E80B2DBDDDFECECECEEEEEEEE
          EEEEEEEEEEEEEEEEEEEEEEDEE0E22C4A80395E8F263F79C1C8D9619AC95294C5
          79AED25696C34286B9CCCECFEDEDEDEEEEEEEEEEEEEEEEEED8D9DA376396436F
          9E5B8BB03B6393556A96FAFCFD3E84BD5192C578ADD25496C34186B9C9CACBEC
          ECECEEEEEED8DADB3C75A54C7FAD6A99BC4674A1385C90FAFBFCFFFFFFFAFCFD
          3D80BD4F90C575ACD25394C54088BBD1D3D4D1D3D44082B3548CBA76A4C64F83
          B13D6FA2FAFBFDFFFFFFFFFFFFFFFFFFFAFCFD3B7FBB4C8FC372AAD25193C53A
          82B93B84B85594C17CABCE5490BB427FB0FAFCFDFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFAFCFD3B7DBA4A8CC26FA9D170A9D173ABD179AED25596C34488BAFAFC
          FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFCFD397AB8478AC169
          A5CF6DA8D05092C54288BEFAFCFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFAFCFD427EBA3476B6367AB84687C0FAFCFDFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFCFDE9
          F0F7E9F0F7FAFCFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      end
      object DBEdit18: TDBEdit
        Left = 306
        Top = 100
        Width = 97
        Height = 21
        DataField = 'TELEFONE'
        DataSource = dsemitente
        TabOrder = 5
      end
      object PANEL1: TFlatPanel
        Left = 8
        Top = 52
        Width = 396
        Height = 213
        ParentColor = True
        Visible = False
        ColorHighLight = clBtnFace
        ColorShadow = clBtnFace
        TabOrder = 16
        object BitBtn9: TBitBtn
          Left = 312
          Top = 4
          Width = 75
          Height = 25
          Caption = 'Incluir'
          TabOrder = 0
          OnClick = BitBtn9Click
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5F0E79FC8A5559B5E3F
            8E483B8C444C955297C19BE1EDE2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFC3DDC8569F6340984F7CC18E95CFA595CEA577BD88358C41408C47B9D5
            BBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6DFCB549F6363B377A7DAB486CB9765
            BB7C63B97B85CA97A4D8B357A96A34853CB9D5BBFFFFFFFFFFFFFFFFFFE9F3EB
            66AB7569B87CA7DAB15FBB765BB97258B76F58B46E57B46E5AB673A4D8B259A9
            6B418E48E2EEE3FFFFFFFFFFFFAED4B852AA67A9DCB363C0785EBD705FBB76FE
            FEFEFEFEFE58B76F57B46D5BB673A5D9B3378E4296C19AFFFFFFFFFFFF76B788
            89CB9788D2956AC57962C06F54AA64FEFEFEFEFEFE58B76F58B76F5AB87184CB
            967ABD8C4C9554FFFFFFFFFFFF69B17EA8DCB27CCE8974CB80FEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFE58B76F66BD7C9BD3AA3A8B43FFFFFFFFFFFF6DB482
            B5E1BD8AD49679C885FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE58B76F68C0
            7D9CD3A93E8E48FFFFFFFFFFFF81BF94ABDCB5A5DEAE80CA8B7BC8856DBC78FE
            FEFEFEFEFE5AAB695FBB765BB9728AD0987FC491579D60FFFFFFFFFFFFB8DBC3
            84C696D1EDD694D89F89D2937EC788FEFEFEFEFEFE78CC846AC27B6EC67DABDE
            B4449D56A0C8A6FFFFFFFFFFFFECF6EF7EBE92A9D9B6D7F0DB91D79C87CC9283
            CB8D8AD39589D39482D18DAEDFB66AB87C5AA266E6F1E8FFFFFFFFFFFFFFFFFF
            D1E9D975BA8BAEDBBADBF1DFB5E3BC9ADAA495D89FA4DEAEBFE7C478C18957A1
            65C4DEC9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1E9D97EBE9293CDA3C2E5CACE
            EAD3C8E8CDAEDCB76CB87E67AD77C7E0CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFECF6EFB9DCC482BF9570B6856DB48178B989B1D5BAE8F3EBFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        end
        object BitBtn10: TBitBtn
          Left = 312
          Top = 28
          Width = 75
          Height = 25
          Caption = 'Excluir'
          TabOrder = 1
          OnClick = BitBtn10Click
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5E7F79EA9E1536AC63E
            58BF3953BE4B66C197A7DBE1E6F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFC2C8ED5465CB3B51CB7479E78E91ED8E91ED7077E3324CC03F5BBDB9C4
            E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC5C9EE505FCC5B64DFA0A5F47D85EE5A
            62E8585CE67C83ED9D9FF3505CD63351B9B9C4E7FFFFFFFFFFFFFFFFFFE8EAF9
            6470D3606AE2A0ABF4535EEB4F5BE94C58E84D58E54B55E54F55E59DA1F3535F
            D53F5CBEE2E7F5FFFFFFFFFFFFACB0E94A55DAA1AAF55563EF5165ED4C58E84C
            58E84C58E84C58E84B57E55159E59EA2F4334FC395A5DBFFFFFFFFFFFF7277DC
            808BED7D90F65C72F24C58E84C58E84C58E84C58E84C58E84C58E84E5AE87A82
            EF747AE14B64C3FFFFFFFFFFFF6468DAA0AAF66F85F76781F5FEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFE4C58E85B65E9959BF03855BDFFFFFFFFFFFF696DDB
            AEB8F87E92F96F84EFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE4C58E85D69
            ED959CF03C54BFFFFFFFFFFFFF7C7EE2A4AEF49CAAF9768BEF535EEB535EEB53
            5EEB535EEB535EEB535EEB6276F1808DF3777EE8556AC8FFFFFFFFFFFFB5B4EF
            7C82E9CCD3FB8A9CF97D92F67489ED6B83F56B83F56B83F56B83F56278F2A3AE
            F73D4ECF9FAAE0FFFFFFFFFFFFEBEBFB7877E2A2A6F2D3DAFC8699F97E90EF79
            8DF07E93F77D91F8758BF7A7B5F7626DE25767CCE6E8F7FFFFFFFFFFFFFFFFFF
            CFCFF66F6FE0A9ACF1D7DBFCADB9F990A2F98A9CF99BA8FAB9C6FB6F7AE85361
            CDC3C8EDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFF67878E18D92ECBDC2F7CB
            D2F8C3CAF8A9B3F3656FE1636DD5C6CAEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFEBEBFBB6B5F07C7EE1696ADD676ADB7378DEAEB2EAE8E9F9FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        end
        object BitBtn11: TBitBtn
          Left = 312
          Top = 52
          Width = 75
          Height = 25
          Caption = 'Fechar'
          TabOrder = 2
          OnClick = BitBtn11Click
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB9BCF0676DDF4048D643
            4BD74048D7353ED55960DCAFB2EEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFBABDF05760DF8A96F599A6FB93A0F8909EF6929FF67F8BED404AD9AEB1
            EEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBCBEF15F67E0919DF6657CFE3D58FE3B
            57FE3752FD2F4BF85269F6808CF03F48D9ABAFEDFFFFFFFFFFFFFFFFFFC0C3F1
            6970E298A5F76F87FE4260FE3E5CFE3956FE3552FE304DFE2B49FE556CFA828F
            F3404AD9ADB0EEFFFFFFFFFFFF8186E59EACF87891FE4E6DFE6D86FE8EA0FE40
            5EFE3B5AFE8195FE647AFE2C4BFE566DFE828FF5585FDCFFFFFFFFFFFF6B70DF
            AFBFFD5D7EFE5675FE95A8FEFEFEFEAAB8FE9AABFEFEFEFE9AAAFE3352FE3351
            FE96A5FD3840D5FFFFFFFFFFFF767BE1B0BFFC6788FE5D7EFE5D7EFEAEBEFEFE
            FEFEFEFEFEB8C4FE4867FE3A5AFE3C5BFE96A4FB444DD8FFFFFFFFFFFF7A7FE3
            B3C4FC6E91FE6387FE5F83FEA7B9FEFEFEFEFEFEFEAFBFFE4A6BFE4162FE4363
            FE99A8FB4950D9FFFFFFFFFFFF797EE3BACBFD7196FE6A8FFE9EB5FEFEFEFEC1
            CEFEB4C4FEFEFEFE92A8FE486AFE4668FE9FB0FD464ED8FFFFFFFFFFFF9499E8
            AFC0F893B2FE7098FE8FADFEB0C4FE678DFE5E84FE9BB1FE7694FE4F73FE718D
            FE92A2F66D73E0FFFFFFFFFFFFCDCFF4868FE7B0C1F895B6FE739CFE6F98FE6A
            92FE658DFE6188FE5B82FE7B99FE99A9F76069E0BCBEF1FFFFFFFFFFFFFFFFFF
            CECFF4878FE7B1C2F896B8FE78A2FE76A0FE729BFE6B94FE84A3FEA0B0F76871
            E2BEC0F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFD1F58891E8B1C3F8BDD2FDB9
            CDFCB7CAFCB7CAFDA6B7F7727BE4C2C4F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFCFD1F5989DE97E83E38084E47C82E3747AE18C91E6C7CAF3FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        end
      end
    end
    object BitBtn4: TBitBtn
      Left = 224
      Top = 275
      Width = 105
      Height = 23
      Caption = 'Alterar'
      TabOrder = 2
      OnClick = BitBtn4Click
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0EEE08FBF913A8C3E24
        79282476283A843E8FB991E0EBE0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFB5D9B6308E34419F5186C9999AD2AA9AD1AA82C6953C964B307B33B4D0
        B6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB5DBBA248E296CBD82A7DAB486CB9765
        BB7C63B97B85CA97A4D8B365B67C237126B4D0B6FFFFFFFFFFFFFFFFFFE1F2E4
        32A04371C186A7DAB15FBB765BB97258B76F58B46E57B46E5AB673A4D8B268B7
        7E307F34E0ECE1FFFFFFFFFFFF8FD29F4BAF63A9DCB363C0785EBD7074C484D3
        EBD889CC9855B56B57B46D5BB673A5D9B3409A4D8EBB90FFFFFFFFFFFF3EB45C
        90D19E8CD39963C27378C886F1F9F3FEFEFEFCFDFC85CA9556B66C5AB87184CB
        9686C6993A8A3EFFFFFFFFFFFF26AF48A5DBAE6FC97E72C97FEFF8F0FEFEFEEA
        F6ECFEFEFEFAFCFB87CC955AB87066BD7C9FD6AE227E25FFFFFFFFFFFF2DB650
        A6DCB071CB7F65C672AFE0B6D1EDD562C06FB7E2BEFEFEFEFAFCFB8BCF9868C0
        7DA0D6AD228325FFFFFFFFFFFF4AC46B94D6A090D69A68C87563C56E60C36D60
        C26E60C16EB8E3BFFEFEFEE2F3E58AD0988ACD9C3B983FFFFFFFFFFFFF9ADEAC
        56BE6FAEE0B66CCB7967C77164C66F62C46D61C36D62C370B5E2BD6EC67DABDE
        B447A85D8EC793FFFFFFFFFFFFE4F7E948C4657ECD8FADE0B46CCB7969C97567
        C77167C77367C7746AC878ABDEB375C38832A042E1F1E3FFFFFFFFFFFFFFFFFF
        BFECCA3CC25B7ECD8FAEE0B691D79C76CD8276CD8291D79CADE0B477C78A26A0
        3AB5DFBDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0ECCB49C76858C17395D6A2A4
        DBADA4DBAD94D5A04FB86934B254B6E3C1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFE5F7E99EE2B054CA713ABF5B36BD5948C26A97DBAAE1F5E7FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    end
    object BitBtn5: TBitBtn
      Left = 328
      Top = 275
      Width = 83
      Height = 23
      Caption = 'Cancelar'
      Enabled = False
      TabOrder = 3
      OnClick = BitBtn5Click
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB9BCF0676DDF4048D643
        4BD74048D7353ED55960DCAFB2EEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFBABDF05760DF8A96F599A6FB93A0F8909EF6929FF67F8BED404AD9AEB1
        EEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBCBEF15F67E0919DF6657CFE3D58FE3B
        57FE3752FD2F4BF85269F6808CF03F48D9ABAFEDFFFFFFFFFFFFFFFFFFC0C3F1
        6970E298A5F76F87FE4260FE3E5CFE3956FE3552FE304DFE2B49FE556CFA828F
        F3404AD9ADB0EEFFFFFFFFFFFF8186E59EACF87891FE4E6DFE6D86FE8EA0FE40
        5EFE3B5AFE8195FE647AFE2C4BFE566DFE828FF5585FDCFFFFFFFFFFFF6B70DF
        AFBFFD5D7EFE5675FE95A8FEFEFEFEAAB8FE9AABFEFEFEFE9AAAFE3352FE3351
        FE96A5FD3840D5FFFFFFFFFFFF767BE1B0BFFC6788FE5D7EFE5D7EFEAEBEFEFE
        FEFEFEFEFEB8C4FE4867FE3A5AFE3C5BFE96A4FB444DD8FFFFFFFFFFFF7A7FE3
        B3C4FC6E91FE6387FE5F83FEA7B9FEFEFEFEFEFEFEAFBFFE4A6BFE4162FE4363
        FE99A8FB4950D9FFFFFFFFFFFF797EE3BACBFD7196FE6A8FFE9EB5FEFEFEFEC1
        CEFEB4C4FEFEFEFE92A8FE486AFE4668FE9FB0FD464ED8FFFFFFFFFFFF9499E8
        AFC0F893B2FE7098FE8FADFEB0C4FE678DFE5E84FE9BB1FE7694FE4F73FE718D
        FE92A2F66D73E0FFFFFFFFFFFFCDCFF4868FE7B0C1F895B6FE739CFE6F98FE6A
        92FE658DFE6188FE5B82FE7B99FE99A9F76069E0BCBEF1FFFFFFFFFFFFFFFFFF
        CECFF4878FE7B1C2F896B8FE78A2FE76A0FE729BFE6B94FE84A3FEA0B0F76871
        E2BEC0F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFD1F58891E8B1C3F8BDD2FDB9
        CDFCB7CAFCB7CAFDA6B7F7727BE4C2C4F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFCFD1F5989DE97E83E38084E47C82E3747AE18C91E6C7CAF3FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    end
  end
  object dsemitente: TDataSource
    DataSet = frmmodulo.qremitente
    Left = 116
    Top = 711
  end
  object dsconfig: TDataSource
    DataSet = frmmodulo.qrconfig
    Left = 532
    Top = 311
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Filter = 'Bitmaps (*.bmp)|*.bmp'
    Left = 145
    Top = 17
  end
end
