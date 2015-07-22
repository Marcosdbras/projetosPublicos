object FrmAluProjeto: TFrmAluProjeto
  Left = 247
  Top = 216
  Width = 547
  Height = 227
  Caption = 'Hor'#225'rio do projeto'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 16
    Top = 40
    Width = 33
    Height = 13
    Caption = 'Projeto'
  end
  object Label4: TLabel
    Left = 16
    Top = 80
    Width = 24
    Height = 13
    Caption = 'Valor'
  end
  object Label5: TLabel
    Left = 16
    Top = 16
    Width = 27
    Height = 13
    Caption = 'Aluno'
  end
  object LblAluno: TLabel
    Left = 88
    Top = 16
    Width = 41
    Height = 13
    Caption = 'LblAluno'
  end
  object BtnConfirmar: TBitBtn
    Left = 274
    Top = 160
    Width = 75
    Height = 25
    Caption = '&Confirmar'
    TabOrder = 4
    OnClick = BtnConfirmarClick
  end
  object BtnCancelar: TBitBtn
    Left = 360
    Top = 160
    Width = 75
    Height = 25
    Caption = 'C&ancelar'
    TabOrder = 5
    OnClick = BtnCancelarClick
  end
  object BtnInserir: TBitBtn
    Left = 16
    Top = 159
    Width = 75
    Height = 25
    Caption = '&Inserir'
    TabOrder = 1
    OnClick = BtnInserirClick
  end
  object BtnEditar: TBitBtn
    Left = 102
    Top = 159
    Width = 75
    Height = 25
    Caption = '&Editar'
    TabOrder = 2
    OnClick = BtnEditarClick
  end
  object BtnExcluir: TBitBtn
    Left = 188
    Top = 159
    Width = 75
    Height = 25
    Caption = 'E&xcluir'
    TabOrder = 3
    OnClick = BtnExcluirClick
  end
  object DBNavigator1: TDBNavigator
    Left = 328
    Top = 112
    Width = 176
    Height = 25
    DataSource = FrmDados.DTS_AluProjeto
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    TabOrder = 6
  end
  object BtnSair: TBitBtn
    Left = 447
    Top = 160
    Width = 75
    Height = 25
    Caption = '&Sair'
    TabOrder = 7
    OnClick = BtnSairClick
  end
  object DBEdit4: TDBEdit
    Left = 88
    Top = 80
    Width = 121
    Height = 21
    DataField = 'VALOR'
    DataSource = FrmDados.DTS_AluProjeto
    TabOrder = 0
    OnClick = DBEdit4Click
  end
  object BtnMensalidade: TBitBtn
    Left = 366
    Top = 30
    Width = 75
    Height = 25
    Caption = 'Mensalidades'
    TabOrder = 8
    OnClick = BtnMensalidadeClick
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 88
    Top = 40
    Width = 145
    Height = 21
    DataField = 'CODPRO'
    DataSource = FrmDados.DTS_AluProjeto
    KeyField = 'CODIGO'
    ListField = 'DESCRICAO'
    ListSource = FrmDados.DTS_Projeto
    TabOrder = 9
  end
end
