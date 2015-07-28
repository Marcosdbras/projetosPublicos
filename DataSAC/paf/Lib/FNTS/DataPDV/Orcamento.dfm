object frmOrcamento: TfrmOrcamento
  Left = 381
  Top = 213
  Width = 609
  Height = 505
  Caption = 'Or'#231'amento'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = pop_principal
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 414
    Width = 593
    Height = 2
    Align = alBottom
  end
  object Bevel2: TBevel
    Left = 0
    Top = 316
    Width = 593
    Height = 2
    Align = alBottom
  end
  object Bevel4: TBevel
    Left = 0
    Top = 59
    Width = 593
    Height = 2
    Align = alTop
  end
  object Bevel6: TBevel
    Left = 0
    Top = 93
    Width = 593
    Height = 2
    Align = alTop
  end
  object Panel1: TPanel
    Left = 0
    Top = 416
    Width = 593
    Height = 32
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object bt_gravar: TBitBtn
      Left = 219
      Top = 3
      Width = 75
      Height = 25
      Caption = '&Gravar'
      TabOrder = 0
      OnClick = bt_gravarClick
    end
    object bt_cancelar: TBitBtn
      Left = 299
      Top = 3
      Width = 75
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 1
      OnClick = bt_cancelarClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 318
    Width = 593
    Height = 96
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object Bevel5: TBevel
      Left = 396
      Top = 3
      Width = 2
      Height = 89
    end
    object Label6: TLabel
      Left = 415
      Top = 19
      Width = 44
      Height = 13
      Alignment = taRightJustify
      Caption = 'Subtotal:'
    end
    object Label10: TLabel
      Left = 410
      Top = 43
      Width = 49
      Height = 13
      Alignment = taRightJustify
      Caption = 'Desconto:'
    end
    object Label11: TLabel
      Left = 431
      Top = 67
      Width = 28
      Height = 13
      Alignment = taRightJustify
      Caption = 'Total:'
    end
    object ed_subtotal: TRzNumericEdit
      Left = 461
      Top = 14
      Width = 124
      Height = 21
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      ReadOnlyColor = clWindow
      TabOrder = 0
      IntegersOnly = False
      DisplayFormat = 'R$ ###,###,##0.00'
    end
    object ed_desconto: TRzNumericEdit
      Left = 512
      Top = 38
      Width = 73
      Height = 21
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      IntegersOnly = False
      DisplayFormat = 'R$ ###,###,##0.00'
    end
    object ed_total: TRzNumericEdit
      Left = 461
      Top = 62
      Width = 124
      Height = 21
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      ReadOnlyColor = clWindow
      TabOrder = 2
      IntegersOnly = False
      DisplayFormat = 'R$ ###,###,##0.00'
    end
    object ed_desconto_p: TRzNumericEdit
      Left = 461
      Top = 38
      Width = 49
      Height = 21
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      IntegersOnly = False
      DisplayFormat = '#0.00%'
    end
    object Panel4: TPanel
      Left = 0
      Top = 0
      Width = 393
      Height = 96
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 4
      object pg_rodape: TPageControl
        Left = 0
        Top = 0
        Width = 393
        Height = 96
        ActivePage = TabSheet2
        Align = alClient
        MultiLine = True
        Style = tsFlatButtons
        TabOrder = 0
        object TabSheet1: TTabSheet
          Caption = 'Observa'#231#245'es'
          object ed_obs1: TEdit
            Left = 0
            Top = 0
            Width = 385
            Height = 21
            TabOrder = 0
          end
          object ed_obs2: TEdit
            Left = 0
            Top = 22
            Width = 385
            Height = 21
            TabOrder = 1
          end
          object ed_obs3: TEdit
            Left = 0
            Top = 44
            Width = 385
            Height = 21
            TabOrder = 2
          end
        end
        object TabSheet2: TTabSheet
          Caption = 'Parcelamento'
          ImageIndex = 1
          object Label13: TLabel
            Left = 14
            Top = 19
            Width = 59
            Height = 26
            Alignment = taRightJustify
            Caption = 'Quantidade '#13#10'de Parcelas:'
          end
          object RzSpinEdit1: TRzSpinEdit
            Left = 80
            Top = 20
            Width = 57
            Height = 21
            AllowKeyEdit = True
            Max = 100.000000000000000000
            TabOrder = 0
          end
          object grid_prestacao: TNextGrid
            Left = 162
            Top = 0
            Width = 223
            Height = 65
            Align = alRight
            EnableVisualStyles = False
            HeaderSize = 14
            HideScrollBar = False
            Options = [goGrid, goHeader]
            TabOrder = 1
            TabStop = True
            object NxNumberColumn7: TNxNumberColumn
              Alignment = taLeftJustify
              DefaultValue = '0'
              DefaultWidth = 38
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Header.Caption = 'N'#186
              Header.Alignment = taCenter
              ParentFont = False
              Position = 0
              SortType = stNumeric
              Width = 38
              Increment = 1.000000000000000000
              Precision = 0
            end
            object NxDateColumn1: TNxDateColumn
              DefaultValue = '08/06/2009'
              DefaultWidth = 94
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Header.Caption = 'Vencimento'
              Header.Alignment = taCenter
              Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing, coShowTextFitHint]
              ParentFont = False
              Position = 1
              SortType = stDate
              Width = 94
            end
            object NxNumberColumn8: TNxNumberColumn
              DefaultValue = '0'
              DefaultWidth = 70
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Header.Caption = 'Valor-R$'
              Header.Alignment = taCenter
              Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing]
              ParentFont = False
              Position = 2
              SortType = stNumeric
              Width = 70
              Increment = 1.000000000000000000
              Precision = 0
            end
          end
        end
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 593
    Height = 59
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    object Label9: TLabel
      Left = 144
      Top = 9
      Width = 55
      Height = 13
      Caption = 'Atendente:'
    end
    object Label5: TLabel
      Left = 161
      Top = 33
      Width = 37
      Height = 13
      Caption = 'Cliente:'
    end
    object Label1: TLabel
      Left = 8
      Top = 5
      Width = 41
      Height = 13
      Alignment = taRightJustify
      Caption = 'N'#250'mero:'
    end
    object Label2: TLabel
      Left = 53
      Top = 5
      Width = 73
      Height = 13
      AutoSize = False
      Caption = '000000000'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 7
      Top = 21
      Width = 42
      Height = 13
      Alignment = taRightJustify
      Caption = 'Emiss'#227'o:'
    end
    object Label4: TLabel
      Left = 53
      Top = 21
      Width = 73
      Height = 13
      AutoSize = False
      Caption = '00/00/0000'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 22
      Top = 37
      Width = 27
      Height = 13
      Alignment = taRightJustify
      Caption = 'Hora:'
    end
    object Label7: TLabel
      Left = 53
      Top = 37
      Width = 49
      Height = 13
      AutoSize = False
      Caption = '00:00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Bevel3: TBevel
      Left = 136
      Top = 4
      Width = 2
      Height = 49
    end
    object Edit1: TEdit
      Left = 202
      Top = 6
      Width = 47
      Height = 21
      TabOrder = 0
    end
    object Button1: TButton
      Left = 252
      Top = 6
      Width = 20
      Height = 21
      Caption = 'F6'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object Edit2: TEdit
      Left = 276
      Top = 6
      Width = 309
      Height = 21
      TabOrder = 2
    end
    object Edit3: TEdit
      Left = 202
      Top = 30
      Width = 47
      Height = 21
      TabOrder = 3
    end
    object Button2: TButton
      Left = 252
      Top = 30
      Width = 20
      Height = 21
      Caption = 'F6'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object Edit4: TEdit
      Left = 276
      Top = 30
      Width = 309
      Height = 21
      TabOrder = 5
    end
  end
  object grid_item: TNextGrid
    Left = 0
    Top = 95
    Width = 593
    Height = 221
    Align = alClient
    BorderStyle = bsNone
    EnableVisualStyles = False
    HideScrollBar = False
    Options = [goGrid, goHeader, goSelectFullRow]
    TabOrder = 3
    TabStop = True
    object NxNumberColumn1: TNxNumberColumn
      DefaultValue = '0'
      DefaultWidth = 26
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'Item'
      Header.Alignment = taCenter
      ParentFont = False
      Position = 0
      SortType = stNumeric
      Width = 26
      FormatMask = '00#'
      Increment = 1.000000000000000000
      Precision = 0
    end
    object NxNumberColumn2: TNxNumberColumn
      DefaultValue = '0'
      DefaultWidth = 70
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
      Width = 70
      FormatMask = '00000000#'
      Increment = 1.000000000000000000
      Precision = 0
    end
    object NxTextColumn1: TNxTextColumn
      DefaultWidth = 234
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
      Width = 234
    end
    object NxNumberColumn3: TNxNumberColumn
      DefaultValue = '0'
      DefaultWidth = 61
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'Qtde.'
      Header.Alignment = taCenter
      ParentFont = False
      Position = 3
      SortType = stNumeric
      Width = 61
      FormatMask = '###,###,##0.000'
      Increment = 1.000000000000000000
      Precision = 0
    end
    object NxNumberColumn4: TNxNumberColumn
      DefaultValue = '0'
      DefaultWidth = 61
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'Unit'#225'rio'
      Header.Alignment = taCenter
      ParentFont = False
      Position = 4
      SortType = stNumeric
      Width = 61
      FormatMask = '###,###,##0.000'
      Increment = 1.000000000000000000
      Precision = 0
    end
    object NxNumberColumn5: TNxNumberColumn
      DefaultValue = '0'
      DefaultWidth = 58
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'Desconto'
      Header.Alignment = taCenter
      ParentFont = False
      Position = 5
      SortType = stNumeric
      Width = 58
      FormatMask = '###,###,##0.00'
      Increment = 1.000000000000000000
      Precision = 0
    end
    object NxNumberColumn6: TNxNumberColumn
      DefaultValue = '0'
      DefaultWidth = 66
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'Total'
      Header.Alignment = taCenter
      ParentFont = False
      Position = 6
      SortType = stNumeric
      Width = 66
      FormatMask = '###,###,##0.00'
      Increment = 1.000000000000000000
      Precision = 0
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 61
    Width = 593
    Height = 32
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 4
    object Label12: TLabel
      Left = 9
      Top = 11
      Width = 32
      Height = 13
      Alignment = taRightJustify
      Caption = 'ITENS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object bt_incluir: TBitBtn
      Left = 53
      Top = 3
      Width = 75
      Height = 25
      Caption = '&Incluir'
      TabOrder = 0
      OnClick = bt_incluirClick
    end
    object bt_excluir: TBitBtn
      Left = 133
      Top = 3
      Width = 75
      Height = 25
      Caption = '&Excluir'
      TabOrder = 1
      OnClick = bt_excluirClick
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 448
    Width = 593
    Height = 19
    Panels = <
      item
        Text = 'F8 - Menu Fiscal'
        Width = 50
      end>
  end
  object pop_principal: TAdvPopupMenu
    MenuStyler = frmModulo.estilo_menu
    Version = '2.5.4.0'
    Left = 8
    Top = 104
    object MenuFiscal2: TMenuItem
      Caption = 'Menu Fiscal'
      ShortCut = 119
      OnClick = MenuFiscal2Click
    end
  end
end
