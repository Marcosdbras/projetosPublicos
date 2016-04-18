object frmdados: Tfrmdados
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 1
  Top = 1
  Height = 736
  Width = 1325
  object cds_Paises: TClientDataSet
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
        Name = 'id'
        Attributes = [faRequired]
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
      end>
    Params = <>
    ProviderName = 'dsp_paises'
    StoreDefs = True
    AfterPost = cds_PaisesAfterPost
    AfterDelete = cds_PaisesAfterDelete
    OnNewRecord = cds_PaisesNewRecord
    Left = 28
    Top = 5
    object cds_Paisescodigo: TIntegerField
      FieldName = 'codigo'
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
    object cds_Paisesid: TIntegerField
      FieldName = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object dts_Paises: TDataSource
    DataSet = cds_Paises
    Left = 42
    Top = 19
  end
  object cds_Estados: TClientDataSet
    Active = True
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
        DataType = ftInteger
      end
      item
        Name = 'cpais'
        DataType = ftInteger
      end
      item
        Name = 'id'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'convst'
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
    ProviderName = 'dsp_estados'
    StoreDefs = True
    AfterPost = cds_EstadosAfterPost
    AfterDelete = cds_EstadosAfterDelete
    OnNewRecord = cds_EstadosNewRecord
    Left = 1236
    Top = 165
    object cds_Estadoscodigo: TIntegerField
      FieldName = 'codigo'
    end
    object cds_Estadosnome: TStringField
      FieldName = 'nome'
      Size = 70
    end
    object cds_Estadossigla: TStringField
      FieldName = 'sigla'
    end
    object cds_Estadoscodibge: TIntegerField
      FieldName = 'codibge'
    end
    object cds_Estadoscpais: TIntegerField
      FieldName = 'cpais'
    end
    object cds_Estadosid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object cds_Estadosconvst: TStringField
      FieldName = 'convst'
      Size = 1
    end
  end
  object dts_Estados: TDataSource
    DataSet = cds_Estados
    Left = 1250
    Top = 179
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
      end
      item
        Name = 'cod1'
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
    Left = 724
    Top = 353
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
    object cds_Tempcod1: TIntegerField
      FieldName = 'cod1'
    end
  end
  object dts_Temp: TDataSource
    DataSet = cds_Temp
    Left = 738
    Top = 367
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
      end
      item
        Name = 'id'
        Attributes = [faRequired]
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
    ProviderName = 'dsp_Munic'
    StoreDefs = True
    AfterPost = cds_MunicAfterPost
    AfterDelete = cds_MunicAfterDelete
    OnNewRecord = cds_MunicNewRecord
    Left = 788
    Top = 5
    object cds_Municcodigo: TIntegerField
      FieldName = 'codigo'
    end
    object cds_Municnome: TStringField
      FieldName = 'nome'
      Size = 70
    end
    object cds_Municcodibge: TStringField
      FieldName = 'codibge'
    end
    object cds_Municcest: TIntegerField
      FieldName = 'cest'
    end
    object cds_Municfxinicial: TIntegerField
      FieldName = 'fxinicial'
    end
    object cds_Municfxfinal: TIntegerField
      FieldName = 'fxfinal'
    end
    object cds_Municid: TIntegerField
      FieldName = 'id'
      Required = True
    end
  end
  object dts_Munic: TDataSource
    DataSet = cds_Munic
    Left = 802
    Top = 19
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
      end
      item
        Name = 'reducao'
        DataType = ftFloat
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
      end
      item
        Name = 'id'
        Attributes = [faRequired]
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
    ProviderName = 'dsp_icms'
    StoreDefs = True
    AfterPost = cds_icmsAfterPost
    AfterDelete = cds_icmsAfterDelete
    AfterScroll = cds_icmsAfterScroll
    OnNewRecord = cds_icmsNewRecord
    Left = 596
    Top = 90
    object cds_icmscodigo: TIntegerField
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
    end
    object cds_icmsreducao: TFloatField
      FieldName = 'reducao'
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
    object cds_icmsid: TIntegerField
      FieldName = 'id'
      Required = True
    end
  end
  object dts_icms: TDataSource
    DataSet = cds_icms
    Left = 610
    Top = 101
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
      end
      item
        Name = 'reducao'
        DataType = ftFloat
      end
      item
        Name = 'id'
        Attributes = [faRequired]
        DataType = ftInteger
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
    ProviderName = 'dsp_ipi'
    StoreDefs = True
    AfterPost = cds_ipiAfterPost
    AfterDelete = cds_ipiAfterDelete
    OnNewRecord = cds_ipiNewRecord
    Left = 1107
    Top = 88
    object cds_ipicodigo: TIntegerField
      FieldName = 'codigo'
    end
    object cds_ipidescricao: TStringField
      FieldName = 'descricao'
      Size = 40
    end
    object cds_ipisigla: TStringField
      FieldName = 'sigla'
    end
    object cds_ipialiquota: TFloatField
      FieldName = 'aliquota'
    end
    object cds_ipireducao: TFloatField
      FieldName = 'reducao'
    end
    object cds_ipiid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object cds_ipicpadrao: TIntegerField
      FieldName = 'cpadrao'
    end
  end
  object dts_ipi: TDataSource
    DataSet = cds_ipi
    Left = 1121
    Top = 99
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
      end
      item
        Name = 'id'
        Attributes = [faRequired]
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
    ProviderName = 'dsp_sita'
    StoreDefs = True
    AfterPost = cds_sitaAfterPost
    AfterDelete = cds_sitaAfterDelete
    OnNewRecord = cds_sitaNewRecord
    Left = 1019
    Top = 88
    object cds_sitacodigo: TIntegerField
      FieldName = 'codigo'
    end
    object cds_sitadescricao: TStringField
      FieldName = 'descricao'
      Size = 40
    end
    object cds_sitasigla: TStringField
      FieldName = 'sigla'
    end
    object cds_sitacpadrao: TIntegerField
      FieldName = 'cpadrao'
    end
    object cds_sitaid: TIntegerField
      FieldName = 'id'
      Required = True
    end
  end
  object dts_sita: TDataSource
    DataSet = cds_sita
    Left = 1033
    Top = 99
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
      end
      item
        Name = 'id'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'cregime'
        DataType = ftInteger
      end
      item
        Name = 'nregime'
        DataType = ftString
        Size = 40
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
    ProviderName = 'dsp_sitb'
    StoreDefs = True
    AfterPost = cds_sitbAfterPost
    AfterDelete = cds_sitbAfterDelete
    OnNewRecord = cds_sitbNewRecord
    Left = 811
    Top = 258
    object cds_sitbcodigo: TIntegerField
      FieldName = 'codigo'
    end
    object cds_sitbdescricao: TStringField
      FieldName = 'descricao'
      Size = 200
    end
    object cds_sitbsigla: TStringField
      FieldName = 'sigla'
    end
    object cds_sitbid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object cds_sitbcregime: TIntegerField
      FieldName = 'cregime'
    end
    object cds_sitbnregime: TStringField
      FieldName = 'nregime'
      Size = 40
    end
  end
  object dts_sitb: TDataSource
    DataSet = cds_sitb
    Left = 825
    Top = 269
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
      end
      item
        Name = 'id'
        Attributes = [faRequired]
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
    ProviderName = 'dsp_cf'
    StoreDefs = True
    AfterPost = cds_cfAfterPost
    AfterDelete = cds_cfAfterDelete
    OnNewRecord = cds_cfNewRecord
    Left = 628
    Top = 8
    object cds_cfcodigo: TIntegerField
      FieldName = 'codigo'
    end
    object cds_cfdescricao: TStringField
      FieldName = 'descricao'
      Size = 40
    end
    object cds_cfsigla: TStringField
      FieldName = 'sigla'
    end
    object cds_cfid: TIntegerField
      FieldName = 'id'
      Required = True
    end
  end
  object dts_cf: TDataSource
    DataSet = cds_cf
    Left = 642
    Top = 19
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
      end
      item
        Name = 'id'
        Attributes = [faRequired]
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
    ProviderName = 'dsp_modbc'
    StoreDefs = True
    AfterPost = cds_modbcAfterPost
    AfterDelete = cds_modbcAfterDelete
    OnNewRecord = cds_modbcNewRecord
    Left = 876
    Top = 8
    object cds_modbccodigo: TIntegerField
      FieldName = 'codigo'
    end
    object cds_modbcdescricao: TStringField
      FieldName = 'descricao'
      Size = 40
    end
    object cds_modbcsigla: TStringField
      FieldName = 'sigla'
    end
    object cds_modbcid: TIntegerField
      FieldName = 'id'
      Required = True
    end
  end
  object dts_modbc: TDataSource
    DataSet = cds_modbc
    Left = 890
    Top = 19
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
      end
      item
        Name = 'id'
        Attributes = [faRequired]
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
    ProviderName = 'dsp_modbcst'
    StoreDefs = True
    AfterPost = cds_modbcstAfterPost
    AfterDelete = cds_modbcstAfterDelete
    OnNewRecord = cds_modbcstNewRecord
    Left = 436
    Top = 92
    object cds_modbcstcodigo: TIntegerField
      FieldName = 'codigo'
    end
    object cds_modbcstdescricao: TStringField
      FieldName = 'descricao'
      Size = 40
    end
    object cds_modbcstsigla: TStringField
      FieldName = 'sigla'
    end
    object cds_modbcstid: TIntegerField
      FieldName = 'id'
      Required = True
    end
  end
  object dts_modbcst: TDataSource
    DataSet = cds_modbcst
    Left = 450
    Top = 103
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
      end
      item
        Name = 'reducao'
        DataType = ftFloat
      end
      item
        Name = 'id'
        Attributes = [faRequired]
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
    ProviderName = 'dsp_impostoI'
    StoreDefs = True
    AfterPost = cds_impostoIAfterPost
    AfterDelete = cds_impostoIAfterDelete
    OnNewRecord = cds_impostoINewRecord
    Left = 1195
    Top = 88
    object cds_impostoIcodigo: TIntegerField
      FieldName = 'codigo'
    end
    object cds_impostoIdescricao: TStringField
      FieldName = 'descricao'
      Size = 40
    end
    object cds_impostoIsigla: TStringField
      FieldName = 'sigla'
    end
    object cds_impostoIaliquota: TFloatField
      FieldName = 'aliquota'
    end
    object cds_impostoIreducao: TFloatField
      FieldName = 'reducao'
    end
    object cds_impostoIid: TIntegerField
      FieldName = 'id'
      Required = True
    end
  end
  object dts_impostoI: TDataSource
    DataSet = cds_impostoI
    Left = 1209
    Top = 99
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
      end
      item
        Name = 'reducao'
        DataType = ftFloat
      end
      item
        Name = 'id'
        Attributes = [faRequired]
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
    ProviderName = 'dsp_ImpostoII'
    StoreDefs = True
    AfterPost = cds_impostoIIAfterPost
    AfterDelete = cds_impostoIIAfterDelete
    OnNewRecord = cds_impostoIINewRecord
    Left = 116
    Top = 8
    object cds_impostoIIcodigo: TIntegerField
      FieldName = 'codigo'
    end
    object cds_impostoIIdescricao: TStringField
      FieldName = 'descricao'
      Size = 40
    end
    object cds_impostoIIsigla: TStringField
      FieldName = 'sigla'
    end
    object cds_impostoIIaliquota: TFloatField
      FieldName = 'aliquota'
    end
    object cds_impostoIIreducao: TFloatField
      FieldName = 'reducao'
    end
    object cds_impostoIIid: TIntegerField
      FieldName = 'id'
      Required = True
    end
  end
  object dts_impostoII: TDataSource
    DataSet = cds_impostoII
    Left = 130
    Top = 19
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
      end
      item
        Name = 'reducao'
        DataType = ftFloat
      end
      item
        Name = 'id'
        Attributes = [faRequired]
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
    ProviderName = 'dsp_impostoIII'
    StoreDefs = True
    AfterPost = cds_impostoIIIAfterPost
    AfterDelete = cds_impostoIIIAfterDelete
    OnNewRecord = cds_impostoIIINewRecord
    Left = 207
    Top = 8
    object cds_impostoIIIcodigo: TIntegerField
      FieldName = 'codigo'
    end
    object cds_impostoIIIdescricao: TStringField
      FieldName = 'descricao'
      Size = 40
    end
    object cds_impostoIIIsigla: TStringField
      FieldName = 'sigla'
    end
    object cds_impostoIIIaliquota: TFloatField
      FieldName = 'aliquota'
    end
    object cds_impostoIIIreducao: TFloatField
      FieldName = 'reducao'
    end
    object cds_impostoIIIid: TIntegerField
      FieldName = 'id'
      Required = True
    end
  end
  object dts_impostoIII: TDataSource
    DataSet = cds_impostoIII
    Left = 221
    Top = 19
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
      end
      item
        Name = 'reducao'
        DataType = ftFloat
      end
      item
        Name = 'cpadrao'
        DataType = ftInteger
      end
      item
        Name = 'id'
        Attributes = [faRequired]
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
    ProviderName = 'dsp_pis'
    StoreDefs = True
    AfterPost = cds_pisAfterPost
    AfterDelete = cds_pisAfterDelete
    OnNewRecord = cds_pisNewRecord
    Left = 700
    Top = 8
    object cds_piscodigo: TIntegerField
      FieldName = 'codigo'
    end
    object cds_pisdescricao: TStringField
      FieldName = 'descricao'
      Size = 40
    end
    object cds_pissigla: TStringField
      FieldName = 'sigla'
    end
    object cds_pisaliquota: TFloatField
      FieldName = 'aliquota'
    end
    object cds_pisreducao: TFloatField
      FieldName = 'reducao'
    end
    object cds_piscpadrao: TIntegerField
      FieldName = 'cpadrao'
    end
    object cds_pisid: TIntegerField
      FieldName = 'id'
      Required = True
    end
  end
  object dts_pis: TDataSource
    DataSet = cds_pis
    Left = 714
    Top = 19
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
      end
      item
        Name = 'reducao'
        DataType = ftFloat
      end
      item
        Name = 'cpadrao'
        DataType = ftInteger
      end
      item
        Name = 'id'
        Attributes = [faRequired]
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
    ProviderName = 'dsp_cofins'
    StoreDefs = True
    AfterPost = cds_cofinsAfterPost
    AfterDelete = cds_cofinsAfterDelete
    OnNewRecord = cds_cofinsNewRecord
    Left = 956
    Top = 8
    object cds_cofinscodigo: TIntegerField
      FieldName = 'codigo'
    end
    object cds_cofinsdescricao: TStringField
      FieldName = 'descricao'
      Size = 40
    end
    object cds_cofinssigla: TStringField
      FieldName = 'sigla'
    end
    object cds_cofinsaliquota: TFloatField
      FieldName = 'aliquota'
    end
    object cds_cofinsreducao: TFloatField
      FieldName = 'reducao'
    end
    object cds_cofinscpadrao: TIntegerField
      FieldName = 'cpadrao'
    end
    object cds_cofinsid: TIntegerField
      FieldName = 'id'
      Required = True
    end
  end
  object dts_cofins: TDataSource
    DataSet = cds_cofins
    Left = 970
    Top = 19
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
      end
      item
        Name = 'id'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'calciva'
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
      end
      item
        Name = 'sigla'
        Fields = 'sigla'
      end>
    IndexName = 'codigo'
    Params = <>
    ProviderName = 'dsp_cfop'
    StoreDefs = True
    AfterPost = cds_cfopAfterPost
    AfterDelete = cds_cfopAfterDelete
    OnNewRecord = cds_cfopNewRecord
    Left = 668
    Top = 85
    object cds_cfopcodigo: TIntegerField
      FieldName = 'codigo'
    end
    object cds_cfopdescricao: TStringField
      FieldName = 'descricao'
      Size = 40
    end
    object cds_cfopsigla: TStringField
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
    object cds_cfopid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object cds_cfopcalciva: TStringField
      FieldName = 'calciva'
      Size = 1
    end
  end
  object dts_cfop: TDataSource
    DataSet = cds_cfop
    Left = 682
    Top = 96
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
      end
      item
        Name = 'id'
        Attributes = [faRequired]
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
    ProviderName = 'dsp_natop'
    StoreDefs = True
    AfterPost = cds_natopAfterPost
    AfterDelete = cds_natopAfterDelete
    OnNewRecord = cds_natopNewRecord
    Left = 620
    Top = 176
    object cds_natopcodigo: TIntegerField
      FieldName = 'codigo'
    end
    object cds_natopdescricao: TStringField
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
    object cds_natopid: TIntegerField
      FieldName = 'id'
      Required = True
    end
  end
  object dts_natop: TDataSource
    DataSet = cds_natop
    Left = 634
    Top = 187
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
      end
      item
        Name = 'id'
        Attributes = [faRequired]
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
      end>
    IndexName = 'codigo'
    Params = <>
    ProviderName = 'dsp_unidade'
    StoreDefs = True
    AfterPost = cds_unidadeAfterPost
    AfterDelete = cds_unidadeAfterDelete
    OnNewRecord = cds_unidadeNewRecord
    Left = 1044
    Top = 8
    object cds_unidadecodigo: TIntegerField
      FieldName = 'codigo'
    end
    object cds_unidadedescricao: TStringField
      FieldName = 'descricao'
      Size = 40
    end
    object cds_unidadesigla: TStringField
      FieldName = 'sigla'
    end
    object cds_unidadeid: TIntegerField
      FieldName = 'id'
      Required = True
    end
  end
  object dts_unidade: TDataSource
    DataSet = cds_unidade
    Left = 1058
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
      end
      item
        Name = 'id'
        Attributes = [faRequired]
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
    ProviderName = 'dsp_tiposerv'
    StoreDefs = True
    AfterPost = cds_tiposervAfterPost
    AfterDelete = cds_tiposervAfterDelete
    OnNewRecord = cds_tiposervNewRecord
    Left = 296
    Top = 8
    object cds_tiposervcodigo: TIntegerField
      FieldName = 'codigo'
    end
    object cds_tiposervdescricao: TStringField
      FieldName = 'descricao'
      Size = 40
    end
    object cds_tiposervsigla: TStringField
      FieldName = 'sigla'
    end
    object cds_tiposervid: TIntegerField
      FieldName = 'id'
      Required = True
    end
  end
  object dts_tiposerv: TDataSource
    DataSet = cds_tiposerv
    Left = 310
    Top = 19
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
      end
      item
        Name = 'id'
        Attributes = [faRequired]
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
    ProviderName = 'dsp_rcserv'
    StoreDefs = True
    AfterPost = cds_rcservAfterPost
    AfterDelete = cds_rcservAfterDelete
    OnNewRecord = cds_rcservNewRecord
    Left = 12
    Top = 92
    object cds_rcservcodigo: TIntegerField
      FieldName = 'codigo'
    end
    object cds_rcservdescricao: TStringField
      FieldName = 'descricao'
      Size = 40
    end
    object cds_rcservsigla: TStringField
      FieldName = 'sigla'
    end
    object cds_rcservid: TIntegerField
      FieldName = 'id'
      Required = True
    end
  end
  object dts_rcserv: TDataSource
    DataSet = cds_rcserv
    Left = 26
    Top = 103
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
        Size = 20
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
        Name = 'id'
        Attributes = [faRequired]
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
    ProviderName = 'dsp_transportador'
    StoreDefs = True
    AfterPost = cds_transportadorAfterPost
    AfterDelete = cds_transportadorAfterDelete
    OnNewRecord = cds_transportadorNewRecord
    Left = 803
    Top = 178
    object cds_transportadorcodigo: TIntegerField
      FieldName = 'codigo'
    end
    object cds_transportadornome: TStringField
      FieldName = 'nome'
      Size = 70
    end
    object cds_transportadorfantasia: TStringField
      FieldName = 'fantasia'
      Size = 50
    end
    object cds_transportadorcnpj: TStringField
      FieldName = 'cnpj'
    end
    object cds_transportadortelefones: TStringField
      FieldName = 'telefones'
      Size = 40
    end
    object cds_transportadorie: TStringField
      FieldName = 'ie'
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
    object cds_transportadorid: TIntegerField
      FieldName = 'id'
      Required = True
    end
  end
  object dts_transportador: TDataSource
    DataSet = cds_transportador
    Left = 817
    Top = 189
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
      end
      item
        Name = 'id'
        Attributes = [faRequired]
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
    ProviderName = 'dsp_cmobra'
    StoreDefs = True
    AfterPost = cds_cmobraAfterPost
    AfterDelete = cds_cmobraAfterDelete
    OnNewRecord = cds_cmobraNewRecord
    Left = 899
    Top = 258
    object cds_cmobracodigo: TIntegerField
      FieldName = 'codigo'
    end
    object cds_cmobradescricao: TStringField
      FieldName = 'descricao'
      Size = 80
    end
    object cds_cmobraprve: TFloatField
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
    object cds_cmobraid: TIntegerField
      FieldName = 'id'
      Required = True
    end
  end
  object dts_cmobra: TDataSource
    DataSet = cds_cmobra
    Left = 913
    Top = 269
  end
  object cds_clientes: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'nome'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'fantasia'
        DataType = ftString
        Size = 70
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
        Size = 20
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
      end
      item
        Name = 'id'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'codigo'
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
    ProviderName = 'dsp_clientes'
    StoreDefs = True
    AfterPost = cds_clientesAfterPost
    AfterDelete = cds_clientesAfterDelete
    OnNewRecord = cds_clientesNewRecord
    Left = 1132
    Top = 8
    object cds_clientesnome: TStringField
      FieldName = 'nome'
      Size = 70
    end
    object cds_clientesfantasia: TStringField
      FieldName = 'fantasia'
      Size = 70
    end
    object cds_clientescnpj: TStringField
      FieldName = 'cnpj'
    end
    object cds_clientestelefones: TStringField
      FieldName = 'telefones'
      Size = 40
    end
    object cds_clientesie: TStringField
      FieldName = 'ie'
    end
    object cds_clientesemail: TStringField
      FieldName = 'email'
      Size = 100
    end
    object cds_clientessite: TStringField
      FieldName = 'site'
      Size = 100
    end
    object cds_clientescontato: TStringField
      FieldName = 'contato'
      Size = 30
    end
    object cds_clientesendereco: TStringField
      FieldName = 'endereco'
      Size = 60
    end
    object cds_clientesnro: TStringField
      FieldName = 'nro'
      Size = 10
    end
    object cds_clientescompl: TStringField
      FieldName = 'compl'
    end
    object cds_clientesbairro: TStringField
      FieldName = 'bairro'
      Size = 30
    end
    object cds_clientescmun: TIntegerField
      FieldName = 'cmun'
    end
    object cds_clientescest: TIntegerField
      FieldName = 'cest'
    end
    object cds_clientescep: TStringField
      FieldName = 'cep'
      Size = 9
    end
    object cds_clientesim: TStringField
      FieldName = 'im'
    end
    object cds_clientesobs: TMemoField
      FieldName = 'obs'
      BlobType = ftMemo
    end
    object cds_clientesctransp: TIntegerField
      FieldName = 'ctransp'
    end
    object cds_clientesid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object cds_clientescodigo: TIntegerField
      FieldName = 'codigo'
    end
  end
  object dts_clientes: TDataSource
    DataSet = cds_clientes
    OnDataChange = dts_clientesDataChange
    Left = 1146
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
        Name = 'obs'
        DataType = ftMemo
      end
      item
        Name = 'id'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'porcg'
        DataType = ftFloat
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
    ProviderName = 'dsp_regtrib'
    StoreDefs = True
    AfterPost = cds_regtribAfterPost
    AfterDelete = cds_regtribAfterDelete
    OnNewRecord = cds_regtribNewRecord
    Left = 383
    Top = 5
    object cds_regtribcodigo: TIntegerField
      FieldName = 'codigo'
    end
    object cds_regtribnome: TStringField
      FieldName = 'nome'
      Size = 70
    end
    object cds_regtribsigla: TStringField
      FieldName = 'sigla'
    end
    object cds_regtribobs: TMemoField
      FieldName = 'obs'
      BlobType = ftMemo
    end
    object cds_regtribid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object cds_regtribporcg: TFloatField
      FieldName = 'porcg'
    end
  end
  object dts_regtrib: TDataSource
    DataSet = cds_regtrib
    Left = 397
    Top = 19
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
        Size = 20
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
      end
      item
        Name = 'id'
        Attributes = [faRequired]
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
    ProviderName = 'dsp_emitente'
    StoreDefs = True
    AfterPost = cds_emitenteAfterPost
    AfterDelete = cds_emitenteAfterDelete
    OnNewRecord = cds_emitenteNewRecord
    Left = 100
    Top = 90
    object cds_emitentecodigo: TIntegerField
      FieldName = 'codigo'
    end
    object cds_emitentenome: TStringField
      FieldName = 'nome'
      Size = 70
    end
    object cds_emitentefantasia: TStringField
      FieldName = 'fantasia'
      Size = 50
    end
    object cds_emitentecnpj: TStringField
      FieldName = 'cnpj'
    end
    object cds_emitentetelefones: TStringField
      FieldName = 'telefones'
      Size = 40
    end
    object cds_emitenteie: TStringField
      FieldName = 'ie'
    end
    object cds_emitenteemail: TStringField
      FieldName = 'email'
      Size = 100
    end
    object cds_emitentesite: TStringField
      FieldName = 'site'
      Size = 100
    end
    object cds_emitentecontato: TStringField
      FieldName = 'contato'
      Size = 30
    end
    object cds_emitenteendereco: TStringField
      FieldName = 'endereco'
      Size = 60
    end
    object cds_emitentenro: TStringField
      FieldName = 'nro'
      Size = 10
    end
    object cds_emitentecompl: TStringField
      FieldName = 'compl'
    end
    object cds_emitentebairro: TStringField
      FieldName = 'bairro'
      Size = 30
    end
    object cds_emitentecmun: TIntegerField
      FieldName = 'cmun'
    end
    object cds_emitentecest: TIntegerField
      FieldName = 'cest'
    end
    object cds_emitentecep: TStringField
      FieldName = 'cep'
      Size = 9
    end
    object cds_emitenteim: TStringField
      FieldName = 'im'
    end
    object cds_emitenteobs: TMemoField
      FieldName = 'obs'
      BlobType = ftMemo
    end
    object cds_emitentecregtrib: TIntegerField
      FieldName = 'cregtrib'
    end
    object cds_emitenteid: TIntegerField
      FieldName = 'id'
      Required = True
    end
  end
  object dts_emitente: TDataSource
    DataSet = cds_emitente
    OnDataChange = dts_emitenteDataChange
    Left = 114
    Top = 101
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
        Size = 20
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
      end
      item
        Name = 'id'
        Attributes = [faRequired]
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
    ProviderName = 'dsp_fornecedores'
    StoreDefs = True
    AfterPost = cds_fornecedoresAfterPost
    AfterDelete = cds_fornecedoresAfterDelete
    OnNewRecord = cds_fornecedoresNewRecord
    Left = 836
    Top = 87
    object cds_fornecedorescodigo: TIntegerField
      FieldName = 'codigo'
    end
    object cds_fornecedoresnome: TStringField
      FieldName = 'nome'
      Size = 70
    end
    object cds_fornecedoresfantasia: TStringField
      FieldName = 'fantasia'
      Size = 50
    end
    object cds_fornecedorescnpj: TStringField
      FieldName = 'cnpj'
    end
    object cds_fornecedorestelefones: TStringField
      FieldName = 'telefones'
      Size = 40
    end
    object cds_fornecedoresie: TStringField
      FieldName = 'ie'
    end
    object cds_fornecedoresemail: TStringField
      FieldName = 'email'
      Size = 100
    end
    object cds_fornecedoressite: TStringField
      FieldName = 'site'
      Size = 100
    end
    object cds_fornecedorescontato: TStringField
      FieldName = 'contato'
      Size = 30
    end
    object cds_fornecedoresendereco: TStringField
      FieldName = 'endereco'
      Size = 60
    end
    object cds_fornecedoresnro: TStringField
      FieldName = 'nro'
      Size = 10
    end
    object cds_fornecedorescompl: TStringField
      FieldName = 'compl'
    end
    object cds_fornecedoresbairro: TStringField
      FieldName = 'bairro'
      Size = 30
    end
    object cds_fornecedorescmun: TIntegerField
      FieldName = 'cmun'
    end
    object cds_fornecedorescest: TIntegerField
      FieldName = 'cest'
    end
    object cds_fornecedorescep: TStringField
      FieldName = 'cep'
      Size = 9
    end
    object cds_fornecedoresim: TStringField
      FieldName = 'im'
    end
    object cds_fornecedoresobs: TMemoField
      FieldName = 'obs'
      BlobType = ftMemo
    end
    object cds_fornecedoresctransp: TIntegerField
      FieldName = 'ctransp'
    end
    object cds_fornecedoresid: TIntegerField
      FieldName = 'id'
      Required = True
    end
  end
  object dts_fornecedores: TDataSource
    DataSet = cds_fornecedores
    OnDataChange = dts_fornecedoresDataChange
    Left = 850
    Top = 101
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
        DataType = ftFloat
      end
      item
        Name = 'bscalcsubstrib'
        DataType = ftFloat
      end
      item
        Name = 'vlricmssubtrib'
        DataType = ftFloat
      end
      item
        Name = 'tvlrfrete'
        DataType = ftFloat
      end
      item
        Name = 'tvlrout'
        DataType = ftFloat
      end
      item
        Name = 'tvlrseg'
        DataType = ftFloat
      end
      item
        Name = 'bscalcsubtrib'
        DataType = ftFloat
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
      end
      item
        Name = 'id'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'nped'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'aliqapiss'
        DataType = ftFloat
      end
      item
        Name = 'vlrcrediss'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'codigo'
        Fields = 'codigo'
        Options = [ixPrimary, ixUnique]
      end>
    IndexName = 'codigo'
    Params = <>
    ProviderName = 'dsp_nf'
    StoreDefs = True
    AfterPost = cds_nfAfterPost
    AfterDelete = cds_nfAfterDelete
    AfterScroll = cds_nfAfterScroll
    OnCalcFields = cds_nfCalcFields
    OnNewRecord = cds_nfNewRecord
    Left = 895
    Top = 170
    object cds_nfcodigo: TIntegerField
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
    object cds_nfctipoemi: TIntegerField
      FieldName = 'ctipoemi'
    end
    object cds_nfncupom: TStringField
      FieldName = 'ncupom'
      Size = 15
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
    object cds_nfnnfrefdevol: TStringField
      FieldName = 'nnfrefdevol'
    end
    object cds_nfdatanfrefdevol: TDateField
      FieldName = 'datanfrefdevol'
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
    object cds_nfnparc: TIntegerField
      FieldName = 'nparc'
    end
    object cds_nfdatainic: TDateTimeField
      FieldName = 'datainic'
    end
    object cds_nfperiodo: TIntegerField
      FieldName = 'periodo'
    end
    object cds_nfdin: TFloatField
      FieldName = 'din'
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
    object cds_nfiesubtrib: TFloatField
      FieldName = 'iesubtrib'
    end
    object cds_nfbscalcsubstrib: TFloatField
      FieldName = 'bscalcsubstrib'
    end
    object cds_nfvlricmssubtrib: TFloatField
      FieldName = 'vlricmssubtrib'
    end
    object cds_nftvlrfrete: TFloatField
      FieldName = 'tvlrfrete'
    end
    object cds_nftvlrout: TFloatField
      FieldName = 'tvlrout'
    end
    object cds_nftvlrseg: TFloatField
      FieldName = 'tvlrseg'
    end
    object cds_nfbscalcsubtrib: TFloatField
      FieldName = 'bscalcsubtrib'
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
    object cds_nfid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object cds_nfnomedest: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomedest'
      Size = 70
      Calculated = True
    end
    object cds_nfnped: TStringField
      FieldName = 'nped'
      Size = 15
    end
    object cds_nfaliqapiss: TFloatField
      FieldName = 'aliqapiss'
    end
    object cds_nfvlrcrediss: TFloatField
      FieldName = 'vlrcrediss'
    end
  end
  object dts_nf: TDataSource
    DataSet = cds_nf
    Left = 905
    Top = 186
  end
  object cds_tiponf: TClientDataSet
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
        Name = 'id'
        Attributes = [faRequired]
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
      end>
    Params = <>
    ProviderName = 'dsp_tiponf'
    StoreDefs = True
    AfterPost = cds_tiponfAfterPost
    AfterDelete = cds_tiponfAfterDelete
    OnNewRecord = cds_tiponfNewRecord
    Left = 723
    Top = 255
    object cds_tiponfcodigo: TIntegerField
      FieldName = 'codigo'
    end
    object cds_tiponfnome: TStringField
      FieldName = 'nome'
      Size = 70
    end
    object cds_tiponfsigla: TStringField
      FieldName = 'sigla'
    end
    object cds_tiponfid: TIntegerField
      FieldName = 'id'
      Required = True
    end
  end
  object dts_tiponf: TDataSource
    DataSet = cds_tiponf
    Left = 737
    Top = 269
  end
  object cds_onusdofrete: TClientDataSet
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
        Name = 'id'
        Attributes = [faRequired]
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
      end>
    Params = <>
    ProviderName = 'dsp_onusdofrete'
    StoreDefs = True
    AfterPost = cds_onusdofreteAfterPost
    AfterDelete = cds_onusdofreteAfterDelete
    OnNewRecord = cds_onusdofreteNewRecord
    Left = 635
    Top = 262
    object cds_onusdofretecodigo: TIntegerField
      FieldName = 'codigo'
    end
    object cds_onusdofretenome: TStringField
      FieldName = 'nome'
      Size = 70
    end
    object cds_onusdofretesigla: TStringField
      FieldName = 'sigla'
    end
    object cds_onusdofreteid: TIntegerField
      FieldName = 'id'
      Required = True
    end
  end
  object dts_onusdofrete: TDataSource
    DataSet = cds_onusdofrete
    Left = 649
    Top = 276
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
      end
      item
        Name = 'id'
        Attributes = [faRequired]
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'codigo'
        Fields = 'codigo'
        Options = [ixPrimary, ixUnique]
      end>
    Params = <>
    ProviderName = 'dsp_indice'
    StoreDefs = True
    AfterPost = cds_indiceAfterPost
    AfterDelete = cds_indiceAfterDelete
    OnNewRecord = cds_indiceNewRecord
    Left = 468
    Top = 5
    object cds_indicecodigo: TIntegerField
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
    object cds_indiceid: TIntegerField
      FieldName = 'id'
      Required = True
    end
  end
  object dts_indice: TDataSource
    DataSet = cds_indice
    Left = 482
    Top = 19
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
      end
      item
        Name = 'vdesc'
        DataType = ftFloat
      end
      item
        Name = 'total'
        DataType = ftFloat
      end
      item
        Name = 'cnatop'
        DataType = ftInteger
      end
      item
        Name = 'bscalcsubtrib'
        DataType = ftFloat
      end
      item
        Name = 'vlricmssubtrib'
        DataType = ftFloat
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
      end
      item
        Name = 'tvlrfrete'
        DataType = ftFloat
      end
      item
        Name = 'tvlrseg'
        DataType = ftFloat
      end
      item
        Name = 'tvlrout'
        DataType = ftFloat
      end
      item
        Name = 'tvlrvii'
        DataType = ftFloat
      end
      item
        Name = 'tvlripi'
        DataType = ftFloat
      end
      item
        Name = 'tvlrpis'
        DataType = ftFloat
      end
      item
        Name = 'tvlrcofins'
        DataType = ftFloat
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
      end
      item
        Name = 'vlrbsserv'
        DataType = ftFloat
      end
      item
        Name = 'aliqserv'
        DataType = ftFloat
      end
      item
        Name = 'vlriss'
        DataType = ftFloat
      end
      item
        Name = 'bcipi'
        DataType = ftFloat
      end
      item
        Name = 'aliqipi'
        DataType = ftFloat
      end
      item
        Name = 'vipi'
        DataType = ftFloat
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
      end
      item
        Name = 'vpis'
        DataType = ftFloat
      end
      item
        Name = 'aliqpis'
        DataType = ftFloat
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
      end
      item
        Name = 'aliqcofins'
        DataType = ftFloat
      end
      item
        Name = 'vcofins'
        DataType = ftFloat
      end
      item
        Name = 'totbcicms'
        DataType = ftFloat
      end
      item
        Name = 'toticms'
        DataType = ftFloat
      end
      item
        Name = 'totp'
        DataType = ftFloat
      end
      item
        Name = 'vlrdesc'
        DataType = ftFloat
      end
      item
        Name = 'totipi'
        DataType = ftFloat
      end
      item
        Name = 'vlrpis'
        DataType = ftFloat
      end
      item
        Name = 'vlrcofins'
        DataType = ftFloat
      end
      item
        Name = 'vlrtotal'
        DataType = ftFloat
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
        Size = 2
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
      end
      item
        Name = 'id'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ndest'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'chave'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'cnpjcpfemi'
        DataType = ftString
        Size = 22
      end
      item
        Name = 'cnpjcpfdest'
        DataType = ftString
        Size = 22
      end
      item
        Name = 'cnpjcpfeminfe'
        DataType = ftString
        Size = 22
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
    ProviderName = 'dsp_nfe'
    StoreDefs = True
    AfterPost = cds_nfeAfterPost
    AfterDelete = cds_nfeAfterDelete
    OnCalcFields = cds_nfeCalcFields
    OnNewRecord = cds_nfeNewRecord
    Left = 180
    Top = 88
    object cds_nfecodigo: TIntegerField
      FieldName = 'codigo'
    end
    object cds_nfecemi: TIntegerField
      FieldName = 'cemi'
    end
    object cds_nfecdest: TIntegerField
      FieldName = 'cdest'
    end
    object cds_nfetipodest: TStringField
      FieldName = 'tipodest'
      Size = 1
    end
    object cds_nfectransp: TIntegerField
      FieldName = 'ctransp'
    end
    object cds_nfepdesc: TFloatField
      FieldName = 'pdesc'
    end
    object cds_nfevdesc: TFloatField
      FieldName = 'vdesc'
    end
    object cds_nfetotal: TFloatField
      FieldName = 'total'
    end
    object cds_nfecnatop: TIntegerField
      FieldName = 'cnatop'
    end
    object cds_nfebscalcsubtrib: TFloatField
      FieldName = 'bscalcsubtrib'
    end
    object cds_nfevlricmssubtrib: TFloatField
      FieldName = 'vlricmssubtrib'
    end
    object cds_nfeplacavei: TStringField
      FieldName = 'placavei'
      Size = 8
    end
    object cds_nfeufvei: TStringField
      FieldName = 'ufvei'
      Size = 2
    end
    object cds_nfedatasai: TDateField
      FieldName = 'datasai'
    end
    object cds_nfehorasai: TTimeField
      FieldName = 'horasai'
    end
    object cds_nfequantidade: TStringField
      FieldName = 'quantidade'
      Size = 30
    end
    object cds_nfeespecie: TStringField
      FieldName = 'especie'
      Size = 30
    end
    object cds_nfemarca: TStringField
      FieldName = 'marca'
      Size = 30
    end
    object cds_nfenumero: TStringField
      FieldName = 'numero'
      Size = 30
    end
    object cds_nfepesob: TStringField
      FieldName = 'pesob'
    end
    object cds_nfepesol: TStringField
      FieldName = 'pesol'
    end
    object cds_nfeadicnf: TMemoField
      FieldName = 'adicnf'
      BlobType = ftMemo
    end
    object cds_nfeadicpostofiscal: TMemoField
      FieldName = 'adicpostofiscal'
      BlobType = ftMemo
    end
    object cds_nfectiponf: TIntegerField
      FieldName = 'ctiponf'
    end
    object cds_nfecfreteporconta: TIntegerField
      FieldName = 'cfreteporconta'
    end
    object cds_nfennf: TIntegerField
      FieldName = 'nnf'
    end
    object cds_nfeliquido: TFloatField
      FieldName = 'liquido'
    end
    object cds_nfetvlrfrete: TFloatField
      FieldName = 'tvlrfrete'
    end
    object cds_nfetvlrseg: TFloatField
      FieldName = 'tvlrseg'
    end
    object cds_nfetvlrout: TFloatField
      FieldName = 'tvlrout'
    end
    object cds_nfetvlrvii: TFloatField
      FieldName = 'tvlrvii'
    end
    object cds_nfetvlripi: TFloatField
      FieldName = 'tvlripi'
    end
    object cds_nfetvlrpis: TFloatField
      FieldName = 'tvlrpis'
    end
    object cds_nfetvlrcofins: TFloatField
      FieldName = 'tvlrcofins'
    end
    object cds_nfedataemi: TDateField
      FieldName = 'dataemi'
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
    object cds_nfefinalidadenf: TStringField
      FieldName = 'finalidadenf'
    end
    object cds_nfeformapgtonf: TStringField
      FieldName = 'formapgtonf'
    end
    object cds_nfecuftransp: TIntegerField
      FieldName = 'cuftransp'
    end
    object cds_nfevlrserv: TFloatField
      FieldName = 'vlrserv'
    end
    object cds_nfevlrbsserv: TFloatField
      FieldName = 'vlrbsserv'
    end
    object cds_nfealiqserv: TFloatField
      FieldName = 'aliqserv'
    end
    object cds_nfevlriss: TFloatField
      FieldName = 'vlriss'
    end
    object cds_nfebcipi: TFloatField
      FieldName = 'bcipi'
    end
    object cds_nfealiqipi: TFloatField
      FieldName = 'aliqipi'
    end
    object cds_nfevipi: TFloatField
      FieldName = 'vipi'
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
    end
    object cds_nfevpis: TFloatField
      FieldName = 'vpis'
    end
    object cds_nfealiqpis: TFloatField
      FieldName = 'aliqpis'
    end
    object cds_nfeccofins: TIntegerField
      FieldName = 'ccofins'
    end
    object cds_nfencofins: TStringField
      FieldName = 'ncofins'
      Size = 40
    end
    object cds_nfebscofins: TFloatField
      FieldName = 'bscofins'
    end
    object cds_nfealiqcofins: TFloatField
      FieldName = 'aliqcofins'
    end
    object cds_nfevcofins: TFloatField
      FieldName = 'vcofins'
    end
    object cds_nfetotbcicms: TFloatField
      FieldName = 'totbcicms'
    end
    object cds_nfetoticms: TFloatField
      FieldName = 'toticms'
    end
    object cds_nfetotp: TFloatField
      FieldName = 'totp'
    end
    object cds_nfevlrdesc: TFloatField
      FieldName = 'vlrdesc'
    end
    object cds_nfetotipi: TFloatField
      FieldName = 'totipi'
    end
    object cds_nfevlrpis: TFloatField
      FieldName = 'vlrpis'
    end
    object cds_nfevlrcofins: TFloatField
      FieldName = 'vlrcofins'
    end
    object cds_nfevlrtotal: TFloatField
      FieldName = 'vlrtotal'
    end
    object cds_nfeccfoptrans: TIntegerField
      FieldName = 'ccfoptrans'
    end
    object cds_nfecidadecodtrans: TIntegerField
      FieldName = 'cidadecodtrans'
    end
    object cds_nfeufplacavei: TStringField
      FieldName = 'ufplacavei'
      Size = 2
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
    object cds_nfecontador: TIntegerField
      FieldName = 'contador'
    end
    object cds_nfeicorrecao: TIntegerField
      FieldName = 'icorrecao'
    end
    object cds_nfeehcancelada: TStringField
      FieldName = 'ehcancelada'
      Size = 1
    end
    object cds_nfeehcorrigida: TStringField
      FieldName = 'ehcorrigida'
      Size = 1
    end
    object cds_nfeehsucesso: TStringField
      FieldName = 'ehsucesso'
      Size = 1
    end
    object cds_nfeid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object cds_nfenomedest: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomedest'
      Size = 70
      Calculated = True
    end
    object cds_nfendest: TStringField
      FieldName = 'ndest'
      Size = 60
    end
    object cds_nfechave: TStringField
      FieldName = 'chave'
      Size = 200
    end
    object cds_nfecnpjcpfemi: TStringField
      FieldName = 'cnpjcpfemi'
      Size = 22
    end
    object cds_nfecnpjcpfdest: TStringField
      FieldName = 'cnpjcpfdest'
      Size = 22
    end
    object cds_nfecnpjcpfeminfe: TStringField
      FieldName = 'cnpjcpfeminfe'
      Size = 22
    end
  end
  object dts_nfe: TDataSource
    DataSet = cds_nfe
    Left = 194
    Top = 99
  end
  object cds_nfp: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'cpro'
        DataType = ftInteger
      end
      item
        Name = 'npro'
        DataType = ftString
        Size = 120
      end
      item
        Name = 'qtde'
        DataType = ftFloat
      end
      item
        Name = 'prve'
        DataType = ftFloat
      end
      item
        Name = 'subtotal'
        DataType = ftFloat
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
      end
      item
        Name = 'icmscalcst'
        DataType = ftFloat
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
      end
      item
        Name = 'id'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'iva'
        DataType = ftFloat
      end
      item
        Name = 'baseicmsstant'
        DataType = ftFloat
      end
      item
        Name = 'vlricmsstant'
        DataType = ftFloat
      end
      item
        Name = 'picmsstant'
        DataType = ftFloat
      end
      item
        Name = 'item'
        DataType = ftInteger
      end
      item
        Name = 'vlricms'
        DataType = ftFloat
      end
      item
        Name = 'vlripi'
        DataType = ftFloat
      end
      item
        Name = 'vlrsubsicms'
        DataType = ftFloat
      end
      item
        Name = 'bcsubsicms'
        DataType = ftFloat
      end
      item
        Name = 'bcicms'
        DataType = ftFloat
      end
      item
        Name = 'codigo'
        DataType = ftInteger
      end
      item
        Name = 'cest'
        DataType = ftString
        Size = 40
      end>
    IndexDefs = <
      item
        Name = 'codigo'
        Fields = 'codigo'
        Options = [ixPrimary, ixUnique]
      end>
    IndexName = 'codigo'
    Params = <>
    ProviderName = 'dsp_nfp'
    StoreDefs = True
    AfterPost = cds_nfpAfterPost
    AfterDelete = cds_nfpAfterDelete
    OnNewRecord = cds_nfpNewRecord
    Left = 740
    Top = 86
    object cds_nfpcpro: TIntegerField
      FieldName = 'cpro'
    end
    object cds_nfpnpro: TStringField
      FieldName = 'npro'
      Size = 120
    end
    object cds_nfpqtde: TFloatField
      FieldName = 'qtde'
    end
    object cds_nfpprve: TFloatField
      FieldName = 'prve'
    end
    object cds_nfpsubtotal: TFloatField
      FieldName = 'subtotal'
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
    object cds_nfpsimplesncm: TStringField
      FieldName = 'simplesncm'
      Size = 60
    end
    object cds_nfpid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object cds_nfpnomeunidade: TStringField
      FieldKind = fkLookup
      FieldName = 'nomeunidade'
      LookupDataSet = cds_unidade
      LookupKeyFields = 'codigo'
      LookupResultField = 'sigla'
      KeyFields = 'cod13prodnf'
      Size = 10
      Lookup = True
    end
    object cds_nfpiva: TFloatField
      FieldName = 'iva'
    end
    object cds_nfpbaseicmsstant: TFloatField
      FieldName = 'baseicmsstant'
    end
    object cds_nfpvlricmsstant: TFloatField
      FieldName = 'vlricmsstant'
    end
    object cds_nfppicmsstant: TFloatField
      FieldName = 'picmsstant'
    end
    object cds_nfpitem: TIntegerField
      FieldName = 'item'
    end
    object cds_nfpvlricms: TFloatField
      FieldName = 'vlricms'
    end
    object cds_nfpvlripi: TFloatField
      FieldName = 'vlripi'
    end
    object cds_nfpvlrsubsicms: TFloatField
      FieldName = 'vlrsubsicms'
    end
    object cds_nfpbcsubsicms: TFloatField
      FieldName = 'bcsubsicms'
    end
    object cds_nfpbcicms: TFloatField
      FieldName = 'bcicms'
    end
    object cds_nfpcodigo: TIntegerField
      FieldName = 'codigo'
    end
    object cds_nfpcest: TStringField
      FieldName = 'cest'
      Size = 40
    end
  end
  object dts_nfp: TDataSource
    DataSet = cds_nfp
    Left = 754
    Top = 97
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
      end
      item
        Name = 'id'
        Attributes = [faRequired]
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
    ProviderName = 'dsp_csosn'
    StoreDefs = True
    AfterPost = cds_csosnAfterPost
    AfterDelete = cds_csosnAfterDelete
    OnNewRecord = cds_csosnNewRecord
    Left = 971
    Top = 170
    object cds_csosncodigo: TIntegerField
      FieldName = 'codigo'
    end
    object cds_csosndescricao: TStringField
      FieldName = 'descricao'
      Size = 200
    end
    object cds_csosnsigla: TStringField
      FieldName = 'sigla'
    end
    object cds_csosnid: TIntegerField
      FieldName = 'id'
      Required = True
    end
  end
  object dts_csosn: TDataSource
    DataSet = cds_csosn
    Left = 985
    Top = 181
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
        Size = 120
      end
      item
        Name = 'qtde'
        DataType = ftFloat
      end
      item
        Name = 'prve'
        DataType = ftFloat
      end
      item
        Name = 'subtotal'
        DataType = ftFloat
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
      end
      item
        Name = 'id'
        Attributes = [faRequired]
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
    ProviderName = 'dsp_nfs'
    StoreDefs = True
    AfterPost = cds_nfsAfterPost
    AfterDelete = cds_nfsAfterDelete
    OnNewRecord = cds_nfsNewRecord
    Left = 356
    Top = 91
    object cds_nfscodigo: TIntegerField
      FieldName = 'codigo'
    end
    object cds_nfscdesc: TIntegerField
      FieldName = 'cdesc'
    end
    object cds_nfsndesc: TStringField
      FieldName = 'ndesc'
      Size = 120
    end
    object cds_nfsqtde: TFloatField
      FieldName = 'qtde'
    end
    object cds_nfsprve: TFloatField
      FieldName = 'prve'
    end
    object cds_nfssubtotal: TFloatField
      FieldName = 'subtotal'
    end
    object cds_nfscnf: TIntegerField
      FieldName = 'cnf'
    end
    object cds_nfscod1servnf: TIntegerField
      FieldName = 'cod1servnf'
    end
    object cds_nfscod2servnf: TIntegerField
      FieldName = 'cod2servnf'
    end
    object cds_nfscod3servnf: TIntegerField
      FieldName = 'cod3servnf'
    end
    object cds_nfscod4servnf: TIntegerField
      FieldName = 'cod4servnf'
    end
    object cds_nfscod5servnf: TIntegerField
      FieldName = 'cod5servnf'
    end
    object cds_nfscod6servnf: TIntegerField
      FieldName = 'cod6servnf'
    end
    object cds_nfscod7servnf: TIntegerField
      FieldName = 'cod7servnf'
    end
    object cds_nfscod8servnf: TIntegerField
      FieldName = 'cod8servnf'
    end
    object cds_nfscod9servnf: TIntegerField
      FieldName = 'cod9servnf'
    end
    object cds_nfscod10servnf: TIntegerField
      FieldName = 'cod10servnf'
    end
    object cds_nfscod11servnf: TIntegerField
      FieldName = 'cod11servnf'
    end
    object cds_nfscod12servnf: TIntegerField
      FieldName = 'cod12servnf'
    end
    object cds_nfscod13servnf: TIntegerField
      FieldName = 'cod13servnf'
    end
    object cds_nfscod14servnf: TIntegerField
      FieldName = 'cod14servnf'
    end
    object cds_nfscnfe: TIntegerField
      FieldName = 'cnfe'
    end
    object cds_nfsid: TIntegerField
      FieldName = 'id'
      Required = True
    end
  end
  object dts_nfs: TDataSource
    DataSet = cds_nfs
    Left = 370
    Top = 102
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
      end
      item
        Name = 'id'
        Attributes = [faRequired]
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
    ProviderName = 'dsp_tipopgto'
    StoreDefs = True
    AfterPost = cds_tipopgtoAfterPost
    AfterDelete = cds_tipopgtoAfterDelete
    OnNewRecord = cds_tipopgtoNewRecord
    Left = 1148
    Top = 168
    object cds_tipopgtocodigo: TIntegerField
      FieldName = 'codigo'
    end
    object cds_tipopgtodescricao: TStringField
      FieldName = 'descricao'
      Size = 40
    end
    object cds_tipopgtoehvd: TStringField
      FieldName = 'ehvd'
      Size = 1
    end
    object cds_tipopgtoid: TIntegerField
      FieldName = 'id'
      Required = True
    end
  end
  object dts_tipopgto: TDataSource
    DataSet = cds_tipopgto
    Left = 1162
    Top = 179
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
      end
      item
        Name = 'vdesc'
        DataType = ftFloat
      end
      item
        Name = 'vliq'
        DataType = ftFloat
      end
      item
        Name = 'pdesc'
        DataType = ftFloat
      end
      item
        Name = 'id'
        Attributes = [faRequired]
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
    ProviderName = 'dsp_fatura'
    StoreDefs = True
    AfterPost = cds_faturaAfterPost
    AfterDelete = cds_faturaAfterDelete
    OnNewRecord = cds_faturaNewRecord
    Left = 548
    Top = 4
    object cds_faturacodigo: TIntegerField
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
    end
    object cds_faturavdesc: TFloatField
      FieldName = 'vdesc'
    end
    object cds_faturavliq: TFloatField
      FieldName = 'vliq'
    end
    object cds_faturapdesc: TFloatField
      FieldName = 'pdesc'
    end
    object cds_faturaid: TIntegerField
      FieldName = 'id'
      Required = True
    end
  end
  object dts_fatura: TDataSource
    DataSet = cds_fatura
    Left = 562
    Top = 15
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
      end
      item
        Name = 'id'
        Attributes = [faRequired]
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
    ProviderName = 'dsp_duplicata'
    StoreDefs = True
    AfterPost = cds_duplicataAfterPost
    AfterDelete = cds_duplicataAfterDelete
    OnNewRecord = cds_duplicataNewRecord
    Left = 276
    Top = 90
    object cds_duplicatacodigo: TIntegerField
      FieldName = 'codigo'
    end
    object cds_duplicatandup: TStringField
      FieldName = 'ndup'
      Size = 60
    end
    object cds_duplicatadtv: TDateField
      FieldName = 'dtv'
    end
    object cds_duplicatavdup: TFloatField
      FieldName = 'vdup'
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
    object cds_duplicataid: TIntegerField
      FieldName = 'id'
      Required = True
    end
  end
  object dts_duplicata: TDataSource
    DataSet = cds_duplicata
    Left = 290
    Top = 101
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
      end
      item
        Name = 'id'
        Attributes = [faRequired]
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
    ProviderName = 'dsp_tgicms'
    StoreDefs = True
    AfterPost = cds_tgicmsAfterPost
    AfterDelete = cds_tgicmsAfterDelete
    OnNewRecord = cds_tgicmsNewRecord
    Left = 708
    Top = 176
    object cds_tgicmscodigo: TIntegerField
      FieldName = 'codigo'
    end
    object cds_tgicmsdescricao: TStringField
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
    object cds_tgicmsid: TIntegerField
      FieldName = 'id'
      Required = True
    end
  end
  object dts_tgicms: TDataSource
    DataSet = cds_tgicms
    Left = 722
    Top = 187
  end
  object cds_aux: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_'
    Left = 512
    Top = 308
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
      end
      item
        Name = 'prve'
        DataType = ftFloat
      end
      item
        Name = 'subtotal'
        DataType = ftFloat
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
      end
      item
        Name = 'vdesc'
        DataType = ftFloat
      end
      item
        Name = 'bsicms'
        DataType = ftFloat
      end
      item
        Name = 'aliqicms'
        DataType = ftFloat
      end
      item
        Name = 'vicms'
        DataType = ftFloat
      end
      item
        Name = 'bsipi'
        DataType = ftFloat
      end
      item
        Name = 'aliqipi'
        DataType = ftFloat
      end
      item
        Name = 'vipi'
        DataType = ftFloat
      end
      item
        Name = 'aliqredbcicms'
        DataType = ftFloat
      end
      item
        Name = 'compoetnf'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'bscalcst'
        DataType = ftFloat
      end
      item
        Name = 'icmscalcst'
        DataType = ftFloat
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
        Name = 'id'
        Attributes = [faRequired]
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
    ProviderName = 'dsp_nfep'
    StoreDefs = True
    AfterPost = cds_nfepAfterPost
    AfterDelete = cds_nfepAfterDelete
    OnNewRecord = cds_nfepNewRecord
    Left = 524
    Top = 88
    object cds_nfepcodigo: TIntegerField
      FieldName = 'codigo'
    end
    object cds_nfepcpro: TIntegerField
      FieldName = 'cpro'
    end
    object cds_nfepnpro: TStringField
      FieldName = 'npro'
      Size = 70
    end
    object cds_nfepqtde: TFloatField
      FieldName = 'qtde'
    end
    object cds_nfepprve: TFloatField
      FieldName = 'prve'
    end
    object cds_nfepsubtotal: TFloatField
      FieldName = 'subtotal'
    end
    object cds_nfepcnf: TIntegerField
      FieldName = 'cnf'
    end
    object cds_nfepcod1prodnf: TIntegerField
      FieldName = 'cod1prodnf'
    end
    object cds_nfepcod2prodnf: TIntegerField
      FieldName = 'cod2prodnf'
    end
    object cds_nfepcod3prodnf: TIntegerField
      FieldName = 'cod3prodnf'
    end
    object cds_nfepcod4prodnf: TIntegerField
      FieldName = 'cod4prodnf'
    end
    object cds_nfepcod5prodnf: TIntegerField
      FieldName = 'cod5prodnf'
    end
    object cds_nfepcod6prodnf: TIntegerField
      FieldName = 'cod6prodnf'
    end
    object cds_nfepcod7prodnf: TIntegerField
      FieldName = 'cod7prodnf'
    end
    object cds_nfepcod8prodnf: TIntegerField
      FieldName = 'cod8prodnf'
    end
    object cds_nfepcod9prodnf: TIntegerField
      FieldName = 'cod9prodnf'
    end
    object cds_nfepcod10prodnf: TIntegerField
      FieldName = 'cod10prodnf'
    end
    object cds_nfepcod12prodnf: TIntegerField
      FieldName = 'cod12prodnf'
    end
    object cds_nfepcod13prodnf: TIntegerField
      FieldName = 'cod13prodnf'
    end
    object cds_nfepcod14prodnf: TIntegerField
      FieldName = 'cod14prodnf'
    end
    object cds_nfepcnfe: TIntegerField
      FieldName = 'cnfe'
    end
    object cds_nfeppdesc: TFloatField
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
    object cds_nfepid: TIntegerField
      FieldName = 'id'
      Required = True
    end
  end
  object dts_nfep: TDataSource
    DataSet = cds_nfep
    Left = 538
    Top = 104
  end
  object cds_eprodutos: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 512
    Top = 258
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
    Left = 512
    Top = 366
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
        Name = 'codigo'
        DataType = ftInteger
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
        Name = 'modelo'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'id'
        Attributes = [faRequired]
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dsp_cupom'
    StoreDefs = True
    AfterPost = cds_cupomAfterPost
    AfterDelete = cds_cupomAfterDelete
    OnNewRecord = cds_cupomNewRecord
    Left = 1063
    Top = 170
    object cds_cupomcodigo: TIntegerField
      FieldName = 'codigo'
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
    object cds_cupommodelo: TStringField
      FieldName = 'modelo'
      Size = 30
    end
    object cds_cupomid: TIntegerField
      FieldName = 'id'
      Required = True
    end
  end
  object dts_cupom: TDataSource
    DataSet = cds_cupom
    Left = 1079
    Top = 178
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
    Left = 648
    Top = 360
    object cds_configdataexpira: TDateField
      FieldName = 'dataexpira'
    end
    object cds_configdataatual: TDateField
      FieldName = 'dataatual'
    end
  end
  object dts_config: TDataSource
    DataSet = cds_config
    Left = 664
    Top = 368
  end
  object cd_enfe: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 568
    Top = 280
  end
  object dsp_tabela1: TDataSetProvider
    UpdateMode = upWhereKeyOnly
    Left = 544
    Top = 440
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
    Left = 1280
    Top = 88
  end
  object dbx_tabela1: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from PAISES')
    SQLConnection = dados_nfe
    Left = 528
    Top = 424
  end
  object cd_enatop: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 560
    Top = 332
  end
  object cd_enf: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 576
    Top = 392
  end
  object cd_eindice: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 568
    Top = 220
  end
  object zconexao: TZConnection
    TransactIsolationLevel = tiReadCommitted
    HostName = 'localhost'
    Port = 3306
    Database = 'nfe'
    User = 'root'
    Password = 'sqlremoto'
    Protocol = 'mysql-5'
    Left = 1264
    Top = 25
  end
  object sql_Paises: TZQuery
    Connection = zconexao
    SQL.Strings = (
      'select * from paises')
    Params = <>
    Left = 16
    Top = 201
    object sql_Paisescodigo: TIntegerField
      FieldName = 'codigo'
    end
    object sql_Paisesnome: TStringField
      FieldName = 'nome'
      Size = 70
    end
    object sql_Paisessigla: TStringField
      FieldName = 'sigla'
    end
    object sql_Paisescodibge: TStringField
      FieldName = 'codibge'
    end
    object sql_Paisesid: TIntegerField
      FieldName = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object dsp_paises: TDataSetProvider
    DataSet = sql_Paises
    UpdateMode = upWhereKeyOnly
    Left = 56
    Top = 32
  end
  object sql_consulta: TZQuery
    Connection = zconexao
    SQL.Strings = (
      'select * from paises')
    Params = <>
    Left = 88
    Top = 201
  end
  object dsp_ImpostoII: TDataSetProvider
    DataSet = sql_ImpostoII
    UpdateMode = upWhereKeyOnly
    Left = 144
    Top = 32
  end
  object sql_ImpostoII: TZQuery
    Connection = zconexao
    SQL.Strings = (
      'select * from ImpostoII')
    Params = <>
    Left = 168
    Top = 201
    object sql_ImpostoIIcodigo: TIntegerField
      FieldName = 'codigo'
    end
    object sql_ImpostoIIdescricao: TStringField
      FieldName = 'descricao'
      Size = 40
    end
    object sql_ImpostoIIsigla: TStringField
      FieldName = 'sigla'
    end
    object sql_ImpostoIIaliquota: TFloatField
      FieldName = 'aliquota'
    end
    object sql_ImpostoIIreducao: TFloatField
      FieldName = 'reducao'
    end
    object sql_ImpostoIIid: TIntegerField
      FieldName = 'id'
      Required = True
    end
  end
  object sql_impostoIII: TZQuery
    Connection = zconexao
    SQL.Strings = (
      'select * from impostoIII')
    Params = <>
    Left = 88
    Top = 257
    object sql_impostoIIIcodigo: TIntegerField
      FieldName = 'codigo'
    end
    object sql_impostoIIIdescricao: TStringField
      FieldName = 'descricao'
      Size = 40
    end
    object sql_impostoIIIsigla: TStringField
      FieldName = 'sigla'
    end
    object sql_impostoIIIaliquota: TFloatField
      FieldName = 'aliquota'
    end
    object sql_impostoIIIreducao: TFloatField
      FieldName = 'reducao'
    end
    object sql_impostoIIIid: TIntegerField
      FieldName = 'id'
      Required = True
    end
  end
  object sql_tiposerv: TZQuery
    Connection = zconexao
    SQL.Strings = (
      'select * from tiposerv')
    Params = <>
    Left = 168
    Top = 257
    object sql_tiposervcodigo: TIntegerField
      FieldName = 'codigo'
    end
    object sql_tiposervdescricao: TStringField
      FieldName = 'descricao'
      Size = 40
    end
    object sql_tiposervsigla: TStringField
      FieldName = 'sigla'
    end
    object sql_tiposervid: TIntegerField
      FieldName = 'id'
      Required = True
    end
  end
  object sql_regtrib: TZQuery
    Connection = zconexao
    SQL.Strings = (
      'select * from regtrib')
    Params = <>
    Left = 16
    Top = 313
    object sql_regtribcodigo: TIntegerField
      FieldName = 'codigo'
    end
    object sql_regtribnome: TStringField
      FieldName = 'nome'
      Size = 70
    end
    object sql_regtribsigla: TStringField
      FieldName = 'sigla'
    end
    object sql_regtribobs: TMemoField
      FieldName = 'obs'
      BlobType = ftMemo
    end
    object sql_regtribid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object sql_regtribporcg: TFloatField
      FieldName = 'porcg'
    end
  end
  object sql_indice: TZQuery
    Connection = zconexao
    SQL.Strings = (
      'select * from indice')
    Params = <>
    Left = 88
    Top = 313
    object sql_indicecodigo: TIntegerField
      FieldName = 'codigo'
    end
    object sql_indicecaminhoarqnfe: TStringField
      FieldName = 'caminhoarqnfe'
      Size = 150
    end
    object sql_indicennf: TIntegerField
      FieldName = 'nnf'
    end
    object sql_indicecaminhoarqnfetemp: TStringField
      FieldName = 'caminhoarqnfetemp'
      Size = 150
    end
    object sql_indicecontadornfe: TIntegerField
      FieldName = 'contadornfe'
    end
    object sql_indicechaveconsultacep: TStringField
      FieldName = 'chaveconsultacep'
      Size = 40
    end
    object sql_indiceimportarpara: TStringField
      FieldName = 'importarpara'
      Size = 150
    end
    object sql_indiceexportarpara: TStringField
      FieldName = 'exportarpara'
      Size = 150
    end
    object sql_indiceconfigcpro: TIntegerField
      FieldName = 'configcpro'
    end
    object sql_indicehverao: TStringField
      FieldName = 'hverao'
      Size = 3
    end
    object sql_indiceid: TIntegerField
      FieldName = 'id'
      Required = True
    end
  end
  object sql_fatura: TZQuery
    Connection = zconexao
    SQL.Strings = (
      'select * from fatura')
    Params = <>
    Left = 168
    Top = 313
    object sql_faturacodigo: TIntegerField
      FieldName = 'codigo'
    end
    object sql_faturacnf: TIntegerField
      FieldName = 'cnf'
    end
    object sql_faturactipopgto: TIntegerField
      FieldName = 'ctipopgto'
    end
    object sql_faturanfat: TStringField
      FieldName = 'nfat'
      Size = 60
    end
    object sql_faturavorig: TFloatField
      FieldName = 'vorig'
    end
    object sql_faturavdesc: TFloatField
      FieldName = 'vdesc'
    end
    object sql_faturavliq: TFloatField
      FieldName = 'vliq'
    end
    object sql_faturapdesc: TFloatField
      FieldName = 'pdesc'
    end
    object sql_faturaid: TIntegerField
      FieldName = 'id'
      Required = True
    end
  end
  object sql_cf: TZQuery
    Connection = zconexao
    SQL.Strings = (
      'select * from cf')
    Params = <>
    Left = 16
    Top = 377
    object sql_cfcodigo: TIntegerField
      FieldName = 'codigo'
    end
    object sql_cfdescricao: TStringField
      FieldName = 'descricao'
      Size = 40
    end
    object sql_cfsigla: TStringField
      FieldName = 'sigla'
    end
    object sql_cfid: TIntegerField
      FieldName = 'id'
      Required = True
    end
  end
  object sql_pis: TZQuery
    Connection = zconexao
    SQL.Strings = (
      'select * from pis')
    Params = <>
    Left = 88
    Top = 377
    object sql_piscodigo: TIntegerField
      FieldName = 'codigo'
    end
    object sql_pisdescricao: TStringField
      FieldName = 'descricao'
      Size = 40
    end
    object sql_pissigla: TStringField
      FieldName = 'sigla'
    end
    object sql_pisaliquota: TFloatField
      FieldName = 'aliquota'
    end
    object sql_pisreducao: TFloatField
      FieldName = 'reducao'
    end
    object sql_piscpadrao: TIntegerField
      FieldName = 'cpadrao'
    end
    object sql_pisid: TIntegerField
      FieldName = 'id'
      Required = True
    end
  end
  object sql_Munic: TZQuery
    Connection = zconexao
    SQL.Strings = (
      'select * from Munic')
    Params = <>
    Left = 168
    Top = 377
    object sql_Municcodigo: TIntegerField
      FieldName = 'codigo'
    end
    object sql_Municnome: TStringField
      FieldName = 'nome'
      Size = 70
    end
    object sql_Municcodibge: TStringField
      FieldName = 'codibge'
    end
    object sql_Municcest: TIntegerField
      FieldName = 'cest'
    end
    object sql_Municfxinicial: TIntegerField
      FieldName = 'fxinicial'
    end
    object sql_Municfxfinal: TIntegerField
      FieldName = 'fxfinal'
    end
    object sql_Municid: TIntegerField
      FieldName = 'id'
      Required = True
    end
  end
  object sql_Modbc: TZQuery
    Connection = zconexao
    SQL.Strings = (
      'select * from Modbc')
    Params = <>
    Left = 16
    Top = 433
    object sql_Modbccodigo: TIntegerField
      FieldName = 'codigo'
    end
    object sql_Modbcdescricao: TStringField
      FieldName = 'descricao'
      Size = 40
    end
    object sql_Modbcsigla: TStringField
      FieldName = 'sigla'
    end
    object sql_Modbcid: TIntegerField
      FieldName = 'id'
      Required = True
    end
  end
  object sql_cofins: TZQuery
    Connection = zconexao
    SQL.Strings = (
      'select * from cofins')
    Params = <>
    Left = 88
    Top = 433
    object sql_cofinscodigo: TIntegerField
      FieldName = 'codigo'
    end
    object sql_cofinsdescricao: TStringField
      FieldName = 'descricao'
      Size = 40
    end
    object sql_cofinssigla: TStringField
      FieldName = 'sigla'
    end
    object sql_cofinsaliquota: TFloatField
      FieldName = 'aliquota'
    end
    object sql_cofinsreducao: TFloatField
      FieldName = 'reducao'
    end
    object sql_cofinscpadrao: TIntegerField
      FieldName = 'cpadrao'
    end
    object sql_cofinsid: TIntegerField
      FieldName = 'id'
      Required = True
    end
  end
  object sql_unidade: TZQuery
    Connection = zconexao
    SQL.Strings = (
      'select * from unidade')
    Params = <>
    Left = 168
    Top = 433
    object sql_unidadecodigo: TIntegerField
      FieldName = 'codigo'
    end
    object sql_unidadedescricao: TStringField
      FieldName = 'descricao'
      Size = 40
    end
    object sql_unidadesigla: TStringField
      FieldName = 'sigla'
    end
    object sql_unidadeid: TIntegerField
      FieldName = 'id'
      Required = True
    end
  end
  object sql_clientes: TZQuery
    Connection = zconexao
    SQL.Strings = (
      'select * from clientes')
    Params = <>
    Left = 16
    Top = 497
    object sql_clientesnome: TStringField
      FieldName = 'nome'
      Size = 70
    end
    object sql_clientesfantasia: TStringField
      FieldName = 'fantasia'
      Size = 70
    end
    object sql_clientescnpj: TStringField
      FieldName = 'cnpj'
    end
    object sql_clientestelefones: TStringField
      FieldName = 'telefones'
      Size = 40
    end
    object sql_clientesie: TStringField
      FieldName = 'ie'
    end
    object sql_clientesemail: TStringField
      FieldName = 'email'
      Size = 100
    end
    object sql_clientessite: TStringField
      FieldName = 'site'
      Size = 100
    end
    object sql_clientescontato: TStringField
      FieldName = 'contato'
      Size = 30
    end
    object sql_clientesendereco: TStringField
      FieldName = 'endereco'
      Size = 60
    end
    object sql_clientesnro: TStringField
      FieldName = 'nro'
      Size = 10
    end
    object sql_clientescompl: TStringField
      FieldName = 'compl'
    end
    object sql_clientesbairro: TStringField
      FieldName = 'bairro'
      Size = 30
    end
    object sql_clientescmun: TIntegerField
      FieldName = 'cmun'
    end
    object sql_clientescest: TIntegerField
      FieldName = 'cest'
    end
    object sql_clientescep: TStringField
      FieldName = 'cep'
      Size = 9
    end
    object sql_clientesim: TStringField
      FieldName = 'im'
    end
    object sql_clientesobs: TMemoField
      FieldName = 'obs'
      BlobType = ftMemo
    end
    object sql_clientesctransp: TIntegerField
      FieldName = 'ctransp'
    end
    object sql_clientesid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object sql_clientescodigo: TIntegerField
      FieldName = 'codigo'
    end
  end
  object sql_rcserv: TZQuery
    Connection = zconexao
    SQL.Strings = (
      'select * from rcserv'
      '')
    Params = <>
    Left = 96
    Top = 497
    object sql_rcservcodigo: TIntegerField
      FieldName = 'codigo'
    end
    object sql_rcservdescricao: TStringField
      FieldName = 'descricao'
      Size = 40
    end
    object sql_rcservsigla: TStringField
      FieldName = 'sigla'
    end
    object sql_rcservid: TIntegerField
      FieldName = 'id'
      Required = True
    end
  end
  object sql_emitente: TZQuery
    Connection = zconexao
    SQL.Strings = (
      'select * from emitente')
    Params = <>
    Left = 168
    Top = 497
    object sql_emitentecodigo: TIntegerField
      FieldName = 'codigo'
    end
    object sql_emitentenome: TStringField
      FieldName = 'nome'
      Size = 70
    end
    object sql_emitentefantasia: TStringField
      FieldName = 'fantasia'
      Size = 50
    end
    object sql_emitentecnpj: TStringField
      FieldName = 'cnpj'
    end
    object sql_emitentetelefones: TStringField
      FieldName = 'telefones'
      Size = 40
    end
    object sql_emitenteie: TStringField
      FieldName = 'ie'
    end
    object sql_emitenteemail: TStringField
      FieldName = 'email'
      Size = 100
    end
    object sql_emitentesite: TStringField
      FieldName = 'site'
      Size = 100
    end
    object sql_emitentecontato: TStringField
      FieldName = 'contato'
      Size = 30
    end
    object sql_emitenteendereco: TStringField
      FieldName = 'endereco'
      Size = 60
    end
    object sql_emitentenro: TStringField
      FieldName = 'nro'
      Size = 10
    end
    object sql_emitentecompl: TStringField
      FieldName = 'compl'
    end
    object sql_emitentebairro: TStringField
      FieldName = 'bairro'
      Size = 30
    end
    object sql_emitentecmun: TIntegerField
      FieldName = 'cmun'
    end
    object sql_emitentecest: TIntegerField
      FieldName = 'cest'
    end
    object sql_emitentecep: TStringField
      FieldName = 'cep'
      Size = 9
    end
    object sql_emitenteim: TStringField
      FieldName = 'im'
    end
    object sql_emitenteobs: TMemoField
      FieldName = 'obs'
      BlobType = ftMemo
    end
    object sql_emitentecregtrib: TIntegerField
      FieldName = 'cregtrib'
    end
    object sql_emitenteid: TIntegerField
      FieldName = 'id'
      Required = True
    end
  end
  object sql_nfe: TZQuery
    Connection = zconexao
    SQL.Strings = (
      'select * from nfe')
    Params = <>
    Left = 16
    Top = 569
    object sql_nfecodigo: TIntegerField
      FieldName = 'codigo'
    end
    object sql_nfecemi: TIntegerField
      FieldName = 'cemi'
    end
    object sql_nfecdest: TIntegerField
      FieldName = 'cdest'
    end
    object sql_nfetipodest: TStringField
      FieldName = 'tipodest'
      Size = 1
    end
    object sql_nfectransp: TIntegerField
      FieldName = 'ctransp'
    end
    object sql_nfepdesc: TFloatField
      FieldName = 'pdesc'
    end
    object sql_nfevdesc: TFloatField
      FieldName = 'vdesc'
    end
    object sql_nfetotal: TFloatField
      FieldName = 'total'
    end
    object sql_nfecnatop: TIntegerField
      FieldName = 'cnatop'
    end
    object sql_nfebscalcsubtrib: TFloatField
      FieldName = 'bscalcsubtrib'
    end
    object sql_nfevlricmssubtrib: TFloatField
      FieldName = 'vlricmssubtrib'
    end
    object sql_nfeplacavei: TStringField
      FieldName = 'placavei'
      Size = 8
    end
    object sql_nfeufvei: TStringField
      FieldName = 'ufvei'
      Size = 2
    end
    object sql_nfedatasai: TDateField
      FieldName = 'datasai'
    end
    object sql_nfehorasai: TTimeField
      FieldName = 'horasai'
    end
    object sql_nfequantidade: TStringField
      FieldName = 'quantidade'
      Size = 30
    end
    object sql_nfeespecie: TStringField
      FieldName = 'especie'
      Size = 30
    end
    object sql_nfemarca: TStringField
      FieldName = 'marca'
      Size = 30
    end
    object sql_nfenumero: TStringField
      FieldName = 'numero'
      Size = 30
    end
    object sql_nfepesob: TStringField
      FieldName = 'pesob'
    end
    object sql_nfepesol: TStringField
      FieldName = 'pesol'
    end
    object sql_nfeadicnf: TMemoField
      FieldName = 'adicnf'
      BlobType = ftMemo
    end
    object sql_nfeadicpostofiscal: TMemoField
      FieldName = 'adicpostofiscal'
      BlobType = ftMemo
    end
    object sql_nfectiponf: TIntegerField
      FieldName = 'ctiponf'
    end
    object sql_nfecfreteporconta: TIntegerField
      FieldName = 'cfreteporconta'
    end
    object sql_nfennf: TIntegerField
      FieldName = 'nnf'
    end
    object sql_nfeliquido: TFloatField
      FieldName = 'liquido'
    end
    object sql_nfetvlrfrete: TFloatField
      FieldName = 'tvlrfrete'
    end
    object sql_nfetvlrseg: TFloatField
      FieldName = 'tvlrseg'
    end
    object sql_nfetvlrout: TFloatField
      FieldName = 'tvlrout'
    end
    object sql_nfetvlrvii: TFloatField
      FieldName = 'tvlrvii'
    end
    object sql_nfetvlripi: TFloatField
      FieldName = 'tvlripi'
    end
    object sql_nfetvlrpis: TFloatField
      FieldName = 'tvlrpis'
    end
    object sql_nfetvlrcofins: TFloatField
      FieldName = 'tvlrcofins'
    end
    object sql_nfedataemi: TDateField
      FieldName = 'dataemi'
    end
    object sql_nfeiesubstrib: TStringField
      FieldName = 'iesubstrib'
    end
    object sql_nfemodelonf: TStringField
      FieldName = 'modelonf'
    end
    object sql_nfeserienf: TStringField
      FieldName = 'serienf'
    end
    object sql_nfecodigonf: TStringField
      FieldName = 'codigonf'
    end
    object sql_nfetiponf: TStringField
      FieldName = 'tiponf'
    end
    object sql_nfefinalidadenf: TStringField
      FieldName = 'finalidadenf'
    end
    object sql_nfeformapgtonf: TStringField
      FieldName = 'formapgtonf'
    end
    object sql_nfecuftransp: TIntegerField
      FieldName = 'cuftransp'
    end
    object sql_nfevlrserv: TFloatField
      FieldName = 'vlrserv'
    end
    object sql_nfevlrbsserv: TFloatField
      FieldName = 'vlrbsserv'
    end
    object sql_nfealiqserv: TFloatField
      FieldName = 'aliqserv'
    end
    object sql_nfevlriss: TFloatField
      FieldName = 'vlriss'
    end
    object sql_nfebcipi: TFloatField
      FieldName = 'bcipi'
    end
    object sql_nfealiqipi: TFloatField
      FieldName = 'aliqipi'
    end
    object sql_nfevipi: TFloatField
      FieldName = 'vipi'
    end
    object sql_nfecpis: TIntegerField
      FieldName = 'cpis'
    end
    object sql_nfenpis: TStringField
      FieldName = 'npis'
      Size = 40
    end
    object sql_nfebcpis: TFloatField
      FieldName = 'bcpis'
    end
    object sql_nfevpis: TFloatField
      FieldName = 'vpis'
    end
    object sql_nfealiqpis: TFloatField
      FieldName = 'aliqpis'
    end
    object sql_nfeccofins: TIntegerField
      FieldName = 'ccofins'
    end
    object sql_nfencofins: TStringField
      FieldName = 'ncofins'
      Size = 40
    end
    object sql_nfebscofins: TFloatField
      FieldName = 'bscofins'
    end
    object sql_nfealiqcofins: TFloatField
      FieldName = 'aliqcofins'
    end
    object sql_nfevcofins: TFloatField
      FieldName = 'vcofins'
    end
    object sql_nfetotbcicms: TFloatField
      FieldName = 'totbcicms'
    end
    object sql_nfetoticms: TFloatField
      FieldName = 'toticms'
    end
    object sql_nfetotp: TFloatField
      FieldName = 'totp'
    end
    object sql_nfevlrdesc: TFloatField
      FieldName = 'vlrdesc'
    end
    object sql_nfetotipi: TFloatField
      FieldName = 'totipi'
    end
    object sql_nfevlrpis: TFloatField
      FieldName = 'vlrpis'
    end
    object sql_nfevlrcofins: TFloatField
      FieldName = 'vlrcofins'
    end
    object sql_nfevlrtotal: TFloatField
      FieldName = 'vlrtotal'
    end
    object sql_nfeccfoptrans: TIntegerField
      FieldName = 'ccfoptrans'
    end
    object sql_nfecidadecodtrans: TIntegerField
      FieldName = 'cidadecodtrans'
    end
    object sql_nfeufplacavei: TStringField
      FieldName = 'ufplacavei'
      Size = 2
    end
    object sql_nferntc: TStringField
      FieldName = 'rntc'
      Size = 40
    end
    object sql_nfearquivonfe: TStringField
      FieldName = 'arquivonfe'
      Size = 100
    end
    object sql_nfecnf: TIntegerField
      FieldName = 'cnf'
    end
    object sql_nfecontador: TIntegerField
      FieldName = 'contador'
    end
    object sql_nfeicorrecao: TIntegerField
      FieldName = 'icorrecao'
    end
    object sql_nfeehcancelada: TStringField
      FieldName = 'ehcancelada'
      Size = 1
    end
    object sql_nfeehcorrigida: TStringField
      FieldName = 'ehcorrigida'
      Size = 1
    end
    object sql_nfeehsucesso: TStringField
      FieldName = 'ehsucesso'
      Size = 1
    end
    object sql_nfeid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object sql_nfendest: TStringField
      FieldName = 'ndest'
      Size = 60
    end
    object sql_nfechave: TStringField
      FieldName = 'chave'
      Size = 200
    end
    object sql_nfecnpjcpfemi: TStringField
      FieldName = 'cnpjcpfemi'
      Size = 22
    end
    object sql_nfecnpjcpfdest: TStringField
      FieldName = 'cnpjcpfdest'
      Size = 22
    end
    object sql_nfecnpjcpfeminfe: TStringField
      FieldName = 'cnpjcpfeminfe'
      Size = 22
    end
  end
  object sql_duplicata: TZQuery
    Connection = zconexao
    SQL.Strings = (
      'select * from duplicata')
    Params = <>
    Left = 88
    Top = 561
    object sql_duplicatacodigo: TIntegerField
      FieldName = 'codigo'
    end
    object sql_duplicatandup: TStringField
      FieldName = 'ndup'
      Size = 60
    end
    object sql_duplicatadtv: TDateField
      FieldName = 'dtv'
    end
    object sql_duplicatavdup: TFloatField
      FieldName = 'vdup'
    end
    object sql_duplicatacnf: TIntegerField
      FieldName = 'cnf'
    end
    object sql_duplicataprazo: TIntegerField
      FieldName = 'prazo'
    end
    object sql_duplicatadte: TDateField
      FieldName = 'dte'
    end
    object sql_duplicataid: TIntegerField
      FieldName = 'id'
      Required = True
    end
  end
  object sql_nfs: TZQuery
    Connection = zconexao
    SQL.Strings = (
      'select * from nfs'
      '')
    Params = <>
    Left = 168
    Top = 561
    object sql_nfscodigo: TIntegerField
      FieldName = 'codigo'
    end
    object sql_nfscdesc: TIntegerField
      FieldName = 'cdesc'
    end
    object sql_nfsndesc: TStringField
      FieldName = 'ndesc'
      Size = 120
    end
    object sql_nfsqtde: TFloatField
      FieldName = 'qtde'
    end
    object sql_nfsprve: TFloatField
      FieldName = 'prve'
    end
    object sql_nfssubtotal: TFloatField
      FieldName = 'subtotal'
    end
    object sql_nfscnf: TIntegerField
      FieldName = 'cnf'
    end
    object sql_nfscod1servnf: TIntegerField
      FieldName = 'cod1servnf'
    end
    object sql_nfscod2servnf: TIntegerField
      FieldName = 'cod2servnf'
    end
    object sql_nfscod3servnf: TIntegerField
      FieldName = 'cod3servnf'
    end
    object sql_nfscod4servnf: TIntegerField
      FieldName = 'cod4servnf'
    end
    object sql_nfscod5servnf: TIntegerField
      FieldName = 'cod5servnf'
    end
    object sql_nfscod6servnf: TIntegerField
      FieldName = 'cod6servnf'
    end
    object sql_nfscod7servnf: TIntegerField
      FieldName = 'cod7servnf'
    end
    object sql_nfscod8servnf: TIntegerField
      FieldName = 'cod8servnf'
    end
    object sql_nfscod9servnf: TIntegerField
      FieldName = 'cod9servnf'
    end
    object sql_nfscod10servnf: TIntegerField
      FieldName = 'cod10servnf'
    end
    object sql_nfscod11servnf: TIntegerField
      FieldName = 'cod11servnf'
    end
    object sql_nfscod12servnf: TIntegerField
      FieldName = 'cod12servnf'
    end
    object sql_nfscod13servnf: TIntegerField
      FieldName = 'cod13servnf'
    end
    object sql_nfscod14servnf: TIntegerField
      FieldName = 'cod14servnf'
    end
    object sql_nfscnfe: TIntegerField
      FieldName = 'cnfe'
    end
    object sql_nfsid: TIntegerField
      FieldName = 'id'
      Required = True
    end
  end
  object sql_modbcst: TZQuery
    Connection = zconexao
    SQL.Strings = (
      'select * from modbcst'
      '')
    Params = <>
    Left = 248
    Top = 201
    object sql_modbcstcodigo: TIntegerField
      FieldName = 'codigo'
    end
    object sql_modbcstdescricao: TStringField
      FieldName = 'descricao'
      Size = 40
    end
    object sql_modbcstsigla: TStringField
      FieldName = 'sigla'
    end
    object sql_modbcstid: TIntegerField
      FieldName = 'id'
      Required = True
    end
  end
  object sql_nfep: TZQuery
    Connection = zconexao
    SQL.Strings = (
      'select * from nfep')
    Params = <>
    Left = 248
    Top = 257
    object sql_nfepcodigo: TIntegerField
      FieldName = 'codigo'
    end
    object sql_nfepcpro: TIntegerField
      FieldName = 'cpro'
    end
    object sql_nfepnpro: TStringField
      FieldName = 'npro'
      Size = 70
    end
    object sql_nfepqtde: TFloatField
      FieldName = 'qtde'
    end
    object sql_nfepprve: TFloatField
      FieldName = 'prve'
    end
    object sql_nfepsubtotal: TFloatField
      FieldName = 'subtotal'
    end
    object sql_nfepcnf: TIntegerField
      FieldName = 'cnf'
    end
    object sql_nfepcod1prodnf: TIntegerField
      FieldName = 'cod1prodnf'
    end
    object sql_nfepcod2prodnf: TIntegerField
      FieldName = 'cod2prodnf'
    end
    object sql_nfepcod3prodnf: TIntegerField
      FieldName = 'cod3prodnf'
    end
    object sql_nfepcod4prodnf: TIntegerField
      FieldName = 'cod4prodnf'
    end
    object sql_nfepcod5prodnf: TIntegerField
      FieldName = 'cod5prodnf'
    end
    object sql_nfepcod6prodnf: TIntegerField
      FieldName = 'cod6prodnf'
    end
    object sql_nfepcod7prodnf: TIntegerField
      FieldName = 'cod7prodnf'
    end
    object sql_nfepcod8prodnf: TIntegerField
      FieldName = 'cod8prodnf'
    end
    object sql_nfepcod9prodnf: TIntegerField
      FieldName = 'cod9prodnf'
    end
    object sql_nfepcod10prodnf: TIntegerField
      FieldName = 'cod10prodnf'
    end
    object sql_nfepcod12prodnf: TIntegerField
      FieldName = 'cod12prodnf'
    end
    object sql_nfepcod13prodnf: TIntegerField
      FieldName = 'cod13prodnf'
    end
    object sql_nfepcod14prodnf: TIntegerField
      FieldName = 'cod14prodnf'
    end
    object sql_nfepcnfe: TIntegerField
      FieldName = 'cnfe'
    end
    object sql_nfeppdesc: TFloatField
      FieldName = 'pdesc'
    end
    object sql_nfepvdesc: TFloatField
      FieldName = 'vdesc'
    end
    object sql_nfepbsicms: TFloatField
      FieldName = 'bsicms'
    end
    object sql_nfepaliqicms: TFloatField
      FieldName = 'aliqicms'
    end
    object sql_nfepvicms: TFloatField
      FieldName = 'vicms'
    end
    object sql_nfepbsipi: TFloatField
      FieldName = 'bsipi'
    end
    object sql_nfepaliqipi: TFloatField
      FieldName = 'aliqipi'
    end
    object sql_nfepvipi: TFloatField
      FieldName = 'vipi'
    end
    object sql_nfepaliqredbcicms: TFloatField
      FieldName = 'aliqredbcicms'
    end
    object sql_nfepcompoetnf: TStringField
      FieldName = 'compoetnf'
      Size = 1
    end
    object sql_nfepbscalcst: TFloatField
      FieldName = 'bscalcst'
    end
    object sql_nfepicmscalcst: TFloatField
      FieldName = 'icmscalcst'
    end
    object sql_nfepcaux: TStringField
      FieldName = 'caux'
    end
    object sql_nfepcbar: TStringField
      FieldName = 'cbar'
      Size = 13
    end
    object sql_nfepid: TIntegerField
      FieldName = 'id'
      Required = True
    end
  end
  object sql_icms: TZQuery
    Connection = zconexao
    SQL.Strings = (
      'select * from icms'
      '')
    Params = <>
    Left = 248
    Top = 313
    object sql_icmscodigo: TIntegerField
      FieldName = 'codigo'
    end
    object sql_icmsdescricao: TStringField
      FieldName = 'descricao'
      Size = 40
    end
    object sql_icmssigla: TStringField
      FieldName = 'sigla'
    end
    object sql_icmscest: TIntegerField
      FieldName = 'cest'
    end
    object sql_icmsaliquota: TFloatField
      FieldName = 'aliquota'
    end
    object sql_icmsreducao: TFloatField
      FieldName = 'reducao'
    end
    object sql_icmscsitb: TIntegerField
      FieldName = 'csitb'
    end
    object sql_icmsccfop: TIntegerField
      FieldName = 'ccfop'
    end
    object sql_icmsccfopf: TIntegerField
      FieldName = 'ccfopf'
    end
    object sql_icmsobs: TMemoField
      FieldName = 'obs'
      BlobType = ftMemo
    end
    object sql_icmsccsosn: TIntegerField
      FieldName = 'ccsosn'
    end
    object sql_icmsid: TIntegerField
      FieldName = 'id'
      Required = True
    end
  end
  object sql_cfop: TZQuery
    Connection = zconexao
    SQL.Strings = (
      'select * from cfop')
    Params = <>
    Left = 248
    Top = 377
    object sql_cfopcodigo: TIntegerField
      FieldName = 'codigo'
    end
    object sql_cfopdescricao: TStringField
      FieldName = 'descricao'
      Size = 40
    end
    object sql_cfopsigla: TStringField
      FieldName = 'sigla'
    end
    object sql_cfopctipo: TIntegerField
      FieldName = 'ctipo'
    end
    object sql_cfopccupom: TIntegerField
      FieldName = 'ccupom'
    end
    object sql_cfopctipoest: TIntegerField
      FieldName = 'ctipoest'
    end
    object sql_cfopcsitb: TIntegerField
      FieldName = 'csitb'
    end
    object sql_cfopcicms: TIntegerField
      FieldName = 'cicms'
    end
    object sql_cfopobs: TMemoField
      FieldName = 'obs'
      BlobType = ftMemo
    end
    object sql_cfopcpadrao: TIntegerField
      FieldName = 'cpadrao'
    end
    object sql_cfopccsosn: TIntegerField
      FieldName = 'ccsosn'
    end
    object sql_cfopaplicaliqfat: TStringField
      FieldName = 'aplicaliqfat'
      Size = 1
    end
    object sql_cfopcipi: TIntegerField
      FieldName = 'cipi'
    end
    object sql_cfopcpis: TIntegerField
      FieldName = 'cpis'
    end
    object sql_cfopccofins: TIntegerField
      FieldName = 'ccofins'
    end
    object sql_cfopid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object sql_cfopcalciva: TStringField
      FieldName = 'calciva'
      Size = 1
    end
  end
  object sql_fornecedores: TZQuery
    Connection = zconexao
    SQL.Strings = (
      'select * from fornecedores')
    Params = <>
    Left = 248
    Top = 497
    object sql_fornecedorescodigo: TIntegerField
      FieldName = 'codigo'
    end
    object sql_fornecedoresnome: TStringField
      FieldName = 'nome'
      Size = 70
    end
    object sql_fornecedoresfantasia: TStringField
      FieldName = 'fantasia'
      Size = 50
    end
    object sql_fornecedorescnpj: TStringField
      FieldName = 'cnpj'
    end
    object sql_fornecedorestelefones: TStringField
      FieldName = 'telefones'
      Size = 40
    end
    object sql_fornecedoresie: TStringField
      FieldName = 'ie'
    end
    object sql_fornecedoresemail: TStringField
      FieldName = 'email'
      Size = 100
    end
    object sql_fornecedoressite: TStringField
      FieldName = 'site'
      Size = 100
    end
    object sql_fornecedorescontato: TStringField
      FieldName = 'contato'
      Size = 30
    end
    object sql_fornecedoresendereco: TStringField
      FieldName = 'endereco'
      Size = 60
    end
    object sql_fornecedoresnro: TStringField
      FieldName = 'nro'
      Size = 10
    end
    object sql_fornecedorescompl: TStringField
      FieldName = 'compl'
    end
    object sql_fornecedoresbairro: TStringField
      FieldName = 'bairro'
      Size = 30
    end
    object sql_fornecedorescmun: TIntegerField
      FieldName = 'cmun'
    end
    object sql_fornecedorescest: TIntegerField
      FieldName = 'cest'
    end
    object sql_fornecedorescep: TStringField
      FieldName = 'cep'
      Size = 9
    end
    object sql_fornecedoresim: TStringField
      FieldName = 'im'
    end
    object sql_fornecedoresobs: TMemoField
      FieldName = 'obs'
      BlobType = ftMemo
    end
    object sql_fornecedoresctransp: TIntegerField
      FieldName = 'ctransp'
    end
    object sql_fornecedoresid: TIntegerField
      FieldName = 'id'
      Required = True
    end
  end
  object sql_nfp: TZQuery
    Connection = zconexao
    SQL.Strings = (
      'select * from nfp')
    Params = <>
    Left = 248
    Top = 561
    object sql_nfpcpro: TIntegerField
      FieldName = 'cpro'
    end
    object sql_nfpnpro: TStringField
      FieldName = 'npro'
      Size = 120
    end
    object sql_nfpqtde: TFloatField
      FieldName = 'qtde'
    end
    object sql_nfpprve: TFloatField
      FieldName = 'prve'
    end
    object sql_nfpsubtotal: TFloatField
      FieldName = 'subtotal'
    end
    object sql_nfpcnf: TIntegerField
      FieldName = 'cnf'
    end
    object sql_nfpcod1prodnf: TIntegerField
      FieldName = 'cod1prodnf'
    end
    object sql_nfpcod2prodnf: TIntegerField
      FieldName = 'cod2prodnf'
    end
    object sql_nfpcod3prodnf: TIntegerField
      FieldName = 'cod3prodnf'
    end
    object sql_nfpcod4prodnf: TIntegerField
      FieldName = 'cod4prodnf'
    end
    object sql_nfpcod5prodnf: TIntegerField
      FieldName = 'cod5prodnf'
    end
    object sql_nfpcod6prodnf: TIntegerField
      FieldName = 'cod6prodnf'
    end
    object sql_nfpcod7prodnf: TIntegerField
      FieldName = 'cod7prodnf'
    end
    object sql_nfpcod8prodnf: TIntegerField
      FieldName = 'cod8prodnf'
    end
    object sql_nfpcod9prodnf: TIntegerField
      FieldName = 'cod9prodnf'
    end
    object sql_nfpcod10prodnf: TIntegerField
      FieldName = 'cod10prodnf'
    end
    object sql_nfpcod11prodnf: TIntegerField
      FieldName = 'cod11prodnf'
    end
    object sql_nfpcod12prodnf: TIntegerField
      FieldName = 'cod12prodnf'
    end
    object sql_nfpcod13prodnf: TIntegerField
      FieldName = 'cod13prodnf'
    end
    object sql_nfpcod14prodnf: TIntegerField
      FieldName = 'cod14prodnf'
    end
    object sql_nfpcompoetnf: TStringField
      FieldName = 'compoetnf'
      Size = 1
    end
    object sql_nfpbscalcst: TFloatField
      FieldName = 'bscalcst'
    end
    object sql_nfpicmscalcst: TFloatField
      FieldName = 'icmscalcst'
    end
    object sql_nfpcnfe: TIntegerField
      FieldName = 'cnfe'
    end
    object sql_nfpcaux: TStringField
      FieldName = 'caux'
    end
    object sql_nfpcbar: TStringField
      FieldName = 'cbar'
      Size = 13
    end
    object sql_nfpsimplesncm: TStringField
      FieldName = 'simplesncm'
      Size = 60
    end
    object sql_nfpid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object sql_nfpiva: TFloatField
      FieldName = 'iva'
    end
    object sql_nfpbaseicmsstant: TFloatField
      FieldName = 'baseicmsstant'
    end
    object sql_nfpvlricmsstant: TFloatField
      FieldName = 'vlricmsstant'
    end
    object sql_nfppicmsstant: TFloatField
      FieldName = 'picmsstant'
    end
    object sql_nfpitem: TIntegerField
      FieldName = 'item'
    end
    object sql_nfpvlricms: TFloatField
      FieldName = 'vlricms'
    end
    object sql_nfpvlripi: TFloatField
      FieldName = 'vlripi'
    end
    object sql_nfpvlrsubsicms: TFloatField
      FieldName = 'vlrsubsicms'
    end
    object sql_nfpbcsubsicms: TFloatField
      FieldName = 'bcsubsicms'
    end
    object sql_nfpbcicms: TFloatField
      FieldName = 'bcicms'
    end
    object sql_nfpcodigo: TIntegerField
      FieldName = 'codigo'
    end
    object sql_nfpcest: TStringField
      FieldName = 'cest'
      Size = 40
    end
  end
  object sql_sita: TZQuery
    Connection = zconexao
    SQL.Strings = (
      'select * from sita')
    Params = <>
    Left = 328
    Top = 201
    object sql_sitacodigo: TIntegerField
      FieldName = 'codigo'
    end
    object sql_sitadescricao: TStringField
      FieldName = 'descricao'
      Size = 40
    end
    object sql_sitasigla: TStringField
      FieldName = 'sigla'
    end
    object sql_sitacpadrao: TIntegerField
      FieldName = 'cpadrao'
    end
    object sql_sitaid: TIntegerField
      FieldName = 'id'
      Required = True
    end
  end
  object sql_ipi: TZQuery
    Connection = zconexao
    SQL.Strings = (
      'select * from ipi')
    Params = <>
    Left = 328
    Top = 257
    object sql_ipicodigo: TIntegerField
      FieldName = 'codigo'
    end
    object sql_ipidescricao: TStringField
      FieldName = 'descricao'
      Size = 40
    end
    object sql_ipisigla: TStringField
      FieldName = 'sigla'
    end
    object sql_ipialiquota: TFloatField
      FieldName = 'aliquota'
    end
    object sql_ipireducao: TFloatField
      FieldName = 'reducao'
    end
    object sql_ipiid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object sql_ipicpadrao: TIntegerField
      FieldName = 'cpadrao'
    end
  end
  object sql_impostoI: TZQuery
    Connection = zconexao
    SQL.Strings = (
      'select * from impostoI')
    Params = <>
    Left = 328
    Top = 313
    object sql_impostoIcodigo: TIntegerField
      FieldName = 'codigo'
    end
    object sql_impostoIdescricao: TStringField
      FieldName = 'descricao'
      Size = 40
    end
    object sql_impostoIsigla: TStringField
      FieldName = 'sigla'
    end
    object sql_impostoIaliquota: TFloatField
      FieldName = 'aliquota'
    end
    object sql_impostoIreducao: TFloatField
      FieldName = 'reducao'
    end
    object sql_impostoIid: TIntegerField
      FieldName = 'id'
      Required = True
    end
  end
  object sql_natop: TZQuery
    Connection = zconexao
    SQL.Strings = (
      'select * from natop')
    Params = <>
    Left = 328
    Top = 377
    object sql_natopcodigo: TIntegerField
      FieldName = 'codigo'
    end
    object sql_natopdescricao: TStringField
      FieldName = 'descricao'
      Size = 40
    end
    object sql_natopccfop: TIntegerField
      FieldName = 'ccfop'
    end
    object sql_natopccfopf: TIntegerField
      FieldName = 'ccfopf'
    end
    object sql_natopcicms: TIntegerField
      FieldName = 'cicms'
    end
    object sql_natopid: TIntegerField
      FieldName = 'id'
      Required = True
    end
  end
  object sql_tgicms: TZQuery
    Connection = zconexao
    SQL.Strings = (
      'select * from tgicms')
    Params = <>
    Left = 328
    Top = 433
    object sql_tgicmscodigo: TIntegerField
      FieldName = 'codigo'
    end
    object sql_tgicmsdescricao: TStringField
      FieldName = 'descricao'
      Size = 40
    end
    object sql_tgicmscsitb: TIntegerField
      FieldName = 'csitb'
    end
    object sql_tgicmstabref: TStringField
      FieldName = 'tabref'
      Size = 30
    end
    object sql_tgicmscamporef: TStringField
      FieldName = 'camporef'
      Size = 30
    end
    object sql_tgicmsid: TIntegerField
      FieldName = 'id'
      Required = True
    end
  end
  object sql_transportador: TZQuery
    Connection = zconexao
    SQL.Strings = (
      'select * from transportador')
    Params = <>
    Left = 344
    Top = 497
    object sql_transportadorcodigo: TIntegerField
      FieldName = 'codigo'
    end
    object sql_transportadornome: TStringField
      FieldName = 'nome'
      Size = 70
    end
    object sql_transportadorfantasia: TStringField
      FieldName = 'fantasia'
      Size = 50
    end
    object sql_transportadorcnpj: TStringField
      FieldName = 'cnpj'
    end
    object sql_transportadortelefones: TStringField
      FieldName = 'telefones'
      Size = 40
    end
    object sql_transportadorie: TStringField
      FieldName = 'ie'
    end
    object sql_transportadoremail: TStringField
      FieldName = 'email'
      Size = 100
    end
    object sql_transportadorsite: TStringField
      FieldName = 'site'
      Size = 100
    end
    object sql_transportadorcontato: TStringField
      FieldName = 'contato'
      Size = 30
    end
    object sql_transportadorendereco: TStringField
      FieldName = 'endereco'
      Size = 60
    end
    object sql_transportadornro: TStringField
      FieldName = 'nro'
      Size = 10
    end
    object sql_transportadorcompl: TStringField
      FieldName = 'compl'
    end
    object sql_transportadorbairro: TStringField
      FieldName = 'bairro'
      Size = 30
    end
    object sql_transportadorcmun: TIntegerField
      FieldName = 'cmun'
    end
    object sql_transportadorcest: TIntegerField
      FieldName = 'cest'
    end
    object sql_transportadorcep: TStringField
      FieldName = 'cep'
      Size = 9
    end
    object sql_transportadorim: TStringField
      FieldName = 'im'
    end
    object sql_transportadorid: TIntegerField
      FieldName = 'id'
      Required = True
    end
  end
  object sql_nf: TZQuery
    Connection = zconexao
    SQL.Strings = (
      'select * from nf order by codigo desc')
    Params = <>
    Left = 344
    Top = 561
    object sql_nfcodigo: TIntegerField
      FieldName = 'codigo'
    end
    object sql_nfcemi: TIntegerField
      FieldName = 'cemi'
    end
    object sql_nfcdest: TIntegerField
      FieldName = 'cdest'
    end
    object sql_nftipodest: TStringField
      FieldName = 'tipodest'
      Size = 1
    end
    object sql_nfdatacad: TDateField
      FieldName = 'datacad'
    end
    object sql_nfctipoemi: TIntegerField
      FieldName = 'ctipoemi'
    end
    object sql_nfncupom: TStringField
      FieldName = 'ncupom'
      Size = 15
    end
    object sql_nfvlrcredicms: TFloatField
      FieldName = 'vlrcredicms'
    end
    object sql_nfaliqcredicms: TFloatField
      FieldName = 'aliqcredicms'
    end
    object sql_nfvlrreticms: TFloatField
      FieldName = 'vlrreticms'
    end
    object sql_nfaliqreticms: TFloatField
      FieldName = 'aliqreticms'
    end
    object sql_nfartricms: TStringField
      FieldName = 'artricms'
    end
    object sql_nfnnfrefdevol: TStringField
      FieldName = 'nnfrefdevol'
    end
    object sql_nfdatanfrefdevol: TDateField
      FieldName = 'datanfrefdevol'
    end
    object sql_nfdatacupom: TDateField
      FieldName = 'datacupom'
    end
    object sql_nfaliqapicms: TFloatField
      FieldName = 'aliqapicms'
    end
    object sql_nfvlrcredipi: TFloatField
      FieldName = 'vlrcredipi'
    end
    object sql_nfaliqcredipi: TFloatField
      FieldName = 'aliqcredipi'
    end
    object sql_nfvlrretipi: TFloatField
      FieldName = 'vlrretipi'
    end
    object sql_nfaliqretipi: TFloatField
      FieldName = 'aliqretipi'
    end
    object sql_nfartripi: TStringField
      FieldName = 'artripi'
    end
    object sql_nfaliqapipi: TFloatField
      FieldName = 'aliqapipi'
    end
    object sql_nfcnatop: TIntegerField
      FieldName = 'cnatop'
    end
    object sql_nfhorasai: TStringField
      FieldName = 'horasai'
      Size = 5
    end
    object sql_nfdatasai: TDateTimeField
      FieldName = 'datasai'
    end
    object sql_nfnnf: TIntegerField
      FieldName = 'nnf'
    end
    object sql_nfpdesc: TFloatField
      FieldName = 'pdesc'
    end
    object sql_nfvaldesc: TFloatField
      FieldName = 'valdesc'
    end
    object sql_nfliquido: TFloatField
      FieldName = 'liquido'
    end
    object sql_nfnparc: TIntegerField
      FieldName = 'nparc'
    end
    object sql_nfdatainic: TDateTimeField
      FieldName = 'datainic'
    end
    object sql_nfperiodo: TIntegerField
      FieldName = 'periodo'
    end
    object sql_nfdin: TFloatField
      FieldName = 'din'
    end
    object sql_nfplacavei: TStringField
      FieldName = 'placavei'
      Size = 9
    end
    object sql_nfufvei: TStringField
      FieldName = 'ufvei'
      Size = 2
    end
    object sql_nfquantidade: TStringField
      FieldName = 'quantidade'
      Size = 30
    end
    object sql_nfespecie: TStringField
      FieldName = 'especie'
      Size = 30
    end
    object sql_nfmarca: TStringField
      FieldName = 'marca'
      Size = 30
    end
    object sql_nfnumero: TStringField
      FieldName = 'numero'
      Size = 30
    end
    object sql_nfpesob: TStringField
      FieldName = 'pesob'
      Size = 30
    end
    object sql_nfpesol: TStringField
      FieldName = 'pesol'
      Size = 30
    end
    object sql_nfiesubtrib: TFloatField
      FieldName = 'iesubtrib'
    end
    object sql_nfbscalcsubstrib: TFloatField
      FieldName = 'bscalcsubstrib'
    end
    object sql_nfvlricmssubtrib: TFloatField
      FieldName = 'vlricmssubtrib'
    end
    object sql_nftvlrfrete: TFloatField
      FieldName = 'tvlrfrete'
    end
    object sql_nftvlrout: TFloatField
      FieldName = 'tvlrout'
    end
    object sql_nftvlrseg: TFloatField
      FieldName = 'tvlrseg'
    end
    object sql_nfbscalcsubtrib: TFloatField
      FieldName = 'bscalcsubtrib'
    end
    object sql_nfctiponf: TIntegerField
      FieldName = 'ctiponf'
    end
    object sql_nfcfreteporconta: TIntegerField
      FieldName = 'cfreteporconta'
    end
    object sql_nfctransp: TIntegerField
      FieldName = 'ctransp'
    end
    object sql_nfid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object sql_nfnped: TStringField
      FieldName = 'nped'
      Size = 15
    end
    object sql_nfaliqapiss: TFloatField
      FieldName = 'aliqapiss'
    end
    object sql_nfvlrcrediss: TFloatField
      FieldName = 'vlrcrediss'
    end
  end
  object sql_csosn: TZQuery
    Connection = zconexao
    SQL.Strings = (
      'select * from csosn')
    Params = <>
    Left = 408
    Top = 201
    object sql_csosncodigo: TIntegerField
      FieldName = 'codigo'
    end
    object sql_csosndescricao: TStringField
      FieldName = 'descricao'
      Size = 200
    end
    object sql_csosnsigla: TStringField
      FieldName = 'sigla'
    end
    object sql_csosnid: TIntegerField
      FieldName = 'id'
      Required = True
    end
  end
  object sql_cupom: TZQuery
    Connection = zconexao
    SQL.Strings = (
      'select * from cupom')
    Params = <>
    Left = 408
    Top = 257
    object sql_cupomcodigo: TIntegerField
      FieldName = 'codigo'
    end
    object sql_cupomdte: TDateField
      FieldName = 'dte'
    end
    object sql_cupomcoo: TStringField
      FieldName = 'coo'
    end
    object sql_cupomcaixa: TStringField
      FieldName = 'caixa'
      Size = 3
    end
    object sql_cupomserieecf: TStringField
      FieldName = 'serieecf'
      Size = 50
    end
    object sql_cupomcnf: TIntegerField
      FieldName = 'cnf'
    end
    object sql_cupommodelo: TStringField
      FieldName = 'modelo'
      Size = 30
    end
    object sql_cupomid: TIntegerField
      FieldName = 'id'
      Required = True
    end
  end
  object sql_tipopgto: TZQuery
    Connection = zconexao
    SQL.Strings = (
      'select * from tipopgto')
    Params = <>
    Left = 408
    Top = 313
    object sql_tipopgtocodigo: TIntegerField
      FieldName = 'codigo'
    end
    object sql_tipopgtodescricao: TStringField
      FieldName = 'descricao'
      Size = 40
    end
    object sql_tipopgtoehvd: TStringField
      FieldName = 'ehvd'
      Size = 1
    end
    object sql_tipopgtoid: TIntegerField
      FieldName = 'id'
      Required = True
    end
  end
  object sql_Estados: TZQuery
    Connection = zconexao
    SQL.Strings = (
      'select * from Estados')
    Params = <>
    Left = 408
    Top = 377
    object sql_Estadoscodigo: TIntegerField
      FieldName = 'codigo'
    end
    object sql_Estadosnome: TStringField
      FieldName = 'nome'
      Size = 70
    end
    object sql_Estadossigla: TStringField
      FieldName = 'sigla'
    end
    object sql_Estadoscodibge: TIntegerField
      FieldName = 'codibge'
    end
    object sql_Estadoscpais: TIntegerField
      FieldName = 'cpais'
    end
    object sql_Estadosid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object sql_Estadosconvst: TStringField
      FieldName = 'convst'
      Size = 1
    end
  end
  object sql_onusdofrete: TZQuery
    Connection = zconexao
    SQL.Strings = (
      'select * from onusdofrete')
    Params = <>
    Left = 424
    Top = 433
    object sql_onusdofretecodigo: TIntegerField
      FieldName = 'codigo'
    end
    object sql_onusdofretenome: TStringField
      FieldName = 'nome'
      Size = 70
    end
    object sql_onusdofretesigla: TStringField
      FieldName = 'sigla'
    end
    object sql_onusdofreteid: TIntegerField
      FieldName = 'id'
      Required = True
    end
  end
  object sql_tiponf: TZQuery
    Connection = zconexao
    SQL.Strings = (
      'select * from tiponf')
    Params = <>
    Left = 440
    Top = 489
    object sql_tiponfcodigo: TIntegerField
      FieldName = 'codigo'
    end
    object sql_tiponfnome: TStringField
      FieldName = 'nome'
      Size = 70
    end
    object sql_tiponfsigla: TStringField
      FieldName = 'sigla'
    end
    object sql_tiponfid: TIntegerField
      FieldName = 'id'
      Required = True
    end
  end
  object sql_sitb: TZQuery
    Connection = zconexao
    SQL.Strings = (
      'select * from sitb')
    Params = <>
    Left = 424
    Top = 553
    object sql_sitbcodigo: TIntegerField
      FieldName = 'codigo'
    end
    object sql_sitbdescricao: TStringField
      FieldName = 'descricao'
      Size = 200
    end
    object sql_sitbsigla: TStringField
      FieldName = 'sigla'
    end
    object sql_sitbid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object sql_sitbcregime: TIntegerField
      FieldName = 'cregime'
    end
    object sql_sitbnregime: TStringField
      FieldName = 'nregime'
      Size = 40
    end
  end
  object sql_cmobra: TZQuery
    Connection = zconexao
    SQL.Strings = (
      'select * from cmobra')
    Params = <>
    Left = 488
    Top = 201
    object sql_cmobracodigo: TIntegerField
      FieldName = 'codigo'
    end
    object sql_cmobradescricao: TStringField
      FieldName = 'descricao'
      Size = 80
    end
    object sql_cmobraprve: TFloatField
      FieldName = 'prve'
    end
    object sql_cmobracrcserv: TIntegerField
      FieldName = 'crcserv'
    end
    object sql_cmobractiposerv: TIntegerField
      FieldName = 'ctiposerv'
    end
    object sql_cmobracimpostoi: TIntegerField
      FieldName = 'cimpostoi'
    end
    object sql_cmobraid: TIntegerField
      FieldName = 'id'
      Required = True
    end
  end
  object dsp_impostoIII: TDataSetProvider
    DataSet = sql_impostoIII
    UpdateMode = upWhereKeyOnly
    Left = 235
    Top = 32
  end
  object dsp_tiposerv: TDataSetProvider
    DataSet = sql_tiposerv
    UpdateMode = upWhereKeyOnly
    Left = 324
    Top = 32
  end
  object dsp_regtrib: TDataSetProvider
    DataSet = sql_regtrib
    UpdateMode = upWhereKeyOnly
    Left = 411
    Top = 32
  end
  object dsp_indice: TDataSetProvider
    DataSet = sql_indice
    UpdateMode = upWhereKeyOnly
    Left = 496
    Top = 32
  end
  object dsp_fatura: TDataSetProvider
    DataSet = sql_fatura
    UpdateMode = upWhereKeyOnly
    Left = 576
    Top = 32
  end
  object dsp_cf: TDataSetProvider
    DataSet = sql_cf
    UpdateMode = upWhereKeyOnly
    Left = 656
    Top = 32
  end
  object dsp_pis: TDataSetProvider
    DataSet = sql_pis
    UpdateMode = upWhereKeyOnly
    Left = 728
    Top = 32
  end
  object dsp_Munic: TDataSetProvider
    DataSet = sql_Munic
    UpdateMode = upWhereKeyOnly
    Left = 816
    Top = 32
  end
  object dsp_modbc: TDataSetProvider
    DataSet = sql_Modbc
    UpdateMode = upWhereKeyOnly
    Left = 904
    Top = 32
  end
  object dsp_cofins: TDataSetProvider
    DataSet = sql_cofins
    UpdateMode = upWhereKeyOnly
    Left = 984
    Top = 32
  end
  object dsp_unidade: TDataSetProvider
    DataSet = sql_unidade
    UpdateMode = upWhereKeyOnly
    Left = 1072
    Top = 32
  end
  object dsp_clientes: TDataSetProvider
    DataSet = sql_clientes
    UpdateMode = upWhereKeyOnly
    Left = 1160
    Top = 32
  end
  object dsp_rcserv: TDataSetProvider
    DataSet = sql_rcserv
    UpdateMode = upWhereKeyOnly
    Left = 40
    Top = 120
  end
  object dsp_emitente: TDataSetProvider
    DataSet = sql_emitente
    UpdateMode = upWhereKeyOnly
    Left = 128
    Top = 118
  end
  object dsp_nfe: TDataSetProvider
    DataSet = sql_nfe
    UpdateMode = upWhereKeyOnly
    Left = 208
    Top = 112
  end
  object dsp_duplicata: TDataSetProvider
    DataSet = sql_duplicata
    UpdateMode = upWhereKeyOnly
    Left = 304
    Top = 112
  end
  object dsp_nfs: TDataSetProvider
    DataSet = sql_nfs
    UpdateMode = upWhereKeyOnly
    Left = 384
    Top = 112
  end
  object dsp_modbcst: TDataSetProvider
    DataSet = sql_modbcst
    UpdateMode = upWhereKeyOnly
    Left = 464
    Top = 112
  end
  object dsp_nfep: TDataSetProvider
    DataSet = sql_nfep
    UpdateMode = upWhereKeyOnly
    Left = 552
    Top = 120
  end
  object dsp_icms: TDataSetProvider
    DataSet = sql_icms
    UpdateMode = upWhereKeyOnly
    Left = 624
    Top = 112
  end
  object dsp_cfop: TDataSetProvider
    DataSet = sql_cfop
    UpdateMode = upWhereKeyOnly
    Left = 696
    Top = 112
  end
  object dsp_nfp: TDataSetProvider
    DataSet = sql_nfp
    UpdateMode = upWhereKeyOnly
    Left = 768
    Top = 112
  end
  object dsp_fornecedores: TDataSetProvider
    DataSet = sql_fornecedores
    UpdateMode = upWhereKeyOnly
    Left = 864
    Top = 120
  end
  object dsp_sita: TDataSetProvider
    DataSet = sql_sita
    UpdateMode = upWhereKeyOnly
    Left = 1048
    Top = 112
  end
  object dsp_ipi: TDataSetProvider
    DataSet = sql_ipi
    UpdateMode = upWhereKeyOnly
    Left = 1136
    Top = 112
  end
  object dsp_impostoI: TDataSetProvider
    DataSet = sql_impostoI
    UpdateMode = upWhereKeyOnly
    Left = 1224
    Top = 112
  end
  object dsp_natop: TDataSetProvider
    DataSet = sql_natop
    UpdateMode = upWhereKeyOnly
    Left = 648
    Top = 200
  end
  object dsp_tgicms: TDataSetProvider
    DataSet = sql_tgicms
    UpdateMode = upWhereKeyOnly
    Left = 736
    Top = 200
  end
  object dsp_transportador: TDataSetProvider
    DataSet = sql_transportador
    UpdateMode = upWhereKeyOnly
    Left = 832
    Top = 200
  end
  object dsp_nf: TDataSetProvider
    DataSet = sql_nf
    UpdateMode = upWhereKeyOnly
    Left = 920
    Top = 200
  end
  object dsp_csosn: TDataSetProvider
    DataSet = sql_csosn
    UpdateMode = upWhereKeyOnly
    Left = 1000
    Top = 192
  end
  object dsp_cupom: TDataSetProvider
    DataSet = sql_cupom
    UpdateMode = upWhereKeyOnly
    Left = 1088
    Top = 192
  end
  object dsp_tipopgto: TDataSetProvider
    DataSet = sql_tipopgto
    UpdateMode = upWhereKeyOnly
    Left = 1176
    Top = 192
  end
  object dsp_estados: TDataSetProvider
    DataSet = sql_Estados
    UpdateMode = upWhereKeyOnly
    Left = 1264
    Top = 192
  end
  object dsp_onusdofrete: TDataSetProvider
    DataSet = sql_onusdofrete
    UpdateMode = upWhereKeyOnly
    Left = 664
    Top = 293
  end
  object dsp_tiponf: TDataSetProvider
    DataSet = sql_tiponf
    UpdateMode = upWhereKeyOnly
    Left = 752
    Top = 285
  end
  object dsp_sitb: TDataSetProvider
    DataSet = sql_sitb
    UpdateMode = upWhereKeyOnly
    Left = 840
    Top = 285
  end
  object dsp_cmobra: TDataSetProvider
    DataSet = sql_cmobra
    UpdateMode = upWhereKeyOnly
    Left = 928
    Top = 285
  end
  object sql_ibpt: TZQuery
    Connection = zconexao
    SQL.Strings = (
      'select * from ibpt')
    Params = <>
    Left = 24
    Top = 632
    object sql_ibptEX: TStringField
      FieldName = 'EX'
      Size = 250
    end
    object sql_ibptTABELA: TIntegerField
      FieldName = 'TABELA'
    end
    object sql_ibptALIQNAC: TFloatField
      FieldName = 'ALIQNAC'
    end
    object sql_ibptALIQIMP: TFloatField
      FieldName = 'ALIQIMP'
    end
    object sql_ibptVERSAO: TStringField
      FieldName = 'VERSAO'
      Size = 250
    end
    object sql_ibptid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object sql_ibptCODNCMNBS: TStringField
      FieldName = 'CODNCMNBS'
      Size = 250
    end
  end
  object cds_ibpt: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'EX'
        DataType = ftString
        Size = 250
      end
      item
        Name = 'TABELA'
        DataType = ftInteger
      end
      item
        Name = 'ALIQNAC'
        DataType = ftFloat
      end
      item
        Name = 'ALIQIMP'
        DataType = ftFloat
      end
      item
        Name = 'VERSAO'
        DataType = ftString
        Size = 250
      end
      item
        Name = 'id'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'CODNCMNBS'
        DataType = ftString
        Size = 250
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
    ProviderName = 'dsp_ibpt'
    StoreDefs = True
    AfterPost = cds_ibptAfterPost
    AfterDelete = cds_ibptAfterDelete
    OnNewRecord = cds_ibptNewRecord
    Left = 995
    Top = 250
    object cds_ibptEX: TStringField
      FieldName = 'EX'
      Size = 250
    end
    object cds_ibptTABELA: TIntegerField
      FieldName = 'TABELA'
    end
    object cds_ibptALIQNAC: TFloatField
      FieldName = 'ALIQNAC'
    end
    object cds_ibptALIQIMP: TFloatField
      FieldName = 'ALIQIMP'
    end
    object cds_ibptVERSAO: TStringField
      FieldName = 'VERSAO'
      Size = 250
    end
    object cds_ibptid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object cds_ibptCODNCMNBS: TStringField
      FieldName = 'CODNCMNBS'
      Size = 250
    end
  end
  object dts_ibpt: TDataSource
    DataSet = cds_ibpt
    Left = 1009
    Top = 261
  end
  object dsp_ibpt: TDataSetProvider
    DataSet = sql_ibpt
    UpdateMode = upWhereKeyOnly
    Left = 1024
    Top = 277
  end
  object sql_aliqinter: TZQuery
    Connection = zconexao
    SQL.Strings = (
      'select * from aliqinter')
    Params = <>
    Left = 96
    Top = 616
    object sql_aliqinterCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object sql_aliqinterCODEST: TIntegerField
      FieldName = 'CODEST'
    end
    object sql_aliqinterCODPROD: TIntegerField
      FieldName = 'CODPROD'
    end
    object sql_aliqinterALIQ: TFloatField
      FieldName = 'ALIQ'
    end
    object sql_aliqinterIVA: TFloatField
      FieldName = 'IVA'
    end
    object sql_aliqinterID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sql_aliqinterST: TStringField
      FieldName = 'ST'
      Size = 1
    end
  end
  object cds_aliqinter: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
      end
      item
        Name = 'CODEST'
        DataType = ftInteger
      end
      item
        Name = 'CODPROD'
        DataType = ftInteger
      end
      item
        Name = 'ALIQ'
        DataType = ftFloat
      end
      item
        Name = 'IVA'
        DataType = ftFloat
      end
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ST'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'descestado'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 10
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
    ProviderName = 'dsp_aliqinter'
    StoreDefs = True
    AfterPost = cds_aliqinterAfterPost
    AfterDelete = cds_aliqinterAfterDelete
    OnNewRecord = cds_aliqinterNewRecord
    Left = 1090
    Top = 250
    object cds_aliqinterCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object cds_aliqinterCODEST: TIntegerField
      FieldName = 'CODEST'
    end
    object cds_aliqinterCODPROD: TIntegerField
      FieldName = 'CODPROD'
    end
    object cds_aliqinterALIQ: TFloatField
      FieldName = 'ALIQ'
    end
    object cds_aliqinterIVA: TFloatField
      FieldName = 'IVA'
    end
    object cds_aliqinterID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_aliqinterST: TStringField
      FieldName = 'ST'
      Size = 1
    end
    object cds_aliqintersiglaestado: TStringField
      FieldKind = fkLookup
      FieldName = 'siglaestado'
      LookupDataSet = cds_Estados
      LookupKeyFields = 'codigo'
      LookupResultField = 'sigla'
      KeyFields = 'CODEST'
      Size = 10
      Lookup = True
    end
  end
  object dts_aliqinter: TDataSource
    DataSet = cds_aliqinter
    Left = 1104
    Top = 261
  end
  object dsp_aliqinter: TDataSetProvider
    DataSet = sql_aliqinter
    UpdateMode = upWhereKeyOnly
    Left = 1119
    Top = 277
  end
  object sql_produtos: TZQuery
    Connection = zconexao
    SQL.Strings = (
      'select * from produtos')
    Params = <>
    Left = 248
    Top = 448
    object sql_produtoscodigo: TIntegerField
      FieldName = 'codigo'
    end
    object sql_produtosdescricao: TStringField
      FieldName = 'descricao'
      Size = 80
    end
    object sql_produtoscund: TIntegerField
      FieldName = 'cund'
    end
    object sql_produtosprve: TFloatField
      FieldName = 'prve'
    end
    object sql_produtoscbar: TStringField
      FieldName = 'cbar'
      Size = 13
    end
    object sql_produtosbscalcst: TFloatField
      FieldName = 'bscalcst'
    end
    object sql_produtosicmscalcst: TFloatField
      FieldName = 'icmscalcst'
    end
    object sql_produtoscompoetnf: TStringField
      FieldName = 'compoetnf'
      Size = 1
    end
    object sql_produtoscicms: TIntegerField
      FieldName = 'cicms'
    end
    object sql_produtoscipi: TIntegerField
      FieldName = 'cipi'
    end
    object sql_produtoscsita: TIntegerField
      FieldName = 'csita'
    end
    object sql_produtoscsitb: TIntegerField
      FieldName = 'csitb'
    end
    object sql_produtosccfncm: TIntegerField
      FieldName = 'ccfncm'
    end
    object sql_produtoscmodbscalc: TIntegerField
      FieldName = 'cmodbscalc'
    end
    object sql_produtoscmodbscalcst: TIntegerField
      FieldName = 'cmodbscalcst'
    end
    object sql_produtoscvii: TIntegerField
      FieldName = 'cvii'
    end
    object sql_produtoscpis: TIntegerField
      FieldName = 'cpis'
    end
    object sql_produtosccofins: TIntegerField
      FieldName = 'ccofins'
    end
    object sql_produtoscoimp: TIntegerField
      FieldName = 'coimp'
    end
    object sql_produtosccfop: TIntegerField
      FieldName = 'ccfop'
    end
    object sql_produtoscaux: TStringField
      FieldName = 'caux'
    end
    object sql_produtosccsosn: TIntegerField
      FieldName = 'ccsosn'
    end
    object sql_produtossimplesncm: TStringField
      FieldName = 'simplesncm'
      Size = 60
    end
    object sql_produtosid: TIntegerField
      FieldName = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sql_produtosqtde: TFloatField
      FieldName = 'qtde'
    end
    object sql_produtosEX: TStringField
      FieldName = 'EX'
      Size = 10
    end
    object sql_produtosiva: TFloatField
      FieldName = 'iva'
    end
    object sql_produtostabela: TIntegerField
      FieldName = 'tabela'
    end
    object sql_produtoscest: TStringField
      FieldName = 'cest'
      Size = 40
    end
  end
  object dsp_produtos: TDataSetProvider
    DataSet = sql_produtos
    UpdateMode = upWhereKeyOnly
    Left = 928
    Top = 88
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
      end
      item
        Name = 'cbar'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'bscalcst'
        DataType = ftFloat
      end
      item
        Name = 'icmscalcst'
        DataType = ftFloat
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
      end
      item
        Name = 'id'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'qtde'
        DataType = ftFloat
      end
      item
        Name = 'EX'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'iva'
        DataType = ftFloat
      end
      item
        Name = 'tabela'
        DataType = ftInteger
      end
      item
        Name = 'cest'
        DataType = ftString
        Size = 40
      end>
    IndexDefs = <
      item
        Name = 'descricao'
      end
      item
        Name = 'codigo'
      end>
    Params = <>
    ProviderName = 'dsp_produtos'
    StoreDefs = True
    AfterPost = cds_produtosAfterPost
    AfterDelete = cds_produtosAfterDelete
    OnNewRecord = cds_produtosNewRecord
    Left = 936
    Top = 96
    object cds_produtoscodigo: TIntegerField
      FieldName = 'codigo'
    end
    object cds_produtosdescricao: TStringField
      FieldName = 'descricao'
      Size = 80
    end
    object cds_produtoscund: TIntegerField
      FieldName = 'cund'
    end
    object cds_produtosprve: TFloatField
      FieldName = 'prve'
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
    object cds_produtosid: TIntegerField
      FieldName = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_produtosqtde: TFloatField
      FieldName = 'qtde'
    end
    object cds_produtosEX: TStringField
      FieldName = 'EX'
      Size = 10
    end
    object cds_produtosiva: TFloatField
      FieldName = 'iva'
    end
    object cds_produtostabela: TIntegerField
      FieldName = 'tabela'
    end
    object cds_produtoscest: TStringField
      FieldName = 'cest'
      Size = 40
    end
  end
  object dts_produtos: TDataSource
    DataSet = cds_produtos
    Left = 952
    Top = 112
  end
  object cds_corrigirNFP: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_nfp'
    AfterPost = cds_corrigirNFPAfterPost
    AfterDelete = cds_corrigirNFPAfterDelete
    Left = 536
    Top = 504
  end
  object cds_corrigirNFE: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterPost = cds_corrigirNFEAfterPost
    AfterDelete = cds_corrigirNFEAfterDelete
    Left = 544
    Top = 560
  end
  object cds_corrigirNF: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterPost = cds_corrigirNFAfterPost
    AfterDelete = cds_corrigirNFAfterDelete
    Left = 632
    Top = 504
  end
  object cds_corrigirClientes: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterPost = cds_corrigirClientesAfterPost
    AfterDelete = cds_corrigirClientesAfterDelete
    Left = 632
    Top = 560
  end
  object cds_corrigirFornecedores: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterPost = cds_corrigirFornecedoresAfterPost
    AfterDelete = cds_corrigirFornecedoresAfterDelete
    Left = 624
    Top = 456
  end
  object sql_exec: TZQuery
    Connection = zconexao
    SQL.Strings = (
      'select * from aliqinter')
    Params = <>
    Left = 176
    Top = 624
  end
  object sql_exec2: TZQuery
    Connection = zconexao
    SQL.Strings = (
      'select * from aliqinter')
    Params = <>
    Left = 248
    Top = 624
  end
  object sql_exec3: TZQuery
    Connection = zconexao
    SQL.Strings = (
      'select * from aliqinter')
    Params = <>
    Left = 344
    Top = 624
  end
  object sql_exec4: TZQuery
    Connection = zconexao
    SQL.Strings = (
      'select * from aliqinter')
    Params = <>
    Left = 432
    Top = 624
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
    Left = 720
    Top = 440
  end
  object XMLDocument1: TXMLDocument
    XML.Strings = (
      '<?xml version="1.0" encoding="utf-8" ?><response>'
      
        '<cep>69960-000</cep><uf>AC</uf><cidade>feijo</cidade><bairro></b' +
        'airro><tipo_logradouro></tipo_logradouro><logradouro></logradour' +
        'o><resultado></resultado><resultado_txt></resultado_txt><ibge_uf' +
        '>12</ibge_uf><ibge_municipio>1200302</ibge_municipio><erro>0</er' +
        'ro><msgerro></msgerro></response>')
    Left = 752
    Top = 440
    DOMVendorDesc = 'MSXML'
  end
end
