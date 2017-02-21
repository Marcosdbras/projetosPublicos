object frmcliente_info: Tfrmcliente_info
  Left = 269
  Top = 209
  BorderStyle = bsToolWindow
  Caption = 'Cliente - Informa'#231#245'es'
  ClientHeight = 327
  ClientWidth = 584
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 289
    Width = 584
    Height = 2
    Align = alTop
  end
  object Label4: TLabel
    Left = 8
    Top = 60
    Width = 49
    Height = 13
    Caption = 'Endere'#231'o:'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 584
    Height = 289
    Align = alTop
    BevelOuter = bvNone
    Enabled = False
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 12
      Width = 37
      Height = 13
      Caption = 'C'#243'digo:'
    end
    object Label2: TLabel
      Left = 136
      Top = 12
      Width = 31
      Height = 13
      Caption = 'Nome:'
    end
    object Label3: TLabel
      Left = 8
      Top = 36
      Width = 49
      Height = 13
      Caption = 'Endere'#231'o:'
    end
    object Label5: TLabel
      Left = 8
      Top = 60
      Width = 32
      Height = 13
      Caption = 'Bairro:'
    end
    object Label6: TLabel
      Left = 264
      Top = 60
      Width = 69
      Height = 13
      Caption = 'Complemento:'
    end
    object Label7: TLabel
      Left = 8
      Top = 84
      Width = 37
      Height = 13
      Caption = 'Cidade:'
    end
    object Label8: TLabel
      Left = 400
      Top = 84
      Width = 17
      Height = 13
      Caption = 'UF:'
    end
    object Label9: TLabel
      Left = 464
      Top = 84
      Width = 23
      Height = 13
      Caption = 'CEP:'
    end
    object Label10: TLabel
      Left = 8
      Top = 108
      Width = 51
      Height = 13
      Caption = 'Telefones:'
    end
    object Label11: TLabel
      Left = 8
      Top = 140
      Width = 31
      Height = 13
      Caption = 'Limite:'
    end
    object Label12: TLabel
      Left = 8
      Top = 164
      Width = 45
      Height = 13
      Caption = 'Situa'#231#227'o:'
    end
    object Label13: TLabel
      Left = 8
      Top = 196
      Width = 67
      Height = 13
      Caption = 'Observa'#231#245'es:'
    end
    object DBEdit1: TDBEdit
      Left = 80
      Top = 8
      Width = 49
      Height = 21
      DataField = 'CODIGO'
      DataSource = dscliente
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 176
      Top = 8
      Width = 393
      Height = 21
      DataField = 'NOME'
      DataSource = dscliente
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 80
      Top = 32
      Width = 489
      Height = 21
      DataField = 'ENDERECO'
      DataSource = dscliente
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 80
      Top = 56
      Width = 169
      Height = 21
      DataField = 'BAIRRO'
      DataSource = dscliente
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 344
      Top = 56
      Width = 225
      Height = 21
      DataField = 'COMPLEMENTO'
      DataSource = dscliente
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 80
      Top = 80
      Width = 305
      Height = 21
      DataField = 'CIDADE'
      DataSource = dscliente
      TabOrder = 5
    end
    object DBEdit7: TDBEdit
      Left = 424
      Top = 80
      Width = 33
      Height = 21
      DataField = 'UF'
      DataSource = dscliente
      TabOrder = 6
    end
    object DBEdit8: TDBEdit
      Left = 496
      Top = 80
      Width = 73
      Height = 21
      DataField = 'CEP'
      DataSource = dscliente
      TabOrder = 7
    end
    object DBEdit9: TDBEdit
      Left = 80
      Top = 104
      Width = 89
      Height = 21
      DataField = 'TELEFONE1'
      DataSource = dscliente
      TabOrder = 8
    end
    object DBEdit10: TDBEdit
      Left = 176
      Top = 104
      Width = 89
      Height = 21
      DataField = 'TELEFONE2'
      DataSource = dscliente
      TabOrder = 9
    end
    object DBEdit11: TDBEdit
      Left = 272
      Top = 104
      Width = 89
      Height = 21
      DataField = 'TELEFONE3'
      DataSource = dscliente
      TabOrder = 10
    end
    object DBEdit12: TDBEdit
      Left = 368
      Top = 104
      Width = 89
      Height = 21
      DataField = 'CELULAR'
      DataSource = dscliente
      TabOrder = 11
    end
    object RzDBNumericEdit1: TRzDBNumericEdit
      Left = 80
      Top = 136
      Width = 121
      Height = 21
      DataSource = dscliente
      DataField = 'LIMITE'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 12
      Value = 100.000000000000000000
      DisplayFormat = '###,###,##0.00'
    end
    object ed_situacao: TEdit
      Left = 80
      Top = 160
      Width = 121
      Height = 21
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 13
    end
    object DBEdit13: TDBEdit
      Left = 80
      Top = 192
      Width = 489
      Height = 21
      DataField = 'OBS1'
      DataSource = dscliente
      TabOrder = 14
    end
    object DBEdit14: TDBEdit
      Left = 80
      Top = 216
      Width = 489
      Height = 21
      DataField = 'OBS2'
      DataSource = dscliente
      TabOrder = 15
    end
    object DBEdit15: TDBEdit
      Left = 80
      Top = 240
      Width = 489
      Height = 21
      DataField = 'OBS3'
      DataSource = dscliente
      TabOrder = 16
    end
    object DBEdit16: TDBEdit
      Left = 80
      Top = 264
      Width = 489
      Height = 21
      DataField = 'OBS4'
      DataSource = dscliente
      TabOrder = 17
    end
  end
  object isair: TAdvGlowButton
    Left = 208
    Top = 295
    Width = 145
    Height = 26
    Caption = 'Esc | Sair'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ImageIndex = 49
    FocusType = ftHot
    ParentFont = False
    TabOrder = 1
    OnClick = isairClick
    Appearance.BorderColor = 12179676
    Appearance.BorderColorHot = clHighlight
    Appearance.BorderColorDown = clHighlight
    Appearance.BorderColorChecked = clBlack
    Appearance.ColorTo = 12179676
    Appearance.ColorChecked = 12179676
    Appearance.ColorCheckedTo = 12179676
    Appearance.ColorDisabled = 15921906
    Appearance.ColorDisabledTo = 15921906
    Appearance.ColorDown = 11899524
    Appearance.ColorDownTo = 11899524
    Appearance.ColorHot = 15717318
    Appearance.ColorHotTo = 15717318
    Appearance.ColorMirror = 12179676
    Appearance.ColorMirrorTo = 12179676
    Appearance.ColorMirrorHot = 15717318
    Appearance.ColorMirrorHotTo = 15717318
    Appearance.ColorMirrorDown = 11899524
    Appearance.ColorMirrorDownTo = 11899524
    Appearance.ColorMirrorChecked = 12179676
    Appearance.ColorMirrorCheckedTo = 12179676
    Appearance.ColorMirrorDisabled = 11974326
    Appearance.ColorMirrorDisabledTo = 15921906
    Appearance.GradientHot = ggVertical
    Appearance.GradientMirrorHot = ggVertical
    Appearance.GradientDown = ggVertical
    Appearance.GradientMirrorDown = ggVertical
    Appearance.GradientChecked = ggVertical
  end
  object qrcliente: TZQuery
    Connection = frmmodulo.Conexao
    Active = True
    SQL.Strings = (
      'select * from c000007')
    Params = <>
    Left = 232
    Top = 248
  end
  object dscliente: TDataSource
    DataSet = qrcliente
    Left = 264
    Top = 248
  end
  object PopupMenu1: TPopupMenu
    Left = 440
    Top = 128
    object Fechar1: TMenuItem
      Caption = 'Fechar'
      ShortCut = 27
      OnClick = Fechar1Click
    end
  end
end
