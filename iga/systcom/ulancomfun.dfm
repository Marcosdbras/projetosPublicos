object frmlancomfun: Tfrmlancomfun
  Left = 602
  Top = 214
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Lan'#231'a Comiss'#227'o Dentista'
  ClientHeight = 320
  ClientWidth = 360
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
    Left = 23
    Top = 13
    Width = 48
    Height = 13
    Caption = 'Dentista'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 23
    Top = 65
    Width = 80
    Height = 13
    Caption = 'Especialidade'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 23
    Top = 112
    Width = 65
    Height = 13
    Caption = 'Tratamento'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 23
    Top = 207
    Width = 67
    Height = 13
    Caption = '% Comiss'#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 23
    Top = 255
    Width = 87
    Height = 13
    Caption = 'Valor Comiss'#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 23
    Top = 160
    Width = 30
    Height = 13
    Caption = 'Valor'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblespecialidade: TLabel
    Left = 23
    Top = 89
    Width = 75
    Height = 13
    Caption = 'lblespecialidade'
  end
  object lbltratamento: TLabel
    Left = 23
    Top = 136
    Width = 60
    Height = 13
    Caption = 'lbltratamento'
  end
  object lblvalor: TLabel
    Left = 48
    Top = 184
    Width = 33
    Height = 13
    Alignment = taRightJustify
    Caption = 'lblvalor'
  end
  object cbxnomefun: TDBLookupComboBox
    Left = 23
    Top = 33
    Width = 242
    Height = 21
    DataField = 'COD1'
    DataSource = frmDados.Dts_Temp
    KeyField = 'CODIGO'
    ListField = 'NOME'
    ListSource = frmDados.Dst_Funcionarios
    TabOrder = 0
    OnKeyPress = cbxnomefunKeyPress
  end
  object edipcom: TEdit
    Left = 23
    Top = 226
    Width = 114
    Height = 21
    TabOrder = 1
    Text = 'edipcom'
    OnExit = edipcomExit
    OnKeyPress = edipcomKeyPress
  end
  object edivcom: TEdit
    Left = 23
    Top = 274
    Width = 82
    Height = 21
    TabOrder = 2
    Text = 'edivcom'
    OnExit = edivcomExit
    OnKeyPress = edivcomKeyPress
  end
  object btnok: TBitBtn
    Left = 271
    Top = 8
    Width = 75
    Height = 25
    Caption = '&OK'
    TabOrder = 3
  end
  object btncancelar: TBitBtn
    Left = 271
    Top = 40
    Width = 75
    Height = 25
    Caption = '&CANCELAR'
    TabOrder = 4
    OnClick = btncancelarClick
  end
end
