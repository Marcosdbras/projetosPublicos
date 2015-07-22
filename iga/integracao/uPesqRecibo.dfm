object FrmPesqRecibo: TFrmPesqRecibo
  Left = 173
  Top = 121
  Width = 833
  Height = 639
  BorderIcons = []
  Caption = 'Dados do recibo'
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 825
    Height = 57
    Align = alTop
    TabOrder = 0
    object BtnInserir: TBitBtn
      Left = 24
      Top = 16
      Width = 75
      Height = 25
      Caption = '&Inserir'
      TabOrder = 0
      OnClick = BtnInserirClick
    end
    object BtnExcluir: TBitBtn
      Left = 120
      Top = 16
      Width = 75
      Height = 25
      Caption = '&Excluir'
      TabOrder = 1
      OnClick = BtnExcluirClick
    end
    object BtnConfirmar: TBitBtn
      Left = 216
      Top = 16
      Width = 75
      Height = 25
      Caption = '&Confirmar'
      TabOrder = 2
      OnClick = BtnConfirmarClick
    end
    object BtnCancelar: TBitBtn
      Left = 320
      Top = 16
      Width = 75
      Height = 25
      Caption = 'C&ancelar'
      TabOrder = 3
      OnClick = BtnCancelarClick
    end
    object BtnSair: TBitBtn
      Left = 720
      Top = 16
      Width = 75
      Height = 25
      Caption = '&Sair'
      TabOrder = 4
      OnClick = BtnSairClick
    end
    object BtnImprimir: TBitBtn
      Left = 424
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Im&primir'
      TabOrder = 5
      OnClick = BtnImprimirClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 57
    Width = 825
    Height = 127
    Align = alClient
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 823
      Height = 125
      Align = alClient
      DataSource = FrmDados.DTS_Recibo
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
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
          Title.Caption = 'C'#243'digo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUM'
          Title.Caption = 'N'#250'mero'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME'
          Title.Caption = 'Nome'
          Width = 269
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NomeAlu'
          Title.Caption = 'Nome do aluno'
          Visible = True
        end>
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 184
    Width = 825
    Height = 427
    Align = alBottom
    TabOrder = 2
    object Label1: TLabel
      Left = 24
      Top = 56
      Width = 34
      Height = 13
      Caption = 'Recibo'
    end
    object Label2: TLabel
      Left = 72
      Top = 56
      Width = 12
      Height = 13
      Caption = 'N'#186
    end
    object Label3: TLabel
      Left = 432
      Top = 56
      Width = 14
      Height = 13
      Caption = 'R$'
    end
    object Label4: TLabel
      Left = 24
      Top = 94
      Width = 80
      Height = 13
      Caption = 'Recebi(emos) de'
    end
    object Label5: TLabel
      Left = 24
      Top = 124
      Width = 59
      Height = 13
      Caption = 'a quantia de'
    end
    object Label6: TLabel
      Left = 24
      Top = 167
      Width = 84
      Height = 13
      Caption = 'Correspondente a'
    end
    object Label7: TLabel
      Left = 24
      Top = 276
      Width = 164
      Height = 13
      Caption = 'e para clareza firmamos o presente'
    end
    object LblValor: TLabel
      Left = 128
      Top = 124
      Width = 38
      Height = 13
      Caption = 'LblValor'
    end
    object DBText1: TDBText
      Left = 112
      Top = 56
      Width = 65
      Height = 17
      DataField = 'NUM'
      DataSource = FrmDados.DTS_Recibo
    end
    object Label8: TLabel
      Left = 24
      Top = 350
      Width = 27
      Height = 13
      Caption = 'Aluno'
    end
    object Label9: TLabel
      Left = 24
      Top = 313
      Width = 23
      Height = 13
      Caption = 'Data'
    end
    object DBEdit1: TDBEdit
      Left = 456
      Top = 50
      Width = 121
      Height = 21
      DataField = 'VALOR'
      DataSource = FrmDados.DTS_Recibo
      TabOrder = 0
      OnClick = DBEdit1Click
      OnEnter = DBEdit1Enter
      OnExit = DBEdit1Exit
    end
    object DBEdit2: TDBEdit
      Left = 128
      Top = 88
      Width = 302
      Height = 21
      DataField = 'NOME'
      DataSource = FrmDados.DTS_Recibo
      TabOrder = 1
      OnClick = DBEdit1Click
      OnEnter = DBEdit1Enter
    end
    object DBEdit4: TDBEdit
      Left = 128
      Top = 161
      Width = 641
      Height = 21
      DataField = 'TIPO'
      DataSource = FrmDados.DTS_Recibo
      TabOrder = 2
      OnClick = DBEdit1Click
      OnEnter = DBEdit1Enter
    end
    object DBEdit5: TDBEdit
      Left = 200
      Top = 270
      Width = 121
      Height = 21
      DataField = 'ACORDO'
      DataSource = FrmDados.DTS_Recibo
      TabOrder = 5
      OnClick = DBEdit1Click
      OnEnter = DBEdit1Enter
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 64
      Top = 344
      Width = 145
      Height = 21
      DataField = 'CODALU'
      DataSource = FrmDados.DTS_Recibo
      KeyField = 'CODIGO'
      ListField = 'NOME'
      ListSource = FrmDados.DTS_CadAluno
      TabOrder = 7
      OnClick = DBEdit1Click
    end
    object BtnPesqAlu: TBitBtn
      Left = 219
      Top = 344
      Width = 25
      Height = 22
      Caption = '...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      OnClick = BtnPesqAluClick
      Layout = blGlyphRight
    end
    object DBEdit3: TDBEdit
      Left = 56
      Top = 307
      Width = 121
      Height = 21
      DataField = 'DATA'
      DataSource = FrmDados.DTS_Recibo
      TabOrder = 6
      OnClick = DBEdit1Click
      OnEnter = DBEdit1Enter
    end
    object DBEdit6: TDBEdit
      Left = 32
      Top = 197
      Width = 737
      Height = 21
      DataField = 'TIPO2'
      DataSource = FrmDados.DTS_Recibo
      TabOrder = 3
    end
    object DBEdit7: TDBEdit
      Left = 32
      Top = 234
      Width = 737
      Height = 21
      DataField = 'TIPO3'
      DataSource = FrmDados.DTS_Recibo
      TabOrder = 4
    end
  end
end
