object BackupMySQL: TBackupMySQL
  Left = 196
  Top = 240
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Backup e Atualiza'#231#227'o da Base de Dados'
  ClientHeight = 230
  ClientWidth = 813
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
    Width = 593
    Height = 209
  end
  object Bevel2: TBevel
    Left = 609
    Top = 8
    Width = 193
    Height = 209
  end
  object Label1: TLabel
    Left = 214
    Top = 30
    Width = 44
    Height = 13
    Caption = 'Usu'#225'rio'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 221
    Top = 62
    Width = 37
    Height = 13
    Caption = 'Senha'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 168
    Top = 92
    Width = 90
    Height = 13
    Caption = 'Nome do banco'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 160
    Top = 121
    Width = 98
    Height = 13
    Caption = 'Pasta de Backup'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 80
    Top = 151
    Width = 178
    Height = 13
    Caption = 'Gerenciador da Base de Dados'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 39
    Top = 181
    Width = 219
    Height = 13
    Caption = 'Arquivo de Atualiza'#231#227'o e Restaura'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object EdtUsuario: TEdit
    Left = 269
    Top = 26
    Width = 137
    Height = 21
    TabOrder = 0
    Text = 'root'
  end
  object EdtSenha: TEdit
    Left = 269
    Top = 58
    Width = 177
    Height = 21
    PasswordChar = '*'
    TabOrder = 1
    Text = 'sqlremoto'
  end
  object EdtNomeBancoDados: TEdit
    Left = 269
    Top = 87
    Width = 201
    Height = 21
    TabOrder = 2
    Text = 'NFE'
  end
  object EdtPastaBackup: TEdit
    Left = 269
    Top = 116
    Width = 177
    Height = 21
    TabOrder = 3
    Text = 'edtpastabackup'
  end
  object Executar: TButton
    Left = 617
    Top = 15
    Width = 177
    Height = 57
    Caption = 'Backup e Atualiza'#231#227'o'
    TabOrder = 4
    OnClick = ExecutarClick
  end
  object EdtCaminhoGbase: TEdit
    Left = 269
    Top = 146
    Width = 319
    Height = 21
    TabOrder = 5
    Text = 'edicaminhogbase'
  end
  object Button1: TButton
    Left = 617
    Top = 80
    Width = 177
    Height = 57
    Caption = 'Cancelar'
    TabOrder = 6
    OnClick = Button1Click
  end
  object edtArqAtu: TEdit
    Left = 269
    Top = 176
    Width = 303
    Height = 21
    TabOrder = 7
    Text = 'edtArqAtu'
  end
end
