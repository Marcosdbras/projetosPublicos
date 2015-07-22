object frmpedprazo: Tfrmpedprazo
  Left = 580
  Top = 176
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Outras Informa'#231#245'es sobre pedidos a prazo'
  ClientHeight = 394
  ClientWidth = 429
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
  object Bevel1: TBevel
    Left = 0
    Top = 0
    Width = 429
    Height = 394
    Align = alClient
  end
  object spdcancelar2310: TSpeedButton
    Left = 3
    Top = 4
    Width = 33
    Height = 30
    Hint = 'Cancelar'
    Flat = True
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
    NumGlyphs = 2
    ParentShowHint = False
    ShowHint = True
    OnClick = spdcancelar2310Click
  end
  object dbgvencto: TDBGrid
    Left = 7
    Top = 40
    Width = 410
    Height = 345
    BorderStyle = bsNone
    Color = clWhite
    Ctl3D = True
    DataSource = frmDados.Dts_Vencto
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnColEnter = dbgvenctoColEnter
    Columns = <
      item
        Expanded = False
        FieldName = 'n_tipo_pgto'
        Title.Caption = 'Forma Pgto'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DOC'
        Title.Caption = 'Doc./Banco/Ag./CC/Emitente'
        Width = 129
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRAZO'
        Title.Caption = 'Prazo'
        Width = 33
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DTV'
        Title.Caption = 'Vencimento'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALORREAL'
        Title.Caption = 'Valor'
        Width = 62
        Visible = True
      end>
  end
end
