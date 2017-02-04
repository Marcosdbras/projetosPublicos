object frmtemp: Tfrmtemp
  Left = -130
  Top = 91
  Width = 1036
  Height = 780
  Caption = 'frmtemp'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object rrecibo: TQuickRep
    Left = 68
    Top = 17
    Width = 794
    Height = 561
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = Custom
    Page.Values = (
      60.000000000000000000
      1485.000000000000000000
      60.000000000000000000
      2100.000000000000000000
      100.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.OutputBin = Auto
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.UseStandardprinter = False
    PrinterSettings.UseCustomBinCode = False
    PrinterSettings.CustomBinCode = 0
    PrinterSettings.ExtendedDuplex = 0
    PrinterSettings.UseCustomPaperCode = False
    PrinterSettings.CustomPaperCode = 0
    PrinterSettings.PrintMetaFile = False
    PrinterSettings.PrintQuality = 0
    PrinterSettings.Collate = 0
    PrinterSettings.ColorOption = 0
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsNormal
    PrevInitialZoom = qrZoomToFit
    PreviewDefaultSaveType = stQRP
    object QRShape30: TQRShape
      Left = 37
      Top = 40
      Width = 2
      Height = 335
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        886.354166666666900000
        97.895833333333340000
        105.833333333333300000
        5.291666666666667000)
      Pen.Width = 2
      Shape = qrsVertLine
      VertAdjust = 0
    end
    object QRShape36: TQRShape
      Left = 756
      Top = 40
      Width = 2
      Height = 336
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        889.000000000000000000
        2000.250000000000000000
        105.833333333333300000
        5.291666666666667000)
      Pen.Width = 2
      Shape = qrsVertLine
      VertAdjust = 0
    end
    object QRBand3: TQRBand
      Left = 38
      Top = 23
      Width = 718
      Height = 359
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        949.854166666666800000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbTitle
      object QRLabel10: TQRLabel
        Left = 8
        Top = 5
        Width = 128
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          13.229166666666670000
          338.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'RECIBO DE PAGAMENTO'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object QRLabel21: TQRLabel
        Left = 535
        Top = 5
        Width = 34
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1415.520833333333000000
          13.229166666666670000
          89.958333333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'DATA:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object QRShape20: TQRShape
        Left = 586
        Top = 2
        Width = 121
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333300000
          1550.458333333330000000
          5.291666666666670000
          320.145833333333000000)
        Pen.Width = 2
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape21: TQRShape
        Left = 0
        Top = 24
        Width = 719
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.291666666666670000
          0.000000000000000000
          63.500000000000000000
          1902.354166666670000000)
        Pen.Width = 2
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRSysData1: TQRSysData
        Left = 590
        Top = 3
        Width = 66
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1561.041666666667000000
          7.937500000000000000
          174.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRShape1: TQRShape
        Left = 536
        Top = 34
        Width = 169
        Height = 39
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          103.187500000000000000
          1418.166666666667000000
          89.958333333333340000
          447.145833333333400000)
        Pen.Width = 2
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel1: TQRLabel
        Left = 543
        Top = 36
        Width = 39
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1436.687500000000000000
          95.250000000000000000
          103.187500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'VALOR'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object rvalor: TQRLabel
        Left = 544
        Top = 48
        Width = 153
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666680000
          1439.333333333333000000
          127.000000000000000000
          404.812500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '100,00'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 14
      end
      object QRLabel3: TQRLabel
        Left = 64
        Top = 96
        Width = 112
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          169.333333333333300000
          254.000000000000000000
          296.333333333333400000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Recebemos de '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object QRLabel4: TQRLabel
        Left = 64
        Top = 120
        Width = 122
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          169.333333333333300000
          317.500000000000000000
          322.791666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'a import'#226'ncia de:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object QRLabel5: TQRLabel
        Left = 64
        Top = 168
        Width = 272
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          169.333333333333300000
          444.500000000000000000
          719.666666666666800000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'referente ao pagamento de presta'#231#245'es'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object QRLabel6: TQRLabel
        Left = 64
        Top = 232
        Width = 284
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          169.333333333333300000
          613.833333333333400000
          751.416666666666800000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Para maior clareza firmamos o presente.'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object rdata: TQRLabel
        Left = 296
        Top = 256
        Width = 404
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          783.166666666666800000
          677.333333333333400000
          1068.916666666667000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'S'#227'o Mateus/ES, 01 de fevereiro de 2006.'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object rextenso: TQRLabel
        Left = 64
        Top = 144
        Width = 641
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          169.333333333333300000
          381.000000000000000000
          1695.979166666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '(Cem reais)'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object rcliente: TQRLabel
        Left = 184
        Top = 96
        Width = 529
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          486.833333333333400000
          254.000000000000000000
          1399.645833333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'NOME DO CLIENTE'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object QRShape2: TQRShape
        Left = 182
        Top = 320
        Width = 377
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          481.541666666666700000
          846.666666666666600000
          997.479166666666900000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel11: TQRLabel
        Left = 298
        Top = 324
        Width = 128
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          788.458333333333400000
          857.250000000000000000
          338.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Assinatura do Funcion'#225'rio'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
    end
    object QRShape22: TQRShape
      Left = 37
      Top = 369
      Width = 720
      Height = 12
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        31.750000000000000000
        97.895833333333340000
        976.312500000000000000
        1905.000000000000000000)
      Pen.Mode = pmNot
      Pen.Width = 2
      Shape = qrsHorLine
      VertAdjust = 0
    end
  end
  object rextrato: TQuickRep
    Left = 128
    Top = 168
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = A4
    Page.Values = (
      100.000000000000000000
      2970.000000000000000000
      100.000000000000000000
      2100.000000000000000000
      100.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.OutputBin = Auto
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.UseStandardprinter = False
    PrinterSettings.UseCustomBinCode = False
    PrinterSettings.CustomBinCode = 0
    PrinterSettings.ExtendedDuplex = 0
    PrinterSettings.UseCustomPaperCode = False
    PrinterSettings.CustomPaperCode = 0
    PrinterSettings.PrintMetaFile = False
    PrinterSettings.PrintQuality = 0
    PrinterSettings.Collate = 0
    PrinterSettings.ColorOption = 0
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsNormal
    PrevInitialZoom = qrZoomToFit
    PreviewDefaultSaveType = stQRP
    object QRBand1: TQRBand
      Left = 38
      Top = 38
      Width = 718
      Height = 115
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        304.270833333333400000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbTitle
      object QRLabel2: TQRLabel
        Left = 8
        Top = 24
        Width = 353
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666680000
          21.166666666666670000
          63.500000000000000000
          933.979166666666600000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'EXTRATO DE D'#201'BITO'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 14
      end
      object QRLabel7: TQRLabel
        Left = 88
        Top = 48
        Width = 36
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          232.833333333333400000
          127.000000000000000000
          95.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Data:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object lempresa: TQRLabel
        Left = 8
        Top = 8
        Width = 353
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          21.166666666666670000
          933.979166666666600000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'SUPERMERCADO MAR AZUL'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRShape3: TQRShape
        Left = 0
        Top = 94
        Width = 377
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          248.708333333333300000
          997.479166666666900000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape4: TQRShape
        Left = 0
        Top = 110
        Width = 377
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          291.041666666666700000
          997.479166666666900000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel12: TQRLabel
        Left = 8
        Top = 94
        Width = 81
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          248.708333333333300000
          214.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Dt. Compra'
        Color = clWhite
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel13: TQRLabel
        Left = 104
        Top = 94
        Width = 81
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          275.166666666666700000
          248.708333333333300000
          214.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Vencimento'
        Color = clWhite
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel14: TQRLabel
        Left = 208
        Top = 94
        Width = 65
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          550.333333333333400000
          248.708333333333300000
          171.979166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Valor-R$'
        Color = clWhite
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel15: TQRLabel
        Left = 296
        Top = 94
        Width = 81
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          783.166666666666800000
          248.708333333333300000
          214.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'L'#237'quido-R$'
        Color = clWhite
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRSysData2: TQRSysData
        Left = 136
        Top = 48
        Width = 78
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          359.833333333333400000
          127.000000000000000000
          206.375000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsDateTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        FontSize = 8
      end
      object QRShape6: TQRShape
        Left = 0
        Top = 70
        Width = 377
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          185.208333333333300000
          997.479166666666900000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel8: TQRLabel
        Left = 8
        Top = 74
        Width = 65
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          195.791666666666700000
          171.979166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Cliente:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object lcliente: TQRLabel
        Left = 80
        Top = 74
        Width = 297
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          211.666666666666700000
          195.791666666666700000
          785.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Cliente:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
    end
    object QRBand2: TQRBand
      Left = 38
      Top = 153
      Width = 718
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        42.333333333333340000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRDBText1: TQRDBText
        Left = 8
        Top = 0
        Width = 97
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          0.000000000000000000
          256.645833333333400000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataField = 'DATA_EMISSAO'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText2: TQRDBText
        Left = 104
        Top = 0
        Width = 121
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          275.166666666666700000
          0.000000000000000000
          320.145833333333400000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataField = 'DATA_VENCIMENTO'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText3: TQRDBText
        Left = 184
        Top = 0
        Width = 89
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          486.833333333333400000
          0.000000000000000000
          235.479166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataField = 'VALOR_ATUAL'
        Mask = '###,###,##0.00'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText4: TQRDBText
        Left = 288
        Top = 0
        Width = 89
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          762.000000000000000000
          0.000000000000000000
          235.479166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataField = 'RESTANTE'
        Mask = '###,###,##0.00'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
    end
    object QRBand4: TQRBand
      Left = 38
      Top = 169
      Width = 718
      Height = 24
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        63.500000000000000000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      object QRShape5: TQRShape
        Left = 0
        Top = 2
        Width = 377
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          5.291666666666667000
          997.479166666666900000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object lvalor: TQRLabel
        Left = 184
        Top = 3
        Width = 89
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          486.833333333333400000
          7.937500000000000000
          235.479166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'lvalor'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object lliquido: TQRLabel
        Left = 288
        Top = 3
        Width = 89
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          762.000000000000000000
          7.937500000000000000
          235.479166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'lvalor'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
    end
  end
  object rextrato2: TQuickRep
    Left = 344
    Top = 341
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = A4
    Page.Values = (
      100.000000000000000000
      2970.000000000000000000
      100.000000000000000000
      2100.000000000000000000
      100.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.OutputBin = Auto
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.UseStandardprinter = False
    PrinterSettings.UseCustomBinCode = False
    PrinterSettings.CustomBinCode = 0
    PrinterSettings.ExtendedDuplex = 0
    PrinterSettings.UseCustomPaperCode = False
    PrinterSettings.CustomPaperCode = 0
    PrinterSettings.PrintMetaFile = False
    PrinterSettings.PrintQuality = 0
    PrinterSettings.Collate = 0
    PrinterSettings.ColorOption = 0
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsNormal
    PrevInitialZoom = qrZoomToFit
    PreviewDefaultSaveType = stQRP
    object QRBand5: TQRBand
      Left = 38
      Top = 38
      Width = 718
      Height = 115
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        304.270833333333400000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbTitle
      object QRLabel9: TQRLabel
        Left = 0
        Top = 24
        Width = 713
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666680000
          0.000000000000000000
          63.500000000000000000
          1886.479166666667000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'EXTRATO DE D'#201'BITO'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 14
      end
      object QRLabel16: TQRLabel
        Left = 296
        Top = 48
        Width = 36
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          783.166666666666800000
          127.000000000000000000
          95.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Data:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object lempresa2: TQRLabel
        Left = 8
        Top = 8
        Width = 704
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          21.166666666666670000
          1862.666666666667000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'SUPERMERCADO MAR AZUL'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRShape7: TQRShape
        Left = 0
        Top = 94
        Width = 719
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          248.708333333333300000
          1902.354166666667000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape8: TQRShape
        Left = 0
        Top = 110
        Width = 719
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          291.041666666666700000
          1902.354166666667000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel18: TQRLabel
        Left = 8
        Top = 94
        Width = 81
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          248.708333333333300000
          214.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Dt. Compra'
        Color = clWhite
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel19: TQRLabel
        Left = 104
        Top = 94
        Width = 81
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          275.166666666666700000
          248.708333333333300000
          214.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Vencimento'
        Color = clWhite
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel20: TQRLabel
        Left = 208
        Top = 94
        Width = 65
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          550.333333333333400000
          248.708333333333300000
          171.979166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Valor-R$'
        Color = clWhite
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel22: TQRLabel
        Left = 632
        Top = 94
        Width = 81
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1672.166666666667000000
          248.708333333333300000
          214.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'L'#237'quido-R$'
        Color = clWhite
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRSysData3: TQRSysData
        Left = 344
        Top = 48
        Width = 78
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          910.166666666666600000
          127.000000000000000000
          206.375000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsDateTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        FontSize = 8
      end
      object QRShape9: TQRShape
        Left = 0
        Top = 72
        Width = 721
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          190.500000000000000000
          1907.645833333333000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel23: TQRLabel
        Left = 8
        Top = 74
        Width = 65
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          195.791666666666700000
          171.979166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Cliente:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object lcliente2: TQRLabel
        Left = 80
        Top = 74
        Width = 297
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          211.666666666666700000
          195.791666666666700000
          785.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Cliente:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel27: TQRLabel
        Left = 288
        Top = 94
        Width = 89
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          762.000000000000000000
          248.708333333333300000
          235.479166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Vlr.Pago-R$'
        Color = clWhite
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel28: TQRLabel
        Left = 384
        Top = 94
        Width = 89
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1016.000000000000000000
          248.708333333333300000
          235.479166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Restante-R$'
        Color = clWhite
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel29: TQRLabel
        Left = 480
        Top = 94
        Width = 65
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1270.000000000000000000
          248.708333333333300000
          171.979166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Dias At.'
        Color = clWhite
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel30: TQRLabel
        Left = 552
        Top = 94
        Width = 65
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1460.500000000000000000
          248.708333333333300000
          171.979166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Juros-R$'
        Color = clWhite
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
    end
    object QRBand6: TQRBand
      Left = 38
      Top = 153
      Width = 718
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        42.333333333333340000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRDBText5: TQRDBText
        Left = 8
        Top = 0
        Width = 97
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          0.000000000000000000
          256.645833333333400000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataField = 'DATA_EMISSAO'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText6: TQRDBText
        Left = 104
        Top = 0
        Width = 121
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          275.166666666666700000
          0.000000000000000000
          320.145833333333400000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataField = 'DATA_VENCIMENTO'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText7: TQRDBText
        Left = 184
        Top = 0
        Width = 89
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          486.833333333333400000
          0.000000000000000000
          235.479166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataField = 'VALOR_ORIGINAL'
        Mask = '###,###,##0.00'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText8: TQRDBText
        Left = 384
        Top = 0
        Width = 89
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1016.000000000000000000
          0.000000000000000000
          235.479166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataField = 'RESTANTE'
        Mask = '###,###,##0.00'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText9: TQRDBText
        Left = 288
        Top = 0
        Width = 89
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          762.000000000000000000
          0.000000000000000000
          235.479166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataField = 'VALOR_PAGO'
        Mask = '###,###,##0.00'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText10: TQRDBText
        Left = 472
        Top = 0
        Width = 73
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1248.833333333333000000
          0.000000000000000000
          193.145833333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataField = 'DIAS'
        Mask = '###,###,##0.00'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText11: TQRDBText
        Left = 528
        Top = 0
        Width = 89
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1397.000000000000000000
          0.000000000000000000
          235.479166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataField = 'juros'
        Mask = '###,###,##0.00'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText12: TQRDBText
        Left = 624
        Top = 0
        Width = 89
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1651.000000000000000000
          0.000000000000000000
          235.479166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataField = 'VALOR_ATUAL'
        Mask = '###,###,##0.00'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
    end
    object QRBand7: TQRBand
      Left = 38
      Top = 169
      Width = 718
      Height = 24
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        63.500000000000000000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      object QRShape10: TQRShape
        Left = 0
        Top = 2
        Width = 717
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          5.291666666666667000
          1897.062500000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object lvalor_original: TQRLabel
        Left = 184
        Top = 3
        Width = 89
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          486.833333333333400000
          7.937500000000000000
          235.479166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'lvalor'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object lvalor_atual: TQRLabel
        Left = 624
        Top = 3
        Width = 89
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1651.000000000000000000
          7.937500000000000000
          235.479166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'lvalor'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object ljuros: TQRLabel
        Left = 528
        Top = 3
        Width = 89
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1397.000000000000000000
          7.937500000000000000
          235.479166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'lvalor'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
    end
  end
end
