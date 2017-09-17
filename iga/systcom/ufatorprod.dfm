object frmfatorprod: Tfrmfatorprod
  Left = 279
  Top = 96
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Fator M'#250'ltiplica'#231#227'o'
  ClientHeight = 584
  ClientWidth = 547
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 516
    Width = 64
    Height = 13
    Caption = 'Pre'#231'o Base ='
  end
  object Label2: TLabel
    Left = 164
    Top = 516
    Width = 7
    Height = 13
    Caption = 'X'
  end
  object Label3: TLabel
    Left = 16
    Top = 8
    Width = 135
    Height = 13
    Caption = 'F'#243'rmula geral para produ'#231#227'o'
  end
  object Label4: TLabel
    Left = 432
    Top = 173
    Width = 24
    Height = 13
    Caption = 'Total'
  end
  object lbltotalfg: TLabel
    Left = 506
    Top = 173
    Width = 21
    Height = 13
    Alignment = taRightJustify
    Caption = '0,00'
  end
  object Label5: TLabel
    Left = 16
    Top = 179
    Width = 94
    Height = 13
    Caption = 'Tipo de Embalagem'
  end
  object Label6: TLabel
    Left = 18
    Top = 347
    Width = 61
    Height = 13
    Caption = 'Composi'#231#227'o:'
  end
  object lblcomposicaoemb: TLabel
    Left = 90
    Top = 348
    Width = 87
    Height = 13
    Caption = 'lblcomposicaoemb'
  end
  object Label7: TLabel
    Left = 431
    Top = 493
    Width = 24
    Height = 13
    Caption = 'Total'
  end
  object lbltotalemb: TLabel
    Left = 505
    Top = 493
    Width = 21
    Height = 13
    Alignment = taRightJustify
    Caption = '0,00'
  end
  object Label8: TLabel
    Left = 360
    Top = 319
    Width = 94
    Height = 13
    Caption = 'Custo Mat'#233'ria Prima'
  end
  object lblcustomatprima: TLabel
    Left = 506
    Top = 319
    Width = 21
    Height = 13
    Alignment = taRightJustify
    Caption = '0,00'
  end
  object Label9: TLabel
    Left = 163
    Top = 28
    Width = 174
    Height = 13
    Caption = 'Pressione <ENTER> para limpar filtro'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object btnok: TButton
    Left = 308
    Top = 544
    Width = 115
    Height = 25
    Caption = '&Atualizar Pr. Base'
    TabOrder = 3
    OnClick = btnokClick
  end
  object btncancelar: TButton
    Left = 428
    Top = 544
    Width = 99
    Height = 25
    Caption = '&Cancelar'
    TabOrder = 4
    OnClick = btncancelarClick
  end
  object DBEdit1: TDBEdit
    Left = 88
    Top = 513
    Width = 65
    Height = 21
    DataField = 'FATOR1'
    DataSource = frmDados.Dts_vProdutos
    TabOrder = 1
    OnKeyPress = DBEdit1KeyPress
  end
  object DBEdit2: TDBEdit
    Left = 181
    Top = 513
    Width = 73
    Height = 21
    DataField = 'FATOR2'
    DataSource = frmDados.Dts_vProdutos
    TabOrder = 2
    OnKeyPress = DBEdit2KeyPress
  end
  object dbgtipo_embalagem: TDBGrid
    Left = 16
    Top = 200
    Width = 513
    Height = 113
    DataSource = frmDados.dts_tipo_embalagem
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnEnter = dbgtipo_embalagemEnter
    OnKeyPress = dbgtipo_embalagemKeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REFERENCIA'
        Title.Caption = '% Produ'#231#227'o'
        Width = 86
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESPESAS'
        Title.Caption = 'Despesas'
        Width = 85
        Visible = True
      end>
  end
  object dbgmatprima: TDBGrid
    Left = 16
    Top = 48
    Width = 513
    Height = 121
    DataSource = frmDados.dts_composicao_prod
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnEnter = dbgmatprimaEnter
    OnKeyPress = dbgmatprimaKeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
        Width = 211
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTDE'
        Title.Caption = 'Qtde'
        Width = 95
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLR_UNIT'
        Title.Caption = 'Valor'
        Width = 81
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'subtotal'
        ReadOnly = True
        Title.Caption = 'Sub-total'
        Width = 85
        Visible = True
      end>
  end
  object dbgcomposicaoemb: TDBGrid
    Left = 16
    Top = 368
    Width = 513
    Height = 120
    DataSource = frmDados.dts_comp_embalagem
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnEnter = dbgcomposicaoembEnter
    OnKeyPress = dbgcomposicaoembKeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
        Width = 353
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLR_UNITARIO'
        Title.Caption = 'Valor'
        Visible = True
      end>
  end
  object edimateria: TEdit
    Left = 160
    Top = 6
    Width = 370
    Height = 21
    TabOrder = 0
    Text = 'edimateria'
    OnKeyPress = edimateriaKeyPress
  end
end
