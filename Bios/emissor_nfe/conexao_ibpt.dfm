object frmconexao_ibpt: Tfrmconexao_ibpt
  OldCreateOrder = False
  Left = 944
  Top = 158
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
    Left = 120
    Top = 144
  end
  object qrIBPT: TZQuery
    Connection = banco
    Params = <>
    Left = 56
    Top = 152
  end
end
