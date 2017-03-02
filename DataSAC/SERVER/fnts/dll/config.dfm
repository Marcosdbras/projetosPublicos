object frmconfig: Tfrmconfig
  Left = 198
  Top = 213
  BorderStyle = bsToolWindow
  Caption = 'CONFIGURA'#199#213'ES | Painel'
  ClientHeight = 409
  ClientWidth = 668
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = pop1
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 373
    Width = 668
    Height = 3
    Align = alTop
  end
  object PageView3: TPageView
    Left = 0
    Top = 0
    Width = 668
    Height = 373
    ActivePage = PageSheet13
    ActivePageIndex = 4
    AdaptiveColors = True
    Align = alTop
    BackgroundColor = clBtnFace
    BackgroundKind = bkSolid
    Indent = 2
    Margin = 0
    Options = [pgBoldActiveTab]
    ShowTabs = True
    Spacing = 0
    TabHeight = 17
    TabOrder = 0
    TabStyle = tsFlat
    TopIndent = 3
    object PageSheet7: TPageSheet
      Left = 0
      Top = 21
      Width = 668
      Height = 352
      Caption = 'Geral'
      DisplayMode = tdGlyph
      ImageIndex = 0
      Margin = 0
      PageIndex = 0
      TabColor = clWindow
      TabWidth = 0
      TransparentColor = clNone
      object GroupBox10: TGroupBox
        Left = 208
        Top = 8
        Width = 193
        Height = 89
        Caption = 'Quantidade de Casas Decimais'
        TabOrder = 1
        object Label31: TLabel
          Left = 16
          Top = 29
          Width = 94
          Height = 13
          Caption = 'para a Quantidade:'
        end
        object Label32: TLabel
          Left = 16
          Top = 56
          Width = 62
          Height = 13
          Caption = 'para o Valor:'
        end
        object wwDBSpinEdit1: TwwDBSpinEdit
          Left = 136
          Top = 24
          Width = 41
          Height = 21
          Increment = 1.000000000000000000
          MaxValue = 7.000000000000000000
          MinValue = 1.000000000000000000
          Value = 1.000000000000000000
          DataField = 'CASAS_DECIMAIS_QTDE'
          DataSource = dsconfig
          TabOrder = 0
          UnboundDataType = wwDefault
        end
        object wwDBSpinEdit2: TwwDBSpinEdit
          Left = 136
          Top = 48
          Width = 41
          Height = 21
          Increment = 1.000000000000000000
          MaxValue = 7.000000000000000000
          MinValue = 1.000000000000000000
          Value = 1.000000000000000000
          DataField = 'CASAS_DECIMAIS_VALOR'
          DataSource = dsconfig
          TabOrder = 1
          UnboundDataType = wwDefault
        end
      end
      object GroupBox12: TGroupBox
        Left = 8
        Top = 6
        Width = 193
        Height = 106
        Caption = 'Atividade Diferenciada'
        TabOrder = 0
        object Rramo_padrao: TRadioButton
          Left = 8
          Top = 16
          Width = 113
          Height = 17
          Caption = 'Padr'#227'o'
          TabOrder = 0
        end
        object rramo_supermercado: TRadioButton
          Left = 8
          Top = 32
          Width = 113
          Height = 17
          Caption = 'Supermercado'
          TabOrder = 1
        end
        object rramo_auto: TRadioButton
          Left = 8
          Top = 48
          Width = 113
          Height = 17
          Caption = 'Auto Pe'#231'as'
          TabOrder = 2
        end
        object rramo_farmacia: TRadioButton
          Left = 8
          Top = 64
          Width = 113
          Height = 17
          Caption = 'Farm'#225'cia'
          TabOrder = 3
        end
        object RadioButton4: TRadioButton
          Left = 8
          Top = 82
          Width = 113
          Height = 17
          Caption = 'Restaurante'
          TabOrder = 4
        end
      end
      object GroupBox13: TGroupBox
        Left = 8
        Top = 117
        Width = 313
        Height = 107
        Caption = 'Cadastro de Produtos'
        TabOrder = 2
        object DBComboBox12: TDBComboBox
          Left = 8
          Top = 20
          Width = 169
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          DataField = 'CADASTRO_PRODUTO'
          DataSource = dsconfig
          ItemHeight = 13
          Items.Strings = (
            'NORMAL'
            'LIGHT'
            'PECAS'
            'FARMA')
          TabOrder = 0
        end
        object DBCheckBox24: TDBCheckBox
          Left = 8
          Top = 48
          Width = 286
          Height = 18
          Caption = 'Permitir Nome Repetido'
          DataField = 'VERIFICA_NOME_PRODUTO'
          DataSource = dsconfig
          TabOrder = 1
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBCheckBox25: TDBCheckBox
          Left = 8
          Top = 64
          Width = 286
          Height = 18
          Caption = 'Permitir C'#243'digo de Barras repedito'
          DataField = 'VERIFICA_COD_BARRA'
          DataSource = dsconfig
          TabOrder = 2
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBCheckBox9: TDBCheckBox
          Left = 8
          Top = 80
          Width = 122
          Height = 18
          Caption = 'Usa Rentabilidade'
          DataField = 'USA_RENTABILIDADE'
          DataSource = dsconfig
          TabOrder = 3
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
      end
      object AdvGlowButton1: TAdvGlowButton
        Left = 448
        Top = 48
        Width = 161
        Height = 24
        Caption = 'Boletos de Cobran'#231'a'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 49
        FocusType = ftHot
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        Picture.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000467414D410000AFC837058AE90000001974455874536F6674776172
          650041646F626520496D616765526561647971C9653C000000EE4944415478DA
          62FCFFFF3F032500208098182804000144B101000144B1010001C472EAD429BC
          81B068D1220665656586E7CF9F3384848460C8030410C3C99327FFFFF9F3072F
          CEC9C9C12AFEE2C58BFF0001C40233287FF27106464646060660AC8028064630
          62E8CBB664F8F6ED1B4E170204100B32878D4314A8EB3F0313D33F0656164686
          6F9F5F130C038000423180911944FE031AC000C4509710000001043700A4F6D7
          B75760FA0FD015BFC05E209CC80002086EC0845C4BB2A2112080184121894F41
          55551583B1B131C3CD9B37C16C740010408C94E6058000A23825020410C50600
          0410C50600041800AD0A6CDA4DD0F2EC0000000049454E44AE426082}
        TabOrder = 5
        OnClick = AdvGlowButton1Click
        Appearance.BorderColor = 14727579
        Appearance.BorderColorHot = 10079963
        Appearance.BorderColorDown = 4548219
        Appearance.BorderColorChecked = clBlack
        Appearance.Color = 15653832
        Appearance.ColorTo = 16178633
        Appearance.ColorChecked = 7915518
        Appearance.ColorCheckedTo = 11918331
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 7778289
        Appearance.ColorDownTo = 4296947
        Appearance.ColorHot = 15465983
        Appearance.ColorHotTo = 11332863
        Appearance.ColorMirror = 15586496
        Appearance.ColorMirrorTo = 16245200
        Appearance.ColorMirrorHot = 5888767
        Appearance.ColorMirrorHotTo = 10807807
        Appearance.ColorMirrorDown = 946929
        Appearance.ColorMirrorDownTo = 5021693
        Appearance.ColorMirrorChecked = 10480637
        Appearance.ColorMirrorCheckedTo = 5682430
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
        Appearance.GradientHot = ggVertical
        Appearance.GradientMirrorHot = ggVertical
        Appearance.GradientDown = ggVertical
        Appearance.GradientMirrorDown = ggVertical
        Appearance.GradientChecked = ggVertical
        Layout = blGlyphLeftAdjusted
      end
      object AdvGlowButton2: TAdvGlowButton
        Left = 448
        Top = 16
        Width = 161
        Height = 24
        Caption = 'Transfer'#234'ncia de Dados'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 49
        FocusType = ftHot
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        Picture.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000467414D410000AFC837058AE90000001974455874536F6674776172
          650041646F626520496D616765526561647971C9653C000002EA4944415478DA
          62FCFFFF3FC3DEBD7BD981B41F1047FEFBF74F0348AB023190F9EF0A90BE03A4
          E702F1DE808080BF0C6800208018F7ECD9A30554B45C5454544F424282819B9B
          9B818B8B8B0164F0C78F1F193E7FFECCF0E8D12386D7AF5F1F018A450407073F
          45360020801876EDDAB5FFE1C38720EBFEE302BF7FFFFE7FFEFCF9FFD53B8B1F
          64EE8C6306190EC30001C40424B4C5C5C519080169696986EF7FBE49FFFEF567
          2FB2384000B1006D069B74E9D225061E1E1E3016141464B8F7F936C38E879B18
          1E7CBECBF0E7CF5F863FBFFF3248F3CAB0F0FCE1B18F5A1EB87359E47A779001
          0001043740484808E44F86172F5E307C627BCF70F6D73106493E690667290F86
          BFFFFF32FC03E2BFFFFE82D9DFBE7D77F39FE17E6763C64E1580006281F90564
          330B0B0BD0B63F0C7BDF5D651061156510651763B8F8F23CC3BD3777197EFFFA
          CD20C3270B96BFF1E8D69ECD59BB5C412E00082026980B4012C0C002E3DB9F6E
          80356EBEB581E1D3BBAF0C7102190C6D9613189E3E79FEE7FAC31B877FFDF8E5
          EED461CD0932002080E05EF8FBF72FD810104E93CB071BF4F2E54B86CF5F3E83
          C5406AD87EB1FF056A76DC557CE81F50EF7790010001047701CC76982170037F
          FF61D8FA6C03588D31A3E527A06694C4041040601780304C23CCC05F7F7E0203
          EE1FC3C6176B18BEFDFA0A16FFF5EB1783658DF1216078D802A31364F8438000
          6201D9F4EEDD3B06604A04C7C0F7EFDF212633B132AC79B88C818D8F9981F137
          2743ECA2706040FE115592551035353464B876F326C3A1C3C776020410C80509
          C78F1F5FA5A9A9C92D2F2FCFC0CECECEC0C8C8C890B23486819F979F415F4517
          1C7D3A6A5AF0E8BC7DFF1EC3C14347CFFEFDF37739400031829CBB64C91245A0
          4135401CCCC4C4C40FCA0B20EFAC7FB89A814394059C90AEDEB8CEF007EC6C50
          D8FC3D08D4DC707FE1A303000104360019CC9A358B17A8590588FF0103F5C6F2
          970B77029D2E7471C2353D6C491C20801890330636AC9BA7C1AC99A9BA0A973C
          40800100B15E21BCB76280F30000000049454E44AE426082}
        TabOrder = 6
        OnClick = AdvGlowButton2Click
        Appearance.BorderColor = 14727579
        Appearance.BorderColorHot = 10079963
        Appearance.BorderColorDown = 4548219
        Appearance.BorderColorChecked = clBlack
        Appearance.Color = 15653832
        Appearance.ColorTo = 16178633
        Appearance.ColorChecked = 7915518
        Appearance.ColorCheckedTo = 11918331
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 7778289
        Appearance.ColorDownTo = 4296947
        Appearance.ColorHot = 15465983
        Appearance.ColorHotTo = 11332863
        Appearance.ColorMirror = 15586496
        Appearance.ColorMirrorTo = 16245200
        Appearance.ColorMirrorHot = 5888767
        Appearance.ColorMirrorHotTo = 10807807
        Appearance.ColorMirrorDown = 946929
        Appearance.ColorMirrorDownTo = 5021693
        Appearance.ColorMirrorChecked = 10480637
        Appearance.ColorMirrorCheckedTo = 5682430
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
        Appearance.GradientHot = ggVertical
        Appearance.GradientMirrorHot = ggVertical
        Appearance.GradientDown = ggVertical
        Appearance.GradientMirrorDown = ggVertical
        Appearance.GradientChecked = ggVertical
        Layout = blGlyphLeftAdjusted
      end
      object retiqueta07: TRzDBRadioGroup
        Left = 328
        Top = 104
        Width = 185
        Height = 88
        DataField = 'ETIQUETA_07'
        DataSource = dsconfig
        Items.Strings = (
          'Nenhum'
          'C'#243'digo'
          'Localiza'#231#227'o')
        Values.Strings = (
          '0'
          '1'
          '2')
        Caption = 'Etiqueta de Confec'#231#227'o | 07'
        Enabled = False
        TabOrder = 7
      end
      object RzDBRadioGroup1: TRzDBRadioGroup
        Left = 328
        Top = 195
        Width = 185
        Height = 61
        DataField = 'ETIQUETA_07_1'
        DataSource = dsconfig
        Items.Strings = (
          'C'#243'digo do Produto'
          'C'#243'digo de Barras')
        Values.Strings = (
          '0'
          '1'
          '2')
        Caption = 'Etiqueta de Confec'#231#227'o | 07'
        Enabled = False
        TabOrder = 8
      end
      object RzDBRadioGroup2: TRzDBRadioGroup
        Left = 328
        Top = 260
        Width = 185
        Height = 61
        DataField = 'ETIQUETA_07_2'
        DataSource = dsconfig
        Items.Strings = (
          '5,0 cm x 7,5 cm'
          '4,0 cm x 5,5 cm')
        Values.Strings = (
          '0'
          '1'
          '2')
        Caption = 'Etiqueta de Confec'#231#227'o | 07'
        Enabled = False
        TabOrder = 9
      end
      object RzGroupBox1: TRzGroupBox
        Left = 8
        Top = 289
        Width = 196
        Height = 45
        Caption = 'Invent'#225'rio'
        TabOrder = 4
        object DBCheckBox18: TDBCheckBox
          Left = 8
          Top = 20
          Width = 155
          Height = 17
          Caption = 'Gerar Automaticamente'
          DataField = 'INVENTARIO_AUTOMATICO'
          DataSource = dsconfig
          TabOrder = 0
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
      end
      object RzGroupBox2: TRzGroupBox
        Left = 8
        Top = 231
        Width = 196
        Height = 50
        Caption = 'Clientes'
        TabOrder = 3
        object DBCheckBox12: TDBCheckBox
          Left = 8
          Top = 24
          Width = 185
          Height = 17
          Caption = 'Solicitar CPF no in'#237'cio do Cadastro'
          DataField = 'CLIENTE_PEDE_CPF'
          DataSource = dsconfig
          TabOrder = 0
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
      end
    end
    object PageSheet10: TPageSheet
      Left = 0
      Top = 21
      Width = 668
      Height = 352
      Caption = 'Faturamento'
      DisplayMode = tdGlyph
      ImageIndex = 0
      Margin = 0
      PageIndex = 1
      TabColor = clWindow
      TabWidth = 0
      TransparentColor = clNone
      object GroupBox1: TGroupBox
        Left = 12
        Top = 8
        Width = 385
        Height = 185
        Caption = 'Impress'#227'o'
        TabOrder = 0
        object Label2: TLabel
          Left = 8
          Top = 17
          Width = 34
          Height = 13
          Caption = 'Venda:'
        end
        object Label3: TLabel
          Left = 304
          Top = 17
          Width = 23
          Height = 13
          Caption = 'Vias:'
        end
        object Label4: TLabel
          Left = 8
          Top = 41
          Width = 22
          Height = 13
          Caption = 'O.S.'
        end
        object Label5: TLabel
          Left = 304
          Top = 41
          Width = 23
          Height = 13
          Caption = 'Vias:'
        end
        object Label40: TLabel
          Left = 8
          Top = 65
          Width = 57
          Height = 13
          Caption = 'Or'#231'amento:'
        end
        object Label41: TLabel
          Left = 304
          Top = 65
          Width = 23
          Height = 13
          Caption = 'Vias:'
        end
        object DBEdit1: TDBEdit
          Left = 344
          Top = 14
          Width = 33
          Height = 21
          DataField = 'VENDA_QTDE_VIAS_NOTA'
          DataSource = dsconfig
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 344
          Top = 38
          Width = 33
          Height = 21
          DataField = 'OS_QTDE_VIAS_NOTA'
          DataSource = dsconfig
          TabOrder = 1
        end
        object GroupBox4: TGroupBox
          Left = 8
          Top = 117
          Width = 371
          Height = 53
          Caption = 'Impressora Matricial'
          TabOrder = 2
          object Label22: TLabel
            Left = 128
            Top = 8
            Width = 41
            Height = 13
            Caption = 'Caminho'
          end
          object Label38: TLabel
            Left = 288
            Top = 8
            Width = 65
            Height = 13
            Caption = 'Avan'#231'o Papel'
          end
          object RadioButton1: TRadioButton
            Left = 8
            Top = 16
            Width = 113
            Height = 17
            Caption = 'Local'
            Checked = True
            TabOrder = 0
            TabStop = True
          end
          object RadioButton2: TRadioButton
            Left = 8
            Top = 32
            Width = 113
            Height = 17
            Caption = 'Em Rede - Local:'
            TabOrder = 1
          end
          object DBEdit17: TDBEdit
            Left = 129
            Top = 24
            Width = 152
            Height = 21
            CharCase = ecUpperCase
            DataField = 'VENDA_PORTA_IMPRESSORA'
            DataSource = dsconfig
            TabOrder = 2
          end
          object DBEdit19: TDBEdit
            Left = 288
            Top = 24
            Width = 73
            Height = 21
            CharCase = ecUpperCase
            DataField = 'Bobina_subirpapel'
            DataSource = dsconfig
            TabOrder = 3
          end
        end
        object combo_os: TComboBox
          Left = 57
          Top = 37
          Width = 241
          Height = 20
          Style = csDropDownList
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ItemHeight = 12
          ParentFont = False
          TabOrder = 3
          Items.Strings = (
            '01 - CUPOM FISCAL'
            '02 - NOTA FISCAL'
            '03 - FORMUL'#193'RIO CONT'#205'NUO - RAZ'#195'O'
            '04 - CONT'#205'NUO (AUTO-PE'#199'AS)'
            '05 - ------------------------------------------'
            '06 - PR'#201'-IMPRESSO (PERSONALIZADO)'
            '07 - A4'
            '08 - RAZ'#195'O (LASER)'
            '09 - FORMUL'#193'RIO CONT'#205'NUO - CARTA'
            '10 - -----------------------------------------'
            '11 - RAZ'#195'O (AUTO-PE'#199'AS)'
            '12 - FORMUL'#193'RIO CONT'#205'NUO - CARTA (PERSONALIZADO)'
            '13 - CUPOM FISCAL + NOTA FISCAL')
        end
        object combo_venda: TComboBox
          Left = 57
          Top = 13
          Width = 241
          Height = 20
          Style = csDropDownList
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ItemHeight = 12
          ItemIndex = 0
          ParentFont = False
          TabOrder = 4
          Text = '01 - CUPOM FISCAL'
          Items.Strings = (
            '01 - CUPOM FISCAL'
            '02 - NOTA FISCAL'
            '03 - BOBINA'
            '04 - FORMUL'#193'RIO CONT'#205'NUO - RAZ'#195'O'
            '05 - FORMUL'#193'RIO CONT'#205'NUO - CARTA'
            '06 - PR'#201'-IMPRESSO (PERSONALIZADO)'
            '07 - CONTRATO/GUIA DE ENTREGA/CARN'#202
            '08 - PERSONALIZADO'
            '09 - PAPEL A4 - LASER / TINTA'
            '10 - PAPEL RAZ'#195'O - LASER / TINTA'
            '11 - FORMUL'#193'RIO CONT'#205'NUO - RAZ'#195'O 2 '
            '12 - CONTRATO/GUIA DE ENTREGA/CARN'#202'+CAPA'
            '13 - BOBINA SEM FORMATA'#199#195'O'
            '14 - PEDIDO + CARN'#202
            '15 - CONTRATO/CARN'#202
            '16 - PEDIDO + CARN'#202' COM C'#211'DIGO DE BARRAS')
        end
        object DBEdit42: TDBEdit
          Left = 344
          Top = 62
          Width = 33
          Height = 21
          DataField = 'ORCAMENTO_QTDE_VIAS_NOTA'
          DataSource = dsconfig
          TabOrder = 5
        end
        object combo_orcamento: TComboBox
          Left = 80
          Top = 61
          Width = 218
          Height = 20
          Style = csDropDownList
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ItemHeight = 12
          ParentFont = False
          TabOrder = 6
          Items.Strings = (
            '01 - PAPEL A4'
            '03 - FORMUL'#193'RIO CONT'#205'NUO - RAZ'#195'O'
            '04 - FORMUL'#193'RIO CONT'#205'NUO - CARTA'
            '05 - BOBINA')
        end
      end
      object GroupBox2: TGroupBox
        Left = 404
        Top = 8
        Width = 253
        Height = 182
        Caption = 'Op'#231#245'es'
        TabOrder = 1
        object DBCheckBox1: TDBCheckBox
          Left = 8
          Top = 17
          Width = 137
          Height = 17
          Caption = 'Vender Sem Estoque'
          DataField = 'ESTOQUE_NEGATIVO'
          DataSource = dsconfig
          TabOrder = 0
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBCheckBox4: TDBCheckBox
          Left = 8
          Top = 32
          Width = 137
          Height = 17
          Caption = 'Cadastrar Cheque'
          DataField = 'VENDA_CADASTRO_CHEQUE'
          DataSource = dsconfig
          TabOrder = 1
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBCheckBox5: TDBCheckBox
          Left = 8
          Top = 47
          Width = 137
          Height = 17
          Caption = 'Cadastrar Cart'#227'o'
          DataField = 'VENDA_CADASTRO_CARTAO'
          DataSource = dsconfig
          TabOrder = 2
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBCheckBox7: TDBCheckBox
          Left = 8
          Top = 62
          Width = 137
          Height = 17
          Caption = 'Fechar venda no Caixa'
          DataField = 'VENDA_FECHAMENTO_CAIXA'
          DataSource = dsconfig
          TabOrder = 3
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBCheckBox8: TDBCheckBox
          Left = 8
          Top = 77
          Width = 146
          Height = 17
          Caption = 'Imprime Duplicatas'
          DataField = 'IMPRIME_DUPLICATA'
          DataSource = dsconfig
          TabOrder = 4
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBCheckBox11: TDBCheckBox
          Left = 8
          Top = 92
          Width = 209
          Height = 17
          Caption = 'Verificar Limite e Cadastro na Venda'
          DataField = 'VENDA_LIMITE_CLIENTE'
          DataSource = dsconfig
          TabOrder = 5
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBCheckBox13: TDBCheckBox
          Left = 8
          Top = 107
          Width = 201
          Height = 17
          Caption = 'N'#227'o permitir alterar o pre'#231'o unit'#225'rio'
          DataField = 'ALTERAR_UNITARIO'
          DataSource = dsconfig
          TabOrder = 6
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBCheckBox17: TDBCheckBox
          Left = 8
          Top = 122
          Width = 217
          Height = 17
          Caption = 'Baixar Estoque na Nota Fiscal de Sa'#237'da'
          DataField = 'BAIXAR_ESTOQUE_NOTA_SAIDA'
          DataSource = dsconfig
          TabOrder = 7
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBCheckBox26: TDBCheckBox
          Left = 8
          Top = 137
          Width = 240
          Height = 17
          Hint = 
            'Verifica na Inclus'#227'o de um item na Nota Fiscal de Sa'#237'da '#13#10'se o u' +
            'su'#225'rio vai baixar serial ou n'#227'o.'
          Caption = 'Mostra Composi'#231#227'o Produto Industria'
          DataField = 'IND_MOSTRA_COMPOSICAO'
          DataSource = dsconfig
          ParentShowHint = False
          ShowHint = True
          TabOrder = 8
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
      end
      object GroupBox3: TGroupBox
        Left = 12
        Top = 208
        Width = 185
        Height = 105
        Caption = 'Desconto M'#225'ximo Permitido'
        TabOrder = 2
        object Label1: TLabel
          Left = 8
          Top = 21
          Width = 61
          Height = 13
          Caption = 'Por Produto:'
        end
        object Label6: TLabel
          Left = 8
          Top = 45
          Width = 58
          Height = 13
          Caption = 'Por Servi'#231'o:'
        end
        object Label7: TLabel
          Left = 8
          Top = 68
          Width = 69
          Height = 13
          Caption = 'Total da Nota:'
        end
        object RxDBCalcEdit1: TRxDBCalcEdit
          Left = 96
          Top = 16
          Width = 81
          Height = 21
          DataField = 'DESCONTO_PRODUTO'
          DataSource = dsconfig
          DisplayFormat = '###,###,##0.00%'
          ButtonWidth = 0
          NumGlyphs = 2
          TabOrder = 0
        end
        object RxDBCalcEdit2: TRxDBCalcEdit
          Left = 96
          Top = 40
          Width = 81
          Height = 21
          DisplayFormat = '###,###,##0.00%'
          Enabled = False
          ButtonWidth = 0
          NumGlyphs = 2
          TabOrder = 1
        end
        object RxDBCalcEdit3: TRxDBCalcEdit
          Left = 96
          Top = 64
          Width = 81
          Height = 21
          DataField = 'DESCONTO_TOTALNOTA'
          DataSource = dsconfig
          DecimalPlaces = 15
          DisplayFormat = '###,###,##0.00%'
          ButtonWidth = 0
          NumGlyphs = 2
          TabOrder = 2
        end
      end
      object GroupBox25: TGroupBox
        Left = 204
        Top = 208
        Width = 193
        Height = 73
        Caption = 'Tipo Duplicata'
        TabOrder = 3
        object DBComboBox1: TDBComboBox
          Left = 16
          Top = 32
          Width = 161
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          DataField = 'TIPO_DUPLICATA'
          DataSource = dsconfig
          ItemHeight = 13
          Items.Strings = (
            ''
            'MATRICIAL'
            'LASER')
          TabOrder = 0
        end
      end
      object GroupBox27: TGroupBox
        Left = 404
        Top = 208
        Width = 253
        Height = 105
        Caption = 'Controle de Entrega'
        TabOrder = 4
        object Label50: TLabel
          Left = 7
          Top = 45
          Width = 38
          Height = 13
          Caption = 'Modelo:'
        end
        object Label54: TLabel
          Left = 6
          Top = 73
          Width = 23
          Height = 13
          Caption = 'Vias:'
        end
        object DBCheckBox10: TDBCheckBox
          Left = 6
          Top = 16
          Width = 182
          Height = 17
          Caption = 'Utiliza controle de Entrega'
          DataField = 'CONTROLA_ENTREGA'
          DataSource = dsconfig
          TabOrder = 0
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object combo_entrega: TComboBox
          Left = 48
          Top = 44
          Width = 177
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          ItemHeight = 13
          TabOrder = 1
          Items.Strings = (
            '1 - BOBINA'
            '2 - RAZ'#195'O MATRICIAL'
            '4 - CARTA MATRICIAL'
            '3 - RAZ'#195'O LASER/TINTA')
        end
        object DBEdit49: TDBEdit
          Left = 47
          Top = 70
          Width = 33
          Height = 21
          DataField = 'ENTREGA_VIAS'
          DataSource = dsconfig
          TabOrder = 2
        end
      end
    end
    object PageSheet11: TPageSheet
      Left = 0
      Top = 21
      Width = 668
      Height = 352
      Caption = 'Financeiro'
      DisplayMode = tdGlyph
      ImageIndex = 0
      Margin = 0
      PageIndex = 2
      TabColor = clWindow
      TabWidth = 0
      TransparentColor = clNone
      object GroupBox9: TGroupBox
        Left = 8
        Top = 8
        Width = 225
        Height = 51
        Caption = 'Alertas ao Entrar no Sistema'
        TabOrder = 0
        object DBCheckBox2: TDBCheckBox
          Left = 8
          Top = 13
          Width = 193
          Height = 17
          Caption = 'Contas a Pagar Vencidas'
          DataField = 'AVISO_CONTAS_PAGAR'
          DataSource = dsconfig
          TabOrder = 0
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBCheckBox3: TDBCheckBox
          Left = 8
          Top = 29
          Width = 193
          Height = 17
          Caption = 'Cheques de Clientes Vencidos'
          DataField = 'AVISO_CHEQUE'
          DataSource = dsconfig
          TabOrder = 1
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
      end
      object GroupBox11: TGroupBox
        Left = 8
        Top = 69
        Width = 225
        Height = 165
        Caption = 'Contas a Receber'
        TabOrder = 1
        object Label33: TLabel
          Left = 7
          Top = 21
          Width = 72
          Height = 13
          Caption = 'Taxa de Juros:'
        end
        object Label34: TLabel
          Left = 7
          Top = 47
          Width = 65
          Height = 13
          Caption = 'Multa Atrazo:'
        end
        object Label35: TLabel
          Left = 7
          Top = 70
          Width = 46
          Height = 13
          Caption = 'Car'#234'ncia:'
        end
        object Label36: TLabel
          Left = 7
          Top = 139
          Width = 88
          Height = 13
          Caption = 'Desconto M'#225'ximo:'
        end
        object Label57: TLabel
          Left = 7
          Top = 93
          Width = 92
          Height = 13
          Caption = 'Presta'#231#227'o Vencida:'
        end
        object RxDBCalcEdit4: TRxDBCalcEdit
          Left = 117
          Top = 16
          Width = 103
          Height = 21
          DataField = 'CONTASRECEBER_TAXAJUROS'
          DataSource = dsconfig
          DecimalPlaces = 3
          DisplayFormat = '###,###,##0.000% ao dia'
          ButtonWidth = 0
          NumGlyphs = 2
          TabOrder = 0
        end
        object RxDBCalcEdit5: TRxDBCalcEdit
          Left = 117
          Top = 40
          Width = 103
          Height = 21
          DataField = 'CONTASRECEBER_MULTA'
          DataSource = dsconfig
          DisplayFormat = '###,###,##0.000%'
          ButtonWidth = 0
          NumGlyphs = 2
          TabOrder = 1
        end
        object RxDBCalcEdit6: TRxDBCalcEdit
          Left = 117
          Top = 64
          Width = 103
          Height = 21
          DataField = 'CONTASRECEBER_CARENCIA'
          DataSource = dsconfig
          DisplayFormat = '###,###,##0 dias'
          ButtonWidth = 0
          NumGlyphs = 2
          TabOrder = 2
        end
        object DBCheckBox6: TDBCheckBox
          Left = 7
          Top = 119
          Width = 209
          Height = 17
          Caption = 'Permitir Desconto'
          DataField = 'CONTASRECEBER_DESCONTO_PERMITIR'
          DataSource = dsconfig
          TabOrder = 3
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object RxDBCalcEdit7: TRxDBCalcEdit
          Left = 128
          Top = 135
          Width = 89
          Height = 21
          DataField = 'CONTASRECEBER_DESCONTO_PERCENT'
          DataSource = dsconfig
          DisplayFormat = '###,###,##0.000'
          ButtonWidth = 0
          NumGlyphs = 2
          TabOrder = 4
        end
        object RxDBCalcEdit8: TRxDBCalcEdit
          Left = 117
          Top = 89
          Width = 103
          Height = 21
          DataField = 'CONTASRECEBER_BLOQUEIO'
          DataSource = dsconfig
          DecimalPlaces = 0
          DisplayFormat = '###,###,##0 dias'
          ButtonWidth = 0
          NumGlyphs = 2
          TabOrder = 5
        end
      end
      object GroupBox14: TGroupBox
        Left = 248
        Top = 8
        Width = 161
        Height = 50
        Caption = 'Boleto - Forma de Pgto.'
        TabOrder = 2
        object wwDBLookupCombo1: TwwDBLookupCombo
          Left = 8
          Top = 15
          Width = 145
          Height = 21
          CharCase = ecUpperCase
          DropDownAlignment = taLeftJustify
          DataField = 'BOLETO_FORMAPGTO'
          DataSource = dsconfig
          LookupTable = frmmodulo.qrformapgto
          LookupField = 'FORMAPGTO'
          Style = csDropDownList
          TabOrder = 0
          AutoDropDown = False
          ShowButton = True
          PreciseEditRegion = False
          AllowClearKey = False
        end
      end
      object GroupBox15: TGroupBox
        Left = 248
        Top = 80
        Width = 161
        Height = 57
        Caption = 'Extrato - Impress'#227'o'
        TabOrder = 3
        object combo_extrato: TComboBox
          Left = 8
          Top = 21
          Width = 145
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          ItemHeight = 13
          TabOrder = 0
          Items.Strings = (
            '01 - BOBINA'
            '02 - PAPEL A4 - LASER / TINTA')
        end
      end
      object GroupBox24: TGroupBox
        Left = 248
        Top = 152
        Width = 161
        Height = 81
        Caption = 'M'#243'dulo PDV '
        TabOrder = 4
        object Label47: TLabel
          Left = 8
          Top = 25
          Width = 66
          Height = 13
          Caption = 'Desc. '#224' Vista:'
        end
        object Label48: TLabel
          Left = 8
          Top = 44
          Width = 35
          Height = 26
          Caption = 'Tipo de'#13#10'Venda:'
        end
        object DBEdit46: TDBEdit
          Left = 104
          Top = 20
          Width = 49
          Height = 21
          DataField = 'DESCONTO_AVISTA'
          DataSource = dsconfig
          TabOrder = 0
        end
        object wwDBComboBox1: TwwDBComboBox
          Left = 64
          Top = 48
          Width = 89
          Height = 20
          ShowButton = True
          Style = csDropDown
          MapList = False
          AllowClearKey = False
          CharCase = ecUpperCase
          DropDownCount = 8
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ItemHeight = 0
          Items.Strings = (
            'NORMAL'
            'PRE-VENDA')
          ParentFont = False
          Sorted = False
          TabOrder = 1
          UnboundDataType = wwDefault
        end
      end
      object AdvGlowButton3: TAdvGlowButton
        Left = 472
        Top = 8
        Width = 177
        Height = 24
        Caption = 'Corrigir contas a receber'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 49
        FocusType = ftHot
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        Picture.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000467414D410000AFC837058AE90000001974455874536F6674776172
          650041646F626520496D616765526561647971C9653C000002EA4944415478DA
          62FCFFFF3FC3DEBD7BD981B41F1047FEFBF74F0348AB023190F9EF0A90BE03A4
          E702F1DE808080BF0C6800208018F7ECD9A30554B45C5454544F424282819B9B
          9B818B8B8B0164F0C78F1F193E7FFECCF0E8D12386D7AF5F1F018A450407073F
          45360020801876EDDAB5FFE1C38720EBFEE302BF7FFFFE7FFEFCF9FFD53B8B1F
          64EE8C6306190EC30001C40424B4C5C5C519080169696986EF7FBE49FFFEF567
          2FB2384000B1006D069B74E9D225061E1E1E3016141464B8F7F936C38E879B18
          1E7CBECBF0E7CF5F863FBFFF3248F3CAB0F0FCE1B18F5A1EB87359E47A779001
          0001043740484808E44F86172F5E307C627BCF70F6D73106493E690667290F86
          BFFFFF32FC03E2BFFFFE82D9DFBE7D77F39FE17E6763C64E1580006281F90564
          330B0B0BD0B63F0C7BDF5D651061156510651763B8F8F23CC3BD3777197EFFFA
          CD20C3270B96BFF1E8D69ECD59BB5C412E00082026980B4012C0C002E3DB9F6E
          80356EBEB581E1D3BBAF0C7102190C6D9613189E3E79FEE7FAC31B877FFDF8E5
          EED461CD0932002080E05EF8FBF72FD810104E93CB071BF4F2E54B86CF5F3E83
          C5406AD87EB1FF056A76DC557CE81F50EF7790010001047701CC76982170037F
          FF61D8FA6C03588D31A3E527A06694C4041040601780304C23CCC05F7F7E0203
          EE1FC3C6176B18BEFDFA0A16FFF5EB1783658DF1216078D802A31364F8438000
          6201D9F4EEDD3B06604A04C7C0F7EFDF212633B132AC79B88C818D8F9981F137
          2743ECA2706040FE115592551035353464B876F326C3A1C3C776020410C80509
          C78F1F5FA5A9A9C92D2F2FCFC0CECECEC0C8C8C890B23486819F979F415F4517
          1C7D3A6A5AF0E8BC7DFF1EC3C14347CFFEFDF37739400031829CBB64C91245A0
          4135401CCCC4C4C40FCA0B20EFAC7FB89A814394059C90AEDEB8CEF007EC6C50
          D8FC3D08D4DC707FE1A303000104360019CC9A358B17A8590588FF0103F5C6F2
          970B77029D2E7471C2353D6C491C20801890330636AC9BA7C1AC99A9BA0A973C
          40800100B15E21BCB76280F30000000049454E44AE426082}
        TabOrder = 5
        OnClick = AdvGlowButton3Click
        Appearance.BorderColor = 14727579
        Appearance.BorderColorHot = 10079963
        Appearance.BorderColorDown = 4548219
        Appearance.BorderColorChecked = clBlack
        Appearance.Color = 15653832
        Appearance.ColorTo = 16178633
        Appearance.ColorChecked = 7915518
        Appearance.ColorCheckedTo = 11918331
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 7778289
        Appearance.ColorDownTo = 4296947
        Appearance.ColorHot = 15465983
        Appearance.ColorHotTo = 11332863
        Appearance.ColorMirror = 15586496
        Appearance.ColorMirrorTo = 16245200
        Appearance.ColorMirrorHot = 5888767
        Appearance.ColorMirrorHotTo = 10807807
        Appearance.ColorMirrorDown = 946929
        Appearance.ColorMirrorDownTo = 5021693
        Appearance.ColorMirrorChecked = 10480637
        Appearance.ColorMirrorCheckedTo = 5682430
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
        Appearance.GradientHot = ggVertical
        Appearance.GradientMirrorHot = ggVertical
        Appearance.GradientDown = ggVertical
        Appearance.GradientMirrorDown = ggVertical
        Appearance.GradientChecked = ggVertical
        Layout = blGlyphLeftAdjusted
      end
      object GroupBox29: TGroupBox
        Left = 248
        Top = 241
        Width = 161
        Height = 48
        Caption = 'Recibo - Impress'#227'o'
        TabOrder = 6
        object combo_recibo: TComboBox
          Left = 8
          Top = 17
          Width = 145
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          ItemHeight = 13
          TabOrder = 0
          Items.Strings = (
            '01 - ECF'
            '02 - BOBINA'
            '03 - PAPEL A4 - LASER / TINTA'
            '')
        end
      end
    end
    object PageSheet12: TPageSheet
      Left = 0
      Top = 21
      Width = 668
      Height = 352
      Caption = 'Nota Fiscal'
      DisplayMode = tdGlyph
      ImageIndex = 0
      Margin = 0
      PageIndex = 3
      TabColor = clWindow
      TabWidth = 0
      TransparentColor = clNone
      object PageView2: TPageView
        Left = 0
        Top = 0
        Width = 668
        Height = 345
        ActivePage = PageSheet5
        ActivePageIndex = 0
        AdaptiveColors = True
        BackgroundColor = clBtnFace
        BackgroundKind = bkSolid
        Indent = 2
        Margin = 0
        Options = [pgBoldActiveTab]
        ShowTabs = True
        Spacing = 0
        TabHeight = 17
        TabOrder = 0
        TabStyle = tsFlat
        TopIndent = 3
        object PageSheet5: TPageSheet
          Left = 0
          Top = 21
          Width = 668
          Height = 324
          Caption = 'Nota Fiscal'
          DisplayMode = tdGlyph
          ImageIndex = 0
          Margin = 0
          PageIndex = 0
          TabColor = clWindow
          TabWidth = 0
          TransparentColor = clNone
          object BitBtn19: TBitBtn
            Left = 465
            Top = 20
            Width = 25
            Height = 21
            TabOrder = 0
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFCFDFEE7EEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBFD6494BA2166
              9C80A8C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFAFCFD6E9BC1548CBB88B4DC175E96FFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFD7AA3C96396C49CC0E36598
              C63070A4FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEE8CEB9DAB292D2A57FCFA07BD1
              A684ADA09874A1CBAACAE775A3CD3F7AAEDEE8F1FFFFFFFFFFFFFFFFFFFFFEFE
              E8C9AFE7C8ADF4E0CCF6E4D2F6E4D0F2DCC7DEB99BC6A79085ADD44F86BAE1EA
              F3FFFFFFFFFFFFFFFFFFFFFFFFF1DBC7ECCFB6F7E7D8F4DDC7F2D7BCF2D5BAF3
              DAC1F6E3D1DEBA9C9F9694E3ECF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDCDB1
              F6E6D6F5E0CBF3DAC1F3D9BFF2D7BCF2D6BAF3DAC1F2DDC8D1A787FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFEFCDAEF8EBDEF4DEC7F4DCC5F3DBC2F3D9C0F2
              D8BDF2D6BCF7E5D2D2A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D2B4
              F8ECE0F5E0CBF4DEC8F4DDC6F3DBC3F3DAC1F3D9BFF7E6D5D6AA86FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFF7DBC0F8EADDF6E6D5F5E0CBF4DFC9F4DDC7F4
              DCC4F5E0CAF4E1CFDEB898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE9D7
              F7E1CBF9EDE2F6E6D5F5E1CDF5E0CAF5E2CFF8E9DCEBCEB4EBD3BEFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAE3CDF8E1CCF9EBDDF8EDE1F8ECE1F7
              E8D9EFD4BCECCFB6FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFBEAD9F9DCC2F5D5B8F3D2B4F2D3B7F4E0CDFFFFFEFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          end
          object GroupBox23: TGroupBox
            Left = 12
            Top = 4
            Width = 557
            Height = 165
            Caption = 'Nota Fiscal'
            TabOrder = 1
            object Label42: TLabel
              Left = 8
              Top = 25
              Width = 24
              Height = 13
              Caption = 'Tipo:'
            end
            object Label45: TLabel
              Left = 8
              Top = 49
              Width = 83
              Height = 13
              Caption = 'Itens por P'#225'gina:'
            end
            object Label43: TLabel
              Left = 216
              Top = 49
              Width = 158
              Height = 13
              Caption = 'Linha do "Transporte de P'#225'gina":'
            end
            object Label44: TLabel
              Left = 8
              Top = 73
              Width = 210
              Height = 13
              Caption = 'Qtde. de Linhas para outra pr'#243'xima p'#225'gina:'
            end
            object Label46: TLabel
              Left = 8
              Top = 97
              Width = 58
              Height = 13
              Caption = 'Impressora:'
            end
            object Label51: TLabel
              Left = 288
              Top = 73
              Width = 87
              Height = 13
              Caption = 'Linha do Subtotal:'
            end
            object DBEdit44: TDBEdit
              Left = 112
              Top = 46
              Width = 41
              Height = 21
              DataField = 'NF_ITENS_PAGINA'
              DataSource = dsconfig
              TabOrder = 1
            end
            object combo_nf: TComboBox
              Left = 57
              Top = 21
              Width = 368
              Height = 21
              Style = csDropDownList
              CharCase = ecUpperCase
              ItemHeight = 13
              TabOrder = 0
              Items.Strings = (
                '01 - FONTE DO WINDOWS'
                '02 - FONTE DO MS-DOS'
                '03 - PERSONALIZADO')
            end
            object DBEdit43: TDBEdit
              Left = 384
              Top = 46
              Width = 41
              Height = 21
              DataField = 'NF_LINHA_TRANSPORTE'
              DataSource = dsconfig
              TabOrder = 2
            end
            object DBEdit47: TDBEdit
              Left = 224
              Top = 70
              Width = 41
              Height = 21
              DataField = 'NF_SALTO_PAGINA'
              DataSource = dsconfig
              TabOrder = 3
            end
            object DBEdit45: TDBEdit
              Left = 72
              Top = 94
              Width = 353
              Height = 21
              CharCase = ecUpperCase
              DataField = 'NF_IMPRESSORA'
              DataSource = dsconfig
              TabOrder = 4
            end
            object Button1: TButton
              Left = 490
              Top = 94
              Width = 57
              Height = 20
              Caption = 'Padr'#227'o'
              TabOrder = 5
              OnClick = Button1Click
            end
            object DBEdit50: TDBEdit
              Left = 384
              Top = 70
              Width = 41
              Height = 21
              DataField = 'NF_LINHA_SUBTOTAL'
              DataSource = dsconfig
              TabOrder = 6
            end
            object check_prestacao: TDBCheckBox
              Left = 7
              Top = 124
              Width = 205
              Height = 17
              Caption = 'Lan'#231'ar presta'#231#245'es no contas a receber'
              DataField = 'NF_GERAR_RECEBER'
              DataSource = dsconfig
              TabOrder = 7
              ValueChecked = '1'
              ValueUnchecked = '0'
            end
            object check_gerar: TDBCheckBox
              Left = 7
              Top = 140
              Width = 209
              Height = 17
              Caption = 'Gerar duplicata mercantil'
              DataField = 'NF_GERAR_DUPLICATA'
              DataSource = dsconfig
              TabOrder = 8
              ValueChecked = '1'
              ValueUnchecked = '0'
            end
            object GroupBox32: TGroupBox
              Left = 430
              Top = 16
              Width = 117
              Height = 72
              Caption = 'Mapa Resumo - ECF'
              TabOrder = 9
              object Label61: TLabel
                Left = 8
                Top = 19
                Width = 96
                Height = 13
                Caption = 'N'#250'mero de Controle'
              end
              object DBEdit54: TDBEdit
                Left = 8
                Top = 35
                Width = 97
                Height = 21
                DataField = 'NR_CONTROLE_ECF'
                DataSource = dsconfig
                TabOrder = 0
              end
            end
          end
        end
        object PageSheet15: TPageSheet
          Left = 0
          Top = 21
          Width = 668
          Height = 324
          Caption = 'Industrializa'#231#227'o'
          DisplayMode = tdGlyph
          ImageIndex = 0
          Margin = 0
          PageIndex = 1
          TabColor = clWindow
          TabWidth = 0
          TransparentColor = clNone
          object RzGroupBox7: TRzGroupBox
            Left = 8
            Top = 4
            Width = 649
            Height = 74
            Caption = 'Nota de Entrada'
            TabOrder = 0
            object Label72: TLabel
              Left = 8
              Top = 21
              Width = 37
              Height = 13
              Caption = 'Cliente:'
            end
            object Label73: TLabel
              Left = 8
              Top = 45
              Width = 31
              Height = 13
              Caption = 'CFOP:'
            end
            object eCliente_Entrada: TRzDBButtonEdit
              Left = 56
              Top = 19
              Width = 73
              Height = 21
              DataSource = dsconfig
              DataField = 'IND_CLIE_ENTRADA'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              FocusColor = 11075583
              ParentFont = False
              TabOrder = 0
              OnExit = eCliente_EntradaExit
              OnKeyPress = eCliente_EntradaKeyPress
              ButtonGlyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFCFDFEE7EEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBFD6494BA2166
                9C80A8C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFAFCFD6E9BC1548CBB88B4DC175E96FFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFD7AA3C96396C49CC0E36598
                C63070A4FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEE8CEB9DAB292D2A57FCFA07BD1
                A684ADA09874A1CBAACAE775A3CD3F7AAEDEE8F1FFFFFFFFFFFFFFFFFFFFFEFE
                E8C9AFE7C8ADF4E0CCF6E4D2F6E4D0F2DCC7DEB99BC6A79085ADD44F86BAE1EA
                F3FFFFFFFFFFFFFFFFFFFFFFFFF1DBC7ECCFB6F7E7D8F4DDC7F2D7BCF2D5BAF3
                DAC1F6E3D1DEBA9C9F9694E3ECF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDCDB1
                F6E6D6F5E0CBF3DAC1F3D9BFF2D7BCF2D6BAF3DAC1F2DDC8D1A787FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFEFCDAEF8EBDEF4DEC7F4DCC5F3DBC2F3D9C0F2
                D8BDF2D6BCF7E5D2D2A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D2B4
                F8ECE0F5E0CBF4DEC8F4DDC6F3DBC3F3DAC1F3D9BFF7E6D5D6AA86FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFF7DBC0F8EADDF6E6D5F5E0CBF4DFC9F4DDC7F4
                DCC4F5E0CAF4E1CFDEB898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE9D7
                F7E1CBF9EDE2F6E6D5F5E1CDF5E0CAF5E2CFF8E9DCEBCEB4EBD3BEFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAE3CDF8E1CCF9EBDDF8EDE1F8ECE1F7
                E8D9EFD4BCECCFB6FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFBEAD9F9DCC2F5D5B8F3D2B4F2D3B7F4E0CDFFFFFEFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
              ButtonNumGlyphs = 1
              ButtonKind = bkCustom
              ButtonShortCut = 117
              ButtonWidth = 24
              OnButtonClick = eCliente_EntradaButtonClick
            end
            object enome_cliente_entrada: TDBEdit
              Left = 131
              Top = 19
              Width = 502
              Height = 21
              CharCase = ecUpperCase
              Color = clBtnFace
              DataField = 'IND_CLIE_ENTRADA_DESC'
              DataSource = dsconfig
              Enabled = False
              TabOrder = 2
            end
            object enome_cfop_entrada: TDBEdit
              Left = 131
              Top = 42
              Width = 502
              Height = 21
              Color = clBtnFace
              DataField = 'IND_CFOP_ENTRADA_DESC'
              DataSource = dsconfig
              Enabled = False
              TabOrder = 3
            end
            object eCfop_Entrada: TRzDBButtonEdit
              Left = 56
              Top = 42
              Width = 73
              Height = 21
              DataSource = dsconfig
              DataField = 'IND_CFOP_ENTRADA'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              FocusColor = 11075583
              ParentFont = False
              TabOrder = 1
              OnExit = eCfop_EntradaExit
              OnKeyPress = eCliente_EntradaKeyPress
              ButtonGlyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFCFDFEE7EEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBFD6494BA2166
                9C80A8C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFAFCFD6E9BC1548CBB88B4DC175E96FFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFD7AA3C96396C49CC0E36598
                C63070A4FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEE8CEB9DAB292D2A57FCFA07BD1
                A684ADA09874A1CBAACAE775A3CD3F7AAEDEE8F1FFFFFFFFFFFFFFFFFFFFFEFE
                E8C9AFE7C8ADF4E0CCF6E4D2F6E4D0F2DCC7DEB99BC6A79085ADD44F86BAE1EA
                F3FFFFFFFFFFFFFFFFFFFFFFFFF1DBC7ECCFB6F7E7D8F4DDC7F2D7BCF2D5BAF3
                DAC1F6E3D1DEBA9C9F9694E3ECF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDCDB1
                F6E6D6F5E0CBF3DAC1F3D9BFF2D7BCF2D6BAF3DAC1F2DDC8D1A787FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFEFCDAEF8EBDEF4DEC7F4DCC5F3DBC2F3D9C0F2
                D8BDF2D6BCF7E5D2D2A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D2B4
                F8ECE0F5E0CBF4DEC8F4DDC6F3DBC3F3DAC1F3D9BFF7E6D5D6AA86FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFF7DBC0F8EADDF6E6D5F5E0CBF4DFC9F4DDC7F4
                DCC4F5E0CAF4E1CFDEB898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE9D7
                F7E1CBF9EDE2F6E6D5F5E1CDF5E0CAF5E2CFF8E9DCEBCEB4EBD3BEFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAE3CDF8E1CCF9EBDDF8EDE1F8ECE1F7
                E8D9EFD4BCECCFB6FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFBEAD9F9DCC2F5D5B8F3D2B4F2D3B7F4E0CDFFFFFEFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
              ButtonNumGlyphs = 1
              ButtonKind = bkCustom
              ButtonShortCut = 117
              ButtonWidth = 24
              OnButtonClick = eCfop_EntradaButtonClick
            end
          end
          object RzGroupBox6: TRzGroupBox
            Left = 8
            Top = 84
            Width = 649
            Height = 74
            Caption = 'Nota de Sa'#237'da'
            TabOrder = 1
            object Label74: TLabel
              Left = 8
              Top = 21
              Width = 37
              Height = 13
              Caption = 'Cliente:'
            end
            object Label75: TLabel
              Left = 8
              Top = 45
              Width = 31
              Height = 13
              Caption = 'CFOP:'
            end
            object eCliente_Saida: TRzDBButtonEdit
              Left = 56
              Top = 19
              Width = 73
              Height = 21
              DataSource = dsconfig
              DataField = 'IND_CLIE_SAIDA'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              FocusColor = 11075583
              ParentFont = False
              TabOrder = 0
              OnExit = eCliente_SaidaExit
              OnKeyPress = eCliente_EntradaKeyPress
              ButtonGlyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFCFDFEE7EEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBFD6494BA2166
                9C80A8C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFAFCFD6E9BC1548CBB88B4DC175E96FFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFD7AA3C96396C49CC0E36598
                C63070A4FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEE8CEB9DAB292D2A57FCFA07BD1
                A684ADA09874A1CBAACAE775A3CD3F7AAEDEE8F1FFFFFFFFFFFFFFFFFFFFFEFE
                E8C9AFE7C8ADF4E0CCF6E4D2F6E4D0F2DCC7DEB99BC6A79085ADD44F86BAE1EA
                F3FFFFFFFFFFFFFFFFFFFFFFFFF1DBC7ECCFB6F7E7D8F4DDC7F2D7BCF2D5BAF3
                DAC1F6E3D1DEBA9C9F9694E3ECF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDCDB1
                F6E6D6F5E0CBF3DAC1F3D9BFF2D7BCF2D6BAF3DAC1F2DDC8D1A787FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFEFCDAEF8EBDEF4DEC7F4DCC5F3DBC2F3D9C0F2
                D8BDF2D6BCF7E5D2D2A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D2B4
                F8ECE0F5E0CBF4DEC8F4DDC6F3DBC3F3DAC1F3D9BFF7E6D5D6AA86FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFF7DBC0F8EADDF6E6D5F5E0CBF4DFC9F4DDC7F4
                DCC4F5E0CAF4E1CFDEB898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE9D7
                F7E1CBF9EDE2F6E6D5F5E1CDF5E0CAF5E2CFF8E9DCEBCEB4EBD3BEFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAE3CDF8E1CCF9EBDDF8EDE1F8ECE1F7
                E8D9EFD4BCECCFB6FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFBEAD9F9DCC2F5D5B8F3D2B4F2D3B7F4E0CDFFFFFEFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
              ButtonNumGlyphs = 1
              ButtonKind = bkCustom
              ButtonShortCut = 117
              ButtonWidth = 24
              OnButtonClick = eCliente_SaidaButtonClick
            end
            object enome_cliente_saida: TDBEdit
              Left = 131
              Top = 19
              Width = 502
              Height = 21
              CharCase = ecUpperCase
              Color = clBtnFace
              DataField = 'IND_CLIE_SAIDA_DESC'
              DataSource = dsconfig
              Enabled = False
              TabOrder = 2
            end
            object enome_cfop_saida: TDBEdit
              Left = 131
              Top = 42
              Width = 502
              Height = 21
              Color = clBtnFace
              DataField = 'IND_CFOP_SAIDA_DESC'
              DataSource = dsconfig
              Enabled = False
              TabOrder = 3
            end
            object eCfop_Saida: TRzDBButtonEdit
              Left = 56
              Top = 42
              Width = 73
              Height = 21
              DataSource = dsconfig
              DataField = 'IND_CFOP_SAIDA'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              FocusColor = 11075583
              ParentFont = False
              TabOrder = 1
              OnExit = eCfop_SaidaExit
              OnKeyPress = eCliente_EntradaKeyPress
              ButtonGlyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFCFDFEE7EEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBFD6494BA2166
                9C80A8C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFAFCFD6E9BC1548CBB88B4DC175E96FFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFD7AA3C96396C49CC0E36598
                C63070A4FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEE8CEB9DAB292D2A57FCFA07BD1
                A684ADA09874A1CBAACAE775A3CD3F7AAEDEE8F1FFFFFFFFFFFFFFFFFFFFFEFE
                E8C9AFE7C8ADF4E0CCF6E4D2F6E4D0F2DCC7DEB99BC6A79085ADD44F86BAE1EA
                F3FFFFFFFFFFFFFFFFFFFFFFFFF1DBC7ECCFB6F7E7D8F4DDC7F2D7BCF2D5BAF3
                DAC1F6E3D1DEBA9C9F9694E3ECF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDCDB1
                F6E6D6F5E0CBF3DAC1F3D9BFF2D7BCF2D6BAF3DAC1F2DDC8D1A787FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFEFCDAEF8EBDEF4DEC7F4DCC5F3DBC2F3D9C0F2
                D8BDF2D6BCF7E5D2D2A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D2B4
                F8ECE0F5E0CBF4DEC8F4DDC6F3DBC3F3DAC1F3D9BFF7E6D5D6AA86FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFF7DBC0F8EADDF6E6D5F5E0CBF4DFC9F4DDC7F4
                DCC4F5E0CAF4E1CFDEB898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE9D7
                F7E1CBF9EDE2F6E6D5F5E1CDF5E0CAF5E2CFF8E9DCEBCEB4EBD3BEFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAE3CDF8E1CCF9EBDDF8EDE1F8ECE1F7
                E8D9EFD4BCECCFB6FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFBEAD9F9DCC2F5D5B8F3D2B4F2D3B7F4E0CDFFFFFEFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
              ButtonNumGlyphs = 1
              ButtonKind = bkCustom
              ButtonShortCut = 117
              ButtonWidth = 24
              OnButtonClick = eCfop_SaidaButtonClick
            end
          end
          object RzGroupBox9: TRzGroupBox
            Left = 8
            Top = 164
            Width = 649
            Height = 74
            Caption = 'Perda'
            TabOrder = 2
            object Label76: TLabel
              Left = 8
              Top = 21
              Width = 37
              Height = 13
              Caption = 'Cliente:'
            end
            object Label77: TLabel
              Left = 8
              Top = 45
              Width = 31
              Height = 13
              Caption = 'CFOP:'
            end
            object eCliente_Perda: TRzDBButtonEdit
              Left = 56
              Top = 19
              Width = 73
              Height = 21
              DataSource = dsconfig
              DataField = 'IND_CLIE_PERDA'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              FocusColor = 11075583
              ParentFont = False
              TabOrder = 0
              OnExit = eCliente_PerdaExit
              OnKeyPress = eCliente_EntradaKeyPress
              ButtonGlyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFCFDFEE7EEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBFD6494BA2166
                9C80A8C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFAFCFD6E9BC1548CBB88B4DC175E96FFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFD7AA3C96396C49CC0E36598
                C63070A4FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEE8CEB9DAB292D2A57FCFA07BD1
                A684ADA09874A1CBAACAE775A3CD3F7AAEDEE8F1FFFFFFFFFFFFFFFFFFFFFEFE
                E8C9AFE7C8ADF4E0CCF6E4D2F6E4D0F2DCC7DEB99BC6A79085ADD44F86BAE1EA
                F3FFFFFFFFFFFFFFFFFFFFFFFFF1DBC7ECCFB6F7E7D8F4DDC7F2D7BCF2D5BAF3
                DAC1F6E3D1DEBA9C9F9694E3ECF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDCDB1
                F6E6D6F5E0CBF3DAC1F3D9BFF2D7BCF2D6BAF3DAC1F2DDC8D1A787FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFEFCDAEF8EBDEF4DEC7F4DCC5F3DBC2F3D9C0F2
                D8BDF2D6BCF7E5D2D2A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D2B4
                F8ECE0F5E0CBF4DEC8F4DDC6F3DBC3F3DAC1F3D9BFF7E6D5D6AA86FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFF7DBC0F8EADDF6E6D5F5E0CBF4DFC9F4DDC7F4
                DCC4F5E0CAF4E1CFDEB898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE9D7
                F7E1CBF9EDE2F6E6D5F5E1CDF5E0CAF5E2CFF8E9DCEBCEB4EBD3BEFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAE3CDF8E1CCF9EBDDF8EDE1F8ECE1F7
                E8D9EFD4BCECCFB6FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFBEAD9F9DCC2F5D5B8F3D2B4F2D3B7F4E0CDFFFFFEFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
              ButtonNumGlyphs = 1
              ButtonKind = bkCustom
              ButtonShortCut = 117
              ButtonWidth = 24
              OnButtonClick = eCliente_PerdaButtonClick
            end
            object DBEdit9: TDBEdit
              Left = 131
              Top = 19
              Width = 502
              Height = 21
              CharCase = ecUpperCase
              Color = clBtnFace
              DataField = 'IND_CLIE_PERDA_DESC'
              DataSource = dsconfig
              Enabled = False
              TabOrder = 2
            end
            object DBEdit57: TDBEdit
              Left = 131
              Top = 42
              Width = 502
              Height = 21
              Color = clBtnFace
              DataField = 'IND_CFOP_PERDA_DESC'
              DataSource = dsconfig
              Enabled = False
              TabOrder = 3
            end
            object eCfop_Perda: TRzDBButtonEdit
              Left = 56
              Top = 42
              Width = 73
              Height = 21
              DataSource = dsconfig
              DataField = 'IND_CFOP_PERDA'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              FocusColor = 11075583
              ParentFont = False
              TabOrder = 1
              OnExit = eCfop_PerdaExit
              OnKeyPress = eCliente_EntradaKeyPress
              ButtonGlyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFCFDFEE7EEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBFD6494BA2166
                9C80A8C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFAFCFD6E9BC1548CBB88B4DC175E96FFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFD7AA3C96396C49CC0E36598
                C63070A4FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEE8CEB9DAB292D2A57FCFA07BD1
                A684ADA09874A1CBAACAE775A3CD3F7AAEDEE8F1FFFFFFFFFFFFFFFFFFFFFEFE
                E8C9AFE7C8ADF4E0CCF6E4D2F6E4D0F2DCC7DEB99BC6A79085ADD44F86BAE1EA
                F3FFFFFFFFFFFFFFFFFFFFFFFFF1DBC7ECCFB6F7E7D8F4DDC7F2D7BCF2D5BAF3
                DAC1F6E3D1DEBA9C9F9694E3ECF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDCDB1
                F6E6D6F5E0CBF3DAC1F3D9BFF2D7BCF2D6BAF3DAC1F2DDC8D1A787FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFEFCDAEF8EBDEF4DEC7F4DCC5F3DBC2F3D9C0F2
                D8BDF2D6BCF7E5D2D2A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D2B4
                F8ECE0F5E0CBF4DEC8F4DDC6F3DBC3F3DAC1F3D9BFF7E6D5D6AA86FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFF7DBC0F8EADDF6E6D5F5E0CBF4DFC9F4DDC7F4
                DCC4F5E0CAF4E1CFDEB898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE9D7
                F7E1CBF9EDE2F6E6D5F5E1CDF5E0CAF5E2CFF8E9DCEBCEB4EBD3BEFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAE3CDF8E1CCF9EBDDF8EDE1F8ECE1F7
                E8D9EFD4BCECCFB6FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFBEAD9F9DCC2F5D5B8F3D2B4F2D3B7F4E0CDFFFFFEFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
              ButtonNumGlyphs = 1
              ButtonKind = bkCustom
              ButtonShortCut = 117
              ButtonWidth = 24
              OnButtonClick = eCfop_PerdaButtonClick
            end
          end
        end
      end
    end
    object PageSheet13: TPageSheet
      Left = 0
      Top = 21
      Width = 668
      Height = 352
      Caption = 'Emitente'
      DisplayMode = tdGlyph
      ImageIndex = 0
      Margin = 0
      PageIndex = 4
      TabColor = clWindow
      TabWidth = 0
      TransparentColor = clNone
      object pemitente2: TPanel
        Left = 8
        Top = 8
        Width = 414
        Height = 300
        BevelOuter = bvNone
        Enabled = False
        TabOrder = 0
        object Label8: TLabel
          Left = 10
          Top = 16
          Width = 37
          Height = 13
          Caption = 'C'#243'digo:'
        end
        object Label9: TLabel
          Left = 10
          Top = 40
          Width = 64
          Height = 13
          Caption = 'Raz'#227'o Social:'
        end
        object Label10: TLabel
          Left = 10
          Top = 64
          Width = 56
          Height = 13
          Caption = 'N.Fantasia:'
        end
        object Label11: TLabel
          Left = 10
          Top = 88
          Width = 49
          Height = 13
          Caption = 'Endere'#231'o:'
        end
        object Label12: TLabel
          Left = 10
          Top = 112
          Width = 32
          Height = 13
          Caption = 'Bairro:'
        end
        object Label13: TLabel
          Left = 10
          Top = 136
          Width = 37
          Height = 13
          Caption = 'Cidade:'
        end
        object Label14: TLabel
          Left = 152
          Top = 160
          Width = 17
          Height = 13
          Caption = 'UF:'
        end
        object Label15: TLabel
          Left = 233
          Top = 160
          Width = 23
          Height = 13
          Caption = 'CEP:'
        end
        object Label16: TLabel
          Left = 10
          Top = 184
          Width = 29
          Height = 13
          Caption = 'CNPJ:'
        end
        object Label17: TLabel
          Left = 258
          Top = 184
          Width = 14
          Height = 13
          Caption = 'IE:'
        end
        object Label18: TLabel
          Left = 194
          Top = 208
          Width = 28
          Height = 13
          Caption = 'Email:'
        end
        object Label19: TLabel
          Left = 10
          Top = 232
          Width = 59
          Height = 13
          Caption = 'Home-Page:'
        end
        object Label20: TLabel
          Left = 10
          Top = 256
          Width = 65
          Height = 13
          Caption = 'Respons'#225'vel:'
        end
        object Label21: TLabel
          Left = 10
          Top = 283
          Width = 37
          Height = 13
          Caption = 'Celular:'
        end
        object Label37: TLabel
          Left = 268
          Top = 112
          Width = 28
          Height = 13
          Caption = 'Fone:'
        end
        object Label55: TLabel
          Left = 308
          Top = 283
          Width = 59
          Height = 13
          Caption = 'Vencimento:'
        end
        object Label23: TLabel
          Left = 254
          Top = 136
          Width = 84
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'C'#243'd.Municipio:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label24: TLabel
          Left = 10
          Top = 160
          Width = 35
          Height = 13
          AutoSize = False
          Caption = 'IBGE:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label25: TLabel
          Left = 10
          Top = 208
          Width = 33
          Height = 13
          AutoSize = False
          Caption = 'IM:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object DBEdit3: TDBEdit
          Left = 90
          Top = 12
          Width = 50
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CODIGO'
          DataSource = dsemitente
          Enabled = False
          TabOrder = 0
          OnKeyPress = enovadata_inventarioKeyPress
        end
        object enome: TDBEdit
          Left = 90
          Top = 36
          Width = 313
          Height = 21
          CharCase = ecUpperCase
          DataField = 'NOME'
          DataSource = dsemitente
          TabOrder = 1
          OnKeyPress = enovadata_inventarioKeyPress
        end
        object DBEdit5: TDBEdit
          Left = 90
          Top = 60
          Width = 313
          Height = 21
          CharCase = ecUpperCase
          DataField = 'FANTASIA'
          DataSource = dsemitente
          TabOrder = 2
          OnKeyPress = enovadata_inventarioKeyPress
        end
        object DBEdit6: TDBEdit
          Left = 90
          Top = 84
          Width = 313
          Height = 21
          CharCase = ecUpperCase
          DataField = 'ENDERECO'
          DataSource = dsemitente
          TabOrder = 3
          OnKeyPress = enovadata_inventarioKeyPress
        end
        object DBEdit7: TDBEdit
          Left = 90
          Top = 108
          Width = 175
          Height = 21
          CharCase = ecUpperCase
          DataField = 'BAIRRO'
          DataSource = dsemitente
          TabOrder = 4
          OnKeyPress = enovadata_inventarioKeyPress
        end
        object DBEdit8: TDBEdit
          Left = 125
          Top = 132
          Width = 140
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CIDADE'
          DataSource = dsemitente
          TabOrder = 6
          OnExit = DBEdit8Exit
          OnKeyPress = enovadata_inventarioKeyPress
        end
        object DBEdit10: TDBEdit
          Left = 259
          Top = 156
          Width = 89
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CEP'
          DataSource = dsemitente
          TabOrder = 10
          OnKeyPress = enovadata_inventarioKeyPress
        end
        object DBEdit11: TDBEdit
          Left = 90
          Top = 180
          Width = 145
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CNPJ'
          DataSource = dsemitente
          MaxLength = 18
          TabOrder = 11
          OnKeyPress = enovadata_inventarioKeyPress
        end
        object DBEdit12: TDBEdit
          Left = 274
          Top = 180
          Width = 129
          Height = 21
          CharCase = ecUpperCase
          DataField = 'IE'
          DataSource = dsemitente
          TabOrder = 12
          OnKeyPress = enovadata_inventarioKeyPress
        end
        object DBEdit13: TDBEdit
          Left = 224
          Top = 204
          Width = 180
          Height = 21
          CharCase = ecUpperCase
          DataField = 'EMAIL'
          DataSource = dsemitente
          TabOrder = 14
          OnKeyPress = enovadata_inventarioKeyPress
        end
        object DBEdit14: TDBEdit
          Left = 90
          Top = 228
          Width = 314
          Height = 21
          CharCase = ecUpperCase
          DataField = 'HOMEPAGE'
          DataSource = dsemitente
          TabOrder = 15
          OnKeyPress = enovadata_inventarioKeyPress
        end
        object DBEdit15: TDBEdit
          Left = 90
          Top = 252
          Width = 314
          Height = 21
          CharCase = ecUpperCase
          DataField = 'RESPONSAVEL'
          DataSource = dsemitente
          TabOrder = 16
          OnKeyPress = enovadata_inventarioKeyPress
        end
        object DBEdit16: TDBEdit
          Left = 90
          Top = 276
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CELULAR'
          DataSource = dsemitente
          TabOrder = 17
          OnKeyPress = enovadata_inventarioKeyPress
        end
        object DBEdit18: TDBEdit
          Left = 306
          Top = 108
          Width = 97
          Height = 21
          CharCase = ecUpperCase
          DataField = 'TELEFONE'
          DataSource = dsemitente
          MaxLength = 13
          TabOrder = 5
          OnKeyPress = enovadata_inventarioKeyPress
        end
        object DBEdit53: TDBEdit
          Left = 372
          Top = 276
          Width = 32
          Height = 21
          CharCase = ecUpperCase
          DataField = 'DIA_VENCIMENTO_CHAVE'
          DataSource = dsemitente
          Enabled = False
          TabOrder = 18
          OnKeyPress = enovadata_inventarioKeyPress
        end
        object euf: TwwDBComboBox
          Left = 172
          Top = 156
          Width = 49
          Height = 21
          ShowButton = True
          Style = csDropDown
          MapList = False
          AllowClearKey = False
          CharCase = ecUpperCase
          DataField = 'UF'
          DataSource = dsemitente
          DropDownCount = 8
          ItemHeight = 0
          Items.Strings = (
            'AC'
            'AL'
            'AP'
            'AM'
            'BA'
            'CE'
            'DF'
            'ES'
            'EX'
            'GO'
            'MA'
            'MT'
            'MS'
            'MG'
            'PA'
            'PB'
            'PR'
            'PE'
            'PI'
            'RR'
            'RO'
            'RJ'
            'RN'
            'RS'
            'SC'
            'SP'
            'SE'
            'TO')
          ItemIndex = 6
          Sorted = False
          TabOrder = 9
          UnboundDataType = wwDefault
          OnKeyPress = enovadata_inventarioKeyPress
        end
        object AdvGlowButton5: TAdvGlowButton
          Left = 88
          Top = 130
          Width = 35
          Height = 24
          Hint = 'Pesquisa o Municipio,IBGE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 49
          FocusType = ftHot
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D494844520000001E0000001B08060000006BFD3F
            11000000097048597300000B1300000B1301009A9C180000000467414D410000
            B18E7CFB5193000000206348524D00007A25000080830000F9FF000080E90000
            75300000EA6000003A980000176F925FC546000006C74944415478DA62FCFFFF
            3FC3400080006262182000104003663140000D98C500013460160304D080590C
            10402CD8041F3C79059164616678F0F815FBDD872F5CD8D8584C801900230B30
            323230FCFDFBEF3D273BDB3E2E4EB67B9FBFFE08FDF3F79F2250F81F3717C727
            A019FF7FFCF875EECDFB4FB724C4045EC9488880D433000410568BBF7EFB0924
            FF33B0B2B2307CFBFED318E89059CCCC4C528C0C8C186AFFFEFBC7C0C6CAB259
            5B5576E1874FDF5C6FDF7F3E17A8166CEE3F5056056146C64FEC6CAC7B850579
            2B9999986E8284000208ABC5EF3F7E01AA65046BBCFBE845342B0BB314131366
            ACFCFBF71F64E9115303D57C1E4EF64F8F2EBF8902590AC46079668452BE5FBF
            7E07BE7BFFE5D95BFECFB9C010F90F10402CF8E20158B8887DFEF25D1FE4084C
            4BFF313031319E06FA340318CCF7AFDE7A2C040C1D2B6C0E042726A0F8F71FBF
            4C9FBD7CC70274F06F8000C2AAEAD79F3FE0207CF4F4B5DE9F3FFFACD12D06C5
            11C8206D35B91C692991ABEF3F7C61F8F9EB0F231323D3070686FFB83CC1C0CE
            CEFA5C4488EF8FA8301F03400061B5F8F7EF3F20CCF8EDC72F3758910AA2FFFC
            FDCBF0EBD71F067E5E2E06171B7D900F026EDD7B5A0B8C1A5D61419E77ACACCC
            CB7E031D0D8A02907A640C12E3E4605B25252EF49F878B83012080B00635D097
            0C1F3F7D137AF5FA833BC8DABF40CB80863208F2F330A8294A319819A8325CBF
            F384E1F683E795FF80BE077AD51D985AD38D7494D75FBC7EBF1D9438415101D2
            CB040C2D5080313333BF11E0E3BEF2FAED4786E72FDF33000410568BF979B941
            AED3FAF9EBB70C1F3727030F0F278394B82083B48430031F0F1758CD959B8FC0
            BE00A57C60D05B7FFAF26D8E9EA6FC7D3D4D3986CF5F7E00F13706602A07E68A
            1F0C3F7EFDF90FCC6A7DF2D2A2976EDE7BC6000C15268000C26A315013F3EF3F
            7F9579B93985988029F4D7EFBF0C8F9FBD6578FAE23D030F370783A6B234032F
            907E0AF2D57F26A0C57F198049D902E8580B506A78F1FA03C3C3676F189EBD78
            07CC9A3F80FAFF7C55969738FC9EE72BB86C00266A1E8000C26A31308B889EBF
            7AAF08A8001C4CE06806C715246F02F3EA6B6539F1A4771FBE047CFEFADD8F83
            9DEB9B9589BAE49D072FD88E9DBD0EB618940099A1291C68D90BA0E577418950
            495E9C71EBDE33CC000184C3C7DF9D80966A00F32FD6D4F9F4C55B163E5ECE93
            065A8A3B9EBE7CD7A9A624F50C1877974F5EB8ADF8E7CF5F06903E66561678B6
            039660AB80C1FC02E48BCB371EB2EC3F7E85052080B0A6EAD7EF3E59333331B2
            62936304271646AE078F5EAB007DF2474B45E6F6ED7BCF5C8F9DBD29CE08092D
            06E4EC0774E7375161DE8B9FBE7CFFFFF9F33786376F3FF1DFBAFB8C07208098
            B01BCEF015E4585CF91168F06721419E8FC00284E1D6FDE741D76E3F5E008C63
            2EF4FC0E8A1AA09A87922282DB39D859199EBC78CBB461E7295066FB09104058
            2D0626A04DC0A0FE012A44FE61C98F405F6D959312B971E1DA03F5ABB71EF502
            B30A3FA8E040CFBB7F80795A5880F7280707DB67A0C31864A544788145F04FA0
            196F0002086B1CAB2B499FFAF8F97BE18F9FBFC2818A5480F1048F6CA0BDEF79
            B8D85703A343ECEBD7EF71C05AEB3FD0574F215E84945B607F83F32E1383B4A4
            F02271510150AA673878E2EA576061F35F889F9B0D2080B05A0CCC77BF4485F9
            67898BF02F7BF5E6031F30E5B2018BC8FF205F000B042660283CFEF8F92BAF90
            20EF6260E8CE018A43A385115C60804A38A083198196FD979716790ACD520C9F
            3E7FFDAB2023FE9F8B83ED2F400061B518986A8196FF06168FBFBF7CFEF6E30B
            A85C06590AB4089C373555644035D87B60B6790F8A577636166891C8CAA0AFA9
            C870F3DE5370360417BDC0542E2D21C000CA4A06DA8AFF9FBD7A0FCA8EBF0002
            880957CA056503A04F195EBDF9083498155C09B0B2B03002F32E83A49820C872
            C60F1FBF00F157783E07FA8A1918E78C4202DC204BC0E6DCBAFB14AC1F182560
            6C6DA2C16066A8CA00104038AAC5FFCCC0A2105483FF03662B7E6041F00B5856
            FF7CF6FCED7F60826102D6A7FF1E3F7BCDC4C6C60A0C59C63FE04407D4C4CBC9
            FEF7EBB7EF8C4F5FFE0515B9C0907B072EE980A99EE1FFBFFF4C40DF339EBA78
            E72F073B0B03400031E128B9D881F1F01FE4E20F9FBEFE04169BBFE5A5C5FE7D
            F8FCF5BFA498F0BFDBF79F31DE7DF8F23FA87A03D6C5209FFD070529C8A2FB8F
            5F830A20C68327AF3102132013304533DF7BF81228FE8AE1FBCF9FFF81C530A7
            86B22C2B4000BAEA2505401806C2B0A3AE7DA094EC2C8AF7BF5EA452FCD3BD37
            089319BEBFA895B6A575D49FE2D0F772482391E976EE453456F1FB11B5AE6CBA
            B3855C3D02C5BC15429D87695FA70A1EA233A437544BB378953E010600C1D442
            6D06AD16470000000049454E44AE426082}
          ParentShowHint = False
          ShowHint = True
          TabOrder = 19
          OnClick = AdvGlowButton5Click
          Appearance.BorderColor = 12179676
          Appearance.BorderColorHot = clHighlight
          Appearance.BorderColorDown = clHighlight
          Appearance.BorderColorChecked = clBlack
          Appearance.ColorTo = 12179676
          Appearance.ColorChecked = 12179676
          Appearance.ColorCheckedTo = 12179676
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 11899524
          Appearance.ColorDownTo = 11899524
          Appearance.ColorHot = 15717318
          Appearance.ColorHotTo = 15717318
          Appearance.ColorMirror = 12179676
          Appearance.ColorMirrorTo = 12179676
          Appearance.ColorMirrorHot = 15717318
          Appearance.ColorMirrorHotTo = 15717318
          Appearance.ColorMirrorDown = 11899524
          Appearance.ColorMirrorDownTo = 11899524
          Appearance.ColorMirrorChecked = 12179676
          Appearance.ColorMirrorCheckedTo = 12179676
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Appearance.GradientHot = ggVertical
          Appearance.GradientMirrorHot = ggVertical
          Appearance.GradientDown = ggVertical
          Appearance.GradientMirrorDown = ggVertical
          Appearance.GradientChecked = ggVertical
        end
        object ecodmunicipio: TDBEdit
          Left = 342
          Top = 132
          Width = 61
          Height = 21
          DataField = 'COD_MUNICIPIO_IBGE'
          DataSource = dsemitente
          TabOrder = 7
        end
        object DBEdit51: TDBEdit
          Left = 90
          Top = 156
          Width = 51
          Height = 21
          CharCase = ecUpperCase
          DataField = 'IBGE'
          DataSource = dsemitente
          TabOrder = 8
        end
        object DBEdit52: TDBEdit
          Left = 90
          Top = 204
          Width = 94
          Height = 21
          DataField = 'INSC_MUNICIPAL'
          DataSource = dsemitente
          TabOrder = 13
        end
      end
      object BitBtn4: TBitBtn
        Left = 119
        Top = 313
        Width = 105
        Height = 23
        Caption = 'Alterar'
        TabOrder = 1
        OnClick = BitBtn4Click
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0EEE08FBF913A8C3E24
          79282476283A843E8FB991E0EBE0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFB5D9B6308E34419F5186C9999AD2AA9AD1AA82C6953C964B307B33B4D0
          B6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB5DBBA248E296CBD82A7DAB486CB9765
          BB7C63B97B85CA97A4D8B365B67C237126B4D0B6FFFFFFFFFFFFFFFFFFE1F2E4
          32A04371C186A7DAB15FBB765BB97258B76F58B46E57B46E5AB673A4D8B268B7
          7E307F34E0ECE1FFFFFFFFFFFF8FD29F4BAF63A9DCB363C0785EBD7074C484D3
          EBD889CC9855B56B57B46D5BB673A5D9B3409A4D8EBB90FFFFFFFFFFFF3EB45C
          90D19E8CD39963C27378C886F1F9F3FEFEFEFCFDFC85CA9556B66C5AB87184CB
          9686C6993A8A3EFFFFFFFFFFFF26AF48A5DBAE6FC97E72C97FEFF8F0FEFEFEEA
          F6ECFEFEFEFAFCFB87CC955AB87066BD7C9FD6AE227E25FFFFFFFFFFFF2DB650
          A6DCB071CB7F65C672AFE0B6D1EDD562C06FB7E2BEFEFEFEFAFCFB8BCF9868C0
          7DA0D6AD228325FFFFFFFFFFFF4AC46B94D6A090D69A68C87563C56E60C36D60
          C26E60C16EB8E3BFFEFEFEE2F3E58AD0988ACD9C3B983FFFFFFFFFFFFF9ADEAC
          56BE6FAEE0B66CCB7967C77164C66F62C46D61C36D62C370B5E2BD6EC67DABDE
          B447A85D8EC793FFFFFFFFFFFFE4F7E948C4657ECD8FADE0B46CCB7969C97567
          C77167C77367C7746AC878ABDEB375C38832A042E1F1E3FFFFFFFFFFFFFFFFFF
          BFECCA3CC25B7ECD8FAEE0B691D79C76CD8276CD8291D79CADE0B477C78A26A0
          3AB5DFBDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0ECCB49C76858C17395D6A2A4
          DBADA4DBAD94D5A04FB86934B254B6E3C1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFE5F7E99EE2B054CA713ABF5B36BD5948C26A97DBAAE1F5E7FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      end
      object BitBtn5: TBitBtn
        Left = 231
        Top = 313
        Width = 98
        Height = 23
        Caption = 'Cancelar'
        Enabled = False
        TabOrder = 2
        OnClick = BitBtn5Click
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB9BCF0676DDF4048D643
          4BD74048D7353ED55960DCAFB2EEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFBABDF05760DF8A96F599A6FB93A0F8909EF6929FF67F8BED404AD9AEB1
          EEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBCBEF15F67E0919DF6657CFE3D58FE3B
          57FE3752FD2F4BF85269F6808CF03F48D9ABAFEDFFFFFFFFFFFFFFFFFFC0C3F1
          6970E298A5F76F87FE4260FE3E5CFE3956FE3552FE304DFE2B49FE556CFA828F
          F3404AD9ADB0EEFFFFFFFFFFFF8186E59EACF87891FE4E6DFE6D86FE8EA0FE40
          5EFE3B5AFE8195FE647AFE2C4BFE566DFE828FF5585FDCFFFFFFFFFFFF6B70DF
          AFBFFD5D7EFE5675FE95A8FEFEFEFEAAB8FE9AABFEFEFEFE9AAAFE3352FE3351
          FE96A5FD3840D5FFFFFFFFFFFF767BE1B0BFFC6788FE5D7EFE5D7EFEAEBEFEFE
          FEFEFEFEFEB8C4FE4867FE3A5AFE3C5BFE96A4FB444DD8FFFFFFFFFFFF7A7FE3
          B3C4FC6E91FE6387FE5F83FEA7B9FEFEFEFEFEFEFEAFBFFE4A6BFE4162FE4363
          FE99A8FB4950D9FFFFFFFFFFFF797EE3BACBFD7196FE6A8FFE9EB5FEFEFEFEC1
          CEFEB4C4FEFEFEFE92A8FE486AFE4668FE9FB0FD464ED8FFFFFFFFFFFF9499E8
          AFC0F893B2FE7098FE8FADFEB0C4FE678DFE5E84FE9BB1FE7694FE4F73FE718D
          FE92A2F66D73E0FFFFFFFFFFFFCDCFF4868FE7B0C1F895B6FE739CFE6F98FE6A
          92FE658DFE6188FE5B82FE7B99FE99A9F76069E0BCBEF1FFFFFFFFFFFFFFFFFF
          CECFF4878FE7B1C2F896B8FE78A2FE76A0FE729BFE6B94FE84A3FEA0B0F76871
          E2BEC0F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFD1F58891E8B1C3F8BDD2FDB9
          CDFCB7CAFCB7CAFDA6B7F7727BE4C2C4F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFCFD1F5989DE97E83E38084E47C82E3747AE18C91E6C7CAF3FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      end
      object BitBtn9: TBitBtn
        Left = 458
        Top = 215
        Width = 75
        Height = 25
        Caption = 'Incluir'
        TabOrder = 3
        OnClick = BitBtn9Click
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5F0E79FC8A5559B5E3F
          8E483B8C444C955297C19BE1EDE2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFC3DDC8569F6340984F7CC18E95CFA595CEA577BD88358C41408C47B9D5
          BBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6DFCB549F6363B377A7DAB486CB9765
          BB7C63B97B85CA97A4D8B357A96A34853CB9D5BBFFFFFFFFFFFFFFFFFFE9F3EB
          66AB7569B87CA7DAB15FBB765BB97258B76F58B46E57B46E5AB673A4D8B259A9
          6B418E48E2EEE3FFFFFFFFFFFFAED4B852AA67A9DCB363C0785EBD705FBB76FE
          FEFEFEFEFE58B76F57B46D5BB673A5D9B3378E4296C19AFFFFFFFFFFFF76B788
          89CB9788D2956AC57962C06F54AA64FEFEFEFEFEFE58B76F58B76F5AB87184CB
          967ABD8C4C9554FFFFFFFFFFFF69B17EA8DCB27CCE8974CB80FEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFE58B76F66BD7C9BD3AA3A8B43FFFFFFFFFFFF6DB482
          B5E1BD8AD49679C885FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE58B76F68C0
          7D9CD3A93E8E48FFFFFFFFFFFF81BF94ABDCB5A5DEAE80CA8B7BC8856DBC78FE
          FEFEFEFEFE5AAB695FBB765BB9728AD0987FC491579D60FFFFFFFFFFFFB8DBC3
          84C696D1EDD694D89F89D2937EC788FEFEFEFEFEFE78CC846AC27B6EC67DABDE
          B4449D56A0C8A6FFFFFFFFFFFFECF6EF7EBE92A9D9B6D7F0DB91D79C87CC9283
          CB8D8AD39589D39482D18DAEDFB66AB87C5AA266E6F1E8FFFFFFFFFFFFFFFFFF
          D1E9D975BA8BAEDBBADBF1DFB5E3BC9ADAA495D89FA4DEAEBFE7C478C18957A1
          65C4DEC9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1E9D97EBE9293CDA3C2E5CACE
          EAD3C8E8CDAEDCB76CB87E67AD77C7E0CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFECF6EFB9DCC482BF9570B6856DB48178B989B1D5BAE8F3EBFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      end
      object BitBtn10: TBitBtn
        Left = 538
        Top = 215
        Width = 75
        Height = 25
        Caption = 'Excluir'
        TabOrder = 4
        OnClick = BitBtn10Click
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5E7F79EA9E1536AC63E
          58BF3953BE4B66C197A7DBE1E6F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFC2C8ED5465CB3B51CB7479E78E91ED8E91ED7077E3324CC03F5BBDB9C4
          E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC5C9EE505FCC5B64DFA0A5F47D85EE5A
          62E8585CE67C83ED9D9FF3505CD63351B9B9C4E7FFFFFFFFFFFFFFFFFFE8EAF9
          6470D3606AE2A0ABF4535EEB4F5BE94C58E84D58E54B55E54F55E59DA1F3535F
          D53F5CBEE2E7F5FFFFFFFFFFFFACB0E94A55DAA1AAF55563EF5165ED4C58E84C
          58E84C58E84C58E84B57E55159E59EA2F4334FC395A5DBFFFFFFFFFFFF7277DC
          808BED7D90F65C72F24C58E84C58E84C58E84C58E84C58E84C58E84E5AE87A82
          EF747AE14B64C3FFFFFFFFFFFF6468DAA0AAF66F85F76781F5FEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFE4C58E85B65E9959BF03855BDFFFFFFFFFFFF696DDB
          AEB8F87E92F96F84EFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE4C58E85D69
          ED959CF03C54BFFFFFFFFFFFFF7C7EE2A4AEF49CAAF9768BEF535EEB535EEB53
          5EEB535EEB535EEB535EEB6276F1808DF3777EE8556AC8FFFFFFFFFFFFB5B4EF
          7C82E9CCD3FB8A9CF97D92F67489ED6B83F56B83F56B83F56B83F56278F2A3AE
          F73D4ECF9FAAE0FFFFFFFFFFFFEBEBFB7877E2A2A6F2D3DAFC8699F97E90EF79
          8DF07E93F77D91F8758BF7A7B5F7626DE25767CCE6E8F7FFFFFFFFFFFFFFFFFF
          CFCFF66F6FE0A9ACF1D7DBFCADB9F990A2F98A9CF99BA8FAB9C6FB6F7AE85361
          CDC3C8EDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFF67878E18D92ECBDC2F7CB
          D2F8C3CAF8A9B3F3656FE1636DD5C6CAEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFEBEBFBB6B5F07C7EE1696ADD676ADB7378DEAEB2EAE8E9F9FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      end
      object DBImage1: TDBImage
        Left = 424
        Top = 41
        Width = 233
        Height = 160
        DataField = 'LOGO'
        DataSource = dsemitente
        Stretch = True
        TabOrder = 5
      end
    end
    object PageSheet14: TPageSheet
      Left = 0
      Top = 21
      Width = 668
      Height = 352
      Caption = 'Equipamentos'
      DisplayMode = tdGlyph
      ImageIndex = 0
      Margin = 0
      PageIndex = 5
      TabColor = clWindow
      TabWidth = 0
      TransparentColor = clNone
      object GroupBox5: TGroupBox
        Left = 8
        Top = 208
        Width = 409
        Height = 129
        Caption = 'Balan'#231'a Retaguarda (A'#231'ougue/Horti-fruti...)'
        TabOrder = 0
        object Label39: TLabel
          Left = 8
          Top = 41
          Width = 274
          Height = 13
          Caption = 'Pasta de arquivos de Expota'#231#227'o: (Formato: c:\xxx\xxx\)'
        end
        object Label49: TLabel
          Left = 8
          Top = 81
          Width = 152
          Height = 13
          Caption = 'Programa da Balan'#231'a - Caminho'
        end
        object DBComboBox6: TDBComboBox
          Left = 8
          Top = 19
          Width = 385
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          DataField = 'BALANCA_MODELO'
          DataSource = dsconfig
          ItemHeight = 13
          Items.Strings = (
            '(NENHUM)'
            'FILIZOLA'
            'TOLEDO'
            'URANO')
          TabOrder = 0
        end
        object DBEdit41: TDBEdit
          Left = 8
          Top = 57
          Width = 385
          Height = 21
          DataField = 'BALANCA_CAMINHO'
          DataSource = dsconfig
          TabOrder = 1
        end
        object DBEdit48: TDBEdit
          Left = 8
          Top = 97
          Width = 385
          Height = 21
          DataField = 'BALANCA_PROGRAMA'
          DataSource = dsconfig
          TabOrder = 2
        end
      end
      object GroupBox6: TGroupBox
        Left = 8
        Top = 8
        Width = 409
        Height = 67
        Caption = 'Balan'#231'a Check-Out'
        TabOrder = 1
        object Label26: TLabel
          Left = 8
          Top = 24
          Width = 38
          Height = 13
          Caption = 'Modelo:'
        end
        object Label27: TLabel
          Left = 8
          Top = 46
          Width = 30
          Height = 13
          Caption = 'Porta:'
        end
        object DBComboBox7: TDBComboBox
          Left = 64
          Top = 19
          Width = 329
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          DataField = 'BALANCAPDV_MODELO'
          DataSource = dsconfig
          ItemHeight = 13
          Items.Strings = (
            '(NENHUM)'
            'FILIZOLA'
            'TOLEDO'
            'URANO')
          TabOrder = 0
        end
        object DBComboBox8: TDBComboBox
          Left = 64
          Top = 41
          Width = 113
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          DataField = 'BALANCAPDV_PORTA'
          DataSource = dsconfig
          ItemHeight = 13
          Items.Strings = (
            '(NENHUM)'
            'COM1'
            'COM2'
            'COM3'
            'COM4'
            'COM5'
            'COM6'
            'COM7'
            'COM8'
            'COM9')
          TabOrder = 1
        end
      end
      object GroupBox7: TGroupBox
        Left = 8
        Top = 80
        Width = 409
        Height = 66
        Caption = 'Impressora de Cheque'
        TabOrder = 2
        object Label28: TLabel
          Left = 8
          Top = 24
          Width = 38
          Height = 13
          Caption = 'Modelo:'
        end
        object Label29: TLabel
          Left = 8
          Top = 46
          Width = 30
          Height = 13
          Caption = 'Porta:'
        end
        object DBComboBox9: TDBComboBox
          Left = 64
          Top = 19
          Width = 329
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          DataField = 'IMPRESSORACHEQUE_MODELO'
          DataSource = dsconfig
          ItemHeight = 13
          Items.Strings = (
            '(NENHUM)'
            'BEMATECH')
          TabOrder = 0
        end
        object DBComboBox10: TDBComboBox
          Left = 64
          Top = 41
          Width = 113
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          DataField = 'IMPRESSORACHEQUE_PORTA'
          DataSource = dsconfig
          ItemHeight = 13
          Items.Strings = (
            '(NENHUM)'
            'COM1'
            'COM2'
            'COM3'
            'COM4'
            'COM5'
            'COM6'
            'COM7'
            'COM8'
            'COM9')
          TabOrder = 1
        end
      end
      object GroupBox8: TGroupBox
        Left = 8
        Top = 152
        Width = 409
        Height = 47
        Caption = 'Impressora de C'#243'digo de Barras'
        TabOrder = 3
        object Label30: TLabel
          Left = 8
          Top = 24
          Width = 38
          Height = 13
          Caption = 'Modelo:'
        end
        object DBComboBox11: TDBComboBox
          Left = 64
          Top = 19
          Width = 329
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          DataField = 'IMPRESSORABARRAS_MODELO'
          DataSource = dsconfig
          ItemHeight = 13
          Items.Strings = (
            '(NENHUM)'
            'ARGOX'
            'ZEBRA')
          TabOrder = 0
        end
      end
    end
    object PageSheet16: TPageSheet
      Left = 0
      Top = 21
      Width = 668
      Height = 352
      Caption = 'Plano de Contas'
      DisplayMode = tdGlyph
      ImageIndex = 0
      Margin = 0
      PageIndex = 6
      TabColor = clWindow
      TabWidth = 0
      TransparentColor = clNone
      object PageView1: TPageView
        Left = 0
        Top = 0
        Width = 668
        Height = 201
        ActivePage = PageSheet1
        ActivePageIndex = 0
        AdaptiveColors = True
        Align = alTop
        BackgroundColor = clBtnFace
        BackgroundKind = bkSolid
        Indent = 2
        Margin = 0
        Options = [pgBoldActiveTab]
        ShowTabs = True
        Spacing = 0
        TabHeight = 16
        TabOrder = 0
        TabStyle = tsFlat
        TopIndent = 3
        object PageSheet1: TPageSheet
          Left = 0
          Top = 20
          Width = 668
          Height = 181
          Caption = 'Vendas'
          DisplayMode = tdGlyph
          ImageIndex = 0
          Margin = 0
          PageIndex = 0
          TabColor = 15653559
          TabWidth = 0
          TransparentColor = clNone
          object GroupBox16: TGroupBox
            Left = 0
            Top = 0
            Width = 668
            Height = 46
            Align = alTop
            Caption = 'VENDA '#192' VISTA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object DBEdit28: TDBEdit
              Left = 8
              Top = 16
              Width = 64
              Height = 20
              DataField = 'PLANO_VENDA_AV'
              DataSource = dsconfig
              Enabled = False
              TabOrder = 0
            end
            object blocregiao: TBitBtn
              Left = 72
              Top = 16
              Width = 25
              Height = 21
              TabOrder = 1
              OnClick = blocregiaoClick
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFCFDFEE7EEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBFD6494BA2166
                9C80A8C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFAFCFD6E9BC1548CBB88B4DC175E96FFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFD7AA3C96396C49CC0E36598
                C63070A4FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEE8CEB9DAB292D2A57FCFA07BD1
                A684ADA09874A1CBAACAE775A3CD3F7AAEDEE8F1FFFFFFFFFFFFFFFFFFFFFEFE
                E8C9AFE7C8ADF4E0CCF6E4D2F6E4D0F2DCC7DEB99BC6A79085ADD44F86BAE1EA
                F3FFFFFFFFFFFFFFFFFFFFFFFFF1DBC7ECCFB6F7E7D8F4DDC7F2D7BCF2D5BAF3
                DAC1F6E3D1DEBA9C9F9694E3ECF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDCDB1
                F6E6D6F5E0CBF3DAC1F3D9BFF2D7BCF2D6BAF3DAC1F2DDC8D1A787FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFEFCDAEF8EBDEF4DEC7F4DCC5F3DBC2F3D9C0F2
                D8BDF2D6BCF7E5D2D2A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D2B4
                F8ECE0F5E0CBF4DEC8F4DDC6F3DBC3F3DAC1F3D9BFF7E6D5D6AA86FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFF7DBC0F8EADDF6E6D5F5E0CBF4DFC9F4DDC7F4
                DCC4F5E0CAF4E1CFDEB898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE9D7
                F7E1CBF9EDE2F6E6D5F5E1CDF5E0CAF5E2CFF8E9DCEBCEB4EBD3BEFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAE3CDF8E1CCF9EBDDF8EDE1F8ECE1F7
                E8D9EFD4BCECCFB6FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFBEAD9F9DCC2F5D5B8F3D2B4F2D3B7F4E0CDFFFFFEFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            end
            object DBEdit30: TDBEdit
              Left = 97
              Top = 16
              Width = 91
              Height = 20
              Color = clBtnFace
              DataField = 'PLANO_CONTA1'
              DataSource = dsconfig
              TabOrder = 2
            end
            object DBEdit20: TDBEdit
              Left = 190
              Top = 16
              Width = 217
              Height = 20
              Color = clBtnFace
              DataField = 'PLANO_CONTA10'
              DataSource = dsconfig
              TabOrder = 3
            end
          end
          object GroupBox17: TGroupBox
            Left = 0
            Top = 92
            Width = 668
            Height = 46
            Align = alTop
            Caption = 'DUPLICATAS'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            object DBEdit21: TDBEdit
              Left = 8
              Top = 16
              Width = 64
              Height = 20
              DataField = 'PLANO_DUPLICATA_NFE'
              DataSource = dsconfig
              Enabled = False
              TabOrder = 0
            end
            object BitBtn13: TBitBtn
              Left = 72
              Top = 16
              Width = 25
              Height = 21
              TabOrder = 1
              OnClick = BitBtn13Click
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFCFDFEE7EEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBFD6494BA2166
                9C80A8C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFAFCFD6E9BC1548CBB88B4DC175E96FFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFD7AA3C96396C49CC0E36598
                C63070A4FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEE8CEB9DAB292D2A57FCFA07BD1
                A684ADA09874A1CBAACAE775A3CD3F7AAEDEE8F1FFFFFFFFFFFFFFFFFFFFFEFE
                E8C9AFE7C8ADF4E0CCF6E4D2F6E4D0F2DCC7DEB99BC6A79085ADD44F86BAE1EA
                F3FFFFFFFFFFFFFFFFFFFFFFFFF1DBC7ECCFB6F7E7D8F4DDC7F2D7BCF2D5BAF3
                DAC1F6E3D1DEBA9C9F9694E3ECF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDCDB1
                F6E6D6F5E0CBF3DAC1F3D9BFF2D7BCF2D6BAF3DAC1F2DDC8D1A787FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFEFCDAEF8EBDEF4DEC7F4DCC5F3DBC2F3D9C0F2
                D8BDF2D6BCF7E5D2D2A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D2B4
                F8ECE0F5E0CBF4DEC8F4DDC6F3DBC3F3DAC1F3D9BFF7E6D5D6AA86FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFF7DBC0F8EADDF6E6D5F5E0CBF4DFC9F4DDC7F4
                DCC4F5E0CAF4E1CFDEB898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE9D7
                F7E1CBF9EDE2F6E6D5F5E1CDF5E0CAF5E2CFF8E9DCEBCEB4EBD3BEFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAE3CDF8E1CCF9EBDDF8EDE1F8ECE1F7
                E8D9EFD4BCECCFB6FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFBEAD9F9DCC2F5D5B8F3D2B4F2D3B7F4E0CDFFFFFEFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            end
            object DBEdit22: TDBEdit
              Left = 97
              Top = 16
              Width = 91
              Height = 20
              Color = clBtnFace
              DataField = 'PLANO_CONTA8'
              DataSource = dsconfig
              TabOrder = 2
            end
            object DBEdit23: TDBEdit
              Left = 190
              Top = 16
              Width = 217
              Height = 20
              Color = clBtnFace
              DataField = 'PLANO_CONTA80'
              DataSource = dsconfig
              TabOrder = 3
            end
          end
          object GroupBox30: TGroupBox
            Left = 0
            Top = 46
            Width = 668
            Height = 46
            Align = alTop
            Caption = 'VENDAS '#192' PRAZO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            object DBEdit4: TDBEdit
              Left = 8
              Top = 16
              Width = 64
              Height = 20
              DataField = 'PLANO_VENDA_AP'
              DataSource = dsconfig
              Enabled = False
              TabOrder = 0
            end
            object BitBtn1: TBitBtn
              Left = 72
              Top = 16
              Width = 25
              Height = 21
              TabOrder = 1
              OnClick = BitBtn1Click
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFCFDFEE7EEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBFD6494BA2166
                9C80A8C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFAFCFD6E9BC1548CBB88B4DC175E96FFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFD7AA3C96396C49CC0E36598
                C63070A4FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEE8CEB9DAB292D2A57FCFA07BD1
                A684ADA09874A1CBAACAE775A3CD3F7AAEDEE8F1FFFFFFFFFFFFFFFFFFFFFEFE
                E8C9AFE7C8ADF4E0CCF6E4D2F6E4D0F2DCC7DEB99BC6A79085ADD44F86BAE1EA
                F3FFFFFFFFFFFFFFFFFFFFFFFFF1DBC7ECCFB6F7E7D8F4DDC7F2D7BCF2D5BAF3
                DAC1F6E3D1DEBA9C9F9694E3ECF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDCDB1
                F6E6D6F5E0CBF3DAC1F3D9BFF2D7BCF2D6BAF3DAC1F2DDC8D1A787FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFEFCDAEF8EBDEF4DEC7F4DCC5F3DBC2F3D9C0F2
                D8BDF2D6BCF7E5D2D2A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D2B4
                F8ECE0F5E0CBF4DEC8F4DDC6F3DBC3F3DAC1F3D9BFF7E6D5D6AA86FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFF7DBC0F8EADDF6E6D5F5E0CBF4DFC9F4DDC7F4
                DCC4F5E0CAF4E1CFDEB898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE9D7
                F7E1CBF9EDE2F6E6D5F5E1CDF5E0CAF5E2CFF8E9DCEBCEB4EBD3BEFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAE3CDF8E1CCF9EBDDF8EDE1F8ECE1F7
                E8D9EFD4BCECCFB6FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFBEAD9F9DCC2F5D5B8F3D2B4F2D3B7F4E0CDFFFFFEFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            end
            object DBEdit55: TDBEdit
              Left = 97
              Top = 16
              Width = 91
              Height = 20
              Color = clBtnFace
              DataField = 'PLANO_CONTA2'
              DataSource = dsconfig
              TabOrder = 2
            end
            object DBEdit56: TDBEdit
              Left = 190
              Top = 16
              Width = 217
              Height = 20
              Color = clBtnFace
              DataField = 'PLANO_CONTA20'
              DataSource = dsconfig
              TabOrder = 3
            end
          end
        end
        object PageSheet2: TPageSheet
          Left = 0
          Top = 20
          Width = 668
          Height = 181
          Caption = 'Ordem de Servi'#231'o'
          DisplayMode = tdGlyph
          ImageIndex = 0
          Margin = 0
          PageIndex = 1
          TabColor = 13035201
          TabWidth = 0
          TransparentColor = clNone
          object GroupBox18: TGroupBox
            Left = 0
            Top = 0
            Width = 668
            Height = 46
            Align = alTop
            Caption = 'O.S. '#192' VISTA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object DBEdit24: TDBEdit
              Left = 8
              Top = 16
              Width = 64
              Height = 20
              DataField = 'PLANO_OS_AV'
              DataSource = dsconfig
              Enabled = False
              TabOrder = 0
            end
            object BitBtn14: TBitBtn
              Left = 72
              Top = 16
              Width = 25
              Height = 21
              TabOrder = 1
              OnClick = BitBtn14Click
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFCFDFEE7EEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBFD6494BA2166
                9C80A8C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFAFCFD6E9BC1548CBB88B4DC175E96FFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFD7AA3C96396C49CC0E36598
                C63070A4FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEE8CEB9DAB292D2A57FCFA07BD1
                A684ADA09874A1CBAACAE775A3CD3F7AAEDEE8F1FFFFFFFFFFFFFFFFFFFFFEFE
                E8C9AFE7C8ADF4E0CCF6E4D2F6E4D0F2DCC7DEB99BC6A79085ADD44F86BAE1EA
                F3FFFFFFFFFFFFFFFFFFFFFFFFF1DBC7ECCFB6F7E7D8F4DDC7F2D7BCF2D5BAF3
                DAC1F6E3D1DEBA9C9F9694E3ECF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDCDB1
                F6E6D6F5E0CBF3DAC1F3D9BFF2D7BCF2D6BAF3DAC1F2DDC8D1A787FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFEFCDAEF8EBDEF4DEC7F4DCC5F3DBC2F3D9C0F2
                D8BDF2D6BCF7E5D2D2A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D2B4
                F8ECE0F5E0CBF4DEC8F4DDC6F3DBC3F3DAC1F3D9BFF7E6D5D6AA86FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFF7DBC0F8EADDF6E6D5F5E0CBF4DFC9F4DDC7F4
                DCC4F5E0CAF4E1CFDEB898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE9D7
                F7E1CBF9EDE2F6E6D5F5E1CDF5E0CAF5E2CFF8E9DCEBCEB4EBD3BEFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAE3CDF8E1CCF9EBDDF8EDE1F8ECE1F7
                E8D9EFD4BCECCFB6FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFBEAD9F9DCC2F5D5B8F3D2B4F2D3B7F4E0CDFFFFFEFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            end
            object DBEdit25: TDBEdit
              Left = 97
              Top = 16
              Width = 91
              Height = 20
              Color = clBtnFace
              DataField = 'PLANO_CONTA3'
              DataSource = dsconfig
              TabOrder = 2
            end
            object DBEdit26: TDBEdit
              Left = 190
              Top = 16
              Width = 217
              Height = 20
              Color = clBtnFace
              DataField = 'PLANO_CONTA30'
              DataSource = dsconfig
              TabOrder = 3
            end
          end
          object GroupBox19: TGroupBox
            Left = 0
            Top = 46
            Width = 668
            Height = 46
            Align = alTop
            Caption = 'O.S. '#192' PRAZO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            object DBEdit27: TDBEdit
              Left = 8
              Top = 16
              Width = 64
              Height = 20
              DataField = 'PLANO_OS_AP'
              DataSource = dsconfig
              Enabled = False
              TabOrder = 0
            end
            object BitBtn15: TBitBtn
              Left = 72
              Top = 16
              Width = 25
              Height = 21
              TabOrder = 1
              OnClick = BitBtn15Click
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFCFDFEE7EEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBFD6494BA2166
                9C80A8C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFAFCFD6E9BC1548CBB88B4DC175E96FFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFD7AA3C96396C49CC0E36598
                C63070A4FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEE8CEB9DAB292D2A57FCFA07BD1
                A684ADA09874A1CBAACAE775A3CD3F7AAEDEE8F1FFFFFFFFFFFFFFFFFFFFFEFE
                E8C9AFE7C8ADF4E0CCF6E4D2F6E4D0F2DCC7DEB99BC6A79085ADD44F86BAE1EA
                F3FFFFFFFFFFFFFFFFFFFFFFFFF1DBC7ECCFB6F7E7D8F4DDC7F2D7BCF2D5BAF3
                DAC1F6E3D1DEBA9C9F9694E3ECF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDCDB1
                F6E6D6F5E0CBF3DAC1F3D9BFF2D7BCF2D6BAF3DAC1F2DDC8D1A787FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFEFCDAEF8EBDEF4DEC7F4DCC5F3DBC2F3D9C0F2
                D8BDF2D6BCF7E5D2D2A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D2B4
                F8ECE0F5E0CBF4DEC8F4DDC6F3DBC3F3DAC1F3D9BFF7E6D5D6AA86FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFF7DBC0F8EADDF6E6D5F5E0CBF4DFC9F4DDC7F4
                DCC4F5E0CAF4E1CFDEB898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE9D7
                F7E1CBF9EDE2F6E6D5F5E1CDF5E0CAF5E2CFF8E9DCEBCEB4EBD3BEFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAE3CDF8E1CCF9EBDDF8EDE1F8ECE1F7
                E8D9EFD4BCECCFB6FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFBEAD9F9DCC2F5D5B8F3D2B4F2D3B7F4E0CDFFFFFEFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            end
            object DBEdit29: TDBEdit
              Left = 97
              Top = 16
              Width = 91
              Height = 20
              Color = clBtnFace
              DataField = 'PLANO_CONTA4'
              DataSource = dsconfig
              TabOrder = 2
            end
            object DBEdit31: TDBEdit
              Left = 190
              Top = 16
              Width = 217
              Height = 20
              Color = clBtnFace
              DataField = 'PLANO_CONTA40'
              DataSource = dsconfig
              TabOrder = 3
            end
          end
        end
        object PageSheet3: TPageSheet
          Left = 0
          Top = 20
          Width = 668
          Height = 181
          Caption = 'Entradas'
          DisplayMode = tdGlyph
          ImageIndex = 0
          Margin = 0
          PageIndex = 2
          TabColor = 9106937
          TabWidth = 0
          TransparentColor = clNone
          object GroupBox20: TGroupBox
            Left = 0
            Top = 46
            Width = 668
            Height = 46
            Align = alTop
            Caption = 'ENTRADAS DIVERSAS'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object DBEdit32: TDBEdit
              Left = 8
              Top = 16
              Width = 64
              Height = 20
              DataField = 'PLANO_OUTRAS_ENTRADAS'
              DataSource = dsconfig
              Enabled = False
              TabOrder = 0
            end
            object BitBtn16: TBitBtn
              Left = 72
              Top = 16
              Width = 25
              Height = 21
              TabOrder = 1
              OnClick = BitBtn16Click
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFCFDFEE7EEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBFD6494BA2166
                9C80A8C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFAFCFD6E9BC1548CBB88B4DC175E96FFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFD7AA3C96396C49CC0E36598
                C63070A4FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEE8CEB9DAB292D2A57FCFA07BD1
                A684ADA09874A1CBAACAE775A3CD3F7AAEDEE8F1FFFFFFFFFFFFFFFFFFFFFEFE
                E8C9AFE7C8ADF4E0CCF6E4D2F6E4D0F2DCC7DEB99BC6A79085ADD44F86BAE1EA
                F3FFFFFFFFFFFFFFFFFFFFFFFFF1DBC7ECCFB6F7E7D8F4DDC7F2D7BCF2D5BAF3
                DAC1F6E3D1DEBA9C9F9694E3ECF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDCDB1
                F6E6D6F5E0CBF3DAC1F3D9BFF2D7BCF2D6BAF3DAC1F2DDC8D1A787FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFEFCDAEF8EBDEF4DEC7F4DCC5F3DBC2F3D9C0F2
                D8BDF2D6BCF7E5D2D2A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D2B4
                F8ECE0F5E0CBF4DEC8F4DDC6F3DBC3F3DAC1F3D9BFF7E6D5D6AA86FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFF7DBC0F8EADDF6E6D5F5E0CBF4DFC9F4DDC7F4
                DCC4F5E0CAF4E1CFDEB898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE9D7
                F7E1CBF9EDE2F6E6D5F5E1CDF5E0CAF5E2CFF8E9DCEBCEB4EBD3BEFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAE3CDF8E1CCF9EBDDF8EDE1F8ECE1F7
                E8D9EFD4BCECCFB6FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFBEAD9F9DCC2F5D5B8F3D2B4F2D3B7F4E0CDFFFFFEFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            end
            object DBEdit33: TDBEdit
              Left = 97
              Top = 16
              Width = 91
              Height = 20
              Color = clBtnFace
              DataField = 'PLANO_CONTA6'
              DataSource = dsconfig
              TabOrder = 2
            end
            object DBEdit34: TDBEdit
              Left = 190
              Top = 16
              Width = 217
              Height = 20
              Color = clBtnFace
              DataField = 'PLANO_CONTA60'
              DataSource = dsconfig
              TabOrder = 3
            end
          end
          object GroupBox22: TGroupBox
            Left = 0
            Top = 0
            Width = 668
            Height = 46
            Align = alTop
            Caption = 'RECEBIMENTO DE CREDI'#193'RIO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            object DBEdit38: TDBEdit
              Left = 8
              Top = 16
              Width = 64
              Height = 20
              DataField = 'PLANO_RECEBTO_CREDIARIO'
              DataSource = dsconfig
              Enabled = False
              TabOrder = 0
            end
            object BitBtn18: TBitBtn
              Left = 72
              Top = 16
              Width = 25
              Height = 21
              TabOrder = 1
              OnClick = BitBtn18Click
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFCFDFEE7EEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBFD6494BA2166
                9C80A8C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFAFCFD6E9BC1548CBB88B4DC175E96FFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFD7AA3C96396C49CC0E36598
                C63070A4FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEE8CEB9DAB292D2A57FCFA07BD1
                A684ADA09874A1CBAACAE775A3CD3F7AAEDEE8F1FFFFFFFFFFFFFFFFFFFFFEFE
                E8C9AFE7C8ADF4E0CCF6E4D2F6E4D0F2DCC7DEB99BC6A79085ADD44F86BAE1EA
                F3FFFFFFFFFFFFFFFFFFFFFFFFF1DBC7ECCFB6F7E7D8F4DDC7F2D7BCF2D5BAF3
                DAC1F6E3D1DEBA9C9F9694E3ECF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDCDB1
                F6E6D6F5E0CBF3DAC1F3D9BFF2D7BCF2D6BAF3DAC1F2DDC8D1A787FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFEFCDAEF8EBDEF4DEC7F4DCC5F3DBC2F3D9C0F2
                D8BDF2D6BCF7E5D2D2A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D2B4
                F8ECE0F5E0CBF4DEC8F4DDC6F3DBC3F3DAC1F3D9BFF7E6D5D6AA86FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFF7DBC0F8EADDF6E6D5F5E0CBF4DFC9F4DDC7F4
                DCC4F5E0CAF4E1CFDEB898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE9D7
                F7E1CBF9EDE2F6E6D5F5E1CDF5E0CAF5E2CFF8E9DCEBCEB4EBD3BEFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAE3CDF8E1CCF9EBDDF8EDE1F8ECE1F7
                E8D9EFD4BCECCFB6FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFBEAD9F9DCC2F5D5B8F3D2B4F2D3B7F4E0CDFFFFFEFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            end
            object DBEdit39: TDBEdit
              Left = 97
              Top = 16
              Width = 91
              Height = 20
              Color = clBtnFace
              DataField = 'PLANO_CONTA5'
              DataSource = dsconfig
              TabOrder = 2
            end
            object DBEdit40: TDBEdit
              Left = 190
              Top = 16
              Width = 217
              Height = 20
              Color = clBtnFace
              DataField = 'PLANO_CONTA50'
              DataSource = dsconfig
              TabOrder = 3
            end
          end
        end
        object PageSheet4: TPageSheet
          Left = 0
          Top = 20
          Width = 668
          Height = 181
          Caption = 'Sa'#237'das'
          DisplayMode = tdGlyph
          ImageIndex = 0
          Margin = 0
          PageIndex = 3
          TabColor = 11184895
          TabWidth = 0
          TransparentColor = clNone
          object GroupBox21: TGroupBox
            Left = 0
            Top = 0
            Width = 668
            Height = 46
            Align = alTop
            Caption = 'SA'#205'DAS DIVERSAS'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object DBEdit35: TDBEdit
              Left = 8
              Top = 16
              Width = 64
              Height = 20
              DataField = 'PLANO_OUTRAS_SAIDAS'
              DataSource = dsconfig
              Enabled = False
              TabOrder = 0
            end
            object BitBtn17: TBitBtn
              Left = 72
              Top = 16
              Width = 25
              Height = 21
              TabOrder = 1
              OnClick = BitBtn17Click
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFCFDFEE7EEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBFD6494BA2166
                9C80A8C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFAFCFD6E9BC1548CBB88B4DC175E96FFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFD7AA3C96396C49CC0E36598
                C63070A4FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEE8CEB9DAB292D2A57FCFA07BD1
                A684ADA09874A1CBAACAE775A3CD3F7AAEDEE8F1FFFFFFFFFFFFFFFFFFFFFEFE
                E8C9AFE7C8ADF4E0CCF6E4D2F6E4D0F2DCC7DEB99BC6A79085ADD44F86BAE1EA
                F3FFFFFFFFFFFFFFFFFFFFFFFFF1DBC7ECCFB6F7E7D8F4DDC7F2D7BCF2D5BAF3
                DAC1F6E3D1DEBA9C9F9694E3ECF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDCDB1
                F6E6D6F5E0CBF3DAC1F3D9BFF2D7BCF2D6BAF3DAC1F2DDC8D1A787FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFEFCDAEF8EBDEF4DEC7F4DCC5F3DBC2F3D9C0F2
                D8BDF2D6BCF7E5D2D2A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D2B4
                F8ECE0F5E0CBF4DEC8F4DDC6F3DBC3F3DAC1F3D9BFF7E6D5D6AA86FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFF7DBC0F8EADDF6E6D5F5E0CBF4DFC9F4DDC7F4
                DCC4F5E0CAF4E1CFDEB898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE9D7
                F7E1CBF9EDE2F6E6D5F5E1CDF5E0CAF5E2CFF8E9DCEBCEB4EBD3BEFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAE3CDF8E1CCF9EBDDF8EDE1F8ECE1F7
                E8D9EFD4BCECCFB6FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFBEAD9F9DCC2F5D5B8F3D2B4F2D3B7F4E0CDFFFFFEFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            end
            object DBEdit36: TDBEdit
              Left = 97
              Top = 16
              Width = 91
              Height = 20
              Color = clBtnFace
              DataField = 'PLANO_CONTA7'
              DataSource = dsconfig
              TabOrder = 2
            end
            object DBEdit37: TDBEdit
              Left = 190
              Top = 16
              Width = 217
              Height = 20
              Color = clBtnFace
              DataField = 'PLANO_CONTA70'
              DataSource = dsconfig
              TabOrder = 3
            end
          end
        end
      end
    end
    object PageSheet8: TPageSheet
      Left = 0
      Top = 21
      Width = 668
      Height = 352
      Caption = 'Estoque'
      DisplayMode = tdGlyph
      ImageIndex = 0
      Margin = 0
      PageIndex = 7
      TabColor = clWindow
      TabWidth = 0
      TransparentColor = clNone
      object AdvGlowButton4: TAdvGlowButton
        Left = 16
        Top = 16
        Width = 161
        Height = 24
        Caption = 'Zerar Estoque...'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 49
        FocusType = ftHot
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        Picture.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000467414D410000AFC837058AE90000001974455874536F6674776172
          650041646F626520496D616765526561647971C9653C000003A44944415478DA
          62FCFFFF3F03367073AB9F36C3BF7F2DFFFFFDE7FDFFEF5FA966E0F6F3D8D401
          041023BA01B7B6FB8B0135E50135650B2B070AFCFDFE86E1DD83BD5F806233FF
          FFFDD7A713B1F719B27A8000821B707B47002B909D00D458C62BEDA622AE19C2
          C0F4EF2FC397E7671858D999195EDD39C0F0E1C9D98740F91E209E6B107FE43B
          481F4000810DB8B523C08DE1DFFF1A7641035B718D60060E41550686FFBF18FE
          BCBFCD70FF402B83AC96350313973CC3CFAFAF195EDE39CBF0F9F5F593FFFFFE
          6D354A3DB9192080186F6EF79F0FF46BBC884A042387902EC38FCF6F183EBEBE
          CEF0F7D71786DF5F9F33B033FE649090536760F8F19E8199478E81898397E1D3
          F35B6083BEBD7FB81C20805880FE8A517399C2F81BA8F1CBF3030CFF7E7D6260
          FFF69AE1DBA7E70C9F1E3F65308A98CCC0CAC9CDC0F0F501C3FFAF7718183FDD
          621096D263E017626038B7ED5E284000B100FDF3F53F03233F1B073B03AF901C
          C3F7D7D718B8040518040439193819BE016D7EC4C0F0970D483F6560F8FE98E1
          DB8B930C5F1E1C63E0500866005AFE15208040063030FC0385061B032BBF2A30
          C078197EBC3AC3F0EFCB2B065666A0F0B7BB0C0C4CFF197EBDD8C3F0F9D30786
          3F9C020C0C6CEC0CFF7FFF6100E905082090171820F1F01718703F191858B819
          38C40C19FEB0713270FC78CBF0EFC56E868FBF3F33FCE1E061F80B34FCDFB75F
          0C0C7FFE03BD0A34E0EF5F06800062011160F01F48FFFB0DC4DFC006B1F04833
          F04AA8317C7C7786E1371307C3DB93AF19DE9E7EC4F0E3E50706263E3606314B
          06B00B000208E4054E265656A0099C4093DF020D00BAE2DF0FA08380348714C8
          32867727DF02BDC0C1601C53C9C0AEA8CDF0FDD22E866B47F630FCFEF3811B20
          8098805E3874EFD00486EFEF8181C52EC5C0C0CC05D40C74E67FA06B8081F3FF
          F73F86E7C76E31A83A843270DC3DC0C0B8309281EBDE7A06053921865F8F3EFC
          010820967F7FFF7A7F7E7C24FEC683436542CA2E2A327A5E0CCCBCC078FF7607
          18F25F810EF9CDF0F7FD2F060E09450606AF2278126669906460FAF18F1D2080
          E049F9DC6C73601EF8970F745196947E808094811703C3EF1FC0B4709CE15C53
          3B83A9672003F7A3AD0C3FBFBF00452E304698196EDC65780A10401899E9F414
          436DA0215540C32295ED9319BFBF7AC0F078F73E06964F3FFECB0AFF6164617A
          024CCA7F181EBC64FEFBFBC7FF3A800062C4959D8FF768BB010DA90026733620
          DDC970E9A7F6D777CFD299FF32CAFF65FEFF14A86BBAFBAE3F6D0001060074AF
          B99220A0CB610000000049454E44AE426082}
        TabOrder = 0
        OnClick = AdvGlowButton4Click
        Appearance.BorderColor = 14727579
        Appearance.BorderColorHot = 10079963
        Appearance.BorderColorDown = 4548219
        Appearance.BorderColorChecked = clBlack
        Appearance.Color = 15653832
        Appearance.ColorTo = 16178633
        Appearance.ColorChecked = 7915518
        Appearance.ColorCheckedTo = 11918331
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 7778289
        Appearance.ColorDownTo = 4296947
        Appearance.ColorHot = 15465983
        Appearance.ColorHotTo = 11332863
        Appearance.ColorMirror = 15586496
        Appearance.ColorMirrorTo = 16245200
        Appearance.ColorMirrorHot = 5888767
        Appearance.ColorMirrorHotTo = 10807807
        Appearance.ColorMirrorDown = 946929
        Appearance.ColorMirrorDownTo = 5021693
        Appearance.ColorMirrorChecked = 10480637
        Appearance.ColorMirrorCheckedTo = 5682430
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
        Appearance.GradientHot = ggVertical
        Appearance.GradientMirrorHot = ggVertical
        Appearance.GradientDown = ggVertical
        Appearance.GradientMirrorDown = ggVertical
        Appearance.GradientChecked = ggVertical
        Layout = blGlyphLeftAdjusted
      end
    end
    object PageSheet6: TPageSheet
      Left = 0
      Top = 21
      Width = 668
      Height = 352
      Caption = 'Cor/Logo'
      DisplayMode = tdGlyph
      ImageIndex = 0
      Margin = 0
      PageIndex = 8
      TabColor = clWindow
      TabWidth = 0
      TransparentColor = clNone
      object rTabelaCor: TRzColorPicker
        Left = 209
        Top = 13
        Width = 150
        Height = 143
        BorderOuter = fsFlat
        FlatColor = clSilver
        ButtonColor = 9229030
        CustomColorCaption = 'Mais Cores...'
        DefaultColor = 16381943
        DefaultColorCaption = 'Cor Padr'#227'o'
        ShowCustomColor = True
        ShowDefaultColor = True
        ParentColor = False
      end
      object GroupBox26: TGroupBox
        Left = 8
        Top = 8
        Width = 197
        Height = 101
        Caption = 'Ramo de Atividade'
        TabOrder = 0
        object rCorComercio: TRadioButton
          Left = 8
          Top = 16
          Width = 113
          Height = 17
          Caption = 'Padr'#227'o'
          TabOrder = 0
        end
        object rCorMercado: TRadioButton
          Left = 8
          Top = 32
          Width = 113
          Height = 17
          Caption = 'Supermercado'
          TabOrder = 1
        end
        object rCorAuto: TRadioButton
          Left = 8
          Top = 48
          Width = 113
          Height = 17
          Caption = 'Auto Pe'#231'as'
          TabOrder = 2
        end
        object rCorFarmacia: TRadioButton
          Left = 8
          Top = 64
          Width = 113
          Height = 17
          Caption = 'Farm'#225'cia'
          TabOrder = 3
        end
        object rCorPosto: TRadioButton
          Left = 8
          Top = 81
          Width = 137
          Height = 17
          Caption = 'Posto de Combust'#237'vel'
          TabOrder = 4
        end
      end
      object bPadrao: TAdvGlowButton
        Left = 8
        Top = 127
        Width = 197
        Height = 28
        Caption = 'Cor e Logomarca Padr'#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 49
        FocusType = ftHot
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        OfficeHint.Picture.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000467414D410000AFC837058AE90000001974455874536F6674776172
          650041646F626520496D616765526561647971C9653C000002B64944415478DA
          62FCFFFF3F030CB8D61D4AE0E4638F6662647006721981F007C37F4686BF7FFF
          B0BF7FFB7FDA914EEB1C06340010408CC80678B51FFDB538C798950968024C18
          44BFFEF28B61D9990F0CCFEEFFF87EFBD62DC18353BC7FC2F400041013B269CC
          CC4C7F58999918EEBF676178F08199E1F65B46866BAF18181445B919024CA418
          1455393859F8B8E723EB0108201403FE839C0D1564626484E3E7EFBE33C8F3FC
          6648B514666066650E45D603104070039A9A9A38814630819CCCC20CC28C0CCC
          40AF80E83B40979C7CF487819D9599819185F15F626222274C1F400031413527
          03A95740EBD9405E67616402BB8215A89905E802763666060E20FE0F1405BA88
          EDE7CF9FAF424242407A1800028809A8D9555252728EB7B7370F131313C33F50
          C83242BCC0088C019021AC2C4C0C6CCCCC603926266686ACAC2C1E4545C5391E
          1E1EAE0001C40214EBB5B0B06010131363D0FF34956142E736065C6017101B03
          B1AA6A3643404000C3A3478FA6030410C800752D2D2DB0023F3F3F0675757506
          7CE0CA952B0C22222260BC66CD1A25800062F9FBF72F1B1083251F3C78009678
          F3E60D56CD20B9BB77EF32181B1B83F91F3F7E64040820963F7FFE30DCBB770F
          2C00D2080C20862F5FBE603580878787E1F5EBD770F5201A2080587EFFFECDF0
          E4C913B0C0B76FDF184006FEFAF50BAB0120B9AF5FBFC2D5830C030820B00130
          0D1C1C1C0C6BD7AE05B37FFCF80156FCF9F3679053C11894EC757474E0EA417A
          01028805C8F9F7E9D327263E3E3EB01734B5F5188445C4B0BAE0F5AB170C2D4D
          F50CEEEEEE0CCF9E3D63F8F7EF1F034000B100FD3C67DBB66D9640D374396DF3
          194ABD8D18BEFD02276B867F401BFFFEFDCFF01B18C87F818A2D2D4C1976BE92
          62C8CF8F05B9E61250C94A800042C98D49D34EFE656106A6A6FF28F9034E3202
          13D79F3FFFFECDCB366786C90304180072C1114B15D29D760000000049454E44
          AE426082}
        ParentFont = False
        Picture.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000467414D410000AFC837058AE90000001974455874536F6674776172
          650041646F626520496D616765526561647971C9653C000001A24944415478DA
          62FCFFFF3F032500208018030B5766DB389874BEFBF69F1B6CD6BF7F0CFF81F8
          EFBFBF40FA3FC3BFFF40FEDFBF40FA3F98FE0B94E363FBFDF5FAF5A7E5EBFAC2
          A60204108B89B5C924560E6E26710E922CE6FEFAEDEF24203D15208058BEFDFE
          CFF4EDDD17929DFE1DA80F44030410CBFFBFFF195AA355483620A5E321980608
          2096FF403F8240D31184649D0D0343C1A674387F82DF4C86991710F2E9060CE0
          30020180006262408A05397E545BB4E4B4C0342CA644B91072FFFE400C000820
          26984920F0E823AA01D71E5D4331E0F5372403FE425C0E10400CA5F3AEFC4707
          FFFEFD83E3BF7FFFA2E03F7FFE80D544D56C02510C0001C4F20FEA02643FF7FB
          CE60609C1906492820DBD256327CBE910597E7D79A014C2E1017000410D39FDF
          BFE112068A86284E66109647E1F38B99C0D5FEF9FD074C030410D37F985F80E0
          C2FDF3A806BC7D88C2FFF8EA0C5CED7FA80B0002882167D289FFE480C0A295E0
          3000082096A7F71FAECAECFF1DF60F94DE81AEF90BA2417901E835100DCE03A0
          7CF1179A2F406210CB578108800062A434370204101303850020C000641537CC
          E53A45BC0000000049454E44AE426082}
        TabOrder = 1
        Appearance.BorderColor = 14727579
        Appearance.BorderColorHot = 10079963
        Appearance.BorderColorDown = 4548219
        Appearance.BorderColorChecked = clBlack
        Appearance.Color = 15653832
        Appearance.ColorTo = 16178633
        Appearance.ColorChecked = 7915518
        Appearance.ColorCheckedTo = 11918331
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 7778289
        Appearance.ColorDownTo = 4296947
        Appearance.ColorHot = 15465983
        Appearance.ColorHotTo = 11332863
        Appearance.ColorMirror = 15586496
        Appearance.ColorMirrorTo = 16245200
        Appearance.ColorMirrorHot = 5888767
        Appearance.ColorMirrorHotTo = 10807807
        Appearance.ColorMirrorDown = 946929
        Appearance.ColorMirrorDownTo = 5021693
        Appearance.ColorMirrorChecked = 10480637
        Appearance.ColorMirrorCheckedTo = 5682430
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
        Appearance.GradientHot = ggVertical
        Appearance.GradientMirrorHot = ggVertical
        Appearance.GradientDown = ggVertical
        Appearance.GradientMirrorDown = ggVertical
        Appearance.GradientChecked = ggVertical
      end
      object RzGroupBox8: TRzGroupBox
        Left = 366
        Top = 10
        Width = 296
        Height = 337
        Caption = 'Imagem |  Formato 350 X 285'
        TabOrder = 3
        object pImagemLogo: TImage
          Left = 5
          Top = 15
          Width = 285
          Height = 275
          Align = alCustom
        end
        object RzPanel1: TRzPanel
          Left = 1
          Top = 295
          Width = 294
          Height = 41
          Align = alBottom
          BorderOuter = fsNone
          TabOrder = 0
          VisualStyle = vsGradient
          object bincluir: TAdvGlowButton
            Left = 50
            Top = 7
            Width = 87
            Height = 24
            Caption = '| Incluir'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ImageIndex = 49
            FocusType = ftHot
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ParentFont = False
            Picture.Data = {
              89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
              610000000467414D410000AFC837058AE90000001974455874536F6674776172
              650041646F626520496D616765526561647971C9653C000002E14944415478DA
              62FCFFFF3F032500208058D0057AF6942AFFFDF737EACFDFBF717FFEFE91F8F3
              EF2FC3EFBF7F5E00F98B80F4B289E18BEF22AB070820466417F4EC2909FEF3F7
              DF645931654975097D064E561E865FFF7E31BCFAF28CE1F89D7D0CAFDEBC7EFE
              E7CF9FDC5971ABD7C2F4000410DC0088E6BF0B4D54ECB955C57419EE7EBAC5F0
              E2FB5386DFFF7E33F0B3F13388714A331CBDB593E1EA9DEB5F812E8B5F92B219
              6C084000810DE8DE5DA20474F66103252B2955713D8683CF77317CFBFA8DE1F7
              FF3F0C1C1CEC0CFF81F0E7BF9F0C9A7C3A0CC76EEE61B879FFEEB3DF7FFED8AE
              CBDE7D0F20809840A60035C708F08B4A298868301C79B197E1FBEF1F0CDF7E7F
              672834AE66C8D42E61F8F0F33DC3BB8F2F188E3F3FC060A1E6C8C0C8F6570A18
              1E3120BD0001043600E8F458793175861B1FAF30BCF9F486E1D3B74F0C1FBEBE
              8787CDD3FB8F187EFFFCCAF0F5F35B86279FEE3358AB5B8302361624071040E0
              580072A43958B9181E7EBE0F0CB49F0C9566AD283133357809982EDC19C5F0F4
              C33D061D6113B01E90184000415DF087E1EBEFCF0C9F7F7D62F8CDFC1B6FBCFF
              FFFB8F811118264003C07C800082B9E0E9D3F70F5578D879183E7C7FC7507828
              85E1EBAB4F0CB34256C16D06DBC6C8C420C527C7F0E8D57D90A54F41620001C4
              043560F185FB2719E4B81419FEFFFEC9C008345D48901BC5E67F7FFF3330FD63
              6490E55364D876712F580F481C2080602E58F2EF1773FAC93B07A42C955C188E
              3EDCC1F0E7DF1FB0CDFFFF821DCEC0C6C4CC60AFE4C9B0E3C216868F9FBF3C03
              063C38600002089E909216040113D29F85D212E2DCB6EA2E0C8F3FDE0706D87D
              86FFFFFE31C8082A31C8F0C9336CBFB899E1E4F52B5F81C93BFE7CC335704202
              082094A41C39CB2B18E89AC97F99FF48DA6BDA3088F349822C6778FCFE11C3CE
              F3FB183E7DF9F61CA83917A61904000288113D37FA4F7652061A12F51B9E99FE
              00BDF8179C99FEFEFBB3EC7CC37594CC0410408C94666780000300708A7F01A2
              891CF10000000049454E44AE426082}
            TabOrder = 0
            OnClick = bincluirClick
            Appearance.BorderColor = 14727579
            Appearance.BorderColorHot = 10079963
            Appearance.BorderColorDown = 4548219
            Appearance.BorderColorChecked = clBlack
            Appearance.Color = 15653832
            Appearance.ColorTo = 16178633
            Appearance.ColorChecked = 7915518
            Appearance.ColorCheckedTo = 11918331
            Appearance.ColorDisabled = 15921906
            Appearance.ColorDisabledTo = 15921906
            Appearance.ColorDown = 7778289
            Appearance.ColorDownTo = 4296947
            Appearance.ColorHot = 15465983
            Appearance.ColorHotTo = 11332863
            Appearance.ColorMirror = 15586496
            Appearance.ColorMirrorTo = 16245200
            Appearance.ColorMirrorHot = 5888767
            Appearance.ColorMirrorHotTo = 10807807
            Appearance.ColorMirrorDown = 946929
            Appearance.ColorMirrorDownTo = 5021693
            Appearance.ColorMirrorChecked = 10480637
            Appearance.ColorMirrorCheckedTo = 5682430
            Appearance.ColorMirrorDisabled = 11974326
            Appearance.ColorMirrorDisabledTo = 15921906
            Appearance.GradientHot = ggVertical
            Appearance.GradientMirrorHot = ggVertical
            Appearance.GradientDown = ggVertical
            Appearance.GradientMirrorDown = ggVertical
            Appearance.GradientChecked = ggVertical
          end
          object bexcluir: TAdvGlowButton
            Left = 143
            Top = 6
            Width = 84
            Height = 24
            Caption = '| Excluir'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ImageIndex = 49
            FocusType = ftHot
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ParentFont = False
            Picture.Data = {
              89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
              610000000467414D410000AFC837058AE90000001974455874536F6674776172
              650041646F626520496D616765526561647971C9653C000002E04944415478DA
              62FCFFFF3F032500208058D0051EE7E529FFFFFB2FEA0FC3DFB8FFBF7E4BFC63
              F8C7F0FFFF9F177F19FE2DFAF7FFEF32EDB9CBEF22AB0708204664173CC9CD0B
              FEF3EFEF643E4D15496E03030646013E06861F3F187EBF7CC6F06ECF1E86F7EF
              DE3EFFFBFF6FAEE1A2F56B617A0002086E0048F3DFBF7F170AB9387073EBEB31
              FCBD778D81E1E56306865FBF181879041918E5E418DE6ED9C6F0F8C19DAFFFFE
              FE89375DBE1D6C084000810D78949BAB0474F661613B4B292E134386BFFB3733
              7CFBFE8381F1EF6F0676365606C67FFF19FEFFFAC1C0A065C4F07AC76E86272F
              1F3DFBF7FF8FADD5CA7DF700028809640A50730C9794B014A7AE16C3DF43DB19
              FEFEFCCEF0EFE73706D66F9F18FE7D78CBF0F7D33B867F3FBE31FC3EBC9B41D4
              D19181F3C74FA9BFFFFEC680F40204103810FF31FE8DE5D6D160F877FD02C3B7
              F76F18FE5C8684D337B4006693E067F873FF2E83A48115C3872B876281424D00
              010436001830D22C5C5C0C0CB76E3130FCFCC920BC6035D6287B15E5C7C0FAF9
              370387B105C3BF0B7FA44162000104F1C2AFDF0CFF3E019DFBF92303DBDF1F78
              E3FDCF9F7F400D2057FF01F3010208E682A7DF1F3E50E1E4E663F8FBE82DD826
              AC808989814D569EE1E3FDFB0CFF7EFF790A12020820B00BFEFEFBB3F8EDA953
              0CFFA55418FE7EFCC9C0CACB8AA1F72F30B6FEFE6766605550617874753F0330
              161683C40102086C0090B3E40B37C7B3B707F633B07A780363808981919919A2
              918191E1EF5F909B5918F83C7C181EEEDDCAF0E5D7B7677F19FF2F01C9030410
              3C219D8BF60B061AB4509447985BD4D195E1D783BB0CBFEEDE65F8F7EB1F03BB
              BA0A039B8C22C3E3BD9B191EBCBDF5F51FE3BF78AF2DD7C0090920805092F2C9
              48F760602A9BCCF6F797A48C862530DAA420D1F9EC11C3DDAB8718BEFDFDF11C
              A83917A61904000288113D371E097550FEFFE777D41FE67F71FFFFFD9500C510
              90FD02C85EF4EFCF9F655EDB6FA06426800062A4343B03041800C3755C60AB63
              B7520000000049454E44AE426082}
            TabOrder = 1
            OnClick = bexcluirClick
            Appearance.BorderColor = 14727579
            Appearance.BorderColorHot = 10079963
            Appearance.BorderColorDown = 4548219
            Appearance.BorderColorChecked = clBlack
            Appearance.Color = 15653832
            Appearance.ColorTo = 16178633
            Appearance.ColorChecked = 7915518
            Appearance.ColorCheckedTo = 11918331
            Appearance.ColorDisabled = 15921906
            Appearance.ColorDisabledTo = 15921906
            Appearance.ColorDown = 7778289
            Appearance.ColorDownTo = 4296947
            Appearance.ColorHot = 15465983
            Appearance.ColorHotTo = 11332863
            Appearance.ColorMirror = 15586496
            Appearance.ColorMirrorTo = 16245200
            Appearance.ColorMirrorHot = 5888767
            Appearance.ColorMirrorHotTo = 10807807
            Appearance.ColorMirrorDown = 946929
            Appearance.ColorMirrorDownTo = 5021693
            Appearance.ColorMirrorChecked = 10480637
            Appearance.ColorMirrorCheckedTo = 5682430
            Appearance.ColorMirrorDisabled = 11974326
            Appearance.ColorMirrorDisabledTo = 15921906
            Appearance.GradientHot = ggVertical
            Appearance.GradientMirrorHot = ggVertical
            Appearance.GradientDown = ggVertical
            Appearance.GradientMirrorDown = ggVertical
            Appearance.GradientChecked = ggVertical
          end
        end
      end
      object DBCheckBox23: TDBCheckBox
        Left = 8
        Top = 109
        Width = 196
        Height = 17
        Caption = 'Visualiza Mensagem p/ o Cliente'
        DataField = 'VISUALIZA_MENSAGEM'
        DataSource = dsconfig
        ParentShowHint = False
        ShowHint = False
        TabOrder = 2
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
    end
    object PageSheet9: TPageSheet
      Left = 0
      Top = 21
      Width = 668
      Height = 352
      Caption = 'FTP'
      DisplayMode = tdGlyph
      ImageIndex = 0
      Margin = 0
      PageIndex = 9
      TabColor = clWindow
      TabWidth = 0
      TransparentColor = clNone
      object RzGroupBox3: TRzGroupBox
        Left = 8
        Top = 6
        Width = 653
        Height = 179
        Caption = 'Conex'#227'o'
        TabOrder = 0
        object Label56: TLabel
          Left = 8
          Top = 19
          Width = 22
          Height = 13
          Caption = 'FTP:'
        end
        object Label58: TLabel
          Left = 7
          Top = 69
          Width = 40
          Height = 13
          Caption = 'Usu'#225'rio:'
        end
        object Label59: TLabel
          Left = 8
          Top = 92
          Width = 34
          Height = 13
          Caption = 'Senha:'
        end
        object Label60: TLabel
          Left = 204
          Top = 67
          Width = 62
          Height = 13
          Alignment = taRightJustify
          Caption = 'Atualiza'#231#227'o :'
        end
        object Label62: TLabel
          Left = 8
          Top = 139
          Width = 55
          Height = 13
          Caption = 'Mensagem:'
        end
        object Label68: TLabel
          Left = 8
          Top = 44
          Width = 30
          Height = 13
          Caption = 'Porta:'
        end
        object Label69: TLabel
          Left = 223
          Top = 43
          Width = 43
          Height = 13
          Alignment = taRightJustify
          Caption = 'Passivo :'
        end
        object Label70: TLabel
          Left = 228
          Top = 92
          Width = 38
          Height = 13
          Alignment = taRightJustify
          Caption = 'Chave :'
        end
        object Label71: TLabel
          Left = 216
          Top = 116
          Width = 50
          Height = 13
          Alignment = taRightJustify
          Caption = 'Farmacia :'
        end
        object eftp: TRzEdit
          Left = 68
          Top = 16
          Width = 576
          Height = 21
          CharCase = ecLowerCase
          TabOrder = 0
          OnKeyPress = enovadata_inventarioKeyPress
        end
        object eusuario: TRzEdit
          Left = 68
          Top = 64
          Width = 130
          Height = 21
          CharCase = ecLowerCase
          TabOrder = 3
          OnKeyPress = enovadata_inventarioKeyPress
        end
        object esenha: TRzEdit
          Left = 68
          Top = 88
          Width = 72
          Height = 21
          Text = '**********'
          Enabled = False
          TabOrder = 4
          OnKeyPress = enovadata_inventarioKeyPress
        end
        object emensagem: TRzEdit
          Left = 68
          Top = 136
          Width = 577
          Height = 21
          TabOrder = 8
          OnKeyPress = enovadata_inventarioKeyPress
        end
        object eporta: TRzEdit
          Left = 68
          Top = 40
          Width = 43
          Height = 21
          TabOrder = 1
          OnKeyPress = enovadata_inventarioKeyPress
        end
        object epassivo: TRzComboBox
          Left = 268
          Top = 40
          Width = 45
          Height = 21
          ItemHeight = 13
          TabOrder = 2
          OnKeyPress = enovadata_inventarioKeyPress
          Items.Strings = (
            'S'
            'N')
          Values.Strings = (
            'S'
            'N')
        end
        object esalvars: TDirectoryEdit
          Left = 268
          Top = 64
          Width = 377
          Height = 21
          CharCase = ecUpperCase
          NumGlyphs = 1
          TabOrder = 5
          OnKeyPress = enovadata_inventarioKeyPress
        end
        object esalvarc: TDirectoryEdit
          Left = 268
          Top = 88
          Width = 377
          Height = 21
          CharCase = ecUpperCase
          NumGlyphs = 1
          TabOrder = 6
          OnKeyPress = enovadata_inventarioKeyPress
        end
        object esalvarf: TDirectoryEdit
          Left = 268
          Top = 112
          Width = 377
          Height = 21
          CharCase = ecUpperCase
          NumGlyphs = 1
          TabOrder = 7
          OnKeyPress = enovadata_inventarioKeyPress
        end
      end
      object RzGroupBox4: TRzGroupBox
        Left = 8
        Top = 189
        Width = 313
        Height = 149
        Caption = 'Configura'#231#227'o do Servidor Proxy'
        TabOrder = 1
        object Label63: TLabel
          Left = 7
          Top = 19
          Width = 26
          Height = 13
          Caption = 'Host:'
        end
        object Label64: TLabel
          Left = 8
          Top = 44
          Width = 50
          Height = 13
          Caption = 'Password:'
        end
        object Label65: TLabel
          Left = 8
          Top = 68
          Width = 53
          Height = 13
          Caption = 'UserName:'
        end
        object Label66: TLabel
          Left = 8
          Top = 93
          Width = 24
          Height = 13
          Caption = 'Port:'
        end
        object Label67: TLabel
          Left = 8
          Top = 115
          Width = 56
          Height = 13
          Caption = 'ProxyType:'
        end
        object eproxy_host: TRzEdit
          Left = 68
          Top = 16
          Width = 128
          Height = 21
          TabOrder = 0
          OnKeyPress = enovadata_inventarioKeyPress
        end
        object eproxy_Password: TRzEdit
          Left = 68
          Top = 40
          Width = 128
          Height = 21
          TabOrder = 1
          OnKeyPress = enovadata_inventarioKeyPress
        end
        object eproxy_username: TRzEdit
          Left = 68
          Top = 64
          Width = 128
          Height = 21
          TabOrder = 2
          OnKeyPress = enovadata_inventarioKeyPress
        end
        object eproxy_port: TRzEdit
          Left = 68
          Top = 88
          Width = 61
          Height = 21
          TabOrder = 3
          OnKeyPress = enovadata_inventarioKeyPress
        end
        object eproxy_tipo: TRzComboBox
          Left = 68
          Top = 112
          Width = 237
          Height = 21
          ItemHeight = 13
          TabOrder = 4
          OnExit = eproxy_tipoExit
          OnKeyPress = enovadata_inventarioKeyPress
          Items.Strings = (
            'fpcmNone'
            'fpcmHttpProxyWithFtp'#13#10#10
            'fpcmOpen'
            'fpcmSite'
            'fpcmTransparent'
            'fpcmUserPass'
            'fpcmUserSite')
          Values.Strings = (
            'fpcmNone'
            'fpcmHttpProxyWithFtp'#13#10#10
            'fpcmOpen'
            'fpcmSite'
            'fpcmTransparent'
            'fpcmUserPass'
            'fpcmUserSite')
        end
      end
      object RzGroupBox5: TRzGroupBox
        Left = 327
        Top = 189
        Width = 334
        Height = 149
        Caption = 'Observa'#231#245'es'
        TabOrder = 2
        object RichEdit1: TRichEdit
          Left = 1
          Top = 14
          Width = 332
          Height = 134
          Align = alClient
          BorderStyle = bsNone
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Lines.Strings = (
            '  Em todo  o  cliente  que usa  banda  larga provavelmente '
            '  existir'#225' um servidor proxy.'
            '  Para configura-lo basta abrir o navegador, v'#225'  no  menu'
            '  Op'#231#245'es - Op'#231#245'es da Internet - Conex'#245'es - Configura'#231#227'o'
            '  de  rede.  Se estiver preenchido, anote a numera'#231#227'o e a'
            '  porta e coloque aqui ou contacte o administrador de sua '
            '  rede.')
          ParentFont = False
          TabOrder = 0
        end
      end
    end
  end
  object bgravar: TAdvGlowButton
    Left = 8
    Top = 378
    Width = 107
    Height = 24
    Caption = 'F3 | Gravar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ImageIndex = 49
    FocusType = ftHot
    NotesFont.Charset = DEFAULT_CHARSET
    NotesFont.Color = clWindowText
    NotesFont.Height = -11
    NotesFont.Name = 'Tahoma'
    NotesFont.Style = []
    ParentFont = False
    Picture.Data = {
      89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
      610000000467414D410000AFC837058AE90000001974455874536F6674776172
      650041646F626520496D616765526561647971C9653C000003274944415478DA
      62FCFFFF3F032500208058D005924F392AFFF9F33BEAEFDF7F713F7FFF90F8F7
      EF0F03C3BF7F2F18FE312CFAF3F7EFB28DDED7EF22AB070820466417249EB00B
      FEF9FBE764690665497D515B066E567EB0F8E75F1F184E3EDECD70E3D3F9E740
      8372F7863D580BD30310407003E28FD9047FFFFD73A1359F37B7BAB001C3B3EF
      8F199E7D7B0A9693E2926690E09461B8F6FC14C3F2AB4BBF029D1D7F32E911D8
      108000021B107BD84AE9E79FDF87AD05BCA55485F5198EBEDECFF0E7DF5F20FE
      C7C0045204F22B233383B59823C3D5A7A718965C5AF60CE812DB4BD98FEF0104
      10489EE1EF9FDF31D28CCA52209B419A7FFCF9CDF0EBEF6F863F40FCEBCF2F06
      609830B84A79339C7A71984147DA8CC1505847EAE76F8618905E8000021BF0FB
      EFCF5843093B8627DF1E0135FD61F80B0CB87F409A11E802C67FFF19FC15C218
      1C653C1932744B189E7CBACF60AFEACCF0EB27432C482F4000810DF8FEF3A7B4
      009B10C3D3AF0F819AFF327848FB306468150235333104288633D84BBB810DDD
      7C6725C3D30FF7180439C518FE7DFF2F0DD20B10402C500318FE01C3E23FD046
      5E665E062B0907063E367E865AB30E06210E11B0E659177A196EBFB9CCC0C3CA
      030C1360C0FF86C4024000815DC0F00768F0B7D70CD25CB20C5F7E7E649876A1
      93E1EBEFCF60CDFFFEFF639875AE9BE1FAABF3E0C094E2936378FDE139D0750C
      E0280208204818FCFEBFF8E8BDDD0C529CB20CACFF18185E7D7DC630F17433C3
      ADB75719E69CEF65B8F6FA02500323031310CBF229326CB9B28B01E888C520BD
      00010436E0E7F7FF4B4E3FBBF0ECF2D3130C96522E0C6C4085EFBE3E67987EA6
      95E1DA8BF30CCCFF9918D8989819EC953C194EDF3BCC70E1DACD670CBF189680
      F40204103C21E94C920DFEFAF3FFC26493206E23596B86C71FEF03FD751F1C2E
      32824A0C327CF20C27EF1D6458B075CB572656C6F8077D4FC0090920805092B2
      52B76CF0BF9FFF271BCBAA4B7A68B902435B04E45486D75F5F306CBBB08BE1D2
      F5BBCF199918731FF43F81276580006244CF8D0A4DB2CA0C7FFF47010336EEFF
      CFFF120C7F81299191F105506A1130E4973D98FC04253301041023A5D91920C0
      00B9755E16835EC02B0000000049454E44AE426082}
    TabOrder = 1
    OnClick = bgravarClick
    Appearance.BorderColor = 14727579
    Appearance.BorderColorHot = 10079963
    Appearance.BorderColorDown = 4548219
    Appearance.BorderColorChecked = clBlack
    Appearance.Color = 15653832
    Appearance.ColorTo = 16178633
    Appearance.ColorChecked = 7915518
    Appearance.ColorCheckedTo = 11918331
    Appearance.ColorDisabled = 15921906
    Appearance.ColorDisabledTo = 15921906
    Appearance.ColorDown = 7778289
    Appearance.ColorDownTo = 4296947
    Appearance.ColorHot = 15465983
    Appearance.ColorHotTo = 11332863
    Appearance.ColorMirror = 15586496
    Appearance.ColorMirrorTo = 16245200
    Appearance.ColorMirrorHot = 5888767
    Appearance.ColorMirrorHotTo = 10807807
    Appearance.ColorMirrorDown = 946929
    Appearance.ColorMirrorDownTo = 5021693
    Appearance.ColorMirrorChecked = 10480637
    Appearance.ColorMirrorCheckedTo = 5682430
    Appearance.ColorMirrorDisabled = 11974326
    Appearance.ColorMirrorDisabledTo = 15921906
    Appearance.GradientHot = ggVertical
    Appearance.GradientMirrorHot = ggVertical
    Appearance.GradientDown = ggVertical
    Appearance.GradientMirrorDown = ggVertical
    Appearance.GradientChecked = ggVertical
  end
  object bcancelar: TAdvGlowButton
    Left = 229
    Top = 378
    Width = 108
    Height = 24
    Caption = 'ESC | Cancelar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ImageIndex = 49
    FocusType = ftHot
    NotesFont.Charset = DEFAULT_CHARSET
    NotesFont.Color = clWindowText
    NotesFont.Height = -11
    NotesFont.Name = 'Tahoma'
    NotesFont.Style = []
    ParentFont = False
    Picture.Data = {
      89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
      610000000467414D410000AFC837058AE90000001974455874536F6674776172
      650041646F626520496D616765526561647971C9653C000002E74944415478DA
      62FCFFFF3F032500208058D0059EB636C431FCFB9BF9FFEF3F7D86BF7FBFFFFF
      FB87E1FFDFBF9C407C91E1CF9FE9F213A62D42560F10408CC82E006A8E67E5E3
      5A2060A4C9C0CACFC3F0FFF71F0686BFFF18188172BFDEBE67787BE40CC3CF57
      6F9214672E980FD303104070039EB6D427B2F072CD1334D66260FBF69481E1D5
      2306867FFF18184086FCFCC9C0C02FC9F0935786E1F5C1130C3F5FBF4D565EB4
      721E481F4000810D78DA5C97C8C207D46C04D4FC15A8F9D93D06A07381D6FE06
      1AF01B62C8AF5F0C0CE20A0C3F05E4185E1E380E7249A2EAEA4D0B0002880964
      0AD09F9982869A0C6C1F1F33303CBACDC02028C3C0A0E308D4F89781E13BD076
      4D2B0606216906865B5718D89FDC6010B334027AEF5726482F40004102F1CF5F
      3D566E6E06866B409B7F026DE2E06760B0F26360E0126460F8F619C8F6626058
      3505287F8981E1F6550676653DA001BFF5415A0102086CC0FF3FBFBFFDFFF993
      9D1164E30FA08DE70E3230B0703230B8864342EAE0460686C33B20728C4C0CFF
      7EFC0219F00D240510406003FE81FC0B73EEF75F104DACEC88B862051AF6E71F
      DC00A08B419682A5000208E282DFBFB9191980B1F1ED1BC410637B0606870006
      865D6B18183E7F6060084E01062C305656CC640029636204E9F9C30DD20B1040
      9030F8FDFBF2EFB7EF8DD984810175E71A03C3BD1B0C0C8B263030ECDB04B40D
      68D3ABE7C0787E0C894E252D861FAFDE805C7019A4152080A05EF83DFDD591D3
      73444DF519D8BF7D6760B80994BB7611128D20EFED580F36E88FB216C34F251D
      8667BBF7010DF83B1DA4172080E009E96E4C680A2B2FCF6C313323068EFB5780
      2E01BAE2FF3F706AFCFDF307C33F3965865FC0D07FB9673F300DBC4ED5397365
      0E481F4000A124E55BC13E89ECFCBCF3C4CC8C19D804F819FE0213CFBF7F7FC1
      01F7FDCD5B8637FB0F32FC7CFE3249E7EC55785206082046F4DC78D3CB29EEFF
      9F3FC0CCF4571F487F674064A64B403C5DF7ECB585C8EA01028891D2EC0C1060
      008C5756165E6F8C750000000049454E44AE426082}
    TabOrder = 2
    OnClick = bcancelarClick
    Appearance.BorderColor = 14727579
    Appearance.BorderColorHot = 10079963
    Appearance.BorderColorDown = 4548219
    Appearance.BorderColorChecked = clBlack
    Appearance.Color = 15653832
    Appearance.ColorTo = 16178633
    Appearance.ColorChecked = 7915518
    Appearance.ColorCheckedTo = 11918331
    Appearance.ColorDisabled = 15921906
    Appearance.ColorDisabledTo = 15921906
    Appearance.ColorDown = 7778289
    Appearance.ColorDownTo = 4296947
    Appearance.ColorHot = 15465983
    Appearance.ColorHotTo = 11332863
    Appearance.ColorMirror = 15586496
    Appearance.ColorMirrorTo = 16245200
    Appearance.ColorMirrorHot = 5888767
    Appearance.ColorMirrorHotTo = 10807807
    Appearance.ColorMirrorDown = 946929
    Appearance.ColorMirrorDownTo = 5021693
    Appearance.ColorMirrorChecked = 10480637
    Appearance.ColorMirrorCheckedTo = 5682430
    Appearance.ColorMirrorDisabled = 11974326
    Appearance.ColorMirrorDisabledTo = 15921906
    Appearance.GradientHot = ggVertical
    Appearance.GradientMirrorHot = ggVertical
    Appearance.GradientDown = ggVertical
    Appearance.GradientMirrorDown = ggVertical
    Appearance.GradientChecked = ggVertical
  end
  object baplicar: TAdvGlowButton
    Left = 118
    Top = 378
    Width = 107
    Height = 24
    Caption = 'F4 | Aplicar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ImageIndex = 49
    FocusType = ftHot
    NotesFont.Charset = DEFAULT_CHARSET
    NotesFont.Color = clWindowText
    NotesFont.Height = -11
    NotesFont.Name = 'Tahoma'
    NotesFont.Style = []
    ParentFont = False
    Picture.Data = {
      89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
      610000000467414D410000AFC837058AE90000001974455874536F6674776172
      650041646F626520496D616765526561647971C9653C0000028D4944415478DA
      62FCFFFF3F032500208018030B5766DB389874BEFBF69F1B6CD6BF7F0CFF81F8
      EFBFBF40FA3FC3BFFF40FEDFBF40FA3F98FE0B94E363FBFDF5FAF5A7E5EBFAC2
      A60204108B89B5C924560E6E26710E922CE6FEFAEDEF24203D15208058BEFDFE
      CFF4EDDD17929DFE1DA80F44030410CBFFBFFF195AA355483620A5E321980608
      2096FF403F82C0AF3F403F03E93F9FCF31FC783619E8DF3F40FC8FE1DF9F7F60
      FAEFEFDF40792E86DFF22D0C8A72CAE03002018000626180C602231323032350
      F0EFA7C30CEC5CE20CCCACA20CFF7FFF01E3BFBFBE337C7F7F83E1BF4418032B
      B70458FDBF3F1003000288096612C843FFFFBC66F8F56617032BA73CC3BFAFD7
      80867233FC03BAE4C7875B0CCC92510C1C923E0C2C6C2C1003FE425C0E10404C
      A0A88280BF0C3F5F6F6560E305850733C3BFEF2F80B6FC64F8F8783703B34410
      03A76C2003330B23031B3333C400A8C50001C40263FCF9768BE1C7F3F50C7CB2
      EE40977C079A21C9C000F2F73F16867F5F1E317CBD3E81E1DFEFEF0CFF99F818
      38D4438106405C0010402C7F808A40E0CBBD7E06367E5586EF6F6F80038E8D0B
      E812A0667E0947A0D8256020FE62F8F4EC02839059330333BB00C31F60D88000
      4000B1FC87FA8543C891E1CF8F37C0C060626064FEC5F0FEDE46063E4907A0D8
      07865FDFDE3030F1EB33C805F532B0F0CA323001BDF11FEA028000628139855B
      261A1EC7FFFE7C61F8787329C3B75757187E7C7EC520A453C0C0AF1682920EFE
      41630F2080589EDE7FB82AB3FF77D83F507A07C537908E9699CCA02E22C470F2
      3613C3C617B90CDFCF006DFCBB0E922F801642ED5C052200028801941B91F1DD
      D51A9EB797A9DEBFB54829005D0E1B06082016F424FAEFF7DFA740ECAB1677F7
      0A31491A20C000BC9354216EF269EF0000000049454E44AE426082}
    TabOrder = 3
    OnClick = baplicarClick
    Appearance.BorderColor = 14727579
    Appearance.BorderColorHot = 10079963
    Appearance.BorderColorDown = 4548219
    Appearance.BorderColorChecked = clBlack
    Appearance.Color = 15653832
    Appearance.ColorTo = 16178633
    Appearance.ColorChecked = 7915518
    Appearance.ColorCheckedTo = 11918331
    Appearance.ColorDisabled = 15921906
    Appearance.ColorDisabledTo = 15921906
    Appearance.ColorDown = 7778289
    Appearance.ColorDownTo = 4296947
    Appearance.ColorHot = 15465983
    Appearance.ColorHotTo = 11332863
    Appearance.ColorMirror = 15586496
    Appearance.ColorMirrorTo = 16245200
    Appearance.ColorMirrorHot = 5888767
    Appearance.ColorMirrorHotTo = 10807807
    Appearance.ColorMirrorDown = 946929
    Appearance.ColorMirrorDownTo = 5021693
    Appearance.ColorMirrorChecked = 10480637
    Appearance.ColorMirrorCheckedTo = 5682430
    Appearance.ColorMirrorDisabled = 11974326
    Appearance.ColorMirrorDisabledTo = 15921906
    Appearance.GradientHot = ggVertical
    Appearance.GradientMirrorHot = ggVertical
    Appearance.GradientDown = ggVertical
    Appearance.GradientMirrorDown = ggVertical
    Appearance.GradientChecked = ggVertical
  end
  object dsemitente: TDataSource
    DataSet = frmmodulo.qremitente
    Left = 116
    Top = 711
  end
  object dsconfig: TDataSource
    DataSet = frmmodulo.qrconfig
    Left = 404
    Top = 359
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Filter = 'Bitmaps (*.bmp)|*.bmp'
    Left = 145
    Top = 713
  end
  object pop1: TPopupMenu
    Left = 508
    Top = 299
    object Gravar1: TMenuItem
      Caption = 'Gravar'
      ShortCut = 114
      OnClick = Gravar1Click
    end
    object Aplicar1: TMenuItem
      Caption = 'Aplicar'
      ShortCut = 115
      OnClick = Aplicar1Click
    end
    object Cancelar1: TMenuItem
      Caption = 'Cancelar'
      ShortCut = 27
      OnClick = Cancelar1Click
    end
  end
  object QUERY: TZQuery
    Connection = frmmodulo.Conexao
    Params = <>
    Left = 104
    Top = 344
  end
  object qrreceber: TZQuery
    Connection = frmmodulo.Conexao
    Params = <>
    Left = 72
    Top = 341
  end
  object qrvenda: TZQuery
    Connection = frmmodulo.Conexao
    Params = <>
    Left = 104
    Top = 341
  end
  object qrproduto: TZQuery
    Connection = frmmodulo.Conexao
    Params = <>
    Left = 8
    Top = 341
  end
  object qrmov: TZQuery
    Connection = frmmodulo.Conexao
    Params = <>
    Left = 40
    Top = 341
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '*-nfe.XML'
    Filter = 
      'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|To' +
      'dos os Arquivos (*.*)|*.*'
    Title = 'Selecione a NFe'
    Left = 344
    Top = 112
  end
  object ACBrNFe1: TACBrNFe
    Configuracoes.Geral.PathSalvar = 'C:\siscom\SERVER\nfe\'
    Configuracoes.WebServices.UF = 'AL'
    Configuracoes.WebServices.AguardarConsultaRet = 15000
    Configuracoes.WebServices.IntervaloTentativas = 1000
    Configuracoes.WebServices.AjustaAguardaConsultaRet = True
    Configuracoes.Arquivos.Salvar = True
    Configuracoes.Arquivos.PastaMensal = True
    Configuracoes.Arquivos.AdicionarLiteral = True
    Configuracoes.Arquivos.EmissaoPathNFe = True
    Configuracoes.Arquivos.PathNFe = 'C:\siscom\SERVER\nfe'
    Configuracoes.Arquivos.PathCan = 'C:\siscom\SERVER\nfe'
    Configuracoes.Arquivos.PathInu = 'C:\siscom\SERVER\nfe'
    Configuracoes.Arquivos.PathDPEC = 'C:\siscom\SERVER\nfe'
    Left = 435
    Top = 361
  end
  object Conecta_FTP: TIdFTP
    MaxLineAction = maException
    ReadTimeout = 0
    ProxySettings.ProxyType = fpcmNone
    ProxySettings.Port = 0
    Left = 571
    Top = 164
  end
end
