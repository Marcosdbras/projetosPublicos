object frmfecnf: Tfrmfecnf
  Left = 25
  Top = 60
  Width = 1172
  Height = 671
  BorderIcons = []
  Caption = 'Emiss'#227'o de Nota Fiscal Eletronica'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 15
    Top = 475
    Width = 834
    Height = 62
    Shape = bsFrame
  end
  object Bevel4: TBevel
    Left = 416
    Top = 547
    Width = 433
    Height = 40
    Shape = bsFrame
  end
  object Bevel7: TBevel
    Left = 15
    Top = 547
    Width = 394
    Height = 40
    Shape = bsFrame
  end
  object Label26: TLabel
    Left = 16
    Top = 105
    Width = 121
    Height = 13
    Caption = 'DATA SA'#205'DA/ENTRADA'
  end
  object Label27: TLabel
    Left = 463
    Top = 132
    Width = 66
    Height = 13
    Caption = 'HORA SA'#205'DA'
  end
  object Label3: TLabel
    Left = 16
    Top = 154
    Width = 63
    Height = 13
    Caption = 'DESCONTO '
  end
  object Label2: TLabel
    Left = 213
    Top = 154
    Width = 8
    Height = 13
    Caption = '%'
  end
  object Label20: TLabel
    Left = 319
    Top = 154
    Width = 14
    Height = 13
    Caption = 'R$'
  end
  object Label23: TLabel
    Left = 464
    Top = 155
    Width = 44
    Height = 13
    Caption = 'LIQUIDO'
  end
  object Label1: TLabel
    Left = 13
    Top = 13
    Width = 56
    Height = 20
    Caption = 'TOTAL'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbltotal: TLabel
    Left = 148
    Top = 14
    Width = 55
    Height = 20
    Alignment = taRightJustify
    Caption = 'lbltotal'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 16
    Top = 47
    Width = 80
    Height = 13
    Caption = 'DESTINAT'#193'RIO'
  end
  object lbldestinatario: TLabel
    Left = 144
    Top = 47
    Width = 64
    Height = 13
    Caption = 'lbldestinatario'
  end
  object Label15: TLabel
    Left = 344
    Top = 485
    Width = 121
    Height = 13
    Caption = 'BS. CALC. ICMS SUBST.'
  end
  object Label16: TLabel
    Left = 635
    Top = 484
    Width = 95
    Height = 13
    Caption = 'VLR. ICMS SUBST.'
  end
  object Label17: TLabel
    Left = 23
    Top = 510
    Width = 62
    Height = 13
    Caption = 'VLR. FRETE'
  end
  object Label18: TLabel
    Left = 635
    Top = 508
    Width = 73
    Height = 13
    Caption = 'VLR. SEGURO'
  end
  object Label19: TLabel
    Left = 344
    Top = 511
    Width = 105
    Height = 13
    Caption = 'OUTRAS DESPESAS'
  end
  object Label9: TLabel
    Left = 23
    Top = 485
    Width = 76
    Height = 13
    Caption = 'IE SUBS. TRIB.'
  end
  object lblmensagem: TLabel
    Left = 13
    Top = 609
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
  object Label11: TLabel
    Left = 20
    Top = 542
    Width = 111
    Height = 13
    Caption = '% APROVEITAMENTO'
  end
  object Label12: TLabel
    Left = 23
    Top = 563
    Width = 26
    Height = 13
    Caption = 'ICMS'
  end
  object Label65: TLabel
    Left = 183
    Top = 563
    Width = 13
    Height = 13
    Caption = 'IPI'
  end
  object Label13: TLabel
    Left = 438
    Top = 542
    Width = 72
    Height = 13
    Caption = ' DEVOLU'#199#195'O '
  end
  object Label14: TLabel
    Left = 431
    Top = 561
    Width = 69
    Height = 13
    Caption = 'REF. N.O N.F.'
  end
  object Label28: TLabel
    Left = 652
    Top = 561
    Width = 79
    Height = 13
    Caption = 'REF. DATA N.F.'
  end
  object Label36: TLabel
    Left = 16
    Top = 80
    Width = 100
    Height = 13
    Caption = 'PR'#211'XIMO N'#218'NERO'
  end
  object Label7: TLabel
    Left = 16
    Top = 131
    Width = 48
    Height = 13
    Caption = 'TIPO N.F.'
    FocusControl = cbxdesctiponf_cod1nf
  end
  object Label37: TLabel
    Left = 320
    Top = 563
    Width = 17
    Height = 13
    Caption = 'ISS'
  end
  object Pedido: TLabel
    Left = 241
    Top = 106
    Width = 41
    Height = 13
    Caption = 'PEDIDO'
  end
  object Label38: TLabel
    Left = 239
    Top = 79
    Width = 63
    Height = 13
    Caption = 'FINALIDADE'
  end
  object Label39: TLabel
    Left = 463
    Top = 179
    Width = 107
    Height = 13
    Caption = 'CONSUMIDOR FINAL'
  end
  object Label5: TLabel
    Left = 463
    Top = 105
    Width = 59
    Height = 13
    Caption = 'OPERA'#199#195'O'
  end
  object Label40: TLabel
    Left = 463
    Top = 79
    Width = 148
    Height = 13
    Caption = 'CHAVE ACESSO NFE DEVOL.'
  end
  object Bevel2: TBevel
    Left = 854
    Top = 74
    Width = 130
    Height = 512
    Shape = bsFrame
  end
  object btnemitir: TBitBtn
    Left = 859
    Top = 129
    Width = 116
    Height = 37
    Caption = '&EMITIR'
    TabOrder = 26
    OnClick = btnemitirClick
  end
  object btncancelar: TBitBtn
    Left = 859
    Top = 177
    Width = 116
    Height = 37
    Caption = '&CANCELAR'
    TabOrder = 27
    OnClick = btncancelarClick
  end
  object pctcadnf: TPageControl
    Left = 15
    Top = 206
    Width = 714
    Height = 263
    ActivePage = tbsdup
    MultiLine = True
    TabOrder = 14
    object tbsdup: TTabSheet
      Caption = 'FORMA DE PAGAMENTO'
      ImageIndex = 2
      OnShow = tbsdupShow
      object Label21: TLabel
        Left = 8
        Top = 14
        Width = 41
        Height = 13
        Caption = #192' VISTA'
      end
      object Label22: TLabel
        Left = 210
        Top = 14
        Width = 56
        Height = 13
        Caption = 'PARCELAS'
      end
      object Label29: TLabel
        Left = 609
        Top = 11
        Width = 85
        Height = 13
        Caption = 'TOTAL '#192' PRAZO'
      end
      object lbltotdup: TLabel
        Left = 651
        Top = 31
        Width = 40
        Height = 13
        Alignment = taRightJustify
        Caption = 'lbltotdup'
      end
      object Label30: TLabel
        Left = 441
        Top = 103
        Width = 37
        Height = 13
        Caption = 'PRAZO'
      end
      object Label31: TLabel
        Left = 441
        Top = 134
        Width = 71
        Height = 13
        Caption = 'VENCIMENTO'
      end
      object Label32: TLabel
        Left = 441
        Top = 167
        Width = 36
        Height = 13
        Caption = 'VALOR'
      end
      object Label33: TLabel
        Left = 210
        Top = 41
        Width = 49
        Height = 13
        Caption = 'PER'#205'ODO'
      end
      object Label34: TLabel
        Left = 8
        Top = 41
        Width = 69
        Height = 13
        Caption = 'DATA INICIAL'
      end
      object Label35: TLabel
        Left = 441
        Top = 69
        Width = 48
        Height = 13
        Caption = 'EMISS'#195'O'
      end
      object rgbformapgto: TRadioGroup
        Left = 0
        Top = 192
        Width = 706
        Height = 43
        Align = alBottom
        Caption = ' PAGAMENTO '
        Columns = 3
        Items.Strings = (
          #192' Vista'
          #192' Prazo'
          'Outros')
        TabOrder = 12
      end
      object edidin: TEdit
        Left = 127
        Top = 10
        Width = 74
        Height = 21
        TabOrder = 0
        Text = 'edidin'
        OnExit = edidinExit
        OnKeyPress = edidinKeyPress
      end
      object edinparc: TEdit
        Left = 296
        Top = 10
        Width = 49
        Height = 21
        TabOrder = 1
        Text = 'edinparc'
        OnKeyPress = edinparcKeyPress
      end
      object btncalcular: TButton
        Left = 360
        Top = 10
        Width = 65
        Height = 44
        Caption = '&LAN'#199'AR'
        TabOrder = 4
        OnClick = btncalcularClick
      end
      object DBGrid1: TDBGrid
        Left = 8
        Top = 64
        Width = 417
        Height = 120
        DataSource = frmdados.dts_duplicata
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 5
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnKeyPress = DBGrid1KeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'prazo'
            Title.Caption = 'PRAZO'
            Width = 89
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dtv'
            Title.Caption = 'VENCIMENTO'
            Width = 172
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'vdup'
            Title.Caption = 'VALOR'
            Width = 115
            Visible = True
          end>
      end
      object ediprazo: TEdit
        Left = 529
        Top = 96
        Width = 49
        Height = 21
        TabOrder = 7
        Text = 'ediprazo'
        OnExit = ediprazoExit
        OnKeyPress = ediprazoKeyPress
      end
      object edivencimento: TMaskEdit
        Left = 529
        Top = 129
        Width = 81
        Height = 21
        EditMask = '!99/99/0000;1;_'
        MaxLength = 10
        TabOrder = 8
        Text = '  /  /    '
        OnExit = edivencimentoExit
        OnKeyPress = edivencimentoKeyPress
      end
      object edivalorp: TEdit
        Left = 529
        Top = 162
        Width = 81
        Height = 21
        TabOrder = 9
        Text = 'edivalorp'
        OnExit = edivalorpExit
        OnKeyPress = edivalorpKeyPress
      end
      object ediperiodo: TEdit
        Left = 295
        Top = 37
        Width = 50
        Height = 21
        TabOrder = 3
        Text = 'ediperiodo'
        OnKeyPress = ediperiodoKeyPress
      end
      object edidatainic: TMaskEdit
        Left = 128
        Top = 35
        Width = 72
        Height = 21
        EditMask = '!99/99/0000;1;_'
        MaxLength = 10
        TabOrder = 2
        Text = '  /  /    '
        OnKeyPress = edidatainicKeyPress
      end
      object btneditar: TBitBtn
        Left = 617
        Top = 62
        Width = 75
        Height = 25
        Caption = '&EDITAR'
        TabOrder = 10
        OnClick = btneditarClick
      end
      object btnsalvar: TBitBtn
        Left = 617
        Top = 94
        Width = 75
        Height = 25
        Caption = '&SALVAR'
        TabOrder = 11
        OnClick = btnsalvarClick
      end
      object btncancelarparc: TBitBtn
        Left = 617
        Top = 126
        Width = 75
        Height = 25
        Caption = '&DESISTIR'
        TabOrder = 13
        OnClick = btncancelarparcClick
      end
      object edidte: TMaskEdit
        Left = 529
        Top = 63
        Width = 81
        Height = 21
        EditMask = '!99/99/0000;1;_'
        MaxLength = 10
        TabOrder = 6
        Text = '  /  /    '
        OnKeyPress = edidteKeyPress
      end
    end
    object tbstransportador: TTabSheet
      Caption = 'TRANSPORTADOR'
      ImageIndex = 4
      object Label24: TLabel
        Left = 7
        Top = 30
        Width = 98
        Height = 13
        Caption = 'TRANSPORTADOR'
        FocusControl = cbxdesctransp_cod5nf
      end
      object Label8: TLabel
        Left = 7
        Top = 128
        Width = 101
        Height = 13
        Caption = 'FRETE POR CONTA'
        FocusControl = cbxdescfreteporconta_cod2nf
      end
      object Label4: TLabel
        Left = 351
        Top = 128
        Width = 83
        Height = 13
        Caption = 'PLACA VE'#205'CULO'
      end
      object Label25: TLabel
        Left = 539
        Top = 128
        Width = 69
        Height = 13
        Caption = 'U.F. VE'#205'CULO'
      end
      object Label49: TLabel
        Left = 450
        Top = 29
        Width = 27
        Height = 13
        Caption = 'CNPJ'
      end
      object edicnpjtransp: TDBText
        Left = 539
        Top = 29
        Width = 145
        Height = 17
        DataField = 'cnpj'
        DataSource = frmdados.dts_transportador
      end
      object Label50: TLabel
        Left = 7
        Top = 55
        Width = 60
        Height = 13
        Caption = 'ENDERE'#199'O'
      end
      object edienderecotransp: TDBText
        Left = 120
        Top = 55
        Width = 265
        Height = 17
        DataField = 'endereco'
        DataSource = frmdados.dts_transportador
      end
      object Label51: TLabel
        Left = 450
        Top = 55
        Width = 24
        Height = 13
        Caption = 'NRO'
      end
      object DBText23: TDBText
        Left = 539
        Top = 55
        Width = 65
        Height = 17
        DataField = 'nro'
        DataSource = frmdados.dts_transportador
      end
      object Label52: TLabel
        Left = 7
        Top = 80
        Width = 41
        Height = 13
        Caption = 'BAIRRO'
      end
      object edibairrotransp: TDBText
        Left = 120
        Top = 80
        Width = 153
        Height = 17
        DataField = 'bairro'
        DataSource = frmdados.dts_transportador
      end
      object Label53: TLabel
        Left = 287
        Top = 80
        Width = 21
        Height = 13
        Caption = 'CEP'
      end
      object ediceptransp: TDBText
        Left = 340
        Top = 80
        Width = 73
        Height = 17
        DataField = 'cep'
        DataSource = frmdados.dts_transportador
      end
      object Label54: TLabel
        Left = 450
        Top = 80
        Width = 56
        Height = 13
        Caption = 'MUNIC'#205'PIO'
      end
      object edimunicipiotransp: TDBText
        Left = 539
        Top = 80
        Width = 201
        Height = 17
        DataSource = frmdados.dts_transportador
      end
      object Label55: TLabel
        Left = 7
        Top = 104
        Width = 29
        Height = 13
        Caption = 'FONE'
      end
      object editelefonestransp: TDBText
        Left = 120
        Top = 102
        Width = 153
        Height = 17
        DataField = 'telefones'
        DataSource = frmdados.dts_transportador
      end
      object Label56: TLabel
        Left = 287
        Top = 102
        Width = 14
        Height = 13
        Caption = 'UF'
      end
      object ediuftransp: TDBText
        Left = 340
        Top = 102
        Width = 73
        Height = 17
        DataSource = frmdados.dts_transportador
      end
      object Label57: TLabel
        Left = 450
        Top = 102
        Width = 10
        Height = 13
        Caption = 'IE'
      end
      object ediietransp: TDBText
        Left = 539
        Top = 102
        Width = 124
        Height = 17
        DataField = 'ie'
        DataSource = frmdados.dts_transportador
      end
      object Label58: TLabel
        Left = 7
        Top = 155
        Width = 71
        Height = 13
        Caption = 'QUANTIDADE'
      end
      object Label59: TLabel
        Left = 351
        Top = 155
        Width = 45
        Height = 13
        Caption = 'ESP'#201'CIE'
      end
      object Label60: TLabel
        Left = 539
        Top = 155
        Width = 38
        Height = 13
        Caption = 'MARCA'
      end
      object Label61: TLabel
        Left = 7
        Top = 182
        Width = 48
        Height = 13
        Caption = 'N'#218'MERO'
      end
      object Label62: TLabel
        Left = 351
        Top = 182
        Width = 70
        Height = 13
        Caption = 'PESO BRUTO'
      end
      object Label63: TLabel
        Left = 539
        Top = 182
        Width = 76
        Height = 13
        Caption = 'PESO LIQUIDO'
      end
      object Label10: TLabel
        Left = 7
        Top = 208
        Width = 28
        Height = 13
        Caption = 'CFOP'
        FocusControl = cbxdesccfop_cod7nf
      end
      object cbxdesctransp_cod5nf: TDBLookupComboBox
        Left = 120
        Top = 26
        Width = 305
        Height = 21
        DataField = 'cod5nf'
        DataSource = frmdados.dts_Temp
        KeyField = 'codigo'
        ListField = 'nome'
        ListSource = frmdados.dts_transportador
        NullValueKey = 46
        TabOrder = 0
        OnKeyPress = edidatasaiKeyPress
      end
      object cbxdescfreteporconta_cod2nf: TDBLookupComboBox
        Left = 120
        Top = 123
        Width = 217
        Height = 21
        DataField = 'cod2nf'
        DataSource = frmdados.dts_Temp
        KeyField = 'codigo'
        ListField = 'nome'
        ListSource = frmdados.dts_onusdofrete
        NullValueKey = 46
        TabOrder = 1
        OnKeyPress = edidatasaiKeyPress
      end
      object ediplacavei: TEdit
        Left = 449
        Top = 123
        Width = 81
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 2
        Text = 'EDIPLACAVEI'
        OnKeyPress = edidatasaiKeyPress
      end
      object EDIUFVEI: TEdit
        Left = 620
        Top = 123
        Width = 40
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 3
        Text = 'EDIUFVEI'
        OnKeyPress = edidatasaiKeyPress
      end
      object EDIQUANTIDADE: TEdit
        Left = 120
        Top = 151
        Width = 153
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 4
        Text = 'EDIQUANTIDADE'
        OnKeyPress = edidatasaiKeyPress
      end
      object ediespecie: TEdit
        Left = 449
        Top = 151
        Width = 81
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 5
        Text = 'EDIESPECIE'
        OnKeyPress = edidatasaiKeyPress
      end
      object edimarca: TEdit
        Left = 620
        Top = 151
        Width = 76
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 6
        Text = 'EDIMARCA'
        OnKeyPress = edidatasaiKeyPress
      end
      object EDINUMERO: TEdit
        Left = 120
        Top = 178
        Width = 152
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 7
        Text = 'EDINUMERO'
        OnKeyPress = edidatasaiKeyPress
      end
      object EDIPESOB: TEdit
        Left = 449
        Top = 178
        Width = 81
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 8
        Text = 'EDIPESOB'
        OnKeyPress = EDIPESOBKeyPress
      end
      object EDIPESOL: TEdit
        Left = 620
        Top = 178
        Width = 75
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 9
        Text = 'EDIPESOL'
        OnKeyPress = EDIPESOLKeyPress
      end
      object cbxdesccfop_cod7nf: TDBLookupComboBox
        Left = 120
        Top = 203
        Width = 217
        Height = 21
        DataField = 'cod7nf'
        DataSource = frmdados.dts_Temp
        KeyField = 'codigo'
        ListField = 'descricao'
        ListSource = frmdados.dts_cfop
        NullValueKey = 46
        TabOrder = 10
        OnKeyPress = edidatasaiKeyPress
      end
    end
    object tbsadicnf: TTabSheet
      Caption = 'DADOS ADICIONAIS'
      ImageIndex = 5
      object mmoadicnf: TMemo
        Left = 1
        Top = 3
        Width = 703
        Height = 230
        Lines.Strings = (
          'mmoadicnf')
        TabOrder = 0
      end
    end
  end
  object edidatasai: TMaskEdit
    Left = 144
    Top = 101
    Width = 89
    Height = 21
    EditMask = '!99/99/0000;1;_'
    MaxLength = 10
    TabOrder = 3
    Text = '  /  /    '
    OnKeyDown = edidatasaiKeyDown
    OnKeyPress = edidatasaiKeyPress
  end
  object edihorasai: TMaskEdit
    Left = 612
    Top = 126
    Width = 72
    Height = 21
    EditMask = '!90:00;1;_'
    MaxLength = 5
    TabOrder = 7
    Text = '  :  '
    OnKeyPress = edidatasaiKeyPress
  end
  object edivaldesc: TEdit
    Left = 346
    Top = 150
    Width = 63
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 9
    Text = 'EDIVALDESC'
    OnExit = edivaldescExit
    OnKeyPress = edivaldescKeyPress
  end
  object EDILIQUIDO: TEdit
    Left = 612
    Top = 150
    Width = 73
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 10
    Text = 'EDILIQUIDO'
    OnExit = EDILIQUIDOExit
    OnKeyPress = EDILIQUIDOKeyPress
  end
  object edipdesc: TEdit
    Left = 144
    Top = 150
    Width = 65
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 8
    Text = 'EDIPDESC'
    OnExit = edipdescExit
    OnKeyPress = edipdescKeyPress
  end
  object edibscalcsubstrib: TEdit
    Left = 474
    Top = 481
    Width = 87
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 16
    Text = 'EDIBSCALCSUBSTRIB'
    OnKeyPress = edibscalcsubstribKeyPress
  end
  object EDIVLRICMSSUBTRIB: TEdit
    Left = 738
    Top = 481
    Width = 95
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 17
    Text = 'EDIVLRICMSSUBTRIB'
    OnKeyPress = EDIVLRICMSSUBTRIBKeyPress
  end
  object edivlrfrete: TEdit
    Left = 143
    Top = 506
    Width = 137
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 18
    Text = 'EDITVLRFRETE'
    OnKeyPress = edivlrfreteKeyPress
  end
  object EDIVLRSEG: TEdit
    Left = 738
    Top = 506
    Width = 97
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 20
    Text = 'EDIVLRSEG'
    OnKeyPress = EDIVLRSEGKeyPress
  end
  object edivlrout: TEdit
    Left = 474
    Top = 506
    Width = 87
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 19
    Text = 'EDITVLROUT'
    OnKeyPress = edivlroutKeyPress
  end
  object ediiesubtrib: TEdit
    Left = 143
    Top = 481
    Width = 138
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 15
    Text = 'EDIIESUBTRIB'
    OnKeyPress = edidatasaiKeyPress
  end
  object edialiqapicms: TEdit
    Left = 55
    Top = 559
    Width = 66
    Height = 21
    TabOrder = 21
    Text = 'edialiqapicms'
  end
  object edialiqapipi: TEdit
    Left = 203
    Top = 559
    Width = 70
    Height = 21
    TabOrder = 22
    Text = 'edialiqapipi'
  end
  object edinnfrefdevol: TEdit
    Left = 503
    Top = 559
    Width = 129
    Height = 21
    TabOrder = 24
    Text = 'edinnfrefdevol'
  end
  object edidatanfrefdevol: TMaskEdit
    Left = 739
    Top = 556
    Width = 74
    Height = 21
    EditMask = '!99/99/0000;1;_'
    MaxLength = 10
    TabOrder = 25
    Text = '  /  /    '
  end
  object ckbmostrafat: TCheckBox
    Left = 16
    Top = 175
    Width = 137
    Height = 17
    Caption = 'EMITIR FATURA'
    TabOrder = 11
  end
  object ediproxnota: TEdit
    Left = 144
    Top = 75
    Width = 89
    Height = 21
    TabOrder = 0
    Text = 'ediproxnota'
    OnKeyPress = ediproxnotaKeyPress
  end
  object ckbenviae: TCheckBox
    Left = 125
    Top = 177
    Width = 122
    Height = 17
    Caption = 'ENVIA POR EMAIL'
    TabOrder = 12
  end
  object BitBtn1: TBitBtn
    Left = 859
    Top = 81
    Width = 116
    Height = 37
    Caption = '&VISUALIZAR'
    TabOrder = 28
    OnClick = BitBtn1Click
  end
  object cbxdesctiponf_cod1nf: TDBLookupComboBox
    Left = 144
    Top = 126
    Width = 311
    Height = 21
    DataField = 'cod1nf'
    DataSource = frmdados.dts_Temp
    KeyField = 'codigo'
    ListField = 'nome'
    ListSource = frmdados.dts_tiponf
    TabOrder = 6
    OnKeyPress = cbxdesctiponf_cod1nfKeyPress
  end
  object rg1: TRadioGroup
    Left = 735
    Top = 224
    Width = 113
    Height = 243
    Caption = 'Forma de Emiss'#227'o'
    ItemIndex = 0
    Items.Strings = (
      'Normal'
      'SCAN')
    TabOrder = 29
  end
  object Edit1: TEdit
    Left = 740
    Top = 430
    Width = 85
    Height = 21
    TabOrder = 30
    Text = 'Edit1'
  end
  object edialiqapiss: TEdit
    Left = 344
    Top = 559
    Width = 49
    Height = 21
    TabOrder = 23
    Text = 'edialiqapiss'
    OnKeyPress = edialiqapissKeyPress
  end
  object edinped: TEdit
    Left = 312
    Top = 101
    Width = 144
    Height = 21
    TabOrder = 4
    Text = 'edinped'
    OnKeyPress = edinpedKeyPress
  end
  object cbxfinalidade: TComboBox
    Left = 311
    Top = 75
    Width = 147
    Height = 21
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 1
    Text = 'NF-e normal'
    OnKeyPress = cbxfinalidadeKeyPress
    Items.Strings = (
      'NF-e normal'
      'NF-e complementar'
      'NF-e de ajuste'
      'Devolu'#231#227'o/Retorno')
  end
  object cbxindfinal: TComboBox
    Left = 612
    Top = 175
    Width = 236
    Height = 21
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 13
    Text = 'N'#195'O'
    OnKeyPress = cbxindfinalKeyPress
    Items.Strings = (
      'N'#195'O'
      'SIM')
  end
  object cbxindpres: TComboBox
    Left = 612
    Top = 101
    Width = 236
    Height = 21
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 5
    Text = 'N'#227'o se aplica'
    OnKeyPress = cbxindpresKeyPress
    Items.Strings = (
      'N'#227'o se aplica'
      'Opera'#231#227'o presencial'
      'Opera'#231#227'o n'#227'o presencial, pela Internet'
      'Opera'#231#227'o n'#227'o presencial, Teleatendimento'
      'Opera'#231#227'o n'#227'o presencial, outros')
  end
  object edirefnfe: TEdit
    Left = 612
    Top = 74
    Width = 236
    Height = 21
    TabOrder = 2
    Text = 'edirefnfe'
    OnExit = edirefnfeExit
    OnKeyPress = edirefnfeKeyPress
  end
  object ckbdadosadic: TCheckBox
    Left = 249
    Top = 178
    Width = 201
    Height = 17
    Caption = 'SUPRIMIR DADOS ADIC. AUTOMAT.'
    TabOrder = 31
  end
  object Timer1: TTimer
    Interval = 500
    OnTimer = Timer1Timer
    Left = 392
    Top = 16
  end
end
