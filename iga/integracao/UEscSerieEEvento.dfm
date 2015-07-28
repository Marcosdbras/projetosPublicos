object FrmEscSerieEEvento: TFrmEscSerieEEvento
  Left = 0
  Top = 99
  Width = 1026
  Height = 674
  Caption = 'Escolha da serie e evento para rela'#231#227'o'
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
  object DBGrid1: TDBGrid
    Left = 0
    Top = 41
    Width = 1018
    Height = 355
    Align = alClient
    DataSource = FrmDados.DTS_Serie
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
        FieldName = 'CODIGO'
        Title.Caption = 'C'#243'digo'
        Width = 93
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SERIE'
        Title.Caption = 'S'#233'rie'
        Width = 99
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TURMA'
        Title.Caption = 'Turma'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'GRAU'
        Title.Caption = 'Grau'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PERIODO'
        Title.Caption = 'Periodo'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ANO'
        Title.Caption = 'Ano'
        Width = 91
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 0
    Top = 396
    Width = 1018
    Height = 228
    Align = alBottom
    DataSource = FrmDados.DTS_Evento
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGO'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'Nome'
        Width = 282
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA'
        Title.Caption = 'Data'
        Width = 91
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR'
        Title.Caption = 'Valor'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OBS'
        Title.Caption = 'Observa'#231#227'o'
        Width = 382
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1018
    Height = 41
    Align = alTop
    TabOrder = 2
    object BtnConfirma: TSpeedButton
      Left = 688
      Top = 8
      Width = 73
      Height = 25
      Caption = '&Confirma'
      OnClick = BtnConfirmaClick
    end
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 22
      Height = 13
      Caption = 'Ano:'
    end
    object EdAno: TEdit
      Left = 45
      Top = 11
      Width = 121
      Height = 21
      TabOrder = 0
      Text = 'EdAno'
      OnEnter = EdAnoExit
      OnExit = EdAnoExit
      OnKeyPress = EdAnoKeyPress
    end
    object BitBtn1: TBitBtn
      Left = 784
      Top = 8
      Width = 75
      Height = 25
      Caption = 'C&ancela'
      TabOrder = 1
      OnClick = BitBtn1Click
    end
    object CBSerie: TCheckBox
      Left = 352
      Top = 16
      Width = 97
      Height = 17
      Caption = 'Por turma'
      Checked = True
      State = cbChecked
      TabOrder = 2
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 624
    Width = 1018
    Height = 16
    Align = alBottom
    TabOrder = 3
  end
end
