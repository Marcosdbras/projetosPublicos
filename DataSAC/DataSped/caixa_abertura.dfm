object frmCaixa_Abertura: TfrmCaixa_Abertura
  Left = 451
  Top = 305
  BorderStyle = bsDialog
  Caption = 'Abertura de Caixa'
  ClientHeight = 203
  ClientWidth = 524
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = pop_fechamento
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 201
    Width = 524
    Height = 2
    Align = alBottom
  end
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 0
    Width = 524
    Height = 201
    ActivePage = TabSheet1
    Align = alClient
    TabIndex = 0
    TabOrder = 0
    FixedDimension = 19
    object TabSheet1: TRzTabSheet
      Caption = 'Abertura'
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 520
        Height = 127
        Align = alClient
        BevelOuter = bvNone
        Enabled = False
        TabOrder = 0
        object Label1: TLabel
          Left = 48
          Top = 39
          Width = 105
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Data do Movimento:'
        end
        object Label2: TLabel
          Left = 96
          Top = 63
          Width = 57
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Operador:'
        end
        object Label3: TLabel
          Left = 48
          Top = 87
          Width = 105
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'N'#250'mero do ECF:'
        end
        object ed_operador: TRzEdit
          Left = 160
          Top = 60
          Width = 169
          Height = 21
          TabOrder = 0
        end
        object ed_data: TDateEdit
          Left = 160
          Top = 36
          Width = 81
          Height = 21
          ButtonWidth = 0
          NumGlyphs = 2
          TabOrder = 1
        end
        object ed_ecf: TRzEdit
          Left = 160
          Top = 84
          Width = 257
          Height = 21
          TabOrder = 2
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 127
        Width = 520
        Height = 32
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
        object bt_ok: TButton
          Left = 182
          Top = 3
          Width = 75
          Height = 25
          Caption = 'C&onfirmar'
          TabOrder = 0
          OnClick = bt_okClick
        end
        object bt_cancelar: TButton
          Left = 262
          Top = 3
          Width = 75
          Height = 25
          Caption = '&Fechar'
          TabOrder = 1
          OnClick = bt_cancelarClick
        end
      end
      object StatusBar1: TStatusBar
        Left = 0
        Top = 159
        Width = 520
        Height = 19
        Panels = <
          item
            Text = 'F8 - Menu Fiscal'
            Width = 50
          end>
      end
    end
    object TabSheet2: TRzTabSheet
      Caption = 'Pr'#233'-Vendas Pendentes'
      object grid_venda: TNextGrid
        Left = 0
        Top = 0
        Width = 520
        Height = 178
        Align = alClient
        HideScrollBar = False
        Options = [goGrid, goHeader, goSelectFullRow]
        TabOrder = 0
        TabStop = True
        object NxTextColumn8: TNxTextColumn
          DefaultWidth = 43
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'C'#243'digo'
          ParentFont = False
          Position = 0
          SortType = stAlphabetic
          Width = 43
        end
        object NxDateColumn2: TNxDateColumn
          DefaultValue = '16/06/2009'
          DefaultWidth = 71
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'Data'
          ParentFont = False
          Position = 1
          SortType = stDate
          Width = 71
        end
        object NxTextColumn9: TNxTextColumn
          DefaultWidth = 239
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'Cliente'
          ParentFont = False
          Position = 2
          SortType = stAlphabetic
          Width = 239
        end
        object NxNumberColumn14: TNxNumberColumn
          DefaultValue = '0'
          DefaultWidth = 64
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'Valor'
          ParentFont = False
          Position = 3
          SortType = stNumeric
          Width = 64
          Increment = 1.000000000000000000
          Precision = 0
        end
        object NxTextColumn10: TNxTextColumn
          DefaultWidth = 82
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'Vendedor'
          ParentFont = False
          Position = 4
          SortType = stAlphabetic
          Width = 82
        end
        object NxNumberColumn15: TNxNumberColumn
          Alignment = taLeftJustify
          DefaultValue = '0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'cod_cliente'
          ParentFont = False
          Position = 5
          SortType = stNumeric
          Visible = False
          Increment = 1.000000000000000000
          Precision = 0
        end
        object NxNumberColumn16: TNxNumberColumn
          Alignment = taLeftJustify
          DefaultValue = '0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'cod_vendedor'
          ParentFont = False
          Position = 6
          SortType = stNumeric
          Visible = False
          Increment = 1.000000000000000000
          Precision = 0
        end
        object NxNumberColumn17: TNxNumberColumn
          Alignment = taLeftJustify
          DefaultValue = '0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'desconto'
          ParentFont = False
          Position = 7
          SortType = stNumeric
          Visible = False
          Increment = 1.000000000000000000
          Precision = 0
        end
        object NxNumberColumn18: TNxNumberColumn
          Alignment = taLeftJustify
          DefaultValue = '0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'acrescimo'
          ParentFont = False
          Position = 8
          SortType = stNumeric
          Visible = False
          Increment = 1.000000000000000000
          Precision = 0
        end
      end
    end
    object TabSheet3: TRzTabSheet
      Caption = 'DAVs'
      object grid_dav: TNextGrid
        Left = 0
        Top = 0
        Width = 520
        Height = 178
        Align = alClient
        HideScrollBar = False
        Options = [goGrid, goHeader, goSelectFullRow]
        TabOrder = 0
        TabStop = True
        object NxTextColumn5: TNxTextColumn
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'COO'
          Header.Alignment = taCenter
          ParentFont = False
          Position = 0
          SortType = stAlphabetic
        end
        object NxTextColumn12: TNxTextColumn
          DefaultWidth = 111
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'N'#250'mero'
          Header.Alignment = taCenter
          ParentFont = False
          Position = 1
          SortType = stAlphabetic
          Width = 111
        end
        object NxTextColumn7: TNxTextColumn
          DefaultWidth = 65
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'T'#237'tulo'
          Header.Alignment = taCenter
          ParentFont = False
          Position = 2
          SortType = stAlphabetic
          Width = 65
        end
        object NxTextColumn11: TNxNumberColumn
          Alignment = taLeftJustify
          DefaultValue = '0'
          DefaultWidth = 93
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'Valor-R$'
          Header.Alignment = taCenter
          Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
          ParentFont = False
          Position = 3
          SortType = stNumeric
          Width = 93
          FormatMask = '###,###,##0.00'
          Increment = 1.000000000000000000
          Precision = 0
        end
      end
    end
    object TabSheet4: TRzTabSheet
      Caption = 'Abastecimentos Pendentes'
      object grid_abastecimento: TNextGrid
        Left = 0
        Top = 0
        Width = 520
        Height = 178
        Align = alClient
        AppearanceOptions = [aoHighlightSlideCells]
        HideScrollBar = False
        Options = [goGrid, goHeader, goSelectFullRow]
        TabOrder = 0
        TabStop = True
        object NxDateColumn1: TNxDateColumn
          DefaultValue = '19/08/2009'
          DefaultWidth = 66
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'Data'
          Header.Alignment = taCenter
          ParentFont = False
          Position = 0
          SortType = stDate
          Width = 66
        end
        object NxTextColumn6: TNxTextColumn
          DefaultWidth = 36
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'Hora'
          Header.Alignment = taCenter
          ParentFont = False
          Position = 1
          SortType = stAlphabetic
          Width = 36
        end
        object NxTextColumn13: TNxTextColumn
          DefaultWidth = 23
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'N'#186
          Header.Alignment = taCenter
          ParentFont = False
          Position = 2
          SortType = stAlphabetic
          Width = 23
        end
        object NxTextColumn14: TNxTextColumn
          DefaultWidth = 27
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'Bico'
          Header.Alignment = taCenter
          ParentFont = False
          Position = 3
          SortType = stAlphabetic
          Width = 27
        end
        object NxTextColumn15: TNxTextColumn
          DefaultWidth = 100
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'Produto'
          Header.Alignment = taCenter
          ParentFont = False
          Position = 4
          SortType = stAlphabetic
          Width = 100
        end
        object NxNumberColumn20: TNxNumberColumn
          DefaultValue = '0'
          DefaultWidth = 44
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'Qtde.'
          Header.Alignment = taCenter
          ParentFont = False
          Position = 5
          SortType = stNumeric
          Width = 44
          FormatMask = '###,###,##0.000'
          Increment = 1.000000000000000000
          Precision = 0
        end
        object NxNumberColumn21: TNxNumberColumn
          DefaultValue = '0'
          DefaultWidth = 44
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'Unit'#225'rio'
          Header.Alignment = taCenter
          ParentFont = False
          Position = 6
          SortType = stNumeric
          Width = 44
          FormatMask = '###,###,##0.000'
          Increment = 1.000000000000000000
          Precision = 0
        end
        object NxNumberColumn22: TNxNumberColumn
          DefaultValue = '0'
          DefaultWidth = 54
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'Total-R$'
          Header.Alignment = taCenter
          ParentFont = False
          Position = 7
          SortType = stNumeric
          Width = 54
          FormatMask = '###,###,##0.00'
          Increment = 1.000000000000000000
          Precision = 0
        end
        object NxNumberColumn23: TNxNumberColumn
          DefaultValue = '0'
          DefaultWidth = 51
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'E.I.'
          Header.Alignment = taCenter
          ParentFont = False
          Position = 8
          SortType = stNumeric
          Width = 51
          FormatMask = '###,###,##0.000'
          Increment = 1.000000000000000000
          Precision = 0
        end
        object NxNumberColumn24: TNxNumberColumn
          DefaultValue = '0'
          DefaultWidth = 52
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'E.F.'
          Header.Alignment = taCenter
          ParentFont = False
          Position = 9
          SortType = stNumeric
          Width = 52
          FormatMask = '###,###,##0.000'
          Increment = 1.000000000000000000
          Precision = 0
        end
        object NxNumberColumn25: TNxNumberColumn
          DefaultValue = '0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'Codigo'
          Header.Alignment = taCenter
          ParentFont = False
          Position = 10
          SortType = stNumeric
          Visible = False
          Increment = 1.000000000000000000
          Precision = 0
        end
        object NxTextColumn17: TNxTextColumn
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'Tanque'
          ParentFont = False
          Position = 11
          SortType = stAlphabetic
          Visible = False
        end
      end
    end
  end
  object bt_cupom_encerrante: TButton
    Left = 432
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Cp Encerrante'
    TabOrder = 1
    Visible = False
    OnClick = bt_cupom_encerranteClick
  end
  object pop_fechamento: TAdvPopupMenu
    MenuStyler = frmModulo.estilo_menu
    Version = '2.5.3.0'
    Left = 65528
    Top = 152
    object MenuFiscal1: TMenuItem
      Caption = 'Menu Fiscal'
      ShortCut = 119
      OnClick = MenuFiscal1Click
    end
    object Cancelar1: TMenuItem
      Caption = 'Cancelar'
      ShortCut = 27
      OnClick = bt_cancelarClick
    end
  end
  object AdvPopupMenu1: TAdvPopupMenu
    MenuStyler = frmModulo.estilo_menu
    Version = '2.5.3.0'
    Left = 384
    Top = 112
    object MenuItem1: TMenuItem
      Caption = 'Menu Fiscal'
      ShortCut = 119
      OnClick = MenuFiscal1Click
    end
    object MenuItem2: TMenuItem
      Caption = 'Cancelar'
      ShortCut = 27
    end
  end
  object qrPre_Venda: TIBCQuery
    Connection = frmModulo.Conexao_Servidor
    SQL.Strings = (
      'select '
      '  c000074.*,'
      '  c000007.Nome Cliente,'
      '  c000008.Nome Vendedor'
      'from '
      '  c000074, c000007, c000008'
      'where'
      '  c000074.codcliente = c000007.codigo and'
      '  c000074.codvendedor = c000008.codigo')
    Active = True
    Left = 344
    Top = 43
  end
  object qrDAV: TIBCQuery
    Connection = frmModulo.conexao
    Left = 304
    Top = 40
  end
  object qrAbastecimento: TIBCQuery
    Connection = frmModulo.conexao
    Left = 376
    Top = 40
  end
  object qrEncerrante: TIBCQuery
    Connection = frmModulo.conexao
    Left = 408
    Top = 40
  end
end
