object FrmCadAluno: TFrmCadAluno
  Left = 173
  Top = 117
  Width = 783
  Height = 609
  BorderIcons = []
  Caption = 'Cadastro de aluno'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBText1: TDBText
    Left = 288
    Top = 8
    Width = 49
    Height = 17
    DataField = 'CODIGO'
    DataSource = FrmDados.DTS_CadAluno
  end
  object Label1: TLabel
    Left = 425
    Top = 35
    Width = 25
    Height = 13
    Caption = 'RGM'
  end
  object Label2: TLabel
    Left = 16
    Top = 117
    Width = 60
    Height = 13
    Caption = 'Nome do pai'
  end
  object Label3: TLabel
    Left = 16
    Top = 147
    Width = 66
    Height = 13
    Caption = 'Nome da m'#227'e'
  end
  object Label4: TLabel
    Left = 16
    Top = 35
    Width = 74
    Height = 13
    Caption = 'Nome completo'
  end
  object Label5: TLabel
    Left = 16
    Top = 177
    Width = 46
    Height = 13
    Caption = 'Endere'#231'o'
  end
  object Label6: TLabel
    Left = 408
    Top = 177
    Width = 21
    Height = 13
    Caption = 'CEP'
  end
  object Label7: TLabel
    Left = 16
    Top = 207
    Width = 27
    Height = 13
    Caption = 'Bairro'
  end
  object Label8: TLabel
    Left = 360
    Top = 207
    Width = 42
    Height = 13
    Caption = 'Telefone'
  end
  object Label10: TLabel
    Left = 16
    Top = 237
    Width = 28
    Height = 13
    Caption = 'E-mail'
  end
  object Label11: TLabel
    Left = 16
    Top = 65
    Width = 97
    Height = 13
    Caption = 'Data de Nascimento'
  end
  object Label12: TLabel
    Left = 7
    Top = 436
    Width = 61
    Height = 13
    Caption = 'Observa'#231#227'o:'
  end
  object Label13: TLabel
    Left = 352
    Top = 65
    Width = 101
    Height = 13
    Caption = 'Local de nascimento:'
  end
  object Label15: TLabel
    Left = 296
    Top = 265
    Width = 113
    Height = 13
    Caption = 'Documentos pendentes'
  end
  object Label16: TLabel
    Left = 16
    Top = 325
    Width = 84
    Height = 13
    Caption = 'Data da Matricula'
  end
  object Label17: TLabel
    Left = 16
    Top = 355
    Width = 138
    Height = 13
    Caption = 'Data cancelamento matricula'
  end
  object Label18: TLabel
    Left = 296
    Top = 355
    Width = 103
    Height = 13
    Caption = 'Motivo Cancelamento'
  end
  object Label19: TLabel
    Left = 16
    Top = 265
    Width = 86
    Height = 13
    Caption = 'Valor mensalidade'
  end
  object Label20: TLabel
    Left = 16
    Top = 385
    Width = 46
    Height = 13
    Caption = 'Desconto'
  end
  object Label21: TLabel
    Left = 296
    Top = 385
    Width = 79
    Height = 13
    Caption = 'Motivo desconto'
  end
  object Label22: TLabel
    Left = 16
    Top = 295
    Width = 79
    Height = 13
    Caption = 'Data pagamento'
  end
  object Label23: TLabel
    Left = 16
    Top = 415
    Width = 111
    Height = 13
    Caption = 'Respons'#225'vel financeiro'
  end
  object Label9: TLabel
    Left = 224
    Top = 8
    Width = 47
    Height = 16
    Caption = 'C'#243'digo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label14: TLabel
    Left = 16
    Top = 88
    Width = 18
    Height = 13
    Caption = 'RA:'
  end
  object edinome: TDBEdit
    Left = 160
    Top = 31
    Width = 257
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NOME'
    DataSource = FrmDados.DTS_CadAluno
    TabOrder = 0
    OnKeyPress = edinomeKeyPress
  end
  object DBEEndereco: TDBEdit
    Left = 160
    Top = 173
    Width = 233
    Height = 21
    CharCase = ecUpperCase
    DataField = 'ENDERECO'
    DataSource = FrmDados.DTS_CadAluno
    TabOrder = 9
    OnKeyPress = edinomeKeyPress
  end
  object DBEBairro: TDBEdit
    Left = 160
    Top = 203
    Width = 169
    Height = 21
    CharCase = ecUpperCase
    DataField = 'BAIRRO'
    DataSource = FrmDados.DTS_CadAluno
    TabOrder = 11
    OnKeyPress = edinomeKeyPress
  end
  object DBETelefone: TDBEdit
    Left = 416
    Top = 203
    Width = 316
    Height = 21
    CharCase = ecUpperCase
    DataField = 'TELEFONE'
    DataSource = FrmDados.DTS_CadAluno
    TabOrder = 12
    OnKeyPress = edinomeKeyPress
  end
  object DBEEmail: TDBEdit
    Left = 160
    Top = 233
    Width = 410
    Height = 21
    DataField = 'EMAIL'
    DataSource = FrmDados.DTS_CadAluno
    TabOrder = 13
    OnKeyPress = edinomeKeyPress
  end
  object DBECep: TDBEdit
    Left = 440
    Top = 173
    Width = 97
    Height = 21
    CharCase = ecUpperCase
    DataField = 'CEP'
    DataSource = FrmDados.DTS_CadAluno
    TabOrder = 10
    OnKeyPress = edinomeKeyPress
  end
  object DBEDtNasc: TDBEdit
    Left = 160
    Top = 61
    Width = 121
    Height = 21
    CharCase = ecUpperCase
    DataField = 'DATA_NASC'
    DataSource = FrmDados.DTS_CadAluno
    MaxLength = 10
    TabOrder = 2
    OnKeyPress = edinomeKeyPress
  end
  object MemoObs: TDBMemo
    Left = 8
    Top = 456
    Width = 733
    Height = 81
    DataField = 'OBSERVACAO'
    DataSource = FrmDados.DTS_CadAluno
    TabOrder = 23
    OnKeyPress = edinomeKeyPress
  end
  object BtnConfirmar: TBitBtn
    Left = 584
    Top = 548
    Width = 75
    Height = 25
    Caption = '&Confirmar'
    TabOrder = 31
    OnClick = BtnConfirmarClick
  end
  object BtnCancelar: TBitBtn
    Left = 664
    Top = 548
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 32
    OnClick = BtnCancelarClick
  end
  object DBRDGPeriodo: TDBRadioGroup
    Left = 544
    Top = 10
    Width = 153
    Height = 73
    Caption = 'Per'#237'odo'
    Columns = 2
    DataField = 'PER_ESPECIAL'
    DataSource = FrmDados.DTS_CadAluno
    Items.Strings = (
      '&Manh'#227
      '&Tarde'
      '&Noite'
      '&Integral'
      '&Especial')
    TabOrder = 24
    Values.Strings = (
      '1'
      '2'
      '3'
      '4'
      '5')
    OnClick = DBRDGPeriodoClick
  end
  object DBEdit1: TDBEdit
    Left = 456
    Top = 61
    Width = 81
    Height = 21
    CharCase = ecUpperCase
    DataField = 'LOC_NASC'
    DataSource = FrmDados.DTS_CadAluno
    TabOrder = 3
    OnKeyPress = edinomeKeyPress
  end
  object DBEdit2: TDBEdit
    Left = 160
    Top = 113
    Width = 313
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NOME_PAI'
    DataSource = FrmDados.DTS_CadAluno
    TabOrder = 5
    OnKeyPress = edinomeKeyPress
  end
  object DBEdit3: TDBEdit
    Left = 160
    Top = 143
    Width = 313
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NOME_MAE'
    DataSource = FrmDados.DTS_CadAluno
    TabOrder = 7
    OnKeyPress = edinomeKeyPress
  end
  object DBEdit6: TDBEdit
    Left = 416
    Top = 261
    Width = 153
    Height = 21
    CharCase = ecUpperCase
    DataField = 'DOC_PENDENTES'
    DataSource = FrmDados.DTS_CadAluno
    TabOrder = 15
    OnKeyPress = edinomeKeyPress
  end
  object DBRGProjeto: TDBRadioGroup
    Left = 544
    Top = 129
    Width = 153
    Height = 33
    Caption = 'Participa projeto?'
    Columns = 2
    DataField = 'PROJETO'
    DataSource = FrmDados.DTS_CadAluno
    Items.Strings = (
      'Sim'
      'N'#227'o')
    TabOrder = 26
    Values.Strings = (
      'V'
      'F')
    OnClick = DBRGProjetoClick
  end
  object DBEdit7: TDBEdit
    Left = 160
    Top = 261
    Width = 121
    Height = 21
    CharCase = ecUpperCase
    DataField = 'VALOR'
    DataSource = FrmDados.DTS_CadAluno
    TabOrder = 14
    OnKeyPress = edinomeKeyPress
  end
  object DBEdit8: TDBEdit
    Left = 160
    Top = 291
    Width = 121
    Height = 21
    CharCase = ecUpperCase
    DataField = 'DATA_PGMTO'
    DataSource = FrmDados.DTS_CadAluno
    TabOrder = 16
    OnKeyPress = edinomeKeyPress
  end
  object DBEdit9: TDBEdit
    Left = 160
    Top = 321
    Width = 121
    Height = 21
    CharCase = ecUpperCase
    DataField = 'DATA_MATRICULA'
    DataSource = FrmDados.DTS_CadAluno
    TabOrder = 17
    OnKeyPress = edinomeKeyPress
  end
  object DBEdit10: TDBEdit
    Left = 160
    Top = 351
    Width = 121
    Height = 21
    CharCase = ecUpperCase
    DataField = 'DATA_CANCEL'
    DataSource = FrmDados.DTS_CadAluno
    TabOrder = 18
    OnKeyPress = edinomeKeyPress
  end
  object DBEdit11: TDBEdit
    Left = 160
    Top = 381
    Width = 121
    Height = 21
    CharCase = ecUpperCase
    DataField = 'DESCONTO'
    DataSource = FrmDados.DTS_CadAluno
    TabOrder = 20
    OnKeyPress = edinomeKeyPress
  end
  object DBEdit12: TDBEdit
    Left = 160
    Top = 411
    Width = 369
    Height = 21
    CharCase = ecUpperCase
    DataField = 'RESP_FINANCEIRO'
    DataSource = FrmDados.DTS_CadAluno
    TabOrder = 22
    OnKeyPress = edinomeKeyPress
  end
  object DBEdit13: TDBEdit
    Left = 416
    Top = 351
    Width = 121
    Height = 21
    CharCase = ecUpperCase
    DataField = 'MOTIVO_CANCEL'
    DataSource = FrmDados.DTS_CadAluno
    TabOrder = 19
    OnKeyPress = edinomeKeyPress
  end
  object DBEdit14: TDBEdit
    Left = 416
    Top = 381
    Width = 121
    Height = 21
    CharCase = ecUpperCase
    DataField = 'MOTIVO_DESC'
    DataSource = FrmDados.DTS_CadAluno
    TabOrder = 21
    OnKeyPress = edinomeKeyPress
  end
  object DBRDGDP: TDBRadioGroup
    Left = 544
    Top = 89
    Width = 153
    Height = 33
    Caption = 'O aluno tem DP?'
    Columns = 2
    DataField = 'DP'
    DataSource = FrmDados.DTS_CadAluno
    Items.Strings = (
      'Sim '
      'N'#227'o')
    TabOrder = 25
    Values.Strings = (
      'V'
      'F')
    OnClick = DBRDGDPClick
  end
  object BtnObsPai: TBitBtn
    Left = 488
    Top = 113
    Width = 41
    Height = 17
    Caption = 'OBS'
    TabOrder = 6
    TabStop = False
    OnClick = BtnObsPaiClick
  end
  object BtnObsMae: TBitBtn
    Left = 488
    Top = 145
    Width = 41
    Height = 17
    Caption = 'OBS'
    TabOrder = 8
    TabStop = False
    OnClick = BtnObsMaeClick
  end
  object CHBRecibo: TCheckBox
    Left = 608
    Top = 246
    Width = 97
    Height = 17
    TabStop = False
    Caption = 'Recibo'
    TabOrder = 27
    OnKeyPress = edinomeKeyPress
  end
  object CHBNota: TCheckBox
    Left = 608
    Top = 281
    Width = 97
    Height = 17
    TabStop = False
    Caption = 'Nota fiscal'
    TabOrder = 28
    OnKeyPress = edinomeKeyPress
  end
  object DBEdit4: TDBEdit
    Left = 456
    Top = 30
    Width = 80
    Height = 21
    CharCase = ecUpperCase
    DataField = 'RGM'
    DataSource = FrmDados.DTS_CadAluno
    TabOrder = 1
    OnKeyPress = edinomeKeyPress
  end
  object BtnAdcAltTurma: TBitBtn
    Left = 368
    Top = 548
    Width = 131
    Height = 25
    Caption = '&Adicionar ou alterar turma'
    TabOrder = 29
    OnClick = BtnAdcAltTurmaClick
  end
  object DBEdit5: TDBEdit
    Left = 160
    Top = 87
    Width = 121
    Height = 21
    DataField = 'RA'
    DataSource = FrmDados.DTS_CadAluno
    TabOrder = 4
  end
  object BtnMensalidade: TBitBtn
    Left = 504
    Top = 549
    Width = 75
    Height = 25
    Caption = 'Mensalidades'
    TabOrder = 30
    OnClick = BtnMensalidadeClick
  end
  object BtnPeriodo: TBitBtn
    Left = 700
    Top = 56
    Width = 69
    Height = 25
    Caption = 'Qual periodo'
    TabOrder = 33
    OnClick = BtnPeriodoClick
  end
  object BtnDP: TBitBtn
    Left = 700
    Top = 96
    Width = 61
    Height = 25
    Caption = 'Qual DP'
    TabOrder = 34
    OnClick = BtnDPClick
  end
  object BtnProjeto: TBitBtn
    Left = 701
    Top = 136
    Width = 66
    Height = 25
    Caption = 'Qual projeto'
    TabOrder = 35
    OnClick = BtnProjetoClick
  end
end
