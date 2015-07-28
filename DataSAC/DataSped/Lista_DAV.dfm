object frmLista_DAV: TfrmLista_DAV
  Left = 392
  Top = 378
  BorderStyle = bsDialog
  Caption = 'DAV Emitidos'
  ClientHeight = 127
  ClientWidth = 313
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
    Top = 95
    Width = 313
    Height = 2
    Align = alBottom
  end
  object Label3: TLabel
    Left = 8
    Top = 62
    Width = 70
    Height = 13
    Caption = 'Per'#237'odo Inicial:'
  end
  object Label4: TLabel
    Left = 184
    Top = 62
    Width = 26
    Height = 13
    Caption = 'Final:'
  end
  object Panel1: TPanel
    Left = 0
    Top = 97
    Width = 313
    Height = 30
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
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
  object ed_data_ini: TDateEdit
    Left = 88
    Top = 60
    Width = 87
    Height = 21
    NumGlyphs = 2
    TabOrder = 0
    Text = '00/00/0000'
    OnKeyPress = ed_data_iniKeyPress
  end
  object ed_data_fim: TDateEdit
    Left = 216
    Top = 60
    Width = 89
    Height = 21
    NumGlyphs = 2
    TabOrder = 1
    Text = '00/00/0000'
    OnKeyPress = ed_data_iniKeyPress
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 297
    Height = 41
    Caption = 'Tipo'
    TabOrder = 3
    object rb_gerencial: TRadioButton
      Left = 16
      Top = 16
      Width = 113
      Height = 17
      Caption = 'Relat'#243'rio Gerencial'
      Checked = True
      TabOrder = 0
      TabStop = True
      OnKeyPress = rb_gerencialKeyPress
    end
    object rb_arquivo: TRadioButton
      Left = 152
      Top = 16
      Width = 113
      Height = 17
      Caption = 'Arquivo Eletr'#244'nico'
      TabOrder = 1
      OnKeyPress = rb_gerencialKeyPress
    end
  end
  object query: TIBCQuery
    Connection = frmModulo.Conexao_Servidor
    Left = 200
    Top = 48
  end
  object qrDAV: TIBCQuery
    Connection = frmModulo.conexao
    Left = 120
    Top = 40
  end
end
