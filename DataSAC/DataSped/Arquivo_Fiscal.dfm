object frmArquivo_Fiscal: TfrmArquivo_Fiscal
  Left = 525
  Top = 225
  BorderStyle = bsDialog
  Caption = 'Movimento por ECF - Arquivo Fiscal'
  ClientHeight = 342
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
  object shpAviso: TShape
    Left = 4
    Top = 236
    Width = 305
    Height = 65
    Brush.Color = 10198015
  end
  object Bevel1: TBevel
    Left = 0
    Top = 310
    Width = 313
    Height = 2
    Align = alBottom
  end
  object Label3: TLabel
    Left = 6
    Top = 6
    Width = 70
    Height = 13
    Caption = 'Per'#237'odo Inicial:'
  end
  object Label4: TLabel
    Left = 120
    Top = 6
    Width = 26
    Height = 13
    Caption = 'Final:'
  end
  object Label1: TLabel
    Left = 6
    Top = 46
    Width = 26
    Height = 13
    Caption = 'ECF'#39's'
  end
  object lblAviso: TLabel
    Left = 10
    Top = 240
    Width = 292
    Height = 57
    Alignment = taCenter
    AutoSize = False
    Caption = 'O Servidor n'#227'o est'#225' ativo!'#13#10'Apenas o ECF local ser'#225' exibido.'
    Color = 13421823
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = False
    Layout = tlCenter
    Visible = False
    WordWrap = True
  end
  object sbxECFs: TScrollBox
    Left = 4
    Top = 60
    Width = 305
    Height = 173
    Color = clWhite
    Ctl3D = False
    ParentColor = False
    ParentCtl3D = False
    TabOrder = 2
  end
  object Panel1: TPanel
    Left = 0
    Top = 312
    Width = 313
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
  object ed_data_ini: TDateEdit
    Left = 4
    Top = 20
    Width = 102
    Height = 21
    Ctl3D = False
    NumGlyphs = 2
    ParentCtl3D = False
    TabOrder = 0
    OnKeyPress = ed_data_iniKeyPress
  end
  object ed_data_fim: TDateEdit
    Left = 120
    Top = 20
    Width = 105
    Height = 21
    Ctl3D = False
    ButtonWidth = 19
    NumGlyphs = 2
    ParentCtl3D = False
    TabOrder = 1
    OnKeyPress = ed_data_iniKeyPress
  end
  object CB_ECF: TComboBox
    Left = 12
    Top = 287
    Width = 25
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 4
    Visible = False
  end
  object query: TIBCQuery
    Connection = frmModulo.conexao
    Left = 200
    Top = 4
  end
end
