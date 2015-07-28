object Form1: TForm1
  Left = 192
  Top = 160
  Width = 560
  Height = 275
  Caption = 'ATUALIZA BANCO'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 104
    Top = 112
    Width = 161
    Height = 25
    Caption = 'OK'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 280
    Top = 112
    Width = 145
    Height = 25
    Caption = 'CANCELAR'
    TabOrder = 1
    OnClick = Button2Click
  end
  object cds_Paises: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'codigo'
        DataType = ftInteger
      end
      item
        Name = 'Nome'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'sigla'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'codibge'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <
      item
        Name = 'codigo'
        Fields = 'codigo'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'nome'
        Fields = 'nome'
      end
      item
        Name = 'sigla'
        Fields = 'sigla'
      end
      item
        Name = 'codibge'
        Fields = 'codibge'
      end>
    Params = <>
    ProviderName = 'dsp_tabela1'
    StoreDefs = True
    Left = 28
    Top = 13
    object cds_Paisescodigo: TIntegerField
      FieldName = 'codigo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_Paisesnome: TStringField
      FieldName = 'nome'
      Size = 70
    end
    object cds_Paisessigla: TStringField
      FieldName = 'sigla'
    end
    object cds_Paisescodibge: TStringField
      FieldName = 'codibge'
    end
  end
  object dts_Paises: TDataSource
    DataSet = cds_Paises
    Left = 42
    Top = 27
  end
  object cds_Estados: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'codigo'
        DataType = ftInteger
      end
      item
        Name = 'nome'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'sigla'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'codibge'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'cpais'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'codigo'
        Fields = 'codigo'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'nome'
        Fields = 'nome'
      end
      item
        Name = 'sigla'
        Fields = 'sigla'
      end
      item
        Name = 'codibge'
        Fields = 'codibge'
      end
      item
        Name = 'cpais'
        Fields = 'cpais'
      end>
    IndexName = 'codigo'
    Params = <>
    StoreDefs = True
    Left = 36
    Top = 85
    object IntegerField1: TIntegerField
      FieldName = 'codigo'
    end
    object StringField1: TStringField
      FieldName = 'nome'
      Size = 70
    end
    object StringField2: TStringField
      FieldName = 'sigla'
    end
    object StringField3: TStringField
      FieldName = 'codibge'
    end
    object cds_Estadoscpais: TIntegerField
      FieldName = 'cpais'
    end
  end
  object dts_Estados: TDataSource
    DataSet = cds_Estados
    Left = 50
    Top = 99
  end
  object cds_Temp: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'codigo'
        DataType = ftInteger
      end
      item
        Name = 'cod1P'
        DataType = ftInteger
      end
      item
        Name = 'cod2P'
        DataType = ftInteger
      end
      item
        Name = 'cod3P'
        DataType = ftInteger
      end
      item
        Name = 'cod4P'
        DataType = ftInteger
      end
      item
        Name = 'cod5P'
        DataType = ftInteger
      end
      item
        Name = 'cod6P'
        DataType = ftInteger
      end
      item
        Name = 'cod7P'
        DataType = ftInteger
      end
      item
        Name = 'cod8P'
        DataType = ftInteger
      end
      item
        Name = 'cod9P'
        DataType = ftInteger
      end
      item
        Name = 'cod10P'
        DataType = ftInteger
      end
      item
        Name = 'cod11P'
        DataType = ftInteger
      end
      item
        Name = 'cod12P'
        DataType = ftInteger
      end
      item
        Name = 'cod13P'
        DataType = ftInteger
      end
      item
        Name = 'cod1A'
        DataType = ftInteger
      end
      item
        Name = 'cod2A'
        DataType = ftInteger
      end
      item
        Name = 'cod3A'
        DataType = ftInteger
      end
      item
        Name = 'cod4A'
        DataType = ftInteger
      end
      item
        Name = 'cod1B'
        DataType = ftInteger
      end
      item
        Name = 'cod2B'
        DataType = ftInteger
      end
      item
        Name = 'cod3B'
        DataType = ftInteger
      end
      item
        Name = 'cod4B'
        DataType = ftInteger
      end
      item
        Name = 'cod1C'
        DataType = ftInteger
      end
      item
        Name = 'cod2C'
        DataType = ftInteger
      end
      item
        Name = 'cod1T'
        DataType = ftInteger
      end
      item
        Name = 'cod2T'
        DataType = ftInteger
      end
      item
        Name = 'cod3T'
        DataType = ftInteger
      end
      item
        Name = 'COD1I'
        DataType = ftInteger
      end
      item
        Name = 'COD2I'
        DataType = ftInteger
      end
      item
        Name = 'COD3I'
        DataType = ftInteger
      end
      item
        Name = 'COD1M'
        DataType = ftInteger
      end
      item
        Name = 'COD2M'
        DataType = ftInteger
      end
      item
        Name = 'COD3M'
        DataType = ftInteger
      end
      item
        Name = 'cod1cc'
        DataType = ftInteger
      end
      item
        Name = 'cod2cc'
        DataType = ftInteger
      end
      item
        Name = 'cod3cc'
        DataType = ftInteger
      end
      item
        Name = 'cod1ee'
        DataType = ftInteger
      end
      item
        Name = 'cod2ee'
        DataType = ftInteger
      end
      item
        Name = 'cod3ee'
        DataType = ftInteger
      end
      item
        Name = 'cod1ff'
        DataType = ftInteger
      end
      item
        Name = 'cod2ff'
        DataType = ftInteger
      end
      item
        Name = 'cod3ff'
        DataType = ftInteger
      end
      item
        Name = 'cod1nf'
        DataType = ftInteger
      end
      item
        Name = 'cod2nf'
        DataType = ftInteger
      end
      item
        Name = 'cod3nf'
        DataType = ftInteger
      end
      item
        Name = 'cod4nf'
        DataType = ftInteger
      end
      item
        Name = 'cod5nf'
        DataType = ftInteger
      end
      item
        Name = 'cod6nf'
        DataType = ftInteger
      end
      item
        Name = 'cod7nf'
        DataType = ftInteger
      end
      item
        Name = 'cod8nf'
        DataType = ftInteger
      end
      item
        Name = 'cod9nf'
        DataType = ftInteger
      end
      item
        Name = 'cod10nf'
        DataType = ftInteger
      end
      item
        Name = 'cod11nf'
        DataType = ftInteger
      end
      item
        Name = 'cod12nf'
        DataType = ftInteger
      end
      item
        Name = 'cod13nf'
        DataType = ftInteger
      end
      item
        Name = 'cod14nf'
        DataType = ftInteger
      end
      item
        Name = 'cod15nf'
        DataType = ftInteger
      end
      item
        Name = 'cod16nf'
        DataType = ftInteger
      end
      item
        Name = 'cod18nf'
        DataType = ftInteger
      end
      item
        Name = 'cod19nf'
        DataType = ftInteger
      end
      item
        Name = 'cod20nf'
        DataType = ftInteger
      end
      item
        Name = 'cod21nf'
        DataType = ftInteger
      end
      item
        Name = 'cod22nf'
        DataType = ftInteger
      end
      item
        Name = 'cod23nf'
        DataType = ftInteger
      end
      item
        Name = 'cod24nf'
        DataType = ftInteger
      end
      item
        Name = 'cod25nf'
        DataType = ftInteger
      end
      item
        Name = 'cod26nf'
        DataType = ftInteger
      end
      item
        Name = 'cod27nf'
        DataType = ftInteger
      end
      item
        Name = 'cod28nf'
        DataType = ftInteger
      end
      item
        Name = 'cod29nf'
        DataType = ftInteger
      end
      item
        Name = 'cod30nf'
        DataType = ftInteger
      end
      item
        Name = 'cod31nf'
        DataType = ftInteger
      end
      item
        Name = 'cod32nf'
        DataType = ftInteger
      end
      item
        Name = 'cod33nf'
        DataType = ftInteger
      end
      item
        Name = 'cod34nf'
        DataType = ftInteger
      end
      item
        Name = 'cod35nf'
        DataType = ftInteger
      end
      item
        Name = 'cod36nf'
        DataType = ftInteger
      end
      item
        Name = 'cod37nf'
        DataType = ftInteger
      end
      item
        Name = 'cod38nf'
        DataType = ftInteger
      end
      item
        Name = 'cod39nf'
        DataType = ftInteger
      end
      item
        Name = 'cod40nf'
        DataType = ftInteger
      end
      item
        Name = 'cod41nf'
        DataType = ftInteger
      end
      item
        Name = 'cod42nf'
        DataType = ftInteger
      end
      item
        Name = 'cod43nf'
        DataType = ftInteger
      end
      item
        Name = 'cod44nf'
        DataType = ftInteger
      end
      item
        Name = 'cod17nf'
        DataType = ftInteger
      end
      item
        Name = 'cod1prodnf'
        DataType = ftInteger
      end
      item
        Name = 'cod2prodnf'
        DataType = ftInteger
      end
      item
        Name = 'cod3prodnf'
        DataType = ftInteger
      end
      item
        Name = 'cod4prodnf'
        DataType = ftInteger
      end
      item
        Name = 'cod5prodnf'
        DataType = ftInteger
      end
      item
        Name = 'cod6prodnf'
        DataType = ftInteger
      end
      item
        Name = 'cod7prodnf'
        DataType = ftInteger
      end
      item
        Name = 'cod8prodnf'
        DataType = ftInteger
      end
      item
        Name = 'cod9prodnf'
        DataType = ftInteger
      end
      item
        Name = 'cod10prodnf'
        DataType = ftInteger
      end
      item
        Name = 'cod11prodnf'
        DataType = ftInteger
      end
      item
        Name = 'cod12prodnf'
        DataType = ftInteger
      end
      item
        Name = 'cod13prodnf'
        DataType = ftInteger
      end
      item
        Name = 'cod14prodnf'
        DataType = ftInteger
      end
      item
        Name = 'cod15prodnf'
        DataType = ftInteger
      end
      item
        Name = 'cod16prodnf'
        DataType = ftInteger
      end
      item
        Name = 'cod1servnf'
        DataType = ftInteger
      end
      item
        Name = 'cod2servnf'
        DataType = ftInteger
      end
      item
        Name = 'cod3servnf'
        DataType = ftInteger
      end
      item
        Name = 'cod4servnf'
        DataType = ftInteger
      end
      item
        Name = 'cod5servnf'
        DataType = ftInteger
      end
      item
        Name = 'cod6servnf'
        DataType = ftInteger
      end
      item
        Name = 'cod7servnf'
        DataType = ftInteger
      end
      item
        Name = 'cod8servnf'
        DataType = ftInteger
      end
      item
        Name = 'cod9servnf'
        DataType = ftInteger
      end
      item
        Name = 'cod10servnf'
        DataType = ftInteger
      end
      item
        Name = 'cod11servnf'
        DataType = ftInteger
      end
      item
        Name = 'cod12servnf'
        DataType = ftInteger
      end
      item
        Name = 'cod13servnf'
        DataType = ftInteger
      end
      item
        Name = 'cod14servnf'
        DataType = ftInteger
      end
      item
        Name = 'cod15servnf'
        DataType = ftInteger
      end
      item
        Name = 'cod16servnf'
        DataType = ftInteger
      end
      item
        Name = 'cod14p'
        DataType = ftInteger
      end
      item
        Name = 'id'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <
      item
        Name = 'codigo'
        Fields = 'codigo'
        Options = [ixPrimary, ixUnique]
      end>
    IndexName = 'codigo'
    Params = <>
    StoreDefs = True
    Left = 36
    Top = 157
    object IntegerField2: TIntegerField
      FieldName = 'codigo'
    end
    object cds_Tempcod1P: TIntegerField
      FieldName = 'cod1P'
    end
    object cds_Tempcod2P: TIntegerField
      FieldName = 'cod2P'
    end
    object cds_Tempcod3P: TIntegerField
      FieldName = 'cod3P'
    end
    object cds_Tempcod4P: TIntegerField
      FieldName = 'cod4P'
    end
    object cds_Tempcod5P: TIntegerField
      FieldName = 'cod5P'
    end
    object cds_Tempcod6P: TIntegerField
      FieldName = 'cod6P'
    end
    object cds_Tempcod7P: TIntegerField
      FieldName = 'cod7P'
    end
    object cds_Tempcod8P: TIntegerField
      FieldName = 'cod8P'
    end
    object cds_Tempcod9P: TIntegerField
      FieldName = 'cod9P'
    end
    object cds_Tempcod10P: TIntegerField
      FieldName = 'cod10P'
    end
    object cds_Tempcod11P: TIntegerField
      FieldName = 'cod11P'
    end
    object cds_Tempcod12P: TIntegerField
      FieldName = 'cod12P'
    end
    object cds_Tempcod13P: TIntegerField
      FieldName = 'cod13P'
    end
    object cds_Tempcod1A: TIntegerField
      FieldName = 'cod1A'
    end
    object cds_Tempcod2A: TIntegerField
      FieldName = 'cod2A'
    end
    object cds_Tempcod3A: TIntegerField
      FieldName = 'cod3A'
    end
    object cds_Tempcod4A: TIntegerField
      FieldName = 'cod4A'
    end
    object cds_Tempcod1B: TIntegerField
      FieldName = 'cod1B'
    end
    object cds_Tempcod2B: TIntegerField
      FieldName = 'cod2B'
    end
    object cds_Tempcod3B: TIntegerField
      FieldName = 'cod3B'
    end
    object cds_Tempcod4B: TIntegerField
      FieldName = 'cod4B'
    end
    object cds_Tempcod1C: TIntegerField
      FieldName = 'cod1C'
    end
    object cds_Tempcod2C: TIntegerField
      FieldName = 'cod2C'
    end
    object cds_Tempcod1T: TIntegerField
      FieldName = 'cod1T'
    end
    object cds_Tempcod2T: TIntegerField
      FieldName = 'cod2T'
    end
    object cds_Tempcod3T: TIntegerField
      FieldName = 'cod3T'
    end
    object cds_TempCOD1I: TIntegerField
      FieldName = 'COD1I'
    end
    object cds_TempCOD2I: TIntegerField
      FieldName = 'COD2I'
    end
    object cds_TempCOD3I: TIntegerField
      FieldName = 'COD3I'
    end
    object cds_Tempcod1m: TIntegerField
      FieldName = 'cod1m'
    end
    object cds_Tempcod2m: TIntegerField
      FieldName = 'cod2m'
    end
    object cds_Tempcod3m: TIntegerField
      FieldName = 'cod3m'
    end
    object cds_Tempcod1cc: TIntegerField
      FieldName = 'cod1cc'
    end
    object cds_Tempcod2cc: TIntegerField
      FieldName = 'cod2cc'
    end
    object cds_Tempcod3cc: TIntegerField
      FieldName = 'cod3cc'
    end
    object cds_Tempcod1ee: TIntegerField
      FieldName = 'cod1ee'
    end
    object cds_Tempcod2ee: TIntegerField
      FieldName = 'cod2ee'
    end
    object cds_Tempcod3ee: TIntegerField
      FieldName = 'cod3ee'
    end
    object cds_Tempcod1ff: TIntegerField
      FieldName = 'cod1ff'
    end
    object cds_Tempcod2ff: TIntegerField
      FieldName = 'cod2ff'
    end
    object cds_Tempcod3ff: TIntegerField
      FieldName = 'cod3ff'
    end
    object cds_Tempcod1nf: TIntegerField
      FieldName = 'cod1nf'
    end
    object cds_Tempcod2nf: TIntegerField
      FieldName = 'cod2nf'
    end
    object cds_Tempcod3nf: TIntegerField
      FieldName = 'cod3nf'
    end
    object cds_Tempcod4nf: TIntegerField
      FieldName = 'cod4nf'
    end
    object cds_Tempcod5nf: TIntegerField
      FieldName = 'cod5nf'
    end
    object cds_Tempcod6nf: TIntegerField
      FieldName = 'cod6nf'
    end
    object cds_Tempcod7nf: TIntegerField
      FieldName = 'cod7nf'
    end
    object cds_Tempcod8nf: TIntegerField
      FieldName = 'cod8nf'
    end
    object cds_Tempcod9nf: TIntegerField
      FieldName = 'cod9nf'
    end
    object cds_Tempcod10nf: TIntegerField
      FieldName = 'cod10nf'
    end
    object cds_Tempcod11nf: TIntegerField
      FieldName = 'cod11nf'
    end
    object cds_Tempcod12nf: TIntegerField
      FieldName = 'cod12nf'
    end
    object cds_Tempcod13nf: TIntegerField
      FieldName = 'cod13nf'
    end
    object cds_Tempcod14nf: TIntegerField
      FieldName = 'cod14nf'
    end
    object cds_Tempcod15nf: TIntegerField
      FieldName = 'cod15nf'
    end
    object cds_Tempcod16nf: TIntegerField
      FieldName = 'cod16nf'
    end
    object cds_Tempcod17nf: TIntegerField
      FieldName = 'cod17nf'
    end
    object cds_Tempcod18nf: TIntegerField
      FieldName = 'cod18nf'
    end
    object cds_Tempcod19nf: TIntegerField
      FieldName = 'cod19nf'
    end
    object cds_Tempcod20nf: TIntegerField
      FieldName = 'cod20nf'
    end
    object cds_Tempcod21nf: TIntegerField
      FieldName = 'cod21nf'
    end
    object cds_Tempcod22nf: TIntegerField
      FieldName = 'cod22nf'
    end
    object cds_Tempcod23nf: TIntegerField
      FieldName = 'cod23nf'
    end
    object cds_Tempcod24nf: TIntegerField
      FieldName = 'cod24nf'
    end
    object cds_Tempcod25nf: TIntegerField
      FieldName = 'cod25nf'
    end
    object cds_Tempcod26nf: TIntegerField
      FieldName = 'cod26nf'
    end
    object cds_Tempcod27nf: TIntegerField
      FieldName = 'cod27nf'
    end
    object cds_Tempcod28nf: TIntegerField
      FieldName = 'cod28nf'
    end
    object cds_Tempcod29nf: TIntegerField
      FieldName = 'cod29nf'
    end
    object cds_Tempcod30nf: TIntegerField
      FieldName = 'cod30nf'
    end
    object cds_Tempcod31nf: TIntegerField
      FieldName = 'cod31nf'
    end
    object cds_Tempcod32nf: TIntegerField
      FieldName = 'cod32nf'
    end
    object cds_Tempcod33nf: TIntegerField
      FieldName = 'cod33nf'
    end
    object cds_Tempcod34nf: TIntegerField
      FieldName = 'cod34nf'
    end
    object cds_Tempcod35nf: TIntegerField
      FieldName = 'cod35nf'
    end
    object cds_Tempcod36nf: TIntegerField
      FieldName = 'cod36nf'
    end
    object cds_Tempcod37nf: TIntegerField
      FieldName = 'cod37nf'
    end
    object cds_Tempcod38nf: TIntegerField
      FieldName = 'cod38nf'
    end
    object cds_Tempcod39nf: TIntegerField
      FieldName = 'cod39nf'
    end
    object cds_Tempcod40nf: TIntegerField
      FieldName = 'cod40nf'
    end
    object cds_Tempcod41nf: TIntegerField
      FieldName = 'cod41nf'
    end
    object cds_Tempcod42nf: TIntegerField
      FieldName = 'cod42nf'
    end
    object cds_Tempcod43nf: TIntegerField
      FieldName = 'cod43nf'
    end
    object cds_Tempcod44nf: TIntegerField
      FieldName = 'cod44nf'
    end
    object cds_Tempcod1prodnf: TIntegerField
      FieldName = 'cod1prodnf'
    end
    object cds_Tempcod2prodnf: TIntegerField
      FieldName = 'cod2prodnf'
    end
    object cds_Tempcod3prodnf: TIntegerField
      FieldName = 'cod3prodnf'
    end
    object cds_Tempcod4prodnf: TIntegerField
      FieldName = 'cod4prodnf'
    end
    object cds_Tempcod5prodnf: TIntegerField
      FieldName = 'cod5prodnf'
    end
    object cds_Tempcod6prodnf: TIntegerField
      FieldName = 'cod6prodnf'
    end
    object cds_Tempcod7prodnf: TIntegerField
      FieldName = 'cod7prodnf'
    end
    object cds_Tempcod8prodnf: TIntegerField
      FieldName = 'cod8prodnf'
    end
    object cds_Tempcod9prodnf: TIntegerField
      FieldName = 'cod9prodnf'
    end
    object cds_Tempcod10prodnf: TIntegerField
      FieldName = 'cod10prodnf'
    end
    object cds_Tempcod11prodnf: TIntegerField
      FieldName = 'cod11prodnf'
    end
    object cds_Tempcod12prodnf: TIntegerField
      FieldName = 'cod12prodnf'
    end
    object cds_Tempcod13prodnf: TIntegerField
      FieldName = 'cod13prodnf'
    end
    object cds_Tempcod14prodnf: TIntegerField
      FieldName = 'cod14prodnf'
    end
    object cds_Tempcod15prodnf: TIntegerField
      FieldName = 'cod15prodnf'
    end
    object cds_Tempcod16prodnf: TIntegerField
      FieldName = 'cod16prodnf'
    end
    object cds_Tempcod1servnf: TIntegerField
      FieldName = 'cod1servnf'
    end
    object cds_Tempcod2servnf: TIntegerField
      FieldName = 'cod2servnf'
    end
    object cds_Tempcod3servnf: TIntegerField
      FieldName = 'cod3servnf'
    end
    object cds_Tempcod4servnf: TIntegerField
      FieldName = 'cod4servnf'
    end
    object cds_Tempcod5servnf: TIntegerField
      FieldName = 'cod5servnf'
    end
    object cds_Tempcod6servnf: TIntegerField
      FieldName = 'cod6servnf'
    end
    object cds_Tempcod7servnf: TIntegerField
      FieldName = 'cod7servnf'
    end
    object cds_Tempcod8servnf: TIntegerField
      FieldName = 'cod8servnf'
    end
    object cds_Tempcod9servnf: TIntegerField
      FieldName = 'cod9servnf'
    end
    object cds_Tempcod10servnf: TIntegerField
      FieldName = 'cod10servnf'
    end
    object cds_Tempcod11servnf: TIntegerField
      FieldName = 'cod11servnf'
    end
    object cds_Tempcod12servnf: TIntegerField
      FieldName = 'cod12servnf'
    end
    object cds_Tempcod13servnf: TIntegerField
      FieldName = 'cod13servnf'
    end
    object cds_Tempcod14servnf: TIntegerField
      FieldName = 'cod14servnf'
    end
    object cds_Tempcod15servnf: TIntegerField
      FieldName = 'cod15servnf'
    end
    object cds_Tempcod16servnf: TIntegerField
      FieldName = 'cod16servnf'
    end
    object cds_Tempcod14p: TIntegerField
      FieldName = 'cod14p'
    end
    object cds_Tempid: TStringField
      FieldName = 'id'
    end
  end
  object dts_Temp: TDataSource
    DataSet = cds_Temp
    Left = 50
    Top = 171
  end
  object cds_Munic: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'codigo'
        DataType = ftInteger
      end
      item
        Name = 'nome'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'codibge'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'cest'
        DataType = ftInteger
      end
      item
        Name = 'fxinicial'
        DataType = ftInteger
      end
      item
        Name = 'fxfinal'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'codigo'
        Fields = 'codigo'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'nome'
        Fields = 'nome'
      end
      item
        Name = 'codibge'
        Fields = 'codibge'
      end
      item
        Name = 'cest'
        Fields = 'cest'
      end>
    IndexName = 'codigo'
    Params = <>
    StoreDefs = True
    Left = 28
    Top = 237
    object IntegerField5: TIntegerField
      FieldName = 'codigo'
    end
    object StringField5: TStringField
      FieldName = 'nome'
      Size = 70
    end
    object StringField7: TStringField
      FieldName = 'codibge'
    end
    object IntegerField6: TIntegerField
      FieldName = 'cest'
    end
    object cds_Municfxinicial: TIntegerField
      FieldName = 'fxinicial'
    end
    object cds_Municfxfinal: TIntegerField
      FieldName = 'fxfinal'
    end
  end
  object dts_Munic: TDataSource
    DataSet = cds_Munic
    Left = 42
    Top = 251
  end
  object cds_icms: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'codigo'
        DataType = ftInteger
      end
      item
        Name = 'descricao'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'sigla'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'cest'
        DataType = ftInteger
      end
      item
        Name = 'aliquota'
        DataType = ftFloat
        Precision = 2
      end
      item
        Name = 'reducao'
        DataType = ftFloat
        Precision = 2
      end
      item
        Name = 'csitb'
        DataType = ftInteger
      end
      item
        Name = 'ccfop'
        DataType = ftInteger
      end
      item
        Name = 'ccfopf'
        DataType = ftInteger
      end
      item
        Name = 'obs'
        DataType = ftMemo
      end
      item
        Name = 'ccsosn'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'codigo'
        Fields = 'codigo'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'descricao'
        Fields = 'descricao'
      end
      item
        Name = 'sigla'
        Fields = 'sigla'
      end
      item
        Name = 'aliquota'
        Fields = 'aliquota'
      end
      item
        Name = 'reducao'
        Fields = 'reducao'
      end>
    IndexName = 'codigo'
    Params = <>
    StoreDefs = True
    Left = 28
    Top = 320
    object IntegerField3: TIntegerField
      FieldName = 'codigo'
    end
    object cds_icmsdescricao: TStringField
      FieldName = 'descricao'
      Size = 40
    end
    object cds_icmssigla: TStringField
      FieldName = 'sigla'
    end
    object cds_icmscest: TIntegerField
      FieldName = 'cest'
    end
    object cds_icmsaliquota: TFloatField
      FieldName = 'aliquota'
      DisplayFormat = '###,###,##0.00'
    end
    object cds_icmsreducao: TFloatField
      FieldName = 'reducao'
      DisplayFormat = '###,###,##0.00'
    end
    object cds_icmscsitb: TIntegerField
      FieldName = 'csitb'
    end
    object cds_icmsccfop: TIntegerField
      FieldName = 'ccfop'
    end
    object cds_icmsccfopf: TIntegerField
      FieldName = 'ccfopf'
    end
    object cds_icmsobs: TMemoField
      FieldName = 'obs'
      BlobType = ftMemo
    end
    object cds_icmsccsosn: TIntegerField
      FieldName = 'ccsosn'
    end
  end
  object dts_icms: TDataSource
    DataSet = cds_icms
    Left = 42
    Top = 331
  end
  object cds_ipi: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'codigo'
        DataType = ftInteger
      end
      item
        Name = 'descricao'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'sigla'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'aliquota'
        DataType = ftFloat
        Precision = 2
      end
      item
        Name = 'reducao'
        DataType = ftFloat
        Precision = 2
      end
      item
        Name = 'cpadrao'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'codigo'
        Fields = 'codigo'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'descricao'
        Fields = 'descricao'
      end
      item
        Name = 'sigla'
        Fields = 'sigla'
      end
      item
        Name = 'aliquota'
        Fields = 'aliquota'
      end
      item
        Name = 'reducao'
        Fields = 'reducao'
      end>
    IndexName = 'codigo'
    Params = <>
    StoreDefs = True
    Left = 28
    Top = 384
    object IntegerField4: TIntegerField
      FieldName = 'codigo'
    end
    object StringField4: TStringField
      FieldName = 'descricao'
      Size = 40
    end
    object StringField6: TStringField
      FieldName = 'sigla'
    end
    object FloatField1: TFloatField
      FieldName = 'aliquota'
      DisplayFormat = '###,###,##0.00'
    end
    object FloatField2: TFloatField
      FieldName = 'reducao'
      DisplayFormat = '###,###,##0.00'
    end
    object cds_ipicpadrao: TIntegerField
      FieldName = 'cpadrao'
    end
  end
  object dts_ipi: TDataSource
    DataSet = cds_ipi
    Left = 42
    Top = 395
  end
  object cds_sita: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'codigo'
        DataType = ftInteger
      end
      item
        Name = 'descricao'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'sigla'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'cpadrao'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'codigo'
        Fields = 'codigo'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'descricao'
        Fields = 'descricao'
      end
      item
        Name = 'sigla'
        Fields = 'sigla'
      end>
    IndexName = 'codigo'
    Params = <>
    StoreDefs = True
    Left = 116
    Top = 8
    object IntegerField7: TIntegerField
      FieldName = 'codigo'
    end
    object StringField8: TStringField
      FieldName = 'descricao'
      Size = 40
    end
    object StringField9: TStringField
      FieldName = 'sigla'
    end
    object cds_sitacpadrao: TIntegerField
      FieldName = 'cpadrao'
    end
  end
  object dts_sita: TDataSource
    DataSet = cds_sita
    Left = 130
    Top = 19
  end
  object cds_sitb: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'codigo'
        DataType = ftInteger
      end
      item
        Name = 'descricao'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'sigla'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <
      item
        Name = 'codigo'
        Fields = 'codigo'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'descricao'
        Fields = 'descricao'
      end
      item
        Name = 'sigla'
        Fields = 'sigla'
      end>
    IndexName = 'codigo'
    Params = <>
    StoreDefs = True
    Left = 124
    Top = 80
    object IntegerField8: TIntegerField
      FieldName = 'codigo'
    end
    object StringField10: TStringField
      FieldName = 'descricao'
      Size = 200
    end
    object StringField11: TStringField
      FieldName = 'sigla'
    end
  end
  object dts_sitb: TDataSource
    DataSet = cds_sitb
    Left = 138
    Top = 91
  end
  object cds_cf: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'codigo'
        DataType = ftInteger
      end
      item
        Name = 'descricao'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'sigla'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <
      item
        Name = 'codigo'
        Fields = 'codigo'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'descricao'
        Fields = 'descricao'
      end
      item
        Name = 'sigla'
        Fields = 'sigla'
      end>
    IndexName = 'codigo'
    Params = <>
    StoreDefs = True
    Left = 116
    Top = 152
    object IntegerField9: TIntegerField
      FieldName = 'codigo'
    end
    object StringField12: TStringField
      FieldName = 'descricao'
      Size = 40
    end
    object StringField13: TStringField
      FieldName = 'sigla'
    end
  end
  object dts_cf: TDataSource
    DataSet = cds_cf
    Left = 130
    Top = 163
  end
  object cds_modbc: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'codigo'
        DataType = ftInteger
      end
      item
        Name = 'descricao'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'sigla'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <
      item
        Name = 'codigo'
        Fields = 'codigo'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'descricao'
        Fields = 'descricao'
      end
      item
        Name = 'sigla'
        Fields = 'sigla'
      end>
    IndexName = 'codigo'
    Params = <>
    StoreDefs = True
    Left = 116
    Top = 224
    object IntegerField10: TIntegerField
      FieldName = 'codigo'
    end
    object StringField14: TStringField
      FieldName = 'descricao'
      Size = 40
    end
    object StringField15: TStringField
      FieldName = 'sigla'
    end
  end
  object dts_modbc: TDataSource
    DataSet = cds_modbc
    Left = 130
    Top = 235
  end
  object cds_modbcst: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'codigo'
        DataType = ftInteger
      end
      item
        Name = 'descricao'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'sigla'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <
      item
        Name = 'codigo'
        Fields = 'codigo'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'descricao'
        Fields = 'descricao'
      end
      item
        Name = 'sigla'
        Fields = 'sigla'
      end>
    IndexName = 'codigo'
    Params = <>
    StoreDefs = True
    Left = 108
    Top = 288
    object IntegerField11: TIntegerField
      FieldName = 'codigo'
    end
    object StringField16: TStringField
      FieldName = 'descricao'
      Size = 40
    end
    object StringField17: TStringField
      FieldName = 'sigla'
    end
  end
  object dts_modbcst: TDataSource
    DataSet = cds_modbcst
    Left = 122
    Top = 299
  end
  object cds_impostoI: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'codigo'
        DataType = ftInteger
      end
      item
        Name = 'descricao'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'sigla'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'aliquota'
        DataType = ftFloat
        Precision = 2
      end
      item
        Name = 'reducao'
        DataType = ftFloat
        Precision = 2
      end>
    IndexDefs = <
      item
        Name = 'codigo'
        Fields = 'codigo'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'descricao'
        Fields = 'descricao'
      end
      item
        Name = 'sigla'
        Fields = 'sigla'
      end
      item
        Name = 'aliquota'
        Fields = 'aliquota'
      end
      item
        Name = 'reducao'
        Fields = 'reducao'
      end>
    IndexName = 'codigo'
    Params = <>
    StoreDefs = True
    Left = 108
    Top = 360
    object IntegerField12: TIntegerField
      FieldName = 'codigo'
    end
    object StringField18: TStringField
      FieldName = 'descricao'
      Size = 40
    end
    object StringField19: TStringField
      FieldName = 'sigla'
    end
    object FloatField3: TFloatField
      FieldName = 'aliquota'
      DisplayFormat = '###,###,##0.00'
    end
    object FloatField4: TFloatField
      FieldName = 'reducao'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object dts_impostoI: TDataSource
    DataSet = cds_impostoI
    Left = 122
    Top = 371
  end
  object cds_impostoII: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'codigo'
        DataType = ftInteger
      end
      item
        Name = 'descricao'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'sigla'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'aliquota'
        DataType = ftFloat
        Precision = 2
      end
      item
        Name = 'reducao'
        DataType = ftFloat
        Precision = 2
      end>
    IndexDefs = <
      item
        Name = 'codigo'
        Fields = 'codigo'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'descricao'
        Fields = 'descricao'
      end
      item
        Name = 'sigla'
        Fields = 'sigla'
      end
      item
        Name = 'aliquota'
        Fields = 'aliquota'
      end
      item
        Name = 'reducao'
        Fields = 'reducao'
      end>
    IndexName = 'codigo'
    Params = <>
    StoreDefs = True
    Left = 204
    Top = 16
    object IntegerField13: TIntegerField
      FieldName = 'codigo'
    end
    object StringField20: TStringField
      FieldName = 'descricao'
      Size = 40
    end
    object StringField21: TStringField
      FieldName = 'sigla'
    end
    object FloatField5: TFloatField
      FieldName = 'aliquota'
      DisplayFormat = '###,###,##0.00'
    end
    object FloatField6: TFloatField
      FieldName = 'reducao'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object dts_impostoII: TDataSource
    DataSet = cds_impostoII
    Left = 218
    Top = 27
  end
  object cds_impostoIII: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'codigo'
        DataType = ftInteger
      end
      item
        Name = 'descricao'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'sigla'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'aliquota'
        DataType = ftFloat
        Precision = 2
      end
      item
        Name = 'reducao'
        DataType = ftFloat
        Precision = 2
      end>
    IndexDefs = <
      item
        Name = 'codigo'
        Fields = 'codigo'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'descricao'
        Fields = 'descricao'
      end
      item
        Name = 'sigla'
        Fields = 'sigla'
      end
      item
        Name = 'aliquota'
        Fields = 'aliquota'
      end
      item
        Name = 'reducao'
        Fields = 'reducao'
      end>
    IndexName = 'codigo'
    Params = <>
    StoreDefs = True
    Left = 212
    Top = 96
    object IntegerField14: TIntegerField
      FieldName = 'codigo'
    end
    object StringField22: TStringField
      FieldName = 'descricao'
      Size = 40
    end
    object StringField23: TStringField
      FieldName = 'sigla'
    end
    object FloatField7: TFloatField
      FieldName = 'aliquota'
      DisplayFormat = '###,###,##0.00'
    end
    object FloatField8: TFloatField
      FieldName = 'reducao'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object dts_impostoIII: TDataSource
    DataSet = cds_impostoIII
    Left = 226
    Top = 107
  end
  object cds_pis: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'codigo'
        DataType = ftInteger
      end
      item
        Name = 'descricao'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'sigla'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'aliquota'
        DataType = ftFloat
        Precision = 2
      end
      item
        Name = 'reducao'
        DataType = ftFloat
        Precision = 2
      end
      item
        Name = 'cpadrao'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'codigo'
        Fields = 'codigo'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'descricao'
        Fields = 'descricao'
      end
      item
        Name = 'sigla'
        Fields = 'sigla'
      end
      item
        Name = 'aliquota'
        Fields = 'aliquota'
      end
      item
        Name = 'reducao'
        Fields = 'reducao'
      end>
    IndexName = 'codigo'
    Params = <>
    StoreDefs = True
    Left = 212
    Top = 176
    object IntegerField15: TIntegerField
      FieldName = 'codigo'
    end
    object StringField24: TStringField
      FieldName = 'descricao'
      Size = 40
    end
    object StringField25: TStringField
      FieldName = 'sigla'
    end
    object FloatField9: TFloatField
      FieldName = 'aliquota'
      DisplayFormat = '###,###,##0.00'
    end
    object FloatField10: TFloatField
      FieldName = 'reducao'
      DisplayFormat = '###,###,##0.00'
    end
    object cds_piscpadrao: TIntegerField
      FieldName = 'cpadrao'
    end
  end
  object dts_pis: TDataSource
    DataSet = cds_pis
    Left = 226
    Top = 187
  end
  object cds_cofins: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'codigo'
        DataType = ftInteger
      end
      item
        Name = 'descricao'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'sigla'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'aliquota'
        DataType = ftFloat
        Precision = 2
      end
      item
        Name = 'reducao'
        DataType = ftFloat
        Precision = 2
      end
      item
        Name = 'cpadrao'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'codigo'
        Fields = 'codigo'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'descricao'
        Fields = 'descricao'
      end
      item
        Name = 'sigla'
        Fields = 'sigla'
      end
      item
        Name = 'aliquota'
        Fields = 'aliquota'
      end
      item
        Name = 'reducao'
        Fields = 'reducao'
      end>
    IndexName = 'codigo'
    Params = <>
    StoreDefs = True
    Left = 204
    Top = 248
    object IntegerField16: TIntegerField
      FieldName = 'codigo'
    end
    object StringField26: TStringField
      FieldName = 'descricao'
      Size = 40
    end
    object StringField27: TStringField
      FieldName = 'sigla'
    end
    object FloatField11: TFloatField
      FieldName = 'aliquota'
      DisplayFormat = '###,###,##0.00'
    end
    object FloatField12: TFloatField
      FieldName = 'reducao'
      DisplayFormat = '###,###,##0.00'
    end
    object cds_cofinscpadrao: TIntegerField
      FieldName = 'cpadrao'
    end
  end
  object dts_cofins: TDataSource
    DataSet = cds_cofins
    Left = 218
    Top = 259
  end
  object cds_cfop: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'codigo'
        DataType = ftInteger
      end
      item
        Name = 'descricao'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'sigla'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ctipo'
        DataType = ftInteger
      end
      item
        Name = 'ccupom'
        DataType = ftInteger
      end
      item
        Name = 'ctipoest'
        DataType = ftInteger
      end
      item
        Name = 'csitb'
        DataType = ftInteger
      end
      item
        Name = 'cicms'
        DataType = ftInteger
      end
      item
        Name = 'obs'
        DataType = ftMemo
      end
      item
        Name = 'cpadrao'
        DataType = ftInteger
      end
      item
        Name = 'ccsosn'
        DataType = ftInteger
      end
      item
        Name = 'aplicaliqfat'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'cipi'
        DataType = ftInteger
      end
      item
        Name = 'cpis'
        DataType = ftInteger
      end
      item
        Name = 'ccofins'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'codigo'
        Fields = 'codigo'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'descricao'
        Fields = 'descricao'
      end
      item
        Name = 'sigla'
        Fields = 'sigla'
      end>
    IndexName = 'codigo'
    Params = <>
    StoreDefs = True
    Left = 212
    Top = 320
    object IntegerField17: TIntegerField
      FieldName = 'codigo'
    end
    object StringField28: TStringField
      FieldName = 'descricao'
      Size = 40
    end
    object StringField29: TStringField
      FieldName = 'sigla'
    end
    object cds_cfopctipo: TIntegerField
      FieldName = 'ctipo'
    end
    object cds_cfopccupom: TIntegerField
      FieldName = 'ccupom'
    end
    object cds_cfopctipoest: TIntegerField
      FieldName = 'ctipoest'
    end
    object cds_cfopcsitb: TIntegerField
      FieldName = 'csitb'
    end
    object cds_cfopcicms: TIntegerField
      FieldName = 'cicms'
    end
    object cds_cfopobs: TMemoField
      FieldName = 'obs'
      BlobType = ftMemo
    end
    object cds_cfopcpadrao: TIntegerField
      FieldName = 'cpadrao'
    end
    object cds_cfopccsosn: TIntegerField
      FieldName = 'ccsosn'
    end
    object cds_cfopaplicaliqfat: TStringField
      DefaultExpression = #39'F'#39
      FieldName = 'aplicaliqfat'
      Size = 1
    end
    object cds_cfopcipi: TIntegerField
      FieldName = 'cipi'
    end
    object cds_cfopcpis: TIntegerField
      FieldName = 'cpis'
    end
    object cds_cfopccofins: TIntegerField
      FieldName = 'ccofins'
    end
  end
  object dts_cfop: TDataSource
    DataSet = cds_cfop
    Left = 226
    Top = 331
  end
  object cds_natop: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'codigo'
        DataType = ftInteger
      end
      item
        Name = 'descricao'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'ccfop'
        DataType = ftInteger
      end
      item
        Name = 'ccfopf'
        DataType = ftInteger
      end
      item
        Name = 'cicms'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'codigo'
        Fields = 'codigo'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'descricao'
        Fields = 'descricao'
      end>
    IndexName = 'codigo'
    Params = <>
    StoreDefs = True
    Left = 212
    Top = 384
    object IntegerField18: TIntegerField
      FieldName = 'codigo'
    end
    object StringField30: TStringField
      FieldName = 'descricao'
      Size = 40
    end
    object cds_natopccfop: TIntegerField
      FieldName = 'ccfop'
    end
    object cds_natopccfopf: TIntegerField
      FieldName = 'ccfopf'
    end
    object cds_natopcicms: TIntegerField
      FieldName = 'cicms'
    end
  end
  object dts_natop: TDataSource
    DataSet = cds_natop
    Left = 226
    Top = 395
  end
  object cds_unidade: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'codigo'
        DataType = ftInteger
      end
      item
        Name = 'descricao'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'sigla'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <
      item
        Name = 'codigo'
        Fields = 'codigo'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'descricao'
        Fields = 'descricao'
      end
      item
        Name = 'sigla'
      end>
    IndexName = 'codigo'
    Params = <>
    StoreDefs = True
    Left = 292
    Top = 8
    object IntegerField19: TIntegerField
      FieldName = 'codigo'
    end
    object StringField32: TStringField
      FieldName = 'descricao'
      Size = 40
    end
    object cds_unidadesigla: TStringField
      FieldName = 'sigla'
    end
  end
  object dts_unidade: TDataSource
    DataSet = cds_unidade
    Left = 306
    Top = 19
  end
  object cds_tiposerv: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'codigo'
        DataType = ftInteger
      end
      item
        Name = 'descricao'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'sigla'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <
      item
        Name = 'codigo'
        Fields = 'codigo'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'descricao'
        Fields = 'descricao'
      end
      item
        Name = 'sigla'
        Fields = 'sigla'
      end>
    IndexName = 'codigo'
    Params = <>
    StoreDefs = True
    Left = 292
    Top = 88
    object IntegerField20: TIntegerField
      FieldName = 'codigo'
    end
    object StringField31: TStringField
      FieldName = 'descricao'
      Size = 40
    end
    object StringField33: TStringField
      FieldName = 'sigla'
    end
  end
  object dts_tiposerv: TDataSource
    DataSet = cds_tiposerv
    Left = 306
    Top = 99
  end
  object cds_rcserv: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'codigo'
        DataType = ftInteger
      end
      item
        Name = 'descricao'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'sigla'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <
      item
        Name = 'codigo'
        Fields = 'codigo'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'descricao'
        Fields = 'descricao'
      end
      item
        Name = 'sigla'
        Fields = 'sigla'
      end>
    IndexName = 'codigo'
    Params = <>
    StoreDefs = True
    Left = 300
    Top = 176
    object IntegerField21: TIntegerField
      FieldName = 'codigo'
    end
    object StringField34: TStringField
      FieldName = 'descricao'
      Size = 40
    end
    object StringField35: TStringField
      FieldName = 'sigla'
    end
  end
  object dts_rcserv: TDataSource
    DataSet = cds_rcserv
    Left = 314
    Top = 187
  end
  object cds_produtos: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'codigo'
        DataType = ftInteger
      end
      item
        Name = 'descricao'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'cund'
        DataType = ftInteger
      end
      item
        Name = 'prve'
        DataType = ftFloat
        Precision = 2
      end
      item
        Name = 'cbar'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'bscalcst'
        DataType = ftFloat
        Precision = 2
      end
      item
        Name = 'icmscalcst'
        DataType = ftFloat
        Precision = 2
      end
      item
        Name = 'compoetnf'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'cicms'
        DataType = ftInteger
      end
      item
        Name = 'cipi'
        DataType = ftInteger
      end
      item
        Name = 'csita'
        DataType = ftInteger
      end
      item
        Name = 'csitb'
        DataType = ftInteger
      end
      item
        Name = 'ccfncm'
        DataType = ftInteger
      end
      item
        Name = 'cmodbscalc'
        DataType = ftInteger
      end
      item
        Name = 'cmodbscalcst'
        DataType = ftInteger
      end
      item
        Name = 'cvii'
        DataType = ftInteger
      end
      item
        Name = 'cpis'
        DataType = ftInteger
      end
      item
        Name = 'ccofins'
        DataType = ftInteger
      end
      item
        Name = 'coimp'
        DataType = ftInteger
      end
      item
        Name = 'ccfop'
        DataType = ftInteger
      end
      item
        Name = 'caux'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ccsosn'
        DataType = ftInteger
      end
      item
        Name = 'simplesncm'
        DataType = ftString
        Size = 60
      end>
    IndexDefs = <
      item
        Name = 'codigo'
        Fields = 'codigo'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'descricao'
        Fields = 'descricao'
      end
      item
        Name = 'cbar'
        Fields = 'cbar'
      end
      item
        Name = 'caux'
        Fields = 'caux'
      end>
    IndexName = 'codigo'
    Params = <>
    StoreDefs = True
    Left = 308
    Top = 248
    object IntegerField22: TIntegerField
      FieldName = 'codigo'
    end
    object StringField36: TStringField
      FieldName = 'descricao'
      Size = 40
    end
    object cds_produtoscund: TIntegerField
      FieldName = 'cund'
    end
    object cds_produtosprve: TFloatField
      FieldName = 'prve'
      DisplayFormat = '###,###,##0.00'
    end
    object cds_produtoscbar: TStringField
      FieldName = 'cbar'
      Size = 13
    end
    object cds_produtosbscalcst: TFloatField
      FieldName = 'bscalcst'
    end
    object cds_produtosicmscalcst: TFloatField
      FieldName = 'icmscalcst'
    end
    object cds_produtoscompoetnf: TStringField
      DefaultExpression = #39'T'#39
      FieldName = 'compoetnf'
      Size = 1
    end
    object cds_produtoscicms: TIntegerField
      FieldName = 'cicms'
    end
    object cds_produtoscipi: TIntegerField
      FieldName = 'cipi'
    end
    object cds_produtoscsita: TIntegerField
      FieldName = 'csita'
    end
    object cds_produtoscsitb: TIntegerField
      FieldName = 'csitb'
    end
    object cds_produtosccfncm: TIntegerField
      FieldName = 'ccfncm'
    end
    object cds_produtoscmodbscalc: TIntegerField
      FieldName = 'cmodbscalc'
    end
    object cds_produtoscmodbscalcst: TIntegerField
      FieldName = 'cmodbscalcst'
    end
    object cds_produtoscvii: TIntegerField
      FieldName = 'cvii'
    end
    object cds_produtoscpis: TIntegerField
      FieldName = 'cpis'
    end
    object cds_produtosccofins: TIntegerField
      FieldName = 'ccofins'
    end
    object cds_produtoscoimp: TIntegerField
      FieldName = 'coimp'
    end
    object cds_produtosccfop: TIntegerField
      FieldName = 'ccfop'
    end
    object cds_produtoscaux: TStringField
      FieldName = 'caux'
    end
    object cds_produtosccsosn: TIntegerField
      FieldName = 'ccsosn'
    end
    object cds_produtossimplesncm: TStringField
      FieldName = 'simplesncm'
      Size = 60
    end
  end
  object dts_produtos: TDataSource
    DataSet = cds_produtos
    Left = 322
    Top = 259
  end
  object cds_transportador: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'codigo'
        DataType = ftInteger
      end
      item
        Name = 'nome'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'fantasia'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'cnpj'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'telefones'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'ie'
        DataType = ftString
        Size = 22
      end
      item
        Name = 'email'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'site'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'contato'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'endereco'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'nro'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'compl'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'bairro'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'cmun'
        DataType = ftInteger
      end
      item
        Name = 'cest'
        DataType = ftInteger
      end
      item
        Name = 'cep'
        DataType = ftString
        Size = 9
      end
      item
        Name = 'im'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <
      item
        Name = 'codigo'
        Fields = 'codigo'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'nome'
        Fields = 'nome'
      end
      item
        Name = 'fantasia'
        Fields = 'fantasia'
      end
      item
        Name = 'cnpj'
        Fields = 'cnpj'
      end
      item
        Name = 'ie'
        Fields = 'ie'
      end
      item
        Name = 'cds_transportadorIndex6'
      end
      item
        Name = 'im'
        Fields = 'im'
      end>
    IndexName = 'codigo'
    Params = <>
    StoreDefs = True
    Left = 308
    Top = 320
    object IntegerField23: TIntegerField
      FieldName = 'codigo'
    end
    object cds_transportadorcnpj: TStringField
      FieldName = 'cnpj'
    end
    object cds_transportadorie: TStringField
      DisplayWidth = 22
      FieldName = 'ie'
      Size = 22
    end
    object cds_transportadornome: TStringField
      FieldName = 'nome'
      Size = 70
    end
    object cds_transportadorfantasia: TStringField
      FieldName = 'fantasia'
      Size = 50
    end
    object cds_transportadortelefones: TStringField
      FieldName = 'telefones'
      Size = 40
    end
    object cds_transportadoremail: TStringField
      FieldName = 'email'
      Size = 100
    end
    object cds_transportadorsite: TStringField
      FieldName = 'site'
      Size = 100
    end
    object cds_transportadorcontato: TStringField
      FieldName = 'contato'
      Size = 30
    end
    object cds_transportadorendereco: TStringField
      FieldName = 'endereco'
      Size = 60
    end
    object cds_transportadornro: TStringField
      FieldName = 'nro'
      Size = 10
    end
    object cds_transportadorcompl: TStringField
      FieldName = 'compl'
    end
    object cds_transportadorbairro: TStringField
      FieldName = 'bairro'
      Size = 30
    end
    object cds_transportadorcmun: TIntegerField
      FieldName = 'cmun'
    end
    object cds_transportadorcest: TIntegerField
      FieldName = 'cest'
    end
    object cds_transportadorcep: TStringField
      FieldName = 'cep'
      Size = 9
    end
    object cds_transportadorim: TStringField
      FieldName = 'im'
    end
  end
  object dts_transportador: TDataSource
    DataSet = cds_transportador
    Left = 322
    Top = 331
  end
  object cds_cmobra: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'codigo'
        DataType = ftInteger
      end
      item
        Name = 'descricao'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'prve'
        DataType = ftFloat
        Precision = 2
      end
      item
        Name = 'crcserv'
        DataType = ftInteger
      end
      item
        Name = 'ctiposerv'
        DataType = ftInteger
      end
      item
        Name = 'cimpostoi'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'codigo'
        Fields = 'codigo'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'descricao'
        Fields = 'descricao'
      end>
    IndexName = 'codigo'
    Params = <>
    StoreDefs = True
    Left = 300
    Top = 384
    object IntegerField24: TIntegerField
      FieldName = 'codigo'
    end
    object StringField37: TStringField
      FieldName = 'descricao'
      Size = 40
    end
    object FloatField13: TFloatField
      FieldName = 'prve'
    end
    object cds_cmobracrcserv: TIntegerField
      FieldName = 'crcserv'
    end
    object cds_cmobractiposerv: TIntegerField
      FieldName = 'ctiposerv'
    end
    object cds_cmobracimpostoi: TIntegerField
      FieldName = 'cimpostoi'
    end
  end
  object dts_cmobra: TDataSource
    DataSet = cds_cmobra
    Left = 314
    Top = 395
  end
  object cds_clientes: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'codigo'
        DataType = ftInteger
      end
      item
        Name = 'nome'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'fantasia'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'cnpj'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'telefones'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'ie'
        DataType = ftString
        Size = 22
      end
      item
        Name = 'email'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'site'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'contato'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'endereco'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'nro'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'compl'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'bairro'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'cmun'
        DataType = ftInteger
      end
      item
        Name = 'cest'
        DataType = ftInteger
      end
      item
        Name = 'cep'
        DataType = ftString
        Size = 9
      end
      item
        Name = 'im'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'obs'
        DataType = ftMemo
      end
      item
        Name = 'ctransp'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'codigo'
        Fields = 'codigo'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'nome'
        Fields = 'nome'
      end
      item
        Name = 'fantasia'
        Fields = 'fantasia'
      end
      item
        Name = 'cnpj'
        Fields = 'cnpj'
      end
      item
        Name = 'ie'
        Fields = 'ie'
      end
      item
        Name = 'cds_transportadorIndex6'
      end
      item
        Name = 'im'
        Fields = 'im'
      end>
    IndexName = 'codigo'
    Params = <>
    StoreDefs = True
    Left = 372
    Top = 8
    object IntegerField25: TIntegerField
      FieldName = 'codigo'
    end
    object StringField38: TStringField
      FieldName = 'cnpj'
    end
    object StringField39: TStringField
      DisplayWidth = 22
      FieldName = 'ie'
      Size = 22
    end
    object StringField40: TStringField
      FieldName = 'nome'
      Size = 70
    end
    object StringField41: TStringField
      FieldName = 'fantasia'
      Size = 50
    end
    object StringField42: TStringField
      FieldName = 'telefones'
      Size = 40
    end
    object StringField43: TStringField
      FieldName = 'email'
      Size = 100
    end
    object StringField44: TStringField
      FieldName = 'site'
      Size = 100
    end
    object StringField45: TStringField
      FieldName = 'contato'
      Size = 30
    end
    object StringField46: TStringField
      FieldName = 'endereco'
      Size = 60
    end
    object StringField47: TStringField
      FieldName = 'nro'
      Size = 10
    end
    object StringField48: TStringField
      FieldName = 'compl'
    end
    object StringField49: TStringField
      FieldName = 'bairro'
      Size = 30
    end
    object IntegerField26: TIntegerField
      FieldName = 'cmun'
    end
    object IntegerField27: TIntegerField
      FieldName = 'cest'
    end
    object StringField50: TStringField
      FieldName = 'cep'
      Size = 9
    end
    object StringField51: TStringField
      FieldName = 'im'
    end
    object cds_clientesctransp: TIntegerField
      FieldName = 'ctransp'
    end
    object cds_clientesobs: TMemoField
      FieldName = 'obs'
      BlobType = ftMemo
    end
  end
  object dts_clientes: TDataSource
    DataSet = cds_clientes
    Left = 386
    Top = 19
  end
  object cds_regtrib: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'codigo'
        DataType = ftInteger
      end
      item
        Name = 'Nome'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'sigla'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'obs'
        DataType = ftMemo
      end
      item
        Name = 'porcg'
        DataType = ftFloat
        Precision = 2
      end>
    IndexDefs = <
      item
        Name = 'codigo'
        Fields = 'codigo'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'nome'
        Fields = 'nome'
      end
      item
        Name = 'sigla'
        Fields = 'sigla'
      end>
    Params = <>
    StoreDefs = True
    Left = 380
    Top = 85
    object IntegerField28: TIntegerField
      FieldName = 'codigo'
    end
    object StringField52: TStringField
      FieldName = 'nome'
      Size = 70
    end
    object StringField53: TStringField
      FieldName = 'sigla'
    end
    object cds_regtribobs: TMemoField
      FieldName = 'obs'
      BlobType = ftMemo
    end
    object cds_regtribporcg: TFloatField
      FieldName = 'porcg'
    end
  end
  object dts_regtrib: TDataSource
    DataSet = cds_regtrib
    Left = 394
    Top = 99
  end
  object cds_emitente: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'codigo'
        DataType = ftInteger
      end
      item
        Name = 'nome'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'fantasia'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'cnpj'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'telefones'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'ie'
        DataType = ftString
        Size = 22
      end
      item
        Name = 'email'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'site'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'contato'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'endereco'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'nro'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'compl'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'bairro'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'cmun'
        DataType = ftInteger
      end
      item
        Name = 'cest'
        DataType = ftInteger
      end
      item
        Name = 'cep'
        DataType = ftString
        Size = 9
      end
      item
        Name = 'im'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'obs'
        DataType = ftMemo
      end
      item
        Name = 'cregtrib'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'codigo'
        Fields = 'codigo'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'nome'
        Fields = 'nome'
      end
      item
        Name = 'fantasia'
        Fields = 'fantasia'
      end
      item
        Name = 'cnpj'
        Fields = 'cnpj'
      end
      item
        Name = 'ie'
        Fields = 'ie'
      end
      item
        Name = 'cds_transportadorIndex6'
      end
      item
        Name = 'im'
        Fields = 'im'
      end>
    IndexName = 'codigo'
    Params = <>
    StoreDefs = True
    Left = 388
    Top = 176
    object IntegerField29: TIntegerField
      FieldName = 'codigo'
    end
    object StringField54: TStringField
      FieldName = 'cnpj'
    end
    object StringField55: TStringField
      DisplayWidth = 22
      FieldName = 'ie'
      Size = 22
    end
    object StringField56: TStringField
      FieldName = 'nome'
      Size = 70
    end
    object StringField57: TStringField
      FieldName = 'fantasia'
      Size = 50
    end
    object StringField58: TStringField
      FieldName = 'telefones'
      Size = 40
    end
    object StringField59: TStringField
      FieldName = 'email'
      Size = 100
    end
    object StringField60: TStringField
      FieldName = 'site'
      Size = 100
    end
    object StringField61: TStringField
      FieldName = 'contato'
      Size = 30
    end
    object StringField62: TStringField
      FieldName = 'endereco'
      Size = 60
    end
    object StringField63: TStringField
      FieldName = 'nro'
      Size = 10
    end
    object StringField64: TStringField
      FieldName = 'compl'
    end
    object StringField65: TStringField
      FieldName = 'bairro'
      Size = 30
    end
    object IntegerField30: TIntegerField
      FieldName = 'cmun'
    end
    object IntegerField31: TIntegerField
      FieldName = 'cest'
    end
    object StringField66: TStringField
      FieldName = 'cep'
      Size = 9
    end
    object StringField67: TStringField
      FieldName = 'im'
    end
    object MemoField1: TMemoField
      FieldName = 'obs'
      BlobType = ftMemo
    end
    object cds_emitentecregtrib: TIntegerField
      FieldName = 'cregtrib'
    end
  end
  object dts_emitente: TDataSource
    DataSet = cds_emitente
    Left = 402
    Top = 187
  end
  object cds_fornecedores: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'codigo'
        DataType = ftInteger
      end
      item
        Name = 'nome'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'fantasia'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'cnpj'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'telefones'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'ie'
        DataType = ftString
        Size = 22
      end
      item
        Name = 'email'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'site'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'contato'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'endereco'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'nro'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'compl'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'bairro'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'cmun'
        DataType = ftInteger
      end
      item
        Name = 'cest'
        DataType = ftInteger
      end
      item
        Name = 'cep'
        DataType = ftString
        Size = 9
      end
      item
        Name = 'im'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'obs'
        DataType = ftMemo
      end
      item
        Name = 'ctransp'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'codigo'
        Fields = 'codigo'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'nome'
        Fields = 'nome'
      end
      item
        Name = 'fantasia'
        Fields = 'fantasia'
      end
      item
        Name = 'cnpj'
        Fields = 'cnpj'
      end
      item
        Name = 'ie'
        Fields = 'ie'
      end
      item
        Name = 'cds_transportadorIndex6'
      end
      item
        Name = 'im'
        Fields = 'im'
      end>
    IndexName = 'codigo'
    Params = <>
    StoreDefs = True
    Left = 396
    Top = 248
    object IntegerField32: TIntegerField
      FieldName = 'codigo'
    end
    object StringField68: TStringField
      FieldName = 'cnpj'
    end
    object StringField69: TStringField
      DisplayWidth = 22
      FieldName = 'ie'
      Size = 22
    end
    object StringField70: TStringField
      FieldName = 'nome'
      Size = 70
    end
    object StringField71: TStringField
      FieldName = 'fantasia'
      Size = 50
    end
    object StringField72: TStringField
      FieldName = 'telefones'
      Size = 40
    end
    object StringField73: TStringField
      FieldName = 'email'
      Size = 100
    end
    object StringField74: TStringField
      FieldName = 'site'
      Size = 100
    end
    object StringField75: TStringField
      FieldName = 'contato'
      Size = 30
    end
    object StringField76: TStringField
      FieldName = 'endereco'
      Size = 60
    end
    object StringField77: TStringField
      FieldName = 'nro'
      Size = 10
    end
    object StringField78: TStringField
      FieldName = 'compl'
    end
    object StringField79: TStringField
      FieldName = 'bairro'
      Size = 30
    end
    object IntegerField33: TIntegerField
      FieldName = 'cmun'
    end
    object IntegerField34: TIntegerField
      FieldName = 'cest'
    end
    object StringField80: TStringField
      FieldName = 'cep'
      Size = 9
    end
    object StringField81: TStringField
      FieldName = 'im'
    end
    object IntegerField35: TIntegerField
      FieldName = 'ctransp'
    end
    object MemoField2: TMemoField
      FieldName = 'obs'
      BlobType = ftMemo
    end
  end
  object dts_fornecedores: TDataSource
    DataSet = cds_fornecedores
    Left = 410
    Top = 259
  end
  object cds_nf: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'codigo'
        DataType = ftInteger
      end
      item
        Name = 'cemi'
        DataType = ftInteger
      end
      item
        Name = 'cdest'
        DataType = ftInteger
      end
      item
        Name = 'tipodest'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'datacad'
        DataType = ftDate
      end
      item
        Name = 'ctipoemi'
        DataType = ftInteger
      end
      item
        Name = 'ncupom'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'vlrcredicms'
        DataType = ftFloat
      end
      item
        Name = 'aliqcredicms'
        DataType = ftFloat
      end
      item
        Name = 'vlrreticms'
        DataType = ftFloat
      end
      item
        Name = 'aliqreticms'
        DataType = ftFloat
      end
      item
        Name = 'artricms'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'nnfrefdevol'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'datanfrefdevol'
        DataType = ftDate
      end
      item
        Name = 'datacupom'
        DataType = ftDate
      end
      item
        Name = 'aliqapicms'
        DataType = ftFloat
      end
      item
        Name = 'vlrcredipi'
        DataType = ftFloat
      end
      item
        Name = 'aliqcredipi'
        DataType = ftFloat
      end
      item
        Name = 'vlrretipi'
        DataType = ftFloat
      end
      item
        Name = 'aliqretipi'
        DataType = ftFloat
      end
      item
        Name = 'artripi'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'aliqapipi'
        DataType = ftFloat
      end
      item
        Name = 'cnatop'
        DataType = ftInteger
      end
      item
        Name = 'horasai'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'datasai'
        DataType = ftDateTime
      end
      item
        Name = 'nnf'
        DataType = ftInteger
      end
      item
        Name = 'pdesc'
        DataType = ftFloat
      end
      item
        Name = 'valdesc'
        DataType = ftFloat
      end
      item
        Name = 'liquido'
        DataType = ftFloat
      end
      item
        Name = 'nparc'
        DataType = ftInteger
      end
      item
        Name = 'datainic'
        DataType = ftDateTime
      end
      item
        Name = 'periodo'
        DataType = ftInteger
      end
      item
        Name = 'din'
        DataType = ftFloat
      end
      item
        Name = 'placavei'
        DataType = ftString
        Size = 9
      end
      item
        Name = 'ufvei'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'quantidade'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'especie'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'marca'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'numero'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'pesob'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'pesol'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'iesubtrib'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'BSCALCSUBSTRIB'
        DataType = ftFloat
        Precision = 2
      end
      item
        Name = 'VLRICMSSUBTRIB'
        DataType = ftFloat
        Precision = 2
      end
      item
        Name = 'tvlrfrete'
        DataType = ftFloat
        Precision = 2
      end
      item
        Name = 'tvlrout'
        DataType = ftFloat
        Precision = 2
      end
      item
        Name = 'tvlrseg'
        DataType = ftFloat
      end
      item
        Name = 'bscalcsubtrib'
        DataType = ftFloat
        Precision = 2
      end
      item
        Name = 'ctiponf'
        DataType = ftInteger
      end
      item
        Name = 'cfreteporconta'
        DataType = ftInteger
      end
      item
        Name = 'ctransp'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'codigo'
        Fields = 'codigo'
        Options = [ixPrimary, ixUnique]
      end>
    IndexName = 'codigo'
    Params = <>
    StoreDefs = True
    Left = 408
    Top = 312
    object IntegerField36: TIntegerField
      FieldName = 'codigo'
    end
    object cds_nfcemi: TIntegerField
      FieldName = 'cemi'
    end
    object cds_nfcdest: TIntegerField
      FieldName = 'cdest'
    end
    object cds_nftipodest: TStringField
      FieldName = 'tipodest'
      Size = 1
    end
    object cds_nfdatacad: TDateField
      FieldName = 'datacad'
    end
    object cds_nfnomedest: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomedest'
      Size = 70
      Calculated = True
    end
    object cds_nfctipoemi: TIntegerField
      FieldName = 'ctipoemi'
    end
    object cds_nfncupom: TStringField
      FieldName = 'ncupom'
      Size = 15
    end
    object cds_nfnnfrefdevol: TStringField
      FieldName = 'nnfrefdevol'
    end
    object cds_nfdatanfrefdevol: TDateField
      FieldName = 'datanfrefdevol'
    end
    object cds_nfvlrcredicms: TFloatField
      FieldName = 'vlrcredicms'
    end
    object cds_nfaliqcredicms: TFloatField
      FieldName = 'aliqcredicms'
    end
    object cds_nfvlrreticms: TFloatField
      FieldName = 'vlrreticms'
    end
    object cds_nfaliqreticms: TFloatField
      FieldName = 'aliqreticms'
    end
    object cds_nfartricms: TStringField
      FieldName = 'artricms'
    end
    object cds_nfdatacupom: TDateField
      FieldName = 'datacupom'
    end
    object cds_nfaliqapicms: TFloatField
      FieldName = 'aliqapicms'
    end
    object cds_nfvlrcredipi: TFloatField
      FieldName = 'vlrcredipi'
    end
    object cds_nfaliqcredipi: TFloatField
      FieldName = 'aliqcredipi'
    end
    object cds_nfvlrretipi: TFloatField
      FieldName = 'vlrretipi'
    end
    object cds_nfaliqretipi: TFloatField
      FieldName = 'aliqretipi'
    end
    object cds_nfartripi: TStringField
      FieldName = 'artripi'
    end
    object cds_nfaliqapipi: TFloatField
      FieldName = 'aliqapipi'
    end
    object cds_nfcnatop: TIntegerField
      FieldName = 'cnatop'
    end
    object cds_nfhorasai: TStringField
      FieldName = 'horasai'
      Size = 5
    end
    object cds_nfdatasai: TDateTimeField
      FieldName = 'datasai'
    end
    object cds_nfnnf: TIntegerField
      FieldName = 'nnf'
    end
    object cds_nfpdesc: TFloatField
      FieldName = 'pdesc'
    end
    object cds_nfvaldesc: TFloatField
      FieldName = 'valdesc'
    end
    object cds_nfliquido: TFloatField
      FieldName = 'liquido'
    end
    object cds_nfdin: TFloatField
      FieldName = 'din'
    end
    object cds_nfnparc: TIntegerField
      FieldName = 'nparc'
    end
    object cds_nfdatainic: TDateTimeField
      FieldName = 'datainic'
    end
    object cds_nfperiodo: TIntegerField
      FieldName = 'periodo'
    end
    object cds_nfplacavei: TStringField
      FieldName = 'placavei'
      Size = 9
    end
    object cds_nfufvei: TStringField
      FieldName = 'ufvei'
      Size = 2
    end
    object cds_nfquantidade: TStringField
      FieldName = 'quantidade'
      Size = 30
    end
    object cds_nfespecie: TStringField
      FieldName = 'especie'
      Size = 30
    end
    object cds_nfmarca: TStringField
      FieldName = 'marca'
      Size = 30
    end
    object cds_nfnumero: TStringField
      FieldName = 'numero'
      Size = 30
    end
    object cds_nfpesob: TStringField
      FieldName = 'pesob'
      Size = 30
    end
    object cds_nfpesol: TStringField
      FieldName = 'pesol'
      Size = 30
    end
    object cds_nfiesubtrib: TStringField
      FieldName = 'iesubtrib'
    end
    object cds_nfBSCALCSUBSTRIB: TFloatField
      FieldName = 'BSCALCSUBSTRIB'
    end
    object cds_nfVLRICMSSUBTRIB: TFloatField
      FieldName = 'VLRICMSSUBTRIB'
    end
    object cds_nfbscalcsubtrib: TFloatField
      FieldName = 'bscalcsubtrib'
    end
    object cds_nftvlrfrete: TFloatField
      FieldName = 'tvlrfrete'
    end
    object cds_nftvlrseg: TFloatField
      FieldName = 'tvlrseg'
    end
    object cds_nftvlrout: TFloatField
      FieldName = 'tvlrout'
    end
    object cds_nfctiponf: TIntegerField
      FieldName = 'ctiponf'
    end
    object cds_nfcfreteporconta: TIntegerField
      FieldName = 'cfreteporconta'
    end
    object cds_nfctransp: TIntegerField
      FieldName = 'ctransp'
    end
  end
  object dts_nf: TDataSource
    DataSet = cds_nf
    Left = 418
    Top = 328
  end
  object cds_tiponf: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'codigo'
        DataType = ftInteger
      end
      item
        Name = 'Nome'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'sigla'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <
      item
        Name = 'codigo'
        Fields = 'codigo'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'nome'
        Fields = 'nome'
      end
      item
        Name = 'sigla'
        Fields = 'sigla'
      end>
    Params = <>
    StoreDefs = True
    Left = 404
    Top = 389
    object IntegerField37: TIntegerField
      FieldName = 'codigo'
    end
    object StringField82: TStringField
      FieldName = 'nome'
      Size = 70
    end
    object StringField83: TStringField
      FieldName = 'sigla'
    end
  end
  object dts_tiponf: TDataSource
    DataSet = cds_tiponf
    Left = 418
    Top = 403
  end
  object cds_onusdofrete: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'codigo'
        DataType = ftInteger
      end
      item
        Name = 'Nome'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'sigla'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <
      item
        Name = 'codigo'
        Fields = 'codigo'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'nome'
        Fields = 'nome'
      end
      item
        Name = 'sigla'
        Fields = 'sigla'
      end>
    Params = <>
    StoreDefs = True
    Left = 468
    Top = 13
    object IntegerField38: TIntegerField
      FieldName = 'codigo'
    end
    object StringField84: TStringField
      FieldName = 'nome'
      Size = 70
    end
    object StringField85: TStringField
      FieldName = 'sigla'
    end
  end
  object dts_onusdofrete: TDataSource
    DataSet = cds_onusdofrete
    Left = 482
    Top = 27
  end
  object cds_indice: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'codigo'
        DataType = ftInteger
      end
      item
        Name = 'caminhoarqnfe'
        DataType = ftString
        Size = 150
      end
      item
        Name = 'nnf'
        DataType = ftInteger
      end
      item
        Name = 'caminhoarqnfetemp'
        DataType = ftString
        Size = 150
      end
      item
        Name = 'contadornfe'
        DataType = ftInteger
      end
      item
        Name = 'chaveconsultacep'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'importarpara'
        DataType = ftString
        Size = 150
      end
      item
        Name = 'exportarpara'
        DataType = ftString
        Size = 150
      end
      item
        Name = 'configcpro'
        DataType = ftInteger
      end
      item
        Name = 'hverao'
        DataType = ftString
        Size = 3
      end>
    IndexDefs = <
      item
        Name = 'codigo'
        Fields = 'codigo'
        Options = [ixPrimary, ixUnique]
      end>
    Params = <>
    StoreDefs = True
    Left = 476
    Top = 85
    object IntegerField39: TIntegerField
      FieldName = 'codigo'
    end
    object cds_indicecaminhoarqnfe: TStringField
      FieldName = 'caminhoarqnfe'
      Size = 150
    end
    object cds_indicennf: TIntegerField
      FieldName = 'nnf'
    end
    object cds_indicecaminhoarqnfetemp: TStringField
      FieldName = 'caminhoarqnfetemp'
      Size = 150
    end
    object cds_indicecontadornfe: TIntegerField
      FieldName = 'contadornfe'
    end
    object cds_indicechaveconsultacep: TStringField
      FieldName = 'chaveconsultacep'
      Size = 40
    end
    object cds_indiceimportarpara: TStringField
      FieldName = 'importarpara'
      Size = 150
    end
    object cds_indiceexportarpara: TStringField
      FieldName = 'exportarpara'
      Size = 150
    end
    object cds_indiceconfigcpro: TIntegerField
      FieldName = 'configcpro'
    end
    object cds_indicehverao: TStringField
      FieldName = 'hverao'
      Size = 3
    end
  end
  object dts_indice: TDataSource
    DataSet = cds_indice
    Left = 490
    Top = 99
  end
  object cds_nfe: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'codigo'
        DataType = ftInteger
      end
      item
        Name = 'cemi'
        DataType = ftInteger
      end
      item
        Name = 'cdest'
        DataType = ftInteger
      end
      item
        Name = 'tipodest'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ctransp'
        DataType = ftInteger
      end
      item
        Name = 'pdesc'
        DataType = ftFloat
        Precision = 2
      end
      item
        Name = 'vdesc'
        DataType = ftFloat
        Precision = 2
      end
      item
        Name = 'total'
        DataType = ftFloat
        Precision = 2
      end
      item
        Name = 'cnatop'
        DataType = ftInteger
      end
      item
        Name = 'bscalcsubtrib'
        DataType = ftFloat
        Precision = 2
      end
      item
        Name = 'vlricmssubtrib'
        DataType = ftFloat
        Precision = 2
      end
      item
        Name = 'placavei'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'ufvei'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'datasai'
        DataType = ftDate
      end
      item
        Name = 'horasai'
        DataType = ftTime
      end
      item
        Name = 'Quantidade'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'especie'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'marca'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'numero'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'pesob'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'pesol'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'adicnf'
        DataType = ftMemo
      end
      item
        Name = 'adicpostofiscal'
        DataType = ftMemo
      end
      item
        Name = 'ctiponf'
        DataType = ftInteger
      end
      item
        Name = 'cfreteporconta'
        DataType = ftInteger
      end
      item
        Name = 'nnf'
        DataType = ftInteger
      end
      item
        Name = 'liquido'
        DataType = ftFloat
        Precision = 2
      end
      item
        Name = 'tvlrfrete'
        DataType = ftFloat
        Precision = 2
      end
      item
        Name = 'tvlrseg'
        DataType = ftFloat
        Precision = 2
      end
      item
        Name = 'tvlrout'
        DataType = ftFloat
        Precision = 2
      end
      item
        Name = 'tvlrvii'
        DataType = ftFloat
        Precision = 2
      end
      item
        Name = 'tvlripi'
        DataType = ftFloat
        Precision = 2
      end
      item
        Name = 'tvlrpis'
        DataType = ftFloat
        Precision = 2
      end
      item
        Name = 'tvlrcofins'
        DataType = ftFloat
        Precision = 2
      end
      item
        Name = 'dataemi'
        DataType = ftDate
      end
      item
        Name = 'iesubstrib'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'modelonf'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'serienf'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'codigonf'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'tiponf'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'finalidadenf'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'formapgtonf'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'cuftransp'
        DataType = ftInteger
      end
      item
        Name = 'vlrserv'
        DataType = ftFloat
        Precision = 2
      end
      item
        Name = 'vlrbsserv'
        DataType = ftFloat
        Precision = 2
      end
      item
        Name = 'aliqserv'
        DataType = ftFloat
        Precision = 2
      end
      item
        Name = 'vlriss'
        DataType = ftFloat
        Precision = 2
      end
      item
        Name = 'bcipi'
        DataType = ftFloat
        Precision = 2
      end
      item
        Name = 'aliqipi'
        DataType = ftFloat
        Precision = 2
      end
      item
        Name = 'vipi'
        DataType = ftFloat
        Precision = 2
      end
      item
        Name = 'cpis'
        DataType = ftInteger
      end
      item
        Name = 'npis'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'bcpis'
        DataType = ftFloat
        Precision = 2
      end
      item
        Name = 'vpis'
        DataType = ftFloat
        Precision = 2
      end
      item
        Name = 'aliqpis'
        DataType = ftFloat
        Precision = 2
      end
      item
        Name = 'ccofins'
        DataType = ftInteger
      end
      item
        Name = 'ncofins'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'bscofins'
        DataType = ftFloat
        Precision = 2
      end
      item
        Name = 'aliqcofins'
        DataType = ftFloat
        Precision = 2
      end
      item
        Name = 'vcofins'
        DataType = ftFloat
        Precision = 2
      end
      item
        Name = 'totbcicms'
        DataType = ftFloat
        Precision = 2
      end
      item
        Name = 'toticms'
        DataType = ftFloat
        Precision = 2
      end
      item
        Name = 'totp'
        DataType = ftFloat
        Precision = 2
      end
      item
        Name = 'vlrdesc'
        DataType = ftFloat
        Precision = 2
      end
      item
        Name = 'totipi'
        DataType = ftFloat
        Precision = 2
      end
      item
        Name = 'vlrpis'
        DataType = ftFloat
        Precision = 2
      end
      item
        Name = 'vlrcofins'
        DataType = ftFloat
        Precision = 2
      end
      item
        Name = 'vlrtotal'
        DataType = ftFloat
        Precision = 2
      end
      item
        Name = 'ccfoptrans'
        DataType = ftInteger
      end
      item
        Name = 'cidadecodtrans'
        DataType = ftInteger
      end
      item
        Name = 'ufplacavei'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'rntc'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'arquivonfe'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'cnf'
        DataType = ftInteger
      end
      item
        Name = 'contador'
        DataType = ftInteger
      end
      item
        Name = 'icorrecao'
        DataType = ftInteger
      end
      item
        Name = 'ehcancelada'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ehcorrigida'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ehsucesso'
        DataType = ftString
        Size = 1
      end>
    IndexDefs = <
      item
        Name = 'codigo'
        Fields = 'codigo'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'especie'
        Fields = 'especie'
      end
      item
        Name = 'marca'
        Fields = 'marca'
      end
      item
        Name = 'dataemi'
        Fields = 'dataemi'
      end>
    IndexName = 'codigo'
    Params = <>
    StoreDefs = True
    Left = 476
    Top = 168
    object IntegerField40: TIntegerField
      FieldName = 'codigo'
    end
    object IntegerField41: TIntegerField
      FieldName = 'cemi'
    end
    object cds_nfecdest: TIntegerField
      FieldName = 'cdest'
    end
    object IntegerField43: TIntegerField
      FieldName = 'ctransp'
    end
    object cds_nfetipodest: TStringField
      FieldName = 'tipodest'
      Size = 1
    end
    object FloatField14: TFloatField
      FieldName = 'pdesc'
      DisplayFormat = '###,###,##0.00'
    end
    object FloatField15: TFloatField
      FieldName = 'vdesc'
      DisplayFormat = '###,###,##0.00'
    end
    object FloatField16: TFloatField
      FieldName = 'total'
      DisplayFormat = '###,###,##0.00'
    end
    object FloatField17: TFloatField
      FieldName = 'liquido'
      DisplayFormat = '###,###,##0.00'
    end
    object IntegerField44: TIntegerField
      FieldName = 'cnatop'
    end
    object FloatField18: TFloatField
      FieldName = 'bscalcsubtrib'
      DisplayFormat = '###,###,##0.00'
    end
    object FloatField19: TFloatField
      FieldName = 'vlricmssubtrib'
      DisplayFormat = '###,###,##0.00'
    end
    object StringField87: TStringField
      FieldName = 'placavei'
      Size = 8
    end
    object StringField88: TStringField
      FieldName = 'ufvei'
      Size = 2
    end
    object DateField1: TDateField
      FieldName = 'datasai'
    end
    object TimeField1: TTimeField
      FieldName = 'horasai'
    end
    object StringField89: TStringField
      FieldName = 'quantidade'
      Size = 30
    end
    object StringField90: TStringField
      FieldName = 'especie'
      Size = 30
    end
    object StringField91: TStringField
      FieldName = 'marca'
      Size = 30
    end
    object StringField92: TStringField
      FieldName = 'numero'
      Size = 30
    end
    object StringField93: TStringField
      FieldName = 'pesob'
    end
    object StringField94: TStringField
      FieldName = 'pesol'
      Size = 30
    end
    object MemoField3: TMemoField
      FieldName = 'adicnf'
      BlobType = ftMemo
    end
    object MemoField4: TMemoField
      FieldName = 'adicpostofiscal'
      BlobType = ftMemo
    end
    object IntegerField45: TIntegerField
      FieldName = 'ctiponf'
    end
    object IntegerField46: TIntegerField
      FieldName = 'cfreteporconta'
    end
    object IntegerField47: TIntegerField
      FieldName = 'nnf'
    end
    object FloatField20: TFloatField
      FieldName = 'tvlrfrete'
      DisplayFormat = '###,###,##0.00'
    end
    object DateField2: TDateField
      FieldName = 'dataemi'
    end
    object FloatField21: TFloatField
      FieldName = 'tvlrseg'
      DisplayFormat = '###,###,##0.00'
    end
    object FloatField23: TFloatField
      FieldName = 'tvlrvii'
      DisplayFormat = '###,###,##0.00'
    end
    object FloatField24: TFloatField
      FieldName = 'tvlripi'
      DisplayFormat = '###,###,##0.00'
    end
    object FloatField25: TFloatField
      FieldName = 'tvlrpis'
      DisplayFormat = '###,###,##0.00'
    end
    object FloatField26: TFloatField
      FieldName = 'tvlrcofins'
      DisplayFormat = '###,###,##0.00'
    end
    object FloatField22: TFloatField
      FieldName = 'tvlrout'
      DisplayFormat = '###,###,##0.00'
    end
    object StringField95: TStringField
      FieldKind = fkLookup
      FieldName = 'ndest'
      LookupDataSet = cds_clientes
      LookupKeyFields = 'codigo'
      LookupResultField = 'nome'
      KeyFields = 'cdest'
      Size = 70
      Lookup = True
    end
    object cds_nfeiesubstrib: TStringField
      FieldName = 'iesubstrib'
    end
    object cds_nfemodelonf: TStringField
      FieldName = 'modelonf'
    end
    object cds_nfeserienf: TStringField
      FieldName = 'serienf'
    end
    object cds_nfecodigonf: TStringField
      FieldName = 'codigonf'
    end
    object cds_nfetiponf: TStringField
      FieldName = 'tiponf'
    end
    object cds_nfeformapgtonf: TStringField
      FieldName = 'formapgtonf'
    end
    object cds_nfecuftransp: TIntegerField
      FieldName = 'cuftransp'
    end
    object cds_nfevlrserv: TFloatField
      FieldName = 'vlrserv'
      DisplayFormat = '###,###,##0.00'
    end
    object cds_nfevlrbsserv: TFloatField
      FieldName = 'vlrbsserv'
      DisplayFormat = '###,###,##0.00'
    end
    object cds_nfealiqserv: TFloatField
      FieldName = 'aliqserv'
      DisplayFormat = '###,###,##0.00'
    end
    object cds_nfevlriss: TFloatField
      FieldName = 'vlriss'
      DisplayFormat = '###,###,##0.00'
    end
    object cds_nfebcipi: TFloatField
      FieldName = 'bcipi'
      DisplayFormat = '###,###,##0.00'
    end
    object cds_nfealiqipi: TFloatField
      FieldName = 'aliqipi'
      DisplayFormat = '###,###,##0.00'
    end
    object cds_nfevipi: TFloatField
      FieldName = 'vipi'
      DisplayFormat = '###,###,##0.00'
    end
    object cds_nfecpis: TIntegerField
      FieldName = 'cpis'
    end
    object cds_nfenpis: TStringField
      FieldName = 'npis'
      Size = 40
    end
    object cds_nfebcpis: TFloatField
      FieldName = 'bcpis'
      DisplayFormat = '###,###,##0.00'
    end
    object cds_nfevpis: TFloatField
      FieldName = 'vpis'
      DisplayFormat = '###,###,##0.00'
    end
    object cds_nfealiqpis: TFloatField
      FieldName = 'aliqpis'
      DisplayFormat = '###,###,##0.00'
    end
    object cds_nfeccofins: TIntegerField
      FieldName = 'ccofins'
      DisplayFormat = '###,###,##0.00'
    end
    object cds_nfencofins: TStringField
      FieldName = 'ncofins'
      Size = 40
    end
    object cds_nfebscofins: TFloatField
      FieldName = 'bscofins'
      DisplayFormat = '###,###,##0.00'
    end
    object cds_nfealiqcofins: TFloatField
      FieldName = 'aliqcofins'
      DisplayFormat = '###,###,##0.00'
    end
    object cds_nfevcofins: TFloatField
      FieldName = 'vcofins'
      DisplayFormat = '###,###,##0.00'
    end
    object cds_nfetotbcicms: TFloatField
      FieldName = 'totbcicms'
      DisplayFormat = '###,###,##0.00'
    end
    object cds_nfetoticms: TFloatField
      FieldName = 'toticms'
      DisplayFormat = '###,###,##0.00'
    end
    object cds_nfetotp: TFloatField
      FieldName = 'totp'
      DisplayFormat = '###,###,##0.00'
    end
    object cds_nfevlrdesc: TFloatField
      FieldName = 'vlrdesc'
      DisplayFormat = '###,###,##0.00'
    end
    object cds_nfetotipi: TFloatField
      FieldName = 'totipi'
      DisplayFormat = '###,###,##0.00'
    end
    object cds_nfevlrpis: TFloatField
      FieldName = 'vlrpis'
      DisplayFormat = '###,###,##0.00'
    end
    object cds_nfevlrcofins: TFloatField
      FieldName = 'vlrcofins'
      DisplayFormat = '###,###,##0.00'
    end
    object cds_nfevlrtotal: TFloatField
      FieldName = 'vlrtotal'
      DisplayFormat = '###,###,##0.00'
    end
    object cds_nfeccfoptrans: TIntegerField
      FieldName = 'ccfoptrans'
    end
    object cds_nfecidadecodtrans: TIntegerField
      FieldName = 'cidadecodtrans'
    end
    object cds_nfeufplacavei: TStringField
      FieldName = 'ufplacavei'
    end
    object cds_nferntc: TStringField
      FieldName = 'rntc'
      Size = 40
    end
    object cds_nfearquivonfe: TStringField
      FieldName = 'arquivonfe'
      Size = 100
    end
    object cds_nfecnf: TIntegerField
      FieldName = 'cnf'
    end
    object cds_nfenomedest: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomedest'
      Size = 80
      Calculated = True
    end
    object cds_nfeimpnf: TStringField
      FieldKind = fkCalculated
      FieldName = 'impnf'
      Size = 1
      Calculated = True
    end
    object cds_nfecontador: TIntegerField
      FieldName = 'contador'
    end
    object cds_nfeicorrecao: TIntegerField
      DefaultExpression = '1'
      FieldName = 'icorrecao'
    end
    object cds_nfeehcorrigida: TStringField
      DefaultExpression = #39'N'#39
      FieldName = 'ehcorrigida'
      Size = 1
    end
    object cds_nfeehcancelada: TStringField
      DefaultExpression = #39'N'#39
      FieldName = 'ehcancelada'
      Size = 1
    end
    object cds_nfeehsucesso: TStringField
      FieldName = 'ehsucesso'
      Size = 1
    end
  end
  object dts_nfe: TDataSource
    DataSet = cds_nfe
    Left = 490
    Top = 179
  end
  object cds_nfp: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'codigo'
        DataType = ftInteger
      end
      item
        Name = 'cpro'
        DataType = ftInteger
      end
      item
        Name = 'npro'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'qtde'
        DataType = ftFloat
        Precision = 3
      end
      item
        Name = 'prve'
        DataType = ftFloat
        Precision = 2
      end
      item
        Name = 'subtotal'
        DataType = ftFloat
        Precision = 2
      end
      item
        Name = 'cnf'
        DataType = ftInteger
      end
      item
        Name = 'cod1prodnf'
        DataType = ftInteger
      end
      item
        Name = 'cod2prodnf'
        DataType = ftInteger
      end
      item
        Name = 'cod3prodnf'
        DataType = ftInteger
      end
      item
        Name = 'cod4prodnf'
        DataType = ftInteger
      end
      item
        Name = 'cod5prodnf'
        DataType = ftInteger
      end
      item
        Name = 'cod6prodnf'
        DataType = ftInteger
      end
      item
        Name = 'cod7prodnf'
        DataType = ftInteger
      end
      item
        Name = 'cod8prodnf'
        DataType = ftInteger
      end
      item
        Name = 'cod9prodnf'
        DataType = ftInteger
      end
      item
        Name = 'cod10prodnf'
        DataType = ftInteger
      end
      item
        Name = 'cod11prodnf'
        DataType = ftInteger
      end
      item
        Name = 'cod12prodnf'
        DataType = ftInteger
      end
      item
        Name = 'cod13prodnf'
        DataType = ftInteger
      end
      item
        Name = 'cod14prodnf'
        DataType = ftInteger
      end
      item
        Name = 'compoetnf'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'bscalcst'
        DataType = ftFloat
        Precision = 2
      end
      item
        Name = 'icmscalcst'
        DataType = ftFloat
        Precision = 2
      end
      item
        Name = 'cnfe'
        DataType = ftInteger
      end
      item
        Name = 'caux'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'cbar'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'simplesncm'
        DataType = ftString
        Size = 60
      end>
    IndexDefs = <
      item
        Name = 'codigo'
        Fields = 'codigo'
        Options = [ixPrimary, ixUnique]
      end>
    IndexName = 'codigo'
    Params = <>
    StoreDefs = True
    Left = 492
    Top = 240
    object IntegerField48: TIntegerField
      FieldName = 'codigo'
    end
    object cds_nfpcpro: TIntegerField
      FieldName = 'cpro'
    end
    object cds_nfpnpro: TStringField
      FieldName = 'npro'
      Size = 70
    end
    object cds_nfpqtde: TFloatField
      FieldName = 'qtde'
      DisplayFormat = '###,###,##0.000'
    end
    object cds_nfpprve: TFloatField
      FieldName = 'prve'
      DisplayFormat = '###,###,##0.00'
    end
    object cds_nfpsubtotal: TFloatField
      FieldName = 'subtotal'
      DisplayFormat = '###,###,##0.00'
    end
    object cds_nfpcnf: TIntegerField
      FieldName = 'cnf'
    end
    object cds_nfpcod1prodnf: TIntegerField
      FieldName = 'cod1prodnf'
    end
    object cds_nfpcod2prodnf: TIntegerField
      FieldName = 'cod2prodnf'
    end
    object cds_nfpcod3prodnf: TIntegerField
      FieldName = 'cod3prodnf'
    end
    object cds_nfpcod4prodnf: TIntegerField
      FieldName = 'cod4prodnf'
    end
    object cds_nfpcod5prodnf: TIntegerField
      FieldName = 'cod5prodnf'
    end
    object cds_nfpcod6prodnf: TIntegerField
      FieldName = 'cod6prodnf'
    end
    object cds_nfpcod7prodnf: TIntegerField
      FieldName = 'cod7prodnf'
    end
    object cds_nfpcod8prodnf: TIntegerField
      FieldName = 'cod8prodnf'
    end
    object cds_nfpcod9prodnf: TIntegerField
      FieldName = 'cod9prodnf'
    end
    object cds_nfpcod10prodnf: TIntegerField
      FieldName = 'cod10prodnf'
    end
    object cds_nfpcod11prodnf: TIntegerField
      FieldName = 'cod11prodnf'
    end
    object cds_nfpcod12prodnf: TIntegerField
      FieldName = 'cod12prodnf'
    end
    object cds_nfpcod13prodnf: TIntegerField
      FieldName = 'cod13prodnf'
    end
    object cds_nfpcod14prodnf: TIntegerField
      FieldName = 'cod14prodnf'
    end
    object cds_nfpcompoetnf: TStringField
      DefaultExpression = #39'T'#39
      FieldName = 'compoetnf'
      Size = 1
    end
    object cds_nfpbscalcst: TFloatField
      FieldName = 'bscalcst'
    end
    object cds_nfpicmscalcst: TFloatField
      FieldName = 'icmscalcst'
    end
    object cds_nfpcnfe: TIntegerField
      FieldName = 'cnfe'
    end
    object cds_nfpcaux: TStringField
      FieldName = 'caux'
    end
    object cds_nfpcbar: TStringField
      FieldName = 'cbar'
      Size = 13
    end
    object cds_nfpnomeunidade: TStringField
      FieldKind = fkLookup
      FieldName = 'nomeunidade'
      LookupDataSet = cds_unidade
      LookupKeyFields = 'codigo'
      LookupResultField = 'descricao'
      KeyFields = 'cod13prodnf'
      Size = 10
      Lookup = True
    end
    object cds_nfpsimplesncm: TStringField
      FieldName = 'simplesncm'
      Size = 60
    end
  end
  object dts_nfp: TDataSource
    DataSet = cds_nfp
    Left = 506
    Top = 251
  end
  object cds_csosn: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'codigo'
        DataType = ftInteger
      end
      item
        Name = 'descricao'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'sigla'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <
      item
        Name = 'codigo'
        Fields = 'codigo'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'descricao'
        Fields = 'descricao'
      end
      item
        Name = 'sigla'
        Fields = 'sigla'
      end>
    IndexName = 'codigo'
    Params = <>
    StoreDefs = True
    Left = 492
    Top = 312
    object IntegerField49: TIntegerField
      FieldName = 'codigo'
    end
    object StringField96: TStringField
      FieldName = 'descricao'
      Size = 200
    end
    object StringField97: TStringField
      FieldName = 'sigla'
    end
  end
  object dts_csosn: TDataSource
    DataSet = cds_csosn
    Left = 506
    Top = 323
  end
  object cds_nfs: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'codigo'
        DataType = ftInteger
      end
      item
        Name = 'cdesc'
        DataType = ftInteger
      end
      item
        Name = 'ndesc'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'qtde'
        DataType = ftFloat
        Precision = 3
      end
      item
        Name = 'prve'
        DataType = ftFloat
        Precision = 2
      end
      item
        Name = 'subtotal'
        DataType = ftFloat
        Precision = 2
      end
      item
        Name = 'cnf'
        DataType = ftInteger
      end
      item
        Name = 'cod1servnf'
        DataType = ftInteger
      end
      item
        Name = 'cod2servnf'
        DataType = ftInteger
      end
      item
        Name = 'cod3servnf'
        DataType = ftInteger
      end
      item
        Name = 'cod4servnf'
        DataType = ftInteger
      end
      item
        Name = 'cod5servnf'
        DataType = ftInteger
      end
      item
        Name = 'cod6servnf'
        DataType = ftInteger
      end
      item
        Name = 'cod7servnf'
        DataType = ftInteger
      end
      item
        Name = 'cod8servnf'
        DataType = ftInteger
      end
      item
        Name = 'cod9servnf'
        DataType = ftInteger
      end
      item
        Name = 'cod10servnf'
        DataType = ftInteger
      end
      item
        Name = 'cod11servnf'
        DataType = ftInteger
      end
      item
        Name = 'cod12servnf'
        DataType = ftInteger
      end
      item
        Name = 'cod13servnf'
        DataType = ftInteger
      end
      item
        Name = 'cod14servnf'
        DataType = ftInteger
      end
      item
        Name = 'cnfe'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'codigo'
        Fields = 'codigo'
        Options = [ixPrimary, ixUnique]
      end>
    IndexName = 'codigo'
    Params = <>
    StoreDefs = True
    Left = 500
    Top = 384
    object IntegerField50: TIntegerField
      FieldName = 'codigo'
    end
    object IntegerField51: TIntegerField
      FieldName = 'cdesc'
    end
    object StringField98: TStringField
      FieldName = 'ndesc'
      Size = 70
    end
    object FloatField27: TFloatField
      FieldName = 'qtde'
      DisplayFormat = '###,###,##0.000'
    end
    object FloatField28: TFloatField
      FieldName = 'prve'
      DisplayFormat = '###,###,##0.00'
    end
    object FloatField29: TFloatField
      FieldName = 'subtotal'
      DisplayFormat = '###,###,##0.00'
    end
    object cds_nfscnf: TIntegerField
      FieldName = 'cnf'
    end
    object IntegerField53: TIntegerField
      FieldName = 'cod1servnf'
    end
    object IntegerField54: TIntegerField
      FieldName = 'cod2servnf'
    end
    object IntegerField55: TIntegerField
      FieldName = 'cod3servnf'
    end
    object IntegerField56: TIntegerField
      FieldName = 'cod4servnf'
    end
    object IntegerField57: TIntegerField
      FieldName = 'cod5servnf'
    end
    object IntegerField58: TIntegerField
      FieldName = 'cod6servnf'
    end
    object IntegerField59: TIntegerField
      FieldName = 'cod7servnf'
    end
    object IntegerField60: TIntegerField
      FieldName = 'cod8servnf'
    end
    object IntegerField61: TIntegerField
      FieldName = 'cod9servnf'
    end
    object IntegerField62: TIntegerField
      FieldName = 'cod10servnf'
    end
    object IntegerField63: TIntegerField
      FieldName = 'cod11servnf'
    end
    object IntegerField64: TIntegerField
      FieldName = 'cod12servnf'
    end
    object IntegerField65: TIntegerField
      FieldName = 'cod13servnf'
    end
    object IntegerField66: TIntegerField
      FieldName = 'cod14servnf'
    end
    object IntegerField67: TIntegerField
      FieldName = 'cnfe'
    end
  end
  object dts_nfs: TDataSource
    DataSet = cds_nfs
    Left = 514
    Top = 395
  end
  object cds_tipopgto: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'codigo'
        DataType = ftInteger
      end
      item
        Name = 'descricao'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'ehvd'
        DataType = ftString
        Size = 1
      end>
    IndexDefs = <
      item
        Name = 'codigo'
        Fields = 'codigo'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'descricao'
        Fields = 'descricao'
      end>
    IndexName = 'codigo'
    Params = <>
    StoreDefs = True
    Left = 564
    Top = 8
    object IntegerField52: TIntegerField
      FieldName = 'codigo'
    end
    object cds_tipopgtodescricao: TStringField
      FieldName = 'descricao'
      Size = 40
    end
    object cds_tipopgtoehvd: TStringField
      DefaultExpression = #39'F'#39
      FieldName = 'ehvd'
      Size = 1
    end
  end
  object dts_tipopgto: TDataSource
    DataSet = cds_tipopgto
    Left = 578
    Top = 19
  end
  object cds_fatura: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'codigo'
        DataType = ftInteger
      end
      item
        Name = 'cnf'
        DataType = ftInteger
      end
      item
        Name = 'ctipopgto'
        DataType = ftInteger
      end
      item
        Name = 'nfat'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'vorig'
        DataType = ftFloat
        Precision = 2
      end
      item
        Name = 'vdesc'
        DataType = ftFloat
        Precision = 2
      end
      item
        Name = 'vliq'
        DataType = ftFloat
        Precision = 2
      end
      item
        Name = 'pdesc'
        DataType = ftFloat
        Precision = 2
      end>
    IndexDefs = <
      item
        Name = 'codigo'
        Fields = 'codigo'
        Options = [ixPrimary, ixUnique]
      end>
    IndexName = 'codigo'
    Params = <>
    StoreDefs = True
    Left = 572
    Top = 80
    object IntegerField68: TIntegerField
      FieldName = 'codigo'
    end
    object cds_faturacnf: TIntegerField
      FieldName = 'cnf'
    end
    object cds_faturactipopgto: TIntegerField
      FieldName = 'ctipopgto'
    end
    object cds_faturanfat: TStringField
      FieldName = 'nfat'
      Size = 60
    end
    object cds_faturavorig: TFloatField
      FieldName = 'vorig'
      DisplayFormat = '###,###,##0.00'
    end
    object cds_faturavdesc: TFloatField
      FieldName = 'vdesc'
      DisplayFormat = '###,###,##0.00'
    end
    object cds_faturavliq: TFloatField
      FieldName = 'vliq'
      DisplayFormat = '###,###,##0.00'
    end
    object cds_faturapdesc: TFloatField
      FieldName = 'pdesc'
      DisplayFormat = '###,###,##0.00'
    end
    object cds_faturantipopgto: TStringField
      FieldKind = fkLookup
      FieldName = 'ntipopgto'
      LookupDataSet = cds_tipopgto
      LookupKeyFields = 'codigo'
      LookupResultField = 'descricao'
      KeyFields = 'ctipopgto'
      Size = 40
      Lookup = True
    end
  end
  object dts_fatura: TDataSource
    DataSet = cds_fatura
    Left = 586
    Top = 91
  end
  object cds_duplicata: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'codigo'
        DataType = ftInteger
      end
      item
        Name = 'ndup'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'dtv'
        DataType = ftDate
      end
      item
        Name = 'vdup'
        DataType = ftFloat
        Precision = 2
      end
      item
        Name = 'cnf'
        DataType = ftInteger
      end
      item
        Name = 'prazo'
        DataType = ftInteger
      end
      item
        Name = 'dte'
        DataType = ftDate
      end>
    IndexDefs = <
      item
        Name = 'codigo'
        Fields = 'codigo'
        Options = [ixPrimary, ixUnique]
      end>
    IndexName = 'codigo'
    Params = <>
    StoreDefs = True
    Left = 572
    Top = 160
    object IntegerField69: TIntegerField
      FieldName = 'codigo'
    end
    object cds_duplicatadtv: TDateField
      FieldName = 'dtv'
    end
    object cds_duplicatavdup: TFloatField
      FieldName = 'vdup'
      DisplayFormat = '###,###,##0.00'
    end
    object cds_duplicatandup: TStringField
      FieldName = 'ndup'
      Size = 60
    end
    object cds_duplicatacnf: TIntegerField
      FieldName = 'cnf'
    end
    object cds_duplicataprazo: TIntegerField
      FieldName = 'prazo'
    end
    object cds_duplicatadte: TDateField
      FieldName = 'dte'
    end
  end
  object dts_duplicata: TDataSource
    DataSet = cds_duplicata
    Left = 586
    Top = 171
  end
  object cds_tgicms: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'codigo'
        DataType = ftInteger
      end
      item
        Name = 'descricao'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'csitb'
        DataType = ftInteger
      end
      item
        Name = 'tabref'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'camporef'
        DataType = ftString
        Size = 30
      end>
    IndexDefs = <
      item
        Name = 'codigo'
        Fields = 'codigo'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'descricao'
        Fields = 'descricao'
      end>
    IndexName = 'codigo'
    Params = <>
    StoreDefs = True
    Left = 580
    Top = 232
    object IntegerField70: TIntegerField
      FieldName = 'codigo'
    end
    object StringField99: TStringField
      FieldName = 'descricao'
      Size = 40
    end
    object cds_tgicmscsitb: TIntegerField
      FieldName = 'csitb'
    end
    object cds_tgicmstabref: TStringField
      FieldName = 'tabref'
      Size = 30
    end
    object cds_tgicmscamporef: TStringField
      FieldName = 'camporef'
      Size = 30
    end
    object cds_tgicmsnsitb: TStringField
      FieldKind = fkLookup
      FieldName = 'nsitb'
      LookupDataSet = cds_sitb
      LookupKeyFields = 'codigo'
      LookupResultField = 'sigla'
      KeyFields = 'csitb'
      Size = 40
      Lookup = True
    end
  end
  object dts_tgicms: TDataSource
    DataSet = cds_tgicms
    Left = 594
    Top = 243
  end
  object cds_aux: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_'
    Left = 224
    Top = 520
  end
  object cds_nfep: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'codigo'
        DataType = ftInteger
      end
      item
        Name = 'cpro'
        DataType = ftInteger
      end
      item
        Name = 'npro'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'qtde'
        DataType = ftFloat
        Precision = 3
      end
      item
        Name = 'prve'
        DataType = ftFloat
        Precision = 2
      end
      item
        Name = 'subtotal'
        DataType = ftFloat
        Precision = 2
      end
      item
        Name = 'cnf'
        DataType = ftInteger
      end
      item
        Name = 'cod1prodnf'
        DataType = ftInteger
      end
      item
        Name = 'cod2prodnf'
        DataType = ftInteger
      end
      item
        Name = 'cod3prodnf'
        DataType = ftInteger
      end
      item
        Name = 'cod4prodnf'
        DataType = ftInteger
      end
      item
        Name = 'cod5prodnf'
        DataType = ftInteger
      end
      item
        Name = 'cod6prodnf'
        DataType = ftInteger
      end
      item
        Name = 'cod7prodnf'
        DataType = ftInteger
      end
      item
        Name = 'cod8prodnf'
        DataType = ftInteger
      end
      item
        Name = 'cod9prodnf'
        DataType = ftInteger
      end
      item
        Name = 'cod10prodnf'
        DataType = ftInteger
      end
      item
        Name = 'cod11prodnf'
        DataType = ftInteger
      end
      item
        Name = 'cod12prodnf'
        DataType = ftInteger
      end
      item
        Name = 'cod13prodnf'
        DataType = ftInteger
      end
      item
        Name = 'cod14prodnf'
        DataType = ftInteger
      end
      item
        Name = 'cnfe'
        DataType = ftInteger
      end
      item
        Name = 'pdesc'
        DataType = ftFloat
        Precision = 2
      end
      item
        Name = 'vdesc'
        DataType = ftFloat
        Precision = 2
      end
      item
        Name = 'bsicms'
        DataType = ftFloat
        Precision = 2
      end
      item
        Name = 'aliqicms'
        DataType = ftFloat
        Precision = 2
      end
      item
        Name = 'vicms'
        DataType = ftFloat
        Precision = 2
      end
      item
        Name = 'bsipi'
        DataType = ftFloat
        Precision = 2
      end
      item
        Name = 'aliqipi'
        DataType = ftFloat
        Precision = 2
      end
      item
        Name = 'vipi'
        DataType = ftFloat
        Precision = 2
      end
      item
        Name = 'aliqredbcicms'
        DataType = ftFloat
        Precision = 2
      end
      item
        Name = 'compoetnf'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'bscalcst'
        DataType = ftFloat
        Precision = 2
      end
      item
        Name = 'icmscalcst'
        DataType = ftFloat
        Precision = 2
      end
      item
        Name = 'caux'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'cbar'
        DataType = ftString
        Size = 13
      end>
    IndexDefs = <
      item
        Name = 'codigo'
        Fields = 'codigo'
        Options = [ixPrimary, ixUnique]
      end>
    IndexName = 'codigo'
    Params = <>
    StoreDefs = True
    Left = 588
    Top = 368
    object IntegerField71: TIntegerField
      FieldName = 'codigo'
    end
    object IntegerField72: TIntegerField
      FieldName = 'cpro'
    end
    object StringField100: TStringField
      FieldName = 'npro'
      Size = 70
    end
    object FloatField30: TFloatField
      FieldName = 'qtde'
      DisplayFormat = '###,###,##0.000'
    end
    object FloatField31: TFloatField
      FieldName = 'prve'
      DisplayFormat = '###,###,##0.00'
    end
    object FloatField32: TFloatField
      FieldName = 'subtotal'
      DisplayFormat = '###,###,##0.00'
    end
    object IntegerField73: TIntegerField
      FieldName = 'cnf'
    end
    object IntegerField74: TIntegerField
      FieldName = 'cod1prodnf'
    end
    object IntegerField75: TIntegerField
      FieldName = 'cod2prodnf'
    end
    object IntegerField76: TIntegerField
      FieldName = 'cod3prodnf'
    end
    object IntegerField77: TIntegerField
      FieldName = 'cod4prodnf'
    end
    object IntegerField78: TIntegerField
      FieldName = 'cod5prodnf'
    end
    object IntegerField79: TIntegerField
      FieldName = 'cod6prodnf'
    end
    object IntegerField80: TIntegerField
      FieldName = 'cod7prodnf'
    end
    object IntegerField81: TIntegerField
      FieldName = 'cod8prodnf'
    end
    object IntegerField82: TIntegerField
      FieldName = 'cod9prodnf'
    end
    object IntegerField83: TIntegerField
      FieldName = 'cod10prodnf'
    end
    object IntegerField84: TIntegerField
      FieldName = 'cod11prodnf'
    end
    object IntegerField85: TIntegerField
      FieldName = 'cod12prodnf'
    end
    object IntegerField86: TIntegerField
      FieldName = 'cod13prodnf'
    end
    object IntegerField87: TIntegerField
      FieldName = 'cod14prodnf'
    end
    object IntegerField88: TIntegerField
      FieldName = 'cnfe'
    end
    object cds_nfeppdescd: TFloatField
      FieldName = 'pdesc'
    end
    object cds_nfepvdesc: TFloatField
      FieldName = 'vdesc'
    end
    object cds_nfepbsicms: TFloatField
      FieldName = 'bsicms'
    end
    object cds_nfepaliqicms: TFloatField
      FieldName = 'aliqicms'
    end
    object cds_nfepvicms: TFloatField
      FieldName = 'vicms'
    end
    object cds_nfepbsipi: TFloatField
      FieldName = 'bsipi'
    end
    object cds_nfepaliqipi: TFloatField
      FieldName = 'aliqipi'
    end
    object cds_nfepvipi: TFloatField
      FieldName = 'vipi'
    end
    object cds_nfepaliqredbcicms: TFloatField
      FieldName = 'aliqredbcicms'
    end
    object cds_nfepcompoetnf: TStringField
      FieldName = 'compoetnf'
      Size = 1
    end
    object cds_nfepbscalcst: TFloatField
      FieldName = 'bscalcst'
    end
    object cds_nfepicmscalcst: TFloatField
      FieldName = 'icmscalcst'
    end
    object cds_nfepcaux: TStringField
      FieldName = 'caux'
    end
    object cds_nfepcbar: TStringField
      FieldName = 'cbar'
      Size = 13
    end
  end
  object dts_nfep: TDataSource
    DataSet = cds_nfep
    Left = 602
    Top = 384
  end
  object cds_eprodutos: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 32
    Top = 520
  end
  object cds_temp_imp: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'id'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'obs'
        DataType = ftMemo
      end>
    IndexDefs = <
      item
        Name = 'id'
        Options = [ixPrimary]
      end>
    Params = <>
    StoreDefs = True
    Left = 128
    Top = 520
    object cds_temp_impid: TStringField
      FieldName = 'id'
    end
    object cds_temp_impobs: TMemoField
      FieldName = 'obs'
      BlobType = ftMemo
    end
  end
  object cds_cupom: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'modelo'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'dte'
        DataType = ftDate
      end
      item
        Name = 'coo'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'caixa'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'serieecf'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'cnf'
        DataType = ftInteger
      end
      item
        Name = 'codigo'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 576
    Top = 312
    object cds_cupomcodigo: TIntegerField
      FieldName = 'codigo'
    end
    object cds_cupommodelo: TStringField
      FieldName = 'modelo'
      Size = 30
    end
    object cds_cupomdte: TDateField
      FieldName = 'dte'
    end
    object cds_cupomcoo: TStringField
      FieldName = 'coo'
    end
    object cds_cupomcaixa: TStringField
      FieldName = 'caixa'
      Size = 3
    end
    object cds_cupomserieecf: TStringField
      FieldName = 'serieecf'
      Size = 50
    end
    object cds_cupomcnf: TIntegerField
      FieldName = 'cnf'
    end
  end
  object dts_cupom: TDataSource
    DataSet = cds_cupom
    Left = 592
    Top = 320
  end
  object cds_config: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'dataexpira'
        DataType = ftDate
      end
      item
        Name = 'dataatual'
        DataType = ftDate
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 32
    Top = 456
    object cds_configdataexpira: TDateField
      FieldName = 'dataexpira'
    end
    object cds_configdataatual: TDateField
      FieldName = 'dataatual'
    end
  end
  object dts_config: TDataSource
    DataSet = cds_config
    Left = 48
    Top = 464
  end
  object cd_enfe: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 280
    Top = 520
  end
  object dsp_tabela1: TDataSetProvider
    UpdateMode = upWhereKeyOnly
    Left = 808
    Top = 216
  end
  object dados_nfe: TSQLConnection
    ConnectionName = 'UIB FireBird15 Connection'
    DriverName = 'UIB FireBird15'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbexpUIBfire15.dll'
    LoginPrompt = False
    Params.Strings = (
      'BlobSize=-1'
      'CommitRetain=False'
      'Database=c:\dados_nfe'
      'DriverName=UIB FireBird15'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'Password=masterkey'
      'RoleName=RoleName'
      'ServerCharSet='
      'SQLDialect=3'
      'Interbase TransIsolation=ReadCommited'
      'User_Name=SYSDBA'
      'WaitOnLocks=True')
    VendorLib = 'fbclient.dll'
    Left = 760
    Top = 96
  end
  object dbx_tabela1: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from PAISES')
    SQLConnection = dados_nfe
    Left = 784
    Top = 144
  end
  object cd_enatop: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 360
    Top = 512
  end
  object cd_enf: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 448
    Top = 504
  end
  object cd_eindice: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 528
    Top = 504
  end
end
