object frmpesqnf: Tfrmpesqnf
  Left = 32
  Top = 77
  Width = 1213
  Height = 636
  Caption = 'Pesquisa de Notas Fiscais'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label37: TLabel
    Left = 331
    Top = 80
    Width = 21
    Height = 13
    Caption = 'CEP'
  end
  object DBText9: TDBText
    Left = 368
    Top = 80
    Width = 73
    Height = 17
  end
  object Label38: TLabel
    Left = 339
    Top = 88
    Width = 21
    Height = 13
    Caption = 'CEP'
  end
  object DBText10: TDBText
    Left = 376
    Top = 88
    Width = 73
    Height = 17
  end
  object pnlsuperior: TPanel
    Left = 0
    Top = 0
    Width = 1205
    Height = 65
    Align = alTop
    TabOrder = 0
    object lbltitdest: TLabel
      Left = 10
      Top = 11
      Width = 132
      Height = 20
      Caption = 'DESTINAT'#193'RIO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbldest: TLabel
      Left = 11
      Top = 41
      Width = 726
      Height = 20
      AutoSize = False
      Caption = 'lbldest'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnimportar: TBitBtn
      Left = 352
      Top = 2
      Width = 152
      Height = 33
      Caption = '&IMPORTAR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = btnimportarClick
      NumGlyphs = 2
    end
    object btnajustatrib: TBitBtn
      Left = 674
      Top = 2
      Width = 152
      Height = 33
      Caption = 'AJUSTA TR&IBUTA'#199#195'O'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = btnajustatribClick
      NumGlyphs = 2
    end
    object btnemitenfe: TBitBtn
      Left = 835
      Top = 2
      Width = 152
      Height = 33
      Caption = '&EMISS'#195'O NFE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = btnemitenfeClick
      NumGlyphs = 2
    end
    object BitBtn1: TBitBtn
      Left = 513
      Top = 2
      Width = 152
      Height = 33
      Caption = 'NOVA NFE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn1Click
      NumGlyphs = 2
    end
  end
  object pnlinferior: TPanel
    Left = 0
    Top = 544
    Width = 1205
    Height = 65
    Align = alBottom
    TabOrder = 1
    object stbrodape: TStatusBar
      Left = 1
      Top = 45
      Width = 1203
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
      Left = 895
      Top = 1
      Width = 309
      Height = 44
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      object btnanterior: TBitBtn
        Left = 3
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
        Left = 155
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
    Top = 65
    Width = 161
    Height = 479
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
    object Memo1: TMemo
      Left = 8
      Top = 120
      Width = 140
      Height = 351
      Cursor = crArrow
      Color = clBtnHighlight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Lines.Strings = (
        'Instru'#231#227'o Inicial'
        ''
        '1) Para Editar, Inserir '
        'ou Excluir um '
        'N.F.'
        'clique na guia '
        '* EDI'#199#195'O * '
        ''
        '2) Para ordenar por'
        'diferente tipo de '
        'informa'#231#227'o Clique '
        'no bot'#227'o'
        '* FILTRAR * '
        ''
        '3) Para Editar ou '
        'Inserir Cliente ou '
        'Fornecedor'
        'utilize Menu'
        'Cadastro')
      ParentFont = False
      TabOrder = 3
      OnEnter = Memo1Enter
    end
  end
  object pnlcentro: TPanel
    Left = 161
    Top = 65
    Width = 1044
    Height = 479
    Align = alClient
    Caption = 'pnlcentro'
    TabOrder = 3
    object pctdados: TPageControl
      Left = 1
      Top = 49
      Width = 1042
      Height = 429
      ActivePage = tbslista
      Align = alClient
      Images = imgprincipal
      Style = tsButtons
      TabOrder = 0
      object tbslista: TTabSheet
        Caption = 'LI&STAR'
        OnShow = tbslistaShow
        object dbg_nf: TDBGrid
          Left = 0
          Top = 0
          Width = 1034
          Height = 397
          Align = alClient
          DataSource = frmdados.dts_nf
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDrawColumnCell = dbg_nfDrawColumnCell
          OnKeyDown = dbg_nfKeyDown
          Columns = <
            item
              Expanded = False
              FieldName = 'codigo'
              Title.Caption = 'C'#211'DIGO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nomedest'
              Title.Caption = 'DESTINAT'#193'RIO'
              Visible = True
            end>
        end
      end
      object tbsficha: TTabSheet
        Caption = '&EDI'#199#195'O'
        ImageIndex = 1
        OnShow = tbsfichaShow
        object Bevel8: TBevel
          Left = 472
          Top = 279
          Width = 353
          Height = 60
          Shape = bsFrame
        end
        object Bevel6: TBevel
          Left = 0
          Top = 279
          Width = 323
          Height = 60
          Shape = bsFrame
        end
        object Bevel5: TBevel
          Left = 113
          Top = 344
          Width = 56
          Height = 17
          Shape = bsFrame
          Visible = False
        end
        object Bevel2: TBevel
          Left = 0
          Top = 1
          Width = 825
          Height = 32
          Shape = bsFrame
        end
        object Bevel1: TBevel
          Left = 0
          Top = 41
          Width = 699
          Height = 111
          Shape = bsFrame
        end
        object Label1: TLabel
          Left = 7
          Top = 10
          Width = 42
          Height = 13
          Caption = 'C'#211'DIGO'
        end
        object lblcodigo: TLabel
          Left = 110
          Top = 10
          Width = 42
          Height = 13
          Caption = 'lblcodigo'
        end
        object Label10: TLabel
          Left = 7
          Top = 50
          Width = 93
          Height = 13
          Caption = 'DESTINAT'#193'RIO'
          FocusControl = cbxdescdest_cod4nf
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label29: TLabel
          Left = 7
          Top = 75
          Width = 69
          Height = 13
          Caption = 'ENDERE'#199'O'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label30: TLabel
          Left = 466
          Top = 75
          Width = 28
          Height = 13
          Caption = 'NRO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label31: TLabel
          Left = 466
          Top = 50
          Width = 32
          Height = 13
          Caption = 'CNPJ'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label32: TLabel
          Left = 466
          Top = 121
          Width = 13
          Height = 13
          Caption = 'IE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label33: TLabel
          Left = 7
          Top = 99
          Width = 48
          Height = 13
          Caption = 'BAIRRO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label34: TLabel
          Left = 355
          Top = 99
          Width = 25
          Height = 13
          Caption = 'CEP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label35: TLabel
          Left = 466
          Top = 99
          Width = 66
          Height = 13
          Caption = 'MUNIC'#205'PIO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label36: TLabel
          Left = 7
          Top = 121
          Width = 34
          Height = 13
          Caption = 'FONE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label39: TLabel
          Left = 355
          Top = 121
          Width = 17
          Height = 13
          Caption = 'UF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Bevel3: TBevel
          Left = 0
          Top = 158
          Width = 825
          Height = 113
          Shape = bsFrame
        end
        object Label9: TLabel
          Left = 7
          Top = 169
          Width = 64
          Height = 13
          Caption = 'EMITENTE'
          FocusControl = cbxdescemi_cod3nf
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label40: TLabel
          Left = 466
          Top = 168
          Width = 32
          Height = 13
          Caption = 'CNPJ'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label41: TLabel
          Left = 7
          Top = 193
          Width = 69
          Height = 13
          Caption = 'ENDERE'#199'O'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label42: TLabel
          Left = 466
          Top = 193
          Width = 28
          Height = 13
          Caption = 'NRO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label43: TLabel
          Left = 7
          Top = 215
          Width = 48
          Height = 13
          Caption = 'BAIRRO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label44: TLabel
          Left = 355
          Top = 215
          Width = 25
          Height = 13
          Caption = 'CEP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label45: TLabel
          Left = 466
          Top = 215
          Width = 66
          Height = 13
          Caption = 'MUNIC'#205'PIO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label46: TLabel
          Left = 7
          Top = 238
          Width = 34
          Height = 13
          Caption = 'FONE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label47: TLabel
          Left = 355
          Top = 238
          Width = 17
          Height = 13
          Caption = 'UF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label48: TLabel
          Left = 466
          Top = 238
          Width = 13
          Height = 13
          Caption = 'IE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 234
          Top = 10
          Width = 91
          Height = 13
          Caption = 'DATA CADASTRO'
        end
        object lbldatacad: TLabel
          Left = 408
          Top = 10
          Width = 49
          Height = 13
          Alignment = taRightJustify
          Caption = 'lbldatacad'
        end
        object lblendereco: TLabel
          Left = 113
          Top = 75
          Width = 67
          Height = 13
          Caption = 'lblendereco'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblbairro: TLabel
          Left = 113
          Top = 99
          Width = 46
          Height = 13
          Caption = 'lblbairro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbltelefones: TLabel
          Left = 113
          Top = 121
          Width = 66
          Height = 13
          Caption = 'lbltelefones'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblcep: TLabel
          Left = 384
          Top = 99
          Width = 35
          Height = 13
          Caption = 'lblcep'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblestado: TLabel
          Left = 384
          Top = 121
          Width = 52
          Height = 13
          Caption = 'lblestado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblcnpj: TLabel
          Left = 570
          Top = 50
          Width = 38
          Height = 13
          Caption = 'lblcnpj'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblnumero: TLabel
          Left = 570
          Top = 75
          Width = 55
          Height = 13
          Caption = 'lblnumero'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblmunicipio: TLabel
          Left = 570
          Top = 99
          Width = 67
          Height = 13
          Caption = 'lblmunicipio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblie: TLabel
          Left = 570
          Top = 121
          Width = 24
          Height = 13
          Caption = 'lblie'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblenderecoemi: TLabel
          Left = 111
          Top = 193
          Width = 86
          Height = 13
          Caption = 'lblenderecoemi'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblbairroemi: TLabel
          Left = 111
          Top = 215
          Width = 65
          Height = 13
          Caption = 'lblbairroemi'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbltelefonesemi: TLabel
          Left = 111
          Top = 238
          Width = 85
          Height = 13
          Caption = 'lbltelefonesemi'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblcepemi: TLabel
          Left = 384
          Top = 215
          Width = 54
          Height = 13
          Caption = 'lblcepemi'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblestadoemi: TLabel
          Left = 384
          Top = 238
          Width = 71
          Height = 13
          Caption = 'lblestadoemi'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblcnpjemi: TLabel
          Left = 570
          Top = 168
          Width = 57
          Height = 13
          Caption = 'lblcnpjemi'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblnumeroemi: TLabel
          Left = 570
          Top = 193
          Width = 74
          Height = 13
          Caption = 'lblnumeroemi'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblmunicipioemi: TLabel
          Left = 570
          Top = 215
          Width = 86
          Height = 13
          Caption = 'lblmunicipioemi'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblieemi: TLabel
          Left = 570
          Top = 238
          Width = 43
          Height = 13
          Caption = 'lblieemi'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label20: TLabel
          Left = 12
          Top = 393
          Width = 61
          Height = 13
          Caption = 'N.O CUPOM'
          Visible = False
        end
        object Label23: TLabel
          Left = 684
          Top = 316
          Width = 29
          Height = 13
          Caption = 'DATA'
          Visible = False
        end
        object Label57: TLabel
          Left = 16
          Top = 274
          Width = 32
          Height = 13
          Caption = ' ICMS '
        end
        object Label59: TLabel
          Left = 7
          Top = 291
          Width = 56
          Height = 13
          Caption = 'CR'#201'DITO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label60: TLabel
          Left = 182
          Top = 291
          Width = 68
          Height = 13
          Caption = 'RETEN'#199#195'O'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label61: TLabel
          Left = 7
          Top = 316
          Width = 48
          Height = 13
          Caption = 'ARTIGO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 478
          Top = 291
          Width = 56
          Height = 13
          Caption = 'CR'#201'DITO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label14: TLabel
          Left = 678
          Top = 291
          Width = 68
          Height = 13
          Caption = 'RETEN'#199#195'O'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label63: TLabel
          Left = 478
          Top = 316
          Width = 48
          Height = 13
          Caption = 'ARTIGO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label64: TLabel
          Left = 479
          Top = 274
          Width = 19
          Height = 13
          Caption = ' IPI '
        end
        object Label25: TLabel
          Left = 84
          Top = 341
          Width = 586
          Height = 13
          Caption = 
            'TODOS OS CAMPOS QUE DESTACAM-SE EM VERMELHO S'#195'O DE PREENCHIMENTO' +
            ' OBRIGAT'#211'RIO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label114: TLabel
          Left = 466
          Top = 10
          Width = 101
          Height = 13
          Caption = 'NAT. OPERA'#199#195'O'
          FocusControl = cbxdescnatop_cod6nf
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Bevel4: TBevel
          Left = 325
          Top = 279
          Width = 145
          Height = 60
          Shape = bsFrame
        end
        object Label115: TLabel
          Left = 336
          Top = 274
          Width = 23
          Height = 13
          Caption = ' ISS '
        end
        object Label116: TLabel
          Left = 331
          Top = 291
          Width = 56
          Height = 13
          Caption = 'CR'#201'DITO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object btnsalvar: TBitBtn
          Left = 0
          Top = 362
          Width = 119
          Height = 33
          Caption = 'SALVA&R'
          TabOrder = 14
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
          Top = 362
          Width = 119
          Height = 33
          Caption = '&NOVA'
          TabOrder = 15
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
        object btnexcluir: TBitBtn
          Left = 256
          Top = 362
          Width = 119
          Height = 33
          Caption = '&EXCLUIR'
          TabOrder = 16
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
        object cbxdescdest_cod4nf: TDBLookupComboBox
          Left = 112
          Top = 48
          Width = 353
          Height = 21
          DataField = 'cod4nf'
          DataSource = frmdados.dts_Temp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          KeyField = 'codigo'
          ListField = 'nome'
          ListSource = frmdados.dts_clientes
          ParentFont = False
          TabOrder = 1
          OnKeyPress = cbxdescdest_cod4nfKeyPress
        end
        object rgbtipodest: TRadioGroup
          Left = 703
          Top = 37
          Width = 122
          Height = 115
          Caption = 'DESTINAT'#193'RIO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ItemIndex = 0
          Items.Strings = (
            'CLIENTE'
            'FORNECEDOR')
          ParentFont = False
          TabOrder = 2
          OnClick = rgbtipodestClick
        end
        object cbxdescemi_cod3nf: TDBLookupComboBox
          Left = 112
          Top = 165
          Width = 353
          Height = 21
          DataField = 'cod3nf'
          DataSource = frmdados.dts_Temp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          KeyField = 'codigo'
          ListField = 'nome'
          ListSource = frmdados.dts_emitente
          ParentFont = False
          TabOrder = 3
          OnKeyPress = edidescricaoKeyPress
        end
        object rgbctipoemi1: TRadioGroup
          Left = 609
          Top = 357
          Width = 96
          Height = 36
          Caption = 'EMISS'#195'O'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ItemIndex = 0
          Items.Strings = (
            'C/ CUPOM'
            'S/ CUPOM')
          ParentFont = False
          TabOrder = 4
          Visible = False
          OnClick = rgbctipoemi1Click
        end
        object edincupom1: TEdit
          Left = 747
          Top = 349
          Width = 67
          Height = 21
          TabOrder = 12
          Text = 'edincupom1'
          Visible = False
          OnKeyPress = edincupom1KeyPress
        end
        object edidatacupom1: TMaskEdit
          Left = 748
          Top = 312
          Width = 69
          Height = 21
          EditMask = '!99/99/0000;1;_'
          MaxLength = 10
          TabOrder = 13
          Text = '  /  /    '
          Visible = False
          OnKeyPress = edidatacupom1KeyPress
        end
        object edivlrcredicms: TEdit
          Left = 112
          Top = 287
          Width = 65
          Height = 21
          TabOrder = 5
          Text = 'edivlrcredicms'
          OnExit = edivlrcredicmsExit
          OnKeyPress = edivlrcredicmsKeyPress
        end
        object edivlrreticms: TEdit
          Left = 254
          Top = 287
          Width = 59
          Height = 21
          TabOrder = 6
          Text = 'edivlrreticms'
          OnExit = edivlrreticmsExit
          OnKeyPress = edivlrreticmsKeyPress
        end
        object ediartricms: TEdit
          Left = 112
          Top = 312
          Width = 65
          Height = 21
          TabOrder = 7
          Text = 'ediartricms'
          OnKeyPress = ediartricmsKeyPress
        end
        object edivlrcredIPI: TEdit
          Left = 573
          Top = 287
          Width = 75
          Height = 21
          TabOrder = 9
          Text = 'edivlrcredIPI'
          OnExit = edivlrcredIPIExit
          OnKeyPress = edivlrcredIPIKeyPress
        end
        object edivlrretipi: TEdit
          Left = 750
          Top = 287
          Width = 67
          Height = 21
          TabOrder = 10
          Text = 'edivlrretipi'
          OnExit = edivlrretipiExit
          OnKeyPress = edivlrretipiKeyPress
        end
        object ediartripi: TEdit
          Left = 572
          Top = 312
          Width = 76
          Height = 21
          TabOrder = 11
          Text = 'ediartripi'
          OnKeyPress = ediartricmsKeyPress
        end
        object cbxdescnatop_cod6nf: TDBLookupComboBox
          Left = 570
          Top = 6
          Width = 247
          Height = 21
          DataField = 'cod6nf'
          DataSource = frmdados.dts_Temp
          KeyField = 'codigo'
          ListField = 'descricao'
          ListSource = frmdados.dts_natop
          TabOrder = 0
          OnKeyPress = cbxdescnatop_cod6nfKeyPress
        end
        object edivlrcrediss: TEdit
          Left = 396
          Top = 287
          Width = 65
          Height = 21
          TabOrder = 8
          Text = 'edivlrcrediss'
          OnExit = edivlrcredissExit
          OnKeyPress = edivlrcredicmsKeyPress
        end
      end
      object tbsprod: TTabSheet
        Caption = 'PRODUTOS'
        ImageIndex = 2
        OnHide = tbsprodHide
        OnShow = tbsprodShow
        object Label2: TLabel
          Left = 9
          Top = 2
          Width = 42
          Height = 13
          Caption = 'C'#211'DIGO'
        end
        object SpeedButton1: TSpeedButton
          Left = 98
          Top = 26
          Width = 23
          Height = 22
          OnClick = SpeedButton1Click
        end
        object Label3: TLabel
          Left = 129
          Top = 2
          Width = 62
          Height = 13
          Caption = 'DESCRI'#199#195'O'
        end
        object Label4: TLabel
          Left = 533
          Top = 2
          Width = 24
          Height = 13
          Caption = 'UND'
          FocusControl = cbxdescund_cod13prodnf
        end
        object Label5: TLabel
          Left = 430
          Top = 2
          Width = 71
          Height = 13
          Caption = 'QUANTIDADE'
        end
        object Label11: TLabel
          Left = 655
          Top = 2
          Width = 37
          Height = 13
          Caption = 'PRE'#199'O'
        end
        object Label12: TLabel
          Left = 719
          Top = 2
          Width = 57
          Height = 13
          Caption = 'SUBTOTAL'
        end
        object Label15: TLabel
          Left = 20
          Top = 413
          Width = 109
          Height = 13
          Caption = 'MOD. DET. BS. CALC.'
          FocusControl = cbxdescmodbs_cod6prodnf
          Visible = False
        end
        object Label18: TLabel
          Left = 20
          Top = 442
          Width = 109
          Height = 13
          Caption = 'BS. CALC. SUB. TRIB.'
          Visible = False
        end
        object Label19: TLabel
          Left = 330
          Top = 440
          Width = 118
          Height = 13
          Caption = 'ICMS CALC. SUB. TRIB.'
          Visible = False
        end
        object Label13: TLabel
          Left = 20
          Top = 471
          Width = 19
          Height = 13
          Caption = 'C.F.'
          FocusControl = cbxdesccf_cod3prodnf
          Visible = False
        end
        object Label16: TLabel
          Left = 337
          Top = 408
          Width = 129
          Height = 13
          Caption = 'MOD. DET. BS. CALC. ST.'
          FocusControl = cbxdescmodbst_cod7prodnf
        end
        object Label122: TLabel
          Left = 795
          Top = 2
          Width = 26
          Height = 13
          Caption = 'ITEM'
        end
        object edicpro: TEdit
          Left = 6
          Top = 26
          Width = 91
          Height = 21
          TabOrder = 0
          Text = 'edicpro'
          OnExit = edicproExit
          OnKeyPress = edicproKeyPress
        end
        object edinpro: TEdit
          Left = 125
          Top = 26
          Width = 296
          Height = 21
          TabOrder = 1
          Text = 'edinpro'
          OnKeyPress = edinproKeyPress
        end
        object cbxdescund_cod13prodnf: TDBLookupComboBox
          Left = 530
          Top = 26
          Width = 87
          Height = 21
          DataField = 'cod13prodnf'
          DataSource = frmdados.dts_Temp
          KeyField = 'codigo'
          ListField = 'descricao'
          ListSource = frmdados.dts_unidade
          TabOrder = 3
          OnKeyPress = cbxdescund_cod13prodnfKeyPress
        end
        object ediqtde: TEdit
          Left = 427
          Top = 26
          Width = 97
          Height = 21
          TabOrder = 2
          Text = 'ediqtde'
          OnExit = ediqtdeExit
          OnKeyPress = ediqtdeKeyPress
        end
        object ediprve: TEdit
          Left = 621
          Top = 26
          Width = 74
          Height = 21
          TabOrder = 4
          Text = 'ediprve'
          OnExit = ediprveExit
          OnKeyPress = ediprveKeyPress
        end
        object edisubtotal: TEdit
          Left = 701
          Top = 26
          Width = 81
          Height = 21
          TabOrder = 5
          Text = 'edisubtotal'
          OnExit = edisubtotalExit
          OnKeyPress = edisubtotalKeyPress
        end
        object btngravaprod: TBitBtn
          Left = 737
          Top = 53
          Width = 89
          Height = 33
          Caption = 'SALVA&R'
          TabOrder = 7
          OnClick = btngravaprodClick
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
        object pctprod: TPageControl
          Left = 3
          Top = 56
          Width = 726
          Height = 329
          ActivePage = tbslistaprod
          TabOrder = 8
          object tbslistaprod: TTabSheet
            Caption = '&LISTA'
            OnShow = tbslistaprodShow
            object Label49: TLabel
              Left = 576
              Top = 281
              Width = 35
              Height = 13
              Caption = 'TOTAL'
            end
            object lbltotprod: TLabel
              Left = 666
              Top = 281
              Width = 42
              Height = 13
              Alignment = taRightJustify
              Caption = 'lbltotserv'
            end
            object dbgprod: TDBGrid
              Left = 1
              Top = 7
              Width = 715
              Height = 266
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
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'npro'
                  Title.Caption = 'DESCRI'#199#195'O'
                  Width = 330
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'qtde'
                  Title.Caption = 'QUANTIDADE'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'nomeunidade'
                  Title.Caption = ' '
                  Width = 23
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'prve'
                  Title.Caption = 'PR. VD.'
                  Width = 73
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'subtotal'
                  Title.Caption = 'SUBTOTAL'
                  Width = 74
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'item'
                  Title.Caption = 'ITEM'
                  Width = 34
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
              Width = 718
              Height = 29
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 0
              object spdprodant: TSpeedButton
                Left = 666
                Top = 4
                Width = 23
                Height = 22
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
                OnClick = spdprodantClick
              end
              object spdprodprox: TSpeedButton
                Left = 693
                Top = 4
                Width = 23
                Height = 22
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
                NumGlyphs = 2
                OnClick = spdprodproxClick
              end
              object Label24: TLabel
                Left = 5
                Top = 0
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
            end
            object pnldescricao: TPanel
              Left = 0
              Top = 29
              Width = 718
              Height = 44
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 1
              object lblproduto: TLabel
                Left = 5
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
              Width = 718
              Height = 228
              ActivePage = tbsicms
              Align = alClient
              TabOrder = 2
              object tbsicms: TTabSheet
                Caption = 'ICMS'
                object pnlsuptab: TPanel
                  Left = 0
                  Top = 0
                  Width = 710
                  Height = 185
                  BevelOuter = bvNone
                  TabOrder = 0
                  object Label7: TLabel
                    Left = 314
                    Top = 40
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
                  object lblaliqicms: TLabel
                    Left = 4
                    Top = 13
                    Width = 54
                    Height = 13
                    Caption = 'ALIQUOTA'
                    FocusControl = cbxdescicms_cod1prodnf
                  end
                  object Label21: TLabel
                    Left = 4
                    Top = 70
                    Width = 37
                    Height = 13
                    Caption = 'CSOSN'
                    FocusControl = cbxdesccsosn_cod14prodnf
                  end
                  object Label118: TLabel
                    Left = 4
                    Top = 99
                    Width = 23
                    Height = 13
                    Caption = 'MVA'
                  end
                  object Label119: TLabel
                    Left = 294
                    Top = 100
                    Width = 8
                    Height = 13
                    Caption = '%'
                    FocusControl = cbxdescsita_cod4prodnf
                  end
                  object Label120: TLabel
                    Left = 314
                    Top = 99
                    Width = 136
                    Height = 13
                    Caption = 'BS. CALC. ICMS SUBS ANT'
                    FocusControl = cbxdescsita_cod4prodnf
                  end
                  object Label121: TLabel
                    Left = 2
                    Top = 129
                    Width = 143
                    Height = 13
                    Caption = 'VLR. CALC. ICMS SUBS ANT'
                    FocusControl = cbxdescsita_cod4prodnf
                  end
                  object cbxdescsitb_cod5prodnf: TDBLookupComboBox
                    Left = 456
                    Top = 35
                    Width = 246
                    Height = 21
                    DataField = 'cod5prodnf'
                    DataSource = frmdados.dts_Temp
                    KeyField = 'codigo'
                    ListField = 'descricao'
                    ListSource = frmdados.dts_sitb
                    NullValueKey = 46
                    TabOrder = 4
                    OnKeyPress = edidescricaoKeyPress
                  end
                  object cbxdescsita_cod4prodnf: TDBLookupComboBox
                    Left = 456
                    Top = 66
                    Width = 246
                    Height = 21
                    DataField = 'cod4prodnf'
                    DataSource = frmdados.dts_Temp
                    KeyField = 'codigo'
                    ListField = 'descricao'
                    ListSource = frmdados.dts_sita
                    NullValueKey = 46
                    TabOrder = 6
                    OnKeyPress = edidescricaoKeyPress
                  end
                  object edisimplesncm: TEdit
                    Left = 456
                    Top = 7
                    Width = 113
                    Height = 21
                    CharCase = ecUpperCase
                    TabOrder = 1
                    Text = 'EDISIMPLESNCM'
                  end
                  object cbxdesccfop_cod11prodnf: TDBLookupComboBox
                    Left = 152
                    Top = 36
                    Width = 155
                    Height = 21
                    DataField = 'cod11prodnf'
                    DataSource = frmdados.dts_Temp
                    KeyField = 'codigo'
                    ListField = 'descricao'
                    ListSource = frmdados.dts_cfop
                    NullValueKey = 46
                    TabOrder = 3
                    OnKeyPress = edidescricaoKeyPress
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
                    Left = 152
                    Top = 9
                    Width = 155
                    Height = 21
                    DataField = 'cod1prodnf'
                    DataSource = frmdados.dts_Temp
                    KeyField = 'codigo'
                    ListField = 'descricao'
                    ListSource = frmdados.dts_icms
                    NullValueKey = 46
                    TabOrder = 0
                    OnKeyPress = edidescricaoKeyPress
                  end
                  object cbxdesccsosn_cod14prodnf: TDBLookupComboBox
                    Left = 152
                    Top = 66
                    Width = 155
                    Height = 21
                    DataField = 'cod14prodnf'
                    DataSource = frmdados.dts_Temp
                    KeyField = 'codigo'
                    ListField = 'descricao'
                    ListSource = frmdados.dts_csosn
                    NullValueKey = 46
                    TabOrder = 5
                    OnKeyPress = edidescricaoKeyPress
                  end
                  object ckbatualiza: TCheckBox
                    Left = 5
                    Top = 199
                    Width = 324
                    Height = 17
                    Caption = 'ATUALIZA TRIBUTA'#199#195'O DO CADASTRO DE PRODUTOS?'
                    TabOrder = 7
                  end
                  object ckbproximoreg: TCheckBox
                    Left = 5
                    Top = 218
                    Width = 276
                    Height = 17
                    Caption = 'QUANDO SALVAR IR PARA PR'#211'XIMO REGISTRO'
                    TabOrder = 8
                  end
                  object ediiva: TEdit
                    Left = 152
                    Top = 96
                    Width = 137
                    Height = 21
                    CharCase = ecUpperCase
                    TabOrder = 9
                    Text = 'EDIIVA'
                    OnExit = ediivaExit
                    OnKeyPress = ediivaKeyPress
                  end
                  object edibscalcst: TEdit
                    Left = 456
                    Top = 94
                    Width = 97
                    Height = 21
                    CharCase = ecUpperCase
                    TabOrder = 10
                    Text = 'EDIBSCALCST'
                    OnExit = edibscalcstExit
                    OnKeyPress = edibscalcstKeyPress
                  end
                  object ediicmscalcst: TEdit
                    Left = 152
                    Top = 124
                    Width = 136
                    Height = 21
                    CharCase = ecUpperCase
                    TabOrder = 11
                    Text = 'EDIICMSCALCST'
                    OnExit = ediicmscalcstExit
                    OnKeyPress = ediicmscalcstKeyPress
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
                  OnKeyPress = edidescricaoKeyPress
                end
              end
              object TabSheet2: TTabSheet
                Caption = 'INF. ADICIONAL'
                ImageIndex = 6
                object Label124: TLabel
                  Left = 4
                  Top = 7
                  Width = 289
                  Height = 13
                  Caption = 'Aten'#231#227'o! O preenchimento das informa'#231#245'es abaixo'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clRed
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label123: TLabel
                  Left = 4
                  Top = 89
                  Width = 76
                  Height = 13
                  Caption = 'VALOR ICMS'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clRed
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label125: TLabel
                  Left = 4
                  Top = 23
                  Width = 615
                  Height = 13
                  Caption = 
                    'impossibilitar'#225' o c'#225'lculo autom'#225'tico dos respectivos valores bas' +
                    'eados nas al'#237'quotas dos impostos lan'#231'ados '
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clRed
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label129: TLabel
                  Left = 4
                  Top = 115
                  Width = 151
                  Height = 13
                  Caption = 'BASE C'#193'LCULO ST. ICMS'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clRed
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label130: TLabel
                  Left = 4
                  Top = 141
                  Width = 121
                  Height = 13
                  Caption = 'VALOR DA ST. ICMS'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clRed
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label127: TLabel
                  Left = 4
                  Top = 166
                  Width = 62
                  Height = 13
                  Caption = 'VALOR IPI'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clRed
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label126: TLabel
                  Left = 0
                  Top = 38
                  Width = 583
                  Height = 13
                  Caption = 
                    ' nesta ficha ou no cadastro do produto, por'#233'm, h'#225' necessidade da' +
                    's al'#237'quotas serem maiores que zero.'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clRed
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label128: TLabel
                  Left = 4
                  Top = 65
                  Width = 127
                  Height = 13
                  Caption = 'BASE C'#193'LCULO ICMS'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clRed
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label131: TLabel
                  Left = 312
                  Top = 62
                  Width = 394
                  Height = 13
                  Caption = 'Quando preencher estas informa'#231#245'es o CSOSN deve estar configura-'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clRed
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label132: TLabel
                  Left = 316
                  Top = 78
                  Width = 74
                  Height = 13
                  Caption = 'do como 900'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clRed
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object edivlricms: TEdit
                  Left = 184
                  Top = 85
                  Width = 121
                  Height = 21
                  CharCase = ecUpperCase
                  TabOrder = 1
                  Text = 'EDIVLRICMS'
                  OnExit = edivlricmsExit
                  OnKeyPress = edivlricmsKeyPress
                end
                object edivlrsubsicms: TEdit
                  Left = 184
                  Top = 136
                  Width = 121
                  Height = 21
                  CharCase = ecUpperCase
                  TabOrder = 3
                  Text = 'EDIVLRSUBSICMS'
                  OnExit = edivlrsubsicmsExit
                  OnKeyPress = edivlrsubsicmsKeyPress
                end
                object EDIBCSUBSICMS: TEdit
                  Left = 184
                  Top = 110
                  Width = 121
                  Height = 21
                  CharCase = ecUpperCase
                  TabOrder = 2
                  Text = 'EDIBCSUBSICMS'
                  OnExit = EDIBCSUBSICMSExit
                  OnKeyPress = EDIBCSUBSICMSKeyPress
                end
                object EDIVLRIPI: TEdit
                  Left = 184
                  Top = 162
                  Width = 121
                  Height = 21
                  CharCase = ecUpperCase
                  TabOrder = 4
                  Text = 'EDIVLRIPI'
                  OnExit = EDIVLRIPIExit
                  OnKeyPress = EDIVLRIPIKeyPress
                end
                object edibcicms: TEdit
                  Left = 184
                  Top = 61
                  Width = 121
                  Height = 21
                  CharCase = ecUpperCase
                  TabOrder = 0
                  Text = 'EDIBCICMS'
                  OnExit = edibcicmsExit
                  OnKeyPress = edibcicmsKeyPress
                end
              end
            end
          end
        end
        object btnalterarprod: TBitBtn
          Left = 737
          Top = 105
          Width = 89
          Height = 33
          Caption = '&ALTERAR'
          TabOrder = 9
          OnClick = btnalterarprodClick
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
        object btnexcluirprod: TBitBtn
          Left = 737
          Top = 141
          Width = 89
          Height = 33
          Caption = '&EXCLUIR'
          TabOrder = 10
          OnClick = btnexcluirprodClick
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
        object btncancelar: TBitBtn
          Left = 737
          Top = 178
          Width = 89
          Height = 33
          Caption = '&CANCELAR'
          TabOrder = 11
          OnClick = btncancelarClick
          NumGlyphs = 2
        end
        object cbxdescmodbs_cod6prodnf: TDBLookupComboBox
          Left = 133
          Top = 410
          Width = 190
          Height = 21
          DataField = 'cod6prodnf'
          DataSource = frmdados.dts_Temp
          KeyField = 'codigo'
          ListField = 'descricao'
          ListSource = frmdados.dts_modbc
          NullValueKey = 46
          TabOrder = 12
          Visible = False
          OnKeyPress = edidescricaoKeyPress
        end
        object cbxdesccf_cod3prodnf: TDBLookupComboBox
          Left = 133
          Top = 468
          Width = 190
          Height = 21
          DataField = 'cod3prodnf'
          DataSource = frmdados.dts_Temp
          KeyField = 'codigo'
          ListField = 'descricao'
          ListSource = frmdados.dts_cf
          NullValueKey = 46
          TabOrder = 13
          Visible = False
          OnKeyPress = edidescricaoKeyPress
        end
        object cbxdescmodbst_cod7prodnf: TDBLookupComboBox
          Left = 472
          Top = 404
          Width = 169
          Height = 21
          DataField = 'cod7prodnf'
          DataSource = frmdados.dts_Temp
          KeyField = 'codigo'
          ListField = 'descricao'
          ListSource = frmdados.dts_modbcst
          NullValueKey = 46
          TabOrder = 14
          OnKeyPress = edidescricaoKeyPress
        end
        object EDIBASEI1: TEdit
          Left = 136
          Top = 439
          Width = 127
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 15
          Text = 'EDIBASEI1'
          Visible = False
          OnExit = EDIBASEI1Exit
        end
        object EDIVLR1: TEdit
          Left = 472
          Top = 437
          Width = 119
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 16
          Text = 'EDIVLR1'
          Visible = False
          OnExit = EDIVLR1Exit
        end
        object ediitem: TEdit
          Left = 786
          Top = 26
          Width = 38
          Height = 21
          TabOrder = 6
          Text = 'ediitem'
          OnKeyPress = ediitemKeyPress
        end
      end
      object tbscupomf: TTabSheet
        Caption = 'CUPOM FISCAL'
        ImageIndex = 4
        OnShow = tbscupomfShow
        object DBGrid1: TDBGrid
          Left = 8
          Top = 8
          Width = 769
          Height = 409
          DataSource = frmdados.dts_cupom
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
              FieldName = 'modelo'
              Title.Caption = 'MODELO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dte'
              Title.Caption = 'EMISS'#195'O'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'coo'
              Title.Caption = 'N'#186' CUPOM'
              Width = 133
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'caixa'
              Title.Caption = 'CAIXA'
              Width = 41
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'serieecf'
              Title.Caption = 'S'#201'RIE ECF'
              Width = 302
              Visible = True
            end>
        end
      end
      object tbsserv: TTabSheet
        Caption = 'SERVI'#199'OS'
        ImageIndex = 3
        TabVisible = False
        OnShow = tbsservShow
        object Label26: TLabel
          Left = 4
          Top = 2
          Width = 42
          Height = 13
          Caption = 'C'#211'DIGO'
        end
        object SpeedButton2: TSpeedButton
          Left = 101
          Top = 26
          Width = 23
          Height = 22
          OnClick = SpeedButton2Click
        end
        object Label27: TLabel
          Left = 138
          Top = 2
          Width = 62
          Height = 13
          Caption = 'DESCRI'#199#195'O'
        end
        object Label50: TLabel
          Left = 573
          Top = 2
          Width = 71
          Height = 13
          Caption = 'QUANTIDADE'
        end
        object Label51: TLabel
          Left = 697
          Top = 2
          Width = 37
          Height = 13
          Caption = 'PRE'#199'O'
        end
        object Label52: TLabel
          Left = 764
          Top = 2
          Width = 57
          Height = 13
          Caption = 'SUBTOTAL'
        end
        object edicdesc: TEdit
          Left = 1
          Top = 26
          Width = 98
          Height = 21
          TabOrder = 0
          Text = 'edicdesc'
          OnExit = edicdescExit
          OnKeyPress = edicdescKeyPress
        end
        object edindesc: TEdit
          Left = 137
          Top = 26
          Width = 422
          Height = 21
          TabOrder = 1
          Text = 'edindesc'
          OnKeyPress = edinproKeyPress
        end
        object ediqtdes: TEdit
          Left = 567
          Top = 26
          Width = 80
          Height = 21
          TabOrder = 2
          Text = 'ediqtdes'
          OnExit = ediqtdesExit
          OnKeyPress = ediqtdesKeyPress
        end
        object ediprves: TEdit
          Left = 656
          Top = 26
          Width = 79
          Height = 21
          TabOrder = 3
          Text = 'ediprves'
          OnExit = ediprvesExit
          OnKeyPress = ediprveKeyPress
        end
        object edisubtotals: TEdit
          Left = 743
          Top = 26
          Width = 81
          Height = 21
          TabOrder = 4
          Text = 'edisubtotals'
          OnExit = edisubtotalsExit
          OnKeyPress = edisubtotalKeyPress
        end
        object btngravaserv: TBitBtn
          Left = 737
          Top = 53
          Width = 89
          Height = 33
          Caption = 'SALVA&R'
          TabOrder = 5
          OnClick = btngravaservClick
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
        object pctserv: TPageControl
          Left = 3
          Top = 56
          Width = 726
          Height = 369
          ActivePage = tbsdescserv
          TabOrder = 6
          object tbsdescserv: TTabSheet
            Caption = '&LISTA'
            OnShow = tbsdescservShow
            object TOTAL: TLabel
              Left = 576
              Top = 320
              Width = 35
              Height = 13
              Caption = 'TOTAL'
            end
            object lbltotserv: TLabel
              Left = 666
              Top = 320
              Width = 42
              Height = 13
              Alignment = taRightJustify
              Caption = 'lbltotserv'
            end
            object dbgserv: TDBGrid
              Left = 10
              Top = 7
              Width = 699
              Height = 298
              DataSource = frmdados.dts_nfs
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
                  FieldName = 'cdesc'
                  Title.Caption = 'C'#211'DIGO'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'ndesc'
                  Title.Caption = 'DESCRI'#199#195'O'
                  Width = 390
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'qtde'
                  Title.Caption = 'QUANTIDADE'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'prve'
                  Title.Caption = 'PR. VD.'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'subtotal'
                  Title.Caption = 'SUBTOTAL'
                  Visible = True
                end>
            end
          end
          object tbstribserv: TTabSheet
            Caption = '&TRIBUTA'#199#195'O'
            ImageIndex = 1
            OnShow = tbstribservShow
            object Label53: TLabel
              Left = 15
              Top = 85
              Width = 93
              Height = 13
              Caption = 'TIPO DE SERVI'#199'O'
              FocusControl = cbxdescTIPOSERV_cod1servnf
            end
            object Label54: TLabel
              Left = 14
              Top = 141
              Width = 132
              Height = 13
              Caption = 'REGIME DE TRIBUTA'#199#195'O'
              FocusControl = cbxdescRCSERV_cod2servnf
            end
            object Label55: TLabel
              Left = 14
              Top = 197
              Width = 54
              Height = 13
              Caption = 'ALIQUOTA'
              FocusControl = cbxdescIMPOSTOI_cod3servnf
            end
            object Label67: TLabel
              Left = 16
              Top = 31
              Width = 106
              Height = 29
              Caption = 'SERVI'#199'O'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -24
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object lblndesc: TLabel
              Left = 152
              Top = 31
              Width = 91
              Height = 29
              Caption = 'lblndesc'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -24
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object spdservant: TSpeedButton
              Left = 666
              Top = 1
              Width = 23
              Height = 22
              OnClick = spdservantClick
            end
            object spdservprox: TSpeedButton
              Left = 693
              Top = 1
              Width = 23
              Height = 22
              OnClick = spdservproxClick
            end
            object cbxdescTIPOSERV_cod1servnf: TDBLookupComboBox
              Left = 15
              Top = 105
              Width = 162
              Height = 21
              DataField = 'cod1servnf'
              DataSource = frmdados.dts_Temp
              KeyField = 'codigo'
              ListField = 'descricao'
              ListSource = frmdados.dts_tiposerv
              TabOrder = 0
            end
            object cbxdescRCSERV_cod2servnf: TDBLookupComboBox
              Left = 14
              Top = 161
              Width = 347
              Height = 21
              DataField = 'cod2servnf'
              DataSource = frmdados.dts_Temp
              KeyField = 'codigo'
              ListField = 'descricao'
              ListSource = frmdados.dts_rcserv
              TabOrder = 1
            end
            object cbxdescIMPOSTOI_cod3servnf: TDBLookupComboBox
              Left = 14
              Top = 216
              Width = 123
              Height = 21
              DataField = 'cod3servnf'
              DataSource = frmdados.dts_Temp
              KeyField = 'codigo'
              ListField = 'descricao'
              ListSource = frmdados.dts_impostoI
              TabOrder = 2
            end
          end
        end
        object btnalteraserv: TBitBtn
          Left = 737
          Top = 159
          Width = 89
          Height = 33
          Caption = '&ALTERAR'
          TabOrder = 7
          OnClick = btnalteraservClick
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
        object btnexcluiserv: TBitBtn
          Left = 737
          Top = 199
          Width = 89
          Height = 33
          Caption = '&EXCLUIR'
          TabOrder = 8
          OnClick = btnexcluiservClick
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
      end
      object tbsemitir: TTabSheet
        Caption = 'EMISS'#195'O NFE'
        ImageIndex = 5
        TabVisible = False
        object Label69: TLabel
          Left = 692
          Top = -2
          Width = 8
          Height = 13
          Caption = '%'
        end
        object pctcadnf: TPageControl
          Left = 0
          Top = 105
          Width = 777
          Height = 257
          ActivePage = tbsdup
          MultiLine = True
          TabOrder = 0
          Visible = False
          object tbsdup: TTabSheet
            Caption = 'FORMA DE PAGAMENTO'
            ImageIndex = 2
            object Label73: TLabel
              Left = 146
              Top = 14
              Width = 80
              Height = 13
              Caption = 'VALOR '#192' VISTA'
            end
            object Label74: TLabel
              Left = 146
              Top = 42
              Width = 56
              Height = 13
              Caption = 'PARCELAS'
            end
            object Label75: TLabel
              Left = 678
              Top = 189
              Width = 85
              Height = 13
              Caption = 'TOTAL '#192' PRAZO'
            end
            object lbltotdup: TLabel
              Left = 720
              Top = 209
              Width = 40
              Height = 13
              Alignment = taRightJustify
              Caption = 'lbltotdup'
            end
            object Label79: TLabel
              Left = 146
              Top = 99
              Width = 49
              Height = 13
              Caption = 'PER'#205'ODO'
            end
            object Label80: TLabel
              Left = 146
              Top = 72
              Width = 69
              Height = 13
              Caption = 'DATA INICIAL'
            end
            object rgbformapgto: TRadioGroup
              Left = 0
              Top = 0
              Width = 137
              Height = 229
              Align = alLeft
              Items.Strings = (
                #192' Vista'
                #192' Prazo')
              TabOrder = 0
            end
            object edidin: TEdit
              Left = 265
              Top = 10
              Width = 74
              Height = 21
              TabOrder = 1
              Text = 'edidin'
            end
            object edinparc: TEdit
              Left = 265
              Top = 38
              Width = 49
              Height = 21
              TabOrder = 2
              Text = 'edinparc'
            end
            object btncalcular: TButton
              Left = 156
              Top = 135
              Width = 164
              Height = 37
              Caption = '&LAN'#199'AR'
              TabOrder = 5
            end
            object DBGrid2: TDBGrid
              Left = 345
              Top = 10
              Width = 417
              Height = 167
              DataSource = frmdados.dts_duplicata
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
              TabOrder = 6
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
            object ediperiodo: TEdit
              Left = 265
              Top = 95
              Width = 50
              Height = 21
              TabOrder = 4
              Text = 'ediperiodo'
            end
            object edidatainic: TMaskEdit
              Left = 265
              Top = 66
              Width = 72
              Height = 21
              EditMask = '!99/99/0000;1;_'
              MaxLength = 10
              TabOrder = 3
              Text = '  /  /    '
            end
          end
          object tbsedpgto: TTabSheet
            Caption = 'EDI'#199#195'O PAGTO'
            ImageIndex = 3
            object Label81: TLabel
              Left = 16
              Top = 29
              Width = 48
              Height = 13
              Caption = 'EMISS'#195'O'
            end
            object Label76: TLabel
              Left = 16
              Top = 63
              Width = 37
              Height = 13
              Caption = 'PRAZO'
            end
            object Label77: TLabel
              Left = 16
              Top = 94
              Width = 71
              Height = 13
              Caption = 'VENCIMENTO'
            end
            object Label78: TLabel
              Left = 16
              Top = 127
              Width = 36
              Height = 13
              Caption = 'VALOR'
            end
            object edidte: TMaskEdit
              Left = 104
              Top = 23
              Width = 80
              Height = 21
              EditMask = '!99/99/0000;1;_'
              MaxLength = 10
              TabOrder = 0
              Text = '  /  /    '
            end
            object btneditar: TBitBtn
              Left = 192
              Top = 22
              Width = 74
              Height = 25
              Caption = '&EDITAR'
              TabOrder = 1
            end
            object ediprazo: TEdit
              Left = 104
              Top = 56
              Width = 48
              Height = 21
              TabOrder = 2
              Text = 'ediprazo'
            end
            object BitBtn2: TBitBtn
              Left = 192
              Top = 54
              Width = 74
              Height = 25
              Caption = '&SALVAR'
              TabOrder = 3
              OnClick = btnsalvarClick
            end
            object edivencimento: TMaskEdit
              Left = 104
              Top = 89
              Width = 81
              Height = 21
              EditMask = '!99/99/0000;1;_'
              MaxLength = 10
              TabOrder = 4
              Text = '  /  /    '
            end
            object btncancelarparc: TBitBtn
              Left = 192
              Top = 86
              Width = 75
              Height = 25
              Caption = '&DESISTIR'
              TabOrder = 5
            end
            object edivalorp: TEdit
              Left = 104
              Top = 122
              Width = 81
              Height = 21
              TabOrder = 6
              Text = 'edivalorp'
            end
          end
          object tbstransportador: TTabSheet
            Caption = 'TRANSPORTADOR'
            ImageIndex = 4
            object Label82: TLabel
              Left = 7
              Top = 12
              Width = 98
              Height = 13
              Caption = 'TRANSPORTADOR'
              FocusControl = cbxdesctransp_cod5nf
            end
            object Label83: TLabel
              Left = 7
              Top = 110
              Width = 101
              Height = 13
              Caption = 'FRETE POR CONTA'
              FocusControl = cbxdescfreteporconta_cod2nf
            end
            object Label84: TLabel
              Left = 340
              Top = 110
              Width = 83
              Height = 13
              Caption = 'PLACA VE'#205'CULO'
            end
            object Label85: TLabel
              Left = 552
              Top = 110
              Width = 69
              Height = 13
              Caption = 'U.F. VE'#205'CULO'
            end
            object Label86: TLabel
              Left = 464
              Top = 11
              Width = 27
              Height = 13
              Caption = 'CNPJ'
            end
            object edicnpjtransp: TDBText
              Left = 552
              Top = 11
              Width = 145
              Height = 17
              DataField = 'cnpj'
              DataSource = frmdados.dts_transportador
            end
            object Label87: TLabel
              Left = 7
              Top = 37
              Width = 60
              Height = 13
              Caption = 'ENDERE'#199'O'
            end
            object edienderecotransp: TDBText
              Left = 120
              Top = 37
              Width = 265
              Height = 17
              DataField = 'endereco'
              DataSource = frmdados.dts_transportador
            end
            object Label88: TLabel
              Left = 464
              Top = 37
              Width = 24
              Height = 13
              Caption = 'NRO'
            end
            object DBText23: TDBText
              Left = 552
              Top = 37
              Width = 65
              Height = 17
              DataField = 'nro'
              DataSource = frmdados.dts_transportador
            end
            object Label89: TLabel
              Left = 7
              Top = 62
              Width = 41
              Height = 13
              Caption = 'BAIRRO'
            end
            object edibairrotransp: TDBText
              Left = 120
              Top = 62
              Width = 153
              Height = 17
              DataField = 'bairro'
              DataSource = frmdados.dts_transportador
            end
            object Label90: TLabel
              Left = 287
              Top = 62
              Width = 21
              Height = 13
              Caption = 'CEP'
            end
            object ediceptransp: TDBText
              Left = 340
              Top = 62
              Width = 73
              Height = 17
              DataField = 'cep'
              DataSource = frmdados.dts_transportador
            end
            object Label91: TLabel
              Left = 464
              Top = 62
              Width = 56
              Height = 13
              Caption = 'MUNIC'#205'PIO'
            end
            object edimunicipiotransp: TDBText
              Left = 552
              Top = 62
              Width = 201
              Height = 17
              DataSource = frmdados.dts_transportador
            end
            object Label92: TLabel
              Left = 7
              Top = 86
              Width = 29
              Height = 13
              Caption = 'FONE'
            end
            object editelefonestransp: TDBText
              Left = 120
              Top = 84
              Width = 153
              Height = 17
              DataField = 'telefones'
              DataSource = frmdados.dts_transportador
            end
            object Label93: TLabel
              Left = 287
              Top = 84
              Width = 14
              Height = 13
              Caption = 'UF'
            end
            object ediuftransp: TDBText
              Left = 340
              Top = 84
              Width = 73
              Height = 17
              DataSource = frmdados.dts_transportador
            end
            object Label94: TLabel
              Left = 464
              Top = 84
              Width = 10
              Height = 13
              Caption = 'IE'
            end
            object ediietransp: TDBText
              Left = 552
              Top = 84
              Width = 124
              Height = 17
              DataField = 'ie'
              DataSource = frmdados.dts_transportador
            end
            object Label95: TLabel
              Left = 7
              Top = 137
              Width = 71
              Height = 13
              Caption = 'QUANTIDADE'
            end
            object Label96: TLabel
              Left = 340
              Top = 137
              Width = 45
              Height = 13
              Caption = 'ESP'#201'CIE'
            end
            object Label97: TLabel
              Left = 552
              Top = 137
              Width = 38
              Height = 13
              Caption = 'MARCA'
            end
            object Label98: TLabel
              Left = 7
              Top = 164
              Width = 48
              Height = 13
              Caption = 'N'#218'MERO'
            end
            object Label99: TLabel
              Left = 340
              Top = 164
              Width = 70
              Height = 13
              Caption = 'PESO BRUTO'
            end
            object Label100: TLabel
              Left = 552
              Top = 164
              Width = 76
              Height = 13
              Caption = 'PESO LIQUIDO'
            end
            object Label101: TLabel
              Left = 7
              Top = 190
              Width = 28
              Height = 13
              Caption = 'CFOP'
              FocusControl = cbxdesccfop_cod7nf
            end
            object cbxdesctransp_cod5nf: TDBLookupComboBox
              Left = 120
              Top = 8
              Width = 305
              Height = 21
              DataField = 'cod5nf'
              DataSource = frmdados.dts_Temp
              KeyField = 'codigo'
              ListField = 'nome'
              ListSource = frmdados.dts_transportador
              NullValueKey = 46
              TabOrder = 0
            end
            object cbxdescfreteporconta_cod2nf: TDBLookupComboBox
              Left = 120
              Top = 105
              Width = 217
              Height = 21
              DataField = 'cod2nf'
              DataSource = frmdados.dts_Temp
              KeyField = 'codigo'
              ListField = 'nome'
              ListSource = frmdados.dts_onusdofrete
              NullValueKey = 46
              TabOrder = 1
            end
            object ediplacavei: TEdit
              Left = 464
              Top = 105
              Width = 81
              Height = 21
              CharCase = ecUpperCase
              TabOrder = 2
              Text = 'EDIPLACAVEI'
            end
            object EDIUFVEI: TEdit
              Left = 633
              Top = 105
              Width = 40
              Height = 21
              CharCase = ecUpperCase
              TabOrder = 3
              Text = 'EDIUFVEI'
            end
            object EDIQUANTIDADE: TEdit
              Left = 120
              Top = 133
              Width = 153
              Height = 21
              CharCase = ecUpperCase
              TabOrder = 4
              Text = 'EDIQUANTIDADE'
            end
            object ediespecie: TEdit
              Left = 464
              Top = 133
              Width = 81
              Height = 21
              CharCase = ecUpperCase
              TabOrder = 5
              Text = 'EDIESPECIE'
            end
            object edimarca: TEdit
              Left = 632
              Top = 133
              Width = 129
              Height = 21
              CharCase = ecUpperCase
              TabOrder = 6
              Text = 'EDIMARCA'
            end
            object EDINUMERO: TEdit
              Left = 120
              Top = 160
              Width = 152
              Height = 21
              CharCase = ecUpperCase
              TabOrder = 7
              Text = 'EDINUMERO'
            end
            object EDIPESOB: TEdit
              Left = 464
              Top = 160
              Width = 81
              Height = 21
              CharCase = ecUpperCase
              TabOrder = 8
              Text = 'EDIPESOB'
            end
            object EDIPESOL: TEdit
              Left = 632
              Top = 160
              Width = 129
              Height = 21
              CharCase = ecUpperCase
              TabOrder = 9
              Text = 'EDIPESOL'
            end
            object cbxdesccfop_cod7nf: TDBLookupComboBox
              Left = 120
              Top = 185
              Width = 217
              Height = 21
              DataField = 'cod7nf'
              DataSource = frmdados.dts_Temp
              KeyField = 'codigo'
              ListField = 'descricao'
              ListSource = frmdados.dts_cfop
              NullValueKey = 46
              TabOrder = 10
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
        object Panel2: TPanel
          Left = 791
          Top = 97
          Width = 243
          Height = 300
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 1
          object Label102: TLabel
            Left = 7
            Top = 8
            Width = 76
            Height = 13
            Caption = 'IE SUBS. TRIB.'
          end
          object Label103: TLabel
            Left = 7
            Top = 32
            Width = 121
            Height = 13
            Caption = 'BS. CALC. ICMS SUBST.'
          end
          object Label104: TLabel
            Left = 7
            Top = 58
            Width = 95
            Height = 13
            Caption = 'VLR. ICMS SUBST.'
          end
          object Label105: TLabel
            Left = 7
            Top = 81
            Width = 62
            Height = 13
            Caption = 'VLR. FRETE'
          end
          object Label106: TLabel
            Left = 7
            Top = 103
            Width = 105
            Height = 13
            Caption = 'OUTRAS DESPESAS'
          end
          object Label107: TLabel
            Left = 7
            Top = 126
            Width = 73
            Height = 13
            Caption = 'VLR. SEGURO'
          end
          object Label108: TLabel
            Left = 30
            Top = 164
            Width = 26
            Height = 13
            Caption = 'ICMS'
          end
          object Label113: TLabel
            Left = 7
            Top = 145
            Width = 111
            Height = 13
            Caption = '% APROVEITAMENTO'
          end
          object Label109: TLabel
            Left = 30
            Top = 183
            Width = 13
            Height = 13
            Caption = 'IPI'
          end
          object Label112: TLabel
            Left = 7
            Top = 222
            Width = 72
            Height = 13
            Caption = ' DEVOLU'#199#195'O '
          end
          object Label110: TLabel
            Left = 30
            Top = 239
            Width = 69
            Height = 13
            Caption = 'REF. N.O N.F.'
          end
          object Label111: TLabel
            Left = 30
            Top = 258
            Width = 79
            Height = 13
            Caption = 'REF. DATA N.F.'
          end
          object Label117: TLabel
            Left = 30
            Top = 203
            Width = 17
            Height = 13
            Caption = 'ISS'
          end
          object ediiesubtrib: TEdit
            Left = 141
            Top = 4
            Width = 84
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 0
            Text = 'EDIIESUBTRIB'
          end
          object edibscalcsubstrib: TEdit
            Left = 141
            Top = 29
            Width = 84
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 1
            Text = 'EDIBSCALCSUBSTRIB'
          end
          object EDIVLRICMSSUBTRIB: TEdit
            Left = 141
            Top = 53
            Width = 84
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 2
            Text = 'EDIVLRICMSSUBTRIB'
          end
          object edivlrfrete: TEdit
            Left = 141
            Top = 76
            Width = 84
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 3
            Text = 'EDITVLRFRETE'
          end
          object edivlrout: TEdit
            Left = 141
            Top = 99
            Width = 84
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 4
            Text = 'EDITVLROUT'
          end
          object EDIVLRSEG: TEdit
            Left = 141
            Top = 123
            Width = 84
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 5
            Text = 'EDIVLRSEG'
          end
          object edialiqapicms: TEdit
            Left = 141
            Top = 156
            Width = 84
            Height = 21
            TabOrder = 6
            Text = 'edialiqapicms'
          end
          object edialiqapipi: TEdit
            Left = 141
            Top = 179
            Width = 84
            Height = 21
            TabOrder = 7
            Text = 'edialiqapipi'
          end
          object edinnfrefdevol: TEdit
            Left = 141
            Top = 231
            Width = 84
            Height = 21
            TabOrder = 9
            Text = 'edinnfrefdevol'
          end
          object edidatanfrefdevol: TMaskEdit
            Left = 141
            Top = 255
            Width = 84
            Height = 21
            EditMask = '!99/99/0000;1;_'
            MaxLength = 10
            TabOrder = 10
            Text = '  /  /    '
          end
          object edialiqapiss: TEdit
            Left = 141
            Top = 203
            Width = 84
            Height = 21
            TabOrder = 8
            Text = 'edialiqapiss'
            OnKeyPress = edialiqapissKeyPress
          end
        end
        object Panel3: TPanel
          Left = 0
          Top = 0
          Width = 1034
          Height = 97
          Align = alTop
          TabOrder = 2
          Visible = False
        end
        object Panel4: TPanel
          Left = 0
          Top = 365
          Width = 361
          Height = 51
          BevelOuter = bvNone
          TabOrder = 3
          Visible = False
          object BitBtn3: TBitBtn
            Left = 6
            Top = 6
            Width = 155
            Height = 37
            Caption = '&VISUALIZAR'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
          end
          object btnemitir: TBitBtn
            Left = 170
            Top = 6
            Width = 155
            Height = 37
            Caption = '&EMITIR'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
          end
        end
      end
      object TabSheet1: TTabSheet
        Caption = 'INCLUS'#195'O MANUAL'
        ImageIndex = 6
        OnShow = TabSheet1Show
        object Label28: TLabel
          Left = 16
          Top = 20
          Width = 100
          Height = 13
          Caption = 'PR'#211'XIMO N'#218'NERO'
        end
        object Label56: TLabel
          Left = 16
          Top = 48
          Width = 121
          Height = 13
          Caption = 'DATA SA'#205'DA/ENTRADA'
        end
        object Pedido: TLabel
          Left = 243
          Top = 49
          Width = 33
          Height = 13
          Caption = 'Pedido'
        end
        object Label58: TLabel
          Left = 375
          Top = 48
          Width = 66
          Height = 13
          Caption = 'HORA SA'#205'DA'
        end
        object Label62: TLabel
          Left = 16
          Top = 79
          Width = 48
          Height = 13
          Caption = 'TIPO N.F.'
          FocusControl = cbxdesctiponf_cod1nf
        end
        object Label65: TLabel
          Left = 16
          Top = 106
          Width = 63
          Height = 13
          Caption = 'DESCONTO '
        end
        object Label66: TLabel
          Left = 213
          Top = 106
          Width = 8
          Height = 13
          Caption = '%'
        end
        object Label68: TLabel
          Left = 261
          Top = 106
          Width = 14
          Height = 13
          Caption = 'R$'
        end
        object Label70: TLabel
          Left = 376
          Top = 106
          Width = 44
          Height = 13
          Caption = 'LIQUIDO'
        end
        object Label71: TLabel
          Left = 381
          Top = 15
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
          Left = 454
          Top = 15
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
        object Label72: TLabel
          Left = 240
          Top = 16
          Width = 48
          Height = 13
          Caption = 'EMISS'#195'O'
        end
        object Label133: TLabel
          Left = 18
          Top = 133
          Width = 36
          Height = 13
          Caption = 'CHAVE'
        end
        object ediproxnota: TEdit
          Left = 144
          Top = 15
          Width = 89
          Height = 21
          TabOrder = 0
          Text = 'ediproxnota'
          OnKeyPress = ediproxnotaKeyPress
        end
        object edidatasai: TMaskEdit
          Left = 144
          Top = 44
          Width = 88
          Height = 21
          EditMask = '!99/99/0000;1;_'
          MaxLength = 10
          TabOrder = 2
          Text = '  /  /    '
          OnKeyDown = edidatasaiKeyDown
          OnKeyPress = edidatasaiKeyPress
        end
        object edinped: TEdit
          Left = 296
          Top = 44
          Width = 65
          Height = 21
          TabOrder = 3
          Text = 'edinped'
          OnKeyPress = edinpedKeyPress
        end
        object edihorasai: TMaskEdit
          Left = 448
          Top = 44
          Width = 62
          Height = 21
          EditMask = '!90:00;1;_'
          MaxLength = 5
          TabOrder = 4
          Text = '  :  '
          OnKeyPress = edihorasaiKeyPress
        end
        object cbxdesctiponf_cod1nf: TDBLookupComboBox
          Left = 144
          Top = 74
          Width = 369
          Height = 21
          DataField = 'cod1nf'
          DataSource = frmdados.dts_Temp
          KeyField = 'codigo'
          ListField = 'nome'
          ListSource = frmdados.dts_tiponf
          TabOrder = 5
          OnKeyPress = cbxdesctiponf_cod1nfKeyPress
        end
        object edipdesc: TEdit
          Left = 144
          Top = 102
          Width = 65
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 6
          Text = 'EDIPDESC'
          OnExit = edipdescExit
          OnKeyPress = edipdescKeyPress
        end
        object edivaldesc: TEdit
          Left = 288
          Top = 102
          Width = 63
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 7
          Text = 'EDIVALDESC'
          OnExit = edivaldescExit
          OnKeyPress = edivaldescKeyPress
        end
        object EDILIQUIDO: TEdit
          Left = 440
          Top = 102
          Width = 73
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 8
          Text = 'EDILIQUIDO'
          OnExit = EDILIQUIDOExit
          OnKeyPress = EDILIQUIDOKeyPress
        end
        object Button1: TButton
          Left = 528
          Top = 16
          Width = 185
          Height = 73
          Caption = 'Lan'#231'ar Nota Sem Emitir'
          TabOrder = 9
          OnClick = Button1Click
        end
        object edidataemi: TMaskEdit
          Left = 296
          Top = 12
          Width = 65
          Height = 21
          EditMask = '!99/99/0000;1;_'
          MaxLength = 10
          TabOrder = 1
          Text = '  /  /    '
          OnKeyDown = edidataemiKeyDown
          OnKeyPress = edidataemiKeyPress
        end
        object edichave: TEdit
          Left = 144
          Top = 128
          Width = 369
          Height = 21
          TabOrder = 10
          Text = 'edichave'
        end
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 1042
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
        Left = 112
        Top = 14
        Width = 361
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
    Left = 1182
    Top = 93
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
      FF000000000000000000FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000BFBFBF000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      000000000000BFBFBF00BFBFBF0000000000FFFF0000000000000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00000000000000
      0000FFFFFF000000000000000000FFFFFF000000000000000000FFFFFF000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      0000FFFFFF0000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF0000000000BFBFBF0000000000FFFF00000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF000000000000000000BFBFBF0000000000FFFF000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000000000FFFFFF000000
      000000000000FFFFFF00FFFFFF000000000000000000FFFFFF00000000000000
      0000FFFFFF000000000000000000FFFFFF000000000000000000FFFFFF000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      0000FFFFFF00000000000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000FFFFFF000000
      000000000000FFFFFF000000000000000000FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000BFBFBF0000000000FFFF00000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF00000000000000000000000000000000000000000000FF
      FF0000000000FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000BFBFBF0000000000FFFF000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF000000
      0000FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00000000000000
      0000FFFFFF000000000000000000FFFFFF000000000000000000FFFFFF000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      0000FFFFFF00000000000000000000000000000000000000000000000000FFFF
      FF0000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000000000000000FFFF00000000000000FFFF00FFFF
      FF0000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000000000000000000000000000FF00000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      000000000000000000000000FF000000000000000000000000000000000000FF
      FF00FFFFFF0000FFFF00000000000000000000FFFF0000000000FFFFFF00FFFF
      FF000000000000000000FFFFFF000000000000000000FFFFFF00000000000000
      0000FFFFFF000000000000000000FFFFFF000000000000000000FFFFFF000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      0000FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000000000000000000000000000FF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000FF00000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000FFFFFF00FFFFFF0000000000FFFFFF000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000FFFFFF000000000000000000FFFFFF00FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000000000000000
      00000000000000FFFF0000000000FFFFFF00FFFFFF000000000000000000FFFF
      FF0000000000FFFFFF00FFFFFF000000000000000000BFBFBF00BFBFBF00FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000BFBFBF00BFBFBF00000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
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
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000008007FC00FFFFFFFF0003FC000000E007
      000120000000E007801000000000E007000000000000E007000000000000E007
      800000000000E007800000000000E007000000000000E007000000000000E007
      0000E0000000E0070000F8000000E00FC001F0000000E01FC001E0010000E03F
      C007C403FFFFFFFFE3FFEC07FFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object odpExec: TOpenDialog
    Left = 934
    Top = 486
  end
end
