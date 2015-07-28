object frmcomanda: Tfrmcomanda
  Left = 55
  Top = 114
  Width = 921
  Height = 474
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
    Left = 15
    Top = 4
    Width = 322
    Height = 37
    Caption = 'Entre com a Comanda'
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
    Top = 372
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
    Top = 372
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
  object edidescricao: TEdit
    Left = 15
    Top = 46
    Width = 530
    Height = 45
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Text = 'edidescricao'
    OnKeyPress = edidescricaoKeyPress
  end
  object btnsalvar: TBitBtn
    Left = 16
    Top = 369
    Width = 193
    Height = 44
    Caption = '&Salvar'
    TabOrder = 1
    OnClick = btnsalvarClick
  end
  object dbgprodutos: TDBGrid
    Left = 16
    Top = 97
    Width = 681
    Height = 266
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
    Top = 369
    Width = 193
    Height = 44
    Caption = '&Excluir'
    TabOrder = 3
    OnClick = btnexcluirClick
  end
  object stb: TStatusBar
    Left = 0
    Top = 421
    Width = 913
    Height = 19
    Panels = <
      item
        Width = 100
      end>
  end
  object btnconsultar: TBitBtn
    Left = 552
    Top = 46
    Width = 146
    Height = 45
    Caption = '&Consulta'
    TabOrder = 5
    OnClick = btnconsultarClick
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
  object Timer1: TTimer
    Enabled = False
    Interval = 50000
    OnTimer = Timer1Timer
    Left = 728
    Top = 304
  end
end
