object frmMRcli: TfrmMRcli
  Left = 475
  Top = 130
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 8
    Top = 208
    Width = 361
    Height = 177
  end
  object imgdocin: TImage
    Left = 15
    Top = 344
    Width = 17
    Height = 17
    Picture.Data = {
      07544269746D617076010000424D760100000000000076000000280000002000
      000010000000010004000000000000010000C40E0000C40E0000100000000000
      0000000000000000800000800000008080008000000080008000808000007F7F
      7F00BFBFBF000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
      FF00555555555555555555555555555555555555555555555555555555555555
      5555555555000000055555FFFFFFFFFFFF555555500FFFFF055555FFFFFFFFFF
      FF5555550F0FF00F055555FFFFFFFFFFFF555550000FFFFF055555FFFFFFFFFF
      FF555550FFFF000F055555FFFFFFFFFFFF555550FFFFFFFF055555FFFFFFFFFF
      FF555550F000000F055555FFFFFFFFFFFF555550FFFFFFFF055555FFFFFFFFFF
      FF555550F000000F055555FFFFFFFFFFFF555550FFFFFFFF055555FFFFFFFFFF
      FF555550FFF0000F055555FFFFFFFFFFFF555550FFFFFFFF055555FFFFFFFFFF
      FF55555000000000055555FFFFFFFFFFFF55555555555555555555FFFFFFFFFF
      FF55}
    Transparent = True
  end
  object sPdGravar: TSpeedButton
    Left = 44
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
    Top = 237
    Width = 111
    Height = 15
    Caption = 'Tamanho da folha: A4'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 14
    Top = 253
    Width = 231
    Height = 15
    Caption = 'Tipo de etiqueta:Pimaco 6080 / 6180 / 6280'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 14
    Top = 269
    Width = 320
    Height = 15
    Caption = 'Tipo de Etiqueta C'#243'digo de Barra: Pimaco 6080 / 6180 / 6280'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 14
    Top = 293
    Width = 141
    Height = 15
    Caption = 'Impress'#227'o C'#243'digo de Barra:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 14
    Top = 309
    Width = 347
    Height = 15
    Caption = 
      'Somente dar'#225' para imprimir 20 etiqueta de c'#243'digo de barra por ve' +
      'z,'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 14
    Top = 325
    Width = 329
    Height = 15
    Caption = 'ap'#243's a impress'#227'o das 20 primeiras, inverter a folha colocando-a '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 36
    Top = 341
    Width = 154
    Height = 15
    Caption = 'no outro sentido da impress'#227'o.'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
  end
  object imgdocno: TImage
    Left = 15
    Top = 344
    Width = 17
    Height = 17
    Picture.Data = {
      07544269746D617076010000424D760100000000000076000000280000002000
      000010000000010004000000000000010000120B0000120B0000100000000000
      0000000000000000800000800000008080008000000080008000808000007F7F
      7F00BFBFBF000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
      FF005555555555555555555FFFFFFFFFF5555550000000000555557777777777
      F5555550FFFFFFFF0555557F5FFFF557F5555550F0000FFF0555557F77775557
      F5555550FFFFFFFF0555557F5FFFFFF7F5555550F000000F0555557F77777757
      F5555550FFFFFFFF0555557F5FFFFFF7F5555550F000000F0555557F77777757
      F5555550FFFFFFFF0555557F5FFF5557F5555550F000FFFF0555557F77755FF7
      F5555550FFFFF0000555557F5FF5777755555550F00FF0F05555557F77557F75
      55555550FFFFF0055555557FFFFF775555555550000000555555557777777555
      5555555555555555555555555555555555555555555555555555555555555555
      5555}
    Transparent = True
  end
  object Label8: TLabel
    Left = 14
    Top = 213
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
      'Aniversariantes'
      'Detalhado'
      'Simplificado'
      'Etiqueta')
    TabOrder = 0
    OnClick = rgbtiporelClick
  end
  object tabprodutos: TTable
    Left = 160
    Top = 137
  end
  object tabEstCri: TTable
    AutoRefresh = True
    TableName = 'estcri.dbf'
    Left = 176
    Top = 153
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
    Left = 144
    Top = 121
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 200
    Top = 352
  end
  object SayPrint: TSayPrint
    Porta = Lpt1
    Impressora = imEpsom
    EjectPage = False
    DelayPauseHide = 0
    CommandFile = False
    OutputFile = 'Imprime.txt'
    Left = 312
    Top = 24
  end
end
