object FrmRelAluTurma: TFrmRelAluTurma
  Left = 0
  Top = 53
  Width = 835
  Height = 494
  BorderIcons = []
  Caption = 'Pesquisa de alunos na turma'
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
  object Label1: TLabel
    Left = 360
    Top = 8
    Width = 35
    Height = 13
    Caption = 'Materia'
  end
  object Label2: TLabel
    Left = 696
    Top = 71
    Width = 123
    Height = 13
    Caption = 'M'#233'dia de notas de provas'
  end
  object Label3: TLabel
    Left = 690
    Top = 195
    Width = 134
    Height = 13
    Caption = 'M'#233'dia de notas de trabalhos'
  end
  object Label5: TLabel
    Left = 360
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
  object Label6: TLabel
    Left = 8
    Top = 8
    Width = 47
    Height = 13
    Caption = 'Ano letivo'
  end
  object Label4: TLabel
    Left = 568
    Top = 8
    Width = 40
    Height = 13
    Caption = 'Bimestre'
  end
  object Label7: TLabel
    Left = 712
    Top = 8
    Width = 12
    Height = 13
    Caption = 'ao'
  end
  object LblProvas: TLabel
    Left = 740
    Top = 89
    Width = 3
    Height = 13
  end
  object LblTrabalhos: TLabel
    Left = 743
    Top = 216
    Width = 3
    Height = 13
  end
  object LblFinal: TLabel
    Left = 448
    Top = 416
    Width = 3
    Height = 13
  end
  object Label8: TLabel
    Left = 727
    Top = 285
    Width = 67
    Height = 13
    Caption = 'Total de faltas'
  end
  object LblFaltas: TLabel
    Left = 752
    Top = 306
    Width = 3
    Height = 13
  end
  object Label9: TLabel
    Left = 729
    Top = 336
    Width = 57
    Height = 13
    Caption = 'Assiduidade'
  end
  object LblAssiduidade: TLabel
    Left = 752
    Top = 357
    Width = 3
    Height = 13
  end
  object DBGrid1: TDBGrid
    Left = 4
    Top = 37
    Width = 349
    Height = 281
    DataSource = FrmDados.DTS_RelTurmaSerieAlu
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'NUMERO'
        Title.Caption = 'Numero'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NomeAluno'
        Title.Caption = 'Nome'
        Width = 188
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODIGO'
        Title.Caption = 'Codigo'
        Width = 50
        Visible = True
      end>
  end
  object BtnMenu: TBitBtn
    Left = 790
    Top = 424
    Width = 67
    Height = 25
    Caption = '&Sair'
    TabOrder = 13
    TabStop = False
    OnClick = BtnMenuClick
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 408
    Top = 8
    Width = 145
    Height = 21
    KeyField = 'CODIGO'
    ListField = 'NomeMat'
    ListFieldIndex = -1
    ListSource = FrmDados.DTS_SerieMat
    TabOrder = 6
    TabStop = False
    OnClick = CBXBimInicioChange
  end
  object GridTrabalho: TDBGrid
    Left = 360
    Top = 158
    Width = 329
    Height = 113
    DataSource = FrmDados.DTS_Trabalhos
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
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
    Left = 360
    Top = 36
    Width = 329
    Height = 111
    DataSource = FrmDados.DTS_Avaliacoes
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
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
    Left = 360
    Top = 280
    Width = 329
    Height = 110
    DataSource = FrmDados.DTS_Assiduidade
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
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
  object EDAno: TEdit
    Left = 64
    Top = 8
    Width = 121
    Height = 21
    TabStop = False
    TabOrder = 4
  end
  object BtnFiltrar: TBitBtn
    Left = 208
    Top = 8
    Width = 75
    Height = 25
    Caption = '&Filtrar'
    TabOrder = 5
    TabStop = False
    OnClick = BtnFiltrarClick
  end
  object CBXBimInicio: TComboBox
    Left = 616
    Top = 8
    Width = 89
    Height = 21
    ItemHeight = 13
    TabOrder = 7
    TabStop = False
    Text = '1'#186' Bimestre'
    OnChange = CBXBimInicioChange
    Items.Strings = (
      '1'#186' Bimestre'
      '2'#186' Bimestre'
      '3'#186' Bimestre'
      '4'#186' Bimestre')
  end
  object CBXBimFinal: TComboBox
    Left = 736
    Top = 8
    Width = 81
    Height = 21
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 8
    TabStop = False
    Text = '1'#186' Bimestre'
    OnChange = CBXBimInicioChange
    Items.Strings = (
      '1'#186' Bimestre'
      '2'#186' Bimestre'
      '3'#186' Bimestre'
      '4'#186' Bimestre')
  end
  object BtnExcluirProva: TBitBtn
    Left = 696
    Top = 128
    Width = 78
    Height = 25
    Caption = 'Excluir &prova'
    TabOrder = 9
    TabStop = False
    OnClick = BtnExcluirProvaClick
  end
  object BtnExcluirTrabalho: TBitBtn
    Left = 696
    Top = 248
    Width = 78
    Height = 25
    Caption = 'Excluir &trabalho'
    TabOrder = 10
    TabStop = False
    OnClick = BtnExcluirTrabalhoClick
  end
  object BtnExcluirFalta: TBitBtn
    Left = 696
    Top = 376
    Width = 78
    Height = 25
    Caption = 'Excluir &faltas'
    TabOrder = 11
    TabStop = False
    OnClick = BtnExcluirFaltaClick
  end
  object BtnImprimir: TBitBtn
    Left = 16
    Top = 408
    Width = 75
    Height = 25
    Caption = '&Imprimir'
    TabOrder = 12
    TabStop = False
    OnClick = BtnImprimirClick
  end
end
