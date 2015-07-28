object frmConfig_ECF: TfrmConfig_ECF
  Left = 586
  Top = 409
  BorderStyle = bsDialog
  Caption = 'Configura'#231#245'es do EFC'
  ClientHeight = 321
  ClientWidth = 347
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = pop_principal
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 89
    Width = 347
    Height = 2
    Align = alTop
  end
  object Bevel2: TBevel
    Left = 0
    Top = 122
    Width = 347
    Height = 2
    Align = alTop
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 347
    Height = 89
    Align = alTop
    BevelOuter = bvNone
    Enabled = False
    TabOrder = 0
    object Label1: TLabel
      Left = 18
      Top = 12
      Width = 33
      Height = 13
      Caption = 'Marca:'
    end
    object Label2: TLabel
      Left = 204
      Top = 12
      Width = 38
      Height = 13
      Caption = 'Modelo:'
    end
    object Label3: TLabel
      Left = 26
      Top = 36
      Width = 24
      Height = 13
      Caption = 'Tipo:'
    end
    object Label4: TLabel
      Left = 18
      Top = 60
      Width = 30
      Height = 13
      Caption = 'Serial:'
    end
    object Label5: TLabel
      Left = 106
      Top = 36
      Width = 41
      Height = 13
      Caption = 'N'#250'mero:'
    end
    object ed_marca: TEdit
      Left = 56
      Top = 8
      Width = 145
      Height = 21
      TabOrder = 0
      Text = 'Daruma Automa'#231#227'o'
    end
    object ed_modelo: TEdit
      Left = 248
      Top = 8
      Width = 89
      Height = 21
      TabOrder = 1
      Text = 'Edit1'
    end
    object ed_tipo: TEdit
      Left = 56
      Top = 32
      Width = 41
      Height = 21
      TabOrder = 2
      Text = 'Edit1'
    end
    object ed_serial: TEdit
      Left = 56
      Top = 56
      Width = 281
      Height = 21
      TabOrder = 3
      Text = 'Edit1'
    end
    object ed_numero: TEdit
      Left = 152
      Top = 32
      Width = 41
      Height = 21
      TabOrder = 4
      Text = 'Edit1'
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 91
    Width = 347
    Height = 31
    Align = alTop
    BevelOuter = bvNone
    Enabled = False
    TabOrder = 1
    object Label7: TLabel
      Left = 24
      Top = 8
      Width = 27
      Height = 13
      Caption = 'Data:'
    end
    object Label8: TLabel
      Left = 136
      Top = 8
      Width = 27
      Height = 13
      Caption = 'Hora:'
    end
    object ed_data: TEdit
      Left = 56
      Top = 4
      Width = 73
      Height = 21
      ReadOnly = True
      TabOrder = 0
      Text = '01/01/1900'
    end
    object ed_hora: TEdit
      Left = 168
      Top = 4
      Width = 57
      Height = 21
      ReadOnly = True
      TabOrder = 1
      Text = '00:00:00'
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 124
    Width = 347
    Height = 148
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = 'Inicial'
      object Label6: TLabel
        Left = 8
        Top = 8
        Width = 30
        Height = 13
        Caption = 'Porta:'
      end
      object SpeedButton1: TSpeedButton
        Left = 312
        Top = 96
        Width = 23
        Height = 22
        Hint = 'Informa'#231#245'es sobre hor'#225'rio de ver'#227'o'
        Caption = '?'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton1Click
      end
      object cb_porta: TComboBox
        Left = 48
        Top = 5
        Width = 57
        Height = 21
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 0
        Text = 'AUTO'
        Items.Strings = (
          'AUTO'
          'COM1'
          'COM2'
          'COM3'
          'COM5'
          'COM6'
          'COM7'
          'COM8'
          'COM9')
      end
      object rb_horario_verao: TCheckBox
        Left = 8
        Top = 40
        Width = 105
        Height = 17
        Caption = 'Hor'#225'rio de Ver'#227'o'
        TabOrder = 1
        OnClick = rb_horario_veraoClick
      end
      object rb_reducao_Z: TCheckBox
        Left = 8
        Top = 56
        Width = 161
        Height = 17
        Caption = 'Redu'#231#227'o Z Autom'#225'tica'
        TabOrder = 2
        OnClick = rb_reducao_ZClick
      end
      object bt_confirmar: TButton
        Left = 8
        Top = 80
        Width = 129
        Height = 25
        Caption = 'Confirmar'
        TabOrder = 3
        OnClick = bt_confirmarClick
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Formas de Pagamento'
      ImageIndex = 1
      object ls_forma_pgto: TListBox
        Left = 0
        Top = 0
        Width = 145
        Height = 124
        Align = alLeft
        ItemHeight = 13
        TabOrder = 0
      end
      object GroupBox2: TGroupBox
        Left = 164
        Top = 8
        Width = 161
        Height = 113
        Caption = 'Incluir'
        TabOrder = 1
        object Label9: TLabel
          Left = 8
          Top = 16
          Width = 46
          Height = 13
          Caption = 'Descri'#231#227'o'
        end
        object ed_forma_pgto: TEdit
          Left = 8
          Top = 32
          Width = 137
          Height = 21
          MaxLength = 15
          TabOrder = 0
          OnKeyPress = ed_forma_pgtoKeyPress
        end
        object Button1: TButton
          Left = 43
          Top = 79
          Width = 75
          Height = 25
          Caption = 'Confirmar'
          TabOrder = 2
          OnClick = Button1Click
        end
        object rb_vinculado: TCheckBox
          Left = 8
          Top = 56
          Width = 97
          Height = 17
          Caption = 'Vinculado'
          TabOrder = 1
          OnKeyPress = ed_forma_pgtoKeyPress
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Al'#237'quotas'
      ImageIndex = 2
      object ls_aliquota: TListBox
        Left = 0
        Top = 0
        Width = 89
        Height = 120
        Align = alLeft
        ItemHeight = 13
        TabOrder = 0
      end
      object GroupBox1: TGroupBox
        Left = 112
        Top = 8
        Width = 185
        Height = 105
        Caption = 'Incluir'
        TabOrder = 1
        object bt_aliquota: TButton
          Left = 86
          Top = 64
          Width = 75
          Height = 25
          Caption = 'Confirmar'
          TabOrder = 3
          OnClick = bt_aliquotaClick
        end
        object rb_icms: TRadioButton
          Left = 8
          Top = 16
          Width = 58
          Height = 17
          Caption = 'ICMS'
          Checked = True
          TabOrder = 0
          TabStop = True
        end
        object rb_iss: TRadioButton
          Left = 8
          Top = 32
          Width = 58
          Height = 17
          Caption = 'ISS'
          TabOrder = 1
        end
        object ed_aliquota: TRxCalcEdit
          Left = 90
          Top = 20
          Width = 73
          Height = 21
          AutoSize = False
          DisplayFormat = '0.00%'
          ButtonWidth = 0
          NumGlyphs = 2
          TabOrder = 2
          OnKeyPress = ed_forma_pgtoKeyPress
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Totalizadores NF'
      ImageIndex = 3
      object ls_total_nf: TListBox
        Left = 0
        Top = 0
        Width = 161
        Height = 124
        Align = alLeft
        ItemHeight = 13
        TabOrder = 0
      end
      object GroupBox3: TGroupBox
        Left = 172
        Top = 8
        Width = 161
        Height = 113
        Caption = 'Incluir'
        TabOrder = 1
        object Label10: TLabel
          Left = 8
          Top = 32
          Width = 46
          Height = 13
          Caption = 'Descri'#231#227'o'
        end
        object Label11: TLabel
          Left = 70
          Top = 19
          Width = 33
          Height = 13
          Caption = #205'ndice:'
        end
        object ed_totalizador: TEdit
          Left = 8
          Top = 48
          Width = 137
          Height = 21
          MaxLength = 19
          TabOrder = 1
          OnKeyPress = ed_forma_pgtoKeyPress
        end
        object bt_totalizador: TButton
          Left = 43
          Top = 79
          Width = 75
          Height = 25
          Caption = 'Confirmar'
          TabOrder = 2
          OnClick = bt_totalizadorClick
        end
        object ed_indice: TEdit
          Left = 110
          Top = 16
          Width = 33
          Height = 21
          MaxLength = 15
          TabOrder = 0
          Text = '00'
          OnKeyPress = ed_forma_pgtoKeyPress
        end
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 272
    Width = 347
    Height = 30
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 3
    object bt_fechar: TButton
      Left = 136
      Top = 2
      Width = 75
      Height = 25
      Caption = 'Fechar'
      TabOrder = 0
      OnClick = bt_fecharClick
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 302
    Width = 347
    Height = 19
    Panels = <
      item
        Text = 'F8 - Menu Fiscal'
        Width = 50
      end>
  end
  object pop_principal: TAdvPopupMenu
    MenuStyler = frmModulo.estilo_menu
    Version = '2.5.4.0'
    Left = 8
    Top = 104
    object MenuFiscal2: TMenuItem
      Caption = 'Menu Fiscal'
      ShortCut = 119
      OnClick = MenuFiscal2Click
    end
  end
end
