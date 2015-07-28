object frminventario_deposito: Tfrminventario_deposito
  Left = 362
  Top = 312
  Width = 671
  Height = 656
  Caption = 'frminventario_deposito'
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
  object FlatGauge1: TFlatGauge
    Left = 0
    Top = 564
    Width = 655
    Height = 25
    AdvColorBorder = 0
    ColorBorder = 8623776
    Progress = 0
    Align = alBottom
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 655
    Height = 57
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object bgerar: TAdvGlowButton
      Left = 469
      Top = 4
      Width = 68
      Height = 49
      Caption = 'Gerar...'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 49
      FocusType = ftHot
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000000467414D410000AFC837058AE90000001974455874536F6674776172
        650041646F626520496D616765526561647971C9653C000002E94944415478DA
        62FCFFFF3F032500208058608C25873FD401CD4AFDFBFF9FCCBF7FFF18FEFE63
        60F803A2FF82D8FF19FE006904FECBF0F7CF7FA0F8BFD300010437E0DFFFFFB9
        C166BC22A4D8DEB0F28E1E4000C10D1064BA28F2E3EE3C862F3FDE31FC03DAF2
        EF0F10FFFDC3F0FFCF5F869F7F99180E729A337CFCCF0A74D51FA00BFE305458
        B632FCFEFD971D2080C006BCBDE0C42CC1ECCAC0CE25CEC0C5AFC3F0FFF71F30
        FEFBEB3BC3F7F737187854931974A5BD18181899E0B67FFDF187E137D0708000
        021BF0FFEF3F5919A6030CAC9CBE0C7F3E9E6160E23004FAFD2DC38F0FB718AE
        FEF66778F9C08C81E1C11B14E7FB990831FC021A0010402C6FCE3AB0010D48E1
        1654050A3333FCFBFE828181E527C3BB87BB1884D4F3199C1423C11AD69E78C9
        106C210E37E0CDA71F6017000410CBBFBF7F0DFFFFF997CECEAB0AF4EF77A019
        920C40CF31FCF9C3CC70EDD60D867FB79A1998FEFC6410FDCFCDB0F58837C31F
        56710656A0BB35A5B9187EFDFECB0010402C40CD9339844D44BEBFBD010E3836
        2E156094B03088CA3833F0BCBDC5F0F7F72F864F2F2F303C112B67F034576160
        62E502BBE0CEB34F404BFE31000410CBBF3F7F577D7D7AFCD0E5EFFEC506B2EC
        0CEF6F6D6410917564F8F3E303C3AF6F6F189EFFD160F8A459C3F091518A61FD
        D9CF0C2C8C9F19804984414B8A83E13F900510400CA09408C24DABEEFF7FF7FE
        DDFF3B6B0DFF3FDB15F8FFFA0ACBFF1F6EAEFE0F03BBCEBFFAFFE9DB6F38FFC6
        A30FFFE37B4FFC070820783A00A5BA2FE70B19D83984185EFD106578ABDACBF0
        E43B2F03C3C5370C4C8CC060015A7BF8FA7B78202A8BB28153294000C10D90F8
        7792E1F7A7870CAF8473182C6C82190E5C79C3E0A4834898EB4EBC6608B21085
        F36F3EFEC8C00C4C1600010437E0E31F41065E93C90CBC3C2A0CCFDF7D675016
        E764B8FFE20B3C2F684BB3813521837FFFFEFF030820B801AFFFC81F6DD9FAD7
        E0D7DF5BDCA0F805E1BFC050FE0DCE3C7FB0E6850F9F7F6C060820464AB33340
        8001001821770402B69BEC0000000049454E44AE426082}
      TabOrder = 0
      OnClick = bgerarClick
      Appearance.BorderColor = 12179676
      Appearance.BorderColorHot = clHighlight
      Appearance.BorderColorDown = clHighlight
      Appearance.BorderColorChecked = clBlack
      Appearance.ColorTo = 12179676
      Appearance.ColorChecked = 12179676
      Appearance.ColorCheckedTo = 12179676
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 11899524
      Appearance.ColorDownTo = 11899524
      Appearance.ColorHot = 15717318
      Appearance.ColorHotTo = 15717318
      Appearance.ColorMirror = 12179676
      Appearance.ColorMirrorTo = 12179676
      Appearance.ColorMirrorHot = 15717318
      Appearance.ColorMirrorHotTo = 15717318
      Appearance.ColorMirrorDown = 11899524
      Appearance.ColorMirrorDownTo = 11899524
      Appearance.ColorMirrorChecked = 12179676
      Appearance.ColorMirrorCheckedTo = 12179676
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
    object DateEdit1: TDateEdit
      Left = 195
      Top = 4
      Width = 94
      Height = 21
      NumGlyphs = 2
      TabOrder = 1
    end
    object DateEdit2: TDateEdit
      Left = 195
      Top = 36
      Width = 94
      Height = 21
      NumGlyphs = 2
      TabOrder = 2
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 589
    Width = 655
    Height = 31
    Align = alBottom
    BevelOuter = bvNone
    Enabled = False
    TabOrder = 1
    object Label8: TLabel
      Left = 8
      Top = 8
      Width = 120
      Height = 13
      Caption = 'Quantidade de Registros:'
    end
    object Label9: TLabel
      Left = 119
      Top = 0
      Width = 107
      Height = 13
      Caption = 'Total do Estoque - R$:'
    end
    object lcodigo: TLabel
      Left = 200
      Top = 8
      Width = 3
      Height = 13
    end
    object Label1: TLabel
      Left = 352
      Top = 8
      Width = 24
      Height = 13
      Caption = '1906'
    end
    object Label2: TLabel
      Left = 504
      Top = 8
      Width = 24
      Height = 13
      Caption = '5905'
    end
    object RQTDE: TRzNumericEdit
      Left = 136
      Top = 4
      Width = 49
      Height = 21
      TabOrder = 0
      DisplayFormat = ',0;(,0)'
    end
    object RTOTAL: TRzNumericEdit
      Left = 232
      Top = 4
      Width = 112
      Height = 21
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      DisplayFormat = '###,###,##0.00'
    end
    object rtipo2: TRzNumericEdit
      Left = 384
      Top = 2
      Width = 112
      Height = 21
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      DisplayFormat = '###,###,##0.00'
    end
    object rtipo3: TRzNumericEdit
      Left = 536
      Top = 2
      Width = 112
      Height = 21
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      DisplayFormat = '###,###,##0.00'
    end
  end
  object wwDBGrid1: TwwDBGrid
    Left = 0
    Top = 57
    Width = 655
    Height = 507
    Selected.Strings = (
      'DATA'#9'10'#9'DATA'
      'CODPRODUTO'#9'6'#9'C'#243'digo'
      'PRODUTO'#9'40'#9'Produto'
      'ESTOQUE'#9'9'#9'ESTOQUE'
      'TIPO_1'#9'10'#9'TIPO_1'
      'TIPO_2'#9'10'#9'TIPO_2'
      'TIPO_3'#9'10'#9'TIPO_3')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 1
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = dsinventario
    KeyOptions = [dgEnterToTab, dgAllowDelete, dgAllowInsert]
    TabOrder = 2
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
  end
  object btotaliza: TBitBtn
    Left = 344
    Top = 440
    Width = 75
    Height = 25
    Caption = 'btotaliza'
    TabOrder = 3
    OnClick = btotalizaClick
  end
  object BitBtn1: TBitBtn
    Left = 344
    Top = 472
    Width = 75
    Height = 25
    Caption = 'zerar'
    TabOrder = 4
    OnClick = BitBtn1Click
  end
  object qrinventario: TZQuery
    Connection = frmmodulo.Conexao
    Active = True
    SQL.Strings = (
      'select * from inventario'
      'order by produto')
    Params = <>
    Left = 120
    Top = 136
    object qrinventarioDATA: TDateTimeField
      DisplayWidth = 10
      FieldName = 'DATA'
    end
    object qrinventarioCODPRODUTO: TStringField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 6
      FieldName = 'CODPRODUTO'
      Required = True
      Size = 6
    end
    object qrinventarioPRODUTO: TStringField
      DisplayLabel = 'Produto'
      DisplayWidth = 40
      FieldName = 'PRODUTO'
      Size = 80
    end
    object qrinventarioESTOQUE: TFloatField
      DisplayWidth = 9
      FieldName = 'ESTOQUE'
    end
    object qrinventarioTIPO_1: TFloatField
      DisplayWidth = 10
      FieldName = 'TIPO_1'
    end
    object qrinventarioTIPO_2: TFloatField
      DisplayWidth = 10
      FieldName = 'TIPO_2'
    end
    object qrinventarioTIPO_3: TFloatField
      DisplayWidth = 10
      FieldName = 'TIPO_3'
    end
    object qrinventarioTIPO: TStringField
      DisplayLabel = 'Classifica'#231#227'o'
      DisplayWidth = 18
      FieldName = 'TIPO'
      Visible = False
      Size = 30
    end
    object qrinventarioUNIDADE: TStringField
      DisplayLabel = 'Un.'
      DisplayWidth = 3
      FieldName = 'UNIDADE'
      Visible = False
      Size = 5
    end
    object qrinventarioCST: TStringField
      DisplayWidth = 5
      FieldName = 'CST'
      Visible = False
      Size = 5
    end
    object qrinventarioALIQUOTA: TFloatField
      DisplayLabel = 'Al'#237'quota'
      DisplayWidth = 10
      FieldName = 'ALIQUOTA'
      Visible = False
    end
    object qrinventarioCUSTO: TFloatField
      DisplayLabel = 'Custo'
      DisplayWidth = 10
      FieldName = 'CUSTO'
      Visible = False
    end
    object qrinventarioTOTAL: TFloatField
      DisplayLabel = 'Total'
      DisplayWidth = 11
      FieldName = 'TOTAL'
      Visible = False
    end
    object qrinventarioANO: TIntegerField
      FieldName = 'ANO'
      Visible = False
    end
    object qrinventarioVENDA: TFloatField
      FieldName = 'VENDA'
      Visible = False
    end
    object qrinventarioMES: TIntegerField
      FieldName = 'MES'
      Visible = False
    end
    object qrinventarioDATA_POSTERIOR: TDateTimeField
      FieldName = 'DATA_POSTERIOR'
      Visible = False
    end
  end
  object dsinventario: TDataSource
    DataSet = qrinventario
    Left = 152
    Top = 136
  end
  object Query: TZQuery
    Connection = frmmodulo.Conexao
    Params = <>
    Left = 248
    Top = 160
  end
end
