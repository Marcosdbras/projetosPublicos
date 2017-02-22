object frmCadastroLayout: TfrmCadastroLayout
  Left = 323
  Top = 133
  Width = 557
  Height = 469
  BorderIcons = [biSystemMenu]
  Caption = 'Navigator | Cadastro de Layout'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 541
    Height = 163
    Align = alTop
    BevelOuter = bvNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object DBNavigator1: TDBNavigator
      Left = 0
      Top = 0
      Width = 541
      Height = 31
      DataSource = dsLayout
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
      Align = alTop
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
    end
    object RzGroupBox1: TRzGroupBox
      Left = 10
      Top = 35
      Width = 80
      Height = 57
      Caption = 'Tipo'
      Font.Charset = ANSI_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object DBEdit1: TDBEdit
        Left = 5
        Top = 22
        Width = 71
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Denominacao'
        DataSource = dsLayout
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
    object RzGroupBox2: TRzGroupBox
      Left = 93
      Top = 35
      Width = 441
      Height = 57
      Caption = 'Denomina'#231#227'o'
      Font.Charset = ANSI_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object DBEdit2: TDBEdit
        Left = 15
        Top = 22
        Width = 418
        Height = 21
        DataField = 'Campo'
        DataSource = dsLayout
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
    object RzGroupBox3: TRzGroupBox
      Left = 10
      Top = 96
      Width = 80
      Height = 57
      Caption = 'Tamanho'
      Font.Charset = ANSI_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      object DBEdit3: TDBEdit
        Left = 5
        Top = 22
        Width = 71
        Height = 21
        DataField = 'Tamanho'
        DataSource = dsLayout
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
    object RzGroupBox4: TRzGroupBox
      Left = 93
      Top = 96
      Width = 121
      Height = 57
      Caption = 'Inicio'
      Font.Charset = ANSI_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      object DBEdit4: TDBEdit
        Left = 8
        Top = 22
        Width = 105
        Height = 21
        DataField = 'Inicio'
        DataSource = dsLayout
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
    object RzGroupBox5: TRzGroupBox
      Left = 217
      Top = 96
      Width = 121
      Height = 57
      Caption = 'Fim'
      Font.Charset = ANSI_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      object DBEdit5: TDBEdit
        Left = 9
        Top = 22
        Width = 104
        Height = 21
        DataField = 'Fim'
        DataSource = dsLayout
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnExit = DBEdit5Exit
      end
    end
    object RzGroupBox6: TRzGroupBox
      Left = 342
      Top = 96
      Width = 193
      Height = 54
      Caption = 'F6 | Pesquisa'
      Font.Charset = ANSI_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      object edtDenominacao: TEdit
        Left = 11
        Top = 22
        Width = 174
        Height = 21
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnChange = edtDenominacaoChange
        OnExit = edtDenominacaoExit
      end
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 163
    Width = 541
    Height = 270
    TabStop = False
    Align = alClient
    DataSource = dsLayout
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgColLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = 8404992
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Denominacao'
        Title.Caption = 'Tipo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 35
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Campo'
        Title.Caption = 'Denomina'#231#227'o'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 375
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Tamanho'
        Title.Caption = 'Tam'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 35
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Inicio'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 35
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Fim'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 35
        Visible = True
      end>
  end
  object dsLayout: TDataSource
    Left = 328
    Top = 280
  end
end
