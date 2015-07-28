object frmPrincipal: TfrmPrincipal
  Left = 334
  Top = 114
  BorderStyle = bsDialog
  Caption = 'DataPDV - Registro do Sistema PAF-ECF'
  ClientHeight = 584
  ClientWidth = 784
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Lucida Console'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 11
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 784
    Height = 25
    Align = alTop
    Alignment = taRightJustify
    BevelInner = bvLowered
    Caption = 'REGISTRO DO PAF '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Lucida Console'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 543
    Width = 784
    Height = 41
    Align = alBottom
    BevelInner = bvLowered
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Lucida Console'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object Button1: TButton
      Left = 592
      Top = 8
      Width = 90
      Height = 25
      Caption = 'Gravar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Lucida Console'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 687
      Top = 8
      Width = 90
      Height = 25
      Caption = 'Cancelar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Lucida Console'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 16
      Top = 8
      Width = 105
      Height = 25
      Caption = 'Daruma'
      TabOrder = 2
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 120
      Top = 8
      Width = 105
      Height = 25
      Caption = 'Bematech'
      TabOrder = 3
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 224
      Top = 8
      Width = 105
      Height = 25
      Caption = 'Sweda'
      TabOrder = 4
      OnClick = Button5Click
    end
    object Button6: TButton
      Left = 328
      Top = 8
      Width = 105
      Height = 25
      Caption = 'Epson'
      TabOrder = 5
      OnClick = Button6Click
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 25
    Width = 784
    Height = 84
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Panel3'
    TabOrder = 2
    object GroupBox1: TGroupBox
      Left = 5
      Top = 7
      Width = 772
      Height = 73
      Caption = 'PAF-ECF'
      TabOrder = 0
      object Label1: TLabel
        Left = 8
        Top = 20
        Width = 35
        Height = 11
        Caption = 'Nome:'
      end
      object Label2: TLabel
        Left = 416
        Top = 20
        Width = 49
        Height = 11
        Caption = 'Vers'#227'o:'
      end
      object Label3: TLabel
        Left = 8
        Top = 44
        Width = 28
        Height = 11
        Caption = 'MD5:'
      end
      object Label27: TLabel
        Left = 416
        Top = 44
        Width = 77
        Height = 11
        Caption = 'Execut'#225'vel:'
      end
      object Label37: TLabel
        Left = 624
        Top = 20
        Width = 42
        Height = 11
        Caption = 'Laudo:'
      end
      object ed_paf_nome: TEdit
        Left = 48
        Top = 16
        Width = 361
        Height = 19
        MaxLength = 40
        TabOrder = 0
        Text = 'ed_paf_nome'
      end
      object ed_paf_versao: TEdit
        Left = 472
        Top = 16
        Width = 137
        Height = 19
        MaxLength = 10
        TabOrder = 1
        Text = 'Edit1'
      end
      object ed_paf_md5: TEdit
        Left = 48
        Top = 40
        Width = 361
        Height = 19
        MaxLength = 32
        TabOrder = 2
        Text = 'Edit1'
      end
      object ed_paf_executavel: TEdit
        Left = 496
        Top = 40
        Width = 113
        Height = 19
        MaxLength = 12
        TabOrder = 3
        Text = 'ed_paf_executavel'
      end
      object ED_PAF_LAUDO: TEdit
        Left = 624
        Top = 40
        Width = 137
        Height = 19
        MaxLength = 10
        TabOrder = 4
        Text = 'ed_paf_executavel'
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 109
    Width = 784
    Height = 97
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 3
    object GroupBox2: TGroupBox
      Left = 5
      Top = 0
      Width = 772
      Height = 93
      Caption = 'Empresa Desenvolvedora'
      TabOrder = 0
      object Label4: TLabel
        Left = 8
        Top = 20
        Width = 35
        Height = 11
        Caption = 'Nome:'
      end
      object Label5: TLabel
        Left = 570
        Top = 20
        Width = 35
        Height = 11
        Caption = 'CNPJ:'
      end
      object Label6: TLabel
        Left = 8
        Top = 44
        Width = 21
        Height = 11
        Caption = 'IE:'
      end
      object Label7: TLabel
        Left = 216
        Top = 44
        Width = 21
        Height = 11
        Caption = 'IM:'
      end
      object Label28: TLabel
        Left = 392
        Top = 44
        Width = 63
        Height = 11
        Caption = 'Telefone:'
      end
      object Label29: TLabel
        Left = 8
        Top = 68
        Width = 63
        Height = 11
        Caption = 'Endere'#231'o:'
      end
      object Label30: TLabel
        Left = 512
        Top = 68
        Width = 56
        Height = 11
        Caption = 'Contato:'
      end
      object ed_sh_nome: TEdit
        Left = 48
        Top = 16
        Width = 497
        Height = 19
        MaxLength = 40
        TabOrder = 0
        Text = 'Edit1'
      end
      object ed_sh_cnpj: TEdit
        Left = 616
        Top = 16
        Width = 145
        Height = 19
        MaxLength = 25
        TabOrder = 1
        Text = 'Edit1'
      end
      object ed_sh_ie: TEdit
        Left = 48
        Top = 40
        Width = 153
        Height = 19
        MaxLength = 25
        TabOrder = 2
        Text = 'Edit1'
      end
      object ed_sh_im: TEdit
        Left = 256
        Top = 40
        Width = 129
        Height = 19
        MaxLength = 25
        TabOrder = 3
        Text = 'Edit1'
      end
      object ed_sh_telefone: TEdit
        Left = 464
        Top = 40
        Width = 145
        Height = 19
        MaxLength = 25
        TabOrder = 4
        Text = 'ed_sh_telefone'
      end
      object ed_sh_endereco: TEdit
        Left = 80
        Top = 64
        Width = 425
        Height = 19
        MaxLength = 80
        TabOrder = 5
        Text = 'ed_sh_endereco'
      end
      object ed_sh_contato: TEdit
        Left = 576
        Top = 64
        Width = 185
        Height = 19
        MaxLength = 40
        TabOrder = 6
        Text = 'Edit1'
      end
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 206
    Width = 784
    Height = 131
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 4
    object GroupBox3: TGroupBox
      Left = 5
      Top = 3
      Width = 620
      Height = 118
      Caption = 'ECF'
      TabOrder = 0
      object Label8: TLabel
        Left = 8
        Top = 20
        Width = 42
        Height = 11
        Caption = 'Marca:'
      end
      object Label10: TLabel
        Left = 8
        Top = 44
        Width = 49
        Height = 11
        Caption = 'Serial:'
      end
      object Label11: TLabel
        Left = 216
        Top = 44
        Width = 49
        Height = 11
        Caption = 'N'#250'mero:'
      end
      object Label12: TLabel
        Left = 288
        Top = 20
        Width = 49
        Height = 11
        Caption = 'Modelo:'
      end
      object Label9: TLabel
        Left = 496
        Top = 20
        Width = 35
        Height = 11
        Caption = 'Tipo:'
      end
      object Label13: TLabel
        Left = 344
        Top = 44
        Width = 35
        Height = 11
        Caption = 'CNIF:'
      end
      object Label20: TLabel
        Left = 496
        Top = 44
        Width = 56
        Height = 11
        Cursor = crHandPoint
        Caption = 'Usu'#225'rio:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Lucida Console'
        Font.Style = [fsUnderline]
        ParentFont = False
        OnClick = Label20Click
      end
      object Label26: TLabel
        Left = 126
        Top = 68
        Width = 427
        Height = 11
        Caption = 'Permite incid'#234'ncia de desconto sobre itens sujeitos ao ISSQN:'
      end
      object Label31: TLabel
        Left = 8
        Top = 92
        Width = 175
        Height = 11
        Caption = 'Diret'#243'rio Arquivo Fiscal:'
      end
      object ed_ecf_serial: TEdit
        Left = 56
        Top = 40
        Width = 153
        Height = 19
        MaxLength = 20
        TabOrder = 3
        Text = 'Edit1'
      end
      object ed_ecf_numero: TEdit
        Left = 272
        Top = 40
        Width = 49
        Height = 19
        TabOrder = 4
        Text = 'Edit1'
      end
      object cb_ecf_marca: TComboBox
        Left = 56
        Top = 16
        Width = 225
        Height = 19
        Style = csDropDownList
        ItemHeight = 11
        TabOrder = 0
        OnClick = cb_ecf_marcaClick
        Items.Strings = (
          ''
          'BEMATECH'
          'DARUMA AUTOMA'#199#195'O'
          'SWEDA'
          'EPSON')
      end
      object cb_ecf_modelo: TComboBox
        Left = 336
        Top = 16
        Width = 153
        Height = 19
        ItemHeight = 11
        TabOrder = 1
        Text = 'ComboBox1'
        Items.Strings = (
          'MP-2100 TH FI'
          'MP-4000 TH FI'
          'MP-7000 TH FI'
          'MP-3000 TH FI'
          'MP-6000 TH FI'
          'FS600'
          'FS2000'
          'FS2100T'
          'IF ST120'
          'IF ST200'
          'IF ST2000'
          'IF ST2500'
          ''
          '')
      end
      object cb_ecf_tipo: TComboBox
        Left = 536
        Top = 16
        Width = 73
        Height = 19
        ItemHeight = 11
        TabOrder = 2
        Text = 'ComboBox1'
        Items.Strings = (
          'ECF-IF'
          'ECF-PDV')
      end
      object ed_ecf_cnif: TEdit
        Left = 384
        Top = 40
        Width = 105
        Height = 19
        TabOrder = 5
        Text = 'Edit1'
      end
      object ed_usuario: TEdit
        Left = 560
        Top = 40
        Width = 47
        Height = 19
        TabOrder = 6
        Text = 'ed_usuario'
      end
      object cb_desconto_iss: TComboBox
        Left = 560
        Top = 64
        Width = 49
        Height = 19
        ItemHeight = 11
        TabOrder = 7
        Text = 'cb_desconto_iss'
        Items.Strings = (
          'N'
          'S')
      end
      object ed_diretorio: TEdit
        Left = 192
        Top = 88
        Width = 417
        Height = 19
        MaxLength = 80
        TabOrder = 8
        Text = 'ed_sh_endereco'
      end
    end
    object GroupBox7: TGroupBox
      Left = 629
      Top = 3
      Width = 150
      Height = 49
      Caption = 'Totalizador Geral'
      TabOrder = 1
      object ed_total_geral: TEdit
        Left = 8
        Top = 15
        Width = 137
        Height = 24
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Lucida Console'
        Font.Style = []
        MaxLength = 40
        ParentFont = False
        TabOrder = 0
        Text = '111111,00'
      end
    end
  end
  object Panel6: TPanel
    Left = 0
    Top = 337
    Width = 784
    Height = 144
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 5
    object GroupBox4: TGroupBox
      Left = 5
      Top = -1
      Width = 585
      Height = 138
      Caption = 'Usu'#225'rio'
      TabOrder = 0
      object Label14: TLabel
        Left = 8
        Top = 20
        Width = 35
        Height = 11
        Caption = 'Nome:'
      end
      object Label15: TLabel
        Left = 384
        Top = 20
        Width = 35
        Height = 11
        Caption = 'CNPJ:'
      end
      object Label16: TLabel
        Left = 8
        Top = 44
        Width = 21
        Height = 11
        Caption = 'IE:'
      end
      object Label17: TLabel
        Left = 216
        Top = 44
        Width = 21
        Height = 11
        Caption = 'IM:'
      end
      object Label32: TLabel
        Left = 8
        Top = 68
        Width = 35
        Height = 11
        Caption = 'End.:'
      end
      object Label33: TLabel
        Left = 8
        Top = 92
        Width = 35
        Height = 11
        Caption = 'Bair:'
      end
      object Label34: TLabel
        Left = 264
        Top = 92
        Width = 35
        Height = 11
        Caption = 'Cid.:'
      end
      object Label35: TLabel
        Left = 520
        Top = 92
        Width = 21
        Height = 11
        Caption = 'UF:'
      end
      object Label36: TLabel
        Left = 8
        Top = 116
        Width = 28
        Height = 11
        Caption = 'CEP:'
      end
      object ed_cliente_nome: TEdit
        Left = 48
        Top = 16
        Width = 321
        Height = 19
        MaxLength = 40
        TabOrder = 0
        Text = 'Edit1'
      end
      object ed_cliente_cnpj: TEdit
        Left = 424
        Top = 16
        Width = 145
        Height = 19
        MaxLength = 25
        TabOrder = 1
        Text = 'Edit1'
      end
      object ed_cliente_ie: TEdit
        Left = 48
        Top = 40
        Width = 153
        Height = 19
        MaxLength = 25
        TabOrder = 2
        Text = 'Edit1'
      end
      object ed_cliente_im: TEdit
        Left = 256
        Top = 40
        Width = 153
        Height = 19
        MaxLength = 25
        TabOrder = 3
        Text = 'Edit1'
      end
      object ed_cliente_endereco: TEdit
        Left = 48
        Top = 64
        Width = 521
        Height = 19
        MaxLength = 25
        TabOrder = 4
        Text = 'ed_cliente_endereco'
      end
      object ed_cliente_bairro: TEdit
        Left = 48
        Top = 88
        Width = 209
        Height = 19
        MaxLength = 25
        TabOrder = 5
        Text = 'Edit1'
      end
      object ed_cliente_cidade: TEdit
        Left = 304
        Top = 88
        Width = 209
        Height = 19
        MaxLength = 25
        TabOrder = 6
        Text = 'Edit1'
      end
      object ed_cliente_uf: TEdit
        Left = 544
        Top = 88
        Width = 25
        Height = 19
        MaxLength = 25
        TabOrder = 7
        Text = 'Edit1'
      end
      object ed_cliente_cep: TEdit
        Left = 48
        Top = 112
        Width = 97
        Height = 19
        MaxLength = 25
        TabOrder = 8
        Text = 'Edit1'
      end
    end
    object GroupBox6: TGroupBox
      Left = 597
      Top = 32
      Width = 181
      Height = 105
      Caption = 'Outras Op'#231#245'es'
      TabOrder = 1
      object rb_pre_venda: TCheckBox
        Left = 8
        Top = 16
        Width = 161
        Height = 17
        Caption = 'Habilita pr'#233'-venda'
        TabOrder = 0
      end
      object rb_dav_ecf: TCheckBox
        Left = 8
        Top = 32
        Width = 161
        Height = 17
        Caption = 'Habilita DAV no ECF'
        TabOrder = 1
      end
      object rb_dav_nf: TCheckBox
        Left = 8
        Top = 48
        Width = 161
        Height = 17
        Hint = 'Habilita impress'#227'o do DAV em impressora n'#227'o fiscal'
        Caption = 'Habilita DAV Imp. NF'
        TabOrder = 2
      end
      object rb_os: TCheckBox
        Left = 8
        Top = 64
        Width = 161
        Height = 17
        Hint = 'Habilita impress'#227'o do DAV em impressora n'#227'o fiscal'
        Caption = 'Habilita O.S.'
        TabOrder = 3
      end
      object rb_os_mecanica: TCheckBox
        Left = 8
        Top = 80
        Width = 161
        Height = 17
        Hint = 'Habilita impress'#227'o do DAV em impressora n'#227'o fiscal'
        Caption = 'O.S. Mec'#226'nica'
        TabOrder = 4
      end
    end
  end
  object Panel7: TPanel
    Left = 0
    Top = 481
    Width = 784
    Height = 56
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 6
    object GroupBox5: TGroupBox
      Left = 6
      Top = 1
      Width = 773
      Height = 49
      Caption = 'Totalizadores N'#227'o Fiscal'
      TabOrder = 0
      object Label18: TLabel
        Left = 112
        Top = 20
        Width = 49
        Height = 11
        Caption = #205'ndice:'
      end
      object Label19: TLabel
        Left = 200
        Top = 20
        Width = 70
        Height = 11
        Caption = 'Descri'#231#227'o:'
      end
      object Label21: TLabel
        Left = 16
        Top = 20
        Width = 84
        Height = 11
        Caption = 'Credi'#225'rio ->'
      end
      object Label22: TLabel
        Left = 488
        Top = 20
        Width = 49
        Height = 11
        Caption = #205'ndice:'
      end
      object Label23: TLabel
        Left = 408
        Top = 20
        Width = 77
        Height = 11
        Caption = 'Suprimento:'
      end
      object Label24: TLabel
        Left = 656
        Top = 20
        Width = 49
        Height = 11
        Caption = #205'ndice:'
      end
      object Label25: TLabel
        Left = 592
        Top = 20
        Width = 56
        Height = 11
        Caption = 'Sangria:'
      end
      object ed_indice_crediario: TEdit
        Left = 168
        Top = 16
        Width = 25
        Height = 19
        MaxLength = 40
        TabOrder = 0
        Text = '00'
      end
      object ed_nome_crediario: TEdit
        Left = 280
        Top = 16
        Width = 121
        Height = 19
        MaxLength = 25
        TabOrder = 1
      end
      object ed_indice_suprimento: TEdit
        Left = 544
        Top = 16
        Width = 25
        Height = 19
        MaxLength = 40
        TabOrder = 2
        Text = '00'
      end
      object ed_indice_sangria: TEdit
        Left = 712
        Top = 16
        Width = 25
        Height = 19
        MaxLength = 40
        TabOrder = 3
        Text = '00'
      end
    end
  end
  object GroupBox8: TGroupBox
    Left = 630
    Top = 264
    Width = 149
    Height = 97
    Caption = 'Ramo de Atividade'
    TabOrder = 7
    object rb_varejo: TRadioButton
      Left = 8
      Top = 12
      Width = 113
      Height = 17
      Caption = 'Varejo'
      Checked = True
      TabOrder = 0
      TabStop = True
    end
    object rb_auto: TRadioButton
      Left = 8
      Top = 28
      Width = 113
      Height = 17
      Caption = 'Auto Pe'#231'as'
      TabOrder = 1
    end
    object rb_posto: TRadioButton
      Left = 8
      Top = 44
      Width = 113
      Height = 17
      Caption = 'Posto Comb.'
      TabOrder = 2
    end
    object rb_restaurante: TRadioButton
      Left = 8
      Top = 60
      Width = 113
      Height = 17
      Caption = 'Restaurante'
      TabOrder = 3
    end
  end
  object conexao: TIBCConnection
    Database = 'C:\DataSAC\paf\Dat\DATPDV.FDB'
    ClientLibrary = 'fbclient.dll'
    Username = 'SYSDBA'
    Password = 'masterkey'
    Server = 'localhost'
    LoginPrompt = False
    Left = 389
    Top = 16
  end
  object qrpaf: TIBCQuery
    Connection = conexao
    Left = 421
    Top = 16
  end
end
