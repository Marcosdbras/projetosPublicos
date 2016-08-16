object frmconexao_ibpt: Tfrmconexao_ibpt
  OldCreateOrder = False
  Left = 555
  Top = 185
  Height = 281
  Width = 215
  object banco: TZConnection
    Port = 3050
    Database = 'C:\DATASAC\paf\Dat\DATPDV.FDB'
    User = 'SYSDBA'
    Password = 'masterkey'
    Protocol = 'firebird-2.5'
    Left = 40
    Top = 56
  end
  object qrProdutoIBPT: TZQuery
    Connection = banco
    Params = <>
    Left = 128
    Top = 64
  end
  object qrFilial: TZQuery
    Connection = banco
    Params = <>
    Left = 32
    Top = 112
  end
  object qrIBPT: TZQuery
    Connection = banco
    Params = <>
    Left = 104
    Top = 16
  end
  object sqlconsultaDetalhe: TZQuery
    Connection = banco
    Params = <>
    Left = 96
    Top = 136
  end
  object sqlexec: TZQuery
    Connection = banco
    Params = <>
    Left = 48
    Top = 192
  end
end
