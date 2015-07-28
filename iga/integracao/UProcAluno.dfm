object FrmProcAluno: TFrmProcAluno
  Left = 148
  Top = 135
  Width = 696
  Height = 480
  BorderIcons = []
  Caption = 'Procura do aluno'
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
    Top = 0
    Width = 688
    Height = 376
    Align = alClient
    DataSource = FrmDados.DTS_CadAluno
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGO'
        Width = 61
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Width = 285
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RA'
        Width = 145
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RGM'
        Width = 160
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 376
    Width = 688
    Height = 76
    Align = alBottom
    TabOrder = 1
    object BtnConfirmar: TBitBtn
      Left = 384
      Top = 24
      Width = 75
      Height = 25
      Caption = '&Confirmar'
      TabOrder = 0
      OnClick = BtnConfirmarClick
    end
    object BtnCancelar: TBitBtn
      Left = 568
      Top = 24
      Width = 75
      Height = 25
      Caption = 'C&ancelar'
      TabOrder = 1
      OnClick = BtnCancelarClick
    end
    object BtnFiltrar: TBitBtn
      Left = 16
      Top = 24
      Width = 75
      Height = 25
      Caption = '&Filtrar'
      TabOrder = 2
      OnClick = BtnFiltrarClick
    end
    object BtnLimpFiltro: TBitBtn
      Left = 200
      Top = 24
      Width = 75
      Height = 25
      Caption = '&Limpa filtro'
      TabOrder = 3
      OnClick = BtnLimpFiltroClick
    end
  end
end
