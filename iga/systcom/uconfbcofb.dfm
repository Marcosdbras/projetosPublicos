object frmconfbcofb: Tfrmconfbcofb
  Left = 248
  Top = 93
  Width = 775
  Height = 631
  BorderIcons = []
  Caption = 'Configura Banco de Dados Auxiliar SYSTCOM'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlsuperior: TPanel
    Left = 0
    Top = 0
    Width = 767
    Height = 42
    Align = alTop
    TabOrder = 0
    object spdconfirma: TSpeedButton
      Left = 726
      Top = 4
      Width = 38
      Height = 33
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333333333333333333333C3333333333333337F3333333333333C0C3333
        333333333777F33333333333C0F0C3333333333377377F333333333C0FFF0C33
        3333333777F377F3333333CCC0FFF0C333333373377F377F33333CCCCC0FFF0C
        333337333377F377F3334CCCCCC0FFF0C3337F3333377F377F33C4CCCCCC0FFF
        0C3377F333F377F377F33C4CC0CCC0FFF0C3377F3733F77F377333C4CCC0CC0F
        0C333377F337F3777733333C4C00CCC0333333377F773337F3333333C4CCCCCC
        3333333377F333F7333333333C4CCCC333333333377F37733333333333C4C333
        3333333333777333333333333333333333333333333333333333}
      NumGlyphs = 2
      OnClick = spdconfirmaClick
    end
  end
  object pnlinferior: TPanel
    Left = 0
    Top = 563
    Width = 767
    Height = 41
    Align = alBottom
    TabOrder = 1
  end
  object pnldir: TPanel
    Left = 0
    Top = 42
    Width = 767
    Height = 521
    Align = alClient
    TabOrder = 2
    object Bevel2: TBevel
      Left = 1
      Top = 1
      Width = 765
      Height = 48
      Align = alTop
    end
    object Label4: TLabel
      Left = 306
      Top = 13
      Width = 399
      Height = 22
      Caption = 'Configurar Banco de Dados Auxiliar SYSTCOM'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object ScrollBox5: TScrollBox
      Left = 5
      Top = 55
      Width = 732
      Height = 106
      TabOrder = 0
      object Label62: TLabel
        Left = 8
        Top = 12
        Width = 171
        Height = 13
        Caption = 'Banco de Dados Auxiliar SYSTCOM'
      end
      object Label1: TLabel
        Left = 8
        Top = 40
        Width = 41
        Height = 13
        Caption = 'Caminho'
      end
      object Label2: TLabel
        Left = 184
        Top = 71
        Width = 31
        Height = 13
        Caption = 'Senha'
      end
      object Label3: TLabel
        Left = 12
        Top = 72
        Width = 50
        Height = 13
        Caption = 'UserName'
      end
      object edicaminhobco: TEdit
        Left = 72
        Top = 37
        Width = 641
        Height = 21
        TabOrder = 0
        Text = 'edicaminhobco'
      end
      object edisenha: TEdit
        Left = 224
        Top = 68
        Width = 97
        Height = 21
        PasswordChar = '*'
        TabOrder = 2
        Text = 'edisenha'
      end
      object btntestar: TButton
        Left = 608
        Top = 63
        Width = 107
        Height = 25
        Caption = 'Testar Conex'#227'o'
        TabOrder = 3
        OnClick = btntestarClick
      end
      object ediuser_name: TEdit
        Left = 72
        Top = 68
        Width = 97
        Height = 21
        TabOrder = 1
        Text = 'ediuser_name'
      end
    end
  end
end
