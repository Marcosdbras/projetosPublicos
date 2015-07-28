object frmGeracaoSPED: TfrmGeracaoSPED
  Left = 349
  Top = 332
  BorderStyle = bsSingle
  Caption = 'frmGeracaoSPED'
  ClientHeight = 167
  ClientWidth = 574
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
    Top = 25
    Width = 59
    Height = 13
    Caption = 'Finalidade'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 253
    Top = 25
    Width = 88
    Height = 13
    Caption = 'Per'#237'odo Inicial:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 441
    Top = 26
    Width = 32
    Height = 13
    Caption = 'Final:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object cbFinalidade: TComboBox
    Left = 71
    Top = 22
    Width = 176
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 0
    Text = '0 - Remessa do arquivo original'
    Items.Strings = (
      '0 - Remessa do arquivo original'
      '1 - Remessa do arquivo substituto')
  end
  object ed_data_ini: TDateEdit
    Left = 343
    Top = 22
    Width = 90
    Height = 21
    NumGlyphs = 2
    TabOrder = 1
    Text = '00/00/0000'
  end
  object ed_data_fim: TDateEdit
    Left = 476
    Top = 22
    Width = 89
    Height = 21
    NumGlyphs = 2
    TabOrder = 2
    Text = '00/00/0000'
  end
  object bt_ok: TButton
    Left = 198
    Top = 98
    Width = 75
    Height = 25
    Caption = '&Gerar'
    TabOrder = 3
    OnClick = bt_okClick
  end
  object bt_cancelar: TButton
    Left = 306
    Top = 98
    Width = 75
    Height = 25
    Caption = '&Fechar'
    TabOrder = 4
  end
  object btnB_0: TButton
    Left = 14
    Top = 59
    Width = 100
    Height = 25
    Caption = 'Registros Bloco 0'
    TabOrder = 5
    Visible = False
    OnClick = btnB_0Click
  end
  object btnB_C: TButton
    Left = 14
    Top = 83
    Width = 100
    Height = 25
    Caption = 'Registros Bloco C'
    Enabled = False
    TabOrder = 6
    Visible = False
    OnClick = btnB_CClick
  end
  object btnB_D: TButton
    Left = 14
    Top = 107
    Width = 100
    Height = 25
    Caption = 'Registros Bloco D'
    Enabled = False
    TabOrder = 7
    Visible = False
    OnClick = btnB_DClick
  end
  object btnB_E: TButton
    Left = 14
    Top = 131
    Width = 100
    Height = 25
    Caption = 'Registros Bloco E'
    Enabled = False
    TabOrder = 8
    Visible = False
    OnClick = btnB_EClick
  end
  object btnB_G: TButton
    Left = 14
    Top = 155
    Width = 100
    Height = 25
    Caption = 'Registros Bloco G'
    Enabled = False
    TabOrder = 9
    Visible = False
    OnClick = btnB_GClick
  end
  object btnB_H: TButton
    Left = 14
    Top = 179
    Width = 100
    Height = 25
    Caption = 'Registros Bloco H'
    Enabled = False
    TabOrder = 10
    Visible = False
    OnClick = btnB_HClick
  end
  object btnB_1: TButton
    Left = 14
    Top = 203
    Width = 100
    Height = 25
    Caption = 'Registros Bloco 1'
    Enabled = False
    TabOrder = 11
    Visible = False
    OnClick = btnB_1Click
  end
  object btnB_9: TButton
    Left = 14
    Top = 227
    Width = 100
    Height = 25
    Caption = 'Gravar Bloco 9'
    Enabled = False
    TabOrder = 12
    Visible = False
    OnClick = btnB_9Click
  end
  object ProgressBar1: TProgressBar
    Left = 7
    Top = 57
    Width = 555
    Height = 20
    TabOrder = 13
    Visible = False
  end
  object cbConcomitante: TCheckBox
    Left = 136
    Top = 128
    Width = 97
    Height = 17
    Caption = 'Concomitante'
    TabOrder = 14
  end
  object ACBrSPEDFiscal1: TACBrSPEDFiscal
    Path = 'c:\datasac\server\txt\'
    Arquivo = 'sped.txt'
    Delimitador = '|'
    TrimString = True
    CurMascara = '#0.00'
    Left = 512
    Top = 88
  end
  object ZQuery1: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      
        'select distinct * from c000007 a, c000032 b where a.codigo = b.c' +
        'odcliente')
    Params = <>
    Left = 432
    Top = 88
  end
end
