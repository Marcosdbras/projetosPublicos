object frmdetalhepedido: Tfrmdetalhepedido
  Left = 0
  Top = 17
  BorderStyle = bsDialog
  Caption = 'Detalhe Nota Fiscal'
  ClientHeight = 647
  ClientWidth = 1016
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1016
    Height = 57
    Align = alTop
    TabOrder = 0
    object lblchave: TLabel
      Left = 104
      Top = 24
      Width = 40
      Height = 13
      Caption = 'lblchave'
    end
    object CHAVE: TLabel
      Left = 8
      Top = 24
      Width = 36
      Height = 13
      Caption = 'CHAVE'
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 57
    Width = 1016
    Height = 535
    Align = alClient
    TabOrder = 1
    object Label10: TLabel
      Left = 7
      Top = 10
      Width = 80
      Height = 13
      Caption = 'DESTINAT'#193'RIO'
    end
    object Label31: TLabel
      Left = 642
      Top = 10
      Width = 27
      Height = 13
      Caption = 'CNPJ'
    end
    object lblcnpj: TLabel
      Left = 706
      Top = 10
      Width = 30
      Height = 13
      Caption = 'lblcnpj'
    end
    object Label29: TLabel
      Left = 7
      Top = 35
      Width = 60
      Height = 13
      Caption = 'ENDERE'#199'O'
    end
    object lblendereco: TLabel
      Left = 102
      Top = 35
      Width = 55
      Height = 13
      Caption = 'lblendereco'
    end
    object Label30: TLabel
      Left = 642
      Top = 35
      Width = 24
      Height = 13
      Caption = 'NRO'
    end
    object lblnumero: TLabel
      Left = 706
      Top = 35
      Width = 45
      Height = 13
      Caption = 'lblnumero'
    end
    object Label33: TLabel
      Left = 7
      Top = 59
      Width = 41
      Height = 13
      Caption = 'BAIRRO'
    end
    object lblbairro: TLabel
      Left = 102
      Top = 59
      Width = 36
      Height = 13
      Caption = 'lblbairro'
    end
    object Label34: TLabel
      Left = 409
      Top = 59
      Width = 21
      Height = 13
      Caption = 'CEP'
    end
    object lblcep: TLabel
      Left = 438
      Top = 59
      Width = 28
      Height = 13
      Caption = 'lblcep'
    end
    object Label35: TLabel
      Left = 642
      Top = 59
      Width = 56
      Height = 13
      Caption = 'MUNIC'#205'PIO'
    end
    object lblmunicipio: TLabel
      Left = 706
      Top = 59
      Width = 54
      Height = 13
      Caption = 'lblmunicipio'
    end
    object Label36: TLabel
      Left = 7
      Top = 81
      Width = 29
      Height = 13
      Caption = 'FONE'
    end
    object lbltelefones: TLabel
      Left = 102
      Top = 81
      Width = 53
      Height = 13
      Caption = 'lbltelefones'
    end
    object Label39: TLabel
      Left = 409
      Top = 81
      Width = 14
      Height = 13
      Caption = 'UF'
    end
    object lblestado: TLabel
      Left = 438
      Top = 81
      Width = 42
      Height = 13
      Caption = 'lblestado'
    end
    object Label32: TLabel
      Left = 642
      Top = 81
      Width = 10
      Height = 13
      Caption = 'IE'
    end
    object lblie: TLabel
      Left = 706
      Top = 81
      Width = 18
      Height = 13
      Caption = 'lblie'
    end
    object lbldest: TLabel
      Left = 102
      Top = 11
      Width = 30
      Height = 13
      Caption = 'lbldest'
    end
    object pctprod: TPageControl
      Left = 9
      Top = 104
      Width = 982
      Height = 369
      ActivePage = tbslistaprod
      TabOrder = 0
      object tbslistaprod: TTabSheet
        Caption = '&LISTA'
        object Label49: TLabel
          Left = 576
          Top = 320
          Width = 35
          Height = 13
          Caption = 'TOTAL'
        end
        object lbltotprod: TLabel
          Left = 666
          Top = 320
          Width = 42
          Height = 13
          Alignment = taRightJustify
          Caption = 'lbltotserv'
        end
        object dbgprod: TDBGrid
          Left = 10
          Top = 7
          Width = 951
          Height = 298
          DataSource = frmdados.dts_nfp
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'cpro'
              Title.Caption = 'C'#211'DIGO'
              Width = 139
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'npro'
              Title.Caption = 'DESCRI'#199#195'O'
              Width = 435
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'qtde'
              Title.Caption = 'QUANTIDADE'
              Width = 107
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nomeunidade'
              Title.Caption = ' '
              Width = 36
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'prve'
              Title.Caption = 'PR. VD.'
              Width = 90
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'subtotal'
              Title.Caption = 'SUBTOTAL'
              Width = 106
              Visible = True
            end>
        end
      end
      object tbstributacao: TTabSheet
        Caption = '&TRIBUTA'#199#195'O'
        ImageIndex = 1
        OnShow = tbstributacaoShow
        object pnlnavegatribnf: TPanel
          Left = 0
          Top = 0
          Width = 974
          Height = 29
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object spdprodant: TSpeedButton
            Left = 666
            Top = 4
            Width = 23
            Height = 22
            OnClick = spdprodantClick
          end
          object spdprodprox: TSpeedButton
            Left = 693
            Top = 4
            Width = 23
            Height = 22
            OnClick = spdprodproxClick
          end
        end
        object pnldescricao: TPanel
          Left = 0
          Top = 29
          Width = 974
          Height = 44
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object Label24: TLabel
            Left = 5
            Top = 7
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
            Left = 149
            Top = 7
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
        end
        object tbsipi: TPageControl
          Left = 0
          Top = 73
          Width = 974
          Height = 268
          ActivePage = tbsicms
          Align = alClient
          TabOrder = 2
          object tbsicms: TTabSheet
            Caption = 'ICMS'
            object pnlsuptab: TPanel
              Left = 0
              Top = 0
              Width = 966
              Height = 240
              Align = alClient
              TabOrder = 0
              object Label7: TLabel
                Left = 314
                Top = 42
                Width = 111
                Height = 13
                Caption = 'SIT. TRIB. (CONTRIB.)'
                FocusControl = cbxdescsitb_cod5prodnf
              end
              object lblsita: TLabel
                Left = 314
                Top = 70
                Width = 103
                Height = 13
                Caption = 'SIT. TRIB. (ORIGEM)'
                FocusControl = cbxdescsita_cod4prodnf
              end
              object Label22: TLabel
                Left = 314
                Top = 11
                Width = 27
                Height = 13
                Caption = 'NCM '
              end
              object Label17: TLabel
                Left = 4
                Top = 42
                Width = 37
                Height = 13
                Caption = 'C.F.O.P'
                FocusControl = cbxdesccfop_cod11prodnf
              end
              object Label13: TLabel
                Left = 4
                Top = 175
                Width = 19
                Height = 13
                Caption = 'C.F.'
                FocusControl = cbxdesccf_cod3prodnf
              end
              object lblaliqicms: TLabel
                Left = 4
                Top = 13
                Width = 54
                Height = 13
                Caption = 'ALIQUOTA'
                FocusControl = cbxdescicms_cod1prodnf
              end
              object Label15: TLabel
                Left = 4
                Top = 117
                Width = 109
                Height = 13
                Caption = 'MOD. DET. BS. CALC.'
                FocusControl = cbxdescmodbs_cod6prodnf
              end
              object Label16: TLabel
                Left = 314
                Top = 117
                Width = 129
                Height = 13
                Caption = 'MOD. DET. BS. CALC. ST.'
                FocusControl = cbxdescmodbst_cod7prodnf
              end
              object Label18: TLabel
                Left = 4
                Top = 146
                Width = 109
                Height = 13
                Caption = 'BS. CALC. SUB. TRIB.'
              end
              object Label19: TLabel
                Left = 314
                Top = 144
                Width = 118
                Height = 13
                Caption = 'ICMS CALC. SUB. TRIB.'
              end
              object Label21: TLabel
                Left = 4
                Top = 70
                Width = 37
                Height = 13
                Caption = 'CSOSN'
                FocusControl = cbxdesccsosn_cod14prodnf
              end
              object cbxdescsitb_cod5prodnf: TDBLookupComboBox
                Left = 445
                Top = 35
                Width = 257
                Height = 21
                DataField = 'cod5prodnf'
                DataSource = frmdados.dts_Temp
                KeyField = 'codigo'
                ListField = 'descricao'
                ListSource = frmdados.dts_sitb
                TabOrder = 4
              end
              object cbxdescsita_cod4prodnf: TDBLookupComboBox
                Left = 445
                Top = 66
                Width = 257
                Height = 21
                DataField = 'cod4prodnf'
                DataSource = frmdados.dts_Temp
                KeyField = 'codigo'
                ListField = 'descricao'
                ListSource = frmdados.dts_sita
                TabOrder = 6
              end
              object edisimplesncm: TEdit
                Left = 445
                Top = 7
                Width = 124
                Height = 21
                CharCase = ecUpperCase
                TabOrder = 1
                Text = 'EDISIMPLESNCM'
              end
              object cbxdesccfop_cod11prodnf: TDBLookupComboBox
                Left = 117
                Top = 36
                Width = 190
                Height = 21
                DataField = 'cod11prodnf'
                DataSource = frmdados.dts_Temp
                KeyField = 'codigo'
                ListField = 'descricao'
                ListSource = frmdados.dts_cfop
                TabOrder = 3
              end
              object cbxdesccf_cod3prodnf: TDBLookupComboBox
                Left = 117
                Top = 172
                Width = 190
                Height = 21
                DataField = 'cod3prodnf'
                DataSource = frmdados.dts_Temp
                KeyField = 'codigo'
                ListField = 'descricao'
                ListSource = frmdados.dts_cf
                TabOrder = 11
              end
              object ckbcompoetnf: TCheckBox
                Left = 582
                Top = 9
                Width = 123
                Height = 17
                Alignment = taLeftJustify
                Caption = 'COMP'#213'E TOTAL NF'
                TabOrder = 2
              end
              object cbxdescicms_cod1prodnf: TDBLookupComboBox
                Left = 117
                Top = 9
                Width = 190
                Height = 21
                DataField = 'cod1prodnf'
                DataSource = frmdados.dts_Temp
                KeyField = 'codigo'
                ListField = 'descricao'
                ListSource = frmdados.dts_icms
                TabOrder = 0
              end
              object cbxdescmodbs_cod6prodnf: TDBLookupComboBox
                Left = 117
                Top = 114
                Width = 190
                Height = 21
                DataField = 'cod6prodnf'
                DataSource = frmdados.dts_Temp
                KeyField = 'codigo'
                ListField = 'descricao'
                ListSource = frmdados.dts_modbc
                TabOrder = 7
              end
              object cbxdescmodbst_cod7prodnf: TDBLookupComboBox
                Left = 445
                Top = 114
                Width = 257
                Height = 21
                DataField = 'cod7prodnf'
                DataSource = frmdados.dts_Temp
                KeyField = 'codigo'
                ListField = 'descricao'
                ListSource = frmdados.dts_modbcst
                TabOrder = 8
              end
              object edibscalcst: TEdit
                Left = 117
                Top = 143
                Width = 190
                Height = 21
                CharCase = ecUpperCase
                TabOrder = 9
                Text = 'EDIBSCALCST'
              end
              object ediicmscalcst: TEdit
                Left = 445
                Top = 143
                Width = 136
                Height = 21
                CharCase = ecUpperCase
                TabOrder = 10
                Text = 'EDIICMSCALCST'
              end
              object cbxdesccsosn_cod14prodnf: TDBLookupComboBox
                Left = 117
                Top = 66
                Width = 190
                Height = 21
                DataField = 'cod14prodnf'
                DataSource = frmdados.dts_Temp
                KeyField = 'codigo'
                ListField = 'descricao'
                ListSource = frmdados.dts_csosn
                TabOrder = 5
              end
            end
          end
          object TabSheet3: TTabSheet
            Caption = 'IPI'
            ImageIndex = 1
            object lblaliquota_ipi: TLabel
              Left = 11
              Top = 32
              Width = 54
              Height = 13
              Caption = 'ALIQUOTA'
              FocusControl = cbxdescipi_cod2prodnf
            end
            object cbxdescipi_cod2prodnf: TDBLookupComboBox
              Left = 84
              Top = 28
              Width = 245
              Height = 21
              DataField = 'cod2prodnf'
              DataSource = frmdados.dts_Temp
              KeyField = 'codigo'
              ListField = 'descricao'
              ListSource = frmdados.dts_ipi
              TabOrder = 0
            end
          end
          object tbspip: TTabSheet
            Caption = 'PIS'
            ImageIndex = 2
            object lblaliquota_pis: TLabel
              Left = 13
              Top = 40
              Width = 54
              Height = 13
              Caption = 'ALIQUOTA'
              FocusControl = cbxdescpis_cod9prodnf
            end
            object cbxdescpis_cod9prodnf: TDBLookupComboBox
              Left = 89
              Top = 36
              Width = 232
              Height = 21
              DataField = 'cod9prodnf'
              DataSource = frmdados.dts_Temp
              KeyField = 'codigo'
              ListField = 'descricao'
              ListSource = frmdados.dts_pis
              TabOrder = 0
            end
          end
          object tbscofins: TTabSheet
            Caption = 'COFINS'
            ImageIndex = 3
            object lblaliquota_cofins: TLabel
              Left = 6
              Top = 40
              Width = 54
              Height = 13
              Caption = 'ALIQUOTA'
              FocusControl = cbxdesccofins_cod10prodnf
            end
            object cbxdesccofins_cod10prodnf: TDBLookupComboBox
              Left = 88
              Top = 34
              Width = 233
              Height = 21
              DataField = 'cod10prodnf'
              DataSource = frmdados.dts_Temp
              KeyField = 'codigo'
              ListField = 'descricao'
              ListSource = frmdados.dts_cofins
              TabOrder = 0
            end
          end
          object tbsii: TTabSheet
            Caption = 'I. IMPORTA'#199#195'O'
            ImageIndex = 4
            object lblaliquota_ii: TLabel
              Left = 9
              Top = 32
              Width = 54
              Height = 13
              Caption = 'ALIQUOTA'
              FocusControl = cbxdescvii_cod8prodnf
            end
            object cbxdescvii_cod8prodnf: TDBLookupComboBox
              Left = 126
              Top = 27
              Width = 203
              Height = 21
              DataField = 'cod8prodnf'
              DataSource = frmdados.dts_Temp
              KeyField = 'codigo'
              ListField = 'descricao'
              ListSource = frmdados.dts_impostoII
              TabOrder = 0
            end
          end
          object tbsoutras: TTabSheet
            Caption = 'OUTRAS'
            ImageIndex = 6
            object lblaliquota_outras: TLabel
              Left = 3
              Top = 23
              Width = 54
              Height = 13
              Caption = 'ALIQUOTA'
              FocusControl = cbxdescoimp_cod12prodnf
            end
            object cbxdescoimp_cod12prodnf: TDBLookupComboBox
              Left = 96
              Top = 18
              Width = 233
              Height = 21
              DataField = 'cod12prodnf'
              DataSource = frmdados.dts_Temp
              KeyField = 'codigo'
              ListField = 'descricao'
              ListSource = frmdados.dts_impostoIII
              TabOrder = 0
            end
          end
        end
      end
    end
    object btncancnfe: TBitBtn
      Left = 8
      Top = 488
      Width = 193
      Height = 41
      Caption = 'Cancela Nota Fiscal Emitida'
      TabOrder = 1
      OnClick = btncancnfeClick
    end
    object BitBtn1: TBitBtn
      Left = 209
      Top = 488
      Width = 193
      Height = 41
      Caption = 'Carta de Corre'#231#227'o'
      TabOrder = 2
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 410
      Top = 488
      Width = 193
      Height = 41
      Caption = 'Enviar e-mail'
      TabOrder = 3
      OnClick = BitBtn2Click
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 592
    Width = 1016
    Height = 55
    Align = alBottom
    TabOrder = 2
    object lblmensagem: TLabel
      Left = 8
      Top = 15
      Width = 114
      Height = 24
      Caption = 'lblmensagem'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
  end
end
