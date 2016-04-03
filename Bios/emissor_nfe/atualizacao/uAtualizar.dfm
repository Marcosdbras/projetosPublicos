object BackupMySQL: TBackupMySQL
  Left = 216
  Top = 120
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Backup e Atualiza'#231#227'o da Base de Dados'
  ClientHeight = 407
  ClientWidth = 817
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 8
    Top = 232
    Width = 593
    Height = 172
  end
  object Bevel2: TBevel
    Left = 608
    Top = 232
    Width = 201
    Height = 171
  end
  object Label1: TLabel
    Left = 214
    Top = 262
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
    Left = 422
    Top = 262
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
    Top = 289
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
    Top = 318
    Width = 98
    Height = 13
    Caption = 'Pasta de Backup'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 40
    Top = 348
    Width = 222
    Height = 13
    Caption = 'Gerenciador da Base de Dados MySQL'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 39
    Top = 376
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
  object SpeedButton3: TSpeedButton
    Left = 572
    Top = 371
    Width = 23
    Height = 22
    Hint = 'Baixe o arquivo de atualiza'#231#227'o no site marcosbras.com'
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333333333333333FF3333333333333744333333333333F773333333333337
      44473333333333F777F3333333333744444333333333F7733733333333374444
      4433333333F77333733333333744444447333333F7733337F333333744444444
      433333F77333333733333744444444443333377FFFFFFF7FFFFF999999999999
      9999733777777777777333CCCCCCCCCC33333773FF333373F3333333CCCCCCCC
      C333333773FF3337F333333333CCCCCCC33333333773FF373F3333333333CCCC
      CC333333333773FF73F33333333333CCCCC3333333333773F7F3333333333333
      CCC333333333333777FF33333333333333CC3333333333333773}
    NumGlyphs = 2
    ParentShowHint = False
    ShowHint = True
    OnClick = SpeedButton3Click
  end
  object Label7: TLabel
    Left = 7
    Top = 211
    Width = 183
    Height = 13
    Caption = 'Escolha o caminho da pasta de '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label9: TLabel
    Left = 190
    Top = 211
    Width = 187
    Height = 13
    Caption = 'backup e gerenciador MySQL na'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label10: TLabel
    Left = 383
    Top = 212
    Width = 124
    Height = 13
    Caption = 'lista de pastas acima.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object spdxp32: TSpeedButton
    Left = 545
    Top = 342
    Width = 23
    Height = 22
    Hint = 'Baixe o arquivo de atualiza'#231#227'o no site marcosbras.com'
    Caption = 'XP'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    NumGlyphs = 2
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    OnClick = spdxp32Click
  end
  object spd7x32bits: TSpeedButton
    Left = 517
    Top = 342
    Width = 23
    Height = 22
    Hint = 'Baixe o arquivo de atualiza'#231#227'o no site marcosbras.com'
    Caption = '7'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    NumGlyphs = 2
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    OnClick = spd7x32bitsClick
  end
  object spdpadrao: TSpeedButton
    Left = 572
    Top = 257
    Width = 23
    Height = 22
    Hint = 'Baixe o arquivo de atualiza'#231#227'o no site marcosbras.com'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333333333333333FF3333333333333744333333333333F773333333333337
      44473333333333F777F3333333333744444333333333F7733733333333374444
      4433333333F77333733333333744444447333333F7733337F333333744444444
      433333F77333333733333744444444443333377FFFFFFF7FFFFF999999999999
      9999733777777777777333CCCCCCCCCC33333773FF333373F3333333CCCCCCCC
      C333333773FF3337F333333333CCCCCCC33333333773FF373F3333333333CCCC
      CC333333333773FF73F33333333333CCCCC3333333333773F7F3333333333333
      CCC333333333333777FF33333333333333CC3333333333333773}
    NumGlyphs = 2
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    OnClick = spdpadraoClick
  end
  object Label15: TLabel
    Left = 616
    Top = 236
    Width = 190
    Height = 13
    Caption = 'Clique em OK para realizar c'#243'pia '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label16: TLabel
    Left = 616
    Top = 252
    Width = 184
    Height = 13
    Caption = 'de seguran'#231'a e Atualizar a base'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label17: TLabel
    Left = 616
    Top = 266
    Width = 57
    Height = 13
    Caption = 'de dados.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object spdpastabackup: TSpeedButton
    Left = 572
    Top = 312
    Width = 23
    Height = 22
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333333333333333FF3333333333333744333333333333F773333333333337
      44473333333333F777F3333333333744444333333333F7733733333333374444
      4433333333F77333733333333744444447333333F7733337F333333744444444
      433333F77333333733333744444444443333377FFFFFFF7FFFFF999999999999
      9999733777777777777333CCCCCCCCCC33333773FF333373F3333333CCCCCCCC
      C333333773FF3337F333333333CCCCCCC33333333773FF373F3333333333CCCC
      CC333333333773FF73F33333333333CCCCC3333333333773F7F3333333333333
      CCC333333333333777FF33333333333333CC3333333333333773}
    NumGlyphs = 2
    OnClick = spdpastabackupClick
  end
  object spdcaminhogbase: TSpeedButton
    Left = 572
    Top = 342
    Width = 23
    Height = 22
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333333333333333FF3333333333333744333333333333F773333333333337
      44473333333333F777F3333333333744444333333333F7733733333333374444
      4433333333F77333733333333744444447333333F7733337F333333744444444
      433333F77333333733333744444444443333377FFFFFFF7FFFFF999999999999
      9999733777777777777333CCCCCCCCCC33333773FF333373F3333333CCCCCCCC
      C333333773FF3337F333333333CCCCCCC33333333773FF373F3333333333CCCC
      CC333333333773FF73F33333333333CCCCC3333333333773F7F3333333333333
      CCC333333333333777FF33333333333333CC3333333333333773}
    NumGlyphs = 2
    OnClick = spdcaminhogbaseClick
  end
  object EdtUsuario: TEdit
    Left = 269
    Top = 258
    Width = 137
    Height = 21
    TabOrder = 0
    Text = 'root'
  end
  object EdtSenha: TEdit
    Left = 470
    Top = 258
    Width = 99
    Height = 21
    PasswordChar = '*'
    TabOrder = 1
    Text = 'sqlremoto'
  end
  object EdtNomeBancoDados: TEdit
    Left = 269
    Top = 284
    Width = 324
    Height = 21
    TabOrder = 2
    Text = 'NFE'
  end
  object EdtPastaBackup: TEdit
    Left = 269
    Top = 313
    Width = 300
    Height = 21
    TabOrder = 3
    Text = 'edtpastabackup'
  end
  object Executar: TButton
    Left = 617
    Top = 282
    Width = 177
    Height = 57
    Caption = 'OK'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = ExecutarClick
  end
  object EdtCaminhoGbase: TEdit
    Left = 269
    Top = 343
    Width = 244
    Height = 21
    TabOrder = 4
    Text = 'edicaminhogbase'
  end
  object Button1: TButton
    Left = 617
    Top = 342
    Width = 177
    Height = 57
    Caption = 'Cancelar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnClick = Button1Click
  end
  object edtArqAtu: TEdit
    Left = 269
    Top = 371
    Width = 300
    Height = 21
    TabOrder = 5
    Text = 'edtArqAtu'
  end
  object Memo1: TMemo
    Left = 8
    Top = 8
    Width = 801
    Height = 193
    Lines.Strings = (
      'Instru'#231#227'o'
      ''
      
        'Para realizar o backup e atualiza'#231#227'o da base de dados basta veri' +
        'ficar as informa'#231#245'es dos campos, se for necess'#225'rio corrigir as i' +
        'nforma'#231#245'es dos mesmos e clique em ok '
      'enquanto houver atualiza'#231#245'es para serem feitas.')
    TabOrder = 8
    OnKeyPress = Memo1KeyPress
  end
  object dlgabrir: TOpenDialog
    Left = 56
    Top = 274
  end
  object IdHTTP1: TIdHTTP
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = -1
    Request.ContentRangeStart = -1
    Request.ContentRangeInstanceLength = -1
    Request.Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    Request.Ranges.Units = 'bytes'
    Request.Ranges = <>
    HTTPOptions = [hoForceEncodeParams]
    Left = 88
    Top = 274
  end
  object XMLDocument1: TXMLDocument
    XML.Strings = (
      '<?xml version="1.0" encoding="utf-8" ?><response>'
      
        '<cep>69960-000</cep><uf>AC</uf><cidade>feijo</cidade><bairro></b' +
        'airro><tipo_logradouro></tipo_logradouro><logradouro></logradour' +
        'o><resultado></resultado><resultado_txt></resultado_txt><ibge_uf' +
        '>12</ibge_uf><ibge_municipio>1200302</ibge_municipio><erro>0</er' +
        'ro><msgerro></msgerro></response>')
    Left = 120
    Top = 274
    DOMVendorDesc = 'MSXML'
  end
end
