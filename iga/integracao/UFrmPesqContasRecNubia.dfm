object FrmPesqContasRecNubia: TFrmPesqContasRecNubia
  Left = 0
  Top = 100
  Width = 1024
  Height = 636
  BorderIcons = []
  Caption = ']'
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
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 41
    Width = 1016
    Height = 415
    Align = alClient
    DataSource = FrmDados.DTS_ContasRecNubia
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGO'
        Title.Caption = 'Codigo'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NomeAlu'
        Title.Caption = 'Nome do aluno'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR'
        Title.Caption = 'Valor'
        Width = 109
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPO'
        Title.Caption = 'Tipo'
        Width = 106
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMISSAO'
        Title.Caption = 'Data de emiss'#227'o'
        Width = 92
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA'
        Title.Caption = 'Data vencimento'
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PAGO'
        Title.Caption = 'Data pagamento'
        Width = 84
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPOPGTO'
        Title.Caption = 'Tipo de pagamento'
        Width = 107
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NomeEvento'
        Title.Caption = 'Nome de evento'
        Width = 124
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 456
    Width = 1016
    Height = 152
    Align = alBottom
    TabOrder = 1
    object Label3: TLabel
      Left = 464
      Top = 11
      Width = 27
      Height = 13
      Caption = 'Total:'
    end
    object LblTotal: TLabel
      Left = 504
      Top = 11
      Width = 38
      Height = 13
      Caption = 'LblTotal'
    end
    object BtnRetornar: TBitBtn
      Left = 42
      Top = 23
      Width = 126
      Height = 25
      Caption = '&Retorno de pagamento'
      TabOrder = 5
      OnClick = BtnRetornarClick
    end
    object BtnMenu: TBitBtn
      Left = 760
      Top = 63
      Width = 75
      Height = 25
      Caption = '&Sair'
      TabOrder = 0
      OnClick = BtnMenuClick
    end
    object BtnFiltrar: TBitBtn
      Left = 610
      Top = 63
      Width = 61
      Height = 25
      Caption = 'Filtrar'
      TabOrder = 1
      OnClick = BitBtn1Click
    end
    object BtnRecebido: TBitBtn
      Left = 93
      Top = 23
      Width = 75
      Height = 25
      Caption = '&Pago'
      TabOrder = 2
      OnClick = BtnRecebidoClick
    end
    object BtnLimpar: TBitBtn
      Left = 680
      Top = 64
      Width = 70
      Height = 24
      Caption = 'Limpar Filtro'
      TabOrder = 3
      OnClick = BtnLimparClick
    end
    object BtnExcluir: TBitBtn
      Left = 181
      Top = 23
      Width = 75
      Height = 25
      Caption = '&Excluir'
      TabOrder = 4
      OnClick = BtnExcluirClick
    end
    object BtnGerarRecibo: TBitBtn
      Left = 728
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Gerar recibo'
      TabOrder = 6
      OnClick = BtnGerarReciboClick
    end
    object BtnObs: TBitBtn
      Left = 816
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Observa'#231#227'o'
      TabOrder = 7
      OnClick = BtnObsClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1016
    Height = 41
    Align = alTop
    TabOrder = 2
    object Label1: TLabel
      Left = 5
      Top = 10
      Width = 31
      Height = 13
      Caption = 'Do dia'
    end
    object Label2: TLabel
      Left = 119
      Top = 10
      Width = 29
      Height = 13
      Caption = 'ao dia'
    end
    object Label4: TLabel
      Left = 373
      Top = 11
      Width = 56
      Height = 13
      Caption = 'Ordenar por'
    end
    object EdInicio: TMaskEdit
      Left = 45
      Top = 3
      Width = 68
      Height = 21
      EditMask = '99.99.9999;1;_'
      MaxLength = 10
      TabOrder = 0
      Text = '  .  .    '
    end
    object EdFim: TMaskEdit
      Left = 156
      Top = 3
      Width = 71
      Height = 21
      EditMask = '99.99.9999'
      MaxLength = 10
      TabOrder = 1
      Text = '  .  .    '
      OnExit = CBXOrdemChange
    end
    object CBXData: TComboBox
      Left = 234
      Top = 3
      Width = 128
      Height = 21
      ItemHeight = 13
      TabOrder = 2
      Text = 'Data vencimento'
      OnChange = CBXOrdemChange
      Items.Strings = (
        'Data vencimento'
        'Data pagamento')
    end
    object CBXOrdem: TComboBox
      Left = 437
      Top = 3
      Width = 128
      Height = 21
      ItemHeight = 13
      TabOrder = 3
      Text = 'Nome'
      OnChange = CBXOrdemChange
      Items.Strings = (
        'Nome'
        'Codigo'
        'Valor'
        'Data vencimento')
    end
  end
end
