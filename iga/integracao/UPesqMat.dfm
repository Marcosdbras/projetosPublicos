object FrmPesqMat: TFrmPesqMat
  Left = 1
  Top = 49
  Width = 1022
  Height = 689
  BorderIcons = []
  Caption = 'Pesquisa de materias'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 33
    Top = 373
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
  end
  object Label2: TLabel
    Left = 33
    Top = 405
    Width = 28
    Height = 13
    Caption = 'Nome'
  end
  object DBText1: TDBText
    Left = 145
    Top = 373
    Width = 65
    Height = 17
    DataField = 'CODIGO'
    DataSource = FrmDados.DTS_CadMateria
  end
  object Label4: TLabel
    Left = 33
    Top = 434
    Width = 48
    Height = 13
    Caption = 'Descri'#231#227'o'
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 40
    Width = 1014
    Height = 294
    DataSource = FrmDados.DTS_CadMateria
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
        FieldName = 'NOME'
        Title.Caption = 'Nome'
        Width = 425
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODIGO'
        Title.Caption = 'Codigo'
        Width = 141
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
        Width = 404
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1014
    Height = 41
    Align = alTop
    TabOrder = 1
    object BtnMenu: TBitBtn
      Left = 880
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Sair'
      TabOrder = 0
      OnClick = BtnMenuClick
    end
    object BtnExcluir: TBitBtn
      Left = 96
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Excluir'
      TabOrder = 1
      OnClick = BtnExcluirClick
    end
    object BtnFiltrar: TBitBtn
      Left = 176
      Top = 8
      Width = 89
      Height = 25
      Caption = '&Filtrar pesquisa'
      TabOrder = 2
      OnClick = BtnFiltrarClick
    end
    object BtnInserir: TBitBtn
      Left = 16
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Inserir'
      TabOrder = 3
      OnClick = BtnInserirClick
    end
    object BtnLimpFiltro: TBitBtn
      Left = 272
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Limpar filtro'
      TabOrder = 4
      OnClick = BtnLimpFiltroClick
    end
  end
  object DBENome: TDBEdit
    Left = 145
    Top = 401
    Width = 121
    Height = 21
    DataField = 'NOME'
    DataSource = FrmDados.DTS_CadMateria
    TabOrder = 2
    OnChange = DBENomeChange
    OnClick = DBENomeClick
  end
  object BtnConfirmar: TBitBtn
    Left = 264
    Top = 487
    Width = 75
    Height = 25
    Caption = '&Confirmar'
    TabOrder = 3
    OnClick = BtnConfirmarClick
  end
  object BtnCancelar: TBitBtn
    Left = 352
    Top = 487
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 4
    OnClick = BtnCancelarClick
  end
  object DBEdit1: TDBEdit
    Left = 145
    Top = 434
    Width = 384
    Height = 21
    DataField = 'DESCRICAO'
    DataSource = FrmDados.DTS_CadMateria
    TabOrder = 5
    OnChange = DBENomeChange
    OnClick = DBENomeClick
  end
end
