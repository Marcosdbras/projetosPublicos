object frmmensestqecf: Tfrmmensestqecf
  Left = 262
  Top = 321
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Mensagem do Estoque'
  ClientHeight = 135
  ClientWidth = 532
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 20
    Width = 387
    Height = 21
    Caption = 'N'#227'o '#233' Permitida Venda Com Insufici'#234'ncia de Estoque'
    Color = clTeal
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -15
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label2: TLabel
    Left = 8
    Top = 52
    Width = 56
    Height = 21
    Caption = 'Deseja?'
    Color = clTeal
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -15
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object BitBtn1: TBitBtn
    Left = 4
    Top = 90
    Width = 172
    Height = 37
    Caption = 'Excluir Registro(s) Inconsistente(s)'
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 180
    Top = 90
    Width = 172
    Height = 37
    Caption = 'Cancelar Venda'
    TabOrder = 1
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 356
    Top = 90
    Width = 172
    Height = 37
    Caption = 'Voltar'
    TabOrder = 2
    OnClick = BitBtn3Click
  end
end
