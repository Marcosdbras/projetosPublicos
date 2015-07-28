object frmSpedFiscal: TfrmSpedFiscal
  Left = 397
  Top = 283
  BorderStyle = bsDialog
  Caption = 'Sped Fiscal'
  ClientHeight = 359
  ClientWidth = 447
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
    Top = 327
    Width = 447
    Height = 2
    Align = alBottom
  end
  object Label3: TLabel
    Left = 8
    Top = 23
    Width = 70
    Height = 13
    Caption = 'Per'#237'odo Inicial:'
  end
  object Label4: TLabel
    Left = 184
    Top = 23
    Width = 26
    Height = 13
    Caption = 'Final:'
  end
  object BT_SAIDA: TButton
    Left = 312
    Top = 11
    Width = 120
    Height = 25
    Caption = 'Tabela de Saida'
    TabOrder = 3
    Visible = False
    OnClick = BT_SAIDAClick
  end
  object Panel1: TPanel
    Left = 0
    Top = 329
    Width = 447
    Height = 30
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    object bt_ok: TButton
      Left = 148
      Top = 2
      Width = 75
      Height = 25
      Caption = '&Gerar'
      TabOrder = 0
      OnClick = bt_okClick
    end
    object bt_cancelar: TButton
      Left = 228
      Top = 2
      Width = 75
      Height = 25
      Caption = '&Fechar'
      TabOrder = 1
      OnClick = bt_cancelarClick
    end
  end
  object ed_data_ini: TDateEdit
    Left = 88
    Top = 21
    Width = 87
    Height = 21
    NumGlyphs = 2
    TabOrder = 0
    Text = '00/00/0000'
    OnKeyPress = ed_data_iniKeyPress
  end
  object ed_data_fim: TDateEdit
    Left = 216
    Top = 21
    Width = 89
    Height = 21
    NumGlyphs = 2
    TabOrder = 1
    Text = '00/00/0000'
    OnKeyPress = ed_data_iniKeyPress
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 56
    Width = 447
    Height = 271
    ActivePage = TabSintegra
    Align = alBottom
    TabOrder = 4
    object TabSintegra: TTabSheet
      Caption = 'Sintegra'
      object progressbar1: TRzProgressBar
        Left = 0
        Top = 231
        Width = 439
        Height = 12
        Align = alBottom
        BackColor = clBtnFace
        BackColorStop = clWindow
        BarColor = 12582847
        BarColorStop = 59904
        BarStyle = bsGradient
        BorderOuter = fsFlat
        BorderWidth = 0
        Font.Charset = ANSI_CHARSET
        Font.Color = 12582847
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        InteriorOffset = 0
        ParentFont = False
        PartsComplete = 0
        Percent = 0
        ShowPercent = False
        ThemeAware = False
        TotalParts = 100
        Visible = False
      end
      object rchSintegra: TRichEdit
        Left = 0
        Top = 0
        Width = 439
        Height = 231
        Align = alClient
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Lucida Console'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 0
      end
      object GroupBox1: TGroupBox
        Left = 12
        Top = 172
        Width = 425
        Height = 49
        Caption = 'Layout'
        TabOrder = 1
        Visible = False
        object rb_sintegra: TRadioButton
          Left = 16
          Top = 16
          Width = 209
          Height = 17
          Caption = 'Sintegra - Conv'#234'nio 57/95'
          Checked = True
          TabOrder = 0
          TabStop = True
        end
        object rb_efd: TRadioButton
          Left = 192
          Top = 16
          Width = 217
          Height = 17
          Caption = 'EFD - Ato COTEPE/ICMS  09/08'
          TabOrder = 1
        end
      end
    end
    object TabSPED: TTabSheet
      Caption = 'SPED'
      ImageIndex = 1
      object rchSped: TRichEdit
        Left = 0
        Top = 0
        Width = 439
        Height = 243
        Align = alClient
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Lucida Console'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
  end
  object bt_sintegra: TButton
    Left = 312
    Top = 35
    Width = 120
    Height = 25
    Caption = 'Sintegra'
    TabOrder = 5
    Visible = False
    OnClick = bt_sintegraClick
  end
  object bt_sped: TButton
    Left = 312
    Top = 59
    Width = 120
    Height = 25
    Caption = 'Sped'
    TabOrder = 6
    Visible = False
    OnClick = bt_spedClick
  end
  object qrSaida: TIBCQuery
    Left = 24
    Top = 209
  end
  object QrAdiciona_item: TIBCQuery
    Left = 56
    Top = 209
  end
  object qritem: TIBCQuery
    Left = 88
    Top = 209
  end
  object qrsaida_item: TIBCQuery
    Left = 120
    Top = 209
  end
  object qrsaida_temp: TIBCQuery
    Left = 152
    Top = 209
  end
  object QrySIntegra: TIBCQuery
    Left = 24
    Top = 177
  end
  object QrySintegra_D: TIBCQuery
    Left = 56
    Top = 177
  end
  object DtsQrySintegra: TIBCDataSource
    DataSet = QrySIntegra
    Left = 92
    Top = 177
  end
  object query: TIBCQuery
    Left = 184
    Top = 209
  end
  object menu_sped: TMainMenu
    Left = 176
    Top = 57
    object blocos1: TMenuItem
      Caption = 'blocos'
      object Bloco_0_Abertura: TMenuItem
        Caption = 'Bloco_0_Abertura'
        OnClick = Bloco_0_AberturaClick
      end
      object Bloco_0_Reg_0190: TMenuItem
        Caption = 'Bloco_0_Reg_0190'
        OnClick = Bloco_0_Reg_0190Click
      end
      object Bloco_0_Reg_0200: TMenuItem
        Caption = 'Bloco_0_Reg_0200'
        OnClick = Bloco_0_Reg_0200Click
      end
      object Bloco_0_Fechamento: TMenuItem
        Caption = 'Bloco_0_Fechamento'
        OnClick = Bloco_0_FechamentoClick
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object Bloco_C_Abertura: TMenuItem
        Caption = 'Bloco_C_Abertura'
        OnClick = Bloco_C_AberturaClick
      end
      object Bloco_C_Reg_C300: TMenuItem
        Caption = 'Bloco_C_Reg_C300'
        OnClick = Bloco_C_Reg_C300Click
      end
      object Bloco_C_Reg_C400: TMenuItem
        Caption = 'Bloco_C_Reg_C400'
        OnClick = Bloco_C_Reg_C400Click
      end
      object Bloco_C_Fechamento: TMenuItem
        Caption = 'Bloco_C_Fechamento'
        OnClick = Bloco_C_FechamentoClick
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Bloco_D: TMenuItem
        Caption = 'Bloco_D'
        OnClick = Bloco_DClick
      end
      object Bloco_E: TMenuItem
        Caption = 'Bloco_E'
        OnClick = Bloco_EClick
      end
      object Bloco_H: TMenuItem
        Caption = 'Bloco_H'
        OnClick = Bloco_HClick
      end
      object Bloco_1: TMenuItem
        Caption = 'Bloco_1'
        OnClick = Bloco_1Click
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object Bloco_9: TMenuItem
        Caption = 'Bloco_9'
        OnClick = Bloco_9Click
      end
    end
  end
  object qrReducao: TIBCQuery
    Left = 128
    Top = 177
  end
  object qrECF: TIBCQuery
    Left = 160
    Top = 177
  end
  object qrCupom: TIBCQuery
    Left = 192
    Top = 177
  end
  object qrcupom_item: TIBCQuery
    Left = 224
    Top = 177
  end
end
