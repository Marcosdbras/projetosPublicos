object FrmEscSerieEProj: TFrmEscSerieEProj
  Left = 192
  Top = 108
  Width = 696
  Height = 480
  Caption = 'Escolha da serie e projeto para rela'#231#227'o'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 41
    Width = 688
    Height = 183
    Align = alClient
    DataSource = FrmDados.DTS_Serie
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGO'
        Width = 93
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SERIE'
        Width = 99
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TURMA'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'GRAU'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PERIODO'
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 0
    Top = 224
    Width = 688
    Height = 228
    Align = alBottom
    DataSource = FrmDados.DTS_Projeto
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Width = 282
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'INICIO'
        Width = 91
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TERMINO'
        Width = 94
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR'
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 688
    Height = 41
    Align = alTop
    TabOrder = 2
    object SpeedButton1: TSpeedButton
      Left = 464
      Top = 8
      Width = 73
      Height = 25
      Caption = '&OK'
      OnClick = SpeedButton1Click
    end
  end
end
