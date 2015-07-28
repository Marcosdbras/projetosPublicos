object frmProduto_consultaserial: TfrmProduto_consultaserial
  Left = 333
  Top = 313
  BorderStyle = bsToolWindow
  Caption = 'PRODUTO | Consulta Serial'
  ClientHeight = 255
  ClientWidth = 477
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
    Top = 41
    Width = 477
    Height = 2
    Align = alTop
  end
  object Bevel2: TBevel
    Left = 0
    Top = 222
    Width = 477
    Height = 2
    Align = alBottom
  end
  object Label2: TLabel
    Left = 8
    Top = 54
    Width = 42
    Height = 13
    Caption = 'Produto:'
  end
  object Bevel3: TBevel
    Left = 54
    Top = 54
    Width = 50
    Height = 15
  end
  object Bevel4: TBevel
    Left = 111
    Top = 54
    Width = 355
    Height = 15
  end
  object lcodigo: TLabel
    Left = 60
    Top = 55
    Width = 42
    Height = 13
    AutoSize = False
    Caption = '000000'
    Transparent = True
  end
  object lproduto: TLabel
    Left = 116
    Top = 55
    Width = 338
    Height = 13
    AutoSize = False
    Caption = '000000'
    Transparent = True
  end
  object Label5: TLabel
    Left = 8
    Top = 73
    Width = 43
    Height = 13
    Caption = 'Unidade:'
  end
  object Bevel5: TBevel
    Left = 54
    Top = 73
    Width = 50
    Height = 15
  end
  object lun: TLabel
    Left = 57
    Top = 74
    Width = 42
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = 'UN'
    Transparent = True
  end
  object Label7: TLabel
    Left = 112
    Top = 73
    Width = 33
    Height = 13
    Caption = 'Marca:'
  end
  object Bevel6: TBevel
    Left = 162
    Top = 73
    Width = 304
    Height = 15
  end
  object lmarca: TLabel
    Left = 167
    Top = 74
    Width = 291
    Height = 13
    AutoSize = False
    Caption = 'UN'
    Transparent = True
  end
  object Label9: TLabel
    Left = 8
    Top = 105
    Width = 82
    Height = 13
    Alignment = taRightJustify
    Caption = 'Data da Compra:'
  end
  object Bevel7: TBevel
    Left = 94
    Top = 105
    Width = 80
    Height = 15
  end
  object lcompra: TLabel
    Left = 97
    Top = 106
    Width = 74
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = '01/01/0001'
    Transparent = True
  end
  object Label11: TLabel
    Left = 198
    Top = 105
    Width = 56
    Height = 13
    Caption = 'Nota Fiscal:'
  end
  object Bevel8: TBevel
    Left = 260
    Top = 105
    Width = 59
    Height = 15
  end
  object lnf: TLabel
    Left = 263
    Top = 106
    Width = 56
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = '000001'
    Transparent = True
  end
  object Label13: TLabel
    Left = 336
    Top = 105
    Width = 62
    Height = 13
    Caption = 'Pre'#231'o Custo:'
    Visible = False
  end
  object Bevel9: TBevel
    Left = 400
    Top = 105
    Width = 65
    Height = 15
    Visible = False
  end
  object lcusto: TLabel
    Left = 396
    Top = 106
    Width = 65
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = '1.000,00'
    Transparent = True
    Visible = False
  end
  object Label15: TLabel
    Left = 31
    Top = 124
    Width = 59
    Height = 13
    Alignment = taRightJustify
    Caption = 'Fornecedor:'
  end
  object Bevel10: TBevel
    Left = 94
    Top = 124
    Width = 371
    Height = 15
  end
  object lfornecedor: TLabel
    Left = 99
    Top = 125
    Width = 363
    Height = 13
    AutoSize = False
    Caption = '01/01/0001'
    Transparent = True
  end
  object Label17: TLabel
    Left = 45
    Top = 154
    Width = 45
    Height = 13
    Alignment = taRightJustify
    Caption = 'Situa'#231#227'o:'
  end
  object Bevel11: TBevel
    Left = 94
    Top = 153
    Width = 131
    Height = 15
  end
  object lestoque: TLabel
    Left = 97
    Top = 154
    Width = 120
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = 'EM ESTOQUE'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label19: TLabel
    Left = 15
    Top = 177
    Width = 75
    Height = 13
    Alignment = taRightJustify
    Caption = 'Data da Venda:'
  end
  object Bevel12: TBevel
    Left = 94
    Top = 177
    Width = 80
    Height = 15
  end
  object lvenda: TLabel
    Left = 97
    Top = 178
    Width = 74
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = '01/01/0001'
    Transparent = True
  end
  object Label21: TLabel
    Left = 219
    Top = 177
    Width = 41
    Height = 13
    Caption = 'N'#250'mero:'
  end
  object Bevel13: TBevel
    Left = 260
    Top = 177
    Width = 61
    Height = 15
  end
  object lnumero: TLabel
    Left = 263
    Top = 178
    Width = 58
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = '000001'
    Transparent = True
  end
  object Label23: TLabel
    Left = 368
    Top = 177
    Width = 28
    Height = 13
    Caption = 'Valor:'
  end
  object Bevel14: TBevel
    Left = 400
    Top = 177
    Width = 65
    Height = 15
  end
  object lvalor: TLabel
    Left = 396
    Top = 178
    Width = 65
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = '1.000,00'
    Transparent = True
  end
  object Label25: TLabel
    Left = 53
    Top = 196
    Width = 37
    Height = 13
    Alignment = taRightJustify
    Caption = 'Cliente:'
  end
  object Bevel15: TBevel
    Left = 94
    Top = 196
    Width = 371
    Height = 15
  end
  object lcliente: TLabel
    Left = 99
    Top = 197
    Width = 363
    Height = 13
    AutoSize = False
    Caption = '01/01/0001'
    Transparent = True
  end
  object Panel1: TPanel
    Left = 0
    Top = 224
    Width = 477
    Height = 31
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object bfechar: TAdvGlowButton
      Left = 181
      Top = 3
      Width = 114
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
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 477
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 133
      Height = 13
      Caption = 'Informe o N'#250'mero de S'#233'rie:'
    end
    object eloc: TRzEdit
      Left = 160
      Top = 13
      Width = 305
      Height = 21
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      FocusColor = 10550008
      ParentFont = False
      TabOrder = 0
      OnKeyPress = elocKeyPress
    end
  end
  object ptampa: TFlatPanel
    Left = 456
    Top = 219
    Width = 477
    Height = 179
    ParentColor = True
    ColorHighLight = clBtnFace
    ColorShadow = clBtnFace
    TabOrder = 2
    UseDockManager = True
  end
  object PopupMenu1: TPopupMenu
    Left = 400
    Top = 216
    object Sair1: TMenuItem
      Caption = 'Sair'
      ShortCut = 27
      OnClick = Sair1Click
    end
  end
  object qrserial_produto: TZQuery
    Connection = frmmodulo.Conexao
    CachedUpdates = False
    Active = True
    SQL.Strings = (
      'select seria.*, produt.produto, produt.codmarca, produt.unidade,'
      'produt.precovenda prv from c000022 seria, c000025 produt'
      'where seria.codproduto = produt.codigo')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 312
    Top = 88
    object qrserial_produtoCODMARCA: TStringField
      FieldName = 'CODMARCA'
      Size = 6
    end
    object qrserial_produtomarca: TStringField
      FieldKind = fkLookup
      FieldName = 'marca'
      LookupDataSet = frmmodulo.qrmarca
      LookupKeyFields = 'codigo'
      LookupResultField = 'NOME'
      KeyFields = 'codmarca'
      Size = 50
      Lookup = True
    end
    object qrserial_produtoCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrserial_produtoCODPRODUTO: TStringField
      FieldName = 'CODPRODUTO'
      Size = 6
    end
    object qrserial_produtoSERIAL: TStringField
      FieldName = 'SERIAL'
      Size = 30
    end
    object qrserial_produtoESTOQUE: TFloatField
      FieldName = 'ESTOQUE'
    end
    object qrserial_produtoCODCLIENTE: TStringField
      FieldName = 'CODCLIENTE'
      Size = 6
    end
    object qrserial_produtoPRECOCUSTO: TFloatField
      FieldName = 'PRECOCUSTO'
    end
    object qrserial_produtoPRECOVENDA: TFloatField
      FieldName = 'PRECOVENDA'
    end
    object qrserial_produtoDATAVENDA: TDateTimeField
      FieldName = 'DATAVENDA'
    end
    object qrserial_produtoSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrserial_produtoCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 80
    end
    object qrserial_produtoCODNOTA: TStringField
      FieldName = 'CODNOTA'
      Size = 6
    end
    object qrserial_produtoCODITEM: TStringField
      FieldName = 'CODITEM'
      Size = 6
    end
    object qrserial_produtoDATACOMPRA: TDateTimeField
      FieldName = 'DATACOMPRA'
    end
    object qrserial_produtoNUMERONOTA: TStringField
      FieldName = 'NUMERONOTA'
      Size = 6
    end
    object qrserial_produtoCODFORNECEDOR: TStringField
      FieldName = 'CODFORNECEDOR'
      Size = 6
    end
    object qrserial_produtoCODVENDA_ITEM: TStringField
      FieldName = 'CODVENDA_ITEM'
      Size = 6
    end
    object qrserial_produtoFILTRO: TIntegerField
      FieldName = 'FILTRO'
    end
    object qrserial_produtoCODVENDA: TStringField
      FieldName = 'CODVENDA'
      Size = 6
    end
    object qrserial_produtoPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Size = 60
    end
    object qrserial_produtoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 2
    end
    object qrserial_produtoPRV: TFloatField
      FieldName = 'PRV'
    end
  end
end
