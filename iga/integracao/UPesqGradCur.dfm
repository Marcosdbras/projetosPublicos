object FrmPesqGradCur: TFrmPesqGradCur
  Left = 0
  Top = 101
  Width = 1023
  Height = 639
  BorderIcons = []
  Caption = 'Grade Curricular'
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
    Width = 1015
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
      TabOrder = 5
      OnClick = BtnSairClick
      NumGlyphs = 2
    end
    object BtnImprimir: TBitBtn
      Left = 480
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Im&primir'
      TabOrder = 4
      OnClick = BtnImprimirClick
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 41
    Width = 1015
    Height = 218
    Align = alClient
    DataSource = FrmDados.DTS_GradCur
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
        FieldName = 'NomeCurso'
        Title.Caption = 'Nome do curso'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ANO'
        Title.Caption = 'Ano'
        Width = 83
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NomeMat'
        Title.Caption = 'Nome da mat'#233'ria'
        Width = 167
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 259
    Width = 1015
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
      Top = 56
      Width = 27
      Height = 13
      Caption = 'Curso'
    end
    object Label3: TLabel
      Left = 32
      Top = 96
      Width = 19
      Height = 13
      Caption = 'Ano'
      FocusControl = DBEdit3
    end
    object Label4: TLabel
      Left = 32
      Top = 136
      Width = 111
      Height = 13
      Caption = #193'rea de conhecimento*'
      FocusControl = DBEdit4
    end
    object Label5: TLabel
      Left = 32
      Top = 176
      Width = 35
      Height = 13
      Caption = 'Mat'#233'ria'
    end
    object Label6: TLabel
      Left = 32
      Top = 216
      Width = 145
      Height = 13
      Caption = 'Quantidade de aulas semanais'
      FocusControl = DBEdit6
    end
    object Label7: TLabel
      Left = 32
      Top = 256
      Width = 24
      Height = 13
      Caption = 'S'#233'rie'
      FocusControl = DBEdit7
    end
    object DBText1: TDBText
      Left = 32
      Top = 34
      Width = 65
      Height = 17
      DataField = 'CODIGO'
      DataSource = FrmDados.DTS_GradCur
    end
    object Label8: TLabel
      Left = 32
      Top = 312
      Width = 134
      Height = 13
      Caption = '* Apenas para Ensino M'#233'dio'
    end
    object DBEdit3: TDBEdit
      Left = 32
      Top = 112
      Width = 56
      Height = 21
      DataField = 'ANO'
      DataSource = FrmDados.DTS_GradCur
      TabOrder = 1
      OnEnter = DBEdit7Enter
    end
    object DBEdit4: TDBEdit
      Left = 32
      Top = 152
      Width = 497
      Height = 21
      DataField = 'AREA_CONHEC'
      DataSource = FrmDados.DTS_GradCur
      TabOrder = 2
      OnEnter = DBEdit7Enter
    end
    object DBEdit6: TDBEdit
      Left = 32
      Top = 232
      Width = 134
      Height = 21
      DataField = 'QNTD_AULAS'
      DataSource = FrmDados.DTS_GradCur
      TabOrder = 4
      OnEnter = DBEdit7Enter
    end
    object DBEdit7: TDBEdit
      Left = 32
      Top = 272
      Width = 394
      Height = 21
      DataField = 'SERIE'
      DataSource = FrmDados.DTS_GradCur
      TabOrder = 5
      OnEnter = DBEdit7Enter
      OnExit = DBEdit7Exit
    end
    object CBXCurso: TDBLookupComboBox
      Left = 32
      Top = 72
      Width = 145
      Height = 21
      DataField = 'CODCURSO'
      DataSource = FrmDados.DTS_GradCur
      KeyField = 'CODIGO'
      ListField = 'NOME'
      ListSource = FrmDados.DTS_Curso
      TabOrder = 0
      OnEnter = DBEdit7Enter
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 32
      Top = 192
      Width = 145
      Height = 21
      DataField = 'CODMAT'
      DataSource = FrmDados.DTS_GradCur
      KeyField = 'CODIGO'
      ListField = 'NOME'
      ListSource = FrmDados.DTS_CadMateria
      TabOrder = 3
      OnEnter = DBEdit7Enter
    end
  end
end
