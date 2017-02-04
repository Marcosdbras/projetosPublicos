object frmConsulta_Estoque: TfrmConsulta_Estoque
  Left = 531
  Top = 342
  BorderStyle = bsDialog
  Caption = 'Estoque'
  ClientHeight = 96
  ClientWidth = 313
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -37
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  OldCreateOrder = False
  PopupMenu = MENU_FISCAL
  Position = poMainFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 45
  object StatusBar1: TStatusBar
    Left = 0
    Top = 77
    Width = 313
    Height = 19
    Panels = <
      item
        Text = 'Atualizado em 01/01/2009 '#224's 13:00 hs'
        Width = 50
      end>
  end
  object lb_estoque: TPanel
    Left = 0
    Top = 0
    Width = 313
    Height = 77
    Align = alClient
    BevelOuter = bvNone
    Caption = '1,00 kg'
    TabOrder = 1
  end
  object MENU_FISCAL: TAdvPopupMenu
    MenuStyler = frmModulo.estilo_menu
    Version = '2.5.0.1'
    Left = 40
    Top = 160
    object Fechar1: TMenuItem
      Caption = 'Fechar'
      ShortCut = 27
      OnClick = Fechar1Click
    end
  end
end
