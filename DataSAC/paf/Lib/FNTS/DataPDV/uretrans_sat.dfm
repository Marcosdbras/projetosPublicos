object frmretransmitir_sat: Tfrmretransmitir_sat
  Left = 271
  Top = 289
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'RETRANSMISS'#195'O S@T'
  ClientHeight = 290
  ClientWidth = 461
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 11
    Width = 110
    Height = 13
    Caption = 'RETRANSMITIR S@T'
  end
  object Label2: TLabel
    Left = 8
    Top = 46
    Width = 114
    Height = 13
    Caption = 'N'#218'MERO DO PEDIDO:'
  end
  object Label3: TLabel
    Left = 220
    Top = 22
    Width = 99
    Height = 13
    Caption = 'ITENS DA COMPRA'
  end
  object Edit1: TEdit
    Left = 128
    Top = 42
    Width = 81
    Height = 21
    TabOrder = 0
    Text = 'Edit1'
  end
  object btncancelar: TButton
    Left = 8
    Top = 249
    Width = 75
    Height = 25
    Caption = '&Cancelar'
    TabOrder = 1
  end
  object btnlancar: TButton
    Left = 88
    Top = 249
    Width = 75
    Height = 25
    Caption = '&Lan'#231'ar'
    TabOrder = 2
  end
  object dbgpedido: TDBGrid
    Left = 8
    Top = 72
    Width = 201
    Height = 172
    DataSource = dtspedido
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object dbgitens: TDBGrid
    Left = 216
    Top = 40
    Width = 233
    Height = 233
    DataSource = dtsitens
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object dtspedido: TDataSource
    DataSet = sqlPedido
    Left = 160
    Top = 168
  end
  object dtsitens: TDataSource
    DataSet = sqlItens
    Left = 352
    Top = 88
  end
  object sqlItens: TIBCQuery
    Connection = frmModulo.conexao
    Left = 392
    Top = 128
  end
  object sqlPedido: TIBCQuery
    Connection = frmModulo.conexao
    Left = 112
    Top = 112
  end
end
