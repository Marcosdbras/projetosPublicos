object FrmGeraContas: TFrmGeraContas
  Left = 19
  Top = 21
  Width = 976
  Height = 709
  BorderIcons = []
  Caption = 'Gera contas'
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 968
    Height = 65
    Align = alTop
    TabOrder = 0
    object BtnConfirmar: TBitBtn
      Left = 48
      Top = 8
      Width = 145
      Height = 49
      Caption = '&Gerar as contas'
      TabOrder = 0
      OnClick = BtnConfirmarClick
    end
    object BtnSair: TBitBtn
      Left = 199
      Top = 8
      Width = 137
      Height = 49
      Caption = '&Sair'
      TabOrder = 1
      OnClick = BtnSairClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 65
    Width = 968
    Height = 566
    Align = alClient
    TabOrder = 1
    object Label1: TLabel
      Left = 52
      Top = 24
      Width = 72
      Height = 13
      Caption = 'Nome do aluno'
    end
    object Label2: TLabel
      Left = 52
      Top = 64
      Width = 24
      Height = 13
      Caption = 'Valor'
    end
    object Label3: TLabel
      Left = 52
      Top = 102
      Width = 21
      Height = 13
      Caption = 'Tipo'
    end
    object Label4: TLabel
      Left = 52
      Top = 145
      Width = 87
      Height = 13
      Caption = 'Dia de pagamento'
    end
    object Label5: TLabel
      Left = 52
      Top = 185
      Width = 71
      Height = 13
      Caption = 'Quantas vezes'
    end
    object BtnProcEvento: TSpeedButton
      Left = 347
      Top = 100
      Width = 22
      Height = 22
      Caption = '...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
      OnClick = BtnProcEventoClick
    end
    object Label6: TLabel
      Left = 52
      Top = 217
      Width = 52
      Height = 13
      Caption = 'Data inicial'
    end
    object Label7: TLabel
      Left = 3
      Top = 504
      Width = 61
      Height = 13
      Caption = 'Observa'#231#227'o:'
    end
    object Label8: TLabel
      Left = 52
      Top = 248
      Width = 19
      Height = 13
      Caption = 'Ano'
    end
    object lbltitentrada: TLabel
      Left = 515
      Top = 142
      Width = 37
      Height = 13
      Caption = 'Entrada'
    end
    object lbltitsaida: TLabel
      Left = 515
      Top = 177
      Width = 29
      Height = 13
      Caption = 'Sa'#237'da'
    end
    object CBXEvento: TDBLookupComboBox
      Left = 148
      Top = 102
      Width = 197
      Height = 21
      KeyField = 'CODIGO'
      ListField = 'NOME'
      ListSource = FrmDados.DTS_Evento
      TabOrder = 11
      Visible = False
    end
    object EdValor: TEdit
      Left = 148
      Top = 64
      Width = 121
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 2
      OnExit = EdValorExit
    end
    object CBXNome: TDBLookupComboBox
      Left = 148
      Top = 24
      Width = 289
      Height = 21
      KeyField = 'CODIGO'
      ListField = 'NOME'
      ListSource = FrmDados.DTS_CadAluno
      TabOrder = 0
    end
    object BtnProcAlu: TBitBtn
      Left = 452
      Top = 24
      Width = 22
      Height = 22
      Caption = '...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BtnProcAluClick
      Layout = blGlyphTop
      Spacing = 100
    end
    object EdQntd: TEdit
      Left = 148
      Top = 182
      Width = 121
      Height = 21
      TabOrder = 7
    end
    object EdVenc: TEdit
      Left = 148
      Top = 142
      Width = 121
      Height = 21
      MaxLength = 2
      TabOrder = 6
    end
    object EdTipo: TEdit
      Left = 148
      Top = 102
      Width = 121
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 5
    end
    object CBTpEvento: TCheckBox
      Left = 374
      Top = 103
      Width = 61
      Height = 17
      Caption = 'Evento'
      TabOrder = 10
      OnClick = CBTpEventoClick
      OnEnter = CBTpEventoClick
      OnExit = CBTpEventoClick
    end
    object CBPgtoVista: TCheckBox
      Left = 374
      Top = 64
      Width = 113
      Height = 17
      Caption = 'Pagamento a vista'
      TabOrder = 13
      OnClick = CBPgtoVistaClick
      OnEnter = CBPgtoVistaClick
      OnExit = CBPgtoVistaClick
    end
    object RGPFormaPgto: TRadioGroup
      Left = 515
      Top = 25
      Width = 185
      Height = 105
      Caption = 'Forma de pagamento'
      Columns = 2
      Items.Strings = (
        'Cart'#227'o'
        'Dinheiro'
        'Boleto'
        'Cheque')
      TabOrder = 14
      Visible = False
      OnClick = RGPFormaPgtoClick
      OnExit = RGPFormaPgtoClick
    end
    object RGPTipo: TRadioGroup
      Left = 718
      Top = 25
      Width = 73
      Height = 51
      Caption = 'Tipo'
      ItemIndex = 0
      Items.Strings = (
        'Cr'#233'dito'
        'D'#233'bito')
      TabOrder = 15
      Visible = False
    end
    object EdData: TEdit
      Left = 148
      Top = 214
      Width = 121
      Height = 21
      TabOrder = 8
    end
    object RgpCartao: TRadioGroup
      Left = 718
      Top = 79
      Width = 73
      Height = 51
      Caption = 'Cart'#227'o'
      ItemIndex = 0
      Items.Strings = (
        'Visa'
        'Master')
      TabOrder = 16
      Visible = False
    end
    object MemoObs: TMemo
      Left = 1
      Top = 476
      Width = 966
      Height = 89
      Align = alBottom
      TabOrder = 17
    end
    object EdAno: TEdit
      Left = 148
      Top = 246
      Width = 121
      Height = 21
      MaxLength = 4
      TabOrder = 9
    end
    object CBEtapa: TCheckBox
      Left = 444
      Top = 103
      Width = 61
      Height = 17
      Caption = 'ETAPA'
      TabOrder = 12
      OnClick = CBEtapaClick
    end
    object edentrada: TEdit
      Left = 600
      Top = 142
      Width = 97
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 3
      OnExit = edentradaExit
      OnKeyPress = edentradaKeyPress
    end
    object edsaida: TEdit
      Left = 600
      Top = 174
      Width = 97
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 4
      OnExit = edsaidaExit
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 631
    Width = 968
    Height = 44
    Align = alBottom
    TabOrder = 2
  end
end
