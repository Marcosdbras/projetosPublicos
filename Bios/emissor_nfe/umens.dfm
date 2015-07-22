object frmmens: Tfrmmens
  Left = 212
  Top = 275
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Mensagem'
  ClientHeight = 392
  ClientWidth = 835
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 8
    Top = 8
    Width = 817
    Height = 297
    Cursor = crArrow
    Color = clBtnHighlight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Lines.Strings = (
      'Instru'#231#227'o Inicial'
      ''
      '1) Para Editar, Inserir '
      'ou Excluir um '
      'CLIENTE '
      'clique na guia '
      '* EDI'#199#195'O * '
      ''
      '2) Para ordenar por'
      'diferente tipo de '
      'informa'#231#227'o Clique '
      'no bot'#227'o'
      '* FILTRAR * ')
    ParentFont = False
    TabOrder = 0
    OnEnter = Memo1Enter
  end
  object Button1: TButton
    Left = 360
    Top = 328
    Width = 147
    Height = 49
    Caption = 'FECHAR'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = Button1Click
  end
end
