object frmtra: Tfrmtra
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Ficha Tratamento Dent'#225'rio'
  ClientHeight = 704
  ClientWidth = 1016
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pctcontrole: TPageControl
    Left = 0
    Top = 320
    Width = 1016
    Height = 365
    ActivePage = tbscadastro
    Align = alBottom
    MultiLine = True
    TabOrder = 0
    object tbscadastro: TTabSheet
      Caption = 'INFORMA'#199#213'ES CADASTRAIS'
      object lbloutinf1: TLabel
        Left = 6
        Top = 10
        Width = 42
        Height = 13
        Caption = 'lbloutinf1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lbloutinf2: TLabel
        Left = 127
        Top = 10
        Width = 42
        Height = 13
        Caption = 'lbloutinf2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lbloutinf3: TLabel
        Left = 240
        Top = 10
        Width = 42
        Height = 13
        Caption = 'lbloutinf3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label41: TLabel
        Left = 355
        Top = 10
        Width = 93
        Height = 13
        Caption = 'CADASTRADO EM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label42: TLabel
        Left = 460
        Top = 10
        Width = 99
        Height = 13
        Caption = 'PESQ. CADASTRAL'
        FocusControl = EDIDTPESPCERASA
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 575
        Top = 10
        Width = 41
        Height = 13
        Caption = 'TABELA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lbloutinf5: TLabel
        Left = 620
        Top = 55
        Width = 42
        Height = 13
        Caption = 'lbloutinf5'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lbltitresponsavelent: TLabel
        Left = 6
        Top = 55
        Width = 147
        Height = 13
        Caption = 'RESPONS'#193'VEL FINANCEIRO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lbltitresponsavelrgent: TLabel
        Left = 355
        Top = 55
        Width = 22
        Height = 13
        Caption = 'R.G.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lbltitresponsavelcpfent: TLabel
        Left = 884
        Top = 10
        Width = 87
        Height = 13
        Caption = 'C.P.F. RESP. FIN.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lbltittelent: TLabel
        Left = 459
        Top = 55
        Width = 85
        Height = 13
        Caption = 'DDD/TELEFONE'
        FocusControl = edifonecob
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lbldesc1: TLabel
        Left = 6
        Top = 103
        Width = 35
        Height = 13
        Caption = 'DESC1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lbldesc2: TLabel
        Left = 191
        Top = 103
        Width = 35
        Height = 13
        Caption = 'DESC2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lbldesc3: TLabel
        Left = 355
        Top = 103
        Width = 35
        Height = 13
        Caption = 'DESC3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lbldesc4: TLabel
        Left = 529
        Top = 103
        Width = 35
        Height = 13
        Caption = 'DESC4'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lbldesc5: TLabel
        Left = 708
        Top = 103
        Width = 35
        Height = 13
        Caption = 'DESC5'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lbldesc6: TLabel
        Left = 877
        Top = 103
        Width = 35
        Height = 13
        Caption = 'DESC6'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lbldesc7: TLabel
        Left = 8
        Top = 152
        Width = 35
        Height = 13
        Caption = 'DESC7'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lbldesc8: TLabel
        Left = 191
        Top = 152
        Width = 35
        Height = 13
        Caption = 'DESC8'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lbldesc9: TLabel
        Left = 357
        Top = 152
        Width = 35
        Height = 13
        Caption = 'DESC9'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lbldesc10: TLabel
        Left = 528
        Top = 152
        Width = 41
        Height = 13
        Caption = 'DESC10'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lbldesc11: TLabel
        Left = 709
        Top = 152
        Width = 41
        Height = 13
        Caption = 'DESC11'
        FocusControl = edidesc11
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lbldesc12: TLabel
        Left = 876
        Top = 152
        Width = 41
        Height = 13
        Caption = 'DESC12'
        FocusControl = edidesc12
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lblid1: TLabel
        Left = 8
        Top = 200
        Width = 17
        Height = 13
        Caption = 'ID1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lblid2: TLabel
        Left = 191
        Top = 200
        Width = 17
        Height = 13
        Caption = 'ID2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lbloutinf4: TLabel
        Left = 732
        Top = 10
        Width = 42
        Height = 13
        Caption = 'lbloutinf4'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lbloutinf6: TLabel
        Left = 797
        Top = 55
        Width = 42
        Height = 13
        Caption = 'lbloutinf6'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object cbxoutinf1: TDBComboBox
        Left = 6
        Top = 28
        Width = 113
        Height = 21
        CharCase = ecUpperCase
        DataField = 'OUTINF1'
        DataSource = frmDados.Dts_Clientes
        ItemHeight = 13
        TabOrder = 0
        OnExit = cbxoutinf1Exit
        OnKeyPress = edicpfKeyPress
      end
      object cbxoutinf2: TDBComboBox
        Left = 125
        Top = 28
        Width = 107
        Height = 21
        CharCase = ecUpperCase
        DataField = 'OUTINF2'
        DataSource = frmDados.Dts_Clientes
        ItemHeight = 13
        TabOrder = 1
        OnExit = cbxoutinf2Exit
        OnKeyPress = edicpfKeyPress
      end
      object cbxoutinf3: TDBComboBox
        Left = 239
        Top = 28
        Width = 108
        Height = 21
        CharCase = ecUpperCase
        DataField = 'OUTINF3'
        DataSource = frmDados.Dts_Clientes
        ItemHeight = 13
        TabOrder = 2
        OnExit = cbxoutinf3Exit
        OnKeyPress = edicpfKeyPress
      end
      object edidtcad: TDBEdit
        Left = 354
        Top = 28
        Width = 95
        Height = 21
        DataField = 'DTCAD'
        DataSource = frmDados.Dts_Clientes
        TabOrder = 3
        OnKeyPress = edicpfKeyPress
      end
      object EDIDTPESPCERASA: TDBEdit
        Left = 459
        Top = 28
        Width = 108
        Height = 21
        DataField = 'DTPESPCERASA'
        DataSource = frmDados.Dts_Clientes
        TabOrder = 4
        OnKeyPress = edicpfKeyPress
      end
      object cbxntabela: TDBLookupComboBox
        Left = 575
        Top = 28
        Width = 153
        Height = 21
        DataField = 'CTIPOTAB'
        DataSource = frmDados.Dts_Clientes
        KeyField = 'CODIGO'
        ListField = 'DESCRICAO'
        ListSource = frmDados.Dts_Tipotab
        NullValueKey = 46
        TabOrder = 5
        OnKeyPress = edicpfKeyPress
      end
      object cbxoutinf5: TDBComboBox
        Left = 618
        Top = 74
        Width = 175
        Height = 21
        CharCase = ecUpperCase
        DataField = 'OUTINF5'
        DataSource = frmDados.Dts_Clientes
        ItemHeight = 13
        TabOrder = 12
        OnExit = cbxoutinf5Exit
        OnKeyPress = edicpfKeyPress
      end
      object ediresponsavelent: TDBEdit
        Left = 6
        Top = 74
        Width = 339
        Height = 21
        CharCase = ecUpperCase
        DataField = 'RESPONSAVELENT'
        DataSource = frmDados.Dts_Clientes
        TabOrder = 8
        OnKeyPress = edicpfKeyPress
      end
      object ediresponsavelrgent: TDBEdit
        Left = 354
        Top = 74
        Width = 92
        Height = 21
        CharCase = ecUpperCase
        DataField = 'RGRESPONSAVELENT'
        DataSource = frmDados.Dts_Clientes
        TabOrder = 9
        OnKeyPress = edicpfKeyPress
      end
      object ediresponsavelcpfent: TDBEdit
        Left = 883
        Top = 28
        Width = 108
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CPFRESPONSAVELENT'
        DataSource = frmDados.Dts_Clientes
        TabOrder = 7
        OnKeyPress = edicpfKeyPress
      end
      object edidddecob: TDBEdit
        Left = 459
        Top = 74
        Width = 29
        Height = 21
        DataField = 'DDDECOB'
        DataSource = frmDados.Dts_Clientes
        TabOrder = 10
        OnKeyPress = edicpfKeyPress
      end
      object edifonecob: TDBEdit
        Left = 492
        Top = 74
        Width = 121
        Height = 21
        CharCase = ecUpperCase
        DataField = 'TELEFONECOB'
        DataSource = frmDados.Dts_Clientes
        TabOrder = 11
        OnKeyPress = edicpfKeyPress
      end
      object cbxdesc1: TComboBox
        Left = 6
        Top = 122
        Width = 171
        Height = 21
        CharCase = ecUpperCase
        ItemHeight = 13
        TabOrder = 14
        Text = 'CBXDESC1'
        OnExit = cbxdesc1Exit
        OnKeyPress = edicpfKeyPress
      end
      object cbxdesc2: TComboBox
        Left = 189
        Top = 122
        Width = 156
        Height = 21
        CharCase = ecUpperCase
        ItemHeight = 13
        TabOrder = 15
        Text = 'CBXDESC2'
        OnExit = cbxdesc2Exit
        OnKeyPress = edicpfKeyPress
      end
      object cbxdesc3: TComboBox
        Left = 354
        Top = 122
        Width = 164
        Height = 21
        CharCase = ecUpperCase
        ItemHeight = 13
        TabOrder = 16
        Text = 'CBXDESC3'
        OnExit = cbxdesc3Exit
        OnKeyPress = edicpfKeyPress
      end
      object cbxdesc4: TComboBox
        Left = 527
        Top = 122
        Width = 170
        Height = 21
        CharCase = ecUpperCase
        ItemHeight = 13
        TabOrder = 17
        Text = 'CBXDESC4'
        OnExit = cbxdesc4Exit
        OnKeyPress = edicpfKeyPress
      end
      object cbxdesc5: TComboBox
        Left = 706
        Top = 122
        Width = 159
        Height = 21
        CharCase = ecUpperCase
        ItemHeight = 13
        TabOrder = 18
        Text = 'CBXDESC5'
        OnExit = cbxdesc5Exit
        OnKeyPress = edicpfKeyPress
      end
      object cbxdesc6: TComboBox
        Left = 875
        Top = 122
        Width = 117
        Height = 21
        CharCase = ecUpperCase
        ItemHeight = 13
        TabOrder = 19
        Text = 'CBXDESC6'
        OnExit = cbxdesc6Exit
        OnKeyPress = edicpfKeyPress
      end
      object cbxdesc7: TComboBox
        Left = 8
        Top = 170
        Width = 169
        Height = 21
        CharCase = ecUpperCase
        ItemHeight = 13
        TabOrder = 20
        Text = 'CBXDESC7'
        OnExit = cbxdesc7Exit
        OnKeyPress = edicpfKeyPress
      end
      object cbxdesc8: TComboBox
        Left = 191
        Top = 170
        Width = 154
        Height = 21
        CharCase = ecUpperCase
        ItemHeight = 13
        TabOrder = 21
        Text = 'CBXDESC8'
        OnExit = cbxdesc8Exit
        OnKeyPress = edicpfKeyPress
      end
      object cbxdesc9: TComboBox
        Left = 357
        Top = 170
        Width = 156
        Height = 21
        CharCase = ecUpperCase
        ItemHeight = 13
        TabOrder = 22
        Text = 'CBXDESC9'
        OnExit = cbxdesc9Exit
        OnKeyPress = edicpfKeyPress
      end
      object cbxdesc10: TComboBox
        Left = 530
        Top = 170
        Width = 167
        Height = 21
        CharCase = ecUpperCase
        ItemHeight = 13
        TabOrder = 23
        Text = 'CBXDESC10'
        OnExit = cbxdesc10Exit
        OnKeyPress = edicpfKeyPress
      end
      object edidesc11: TDBEdit
        Left = 705
        Top = 170
        Width = 160
        Height = 21
        CharCase = ecUpperCase
        DataField = 'DESC11'
        DataSource = frmDados.Dts_sVenda
        TabOrder = 24
        OnKeyPress = edicpfKeyPress
      end
      object edidesc12: TDBEdit
        Left = 877
        Top = 170
        Width = 115
        Height = 21
        CharCase = ecUpperCase
        DataField = 'DESC12'
        DataSource = frmDados.Dts_sVenda
        TabOrder = 25
        OnKeyPress = edicpfKeyPress
      end
      object ediid1: TEdit
        Left = 8
        Top = 218
        Width = 169
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 26
        Text = 'EDIID1'
        OnKeyPress = edicpfKeyPress
      end
      object ediid2: TEdit
        Left = 191
        Top = 218
        Width = 154
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 27
        Text = 'EDIID2'
        OnKeyPress = edicpfKeyPress
      end
      object cbxoutinf4: TDBComboBox
        Left = 731
        Top = 28
        Width = 145
        Height = 21
        CharCase = ecUpperCase
        DataField = 'OUTINF4'
        DataSource = frmDados.Dts_Clientes
        ItemHeight = 13
        TabOrder = 6
        OnExit = cbxoutinf4Exit
        OnKeyPress = edicpfKeyPress
      end
      object cbxoutinf6: TDBComboBox
        Left = 796
        Top = 74
        Width = 196
        Height = 21
        CharCase = ecUpperCase
        DataField = 'OUTINF6'
        DataSource = frmDados.Dts_Clientes
        ItemHeight = 13
        TabOrder = 13
        OnExit = cbxoutinf6Exit
        OnKeyPress = edicpfKeyPress
      end
    end
    object tbstratamento: TTabSheet
      Caption = 'TRATAMENTO'
      ImageIndex = 1
      OnShow = tbstratamentoShow
      object dbgtratamento: TDBGrid
        Left = 0
        Top = 2
        Width = 1020
        Height = 296
        DataSource = frmDados.Dts_dMobra
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnColEnter = dbgtratamentoColEnter
        OnDrawColumnCell = dbgtratamentoDrawColumnCell
        OnDblClick = dbgtratamentoDblClick
        OnEnter = dbgtratamentoEnter
        OnKeyDown = dbgtratamentoKeyDown
        OnKeyPress = dbgtratamentoKeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'nmod'
            Title.Caption = 'ESPECIALIDADE'
            Width = 88
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTDE'
            Width = 35
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nlistaprod'
            Title.Caption = 'DESCRI'#199#195'O'
            Width = 181
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'idmat_restaurar'
            Title.Caption = 'DENTE'
            Width = 40
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR'
            Title.Caption = 'PR. UNIT'#193'RIO'
            Width = 78
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SUBTOTAL'
            Width = 63
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nfunc'
            Title.Caption = 'OR'#199'ADO POR'
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SELEC'
            ReadOnly = True
            Title.Caption = 'TRATAR?'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATAINICIO'
            Title.Caption = 'INICIO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nfuncp'
            Title.Caption = 'TRATADO POR?'
            Width = 106
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COMPLETO'
            Title.Caption = 'CONCLUIDO?'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATAFIM'
            Title.Caption = 'FIM'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PAGO'
            Title.Caption = 'PAGO?'
            Width = 42
            Visible = True
          end>
      end
      object pnltotal: TPanel
        Left = 0
        Top = 302
        Width = 1008
        Height = 35
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
        object Label9: TLabel
          Left = 509
          Top = 4
          Width = 104
          Height = 20
          Caption = 'Total Or'#231'ado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbltotorc: TLabel
          Left = 673
          Top = 4
          Width = 66
          Height = 20
          Alignment = taRightJustify
          Caption = 'lbltotorc'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label14: TLabel
          Left = 210
          Top = 4
          Width = 133
          Height = 20
          Caption = 'Total Autorizado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbltotalt: TLabel
          Left = 387
          Top = 4
          Width = 61
          Height = 20
          Alignment = taRightJustify
          Caption = 'lbltotalt'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label20: TLabel
          Left = 777
          Top = 4
          Width = 90
          Height = 20
          Caption = 'Total Geral'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbltotg: TLabel
          Left = 940
          Top = 4
          Width = 51
          Height = 20
          Alignment = taRightJustify
          Caption = 'lbltotg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object spdalterarparc: TSpeedButton
          Left = 4
          Top = 1
          Width = 33
          Height = 30
          Hint = 'Alterar'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          Glyph.Data = {
            42050000424D4205000000000000360000002800000016000000130000000100
            1800000000000C050000C30E0000C30E00000000000000000000BFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB7B7B7BCAFAE9A7E
            7B9F756F288686978E8EC0B9B9BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB4B4B4BFACAB9E8785DC
            756EF5A39FA3BFBA4DB5B5914844BC837FC0B6B6BFBFBFBFBFBFBFBFBFBFBFBF
            0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB3B3B3BBA6A4AE8D8BD48582
            B3B3AEF8AAA89EDCE167E8EBBEBCBFB76865974B47B9827FC0B5B5BFBFBFBFBF
            BFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFB4B4B4B5A09EBA908D8D9B97DDA9
            A7A8D4D86BE7EAE0DEE36FE6EA8BE0E477E4E8AEACAB974B4786433FB9817EC0
            B6B5BFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFB4B4B4AC9695939F9BBFB0AFAA
            D2D4CDE3E790E3E7DEE3E7E3DDE1A9A8AB4FA8B97F8EBC75CECF7F7F7B773B39
            AA544FAB918FB9B9B9BFBFBF0000BFBFBFBFBFBFBFBFBFB6B6B68BB8B77FD9DA
            7BE3E7B9E8EBE9E0E4BCA7AAA1B0B1B19C9F9E9E9E5F5F7F4B4DA2C2E3E7B3A2
            A08E4643AA544F937977949494BBBBBB0000BFBFBFBFBFBFBFBFBFBFBFBFB7C9
            CBD7E3E7D0E1E5C4F1F4F3D5DB4B8B8C27CFCF33D4D4A5A5B4404995AEBCD9E8
            E1E5E7CBCEC8787690778DA0A2ABABABABBDBDBD0000BFBFBFBFBFBFBFBFBFBF
            BFBFC4BFC0E6DFE0FFF7F8F8DDE2B19F576C811E9CF4EB033E9922748A3C3495
            B5DDE286E5E9E7E3E7D3A09DB69BA1B9BCBFBFBFBFBFBFBF0000BFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFDFC6CAFFEAEDB3AF668381597F7F12218D8200707F1269
            6B77212D9BAFAFC2FCFCE7E3E7E0DFE1CD9A96C2ABAABFBFBFBFBFBF0000BFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBDBCBC99999980807576761E1616006503030C
            767F323F9BDBDCDBE5BBB8D7E8EB82E3E793E1E5E08F8DC5A5A2BFBDBDBFBFBF
            0000BFBFBFBFBFBFBFBFBFBFBFBFB2B2B29090907F7F737171231A1A00000000
            121212989293DDEFF2FDD0D6A5DFE461E3E585DDE089F9FAECDCE1D9817CC1B0
            AFBFBFBF0000BFBFBFBFBFBFBFBFBFAFAFAF6D6262694F4D7469311F1F000000
            001A1A1A948789FFD5DBFFDCE1E6FFFF6FF6FB3FBCCA95B5C3BADBE5C9F0F3D8
            9F9CD0B6B7C0BFBF0000BFBFBFBFBFBFAEAEAE616161715440D983675C302E00
            0000202020959595F7D6DAF7FFFFB2FBFBB6E5EA36C4E452A5D54FA8D73BBEE1
            91E4EAE1CDD1B2D7DBD0C3C60000BFBFBFB1B1B15E5E5E4F4F3C6767296B4E28
            3B2221242424979797F2F2F2FFE8EBDDFFFF6CF8F8A1D5DD44B5DD49AFDA45B4
            DC47B1DB95D3DDD5C8CB81E0E3D8C6CA0000B6B6B65555555252416868272222
            00000000272727818181CECECEF9F9F9E7E7EAD1FFFFD1FFFF63FFFF7CEEF788
            B1CB85ACC680EAF5A8E8E8D7C9CCDDC3C6C1BFBF0000B5B5B55757496B6B231F
            1F00000000272727828282B6B6B6BFBFBFD2D2D2EAFBFBE0FFFF69F8FAB2E4E8
            B7FFFF72D9D97AD3D393E7E770E1E1A1C9C9BFBFBFBFBFBF0000B9B9B16F6F1D
            1A1A00000000252525848484B7B7B7BFBFBFBFBFBFBFBFBFF9F9F9F8FBFCC3D4
            DAF3C9CFC8E0E0BAE4E45FDFDF6FD9D99BCACABAE6E6C0C6C6BFBFBF0000BDBD
            BC949481000000222222868686B9B9B9BFBFBFBFBFBFBFBFBFBFBFBFC9C9C9FA
            D0D5CBC0C2C8C0C1D4C5C7E4CACDC7C8CBC5C6C8BFBFBFC1C8C8BFC0C0BFBFBF
            0000BFBFBFBCBCBCADADADB1B1B1BBBBBBBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFC4BFC0BFBFBFBFBFBFC0BFBFC2BFBFC2BFBFC1BFBFBFBFBFBFBFBFBFBF
            BFBFBFBF0000}
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          OnClick = spdalterarparcClick
        end
        object spdexcluirparc: TSpeedButton
          Left = 44
          Top = 1
          Width = 33
          Height = 30
          Hint = 'Excluir'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            0400000000008000000000000000000000001000000010000000000000000000
            BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
            77777777777777777777777700000000007777770FFFFFFFF07777770FFFFFFF
            F077771F0F888888F077711F0F85BFB8F0777711F11BFBF8F077777151788888
            F077777511FFFFFFF07775111F1FFF00007771570FF1FF0F077777770FFFFF00
            7777777700000007777777777777777777777777777777777777}
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          OnClick = spdexcluirparcClick
        end
      end
    end
    object tbsdebitos: TTabSheet
      Caption = 'D'#201'BITO'
      ImageIndex = 4
      TabVisible = False
      OnShow = tbsdebitosShow
      object DBGrid1: TDBGrid
        Left = 8
        Top = 8
        Width = 793
        Height = 321
        DataSource = frmDados.Dts_Vencto
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
    object tbsprocedimentos: TTabSheet
      Caption = 'ANOTA'#199#213'ES'
      ImageIndex = 2
      OnShow = tbsprocedimentosShow
      object dbgprocedimentos: TDBGrid
        Left = 0
        Top = 0
        Width = 1008
        Height = 337
        Align = alClient
        DataSource = frmDados.Dts_Procedimentos
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnColEnter = dbgprocedimentosColEnter
        OnDrawColumnCell = dbgprocedimentosDrawColumnCell
        OnDblClick = dbgprocedimentosDblClick
        OnKeyPress = dbgprocedimentosKeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'idmat_rest_id'
            Title.Caption = 'DENTE'
            Width = 61
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Width = 751
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nfun'
            Title.Caption = 'DENTISTA'
            Width = 159
            Visible = True
          end>
      end
    end
    object tbscreditos: TTabSheet
      Caption = 'CR'#201'DITO'
      ImageIndex = 5
      TabVisible = False
      OnShow = tbscreditosShow
    end
    object tbsfinanceiro: TTabSheet
      Caption = 'FINANCEIRO'
      ImageIndex = 6
      OnShow = tbsfinanceiroShow
      object lblnos: TLabel
        Left = 863
        Top = 139
        Width = 27
        Height = 13
        Caption = 'lblnos'
        Visible = False
      end
      object lblnnf: TLabel
        Left = 895
        Top = 139
        Width = 25
        Height = 13
        Caption = 'lblnnf'
        Visible = False
      end
      object pctconta: TPageControl
        Left = 16
        Top = 15
        Width = 585
        Height = 310
        ActivePage = tbsresumo
        TabOrder = 0
        object tbsresumo: TTabSheet
          Caption = 'RESUMO'
          ImageIndex = 3
          object Label28: TLabel
            Left = 199
            Top = 104
            Width = 154
            Height = 24
            Caption = 'Total Contratado'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbltotglan: TLabel
            Left = 268
            Top = 145
            Width = 85
            Height = 24
            Alignment = taRightJustify
            Caption = 'lbltotglan'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object tbsfechamento: TTabSheet
          Caption = '&FECHAMENTO'
          ImageIndex = 2
          OnShow = tbsfechamentoShow
          object Label30: TLabel
            Left = 3
            Top = 34
            Width = 67
            Height = 16
            Caption = 'Desconto'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label31: TLabel
            Left = 150
            Top = 34
            Width = 14
            Height = 16
            Caption = '%'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label34: TLabel
            Left = 173
            Top = 34
            Width = 73
            Height = 16
            Caption = 'Valor    R$'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label32: TLabel
            Left = 6
            Top = 68
            Width = 75
            Height = 16
            Caption = 'Liquido R$'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label43: TLabel
            Left = 5
            Top = 2
            Width = 37
            Height = 16
            Caption = 'Total'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbltotalf: TLabel
            Left = 106
            Top = 2
            Width = 48
            Height = 16
            Alignment = taRightJustify
            Caption = 'lbltotal'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label33: TLabel
            Left = 228
            Top = 63
            Width = 44
            Height = 16
            Caption = 'Vezes'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object btnlancarp: TBitBtn
            Left = 504
            Top = 16
            Width = 65
            Height = 32
            Caption = 'LAN'#199'AR'
            TabOrder = 4
            OnClick = btnlancarpClick
          end
          object EDIPARC: TEdit
            Left = 304
            Top = 61
            Width = 38
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            Text = 'EDIPARC'
            OnKeyPress = Edit1KeyPress
          end
          object dbgvencto: TDBGrid
            Left = 6
            Top = 96
            Width = 565
            Height = 97
            Color = clCream
            DataSource = frmDados.Dts_Vencto
            TabOrder = 5
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnColEnter = dbgvenctoColEnter
            OnEnter = dbgvenctoEnter
            OnExit = dbgvenctoExit
            OnKeyPress = dbgvenctoKeyPress
            Columns = <
              item
                Expanded = False
                FieldName = 'n_tipo_pgto'
                Title.Caption = 'Forma Pgto'
                Width = 71
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DOC'
                Title.Caption = 'Documento'
                Width = 250
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PRAZO'
                Title.Caption = 'Prazo'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DTV'
                Title.Caption = 'Vencto'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VALORREAL'
                Title.Caption = 'Valor'
                Width = 74
                Visible = True
              end>
          end
          object rchtipopgto: TRichEdit
            Left = 4
            Top = 206
            Width = 566
            Height = 65
            TabStop = False
            BorderStyle = bsNone
            Color = clCream
            Lines.Strings = (
              'rchtipopgto')
            ReadOnly = True
            TabOrder = 6
          end
          object edipdesc: TEdit
            Left = 88
            Top = 32
            Width = 49
            Height = 21
            TabOrder = 0
            Text = 'edipdesc'
            OnExit = edipdescExit
            OnKeyPress = edipdescKeyPress
          end
          object edivaldesc: TEdit
            Left = 304
            Top = 32
            Width = 81
            Height = 21
            TabOrder = 1
            Text = 'edivaldesc'
            OnExit = edivaldescExit
            OnKeyPress = edivaldescKeyPress
          end
          object ediliquido: TEdit
            Left = 88
            Top = 64
            Width = 81
            Height = 21
            TabOrder = 2
            Text = 'ediliquido'
            OnExit = ediliquidoExit
            OnKeyPress = ediliquidoKeyPress
          end
        end
        object tbslancamento: TTabSheet
          Caption = 'LAN'#199'ADOS'
          ImageIndex = 2
          OnShow = tbslancamentoShow
          object pctfin: TPageControl
            Left = 0
            Top = 0
            Width = 577
            Height = 281
            ActivePage = tbspgto
            TabOrder = 0
            object tbspgto: TTabSheet
              Caption = 'FECHADOS'
              object dbg_livrocaixa: TDBGrid
                Left = 1
                Top = 8
                Width = 565
                Height = 208
                Color = clCream
                DataSource = frmDados.Dts_livrocaixa
                Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'MS Sans Serif'
                TitleFont.Style = []
                OnDrawColumnCell = dbg_livrocaixaDrawColumnCell
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'DATA'
                    Title.Caption = 'Data'
                    Width = 88
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TOTAL'
                    Title.Caption = 'Total'
                    Width = 109
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PDESC'
                    Title.Caption = '% Desc'
                    Width = 102
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'VALDESC'
                    Title.Caption = 'Vlr Desc'
                    Width = 102
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'LIQUIDO'
                    Title.Caption = 'Liquido'
                    Width = 99
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CSIT'
                    Title.Caption = ' '
                    Width = 26
                    Visible = True
                  end>
              end
              object btnestornar: TButton
                Left = 504
                Top = 221
                Width = 65
                Height = 32
                Caption = 'Estornar'
                TabOrder = 1
                OnClick = btnestornarClick
              end
            end
            object tbsvenctos: TTabSheet
              Caption = 'VENCTOS'
              ImageIndex = 2
              OnShow = tbsvenctosShow
              object Label27: TLabel
                Left = 2
                Top = 8
                Width = 35
                Height = 13
                Caption = 'TOTAL'
              end
              object lbltotal: TLabel
                Left = 209
                Top = 8
                Width = 30
                Height = 13
                Alignment = taRightJustify
                Caption = 'lbltotal'
              end
              object Label35: TLabel
                Left = 2
                Top = 32
                Width = 63
                Height = 13
                Caption = 'DESCONTO '
              end
              object lblpdesc: TLabel
                Left = 104
                Top = 32
                Width = 39
                Height = 13
                Alignment = taRightJustify
                Caption = 'lblpdesc'
              end
              object lblvdesc: TLabel
                Left = 200
                Top = 32
                Width = 39
                Height = 13
                Alignment = taRightJustify
                Caption = 'lblvdesc'
              end
              object Label50: TLabel
                Left = 2
                Top = 56
                Width = 44
                Height = 13
                Caption = 'LIQUIDO'
              end
              object lblliquido: TLabel
                Left = 199
                Top = 56
                Width = 40
                Height = 13
                Alignment = taRightJustify
                Caption = 'lblliquido'
              end
              object Label29: TLabel
                Left = 155
                Top = 33
                Width = 28
                Height = 13
                Caption = '%  R$'
              end
              object dbgfin: TDBGrid
                Left = 0
                Top = 77
                Width = 565
                Height = 173
                Color = clCream
                DataSource = frmDados.Dts_Vencto
                Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'MS Sans Serif'
                TitleFont.Style = []
                OnColEnter = dbgvenctoColEnter
                OnDrawColumnCell = dbgfinDrawColumnCell
                OnEnter = dbgvenctoEnter
                OnExit = dbgvenctoExit
                OnKeyPress = dbgvenctoKeyPress
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'n_tipo_pgto'
                    Title.Caption = 'Forma Pgto'
                    Width = 71
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'DOC'
                    Title.Caption = 'Documento'
                    Width = 226
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PRAZO'
                    Title.Caption = 'Prazo'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'DTV'
                    Title.Caption = 'Vencto'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'VALORREAL'
                    Title.Caption = 'Valor'
                    Width = 74
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CSIT'
                    Title.Caption = ' '
                    Width = 27
                    Visible = True
                  end>
              end
            end
            object tbsbaixa: TTabSheet
              Caption = 'BAIXA'
              ImageIndex = 1
              OnShow = tbsbaixaShow
              object Label44: TLabel
                Left = 8
                Top = 56
                Width = 42
                Height = 13
                Caption = 'Situa'#231#227'o'
                FocusControl = edicsit
              end
              object Label45: TLabel
                Left = 8
                Top = 84
                Width = 52
                Height = 13
                Caption = 'Liquida'#231#227'o'
                FocusControl = edidtl
              end
              object Label46: TLabel
                Left = 8
                Top = 111
                Width = 69
                Height = 13
                Caption = 'Data Da Baixa'
                FocusControl = edidtb
              end
              object Label47: TLabel
                Left = 8
                Top = 141
                Width = 61
                Height = 13
                Caption = 'Valor Liquido'
                FocusControl = edivalliq
              end
              object Label48: TLabel
                Left = 8
                Top = 168
                Width = 110
                Height = 13
                Caption = 'Forma de Recebimento'
                FocusControl = cbxntipoop
              end
              object Label49: TLabel
                Left = 380
                Top = 89
                Width = 24
                Height = 13
                Caption = 'Valor'
              end
              object DBText1: TDBText
                Left = 448
                Top = 89
                Width = 93
                Height = 17
                Alignment = taRightJustify
                DataField = 'VALOR'
                DataSource = frmDados.Dts_Vencto
              end
              object Label51: TLabel
                Left = 380
                Top = 67
                Width = 56
                Height = 13
                Caption = 'Vencimento'
              end
              object DBText3: TDBText
                Left = 500
                Top = 67
                Width = 65
                Height = 17
                DataField = 'DTV'
                DataSource = frmDados.Dts_Vencto
              end
              object Label52: TLabel
                Left = 380
                Top = 45
                Width = 39
                Height = 13
                Caption = 'Emiss'#227'o'
              end
              object DBText4: TDBText
                Left = 500
                Top = 45
                Width = 65
                Height = 17
                DataField = 'DTE'
                DataSource = frmDados.Dts_Vencto
              end
              object lbltitdente: TLabel
                Left = 8
                Top = 4
                Width = 72
                Height = 13
                Caption = 'Dente(s) Baixar'
                FocusControl = cbxntipoop
              end
              object SpeedButton1: TSpeedButton
                Left = 516
                Top = 3
                Width = 23
                Height = 22
                OnClick = SpeedButton1Click
              end
              object SpeedButton2: TSpeedButton
                Left = 542
                Top = 3
                Width = 23
                Height = 22
                OnClick = SpeedButton2Click
              end
              object Label36: TLabel
                Left = 8
                Top = 197
                Width = 39
                Height = 13
                Caption = 'Dentista'
                FocusControl = cbxntipoop
                Visible = False
              end
              object edicsit: TDBEdit
                Left = 128
                Top = 51
                Width = 25
                Height = 21
                DataField = 'CSIT'
                DataSource = frmDados.Dts_Vencto
                TabOrder = 2
                OnKeyPress = edicpfKeyPress
              end
              object cbxnsit: TDBLookupComboBox
                Left = 157
                Top = 51
                Width = 100
                Height = 21
                DataField = 'nsiturec'
                DataSource = frmDados.Dts_Vencto
                TabOrder = 3
                OnKeyPress = edicpfKeyPress
              end
              object edidtl: TDBEdit
                Left = 128
                Top = 80
                Width = 73
                Height = 21
                DataField = 'DTL'
                DataSource = frmDados.Dts_Vencto
                TabOrder = 4
                OnKeyPress = edicpfKeyPress
              end
              object edidtb: TDBEdit
                Left = 128
                Top = 107
                Width = 113
                Height = 21
                DataField = 'DTB'
                DataSource = frmDados.Dts_Vencto
                TabOrder = 5
                OnKeyPress = edicpfKeyPress
              end
              object edivalliq: TDBEdit
                Left = 128
                Top = 135
                Width = 129
                Height = 21
                DataField = 'VALLIQ'
                DataSource = frmDados.Dts_Vencto
                TabOrder = 6
                OnKeyPress = edicpfKeyPress
              end
              object cbxntipoop: TDBLookupComboBox
                Left = 128
                Top = 164
                Width = 169
                Height = 21
                DataField = 'ntipoop'
                DataSource = frmDados.Dts_Vencto
                TabOrder = 7
                OnKeyPress = edicpfKeyPress
              end
              object btnbaixar: TBitBtn
                Left = 502
                Top = 220
                Width = 65
                Height = 32
                Caption = '&Baixar'
                TabOrder = 8
                OnClick = btnbaixarClick
              end
              object cbxbaixapgtodentes: TDBLookupComboBox
                Left = 128
                Top = 25
                Width = 89
                Height = 21
                DataField = 'COD8'
                DataSource = frmDados.Dts_Temp
                KeyField = 'CODIGO'
                ListField = 'ID'
                ListSource = frmDados.Dts_Mat_Rest_ID
                TabOrder = 1
                OnKeyPress = cbxbaixapgtodentesKeyPress
              end
              object ckbtodos: TCheckBox
                Left = 129
                Top = 4
                Width = 59
                Height = 17
                Caption = 'TODOS'
                TabOrder = 0
                OnClick = ckbtodosClick
                OnKeyPress = ckbtodosKeyPress
              end
              object DBLookupComboBox1: TDBLookupComboBox
                Left = 128
                Top = 195
                Width = 217
                Height = 21
                DataField = 'CFUN'
                DataSource = frmDados.Dts_Vencto
                KeyField = 'CODIGO'
                ListField = 'NOME'
                ListSource = frmDados.Dst_Funcionarios
                TabOrder = 9
                Visible = False
                OnKeyPress = cbxbaixapgtodentesKeyPress
              end
            end
            object tbsbaixados: TTabSheet
              Caption = 'LIQDADOS'
              ImageIndex = 3
              OnShow = tbsbaixadosShow
              object DBGrid2: TDBGrid
                Left = 0
                Top = 8
                Width = 565
                Height = 203
                Color = clCream
                DataSource = frmDados.Dts_Vencto
                Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'MS Sans Serif'
                TitleFont.Style = []
                OnColEnter = dbgvenctoColEnter
                OnEnter = dbgvenctoEnter
                OnExit = dbgvenctoExit
                OnKeyPress = dbgvenctoKeyPress
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'n_tipo_pgto'
                    Title.Caption = 'Forma Pgto'
                    Width = 71
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'DOC'
                    Title.Caption = 'Documento'
                    Width = 226
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PRAZO'
                    Title.Caption = 'Prazo'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'DTV'
                    Title.Caption = 'Vencto'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'VALLIQ'
                    Title.Caption = 'Valor'
                    Width = 74
                    Visible = True
                  end>
              end
              object BitBtn1: TBitBtn
                Left = 500
                Top = 218
                Width = 65
                Height = 32
                Caption = '&Recibo'
                TabOrder = 1
                OnClick = BitBtn1Click
              end
            end
            object tbsaliq: TTabSheet
              Caption = #192' LIQDAR'
              ImageIndex = 4
              OnShow = tbsaliqShow
              object DBGrid3: TDBGrid
                Left = 0
                Top = 8
                Width = 565
                Height = 241
                Color = clCream
                DataSource = frmDados.Dts_Vencto
                Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'MS Sans Serif'
                TitleFont.Style = []
                OnColEnter = dbgvenctoColEnter
                OnEnter = dbgvenctoEnter
                OnExit = dbgvenctoExit
                OnKeyPress = dbgvenctoKeyPress
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'n_tipo_pgto'
                    Title.Caption = 'Forma Pgto'
                    Width = 71
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'DOC'
                    Title.Caption = 'Documento'
                    Width = 226
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PRAZO'
                    Title.Caption = 'Prazo'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'DTV'
                    Title.Caption = 'Vencto'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'VALOR'
                    Title.Caption = 'Valor'
                    Width = 74
                    Visible = True
                  end>
              end
            end
          end
        end
        object tbsobsorc: TTabSheet
          Caption = 'OP'#199#195'O PGTO'
          ImageIndex = 3
          OnShow = tbsobsorcShow
          object DBMemo1: TDBMemo
            Left = 1
            Top = 5
            Width = 573
            Height = 272
            BorderStyle = bsNone
            Color = clCream
            DataField = 'DADOSADICIONAIS'
            DataSource = frmDados.Dts_sVenda
            TabOrder = 0
            OnEnter = mmoobsEnter
            OnExit = mmoobsExit
          end
        end
      end
      object PageControl1: TPageControl
        Left = 608
        Top = 15
        Width = 393
        Height = 308
        ActivePage = tbsobs
        TabOrder = 1
        object tbsobs: TTabSheet
          Caption = 'OBSERVA'#199#195'O'
          object mmoobs: TDBMemo
            Left = 5
            Top = 6
            Width = 374
            Height = 268
            BorderStyle = bsNone
            Color = clCream
            DataField = 'OBSERVACAO'
            DataSource = frmDados.Dts_Clientes
            TabOrder = 0
            OnEnter = mmoobsEnter
            OnExit = mmoobsExit
          end
        end
      end
    end
    object tbsinfcompl: TTabSheet
      Caption = 'DADOS COMPLEMENTARES'
      ImageIndex = 3
      object lbldesc13: TLabel
        Left = 1
        Top = 6
        Width = 41
        Height = 13
        Caption = 'DESC13'
        FocusControl = edidesc13
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lbldesc14: TLabel
        Left = 248
        Top = 6
        Width = 41
        Height = 13
        Caption = 'DESC14'
        FocusControl = edidesc14
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lbldesc15: TLabel
        Left = 498
        Top = 6
        Width = 41
        Height = 13
        Caption = 'DESC15'
        FocusControl = edidesc15
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lbldesc16: TLabel
        Left = 775
        Top = 6
        Width = 41
        Height = 13
        Caption = 'DESC16'
        FocusControl = edidesc16
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lbldesc17: TLabel
        Left = 1
        Top = 54
        Width = 41
        Height = 13
        Caption = 'DESC17'
        FocusControl = edidesc17
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lbldesc18: TLabel
        Left = 248
        Top = 54
        Width = 41
        Height = 13
        Caption = 'DESC18'
        FocusControl = edidesc18
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lbldesc19: TLabel
        Left = 498
        Top = 54
        Width = 41
        Height = 13
        Caption = 'DESC19'
        FocusControl = edidesc19
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lbldesc20: TLabel
        Left = 775
        Top = 54
        Width = 41
        Height = 13
        Caption = 'DESC20'
        FocusControl = edidesc20
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lbldesc21: TLabel
        Left = 1
        Top = 104
        Width = 41
        Height = 13
        Caption = 'DESC21'
        FocusControl = edidesc21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lbldesc22: TLabel
        Left = 248
        Top = 104
        Width = 41
        Height = 13
        Caption = 'DESC22'
        FocusControl = edidesc22
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lbldesc23: TLabel
        Left = 498
        Top = 104
        Width = 41
        Height = 13
        Caption = 'DESC23'
        FocusControl = edidesc23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lbldesc24: TLabel
        Left = 775
        Top = 104
        Width = 41
        Height = 13
        Caption = 'DESC24'
        FocusControl = edidesc24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lbldesc25: TLabel
        Left = 1
        Top = 149
        Width = 41
        Height = 13
        Caption = 'DESC25'
        FocusControl = edidesc25
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lbldesc26: TLabel
        Left = 248
        Top = 149
        Width = 41
        Height = 13
        Caption = 'DESC26'
        FocusControl = edidesc26
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lbldesc27: TLabel
        Left = 498
        Top = 149
        Width = 41
        Height = 13
        Caption = 'DESC27'
        FocusControl = edidesc27
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lbldesc28: TLabel
        Left = 775
        Top = 149
        Width = 41
        Height = 13
        Caption = 'DESC28'
        FocusControl = edidesc28
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lbldesc29: TLabel
        Left = 1
        Top = 196
        Width = 41
        Height = 13
        Caption = 'DESC29'
        FocusControl = edidesc29
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lbldesc30: TLabel
        Left = 248
        Top = 196
        Width = 41
        Height = 13
        Caption = 'DESC30'
        FocusControl = edidesc30
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lbldesc31: TLabel
        Left = 498
        Top = 196
        Width = 41
        Height = 13
        Caption = 'DESC31'
        FocusControl = edidesc31
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lbldesc32: TLabel
        Left = 775
        Top = 196
        Width = 41
        Height = 13
        Caption = 'DESC32'
        FocusControl = edidesc32
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lbldesc33: TLabel
        Left = 1
        Top = 245
        Width = 41
        Height = 13
        Caption = 'DESC33'
        FocusControl = edidesc33
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lbldesc34: TLabel
        Left = 248
        Top = 246
        Width = 41
        Height = 13
        Caption = 'DESC34'
        FocusControl = edidesc34
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lbldesc35: TLabel
        Left = 498
        Top = 246
        Width = 41
        Height = 13
        Caption = 'DESC35'
        FocusControl = edidesc35
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lbldesc36: TLabel
        Left = 775
        Top = 246
        Width = 41
        Height = 13
        Caption = 'DESC36'
        FocusControl = edidesc36
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lbldesc37: TLabel
        Left = 1
        Top = 294
        Width = 41
        Height = 13
        Caption = 'DESC37'
        FocusControl = edidesc37
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lbldesc38: TLabel
        Left = 248
        Top = 294
        Width = 41
        Height = 13
        Caption = 'DESC38'
        FocusControl = edidesc38
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object edidesc13: TDBEdit
        Left = 1
        Top = 26
        Width = 230
        Height = 21
        CharCase = ecUpperCase
        DataField = 'DESC13'
        DataSource = frmDados.Dts_sVenda
        TabOrder = 0
        OnKeyPress = edicpfKeyPress
      end
      object edidesc14: TDBEdit
        Left = 248
        Top = 26
        Width = 230
        Height = 21
        CharCase = ecUpperCase
        DataField = 'DESC14'
        DataSource = frmDados.Dts_sVenda
        TabOrder = 1
        OnKeyPress = edicpfKeyPress
      end
      object edidesc15: TDBEdit
        Left = 498
        Top = 26
        Width = 258
        Height = 21
        CharCase = ecUpperCase
        DataField = 'DESC15'
        DataSource = frmDados.Dts_sVenda
        TabOrder = 2
        OnKeyPress = edicpfKeyPress
      end
      object edidesc16: TDBEdit
        Left = 775
        Top = 26
        Width = 225
        Height = 21
        CharCase = ecUpperCase
        DataField = 'DESC16'
        DataSource = frmDados.Dts_sVenda
        TabOrder = 3
        OnKeyPress = edicpfKeyPress
      end
      object edidesc17: TDBEdit
        Left = 1
        Top = 74
        Width = 230
        Height = 21
        CharCase = ecUpperCase
        DataField = 'DESC17'
        DataSource = frmDados.Dts_sVenda
        TabOrder = 4
        OnKeyPress = edicpfKeyPress
      end
      object edidesc18: TDBEdit
        Left = 248
        Top = 74
        Width = 230
        Height = 21
        CharCase = ecUpperCase
        DataField = 'DESC18'
        DataSource = frmDados.Dts_sVenda
        TabOrder = 5
        OnKeyPress = edicpfKeyPress
      end
      object edidesc19: TDBEdit
        Left = 498
        Top = 74
        Width = 258
        Height = 21
        CharCase = ecUpperCase
        DataField = 'DESC19'
        DataSource = frmDados.Dts_sVenda
        TabOrder = 6
        OnKeyPress = edicpfKeyPress
      end
      object edidesc20: TDBEdit
        Left = 775
        Top = 74
        Width = 225
        Height = 21
        CharCase = ecUpperCase
        DataField = 'DESC20'
        DataSource = frmDados.Dts_sVenda
        TabOrder = 7
        OnKeyPress = edicpfKeyPress
      end
      object edidesc21: TDBEdit
        Left = 1
        Top = 122
        Width = 230
        Height = 21
        CharCase = ecUpperCase
        DataField = 'DESC21'
        DataSource = frmDados.Dts_sVenda
        TabOrder = 8
        OnKeyPress = edicpfKeyPress
      end
      object edidesc22: TDBEdit
        Left = 248
        Top = 122
        Width = 230
        Height = 21
        CharCase = ecUpperCase
        DataField = 'DESC22'
        DataSource = frmDados.Dts_sVenda
        TabOrder = 9
        OnKeyPress = edicpfKeyPress
      end
      object edidesc23: TDBEdit
        Left = 498
        Top = 122
        Width = 258
        Height = 21
        CharCase = ecUpperCase
        DataField = 'DESC23'
        DataSource = frmDados.Dts_sVenda
        TabOrder = 10
        OnKeyPress = edicpfKeyPress
      end
      object edidesc24: TDBEdit
        Left = 775
        Top = 122
        Width = 225
        Height = 21
        CharCase = ecUpperCase
        DataField = 'DESC24'
        DataSource = frmDados.Dts_sVenda
        TabOrder = 11
        OnKeyPress = edicpfKeyPress
      end
      object edidesc25: TDBEdit
        Left = 1
        Top = 168
        Width = 230
        Height = 21
        CharCase = ecUpperCase
        DataField = 'DESC25'
        DataSource = frmDados.Dts_sVenda
        TabOrder = 12
        OnKeyPress = edicpfKeyPress
      end
      object edidesc26: TDBEdit
        Left = 248
        Top = 168
        Width = 230
        Height = 21
        CharCase = ecUpperCase
        DataField = 'DESC26'
        DataSource = frmDados.Dts_sVenda
        TabOrder = 13
        OnKeyPress = edicpfKeyPress
      end
      object edidesc27: TDBEdit
        Left = 498
        Top = 168
        Width = 258
        Height = 21
        CharCase = ecUpperCase
        DataField = 'DESC27'
        DataSource = frmDados.Dts_sVenda
        TabOrder = 14
        OnKeyPress = edicpfKeyPress
      end
      object edidesc28: TDBEdit
        Left = 775
        Top = 168
        Width = 225
        Height = 21
        CharCase = ecUpperCase
        DataField = 'DESC28'
        DataSource = frmDados.Dts_sVenda
        TabOrder = 15
        OnKeyPress = edicpfKeyPress
      end
      object edidesc29: TDBEdit
        Left = 1
        Top = 217
        Width = 230
        Height = 21
        CharCase = ecUpperCase
        DataField = 'DESC29'
        DataSource = frmDados.Dts_sVenda
        TabOrder = 16
        OnKeyPress = edicpfKeyPress
      end
      object edidesc30: TDBEdit
        Left = 248
        Top = 217
        Width = 230
        Height = 21
        CharCase = ecUpperCase
        DataField = 'DESC30'
        DataSource = frmDados.Dts_sVenda
        TabOrder = 17
        OnKeyPress = edicpfKeyPress
      end
      object edidesc31: TDBEdit
        Left = 498
        Top = 217
        Width = 258
        Height = 21
        CharCase = ecUpperCase
        DataField = 'DESC31'
        DataSource = frmDados.Dts_sVenda
        TabOrder = 18
        OnKeyPress = edicpfKeyPress
      end
      object edidesc32: TDBEdit
        Left = 775
        Top = 217
        Width = 225
        Height = 21
        CharCase = ecUpperCase
        DataField = 'DESC32'
        DataSource = frmDados.Dts_sVenda
        TabOrder = 19
        OnKeyPress = edicpfKeyPress
      end
      object edidesc33: TDBEdit
        Left = 1
        Top = 266
        Width = 230
        Height = 21
        CharCase = ecUpperCase
        DataField = 'DESC33'
        DataSource = frmDados.Dts_sVenda
        TabOrder = 20
        OnKeyPress = edicpfKeyPress
      end
      object edidesc34: TDBEdit
        Left = 248
        Top = 266
        Width = 230
        Height = 21
        CharCase = ecUpperCase
        DataField = 'DESC34'
        DataSource = frmDados.Dts_sVenda
        TabOrder = 21
        OnKeyPress = edicpfKeyPress
      end
      object edidesc35: TDBEdit
        Left = 498
        Top = 266
        Width = 258
        Height = 21
        CharCase = ecUpperCase
        DataField = 'DESC35'
        DataSource = frmDados.Dts_sVenda
        TabOrder = 22
        OnKeyPress = edicpfKeyPress
      end
      object edidesc36: TDBEdit
        Left = 775
        Top = 266
        Width = 225
        Height = 21
        CharCase = ecUpperCase
        DataField = 'DESC36'
        DataSource = frmDados.Dts_sVenda
        TabOrder = 23
        OnKeyPress = edicpfKeyPress
      end
      object edidesc37: TDBEdit
        Left = 1
        Top = 313
        Width = 230
        Height = 21
        CharCase = ecUpperCase
        DataField = 'DESC37'
        DataSource = frmDados.Dts_sVenda
        TabOrder = 24
        OnKeyPress = edicpfKeyPress
      end
      object edidesc38: TDBEdit
        Left = 248
        Top = 313
        Width = 230
        Height = 21
        CharCase = ecUpperCase
        DataField = 'DESC38'
        DataSource = frmDados.Dts_sVenda
        TabOrder = 25
        OnKeyPress = edicpfKeyPress
      end
    end
  end
  object pnlsuperior: TPanel
    Left = 0
    Top = 0
    Width = 1016
    Height = 60
    Align = alTop
    TabOrder = 1
    OnExit = pnlsuperiorExit
    object spdnova: TSpeedButton
      Left = 4
      Top = 5
      Width = 128
      Height = 49
      Caption = '&NOVO TRATAMENTO'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555000000
        000055555F77777777775555000FFFFFFFF0555F777F5FFFF55755000F0F0000
        FFF05F777F7F77775557000F0F0FFFFFFFF0777F7F7F5FFFFFF70F0F0F0F0000
        00F07F7F7F7F777777570F0F0F0FFFFFFFF07F7F7F7F5FFFFFF70F0F0F0F0000
        00F07F7F7F7F777777570F0F0F0FFFFFFFF07F7F7F7F5FFF55570F0F0F0F000F
        FFF07F7F7F7F77755FF70F0F0F0FFFFF00007F7F7F7F5FF577770F0F0F0F00FF
        0F057F7F7F7F77557F750F0F0F0FFFFF00557F7F7F7FFFFF77550F0F0F000000
        05557F7F7F77777775550F0F0000000555557F7F7777777555550F0000000555
        55557F7777777555555500000005555555557777777555555555}
      Layout = blGlyphTop
      NumGlyphs = 2
      Visible = False
      OnClick = spdnovaClick
    end
    object spdsalvar: TSpeedButton
      Left = 753
      Top = 5
      Width = 128
      Height = 49
      Caption = '&SALVAR'
      Glyph.Data = {
        06020000424D0602000000000000760000002800000028000000140000000100
        0400000000009001000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        33333333333333333333333333333FFFFFFFFFFFF33333380000000000008333
        33338888888888883F333330CC08CCF770CC03333338F38F333338F38F333330
        CC08CCF770CC03333338F38F333338F38F333330CC07887770CC03333338F38F
        FFFFF8338F333330CC60000006CC03333338F338888883338F333330CCCCCCCC
        CCCC03333338F33FFFFFFFF38F333330C6000000006C03333338F3888888883F
        8F333330C0FFFFFFFF0C03333338F8F33333338F8F333330C0FFFFFFFF0C0333
        3338F8F33333338F8F333330C0FFFFFFFF0C03333338F8F33333338F8F333330
        C0FFFFFFFF0C03333338F8F33333338F8F33333000FFFFFFFF0003333338F8F3
        3333338F8F333330C0FFFFFFFF0C03333338F8FFFFFFFF8F8333333800000000
        0000833333338888888888883333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        33333333333333333333}
      Layout = blGlyphTop
      NumGlyphs = 2
      OnClick = spdsalvarClick
    end
    object spdnovocliente: TSpeedButton
      Left = 4
      Top = 5
      Width = 128
      Height = 49
      Caption = '&NOVO PACIENTE'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        5555555FFFFFFFFFF5555550000000000555557777777777F5555550FFFFFFFF
        0555557F5FFFF557F5555550F0000FFF0555557F77775557F5555550FFFFFFFF
        0555557F5FFFFFF7F5555550F000000F0555557F77777757F5555550FFFFFFFF
        0555557F5FFFFFF7F5555550F000000F0555557F77777757F5555550FFFFFFFF
        0555557F5FFF5557F5555550F000FFFF0555557F77755FF7F5555550FFFFF000
        0555557F5FF5777755555550F00FF0F05555557F77557F7555555550FFFFF005
        5555557FFFFF7755555555500000005555555577777775555555555555555555
        5555555555555555555555555555555555555555555555555555}
      Layout = blGlyphTop
      NumGlyphs = 2
      OnClick = spdnovoclienteClick
    end
    object spdcancelar: TSpeedButton
      Left = 887
      Top = 5
      Width = 128
      Height = 49
      Caption = '&FECHAR'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
        3333333777333777FF3333993333339993333377FF3333377FF3399993333339
        993337777FF3333377F3393999333333993337F777FF333337FF993399933333
        399377F3777FF333377F993339993333399377F33777FF33377F993333999333
        399377F333777FF3377F993333399933399377F3333777FF377F993333339993
        399377FF3333777FF7733993333339993933373FF3333777F7F3399933333399
        99333773FF3333777733339993333339933333773FFFFFF77333333999999999
        3333333777333777333333333999993333333333377777333333}
      Layout = blGlyphTop
      NumGlyphs = 2
      OnClick = spdcancelarClick
    end
    object spdestorno: TSpeedButton
      Left = 617
      Top = 5
      Width = 128
      Height = 49
      Caption = '&ESTORNAR'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000333
        3333333333777F33333333333309033333333333337F7F333333333333090333
        33333333337F7F33333333333309033333333333337F7F333333333333090333
        33333333337F7F33333333333309033333333333FF7F7FFFF333333000090000
        3333333777737777F333333099999990333333373F3333373333333309999903
        333333337F33337F33333333099999033333333373F333733333333330999033
        3333333337F337F3333333333099903333333333373F37333333333333090333
        33333333337F7F33333333333309033333333333337373333333333333303333
        333333333337F333333333333330333333333333333733333333}
      Layout = blGlyphTop
      NumGlyphs = 2
      Visible = False
      OnClick = spdestornoClick
    end
    object spdlancar: TSpeedButton
      Left = 484
      Top = 5
      Width = 128
      Height = 49
      Caption = '&LAN'#199'AR'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333303333
        333333333337F33333333333333033333333333333373F333333333333090333
        33333333337F7F33333333333309033333333333337373F33333333330999033
        3333333337F337F33333333330999033333333333733373F3333333309999903
        333333337F33337F33333333099999033333333373333373F333333099999990
        33333337FFFF3FF7F33333300009000033333337777F77773333333333090333
        33333333337F7F33333333333309033333333333337F7F333333333333090333
        33333333337F7F33333333333309033333333333337F7F333333333333090333
        33333333337F7F33333333333300033333333333337773333333}
      Layout = blGlyphTop
      NumGlyphs = 2
      Visible = False
      OnClick = spdlancarClick
    end
    object spdimptra: TSpeedButton
      Left = 138
      Top = 5
      Width = 128
      Height = 49
      Caption = '&IMPRIMIR'
      Layout = blGlyphTop
      NumGlyphs = 2
      PopupMenu = PopupMenu1
      OnClick = spdimptraClick
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 685
    Width = 1016
    Height = 19
    Panels = <>
  end
  object pnldental: TPanel
    Left = 0
    Top = 237
    Width = 1016
    Height = 83
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 3
    object dbgmat_rest: TDBCtrlGrid
      Left = 16
      Top = 1
      Width = 977
      Height = 81
      ColCount = 16
      Color = clSkyBlue
      DataSource = frmDados.Dts_Mat_Restaurar
      PanelBorder = gbNone
      PanelHeight = 27
      PanelWidth = 60
      ParentColor = False
      TabOrder = 0
      SelectedColor = clYellow
      ShowFocus = False
      OnEnter = dbgmat_restEnter
      OnPaintPanel = dbgmat_restPaintPanel
      object imgfundo: TImage
        Left = 0
        Top = 0
        Width = 25
        Height = 27
        Visible = False
      end
      object Shape1: TShape
        Left = 0
        Top = 0
        Width = 60
        Height = 27
        Align = alClient
        Brush.Color = clMoneyGreen
        Pen.Style = psClear
        Visible = False
      end
      object imgfoto1: TImage
        Left = 0
        Top = 0
        Width = 25
        Height = 20
        Center = True
        Visible = False
      end
      object lbldente: TDBText
        Left = 0
        Top = 5
        Width = 60
        Height = 18
        Alignment = taCenter
        DataField = 'ID'
        DataSource = frmDados.Dts_Mat_Restaurar
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
        OnClick = lbldenteClick
      end
    end
    object pnlinstratamento: TPanel
      Left = 18
      Top = 7
      Width = 967
      Height = 77
      BevelOuter = bvNone
      TabOrder = 1
      object Label15: TLabel
        Left = 6
        Top = 4
        Width = 106
        Height = 13
        Caption = 'ESPECIALIDADES'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label16: TLabel
        Left = 186
        Top = 4
        Width = 39
        Height = 13
        Caption = 'QTDE.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label17: TLabel
        Left = 231
        Top = 4
        Width = 72
        Height = 13
        Caption = 'DESCRI'#199#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label18: TLabel
        Left = 485
        Top = 4
        Width = 43
        Height = 13
        Caption = 'DENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label21: TLabel
        Left = 554
        Top = 4
        Width = 86
        Height = 13
        Caption = 'PR. UNIT'#193'RIO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label22: TLabel
        Left = 675
        Top = 4
        Width = 41
        Height = 13
        Caption = 'TOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label19: TLabel
        Left = 724
        Top = 4
        Width = 63
        Height = 13
        Caption = 'DENTISTA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object cbxnomemod: TDBLookupComboBox
        Left = 4
        Top = 23
        Width = 149
        Height = 21
        TabOrder = 0
        OnKeyPress = edicpfKeyPress
      end
      object ediqtdeM: TEdit
        Left = 155
        Top = 23
        Width = 71
        Height = 21
        MaxLength = 14
        TabOrder = 1
        Text = 'ediqtde'
        OnExit = ediqtdeMExit
        OnKeyPress = edicpfKeyPress
      end
      object cbxdescricao: TDBLookupComboBox
        Left = 229
        Top = 23
        Width = 252
        Height = 21
        TabOrder = 2
        OnExit = cbxdescricaoExit
        OnKeyPress = edicpfKeyPress
      end
      object cbxdente: TDBLookupComboBox
        Left = 483
        Top = 23
        Width = 73
        Height = 21
        TabOrder = 3
        OnKeyPress = edicpfKeyPress
      end
      object ediprveM: TEdit
        Left = 559
        Top = 23
        Width = 83
        Height = 21
        MaxLength = 15
        TabOrder = 4
        Text = 'ediprve'
        OnExit = ediprveMExit
        OnKeyPress = edicpfKeyPress
      end
      object edisubtotalM: TEdit
        Left = 645
        Top = 23
        Width = 73
        Height = 21
        Enabled = False
        MaxLength = 15
        TabOrder = 5
        Text = 'edisubtotal'
        OnKeyPress = edicpfKeyPress
      end
      object cbxnomefun: TDBLookupComboBox
        Left = 722
        Top = 24
        Width = 115
        Height = 21
        TabOrder = 6
        OnKeyPress = edicpfKeyPress
      end
      object ckbtratar: TCheckBox
        Left = 840
        Top = 23
        Width = 65
        Height = 17
        Caption = 'Tratar?'
        TabOrder = 7
        OnKeyPress = edicpfKeyPress
      end
      object btnacao: TButton
        Left = 739
        Top = 49
        Width = 75
        Height = 25
        Caption = 'btnacao'
        TabOrder = 8
        OnClick = btnacaoClick
      end
      object btnCancelar: TButton
        Left = 819
        Top = 49
        Width = 75
        Height = 25
        Caption = '&Cancelar'
        TabOrder = 9
        OnClick = btnCancelarClick
      end
    end
  end
  object pnlprincipal: TPanel
    Left = 0
    Top = 60
    Width = 1016
    Height = 177
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 4
    object Label38: TLabel
      Left = 7
      Top = 2
      Width = 73
      Height = 13
      Caption = 'C.P.F./C.N.P.J.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 128
      Top = 2
      Width = 42
      Height = 13
      Caption = 'C'#211'DIGO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 194
      Top = 2
      Width = 32
      Height = 13
      Caption = 'NOME'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 564
      Top = 2
      Width = 46
      Height = 13
      Caption = 'APELIDO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label39: TLabel
      Left = 7
      Top = 44
      Width = 43
      Height = 13
      Caption = 'R.G./I.E.'
      FocusControl = EDIIE
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 128
      Top = 44
      Width = 60
      Height = 13
      Caption = 'ENDERE'#199'O'
      FocusControl = ediendent
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lbltitnroent: TLabel
      Left = 506
      Top = 44
      Width = 19
      Height = 13
      Caption = 'N.O'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 564
      Top = 44
      Width = 83
      Height = 13
      Caption = 'COMPLEMENTO'
      FocusControl = edicomplent
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 697
      Top = 44
      Width = 41
      Height = 13
      Caption = 'BAIRRO'
      FocusControl = edibairroent
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 7
      Top = 84
      Width = 40
      Height = 13
      Caption = 'CIDADE'
      FocusControl = edicidadeent
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 192
      Top = 84
      Width = 21
      Height = 13
      Caption = 'CEP'
      FocusControl = edicepent
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 287
      Top = 84
      Width = 24
      Height = 13
      Caption = 'DDD'
      FocusControl = edicepent
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label12: TLabel
      Left = 697
      Top = 84
      Width = 106
      Height = 13
      Caption = 'CELULAR / OUTROS'
      FocusControl = editelefones
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label13: TLabel
      Left = 7
      Top = 124
      Width = 52
      Height = 13
      Caption = 'CONTATO'
      FocusControl = edicontato
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label40: TLabel
      Left = 533
      Top = 124
      Width = 47
      Height = 13
      Caption = 'NASCTO.'
      FocusControl = EDIDATANASC
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object imgFoto: TImage
      Left = 888
      Top = 6
      Width = 121
      Height = 131
      ParentShowHint = False
      ShowHint = False
      Stretch = True
    end
    object spdinsfoto: TSpeedButton
      Left = 888
      Top = 141
      Width = 22
      Height = 22
      Hint = 'Importar Figura'
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333333FFFFFFFFF333333000000000033333377777777773333330FFFFF
        FFF03333337F333333373333330FFFFFFFF03333337F3FF3FFF73333330F00F0
        00F03333F37F773777373330330FFFFFFFF03337FF7F3F3FF3F73339030F0800
        F0F033377F7F737737373339900FFFFFFFF03FF7777F3FF3FFF70999990F00F0
        00007777777F7737777709999990FFF0FF0377777777FF37F3730999999908F0
        F033777777777337F73309999990FFF0033377777777FFF77333099999000000
        3333777777777777333333399033333333333337773333333333333903333333
        3333333773333333333333303333333333333337333333333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = spdinsfotoClick
    end
    object spdapafoto: TSpeedButton
      Left = 913
      Top = 141
      Width = 23
      Height = 22
      Hint = 'Apagar Figura'
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        55555FFFFFFF5F55FFF5777777757559995777777775755777F7555555555550
        305555555555FF57F7F555555550055BB0555555555775F777F55555550FB000
        005555555575577777F5555550FB0BF0F05555555755755757F555550FBFBF0F
        B05555557F55557557F555550BFBF0FB005555557F55575577F555500FBFBFB0
        B05555577F555557F7F5550E0BFBFB00B055557575F55577F7F550EEE0BFB0B0
        B05557FF575F5757F7F5000EEE0BFBF0B055777FF575FFF7F7F50000EEE00000
        B0557777FF577777F7F500000E055550805577777F7555575755500000555555
        05555777775555557F5555000555555505555577755555557555}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = spdapafotoClick
    end
    object Label23: TLabel
      Left = 212
      Top = 126
      Width = 35
      Height = 13
      Caption = 'E-MAIL'
      FocusControl = ediemail
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label24: TLabel
      Left = 501
      Top = 84
      Width = 86
      Height = 13
      Caption = 'TELEFONE COM.'
      FocusControl = EDIFONECOM
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label25: TLabel
      Left = 326
      Top = 84
      Width = 84
      Height = 13
      Caption = 'TELEFONE RES.'
      FocusControl = EDIFONEENT
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label26: TLabel
      Left = 628
      Top = 124
      Width = 54
      Height = 13
      Caption = 'SITUA'#199#195'O'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object edinfant: TDBEdit
      Left = 565
      Top = 16
      Width = 296
      Height = 21
      CharCase = ecUpperCase
      DataField = 'FANTASIA'
      DataSource = frmDados.Dts_Clientes
      TabOrder = 4
      OnKeyPress = edicpfKeyPress
    end
    object edincli: TDBEdit
      Left = 192
      Top = 16
      Width = 361
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NOME'
      DataSource = frmDados.Dts_Clientes
      TabOrder = 2
      OnKeyPress = edicpfKeyPress
    end
    object edicpf: TDBEdit
      Left = 7
      Top = 16
      Width = 110
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CPF'
      DataSource = frmDados.Dts_Clientes
      TabOrder = 0
      OnKeyPress = edicpfKeyPress
    end
    object ediccli: TDBEdit
      Left = 126
      Top = 16
      Width = 52
      Height = 21
      DataField = 'CCLI'
      DataSource = frmDados.Dts_sVenda
      TabOrder = 1
      OnKeyPress = edicpfKeyPress
    end
    object EDIIE: TDBEdit
      Left = 7
      Top = 59
      Width = 110
      Height = 21
      CharCase = ecUpperCase
      DataField = 'IE'
      DataSource = frmDados.Dts_Clientes
      TabOrder = 6
      OnKeyPress = edicpfKeyPress
    end
    object ediendent: TDBEdit
      Left = 126
      Top = 59
      Width = 369
      Height = 21
      CharCase = ecUpperCase
      DataField = 'ENDENT'
      DataSource = frmDados.Dts_Clientes
      TabOrder = 7
      OnKeyPress = edicpfKeyPress
    end
    object edinroent: TDBEdit
      Left = 504
      Top = 59
      Width = 50
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NROENT'
      DataSource = frmDados.Dts_Clientes
      TabOrder = 8
      OnKeyPress = edicpfKeyPress
    end
    object edicomplent: TDBEdit
      Left = 562
      Top = 59
      Width = 126
      Height = 21
      CharCase = ecUpperCase
      DataField = 'COMPLENT'
      DataSource = frmDados.Dts_Clientes
      TabOrder = 9
      OnKeyPress = edicpfKeyPress
    end
    object edibairroent: TDBEdit
      Left = 697
      Top = 59
      Width = 166
      Height = 21
      CharCase = ecUpperCase
      DataField = 'BAIRROENT'
      DataSource = frmDados.Dts_Clientes
      TabOrder = 10
      OnKeyPress = edicpfKeyPress
    end
    object edicidadeent: TDBEdit
      Left = 7
      Top = 99
      Width = 176
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CIDADEENT'
      DataSource = frmDados.Dts_Clientes
      TabOrder = 11
      OnKeyPress = edicpfKeyPress
    end
    object edicepent: TDBEdit
      Left = 191
      Top = 99
      Width = 88
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CEPENT'
      DataSource = frmDados.Dts_Clientes
      TabOrder = 12
      OnKeyPress = edicpfKeyPress
    end
    object edidddeent: TDBEdit
      Left = 286
      Top = 99
      Width = 34
      Height = 21
      CharCase = ecUpperCase
      DataField = 'DDDEENT'
      DataSource = frmDados.Dts_Clientes
      TabOrder = 13
      OnKeyPress = edicpfKeyPress
    end
    object editelefones: TDBEdit
      Left = 697
      Top = 99
      Width = 168
      Height = 21
      CharCase = ecUpperCase
      DataField = 'TELEFONES'
      DataSource = frmDados.Dts_Clientes
      TabOrder = 17
      OnKeyPress = edicpfKeyPress
    end
    object edicontato: TDBEdit
      Left = 7
      Top = 139
      Width = 200
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CONTATO'
      DataSource = frmDados.Dts_Clientes
      TabOrder = 18
      OnKeyPress = edicpfKeyPress
    end
    object EDIDATANASC: TDBEdit
      Left = 530
      Top = 139
      Width = 89
      Height = 21
      DataField = 'DATANASC'
      DataSource = frmDados.Dts_Clientes
      TabOrder = 20
      OnKeyPress = edicpfKeyPress
    end
    object ediemail: TDBEdit
      Left = 212
      Top = 140
      Width = 314
      Height = 21
      CharCase = ecLowerCase
      DataField = 'EMAIL'
      DataSource = frmDados.Dts_Clientes
      TabOrder = 19
      OnKeyPress = edicpfKeyPress
    end
    object EDIFONECOM: TDBEdit
      Left = 544
      Top = 99
      Width = 145
      Height = 21
      CharCase = ecUpperCase
      DataField = 'TELEFONECOM'
      DataSource = frmDados.Dts_Clientes
      TabOrder = 16
      OnKeyPress = edicpfKeyPress
    end
    object EDIFONEENT: TDBEdit
      Left = 326
      Top = 99
      Width = 169
      Height = 21
      CharCase = ecUpperCase
      DataField = 'TELEFONEENT'
      DataSource = frmDados.Dts_Clientes
      TabOrder = 14
      OnKeyPress = edicpfKeyPress
    end
    object cbxncli: TDBLookupComboBox
      Left = 192
      Top = 16
      Width = 361
      Height = 21
      DataField = 'CCLI'
      DataSource = frmDados.Dts_sVenda
      KeyField = 'CODIGO'
      ListField = 'NOME'
      ListSource = frmDados.Dts_Clientes
      TabOrder = 3
      OnKeyPress = edicpfKeyPress
    end
    object cbxnfant: TDBLookupComboBox
      Left = 566
      Top = 16
      Width = 295
      Height = 21
      DataField = 'CCLI'
      DataSource = frmDados.Dts_sVenda
      KeyField = 'CODIGO'
      ListField = 'FANTASIA'
      ListSource = frmDados.Dts_Clientes
      TabOrder = 5
      OnKeyPress = edicpfKeyPress
    end
    object CBXSITUCLI: TDBLookupComboBox
      Left = 628
      Top = 139
      Width = 149
      Height = 21
      DataField = 'CSITCAD'
      DataSource = frmDados.Dts_Clientes
      KeyField = 'CODIGO'
      ListField = 'DESCRICAO'
      ListSource = frmDados.Dts_SituCadCli
      NullValueKey = 46
      TabOrder = 21
    end
    object edidddecom: TDBEdit
      Left = 503
      Top = 98
      Width = 34
      Height = 21
      CharCase = ecUpperCase
      DataField = 'DDDECOM'
      DataSource = frmDados.Dts_Clientes
      TabOrder = 15
      OnKeyPress = edicpfKeyPress
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 944
    Top = 440
  end
  object MainMenu1: TMainMenu
    Left = 896
    Top = 492
  end
  object opdAbrirfig: TOpenPictureDialog
    Left = 809
    Top = 6
  end
  object OpenDialog2: TOpenDialog
    Ctl3D = False
    Left = 736
    Top = 28
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 924
    Top = 528
  end
  object imgfichadetalhe: TImageList
    Left = 879
    Top = 538
    Bitmap = {
      494C010103000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000FF000000FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF000000FF00000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B0000FFFF007B7B7B00000000000000000000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF0000000000
      00000000FF000000FF00000000000000000000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF0000000000
      00000000FF000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF000000000000000000000000000000000000000000000000000000000000FF
      FF0000FFFF0000FFFF00000000000000000000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF0000000000
      00000000FF000000FF00000000000000000000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF0000000000
      00000000FF000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000007B7B
      7B0000FFFF007B7B7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000FF000000FF00000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00F01FFFFFFFFF0000F83FE7F8FFF80000
      EC6FE7F8FFF80000FEFF81FF81FF0000BFFB81FC81FC0000FFFFE7FCFFFC0000
      7FFDE7FFFFFF0000FFFFFFFCFFFC00007FFDFEFCF7FC0000FFE3FE7FE7FF0000
      07C180138013000007C180138013000007C1FE7FE7FF000007E3FEF8F7F80000
      07EFFFF8FFF80000FABFFFFFFFFF000000000000000000000000000000000000
      000000000000}
  end
  object Lista_img: TImageList
    Left = 905
    Top = 610
    Bitmap = {
      494C010104000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FF000000FF000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000008484000084840000848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF0000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FF000000FF000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000008484000084840000848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FF000000FF000000FF000000848400008484000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF0000FFFF0000FFFF000000
      00000000000000000000000000000000000000000000000000000000000000FF
      000000FF000000FF000000FF000000FF00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF0000FFFF0000848400008484000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF000000FF000000FF000000FF000000FF0000008484000084
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF0000FFFF0000FF
      FF0000000000000000000000000000000000000000000000000000FF000000FF
      000000FF000000FF000000FF000000FF00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00008484000084
      8400000000000000000000000000000000000000000000000000000000000000
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF00000084
      8400000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000FF
      FF0000000000000000000000000000000000000000007B7B7B0000FF000000FF
      0000000000000000000000FF000000FF000000FF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000084
      8400000000000000000000000000000000000000000000000000000000000000
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF00000084
      8400000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000FF
      FF00000000000000000000000000000000007B7B7B0000FF0000000000000000
      000000000000000000000000000000FF000000FF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000084
      8400000000000000000000000000000000000000000000000000000000000000
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FF000000FF000000FF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF000000FF000000FF000000FF000000FF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF000000FF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FF000000FF000000FF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FF000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF0000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B0000FF
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B0000FF00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFF9FFFFFFFFFFFFFFF0FFFFFFFE3FFE3FF0FFFE3FFC1FFC1FE07FFC1F
      F80FF80FC07FF80FF00FF00F843FF00FF00FF00F1E3FF00FF01FF01FFE1FF01F
      F83FF83FFF1FF83FFC7FFC7FFF8FFC7FFFFFFFFFFFC7FFFFFFFFFFFFFFE3FFFF
      FFFFFFFFFFF8FFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object PopupMenu1: TPopupMenu
    Left = 424
    Top = 20
    object Sinttico1: TMenuItem
      Caption = 'Or'#231'. Sint'#233'tico'
      OnClick = Sinttico1Click
    end
    object Completo1: TMenuItem
      Caption = 'Or'#231'. Completo'
      OnClick = Completo1Click
    end
  end
  object imprime: TPopupMenu
    Left = 642
    Top = 300
  end
end
