object FrmDP: TFrmDP
  Left = 248
  Top = 216
  Width = 577
  Height = 227
  BorderIcons = []
  Caption = 'Disciplinas em que o aluno tem pend'#234'ncia'
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
  object Label1: TLabel
    Left = 16
    Top = 8
    Width = 27
    Height = 13
    Caption = 'Aluno'
  end
  object Label2: TLabel
    Left = 16
    Top = 40
    Width = 45
    Height = 13
    Caption = 'Disciplina'
  end
  object LblNomeAlu: TLabel
    Left = 120
    Top = 8
    Width = 57
    Height = 13
    Caption = 'LblNomeAlu'
  end
  object Label3: TLabel
    Left = 16
    Top = 72
    Width = 24
    Height = 13
    Caption = 'Valor'
  end
  object BtnConfirmar: TBitBtn
    Left = 291
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Con&firmar'
    TabOrder = 6
    OnClick = BtnConfirmarClick
  end
  object BtnCancelar: TBitBtn
    Left = 385
    Top = 160
    Width = 75
    Height = 25
    Caption = '&Cancelar'
    TabOrder = 7
    OnClick = BtnCancelarClick
  end
  object BtnInserir: TBitBtn
    Left = 8
    Top = 160
    Width = 75
    Height = 25
    Caption = '&Inserir'
    TabOrder = 3
    OnClick = BtnInserirClick
  end
  object BtnEditar: TBitBtn
    Left = 102
    Top = 160
    Width = 75
    Height = 25
    Caption = '&Editar'
    TabOrder = 4
    OnClick = BtnEditarClick
  end
  object BtnExcluir: TBitBtn
    Left = 196
    Top = 160
    Width = 75
    Height = 25
    Caption = 'E&xcluir'
    TabOrder = 5
    OnClick = BtnExcluirClick
  end
  object DBNavigator1: TDBNavigator
    Left = 344
    Top = 96
    Width = 216
    Height = 25
    DataSource = FrmDados.DTS_DP
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    TabOrder = 2
  end
  object BtnSair: TBitBtn
    Left = 480
    Top = 160
    Width = 75
    Height = 25
    Caption = '&Sair'
    TabOrder = 8
    OnClick = BtnSairClick
  end
  object EDValor: TDBEdit
    Left = 120
    Top = 64
    Width = 121
    Height = 21
    DataField = 'VALOR'
    DataSource = FrmDados.DTS_DP
    TabOrder = 1
    OnChange = EDValorChange
    OnClick = EDValorClick
  end
  object CBXDP: TDBLookupComboBox
    Left = 120
    Top = 32
    Width = 145
    Height = 21
    DataField = 'CODMAT'
    DataSource = FrmDados.DTS_DP
    KeyField = 'CODIGO'
    ListField = 'NOME'
    ListSource = FrmDados.DTS_CadMateria
    TabOrder = 0
    OnClick = CBXDPClick
    OnExit = CBXDPExit
  end
  object BtnMensalidade: TBitBtn
    Left = 430
    Top = 30
    Width = 75
    Height = 25
    Caption = 'Mensalidades'
    TabOrder = 9
    OnClick = BtnMensalidadeClick
  end
end
