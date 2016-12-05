object FrmPerEspecial: TFrmPerEspecial
  Left = 352
  Top = 167
  Width = 329
  Height = 114
  Caption = 'Per'#237'odo especial'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 16
    Width = 34
    Height = 13
    Caption = 'Horario'
  end
  object BtnConfirmar: TBitBtn
    Left = 136
    Top = 48
    Width = 75
    Height = 25
    Caption = '&Confirmar'
    TabOrder = 0
    OnClick = BtnConfirmarClick
  end
  object BtnCancelar: TBitBtn
    Left = 216
    Top = 48
    Width = 75
    Height = 25
    Caption = 'C&ancelar'
    TabOrder = 1
    OnClick = BtnCancelarClick
  end
  object DBEdit1: TDBEdit
    Left = 64
    Top = 16
    Width = 217
    Height = 21
    DataField = 'PER_ESPECIAL'
    DataSource = FrmDados.DTS_CadAluno
    TabOrder = 2
  end
end
