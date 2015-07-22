object FrmPesqHistorico: TFrmPesqHistorico
  Left = 0
  Top = 107
  Width = 1024
  Height = 635
  BorderIcons = [biSystemMenu]
  Caption = 'Pesquisa de hist'#243'rico'
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
    Width = 1016
    Height = 73
    Align = alClient
    DataSource = FrmDados.DTS_Historico
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
        Title.Caption = 'Codigo'
        Width = 119
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NomeAlu'
        Title.Caption = 'Nome do aluno'
        Width = 312
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NomeCurso'
        Title.Caption = 'Curso'
        Width = 258
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
        FieldName = 'ANO'
        Title.Caption = 'Ano'
        Width = 120
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1016
    Height = 41
    Align = alTop
    TabOrder = 1
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
    object BtnLimpFiltro: TBitBtn
      Left = 336
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Limpar filtro'
      TabOrder = 1
      TabStop = False
      OnClick = BtnLimpFiltroClick
    end
    object BtnInserir: TBitBtn
      Left = 8
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Inserir'
      TabOrder = 2
      TabStop = False
      OnClick = BtnInserirClick
    end
    object BtnFiltro: TBitBtn
      Left = 232
      Top = 8
      Width = 97
      Height = 25
      Caption = '&Filtrar pesquisa'
      TabOrder = 3
      TabStop = False
      OnClick = BtnFiltroClick
    end
    object BtnExcluir: TBitBtn
      Left = 88
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Excluir'
      TabOrder = 4
      TabStop = False
      OnClick = BtnExcluirClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 114
    Width = 1016
    Height = 493
    Align = alBottom
    TabOrder = 2
    object PnlMaterias: TPanel
      Left = 533
      Top = 0
      Width = 481
      Height = 491
      TabOrder = 1
      object BtnConfirmarNota: TBitBtn
        Left = 120
        Top = 352
        Width = 75
        Height = 25
        Caption = '&Confirmar'
        TabOrder = 1
        OnClick = BtnConfirmarNotaClick
      end
      object BtnExcluirNota: TBitBtn
        Left = 312
        Top = 352
        Width = 75
        Height = 25
        Caption = '&Excluir'
        TabOrder = 2
        OnClick = BtnExcluirNotaClick
      end
      object DBGrid3: TDBGrid
        Left = 1
        Top = 1
        Width = 479
        Height = 223
        Align = alTop
        DataSource = FrmDados.DTS_NotasAnteriores
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnKeyDown = DBGrid3KeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'NomeMat'
            Title.Caption = 'Nome da mat'#233'ria'
            Width = 223
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOTA'
            Title.Caption = 'Nota'
            Width = 110
            Visible = True
          end>
      end
      object BtnCancelarNota: TBitBtn
        Left = 216
        Top = 352
        Width = 75
        Height = 25
        Caption = 'C&ancelar'
        TabOrder = 3
        OnClick = BtnCancelarNotaClick
      end
    end
    object PnlSerie: TPanel
      Left = 2
      Top = 1
      Width = 531
      Height = 490
      TabOrder = 0
      object Label10: TLabel
        Left = 25
        Top = 128
        Width = 24
        Height = 13
        Caption = 'S'#233'rie'
      end
      object Label11: TLabel
        Left = 25
        Top = 48
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
      end
      object DBText1: TDBText
        Left = 136
        Top = 48
        Width = 65
        Height = 17
        DataField = 'CODIGO'
        DataSource = FrmDados.DTS_Historico
      end
      object Label12: TLabel
        Left = 25
        Top = 166
        Width = 19
        Height = 13
        Caption = 'Ano'
      end
      object Label13: TLabel
        Left = 25
        Top = 90
        Width = 27
        Height = 13
        Caption = 'Curso'
      end
      object Label14: TLabel
        Left = 25
        Top = 203
        Width = 78
        Height = 13
        Caption = 'Estabelecimento'
      end
      object Label1: TLabel
        Left = 25
        Top = 241
        Width = 27
        Height = 13
        Caption = 'Aluno'
      end
      object Label2: TLabel
        Left = 25
        Top = 279
        Width = 45
        Height = 13
        Caption = 'Municipio'
      end
      object Label3: TLabel
        Left = 25
        Top = 317
        Width = 33
        Height = 13
        Caption = 'Estado'
      end
      object DBEdit1: TDBEdit
        Left = 136
        Top = 123
        Width = 121
        Height = 21
        CharCase = ecUpperCase
        DataField = 'SERIE'
        DataSource = FrmDados.DTS_Historico
        TabOrder = 0
        OnEnter = DBEdit1Enter
      end
      object DBEdit3: TDBEdit
        Left = 136
        Top = 161
        Width = 121
        Height = 21
        CharCase = ecUpperCase
        DataField = 'ANO'
        DataSource = FrmDados.DTS_Historico
        TabOrder = 1
        OnEnter = DBEdit1Enter
      end
      object DBEdit4: TDBEdit
        Left = 136
        Top = 198
        Width = 318
        Height = 21
        DataField = 'ESTABELECIMENTO'
        DataSource = FrmDados.DTS_Historico
        TabOrder = 2
        OnEnter = DBEdit1Enter
      end
      object BtnConfirmar: TBitBtn
        Left = 150
        Top = 384
        Width = 75
        Height = 25
        Caption = '&Confirmar'
        TabOrder = 3
        OnClick = BtnConfirmarClick
      end
      object BtnCancelar: TBitBtn
        Left = 246
        Top = 384
        Width = 75
        Height = 25
        Caption = 'C&ancelar'
        TabOrder = 4
        OnClick = BtnCancelarClick
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 136
        Top = 236
        Width = 192
        Height = 21
        DataField = 'CODALU'
        DataSource = FrmDados.DTS_Historico
        KeyField = 'CODIGO'
        ListField = 'NOME'
        ListSource = FrmDados.DTS_CadAluno
        TabOrder = 5
        OnEnter = DBEdit1Enter
      end
      object BtnPesqAlu: TBitBtn
        Left = 339
        Top = 236
        Width = 25
        Height = 22
        Caption = '...'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        OnClick = BtnPesqAluClick
        OnEnter = DBEdit1Enter
        Layout = blGlyphRight
      end
      object DBEdit5: TDBEdit
        Left = 136
        Top = 274
        Width = 161
        Height = 21
        DataField = 'MUNICIPIO'
        DataSource = FrmDados.DTS_Historico
        TabOrder = 7
        OnEnter = DBEdit1Enter
      end
      object DBEdit6: TDBEdit
        Left = 136
        Top = 312
        Width = 121
        Height = 21
        DataField = 'ESTADO'
        DataSource = FrmDados.DTS_Historico
        TabOrder = 8
        OnEnter = DBEdit1Enter
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 136
        Top = 85
        Width = 145
        Height = 21
        DataField = 'CODCURSO'
        DataSource = FrmDados.DTS_Historico
        KeyField = 'CODIGO'
        ListField = 'NOME'
        ListSource = FrmDados.DTS_Curso
        TabOrder = 9
      end
    end
  end
end
