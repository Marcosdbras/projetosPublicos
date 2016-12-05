object FrmPesqSerie: TFrmPesqSerie
  Left = 0
  Top = 37
  Width = 1024
  Height = 701
  BorderIcons = [biSystemMenu]
  Caption = 'Pesquisa de s'#233'rie'
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
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 65
    Width = 1016
    Height = 152
    Align = alClient
    DataSource = FrmDados.DTS_Serie
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnTitleClick = DBGrid1TitleClick
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGO'
        Title.Caption = 'Codigo'
        Width = 119
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'GRAU'
        Title.Caption = 'Grau escolar'
        Width = 312
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SERIE'
        Title.Caption = 'S'#233'rie'
        Width = 139
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PERIODO'
        Title.Caption = 'Per'#237'odo'
        Width = 187
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TURMA'
        Title.Caption = 'Turma'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ORDEM'
        Title.Caption = 'N'#250'mero de ordem'
        Width = 96
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1016
    Height = 65
    Align = alTop
    TabOrder = 1
    object Label17: TLabel
      Left = 11
      Top = 45
      Width = 22
      Height = 13
      Caption = 'Ano:'
    end
    object BtnMenu: TBitBtn
      Left = 904
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Sair'
      TabOrder = 0
      TabStop = False
      OnClick = BtnMenuClick
    end
    object BtnMaterias: TBitBtn
      Left = 520
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Mat'#233'rias'
      TabOrder = 1
      TabStop = False
      OnClick = BtnMateriasClick
    end
    object BtnLimpFiltro: TBitBtn
      Left = 336
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Limpar filtro'
      TabOrder = 2
      TabStop = False
      OnClick = BtnLimpFiltroClick
    end
    object BtnInserir: TBitBtn
      Left = 8
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Inserir'
      TabOrder = 3
      TabStop = False
      OnClick = BtnInserirClick
    end
    object BtnFiltro: TBitBtn
      Left = 232
      Top = 8
      Width = 97
      Height = 25
      Caption = '&Filtrar pesquisa'
      TabOrder = 4
      TabStop = False
      OnClick = BtnFiltroClick
    end
    object BtnExcluir: TBitBtn
      Left = 88
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Excluir'
      TabOrder = 5
      TabStop = False
      OnClick = BtnExcluirClick
    end
    object BtnAlunos: TBitBtn
      Left = 600
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Alunos'
      TabOrder = 6
      TabStop = False
      OnClick = BtnAlunosClick
    end
    object EdGeralAno: TEdit
      Left = 38
      Top = 39
      Width = 121
      Height = 21
      TabStop = False
      TabOrder = 7
      OnKeyPress = EdGeralAnoKeyPress
    end
    object CBXAluCancel: TCheckBox
      Left = 208
      Top = 40
      Width = 232
      Height = 17
      TabStop = False
      Caption = 'Exibir alunos que cancelaram a matr'#237'cula'
      TabOrder = 8
      OnClick = CBXAluCancelClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 217
    Width = 1016
    Height = 457
    Align = alBottom
    TabOrder = 2
    object PnlMaterias: TPanel
      Left = 429
      Top = 0
      Width = 586
      Height = 491
      TabOrder = 1
      object BtnConfMat: TBitBtn
        Left = 120
        Top = 352
        Width = 75
        Height = 25
        Caption = '&Confirmar'
        TabOrder = 1
        OnClick = BtnConfMatClick
      end
      object BtnExcluirMat: TBitBtn
        Left = 208
        Top = 352
        Width = 75
        Height = 25
        Caption = '&Excluir'
        TabOrder = 2
        OnClick = BtnExcluirMatClick
      end
      object DBGrid3: TDBGrid
        Left = 1
        Top = 1
        Width = 584
        Height = 223
        Align = alTop
        DataSource = FrmDados.DTS_SerieMat
        Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'NomeMat'
            Title.Caption = 'Nome da mat'#233'ria'
            Width = 173
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CODSERIE'
            Title.Caption = 'C'#243'digo da s'#233'rie'
            Width = 96
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QNTD_AULAS'
            Title.Caption = 'Quantidade de aulas'
            Width = 125
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NomeMaster'
            Title.Caption = 'Nome da materia master'
            Width = 133
            Visible = True
          end>
      end
    end
    object PnlSerie: TPanel
      Left = 2
      Top = 1
      Width = 427
      Height = 490
      TabOrder = 0
      object Label10: TLabel
        Left = 32
        Top = 108
        Width = 24
        Height = 13
        Caption = 'S'#233'rie'
      end
      object Label11: TLabel
        Left = 32
        Top = 40
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
      end
      object DBText1: TDBText
        Left = 136
        Top = 40
        Width = 65
        Height = 17
        DataField = 'CODIGO'
        DataSource = FrmDados.DTS_Serie
      end
      object Label12: TLabel
        Left = 32
        Top = 142
        Width = 30
        Height = 13
        Caption = 'Turma'
      end
      object Label13: TLabel
        Left = 32
        Top = 74
        Width = 60
        Height = 13
        Caption = 'Grau escolar'
      end
      object Label14: TLabel
        Left = 32
        Top = 176
        Width = 38
        Height = 13
        Caption = 'Per'#237'odo'
      end
      object Label15: TLabel
        Left = 32
        Top = 211
        Width = 85
        Height = 13
        Caption = 'M'#225'ximo de alunos'
      end
      object Label16: TLabel
        Left = 32
        Top = 248
        Width = 19
        Height = 13
        Caption = 'Ano'
      end
      object Label18: TLabel
        Left = 32
        Top = 279
        Width = 31
        Height = 13
        Caption = 'Ordem'
      end
      object DBEdit1: TDBEdit
        Left = 136
        Top = 107
        Width = 129
        Height = 21
        CharCase = ecUpperCase
        DataField = 'SERIE'
        DataSource = FrmDados.DTS_Serie
        TabOrder = 1
        OnClick = DBEdit2Click
        OnEnter = DBEdit2Enter
      end
      object DBEdit2: TDBEdit
        Left = 136
        Top = 73
        Width = 145
        Height = 21
        CharCase = ecUpperCase
        DataField = 'GRAU'
        DataSource = FrmDados.DTS_Serie
        TabOrder = 0
        OnClick = DBEdit2Click
        OnEnter = DBEdit2Enter
      end
      object DBEdit3: TDBEdit
        Left = 136
        Top = 140
        Width = 129
        Height = 21
        CharCase = ecUpperCase
        DataField = 'TURMA'
        DataSource = FrmDados.DTS_Serie
        TabOrder = 2
        OnClick = DBEdit2Click
        OnEnter = DBEdit2Enter
      end
      object DBEdit4: TDBEdit
        Left = 136
        Top = 174
        Width = 129
        Height = 21
        CharCase = ecUpperCase
        DataField = 'PERIODO'
        DataSource = FrmDados.DTS_Serie
        TabOrder = 3
        OnClick = DBEdit2Click
        OnEnter = DBEdit2Enter
      end
      object BtnConfirmar: TBitBtn
        Left = 158
        Top = 336
        Width = 75
        Height = 25
        Caption = '&Confirmar'
        TabOrder = 5
        OnClick = BtnConfirmarClick
      end
      object BtnCancelar: TBitBtn
        Left = 238
        Top = 336
        Width = 75
        Height = 25
        Caption = 'Ca&ncelar'
        TabOrder = 6
        OnClick = BtnCancelarClick
      end
      object DBEdit5: TDBEdit
        Left = 136
        Top = 208
        Width = 129
        Height = 21
        CharCase = ecUpperCase
        DataField = 'NUMMAXALU'
        DataSource = FrmDados.DTS_Serie
        TabOrder = 4
        OnClick = DBEdit2Click
        OnEnter = DBEdit2Enter
      end
      object DBEdit6: TDBEdit
        Left = 136
        Top = 240
        Width = 129
        Height = 21
        CharCase = ecUpperCase
        DataField = 'ANO'
        DataSource = FrmDados.DTS_Serie
        TabOrder = 7
        OnClick = DBEdit2Click
        OnEnter = DBEdit2Enter
      end
      object DBEdit7: TDBEdit
        Left = 136
        Top = 271
        Width = 130
        Height = 21
        DataField = 'ORDEM'
        DataSource = FrmDados.DTS_Serie
        TabOrder = 8
        OnClick = DBEdit2Click
        OnEnter = DBEdit2Enter
      end
    end
    object PnlAlunos: TPanel
      Left = 1
      Top = 1
      Width = 1014
      Height = 455
      Align = alClient
      TabOrder = 2
      object Label1: TLabel
        Left = 456
        Top = 8
        Width = 35
        Height = 13
        Caption = 'Materia'
      end
      object Label2: TLabel
        Left = 792
        Top = 63
        Width = 123
        Height = 13
        Caption = 'M'#233'dia de notas de provas'
      end
      object Label3: TLabel
        Left = 786
        Top = 187
        Width = 134
        Height = 13
        Caption = 'M'#233'dia de notas de trabalhos'
      end
      object Label5: TLabel
        Left = 456
        Top = 416
        Width = 81
        Height = 16
        Caption = 'M'#233'dia final:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 664
        Top = 8
        Width = 40
        Height = 13
        Caption = 'Bimestre'
      end
      object Label7: TLabel
        Left = 808
        Top = 8
        Width = 12
        Height = 13
        Caption = 'ao'
      end
      object LblProvas: TLabel
        Left = 836
        Top = 81
        Width = 3
        Height = 13
      end
      object LblTrabalhos: TLabel
        Left = 839
        Top = 208
        Width = 3
        Height = 13
      end
      object LblFinal: TLabel
        Left = 544
        Top = 416
        Width = 3
        Height = 13
      end
      object Label8: TLabel
        Left = 823
        Top = 285
        Width = 67
        Height = 13
        Caption = 'Total de faltas'
      end
      object LblFaltas: TLabel
        Left = 848
        Top = 306
        Width = 3
        Height = 13
      end
      object Label9: TLabel
        Left = 825
        Top = 336
        Width = 57
        Height = 13
        Caption = 'Assiduidade'
      end
      object LblAssiduidade: TLabel
        Left = 848
        Top = 357
        Width = 3
        Height = 13
      end
      object Label6: TLabel
        Left = 24
        Top = 328
        Width = 64
        Height = 13
        Caption = 'N'#250'mero novo'
      end
      object DBGrid2: TDBGrid
        Left = 44
        Top = 21
        Width = 382
        Height = 281
        DataSource = FrmDados.DTS_RelTurmaSerieAlu
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnKeyPress = DBGrid2KeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'NUMERO'
            Title.Caption = 'N'#250'mero'
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NomeAluno'
            Title.Caption = 'Nome'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CODIGO'
            Title.Caption = 'C'#243'digo'
            Visible = True
          end>
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 504
        Top = 8
        Width = 145
        Height = 21
        KeyField = 'CODIGO'
        ListField = 'NomeMat'
        ListFieldIndex = -1
        ListSource = FrmDados.DTS_SerieMat
        TabOrder = 4
        TabStop = False
        OnClick = DBLookupComboBox1Click
      end
      object GridTrabalho: TDBGrid
        Left = 456
        Top = 158
        Width = 329
        Height = 113
        DataSource = FrmDados.DTS_Trabalhos
        Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnEnter = GridTrabalhoEnter
        OnExit = GridTrabalhoExit
        OnKeyPress = GridTrabalhoKeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'NOTA'
            Title.Caption = 'Nota de trabalho'
            Width = 92
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BIM'
            Title.Caption = 'Bimestre'
            Width = 61
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Title.Caption = 'Descri'#231#227'o'
            Width = 134
            Visible = True
          end>
      end
      object GridProvas: TDBGrid
        Left = 456
        Top = 36
        Width = 330
        Height = 111
        DataSource = FrmDados.DTS_Avaliacoes
        Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnEnter = GridProvasEnter
        OnExit = GridProvasExit
        OnKeyPress = GridProvasKeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'NOTA'
            Title.Caption = 'Notas de provas'
            Width = 92
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BIM'
            Title.Caption = 'Bimestre'
            Width = 61
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Title.Caption = 'Descri'#231#227'o'
            Width = 134
            Visible = True
          end>
      end
      object GridFaltas: TDBGrid
        Left = 456
        Top = 280
        Width = 329
        Height = 110
        DataSource = FrmDados.DTS_Assiduidade
        Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnEnter = GridFaltasEnter
        OnExit = GridFaltasExit
        OnKeyPress = GridFaltasKeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'FALTAS'
            Title.Caption = 'Faltas'
            Width = 93
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BIM'
            Title.Caption = 'Bimestre'
            Width = 61
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Title.Caption = 'Descri'#231#227'o'
            Width = 134
            Visible = True
          end>
      end
      object CBXBimInicio: TComboBox
        Left = 712
        Top = 8
        Width = 89
        Height = 21
        ItemHeight = 13
        TabOrder = 5
        TabStop = False
        Text = '1'#186' Bimestre'
        OnChange = DBLookupComboBox1Click
        OnClick = CBXBimInicioClick
        Items.Strings = (
          '1'#186' Bimestre'
          '2'#186' Bimestre'
          '3'#186' Bimestre'
          '4'#186' Bimestre')
      end
      object CBXBimFinal: TComboBox
        Left = 832
        Top = 8
        Width = 81
        Height = 21
        ItemHeight = 13
        ItemIndex = 3
        TabOrder = 6
        TabStop = False
        Text = '4'#186' Bimestre'
        OnChange = DBLookupComboBox1Click
        OnClick = CBXBimInicioClick
        Items.Strings = (
          '1'#186' Bimestre'
          '2'#186' Bimestre'
          '3'#186' Bimestre'
          '4'#186' Bimestre')
      end
      object BtnExcluirProva: TBitBtn
        Left = 792
        Top = 128
        Width = 78
        Height = 25
        Caption = 'Excluir &prova'
        TabOrder = 7
        TabStop = False
        OnClick = BtnExcluirProvaClick
      end
      object BtnExcluirTrabalho: TBitBtn
        Left = 792
        Top = 248
        Width = 78
        Height = 25
        Caption = 'Excluir &trabalho'
        TabOrder = 8
        TabStop = False
        OnClick = BtnExcluirTrabalhoClick
      end
      object BtnExcluirFalta: TBitBtn
        Left = 792
        Top = 376
        Width = 78
        Height = 25
        Caption = 'Excluir &faltas'
        TabOrder = 9
        TabStop = False
        OnClick = BtnExcluirFaltaClick
      end
      object BtnImprimir: TBitBtn
        Left = 56
        Top = 392
        Width = 75
        Height = 25
        Caption = '&Imprimir'
        TabOrder = 10
        TabStop = False
        OnClick = BtnImprimirClick
      end
      object BtnHistorico: TBitBtn
        Left = 248
        Top = 392
        Width = 93
        Height = 25
        Caption = 'Atualizar &hist'#243'rico'
        TabOrder = 11
        TabStop = False
        OnClick = BtnHistoricoClick
      end
      object EdNumero: TEdit
        Left = 104
        Top = 320
        Width = 121
        Height = 21
        TabStop = False
        TabOrder = 12
      end
      object BtnAlterar: TBitBtn
        Left = 240
        Top = 320
        Width = 75
        Height = 25
        Caption = '&Alterar'
        TabOrder = 13
        TabStop = False
        OnClick = BtnAlterarClick
      end
      object BtnImprimeTodos: TBitBtn
        Left = 145
        Top = 392
        Width = 89
        Height = 25
        Caption = 'Imprime &Todos'
        TabOrder = 14
        TabStop = False
        OnClick = BtnImprimeTodosClick
      end
      object BtnExcluiAlunoTurma: TBitBtn
        Left = 324
        Top = 320
        Width = 92
        Height = 25
        Caption = 'Excluir da tur&ma'
        TabOrder = 15
        TabStop = False
        OnClick = BtnExcluiAlunoTurmaClick
      end
      object btnreorgn: TButton
        Left = 241
        Top = 349
        Width = 74
        Height = 25
        Caption = 'Reorganiza'
        TabOrder = 16
        TabStop = False
        OnClick = btnreorgnClick
      end
    end
  end
end
