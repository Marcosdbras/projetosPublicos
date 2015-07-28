object frmLeitura_Memoria_Fiscal: TfrmLeitura_Memoria_Fiscal
  Left = 763
  Top = 508
  BorderStyle = bsDialog
  Caption = 'Leitura da Mem'#243'ria Fiscal'
  ClientHeight = 169
  ClientWidth = 323
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
    Top = 137
    Width = 323
    Height = 2
    Align = alBottom
  end
  object GroupBox1: TGroupBox
    Left = 112
    Top = 8
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
    object rb_crz: TRadioButton
      Left = 8
      Top = 32
      Width = 80
      Height = 17
      Caption = 'CR&Z'
      TabOrder = 1
      OnClick = rb_crzClick
      OnKeyPress = rb_crzKeyPress
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 139
    Width = 323
    Height = 30
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 4
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
  object GroupBox2: TGroupBox
    Left = 8
    Top = 72
    Width = 305
    Height = 57
    Caption = 'Sele'#231#227'o'
    TabOrder = 3
    object Label1: TLabel
      Left = 8
      Top = 15
      Width = 27
      Height = 13
      Caption = 'Inicial'
    end
    object Label2: TLabel
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
      OnKeyPress = ed_inicioKeyPress
    end
    object ed_fim: TEdit
      Left = 104
      Top = 29
      Width = 89
      Height = 21
      TabOrder = 3
      Text = '0000000001'
      OnKeyPress = ed_fimKeyPress
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
    Left = 216
    Top = 8
    Width = 97
    Height = 57
    Caption = 'Impress'#227'o'
    TabOrder = 2
    object rb_ecf: TRadioButton
      Left = 8
      Top = 16
      Width = 80
      Height = 17
      Caption = '&ECF'
      Checked = True
      TabOrder = 0
      TabStop = True
      OnKeyPress = rb_dataKeyPress
    end
    object rb_arquivo: TRadioButton
      Left = 8
      Top = 32
      Width = 80
      Height = 17
      Caption = '&Arquivo'
      TabOrder = 1
      OnKeyPress = rb_crzKeyPress
    end
  end
  object GroupBox4: TGroupBox
    Left = 8
    Top = 8
    Width = 97
    Height = 57
    Caption = 'Tipo'
    Enabled = False
    TabOrder = 0
    object rb_completa: TRadioButton
      Left = 9
      Top = 16
      Width = 76
      Height = 17
      Caption = 'Completa'
      Checked = True
      TabOrder = 0
      TabStop = True
    end
    object rb_simplificada: TRadioButton
      Left = 9
      Top = 32
      Width = 76
      Height = 17
      Caption = 'Simplificada'
      TabOrder = 1
    end
  end
end
