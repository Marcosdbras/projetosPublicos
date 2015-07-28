object frmgeraqtdeetiq: Tfrmgeraqtdeetiq
  Left = 264
  Top = 297
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Gera Quantidade Etiqueta'
  ClientHeight = 208
  ClientWidth = 537
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
  object Label1: TLabel
    Left = 16
    Top = 51
    Width = 94
    Height = 24
    Caption = 'Descri'#231#227'o: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object lblproduto: TLabel
    Left = 120
    Top = 51
    Width = 84
    Height = 24
    Caption = 'lblproduto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 16
    Top = 114
    Width = 55
    Height = 13
    Caption = 'Quantidade'
  end
  object btnsalvar: TBitBtn
    Left = 376
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Gravar'
    TabOrder = 0
    OnClick = btnsalvarClick
  end
  object btncancelar: TBitBtn
    Left = 456
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 1
    OnClick = btncancelarClick
  end
  object ediqtde: TEdit
    Left = 104
    Top = 111
    Width = 89
    Height = 21
    TabOrder = 2
    Text = 'ediqtde'
    OnKeyPress = ediqtdeKeyPress
  end
end
