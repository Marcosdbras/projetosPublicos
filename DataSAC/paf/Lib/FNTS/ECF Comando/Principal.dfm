object frmPrincipal: TfrmPrincipal
  Left = 122
  Top = 110
  Width = 807
  Height = 470
  Caption = 'ECF - Suite de Comandos'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 64
    Width = 337
    Height = 337
    Caption = 'Retorno do ECF'
    TabOrder = 0
    object Memo1: TMemo
      Left = 2
      Top = 15
      Width = 333
      Height = 320
      Align = alClient
      BorderStyle = bsNone
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 8
    Width = 161
    Height = 49
    Caption = 'ECF'
    TabOrder = 1
    object cb_ecf: TComboBox
      Left = 7
      Top = 17
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 0
      Items.Strings = (
        'NENHUM'
        'BEMATECH'
        'DARUMA'
        'SWEDA'
        'ELGIN'
        'LOGGER II')
    end
  end
  object GroupBox3: TGroupBox
    Left = 176
    Top = 8
    Width = 161
    Height = 49
    Caption = 'Porta'
    TabOrder = 2
    object ComboBox2: TComboBox
      Left = 7
      Top = 17
      Width = 145
      Height = 21
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 0
      Items.Strings = (
        ''
        'COM1'
        'COM2'
        'COM3'
        'COM4'
        'COM5'
        'COM6'
        'COM7'
        'COM8'
        'COM9')
    end
  end
  object Button1: TButton
    Left = 672
    Top = 376
    Width = 107
    Height = 25
    Caption = 'Ativar Daruma'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 672
    Top = 344
    Width = 105
    Height = 25
    Caption = 'Desativar Daruma'
    TabOrder = 4
    OnClick = Button2Click
  end
  object MainMenu1: TMainMenu
    Left = 488
    Top = 16
    object Inicializao1: TMenuItem
      Caption = 'Inicializa'#231#227'o'
      object AbreSerial1: TMenuItem
        Caption = 'Abre Serial'
        OnClick = AbreSerial1Click
      end
      object FechaSerial1: TMenuItem
        Caption = 'Fecha Serial'
        OnClick = FechaSerial1Click
      end
    end
    object CupomFiscal1: TMenuItem
      Caption = 'Cupom Fiscal'
      object Abrir1: TMenuItem
        Caption = 'Abrir'
        OnClick = Abrir1Click
      end
      object Vender1: TMenuItem
        Caption = 'Vender'
        OnClick = Vender1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object IniciarFechamento1: TMenuItem
        Caption = 'Iniciar Fechamento'
        OnClick = IniciarFechamento1Click
      end
      object FormadePagametn1: TMenuItem
        Caption = 'Forma de Pagamento'
        OnClick = FormadePagametn1Click
      end
      object erminarFechamento1: TMenuItem
        Caption = 'Terminar Fechamento'
        OnClick = erminarFechamento1Click
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object CancelarItem1: TMenuItem
        Caption = 'Cancelar Item'
        OnClick = CancelarItem1Click
      end
      object CancelarCupom1: TMenuItem
        Caption = 'Cancelar Cupom'
        OnClick = CancelarCupom1Click
      end
    end
    object NoFiscal1: TMenuItem
      Caption = 'N'#227'o Fiscal'
      object AbreGerencial1: TMenuItem
        Caption = 'Abre Gerencial'
        OnClick = AbreGerencial1Click
      end
      object UsaGerencial1: TMenuItem
        Caption = 'Usa Gerencial'
        OnClick = UsaGerencial1Click
      end
      object FechaGerencial1: TMenuItem
        Caption = 'Fecha Gerencial'
        OnClick = FechaGerencial1Click
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object AbreCNFV1: TMenuItem
        Caption = 'Abre CNFV'
        OnClick = AbreCNFV1Click
      end
      object UsaCNFV1: TMenuItem
        Caption = 'Usa CNFV'
        OnClick = UsaCNFV1Click
      end
      object FechaCNFV1: TMenuItem
        Caption = 'Fecha CNFV'
        OnClick = FechaCNFV1Click
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object Sangria1: TMenuItem
        Caption = 'Sangria'
        OnClick = Sangria1Click
      end
      object Suprimento1: TMenuItem
        Caption = 'Suprimento'
        OnClick = Suprimento1Click
      end
      object OutrosRecebimentos1: TMenuItem
        Caption = 'Outros Recebimentos'
        OnClick = OutrosRecebimentos1Click
      end
    end
    object Relatrios1: TMenuItem
      Caption = 'Relat'#243'rios'
      object LeituraX1: TMenuItem
        Caption = 'Leitura X'
        OnClick = LeituraX1Click
      end
      object ReduoZ1: TMenuItem
        Caption = 'Redu'#231#227'o Z'
        OnClick = ReduoZ1Click
      end
      object N5: TMenuItem
        Caption = '-'
      end
      object MemriaFiscalSinttica1: TMenuItem
        Caption = 'Mem'#243'ria Fiscal Sint'#233'tica'
        OnClick = MemriaFiscalSinttica1Click
      end
      object MemriaFiscalAnaltica1: TMenuItem
        Caption = 'Mem'#243'ria Fiscal Anal'#237'tica'
        OnClick = MemriaFiscalAnaltica1Click
      end
    end
    object Informaes1: TMenuItem
      Caption = 'Informa'#231#245'es'
      object ECFLigado1: TMenuItem
        Caption = 'ECF Ligado'
        OnClick = ECFLigado1Click
      end
      object SerialdoECF1: TMenuItem
        Caption = 'N'#250'mero de S'#233'rie'
        OnClick = SerialdoECF1Click
      end
      object NmerodoCaixa1: TMenuItem
        Caption = 'N'#250'mero do Caixa'
        OnClick = NmerodoCaixa1Click
      end
      object NmerodoCupom1: TMenuItem
        Caption = 'N'#250'mero do Cupom'
        OnClick = NmerodoCupom1Click
      end
      object DataeHora1: TMenuItem
        Caption = 'Data e Hora'
        OnClick = DataeHora1Click
      end
      object DownloadMFD1: TMenuItem
        Caption = 'Download MFD'
        OnClick = DownloadMFD1Click
      end
      object N6: TMenuItem
        Caption = '-'
      end
      object Registro60Mestre1: TMenuItem
        Caption = 'Registro 60 Mestre'
        OnClick = Registro60Mestre1Click
      end
      object Registro60Analtico1: TMenuItem
        Caption = 'Registro 60 Anal'#237'tico'
        OnClick = Registro60Analtico1Click
      end
      object N7: TMenuItem
        Caption = '-'
      end
      object F1: TMenuItem
        Caption = 'Formas de Pagamento'
        OnClick = F1Click
      end
      object N9: TMenuItem
        Caption = '-'
      end
      object Marca1: TMenuItem
        Caption = 'Marca ECF'
        OnClick = Marca1Click
      end
      object ModeloECF1: TMenuItem
        Caption = 'Modelo ECF'
        OnClick = ModeloECF1Click
      end
      object ipoECF1: TMenuItem
        Caption = 'Tipo ECF'
        OnClick = ipoECF1Click
      end
      object MFAdicional1: TMenuItem
        Caption = 'MF Adicional'
        OnClick = MFAdicional1Click
      end
      object VersaoSoftwareBasico1: TMenuItem
        Caption = '-'
      end
      object VersaoSoftwareBasico2: TMenuItem
        Caption = 'Versao Software Basico'
        OnClick = VersaoSoftwareBasico2Click
      end
      object DataeHora2: TMenuItem
        Caption = 'Data e Hora instala'#231#227'o do Software B'#225'sico'
        OnClick = DataeHora2Click
      end
      object N10: TMenuItem
        Caption = '-'
      end
      object ReduoZ2: TMenuItem
        Caption = 'Redu'#231#227'o Z'
        object ContadorCRZ1: TMenuItem
          Caption = 'Contador CRZ'
          OnClick = ContadorCRZ1Click
        end
        object ContadorCOO1: TMenuItem
          Caption = 'Contador COO'
          OnClick = ContadorCOO1Click
        end
        object ContadorCRO1: TMenuItem
          Caption = 'Contador CRO'
          OnClick = ContadorCRO1Click
        end
        object DataMovimento1: TMenuItem
          Caption = 'Data Movimento'
          OnClick = DataMovimento1Click
        end
        object DatadeEmisso1: TMenuItem
          Caption = 'Data e Hora de Emiss'#227'o'
          OnClick = DatadeEmisso1Click
        end
        object VendaBrutaDiria1: TMenuItem
          Caption = 'Venda Bruta Di'#225'ria'
          OnClick = VendaBrutaDiria1Click
        end
        object N11: TMenuItem
          Caption = '-'
        end
        object otalizadoresParciais1: TMenuItem
          Caption = 'Totalizadores Parciais'
          OnClick = otalizadoresParciais1Click
        end
      end
    end
    object Programao1: TMenuItem
      Caption = 'Programa'#231#227'o'
      object HorriodeVero1: TMenuItem
        Caption = 'Hor'#225'rio de Ver'#227'o'
        OnClick = HorriodeVero1Click
      end
      object Alquota1: TMenuItem
        Caption = 'Al'#237'quota'
        OnClick = Alquota1Click
      end
      object otalizadorParcial1: TMenuItem
        Caption = 'Totalizador Parcial'
        OnClick = otalizadorParcial1Click
      end
      object FormadePagamento1: TMenuItem
        Caption = 'Forma de Pagamento'
        OnClick = FormadePagamento1Click
      end
    end
    object otalizadores1: TMenuItem
      Caption = 'Totalizadores'
      object FormasdePagamento1: TMenuItem
        Caption = 'Formas de Pagamento'
      end
    end
    object Outros1: TMenuItem
      Caption = 'Outros'
      object AbreGaveta1: TMenuItem
        Caption = 'Abre Gaveta'
        OnClick = AbreGaveta1Click
      end
      object StatusdaGaveta1: TMenuItem
        Caption = 'Status da Gaveta'
        OnClick = StatusdaGaveta1Click
      end
      object N8: TMenuItem
        Caption = '-'
      end
      object esteassinaturadigital1: TMenuItem
        Caption = 'Teste assinatura digital'
        OnClick = esteassinaturadigital1Click
      end
    end
    object MENUFISCAL1: TMenuItem
      Caption = 'Menu Fiscal'
      object LX1: TMenuItem
        Caption = 'L&X'
        Hint = 'Emitir Leitura X'
        OnClick = LX1Click
      end
      object LMFC1: TMenuItem
        Caption = 'LMF&C'
        Hint = 'Leitura da mem'#243'ria fiscal completa'
        OnClick = LMFC1Click
      end
      object LMFS1: TMenuItem
        Caption = 'LMF&S'
        Hint = 'Leitura da mem'#243'ria fiscal simplificada'
        OnClick = LMFS1Click
      end
      object EspelhoMFD1: TMenuItem
        Caption = 'Espelho MF&D'
        OnClick = EspelhoMFD1Click
      end
      object ArqMFD1: TMenuItem
        Caption = 'Arq. MFD'
        Hint = 'Arquivo eletr'#244'nico da Mem'#243'ria Fita Detalhe'
        OnClick = ArqMFD1Click
      end
      object abProd1: TMenuItem
        Caption = 'Tab.Prod.'
        OnClick = abProd1Click
      end
      object Estoque1: TMenuItem
        Caption = 'Estoque'
        OnClick = Estoque1Click
      end
    end
    object EF1: TMenuItem
      Caption = 'TEF'
      object ModoAdministrativo1: TMenuItem
        Caption = 'Modo Administrativo'
        object VisanetRedecardTecban1: TMenuItem
          Caption = 'Visanet / Redecard / Amex'
        end
        object ecban1: TMenuItem
          Caption = 'Tecban'
        end
      end
    end
  end
  object conexao: TIBCConnection
    Database = 'C:\siscom\paf\Dat\DATPDV.FDB'
    ClientLibrary = 'gds32.dll'
    Username = 'SYSDBA'
    Password = 'masterkey'
    Server = 'localhost'
    LoginPrompt = False
    Left = 504
    Top = 144
  end
  object query: TIBCQuery
    Connection = conexao
    Left = 536
    Top = 144
  end
end
