object frmecf_registro60: Tfrmecf_registro60
  Left = 289
  Top = 170
  Width = 1237
  Height = 764
  Caption = 'frmecf_registro60'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Timeout: TLabel
    Left = 256
    Top = 12
    Width = 38
    Height = 13
    Caption = '&Timeout'
  end
  object LabelPorta: TLabel
    Left = 171
    Top = 67
    Width = 5
    Height = 13
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label13: TLabel
    Left = 426
    Top = 11
    Width = 26
    Height = 13
    Caption = 'COO:'
  end
  object bconfirma: TAdvGlowButton
    Left = 568
    Top = 8
    Width = 137
    Height = 24
    Caption = 'Aliquotas'
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
      650041646F626520496D616765526561647971C9653C000001F54944415478DA
      62FCFFFF3F0325002080981828040001C40263FC7FB0FDFF9FCF6F18FEFFFFC5
      F0FFCF6F86FF7F81F80F88FD13C8FEC9C0F0FB07C3DF3F3F80FCEF60367FD022
      46903E80004218F0F70F03AB4E04860D201F825532C2041818DEAF8E84CB0304
      10DC809F1F9E32700255FFFFF71D22C008D2FC0FCCF8CF80308191899DE1FFEF
      EF7003000208E1823F7F18FEFD7AC1F0E7F34906867F3FC15E01D3FF4034D0E9
      60FC9D814D2490E1DFEF6F7003000208C90B407F32FC012B045A01D584AC1984
      BF816C62F8FF0BE1028000821BF0E7CB5B8893516CFECEF00F6420D47606B0F7
      8006FCF90A37002080E006FCFBFB83E1C7EDC30C7F7EDE6160F8FB0B6CD3DF1F
      9F1838E4C52036830CF90B340068097218000410DC80BFDFDF32FCF9F49481C7
      201A641C303C1E327C3EBF12A809E4EC6F40FA07C4052083910C000820784262
      04C6C0EF579718DEEF2961F8FBED36D0C4DF0CFF406101D70C71C5BFFF7F515C
      0010404CC8F1CD6B16CFF0FBC36B860F87FAA19A7FC0358303F13F28A0FF4212
      1314000410DC0B0CC054C6C8CCC4C06D94CCF0FDDA3686CFC73631300BEB3370
      48D8013DF41F144DE00004790F943A61002080186199E9F512BFFFFF7E03431F
      945C814EFCF3FD25D8814C8C8C6031865F3FC131024EDA7FFE3228B4FD07A72C
      800062A43437020410C5B91120C000B9B73A5C2CDB361E0000000049454E44AE
      426082}
    TabOrder = 0
    OnClick = bconfirmaClick
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
  object ProgressBar1: TProgressBar
    Left = 0
    Top = 692
    Width = 1221
    Height = 17
    Align = alBottom
    Step = 1
    TabOrder = 1
    Visible = False
  end
  object Barra: TStatusBar
    Left = 0
    Top = 709
    Width = 1221
    Height = 19
    Panels = <
      item
        Width = 100
      end
      item
        Width = 100
      end
      item
        Width = 210
      end
      item
        Width = 50
      end>
  end
  object babrir: TBitBtn
    Left = 344
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Abrir Porta'
    TabOrder = 3
    OnClick = babrirClick
  end
  object Tempo: TMaskEdit
    Left = 302
    Top = 8
    Width = 36
    Height = 21
    TabStop = False
    EditMask = '99;0;_'
    MaxLength = 2
    TabOrder = 4
    Text = '10'
  end
  object TextoOnLine: TRichEdit
    Left = 600
    Top = 64
    Width = 575
    Height = 473
    Align = alCustom
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Lucida Console'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    ScrollBars = ssBoth
    TabOrder = 5
    Visible = False
    WantReturns = False
  end
  object Memo1: TMemo
    Left = 8
    Top = 72
    Width = 561
    Height = 425
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Lucida Console'
    Font.Style = []
    Lines.Strings = (
      '')
    ParentFont = False
    TabOrder = 6
  end
  object edataINI: TEdit
    Left = 456
    Top = 8
    Width = 102
    Height = 21
    TabOrder = 7
    Text = 'edataINI'
    OnExit = edataINIExit
  end
  object BitBtn1: TBitBtn
    Left = 168
    Top = 8
    Width = 75
    Height = 25
    Caption = '60A'
    TabOrder = 8
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 168
    Top = 32
    Width = 75
    Height = 25
    Caption = '60M'
    TabOrder = 9
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 344
    Top = 40
    Width = 75
    Height = 25
    Caption = 'Fechar Porta'
    TabOrder = 10
    OnClick = BitBtn3Click
  end
  object BitBtn4: TBitBtn
    Left = 8
    Top = 8
    Width = 121
    Height = 25
    Caption = 'Gerar Redu'#231#227'o'
    TabOrder = 11
    OnClick = BitBtn4Click
  end
  object BitBtn5: TBitBtn
    Left = 8
    Top = 40
    Width = 121
    Height = 25
    Caption = 'Atualiza Redu'#231#227'o'
    TabOrder = 12
  end
  object edataFIM: TEdit
    Left = 456
    Top = 32
    Width = 102
    Height = 21
    TabOrder = 13
    Text = 'edataFIM'
    OnExit = edataINIExit
  end
  object RzDBGrid1: TRzDBGrid
    Left = 8
    Top = 504
    Width = 449
    Height = 182
    DataSource = dsreducao
    DefaultDrawing = True
    TabOrder = 14
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object qrreducao: TVirtualTable
    Active = True
    FieldDefs = <
      item
        Name = 'data'
        DataType = ftDate
      end
      item
        Name = 'coo_inicial'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'coo'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'aliquota1'
        DataType = ftFloat
      end
      item
        Name = 'base1'
        DataType = ftFloat
      end
      item
        Name = 'valor1'
        DataType = ftFloat
      end
      item
        Name = 'aliquota2'
        DataType = ftFloat
      end
      item
        Name = 'base2'
        DataType = ftFloat
      end
      item
        Name = 'valor2'
        DataType = ftFloat
      end
      item
        Name = 'aliquota3'
        DataType = ftFloat
      end
      item
        Name = 'base3'
        DataType = ftFloat
      end
      item
        Name = 'valor3'
        DataType = ftFloat
      end
      item
        Name = 'aliquota4'
        DataType = ftFloat
      end
      item
        Name = 'base4'
        DataType = ftFloat
      end
      item
        Name = 'valor4'
        DataType = ftFloat
      end
      item
        Name = 'aliquota5'
        DataType = ftFloat
      end
      item
        Name = 'base5'
        DataType = ftFloat
      end
      item
        Name = 'valor5'
        DataType = ftFloat
      end>
    Left = 240
    Top = 104
    Data = {
      0300120004006461746109000000000000000B00636F6F5F696E696369616C01
      000600000000000300636F6F01000600000000000900616C6971756F74613106
      00000000000000050062617365310600000000000000060076616C6F72310600
      0000000000000900616C6971756F746132060000000000000005006261736532
      0600000000000000060076616C6F723206000000000000000900616C6971756F
      7461330600000000000000050062617365330600000000000000060076616C6F
      723306000000000000000900616C6971756F7461340600000000000000050062
      617365340600000000000000060076616C6F723406000000000000000900616C
      6971756F74613506000000000000000500626173653506000000000000000600
      76616C6F72350600000000000000000000000000}
    object qrreducaodata: TDateField
      FieldName = 'data'
    end
    object qrreducaocoo_inicial: TStringField
      FieldName = 'coo_inicial'
      Size = 6
    end
    object qrreducaocoo: TStringField
      FieldName = 'coo'
      Size = 6
    end
    object qrreducaoaliquota1: TFloatField
      FieldName = 'aliquota1'
      DisplayFormat = '###,###,##0.00'
    end
    object qrreducaobase1: TFloatField
      FieldName = 'base1'
      DisplayFormat = '###,###,##0.00'
    end
    object qrreducaovalor1: TFloatField
      FieldName = 'valor1'
      DisplayFormat = '###,###,##0.00'
    end
    object qrreducaoaliquota2: TFloatField
      FieldName = 'aliquota2'
      DisplayFormat = '###,###,##0.00'
    end
    object qrreducaobase2: TFloatField
      FieldName = 'base2'
      DisplayFormat = '###,###,##0.00'
    end
    object qrreducaovalor2: TFloatField
      FieldName = 'valor2'
      DisplayFormat = '###,###,##0.00'
    end
    object qrreducaoaliquota3: TFloatField
      FieldName = 'aliquota3'
      DisplayFormat = '###,###,##0.00'
    end
    object qrreducaobase3: TFloatField
      FieldName = 'base3'
      DisplayFormat = '###,###,##0.00'
    end
    object qrreducaovalor3: TFloatField
      FieldName = 'valor3'
      DisplayFormat = '###,###,##0.00'
    end
    object qrreducaoaliquota4: TFloatField
      FieldName = 'aliquota4'
      DisplayFormat = '###,###,##0.00'
    end
    object qrreducaobase4: TFloatField
      FieldName = 'base4'
      DisplayFormat = '###,###,##0.00'
    end
    object qrreducaovalor4: TFloatField
      FieldName = 'valor4'
      DisplayFormat = '###,###,##0.00'
    end
    object qrreducaoaliquota5: TFloatField
      FieldName = 'aliquota5'
      DisplayFormat = '###,###,##0.00'
    end
    object qrreducaobase5: TFloatField
      FieldName = 'base5'
      DisplayFormat = '###,###,##0.00'
    end
    object qrreducaovalor5: TFloatField
      FieldName = 'valor5'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object dsreducao: TDataSource
    DataSet = qrreducao
    Left = 280
    Top = 104
  end
end
