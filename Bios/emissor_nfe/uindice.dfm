object frmindice: Tfrmindice
  Left = 383
  Top = 273
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Configura Indice'
  ClientHeight = 372
  ClientWidth = 468
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 8
    Top = 32
    Width = 449
    Height = 305
  end
  object Label1: TLabel
    Left = 16
    Top = 42
    Width = 104
    Height = 13
    Caption = 'Caminho Arquivo NFE'
  end
  object Label3: TLabel
    Left = 16
    Top = 280
    Width = 88
    Height = 13
    Caption = 'Prox. N'#250'mero NFE'
  end
  object Label4: TLabel
    Left = 16
    Top = 88
    Width = 164
    Height = 13
    Caption = 'Armazenamento de Notas Emitidas'
  end
  object Label2: TLabel
    Left = 120
    Top = 281
    Width = 68
    Height = 13
    Caption = 'Contador NNF'
  end
  object Label5: TLabel
    Left = 16
    Top = 135
    Width = 97
    Height = 13
    Caption = 'Chave Consulta Cep'
  end
  object Label6: TLabel
    Left = 16
    Top = 184
    Width = 63
    Height = 13
    Caption = 'Exportar para'
  end
  object Label7: TLabel
    Left = 16
    Top = 232
    Width = 53
    Height = 13
    Caption = 'Importar de'
  end
  object Label8: TLabel
    Left = 224
    Top = 281
    Width = 120
    Height = 13
    Caption = 'Utilizar c'#243'digo de produto'
  end
  object Label9: TLabel
    Left = 352
    Top = 284
    Width = 80
    Height = 13
    Caption = 'Hor'#225'rio de Ver'#227'o'
  end
  object btnsalvar: TBitBtn
    Left = 302
    Top = 5
    Width = 75
    Height = 25
    Caption = 'SALVAR'
    TabOrder = 8
    OnClick = btnsalvarClick
  end
  object btncancelar: TBitBtn
    Left = 382
    Top = 5
    Width = 75
    Height = 25
    Caption = 'CANCELAR'
    TabOrder = 7
    OnClick = btncancelarClick
  end
  object edicaminhoarqnfe: TEdit
    Left = 16
    Top = 61
    Width = 433
    Height = 21
    TabOrder = 0
    Text = 'edicaminhoarqnfe'
  end
  object edinnf: TEdit
    Left = 16
    Top = 299
    Width = 95
    Height = 21
    TabOrder = 5
    Text = 'edinnf'
    OnKeyPress = edinnfKeyPress
  end
  object edicaminhoarqnfetemp: TEdit
    Left = 16
    Top = 107
    Width = 433
    Height = 21
    TabOrder = 1
    Text = 'edicaminhoarqnfetemp'
  end
  object edicontadornfe: TEdit
    Left = 120
    Top = 300
    Width = 95
    Height = 21
    TabOrder = 6
    Text = 'edicontadornfe'
    OnKeyPress = edicontadornfeKeyPress
  end
  object edichaveconsultacep: TEdit
    Left = 16
    Top = 152
    Width = 433
    Height = 21
    TabOrder = 2
    Text = 'edichaveconsultacep'
  end
  object ediexportarpara: TEdit
    Left = 16
    Top = 203
    Width = 433
    Height = 21
    TabOrder = 3
    Text = 'ediexportarpara'
  end
  object ediimportarpara: TEdit
    Left = 16
    Top = 251
    Width = 433
    Height = 21
    TabOrder = 4
    Text = 'ediimportarpara'
  end
  object cbxconfigcpro: TComboBox
    Left = 219
    Top = 300
    Width = 126
    Height = 21
    ItemHeight = 13
    TabOrder = 9
    Text = 'cbxconfigcpro'
    Items.Strings = (
      'Sistema'
      'Auxiliar'
      'Barras ')
  end
  object cbxhverao: TComboBox
    Left = 349
    Top = 299
    Width = 100
    Height = 21
    ItemHeight = 13
    TabOrder = 10
    Text = 'cbxhverao'
    Items.Strings = (
      'SIM'
      'NAO')
  end
end
