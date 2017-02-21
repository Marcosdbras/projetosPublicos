object frmEspelhoMFD: TfrmEspelhoMFD
  Left = 605
  Top = 230
  BorderStyle = bsSingle
  Caption = 'Espelho da MFD'
  ClientHeight = 135
  ClientWidth = 321
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 10
    Width = 97
    Height = 73
    Caption = 'Por intervalo de'
    TabOrder = 0
    object rb_data: TRadioButton
      Left = 8
      Top = 16
      Width = 80
      Height = 17
      Caption = '&Data'
      Checked = True
      TabOrder = 0
      TabStop = True
      OnClick = rb_dataClick
      OnKeyPress = rb_dataKeyPress
    end
    object rb_coo: TRadioButton
      Left = 8
      Top = 32
      Width = 80
      Height = 17
      Caption = 'C&OO'
      TabOrder = 1
      OnClick = rb_cooClick
      OnKeyPress = rb_cooKeyPress
    end
    object rb_crz: TRadioButton
      Left = 8
      Top = 48
      Width = 80
      Height = 17
      Caption = 'C&RZ'
      TabOrder = 2
      OnClick = rb_crzClick
      OnKeyPress = rb_crzKeyPress
    end
  end
  object GroupBox2: TGroupBox
    Left = 112
    Top = 10
    Width = 201
    Height = 73
    Caption = 'Sele'#231#227'o'
    TabOrder = 1
    object Label3: TLabel
      Left = 8
      Top = 23
      Width = 27
      Height = 13
      Caption = 'Inicial'
    end
    object Label4: TLabel
      Left = 104
      Top = 23
      Width = 22
      Height = 13
      Caption = 'Final'
    end
    object ed_inicio: TEdit
      Left = 8
      Top = 37
      Width = 88
      Height = 21
      TabOrder = 2
      Text = '0000000001'
      OnKeyPress = ed_inicioKeyPress
    end
    object ed_fim: TEdit
      Left = 104
      Top = 37
      Width = 89
      Height = 21
      TabOrder = 3
      Text = '0000000001'
      OnKeyPress = ed_fimKeyPress
    end
    object ed_data_ini: TDateEdit
      Left = 8
      Top = 37
      Width = 88
      Height = 21
      NumGlyphs = 2
      TabOrder = 0
      Text = '00/00/0000'
      OnKeyPress = ed_data_iniKeyPress
    end
    object ed_data_fim: TDateEdit
      Left = 104
      Top = 37
      Width = 89
      Height = 21
      NumGlyphs = 2
      TabOrder = 1
      Text = '00/00/0000'
      OnKeyPress = ed_data_fimKeyPress
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 96
    Width = 321
    Height = 39
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    object bt_ok: TButton
      Left = 80
      Top = 5
      Width = 75
      Height = 25
      Caption = '&Ok'
      TabOrder = 0
      OnClick = bt_okClick
    end
    object bt_cancelar: TButton
      Left = 167
      Top = 5
      Width = 75
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 1
      OnClick = bt_cancelarClick
    end
  end
end
