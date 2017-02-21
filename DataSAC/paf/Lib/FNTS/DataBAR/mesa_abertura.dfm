object frmmesa_abertura: Tfrmmesa_abertura
  Left = 552
  Top = 499
  BorderStyle = bsDialog
  Caption = 'Abertura de Mesa/Comanda'
  ClientHeight = 120
  ClientWidth = 395
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 82
    Width = 395
    Height = 2
    Align = alBottom
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 145
    Height = 65
    Caption = 'N'#250'mero'
    TabOrder = 0
    object lb_mesa: TLabel
      Left = 2
      Top = 23
      Width = 141
      Height = 31
      Alignment = taCenter
      AutoSize = False
      Caption = '000001'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 84
    Width = 395
    Height = 36
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object bt_confirmar: TBitBtn
      Left = 120
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Confirmar'
      TabOrder = 0
      OnClick = bt_confirmarClick
    end
    object bt_cancelar: TBitBtn
      Left = 200
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 1
      OnClick = bt_cancelarClick
    end
  end
  object GroupBox2: TGroupBox
    Left = 168
    Top = 8
    Width = 217
    Height = 65
    Caption = 'Gar'#231'on / Atendente'
    TabOrder = 2
    object CB_FUNCI: TwwDBLookupCombo
      Left = 11
      Top = 24
      Width = 196
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      CharCase = ecUpperCase
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'NOME'#9'30'#9'NOME'#9'F'
        'CODIGO'#9'6'#9'CODIGO'#9#9)
      LookupTable = qrfunci
      LookupField = 'NOME'
      ParentFont = False
      TabOrder = 0
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnKeyPress = CB_FUNCIKeyPress
    end
  end
  object qrfunci: TIBCQuery
    Connection = frmModulo.Conexao
    SQL.Strings = (
      'select nome, codigo'
      'from '
      'c000008'
      'where f_vendedor = 1'
      'order by nome')
    Active = True
    Left = 235
    Top = 32
  end
  object dsfunci: TIBCDataSource
    DataSet = qrfunci
    Left = 264
    Top = 32
  end
  object query: TIBCQuery
    Connection = frmModulo.Conexao
    SQL.Strings = (
      'select nome, codigo'
      'from '
      'c000008'
      'where funcao = '#39'VENDEDOR'#39
      'order by nome')
    Active = True
    Left = 203
    Top = 32
  end
  object PopupMenu1: TPopupMenu
    Left = 312
    Top = 48
    object Cancelar1: TMenuItem
      Caption = 'Cancelar'
      ShortCut = 27
      OnClick = bt_cancelarClick
    end
  end
end
