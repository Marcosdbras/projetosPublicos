object FrmProjeto: TFrmProjeto
  Left = 0
  Top = 54
  Width = 1024
  Height = 687
  Caption = 'Hor'#225'rio do projeto'
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
    Width = 1016
    Height = 41
    Align = alTop
    TabOrder = 0
    object BtnConfirmar: TBitBtn
      Left = 290
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Confirmar'
      TabOrder = 2
      OnClick = BtnConfirmarClick
    end
    object BtnCancelar: TBitBtn
      Left = 376
      Top = 8
      Width = 75
      Height = 25
      Caption = 'C&ancelar'
      TabOrder = 3
      OnClick = BtnCancelarClick
    end
    object BtnInserir: TBitBtn
      Left = 32
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Inserir'
      TabOrder = 0
      OnClick = BtnInserirClick
    end
    object BtnExcluir: TBitBtn
      Left = 116
      Top = 8
      Width = 75
      Height = 25
      Caption = 'E&xcluir'
      TabOrder = 1
      OnClick = BtnExcluirClick
    end
    object BtnSair: TBitBtn
      Left = 879
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Sair'
      TabOrder = 4
      OnClick = BtnSairClick
    end
    object BtnImprimir: TButton
      Left = 544
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Im&primir'
      TabOrder = 5
      OnClick = BtnImprimirClick
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 41
    Width = 1016
    Height = 191
    Align = alClient
    DataSource = FrmDados.DTS_Projeto
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
        Title.Caption = 'Codigo'
        Width = 122
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'Nome'
        Width = 594
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR'
        Title.Caption = 'Valor'
        Width = 168
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 232
    Width = 1016
    Height = 427
    Align = alBottom
    TabOrder = 2
    object Label5: TLabel
      Left = 56
      Top = 152
      Width = 57
      Height = 13
      Caption = 'Horario das '
    end
    object Label6: TLabel
      Left = 208
      Top = 152
      Width = 11
      Height = 13
      Caption = 'as'
    end
    object Label7: TLabel
      Left = 56
      Top = 88
      Width = 28
      Height = 13
      Caption = 'Nome'
    end
    object Label8: TLabel
      Left = 56
      Top = 216
      Width = 24
      Height = 13
      Caption = 'Valor'
    end
    object DBEdit5: TDBEdit
      Left = 128
      Top = 147
      Width = 73
      Height = 21
      DataField = 'INICIO'
      DataSource = FrmDados.DTS_Projeto
      TabOrder = 1
      OnClick = DBEdit3Click
    end
    object DBEdit6: TDBEdit
      Left = 224
      Top = 147
      Width = 73
      Height = 21
      DataField = 'TERMINO'
      DataSource = FrmDados.DTS_Projeto
      TabOrder = 2
      OnClick = DBEdit3Click
    end
    object DBEdit7: TDBEdit
      Left = 128
      Top = 82
      Width = 241
      Height = 21
      DataField = 'DESCRICAO'
      DataSource = FrmDados.DTS_Projeto
      TabOrder = 0
      OnClick = DBEdit3Click
    end
    object DBEdit8: TDBEdit
      Left = 128
      Top = 213
      Width = 121
      Height = 21
      DataField = 'VALOR'
      DataSource = FrmDados.DTS_Projeto
      TabOrder = 3
      OnClick = DBEdit3Click
    end
  end
end
