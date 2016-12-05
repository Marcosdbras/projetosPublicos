object frmloginecf: Tfrmloginecf
  Left = 340
  Top = 305
  Width = 347
  Height = 170
  BorderIcons = [biSystemMenu]
  Caption = 'Login'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 36
    Width = 26
    Height = 13
    Caption = 'Login'
  end
  object Label2: TLabel
    Left = 32
    Top = 76
    Width = 31
    Height = 13
    Caption = 'Senha'
  end
  object spdlogin: TSpeedButton
    Left = 296
    Top = 8
    Width = 33
    Height = 33
    Flat = True
    OnClick = spdloginClick
  end
  object SpeedButton2: TSpeedButton
    Left = 296
    Top = 48
    Width = 33
    Height = 33
    Flat = True
    OnClick = SpeedButton2Click
  end
  object cbxlogin: TEdit
    Left = 104
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'cbxlogin'
    OnKeyPress = cbxloginKeyPress
  end
  object edisenha: TEdit
    Left = 104
    Top = 72
    Width = 121
    Height = 21
    PasswordChar = '*'
    TabOrder = 1
    Text = 'edisenha'
    OnKeyPress = edisenhaKeyPress
  end
  object MainMenu1: TMainMenu
    Left = 256
    Top = 32
    object Cadastro1: TMenuItem
      Caption = 'Cadastro'
      Visible = False
      object Clientes1: TMenuItem
        Tag = 11
        Caption = 'Clientes'
      end
      object Fornecedores1: TMenuItem
        Tag = 10
        Caption = 'Fornecedores'
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Produtos1: TMenuItem
        Tag = 6
        Caption = 'Produtos'
      end
      object Uusrios1: TMenuItem
        Tag = 7
        Caption = 'Usu'#225'rios'
      end
    end
    object Movimento1: TMenuItem
      Caption = 'Movimento'
      Visible = False
      object EntradadeMercadoria1: TMenuItem
        Tag = 9
        Caption = 'Entrada de Mercadoria'
      end
      object InformaesdoSYSTCOM1: TMenuItem
        Caption = 'Informa'#231#245'es do SYSTCOM'
        object VendasPeridicas1: TMenuItem
          Tag = 1
          Caption = 'Produtos Vendidos'
        end
        object ArquivoLiquidado1: TMenuItem
          Tag = 2
          Caption = 'Registro Transferido'
        end
      end
    end
    object Financeiro1: TMenuItem
      Caption = 'Financeiro'
      Visible = False
      object Contas1: TMenuItem
        Caption = 'Classe de Contas'
        object Principal1: TMenuItem
          Tag = 14
          Caption = '- Principal'
        end
        object Secundria1: TMenuItem
          Tag = 15
          Caption = '- Secund'#225'ria'
        end
      end
      object Pagas1: TMenuItem
        Tag = 12
        Caption = 'Contas a Pagar / Pagas'
      end
      object Recebidas1: TMenuItem
        Tag = 13
        Caption = 'Contas a receber / Recebidas'
      end
    end
    object Utilitrios1: TMenuItem
      Caption = 'Utilit'#225'rios'
      Visible = False
      object ApagaDados1: TMenuItem
        Caption = 'Transferir Informa'#231#245'es'
        object DeSYSTCOMparaAuxiliar1: TMenuItem
          Tag = 3
          Caption = 'De SYSTCOM para Auxiliar'
        end
        object DeAuxiliarparaAplicativos1: TMenuItem
          Tag = 16
          Caption = 'De Auxiliar para Aplicativos'
        end
        object CopiaEstoque1: TMenuItem
          Caption = 'Copia Estoque'
        end
      end
    end
    object Configurar1: TMenuItem
      Caption = 'Configurar'
      Visible = False
      object BancoAuxiliarSYSTCOM1: TMenuItem
        Tag = 8
        Caption = 'Banco Auxiliar SYSTCOM'
      end
      object Indice1: TMenuItem
        Tag = 4
        Caption = 'Indice de Dados'
      end
      object InfdaEmpresa1: TMenuItem
        Tag = 5
        Caption = 'Inf. da Empresa'
      end
    end
    object Outros1: TMenuItem
      Caption = 'Outros'
      Visible = False
      object Help1: TMenuItem
        Caption = 'Help'
      end
      object Sair1: TMenuItem
        Caption = 'Sai&r'
      end
    end
  end
end
