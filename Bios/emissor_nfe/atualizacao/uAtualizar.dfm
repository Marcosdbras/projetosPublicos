object BackupMySQL: TBackupMySQL
  Left = 330
  Top = 240
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Backup e Atualiza'#231#227'o da Base de Dados'
  ClientHeight = 235
  ClientWidth = 682
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 8
    Top = 8
    Width = 465
    Height = 209
  end
  object Bevel2: TBevel
    Left = 480
    Top = 8
    Width = 193
    Height = 209
  end
  object Label1: TLabel
    Left = 126
    Top = 30
    Width = 36
    Height = 13
    Caption = 'Usu'#225'rio'
  end
  object Label2: TLabel
    Left = 131
    Top = 62
    Width = 31
    Height = 13
    Caption = 'Senha'
  end
  object Label4: TLabel
    Left = 86
    Top = 92
    Width = 76
    Height = 13
    Caption = 'Nome do banco'
  end
  object Label5: TLabel
    Left = 80
    Top = 121
    Width = 82
    Height = 13
    Caption = 'Pasta de Backup'
  end
  object Label6: TLabel
    Left = 14
    Top = 151
    Width = 149
    Height = 13
    Caption = 'Gerenciador da Base de Dados'
  end
  object EdtUsuario: TEdit
    Left = 176
    Top = 26
    Width = 137
    Height = 21
    TabOrder = 0
    Text = 'root'
  end
  object EdtSenha: TEdit
    Left = 176
    Top = 58
    Width = 177
    Height = 21
    PasswordChar = '*'
    TabOrder = 1
    Text = 'sqlremoto'
  end
  object EdtNomeBancoDados: TEdit
    Left = 176
    Top = 87
    Width = 201
    Height = 21
    TabOrder = 2
    Text = 'NFE'
  end
  object EdtPastaBackup: TEdit
    Left = 176
    Top = 116
    Width = 177
    Height = 21
    TabOrder = 3
    Text = 'C:\Backup\'
  end
  object Executar: TButton
    Left = 488
    Top = 15
    Width = 177
    Height = 57
    Caption = 'Backup'
    TabOrder = 4
    OnClick = ExecutarClick
  end
  object Atualizacao: TButton
    Left = 488
    Top = 79
    Width = 177
    Height = 57
    Caption = 'Atualiza'#231#227'o'
    Enabled = False
    TabOrder = 5
  end
  object EdtCaminhoGbase: TEdit
    Left = 176
    Top = 146
    Width = 289
    Height = 21
    TabOrder = 6
    Text = 'C:\Arquivos de programas\MySQL\MySQL Server 5.1\bin'
  end
  object Button1: TButton
    Left = 488
    Top = 144
    Width = 177
    Height = 57
    Caption = 'Cancelar'
    TabOrder = 7
    OnClick = Button1Click
  end
end
