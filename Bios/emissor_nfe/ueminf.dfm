object frmeminf: Tfrmeminf
  Left = 23
  Top = 7
  Width = 992
  Height = 722
  Caption = 'Emiss'#227'o Nota Fiscal'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbldest: TLabel
    Left = 8
    Top = 71
    Width = 80
    Height = 13
    Caption = 'DESTINAT'#193'RIO'
  end
  object Label6: TLabel
    Left = 136
    Top = 71
    Width = 433
    Height = 17
    Caption = 'Label6'
  end
  object pctcadnf: TPageControl
    Left = 47
    Top = 416
    Width = 850
    Height = 233
    ActivePage = tbstotais
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
      object ediprve: TEdit
        Left = 98
        Top = 77
        Width = 39
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 0
        Text = 'EDIPRVE'
      end
      object Edit1: TEdit
        Left = 194
        Top = 77
        Width = 63
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 1
        Text = 'EDIPRVE'
      end
      object Edit2: TEdit
        Left = 322
        Top = 77
        Width = 63
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 2
        Text = 'EDIPRVE'
      end
      object edibscalcsubstrib: TEdit
        Left = 130
        Top = 5
        Width = 87
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 3
        Text = 'EDIBSCALCSUBSTRIB'
      end
      object EDIVLRICMSSUBTRIB: TEdit
        Left = 330
        Top = 5
        Width = 95
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 4
        Text = 'EDIVLRICMSSUBTRIB'
      end
      object editvlrfrete: TEdit
        Left = 504
        Top = 5
        Width = 97
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 5
        Text = 'EDITVLRFRETE'
      end
      object EDITVLRSEG: TEdit
        Left = 696
        Top = 5
        Width = 97
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 6
        Text = 'EDITVLRSEG'
      end
      object editvlrout: TEdit
        Left = 130
        Top = 32
        Width = 87
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 7
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
        TabOrder = 8
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
        TabOrder = 9
      end
      object edidatasai: TMaskEdit
        Left = 137
        Top = 101
        Width = 121
        Height = 21
        TabOrder = 10
        Text = 'edidatasai'
      end
      object edihorasai: TMaskEdit
        Left = 371
        Top = 101
        Width = 86
        Height = 21
        TabOrder = 11
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
    Left = 758
    Top = 8
    Width = 105
    Height = 33
    Caption = '&OK'
    TabOrder = 1
  end
  object Button1: TButton
    Left = 870
    Top = 8
    Width = 105
    Height = 33
    Caption = '&CANCELAR'
    TabOrder = 2
  end
  object PageControl1: TPageControl
    Left = 8
    Top = 104
    Width = 969
    Height = 273
    TabOrder = 3
  end
end
