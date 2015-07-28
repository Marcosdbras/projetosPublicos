object frmcupom_impressao: Tfrmcupom_impressao
  Left = 835
  Top = 160
  Width = 390
  Height = 476
  Caption = 'Cupom Fiscal - Visualiza'#231#227'o'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = pop_fechamento
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel2: TBevel
    Left = 0
    Top = 388
    Width = 382
    Height = 2
    Align = alBottom
  end
  object Panel2: TPanel
    Left = 0
    Top = 390
    Width = 382
    Height = 33
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 6
      Top = 3
      Width = 75
      Height = 25
      Caption = 'F2 &Reimprimir'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object bt_fechar: TBitBtn
      Left = 289
      Top = 3
      Width = 75
      Height = 25
      Caption = '&Fechar'
      TabOrder = 1
      OnClick = bt_fecharClick
    end
  end
  object grid_impressao: TNextGrid
    Left = 0
    Top = 0
    Width = 382
    Height = 388
    Align = alClient
    BorderStyle = bsNone
    Color = 12713983
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = []
    HideScrollBar = False
    Options = [goSelectFullRow]
    ParentFont = False
    TabOrder = 1
    TabStop = True
    object NxTextColumn1: TNxTextColumn
      Color = 12713983
      DefaultWidth = 355
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      Position = 0
      SortType = stAlphabetic
      Width = 355
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 423
    Width = 382
    Height = 19
    Panels = <
      item
        Text = 'F8 - Menu Fiscal'
        Width = 50
      end>
  end
  object pop_fechamento: TAdvPopupMenu
    MenuStyler = frmModulo.estilo_menu
    Version = '2.5.0.1'
    Left = 40
    Top = 192
    object MenuFiscal1: TMenuItem
      Caption = 'Menu Fiscal'
      ShortCut = 119
      OnClick = MenuFiscal1Click
    end
    object Cancelar1: TMenuItem
      Caption = 'Cancelar'
      ShortCut = 27
      OnClick = Cancelar1Click
    end
    object Reimprimir1: TMenuItem
      Caption = 'Reimprimir'
      ShortCut = 113
      OnClick = BitBtn1Click
    end
  end
end
