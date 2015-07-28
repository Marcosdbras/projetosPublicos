object FrmBaixaConta: TFrmBaixaConta
  Left = 189
  Top = 99
  Width = 835
  Height = 639
  Caption = 'Baixa conta'
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 827
    Height = 41
    Align = alTop
    TabOrder = 0
    object BtnCancelar: TBitBtn
      Left = 168
      Top = 8
      Width = 75
      Height = 25
      Caption = 'C&ancelar'
      TabOrder = 1
      OnClick = BtnCancelarClick
      NumGlyphs = 3
    end
    object BtnConfirmar: TBitBtn
      Left = 64
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Confirmar'
      TabOrder = 0
      OnClick = BtnConfirmarClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 827
    Height = 529
    Align = alClient
    TabOrder = 1
    object Label1: TLabel
      Left = 40
      Top = 168
      Width = 68
      Height = 13
      Caption = 'Valor recebido'
    end
    object EdInfo3: TEdit
      Left = 40
      Top = 104
      Width = 204
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 4
      Text = 'DIGITE O TEXTO PARA PESQUISA'
      OnClick = EdInfo3Enter
      OnEnter = EdInfo3Enter
    end
    object CBXCampo1: TComboBox
      Left = 296
      Top = 24
      Width = 193
      Height = 21
      ItemHeight = 13
      TabOrder = 1
      Text = 'Selecione o campo para pesquisa'
      Items.Strings = (
        'Codigo'
        'Nome do Aluno'
        'Data de Vencimento'
        'Data de emiss'#227'o'
        'Tipo de conta'
        'Valor')
    end
    object CBXCampo2: TComboBox
      Left = 296
      Top = 64
      Width = 193
      Height = 21
      ItemHeight = 13
      TabOrder = 3
      Text = 'Selecione o campo para pesquisa'
      Items.Strings = (
        'Codigo'
        'Nome do Aluno'
        'Data de Vencimento'
        'Data de emiss'#227'o'
        'Tipo de conta'
        'Valor')
    end
    object CBXCampo3: TComboBox
      Left = 296
      Top = 104
      Width = 193
      Height = 21
      ItemHeight = 13
      TabOrder = 5
      Text = 'Selecione o campo para pesquisa'
      Items.Strings = (
        'Codigo'
        'Nome do Aluno'
        'Data de Vencimento'
        'Data de emiss'#227'o'
        'Tipo de conta'
        'Valor')
    end
    object EdInfo1: TEdit
      Left = 40
      Top = 24
      Width = 204
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
      Text = 'DIGITE O TEXTO PARA PESQUISA'
      OnClick = EdInfo1Enter
      OnEnter = EdInfo1Enter
    end
    object EdInfo2: TEdit
      Left = 40
      Top = 64
      Width = 204
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 2
      Text = 'DIGITE O TEXTO PARA PESQUISA'
      OnClick = EdInfo2Enter
      OnEnter = EdInfo2Enter
    end
    object RGPFormaPgto: TRadioGroup
      Left = 40
      Top = 216
      Width = 185
      Height = 105
      Caption = 'Forma de pagamento'
      Columns = 2
      Items.Strings = (
        'Cart'#227'o'
        'Dinheiro'
        'Boleto'
        'Cheque')
      TabOrder = 6
      OnClick = RGPFormaPgtoClick
      OnExit = RGPFormaPgtoClick
    end
    object EdValor: TEdit
      Left = 128
      Top = 160
      Width = 121
      Height = 21
      TabOrder = 7
    end
    object RGPCartao: TRadioGroup
      Left = 240
      Top = 216
      Width = 73
      Height = 57
      Caption = 'Cart'#227'o'
      Items.Strings = (
        'Cr'#233'dito'
        'D'#233'bito')
      TabOrder = 8
      Visible = False
      OnClick = RGPCartaoClick
    end
    object EdVezes: TEdit
      Left = 328
      Top = 232
      Width = 121
      Height = 21
      TabOrder = 9
      Visible = False
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 570
    Width = 827
    Height = 41
    Align = alBottom
    TabOrder = 2
  end
end
