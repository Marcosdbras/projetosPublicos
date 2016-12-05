object frmfimpf: Tfrmfimpf
  Left = 209
  Top = 159
  Width = 808
  Height = 501
  BorderIcons = []
  Caption = 'Fun'#231#227'o Impressora Fiscal'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object btnleiturax: TButton
    Left = 12
    Top = 8
    Width = 385
    Height = 73
    Caption = '&Leitura X'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = btnleituraxClick
  end
  object btnreducaoz: TButton
    Left = 12
    Top = 160
    Width = 385
    Height = 73
    Caption = '&Redu'#231#227'o Z'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = btnreducaozClick
  end
  object btnsair: TButton
    Left = 405
    Top = 389
    Width = 385
    Height = 73
    Caption = 'Sai&r'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = btnsairClick
  end
  object btnfechadia: TButton
    Left = 12
    Top = 84
    Width = 385
    Height = 73
    Caption = '&Fechamento do Caixa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = btnfechadiaClick
  end
  object btnapuracaocaixa: TButton
    Left = 404
    Top = 8
    Width = 385
    Height = 73
    Caption = 'Caixa Sint'#233'tico &Geral'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = btnapuracaocaixaClick
  end
  object btntroco: TButton
    Left = 404
    Top = 84
    Width = 385
    Height = 73
    Caption = '&Suprimento de Caixa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = btntrocoClick
  end
  object btnsangria: TButton
    Left = 404
    Top = 160
    Width = 385
    Height = 73
    Caption = '&Sangria'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = btnsangriaClick
  end
  object btnapcaixaind: TButton
    Left = 13
    Top = 236
    Width = 385
    Height = 73
    Caption = 'Apura'#231#227'o de Caixa &Individual'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnClick = btnapcaixaindClick
  end
  object btnabcaixaind: TButton
    Left = 405
    Top = 236
    Width = 385
    Height = 73
    Caption = 'Abertura do Caixa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    OnClick = btnabcaixaindClick
  end
  object btnfcaixaind: TButton
    Left = 817
    Top = 268
    Width = 385
    Height = 73
    Caption = 'Fechamento do Caixa Individual'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    Visible = False
    OnClick = btnfcaixaindClick
  end
  object btnconfcaixaind: TButton
    Left = 13
    Top = 312
    Width = 385
    Height = 73
    Caption = 'Configura Caixa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
    OnClick = btnconfcaixaindClick
  end
  object Button1: TButton
    Left = 818
    Top = 192
    Width = 385
    Height = 73
    Caption = 'Detalhe Caixa Individual'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
    Visible = False
    OnClick = Button1Click
  end
  object btnpedidosterminal: TButton
    Left = 405
    Top = 312
    Width = 385
    Height = 73
    Caption = 'Pedidos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 12
    OnClick = btnpedidosterminalClick
  end
end
