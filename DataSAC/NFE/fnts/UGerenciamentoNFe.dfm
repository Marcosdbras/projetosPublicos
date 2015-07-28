object FrmGerenciamentoNFe: TFrmGerenciamentoNFe
  Left = 153
  Top = 144
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Gerenciamento NFe'
  ClientHeight = 479
  ClientWidth = 796
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 460
    Width = 796
    Height = 19
    Panels = <>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 796
    Height = 73
    Align = alTop
    BevelInner = bvLowered
    BevelOuter = bvNone
    BevelWidth = 2
    Color = 16710131
    TabOrder = 1
    object GroupBox1: TGroupBox
      Left = 8
      Top = 8
      Width = 265
      Height = 57
      Caption = 'Per'#237'odo'
      TabOrder = 0
      object Label1: TLabel
        Left = 123
        Top = 27
        Width = 7
        Height = 13
        Caption = 'A'
      end
      object EdtDataIni: TDateTimePicker
        Left = 8
        Top = 21
        Width = 97
        Height = 21
        Date = 40357.904339594900000000
        Time = 40357.904339594900000000
        TabOrder = 0
      end
      object EdtDataFin: TDateTimePicker
        Left = 152
        Top = 21
        Width = 97
        Height = 21
        Date = 40357.904339594900000000
        Time = 40357.904339594900000000
        TabOrder = 1
      end
    end
    object GroupBox2: TGroupBox
      Left = 288
      Top = 8
      Width = 305
      Height = 57
      TabOrder = 1
      object Combo: TComboBox
        Left = 8
        Top = 21
        Width = 289
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 0
        Items.Strings = (
          'Todas'
          'Canceladas'
          'N'#227'o Enviadas')
      end
    end
    object BtnOk: TButton
      Left = 616
      Top = 24
      Width = 75
      Height = 25
      Caption = 'OK'
      TabOrder = 2
      OnClick = BtnOkClick
    end
    object BtnSair: TButton
      Left = 704
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Sair'
      TabOrder = 3
      OnClick = BtnSairClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 73
    Width = 796
    Height = 346
    Align = alClient
    BevelInner = bvLowered
    BevelOuter = bvNone
    BevelWidth = 2
    Color = 16710131
    TabOrder = 2
    object DBGrid1: TDBGrid
      Left = 2
      Top = 2
      Width = 792
      Height = 342
      Align = alClient
      Color = clSilver
      DataSource = DSConsNFe
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawColumnCell = DBGrid1DrawColumnCell
      Columns = <
        item
          Color = 16776176
          Expanded = False
          FieldName = 'NUMERO_NOTA_NF'
          Title.Alignment = taCenter
          Title.Caption = 'N'#218'MERO'
          Visible = True
        end
        item
          Color = 16776176
          Expanded = False
          FieldName = 'DATA_EMISSAO_NF'
          Title.Alignment = taCenter
          Title.Caption = 'EMISS'#195'O'
          Visible = True
        end
        item
          Color = 16776176
          Expanded = False
          FieldName = 'VALOR_TOTAL_NF'
          Title.Alignment = taCenter
          Title.Caption = 'VALOR'
          Width = 72
          Visible = True
        end
        item
          Color = 16776176
          Expanded = False
          FieldName = 'CALC_DESTINATARIO'
          Title.Alignment = taCenter
          Title.Caption = 'DESTINATARIO/REMETENTE'
          Width = 263
          Visible = True
        end
        item
          Color = 16776176
          Expanded = False
          FieldName = 'CALC_TRANSMITIDO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'STATUS TRANSM.'
          Width = 105
          Visible = True
        end
        item
          Color = 16776176
          Expanded = False
          FieldName = 'CALC_EMAIL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'STATUS EMAIL'
          Width = 99
          Visible = True
        end
        item
          Color = 16776176
          Expanded = False
          FieldName = 'CALC_CANCELADO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'STATUS CANCEL.'
          Width = 105
          Visible = True
        end
        item
          Color = 16776176
          Expanded = False
          FieldName = 'CALC_INUTILIZADO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'STATUS INUTIL.'
          Width = 96
          Visible = True
        end>
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 419
    Width = 796
    Height = 41
    Align = alBottom
    BevelInner = bvLowered
    BevelOuter = bvNone
    BevelWidth = 2
    Color = 16710131
    TabOrder = 3
    object BtnConsultarServico: TButton
      Left = 13
      Top = 8
      Width = 97
      Height = 25
      Caption = 'Consultar Servi'#231'o'
      TabOrder = 0
      OnClick = BtnConsultarServicoClick
    end
    object BtnEnviar: TButton
      Left = 237
      Top = 8
      Width = 97
      Height = 25
      Caption = 'Enviar'
      TabOrder = 2
      OnClick = BtnEnviarClick
    end
    object BtnInutilizar: TButton
      Left = 349
      Top = 8
      Width = 97
      Height = 25
      Caption = 'Inutilizar'
      TabOrder = 3
      OnClick = BtnInutilizarClick
    end
    object BtnCancelamento: TButton
      Left = 461
      Top = 8
      Width = 97
      Height = 25
      Caption = 'Cancelamento'
      TabOrder = 4
      OnClick = BtnCancelamentoClick
    end
    object BtnEnviarEmail: TButton
      Left = 573
      Top = 8
      Width = 97
      Height = 25
      Caption = 'Enviar Email'
      TabOrder = 5
      OnClick = BtnEnviarEmailClick
    end
    object BtnImprimir: TButton
      Left = 685
      Top = 8
      Width = 97
      Height = 25
      Caption = 'Imprimir'
      TabOrder = 6
      OnClick = BtnImprimirClick
    end
    object BtnConsultaNFe: TButton
      Left = 125
      Top = 8
      Width = 97
      Height = 25
      Caption = 'Consultar NFe'
      TabOrder = 1
      OnClick = BtnConsultaNFeClick
    end
  end
  object QConsNfe: TIBQuery
    Database = DM.IBDatabase
    Transaction = IBTRNfe
    OnCalcFields = QConsNfeCalcFields
    SQL.Strings = (
      'SELECT N.COD_NF, N.DATA_EMISSAO_NF, N.NUMERO_NOTA_NF,'
      
        'N.VALOR_TOTAL_NF, N.STATUS_TRANSMITIDA, N.COD_CLI, N.COD_FOR, N.' +
        'STATUS_CANCELADO, N.STATUS_INUTILIZADO, N.STATUS_EMAIL, N.CHAVE_' +
        'ACESSO_NFE, N.PROTOCOLO_NFE,'
      'C.NOME_CLI, F.RAZAO_FOR'
      'FROM NOTA_FISCAL N'
      'LEFT OUTER JOIN CLIENTE C'
      'ON (N.COD_CLI = C.COD_CLI)'
      'LEFT OUTER JOIN FORNECEDOR F'
      'ON (N.COD_FOR = F.COD_FOR)')
    Left = 232
    Top = 233
    object QConsNfeCOD_NF: TIntegerField
      FieldName = 'COD_NF'
      Origin = 'NOTA_FISCAL.COD_NF'
      Required = True
    end
    object QConsNfeDATA_EMISSAO_NF: TDateField
      FieldName = 'DATA_EMISSAO_NF'
      Origin = 'NOTA_FISCAL.DATA_EMISSAO_NF'
      Required = True
    end
    object QConsNfeVALOR_TOTAL_NF: TIBBCDField
      FieldName = 'VALOR_TOTAL_NF'
      Origin = 'NOTA_FISCAL.VALOR_TOTAL_NF'
      DisplayFormat = ',#0.00'
      Precision = 18
      Size = 2
    end
    object QConsNfeNOME_CLI: TIBStringField
      FieldName = 'NOME_CLI'
      Origin = 'CLIENTE.NOME_CLI'
      Size = 60
    end
    object QConsNfeRAZAO_FOR: TIBStringField
      FieldName = 'RAZAO_FOR'
      Origin = 'FORNECEDOR.RAZAO_FOR'
      Size = 60
    end
    object QConsNfeNUMERO_NOTA_NF: TIntegerField
      FieldName = 'NUMERO_NOTA_NF'
      Origin = 'NOTA_FISCAL.NUMERO_NOTA_NF'
      Required = True
    end
    object QConsNfeSTATUS_TRANSMITIDA: TIBStringField
      FieldName = 'STATUS_TRANSMITIDA'
      Origin = 'NOTA_FISCAL.STATUS_TRANSMITIDA'
      FixedChar = True
      Size = 1
    end
    object QConsNfeSTATUS_CANCELADO: TIBStringField
      FieldName = 'STATUS_CANCELADO'
      Origin = 'NOTA_FISCAL.STATUS_CANCELADO'
      FixedChar = True
      Size = 1
    end
    object QConsNfeSTATUS_INUTILIZADO: TIBStringField
      FieldName = 'STATUS_INUTILIZADO'
      Origin = 'NOTA_FISCAL.STATUS_INUTILIZADO'
      FixedChar = True
      Size = 1
    end
    object QConsNfeSTATUS_EMAIL: TIBStringField
      FieldName = 'STATUS_EMAIL'
      Origin = 'NOTA_FISCAL.STATUS_EMAIL'
      FixedChar = True
      Size = 1
    end
    object QConsNfeCALC_TRANSMITIDO: TStringField
      FieldKind = fkCalculated
      FieldName = 'CALC_TRANSMITIDO'
      Calculated = True
    end
    object QConsNfeCALC_CANCELADO: TStringField
      FieldKind = fkCalculated
      FieldName = 'CALC_CANCELADO'
      Calculated = True
    end
    object QConsNfeCALC_INUTILIZADO: TStringField
      FieldKind = fkCalculated
      FieldName = 'CALC_INUTILIZADO'
      Size = 25
      Calculated = True
    end
    object QConsNfeCALC_EMAIL: TStringField
      FieldKind = fkCalculated
      FieldName = 'CALC_EMAIL'
      Calculated = True
    end
    object QConsNfeCALC_DESTINATARIO: TStringField
      FieldKind = fkCalculated
      FieldName = 'CALC_DESTINATARIO'
      Size = 80
      Calculated = True
    end
    object QConsNfeCOD_CLI: TIntegerField
      FieldName = 'COD_CLI'
      Origin = 'NOTA_FISCAL.COD_CLI'
    end
    object QConsNfeCOD_FOR: TIntegerField
      FieldName = 'COD_FOR'
      Origin = 'NOTA_FISCAL.COD_FOR'
    end
    object QConsNfeCHAVE_ACESSO_NFE: TIBStringField
      FieldName = 'CHAVE_ACESSO_NFE'
      Origin = 'NOTA_FISCAL.CHAVE_ACESSO_NFE'
      Size = 44
    end
    object QConsNfePROTOCOLO_NFE: TIBStringField
      FieldName = 'PROTOCOLO_NFE'
      Origin = 'NOTA_FISCAL.PROTOCOLO_NFE'
      Size = 50
    end
  end
  object DSConsNFe: TDataSource
    AutoEdit = False
    DataSet = QConsNfe
    Left = 232
    Top = 289
  end
  object IBTRNfe: TIBTransaction
    DefaultDatabase = DM.IBDatabase
    Left = 232
    Top = 345
  end
end
