object FrmPesqCalendario: TFrmPesqCalendario
  Left = 1
  Top = 104
  Width = 1017
  Height = 635
  BorderIcons = []
  Caption = 'FrmPesqCalendario'
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
    Width = 1009
    Height = 41
    Align = alTop
    TabOrder = 0
    object BtnInserir: TBitBtn
      Left = 64
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Inserir'
      TabOrder = 0
      OnClick = BtnInserirClick
    end
    object BtnExcluir: TBitBtn
      Left = 152
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Excluir'
      TabOrder = 1
      OnClick = BtnExcluirClick
    end
    object BtnConfirmar: TBitBtn
      Left = 256
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Confirmar'
      TabOrder = 2
      OnClick = BtnConfirmarClick
    end
    object BtnCancelar: TBitBtn
      Left = 352
      Top = 8
      Width = 75
      Height = 25
      Caption = 'C&ancelar'
      TabOrder = 3
      OnClick = BtnCancelarClick
    end
    object BtnImprimir: TBitBtn
      Left = 520
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Imprimir'
      TabOrder = 4
      OnClick = BtnImprimirClick
    end
    object BtnSair: TBitBtn
      Left = 912
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Sair'
      TabOrder = 5
      OnClick = BtnSairClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 96
    Width = 1009
    Height = 511
    Align = alBottom
    TabOrder = 1
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 1007
      Height = 509
      ActivePage = TabSheet3
      Align = alClient
      TabOrder = 0
      object TabSheet3: TTabSheet
        Caption = 'Dados principais e legenda'
        ImageIndex = 2
        object Label2: TLabel
          Left = 48
          Top = 56
          Width = 27
          Height = 13
          Caption = 'Curso'
        end
        object Label3: TLabel
          Left = 48
          Top = 120
          Width = 19
          Height = 13
          Caption = 'Ano'
        end
        object Label4: TLabel
          Left = 40
          Top = 208
          Width = 20
          Height = 13
          Caption = 'M'#234's'
        end
        object Label5: TLabel
          Left = 22
          Top = 356
          Width = 45
          Height = 13
          Caption = 'Legenda:'
        end
        object Shape1: TShape
          Left = 22
          Top = 373
          Width = 404
          Height = 68
        end
        object Label6: TLabel
          Left = 27
          Top = 375
          Width = 67
          Height = 13
          Caption = 'DL - Dia letivo'
        end
        object Label7: TLabel
          Left = 27
          Top = 392
          Width = 100
          Height = 13
          Caption = 'As - Aulas suspensas'
        end
        object Label8: TLabel
          Left = 27
          Top = 409
          Width = 56
          Height = 13
          Caption = 'Fe - Feriado'
        end
        object Label9: TLabel
          Left = 27
          Top = 426
          Width = 50
          Height = 13
          Caption = 'FE - F'#233'rias'
        end
        object Label10: TLabel
          Left = 140
          Top = 392
          Width = 135
          Height = 13
          Caption = 'RPed - Reuni'#227'o pedag'#243'gica'
        end
        object Label11: TLabel
          Left = 140
          Top = 409
          Width = 107
          Height = 13
          Caption = 'RPa - Reuni'#227'o de pais'
        end
        object Label12: TLabel
          Left = 140
          Top = 426
          Width = 148
          Height = 13
          Caption = 'Cc - Conselho de classe e s'#233'rie'
        end
        object Label13: TLabel
          Left = 140
          Top = 375
          Width = 158
          Height = 13
          Caption = 'APE - Avalia'#231#227'o do plano escolar'
        end
        object Label14: TLabel
          Left = 322
          Top = 375
          Width = 65
          Height = 13
          Caption = 'Re - Recesso'
        end
        object Label40: TLabel
          Left = 322
          Top = 392
          Width = 86
          Height = 13
          Caption = 'PL - Planejamento'
        end
        object Label41: TLabel
          Left = 322
          Top = 409
          Width = 53
          Height = 13
          Caption = 'S - Sabado'
        end
        object Label42: TLabel
          Left = 322
          Top = 426
          Width = 59
          Height = 13
          Caption = 'D - Domingo'
        end
        object DBEdit1: TDBEdit
          Left = 56
          Top = 160
          Width = 121
          Height = 21
          DataField = 'ANO'
          DataSource = FrmDados.DTS_Calendario
          TabOrder = 0
          OnEnter = DBLookupComboBox1Enter
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 56
          Top = 80
          Width = 145
          Height = 21
          DataField = 'CODCURSO'
          DataSource = FrmDados.DTS_Calendario
          KeyField = 'CODIGO'
          ListField = 'NOME'
          ListSource = FrmDados.DTS_Curso
          TabOrder = 1
          OnEnter = DBLookupComboBox1Enter
        end
        object DBComboBox1: TDBComboBox
          Left = 56
          Top = 248
          Width = 145
          Height = 21
          DataField = 'MES'
          DataSource = FrmDados.DTS_Calendario
          ItemHeight = 13
          Items.Strings = (
            'Janeiro'
            'Fevereiro'
            'Mar'#231'o'
            'Abril'
            'Maio'
            'Junho'
            'Julho'
            'Agosto'
            'Setembro'
            'Outubro'
            'Novembro'
            'Dezembro')
          TabOrder = 2
          OnEnter = DBLookupComboBox1Enter
        end
      end
      object TabSheet1: TTabSheet
        Caption = '1'#170' Metade do m'#234's'
        object DBRadioGroup1: TDBRadioGroup
          Left = 5
          Top = 8
          Width = 245
          Height = 98
          Caption = '1'#186' Dia'
          Columns = 3
          DataField = 'N1'
          DataSource = FrmDados.DTS_Calendario
          Items.Strings = (
            'DL'
            'As'
            'Fe'
            'FE'
            'Re'
            'RPed'
            'RPa'
            'Cc'
            'APE'
            'PL'
            'S'
            'D'
            'DL,RPed,Cc'
            'DL,RPa'
            'S,DL')
          TabOrder = 0
          Values.Strings = (
            'DL'
            'As'
            'Fe'
            'FE'
            'Re'
            'RPed'
            'RPa'
            'Cc'
            'APE'
            'PL'
            'S'
            'D'
            'DL,RPed,Cc'
            'DL,RPa'
            'S,DL')
          OnEnter = DBLookupComboBox1Enter
        end
        object DBRadioGroup2: TDBRadioGroup
          Left = 253
          Top = 8
          Width = 245
          Height = 98
          Caption = '2'#186' Dia'
          Columns = 3
          DataField = 'N2'
          DataSource = FrmDados.DTS_Calendario
          Items.Strings = (
            'DL'
            'As'
            'Fe'
            'FE'
            'Re'
            'RPed'
            'RPa'
            'Cc'
            'APE'
            'PL'
            'S'
            'D'
            'DL,RPed,Cc'
            'DL,RPa'
            'S,DL')
          TabOrder = 1
          Values.Strings = (
            'DL'
            'As'
            'Fe'
            'FE'
            'Re'
            'RPed'
            'RPa'
            'Cc'
            'APE'
            'PL'
            'S'
            'D'
            'DL,RPed,Cc'
            'DL,RPa'
            'S,DL')
          OnEnter = DBLookupComboBox1Enter
        end
        object DBRadioGroup3: TDBRadioGroup
          Left = 501
          Top = 8
          Width = 245
          Height = 98
          Caption = '3'#186' Dia'
          Columns = 3
          DataField = 'N3'
          DataSource = FrmDados.DTS_Calendario
          Items.Strings = (
            'DL'
            'As'
            'Fe'
            'FE'
            'Re'
            'RPed'
            'RPa'
            'Cc'
            'APE'
            'PL'
            'S'
            'D'
            'DL,RPed,Cc'
            'DL,RPa'
            'S,DL')
          TabOrder = 2
          Values.Strings = (
            'DL'
            'As'
            'Fe'
            'FE'
            'Re'
            'RPed'
            'RPa'
            'Cc'
            'APE'
            'PL'
            'S'
            'D'
            'DL,RPed,Cc'
            'DL,RPa'
            'S,DL')
          OnEnter = DBLookupComboBox1Enter
        end
        object DBRadioGroup4: TDBRadioGroup
          Left = 749
          Top = 8
          Width = 245
          Height = 98
          Caption = '4'#186' Dia'
          Columns = 3
          DataField = 'N4'
          DataSource = FrmDados.DTS_Calendario
          Items.Strings = (
            'DL'
            'As'
            'Fe'
            'FE'
            'Re'
            'RPed'
            'RPa'
            'Cc'
            'APE'
            'PL'
            'S'
            'D'
            'DL,RPed,Cc'
            'DL,RPa'
            'S,DL')
          TabOrder = 3
          Values.Strings = (
            'DL'
            'As'
            'Fe'
            'FE'
            'Re'
            'RPed'
            'RPa'
            'Cc'
            'APE'
            'PL'
            'S'
            'D'
            'DL,RPed,Cc'
            'DL,RPa'
            'S,DL')
          OnEnter = DBLookupComboBox1Enter
        end
        object DBRadioGroup5: TDBRadioGroup
          Left = 5
          Top = 117
          Width = 245
          Height = 98
          Caption = '5'#186' Dia'
          Columns = 3
          DataField = 'N5'
          DataSource = FrmDados.DTS_Calendario
          Items.Strings = (
            'DL'
            'As'
            'Fe'
            'FE'
            'Re'
            'RPed'
            'RPa'
            'Cc'
            'APE'
            'PL'
            'S'
            'D'
            'DL,RPed,Cc'
            'DL,RPa'
            'S,DL')
          TabOrder = 4
          Values.Strings = (
            'DL'
            'As'
            'Fe'
            'FE'
            'Re'
            'RPed'
            'RPa'
            'Cc'
            'APE'
            'PL'
            'S'
            'D'
            'DL,RPed,Cc'
            'DL,RPa'
            'S,DL')
          OnEnter = DBLookupComboBox1Enter
        end
        object DBRadioGroup6: TDBRadioGroup
          Left = 253
          Top = 117
          Width = 245
          Height = 98
          Caption = '6'#186' Dia'
          Columns = 3
          DataField = 'N6'
          DataSource = FrmDados.DTS_Calendario
          Items.Strings = (
            'DL'
            'As'
            'Fe'
            'FE'
            'Re'
            'RPed'
            'RPa'
            'Cc'
            'APE'
            'PL'
            'S'
            'D'
            'DL,RPed,Cc'
            'DL,RPa'
            'S,DL')
          TabOrder = 5
          Values.Strings = (
            'DL'
            'As'
            'Fe'
            'FE'
            'Re'
            'RPed'
            'RPa'
            'Cc'
            'APE'
            'PL'
            'S'
            'D'
            'DL,RPed,Cc'
            'DL,RPa'
            'S,DL')
          OnEnter = DBLookupComboBox1Enter
        end
        object DBRadioGroup7: TDBRadioGroup
          Left = 501
          Top = 117
          Width = 245
          Height = 98
          Caption = '7'#186' Dia'
          Columns = 3
          DataField = 'N7'
          DataSource = FrmDados.DTS_Calendario
          Items.Strings = (
            'DL'
            'As'
            'Fe'
            'FE'
            'Re'
            'RPed'
            'RPa'
            'Cc'
            'APE'
            'PL'
            'S'
            'D'
            'DL,RPed,Cc'
            'DL,RPa'
            'S,DL')
          TabOrder = 6
          Values.Strings = (
            'DL'
            'As'
            'Fe'
            'FE'
            'Re'
            'RPed'
            'RPa'
            'Cc'
            'APE'
            'PL'
            'S'
            'D'
            'DL,RPed,Cc'
            'DL,RPa'
            'S,DL')
          OnEnter = DBLookupComboBox1Enter
        end
        object DBRadioGroup8: TDBRadioGroup
          Left = 749
          Top = 117
          Width = 245
          Height = 98
          Caption = '8'#186' Dia'
          Columns = 3
          DataField = 'N8'
          DataSource = FrmDados.DTS_Calendario
          Items.Strings = (
            'DL'
            'As'
            'Fe'
            'FE'
            'Re'
            'RPed'
            'RPa'
            'Cc'
            'APE'
            'PL'
            'S'
            'D'
            'DL,RPed,Cc'
            'DL,RPa'
            'S,DL')
          TabOrder = 7
          Values.Strings = (
            'DL'
            'As'
            'Fe'
            'FE'
            'Re'
            'RPed'
            'RPa'
            'Cc'
            'APE'
            'PL'
            'S'
            'D'
            'DL,RPed,Cc'
            'DL,RPa'
            'S,DL')
          OnEnter = DBLookupComboBox1Enter
        end
        object DBRadioGroup9: TDBRadioGroup
          Left = 5
          Top = 226
          Width = 245
          Height = 98
          Caption = '9'#186' Dia'
          Columns = 3
          DataField = 'N9'
          DataSource = FrmDados.DTS_Calendario
          Items.Strings = (
            'DL'
            'As'
            'Fe'
            'FE'
            'Re'
            'RPed'
            'RPa'
            'Cc'
            'APE'
            'PL'
            'S'
            'D'
            'DL,RPed,Cc'
            'DL,RPa'
            'S,DL')
          TabOrder = 8
          Values.Strings = (
            'DL'
            'As'
            'Fe'
            'FE'
            'Re'
            'RPed'
            'RPa'
            'Cc'
            'APE'
            'PL'
            'S'
            'D'
            'DL,RPed,Cc'
            'DL,RPa'
            'S,DL')
          OnEnter = DBLookupComboBox1Enter
        end
        object DBRadioGroup10: TDBRadioGroup
          Left = 253
          Top = 226
          Width = 245
          Height = 98
          Caption = '10'#186' Dia'
          Columns = 3
          DataField = 'N10'
          DataSource = FrmDados.DTS_Calendario
          Items.Strings = (
            'DL'
            'As'
            'Fe'
            'FE'
            'Re'
            'RPed'
            'RPa'
            'Cc'
            'APE'
            'PL'
            'S'
            'D'
            'DL,RPed,Cc'
            'DL,RPa'
            'S,DL')
          TabOrder = 9
          Values.Strings = (
            'DL'
            'As'
            'Fe'
            'FE'
            'Re'
            'RPed'
            'RPa'
            'Cc'
            'APE'
            'PL'
            'S'
            'D'
            'DL,RPed,Cc'
            'DL,RPa'
            'S,DL')
          OnEnter = DBLookupComboBox1Enter
        end
        object DBRadioGroup11: TDBRadioGroup
          Left = 501
          Top = 226
          Width = 245
          Height = 98
          Caption = '11'#186' Dia'
          Columns = 3
          DataField = 'N11'
          DataSource = FrmDados.DTS_Calendario
          Items.Strings = (
            'DL'
            'As'
            'Fe'
            'FE'
            'Re'
            'RPed'
            'RPa'
            'Cc'
            'APE'
            'PL'
            'S'
            'D'
            'DL,RPed,Cc'
            'DL,RPa'
            'S,DL')
          TabOrder = 10
          Values.Strings = (
            'DL'
            'As'
            'Fe'
            'FE'
            'Re'
            'RPed'
            'RPa'
            'Cc'
            'APE'
            'PL'
            'S'
            'D'
            'DL,RPed,Cc'
            'DL,RPa'
            'S,DL')
          OnEnter = DBLookupComboBox1Enter
        end
        object DBRadioGroup12: TDBRadioGroup
          Left = 749
          Top = 226
          Width = 245
          Height = 98
          Caption = '12'#186' Dia'
          Columns = 3
          DataField = 'N12'
          DataSource = FrmDados.DTS_Calendario
          Items.Strings = (
            'DL'
            'As'
            'Fe'
            'FE'
            'Re'
            'RPed'
            'RPa'
            'Cc'
            'APE'
            'PL'
            'S'
            'D'
            'DL,RPed,Cc'
            'DL,RPa'
            'S,DL')
          TabOrder = 11
          Values.Strings = (
            'DL'
            'As'
            'Fe'
            'FE'
            'Re'
            'RPed'
            'RPa'
            'Cc'
            'APE'
            'PL'
            'S'
            'D'
            'DL,RPed,Cc'
            'DL,RPa'
            'S,DL')
          OnEnter = DBLookupComboBox1Enter
        end
        object DBRadioGroup13: TDBRadioGroup
          Left = 5
          Top = 336
          Width = 245
          Height = 98
          Caption = '13'#186' Dia'
          Columns = 3
          DataField = 'N13'
          DataSource = FrmDados.DTS_Calendario
          Items.Strings = (
            'DL'
            'As'
            'Fe'
            'FE'
            'Re'
            'RPed'
            'RPa'
            'Cc'
            'APE'
            'PL'
            'S'
            'D'
            'DL,RPed,Cc'
            'DL,RPa'
            'S,DL')
          TabOrder = 12
          Values.Strings = (
            'DL'
            'As'
            'Fe'
            'FE'
            'Re'
            'RPed'
            'RPa'
            'Cc'
            'APE'
            'PL'
            'S'
            'D'
            'DL,RPed,Cc'
            'DL,RPa'
            'S,DL')
          OnEnter = DBLookupComboBox1Enter
        end
        object DBRadioGroup14: TDBRadioGroup
          Left = 253
          Top = 336
          Width = 245
          Height = 98
          Caption = '14'#186' Dia'
          Columns = 3
          DataField = 'N14'
          DataSource = FrmDados.DTS_Calendario
          Items.Strings = (
            'DL'
            'As'
            'Fe'
            'FE'
            'Re'
            'RPed'
            'RPa'
            'Cc'
            'APE'
            'PL'
            'S'
            'D'
            'DL,RPed,Cc'
            'DL,RPa'
            'S,DL')
          TabOrder = 13
          Values.Strings = (
            'DL'
            'As'
            'Fe'
            'FE'
            'Re'
            'RPed'
            'RPa'
            'Cc'
            'APE'
            'PL'
            'S'
            'D'
            'DL,RPed,Cc'
            'DL,RPa'
            'S,DL')
          OnEnter = DBLookupComboBox1Enter
        end
        object DBRadioGroup15: TDBRadioGroup
          Left = 501
          Top = 336
          Width = 245
          Height = 98
          Caption = '15'#186' Dia'
          Columns = 3
          DataField = 'N15'
          DataSource = FrmDados.DTS_Calendario
          Items.Strings = (
            'DL'
            'As'
            'Fe'
            'FE'
            'Re'
            'RPed'
            'RPa'
            'Cc'
            'APE'
            'PL'
            'S'
            'D'
            'DL,RPed,Cc'
            'DL,RPa'
            'S,DL')
          TabOrder = 14
          Values.Strings = (
            'DL'
            'As'
            'Fe'
            'FE'
            'Re'
            'RPed'
            'RPa'
            'Cc'
            'APE'
            'PL'
            'S'
            'D'
            'DL,RPed,Cc'
            'DL,RPa'
            'S,DL')
          OnEnter = DBLookupComboBox1Enter
        end
        object DBRadioGroup16: TDBRadioGroup
          Left = 749
          Top = 336
          Width = 245
          Height = 98
          Caption = '16'#186' Dia'
          Columns = 3
          DataField = 'N16'
          DataSource = FrmDados.DTS_Calendario
          Items.Strings = (
            'DL'
            'As'
            'Fe'
            'FE'
            'Re'
            'RPed'
            'RPa'
            'Cc'
            'APE'
            'PL'
            'S'
            'D'
            'DL,RPed,Cc'
            'DL,RPa'
            'S,DL')
          TabOrder = 15
          Values.Strings = (
            'DL'
            'As'
            'Fe'
            'FE'
            'Re'
            'RPed'
            'RPa'
            'Cc'
            'APE'
            'PL'
            'S'
            'D'
            'DL,RPed,Cc'
            'DL,RPa'
            'S,DL')
          OnEnter = DBLookupComboBox1Enter
        end
      end
      object TabSheet2: TTabSheet
        Caption = '2'#170' Metade do m'#234's'
        ImageIndex = 1
        object DBRadioGroup17: TDBRadioGroup
          Left = 5
          Top = 8
          Width = 245
          Height = 98
          Caption = '17'#186' Dia'
          Columns = 3
          DataField = 'N17'
          DataSource = FrmDados.DTS_Calendario
          Items.Strings = (
            'DL'
            'As'
            'Fe'
            'FE'
            'Re'
            'RPed'
            'RPa'
            'Cc'
            'APE'
            'PL'
            'S'
            'D'
            'DL,RPed,Cc'
            'DL,RPa'
            'S,DL')
          TabOrder = 0
          Values.Strings = (
            'DL'
            'As'
            'Fe'
            'FE'
            'Re'
            'RPed'
            'RPa'
            'Cc'
            'APE'
            'PL'
            'S'
            'D'
            'DL,RPed,Cc'
            'DL,RPa'
            'S,DL')
          OnEnter = DBLookupComboBox1Enter
        end
        object DBRadioGroup18: TDBRadioGroup
          Left = 253
          Top = 8
          Width = 245
          Height = 98
          Caption = '18'#186' Dia'
          Columns = 3
          DataField = 'N18'
          DataSource = FrmDados.DTS_Calendario
          Items.Strings = (
            'DL'
            'As'
            'Fe'
            'FE'
            'Re'
            'RPed'
            'RPa'
            'Cc'
            'APE'
            'PL'
            'S'
            'D'
            'DL,RPed,Cc'
            'DL,RPa'
            'S,DL')
          TabOrder = 1
          Values.Strings = (
            'DL'
            'As'
            'Fe'
            'FE'
            'Re'
            'RPed'
            'RPa'
            'Cc'
            'APE'
            'PL'
            'S'
            'D'
            'DL,RPed,Cc'
            'DL,RPa'
            'S,DL')
          OnEnter = DBLookupComboBox1Enter
        end
        object DBRadioGroup19: TDBRadioGroup
          Left = 501
          Top = 8
          Width = 245
          Height = 98
          Caption = '19'#186' Dia'
          Columns = 3
          DataField = 'N19'
          DataSource = FrmDados.DTS_Calendario
          Items.Strings = (
            'DL'
            'As'
            'Fe'
            'FE'
            'Re'
            'RPed'
            'RPa'
            'Cc'
            'APE'
            'PL'
            'S'
            'D'
            'DL,RPed,Cc'
            'DL,RPa'
            'S,DL')
          TabOrder = 2
          Values.Strings = (
            'DL'
            'As'
            'Fe'
            'FE'
            'Re'
            'RPed'
            'RPa'
            'Cc'
            'APE'
            'PL'
            'S'
            'D'
            'DL,RPed,Cc'
            'DL,RPa'
            'S,DL')
          OnEnter = DBLookupComboBox1Enter
        end
        object DBRadioGroup20: TDBRadioGroup
          Left = 749
          Top = 8
          Width = 245
          Height = 98
          Caption = '20'#186' Dia'
          Columns = 3
          DataField = 'N20'
          DataSource = FrmDados.DTS_Calendario
          Items.Strings = (
            'DL'
            'As'
            'Fe'
            'FE'
            'Re'
            'RPed'
            'RPa'
            'Cc'
            'APE'
            'PL'
            'S'
            'D'
            'DL,RPed,Cc'
            'DL,RPa'
            'S,DL')
          TabOrder = 3
          Values.Strings = (
            'DL'
            'As'
            'Fe'
            'FE'
            'Re'
            'RPed'
            'RPa'
            'Cc'
            'APE'
            'PL'
            'S'
            'D'
            'DL,RPed,Cc'
            'DL,RPa'
            'S,DL')
          OnEnter = DBLookupComboBox1Enter
        end
        object DBRadioGroup21: TDBRadioGroup
          Left = 5
          Top = 117
          Width = 245
          Height = 98
          Caption = '21'#186' Dia'
          Columns = 3
          DataField = 'N21'
          DataSource = FrmDados.DTS_Calendario
          Items.Strings = (
            'DL'
            'As'
            'Fe'
            'FE'
            'Re'
            'RPed'
            'RPa'
            'Cc'
            'APE'
            'PL'
            'S'
            'D'
            'DL,RPed,Cc'
            'DL,RPa'
            'S,DL')
          TabOrder = 4
          Values.Strings = (
            'DL'
            'As'
            'Fe'
            'FE'
            'Re'
            'RPed'
            'RPa'
            'Cc'
            'APE'
            'PL'
            'S'
            'D'
            'DL,RPed,Cc'
            'DL,RPa'
            'S,DL')
          OnEnter = DBLookupComboBox1Enter
        end
        object DBRadioGroup22: TDBRadioGroup
          Left = 253
          Top = 117
          Width = 245
          Height = 98
          Caption = '22'#186' Dia'
          Columns = 3
          DataField = 'N22'
          DataSource = FrmDados.DTS_Calendario
          Items.Strings = (
            'DL'
            'As'
            'Fe'
            'FE'
            'Re'
            'RPed'
            'RPa'
            'Cc'
            'APE'
            'PL'
            'S'
            'D'
            'DL,RPed,Cc'
            'DL,RPa'
            'S,DL')
          TabOrder = 5
          Values.Strings = (
            'DL'
            'As'
            'Fe'
            'FE'
            'Re'
            'RPed'
            'RPa'
            'Cc'
            'APE'
            'PL'
            'S'
            'D'
            'DL,RPed,Cc'
            'DL,RPa'
            'S,DL')
          OnEnter = DBLookupComboBox1Enter
        end
        object DBRadioGroup23: TDBRadioGroup
          Left = 501
          Top = 117
          Width = 245
          Height = 98
          Caption = '23'#186' Dia'
          Columns = 3
          DataField = 'N23'
          DataSource = FrmDados.DTS_Calendario
          Items.Strings = (
            'DL'
            'As'
            'Fe'
            'FE'
            'Re'
            'RPed'
            'RPa'
            'Cc'
            'APE'
            'PL'
            'S'
            'D'
            'DL,RPed,Cc'
            'DL,RPa'
            'S,DL')
          TabOrder = 6
          Values.Strings = (
            'DL'
            'As'
            'Fe'
            'FE'
            'Re'
            'RPed'
            'RPa'
            'Cc'
            'APE'
            'PL'
            'S'
            'D'
            'DL,RPed,Cc'
            'DL,RPa'
            'S,DL')
          OnEnter = DBLookupComboBox1Enter
        end
        object DBRadioGroup24: TDBRadioGroup
          Left = 749
          Top = 117
          Width = 245
          Height = 98
          Caption = '24'#186' Dia'
          Columns = 3
          DataField = 'N24'
          DataSource = FrmDados.DTS_Calendario
          Items.Strings = (
            'DL'
            'As'
            'Fe'
            'FE'
            'Re'
            'RPed'
            'RPa'
            'Cc'
            'APE'
            'PL'
            'S'
            'D'
            'DL,RPed,Cc'
            'DL,RPa'
            'S,DL')
          TabOrder = 7
          Values.Strings = (
            'DL'
            'As'
            'Fe'
            'FE'
            'Re'
            'RPed'
            'RPa'
            'Cc'
            'APE'
            'PL'
            'S'
            'D'
            'DL,RPed,Cc'
            'DL,RPa'
            'S,DL')
          OnEnter = DBLookupComboBox1Enter
        end
        object DBRadioGroup25: TDBRadioGroup
          Left = 5
          Top = 226
          Width = 245
          Height = 98
          Caption = '25'#186' Dia'
          Columns = 3
          DataField = 'N25'
          DataSource = FrmDados.DTS_Calendario
          Items.Strings = (
            'DL'
            'As'
            'Fe'
            'FE'
            'Re'
            'RPed'
            'RPa'
            'Cc'
            'APE'
            'PL'
            'S'
            'D'
            'DL,RPed,Cc'
            'DL,RPa'
            'S,DL')
          TabOrder = 8
          Values.Strings = (
            'DL'
            'As'
            'Fe'
            'FE'
            'Re'
            'RPed'
            'RPa'
            'Cc'
            'APE'
            'PL'
            'S'
            'D'
            'DL,RPed,Cc'
            'DL,RPa'
            'S,DL')
          OnEnter = DBLookupComboBox1Enter
        end
        object DBRadioGroup26: TDBRadioGroup
          Left = 253
          Top = 226
          Width = 245
          Height = 98
          Caption = '26'#186' Dia'
          Columns = 3
          DataField = 'N26'
          DataSource = FrmDados.DTS_Calendario
          Items.Strings = (
            'DL'
            'As'
            'Fe'
            'FE'
            'Re'
            'RPed'
            'RPa'
            'Cc'
            'APE'
            'PL'
            'S'
            'D'
            'DL,RPed,Cc'
            'DL,RPa'
            'S,DL')
          TabOrder = 9
          Values.Strings = (
            'DL'
            'As'
            'Fe'
            'FE'
            'Re'
            'RPed'
            'RPa'
            'Cc'
            'APE'
            'PL'
            'S'
            'D'
            'DL,RPed,Cc'
            'DL,RPa'
            'S,DL')
          OnEnter = DBLookupComboBox1Enter
        end
        object DBRadioGroup27: TDBRadioGroup
          Left = 501
          Top = 226
          Width = 245
          Height = 98
          Caption = '27'#186' Dia'
          Columns = 3
          DataField = 'N27'
          DataSource = FrmDados.DTS_Calendario
          Items.Strings = (
            'DL'
            'As'
            'Fe'
            'FE'
            'Re'
            'RPed'
            'RPa'
            'Cc'
            'APE'
            'PL'
            'S'
            'D'
            'DL,RPed,Cc'
            'DL,RPa'
            'S,DL')
          TabOrder = 10
          Values.Strings = (
            'DL'
            'As'
            'Fe'
            'FE'
            'Re'
            'RPed'
            'RPa'
            'Cc'
            'APE'
            'PL'
            'S'
            'D'
            'DL,RPed,Cc'
            'DL,RPa'
            'S,DL')
          OnEnter = DBLookupComboBox1Enter
        end
        object DBRadioGroup28: TDBRadioGroup
          Left = 749
          Top = 226
          Width = 245
          Height = 98
          Caption = '28'#186' Dia'
          Columns = 3
          DataField = 'N28'
          DataSource = FrmDados.DTS_Calendario
          Items.Strings = (
            'DL'
            'As'
            'Fe'
            'FE'
            'Re'
            'RPed'
            'RPa'
            'Cc'
            'APE'
            'PL'
            'S'
            'D'
            'DL,RPed,Cc'
            'DL,RPa'
            'S,DL')
          TabOrder = 11
          Values.Strings = (
            'DL'
            'As'
            'Fe'
            'FE'
            'Re'
            'RPed'
            'RPa'
            'Cc'
            'APE'
            'PL'
            'S'
            'D'
            'DL,RPed,Cc'
            'DL,RPa'
            'S,DL')
          OnEnter = DBLookupComboBox1Enter
        end
        object DBRadioGroup29: TDBRadioGroup
          Left = 5
          Top = 336
          Width = 245
          Height = 98
          Caption = '29'#186' Dia'
          Columns = 3
          DataField = 'N29'
          DataSource = FrmDados.DTS_Calendario
          Items.Strings = (
            'DL'
            'As'
            'Fe'
            'FE'
            'Re'
            'RPed'
            'RPa'
            'Cc'
            'APE'
            'PL'
            'S'
            'D'
            'DL,RPed,Cc'
            'DL,RPa'
            'S,DL')
          TabOrder = 12
          Values.Strings = (
            'DL'
            'As'
            'Fe'
            'FE'
            'Re'
            'RPed'
            'RPa'
            'Cc'
            'APE'
            'PL'
            'S'
            'D'
            'DL,RPed,Cc'
            'DL,RPa'
            'S,DL')
          OnEnter = DBLookupComboBox1Enter
        end
        object DBRadioGroup30: TDBRadioGroup
          Left = 253
          Top = 336
          Width = 245
          Height = 98
          Caption = '30'#186' Dia'
          Columns = 3
          DataField = 'N30'
          DataSource = FrmDados.DTS_Calendario
          Items.Strings = (
            'DL'
            'As'
            'Fe'
            'FE'
            'Re'
            'RPed'
            'RPa'
            'Cc'
            'APE'
            'PL'
            'S'
            'D'
            'DL,RPed,Cc'
            'DL,RPa'
            'S,DL')
          TabOrder = 13
          Values.Strings = (
            'DL'
            'As'
            'Fe'
            'FE'
            'Re'
            'RPed'
            'RPa'
            'Cc'
            'APE'
            'PL'
            'S'
            'D'
            'DL,RPed,Cc'
            'DL,RPa'
            'S,DL')
          OnEnter = DBLookupComboBox1Enter
        end
        object DBRadioGroup31: TDBRadioGroup
          Left = 501
          Top = 336
          Width = 245
          Height = 98
          Caption = '31'#186' Dia'
          Columns = 3
          DataField = 'N31'
          DataSource = FrmDados.DTS_Calendario
          Items.Strings = (
            'DL'
            'As'
            'Fe'
            'FE'
            'Re'
            'RPed'
            'RPa'
            'Cc'
            'APE'
            'PL'
            'S'
            'D'
            'DL,RPed,Cc'
            'DL,RPa'
            'S,DL')
          TabOrder = 14
          Values.Strings = (
            'DL'
            'As'
            'Fe'
            'FE'
            'Re'
            'RPed'
            'RPa'
            'Cc'
            'APE'
            'PL'
            'S'
            'D'
            'DL,RPed,Cc'
            'DL,RPa'
            'S,DL')
          OnEnter = DBLookupComboBox1Enter
        end
      end
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 41
    Width = 1009
    Height = 55
    Align = alClient
    DataSource = FrmDados.DTS_Calendario
    TabOrder = 2
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
        FieldName = 'ANO'
        Title.Caption = 'Ano'
        Width = 61
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MES'
        Title.Caption = 'M'#234's'
        Width = 149
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NomeCurso'
        Title.Caption = 'Curso'
        Width = 270
        Visible = True
      end>
  end
end
