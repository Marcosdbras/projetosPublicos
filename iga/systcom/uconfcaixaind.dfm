object frmconfcaixaind: Tfrmconfcaixaind
  Left = 406
  Top = 280
  Width = 519
  Height = 191
  BorderIcons = []
  Caption = 'Configura'#231#227'o do Caixa Individual'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 66
    Width = 81
    Height = 13
    Caption = 'N'#250'mero do Caixa'
  end
  object btnsalvar: TButton
    Left = 336
    Top = 16
    Width = 75
    Height = 25
    Caption = '&Salvar'
    TabOrder = 0
    OnClick = btnsalvarClick
  end
  object btncancelar: TButton
    Left = 424
    Top = 16
    Width = 75
    Height = 25
    Caption = '&Cancelar'
    TabOrder = 1
    OnClick = btncancelarClick
  end
  object edi_id: TEdit
    Left = 127
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 2
    Text = 'edi_id'
    OnKeyPress = edi_idKeyPress
  end
end
