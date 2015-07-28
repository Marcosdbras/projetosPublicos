object FrmPesqAlu: TFrmPesqAlu
  Left = 17
  Top = 153
  Width = 696
  Height = 480
  Caption = 'FrmPesqAlu'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 41
    Width = 688
    Height = 370
    Align = alClient
    DataSource = FrmDados.DTS_CadAluno
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
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
        Width = 94
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Width = 245
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RGM'
        Width = 148
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RA'
        Width = 162
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 688
    Height = 41
    Align = alTop
    TabOrder = 1
    object BtnConfirmar: TBitBtn
      Left = 104
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Confirmar'
      TabOrder = 0
      OnClick = BtnConfirmarClick
    end
    object BtnCancelar: TBitBtn
      Left = 192
      Top = 8
      Width = 75
      Height = 25
      Caption = 'C&ancelar'
      TabOrder = 1
      OnClick = BtnCancelarClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 411
    Width = 688
    Height = 41
    Align = alBottom
    TabOrder = 2
  end
end
