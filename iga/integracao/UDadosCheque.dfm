object FrmDadosCheque: TFrmDadosCheque
  Left = 357
  Top = 188
  Width = 445
  Height = 198
  Caption = 'Dados do cheque'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 56
    Top = 32
    Width = 91
    Height = 13
    Caption = 'N'#250'mero do cheque'
  end
  object Label2: TLabel
    Left = 56
    Top = 64
    Width = 96
    Height = 13
    Caption = 'Data de vencimento'
  end
  object Label3: TLabel
    Left = 56
    Top = 96
    Width = 31
    Height = 13
    Caption = 'Banco'
  end
  object EdNumero: TEdit
    Left = 168
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object EdData: TEdit
    Left = 168
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object EdBanco: TEdit
    Left = 168
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object BtnConfirmar: TBitBtn
    Left = 88
    Top = 136
    Width = 75
    Height = 25
    Caption = '&Confirmar'
    TabOrder = 3
    OnClick = BtnConfirmarClick
  end
  object BtnCancelar: TBitBtn
    Left = 208
    Top = 136
    Width = 75
    Height = 25
    Caption = 'C&ancelar'
    TabOrder = 4
    OnClick = BtnCancelarClick
  end
end
