object frmPedido_Abrir: TfrmPedido_Abrir
  Left = 310
  Top = 87
  Width = 685
  Height = 378
  Caption = 'Pedido feitos no PDV'
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
  object Bevel1: TBevel
    Left = 0
    Top = 317
    Width = 677
    Height = 2
    Align = alBottom
  end
  object Panel1: TPanel
    Left = 0
    Top = 319
    Width = 677
    Height = 32
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object bfechar: TAdvGlowButton
      Left = 576
      Top = 3
      Width = 93
      Height = 24
      Caption = 'ESC | Sair'
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
        650041646F626520496D616765526561647971C9653C000002A04944415478DA
        62FCFFFF3F032500208058D005FEB6652BFFFBFF3FEAFFBF7F71FFFEFD930062
        06207E01C48BFEFDFDB74CA063D15D64F50001C488EC82DFAD59C1FFFFFD9FFC
        95914D924D598581858F0F22FEE923C3B7EBD71998BE7D7CFEEFDFDF5CB1BE95
        6B617A0002086EC0AF964CA0E67F0B7F8AC97173A9A932FC7DF690E11F108300
        93A41C0393943CC3A76BD7197EDCBAFCF5DFDFBFF1B2D336800D010820B0013F
        9B3294804E3CFC4B424E8A5B4D8DE1D7D15D608D5CB573C0F497FA2406867FFF
        19D86CDD183E5EB9CAF0E5FAF9677FFFFDB35599BBFD1E40003181FDFDF74FCC
        3726768466A0A140AFC0BDF6EFCF3F86BF7FFE337CDBBB9D814F438BE13F8FB0
        D49FDFBF63407200010436E0CF9F3FB1ECAA40673FB90FD6F8EF2FD000A02664
        03FEFDFECBF0F7D73F869FF7EE32F06BE830FCFEFD3B16240710403003A45905
        0418FE3CBE0FD608B3111E33408D7F7F43C47FDCB9CBC02A20C4F0E7F71F6990
        1C4000410CF8FD87E13FD0569846988DBF6F5D4178E137D490BF409701F19F3F
        BFC17200010475C1EFA73FDFBC0386B63CDCA920C5DF8FEC65F8B26139DCF67F
        409A455681E1DB9B37204B9F82F4020410CC058B3F5CB9C4C02CA500570CA2F9
        92F219780222C11AFF82C48036B32B2831BCBA701AE4EDC520BD000104360018
        204B7EBD7DF6ECFDD52B0C5C4E9E7043DE4DEE62783BB913AC11C417F0F26178
        7DE502C3FBC7B79F010D5802D20B1040F084742DD639189840160A689B710B02
        43F9C7FD7BE00003C9B32B2A81F11BA0E647C7777D05A69978A77D37C0090920
        805092F28550EB60600299CC21242529AC63C4C02E20084A120C3FDEBF637879
        FE24C3FB27778049F95FAECB819BF0A40C10408CE8B9F1A49F893250511430B4
        8199E92F6A66FAF76F99EBC1DB28990920801829CDCE0001060095D1AF4C86CE
        FBDD0000000049454E44AE426082}
      TabOrder = 0
      OnClick = bfecharClick
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
    object bitbtn7: TAdvGlowButton
      Left = 5
      Top = 3
      Width = 103
      Height = 24
      Caption = 'F2 | Imprimir'
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
        650041646F626520496D616765526561647971C9653C000002B64944415478DA
        62FCFFFF3F030CB8D61D4AE0E4638F6662647006721981F007C37F4686BF7FFF
        B0BF7FFB7FDA914EEB1C06340010408CC80678B51FFDB538C798950968024C18
        44BFFEF28B61D9990F0CCFEEFFF87EFBD62DC18353BC7FC2F400041013B269CC
        CC4C7F58999918EEBF676178F08199E1F65B46866BAF18181445B919024CA418
        1455393859F8B8E723EB0108201403FE839C0D1564626484E3E7EFBE33C8F3FC
        6648B514666066650E45D603104070039A9A9A38814630819CCCC20CC28C0CCC
        40AF80E83B40979C7CF487819D9599819185F15F626222274C1F400031413527
        03A95740EBD9405E67616402BB8215A89905E802763666060E20FE0F1405BA88
        EDE7CF9FAF424242407A1800028809A8D9555252728EB7B7370F131313C33F50
        C83242BCC0088C019021AC2C4C0C6CCCCC603926266686ACAC2C1E4545C5391E
        1E1EAE0001C40214EBB5B0B06010131363D0FF34956142E736065C6017101B03
        B1AA6A3643404000C3A3478FA6030410C800752D2D2DB0023F3F3F0675757506
        7CE0CA952B0C22222260BC66CD1A25800062F9FBF72F1B1083251F3C78009678
        F3E60D56CD20B9BB77EF32181B1B83F91F3F7E64040820963F7FFE30DCBB770F
        2C00D2080C20862F5FBE603580878787E1F5EBD770F5201A2080587EFFFECDF0
        E4C913B0C0B76FDF184006FEFAF50BAB0120B9AF5FBFC2D5830C030820B00130
        0D1C1C1C0C6BD7AE05B37FFCF80156FCF9F3679053C11894EC757474E0EA417A
        01028805C8F9F7E9D327263E3E3EB01734B5F5188445C4B0BAE0F5AB170C2D4D
        F50CEEEEEE0CCF9E3D63F8F7EF1F034000B100FD3C67DBB66D9640D374396DF3
        194ABD8D18BEFD02276B867F401BFFFEFDCFF01B18C87F818A2D2D4C1976BE92
        62C8CF8F05B9E61250C94A800042C98D49D34EFE656106A6A6FF28F9034E3202
        13D79F3FFFFECDCB366786C90304180072C1114B15D29D760000000049454E44
        AE426082}
      TabOrder = 1
      OnClick = bitbtn7Click
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
  end
  object wwDBGrid1: TwwDBGrid
    Left = 0
    Top = 0
    Width = 677
    Height = 317
    DittoAttributes.ShortCutDittoField = 0
    DittoAttributes.ShortCutDittoRecord = 0
    DittoAttributes.Options = []
    DisableThemesInTitle = False
    Selected.Strings = (
      'CODIGO'#9'6'#9'N'#250'mero'
      'DATA'#9'10'#9'Data'
      'NOME'#9'53'#9'Cliente'
      'TOTAL'#9'10'#9'Total'
      'FUNCI'#9'24'#9'Vendedor')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = dsorcamento
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    TabOrder = 1
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
  end
  object qrorcamento: TZQuery
    Connection = frmmodulo.econexao2
    SQL.Strings = (
      
        'select orc.*, cli.nome, cli.cpf, fun.nome funci from c000074 orc' +
        ', c000007 cli, c000008 fun'
      'where orc.codcliente = cli.codigo and '
      'orc.codvendedor = fun.codigo'
      'and'
      'orc.tipo = 9 order by codigo')
    Params = <>
    Left = 312
    Top = 64
    object qrorcamentoCODIGO: TStringField
      DisplayLabel = 'N'#250'mero'
      DisplayWidth = 6
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrorcamentoDATA: TDateTimeField
      DisplayLabel = 'Data'
      DisplayWidth = 10
      FieldName = 'DATA'
    end
    object qrorcamentoNOME: TStringField
      DisplayLabel = 'Cliente'
      DisplayWidth = 53
      FieldName = 'NOME'
      Size = 80
    end
    object qrorcamentoTOTAL: TFloatField
      DisplayLabel = 'Total'
      DisplayWidth = 10
      FieldName = 'TOTAL'
      DisplayFormat = '###,###,##0.00'
    end
    object qrorcamentoFUNCI: TStringField
      DisplayLabel = 'Vendedor'
      DisplayWidth = 24
      FieldName = 'FUNCI'
      Size = 80
    end
    object qrorcamentoCODVENDEDOR: TStringField
      DisplayLabel = 'Vendedor'
      DisplayWidth = 7
      FieldName = 'CODVENDEDOR'
      Visible = False
      Size = 6
    end
    object qrorcamentoCODCAIXA: TStringField
      FieldName = 'CODCAIXA'
      Visible = False
      Size = 6
    end
    object qrorcamentoCODCLIENTE: TStringField
      FieldName = 'CODCLIENTE'
      Visible = False
      Size = 6
    end
    object qrorcamentoOBS: TStringField
      FieldName = 'OBS'
      Visible = False
      Size = 50
    end
    object qrorcamentoMEIO_DINHEIRO: TFloatField
      FieldName = 'MEIO_DINHEIRO'
      Visible = False
    end
    object qrorcamentoMEIO_CHEQUEAV: TFloatField
      FieldName = 'MEIO_CHEQUEAV'
      Visible = False
    end
    object qrorcamentoMEIO_CHEQUEAP: TFloatField
      FieldName = 'MEIO_CHEQUEAP'
      Visible = False
    end
    object qrorcamentoMEIO_CARTAOCRED: TFloatField
      FieldName = 'MEIO_CARTAOCRED'
      Visible = False
    end
    object qrorcamentoMEIO_CARTAODEB: TFloatField
      FieldName = 'MEIO_CARTAODEB'
      Visible = False
    end
    object qrorcamentoMEIO_CREDIARIO: TFloatField
      FieldName = 'MEIO_CREDIARIO'
      Visible = False
    end
    object qrorcamentoSUBTOTAL: TFloatField
      FieldName = 'SUBTOTAL'
      Visible = False
    end
    object qrorcamentoDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      Visible = False
    end
    object qrorcamentoACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
      Visible = False
    end
    object qrorcamentoCUPOM_FISCAL: TIntegerField
      FieldName = 'CUPOM_FISCAL'
      Visible = False
    end
    object qrorcamentoNUMERO_CUPOM_FISCAL: TStringField
      FieldName = 'NUMERO_CUPOM_FISCAL'
      Visible = False
      Size = 10
    end
    object qrorcamentoRETIRADO: TStringField
      FieldName = 'RETIRADO'
      Visible = False
      Size = 50
    end
    object qrorcamentoTIPO: TIntegerField
      FieldName = 'TIPO'
      Visible = False
    end
    object qrorcamentoMEIO_CONVENIO: TFloatField
      FieldName = 'MEIO_CONVENIO'
      Visible = False
    end
    object qrorcamentoCPF: TStringField
      FieldName = 'CPF'
      Size = 18
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 256
    Top = 184
    object Imprimir1: TMenuItem
      Caption = 'Imprimir'
      ShortCut = 113
      OnClick = bitbtn7Click
    end
    object Sair1: TMenuItem
      Caption = 'Sair'
      ShortCut = 27
      OnClick = bfecharClick
    end
  end
  object qrorcamento_produto: TZQuery
    Connection = frmmodulo.econexao2
    Params = <>
    Left = 352
    Top = 64
  end
  object dsorcamento: TDataSource
    DataSet = qrorcamento
    Left = 384
    Top = 64
  end
  object QRORCAMENTO_RECEBER: TZQuery
    Connection = frmmodulo.econexao2
    Params = <>
    Left = 416
    Top = 64
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 10000
    OnTimer = Timer1Timer
    Left = 488
    Top = 216
  end
end
