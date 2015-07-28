object fincecf: Tfincecf
  Left = 82
  Top = 115
  BorderStyle = bsDialog
  Caption = 'Movimento Di'#225'rio - ECF'
  ClientHeight = 485
  ClientWidth = 856
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  KeyPreview = True
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 8
    Top = 72
    Width = 841
    Height = 361
    Enabled = False
    TabOrder = 1
    object Label4: TLabel
      Left = 9
      Top = 3
      Width = 86
      Height = 13
      Caption = 'Dt Lan'#231'amento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 470
      Top = 2
      Width = 43
      Height = 13
      Caption = 'C.F.O.P'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 9
      Top = 42
      Width = 53
      Height = 13
      Caption = 'Terceiros'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label12: TLabel
      Left = 370
      Top = 43
      Width = 104
      Height = 13
      Caption = 'Inscri'#231#227'o Estadual'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object label13: TLabel
      Left = 499
      Top = 44
      Width = 14
      Height = 13
      Caption = 'UF'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label54: TLabel
      Left = 251
      Top = 3
      Width = 99
      Height = 13
      Caption = 'Situa'#231#227'o Especial'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label39: TLabel
      Left = 550
      Top = 41
      Width = 68
      Height = 13
      Caption = 'Observa'#231#227'o'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label29: TLabel
      Left = 158
      Top = 21
      Width = 62
      Height = 13
      Caption = 'Movimento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object eddtmovimento: TDateEdit
      Left = 8
      Top = 17
      Width = 103
      Height = 21
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 0
      OnKeyPress = edcodKeyPress
    end
    object edterceiros: TRxDBLookupCombo
      Left = 8
      Top = 57
      Width = 359
      Height = 21
      DropDownCount = 8
      DataField = 'CODIGO_CLIENTE'
      DataSource = dssintegra60
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      LookupField = 'CODIGO'
      LookupDisplay = 'RAZAOSOCIAL'
      LookupSource = dsfornecedor
      ParentFont = False
      TabOrder = 4
      OnExit = edterceirosExit
      OnKeyPress = edcodKeyPress
    end
    object gbicms: TGroupBox
      Left = 8
      Top = 86
      Width = 433
      Height = 134
      Caption = 'Redu'#231#227'o Z'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
      object Label1: TLabel
        Left = 44
        Top = 22
        Width = 66
        Height = 13
        Caption = 'C'#243'digo ECF'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 25
        Top = 68
        Width = 85
        Height = 13
        Caption = 'Cont.Op.Inicial'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 242
        Top = 67
        Width = 77
        Height = 13
        Caption = 'Cont.Op.Final'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 45
        Top = 91
        Width = 65
        Height = 13
        Caption = 'Cont.Red.Z'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 245
        Top = 45
        Width = 74
        Height = 13
        Caption = 'Nr.Doc.Fiscal'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 36
        Top = 46
        Width = 74
        Height = 13
        Caption = 'Itens.Cupom'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label16: TLabel
        Left = 213
        Top = 21
        Width = 106
        Height = 13
        Caption = 'Cont.Rein'#237'cio.Ope.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label18: TLabel
        Left = 257
        Top = 91
        Width = 60
        Height = 13
        Caption = 'Tributa'#231#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object edecf: TRzComboBox
        Left = 113
        Top = 17
        Width = 97
        Height = 22
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        FrameHotStyle = fsFlat
        FrameVisible = True
        ItemHeight = 14
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        OnExit = edecfExit
        OnKeyPress = edcodKeyPress
      end
      object RzDBEdit1: TRzDBEdit
        Left = 113
        Top = 64
        Width = 97
        Height = 21
        DataSource = dssintegra60
        DataField = 'nro_contador_inicio'
        Alignment = taRightJustify
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        FrameVisible = True
        ParentFont = False
        TabOrder = 4
        OnKeyPress = edcodKeyPress
      end
      object RzDBEdit2: TRzDBEdit
        Left = 322
        Top = 63
        Width = 97
        Height = 21
        DataSource = dssintegra60
        DataField = 'nro_contador_fim'
        Alignment = taRightJustify
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        FrameVisible = True
        ParentFont = False
        TabOrder = 5
        OnKeyPress = edcodKeyPress
      end
      object RzDBEdit3: TRzDBEdit
        Left = 113
        Top = 87
        Width = 97
        Height = 21
        DataSource = dssintegra60
        DataField = 'nro_contador_z'
        Alignment = taRightJustify
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        FrameVisible = True
        ParentFont = False
        TabOrder = 6
        OnKeyPress = edcodKeyPress
      end
      object RzDBEdit4: TRzDBEdit
        Left = 322
        Top = 40
        Width = 97
        Height = 21
        DataSource = dssintegra60
        DataField = 'nro_doc_fiscal'
        Alignment = taRightJustify
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        FrameVisible = True
        ParentFont = False
        TabOrder = 3
        OnKeyPress = edcodKeyPress
      end
      object RzDBEdit5: TRzDBEdit
        Left = 113
        Top = 41
        Width = 97
        Height = 21
        DataSource = dssintegra60
        DataField = 'nro_itens'
        Alignment = taRightJustify
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        FrameVisible = True
        ParentFont = False
        TabOrder = 2
        OnKeyPress = edcodKeyPress
      end
      object RzDBEdit6: TRzDBEdit
        Left = 322
        Top = 17
        Width = 97
        Height = 21
        DataSource = dssintegra60
        DataField = 'contador_reinicio'
        Alignment = taRightJustify
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        FrameVisible = True
        ParentFont = False
        TabOrder = 1
        OnKeyPress = edcodKeyPress
      end
      object RzComboBox2: TRzComboBox
        Left = 322
        Top = 86
        Width = 98
        Height = 22
        Ctl3D = False
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        FrameVisible = True
        ItemHeight = 14
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 7
        OnExit = edcfopExit
        OnKeyPress = edcodKeyPress
      end
    end
    object wwDBEdit9: TwwDBEdit
      Left = 372
      Top = 57
      Width = 118
      Height = 22
      DataField = 'IE_CLIENTE'
      DataSource = dssintegra60
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object edestado: TwwDBEdit
      Left = 497
      Top = 57
      Width = 46
      Height = 22
      DataField = 'UF_CLIENTE'
      DataSource = dssintegra60
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object gbst: TGroupBox
      Left = 445
      Top = 86
      Width = 389
      Height = 134
      Caption = 'ICMS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
      object Label14: TLabel
        Left = 9
        Top = 11
        Width = 46
        Height = 13
        Caption = 'Al'#237'quota'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label15: TLabel
        Left = 82
        Top = 11
        Width = 92
        Height = 13
        Caption = 'Base de C'#225'lculo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label17: TLabel
        Left = 245
        Top = 11
        Width = 47
        Height = 13
        Caption = 'Imposto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object RzDBEdit7: TRzDBEdit
        Left = 7
        Top = 27
        Width = 70
        Height = 21
        DataSource = dssintegra60
        DataField = 'aliquota01'
        Alignment = taRightJustify
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        FrameVisible = True
        ParentFont = False
        TabOrder = 0
        OnExit = RzDBEdit7Exit
        OnKeyPress = edcodKeyPress
      end
      object btimp1: TRzDBEdit
        Left = 241
        Top = 27
        Width = 140
        Height = 21
        DataSource = dssintegra60
        DataField = 'valor_tparcial01'
        Alignment = taRightJustify
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        FrameVisible = True
        ParentFont = False
        TabOrder = 2
        OnKeyPress = edcodKeyPress
      end
      object RzDBEdit9: TRzDBEdit
        Left = 7
        Top = 47
        Width = 70
        Height = 21
        DataSource = dssintegra60
        DataField = 'aliquota02'
        Alignment = taRightJustify
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        FrameVisible = True
        ParentFont = False
        TabOrder = 3
        OnExit = RzDBEdit9Exit
        OnKeyPress = edcodKeyPress
      end
      object btimp2: TRzDBEdit
        Left = 241
        Top = 47
        Width = 140
        Height = 21
        DataSource = dssintegra60
        DataField = 'valor_tparcial02'
        Alignment = taRightJustify
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        FrameVisible = True
        ParentFont = False
        TabOrder = 5
        OnKeyPress = edcodKeyPress
      end
      object RzDBEdit28: TRzDBEdit
        Left = 7
        Top = 67
        Width = 70
        Height = 21
        DataSource = dssintegra60
        DataField = 'aliquota03'
        Alignment = taRightJustify
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        FrameVisible = True
        ParentFont = False
        TabOrder = 6
        OnExit = RzDBEdit28Exit
        OnKeyPress = edcodKeyPress
      end
      object btimp3: TRzDBEdit
        Left = 241
        Top = 67
        Width = 140
        Height = 21
        DataSource = dssintegra60
        DataField = 'valor_tparcial03'
        Alignment = taRightJustify
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        FrameVisible = True
        ParentFont = False
        TabOrder = 8
        OnKeyPress = edcodKeyPress
      end
      object RzDBEdit31: TRzDBEdit
        Left = 7
        Top = 87
        Width = 70
        Height = 21
        DataSource = dssintegra60
        DataField = 'aliquota04'
        Alignment = taRightJustify
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        FrameVisible = True
        ParentFont = False
        TabOrder = 9
        OnExit = RzDBEdit31Exit
        OnKeyPress = edcodKeyPress
      end
      object btimp4: TRzDBEdit
        Left = 241
        Top = 87
        Width = 140
        Height = 21
        DataSource = dssintegra60
        DataField = 'valor_tparcial04'
        Alignment = taRightJustify
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        FrameVisible = True
        ParentFont = False
        TabOrder = 11
        OnKeyPress = edcodKeyPress
      end
      object RzDBEdit34: TRzDBEdit
        Left = 7
        Top = 107
        Width = 70
        Height = 21
        DataSource = dssintegra60
        DataField = 'aliquota04'
        Alignment = taRightJustify
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        FrameVisible = True
        ParentFont = False
        TabOrder = 12
        OnExit = RzDBEdit34Exit
        OnKeyPress = edcodKeyPress
      end
      object btimp5: TRzDBEdit
        Left = 241
        Top = 107
        Width = 140
        Height = 21
        DataSource = dssintegra60
        DataField = 'valor_tparcial04'
        Alignment = taRightJustify
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        FrameVisible = True
        ParentFont = False
        TabOrder = 14
        OnKeyPress = edcodKeyPress
      end
      object RzDBEdit8: TRzDBEdit
        Left = 81
        Top = 27
        Width = 155
        Height = 21
        DataSource = dssintegra60
        DataField = 'base01'
        Alignment = taRightJustify
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        FrameVisible = True
        ParentFont = False
        TabOrder = 1
        OnExit = RzDBEdit8Exit
        OnKeyPress = edcodKeyPress
      end
      object RzDBEdit10: TRzDBEdit
        Left = 81
        Top = 47
        Width = 155
        Height = 21
        DataSource = dssintegra60
        DataField = 'base02'
        Alignment = taRightJustify
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        FrameVisible = True
        ParentFont = False
        TabOrder = 4
        OnExit = RzDBEdit10Exit
        OnKeyPress = edcodKeyPress
      end
      object RzDBEdit17: TRzDBEdit
        Left = 81
        Top = 67
        Width = 155
        Height = 21
        DataSource = dssintegra60
        DataField = 'base03'
        Alignment = taRightJustify
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        FrameVisible = True
        ParentFont = False
        TabOrder = 7
        OnExit = RzDBEdit17Exit
        OnKeyPress = edcodKeyPress
      end
      object RzDBEdit20: TRzDBEdit
        Left = 81
        Top = 87
        Width = 155
        Height = 21
        DataSource = dssintegra60
        DataField = 'base04'
        Alignment = taRightJustify
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        FrameVisible = True
        ParentFont = False
        TabOrder = 10
        OnExit = RzDBEdit20Exit
        OnKeyPress = edcodKeyPress
      end
      object RzDBEdit27: TRzDBEdit
        Left = 81
        Top = 107
        Width = 155
        Height = 21
        DataSource = dssintegra60
        DataField = 'base05'
        Alignment = taRightJustify
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        FrameVisible = True
        ParentFont = False
        TabOrder = 13
        OnExit = RzDBEdit27Exit
        OnKeyPress = edcodKeyPress
      end
    end
    object RzPanel10: TRzPanel
      Left = 527
      Top = 14
      Width = 307
      Height = 25
      BorderInner = fsFlatRounded
      BorderOuter = fsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
      OnExit = Novo1Click
      object lbcfop: TRzLabel
        Left = 7
        Top = 5
        Width = 15
        Height = 16
        Caption = '...'
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object edcfop: TRzComboBox
      Left = 469
      Top = 16
      Width = 55
      Height = 22
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      FrameStyle = fsStatus
      FrameVisible = True
      ItemHeight = 14
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 3
      OnExit = edcfopExit
      OnKeyPress = edcodKeyPress
    end
    object edsitespecial: TRzComboBox
      Left = 250
      Top = 17
      Width = 127
      Height = 21
      Ctl3D = False
      Enabled = False
      FrameHotTrack = True
      FrameHotStyle = fsStatus
      FrameVisible = True
      ItemHeight = 13
      ParentCtl3D = False
      TabOrder = 2
      OnKeyPress = edcodKeyPress
    end
    object DBMemo1: TDBMemo
      Left = 549
      Top = 55
      Width = 285
      Height = 29
      HelpType = htKeyword
      DataField = 'OBSERVACAO'
      DataSource = dssintegra60
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnKeyPress = edcodKeyPress
    end
    object GroupBox1: TGroupBox
      Left = 8
      Top = 223
      Width = 433
      Height = 125
      Caption = 'Valores'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 10
      object Label19: TLabel
        Left = 9
        Top = 20
        Width = 101
        Height = 13
        Caption = 'Total Geral Inicial'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label20: TLabel
        Left = 7
        Top = 68
        Width = 103
        Height = 13
        Caption = 'Movimento do Dia'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label21: TLabel
        Left = 242
        Top = 44
        Width = 77
        Height = 13
        Caption = 'Prest.Suj.ISS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label22: TLabel
        Left = 22
        Top = 90
        Width = 88
        Height = 13
        Caption = 'Cancelamentos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label23: TLabel
        Left = 219
        Top = 67
        Width = 100
        Height = 13
        Caption = 'Acr'#233'scimos c/IOF'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label24: TLabel
        Left = 17
        Top = 46
        Width = 93
        Height = 13
        Caption = 'Total Geral Final'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label25: TLabel
        Left = 260
        Top = 20
        Width = 59
        Height = 13
        Caption = 'Descontos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label26: TLabel
        Left = 238
        Top = 91
        Width = 81
        Height = 13
        Caption = 'Valor Cont'#225'bil'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object RzDBEdit11: TRzDBEdit
        Left = 113
        Top = 64
        Width = 97
        Height = 21
        DataSource = dssintegra60
        DataField = 'valor_venda_bruta'
        Alignment = taRightJustify
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        FrameVisible = True
        ParentFont = False
        TabOrder = 2
        OnKeyPress = edcodKeyPress
      end
      object RzDBEdit12: TRzDBEdit
        Left = 322
        Top = 40
        Width = 97
        Height = 21
        DataSource = dssintegra60
        DataField = 'issqn'
        Alignment = taRightJustify
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        FrameVisible = True
        ParentFont = False
        TabOrder = 5
        OnKeyPress = edcodKeyPress
      end
      object RzDBEdit13: TRzDBEdit
        Left = 113
        Top = 87
        Width = 97
        Height = 21
        DataSource = dssintegra60
        DataField = 'cancelamento'
        Alignment = taRightJustify
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        FrameVisible = True
        ParentFont = False
        TabOrder = 3
        OnKeyPress = edcodKeyPress
      end
      object RzDBEdit14: TRzDBEdit
        Left = 322
        Top = 63
        Width = 97
        Height = 21
        DataSource = dssintegra60
        DataField = 'acrescimo_iof'
        Alignment = taRightJustify
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        FrameVisible = True
        ParentFont = False
        TabOrder = 6
        OnExit = RzDBEdit14Exit
        OnKeyPress = edcodKeyPress
      end
      object RzDBEdit15: TRzDBEdit
        Left = 113
        Top = 41
        Width = 97
        Height = 21
        DataSource = dssintegra60
        DataField = 'total_final_dia'
        Alignment = taRightJustify
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        FrameVisible = True
        ParentFont = False
        TabOrder = 1
        OnExit = RzDBEdit15Exit
        OnKeyPress = edcodKeyPress
      end
      object RzDBEdit16: TRzDBEdit
        Left = 322
        Top = 17
        Width = 97
        Height = 21
        DataSource = dssintegra60
        DataField = 'desconto'
        Alignment = taRightJustify
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        FrameVisible = True
        ParentFont = False
        TabOrder = 4
        OnKeyPress = edcodKeyPress
      end
      object bttotalgeral: TRzDBEdit
        Left = 113
        Top = 17
        Width = 97
        Height = 21
        DataSource = dssintegra60
        DataField = 'total_inicio_dia'
        Alignment = taRightJustify
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        FrameVisible = True
        ParentFont = False
        TabOrder = 0
        OnKeyPress = edcodKeyPress
      end
      object RzDBEdit18: TRzDBEdit
        Left = 322
        Top = 87
        Width = 97
        Height = 21
        DataSource = dssintegra60
        DataField = 'valor_total_geral'
        Alignment = taRightJustify
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        FrameVisible = True
        ParentFont = False
        TabOrder = 7
        OnKeyPress = edcodKeyPress
      end
    end
    object GroupBox2: TGroupBox
      Left = 444
      Top = 223
      Width = 391
      Height = 125
      Caption = 'N'#227'o Tributadas'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 11
      object Label27: TLabel
        Left = 39
        Top = 20
        Width = 60
        Height = 13
        Caption = 'ST Normal'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label28: TLabel
        Left = 27
        Top = 68
        Width = 72
        Height = 13
        Caption = 'N'#227'o Incid'#234'n.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label30: TLabel
        Left = 9
        Top = 91
        Width = 90
        Height = 13
        Caption = 'ST Comb.Cons.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label31: TLabel
        Left = 200
        Top = 67
        Width = 85
        Height = 13
        Caption = 'Isentas Reduz.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label32: TLabel
        Left = 57
        Top = 45
        Width = 42
        Height = 13
        Caption = 'Isentas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label33: TLabel
        Left = 205
        Top = 20
        Width = 80
        Height = 13
        Caption = 'ST Comb.Ind.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label34: TLabel
        Left = 211
        Top = 91
        Width = 74
        Height = 13
        Caption = 'Outras Redz.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object RzDBEdit19: TRzDBEdit
        Left = 102
        Top = 64
        Width = 97
        Height = 21
        DataSource = dssintegra60
        DataField = 'nao_incidencia'
        Alignment = taRightJustify
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        FrameVisible = True
        ParentFont = False
        TabOrder = 2
        OnKeyPress = edcodKeyPress
      end
      object RzDBEdit21: TRzDBEdit
        Left = 102
        Top = 87
        Width = 97
        Height = 21
        DataSource = dssintegra60
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        FrameVisible = True
        ParentFont = False
        TabOrder = 3
        OnKeyPress = edcodKeyPress
      end
      object RzDBEdit22: TRzDBEdit
        Left = 288
        Top = 63
        Width = 97
        Height = 21
        DataSource = dssintegra60
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        FrameVisible = True
        ParentFont = False
        TabOrder = 5
        OnKeyPress = edcodKeyPress
      end
      object RzDBEdit23: TRzDBEdit
        Left = 102
        Top = 41
        Width = 97
        Height = 21
        DataSource = dssintegra60
        DataField = 'isento'
        Alignment = taRightJustify
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        FrameVisible = True
        ParentFont = False
        TabOrder = 1
        OnKeyPress = edcodKeyPress
      end
      object RzDBEdit24: TRzDBEdit
        Left = 288
        Top = 17
        Width = 97
        Height = 21
        DataSource = dssintegra60
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        FrameVisible = True
        ParentFont = False
        TabOrder = 4
        OnKeyPress = edcodKeyPress
      end
      object RzDBEdit25: TRzDBEdit
        Left = 102
        Top = 17
        Width = 97
        Height = 21
        DataSource = dssintegra60
        DataField = 'substituicao_tributaria'
        Alignment = taRightJustify
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        FrameVisible = True
        ParentFont = False
        TabOrder = 0
        OnKeyPress = edcodKeyPress
      end
      object RzDBEdit26: TRzDBEdit
        Left = 288
        Top = 87
        Width = 97
        Height = 21
        DataSource = dssintegra60
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        FrameVisible = True
        ParentFont = False
        TabOrder = 6
        OnKeyPress = edcodKeyPress
      end
    end
    object edmovimento: TRzDBComboBox
      Left = 120
      Top = 17
      Width = 33
      Height = 21
      DataField = 'MOVIMENTO'
      DataSource = dssintegra60
      CharCase = ecUpperCase
      Ctl3D = False
      FrameHotTrack = True
      FrameHotStyle = fsStatus
      FrameVisible = True
      ItemHeight = 13
      ParentCtl3D = False
      TabOrder = 1
      OnKeyPress = edcodKeyPress
      Items.Strings = (
        'S'
        'N')
      Values.Strings = (
        'S'
        'N')
    end
  end
  object btalterar: TBitBtn
    Left = 320
    Top = 445
    Width = 94
    Height = 28
    Caption = 'Gravar'
    TabOrder = 2
    OnClick = btalterarClick
    Glyph.Data = {
      DA050000424DDA05000000000000360000002800000019000000130000000100
      180000000000A4050000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFF00FFFFFF8F45398F45398F45398F45398F45398F45398F45398F45
      398F45398F45398F45398F45398F45398F45398F45398F45398F45398F45398F
      45398F45398F45398F45398F4539FFFFFF00FFFFFF8F4539ECE3E0ECE2DFEBE0
      DEECE2DFECE2DFECE2DFECE3E0ECE2DFEBE0DEECE2DFECE3E0ECE3E0ECE2DFEB
      E0DEEBE0DEECE2DFECE2DFECE2DFECE2DFECE2DFECE2DF8F4539FFFFFF00FFFF
      FF8F4539ECE3E0AE6A37AC6734A66031A25B2D9C552B965028914B238A481D84
      441C7D411F763E22713D236D3B256838266536276437266438256537266A3A25
      ECE2DF8F4539FFFFFF00FFFFFF8F4539ECE2DFB16D39AE6A37AA6533A6602FA1
      5A2C9B542A955026904B2388471D81431C793F22733C256C3B24663826643726
      6136255E3526613625643825EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE2DFB5
      723BB36F3AB06C38AC6734A86231A35D2D9D562A985228924D248A481D82441B
      7940207D4A266F3D246537266035275E35275E3527613626EBDFDD8F4539FFFF
      FF00FFFFFF8F4539ECE3E0B9763CB7753CB5723BCC9158FFFFFFEDE8E1A66030
      A25B2D9C552B954F27AF7A52EDEAE5FFFFFFFAF9F8C4B3A1693B256136255E35
      26623626EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE2DFBC7A3EBC7A3EBA783E
      D1975CFFFFFFEEE8E1B06C39AC6737A86232A45E2EECE8E1FAF9F8A36C43CDBA
      A5FFFFFFA68669663726623626633726EBE0DE8F4539FFFFFF00FFFFFF8F4539
      ECE3E0C17F3DC1803FC17F3FD79E60FFFFFFF1EBE5C28144BF7E42B8763DAE69
      35A76131A86431975129C49C7DFFFFFFBFA1896F3C236A3A25693925EBDFDD8F
      4539FFFFFF00FFFFFF8F4539ECE3E0C6853DC6853EC6853EDBA35EFFFFFFFFFF
      FFFFFFFFFFFFFFE6C29BB6733CAF6B39AA6533E1D1C0FEFEFDE4DDD5945C327B
      4120733D23723D23EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE3E0C8873CC888
      3EC9893DE0A75BFFFFFFF5F2EEE1AC69E0AA69D29652BC7A3EB7743CB16D39D3
      A276F8F6F4E3D9CD934F2687461C7F411E7C4020ECE2DF8F4539FFFFFF00FFFF
      FF8F4539ECE3E0CB8B3BCC8C3ACE8E39E2AA5CFFFFFFF6F3F0E5B67CE4B67CE3
      B37CC38241E8CCABEADFD2B8763EE4D7C7FFFFFFAC6E40904B228A471E86451C
      ECE2DF8F4539FFFFFF00FFFFFF8F4539ECE2DFCD8D38CF8F38D09037E3AB5BFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFC58542DEAA73FAF9F7FFFFFFFFFFFFE0CDB7
      A05A2C98512A934D268F4B22EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE3E0CF
      8F36D09037D09037D29237D8993ED59741D39442D19344CE9045C1803EBC7A3E
      BF7E40C7894EBB7A42A96434A45E2E9F582D9B5429985128EBE0DE8F4539FFFF
      FF00FFFFFF8F4539ECE2DFD09036D09037CF8F38CE8E38CD8D39CA8A3BC8873D
      C6853EC3833EBF7E3FBC7A3EB9773DB6733CB26F3AAE6937AA6533A55F30A25B
      2C9F582CECE2DF8F4539FFFFFF00FFFFFF8F4539ECE2DFCF8F38CF8F38CE8E39
      CD8D3ACB8B3CC8883DC6863DC5843EC3823FC07F3FBD7B3FBA783DB8763DB572
      3CB16E3AAE6937AB6634A86231A6602FEBE0DE8F4539FFFFFF00FFFFFF8F4539
      EBE0DEEBE0DEEBDFDDEBE0DEEBE0DEEBE0DEEBE0DEEBE0DEEBDFDDEBE0DEEBE0
      DEEBE0DEEBE0DEEBDFDDEBDFDDEBE0DEEBE0DEEBDFDDEBE0DEEBDFDDEBDFDD8F
      4539FFFFFF00FFFFFF8F45398F45398F45398F45398F45398F45398F45398F45
      398F45398F45398F45398F45398F45398F45398F45398F45398F45398F45398F
      45398F45398F45398F45398F4539FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
  end
  object btcancelar: TBitBtn
    Left = 416
    Top = 445
    Width = 94
    Height = 28
    Caption = 'Cancelar'
    TabOrder = 3
    OnClick = btcancelarClick
    Glyph.Data = {
      DA050000424DDA05000000000000360000002800000019000000130000000100
      180000000000A4050000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFF00FFFFFF8F45398F45398F45398F45398F45398F45398F45398F45
      398F45398F45398F45398F45398F45398F45398F45398F45398F45398F45398F
      45398F45398F45398F45398F4539FFFFFF00FFFFFF8F4539ECE3E0ECE2DFEBE0
      DEECE2DFECE2DFECE2DFECE3E0ECE2DFEBE0DEECE2DFECE3E0ECE3E0ECE2DFEB
      E0DEEBE0DEECE2DFECE2DFECE2DFECE2DFECE2DFECE2DF8F4539FFFFFF00FFFF
      FF8F4539ECE3E0AE6A37AC6734A66031A25B2D9C552B965028914B238A481D84
      441C7D411F763E22713D236D3B256838266536276437266438256537266A3A25
      ECE2DF8F4539FFFFFF00FFFFFF8F4539ECE2DFB16D39AE6A37AA6533A6602FA1
      5A2C9B542A955026904B2388471D81431C793F22733C256C3B24663826643726
      6136255E3526613625643825EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE2DFB5
      723BB36F3AB06C38AC6734A86231A35D2D9D562A985228924D248A481D82441B
      794020733D246C3A266537266035275E35275E3527613626EBDFDD8F4539FFFF
      FF00FFFFFF8F4539ECE3E0B9763CB7753CB5723BCC9158FFFFFFEDE8E1A66030
      A25B2D9C552B954F278E492386461B7E421DD8CEC3F1EEEC6437266136255E35
      26623626EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE2DFBC7A3EBC7A3EBA783E
      D1975CFFFFFFEEE8E1B06C39AC6737A86232B77845DAC4AAD7C2ABD3C0ABF2F0
      EEFAFAF9B99F88663726623626633726EBE0DE8F4539FFFFFF00FFFFFF8F4539
      ECE3E0C17F3DC1803FC17F3FD79E60FFFFFFF1EBE5C28144BF7E42B8763DCA91
      5AFFFFFFF2EEEBE8E2DBFAF9F8FDFDFDCFC0AE6F3C236A3A25693925EBDFDD8F
      4539FFFFFF00FFFFFF8F4539ECE3E0C6853DC6853EC6853EDBA35EFFFFFFFFFF
      FFFFFFFFFFFFFFE6C29BB9773EE8DBCCE8DFD5A96431DFD2C3F2EFEC83441C7B
      4120733D23723D23EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE3E0C8873CC888
      3EC9893DE0A75BFFFFFFF5F2EEE1AC69E0AA69D29652BC7A3EC18142F1EDE8E2
      CEB7E3D6C7F2EFEC8F4B2387461C7F411E7C4020ECE2DF8F4539FFFFFF00FFFF
      FF8F4539ECE3E0CB8B3BCC8C3ACE8E39E2AA5CFFFFFFF6F3F0E5B67CE4B67CE3
      B37CC38241BB793DC98C50FBFAF8FFFFFFF2EFEC975029904B228A471E86451C
      ECE2DF8F4539FFFFFF00FFFFFF8F4539ECE2DFCD8D38CF8F38D09037E3AB5BFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFC58542BC7A3DB7753CD49F6CFFFFFFF2EFEC
      9E572B98512A934D268F4B22EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE3E0CF
      8F36D09037D09037D29237D8993ED59741D39442D19344CE9045C1803EBC7A3E
      B9773CB5723CC3844CBF814AA45E2E9F582D9B5429985128EBE0DE8F4539FFFF
      FF00FFFFFF8F4539ECE2DFD09036D09037CF8F38CE8E38CD8D39CA8A3BC8873D
      C6853EC3833EBF7E3FBC7A3EB9773DB6733CB26F3AAE6937AA6533A55F30A25B
      2C9F582CECE2DF8F4539FFFFFF00FFFFFF8F4539ECE2DFCF8F38CF8F38CE8E39
      CD8D3ACB8B3CC8883DC6863DC5843EC3823FC07F3FBD7B3FBA783DB8763DB572
      3CB16E3AAE6937AB6634A86231A6602FEBE0DE8F4539FFFFFF00FFFFFF8F4539
      EBE0DEEBE0DEEBDFDDEBE0DEEBE0DEEBE0DEEBE0DEEBE0DEEBDFDDEBE0DEEBE0
      DEEBE0DEEBE0DEEBDFDDEBDFDDEBE0DEEBE0DEEBDFDDEBE0DEEBDFDDEBDFDD8F
      4539FFFFFF00FFFFFF8F45398F45398F45398F45398F45398F45398F45398F45
      398F45398F45398F45398F45398F45398F45398F45398F45398F45398F45398F
      45398F45398F45398F45398F4539FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
  end
  object btretorna: TBitBtn
    Left = 755
    Top = 445
    Width = 94
    Height = 28
    Caption = 'Fechar'
    TabOrder = 4
    OnClick = btretornaClick
    Glyph.Data = {
      DA050000424DDA05000000000000360000002800000019000000130000000100
      180000000000A4050000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFF00FFFFFF406B00406B00406B00406B00406B00406B00406B00406B
      00406B00406B00406B00406B00406B00406B00406B00406B00406B00406B0040
      6B00406B00406B00406B00406B00FFFFFF00FFFFFF406B00ECE3E0ECE2DFEBE2
      DFECE2DFECE2DFECE2DFECE3E0ECE2DFEBE2DFECE2DFECE3E0ECE3E0ECE2DFEB
      E2DFEBE2DFECE2DFECE2DFECE2DFECE2DFECE2DFECE2DF406B00FFFFFF00FFFF
      FF416C00ECE3E0539300538E004F87004C8000487900457200416C003F65003C
      61003B5D003A58003A5300395200374D00354B00354A00354A00354B00374E00
      ECE2DF416C00FFFFFF00FFFFFF406B00ECE2DF559700539200528D004F86004C
      7F00487700457000426B003F64003C5F003B5A003A5500385100374D00364B00
      354800344707354800354A00EBE2DF406B00FFFFFF00FFFFFF406B00ECE2DF5A
      9E00589900559500538F005089004D8100487900477400466E00476E003C6100
      3B5B003B5600395200374E003B5300354800344800354A00EBE1DE406B00FFFF
      FF00FFFFFF416C00ECE3E05EA300A2C36EFFFFFFFFFFFFFFFFFFFFFFFF699900
      9CB866FBFBFAFFFFFFD8DFCE5174003C5E008D9E65F4F4F2FFFFFFC8CEBB3B54
      00364B00EBE2DF416C00FFFFFF00FFFFFF406B00ECE2DF63A800A3C572FFFFFF
      BED39BAAC87BA9C6796EA400FDFDFCD1DDC27EA324FAFBFAB1C28C608200FFFF
      FFD3D9C7AAB58DFFFFFF92A071374E00EBE2DF406B00FFFFFF00FFFFFF416C00
      ECE3E068AD00A5C876FFFFFFA0C46D83B6327EB21B65A60082B22178AB00A6C2
      74FFFFFFC1D1A491AC59FFFFFF6A89283C5D009BAA765B7323385200EBE1DE41
      6C00FFFFFF00FFFFFF406B00ECE3E070B200A7C979FFFFFFFFFFFFFFFFFFEAF0
      E56AAE00A0C46DF4F8F4FFFFFFF3F6F275A400ADC481FFFFFF5C82003F64003C
      5E003A59003B5800EBE2DF406B00FFFFFF00FFFFFF406B00ECE3E074B426A7CA
      7AFFFFFF9DC56B85BA4683BA4372B31DF5F8F4E4ECDD9CC16598BD5B6FA4009A
      BA60FFFFFF87A545487200AFBE8C6C892E3C5E00ECE2DF406B00FFFFFF00FFFF
      FF416C00ECE3E077B736A7C97AFFFFFFE5EDDEDDE9D2DDE9D17EB83CD9E6CBE6
      EDDFCADBB0FFFFFF94BB54619B00F4F6F3FAFBFAEDEFE9FFFFFF7895383E6400
      ECE2DF416C00FFFFFF00FFFFFF406B00ECE2DF78B73A95C160BBD498BBD498BB
      D498BAD4987CB73982B93EB4CF8BC7D9AAA3C6725EA100589A006B9F00B3C98B
      C0CFA084A440457000436D00EBE2DF406B00FFFFFF00FFFFFF416C00ECE3E078
      B83B7BB93F7BB93F7AB83D79B83A78B73675B52C72B3186DB00067AD0063A800
      5FA2005A9D00559500518D004E84004B7E00487800467400EBE2DF416C00FFFF
      FF00FFFFFF406B00ECE2DF7AB83D7BB93F7AB83D7AB83C78B73676B62F73B422
      71B2006CAF0067AC0064A8005FA3005C9E00579800549100518C004E84004B7F
      004A7C00ECE2DF406B00FFFFFF00FFFFFF406B00ECE2DF7AB83D7AB83E7AB83C
      79B73877B63275B52A72B3186FB1006BAE0067AC0064A80060A4005DA1005A9C
      00569600539100518C004F86004E8300EBE2DF406B00FFFFFF00FFFFFF406B00
      EBE2DFEBE2DFEBE1DEEBE2DFEBE2DFEBE2DFEBE2DFEBE2DFEBE1DEEBE2DFEBE2
      DFEBE2DFEBE2DFEBE1DEEBE1DEEBE2DFEBE2DFEBE1DEEBE2DFEBE1DEEBE1DE40
      6B00FFFFFF00FFFFFF406B00406B00406B00406B00406B00406B00406B00406B
      00406B00406B00406B00406B00406B00406B00406B00406B00406B00406B0040
      6B00406B00406B00406B00406B00FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
  end
  object btincluir: TBitBtn
    Left = 8
    Top = 445
    Width = 94
    Height = 28
    Caption = 'Incluir'
    TabOrder = 5
    OnClick = btincluirClick
    Glyph.Data = {
      DA050000424DDA05000000000000360000002800000019000000130000000100
      180000000000A4050000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFF00FFFFFF8F45398F45398F45398F45398F45398F45398F45398F45
      398F45398F45398F45398F45398F45398F45398F45398F45398F45398F45398F
      45398F45398F45398F45398F4539FFFFFF00FFFFFF8F4539ECE3E0ECE2DFEBE0
      DEECE2DFECE2DFECE2DFECE3E0ECE2DFEBE0DEECE2DFECE3E0ECE3E0ECE2DFEB
      E0DEEBE0DEECE2DFECE2DFECE2DFECE2DFECE2DFECE2DF8F4539FFFFFF00FFFF
      FF8F4539ECE3E0AE6A37AC6734A66031A25B2D9C552B965028914B238A481D84
      441C7D411F763E22713D236D3B256838266536276437266438256537266A3A25
      ECE2DF8F4539FFFFFF00FFFFFF8F4539ECE2DFB16D39AE6A37AA6533A6602FA1
      5A2C9B542A955026904B2388471D81431C793F22733C256C3B24663826643726
      6136255E3526613625643825EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE2DFB5
      723BB36F3AB06C38AC6734A86231A35D2D9D562A985228924D248A481D82441B
      794020733D246C3A266537266035275E35275E3527613626EBDFDD8F4539FFFF
      FF00FFFFFF8F4539ECE3E0B9763CB7753CCA8D50FFFFFFFFFFFFB7753DA66030
      A25B2D9C552BCFA887FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB59E886136255E35
      26623626EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE2DFBC7A3EBC7A3ECE9254
      FFFFFFFFFFFFBD7C41B06C39AC6737A86232B16E3BF8F6F5FFFFFFE0D7CCC8B1
      9AC5AE9A9C7758663726623626633726EBE0DE8F4539FFFFFF00FFFFFF8F4539
      ECE3E0C17F3DC1803FD39857FFFFFFFFFFFFCD904EC28144BF7E42B36F3BAE69
      35BC7C48F1EEEBFBFAF9BF957582431D783F226F3C236A3A25693925EBDFDD8F
      4539FFFFFF00FFFFFF8F4539ECE3E0C6853DC6853ED89D55FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFBD7B3FB6733CAF6B39B8763FE8E0D6FFFFFFCDB29785461C7B
      4120733D23723D23EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE3E0C8873CC888
      3EDCA153FFFFFFFFFFFFE4B57BE1AC69E0AA69C1803FBF7E41C38344BA7941B0
      6C38E8E0D7FFFFFFAE794F87461C7F411E7C4020ECE2DF8F4539FFFFFF00FFFF
      FF8F4539ECE3E0CB8B3BCC8C3ADFA551FFFFFFFFFFFFE8BF88E5B67CE4B67CD7
      9C54E0AB71FFFFFFEADED0C3854CE5D9CBFFFFFFBE8E66904B228A471E86451C
      ECE2DF8F4539FFFFFF00FFFFFF8F4539ECE2DFCD8D38CF8F38E0A652FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFE8BF8DC58442E8D3B9FFFFFFFFFFFFFFFFFFE1CFBA
      A45F2E98512A934D268F4B22EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE3E0CF
      8F36D09037D29237D8993FD8993ED59741D39442D19344C98942C17F3EBC7A3E
      C28142C7894EB8753DA96434A45E2E9F582D9B5429985128EBE0DE8F4539FFFF
      FF00FFFFFF8F4539ECE2DFD09036D09037CF8F38CE8E38CD8D39CA8A3BC8873D
      C6853EC3833EBF7E3FBC7A3EB9773DB6733CB26F3AAE6937AA6533A55F30A25B
      2C9F582CECE2DF8F4539FFFFFF00FFFFFF8F4539ECE2DFCF8F38CF8F38CE8E39
      CD8D3ACB8B3CC8883DC6863DC5843EC3823FC07F3FBD7B3FBA783DB8763DB572
      3CB16E3AAE6937AB6634A86231A6602FEBE0DE8F4539FFFFFF00FFFFFF8F4539
      EBE0DEEBE0DEEBDFDDEBE0DEEBE0DEEBE0DEEBE0DEEBE0DEEBDFDDEBE0DEEBE0
      DEEBE0DEEBE0DEEBDFDDEBDFDDEBE0DEEBE0DEEBDFDDEBE0DEEBDFDDEBDFDD8F
      4539FFFFFF00FFFFFF8F45398F45398F45398F45398F45398F45398F45398F45
      398F45398F45398F45398F45398F45398F45398F45398F45398F45398F45398F
      45398F45398F45398F45398F4539FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
  end
  object RzGroupBox4: TRzGroupBox
    Left = 8
    Top = 1
    Width = 841
    Height = 64
    Caption = 'Informante'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    Transparent = True
    object Label9: TLabel
      Left = 537
      Top = 15
      Width = 29
      Height = 13
      Caption = 'CNPJ'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 711
      Top = 15
      Width = 104
      Height = 13
      Caption = 'Inscri'#231#227'o Estadual'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label43: TLabel
      Left = 111
      Top = 15
      Width = 73
      Height = 13
      Caption = 'Raz'#227'o Social'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label45: TLabel
      Left = 9
      Top = 16
      Width = 40
      Height = 13
      Caption = 'C'#243'digo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object edlocempresa: TFlatSpeedButton
      Left = 84
      Top = 31
      Width = 25
      Height = 25
      ColorFocused = 10658466
      ColorDown = clBtnShadow
      ColorBorder = clBtnShadow
      ColorHighLight = clBtnShadow
      ColorShadow = clBtnShadow
      Caption = '...'
      OnClick = edlocempresaClick
    end
    object edcod: TRzEdit
      Left = 8
      Top = 31
      Width = 74
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      FocusColor = 8454143
      FrameVisible = True
      ParentFont = False
      TabOrder = 0
      OnExit = edcodExit
      OnKeyPress = edcodKeyPress
    end
    object RzPanel1: TRzPanel
      Left = 112
      Top = 31
      Width = 417
      Height = 25
      BorderInner = fsFlatRounded
      BorderOuter = fsNone
      TabOrder = 1
      OnExit = Novo1Click
      object edempresa: TRzLabel
        Left = 7
        Top = 5
        Width = 15
        Height = 16
        Caption = '...'
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RzPanel2: TRzPanel
      Left = 536
      Top = 31
      Width = 169
      Height = 25
      BorderInner = fsFlatRounded
      BorderOuter = fsNone
      TabOrder = 2
      object edcnpj: TRzLabel
        Left = 8
        Top = 5
        Width = 15
        Height = 16
        Caption = '...'
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RzPanel3: TRzPanel
      Left = 712
      Top = 31
      Width = 121
      Height = 25
      BorderInner = fsFlatRounded
      BorderOuter = fsNone
      TabOrder = 3
      object edie: TRzLabel
        Left = 9
        Top = 5
        Width = 15
        Height = 16
        Caption = '...'
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object BitBtn1: TBitBtn
    Left = 104
    Top = 445
    Width = 94
    Height = 28
    Caption = 'Alterar'
    TabOrder = 6
    OnClick = BitBtn1Click
    Glyph.Data = {
      DA050000424DDA05000000000000360000002800000019000000130000000100
      180000000000A4050000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFF00FFFFFF8F45398F45398F45398F45398F45398F45398F45398F45
      398F45398F45398F45398F45398F45398F45398F45398F45398F45398F45398F
      45398F45398F45398F45398F4539FFFFFF00FFFFFF8F4539ECE3E0ECE2DFEBE0
      DEECE2DFECE2DFECE2DFECE3E0ECE2DFEBE0DEECE2DFECE3E0ECE3E0ECE2DFEB
      E0DEEBE0DEECE2DFECE2DFECE2DFECE2DFECE2DFECE2DF8F4539FFFFFF00FFFF
      FF8F4539ECE3E0AE6A37AC6734A66031A25B2D9C552B965028914B238A481D84
      441C7D411F763E22713D236D3B256838266536276437266438256537266A3A25
      ECE2DF8F4539FFFFFF00FFFFFF8F4539ECE2DFB16D39AE6A37AA6533A6602FA1
      5A2C9B542A955026904B2388471D81431C793F22733C256C3B24663826643726
      6136255E3526613625643825EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE2DFB5
      723BB36F3AB06C38AC6734A86231A35D2D9D562A985228924D248A481D82441B
      794020733D246C3A266537266035275E35275E3527613626EBDFDD8F4539FFFF
      FF00FFFFFF8F4539ECE3E0B9763CB7753CCA8D50FFFFFFFFFFFFB7753DA66030
      A25B2D9C552BCFA887FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB59E886136255E35
      26623626EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE2DFBC7A3EBC7A3ECE9254
      FFFFFFFFFFFFBD7C41B06C39AC6737A86232B16E3BF8F6F5FFFFFFE0D7CCC8B1
      9AC5AE9A9C7758663726623626633726EBE0DE8F4539FFFFFF00FFFFFF8F4539
      ECE3E0C17F3DC1803FD39857FFFFFFFFFFFFCD904EC28144BF7E42B36F3BAE69
      35BC7C48F1EEEBFBFAF9BF957582431D783F226F3C236A3A25693925EBDFDD8F
      4539FFFFFF00FFFFFF8F4539ECE3E0C6853DC6853ED89D55FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFBD7B3FB6733CAF6B39B8763FE8E0D6FFFFFFCDB29785461C7B
      4120733D23723D23EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE3E0C8873CC888
      3EDCA153FFFFFFFFFFFFE4B57BE1AC69E0AA69C1803FBF7E41C38344BA7941B0
      6C38E8E0D7FFFFFFAE794F87461C7F411E7C4020ECE2DF8F4539FFFFFF00FFFF
      FF8F4539ECE3E0CB8B3BCC8C3ADFA551FFFFFFFFFFFFE8BF88E5B67CE4B67CD7
      9C54E0AB71FFFFFFEADED0C3854CE5D9CBFFFFFFBE8E66904B228A471E86451C
      ECE2DF8F4539FFFFFF00FFFFFF8F4539ECE2DFCD8D38CF8F38E0A652FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFE8BF8DC58442E8D3B9FFFFFFFFFFFFFFFFFFE1CFBA
      A45F2E98512A934D268F4B22EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE3E0CF
      8F36D09037D29237D8993FD8993ED59741D39442D19344C98942C17F3EBC7A3E
      C28142C7894EB8753DA96434A45E2E9F582D9B5429985128EBE0DE8F4539FFFF
      FF00FFFFFF8F4539ECE2DFD09036D09037CF8F38CE8E38CD8D39CA8A3BC8873D
      C6853EC3833EBF7E3FBC7A3EB9773DB6733CB26F3AAE6937AA6533A55F30A25B
      2C9F582CECE2DF8F4539FFFFFF00FFFFFF8F4539ECE2DFCF8F38CF8F38CE8E39
      CD8D3ACB8B3CC8883DC6863DC5843EC3823FC07F3FBD7B3FBA783DB8763DB572
      3CB16E3AAE6937AB6634A86231A6602FEBE0DE8F4539FFFFFF00FFFFFF8F4539
      EBE0DEEBE0DEEBDFDDEBE0DEEBE0DEEBE0DEEBE0DEEBE0DEEBDFDDEBE0DEEBE0
      DEEBE0DEEBE0DEEBDFDDEBDFDDEBE0DEEBE0DEEBDFDDEBE0DEEBDFDDEBDFDD8F
      4539FFFFFF00FFFFFF8F45398F45398F45398F45398F45398F45398F45398F45
      398F45398F45398F45398F45398F45398F45398F45398F45398F45398F45398F
      45398F45398F45398F45398F4539FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
  end
  object dsempresa: TwwDataSource
    DataSet = frmmodulo.qrFilial
    Left = 456
    Top = 8
  end
  object dssintegra60: TwwDataSource
    DataSet = frmmodulo.qrsintegra_r60
    OnDataChange = dssintegra60DataChange
    Left = 488
    Top = 8
  end
  object dsfornecedor: TwwDataSource
    DataSet = frmmodulo.qrfornecedor
    Left = 520
    Top = 8
  end
  object MainMenu1: TMainMenu
    Left = 248
    Top = 8
    object Arquivo1: TMenuItem
      Caption = '&Op'#231#245'es'
      Visible = False
      object Novo1: TMenuItem
        Caption = '&Novo'
        OnClick = Novo1Click
      end
      object Grava1: TMenuItem
        Caption = '&Grava'
        OnClick = Grava1Click
      end
      object Cancela1: TMenuItem
        Caption = '&Cancela'
        OnClick = Cancela1Click
      end
      object Empresa1: TMenuItem
        Caption = '-'
      end
      object Retorna1: TMenuItem
        Caption = '&Retorna'
        OnClick = Retorna1Click
      end
    end
    object Movimentao1: TMenuItem
      Caption = '&Ferramentas'
      Visible = False
    end
    object Ajuda1: TMenuItem
      Caption = 'Ajuda'
      Visible = False
    end
  end
end
