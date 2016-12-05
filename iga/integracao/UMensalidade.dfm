object FrmMensalidade: TFrmMensalidade
  Left = 174
  Top = 154
  Width = 575
  Height = 249
  Caption = 'Mensalidade'
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
    Left = 32
    Top = 24
    Width = 19
    Height = 13
    Caption = 'Ano'
  end
  object CBJan: TDBCheckBox
    Left = 32
    Top = 64
    Width = 97
    Height = 17
    Caption = 'Janeiro'
    DataField = 'JAN'
    DataSource = FrmDados.DTS_Mensalidade
    TabOrder = 0
    ValueChecked = 'S'
    ValueUnchecked = 'N'
    Visible = False
  end
  object CBFev: TDBCheckBox
    Left = 32
    Top = 104
    Width = 97
    Height = 17
    Caption = 'Fevereiro'
    DataField = 'FEV'
    DataSource = FrmDados.DTS_Mensalidade
    TabOrder = 1
    ValueChecked = 'S'
    ValueUnchecked = 'N'
    Visible = False
  end
  object CBMar: TDBCheckBox
    Left = 32
    Top = 144
    Width = 97
    Height = 17
    Caption = 'Mar'#231'o'
    DataField = 'MAR'
    DataSource = FrmDados.DTS_Mensalidade
    TabOrder = 2
    ValueChecked = 'S'
    ValueUnchecked = 'N'
    Visible = False
  end
  object CBAbr: TDBCheckBox
    Left = 160
    Top = 64
    Width = 97
    Height = 17
    Caption = 'Abril'
    DataField = 'ABR'
    DataSource = FrmDados.DTS_Mensalidade
    TabOrder = 3
    ValueChecked = 'S'
    ValueUnchecked = 'N'
    Visible = False
  end
  object CBMai: TDBCheckBox
    Left = 160
    Top = 104
    Width = 97
    Height = 17
    Caption = 'Maio'
    DataField = 'MAI'
    DataSource = FrmDados.DTS_Mensalidade
    TabOrder = 4
    ValueChecked = 'S'
    ValueUnchecked = 'N'
    Visible = False
  end
  object CBJun: TDBCheckBox
    Left = 160
    Top = 144
    Width = 97
    Height = 17
    Caption = 'Junho'
    DataField = 'JUN'
    DataSource = FrmDados.DTS_Mensalidade
    TabOrder = 5
    ValueChecked = 'S'
    ValueUnchecked = 'N'
    Visible = False
  end
  object CBJul: TDBCheckBox
    Left = 304
    Top = 64
    Width = 97
    Height = 17
    Caption = 'Julho'
    DataField = 'JUL'
    DataSource = FrmDados.DTS_Mensalidade
    TabOrder = 6
    ValueChecked = 'S'
    ValueUnchecked = 'N'
    Visible = False
  end
  object CBAgo: TDBCheckBox
    Left = 304
    Top = 104
    Width = 97
    Height = 17
    Caption = 'Agosto'
    DataField = 'AGO'
    DataSource = FrmDados.DTS_Mensalidade
    TabOrder = 7
    ValueChecked = 'S'
    ValueUnchecked = 'N'
    Visible = False
  end
  object CBSet: TDBCheckBox
    Left = 304
    Top = 144
    Width = 97
    Height = 17
    Caption = 'Setembro'
    DataField = 'SETE'
    DataSource = FrmDados.DTS_Mensalidade
    TabOrder = 8
    ValueChecked = 'S'
    ValueUnchecked = 'N'
    Visible = False
  end
  object CBOut: TDBCheckBox
    Left = 440
    Top = 64
    Width = 97
    Height = 17
    Caption = 'Outubro'
    DataField = 'OUT'
    DataSource = FrmDados.DTS_Mensalidade
    TabOrder = 9
    ValueChecked = 'S'
    ValueUnchecked = 'N'
    Visible = False
  end
  object CBNov: TDBCheckBox
    Left = 440
    Top = 104
    Width = 97
    Height = 17
    Caption = 'Novembro'
    DataField = 'NOV'
    DataSource = FrmDados.DTS_Mensalidade
    TabOrder = 10
    ValueChecked = 'S'
    ValueUnchecked = 'N'
    Visible = False
  end
  object CBDez: TDBCheckBox
    Left = 440
    Top = 144
    Width = 97
    Height = 17
    Caption = 'Dezembro'
    DataField = 'DEZ'
    DataSource = FrmDados.DTS_Mensalidade
    TabOrder = 11
    ValueChecked = 'S'
    ValueUnchecked = 'N'
    Visible = False
  end
  object BtnOK: TBitBtn
    Left = 192
    Top = 176
    Width = 179
    Height = 25
    Caption = '&OK'
    TabOrder = 12
    OnClick = BtnOKClick
  end
  object EdAno: TMaskEdit
    Left = 88
    Top = 16
    Width = 79
    Height = 21
    EditMask = '!9999;1;_'
    MaxLength = 4
    TabOrder = 13
    Text = '    '
    OnKeyPress = EdAnoKeyPress
  end
  object BtnGeraContas: TBitBtn
    Left = 256
    Top = 16
    Width = 129
    Height = 25
    Caption = '&Gera contas a receber'
    TabOrder = 14
    OnClick = BtnGeraContasClick
  end
  object BtnEstContas: TBitBtn
    Left = 408
    Top = 16
    Width = 128
    Height = 25
    Caption = '&Estornar contas geradas'
    TabOrder = 15
    OnClick = BtnEstContasClick
  end
end
