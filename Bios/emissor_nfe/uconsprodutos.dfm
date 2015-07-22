object frmconsprodutos: Tfrmconsprodutos
  Left = 218
  Top = 155
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Consulta Produtos'
  ClientHeight = 446
  ClientWidth = 681
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbllocalizar: TLabel
    Left = 264
    Top = 12
    Width = 59
    Height = 13
    Caption = 'L&OCALIZAR'
  end
  object Label4: TLabel
    Left = 8
    Top = 13
    Width = 80
    Height = 13
    Caption = 'ORDENAR POR'
  end
  object SpeedButton1: TSpeedButton
    Left = 621
    Top = 8
    Width = 23
    Height = 22
    OnClick = SpeedButton1Click
  end
  object SpeedButton2: TSpeedButton
    Left = 648
    Top = 8
    Width = 23
    Height = 22
    OnClick = SpeedButton2Click
  end
  object edilocalizar: TEdit
    Left = 360
    Top = 8
    Width = 249
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 1
    Text = 'EDILOCALIZAR'
    OnChange = edilocalizarChange
    OnKeyPress = edilocalizarKeyPress
  end
  object CbxOrdPor: TComboBox
    Left = 112
    Top = 8
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 0
    OnClick = CbxOrdPorClick
    OnKeyPress = CbxOrdPorKeyPress
  end
  object dbg_produtos: TDBGrid
    Left = 8
    Top = 66
    Width = 662
    Height = 367
    DataSource = frmdados.dts_produtos
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = dbg_produtosDblClick
    OnKeyPress = dbg_produtosKeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'descricao'
        Title.Caption = 'DESCRI'#199#195'O'
        Width = 299
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'prve'
        Title.Caption = 'PRE'#199'O VENDA'
        Width = 87
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'caux'
        Title.Caption = 'AUXILIAR'
        Width = 81
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cbar'
        Title.Caption = 'COD. BARRA'
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
  object ckbfechar: TCheckBox
    Left = 8
    Top = 49
    Width = 257
    Height = 17
    Caption = 'Fechar ao efetuar duplo clique'
    Checked = True
    State = cbChecked
    TabOrder = 3
  end
end
