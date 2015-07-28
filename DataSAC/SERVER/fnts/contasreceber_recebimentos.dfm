object frmcontasreceber_recebimentos: Tfrmcontasreceber_recebimentos
  Left = 365
  Top = 613
  Width = 449
  Height = 219
  Caption = 'Recebimentos'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object ViewSplit1: TViewSplit
    Left = 0
    Top = 147
    Width = 441
    Height = 3
    Cursor = crVSplit
    Align = alTop
  end
  object wwDBGrid1: TwwDBGrid
    Left = 0
    Top = 0
    Width = 441
    Height = 147
    ControlType.Strings = (
      'FILTRO;CheckBox;1;0'
      'SITUACAO;ImageIndex;Original Size'
      'situacao2;ImageIndex;Original Size')
    Selected.Strings = (
      'DATA'#9'14'#9'DATA'
      'VALOR_PAGO'#9'18'#9'VALOR - R$')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alTop
    DataSource = dscontasreceber_pgto
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    RowHeightPercent = 107
    TabOrder = 0
    TitleAlignment = taCenter
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -9
    TitleFont.Name = 'Verdana'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = True
    PaintOptions.AlternatingRowColor = 16053492
    PaintOptions.ActiveRecordColor = clRed
  end
  object BitBtn1: TBitBtn
    Left = 168
    Top = 154
    Width = 105
    Height = 25
    Caption = 'Fechar'
    TabOrder = 1
    OnClick = BitBtn1Click
    Glyph.Data = {
      DA050000424DDA05000000000000360000002800000019000000130000000100
      180000000000A4050000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFF00FFFFFF406B00406B00406B00406B00406B00406B00406B00406B
      00406B00406B00406B00406B00406B00406B00406B00406B00406B00406B0040
      6B00406B00406B00406B00406B00FFFFFF00FFFFFF406B00ECE3E0ECE2DFEBE2
      DFECE2DFECE2DFECE2DFECE3E0ECE2DFEBE2DFECE2DFECE3E0ECE3E0ECE2DFEB
      E2DFEBE2DFECE2DFECE2DFECE2DFECE2DFECE2DFECE2DF406B00FFFFFF00FFFF
      FF416C00ECE3E0539300538E004F87004C8000487900457200416C003F65003C
      61003B5D003A58003A5300395200374D00354B00354A00354A00354B00374E00
      ECE2DF416C00FFFFFF00FFFFFF406B00ECE2DF559700539200528D004F86004C
      7F00487700457000426B003F64003C5F003B5A003A5500385100374D00364B00
      354800344707354800354A00EBE2DF406B00FFFFFF00FFFFFF406B00ECE2DF5A
      9E00589900559500538F005089004D8100487900477400466E00476E003C6100
      3B5B003B5600395200374E003B5300354800344800354A00EBE1DE406B00FFFF
      FF00FFFFFF416C00ECE3E05EA300A2C36EFFFFFFFFFFFFFFFFFFFFFFFF699900
      9CB866FBFBFAFFFFFFD8DFCE5174003C5E008D9E65F4F4F2FFFFFFC8CEBB3B54
      00364B00EBE2DF416C00FFFFFF00FFFFFF406B00ECE2DF63A800A3C572FFFFFF
      BED39BAAC87BA9C6796EA400FDFDFCD1DDC27EA324FAFBFAB1C28C608200FFFF
      FFD3D9C7AAB58DFFFFFF92A071374E00EBE2DF406B00FFFFFF00FFFFFF416C00
      ECE3E068AD00A5C876FFFFFFA0C46D83B6327EB21B65A60082B22178AB00A6C2
      74FFFFFFC1D1A491AC59FFFFFF6A89283C5D009BAA765B7323385200EBE1DE41
      6C00FFFFFF00FFFFFF406B00ECE3E070B200A7C979FFFFFFFFFFFFFFFFFFEAF0
      E56AAE00A0C46DF4F8F4FFFFFFF3F6F275A400ADC481FFFFFF5C82003F64003C
      5E003A59003B5800EBE2DF406B00FFFFFF00FFFFFF406B00ECE3E074B426A7CA
      7AFFFFFF9DC56B85BA4683BA4372B31DF5F8F4E4ECDD9CC16598BD5B6FA4009A
      BA60FFFFFF87A545487200AFBE8C6C892E3C5E00ECE2DF406B00FFFFFF00FFFF
      FF416C00ECE3E077B736A7C97AFFFFFFE5EDDEDDE9D2DDE9D17EB83CD9E6CBE6
      EDDFCADBB0FFFFFF94BB54619B00F4F6F3FAFBFAEDEFE9FFFFFF7895383E6400
      ECE2DF416C00FFFFFF00FFFFFF406B00ECE2DF78B73A95C160BBD498BBD498BB
      D498BAD4987CB73982B93EB4CF8BC7D9AAA3C6725EA100589A006B9F00B3C98B
      C0CFA084A440457000436D00EBE2DF406B00FFFFFF00FFFFFF416C00ECE3E078
      B83B7BB93F7BB93F7AB83D79B83A78B73675B52C72B3186DB00067AD0063A800
      5FA2005A9D00559500518D004E84004B7E00487800467400EBE2DF416C00FFFF
      FF00FFFFFF406B00ECE2DF7AB83D7BB93F7AB83D7AB83C78B73676B62F73B422
      71B2006CAF0067AC0064A8005FA3005C9E00579800549100518C004E84004B7F
      004A7C00ECE2DF406B00FFFFFF00FFFFFF406B00ECE2DF7AB83D7AB83E7AB83C
      79B73877B63275B52A72B3186FB1006BAE0067AC0064A80060A4005DA1005A9C
      00569600539100518C004F86004E8300EBE2DF406B00FFFFFF00FFFFFF406B00
      EBE2DFEBE2DFEBE1DEEBE2DFEBE2DFEBE2DFEBE2DFEBE2DFEBE1DEEBE2DFEBE2
      DFEBE2DFEBE2DFEBE1DEEBE1DEEBE2DFEBE2DFEBE1DEEBE2DFEBE1DEEBE1DE40
      6B00FFFFFF00FFFFFF406B00406B00406B00406B00406B00406B00406B00406B
      00406B00406B00406B00406B00406B00406B00406B00406B00406B00406B0040
      6B00406B00406B00406B00406B00FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
  end
  object PMEIO: THeaderView
    Left = 249
    Top = 2
    Width = 173
    Height = 142
    AdaptiveColors = True
    BorderStyle = bsNone
    Caption = 'Meios '
    HeaderColor = clHighlight
    HeaderFont.Charset = ANSI_CHARSET
    HeaderFont.Color = clWindow
    HeaderFont.Height = -11
    HeaderFont.Name = 'Verdana'
    HeaderFont.Style = [fsBold]
    HeaderSize = 16
    ParentColor = False
    object Label1: TLabel
      Left = 8
      Top = 24
      Width = 53
      Height = 13
      Caption = 'Dinheiro:'
    end
    object Label2: TLabel
      Left = 8
      Top = 40
      Width = 69
      Height = 13
      Caption = 'Cheque AV:'
    end
    object Label3: TLabel
      Left = 8
      Top = 56
      Width = 68
      Height = 13
      Caption = 'Cheque AP:'
    end
    object Label4: TLabel
      Left = 8
      Top = 72
      Width = 44
      Height = 13
      Caption = 'Cart'#227'o:'
    end
    object Label5: TLabel
      Left = 8
      Top = 88
      Width = 69
      Height = 13
      Caption = 'Boleto/Dep:'
    end
    object DBText1: TDBText
      Left = 80
      Top = 24
      Width = 81
      Height = 17
      Alignment = taRightJustify
      DataField = 'DINHEIRO'
      DataSource = dscontasreceber_pgto
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 80
      Top = 40
      Width = 81
      Height = 17
      Alignment = taRightJustify
      DataField = 'CHEQUEAV'
      DataSource = dscontasreceber_pgto
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object DBText3: TDBText
      Left = 80
      Top = 56
      Width = 81
      Height = 17
      Alignment = taRightJustify
      DataField = 'CHEQUEAP'
      DataSource = dscontasreceber_pgto
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object DBText4: TDBText
      Left = 80
      Top = 72
      Width = 81
      Height = 17
      Alignment = taRightJustify
      DataField = 'CARTAO'
      DataSource = dscontasreceber_pgto
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object DBText5: TDBText
      Left = 80
      Top = 88
      Width = 81
      Height = 17
      Alignment = taRightJustify
      DataField = 'BOLETO'
      DataSource = dscontasreceber_pgto
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object DBCheckBox1: TDBCheckBox
      Left = 8
      Top = 120
      Width = 65
      Height = 17
      Caption = 'Caixa'
      DataField = 'CAIXA_BANCO'
      DataSource = dscontasreceber_pgto
      TabOrder = 0
      ValueChecked = '1'
      ValueUnchecked = '2'
    end
    object DBCheckBox2: TDBCheckBox
      Left = 72
      Top = 120
      Width = 65
      Height = 17
      Caption = 'Banco'
      DataField = 'CAIXA_BANCO'
      DataSource = dscontasreceber_pgto
      TabOrder = 1
      ValueChecked = '2'
      ValueUnchecked = '1'
    end
  end
  object dscontasreceber_pgto: TDataSource
    DataSet = frmcontasreceber.qrcontasreceber_pgto
    Left = 248
    Top = 168
  end
  object PopupMenu1: TPopupMenu
    Left = 152
    Top = 88
    object Fechar1: TMenuItem
      Caption = 'Fechar'
      ShortCut = 27
      OnClick = BitBtn1Click
    end
  end
end
