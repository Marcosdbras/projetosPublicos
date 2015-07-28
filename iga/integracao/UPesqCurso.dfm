object FrmPesqCurso: TFrmPesqCurso
  Left = 2
  Top = 99
  Width = 1022
  Height = 641
  BorderIcons = []
  Caption = 'Cursos'
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1014
    Height = 41
    Align = alTop
    TabOrder = 0
    object BtnInserir: TBitBtn
      Left = 72
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Inserir'
      TabOrder = 0
      OnClick = BtnInserirClick
    end
    object BtnExcluir: TBitBtn
      Left = 168
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Excluir'
      TabOrder = 1
      OnClick = BtnExcluirClick
    end
    object BtnConfirmar: TBitBtn
      Left = 264
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Confirmar'
      TabOrder = 2
      OnClick = BtnConfirmarClick
    end
    object BtnCancelar: TBitBtn
      Left = 360
      Top = 8
      Width = 75
      Height = 25
      Caption = 'C&ancelar'
      TabOrder = 3
      OnClick = BtnCancelarClick
    end
    object BtnSair: TBitBtn
      Left = 896
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Sair'
      TabOrder = 4
      OnClick = BtnSairClick
      NumGlyphs = 2
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 41
    Width = 1014
    Height = 220
    Align = alClient
    DataSource = FrmDados.DTS_Curso
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
        Title.Caption = 'Nome do curso'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DURA_AULAS'
        Title.Caption = 'Dura'#231#227'o das aulas'
        Width = 119
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 261
    Width = 1014
    Height = 352
    Align = alBottom
    TabOrder = 2
    object Label1: TLabel
      Left = 32
      Top = 16
      Width = 33
      Height = 13
      Caption = 'Codigo'
    end
    object Label2: TLabel
      Left = 32
      Top = 96
      Width = 28
      Height = 13
      Caption = 'Nome'
    end
    object Label3: TLabel
      Left = 32
      Top = 180
      Width = 89
      Height = 13
      Caption = 'Dura'#231#227'o das aulas'
      FocusControl = DBEdit3
    end
    object DBText1: TDBText
      Left = 32
      Top = 52
      Width = 65
      Height = 17
      DataField = 'CODIGO'
      DataSource = FrmDados.DTS_Curso
    end
    object DBEdit3: TDBEdit
      Left = 32
      Top = 217
      Width = 201
      Height = 21
      DataField = 'DURA_AULAS'
      DataSource = FrmDados.DTS_Curso
      TabOrder = 1
      OnEnter = DBEdit1Enter
    end
    object DBEdit1: TDBEdit
      Left = 32
      Top = 133
      Width = 201
      Height = 21
      DataField = 'NOME'
      DataSource = FrmDados.DTS_Curso
      TabOrder = 0
      OnEnter = DBEdit1Enter
      OnExit = DBEdit1Exit
    end
  end
end
