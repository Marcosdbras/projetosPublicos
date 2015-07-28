object frmcomandaP: TfrmcomandaP
  Left = 57
  Top = 134
  Width = 915
  Height = 539
  Caption = 'Comanda'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 704
    Top = 45
    Width = 193
    Height = 237
  end
  object lbltittipo: TLabel
    Left = 14
    Top = 108
    Width = 129
    Height = 37
    Caption = 'Produtos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -32
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Image1: TImage
    Left = 706
    Top = 47
    Width = 187
    Height = 233
  end
  object Label1: TLabel
    Left = 423
    Top = 439
    Width = 72
    Height = 37
    Caption = 'Total'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object lbltotbruto: TLabel
    Left = 553
    Top = 439
    Width = 142
    Height = 37
    Alignment = taRightJustify
    Caption = 'lbltotbruto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object lbltitcomanda: TLabel
    Left = 706
    Top = 4
    Width = 190
    Height = 37
    Alignment = taRightJustify
    Caption = 'lbltitcomanda'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 15
    Top = 52
    Width = 140
    Height = 37
    Caption = 'Comanda'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -32
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object edidescricao: TEdit
    Left = 184
    Top = 103
    Width = 513
    Height = 45
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Text = 'edidescricao'
    OnKeyPress = edidescricaoKeyPress
    OnKeyUp = edidescricaoKeyUp
  end
  object btnsalvar: TBitBtn
    Left = 16
    Top = 436
    Width = 193
    Height = 44
    Caption = '&Salvar'
    TabOrder = 3
    TabStop = False
    OnClick = btnsalvarClick
  end
  object dbgprodutos: TDBGrid
    Left = 16
    Top = 152
    Width = 681
    Height = 281
    TabStop = False
    DataSource = frmDados.Dts_Vendab
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnKeyDown = dbgprodutosKeyDown
    OnKeyPress = dbgprodutosKeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'CPRO'
        ReadOnly = True
        Title.Caption = 'C'#243'digo'
        Width = 54
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NPRO'
        ReadOnly = True
        Title.Caption = 'Descri'#231#227'o'
        Width = 337
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTDE'
        Title.Caption = 'Quantidade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nuni'
        ReadOnly = True
        Title.Caption = ' '
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRVE'
        Title.Caption = 'Pr. Unit'#225'rio'
        Width = 73
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SUBTOTAL'
        ReadOnly = True
        Title.Caption = 'Total'
        Width = 78
        Visible = True
      end>
  end
  object btnexcluir: TBitBtn
    Left = 217
    Top = 436
    Width = 193
    Height = 44
    Caption = '&Excluir'
    TabOrder = 4
    TabStop = False
    OnClick = btnexcluirClick
  end
  object stb: TStatusBar
    Left = 0
    Top = 486
    Width = 907
    Height = 19
    Panels = <
      item
        Width = 100
      end>
  end
  object edicomanda: TEdit
    Left = 184
    Top = 48
    Width = 303
    Height = 45
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Text = 'edicomanda'
    OnExit = edicomandaExit
    OnKeyPress = edicomandaKeyPress
  end
  object dbglistaprod: TDBGrid
    Left = 184
    Top = 150
    Width = 649
    Height = 115
    Ctl3D = False
    DataSource = frmDados.Dts_vProdutos
    Options = [dgColumnResize, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnKeyPress = dbglistaprodKeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Width = 558
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODIGO'
        Visible = True
      end>
  end
  object btnconsultacomanda: TBitBtn
    Left = 490
    Top = 48
    Width = 100
    Height = 44
    Caption = '&Consulta'
    TabOrder = 7
    TabStop = False
    OnClick = btnconsultacomandaClick
  end
  object Skin: TSkinData
    Active = False
    DisableTag = 99
    SkinControls = [xcMainMenu, xcPopupMenu, xcToolbar, xcControlbar, xcCombo, xcCheckBox, xcRadioButton, xcProgress, xcScrollbar, xcEdit, xcButton, xcBitBtn, xcSpeedButton, xcPanel, xcGroupBox, xcStatusBar, xcTab]
    SkinStore = '(none)'
    SkinFormtype = sfMainform
    Left = 840
    Top = 22
    SkinStream = {00000000}
  end
end
