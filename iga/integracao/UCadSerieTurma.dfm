object FrmCadSerieTurma: TFrmCadSerieTurma
  Left = 385
  Top = 229
  Width = 459
  Height = 183
  Caption = 'Cadastro de s'#233'rie'
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
    Left = 40
    Top = 32
    Width = 24
    Height = 13
    Caption = 'S'#233'rie'
  end
  object DBEdit1: TDBEdit
    Left = 104
    Top = 24
    Width = 121
    Height = 21
    DataField = 'SERIE'
    DataSource = FrmDados.DTS_Serie
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 248
    Top = 112
    Width = 75
    Height = 25
    Caption = 'BtnConfirmar'
    TabOrder = 1
  end
  object BitBtn2: TBitBtn
    Left = 336
    Top = 112
    Width = 75
    Height = 25
    Caption = 'BtnCancelar'
    TabOrder = 2
  end
end
