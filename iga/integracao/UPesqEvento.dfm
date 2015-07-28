object FrmPesqEvento: TFrmPesqEvento
  Left = 123
  Top = 104
  Width = 897
  Height = 508
  BorderIcons = []
  Caption = 'Pesquisa de evento'
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
    Width = 889
    Height = 57
    Align = alTop
    TabOrder = 0
    object BtnInserir: TBitBtn
      Left = 16
      Top = 16
      Width = 75
      Height = 25
      Caption = '&Inserir'
      TabOrder = 0
      OnClick = BtnInserirClick
    end
    object BtnExcluir: TBitBtn
      Left = 120
      Top = 16
      Width = 75
      Height = 25
      Caption = '&Excluir'
      TabOrder = 1
      OnClick = BtnExcluirClick
    end
    object BtnSair: TBitBtn
      Left = 680
      Top = 16
      Width = 75
      Height = 25
      Caption = '&Sair'
      TabOrder = 6
      OnClick = BtnSairClick
    end
    object BtnConfirmar: TBitBtn
      Left = 432
      Top = 16
      Width = 75
      Height = 25
      Caption = '&Confirmar'
      TabOrder = 4
      OnClick = BtnConfirmarClick
    end
    object BtnCancelar: TBitBtn
      Left = 536
      Top = 16
      Width = 75
      Height = 25
      Caption = 'C&ancelar'
      TabOrder = 5
      OnClick = BtnCancelarClick
    end
    object BtnFiltrar: TBitBtn
      Left = 224
      Top = 16
      Width = 75
      Height = 25
      Caption = '&Filtrar'
      TabOrder = 2
      OnClick = BtnFiltrarClick
    end
    object BtnLimpFiltro: TBitBtn
      Left = 328
      Top = 16
      Width = 75
      Height = 25
      Caption = '&Limpar filtro'
      TabOrder = 3
      OnClick = BtnLimpFiltroClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 57
    Width = 889
    Height = 79
    Align = alClient
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 887
      Height = 77
      Align = alClient
      DataSource = FrmDados.DTS_Evento
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
          Width = 74
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME'
          Title.Caption = 'Nome'
          Width = 393
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA'
          Title.Caption = 'Data'
          Width = 139
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR'
          Title.Caption = 'Valor'
          Width = 140
          Visible = True
        end>
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 136
    Width = 889
    Height = 344
    Align = alBottom
    TabOrder = 2
    object Label1: TLabel
      Left = 42
      Top = 33
      Width = 28
      Height = 13
      Caption = 'Nome'
    end
    object Label2: TLabel
      Left = 42
      Top = 69
      Width = 23
      Height = 13
      Caption = 'Data'
    end
    object Label3: TLabel
      Left = 42
      Top = 105
      Width = 24
      Height = 13
      Caption = 'Valor'
    end
    object Label4: TLabel
      Left = 8
      Top = 224
      Width = 61
      Height = 13
      Caption = 'Observa'#231#227'o:'
    end
    object DBMemo1: TDBMemo
      Left = 1
      Top = 240
      Width = 887
      Height = 103
      Align = alBottom
      DataField = 'OBS'
      DataSource = FrmDados.DTS_Evento
      TabOrder = 3
      OnEnter = DBEdit1Enter
    end
    object DBEdit1: TDBEdit
      Left = 112
      Top = 32
      Width = 196
      Height = 21
      DataField = 'NOME'
      DataSource = FrmDados.DTS_Evento
      TabOrder = 0
      OnEnter = DBEdit1Enter
    end
    object DBEdit2: TDBEdit
      Left = 112
      Top = 67
      Width = 121
      Height = 21
      DataField = 'DATA'
      DataSource = FrmDados.DTS_Evento
      TabOrder = 1
      OnEnter = DBEdit1Enter
    end
    object DBEdit3: TDBEdit
      Left = 112
      Top = 103
      Width = 148
      Height = 21
      DataField = 'VALOR'
      DataSource = FrmDados.DTS_Evento
      TabOrder = 2
      OnEnter = DBEdit1Enter
    end
  end
end
