object frmpesqprodutos: Tfrmpesqprodutos
  Left = 312
  Top = 111
  Width = 990
  Height = 588
  Caption = 'Pesquisa de Produtos'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlsuperior: TPanel
    Left = 0
    Top = 0
    Width = 982
    Height = 41
    Align = alTop
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 851
      Top = 5
      Width = 119
      Height = 33
      Caption = 'NOVA FICHA'
      TabOrder = 0
      OnClick = BitBtn1Click
      NumGlyphs = 2
    end
  end
  object pnlinferior: TPanel
    Left = 0
    Top = 496
    Width = 982
    Height = 65
    Align = alBottom
    TabOrder = 1
    object stbrodape: TStatusBar
      Left = 1
      Top = 45
      Width = 980
      Height = 19
      Panels = <
        item
          Width = 550
        end
        item
          Width = 50
        end>
    end
    object pnlinternodir: TPanel
      Left = 626
      Top = 1
      Width = 355
      Height = 44
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      object btnanterior: TBitBtn
        Left = 58
        Top = 7
        Width = 144
        Height = 33
        Caption = '&ANTERIOR'
        TabOrder = 0
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
        Left = 210
        Top = 7
        Width = 144
        Height = 33
        Caption = '&PR'#211'XIMO'
        TabOrder = 1
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
    end
  end
  object pnlesquerda: TPanel
    Left = 0
    Top = 41
    Width = 161
    Height = 455
    Align = alLeft
    TabOrder = 2
    object btnfiltrar: TBitBtn
      Left = 7
      Top = 6
      Width = 145
      Height = 33
      Caption = 'FI&LTRAR'
      TabOrder = 0
      OnClick = btnfiltrarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500000000000
        000557777777777777750BBBBBBBBBBBBBB07F5555FFFFFFF5570BBBB0000000
        BBB07F5557777777FF570BBB077BBB770BB07F557755555775570BBBBBBBBBBB
        BBB07F5555FFFFFFF5570BBBB0000000BBB07F5557777777F5570BBBB0FFFFF0
        BBB07F5557FFFFF7F5570BBBB0000000BBB07F555777777755570BBBBBBBBBBB
        BBB07FFFFFFFFFFFFFF700000000000000007777777777777777500FFFFFFFFF
        F005577FF555FFFFF7755500FFF00000005555775FF7777777F5550F777FFFFF
        F055557F777FFF5557F5550000000FFF00555577777775FF77F5550777777000
        7055557FFFFFF777F7F555000000000000555577777777777755}
      NumGlyphs = 2
    end
    object btnlimpar: TBitBtn
      Left = 7
      Top = 42
      Width = 144
      Height = 33
      Caption = '&LIMPAR'
      TabOrder = 1
      OnClick = btnlimparClick
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
    end
    object btnimprimir: TBitBtn
      Left = 7
      Top = 78
      Width = 144
      Height = 33
      Caption = '&IMPRIMIR'
      TabOrder = 2
      OnClick = btnimprimirClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        0003377777777777777308888888888888807F33333333333337088888888888
        88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
        8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
        8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
    end
  end
  object pnlcentro: TPanel
    Left = 161
    Top = 41
    Width = 821
    Height = 455
    Align = alClient
    Caption = 'pnlcentro'
    TabOrder = 3
    object pctdados: TPageControl
      Left = 1
      Top = 49
      Width = 819
      Height = 405
      ActivePage = tbslista
      Align = alClient
      Images = imgprincipal
      Style = tsButtons
      TabOrder = 0
      object tbslista: TTabSheet
        Caption = 'LI&STAR'
        OnShow = tbslistaShow
        object dbg_produtos: TDBGrid
          Left = 0
          Top = 0
          Width = 811
          Height = 373
          Align = alClient
          DataSource = frmdados.dts_produtos
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = dbg_produtosDblClick
          OnKeyDown = dbg_produtosKeyDown
          OnKeyPress = dbg_produtosKeyPress
          Columns = <
            item
              Expanded = False
              FieldName = 'descricao'
              Title.Caption = 'DESCRI'#199#195'O'
              Width = 356
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'prve'
              Title.Caption = 'PRE'#199'O VENDA'
              Width = 106
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'caux'
              Title.Caption = 'COD. AUX.'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cbar'
              Title.Caption = 'COD. BAR.'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'codigo'
              Title.Caption = 'C'#211'DIGO'
              Width = 73
              Visible = True
            end>
        end
      end
      object tbsficha: TTabSheet
        Caption = '&EDI'#199#195'O'
        ImageIndex = 1
        OnShow = tbsfichaShow
        object Label1: TLabel
          Left = 8
          Top = 11
          Width = 42
          Height = 13
          Caption = 'C'#211'DIGO'
        end
        object Label2: TLabel
          Left = 8
          Top = 37
          Width = 62
          Height = 13
          Caption = 'DESCRI'#199#195'O'
        end
        object lblcodigo: TLabel
          Left = 133
          Top = 12
          Width = 42
          Height = 13
          Caption = 'lblcodigo'
        end
        object Label17: TLabel
          Left = 330
          Top = 387
          Width = 37
          Height = 13
          Caption = 'C.F.O.P'
          FocusControl = cbxdesccfop_cod11
          Visible = False
        end
        object Label12: TLabel
          Left = 18
          Top = 408
          Width = 109
          Height = 13
          Caption = 'MOD. DET. BS. CALC.'
          FocusControl = cbxdescmodbs_cod6
          Visible = False
        end
        object Label13: TLabel
          Left = 330
          Top = 408
          Width = 129
          Height = 13
          Caption = 'MOD. DET. BS. CALC. ST.'
          FocusControl = cbxdescmodbst_cod7
          Visible = False
        end
        object Label9: TLabel
          Left = 18
          Top = 465
          Width = 19
          Height = 13
          Caption = 'C.F.'
          FocusControl = cbxdesccf_cod3
          Visible = False
        end
        object lblregime: TLabel
          Left = 330
          Top = 468
          Width = 42
          Height = 13
          Caption = 'REGIME'
          Visible = False
        end
        object btnsalvar: TBitBtn
          Left = 0
          Top = 324
          Width = 119
          Height = 33
          Caption = 'SALVA&R'
          TabOrder = 2
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
        object btnnova: TBitBtn
          Left = 128
          Top = 324
          Width = 119
          Height = 33
          Caption = '&NOVA'
          TabOrder = 3
          OnClick = btnnovaClick
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
        object edidescricao: TEdit
          Left = 133
          Top = 32
          Width = 332
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 0
          Text = 'EDIDESCRICAO'
          OnKeyPress = edidescricaoKeyPress
        end
        object btnexcluir: TBitBtn
          Left = 256
          Top = 324
          Width = 119
          Height = 33
          Caption = '&EXCLUIR'
          TabOrder = 4
          OnClick = btnexcluirClick
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
        object pctcadprod: TPageControl
          Left = 0
          Top = 64
          Width = 769
          Height = 257
          ActivePage = tbsprincipal
          MultiLine = True
          TabOrder = 1
          object tbsprincipal: TTabSheet
            Caption = 'GERAIS'
            object Label5: TLabel
              Left = 6
              Top = 17
              Width = 49
              Height = 13
              Caption = 'UNIDADE'
              FocusControl = cbxnund
            end
            object Label3: TLabel
              Left = 7
              Top = 44
              Width = 102
              Height = 13
              Caption = 'PRE'#199'O DE VENDAS'
            end
            object Label4: TLabel
              Left = 8
              Top = 73
              Width = 107
              Height = 13
              Caption = 'C'#211'DIGO DE BARRAS'
            end
            object Label20: TLabel
              Left = 8
              Top = 102
              Width = 94
              Height = 13
              Caption = 'C'#211'DIGO AUXILIAR'
            end
            object cbxnund: TDBLookupComboBox
              Left = 130
              Top = 13
              Width = 79
              Height = 21
              DataField = 'cod13P'
              DataSource = frmdados.dts_Temp
              KeyField = 'codigo'
              ListField = 'descricao'
              ListSource = frmdados.dts_unidade
              TabOrder = 0
              OnKeyPress = edidescricaoKeyPress
            end
            object ediprve: TEdit
              Left = 130
              Top = 41
              Width = 142
              Height = 21
              CharCase = ecUpperCase
              TabOrder = 1
              Text = 'EDIPRVE'
              OnExit = ediprveExit
              OnKeyPress = ediprveKeyPress
            end
            object edicbar: TEdit
              Left = 130
              Top = 69
              Width = 116
              Height = 21
              CharCase = ecUpperCase
              TabOrder = 2
              Text = 'EDICBAR'
              OnKeyPress = edidescricaoKeyPress
            end
            object EDICAUX: TEdit
              Left = 130
              Top = 98
              Width = 116
              Height = 21
              CharCase = ecUpperCase
              TabOrder = 3
              Text = 'EDICAUX'
              OnKeyPress = edidescricaoKeyPress
            end
          end
          object TabSheet1: TTabSheet
            Caption = 'TRIBUTA'#199#213'ES'
            ImageIndex = 1
            object tbsipi: TPageControl
              Left = 0
              Top = 1
              Width = 761
              Height = 224
              ActivePage = tbsicms
              TabOrder = 0
              object tbsicms: TTabSheet
                Caption = 'ICMS'
                object pnlsuptab: TPanel
                  Left = 0
                  Top = 0
                  Width = 753
                  Height = 196
                  Align = alClient
                  TabOrder = 0
                  object Label11: TLabel
                    Left = 5
                    Top = 64
                    Width = 111
                    Height = 13
                    Caption = 'SIT. TRIB. (CONTRIB.)'
                    FocusControl = cbxdescsitb_cod5
                  end
                  object lblsita: TLabel
                    Left = 5
                    Top = 40
                    Width = 103
                    Height = 13
                    Caption = 'SIT. TRIB. (ORIGEM)'
                    FocusControl = cbxdescsita_cod4
                  end
                  object Label22: TLabel
                    Left = 314
                    Top = 11
                    Width = 27
                    Height = 13
                    Caption = 'NCM '
                  end
                  object lblaliqicms: TLabel
                    Left = 5
                    Top = 13
                    Width = 54
                    Height = 13
                    Caption = 'ALIQUOTA'
                    FocusControl = cbxdescicms_cod1
                  end
                  object Label21: TLabel
                    Left = 314
                    Top = 38
                    Width = 37
                    Height = 13
                    Caption = 'CSOSN'
                    FocusControl = cbxdesccsosn_cod14p
                  end
                  object Label7: TLabel
                    Left = 5
                    Top = 89
                    Width = 14
                    Height = 13
                    Caption = 'EX'
                  end
                  object Label8: TLabel
                    Left = 315
                    Top = 62
                    Width = 23
                    Height = 13
                    Caption = 'MVA'
                  end
                  object Label10: TLabel
                    Left = 551
                    Top = 62
                    Width = 8
                    Height = 13
                    Caption = '%'
                  end
                  object Label14: TLabel
                    Left = 316
                    Top = 87
                    Width = 137
                    Height = 13
                    Caption = 'BS. CALC. SUB. TRIB. ANT.'
                  end
                  object Label19: TLabel
                    Left = 4
                    Top = 113
                    Width = 146
                    Height = 13
                    Caption = 'ICMS CALC. SUB. TRIB. ANT.'
                  end
                  object Label6: TLabel
                    Left = 317
                    Top = 109
                    Width = 115
                    Height = 13
                    Hint = 'C'#243'digo Especificador da Substitui'#231#227'o Tribut'#225'ria'
                    Caption = 'Cod. Esp. da Subs. Trib.'
                    ParentShowHint = False
                    ShowHint = True
                  end
                  object cbxdescsitb_cod5: TDBLookupComboBox
                    Left = 153
                    Top = 35
                    Width = 153
                    Height = 21
                    DataField = 'cod5P'
                    DataSource = frmdados.dts_Temp
                    KeyField = 'codigo'
                    ListField = 'descricao'
                    ListSource = frmdados.dts_sita
                    NullValueKey = 46
                    TabOrder = 3
                    OnKeyPress = edidescricaoKeyPress
                  end
                  object cbxdescsita_cod4: TDBLookupComboBox
                    Left = 152
                    Top = 60
                    Width = 153
                    Height = 21
                    DataField = 'cod4P'
                    DataSource = frmdados.dts_Temp
                    KeyField = 'codigo'
                    ListField = 'descricao'
                    ListSource = frmdados.dts_sitb
                    NullValueKey = 46
                    TabOrder = 5
                    OnKeyPress = edidescricaoKeyPress
                  end
                  object edisimplesncm: TEdit
                    Left = 476
                    Top = 7
                    Width = 124
                    Height = 21
                    CharCase = ecUpperCase
                    TabOrder = 1
                    Text = 'EDISIMPLESNCM'
                    OnKeyPress = edisimplesncmKeyPress
                  end
                  object ckbcompoetnf: TCheckBox
                    Left = 613
                    Top = 9
                    Width = 123
                    Height = 17
                    Alignment = taLeftJustify
                    Caption = 'COMP'#213'E TOTAL NF'
                    TabOrder = 2
                  end
                  object cbxdescicms_cod1: TDBLookupComboBox
                    Left = 153
                    Top = 9
                    Width = 154
                    Height = 21
                    DataField = 'cod1P'
                    DataSource = frmdados.dts_Temp
                    KeyField = 'codigo'
                    ListField = 'descricao'
                    ListSource = frmdados.dts_icms
                    NullValueKey = 46
                    TabOrder = 0
                    OnKeyPress = edidescricaoKeyPress
                  end
                  object cbxdesccsosn_cod14p: TDBLookupComboBox
                    Left = 476
                    Top = 34
                    Width = 260
                    Height = 21
                    DataField = 'cod14p'
                    DataSource = frmdados.dts_Temp
                    KeyField = 'codigo'
                    ListField = 'descricao'
                    ListSource = frmdados.dts_csosn
                    NullValueKey = 46
                    TabOrder = 4
                    OnKeyPress = edidescricaoKeyPress
                  end
                  object EDIEX: TEdit
                    Left = 152
                    Top = 84
                    Width = 36
                    Height = 21
                    CharCase = ecUpperCase
                    TabOrder = 7
                    Text = 'EDIEX'
                    OnKeyPress = edidescricaoKeyPress
                  end
                  object ediiva: TEdit
                    Left = 476
                    Top = 59
                    Width = 69
                    Height = 21
                    CharCase = ecUpperCase
                    TabOrder = 6
                    Text = 'EDIIVA'
                    OnExit = edibscalcstExit
                    OnKeyPress = edibscalcstKeyPress
                  end
                  object edibscalcst: TEdit
                    Left = 476
                    Top = 83
                    Width = 150
                    Height = 21
                    CharCase = ecUpperCase
                    TabOrder = 8
                    Text = 'EDIBSCALCST'
                    OnExit = edibscalcstExit
                    OnKeyPress = edibscalcstKeyPress
                  end
                  object ediicmscalcst: TEdit
                    Left = 152
                    Top = 108
                    Width = 132
                    Height = 21
                    CharCase = ecUpperCase
                    TabOrder = 9
                    Text = 'EDIICMSCALCST'
                    OnExit = ediicmscalcstExit
                    OnKeyPress = edibscalcstKeyPress
                  end
                  object edicest: TEdit
                    Left = 476
                    Top = 107
                    Width = 120
                    Height = 21
                    TabOrder = 10
                    Text = 'edicest'
                    OnKeyPress = edicestKeyPress
                  end
                  object BitBtn2: TBitBtn
                    Left = 600
                    Top = 105
                    Width = 25
                    Height = 25
                    TabOrder = 11
                    OnClick = BitBtn2Click
                    Glyph.Data = {
                      76010000424D7601000000000000760000002800000020000000100000000100
                      04000000000000010000120B0000120B00001000000000000000000000000000
                      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                      33333333333333333333333333333333333333333333333333FF333333333333
                      3000333333FFFFF3F77733333000003000B033333777773777F733330BFBFB00
                      E00033337FFF3377F7773333000FBFB0E000333377733337F7773330FBFBFBF0
                      E00033F7FFFF3337F7773000000FBFB0E000377777733337F7770BFBFBFBFBF0
                      E00073FFFFFFFF37F777300000000FB0E000377777777337F7773333330BFB00
                      000033333373FF77777733333330003333333333333777333333333333333333
                      3333333333333333333333333333333333333333333333333333333333333333
                      3333333333333333333333333333333333333333333333333333}
                    NumGlyphs = 2
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
                  FocusControl = cbxdescipi_cod2
                end
                object cbxdescipi_cod2: TDBLookupComboBox
                  Left = 84
                  Top = 28
                  Width = 245
                  Height = 21
                  DataField = 'cod2P'
                  DataSource = frmdados.dts_Temp
                  KeyField = 'codigo'
                  ListField = 'descricao'
                  ListSource = frmdados.dts_ipi
                  TabOrder = 0
                  OnKeyPress = edidescricaoKeyPress
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
                  FocusControl = cbxdescpis_cod9
                end
                object cbxdescpis_cod9: TDBLookupComboBox
                  Left = 89
                  Top = 36
                  Width = 232
                  Height = 21
                  DataField = 'cod9P'
                  DataSource = frmdados.dts_Temp
                  KeyField = 'codigo'
                  ListField = 'descricao'
                  ListSource = frmdados.dts_pis
                  TabOrder = 0
                  OnKeyPress = edidescricaoKeyPress
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
                  FocusControl = cbxdesccofins_cod10
                end
                object cbxdesccofins_cod10: TDBLookupComboBox
                  Left = 88
                  Top = 34
                  Width = 233
                  Height = 21
                  DataField = 'cod10P'
                  DataSource = frmdados.dts_Temp
                  KeyField = 'codigo'
                  ListField = 'descricao'
                  ListSource = frmdados.dts_cofins
                  TabOrder = 0
                  OnKeyPress = edidescricaoKeyPress
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
                  FocusControl = cbxdescvii_cod8
                end
                object cbxdescvii_cod8: TDBLookupComboBox
                  Left = 126
                  Top = 27
                  Width = 203
                  Height = 21
                  DataField = 'cod8P'
                  DataSource = frmdados.dts_Temp
                  KeyField = 'codigo'
                  ListField = 'descricao'
                  ListSource = frmdados.dts_impostoII
                  TabOrder = 0
                  OnKeyPress = edidescricaoKeyPress
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
                  FocusControl = cbxdescoimp_cod12
                end
                object cbxdescoimp_cod12: TDBLookupComboBox
                  Left = 96
                  Top = 18
                  Width = 233
                  Height = 21
                  DataField = 'cod12P'
                  DataSource = frmdados.dts_Temp
                  KeyField = 'codigo'
                  ListField = 'descricao'
                  ListSource = frmdados.dts_impostoIII
                  TabOrder = 0
                  OnKeyPress = edidescricaoKeyPress
                end
              end
              object TabSheet2: TTabSheet
                Caption = 'ALIQUOTA INTERESTADUAL'
                ImageIndex = 6
                OnShow = TabSheet2Show
                object DBGrid1: TDBGrid
                  Left = 8
                  Top = 16
                  Width = 737
                  Height = 145
                  DataSource = frmdados.dts_aliqinter
                  TabOrder = 0
                  TitleFont.Charset = DEFAULT_CHARSET
                  TitleFont.Color = clWindowText
                  TitleFont.Height = -11
                  TitleFont.Name = 'MS Sans Serif'
                  TitleFont.Style = []
                  OnKeyPress = DBGrid1KeyPress
                  Columns = <
                    item
                      Expanded = False
                      FieldName = 'siglaestado'
                      Title.Caption = 'ESTADO'
                      Width = 69
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'ALIQ'
                      Title.Caption = '% ALIQ. ICMS'
                      Width = 127
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'ID'
                      Width = 91
                      Visible = True
                    end>
                end
                object Button1: TButton
                  Left = 5
                  Top = 168
                  Width = 149
                  Height = 25
                  Caption = 'Incluir '
                  TabOrder = 1
                  OnClick = Button1Click
                end
                object Button2: TButton
                  Left = 157
                  Top = 168
                  Width = 149
                  Height = 25
                  Caption = 'Excluir'
                  TabOrder = 2
                  OnClick = Button2Click
                end
                object Button3: TButton
                  Left = 309
                  Top = 168
                  Width = 149
                  Height = 25
                  Caption = 'Salvar'
                  TabOrder = 3
                  OnClick = Button3Click
                end
              end
            end
          end
        end
        object cbxdesccfop_cod11: TDBLookupComboBox
          Left = 461
          Top = 381
          Width = 260
          Height = 21
          DataField = 'cod11P'
          DataSource = frmdados.dts_Temp
          KeyField = 'codigo'
          ListField = 'descricao'
          ListSource = frmdados.dts_cfop
          NullValueKey = 46
          TabOrder = 5
          Visible = False
          OnKeyPress = edidescricaoKeyPress
        end
        object cbxdescmodbs_cod6: TDBLookupComboBox
          Left = 133
          Top = 405
          Width = 190
          Height = 21
          DataField = 'cod6P'
          DataSource = frmdados.dts_Temp
          KeyField = 'codigo'
          ListField = 'descricao'
          ListSource = frmdados.dts_modbc
          NullValueKey = 46
          TabOrder = 6
          Visible = False
          OnKeyPress = edidescricaoKeyPress
        end
        object cbxdescmodbst_cod7: TDBLookupComboBox
          Left = 461
          Top = 405
          Width = 260
          Height = 21
          DataField = 'cod7P'
          DataSource = frmdados.dts_Temp
          KeyField = 'codigo'
          ListField = 'descricao'
          ListSource = frmdados.dts_modbcst
          NullValueKey = 46
          TabOrder = 7
          Visible = False
          OnKeyPress = edidescricaoKeyPress
        end
        object cbxdesccf_cod3: TDBLookupComboBox
          Left = 133
          Top = 462
          Width = 183
          Height = 21
          DataField = 'cod3P'
          DataSource = frmdados.dts_Temp
          KeyField = 'codigo'
          ListField = 'descricao'
          ListSource = frmdados.dts_cf
          NullValueKey = 46
          TabOrder = 8
          Visible = False
          OnKeyPress = edidescricaoKeyPress
        end
        object cbxregime: TComboBox
          Left = 461
          Top = 463
          Width = 153
          Height = 21
          ItemHeight = 13
          TabOrder = 9
          Text = 'cbxregime'
          Visible = False
          OnClick = cbxregimeClick
        end
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 819
      Height = 48
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object lbllocalizar: TLabel
        Left = 8
        Top = 18
        Width = 59
        Height = 13
        Caption = 'L&OCALIZAR'
      end
      object edilocalizar: TEdit
        Left = 104
        Top = 14
        Width = 289
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 0
        Text = 'EDILOCALIZAR'
        OnChange = edilocalizarChange
        OnKeyPress = edilocalizarKeyPress
      end
    end
  end
  object imgprincipal: TImageList
    Left = 622
    Top = 77
    Bitmap = {
      494C010102000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BFBFBF00BFBFBF00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00BFBFBF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BFBFBF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BFBFBF00BFBFBF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF0000000000FFFF
      FF000000000000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BFBFBF000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      000000000000BFBFBF00BFBFBF0000000000FFFF0000000000000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF0000000000BFBFBF0000000000FFFF00000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF000000000000000000BFBFBF0000000000FFFF000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000000000FFFFFF000000
      000000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      000000000000FFFFFF000000000000000000FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000BFBFBF0000000000FFFF00000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF00000000000000000000000000000000000000000000FF
      FF0000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000BFBFBF0000000000FFFF000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF000000
      0000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000000000000000FFFF00000000000000FFFF00FFFF
      FF0000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF00000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      000000000000000000000000FF000000000000000000000000000000000000FF
      FF00FFFFFF0000FFFF00000000000000000000FFFF0000000000FFFFFF00FFFF
      FF000000000000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000FF00000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000FFFFFF000000000000000000FFFFFF00FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000000000000000
      00000000000000FFFF0000000000FFFFFF00FFFFFF000000000000000000FFFF
      FF0000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000FFFF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000FFFFFF008007FC00000000000003FC0000000000
      0001200000000000801000000000000000000000000000000000000000000000
      8000000000000000800000000000000000000000000000000000000000000000
      0000E000000000000000F80000000000C001F00000000000C001E00100000000
      C007C40300000000E3FFEC070000000000000000000000000000000000000000
      000000000000}
  end
end
