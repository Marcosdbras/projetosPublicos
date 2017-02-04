object frmTEF_cancelamento: TfrmTEF_cancelamento
  Left = 1260
  Top = 662
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Cancelar TEF'
  ClientHeight = 197
  ClientWidth = 275
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  PopupMenu = pop_principal
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label21: TLabel
    Left = 19
    Top = 68
    Width = 82
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Valor total:'
    ParentShowHint = False
    ShowHint = True
  end
  object Label22: TLabel
    Left = 19
    Top = 93
    Width = 82
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Data:'
    ParentShowHint = False
    ShowHint = True
  end
  object Label23: TLabel
    Left = 19
    Top = 117
    Width = 82
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Hora:'
    ParentShowHint = False
    ShowHint = True
  end
  object Label24: TLabel
    Left = 19
    Top = 44
    Width = 82
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'N'#186' da transa'#231#227'o:'
    ParentShowHint = False
    ShowHint = True
  end
  object Label1: TLabel
    Left = 19
    Top = 20
    Width = 82
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Rede:'
  end
  object Bevel1: TBevel
    Left = 0
    Top = 146
    Width = 275
    Height = 2
    Align = alBottom
  end
  object edNSUTransacao: TEdit
    Left = 104
    Top = 40
    Width = 121
    Height = 21
    Hint = 'N'#186' da transa'#231#227'o impresso no comprovante'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnKeyPress = edNSUTransacaoKeyPress
  end
  object cboRede: TComboBox
    Left = 104
    Top = 16
    Width = 121
    Height = 21
    Style = csDropDownList
    CharCase = ecUpperCase
    ItemHeight = 13
    TabOrder = 0
    OnKeyPress = cboRedeKeyPress
    Items.Strings = (
      'AMEX'
      'REDECARD'
      'TECBAN'
      'VISANET'
      'HIPERCARD')
  end
  object edvalortotalc: TRxCalcEdit
    Left = 104
    Top = 64
    Width = 121
    Height = 21
    AutoSize = False
    DisplayFormat = '######0.00'
    ButtonWidth = 0
    NumGlyphs = 2
    TabOrder = 2
    OnKeyPress = edNSUTransacaoKeyPress
  end
  object edhoratransacao: TMaskEdit
    Left = 104
    Top = 112
    Width = 73
    Height = 21
    EditMask = '!90:00:00;1; '
    MaxLength = 8
    TabOrder = 4
    Text = '  :  :  '
    OnKeyPress = edNSUTransacaoKeyPress
  end
  object Panel1: TPanel
    Left = 0
    Top = 148
    Width = 275
    Height = 30
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 5
    object BSIM: TButton
      Left = 60
      Top = 3
      Width = 75
      Height = 25
      Caption = 'OK'
      TabOrder = 0
      OnClick = bsimClick
    end
    object DXBUTTON1: TButton
      Left = 140
      Top = 3
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 1
      OnClick = dxButton1Click
    end
  end
  object eddatatransacao: TDateEdit
    Left = 104
    Top = 88
    Width = 121
    Height = 21
    NumGlyphs = 2
    TabOrder = 3
    OnKeyPress = edNSUTransacaoKeyPress
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 178
    Width = 275
    Height = 19
    Panels = <
      item
        Text = 'F8 - Menu Fiscal'
        Width = 50
      end>
  end
  object pop_principal: TAdvPopupMenu
    MenuStyler = frmModulo.estilo_menu
    Version = '2.5.0.1'
    Left = 8
    Top = 104
    object MenuFiscal2: TMenuItem
      Caption = 'Menu Fiscal'
      ShortCut = 119
      OnClick = MenuFiscal2Click
    end
  end
end
