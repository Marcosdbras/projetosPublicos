object frmpesqprodnf: Tfrmpesqprodnf
  Left = 23
  Top = 7
  Width = 992
  Height = 722
  BorderIcons = []
  Caption = 'Emiss'#227'o Nota Fiscal - Produtos e Servi'#231'os'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbltitdest: TLabel
    Left = 8
    Top = 43
    Width = 119
    Height = 20
    Caption = 'DESTINAT'#193'RIO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object lbldest: TLabel
    Left = 136
    Top = 43
    Width = 609
    Height = 20
    AutoSize = False
    Caption = 'lbldest'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object pctcadnf: TPageControl
    Left = 39
    Top = 272
    Width = 850
    Height = 353
    ActivePage = tbstransportador
    MultiLine = True
    TabOrder = 0
    object tbstransportador: TTabSheet
      Caption = 'TRANSPORTADOR'
      ImageIndex = 4
      object Label24: TLabel
        Left = 7
        Top = 17
        Width = 98
        Height = 13
        Caption = 'TRANSPORTADOR'
        FocusControl = cbxdesctransp_cod5nf
      end
      object Label8: TLabel
        Left = 7
        Top = 115
        Width = 101
        Height = 13
        Caption = 'FRETE POR CONTA'
        FocusControl = cbxdescfreteporconta_cod2nf
      end
      object Label4: TLabel
        Left = 287
        Top = 115
        Width = 83
        Height = 13
        Caption = 'PLACA VE'#205'CULO'
      end
      object Label25: TLabel
        Left = 520
        Top = 115
        Width = 69
        Height = 13
        Caption = 'U.F. VE'#205'CULO'
      end
      object Label49: TLabel
        Left = 456
        Top = 16
        Width = 27
        Height = 13
        Caption = 'CNPJ'
      end
      object edicnpjtransp: TDBText
        Left = 520
        Top = 16
        Width = 145
        Height = 17
        DataField = 'cnpj'
      end
      object Label50: TLabel
        Left = 7
        Top = 42
        Width = 60
        Height = 13
        Caption = 'ENDERE'#199'O'
      end
      object enderecotransp: TDBText
        Left = 120
        Top = 42
        Width = 265
        Height = 17
        DataField = 'endereco'
      end
      object Label51: TLabel
        Left = 456
        Top = 42
        Width = 24
        Height = 13
        Caption = 'NRO'
      end
      object DBText23: TDBText
        Left = 520
        Top = 42
        Width = 65
        Height = 17
        DataField = 'nro'
      end
      object Label52: TLabel
        Left = 7
        Top = 67
        Width = 41
        Height = 13
        Caption = 'BAIRRO'
      end
      object edibairrotransp: TDBText
        Left = 120
        Top = 67
        Width = 153
        Height = 17
        DataField = 'bairro'
      end
      object Label53: TLabel
        Left = 287
        Top = 67
        Width = 21
        Height = 13
        Caption = 'CEP'
      end
      object ediceptransp: TDBText
        Left = 340
        Top = 67
        Width = 73
        Height = 17
        DataField = 'cep'
      end
      object Label54: TLabel
        Left = 456
        Top = 67
        Width = 56
        Height = 13
        Caption = 'MUNIC'#205'PIO'
      end
      object edimunicipiotransp: TDBText
        Left = 520
        Top = 67
        Width = 201
        Height = 17
      end
      object Label55: TLabel
        Left = 7
        Top = 89
        Width = 29
        Height = 13
        Caption = 'FONE'
      end
      object editelefonestransp: TDBText
        Left = 120
        Top = 89
        Width = 153
        Height = 17
        DataField = 'telefones'
      end
      object Label56: TLabel
        Left = 287
        Top = 89
        Width = 14
        Height = 13
        Caption = 'UF'
      end
      object ediuftransp: TDBText
        Left = 340
        Top = 89
        Width = 73
        Height = 17
      end
      object Label57: TLabel
        Left = 456
        Top = 89
        Width = 10
        Height = 13
        Caption = 'IE'
      end
      object ediietransp: TDBText
        Left = 520
        Top = 89
        Width = 124
        Height = 17
        DataField = 'ie'
      end
      object Label58: TLabel
        Left = 8
        Top = 142
        Width = 71
        Height = 13
        Caption = 'QUANTIDADE'
      end
      object Label59: TLabel
        Left = 288
        Top = 142
        Width = 45
        Height = 13
        Caption = 'ESP'#201'CIE'
      end
      object Label60: TLabel
        Left = 520
        Top = 142
        Width = 38
        Height = 13
        Caption = 'MARCA'
      end
      object Label61: TLabel
        Left = 8
        Top = 169
        Width = 48
        Height = 13
        Caption = 'N'#218'MERO'
      end
      object Label62: TLabel
        Left = 288
        Top = 169
        Width = 70
        Height = 13
        Caption = 'PESO BRUTO'
      end
      object Label63: TLabel
        Left = 520
        Top = 169
        Width = 76
        Height = 13
        Caption = 'PESO LIQUIDO'
      end
      object cbxdesctransp_cod5nf: TDBLookupComboBox
        Left = 120
        Top = 13
        Width = 305
        Height = 21
        DataField = 'cod5nf'
        DataSource = frmdados.dts_Temp
        KeyField = 'codigo'
        ListField = 'nome'
        ListSource = frmdados.dts_transportador
        TabOrder = 0
      end
      object cbxdescfreteporconta_cod2nf: TDBLookupComboBox
        Left = 120
        Top = 110
        Width = 153
        Height = 21
        DataField = 'cod2nf'
        DataSource = frmdados.dts_Temp
        KeyField = 'codigo'
        ListField = 'nome'
        ListSource = frmdados.dts_onusdofrete
        TabOrder = 1
      end
      object ediplacavei: TEdit
        Left = 392
        Top = 110
        Width = 121
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 2
        Text = 'EDIPLACAVEI'
      end
      object EDIUFVEI: TEdit
        Left = 609
        Top = 110
        Width = 40
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 3
        Text = 'EDIUFVEI'
      end
      object EDIQUANTIDADE: TEdit
        Left = 120
        Top = 138
        Width = 152
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 4
        Text = 'EDIQUANTIDADE'
      end
      object ediespecie: TEdit
        Left = 392
        Top = 138
        Width = 119
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 5
        Text = 'EDIESPECIE'
      end
      object edimarca: TEdit
        Left = 609
        Top = 138
        Width = 152
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 6
        Text = 'EDIMARCA'
      end
      object EDINUMERO: TEdit
        Left = 120
        Top = 165
        Width = 152
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 7
        Text = 'EDINUMERO'
      end
      object EDIPESOB: TEdit
        Left = 392
        Top = 165
        Width = 120
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 8
        Text = 'EDIPESOB'
      end
      object EDIPESOL: TEdit
        Left = 609
        Top = 165
        Width = 152
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 9
        Text = 'EDIPESOL'
      end
    end
    object tbstotais: TTabSheet
      Caption = 'TOTAIS'
      ImageIndex = 7
      object Label3: TLabel
        Left = 7
        Top = 81
        Width = 63
        Height = 13
        Caption = 'DESCONTO '
      end
      object Label2: TLabel
        Left = 143
        Top = 81
        Width = 8
        Height = 13
        Caption = '%'
      end
      object Label20: TLabel
        Left = 167
        Top = 81
        Width = 14
        Height = 13
        Caption = 'R$'
      end
      object Label23: TLabel
        Left = 271
        Top = 81
        Width = 44
        Height = 13
        Caption = 'LIQUIDO'
      end
      object Label15: TLabel
        Left = 3
        Top = 9
        Width = 121
        Height = 13
        Caption = 'BS. CALC. ICMS SUBST.'
      end
      object Label16: TLabel
        Left = 231
        Top = 9
        Width = 95
        Height = 13
        Caption = 'VLR. ICMS SUBST.'
      end
      object Label17: TLabel
        Left = 431
        Top = 9
        Width = 62
        Height = 13
        Caption = 'VLR. FRETE'
      end
      object Label18: TLabel
        Left = 615
        Top = 9
        Width = 73
        Height = 13
        Caption = 'VLR. SEGURO'
      end
      object Label19: TLabel
        Left = 3
        Top = 36
        Width = 105
        Height = 13
        Caption = 'OUTRAS DESPESAS'
      end
      object Label7: TLabel
        Left = 497
        Top = 73
        Width = 48
        Height = 13
        Caption = 'TIPO N.F.'
        FocusControl = cbxdesctiponf_cod1nf
      end
      object Label5: TLabel
        Left = 681
        Top = 72
        Width = 80
        Height = 13
        Caption = 'NATUREZA OP.'
        FocusControl = cbxdescnatop_cod6nf
      end
      object Label26: TLabel
        Left = 7
        Top = 105
        Width = 121
        Height = 13
        Caption = 'DATA SA'#205'DA/ENTRADA'
      end
      object Label27: TLabel
        Left = 287
        Top = 105
        Width = 66
        Height = 13
        Caption = 'HORA SA'#205'DA'
      end
      object Edit1: TEdit
        Left = 194
        Top = 77
        Width = 63
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 0
        Text = 'EDIPRVE'
      end
      object Edit2: TEdit
        Left = 322
        Top = 77
        Width = 63
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 1
        Text = 'EDIPRVE'
      end
      object edibscalcsubstrib: TEdit
        Left = 130
        Top = 5
        Width = 87
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 2
        Text = 'EDIBSCALCSUBSTRIB'
      end
      object EDIVLRICMSSUBTRIB: TEdit
        Left = 330
        Top = 5
        Width = 95
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 3
        Text = 'EDIVLRICMSSUBTRIB'
      end
      object editvlrfrete: TEdit
        Left = 504
        Top = 5
        Width = 97
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 4
        Text = 'EDITVLRFRETE'
      end
      object EDITVLRSEG: TEdit
        Left = 696
        Top = 5
        Width = 97
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 5
        Text = 'EDITVLRSEG'
      end
      object editvlrout: TEdit
        Left = 130
        Top = 32
        Width = 87
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 6
        Text = 'EDITVLROUT'
      end
      object cbxdesctiponf_cod1nf: TDBLookupComboBox
        Left = 553
        Top = 69
        Width = 120
        Height = 21
        DataField = 'cod1nf'
        DataSource = frmdados.dts_Temp
        KeyField = 'codigo'
        ListField = 'nome'
        ListSource = frmdados.dts_tiponf
        TabOrder = 7
      end
      object cbxdescnatop_cod6nf: TDBLookupComboBox
        Left = 761
        Top = 69
        Width = 209
        Height = 21
        DataField = 'cod6nf'
        DataSource = frmdados.dts_Temp
        KeyField = 'codigo'
        ListField = 'descricao'
        ListSource = frmdados.dts_natop
        TabOrder = 8
      end
      object edidatasai: TMaskEdit
        Left = 137
        Top = 101
        Width = 121
        Height = 21
        TabOrder = 9
        Text = 'edidatasai'
      end
      object edihorasai: TMaskEdit
        Left = 371
        Top = 101
        Width = 86
        Height = 21
        TabOrder = 10
        Text = 'edihorasai'
      end
    end
    object tbsadicnf: TTabSheet
      Caption = 'DADOS ADICIONAIS'
      ImageIndex = 5
      object mmoadicnf: TMemo
        Left = 2
        Top = 3
        Width = 803
        Height = 199
        Lines.Strings = (
          'mmoadicnf')
        TabOrder = 0
      end
    end
  end
  object btnimprime: TButton
    Left = 848
    Top = 24
    Width = 127
    Height = 33
    Caption = '&OK'
    TabOrder = 1
    OnClick = btnimprimeClick
  end
  object pctdados: TPageControl
    Left = 7
    Top = 72
    Width = 969
    Height = 185
    ActivePage = tbsprodutos
    TabOrder = 2
    object tbsprodutos: TTabSheet
      Caption = 'PRODUTOS'
      object Label1: TLabel
        Left = 6
        Top = 11
        Width = 42
        Height = 13
        Caption = 'C'#211'DIGO'
      end
      object Label6: TLabel
        Left = 161
        Top = 11
        Width = 62
        Height = 13
        Caption = 'DESCRI'#199#195'O'
      end
      object Label10: TLabel
        Left = 671
        Top = 11
        Width = 71
        Height = 13
        Caption = 'QUANTIDADE'
      end
      object Label11: TLabel
        Left = 768
        Top = 11
        Width = 37
        Height = 13
        Caption = 'PRE'#199'O'
      end
      object Label12: TLabel
        Left = 856
        Top = 11
        Width = 57
        Height = 13
        Caption = 'SUBTOTAL'
      end
      object SpeedButton1: TSpeedButton
        Left = 124
        Top = 35
        Width = 23
        Height = 22
      end
      object Label9: TLabel
        Left = 584
        Top = 13
        Width = 24
        Height = 13
        Caption = 'UND'
        FocusControl = cbxdescund_cod13prodnf
      end
      object edicpro: TEdit
        Left = 6
        Top = 35
        Width = 115
        Height = 21
        TabOrder = 0
        Text = 'edicpro'
      end
      object edinpro: TEdit
        Left = 160
        Top = 35
        Width = 417
        Height = 21
        TabOrder = 1
        Text = 'edinpro'
      end
      object ediqtde: TEdit
        Left = 670
        Top = 34
        Width = 81
        Height = 21
        TabOrder = 3
        Text = 'ediqtde'
        OnKeyPress = ediqtdeKeyPress
      end
      object ediprve: TEdit
        Left = 765
        Top = 34
        Width = 79
        Height = 21
        TabOrder = 4
        Text = 'ediprve'
        OnKeyPress = ediprveKeyPress
      end
      object edisubtotal: TEdit
        Left = 856
        Top = 34
        Width = 97
        Height = 21
        TabOrder = 5
        Text = 'edisubtotal'
        OnKeyPress = edisubtotalKeyPress
      end
      object pctprod: TPageControl
        Left = 6
        Top = 104
        Width = 948
        Height = 389
        ActivePage = tbstributacao
        TabOrder = 6
        object tbslistaprod: TTabSheet
          Caption = '&LISTA'
          object dbgprod: TDBGrid
            Left = 9
            Top = 8
            Width = 921
            Height = 345
            DataSource = frmdados.dts_nfp
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
          end
        end
        object tbstributacao: TTabSheet
          Caption = '&TRIBUTA'#199#195'O'
          ImageIndex = 1
          OnShow = tbstributacaoShow
          object Label13: TLabel
            Left = 15
            Top = 85
            Width = 26
            Height = 13
            Caption = 'ICMS'
            FocusControl = cbxdescicms_cod1prodnf
          end
          object Label14: TLabel
            Left = 158
            Top = 85
            Width = 13
            Height = 13
            Caption = 'IPI'
            FocusControl = cbxdescipi_cod2Prodnf
          end
          object Label21: TLabel
            Left = 291
            Top = 85
            Width = 49
            Height = 13
            Caption = 'C.F.(NCM)'
            FocusControl = cbxdesccf_cod3prodnf
          end
          object Label22: TLabel
            Left = 435
            Top = 85
            Width = 61
            Height = 13
            Caption = 'SIT. TRIB. A'
            FocusControl = cbxdescsita_cod4prodnf
          end
          object Label28: TLabel
            Left = 571
            Top = 85
            Width = 61
            Height = 13
            Caption = 'SIT. TRIB. B'
            FocusControl = cbxdescsitb_cod5prodnf
          end
          object Label29: TLabel
            Left = 709
            Top = 85
            Width = 109
            Height = 13
            Caption = 'MOD. DET. BS. CALC.'
            FocusControl = cbxdescmodbs_cod6prodnf
          end
          object Label30: TLabel
            Left = 15
            Top = 141
            Width = 129
            Height = 13
            Caption = 'MOD. DET. BS. CALC. ST.'
            FocusControl = cbxdescmodbst_cod7prodnf
          end
          object Label31: TLabel
            Left = 158
            Top = 141
            Width = 97
            Height = 13
            Caption = 'VLR. IMP. IMPORT.'
            FocusControl = cbxdescvii_cod8prodnf
          end
          object Label32: TLabel
            Left = 291
            Top = 141
            Width = 17
            Height = 13
            Caption = 'PIS'
            FocusControl = cbxdescpis_cod9prodnf
          end
          object Label33: TLabel
            Left = 435
            Top = 141
            Width = 39
            Height = 13
            Caption = 'COFINS'
            FocusControl = cbxdesccofins_cod10prodnf
          end
          object Label34: TLabel
            Left = 571
            Top = 141
            Width = 37
            Height = 13
            Caption = 'C.F.O.P'
            FocusControl = cbxdesccfop_cod11prodnf
          end
          object Label35: TLabel
            Left = 709
            Top = 141
            Width = 89
            Height = 13
            Caption = 'OUTRAS CONTR.'
            FocusControl = cbxdescoimp_cod12prodnf
          end
          object Label36: TLabel
            Left = 14
            Top = 196
            Width = 109
            Height = 13
            Caption = 'BS. CALC. SUB. TRIB.'
          end
          object Label37: TLabel
            Left = 162
            Top = 196
            Width = 118
            Height = 13
            Caption = 'ICMS CALC. SUB. TRIB.'
          end
          object Label38: TLabel
            Left = 16
            Top = 31
            Width = 121
            Height = 29
            Caption = 'PRODUTO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -24
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lblproduto: TLabel
            Left = 152
            Top = 31
            Width = 109
            Height = 29
            Caption = 'lblproduto'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -24
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object cbxdescicms_cod1prodnf: TDBLookupComboBox
            Left = 15
            Top = 105
            Width = 130
            Height = 21
            DataField = 'cod1prodnf'
            DataSource = frmdados.dts_Temp
            KeyField = 'codigo'
            ListField = 'descricao'
            ListSource = frmdados.dts_icms
            TabOrder = 0
          end
          object cbxdescipi_cod2Prodnf: TDBLookupComboBox
            Left = 158
            Top = 105
            Width = 120
            Height = 21
            DataField = 'cod2prodnf'
            DataSource = frmdados.dts_Temp
            KeyField = 'codigo'
            ListField = 'descricao'
            ListSource = frmdados.dts_ipi
            TabOrder = 1
          end
          object cbxdesccf_cod3prodnf: TDBLookupComboBox
            Left = 291
            Top = 105
            Width = 126
            Height = 21
            DataField = 'cod3Prodnf'
            DataSource = frmdados.dts_Temp
            KeyField = 'codigo'
            ListField = 'descricao'
            ListSource = frmdados.dts_cf
            TabOrder = 2
          end
          object cbxdescsita_cod4prodnf: TDBLookupComboBox
            Left = 435
            Top = 105
            Width = 120
            Height = 21
            DataField = 'cod4prodnf'
            DataSource = frmdados.dts_Temp
            KeyField = 'codigo'
            ListField = 'descricao'
            ListSource = frmdados.dts_sita
            TabOrder = 3
          end
          object cbxdescsitb_cod5prodnf: TDBLookupComboBox
            Left = 571
            Top = 105
            Width = 120
            Height = 21
            DataField = 'cod5prodnf'
            DataSource = frmdados.dts_Temp
            KeyField = 'codigo'
            ListField = 'descricao'
            ListSource = frmdados.dts_sitb
            TabOrder = 4
          end
          object cbxdescmodbs_cod6prodnf: TDBLookupComboBox
            Left = 709
            Top = 105
            Width = 159
            Height = 21
            DataField = 'cod6prodnf'
            DataSource = frmdados.dts_Temp
            KeyField = 'codigo'
            ListField = 'descricao'
            ListSource = frmdados.dts_modbc
            TabOrder = 5
          end
          object cbxdescmodbst_cod7prodnf: TDBLookupComboBox
            Left = 15
            Top = 160
            Width = 130
            Height = 21
            DataField = 'cod7prodnf'
            DataSource = frmdados.dts_Temp
            KeyField = 'codigo'
            ListField = 'descricao'
            ListSource = frmdados.dts_modbcst
            TabOrder = 6
          end
          object cbxdescvii_cod8prodnf: TDBLookupComboBox
            Left = 158
            Top = 160
            Width = 120
            Height = 21
            DataField = 'cod8prodnf'
            DataSource = frmdados.dts_Temp
            KeyField = 'codigo'
            ListField = 'descricao'
            ListSource = frmdados.dts_impostoII
            TabOrder = 7
          end
          object cbxdescpis_cod9prodnf: TDBLookupComboBox
            Left = 291
            Top = 160
            Width = 122
            Height = 21
            DataField = 'cod9prodnf'
            DataSource = frmdados.dts_Temp
            KeyField = 'codigo'
            ListField = 'descricao'
            ListSource = frmdados.dts_pis
            TabOrder = 8
          end
          object cbxdesccofins_cod10prodnf: TDBLookupComboBox
            Left = 435
            Top = 160
            Width = 120
            Height = 21
            DataField = 'cod10prodnf'
            DataSource = frmdados.dts_Temp
            KeyField = 'codigo'
            ListField = 'descricao'
            ListSource = frmdados.dts_cofins
            TabOrder = 9
          end
          object cbxdesccfop_cod11prodnf: TDBLookupComboBox
            Left = 571
            Top = 160
            Width = 120
            Height = 21
            DataField = 'cod11prodnf'
            DataSource = frmdados.dts_Temp
            KeyField = 'codigo'
            ListField = 'descricao'
            ListSource = frmdados.dts_cfop
            TabOrder = 10
          end
          object cbxdescoimp_cod12prodnf: TDBLookupComboBox
            Left = 709
            Top = 160
            Width = 156
            Height = 21
            DataField = 'cod12prodnf'
            DataSource = frmdados.dts_Temp
            KeyField = 'codigo'
            ListField = 'descricao'
            ListSource = frmdados.dts_impostoIII
            TabOrder = 11
          end
          object edibscalcst: TEdit
            Left = 15
            Top = 215
            Width = 130
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 12
            Text = 'EDIBSCALCST'
            OnKeyPress = edibscalcstKeyPress
          end
          object ediicmscalcst: TEdit
            Left = 160
            Top = 215
            Width = 120
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 13
            Text = 'EDIICMSCALCST'
            OnKeyPress = ediicmscalcstKeyPress
          end
          object ckbcompoetnf: TCheckBox
            Left = 725
            Top = 216
            Width = 133
            Height = 17
            Alignment = taLeftJustify
            Caption = 'COMP'#213'E TOTAL NF'
            TabOrder = 14
          end
        end
      end
      object btnanterior: TBitBtn
        Left = 658
        Top = 497
        Width = 144
        Height = 33
        Caption = '&ANTERIOR'
        TabOrder = 7
        OnClick = btnanteriorClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333FF3333333333333003333333333333F77F33333333333009033
          333333333F7737F333333333009990333333333F773337FFFFFF330099999000
          00003F773333377777770099999999999990773FF33333FFFFF7330099999000
          000033773FF33777777733330099903333333333773FF7F33333333333009033
          33333333337737F3333333333333003333333333333377333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333}
        NumGlyphs = 2
      end
      object btnproximo: TBitBtn
        Left = 810
        Top = 497
        Width = 144
        Height = 33
        Caption = '&PR'#211'XIMO'
        TabOrder = 8
        OnClick = btnproximoClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333FF3333333333333003333
          3333333333773FF3333333333309003333333333337F773FF333333333099900
          33333FFFFF7F33773FF30000000999990033777777733333773F099999999999
          99007FFFFFFF33333F7700000009999900337777777F333F7733333333099900
          33333333337F3F77333333333309003333333333337F77333333333333003333
          3333333333773333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333}
        Layout = blGlyphRight
        NumGlyphs = 2
      end
      object btnsalvar: TBitBtn
        Left = 835
        Top = 62
        Width = 119
        Height = 33
        Caption = 'SALVA&R'
        TabOrder = 9
        OnClick = btnsalvarClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333FFFFFFFFFFFFF33000077777770033377777777777773F000007888888
          00037F3337F3FF37F37F00000780088800037F3337F77F37F37F000007800888
          00037F3337F77FF7F37F00000788888800037F3337777777337F000000000000
          00037F3FFFFFFFFFFF7F00000000000000037F77777777777F7F000FFFFFFFFF
          00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
          00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
          00037F7F333333337F7F000FFFFFFFFF07037F7F33333333777F000FFFFFFFFF
          0003737FFFFFFFFF7F7330099999999900333777777777777733}
        NumGlyphs = 2
      end
      object btnalterar: TBitBtn
        Left = 308
        Top = 497
        Width = 144
        Height = 33
        Caption = '&ALTERAR'
        TabOrder = 10
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
          333B33F333337F3333373B33333BB33333B337FF33377F33337F3BB3333BB333
          3BB3377FF3377F33377333BB777BB777BB333377FFF77FFF7733330000000000
          B3333377777777777333330FFFFFFFF03333337F3FF3FFF7F333330F00F000F0
          33333F7F77377737FFFFBB0FFF8FFFF0BBB3777F3F33FFF7777F3B0F08700000
          000B377F73F7777777773308880FFFFFF033337F377333333733330807FFFFF8
          033333737FFFFFFF7F33333000000000B3333337777777777FF333BB333BB333
          BB33337733377F3377FF3BB3333BB3333BB3377333377F33377F3B33333BB333
          33B33733333773333373B333333B3333333B7333333733333337}
        NumGlyphs = 2
      end
      object btnexcluir: TBitBtn
        Left = 457
        Top = 497
        Width = 144
        Height = 33
        Caption = '&EXCLUIR'
        TabOrder = 11
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333000000000
          3333333777777777F3333330F777777033333337F3F3F3F7F3333330F0808070
          33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
          33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
          333333F7F7F7F7F7F3F33030F080707030333737F7F7F7F7F7333300F0808070
          03333377F7F7F7F773333330F080707033333337F7F7F7F7F333333070707070
          33333337F7F7F7F7FF3333000000000003333377777777777F33330F88877777
          0333337FFFFFFFFF7F3333000000000003333377777777777333333330777033
          3333333337FFF7F3333333333000003333333333377777333333}
        NumGlyphs = 2
      end
      object cbxdescund_cod13prodnf: TDBLookupComboBox
        Left = 584
        Top = 33
        Width = 81
        Height = 21
        DataField = 'cod13prodnf'
        DataSource = frmdados.dts_Temp
        KeyField = 'codigo'
        ListField = 'descricao'
        ListSource = frmdados.dts_unidade
        TabOrder = 2
      end
    end
    object tbsservico: TTabSheet
      Caption = 'SERVI'#199'OS'
      ImageIndex = 1
    end
  end
end
