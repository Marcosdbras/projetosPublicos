object frmDuplicata_Impressao: TfrmDuplicata_Impressao
  Left = 612
  Top = 438
  BorderStyle = bsDialog
  Caption = 'Duplicata - Impress'#227'o'
  ClientHeight = 129
  ClientWidth = 283
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 161
    Height = 81
    Caption = 'Fatura'
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 24
      Width = 50
      Height = 13
      Caption = 'N'#250'mero:'
    end
    object Label2: TLabel
      Left = 8
      Top = 48
      Width = 35
      Height = 13
      Caption = 'Valor:'
    end
    object ed_fatura_numero: TEdit
      Left = 64
      Top = 20
      Width = 81
      Height = 21
      TabOrder = 0
      Text = 'ed_fatura_numero'
      OnKeyPress = ed_fatura_numeroKeyPress
    end
    object ed_fatura_valor: TRzNumericEdit
      Left = 64
      Top = 48
      Width = 81
      Height = 21
      TabOrder = 1
      OnKeyPress = ed_fatura_numeroKeyPress
      IntegersOnly = False
      DisplayFormat = '###,###,##0.00'
    end
  end
  object GroupBox2: TGroupBox
    Left = 176
    Top = 8
    Width = 97
    Height = 81
    Caption = 'Duplicata'
    TabOrder = 1
    object Label3: TLabel
      Left = 8
      Top = 24
      Width = 80
      Height = 13
      Caption = 'N'#186' de Ordem:'
    end
    object ed_ordem: TRzNumericEdit
      Left = 8
      Top = 48
      Width = 81
      Height = 21
      TabOrder = 0
      OnKeyPress = ed_fatura_numeroKeyPress
      DisplayFormat = '###,###,##0'
    end
  end
  object Button1: TButton
    Left = 196
    Top = 96
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 2
    OnClick = Button1Click
  end
end
