object frmajustevb: Tfrmajustevb
  Left = 249
  Top = 253
  Width = 416
  Height = 423
  Caption = 'Fun'#231#227'o Ajuste de Venda Balc'#227'o'
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
  object btnalteraritem: TButton
    Left = 8
    Top = 4
    Width = 385
    Height = 73
    Caption = '&Altera Item'
    TabOrder = 0
    OnClick = btnalteraritemClick
  end
  object btncancupom: TButton
    Left = 8
    Top = 232
    Width = 385
    Height = 73
    Caption = '&Cancela Cupom'
    TabOrder = 3
    OnClick = btncancupomClick
  end
  object btnsair: TButton
    Left = 8
    Top = 308
    Width = 385
    Height = 73
    Caption = 'Sai&r'
    TabOrder = 4
    OnClick = btnsairClick
  end
  object btnexcluiritem: TButton
    Left = 8
    Top = 80
    Width = 385
    Height = 73
    Caption = '&Exclui Item'
    TabOrder = 1
    OnClick = btnexcluiritemClick
  end
  object btndevolveritem: TButton
    Left = 8
    Top = 158
    Width = 385
    Height = 73
    Caption = '&Devolver Item'
    TabOrder = 2
    OnClick = btndevolveritemClick
  end
end
