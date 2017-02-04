object frmrel_nf: Tfrmrel_nf
  Left = 3
  Top = 155
  Width = 962
  Height = 609
  VertScrollBar.Position = 809
  Caption = 'frmrel_nf'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep1: TQuickRep
    Left = 8
    Top = -290
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Draft 15cpi'
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
      30.000000000000000000
      2100.000000000000000000
      50.000000000000000000
      50.000000000000000000
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
    Units = Native
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsNormal
    PrevInitialZoom = qrZoomToFit
    PreviewDefaultSaveType = stQRP
    object QRBand1: TQRBand
      Left = 19
      Top = 11
      Width = 756
      Height = 324
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
        857.250000000000000000
        2000.250000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbTitle
      object lsaida: TQRLabel
        Left = 515
        Top = 48
        Width = 5
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1362.604166666667000000
          127.000000000000000000
          13.229166666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object lentrada: TQRLabel
        Left = 591
        Top = 48
        Width = 5
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1563.687500000000000000
          127.000000000000000000
          13.229166666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object LNumero1: TQRLabel
        Left = 680
        Top = 20
        Width = 5
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1799.166666666667000000
          52.916666666666660000
          13.229166666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Draft 15cpi'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object lnatureza1: TQRLabel
        Left = 2
        Top = 110
        Width = 225
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          5.291666666666667000
          291.041666666666700000
          595.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Draft 17cpi'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object lnatureza2: TQRLabel
        Left = 2
        Top = 120
        Width = 225
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          5.291666666666667000
          317.500000000000000000
          595.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Draft 17cpi'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object lcfop1: TQRLabel
        Left = 354
        Top = 110
        Width = 52
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          936.625000000000100000
          291.041666666666700000
          137.583333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Draft 17cpi'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object lcfop2: TQRLabel
        Left = 354
        Top = 120
        Width = 52
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          936.625000000000100000
          317.500000000000000000
          137.583333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Draft 17cpi'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object lcliente: TQRLabel
        Left = 2
        Top = 148
        Width = 487
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          5.291666666666667000
          391.583333333333400000
          1288.520833333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Draft 15cpi'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object lcpf: TQRLabel
        Left = 506
        Top = 148
        Width = 135
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1338.791666666667000000
          391.583333333333400000
          357.187500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Draft 15cpi'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object ldata_emissao: TQRLabel
        Left = 693
        Top = 148
        Width = 4
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1833.562500000000000000
          391.583333333333400000
          10.583333333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Draft 15cpi'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object lendereco: TQRLabel
        Left = 2
        Top = 172
        Width = 383
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          5.291666666666667000
          455.083333333333300000
          1013.354166666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Draft 15cpi'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object lbairro: TQRLabel
        Left = 394
        Top = 172
        Width = 175
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1042.458333333333000000
          455.083333333333300000
          463.020833333333400000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Draft 15cpi'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object lcep: TQRLabel
        Left = 586
        Top = 172
        Width = 87
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1550.458333333333000000
          455.083333333333300000
          230.187500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Draft 15cpi'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object ldata_saida: TQRLabel
        Left = 693
        Top = 172
        Width = 4
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1833.562500000000000000
          455.083333333333300000
          10.583333333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Draft 15cpi'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object lcidade: TQRLabel
        Left = 2
        Top = 196
        Width = 319
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          5.291666666666667000
          518.583333333333400000
          844.020833333333500000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Draft 15cpi'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object ltelefone: TQRLabel
        Left = 336
        Top = 196
        Width = 137
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          889.000000000000000000
          518.583333333333400000
          362.479166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Draft 15cpi'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object luf: TQRLabel
        Left = 478
        Top = 196
        Width = 31
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1264.708333333333000000
          518.583333333333400000
          82.020833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Draft 15cpi'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object lrg: TQRLabel
        Left = 514
        Top = 196
        Width = 135
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1359.958333333333000000
          518.583333333333400000
          357.187500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Draft 15cpi'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object lfat_n1: TQRLabel
        Left = 10
        Top = 234
        Width = 71
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          26.458333333333330000
          619.125000000000000000
          187.854166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Draft 15cpi'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object lfat_n2: TQRLabel
        Left = 10
        Top = 248
        Width = 71
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          26.458333333333330000
          656.166666666666800000
          187.854166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Draft 15cpi'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object lfat_n3: TQRLabel
        Left = 10
        Top = 262
        Width = 71
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          26.458333333333330000
          693.208333333333400000
          187.854166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Draft 15cpi'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object lfat_data1: TQRLabel
        Left = 98
        Top = 234
        Width = 71
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          259.291666666666700000
          619.125000000000000000
          187.854166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Draft 15cpi'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object lfat_data2: TQRLabel
        Left = 98
        Top = 248
        Width = 71
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          259.291666666666700000
          656.166666666666800000
          187.854166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Draft 15cpi'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object lfat_data3: TQRLabel
        Left = 98
        Top = 262
        Width = 71
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          259.291666666666700000
          693.208333333333400000
          187.854166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Draft 15cpi'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object lfat_valor1: TQRLabel
        Left = 178
        Top = 234
        Width = 71
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          470.958333333333400000
          619.125000000000000000
          187.854166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Draft 15cpi'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object lfat_valor2: TQRLabel
        Left = 178
        Top = 248
        Width = 71
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          470.958333333333400000
          656.166666666666800000
          187.854166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Draft 15cpi'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object lfat_valor3: TQRLabel
        Left = 178
        Top = 262
        Width = 71
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          470.958333333333400000
          693.208333333333400000
          187.854166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Draft 15cpi'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object lfat_n4: TQRLabel
        Left = 266
        Top = 234
        Width = 71
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          703.791666666666800000
          619.125000000000000000
          187.854166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Draft 15cpi'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object lfat_n5: TQRLabel
        Left = 266
        Top = 248
        Width = 71
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          703.791666666666800000
          656.166666666666800000
          187.854166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Draft 15cpi'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object lfat_n6: TQRLabel
        Left = 266
        Top = 262
        Width = 71
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          703.791666666666800000
          693.208333333333400000
          187.854166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Draft 15cpi'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object lfat_data4: TQRLabel
        Left = 346
        Top = 234
        Width = 71
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          915.458333333333200000
          619.125000000000000000
          187.854166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Draft 15cpi'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object lfat_data5: TQRLabel
        Left = 346
        Top = 248
        Width = 71
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          915.458333333333200000
          656.166666666666800000
          187.854166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Draft 15cpi'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object lfat_data6: TQRLabel
        Left = 346
        Top = 262
        Width = 71
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          915.458333333333200000
          693.208333333333400000
          187.854166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Draft 15cpi'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object lfat_valor4: TQRLabel
        Left = 426
        Top = 234
        Width = 71
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1127.125000000000000000
          619.125000000000000000
          187.854166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Draft 15cpi'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object lfat_valor5: TQRLabel
        Left = 426
        Top = 248
        Width = 71
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1127.125000000000000000
          656.166666666666800000
          187.854166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Draft 15cpi'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object lfat_valor6: TQRLabel
        Left = 426
        Top = 262
        Width = 71
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1127.125000000000000000
          693.208333333333400000
          187.854166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Draft 15cpi'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object lfat_n7: TQRLabel
        Left = 522
        Top = 234
        Width = 71
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1381.125000000000000000
          619.125000000000000000
          187.854166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Draft 15cpi'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object lfat_n8: TQRLabel
        Left = 522
        Top = 248
        Width = 71
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1381.125000000000000000
          656.166666666666800000
          187.854166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Draft 15cpi'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object lfat_n9: TQRLabel
        Left = 522
        Top = 262
        Width = 71
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1381.125000000000000000
          693.208333333333400000
          187.854166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Draft 15cpi'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object lfat_data7: TQRLabel
        Left = 602
        Top = 234
        Width = 71
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1592.791666666667000000
          619.125000000000000000
          187.854166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Draft 15cpi'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object lfat_data8: TQRLabel
        Left = 602
        Top = 248
        Width = 71
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1592.791666666667000000
          656.166666666666800000
          187.854166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Draft 15cpi'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object lfat_data9: TQRLabel
        Left = 602
        Top = 262
        Width = 71
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1592.791666666667000000
          693.208333333333400000
          187.854166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Draft 15cpi'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object lfat_valor7: TQRLabel
        Left = 674
        Top = 234
        Width = 71
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1783.291666666667000000
          619.125000000000000000
          187.854166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Draft 15cpi'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object lfat_valor8: TQRLabel
        Left = 674
        Top = 248
        Width = 71
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1783.291666666667000000
          656.166666666666800000
          187.854166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Draft 15cpi'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object lfat_valor9: TQRLabel
        Left = 674
        Top = 262
        Width = 71
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1783.291666666667000000
          693.208333333333400000
          187.854166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Draft 15cpi'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
    end
    object los_tit_codigo: TQRLabel
      Left = 26
      Top = 573
      Width = 39
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        68.791666666666680000
        1516.062500000000000000
        103.187500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = ' '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Draft 17cpi'
      Font.Style = [fsUnderline]
      ParentFont = False
      Transparent = True
      WordWrap = True
      ExportAs = exptText
      FontSize = 8
    end
    object los_tit_descricao: TQRLabel
      Left = 74
      Top = 573
      Width = 319
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        195.791666666666700000
        1516.062500000000000000
        844.020833333333500000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = ' '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Draft 17cpi'
      Font.Style = [fsUnderline]
      ParentFont = False
      Transparent = True
      WordWrap = True
      ExportAs = exptText
      FontSize = 8
    end
    object los_tit_qtde: TQRLabel
      Left = 402
      Top = 573
      Width = 47
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1063.625000000000000000
        1516.062500000000000000
        124.354166666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = ' '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Draft 17cpi'
      Font.Style = [fsUnderline]
      ParentFont = False
      Transparent = True
      WordWrap = True
      ExportAs = exptText
      FontSize = 8
    end
    object los_tit_unitario: TQRLabel
      Left = 466
      Top = 573
      Width = 47
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1232.958333333333000000
        1516.062500000000000000
        124.354166666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = ' '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Draft 17cpi'
      Font.Style = [fsUnderline]
      ParentFont = False
      Transparent = True
      WordWrap = True
      ExportAs = exptText
      FontSize = 8
    end
    object los_tit_total: TQRLabel
      Left = 530
      Top = 573
      Width = 47
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1402.291666666667000000
        1516.062500000000000000
        124.354166666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = ' '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Draft 17cpi'
      Font.Style = [fsUnderline]
      ParentFont = False
      Transparent = True
      WordWrap = True
      ExportAs = exptText
      FontSize = 8
    end
    object liss: TQRLabel
      Left = 680
      Top = 620
      Width = 65
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1799.166666666667000000
        1640.416666666667000000
        171.979166666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = ' '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Draft 17cpi'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      ExportAs = exptText
      FontSize = 8
    end
    object ltotal_servico: TQRLabel
      Left = 680
      Top = 656
      Width = 65
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1799.166666666667000000
        1735.666666666667000000
        171.979166666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = ' '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Draft 17cpi'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      ExportAs = exptText
      FontSize = 8
    end
    object los_cod1: TQRLabel
      Left = 26
      Top = 586
      Width = 39
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        68.791666666666680000
        1550.458333333333000000
        103.187500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = ' '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Draft 17cpi'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      ExportAs = exptText
      FontSize = 8
    end
    object los_desc1: TQRLabel
      Left = 74
      Top = 586
      Width = 319
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        195.791666666666700000
        1550.458333333333000000
        844.020833333333500000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = ' '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Draft 17cpi'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      ExportAs = exptText
      FontSize = 8
    end
    object los_qtde1: TQRLabel
      Left = 402
      Top = 586
      Width = 47
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        1063.625000000000000000
        1550.458333333333000000
        124.354166666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = ' '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Draft 17cpi'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      ExportAs = exptText
      FontSize = 8
    end
    object los_unit1: TQRLabel
      Left = 466
      Top = 586
      Width = 47
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        1232.958333333333000000
        1550.458333333333000000
        124.354166666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = ' '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Draft 17cpi'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      ExportAs = exptText
      FontSize = 8
    end
    object los_total1: TQRLabel
      Left = 530
      Top = 586
      Width = 47
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        1402.291666666667000000
        1550.458333333333000000
        124.354166666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = ' '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Draft 17cpi'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      ExportAs = exptText
      FontSize = 8
    end
    object los_cod2: TQRLabel
      Left = 26
      Top = 597
      Width = 39
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        68.791666666666680000
        1579.562500000000000000
        103.187500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = ' '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Draft 17cpi'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      ExportAs = exptText
      FontSize = 8
    end
    object los_desc2: TQRLabel
      Left = 74
      Top = 597
      Width = 319
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        195.791666666666700000
        1579.562500000000000000
        844.020833333333500000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = ' '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Draft 17cpi'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      ExportAs = exptText
      FontSize = 8
    end
    object los_qtde2: TQRLabel
      Left = 402
      Top = 597
      Width = 47
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        1063.625000000000000000
        1579.562500000000000000
        124.354166666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = ' '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Draft 17cpi'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      ExportAs = exptText
      FontSize = 8
    end
    object los_unit2: TQRLabel
      Left = 466
      Top = 597
      Width = 47
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        1232.958333333333000000
        1579.562500000000000000
        124.354166666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = ' '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Draft 17cpi'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      ExportAs = exptText
      FontSize = 8
    end
    object los_total2: TQRLabel
      Left = 530
      Top = 597
      Width = 47
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        1402.291666666667000000
        1579.562500000000000000
        124.354166666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = ' '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Draft 17cpi'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      ExportAs = exptText
      FontSize = 8
    end
    object los_cod3: TQRLabel
      Left = 26
      Top = 608
      Width = 39
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        68.791666666666680000
        1608.666666666667000000
        103.187500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = ' '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Draft 17cpi'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      ExportAs = exptText
      FontSize = 8
    end
    object los_desc3: TQRLabel
      Left = 74
      Top = 608
      Width = 319
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        195.791666666666700000
        1608.666666666667000000
        844.020833333333500000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = ' '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Draft 17cpi'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      ExportAs = exptText
      FontSize = 8
    end
    object los_qtde3: TQRLabel
      Left = 402
      Top = 608
      Width = 47
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        1063.625000000000000000
        1608.666666666667000000
        124.354166666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = ' '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Draft 17cpi'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      ExportAs = exptText
      FontSize = 8
    end
    object los_unit3: TQRLabel
      Left = 466
      Top = 608
      Width = 47
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        1232.958333333333000000
        1608.666666666667000000
        124.354166666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = ' '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Draft 17cpi'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      ExportAs = exptText
      FontSize = 8
    end
    object los_total3: TQRLabel
      Left = 530
      Top = 608
      Width = 47
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        1402.291666666667000000
        1608.666666666667000000
        124.354166666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = ' '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Draft 17cpi'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      ExportAs = exptText
      FontSize = 8
    end
    object los_cod4: TQRLabel
      Left = 26
      Top = 619
      Width = 39
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        68.791666666666680000
        1637.770833333333000000
        103.187500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = ' '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Draft 17cpi'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      ExportAs = exptText
      FontSize = 8
    end
    object los_desc4: TQRLabel
      Left = 74
      Top = 619
      Width = 319
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        195.791666666666700000
        1637.770833333333000000
        844.020833333333500000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = ' '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Draft 17cpi'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      ExportAs = exptText
      FontSize = 8
    end
    object los_qtde4: TQRLabel
      Left = 402
      Top = 619
      Width = 47
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        1063.625000000000000000
        1637.770833333333000000
        124.354166666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = ' '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Draft 17cpi'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      ExportAs = exptText
      FontSize = 8
    end
    object los_unit4: TQRLabel
      Left = 466
      Top = 619
      Width = 47
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        1232.958333333333000000
        1637.770833333333000000
        124.354166666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = ' '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Draft 17cpi'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      ExportAs = exptText
      FontSize = 8
    end
    object los_total4: TQRLabel
      Left = 530
      Top = 619
      Width = 47
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        1402.291666666667000000
        1637.770833333333000000
        124.354166666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = ' '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Draft 17cpi'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      ExportAs = exptText
      FontSize = 8
    end
    object los_cod5: TQRLabel
      Left = 26
      Top = 630
      Width = 39
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        68.791666666666680000
        1666.875000000000000000
        103.187500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = ' '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Draft 17cpi'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      ExportAs = exptText
      FontSize = 8
    end
    object los_desc5: TQRLabel
      Left = 74
      Top = 630
      Width = 319
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        195.791666666666700000
        1666.875000000000000000
        844.020833333333500000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = ' '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Draft 17cpi'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      ExportAs = exptText
      FontSize = 8
    end
    object los_qtde5: TQRLabel
      Left = 402
      Top = 630
      Width = 47
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        1063.625000000000000000
        1666.875000000000000000
        124.354166666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = ' '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Draft 17cpi'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      ExportAs = exptText
      FontSize = 8
    end
    object los_unit5: TQRLabel
      Left = 466
      Top = 630
      Width = 47
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        1232.958333333333000000
        1666.875000000000000000
        124.354166666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = ' '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Draft 17cpi'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      ExportAs = exptText
      FontSize = 8
    end
    object los_total5: TQRLabel
      Left = 530
      Top = 630
      Width = 47
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        1402.291666666667000000
        1666.875000000000000000
        124.354166666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = ' '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Draft 17cpi'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      ExportAs = exptText
      FontSize = 8
    end
    object lbase_icms: TQRLabel
      Left = 88
      Top = 706
      Width = 65
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        232.833333333333400000
        1867.958333333333000000
        171.979166666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = ' '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Draft 15cpi'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      ExportAs = exptText
      FontSize = 8
    end
    object lfrete: TQRLabel
      Left = 88
      Top = 730
      Width = 65
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        232.833333333333400000
        1931.458333333333000000
        171.979166666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = ' '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Draft 15cpi'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      ExportAs = exptText
      FontSize = 8
    end
    object lvalor_icms: TQRLabel
      Left = 224
      Top = 706
      Width = 65
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        592.666666666666800000
        1867.958333333333000000
        171.979166666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = ' '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Draft 15cpi'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      ExportAs = exptText
      FontSize = 8
    end
    object lseguro: TQRLabel
      Left = 224
      Top = 730
      Width = 65
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        592.666666666666800000
        1931.458333333333000000
        171.979166666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = ' '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Draft 15cpi'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      ExportAs = exptText
      FontSize = 8
    end
    object lbase_subst: TQRLabel
      Left = 368
      Top = 706
      Width = 65
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        973.666666666666900000
        1867.958333333333000000
        171.979166666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = ' '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Draft 15cpi'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      ExportAs = exptText
      FontSize = 8
    end
    object loutras: TQRLabel
      Left = 368
      Top = 730
      Width = 65
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        973.666666666666900000
        1931.458333333333000000
        171.979166666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = ' '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Draft 15cpi'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      ExportAs = exptText
      FontSize = 8
    end
    object lvalor_subst: TQRLabel
      Left = 536
      Top = 706
      Width = 65
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        1418.166666666667000000
        1867.958333333333000000
        171.979166666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = ' '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Draft 15cpi'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      ExportAs = exptText
      FontSize = 8
    end
    object lipi: TQRLabel
      Left = 536
      Top = 730
      Width = 65
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        1418.166666666667000000
        1931.458333333333000000
        171.979166666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = ' '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Draft 15cpi'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      ExportAs = exptText
      FontSize = 8
    end
    object ltotal_produtos: TQRLabel
      Left = 664
      Top = 706
      Width = 65
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        1756.833333333333000000
        1867.958333333333000000
        171.979166666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = ' '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Draft 15cpi'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      ExportAs = exptText
      FontSize = 8
    end
    object ltotal_nota: TQRLabel
      Left = 664
      Top = 730
      Width = 65
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        1756.833333333333000000
        1931.458333333333000000
        171.979166666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = ' '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Draft 15cpi'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      ExportAs = exptText
      FontSize = 8
    end
    object ltransp: TQRLabel
      Left = 24
      Top = 775
      Width = 353
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        63.500000000000000000
        2050.520833333333000000
        933.979166666666600000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = ' '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Draft 15cpi'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      ExportAs = exptText
      FontSize = 8
    end
    object ltrans_endereco: TQRLabel
      Left = 24
      Top = 799
      Width = 281
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        63.500000000000000000
        2114.020833333333000000
        743.479166666666800000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = ' '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Draft 15cpi'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      ExportAs = exptText
      FontSize = 8
    end
    object lqtde: TQRLabel
      Left = 32
      Top = 823
      Width = 57
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        84.666666666666680000
        2177.520833333333000000
        150.812500000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = ' '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Draft 15cpi'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      ExportAs = exptText
      FontSize = 8
    end
    object lespecie: TQRLabel
      Left = 104
      Top = 823
      Width = 97
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        275.166666666666700000
        2177.520833333333000000
        256.645833333333400000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = ' '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Draft 15cpi'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      ExportAs = exptText
      FontSize = 8
    end
    object lmarca: TQRLabel
      Left = 224
      Top = 823
      Width = 97
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        592.666666666666800000
        2177.520833333333000000
        256.645833333333400000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = ' '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Draft 15cpi'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      ExportAs = exptText
      FontSize = 8
    end
    object ltransp_numero: TQRLabel
      Left = 336
      Top = 823
      Width = 97
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        889.000000000000000000
        2177.520833333333000000
        256.645833333333400000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = ' '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Draft 15cpi'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      ExportAs = exptText
      FontSize = 8
    end
    object lbruto: TQRLabel
      Left = 568
      Top = 823
      Width = 65
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        1502.833333333333000000
        2177.520833333333000000
        171.979166666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = ' '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Draft 15cpi'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      ExportAs = exptText
      FontSize = 8
    end
    object lliquido: TQRLabel
      Left = 672
      Top = 823
      Width = 65
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        1778.000000000000000000
        2177.520833333333000000
        171.979166666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = ' '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Draft 15cpi'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      ExportAs = exptText
      FontSize = 8
    end
    object lfrete_conta: TQRLabel
      Left = 422
      Top = 770
      Width = 9
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        1116.541666666667000000
        2037.291666666667000000
        23.812500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = ' '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Draft 15cpi'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      ExportAs = exptText
      FontSize = 8
    end
    object lplaca: TQRLabel
      Left = 448
      Top = 775
      Width = 65
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        1185.333333333333000000
        2050.520833333333000000
        171.979166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = ' '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Draft 15cpi'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      ExportAs = exptText
      FontSize = 8
    end
    object ltransp_uf: TQRLabel
      Left = 560
      Top = 775
      Width = 17
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        1481.666666666667000000
        2050.520833333333000000
        44.979166666666670000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = ' '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Draft 15cpi'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      ExportAs = exptText
      FontSize = 8
    end
    object ltransp_cpf: TQRLabel
      Left = 616
      Top = 775
      Width = 121
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        1629.833333333333000000
        2050.520833333333000000
        320.145833333333400000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = ' '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Draft 15cpi'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      ExportAs = exptText
      FontSize = 8
    end
    object ltransp_rg: TQRLabel
      Left = 616
      Top = 799
      Width = 121
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        1629.833333333333000000
        2114.020833333333000000
        320.145833333333400000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = ' '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Draft 15cpi'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      ExportAs = exptText
      FontSize = 8
    end
    object ltransp_uf2: TQRLabel
      Left = 560
      Top = 799
      Width = 17
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        1481.666666666667000000
        2114.020833333333000000
        44.979166666666670000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = ' '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Draft 15cpi'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      ExportAs = exptText
      FontSize = 8
    end
    object ltransp_cidade: TQRLabel
      Left = 336
      Top = 799
      Width = 161
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        889.000000000000000000
        2114.020833333333000000
        425.979166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = ' '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Draft 15cpi'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      ExportAs = exptText
      FontSize = 8
    end
    object lobs1: TQRLabel
      Left = 24
      Top = 868
      Width = 353
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        63.500000000000000000
        2296.583333333333000000
        933.979166666666600000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = ' '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Draft 17cpi'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      ExportAs = exptText
      FontSize = 8
    end
    object lobs2: TQRLabel
      Left = 24
      Top = 884
      Width = 353
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        63.500000000000000000
        2338.916666666667000000
        933.979166666666600000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = ' '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Draft 17cpi'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      ExportAs = exptText
      FontSize = 8
    end
    object lobs3: TQRLabel
      Left = 24
      Top = 900
      Width = 353
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        63.500000000000000000
        2381.250000000000000000
        933.979166666666600000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = ' '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Draft 17cpi'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      ExportAs = exptText
      FontSize = 8
    end
    object lobs4: TQRLabel
      Left = 24
      Top = 916
      Width = 353
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        63.500000000000000000
        2423.583333333333000000
        933.979166666666600000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = ' '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Draft 17cpi'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      ExportAs = exptText
      FontSize = 8
    end
    object lobs5: TQRLabel
      Left = 24
      Top = 932
      Width = 353
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        63.500000000000000000
        2465.916666666667000000
        933.979166666666600000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = ' '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Draft 17cpi'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      ExportAs = exptText
      FontSize = 8
    end
    object lobs6: TQRLabel
      Left = 24
      Top = 948
      Width = 353
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        63.500000000000000000
        2508.250000000000000000
        933.979166666666600000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = ' '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Draft 17cpi'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      ExportAs = exptText
      FontSize = 8
    end
    object lnumero2: TQRLabel
      Left = 712
      Top = 1013
      Width = 4
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1883.833333333333000000
        2680.229166666667000000
        10.583333333333330000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = ' '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Draft 15cpi'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 8
    end
    object QRBand3: TQRBand
      Left = 19
      Top = 335
      Width = 756
      Height = 15
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
        39.687500000000000000
        2000.250000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRDBText1: TQRDBText
        Left = 56
        Top = 0
        Width = 313
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          148.166666666666700000
          0.000000000000000000
          828.145833333333200000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataField = 'PRODUTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Draft 17cpi'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object QRDBText2: TQRDBText
        Left = 393
        Top = 0
        Width = 24
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1039.812500000000000000
          0.000000000000000000
          63.500000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataField = 'STR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Draft 17cpi'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object QRDBText3: TQRDBText
        Left = 345
        Top = 0
        Width = 24
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          912.812500000000100000
          0.000000000000000000
          63.500000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataField = 'CF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Draft 17cpi'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object QRDBText4: TQRDBText
        Left = 425
        Top = 0
        Width = 24
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1124.479166666667000000
          0.000000000000000000
          63.500000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataField = 'UN'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Draft 17cpi'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object QRDBText5: TQRDBText
        Left = 443
        Top = 0
        Width = 64
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1172.104166666667000000
          0.000000000000000000
          169.333333333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataField = 'QTDE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Draft 17cpi'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object QRDBText6: TQRDBText
        Left = 521
        Top = 0
        Width = 56
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1378.479166666667000000
          0.000000000000000000
          148.166666666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataField = 'UNITARIO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Draft 17cpi'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object QRDBText7: TQRDBText
        Left = 588
        Top = 0
        Width = 64
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1555.750000000000000000
          0.000000000000000000
          169.333333333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataField = 'TOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Draft 17cpi'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object QRDBText8: TQRDBText
        Left = 664
        Top = 0
        Width = 24
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1756.833333333333000000
          0.000000000000000000
          63.500000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataField = 'ICMS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Draft 17cpi'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object QRDBText9: TQRDBText
        Left = 0
        Top = 0
        Width = 57
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          0.000000000000000000
          0.000000000000000000
          150.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataField = 'CODPRODUTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Draft 17cpi'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
    end
  end
end
