object frmModulo: TfrmModulo
  OldCreateOrder = False
  Left = 288
  Top = 192
  Height = 636
  Width = 911
  object conexao: TIBCConnection
    Database = 'C:\DataSAC\paf\Dat\DATPDV.FDB'
    ClientLibrary = 'fbclient.dll'
    Username = 'SYSDBA'
    Password = 'masterkey'
    Server = 'localhost'
    LoginPrompt = False
    Left = 32
    Top = 16
  end
  object query: TIBCQuery
    Connection = conexao
    Left = 88
    Top = 16
  end
  object Balanca: TACBrBAL
    Porta = 'COM1'
    OnLePeso = BalancaLePeso
    Left = 144
    Top = 16
  end
  object estilo_menu: TAdvMenuOfficeStyler
    AntiAlias = aaNone
    AutoThemeAdapt = False
    Style = osOffice2007Luna
    Background.Position = bpCenter
    Background.Color = 16185078
    Background.ColorTo = 16185078
    ButtonAppearance.DownColor = 13421257
    ButtonAppearance.DownColorTo = 15395047
    ButtonAppearance.HoverColor = 14737117
    ButtonAppearance.HoverColorTo = 16052977
    ButtonAppearance.DownBorderColor = 11906984
    ButtonAppearance.HoverBorderColor = 11906984
    ButtonAppearance.CaptionFont.Charset = DEFAULT_CHARSET
    ButtonAppearance.CaptionFont.Color = clWindowText
    ButtonAppearance.CaptionFont.Height = -11
    ButtonAppearance.CaptionFont.Name = 'Tahoma'
    ButtonAppearance.CaptionFont.Style = []
    IconBar.Color = 16773091
    IconBar.ColorTo = 14986631
    IconBar.CheckBorder = clNavy
    IconBar.RadioBorder = clNavy
    IconBar.SeparatorColor = 12961221
    IconBar.Size = 16
    SelectedItem.Color = 15465983
    SelectedItem.ColorTo = 11267071
    SelectedItem.ColorMirror = 6936319
    SelectedItem.ColorMirrorTo = 9889023
    SelectedItem.BorderColor = 10079963
    SelectedItem.Font.Charset = DEFAULT_CHARSET
    SelectedItem.Font.Color = clWindowText
    SelectedItem.Font.Height = -12
    SelectedItem.Font.Name = 'Segoe UI'
    SelectedItem.Font.Style = []
    SelectedItem.NotesFont.Charset = DEFAULT_CHARSET
    SelectedItem.NotesFont.Color = clWindowText
    SelectedItem.NotesFont.Height = -8
    SelectedItem.NotesFont.Name = 'Tahoma'
    SelectedItem.NotesFont.Style = []
    SelectedItem.CheckBorder = clNavy
    SelectedItem.RadioBorder = clNavy
    RootItem.Color = 15915714
    RootItem.ColorTo = 15784385
    RootItem.GradientDirection = gdVertical
    RootItem.Font.Charset = DEFAULT_CHARSET
    RootItem.Font.Color = clMenuText
    RootItem.Font.Height = -12
    RootItem.Font.Name = 'Segoe UI'
    RootItem.Font.Style = []
    RootItem.SelectedColor = 7778289
    RootItem.SelectedColorTo = 4296947
    RootItem.SelectedColorMirror = 946929
    RootItem.SelectedColorMirrorTo = 5021693
    RootItem.SelectedBorderColor = 4548219
    RootItem.HoverColor = 15465983
    RootItem.HoverColorTo = 11267071
    RootItem.HoverColorMirror = 6936319
    RootItem.HoverColorMirrorTo = 9889023
    RootItem.HoverBorderColor = 10079963
    Glyphs.SubMenu.Data = {
      5A000000424D5A000000000000003E0000002800000004000000070000000100
      0100000000001C0000000000000000000000020000000200000000000000FFFF
      FF0070000000300000001000000000000000100000003000000070000000}
    Glyphs.Check.Data = {
      7E000000424D7E000000000000003E0000002800000010000000100000000100
      010000000000400000000000000000000000020000000200000000000000FFFF
      FF00FFFF0000FFFF0000FFFF0000FFFF0000FDFF0000F8FF0000F07F0000F23F
      0000F71F0000FF8F0000FFCF0000FFEF0000FFFF0000FFFF0000FFFF0000FFFF
      0000}
    Glyphs.Radio.Data = {
      7E000000424D7E000000000000003E0000002800000010000000100000000100
      010000000000400000000000000000000000020000000200000000000000FFFF
      FF00FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FC3F0000F81F0000F81F
      0000F81F0000F81F0000FC3F0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000}
    SideBar.Font.Charset = DEFAULT_CHARSET
    SideBar.Font.Color = clWhite
    SideBar.Font.Height = -19
    SideBar.Font.Name = 'Tahoma'
    SideBar.Font.Style = [fsBold, fsItalic]
    SideBar.Image.Position = bpCenter
    SideBar.Background.Position = bpCenter
    SideBar.SplitterColorTo = clBlack
    Separator.Color = 12961221
    Separator.GradientType = gtBoth
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMenuText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    NotesFont.Charset = DEFAULT_CHARSET
    NotesFont.Color = clGray
    NotesFont.Height = -8
    NotesFont.Name = 'Tahoma'
    NotesFont.Style = []
    MenuBorderColor = clSilver
    Left = 208
    Top = 16
  end
  object spCupom: TIBCStoredProc
    StoredProcName = 'ST_CUPOM_INSERT'
    Connection = conexao
    Left = 32
    Top = 80
    ParamData = <
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'NUMERO'
        ParamType = ptInput
        Size = 12
      end
      item
        DataType = ftString
        Name = 'CCF'
        ParamType = ptInput
        Size = 12
      end
      item
        DataType = ftString
        Name = 'ECF'
        ParamType = ptInput
        Size = 30
      end
      item
        DataType = ftDate
        Name = 'DATA'
        ParamType = ptInput
      end
      item
        DataType = ftTime
        Name = 'HORA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'QTDE_ITEM'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VALOR_PRODUTO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VALOR_DESCONTO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VALOR_ACRESCIMO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VALOR_TOTAL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VALOR_PAGO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VALOR_TROCO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'COD_CLIENTE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CANCELADO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CPF_CONSUMIDOR'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'NOME_CONSUMIDOR'
        ParamType = ptInput
        Size = 40
      end
      item
        DataType = ftInteger
        Name = 'COD_VENDEDOR'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'COD_CAIXA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ECF_CAIXA'
        ParamType = ptInput
        Size = 3
      end>
  end
  object spCupom_Crediario: TIBCStoredProc
    StoredProcName = 'ST_CUPOM_CREDIARIO_INSERT'
    Connection = conexao
    Left = 192
    Top = 80
    ParamData = <
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'COD_CUPOM'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftDate
        Name = 'DATA'
        ParamType = ptInput
      end
      item
        DataType = ftTime
        Name = 'HORA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'COD_CLIENTE'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'VENCIMENTO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VALOR'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'DESCRICAO'
        ParamType = ptInput
        Size = 30
      end>
  end
  object spCupom_Forma: TIBCStoredProc
    StoredProcName = 'ST_CUPOM_FORMA_INSERT'
    Connection = conexao
    Left = 32
    Top = 136
    ParamData = <
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'COD_CUPOM'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'FORMA'
        ParamType = ptInput
        Size = 30
      end
      item
        DataType = ftFloat
        Name = 'VALOR'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PRESTACAO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TIPO'
        ParamType = ptInput
        Size = 30
      end>
  end
  object spCupom_Consumidor: TIBCStoredProc
    StoredProcName = 'ST_CUPOM_CONSUMIDOR_INSERT'
    Connection = conexao
    Left = 136
    Top = 136
    ParamData = <
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'COD_CLIENTE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ENDERECO'
        ParamType = ptInput
        Size = 80
      end
      item
        DataType = ftString
        Name = 'BAIRRO'
        ParamType = ptInput
        Size = 40
      end
      item
        DataType = ftString
        Name = 'CIDADE'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'UF'
        ParamType = ptInput
        Size = 2
      end
      item
        DataType = ftString
        Name = 'CEP'
        ParamType = ptInput
        Size = 9
      end
      item
        DataType = ftString
        Name = 'CPF'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'RG'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'PLACA'
        ParamType = ptInput
        Size = 10
      end
      item
        DataType = ftString
        Name = 'KM'
        ParamType = ptInput
        Size = 10
      end
      item
        DataType = ftString
        Name = 'VENDEDOR'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'INFO_ADICIONAL1'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'INFO_ADICIONAL2'
        ParamType = ptInput
        Size = 50
      end>
  end
  object spCodigo_Global: TIBCStoredProc
    StoredProcName = 'ST_CODIGO_GLOBAL'
    Connection = conexao
    Left = 296
    Top = 16
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptOutput
        Value = 5
      end>
  end
  object docValidador: TACBrValidador
    IgnorarChar = './-'
    Left = 360
    Top = 160
  end
  object tbForma_Pgto: TVirtualTable
    IndexFieldNames = 'id'
    FieldDefs = <
      item
        Name = 'Nome'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Valor_Acumulado'
        DataType = ftFloat
      end
      item
        Name = 'Valor_Ultimo_Cupom'
        DataType = ftFloat
      end
      item
        Name = 'id'
        DataType = ftInteger
      end>
    Left = 312
    Top = 80
    Data = {
      0300040004004E6F6D6501001400000000000F0056616C6F725F4163756D756C
      61646F0600000000000000120056616C6F725F556C74696D6F5F4375706F6D06
      00000000000000020069640300000000000000000000000000}
    object tbForma_PgtoNome: TStringField
      FieldName = 'Nome'
    end
    object tbForma_PgtoValor_Acumulado: TFloatField
      FieldName = 'Valor_Acumulado'
    end
    object tbForma_PgtoValor_Ultimo_Cupom: TFloatField
      FieldName = 'Valor_Ultimo_Cupom'
    end
    object tbForma_Pgtoid: TIntegerField
      FieldName = 'id'
    end
  end
  object spNao_Fiscal: TIBCStoredProc
    StoredProcName = 'ST_NAO_FISCAL'
    Connection = conexao
    Left = 392
    Top = 16
    ParamData = <
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'ECF'
        ParamType = ptInput
        Size = 30
      end
      item
        DataType = ftDate
        Name = 'DATA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'INDICE'
        ParamType = ptInput
        Size = 2
      end
      item
        DataType = ftString
        Name = 'DESCRICAO'
        ParamType = ptInput
        Size = 30
      end
      item
        DataType = ftFloat
        Name = 'VALOR'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'COO'
        ParamType = ptInput
        Size = 6
      end
      item
        DataType = ftString
        Name = 'GNF'
        ParamType = ptInput
        Size = 6
      end
      item
        DataType = ftString
        Name = 'GRG'
        ParamType = ptInput
        Size = 6
      end
      item
        DataType = ftString
        Name = 'CDC'
        ParamType = ptInput
        Size = 6
      end
      item
        DataType = ftString
        Name = 'DENOMINACAO'
        ParamType = ptInput
        Size = 2
      end
      item
        DataType = ftTime
        Name = 'HORA'
        ParamType = ptInput
      end>
  end
  object spReducaoZ: TIBCStoredProc
    StoredProcName = 'ST_REDUCAOZ'
    Connection = conexao
    Left = 32
    Top = 200
    ParamData = <
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ECF'
        ParamType = ptInput
        Size = 30
      end
      item
        DataType = ftString
        Name = 'USUARIO'
        ParamType = ptInput
        Size = 2
      end
      item
        DataType = ftString
        Name = 'CRZ'
        ParamType = ptInput
        Size = 6
      end
      item
        DataType = ftString
        Name = 'COO'
        ParamType = ptInput
        Size = 6
      end
      item
        DataType = ftString
        Name = 'CRO'
        ParamType = ptInput
        Size = 6
      end
      item
        DataType = ftDate
        Name = 'DATA_MOVIMENTO'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA_EMISSAO'
        ParamType = ptInput
      end
      item
        DataType = ftTime
        Name = 'HORA_EMISSAO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TOTALIZADOR_GERAL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VENDA_BRUTA'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CANCELAMENTO_ICMS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DESCONTO_ICMS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TOTAL_ISS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CANCELAMENTO_ISS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DESCONTO_ISS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VENDA_LIQUIDA'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ACRESCIMO_ICMS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ACRESCIMO_ISS'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ECF_CAIXA'
        ParamType = ptInput
        Size = 3
      end>
  end
  object spReducaoZ_Total_Parcial: TIBCStoredProc
    StoredProcName = 'ST_REDUCAOZ_TOTAL_PARCIAL'
    Connection = conexao
    Left = 160
    Top = 200
    ParamData = <
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'COD_REDUCAOZ'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'TOTALIZADOR'
        ParamType = ptInput
        Size = 10
      end
      item
        DataType = ftFloat
        Name = 'VALOR'
        ParamType = ptInput
      end>
  end
  object tbAliquota: TVirtualTable
    IndexFieldNames = 'codigo'
    FieldDefs = <
      item
        Name = 'Codigo'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Aliquota'
        DataType = ftFloat
      end>
    Left = 400
    Top = 80
    Data = {
      030002000600436F6469676F01001400000000000800416C6971756F74610600
      000000000000000000000000}
    object tbAliquotaCodigo: TStringField
      FieldName = 'Codigo'
    end
    object tbAliquotaAliquota: TFloatField
      FieldName = 'Aliquota'
    end
  end
  object Conexao_Servidor: TIBCConnection
    Database = 'C:\DataSAC\Server\bd\BASE.FDB'
    SQLDialect = 1
    ClientLibrary = 'fbclient.dll'
    Username = 'SYSDBA'
    Password = 'masterkey'
    Server = 'localhost'
    LoginPrompt = False
    Left = 40
    Top = 368
  end
  object query_servidor: TIBCQuery
    Connection = Conexao_Servidor
    Left = 136
    Top = 368
  end
  object spCupom_Temp: TIBCStoredProc
    StoredProcName = 'ST_CUPOM_TEMP_INSERT'
    Connection = conexao
    Left = 160
    Top = 280
    ParamData = <
      item
        DataType = ftString
        Name = 'NUMERO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CCF'
        ParamType = ptInput
        Size = 12
      end
      item
        DataType = ftString
        Name = 'ECF'
        ParamType = ptInput
        Size = 30
      end
      item
        DataType = ftDate
        Name = 'DATA'
        ParamType = ptInput
      end
      item
        DataType = ftTime
        Name = 'HORA'
        ParamType = ptInput
      end>
  end
  object spCupom_Temp_delete: TIBCStoredProc
    StoredProcName = 'ST_CUPOM_TEMP_DELETE'
    Connection = conexao
    Left = 280
    Top = 272
  end
  object spCupom_Temp_Edit: TIBCStoredProc
    StoredProcName = 'ST_CUPOM_TEMP_EDIT'
    Connection = conexao
    Left = 408
    Top = 272
    ParamData = <
      item
        DataType = ftString
        Name = 'PROCEDIMENTO'
        ParamType = ptInput
      end>
  end
  object qrtotalizador: TIBCQuery
    Connection = conexao
    Left = 288
    Top = 168
  end
  object qrMestre: TIBCQuery
    Connection = Conexao_Servidor
    Left = 224
    Top = 368
  end
  object Dlg_arquivo: TOpenDialog
    Filter = 'Arquivo Texto|*.txt'
    Left = 480
    Top = 160
  end
  object qrcliente: TIBCQuery
    Connection = Conexao_Servidor
    SQL.Strings = (
      'select * from c000007')
    Left = 296
    Top = 367
  end
  object qrcontasreceber: TIBCQuery
    Connection = Conexao_Servidor
    SQL.Strings = (
      'select * from c000049')
    Left = 360
    Top = 367
  end
  object qrconfig: TIBCQuery
    Connection = Conexao_Servidor
    SQL.Strings = (
      'select * from c000001')
    Left = 432
    Top = 367
  end
  object qrcaixa_operador: TIBCQuery
    Connection = Conexao_Servidor
    SQL.Strings = (
      'select * from c000045')
    Left = 504
    Top = 367
  end
  object qrcaixa_mov: TIBCQuery
    Connection = Conexao_Servidor
    SQL.Strings = (
      'select * from c000044')
    Left = 584
    Top = 367
  end
  object qrbanco: TIBCQuery
    Connection = Conexao_Servidor
    SQL.Strings = (
      'select * from c000013')
    Left = 664
    Top = 359
  end
  object qrcontacorrente: TIBCQuery
    Connection = Conexao_Servidor
    SQL.Strings = (
      'select * from c000041')
    Left = 720
    Top = 351
    object qrcontacorrenteCONTA: TStringField
      DisplayLabel = 'Conta'
      DisplayWidth = 15
      FieldName = 'CONTA'
      Size = 15
    end
    object qrcontacorrentebanco: TStringField
      DisplayLabel = 'Banco'
      DisplayWidth = 19
      FieldKind = fkLookup
      FieldName = 'banco'
      LookupDataSet = qrbanco
      LookupKeyFields = 'numero'
      LookupResultField = 'BANCO'
      KeyFields = 'codbanco'
      Size = 40
      Lookup = True
    end
    object qrcontacorrenteAGENCIA: TStringField
      DisplayLabel = 'Ag'#234'ncia'
      DisplayWidth = 6
      FieldName = 'AGENCIA'
      Size = 10
    end
    object qrcontacorrenteTITULAR: TStringField
      DisplayLabel = 'Titular'
      DisplayWidth = 31
      FieldName = 'TITULAR'
      Size = 30
    end
    object qrcontacorrenteCODIGO: TStringField
      DisplayWidth = 6
      FieldName = 'CODIGO'
      Required = True
      Visible = False
      Size = 6
    end
    object qrcontacorrenteCODBANCO: TStringField
      DisplayWidth = 3
      FieldName = 'CODBANCO'
      Visible = False
      Size = 3
    end
    object qrcontacorrenteSALDO: TFloatField
      DisplayWidth = 10
      FieldName = 'SALDO'
      Visible = False
    end
    object qrcontacorrenteNOME_AGENCIA: TStringField
      DisplayWidth = 30
      FieldName = 'NOME_AGENCIA'
      Visible = False
      Size = 30
    end
  end
  object qrlancamento_conta: TIBCQuery
    Connection = Conexao_Servidor
    SQL.Strings = (
      'select * from c000042')
    Left = 824
    Top = 360
  end
  object spDav_Codigo: TIBCStoredProc
    StoredProcName = 'SPCODIGO_DAV'
    Connection = Conexao_Servidor
    Left = 40
    Top = 424
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptOutput
      end>
  end
  object spDAV: TIBCStoredProc
    StoredProcName = 'ST_DAV'
    Connection = conexao
    Left = 496
    Top = 16
    ParamData = <
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ECF'
        ParamType = ptInput
        Size = 30
      end
      item
        DataType = ftString
        Name = 'COO'
        ParamType = ptInput
        Size = 6
      end
      item
        DataType = ftString
        Name = 'NUMERO'
        ParamType = ptInput
        Size = 10
      end
      item
        DataType = ftDate
        Name = 'DATA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TITULO'
        ParamType = ptInput
        Size = 30
      end
      item
        DataType = ftFloat
        Name = 'VALOR'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'COO_CUPOM_FISCAL'
        ParamType = ptInput
        Size = 10
      end
      item
        DataType = ftString
        Name = 'CCF'
        ParamType = ptInput
        Size = 6
      end>
  end
  object query_servidor2: TIBCQuery
    Connection = Conexao_Servidor
    Left = 144
    Top = 432
  end
  object qrfilial: TIBCQuery
    Connection = Conexao_Servidor
    SQL.Strings = (
      'select * from c000004')
    Left = 272
    Top = 464
  end
  object qrtransportador: TIBCQuery
    Connection = Conexao_Servidor
    SQL.Strings = (
      'select * from c000010')
    Left = 336
    Top = 464
  end
  object qrcfop: TIBCQuery
    Connection = Conexao_Servidor
    SQL.Strings = (
      'select * from c000030')
    Left = 416
    Top = 464
  end
  object qrfiscal_modelo: TIBCQuery
    Connection = Conexao_Servidor
    SQL.Strings = (
      'select * from c000082')
    Left = 480
    Top = 464
  end
  object qrgrupo: TIBCQuery
    Connection = Conexao_Servidor
    SQL.Strings = (
      'select * from c000017')
    Left = 648
    Top = 472
  end
  object qrsubgrupo: TIBCQuery
    Connection = Conexao_Servidor
    SQL.Strings = (
      'select * from c000018')
    Left = 712
    Top = 472
  end
  object qrmarca: TIBCQuery
    Connection = Conexao_Servidor
    SQL.Strings = (
      'select * from c000019')
    Left = 760
    Top = 472
  end
  object qrfornecedor: TIBCQuery
    Connection = Conexao_Servidor
    SQL.Strings = (
      'select * from c000009')
    Left = 840
    Top = 472
  end
  object qrproduto: TIBCQuery
    Connection = Conexao_Servidor
    SQL.Strings = (
      'select * from c000025')
    Left = 648
    Top = 536
  end
  object qrproduto_mov: TIBCQuery
    Connection = Conexao_Servidor
    SQL.Strings = (
      'select * from c000032')
    Left = 712
    Top = 536
  end
  object qrgrade_produto: TIBCQuery
    Connection = Conexao_Servidor
    SQL.Strings = (
      'select * from c000032')
    Left = 784
    Top = 528
  end
  object St_Abastecimento_codigo: TIBCStoredProc
    StoredProcName = 'ST_ABASTECIMENTO_CODIGO'
    Connection = conexao
    Left = 584
    Top = 96
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptOutput
      end>
  end
  object St_Abastecimento: TIBCStoredProc
    StoredProcName = 'ST_ABASTECIMENTO_INSERT'
    Connection = conexao
    Left = 576
    Top = 152
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'BOMBA'
        ParamType = ptInput
        Size = 5
      end
      item
        DataType = ftString
        Name = 'BICO'
        ParamType = ptInput
        Size = 5
      end
      item
        DataType = ftDate
        Name = 'DATA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'HORA'
        ParamType = ptInput
        Size = 10
      end
      item
        DataType = ftInteger
        Name = 'COD_PRODUTO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'QTDE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'UNITARIO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TOTAL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EI'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EF'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SITUACAO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TANQUE'
        ParamType = ptInput
        Size = 5
      end
      item
        DataType = ftString
        Name = 'NUMERO_ABASTECIMENTO'
        ParamType = ptInput
        Size = 6
      end>
  end
  object st_bico_movimento: TIBCStoredProc
    StoredProcName = 'ST_BICO_MOVIMENTO'
    Connection = conexao
    Left = 560
    Top = 224
    ParamData = <
      item
        DataType = ftInteger
        Name = 'COD_BICO'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EF'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VOLUME'
        ParamType = ptInput
      end>
  end
  object spCupom_Item_Temp: TIBCStoredProc
    StoredProcName = 'ST_CUPOM_ITEM_TEMP_INSERT'
    Connection = conexao
    Left = 36
    Top = 264
    ParamData = <
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'COD_CUPOM'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftInteger
        Name = 'ITEM'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'COD_PRODUTO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'UNIDADE'
        ParamType = ptInput
        Size = 10
      end
      item
        DataType = ftFloat
        Name = 'QTDE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VALOR_UNITARIO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VALOR_SUBTOTAL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VALOR_DESCONTO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VALOR_ACRESCIMO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VALOR_TOTAL'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CST'
        ParamType = ptInput
        Size = 3
      end
      item
        DataType = ftFloat
        Name = 'ALIQUOTA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CANCELADO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'COD_TOTALIZADOR'
        ParamType = ptInput
        Size = 7
      end
      item
        DataType = ftFixedChar
        Name = 'TAMANHO'
        ParamType = ptInput
        Size = 5
      end
      item
        DataType = ftFixedChar
        Name = 'COR'
        ParamType = ptInput
        Size = 5
      end>
  end
  object spCupom_Item: TIBCStoredProc
    StoredProcName = 'ST_CUPOM_ITEM_INSERT'
    Connection = conexao
    Left = 100
    Top = 72
    ParamData = <
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'COD_CUPOM'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftInteger
        Name = 'ITEM'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'COD_PRODUTO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'UNIDADE'
        ParamType = ptInput
        Size = 10
      end
      item
        DataType = ftFloat
        Name = 'QTDE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VALOR_UNITARIO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VALOR_SUBTOTAL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VALOR_DESCONTO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VALOR_ACRESCIMO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VALOR_TOTAL'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CST'
        ParamType = ptInput
        Size = 3
      end
      item
        DataType = ftFloat
        Name = 'ALIQUOTA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CANCELADO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'COD_TOTALIZADOR'
        ParamType = ptInput
        Size = 7
      end
      item
        DataType = ftFixedChar
        Name = 'TAMANHO'
        ParamType = ptInput
        Size = 5
      end
      item
        DataType = ftFixedChar
        Name = 'COR'
        ParamType = ptInput
        Size = 5
      end>
  end
end
