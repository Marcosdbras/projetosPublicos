object frmindice: Tfrmindice
  Left = 91
  Top = 73
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Configura Indice'
  ClientHeight = 534
  ClientWidth = 809
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
    Top = 48
    Width = 457
    Height = 473
  end
  object Label3: TLabel
    Left = 16
    Top = 417
    Width = 88
    Height = 13
    Caption = 'Prox. N'#250'mero NFE'
  end
  object Label4: TLabel
    Left = 16
    Top = 225
    Width = 164
    Height = 13
    Caption = 'Armazenamento de Notas Emitidas'
  end
  object Label2: TLabel
    Left = 120
    Top = 418
    Width = 68
    Height = 13
    Caption = 'Contador NNF'
  end
  object Label5: TLabel
    Left = 16
    Top = 272
    Width = 97
    Height = 13
    Caption = 'Chave Consulta Cep'
  end
  object Label6: TLabel
    Left = 16
    Top = 321
    Width = 63
    Height = 13
    Caption = 'Exportar para'
  end
  object Label7: TLabel
    Left = 16
    Top = 369
    Width = 53
    Height = 13
    Caption = 'Importar de'
  end
  object Label8: TLabel
    Left = 224
    Top = 418
    Width = 120
    Height = 13
    Caption = 'Utilizar c'#243'digo de produto'
  end
  object Label9: TLabel
    Left = 352
    Top = 421
    Width = 80
    Height = 13
    Caption = 'Hor'#225'rio de Ver'#227'o'
  end
  object Label10: TLabel
    Left = 19
    Top = 473
    Width = 51
    Height = 13
    Caption = 'UF Padr'#227'o'
  end
  object Label11: TLabel
    Left = 16
    Top = 56
    Width = 232
    Height = 13
    Caption = 'Tipo de requisi'#231#227'o para o motor de envio da NFE'
  end
  object Label12: TLabel
    Left = 16
    Top = 101
    Width = 22
    Height = 13
    Caption = 'Host'
  end
  object Label13: TLabel
    Left = 184
    Top = 105
    Width = 25
    Height = 13
    Caption = 'Porta'
  end
  object Label1: TLabel
    Left = 16
    Top = 184
    Width = 104
    Height = 13
    Caption = 'Caminho Arquivo NFE'
  end
  object Bevel2: TBevel
    Left = 472
    Top = 48
    Width = 329
    Height = 473
  end
  object Label14: TLabel
    Left = 480
    Top = 56
    Width = 91
    Height = 13
    Caption = 'De olho no imposto'
  end
  object Label15: TLabel
    Left = 480
    Top = 83
    Width = 27
    Height = 13
    Caption = 'Fonte'
  end
  object Label16: TLabel
    Left = 482
    Top = 116
    Width = 58
    Height = 13
    Caption = 'Aliq. Federal'
  end
  object Label17: TLabel
    Left = 482
    Top = 148
    Width = 64
    Height = 13
    Caption = 'Aliq. Estadual'
  end
  object Label18: TLabel
    Left = 482
    Top = 180
    Width = 68
    Height = 13
    Caption = 'Aliq. Municipal'
  end
  object lblregistro: TLabel
    Left = 480
    Top = 256
    Width = 313
    Height = 20
    Caption = 'lblregistro'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnsalvar: TBitBtn
    Left = 646
    Top = 5
    Width = 75
    Height = 25
    Caption = 'SALVAR'
    TabOrder = 12
    OnClick = btnsalvarClick
  end
  object btncancelar: TBitBtn
    Left = 726
    Top = 5
    Width = 75
    Height = 25
    Caption = 'CANCELAR'
    TabOrder = 11
    OnClick = btncancelarClick
  end
  object edicaminhoarqnfe: TEdit
    Left = 16
    Top = 198
    Width = 433
    Height = 21
    TabOrder = 4
    Text = 'edicaminhoarqnfe'
  end
  object edinnf: TEdit
    Left = 16
    Top = 436
    Width = 95
    Height = 21
    TabOrder = 9
    Text = 'edinnf'
    OnKeyPress = edinnfKeyPress
  end
  object edicaminhoarqnfetemp: TEdit
    Left = 16
    Top = 244
    Width = 433
    Height = 21
    TabOrder = 5
    Text = 'edicaminhoarqnfetemp'
  end
  object edicontadornfe: TEdit
    Left = 120
    Top = 437
    Width = 95
    Height = 21
    TabOrder = 10
    Text = 'edicontadornfe'
    OnKeyPress = edicontadornfeKeyPress
  end
  object edichaveconsultacep: TEdit
    Left = 16
    Top = 289
    Width = 433
    Height = 21
    TabOrder = 6
    Text = 'edichaveconsultacep'
  end
  object ediexportarpara: TEdit
    Left = 16
    Top = 340
    Width = 433
    Height = 21
    TabOrder = 7
    Text = 'ediexportarpara'
  end
  object ediimportarpara: TEdit
    Left = 16
    Top = 388
    Width = 433
    Height = 21
    TabOrder = 8
    Text = 'ediimportarpara'
  end
  object cbxconfigcpro: TComboBox
    Left = 219
    Top = 437
    Width = 126
    Height = 21
    ItemHeight = 13
    TabOrder = 13
    Text = 'cbxconfigcpro'
    Items.Strings = (
      'Sistema'
      'Auxiliar'
      'Barras ')
  end
  object cbxhverao: TComboBox
    Left = 349
    Top = 436
    Width = 100
    Height = 21
    ItemHeight = 13
    TabOrder = 14
    Text = 'cbxhverao'
    Items.Strings = (
      'SIM'
      'NAO')
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 18
    Top = 492
    Width = 145
    Height = 21
    DataField = 'ufpadrao'
    DataSource = frmdados.dts_indice
    KeyField = 'codigo'
    ListField = 'sigla'
    ListSource = frmdados.dts_Estados
    NullValueKey = 46
    TabOrder = 15
  end
  object ckbviatexto: TRadioButton
    Left = 16
    Top = 160
    Width = 265
    Height = 17
    Caption = 'Via Texto'
    Checked = True
    TabOrder = 0
    TabStop = True
  end
  object ckbviatcpip: TRadioButton
    Left = 16
    Top = 80
    Width = 113
    Height = 17
    Caption = 'Via TCP/IP'
    TabOrder = 3
  end
  object ediacbrmonitor_hosttcpip: TEdit
    Left = 16
    Top = 121
    Width = 161
    Height = 21
    TabOrder = 1
    Text = 'ediacbrmonitor_hosttcpip'
    OnKeyPress = ediacbrmonitor_hosttcpipKeyPress
  end
  object ediacbrmonitor_porttcpip: TEdit
    Left = 184
    Top = 121
    Width = 129
    Height = 21
    TabOrder = 2
    Text = 'ediacbrmonitor_porttcpip'
    OnKeyPress = ediacbrmonitor_porttcpipKeyPress
  end
  object cbxfonte_transp_imposto: TComboBox
    Left = 560
    Top = 80
    Width = 89
    Height = 21
    ItemHeight = 13
    TabOrder = 16
    Text = 'cbxfonte_transp_imposto'
    OnChange = cbxfonte_transp_impostoChange
    Items.Strings = (
      'IBPT'
      'SEBRAE')
  end
  object btnaplicaliq: TBitBtn
    Left = 480
    Top = 208
    Width = 313
    Height = 41
    Caption = 'Aplicar aliquotas acima no cadastro de produtos'
    TabOrder = 20
    OnClick = btnaplicaliqClick
  end
  object edtaliqfederal: TEdit
    Left = 560
    Top = 112
    Width = 89
    Height = 21
    TabOrder = 17
    Text = 'edtaliqfederal'
    OnExit = edtaliqfederalExit
  end
  object edtaliqestadual: TEdit
    Left = 560
    Top = 144
    Width = 89
    Height = 21
    TabOrder = 18
    Text = 'edtaliqestadual'
    OnExit = edtaliqestadualExit
  end
  object edtaliqmunicipal: TEdit
    Left = 560
    Top = 176
    Width = 89
    Height = 21
    TabOrder = 19
    Text = 'edtaliqmunicipal'
    OnExit = edtaliqmunicipalExit
  end
end
