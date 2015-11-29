object frmcomanda: Tfrmcomanda
  Left = 494
  Top = 302
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Comanda'
  ClientHeight = 150
  ClientWidth = 376
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 14
    Width = 200
    Height = 24
    Caption = 'N'#250'mero da Comanda'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object ediComanda: TEdit
    Left = 8
    Top = 54
    Width = 345
    Height = 32
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object btnLancar: TBitBtn
    Left = 198
    Top = 105
    Width = 75
    Height = 25
    Caption = '&Lancar'
    TabOrder = 1
  end
  object btnCancelar: TBitBtn
    Left = 278
    Top = 105
    Width = 75
    Height = 25
    Caption = '&Cancelar'
    TabOrder = 2
    OnClick = btnCancelarClick
  end
  object SkinData1: TSkinData
    Active = False
    DisableTag = 99
    SkinControls = [xcMainMenu, xcPopupMenu, xcToolbar, xcControlbar, xcCombo, xcCheckBox, xcRadioButton, xcProgress, xcScrollbar, xcEdit, xcButton, xcBitBtn, xcSpeedButton, xcPanel, xcGroupBox, xcStatusBar, xcTab]
    SkinFile = 'C:\DataSAC\paf\SKIN.SKN'
    SkinStore = '(none)'
    SkinFormtype = sfOnlyThisForm
    Left = 128
    Top = 91
    SkinStream = {00000000}
  end
end
