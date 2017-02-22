object frmTabela_Indice: TfrmTabela_Indice
  Left = 396
  Top = 312
  BorderStyle = bsDialog
  Caption = 'Tabela de '#236'ndice t'#233'cnico de Produ'#231#227'o'
  ClientHeight = 300
  ClientWidth = 699
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 268
    Width = 699
    Height = 2
    Align = alBottom
  end
  object Panel1: TPanel
    Left = 0
    Top = 270
    Width = 699
    Height = 30
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object bt_ok: TButton
      Left = 272
      Top = 2
      Width = 75
      Height = 25
      Caption = '&Imprimir'
      TabOrder = 0
      OnClick = bt_okClick
    end
    object bt_cancelar: TButton
      Left = 352
      Top = 2
      Width = 75
      Height = 25
      Caption = '&Fechar'
      TabOrder = 1
      OnClick = bt_cancelarClick
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 699
    Height = 268
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object Bevel2: TBevel
      Left = 0
      Top = 0
      Width = 3
      Height = 268
      Align = alLeft
    end
    object Bevel3: TBevel
      Left = 348
      Top = 0
      Width = 2
      Height = 268
      Align = alLeft
    end
    object Panel4: TPanel
      Left = 3
      Top = 0
      Width = 345
      Height = 268
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object grid_indice: TNextGrid
        Left = 0
        Top = 25
        Width = 345
        Height = 218
        Align = alClient
        AppearanceOptions = [aoHighlightSlideCells]
        HideScrollBar = False
        Options = [goGrid, goHeader, goSelectFullRow]
        TabOrder = 0
        TabStop = True
        OnHeaderClick = grid_indiceHeaderClick
        OnSelectCell = grid_indiceSelectCell
        object NxCheckBoxColumn1: TNxCheckBoxColumn
          Alignment = taCenter
          DefaultWidth = 25
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'S'
          Header.Alignment = taCenter
          Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing]
          ParentFont = False
          Position = 0
          SortType = stBoolean
          Width = 25
        end
        object NxNumberColumn1: TNxNumberColumn
          DefaultValue = '0'
          DefaultWidth = 61
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'C'#243'digo'
          Header.Alignment = taCenter
          ParentFont = False
          Position = 1
          SortType = stNumeric
          Width = 61
          Increment = 1.000000000000000000
          Precision = 0
        end
        object NxTextColumn1: TNxTextColumn
          DefaultWidth = 237
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'Produto'
          Header.Alignment = taCenter
          ParentFont = False
          Position = 2
          SortType = stAlphabetic
          Width = 237
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 243
        Width = 345
        Height = 25
        Align = alBottom
        BevelOuter = bvNone
        Caption = 'Selecione os Produtos para impress'#227'o'
        TabOrder = 1
      end
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 345
        Height = 25
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Produtos (Fabricados)'
        TabOrder = 2
      end
    end
    object Panel6: TPanel
      Left = 350
      Top = 0
      Width = 349
      Height = 268
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object Panel7: TPanel
        Left = 0
        Top = 0
        Width = 349
        Height = 25
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Insumos do Produto Selecionado'
        TabOrder = 0
      end
      object grid_insumo: TNextGrid
        Left = 0
        Top = 25
        Width = 349
        Height = 243
        Align = alClient
        AppearanceOptions = [aoHighlightSlideCells]
        HideScrollBar = False
        Options = [goGrid, goHeader, goSelectFullRow]
        TabOrder = 1
        TabStop = True
        OnHeaderClick = grid_indiceHeaderClick
        object NxNumberColumn2: TNxNumberColumn
          DefaultValue = '0'
          DefaultWidth = 61
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'C'#243'digo'
          Header.Alignment = taCenter
          ParentFont = False
          Position = 0
          SortType = stNumeric
          Width = 61
          Increment = 1.000000000000000000
          Precision = 0
        end
        object NxTextColumn2: TNxTextColumn
          DefaultWidth = 172
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'Produto'
          Header.Alignment = taCenter
          ParentFont = False
          Position = 1
          SortType = stAlphabetic
          Width = 172
        end
        object NxNumberColumn3: TNxNumberColumn
          DefaultValue = '0'
          DefaultWidth = 63
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'Qtde.'
          Header.Alignment = taCenter
          ParentFont = False
          Position = 2
          SortType = stNumeric
          Width = 63
          FormatMask = '###,###,##0.000'
          Increment = 1.000000000000000000
          Precision = 0
        end
        object NxTextColumn3: TNxTextColumn
          DefaultWidth = 30
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'Un.'
          Header.Alignment = taCenter
          ParentFont = False
          Position = 3
          SortType = stAlphabetic
          Width = 30
        end
      end
    end
  end
  object query: TIBCQuery
    Connection = frmModulo.conexao
    Left = 256
    Top = 120
  end
  object qrInsumo: TIBCQuery
    Connection = frmModulo.conexao
    Left = 288
    Top = 120
  end
end
