object frmOrcamento_Item: TfrmOrcamento_Item
  Left = 533
  Top = 426
  Width = 476
  Height = 258
  Caption = 'Or'#231'amento - Lan'#231'amento do Item'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label5: TLabel
    Left = 41
    Top = 9
    Width = 42
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Produto:'
  end
  object Label1: TLabel
    Left = 32
    Top = 33
    Width = 52
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Unidade:'
  end
  object Label2: TLabel
    Left = 137
    Top = 33
    Width = 37
    Height = 13
    Caption = 'C'#243'digo:'
  end
  object Label3: TLabel
    Left = 6
    Top = 65
    Width = 76
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Quantidade:'
  end
  object Label4: TLabel
    Left = 6
    Top = 89
    Width = 76
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Unit'#225'rio:'
  end
  object Label6: TLabel
    Left = 6
    Top = 137
    Width = 76
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Desconto:'
  end
  object Label7: TLabel
    Left = 6
    Top = 161
    Width = 76
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Total:'
  end
  object Bevel1: TBevel
    Left = 0
    Top = 190
    Width = 460
    Height = 2
    Align = alBottom
  end
  object Label8: TLabel
    Left = 6
    Top = 113
    Width = 76
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Subtotal:'
  end
  object ed_barra: TEdit
    Left = 90
    Top = 6
    Width = 359
    Height = 21
    TabOrder = 0
    OnEnter = ed_barraEnter
    OnKeyPress = ed_barraKeyPress
  end
  object ed_unidade: TEdit
    Left = 90
    Top = 30
    Width = 39
    Height = 21
    TabOrder = 1
  end
  object ed_codigo: TEdit
    Left = 178
    Top = 30
    Width = 71
    Height = 21
    ReadOnly = True
    TabOrder = 8
  end
  object ed_qtde: TRzNumericEdit
    Left = 90
    Top = 62
    Width = 135
    Height = 21
    TabOnEnter = True
    TabOrder = 2
    OnExit = ed_qtdeExit
    IntegersOnly = False
    DisplayFormat = '###,###,##0.000'
  end
  object ed_unitario: TRzNumericEdit
    Left = 90
    Top = 86
    Width = 135
    Height = 21
    TabOnEnter = True
    TabOrder = 3
    OnExit = ed_qtdeExit
    IntegersOnly = False
    DisplayFormat = 'R$ ###,###,##0.000'
  end
  object ed_desconto_p: TRzNumericEdit
    Left = 90
    Top = 134
    Width = 55
    Height = 21
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOnEnter = True
    TabOrder = 4
    OnExit = ed_desconto_pExit
    IntegersOnly = False
    DisplayFormat = '#0.00%'
  end
  object ed_total: TRzNumericEdit
    Left = 90
    Top = 158
    Width = 135
    Height = 21
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    ReadOnlyColor = clWindow
    TabOnEnter = True
    TabOrder = 7
    IntegersOnly = False
    DisplayFormat = 'R$ ###,###,##0.00'
  end
  object Panel1: TPanel
    Left = 0
    Top = 192
    Width = 460
    Height = 30
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 6
    object bt_ok: TBitBtn
      Left = 152
      Top = 2
      Width = 75
      Height = 25
      Caption = '&Ok'
      TabOrder = 0
      OnClick = bt_okClick
    end
    object bt_cancelar: TBitBtn
      Left = 232
      Top = 2
      Width = 75
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 1
      OnClick = bt_cancelarClick
    end
  end
  object ed_desconto: TRzNumericEdit
    Left = 146
    Top = 134
    Width = 79
    Height = 21
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOnEnter = True
    TabOrder = 5
    OnExit = ed_descontoExit
    IntegersOnly = False
    DisplayFormat = 'R$ ###,###,##0.00'
  end
  object ed_subtotal: TRzNumericEdit
    Left = 90
    Top = 110
    Width = 135
    Height = 21
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    ReadOnlyColor = clWindow
    TabOnEnter = True
    TabOrder = 9
    IntegersOnly = False
    DisplayFormat = 'R$ ###,###,##0.00'
  end
  object query: TIBCQuery
    Connection = frmModulo.conexao
    Left = 336
    Top = 152
  end
end
