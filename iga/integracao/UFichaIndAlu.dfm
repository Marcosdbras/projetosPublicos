object FrmFichaIndAlu: TFrmFichaIndAlu
  Left = 0
  Top = 80
  Width = 1024
  Height = 660
  BorderIcons = []
  Caption = 'FrmFichaIndAlu'
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
  object Panel2: TPanel
    Left = 0
    Top = 218
    Width = 1016
    Height = 414
    Align = alBottom
    Caption = 'Panel2'
    TabOrder = 1
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 1014
      Height = 412
      ActivePage = TabSheet6
      Align = alClient
      TabOrder = 0
      object TabSheet6: TTabSheet
        Caption = 'Dados principais'
        ImageIndex = 5
        object Label1: TLabel
          Left = 112
          Top = 56
          Width = 77
          Height = 16
          Caption = '1 - ALUNO:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 112
          Top = 88
          Width = 71
          Height = 16
          Caption = '2 - S'#201'RIE:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 112
          Top = 120
          Width = 119
          Height = 16
          Caption = '3 - PROFESSOR:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 112
          Top = 152
          Width = 108
          Height = 16
          Caption = '4 - DISCIPLINA:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 112
          Top = 184
          Width = 103
          Height = 16
          Caption = '5 - BIMESTRE:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 112
          Top = 216
          Width = 157
          Height = 16
          Caption = '6 - NOTA BIMESTRAL:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText1: TDBText
          Left = 291
          Top = 219
          Width = 65
          Height = 13
          DataField = 'NOTA'
          DataSource = FrmDados.DTS_FichaIndAlu
        end
        object DBText2: TDBText
          Left = 290
          Top = 88
          Width = 279
          Height = 14
          DataField = 'SERIE'
          DataSource = FrmDados.DTS_FichaIndAlu
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 288
          Top = 51
          Width = 145
          Height = 21
          DataField = 'CODALUNO'
          DataSource = FrmDados.DTS_FichaIndAlu
          KeyField = 'CODIGO'
          ListField = 'NOME'
          ListSource = FrmDados.DTS_CadAluno
          TabOrder = 0
          OnEnter = DBLookupComboBox1Enter
        end
        object DBEdit1: TDBEdit
          Left = 288
          Top = 115
          Width = 121
          Height = 21
          DataField = 'PROFESSOR'
          DataSource = FrmDados.DTS_FichaIndAlu
          TabOrder = 1
          OnEnter = DBLookupComboBox1Enter
        end
        object DBLookupComboBox2: TDBLookupComboBox
          Left = 288
          Top = 147
          Width = 145
          Height = 21
          DataField = 'CODMAT'
          DataSource = FrmDados.DTS_FichaIndAlu
          KeyField = 'CODIGO'
          ListField = 'NOME'
          ListSource = FrmDados.DTS_CadMateria
          TabOrder = 2
          OnEnter = DBLookupComboBox1Enter
        end
        object BtnPesqAlu: TBitBtn
          Left = 448
          Top = 48
          Width = 73
          Height = 25
          Caption = '&Pesquisar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnClick = BtnPesqAluClick
        end
        object CBXBim: TDBComboBox
          Left = 288
          Top = 182
          Width = 145
          Height = 21
          DataField = 'BIM'
          DataSource = FrmDados.DTS_FichaIndAlu
          ItemHeight = 13
          Items.Strings = (
            '1'#186' Bimestre'
            '2'#186' Bimestre'
            '3'#186' Bimestre'
            '4'#186' Bimestre')
          TabOrder = 4
        end
      end
      object TabSheet1: TTabSheet
        Caption = 'Procedimento do aluno'
        object DBRadioGroup1: TDBRadioGroup
          Left = 16
          Top = 16
          Width = 169
          Height = 89
          Caption = 'N'#227'o entrega comunicados?'
          Columns = 2
          DataField = 'N_ENT_COM'
          DataSource = FrmDados.DTS_FichaIndAlu
          Items.Strings = (
            'Sim'
            'N'#227'o')
          TabOrder = 0
          Values.Strings = (
            'S'
            'N')
          OnEnter = DBLookupComboBox1Enter
        end
        object DBRadioGroup2: TDBRadioGroup
          Left = 245
          Top = 16
          Width = 169
          Height = 89
          Caption = 'N'#227'o faz li'#231#227'o de casa?'
          Columns = 2
          DataField = 'N_FAZ_LICAO_CASA'
          DataSource = FrmDados.DTS_FichaIndAlu
          Items.Strings = (
            'Sim'
            'N'#227'o')
          TabOrder = 1
          Values.Strings = (
            'S'
            'N')
          OnEnter = DBLookupComboBox1Enter
        end
        object DBRadioGroup3: TDBRadioGroup
          Left = 474
          Top = 16
          Width = 169
          Height = 89
          Caption = 'N'#227'o anota os deveres?'
          Columns = 2
          DataField = 'N_ANOTA_DEV'
          DataSource = FrmDados.DTS_FichaIndAlu
          Items.Strings = (
            'Sim'
            'N'#227'o')
          TabOrder = 2
          Values.Strings = (
            'S'
            'N')
          OnEnter = DBLookupComboBox1Enter
        end
        object DBRadioGroup4: TDBRadioGroup
          Left = 704
          Top = 16
          Width = 169
          Height = 89
          Caption = 'N'#227'o faz li'#231#227'o de classe?'
          Columns = 2
          DataField = 'N_FAZ_LICAO_CLASSE'
          DataSource = FrmDados.DTS_FichaIndAlu
          Items.Strings = (
            'Sim'
            'N'#227'o')
          TabOrder = 3
          Values.Strings = (
            'S'
            'N')
          OnEnter = DBLookupComboBox1Enter
        end
        object DBRadioGroup5: TDBRadioGroup
          Left = 16
          Top = 144
          Width = 169
          Height = 89
          Caption = 'Conversa muito?'
          Columns = 2
          DataField = 'CONVERSA_MT'
          DataSource = FrmDados.DTS_FichaIndAlu
          Items.Strings = (
            'Sim'
            'N'#227'o')
          TabOrder = 4
          Values.Strings = (
            'S'
            'N')
          OnEnter = DBLookupComboBox1Enter
        end
        object DBRadioGroup6: TDBRadioGroup
          Left = 245
          Top = 144
          Width = 169
          Height = 89
          Caption = #201' desatencioso?'
          Columns = 2
          DataField = 'DESATENCIOSO'
          DataSource = FrmDados.DTS_FichaIndAlu
          Items.Strings = (
            'Sim'
            'N'#227'o')
          TabOrder = 5
          Values.Strings = (
            'S'
            'N')
          OnEnter = DBLookupComboBox1Enter
        end
        object DBRadioGroup7: TDBRadioGroup
          Left = 474
          Top = 144
          Width = 169
          Height = 89
          Caption = #201' ap'#225'tico?'
          Columns = 2
          DataField = 'APATICO'
          DataSource = FrmDados.DTS_FichaIndAlu
          Items.Strings = (
            'Sim'
            'N'#227'o')
          TabOrder = 6
          Values.Strings = (
            'S'
            'N')
          OnEnter = DBLookupComboBox1Enter
        end
        object DBRadioGroup8: TDBRadioGroup
          Left = 704
          Top = 144
          Width = 169
          Height = 89
          Caption = 'N'#227'o entrega trabalhos?'
          Columns = 2
          DataField = 'N_ENTREGA_TRAB'
          DataSource = FrmDados.DTS_FichaIndAlu
          Items.Strings = (
            'Sim'
            'N'#227'o')
          TabOrder = 7
          Values.Strings = (
            'S'
            'N')
          OnEnter = DBLookupComboBox1Enter
        end
        object DBRadioGroup9: TDBRadioGroup
          Left = 16
          Top = 272
          Width = 169
          Height = 89
          Caption = 'Falta em excesso?'
          Columns = 2
          DataField = 'FALTA_EXCESSO'
          DataSource = FrmDados.DTS_FichaIndAlu
          Items.Strings = (
            'Sim'
            'N'#227'o')
          TabOrder = 8
          Values.Strings = (
            'S'
            'N')
          OnEnter = DBLookupComboBox1Enter
        end
        object DBRadioGroup10: TDBRadioGroup
          Left = 244
          Top = 272
          Width = 169
          Height = 89
          Caption = 'Se atrasa com frequ'#234'ncia?'
          Columns = 2
          DataField = 'ATRASA_FREQUENCIA'
          DataSource = FrmDados.DTS_FichaIndAlu
          Items.Strings = (
            'Sim'
            'N'#227'o')
          TabOrder = 9
          Values.Strings = (
            'S'
            'N')
          OnEnter = DBLookupComboBox1Enter
        end
        object DBRadioGroup11: TDBRadioGroup
          Left = 472
          Top = 272
          Width = 169
          Height = 89
          Caption = 'Brinca inoportunamente?'
          Columns = 2
          DataField = 'BRINCA_INOPORTUNA'
          DataSource = FrmDados.DTS_FichaIndAlu
          Items.Strings = (
            'Sim'
            'N'#227'o')
          TabOrder = 10
          Values.Strings = (
            'S'
            'N')
          OnEnter = DBLookupComboBox1Enter
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Principais dificuldades do aluno'
        ImageIndex = 1
        object DBRadioGroup12: TDBRadioGroup
          Left = 24
          Top = 16
          Width = 185
          Height = 89
          Caption = 'Lento para escrever?'
          Columns = 2
          DataField = 'LENT_ESCREVER'
          DataSource = FrmDados.DTS_FichaIndAlu
          Items.Strings = (
            'Sim'
            'N'#227'o')
          TabOrder = 0
          Values.Strings = (
            'S'
            'N')
          OnEnter = DBLookupComboBox1Enter
        end
        object DBRadioGroup13: TDBRadioGroup
          Left = 264
          Top = 16
          Width = 185
          Height = 89
          Caption = 'Demora para assimilar o conte'#250'do?'
          Columns = 2
          DataField = 'ASSIM_CONTEUDO'
          DataSource = FrmDados.DTS_FichaIndAlu
          Items.Strings = (
            'Sim'
            'N'#227'o')
          TabOrder = 1
          Values.Strings = (
            'S'
            'N')
          OnEnter = DBLookupComboBox1Enter
        end
        object DBRadioGroup14: TDBRadioGroup
          Left = 504
          Top = 16
          Width = 185
          Height = 89
          Caption = 'Problemas ao se concentrar?'
          Columns = 2
          DataField = 'CONCENTRACAO'
          DataSource = FrmDados.DTS_FichaIndAlu
          Items.Strings = (
            'Sim'
            'N'#227'o')
          TabOrder = 2
          Values.Strings = (
            'S'
            'N')
          OnEnter = DBLookupComboBox1Enter
        end
        object DBRadioGroup15: TDBRadioGroup
          Left = 744
          Top = 16
          Width = 185
          Height = 89
          Caption = 'Tem dislexia?'
          Columns = 2
          DataField = 'DISLEXIA'
          DataSource = FrmDados.DTS_FichaIndAlu
          Items.Strings = (
            'Sim'
            'N'#227'o')
          TabOrder = 3
          Values.Strings = (
            'S'
            'N')
          OnEnter = DBLookupComboBox1Enter
        end
        object DBRadioGroup16: TDBRadioGroup
          Left = 24
          Top = 144
          Width = 185
          Height = 89
          Caption = 'Falta equilibrio emocional?'
          Columns = 2
          DataField = 'EQUIL_EMOCIONAL'
          DataSource = FrmDados.DTS_FichaIndAlu
          Items.Strings = (
            'Sim'
            'N'#227'o')
          TabOrder = 4
          Values.Strings = (
            'S'
            'N')
          OnEnter = DBLookupComboBox1Enter
        end
        object DBRadioGroup17: TDBRadioGroup
          Left = 264
          Top = 144
          Width = 185
          Height = 89
          Caption = 'Problemas de interpreta'#231#227'o de texto?'
          Columns = 2
          DataField = 'INTERPRE_TEXTO'
          DataSource = FrmDados.DTS_FichaIndAlu
          Items.Strings = (
            'Sim'
            'N'#227'o')
          TabOrder = 5
          Values.Strings = (
            'S'
            'N')
          OnEnter = DBLookupComboBox1Enter
        end
        object DBRadioGroup18: TDBRadioGroup
          Left = 504
          Top = 144
          Width = 185
          Height = 89
          Caption = 'Problemas de caligrafia?'
          Columns = 2
          DataField = 'CALIGRAFIA'
          DataSource = FrmDados.DTS_FichaIndAlu
          Items.Strings = (
            'Sim'
            'N'#227'o')
          TabOrder = 6
          Values.Strings = (
            'S'
            'N')
          OnEnter = DBLookupComboBox1Enter
        end
        object DBRadioGroup20: TDBRadioGroup
          Left = 24
          Top = 272
          Width = 185
          Height = 89
          Caption = 'Falta de racioc'#237'nio l'#243'gico?'
          Columns = 2
          DataField = 'RAC_LOGICO'
          DataSource = FrmDados.DTS_FichaIndAlu
          Items.Strings = (
            'Sim'
            'N'#227'o')
          TabOrder = 7
          Values.Strings = (
            'S'
            'N')
          OnEnter = DBLookupComboBox1Enter
        end
        object DBRadioGroup21: TDBRadioGroup
          Left = 264
          Top = 272
          Width = 185
          Height = 89
          Caption = 'Falta coordena'#231#227'o motora?'
          Columns = 2
          DataField = 'COORD_MOTORA'
          DataSource = FrmDados.DTS_FichaIndAlu
          Items.Strings = (
            'Sim'
            'N'#227'o')
          TabOrder = 8
          Values.Strings = (
            'S'
            'N')
          OnEnter = DBLookupComboBox1Enter
        end
        object DBRadioGroup22: TDBRadioGroup
          Left = 504
          Top = 272
          Width = 185
          Height = 89
          Caption = 'Problemas de relacionamento?'
          Columns = 2
          DataField = 'REL_PROF_COL'
          DataSource = FrmDados.DTS_FichaIndAlu
          Items.Strings = (
            'Sim'
            'N'#227'o')
          TabOrder = 9
          Values.Strings = (
            'S'
            'N')
          OnEnter = DBLookupComboBox1Enter
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Recomenda'#231#245'es do prof. ao aluno'
        ImageIndex = 2
        object DBRadioGroup19: TDBRadioGroup
          Left = 136
          Top = 16
          Width = 196
          Height = 89
          Caption = 'Ter mais aten'#231#227'o?'
          Columns = 2
          DataField = 'ATENCAO'
          DataSource = FrmDados.DTS_FichaIndAlu
          Items.Strings = (
            'Sim'
            'N'#227'o')
          TabOrder = 0
          Values.Strings = (
            'S'
            'N')
          OnEnter = DBLookupComboBox1Enter
        end
        object DBRadioGroup23: TDBRadioGroup
          Left = 512
          Top = 16
          Width = 196
          Height = 89
          Caption = 'Fazer os deveres de casa?'
          Columns = 2
          DataField = 'FAZ_DEV_CASA'
          DataSource = FrmDados.DTS_FichaIndAlu
          Items.Strings = (
            'Sim'
            'N'#227'o')
          TabOrder = 1
          Values.Strings = (
            'S'
            'N')
          OnEnter = DBLookupComboBox1Enter
        end
        object DBRadioGroup24: TDBRadioGroup
          Left = 136
          Top = 144
          Width = 196
          Height = 89
          Caption = 'Estar atento '#224's atividades propostas?'
          Columns = 2
          DataField = 'EST_ATENTO_ATIV_PROP'
          DataSource = FrmDados.DTS_FichaIndAlu
          Items.Strings = (
            'Sim'
            'N'#227'o')
          TabOrder = 2
          Values.Strings = (
            'S'
            'N')
          OnEnter = DBLookupComboBox1Enter
        end
        object DBRadioGroup25: TDBRadioGroup
          Left = 512
          Top = 144
          Width = 196
          Height = 89
          Caption = 'N'#227'o faltar '#224's aulas?'
          Columns = 2
          DataField = 'N_FALTAR_AULAS'
          DataSource = FrmDados.DTS_FichaIndAlu
          Items.Strings = (
            'Sim'
            'N'#227'o')
          TabOrder = 3
          Values.Strings = (
            'S'
            'N')
          OnEnter = DBLookupComboBox1Enter
        end
        object DBRadioGroup26: TDBRadioGroup
          Left = 136
          Top = 280
          Width = 196
          Height = 89
          Caption = 'Maior considera'#231#227'o com as pessoas?'
          Columns = 2
          DataField = 'MAIOR_CONS_PESSOAS'
          DataSource = FrmDados.DTS_FichaIndAlu
          Items.Strings = (
            'Sim'
            'N'#227'o')
          TabOrder = 4
          Values.Strings = (
            'S'
            'N')
          OnEnter = DBLookupComboBox1Enter
        end
      end
      object TabSheet4: TTabSheet
        Caption = 'Provid'#234'ncias da escola e do prof. para auxiliar o aluno'
        ImageIndex = 3
        object DBRadioGroup27: TDBRadioGroup
          Left = 64
          Top = 24
          Width = 334
          Height = 89
          Caption = 'Recupera'#231#227'o cont'#237'nua?'
          Columns = 2
          DataField = 'REC_CONT'
          DataSource = FrmDados.DTS_FichaIndAlu
          Items.Strings = (
            'Sim'
            'N'#227'o')
          TabOrder = 0
          Values.Strings = (
            'S'
            'N')
          OnEnter = DBLookupComboBox1Enter
        end
        object DBRadioGroup28: TDBRadioGroup
          Left = 464
          Top = 24
          Width = 334
          Height = 89
          Caption = 'Recupera'#231#227'o paralela com trabalhos sob orienta'#231#227'o de estudos?'
          Columns = 2
          DataField = 'REC_PAR_TRAB_ORIENTACAO'
          DataSource = FrmDados.DTS_FichaIndAlu
          Items.Strings = (
            'Sim'
            'N'#227'o')
          TabOrder = 1
          Values.Strings = (
            'S'
            'N')
          OnEnter = DBLookupComboBox1Enter
        end
        object DBRadioGroup29: TDBRadioGroup
          Left = 64
          Top = 152
          Width = 334
          Height = 89
          Caption = 'Recupera'#231#227'o paralela com aulas extras?'
          Columns = 2
          DataField = 'REC_PAR_AULAS_EXT'
          DataSource = FrmDados.DTS_FichaIndAlu
          Items.Strings = (
            'Sim'
            'N'#227'o')
          TabOrder = 2
          Values.Strings = (
            'S'
            'N')
          OnEnter = DBLookupComboBox1Enter
        end
        object DBRadioGroup30: TDBRadioGroup
          Left = 464
          Top = 152
          Width = 334
          Height = 89
          Caption = 'Refor'#231'o nas li'#231#245'es de casa?'
          Columns = 2
          DataField = 'REFORCO_LICOES_CASA'
          DataSource = FrmDados.DTS_FichaIndAlu
          Items.Strings = (
            'Sim'
            'N'#227'o')
          TabOrder = 3
          Values.Strings = (
            'S'
            'N')
          OnEnter = DBLookupComboBox1Enter
        end
        object DBRadioGroup31: TDBRadioGroup
          Left = 64
          Top = 280
          Width = 334
          Height = 89
          Caption = 'Comunicado aos pais?'
          Columns = 2
          DataField = 'COM_PAIS'
          DataSource = FrmDados.DTS_FichaIndAlu
          Items.Strings = (
            'Sim'
            'N'#227'o')
          TabOrder = 4
          Values.Strings = (
            'S'
            'N')
          OnEnter = DBLookupComboBox1Enter
        end
      end
      object TabSheet5: TTabSheet
        Caption = 'Recomenda'#231#245'es do prof. e da escola aos pais'
        ImageIndex = 4
        object DBRadioGroup32: TDBRadioGroup
          Left = 72
          Top = 16
          Width = 290
          Height = 89
          Caption = 'Acompanhar diariamente os estudos de seu filho?'
          Columns = 2
          DataField = 'ACOM_DIA_EST'
          DataSource = FrmDados.DTS_FichaIndAlu
          Items.Strings = (
            'Sim'
            'N'#227'o')
          TabOrder = 0
          Values.Strings = (
            'S'
            'N')
          OnEnter = DBLookupComboBox1Enter
        end
        object DBRadioGroup33: TDBRadioGroup
          Left = 544
          Top = 16
          Width = 290
          Height = 89
          Caption = 'Fazer com que as li'#231#245'es sejam executadas corretamente?'
          Columns = 2
          DataField = 'FAZ_LICOES_COR_TEMPO'
          DataSource = FrmDados.DTS_FichaIndAlu
          Items.Strings = (
            'Sim'
            'N'#227'o')
          TabOrder = 1
          Values.Strings = (
            'S'
            'N')
          OnEnter = DBLookupComboBox1Enter
        end
        object DBRadioGroup34: TDBRadioGroup
          Left = 72
          Top = 144
          Width = 290
          Height = 89
          Caption = 'Verificar se h'#225' comunicados e envi'#225'-los assinados?'
          Columns = 2
          DataField = 'VER_COM_ENVIAR_ASS'
          DataSource = FrmDados.DTS_FichaIndAlu
          Items.Strings = (
            'Sim'
            'N'#227'o')
          TabOrder = 2
          Values.Strings = (
            'S'
            'N')
          OnEnter = DBLookupComboBox1Enter
        end
        object DBRadioGroup35: TDBRadioGroup
          Left = 544
          Top = 144
          Width = 290
          Height = 89
          Caption = 'N'#227'o deixar que por qualquer motivo falte '#224's aulas?'
          Columns = 2
          DataField = 'N_DXA_FALTAR'
          DataSource = FrmDados.DTS_FichaIndAlu
          Items.Strings = (
            'Sim'
            'N'#227'o')
          TabOrder = 3
          Values.Strings = (
            'S'
            'N')
          OnEnter = DBLookupComboBox1Enter
        end
        object DBRadioGroup36: TDBRadioGroup
          Left = 72
          Top = 272
          Width = 290
          Height = 89
          Caption = 'Entrar em contato semanalmente com a coordenadora?'
          Columns = 2
          DataField = 'ENTRAR_CONTATO_SEM'
          DataSource = FrmDados.DTS_FichaIndAlu
          Items.Strings = (
            'Sim'
            'N'#227'o')
          TabOrder = 4
          Values.Strings = (
            'S'
            'N')
          OnEnter = DBLookupComboBox1Enter
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1016
    Height = 57
    Align = alTop
    TabOrder = 0
    object BtnSair: TBitBtn
      Left = 872
      Top = 16
      Width = 75
      Height = 25
      Caption = '&Sair'
      TabOrder = 0
      OnClick = BtnSairClick
    end
    object BtnInserir: TBitBtn
      Left = 32
      Top = 16
      Width = 75
      Height = 25
      Caption = '&Inserir'
      TabOrder = 1
      OnClick = BtnInserirClick
    end
    object BtnExcluir: TBitBtn
      Left = 136
      Top = 16
      Width = 75
      Height = 25
      Caption = '&Excluir'
      TabOrder = 2
      OnClick = BtnExcluirClick
    end
    object BtnConfirmar: TBitBtn
      Left = 240
      Top = 16
      Width = 75
      Height = 25
      Caption = '&Confirmar'
      TabOrder = 3
      OnClick = BtnConfirmarClick
    end
    object BtnCancelar: TBitBtn
      Left = 344
      Top = 16
      Width = 75
      Height = 25
      Caption = 'C&ancelar'
      TabOrder = 4
      OnClick = BtnCancelarClick
    end
    object BtnIMprimir: TBitBtn
      Left = 552
      Top = 16
      Width = 75
      Height = 25
      Caption = '&Imprimir'
      TabOrder = 5
      OnClick = BtnIMprimirClick
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 57
    Width = 1016
    Height = 161
    Align = alClient
    DataSource = FrmDados.DTS_FichaIndAlu
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'NomeAluno'
        Title.Caption = 'Nome do aluno'
        Width = 275
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SERIE'
        Title.Caption = 'Serie'
        Width = 311
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PROFESSOR'
        Title.Caption = 'Professor(a)'
        Width = 236
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NomeDisciplina'
        Title.Caption = 'Disciplina'
        Width = 156
        Visible = True
      end>
  end
end
