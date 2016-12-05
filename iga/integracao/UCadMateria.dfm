object FrmCadMateria: TFrmCadMateria
  Left = 340
  Top = 218
  Width = 428
  Height = 189
  BorderIcons = []
  Caption = 'Cadastro de materia'
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
    Left = 17
    Top = 13
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
  end
  object Label2: TLabel
    Left = 17
    Top = 45
    Width = 28
    Height = 13
    Caption = 'Nome'
  end
  object DBText1: TDBText
    Left = 129
    Top = 13
    Width = 65
    Height = 17
    DataField = 'CODIGO'
    DataSource = FrmDados.DTS_CadMateria
  end
  object Label4: TLabel
    Left = 17
    Top = 74
    Width = 48
    Height = 13
    Caption = 'Descri'#231#227'o'
  end
  object DBENome: TDBEdit
    Left = 129
    Top = 41
    Width = 121
    Height = 21
    DataField = 'NOME'
    DataSource = FrmDados.DTS_CadMateria
    TabOrder = 0
  end
  object BtnConfirmar: TBitBtn
    Left = 248
    Top = 127
    Width = 75
    Height = 25
    Caption = '&Confirmar'
    TabOrder = 2
    OnClick = BtnConfirmarClick
  end
  object BtnCancelar: TBitBtn
    Left = 336
    Top = 127
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 3
    OnClick = BtnCancelarClick
  end
  object DBEdit1: TDBEdit
    Left = 129
    Top = 74
    Width = 121
    Height = 21
    DataField = 'DESCRICAO'
    DataSource = FrmDados.DTS_CadMateria
    TabOrder = 1
  end
end
