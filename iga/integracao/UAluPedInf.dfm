object FrmAluPedInf: TFrmAluPedInf
  Left = 0
  Top = 34
  Width = 1023
  Height = 710
  BorderIcons = []
  Caption = 'FrmAluPedInf'
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
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 41
    Width = 1015
    Height = 111
    Align = alClient
    DataSource = FrmDados.DTS_AluPedInf
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGO'
        Title.Caption = 'Codigo'
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMEALU'
        Title.Caption = 'Nome do aluno'
        Width = 229
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMEPAI'
        Title.Caption = 'Nome do pai'
        Width = 240
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMEMAE'
        Title.Caption = 'Nome da m'#227'e'
        Width = 215
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ATENDENTE'
        Title.Caption = 'Atendente'
        Width = 180
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1015
    Height = 41
    Align = alTop
    TabOrder = 0
    object BtnSair: TBitBtn
      Left = 904
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Sair'
      TabOrder = 4
      OnClick = BtnSairClick
    end
    object BtnPosAtend: TBitBtn
      Left = 520
      Top = 8
      Width = 92
      Height = 25
      Caption = '&P'#243's-Atendimento'
      TabOrder = 2
      OnClick = BtnPosAtendClick
    end
    object BtnCadastro: TBitBtn
      Left = 632
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Cadastro'
      TabOrder = 3
      OnClick = BtnCadastroClick
    end
    object BtnInserir: TBitBtn
      Left = 32
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Inserir'
      TabOrder = 0
      OnClick = BtnInserirClick
    end
    object BtnExcluir: TBitBtn
      Left = 128
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Excluir'
      TabOrder = 1
      OnClick = BtnExcluirClick
    end
    object BtnConfirmar: TBitBtn
      Left = 240
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Con&firmar'
      TabOrder = 5
      OnClick = BtnConfirmarClick
    end
    object BtnCancelar: TBitBtn
      Left = 352
      Top = 8
      Width = 75
      Height = 25
      Caption = 'C&ancelar'
      TabOrder = 6
      OnClick = BtnCancelarClick
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 152
    Width = 1015
    Height = 530
    Align = alBottom
    Caption = 'Panel3'
    TabOrder = 2
    object PnlCadastro: TPanel
      Left = 1
      Top = 1
      Width = 1013
      Height = 528
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object Label1: TLabel
        Left = 16
        Top = 136
        Width = 92
        Height = 16
        Caption = 'Nome do aluno'
      end
      object Label2: TLabel
        Left = 16
        Top = 176
        Width = 78
        Height = 16
        Caption = 'Nome do pai'
      end
      object Label3: TLabel
        Left = 16
        Top = 256
        Width = 59
        Height = 16
        Caption = 'Endere'#231'o'
      end
      object Label4: TLabel
        Left = 16
        Top = 296
        Width = 74
        Height = 16
        Caption = 'Escola atual'
      end
      object Label5: TLabel
        Left = 16
        Top = 336
        Width = 125
        Height = 16
        Caption = 'Per'#237'odo de interesse'
      end
      object Label6: TLabel
        Left = 496
        Top = 136
        Width = 120
        Height = 16
        Caption = 'Data de nascimento'
      end
      object Label7: TLabel
        Left = 624
        Top = 192
        Width = 54
        Height = 16
        Caption = 'Telefone'
      end
      object Label8: TLabel
        Left = 416
        Top = 256
        Width = 36
        Height = 16
        Caption = 'Bairro'
      end
      object Label9: TLabel
        Left = 632
        Top = 256
        Width = 27
        Height = 16
        Caption = 'CEP'
      end
      object Label10: TLabel
        Left = 480
        Top = 296
        Width = 38
        Height = 16
        Caption = 'E-mail'
      end
      object Label11: TLabel
        Left = 320
        Top = 336
        Width = 32
        Height = 16
        Caption = 'S'#233'rie'
      end
      object LblData: TLabel
        Left = 24
        Top = 424
        Width = 29
        Height = 16
        Caption = 'Data'
      end
      object Label12: TLabel
        Left = 380
        Top = 424
        Width = 15
        Height = 16
        Caption = 'N'#186
      end
      object Label13: TLabel
        Left = 336
        Top = 472
        Width = 61
        Height = 16
        Caption = 'Atendente'
      end
      object Label14: TLabel
        Left = 736
        Top = 424
        Width = 23
        Height = 16
        Caption = 'Tel.'
      end
      object Label15: TLabel
        Left = 736
        Top = 472
        Width = 33
        Height = 16
        Caption = 'Visita'
      end
      object Label22: TLabel
        Left = 16
        Top = 216
        Width = 86
        Height = 16
        Caption = 'Nome da m'#227'e'
      end
      object RGFolheto: TDBRadioGroup
        Left = 8
        Top = 8
        Width = 185
        Height = 33
        Caption = 'Recebeu folheto?'
        Columns = 2
        DataField = 'FOLHETO'
        DataSource = FrmDados.DTS_AluPedInf
        Items.Strings = (
          'Sim'
          'N'#227'o')
        TabOrder = 0
        Values.Strings = (
          'S'
          'N')
        OnEnter = RGFolhetoEnter
      end
      object RGNet: TDBRadioGroup
        Left = 8
        Top = 48
        Width = 185
        Height = 33
        Caption = 'Internet?'
        Columns = 2
        DataField = 'INTERNET'
        DataSource = FrmDados.DTS_AluPedInf
        Items.Strings = (
          'Sim'
          'N'#227'o')
        TabOrder = 1
        Values.Strings = (
          'S'
          'N')
        OnEnter = RGFolhetoEnter
      end
      object RGFaixaRua: TDBRadioGroup
        Left = 216
        Top = 8
        Width = 185
        Height = 33
        Caption = 'Viu faixa de rua?'
        Columns = 2
        DataField = 'FAIXA_RUA'
        DataSource = FrmDados.DTS_AluPedInf
        Items.Strings = (
          'Sim'
          'N'#227'o')
        TabOrder = 3
        Values.Strings = (
          'S'
          'N')
        OnEnter = RGFolhetoEnter
      end
      object RGFachada: TDBRadioGroup
        Left = 8
        Top = 88
        Width = 185
        Height = 33
        Caption = 'Veio pela fachada?'
        Columns = 2
        DataField = 'FACHADA'
        DataSource = FrmDados.DTS_AluPedInf
        Items.Strings = (
          'Sim'
          'N'#227'o')
        TabOrder = 2
        Values.Strings = (
          'S'
          'N')
        OnEnter = RGFolhetoEnter
      end
      object RGRevista: TDBRadioGroup
        Left = 216
        Top = 48
        Width = 185
        Height = 33
        Caption = 'Revista?'
        Columns = 2
        DataField = 'REVISTA'
        DataSource = FrmDados.DTS_AluPedInf
        Items.Strings = (
          'Sim'
          'N'#227'o')
        TabOrder = 4
        Values.Strings = (
          'S'
          'N')
        OnEnter = RGFolhetoEnter
      end
      object RGJornal: TDBRadioGroup
        Left = 216
        Top = 88
        Width = 185
        Height = 33
        Caption = 'Jornal?'
        Columns = 2
        DataField = 'JORNAL'
        DataSource = FrmDados.DTS_AluPedInf
        Items.Strings = (
          'Sim'
          'N'#227'o')
        TabOrder = 6
        Values.Strings = (
          'S'
          'N')
        OnEnter = RGFolhetoEnter
      end
      object RGPlaca: TDBRadioGroup
        Left = 608
        Top = 16
        Width = 185
        Height = 33
        Caption = 'Placa/Outdoor'
        Columns = 2
        DataField = 'PLACA'
        DataSource = FrmDados.DTS_AluPedInf
        Items.Strings = (
          'Sim'
          'N'#227'o')
        TabOrder = 8
        Values.Strings = (
          'S'
          'N')
        OnEnter = RGFolhetoEnter
      end
      object RGIndicado: TDBRadioGroup
        Left = 608
        Top = 56
        Width = 185
        Height = 33
        Caption = 'Foi Indicado?'
        Columns = 2
        DataField = 'INDICADO'
        DataSource = FrmDados.DTS_AluPedInf
        Items.Strings = (
          'Sim'
          'N'#227'o')
        TabOrder = 9
        Values.Strings = (
          'S'
          'N')
        OnEnter = RGFolhetoEnter
      end
      object EdRevista: TDBEdit
        Left = 416
        Top = 56
        Width = 121
        Height = 24
        DataField = 'NOME_REV'
        DataSource = FrmDados.DTS_AluPedInf
        TabOrder = 5
        OnEnter = RGFolhetoEnter
      end
      object EdJornal: TDBEdit
        Left = 416
        Top = 96
        Width = 121
        Height = 24
        DataField = 'NOME_JORNAL'
        DataSource = FrmDados.DTS_AluPedInf
        TabOrder = 7
        OnEnter = RGFolhetoEnter
      end
      object EdIndicado: TDBEdit
        Left = 800
        Top = 64
        Width = 186
        Height = 24
        DataField = 'NOME_INDICOU'
        DataSource = FrmDados.DTS_AluPedInf
        TabOrder = 10
        OnEnter = RGFolhetoEnter
      end
      object DBEdit1: TDBEdit
        Left = 136
        Top = 136
        Width = 305
        Height = 24
        DataField = 'NOMEALU'
        DataSource = FrmDados.DTS_AluPedInf
        TabOrder = 11
        OnEnter = RGFolhetoEnter
      end
      object DBEdit2: TDBEdit
        Left = 136
        Top = 176
        Width = 305
        Height = 24
        DataField = 'NOMEPAI'
        DataSource = FrmDados.DTS_AluPedInf
        TabOrder = 13
        OnEnter = RGFolhetoEnter
      end
      object DBEdit3: TDBEdit
        Left = 136
        Top = 256
        Width = 265
        Height = 24
        DataField = 'ENDERECO'
        DataSource = FrmDados.DTS_AluPedInf
        TabOrder = 15
        OnEnter = RGFolhetoEnter
      end
      object DBEdit4: TDBEdit
        Left = 136
        Top = 296
        Width = 305
        Height = 24
        DataField = 'ESC_ATUAL'
        DataSource = FrmDados.DTS_AluPedInf
        TabOrder = 18
        OnEnter = RGFolhetoEnter
      end
      object DBEdit5: TDBEdit
        Left = 136
        Top = 336
        Width = 161
        Height = 24
        DataField = 'PER_INTERESSE'
        DataSource = FrmDados.DTS_AluPedInf
        TabOrder = 20
        OnEnter = RGFolhetoEnter
      end
      object DBEdit6: TDBEdit
        Left = 620
        Top = 136
        Width = 121
        Height = 24
        DataField = 'DT_NASC'
        DataSource = FrmDados.DTS_AluPedInf
        TabOrder = 12
        OnEnter = RGFolhetoEnter
      end
      object DBEdit7: TDBEdit
        Left = 680
        Top = 192
        Width = 121
        Height = 24
        DataField = 'TELEFONE'
        DataSource = FrmDados.DTS_AluPedInf
        TabOrder = 14
        OnEnter = RGFolhetoEnter
      end
      object DBEdit8: TDBEdit
        Left = 456
        Top = 256
        Width = 161
        Height = 24
        DataField = 'BAIRRO'
        DataSource = FrmDados.DTS_AluPedInf
        TabOrder = 16
        OnEnter = RGFolhetoEnter
      end
      object DBEdit9: TDBEdit
        Left = 680
        Top = 256
        Width = 121
        Height = 24
        DataField = 'CEP'
        DataSource = FrmDados.DTS_AluPedInf
        TabOrder = 17
        OnEnter = RGFolhetoEnter
      end
      object DBEdit10: TDBEdit
        Left = 528
        Top = 296
        Width = 177
        Height = 24
        DataField = 'EMAIL'
        DataSource = FrmDados.DTS_AluPedInf
        TabOrder = 19
        OnEnter = RGFolhetoEnter
      end
      object DBEdit11: TDBEdit
        Left = 352
        Top = 336
        Width = 153
        Height = 24
        DataField = 'SERIE'
        DataSource = FrmDados.DTS_AluPedInf
        TabOrder = 21
        OnEnter = RGFolhetoEnter
      end
      object RGInscricao: TDBRadioGroup
        Left = 16
        Top = 384
        Width = 185
        Height = 33
        Caption = 'Inscri'#231#227'o'
        Columns = 2
        DataField = 'INSCRICAO'
        DataSource = FrmDados.DTS_AluPedInf
        Items.Strings = (
          'Sim'
          'N'#227'o')
        TabOrder = 22
        Values.Strings = (
          'S'
          'N')
        OnEnter = RGFolhetoEnter
      end
      object DBEdit12: TDBEdit
        Left = 56
        Top = 424
        Width = 121
        Height = 24
        DataField = 'DATA'
        DataSource = FrmDados.DTS_AluPedInf
        TabOrder = 23
        OnEnter = RGFolhetoEnter
      end
      object DBEdit13: TDBEdit
        Left = 400
        Top = 424
        Width = 121
        Height = 24
        DataField = 'NUMERO'
        DataSource = FrmDados.DTS_AluPedInf
        TabOrder = 24
        OnEnter = RGFolhetoEnter
      end
      object DBEdit14: TDBEdit
        Left = 400
        Top = 472
        Width = 217
        Height = 24
        DataField = 'ATENDENTE'
        DataSource = FrmDados.DTS_AluPedInf
        TabOrder = 25
        OnEnter = RGFolhetoEnter
      end
      object DBEdit19: TDBEdit
        Left = 776
        Top = 424
        Width = 121
        Height = 24
        DataField = 'TEL'
        DataSource = FrmDados.DTS_AluPedInf
        TabOrder = 26
        OnEnter = RGFolhetoEnter
      end
      object DBEdit20: TDBEdit
        Left = 776
        Top = 472
        Width = 121
        Height = 24
        DataField = 'VISITA'
        DataSource = FrmDados.DTS_AluPedInf
        TabOrder = 27
        OnEnter = RGFolhetoEnter
      end
      object DBEdit21: TDBEdit
        Left = 136
        Top = 216
        Width = 305
        Height = 24
        DataField = 'NOMEMAE'
        DataSource = FrmDados.DTS_AluPedInf
        TabOrder = 28
        OnEnter = RGFolhetoEnter
      end
    end
    object PnlPosAtend: TPanel
      Left = 1
      Top = 1
      Width = 1013
      Height = 528
      Align = alClient
      TabOrder = 1
      object Label16: TLabel
        Left = 8
        Top = 16
        Width = 50
        Height = 13
        Caption = '1'#186' Contato'
      end
      object Label17: TLabel
        Left = 128
        Top = 16
        Width = 23
        Height = 13
        Caption = 'Data'
      end
      object Label18: TLabel
        Left = 376
        Top = 16
        Width = 49
        Height = 13
        Caption = 'Atendente'
      end
      object Label19: TLabel
        Left = 16
        Top = 256
        Width = 50
        Height = 13
        Caption = '2'#186' Contato'
      end
      object Label20: TLabel
        Left = 136
        Top = 256
        Width = 23
        Height = 13
        Caption = 'Data'
      end
      object Label21: TLabel
        Left = 384
        Top = 256
        Width = 49
        Height = 13
        Caption = 'Atendente'
      end
      object DBMemo1: TDBMemo
        Left = 16
        Top = 40
        Width = 633
        Height = 193
        DataField = 'OBS_1CONT'
        DataSource = FrmDados.DTS_AluPedInf
        TabOrder = 2
        OnEnter = RGFolhetoEnter
      end
      object DBMemo2: TDBMemo
        Left = 16
        Top = 288
        Width = 633
        Height = 193
        DataField = 'OBS_2CONT'
        DataSource = FrmDados.DTS_AluPedInf
        TabOrder = 5
        OnEnter = RGFolhetoEnter
      end
      object DBEdit15: TDBEdit
        Left = 160
        Top = 16
        Width = 121
        Height = 21
        DataField = 'DT_1CONT'
        DataSource = FrmDados.DTS_AluPedInf
        TabOrder = 0
        OnEnter = RGFolhetoEnter
      end
      object DBEdit16: TDBEdit
        Left = 440
        Top = 16
        Width = 121
        Height = 21
        DataField = 'ATENDENTE_1CONT'
        DataSource = FrmDados.DTS_AluPedInf
        TabOrder = 1
        OnEnter = RGFolhetoEnter
      end
      object DBEdit17: TDBEdit
        Left = 168
        Top = 256
        Width = 121
        Height = 21
        DataField = 'DT_2CONT'
        DataSource = FrmDados.DTS_AluPedInf
        TabOrder = 3
        OnEnter = RGFolhetoEnter
      end
      object DBEdit18: TDBEdit
        Left = 448
        Top = 256
        Width = 121
        Height = 21
        DataField = 'ATENDENTE_2CONT'
        DataSource = FrmDados.DTS_AluPedInf
        TabOrder = 4
        OnEnter = RGFolhetoEnter
      end
    end
  end
end
