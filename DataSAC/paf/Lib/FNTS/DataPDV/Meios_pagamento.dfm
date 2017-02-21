object frmMeios_Pagamento: TfrmMeios_Pagamento
  Left = 328
  Top = 301
  BorderStyle = bsDialog
  Caption = 'Meios de Pagamento'
  ClientHeight = 91
  ClientWidth = 313
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 59
    Width = 313
    Height = 2
    Align = alBottom
  end
  object Label3: TLabel
    Left = 8
    Top = 22
    Width = 70
    Height = 13
    Caption = 'Per'#237'odo Inicial:'
  end
  object Label4: TLabel
    Left = 184
    Top = 22
    Width = 26
    Height = 13
    Caption = 'Final:'
  end
  object Panel1: TPanel
    Left = 0
    Top = 61
    Width = 313
    Height = 30
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    object bt_ok: TButton
      Left = 84
      Top = 2
      Width = 75
      Height = 25
      Caption = '&Ok'
      TabOrder = 0
      OnClick = bt_okClick
    end
    object bt_cancelar: TButton
      Left = 164
      Top = 2
      Width = 75
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 1
      OnClick = bt_cancelarClick
    end
  end
  object ed_data_ini: TDateEdit
    Left = 88
    Top = 20
    Width = 87
    Height = 21
    NumGlyphs = 2
    TabOrder = 0
    Text = '00/00/0000'
    OnKeyPress = ed_data_iniKeyPress
  end
  object ed_data_fim: TDateEdit
    Left = 216
    Top = 20
    Width = 89
    Height = 21
    NumGlyphs = 2
    TabOrder = 1
    Text = '00/00/0000'
    OnKeyPress = ed_data_iniKeyPress
  end
  object query: TIBCQuery
    Connection = frmModulo.conexao
    Left = 32
    Top = 40
  end
end
