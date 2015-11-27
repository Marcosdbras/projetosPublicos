object frmConfig: TfrmConfig
  Left = 224
  Top = 95
  Width = 455
  Height = 496
  Caption = 'Configura'#231#245'es Gerais'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 16
    Top = 16
    Width = 409
    Height = 153
    Caption = 'Formas de Pagametos no ECF'
    TabOrder = 0
    object Label1: TLabel
      Left = 9
      Top = 25
      Width = 43
      Height = 13
      Caption = 'Dinheiro:'
    end
    object Label2: TLabel
      Left = 9
      Top = 49
      Width = 41
      Height = 13
      Caption = 'Cheque:'
    end
    object Label3: TLabel
      Left = 9
      Top = 73
      Width = 37
      Height = 13
      Caption = 'Cart'#227'o:'
    end
    object Label4: TLabel
      Left = 9
      Top = 97
      Width = 47
      Height = 13
      Caption = 'Credi'#225'rio:'
    end
    object Label6: TLabel
      Left = 8
      Top = 121
      Width = 49
      Height = 13
      Caption = 'Conv'#234'nio:'
    end
    object DBEdit1: TDBEdit
      Left = 64
      Top = 21
      Width = 334
      Height = 21
      DataField = 'FORMA_DINHEIRO'
      DataSource = dsconfig
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 64
      Top = 45
      Width = 334
      Height = 21
      DataField = 'FORMA_CHEQUE'
      DataSource = dsconfig
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 64
      Top = 69
      Width = 334
      Height = 21
      DataField = 'FORMA_CARTAO'
      DataSource = dsconfig
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 64
      Top = 93
      Width = 334
      Height = 21
      DataField = 'FORMA_CREDIARIO'
      DataSource = dsconfig
      TabOrder = 3
    end
    object DBEdit6: TDBEdit
      Left = 64
      Top = 117
      Width = 334
      Height = 21
      DataField = 'FORMA_CONVENIO'
      DataSource = dsconfig
      TabOrder = 4
    end
  end
  object GroupBox2: TGroupBox
    Left = 16
    Top = 177
    Width = 241
    Height = 136
    Caption = 'Outras'
    TabOrder = 1
    object DBCheckBox1: TDBCheckBox
      Left = 8
      Top = 32
      Width = 223
      Height = 17
      Caption = 'Informar o Consumidor no in'#237'cio da venda'
      DataField = 'NF_PAULISTA'
      DataSource = dsconfig
      TabOrder = 1
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
    object DBCheckBox2: TDBCheckBox
      Left = 8
      Top = 48
      Width = 223
      Height = 17
      Caption = 'Alterar Pre'#231'o Unit'#225'rio'
      DataField = 'MUDA_UNITARIO'
      DataSource = dsconfig
      TabOrder = 2
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
    object DBCheckBox3: TDBCheckBox
      Left = 8
      Top = 64
      Width = 223
      Height = 17
      Caption = 'Alterar Quantidade'
      DataField = 'MUDA_QTDE'
      DataSource = dsconfig
      TabOrder = 3
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
    object DBCheckBox4: TDBCheckBox
      Left = 8
      Top = 80
      Width = 223
      Height = 17
      Caption = 'Alterar Total'
      DataField = 'MUDA_TOTAL'
      DataSource = dsconfig
      TabOrder = 4
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
    object DBCheckBox8: TDBCheckBox
      Left = 8
      Top = 96
      Width = 223
      Height = 17
      Caption = 'Imprime comprovante de Credi'#225'rio'
      DataField = 'COMPROVANTE_CREDIARIO'
      DataSource = dsconfig
      TabOrder = 5
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
    object DBCheckBox9: TDBCheckBox
      Left = 8
      Top = 112
      Width = 223
      Height = 17
      Caption = 'Imprime Produtos no Comprovante'
      DataField = 'COMPROVANTE_CREDIARIO_PRODUTO'
      DataSource = dsconfig
      TabOrder = 6
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
    object DBCheckBox10: TDBCheckBox
      Left = 8
      Top = 16
      Width = 223
      Height = 17
      Caption = 'Dados Consumidor ao finalizar a venda'
      DataField = 'DADOSCONSUMIDOR'
      DataSource = dsconfig
      TabOrder = 0
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
  end
  object GroupBox3: TGroupBox
    Left = 264
    Top = 178
    Width = 161
    Height = 73
    Caption = 'TEF'
    TabOrder = 2
    object DBCheckBox5: TDBCheckBox
      Left = 8
      Top = 16
      Width = 140
      Height = 17
      Caption = 'Visanet/Redecard/Amex'
      DataField = 'USA_TEF'
      DataSource = dsconfig
      TabOrder = 0
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
    object DBCheckBox6: TDBCheckBox
      Left = 8
      Top = 32
      Width = 140
      Height = 17
      Caption = 'Tecban'
      DataField = 'USA_TEF_TECBAN'
      DataSource = dsconfig
      TabOrder = 1
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
    object DBCheckBox7: TDBCheckBox
      Left = 8
      Top = 48
      Width = 140
      Height = 17
      Caption = 'Hipercard'
      DataField = 'USA_TEF_HIPERCARD'
      DataSource = dsconfig
      TabOrder = 2
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 428
    Width = 447
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 3
    object BitBtn1: TBitBtn
      Left = 159
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Gravar'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 239
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 1
      OnClick = BitBtn2Click
    end
  end
  object GroupBox4: TGroupBox
    Left = 264
    Top = 251
    Width = 161
    Height = 63
    Caption = 'Vendedor'
    TabOrder = 4
    object chkVendedor: TCheckBox
      Left = 8
      Top = 24
      Width = 145
      Height = 25
      Caption = 'Informar Vendedor no Fechamento da Venda'
      TabOrder = 0
      WordWrap = True
    end
  end
  object GroupBox5: TGroupBox
    Left = 16
    Top = 374
    Width = 409
    Height = 49
    Caption = 'Avan'#231'o do papel'
    TabOrder = 5
    object Label5: TLabel
      Left = 35
      Top = 22
      Width = 34
      Height = 13
      Caption = 'Linhas:'
    end
    object DBEdit5: TDBEdit
      Left = 76
      Top = 20
      Width = 33
      Height = 21
      DataField = 'AVANCO'
      DataSource = dsconfig
      TabOrder = 0
    end
  end
  object DBRadioGroup1: TDBRadioGroup
    Left = 264
    Top = 321
    Width = 161
    Height = 49
    Caption = 'Impressora'
    DataField = 'COLUNAS'
    DataSource = dsconfig
    Items.Strings = (
      '40 Colunas'
      '35 Colunas')
    TabOrder = 6
    Values.Strings = (
      '0'
      '1')
  end
  object GroupBox6: TGroupBox
    Left = 16
    Top = 320
    Width = 241
    Height = 49
    TabOrder = 7
    object Label7: TLabel
      Left = 8
      Top = 20
      Width = 188
      Height = 13
      Caption = 'Inicio c'#243'digo de barra produto balan'#231'a:'
    end
    object DBEdit7: TDBEdit
      Left = 201
      Top = 18
      Width = 33
      Height = 21
      DataField = 'inicodbal'
      DataSource = dsconfig
      TabOrder = 0
    end
  end
  object qrconfig: TIBCQuery
    Connection = frmModulo.conexao
    SQL.Strings = (
      'select * from config')
    Left = 296
    Top = 80
  end
  object dsconfig: TIBCDataSource
    DataSet = qrconfig
    Left = 264
    Top = 80
  end
end
