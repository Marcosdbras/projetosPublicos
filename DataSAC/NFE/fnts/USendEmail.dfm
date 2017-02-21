object FrmSendEmail: TFrmSendEmail
  Left = 439
  Top = 187
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Email'
  ClientHeight = 427
  ClientWidth = 495
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label4: TLabel
    Left = 16
    Top = 99
    Width = 42
    Height = 13
    Caption = 'C.C.O.:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 495
    Height = 408
    Align = alClient
    BevelInner = bvLowered
    BevelOuter = bvNone
    BevelWidth = 2
    Color = 16710131
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 21
      Width = 31
      Height = 13
      Caption = 'Para:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 16
      Top = 43
      Width = 25
      Height = 13
      Caption = 'C.C:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 16
      Top = 67
      Width = 42
      Height = 13
      Caption = 'C.C.O.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 16
      Top = 99
      Width = 50
      Height = 13
      Caption = 'Assunto:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 16
      Top = 131
      Width = 62
      Height = 13
      Caption = 'Prioridade:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 16
      Top = 243
      Width = 65
      Height = 13
      Caption = 'Mensagem:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object EdtPara: TEdit
      Left = 96
      Top = 16
      Width = 361
      Height = 21
      Color = clSilver
      TabOrder = 0
    end
    object EdtCC: TEdit
      Left = 96
      Top = 40
      Width = 361
      Height = 21
      Color = clSilver
      TabOrder = 1
    end
    object EdtCCO: TEdit
      Left = 96
      Top = 64
      Width = 361
      Height = 21
      Color = clSilver
      TabOrder = 2
    end
    object ComboPrioridade: TComboBox
      Left = 96
      Top = 125
      Width = 121
      Height = 21
      Style = csDropDownList
      Color = clSilver
      ItemHeight = 13
      ItemIndex = 1
      TabOrder = 4
      Text = 'Normal'
      Items.Strings = (
        'Alta'
        'Normal'
        'Baixa')
    end
    object CheckLeitura: TCheckBox
      Left = 232
      Top = 128
      Width = 225
      Height = 17
      Caption = 'Solicito confirma'#231#227'o de Leitura.'
      TabOrder = 5
    end
    object BtnAnexar: TButton
      Left = 8
      Top = 172
      Width = 73
      Height = 25
      Caption = '&Anexar'
      TabOrder = 8
      TabStop = False
      OnClick = BtnAnexarClick
    end
    object MemoMensagem: TMemo
      Left = 96
      Top = 240
      Width = 361
      Height = 121
      Color = clSilver
      Lines.Strings = (
        '')
      TabOrder = 7
    end
    object BtnEnviar: TButton
      Left = 96
      Top = 376
      Width = 169
      Height = 25
      Caption = 'Enviar'
      TabOrder = 9
      OnClick = BtnEnviarClick
    end
    object BtnCancelar: TButton
      Left = 288
      Top = 375
      Width = 169
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 10
      OnClick = BtnCancelarClick
    end
    object LbAnexos: TListBox
      Left = 96
      Top = 168
      Width = 361
      Height = 57
      Color = clSilver
      ItemHeight = 13
      TabOrder = 6
    end
    object EdtAssunto: TEdit
      Left = 96
      Top = 96
      Width = 361
      Height = 21
      Color = clSilver
      TabOrder = 3
    end
    object BtnRemover: TButton
      Left = 8
      Top = 200
      Width = 73
      Height = 25
      Caption = '&Remover'
      TabOrder = 11
      TabStop = False
      OnClick = BtnRemoverClick
    end
    object Edit1: TEdit
      Left = 96
      Top = 360
      Width = 361
      Height = 21
      Color = clSilver
      TabOrder = 12
      Visible = False
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 408
    Width = 495
    Height = 19
    Panels = <>
  end
  object OpenDialog1: TOpenDialog
    Left = 352
    Top = 272
  end
  object ACBrNFe1: TACBrNFe
    Configuracoes.Geral.PathSalvar = 'C:\Arquivos de programas\Borland\Delphi7\Bin\'
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.AguardarConsultaRet = 0
    Configuracoes.WebServices.IntervaloTentativas = 0
    Configuracoes.WebServices.AjustaAguardaConsultaRet = False
    Left = 432
    Top = 128
  end
end
