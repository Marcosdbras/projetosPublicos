object FrmCadSerie: TFrmCadSerie
  Left = 385
  Top = 229
  Width = 523
  Height = 260
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
    Top = 82
    Width = 24
    Height = 13
    Caption = 'S'#233'rie'
  end
  object Label2: TLabel
    Left = 40
    Top = 16
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
  end
  object DBText1: TDBText
    Left = 112
    Top = 16
    Width = 65
    Height = 17
    DataField = 'CODIGO'
    DataSource = FrmDados.DTS_Serie
  end
  object Label3: TLabel
    Left = 40
    Top = 117
    Width = 30
    Height = 13
    Caption = 'Turma'
  end
  object Label4: TLabel
    Left = 40
    Top = 48
    Width = 60
    Height = 13
    Caption = 'Grau escolar'
  end
  object Label5: TLabel
    Left = 40
    Top = 152
    Width = 38
    Height = 13
    Caption = 'Per'#237'odo'
  end
  object DBEdit1: TDBEdit
    Left = 112
    Top = 84
    Width = 121
    Height = 21
    DataField = 'SERIE'
    DataSource = FrmDados.DTS_Serie
    TabOrder = 1
    OnKeyPress = DBEdit2KeyPress
  end
  object BtnConfirmar: TBitBtn
    Left = 344
    Top = 200
    Width = 75
    Height = 25
    Caption = '&Confirmar'
    TabOrder = 4
    OnClick = BtnConfirmarClick
  end
  object BtnCancelar: TBitBtn
    Left = 432
    Top = 200
    Width = 75
    Height = 25
    Caption = 'Ca&ncelar'
    TabOrder = 5
    OnClick = BtnCancelarClick
  end
  object DBEdit2: TDBEdit
    Left = 112
    Top = 50
    Width = 121
    Height = 21
    DataField = 'GRAU'
    DataSource = FrmDados.DTS_Serie
    TabOrder = 0
    OnKeyPress = DBEdit2KeyPress
  end
  object DBEdit3: TDBEdit
    Left = 112
    Top = 118
    Width = 121
    Height = 21
    DataField = 'TURMA'
    DataSource = FrmDados.DTS_Serie
    TabOrder = 2
    OnKeyPress = DBEdit2KeyPress
  end
  object DBEdit4: TDBEdit
    Left = 112
    Top = 152
    Width = 121
    Height = 21
    DataField = 'PERIODO'
    DataSource = FrmDados.DTS_Serie
    TabOrder = 3
    OnKeyPress = DBEdit2KeyPress
  end
end
