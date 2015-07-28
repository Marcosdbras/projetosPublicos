object frmMRVD: TfrmMRVD
  Left = 416
  Top = 145
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Relat'#243'rios'
  ClientHeight = 424
  ClientWidth = 373
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 8
    Top = 248
    Width = 361
    Height = 137
  end
  object sPdGravar: TSpeedButton
    Left = 45
    Top = 5
    Width = 105
    Height = 30
    Hint = 'Imprimir'
    Caption = 'Imprimir'
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
      555555555555555555555555555555555555555555FF55555555555559055555
      55555555577FF5555555555599905555555555557777F5555555555599905555
      555555557777FF5555555559999905555555555777777F555555559999990555
      5555557777777FF5555557990599905555555777757777F55555790555599055
      55557775555777FF5555555555599905555555555557777F5555555555559905
      555555555555777FF5555555555559905555555555555777FF55555555555579
      05555555555555777FF5555555555557905555555555555777FF555555555555
      5990555555555555577755555555555555555555555555555555}
    NumGlyphs = 2
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    OnClick = sPdGravarClick
  end
  object spdSair: TSpeedButton
    Left = 7
    Top = 5
    Width = 33
    Height = 30
    Hint = 'Sair'
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -15
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
      3333333777333777FF3333993333339993333377FF3333377FF3399993333339
      993337777FF3333377F3393999333333993337F777FF333337FF993399933333
      399377F3777FF333377F993339993333399377F33777FF33377F993333999333
      399377F333777FF3377F993333399933399377F3333777FF377F993333339993
      399377FF3333777FF7733993333339993933373FF3333777F7F3399933333399
      99333773FF3333777733339993333339933333773FFFFFF77333333999999999
      3333333777333777333333333999993333333333377777333333}
    NumGlyphs = 2
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    OnClick = spdSairClick
  end
  object Label1: TLabel
    Left = 14
    Top = 285
    Width = 124
    Height = 15
    Caption = 'Tamanho da folha: Carta'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 14
    Top = 261
    Width = 69
    Height = 21
    Caption = 'Instru'#231#227'o'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object rgbtiporel: TRadioGroup
    Left = 8
    Top = 46
    Width = 361
    Height = 153
    Caption = 'Relat'#243'rios'
    Items.Strings = (
      'Relat'#243'rio Geral'
      'Demonstrativo Vendas'
      'Detalhado')
    TabOrder = 0
  end
  object pnldata: TPanel
    Left = 8
    Top = 200
    Width = 361
    Height = 33
    BevelOuter = bvNone
    TabOrder = 1
  end
  object tabprodutos: TTable
    Left = 232
    Top = 25
  end
  object tabEstCri: TTable
    AutoRefresh = True
    TableName = 'estcri.dbf'
    Left = 248
    Top = 41
    object tabEstCricodigo: TFloatField
      FieldName = 'codigo'
    end
    object tabEstCrinome: TStringField
      FieldName = 'nome'
      Size = 50
    end
    object tabEstCriQUA: TFloatField
      FieldName = 'QUA'
      DisplayFormat = '###,###,##0.00'
    end
    object tabEstCriUNI: TStringField
      FieldName = 'UNI'
      Size = 3
    end
    object tabEstCriCBAR: TStringField
      FieldName = 'CBAR'
      Size = 13
    end
    object tabEstCriCAUX: TStringField
      FieldName = 'CAUX'
    end
    object tabEstCriCFAB: TStringField
      FieldName = 'CFAB'
      Size = 15
    end
    object tabEstCriESTMIN: TFloatField
      FieldName = 'ESTMIN'
      DisplayFormat = '###,###,##0.00'
    end
    object tabEstCriESTMAX: TFloatField
      FieldName = 'ESTMAX'
      DisplayFormat = '###,###,##0.00'
    end
    object tabEstCriRESERVA: TFloatField
      FieldName = 'RESERVA'
      DisplayFormat = '###,###,##0.00'
    end
    object tabEstCriSALDOEST: TFloatField
      FieldName = 'SALDOEST'
      DisplayFormat = '###,###,##0.00'
    end
    object tabEstCriCOMPRA: TFloatField
      FieldName = 'COMPRA'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object tabmarcas: TTable
    Left = 216
    Top = 9
  end
end
