object frmdetage: Tfrmdetage
  Left = 7
  Top = 9
  Width = 1009
  Height = 721
  BorderIcons = []
  Caption = 'Detalhe Agenda'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 40
    Top = 183
    Width = 45
    Height = 13
    Caption = 'CLIENTE'
  end
  object Label2: TLabel
    Left = 40
    Top = 258
    Width = 52
    Height = 13
    Caption = 'ASSUNTO'
    FocusControl = DBEdit1
  end
  object spdcancelar: TSpeedButton
    Left = 870
    Top = 8
    Width = 121
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
    OnClick = spdcancelarClick
  end
  object Label3: TLabel
    Left = 40
    Top = 335
    Width = 54
    Height = 13
    Caption = 'DENTISTA'
  end
  object Label4: TLabel
    Left = 608
    Top = 96
    Width = 73
    Height = 13
    Caption = 'OBSERVA'#199#195'O'
  end
  object spdalterarcli: TSpeedButton
    Left = 480
    Top = 205
    Width = 23
    Height = 22
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500000000055
      555557777777775F55550FFFFFFFFF0555557F5555555F7FFF5F0FEEEEEE0000
      05007F555555777775770FFFFFF0BFBFB00E7F5F5557FFF557770F0EEEE000FB
      FB0E7F75FF57775555770FF00F0FBFBFBF0E7F57757FFFF555770FE0B00000FB
      FB0E7F575777775555770FFF0FBFBFBFBF0E7F5575FFFFFFF5770FEEE0000000
      FB0E7F555777777755770FFFFF0B00BFB0007F55557577FFF7770FEEEEE0B000
      05557F555557577775550FFFFFFF0B0555557FF5F5F57575F55500F0F0F0F0B0
      555577F7F7F7F7F75F5550707070700B055557F7F7F7F7757FF5507070707050
      9055575757575757775505050505055505557575757575557555}
    NumGlyphs = 2
    OnClick = spdalterarcliClick
  end
  object spdnovocli: TSpeedButton
    Left = 504
    Top = 205
    Width = 23
    Height = 22
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555000000
      000055555F77777777775555000FFFFFFFF0555F777F5FFFF55755000F0F0000
      FFF05F777F7F77775557000F0F0FFFFFFFF0777F7F7F5FFFFFF70F0F0F0F0000
      00F07F7F7F7F777777570F0F0F0FFFFFFFF07F7F7F7F5FFFFFF70F0F0F0F0000
      00F07F7F7F7F777777570F0F0F0FFFFFFFF07F7F7F7F5FFF55570F0F0F0F000F
      FFF07F7F7F7F77755FF70F0F0F0FFFFF00007F7F7F7F5FF577770F0F0F0F00FF
      0F057F7F7F7F77557F750F0F0F0FFFFF00557F7F7F7FFFFF77550F0F0F000000
      05557F7F7F77777775550F0F0000000555557F7F7777777555550F0000000555
      55557F7777777555555500000005555555557777777555555555}
    NumGlyphs = 2
    OnClick = spdnovocliClick
  end
  object lbldata: TLabel
    Left = 40
    Top = 117
    Width = 54
    Height = 24
    Caption = 'lbldata'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object lblhora: TLabel
    Left = 288
    Top = 109
    Width = 57
    Height = 24
    Caption = 'lblhora'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object DBNavigator1: TDBNavigator
    Left = 391
    Top = 8
    Width = 224
    Height = 49
    DataSource = frmDados.Dts_Agedodia
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    TabOrder = 0
  end
  object DBEdit1: TDBEdit
    Left = 40
    Top = 279
    Width = 441
    Height = 21
    DataField = 'ASSUNTO'
    DataSource = frmDados.Dts_Agedodia
    TabOrder = 4
    OnKeyPress = DBLookupComboBox1KeyPress
  end
  object btnnovo: TBitBtn
    Left = 621
    Top = 8
    Width = 121
    Height = 49
    Caption = '&Novo Compromisso'
    TabOrder = 1
    OnClick = btnnovoClick
  end
  object btnsalvar: TBitBtn
    Left = 745
    Top = 8
    Width = 121
    Height = 49
    Caption = '&Salvar'
    TabOrder = 2
    OnClick = btnsalvarClick
  end
  object DBMemo1: TDBMemo
    Left = 606
    Top = 120
    Width = 385
    Height = 321
    DataField = 'DESCRICAO'
    DataSource = frmDados.Dts_Agedodia
    TabOrder = 6
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 40
    Top = 207
    Width = 441
    Height = 21
    DataField = 'CCLI'
    DataSource = frmDados.Dts_Agedodia
    KeyField = 'CODIGO'
    ListField = 'NOME'
    ListSource = frmDados.Dts_Clientes
    TabOrder = 3
    OnKeyPress = DBLookupComboBox1KeyPress
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 40
    Top = 359
    Width = 441
    Height = 21
    DataField = 'CFUN'
    DataSource = frmDados.Dts_Agedodia
    KeyField = 'CODIGO'
    ListField = 'NOME'
    ListSource = frmDados.Dst_Funcionarios
    TabOrder = 5
    OnKeyPress = DBLookupComboBox1KeyPress
  end
  object btnexcluir: TBitBtn
    Left = 870
    Top = 632
    Width = 121
    Height = 49
    Caption = 'Excluir Compromisso'
    TabOrder = 7
    OnClick = btnexcluirClick
  end
  object BitBtn1: TBitBtn
    Left = 13
    Top = 8
    Width = 121
    Height = 49
    Caption = '&Copiar'
    TabOrder = 8
    OnClick = BitBtn1Click
  end
end
