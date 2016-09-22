object frmretransmitir_sat: Tfrmretransmitir_sat
  Left = 219
  Top = 227
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'RETRANSMISS'#195'O S@T'
  ClientHeight = 370
  ClientWidth = 457
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
  object Panel1: TPanel
    Left = 0
    Top = 338
    Width = 457
    Height = 32
    Align = alBottom
    TabOrder = 0
    object btncancelar: TButton
      Left = 295
      Top = 4
      Width = 75
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 0
    end
    object btnlancar: TButton
      Left = 374
      Top = 4
      Width = 75
      Height = 25
      Caption = '&Lan'#231'ar'
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 457
    Height = 41
    Align = alTop
    Caption = 'CUPONS - RETRANSMITIR S@T'
    TabOrder = 1
  end
  object Panel3: TPanel
    Left = 0
    Top = 41
    Width = 457
    Height = 297
    Align = alClient
    TabOrder = 2
    object Label2: TLabel
      Left = 8
      Top = 8
      Width = 44
      Height = 13
      Caption = 'PEDIDO:'
    end
    object Label3: TLabel
      Left = 227
      Top = 5
      Width = 99
      Height = 13
      Caption = 'ITENS DA COMPRA'
    end
    object Label4: TLabel
      Left = 226
      Top = 160
      Width = 127
      Height = 13
      Caption = 'FORMA DE PAGAMENTO'
    end
    object Label1: TLabel
      Left = 8
      Top = 31
      Width = 72
      Height = 13
      Caption = 'DATA INICIAL:'
    end
    object Label5: TLabel
      Left = 8
      Top = 56
      Width = 65
      Height = 13
      Caption = 'DATA FINAL:'
    end
    object dbgpedido: TDBGrid
      Left = 8
      Top = 80
      Width = 209
      Height = 177
      DataSource = dtsCupom
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
    object dbgitens: TDBGrid
      Left = 224
      Top = 24
      Width = 225
      Height = 131
      DataSource = dtsitens
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
    object DBGrid1: TDBGrid
      Left = 224
      Top = 176
      Width = 225
      Height = 81
      DataSource = dtsforma
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
    object NxDatePicker1: TNxDatePicker
      Left = 88
      Top = 28
      Width = 81
      Height = 21
      TabOrder = 3
      Text = '21/09/2016'
      HideFocus = False
      Date = 42634.000000000000000000
      NoneCaption = 'None'
      TodayCaption = 'Today'
    end
    object NxDatePicker2: TNxDatePicker
      Left = 88
      Top = 53
      Width = 81
      Height = 21
      TabOrder = 4
      Text = '21/09/2016'
      HideFocus = False
      Date = 42634.000000000000000000
      NoneCaption = 'None'
      TodayCaption = 'Today'
    end
    object NxNumberEdit1: TNxNumberEdit
      Left = 88
      Top = 4
      Width = 78
      Height = 21
      TabOrder = 5
      Text = '0'
    end
    object NxButton1: TNxButton
      Left = 171
      Top = 30
      Width = 48
      Height = 42
      Caption = 'FILTRAR'
      TabOrder = 6
    end
  end
  object dtsCupom: TDataSource
    DataSet = sqlCupom
    Left = 152
    Top = 210
  end
  object dtsitens: TDataSource
    DataSet = sqlItens
    Left = 320
    Top = 90
  end
  object sqlItens: TIBCQuery
    Connection = frmModulo.conexao
    Left = 360
    Top = 114
  end
  object sqlCupom: TIBCQuery
    Connection = frmModulo.conexao
    AfterScroll = sqlCupomAfterScroll
    Left = 112
    Top = 178
  end
  object dtsforma: TDataSource
    DataSet = sqlforma
    Left = 328
    Top = 233
  end
  object sqlforma: TIBCQuery
    Connection = frmModulo.conexao
    Left = 368
    Top = 250
  end
end
