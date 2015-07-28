object frmpagto: Tfrmpagto
  Left = 62
  Top = 156
  Width = 920
  Height = 465
  BorderIcons = []
  Caption = 'Pagamentos'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 6
    Top = 22
    Width = 63
    Height = 24
    Caption = 'Cliente:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object lblncli: TLabel
    Left = 166
    Top = 22
    Width = 48
    Height = 24
    Caption = 'lblncli'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object spdcancelar: TSpeedButton
    Left = 779
    Top = 5
    Width = 128
    Height = 49
    Caption = '&SAIR'
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
      3333333777333777FF3333993333339993333377FF3333377FF3399993333339
      993337777FF3333377F3393999333333993337F777FF333337FF993399933333
      399377F3777FF333377F993339993333399377F33777FF33377F993333999333
      399377F333777FF3377F993333399933399377F3333777FF377F993333339993
      399377FF3333777FF7733993333339993933373FF3333777F7F3399933333399
      99333773FF3333777733339993333339933333773FFFFFF77333333999999999
      3333333777333777333333333999993333333333377777333333}
    Layout = blGlyphTop
    NumGlyphs = 2
  end
  object lblccli: TLabel
    Left = 105
    Top = 22
    Width = 48
    Height = 24
    Alignment = taRightJustify
    Caption = 'lblncli'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 570
    Top = 22
    Width = 41
    Height = 24
    Caption = 'Total'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object lbltot: TLabel
    Left = 707
    Top = 22
    Width = 38
    Height = 24
    Alignment = taRightJustify
    Caption = 'lbltot'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object pctcontrole: TPageControl
    Left = 0
    Top = 88
    Width = 912
    Height = 343
    ActivePage = tbsavista
    Align = alBottom
    TabOrder = 0
    object tbsavista: TTabSheet
      Caption = #192' VISTA'
      OnShow = tbsavistaShow
      object DBGrid1: TDBGrid
        Left = 0
        Top = 46
        Width = 904
        Height = 269
        Align = alBottom
        DataSource = frmDados.Dts_livrocaixa
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Width = 241
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TOTAL'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDESC'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALDESC'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LIQUIDO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CODIGO'
            Visible = True
          end>
      end
    end
    object tbsaliquidar: TTabSheet
      Caption = #192' LIQUIDAR'
      ImageIndex = 1
      OnShow = tbsaliquidarShow
    end
    object tbsliquidado: TTabSheet
      Caption = 'LIQUIDADO'
      ImageIndex = 2
      OnShow = tbsliquidadoShow
    end
  end
end
