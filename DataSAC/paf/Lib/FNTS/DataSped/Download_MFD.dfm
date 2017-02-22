object frmDownload_MFD: TfrmDownload_MFD
  Left = 604
  Top = 222
  Width = 338
  Height = 180
  Caption = 'Espelho da MFD'
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
    Top = 110
    Width = 322
    Height = 2
    Align = alBottom
  end
  object Panel1: TPanel
    Left = 0
    Top = 112
    Width = 322
    Height = 30
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 3
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
  object GroupBox1: TGroupBox
    Left = 8
    Top = 48
    Width = 97
    Height = 57
    Caption = 'Por intervalo de'
    TabOrder = 1
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
      OnKeyPress = rb_dataKeyPress
    end
  end
  object GroupBox2: TGroupBox
    Left = 112
    Top = 48
    Width = 201
    Height = 57
    Caption = 'Sele'#231#227'o'
    TabOrder = 2
    object Label3: TLabel
      Left = 8
      Top = 15
      Width = 27
      Height = 13
      Caption = 'Inicial'
    end
    object Label4: TLabel
      Left = 104
      Top = 15
      Width = 22
      Height = 13
      Caption = 'Final'
    end
    object ed_inicio: TEdit
      Left = 8
      Top = 29
      Width = 88
      Height = 21
      TabOrder = 2
      Text = '0000000001'
      OnKeyPress = ed_data_iniKeyPress
    end
    object ed_fim: TEdit
      Left = 104
      Top = 29
      Width = 89
      Height = 21
      TabOrder = 3
      Text = '0000000001'
      OnKeyPress = ed_data_fimKeyPress
    end
    object ed_data_ini: TDateEdit
      Left = 8
      Top = 29
      Width = 88
      Height = 21
      NumGlyphs = 2
      TabOrder = 0
      Text = '00/00/0000'
      OnKeyPress = ed_data_iniKeyPress
    end
    object ed_data_fim: TDateEdit
      Left = 104
      Top = 29
      Width = 89
      Height = 21
      NumGlyphs = 2
      TabOrder = 1
      Text = '00/00/0000'
      OnKeyPress = ed_data_fimKeyPress
    end
  end
  object GroupBox3: TGroupBox
    Left = 8
    Top = 0
    Width = 305
    Height = 41
    Caption = 'Tipo'
    TabOrder = 0
    object rb_espelho: TRadioButton
      Left = 8
      Top = 16
      Width = 80
      Height = 17
      Caption = 'Espelho'
      Checked = True
      TabOrder = 0
      TabStop = True
      OnKeyPress = rb_espelhoKeyPress
    end
    object rb_arquivo: TRadioButton
      Left = 88
      Top = 16
      Width = 80
      Height = 17
      Caption = 'Arquivo'
      Enabled = False
      TabOrder = 1
      OnKeyPress = rb_espelhoKeyPress
    end
  end
end
