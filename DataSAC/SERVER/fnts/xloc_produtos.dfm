object frmxloc_produtos: Tfrmxloc_produtos
  Left = 260
  Top = 206
  BorderStyle = bsDialog
  Caption = 'Pesquisa '
  ClientHeight = 406
  ClientWidth = 818
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 17
    Width = 51
    Height = 13
    Caption = 'Descri'#231#227'o:'
  end
  object Label7: TLabel
    Left = 758
    Top = 11
    Width = 18
    Height = 12
    Caption = 'ESC'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lvoltar: TLabel
    Left = 746
    Top = 24
    Width = 44
    Height = 12
    Caption = 'FECHAR'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Bevel2: TBevel
    Left = 736
    Top = 4
    Width = 2
    Height = 37
  end
  object edidescricao: TEdit
    Left = 93
    Top = 13
    Width = 612
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 0
    Text = 'EDIDESCRICAO'
    OnEnter = edidescricaoEnter
  end
  object dbgconsultaproduto: TDBGrid
    Left = 14
    Top = 54
    Width = 783
    Height = 309
    DataSource = dspconsultaproduto
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'PRODUTO'
        Title.Caption = 'DESCRI'#199#195'O'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODIGO'
        Title.Caption = 'C'#211'DIGO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODBARRA'
        Title.Caption = 'CODIGO BARRA'
        Width = 119
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UNIDADE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRECOVENDA'
        Title.Caption = 'PRE'#199'O DE VENDA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ESTOQUE_ATUAL'
        Title.Caption = 'ESTOQUE'
        Visible = True
      end>
  end
  object btn3: TAdvGlowButton
    Left = 616
    Top = 369
    Width = 87
    Height = 24
    Caption = 'FECHAR'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ImageIndex = 49
    FocusType = ftHot
    NotesFont.Charset = DEFAULT_CHARSET
    NotesFont.Color = clWindowText
    NotesFont.Height = -11
    NotesFont.Name = 'Tahoma'
    NotesFont.Style = []
    ParentFont = False
    Picture.Data = {
      89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
      610000000467414D410000AFC837058AE90000001974455874536F6674776172
      650041646F626520496D616765526561647971C9653C000002E04944415478DA
      62FCFFFF3F032500208058D0051EE7E529FFFFFB2FEA0FC3DFB8FFBF7E4BFC63
      F8C7F0FFFF9F177F19FE2DFAF7FFEF32EDB9CBEF22AB0708204664173CC9CD0B
      FEF3EFEF643E4D15496E03030646013E06861F3F187EBF7CC6F06ECF1E86F7EF
      DE3EFFFBFF6FAEE1A2F56B617A0002086E0048F3DFBF7F170AB9387073EBEB31
      FCBD778D81E1E56306865FBF181879041918E5E418DE6ED9C6F0F8C19DAFFFFE
      FE89375DBE1D6C084000810D78949BAB0474F661613B4B292E134386BFFB3733
      7CFBFE8381F1EF6F0676365606C67FFF19FEFFFAC1C0A065C4F07AC76E86272F
      1F3DFBF7FF8FADD5CA7DF700028809640A50730C9794B014A7AE16C3DF43DB19
      FEFEFCCEF0EFE73706D66F9F18FE7D78CBF0F7D33B867F3FBE31FC3EBC9B41D4
      D19181F3C74FA9BFFFFEC680F40204103810FF31FE8DE5D6D160F877FD02C3B7
      F76F18FE5C8684D337B4006693E067F873FF2E83A48115C3872B876281424D00
      010436001830D22C5C5C0C0CB76E3130FCFCC920BC6035D6287B15E5C7C0FAF9
      370387B105C3BF0B7FA44162000104F1C2AFDF0CFF3E019DFBF92303DBDF1F78
      E3FDCF9F7F400D2057FF01F3010208E682A7DF1F3E50E1E4E663F8FBE82DD826
      AC808989814D569EE1E3FDFB0CFF7EFF790A12020820B00BFEFEFBB3F8EDA953
      0CFFA55418FE7EFCC9C0CACB8AA1F72F30B6FEFE6766605550617874753F0330
      161683C40102086C0090B3E40B37C7B3B707F633B07A780363808981919919A2
      918191E1EF5F909B5918F83C7C181EEEDDCAF0E5D7B7677F19FF2F01C9030410
      3C219D8BF60B061AB4509447985BD4D195E1D783BB0CBFEEDE65F8F7EB1F03BB
      BA0A039B8C22C3E3BD9B191EBCBDF5F51FE3BF78AF2DD7C0090920805092F2C9
      48F760602A9BCCF6F797A48C862530DAA420D1F9EC11C3DDAB8718BEFDFDF11C
      A83917A61904000288113D371E097550FEFFE777D41FE67F71FFFFFD9500C510
      90FD02C85EF4EFCF9F655EDB6FA06426800062A4343B03041800C3755C60AB63
      B7520000000049454E44AE426082}
    TabOrder = 3
    OnClick = btn3Click
    Appearance.BorderColor = 12179676
    Appearance.BorderColorHot = clHighlight
    Appearance.BorderColorDown = clHighlight
    Appearance.BorderColorChecked = clBlack
    Appearance.ColorTo = 12179676
    Appearance.ColorChecked = 12179676
    Appearance.ColorCheckedTo = 12179676
    Appearance.ColorDisabled = 15921906
    Appearance.ColorDisabledTo = 15921906
    Appearance.ColorDown = 11899524
    Appearance.ColorDownTo = 11899524
    Appearance.ColorHot = 15717318
    Appearance.ColorHotTo = 15717318
    Appearance.ColorMirror = 12179676
    Appearance.ColorMirrorTo = 12179676
    Appearance.ColorMirrorHot = 15717318
    Appearance.ColorMirrorHotTo = 15717318
    Appearance.ColorMirrorDown = 11899524
    Appearance.ColorMirrorDownTo = 11899524
    Appearance.ColorMirrorChecked = 12179676
    Appearance.ColorMirrorCheckedTo = 12179676
    Appearance.ColorMirrorDisabled = 11974326
    Appearance.ColorMirrorDisabledTo = 15921906
    Appearance.GradientHot = ggVertical
    Appearance.GradientMirrorHot = ggVertical
    Appearance.GradientDown = ggVertical
    Appearance.GradientMirrorDown = ggVertical
    Appearance.GradientChecked = ggVertical
  end
  object bincluir: TAdvGlowButton
    Left = 709
    Top = 369
    Width = 87
    Height = 24
    Caption = 'OK'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ImageIndex = 49
    FocusType = ftHot
    NotesFont.Charset = DEFAULT_CHARSET
    NotesFont.Color = clWindowText
    NotesFont.Height = -11
    NotesFont.Name = 'Tahoma'
    NotesFont.Style = []
    ParentFont = False
    Picture.Data = {
      89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
      610000000467414D410000AFC837058AE90000001974455874536F6674776172
      650041646F626520496D616765526561647971C9653C000002E14944415478DA
      62FCFFFF3F032500208058D0057AF6942AFFFDF737EACFDFBF717FFEFE91F8F3
      EF2FC3EFBF7F5E00F98B80F4B289E18BEF22AB070820466417F4EC2909FEF3F7
      DF645931654975097D064E561E865FFF7E31BCFAF28CE1F89D7D0CAFDEBC7EFE
      E7CF9FDC5971ABD7C2F4000410DC0088E6BF0B4D54ECB955C57419EE7EBAC5F0
      E2FB5386DFFF7E33F0B3F13388714A331CBDB593E1EA9DEB5F812E8B5F92B219
      6C084000810DE8DE5DA20474F66103252B2955713D8683CF77317CFBFA8DE1F7
      FF3F0C1C1CEC0CFF81F0E7BF9F0C9A7C3A0CC76EEE61B879FFEEB3DF7FFED8AE
      CBDE7D0F20809840A60035C708F08B4A298868301C79B197E1FBEF1F0CDF7E7F
      672834AE66C8D42E61F8F0F33DC3BB8F2F188E3F3FC060A1E6C8C0C8F6570A18
      1E3120BD0001043600E8F458793175861B1FAF30BCF9F486E1D3B74F0C1FBEBE
      8787CDD3FB8F187EFFFCCAF0F5F35B86279FEE3358AB5B8302361624071040E0
      580072A43958B9181E7EBE0F0CB49F0C9566AD283133357809982EDC19C5F0F4
      C33D061D6113B01E90184000415DF087E1EBEFCF0C9F7F7D62F8CDFC1B6FBCFF
      FFFB8F811118264003C07C800082B9E0E9D3F70F5578D879183E7C7FC7507828
      85E1EBAB4F0CB34256C16D06DBC6C8C420C527C7F0E8D57D90A54F41620001C4
      043560F185FB2719E4B81419FEFFFEC9C008345D48901BC5E67F7FFF3330FD63
      6490E55364D876712F580F481C2080602E58F2EF1773FAC93B07A42C955C188E
      3EDCC1F0E7DF1FB0CDFFFF821DCEC0C6C4CC60AFE4C9B0E3C216868F9FBF3C03
      063C38600002089E909216040113D29F85D212E2DCB6EA2E0C8F3FDE0706D87D
      86FFFFFE31C8082A31C8F0C9336CBFB899E1E4F52B5F81C93BFE7CC335704202
      082094A41C39CB2B18E89AC97F99FF48DA6BDA3088F349822C6778FCFE11C3CE
      F3FB183E7DF9F61CA83917A61904000288113D37FA4F7652061A12F51B9E99FE
      00BDF8179C99FEFEFBB3EC7CC37594CC0410408C94666780000300708A7F01A2
      891CF10000000049454E44AE426082}
    TabOrder = 2
    OnClick = bincluirClick
    Appearance.BorderColor = 12179676
    Appearance.BorderColorHot = clHighlight
    Appearance.BorderColorDown = clHighlight
    Appearance.BorderColorChecked = clBlack
    Appearance.ColorTo = 12179676
    Appearance.ColorChecked = 12179676
    Appearance.ColorCheckedTo = 12179676
    Appearance.ColorDisabled = 15921906
    Appearance.ColorDisabledTo = 15921906
    Appearance.ColorDown = 11899524
    Appearance.ColorDownTo = 11899524
    Appearance.ColorHot = 15717318
    Appearance.ColorHotTo = 15717318
    Appearance.ColorMirror = 12179676
    Appearance.ColorMirrorTo = 12179676
    Appearance.ColorMirrorHot = 15717318
    Appearance.ColorMirrorHotTo = 15717318
    Appearance.ColorMirrorDown = 11899524
    Appearance.ColorMirrorDownTo = 11899524
    Appearance.ColorMirrorChecked = 12179676
    Appearance.ColorMirrorCheckedTo = 12179676
    Appearance.ColorMirrorDisabled = 11974326
    Appearance.ColorMirrorDisabledTo = 15921906
    Appearance.GradientHot = ggVertical
    Appearance.GradientMirrorHot = ggVertical
    Appearance.GradientDown = ggVertical
    Appearance.GradientMirrorDown = ggVertical
    Appearance.GradientChecked = ggVertical
  end
  object qrconsultaproduto: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      
        'select prod.*, est.* from c000025 prod, c000100 est where prod.c' +
        'odigo = est.codproduto')
    Params = <>
    Left = 200
    Top = 88
    object qrconsultaprodutoCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrconsultaprodutoCODBARRA: TStringField
      FieldName = 'CODBARRA'
      Size = 13
    end
    object qrconsultaprodutoPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Size = 60
    end
    object qrconsultaprodutoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 2
    end
    object qrconsultaprodutoDATA_CADASTRO: TDateTimeField
      FieldName = 'DATA_CADASTRO'
    end
    object qrconsultaprodutoCODGRUPO: TStringField
      FieldName = 'CODGRUPO'
      Size = 6
    end
    object qrconsultaprodutoCODSUBGRUPO: TStringField
      FieldName = 'CODSUBGRUPO'
      Size = 6
    end
    object qrconsultaprodutoCODFORNECEDOR: TStringField
      FieldName = 'CODFORNECEDOR'
      Size = 6
    end
    object qrconsultaprodutoCODMARCA: TStringField
      FieldName = 'CODMARCA'
      Size = 6
    end
    object qrconsultaprodutoDATA_ULTIMACOMPRA: TDateTimeField
      FieldName = 'DATA_ULTIMACOMPRA'
    end
    object qrconsultaprodutoNOTAFISCAL: TStringField
      FieldName = 'NOTAFISCAL'
      Size = 7
    end
    object qrconsultaprodutoPRECOCUSTO: TFloatField
      FieldName = 'PRECOCUSTO'
    end
    object qrconsultaprodutoPRECOVENDA: TFloatField
      FieldName = 'PRECOVENDA'
      DisplayFormat = '###,###,##0.00'
    end
    object qrconsultaprodutoDATA_ULTIMAVENDA: TDateTimeField
      FieldName = 'DATA_ULTIMAVENDA'
    end
    object qrconsultaprodutoESTOQUE: TFloatField
      FieldName = 'ESTOQUE'
    end
    object qrconsultaprodutoESTOQUEMINIMO: TFloatField
      FieldName = 'ESTOQUEMINIMO'
    end
    object qrconsultaprodutoCODALIQUOTA: TStringField
      FieldName = 'CODALIQUOTA'
      Size = 5
    end
    object qrconsultaprodutoAPLICACAO: TMemoField
      FieldName = 'APLICACAO'
      BlobType = ftMemo
    end
    object qrconsultaprodutoLOCALICAZAO: TStringField
      FieldName = 'LOCALICAZAO'
      Size = 50
    end
    object qrconsultaprodutoPESO: TFloatField
      FieldName = 'PESO'
    end
    object qrconsultaprodutoVALIDADE: TStringField
      FieldName = 'VALIDADE'
    end
    object qrconsultaprodutoCOMISSAO: TFloatField
      FieldName = 'COMISSAO'
    end
    object qrconsultaprodutoUSA_BALANCA: TIntegerField
      FieldName = 'USA_BALANCA'
    end
    object qrconsultaprodutoUSA_SERIAL: TIntegerField
      FieldName = 'USA_SERIAL'
    end
    object qrconsultaprodutoUSA_GRADE: TIntegerField
      FieldName = 'USA_GRADE'
    end
    object qrconsultaprodutoCODRECEITA: TStringField
      FieldName = 'CODRECEITA'
      Size = 6
    end
    object qrconsultaprodutoFOTO: TStringField
      FieldName = 'FOTO'
      Size = 80
    end
    object qrconsultaprodutoDATA_ULTIMACOMPRA_ANTERIOR: TDateTimeField
      FieldName = 'DATA_ULTIMACOMPRA_ANTERIOR'
    end
    object qrconsultaprodutoNOTAFISCAL_ANTERIOR: TStringField
      FieldName = 'NOTAFISCAL_ANTERIOR'
      Size = 6
    end
    object qrconsultaprodutoCODFORNECEDOR_ANTERIOR: TStringField
      FieldName = 'CODFORNECEDOR_ANTERIOR'
      Size = 6
    end
    object qrconsultaprodutoPRECOCUSTO_ANTERIOR: TFloatField
      FieldName = 'PRECOCUSTO_ANTERIOR'
    end
    object qrconsultaprodutoPRECOVENDA_ANTERIOR: TFloatField
      FieldName = 'PRECOVENDA_ANTERIOR'
    end
    object qrconsultaprodutoCUSTOMEDIO: TFloatField
      FieldName = 'CUSTOMEDIO'
    end
    object qrconsultaprodutoAUTO_APLICACAO: TStringField
      FieldName = 'AUTO_APLICACAO'
      Size = 60
    end
    object qrconsultaprodutoAUTO_COMPLEMENTO: TStringField
      FieldName = 'AUTO_COMPLEMENTO'
      Size = 60
    end
    object qrconsultaprodutoDATA_REMARCACAO_CUSTO: TDateTimeField
      FieldName = 'DATA_REMARCACAO_CUSTO'
    end
    object qrconsultaprodutoDATA_REMARCACAO_VENDA: TDateTimeField
      FieldName = 'DATA_REMARCACAO_VENDA'
    end
    object qrconsultaprodutoPRECO_PROMOCAO: TFloatField
      FieldName = 'PRECO_PROMOCAO'
    end
    object qrconsultaprodutoDATA_PROMOCAO: TDateTimeField
      FieldName = 'DATA_PROMOCAO'
    end
    object qrconsultaprodutoFIM_PROMOCAO: TDateTimeField
      FieldName = 'FIM_PROMOCAO'
    end
    object qrconsultaprodutoCST: TStringField
      FieldName = 'CST'
      Size = 10
    end
    object qrconsultaprodutoCLASSIFICACAO_FISCAL: TStringField
      FieldName = 'CLASSIFICACAO_FISCAL'
    end
    object qrconsultaprodutoNBM: TStringField
      FieldName = 'NBM'
    end
    object qrconsultaprodutoNCM: TStringField
      FieldName = 'NCM'
    end
    object qrconsultaprodutoALIQUOTA: TFloatField
      FieldName = 'ALIQUOTA'
    end
    object qrconsultaprodutoIPI: TFloatField
      FieldName = 'IPI'
    end
    object qrconsultaprodutoREDUCAO: TFloatField
      FieldName = 'REDUCAO'
    end
    object qrconsultaprodutoQTDE_EMBALAGEM: TFloatField
      FieldName = 'QTDE_EMBALAGEM'
    end
    object qrconsultaprodutoTIPO: TStringField
      FieldName = 'TIPO'
      Size = 30
    end
    object qrconsultaprodutoPESO_LIQUIDO: TFloatField
      FieldName = 'PESO_LIQUIDO'
    end
    object qrconsultaprodutoFARMACIA_CONTROLADO: TStringField
      FieldName = 'FARMACIA_CONTROLADO'
      Size = 1
    end
    object qrconsultaprodutoFARMACIA_APRESENTACAO: TIntegerField
      FieldName = 'FARMACIA_APRESENTACAO'
    end
    object qrconsultaprodutoFARMACIA_REGISTRO_MEDICAMENTO: TStringField
      FieldName = 'FARMACIA_REGISTRO_MEDICAMENTO'
    end
    object qrconsultaprodutoFARMACIA_PMC: TFloatField
      FieldName = 'FARMACIA_PMC'
    end
    object qrconsultaprodutoULTIMA_ALTERACAO: TDateTimeField
      FieldName = 'ULTIMA_ALTERACAO'
    end
    object qrconsultaprodutoULTIMA_CARGA: TDateTimeField
      FieldName = 'ULTIMA_CARGA'
    end
    object qrconsultaprodutoDATA_INVENTARIO: TDateTimeField
      FieldName = 'DATA_INVENTARIO'
    end
    object qrconsultaprodutoCUSTO_INVENTARIO: TFloatField
      FieldName = 'CUSTO_INVENTARIO'
    end
    object qrconsultaprodutoESTOQUE_INVENTARIO: TFloatField
      FieldName = 'ESTOQUE_INVENTARIO'
    end
    object qrconsultaprodutoESTOQUE_ANTERIOR: TFloatField
      FieldName = 'ESTOQUE_ANTERIOR'
    end
    object qrconsultaprodutoPRECOVENDA_NOVO: TFloatField
      FieldName = 'PRECOVENDA_NOVO'
    end
    object qrconsultaprodutoUSA_RENTABILIDADE: TIntegerField
      FieldName = 'USA_RENTABILIDADE'
    end
    object qrconsultaprodutoQUANTIDADE_MINIMA_FAB: TFloatField
      FieldName = 'QUANTIDADE_MINIMA_FAB'
    end
    object qrconsultaprodutoAPRESENTACAO: TStringField
      FieldName = 'APRESENTACAO'
      Size = 60
    end
    object qrconsultaprodutoSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrconsultaprodutoPRECOVENDA1: TFloatField
      FieldName = 'PRECOVENDA1'
    end
    object qrconsultaprodutoPRECOVENDA2: TFloatField
      FieldName = 'PRECOVENDA2'
    end
    object qrconsultaprodutoPRECOVENDA3: TFloatField
      FieldName = 'PRECOVENDA3'
    end
    object qrconsultaprodutoPRECOVENDA4: TFloatField
      FieldName = 'PRECOVENDA4'
    end
    object qrconsultaprodutoPRECOVENDA5: TFloatField
      FieldName = 'PRECOVENDA5'
    end
    object qrconsultaprodutoDESCONTO_PRECOVENDA: TFloatField
      FieldName = 'DESCONTO_PRECOVENDA'
    end
    object qrconsultaprodutoDATA_INVENTARIO_ATUAL: TDateTimeField
      FieldName = 'DATA_INVENTARIO_ATUAL'
    end
    object qrconsultaprodutoCUSTO_INVENTARIO_ATUAL: TFloatField
      FieldName = 'CUSTO_INVENTARIO_ATUAL'
    end
    object qrconsultaprodutoESTOQUE_INVENTARIO_ATUAL: TFloatField
      FieldName = 'ESTOQUE_INVENTARIO_ATUAL'
    end
    object qrconsultaprodutoMARGEM_MINIMA: TFloatField
      FieldName = 'MARGEM_MINIMA'
    end
    object qrconsultaprodutoPISCOFINS: TStringField
      FieldName = 'PISCOFINS'
      Size = 1
    end
    object qrconsultaprodutoREFERENCIA_FORNECEDOR: TStringField
      FieldName = 'REFERENCIA_FORNECEDOR'
      Size = 30
    end
    object qrconsultaprodutoCOMISSAO1: TFloatField
      FieldName = 'COMISSAO1'
    end
    object qrconsultaprodutoMARGEM_DESCONTO: TFloatField
      FieldName = 'MARGEM_DESCONTO'
    end
    object qrconsultaprodutoTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 6
    end
    object qrconsultaprodutoCOR: TStringField
      FieldName = 'COR'
      Size = 6
    end
    object qrconsultaprodutoINCIDENCIA_PISCOFINS: TStringField
      FieldName = 'INCIDENCIA_PISCOFINS'
      Size = 30
    end
    object qrconsultaprodutoVEIC_CHASSI: TStringField
      FieldName = 'VEIC_CHASSI'
      Size = 50
    end
    object qrconsultaprodutoVEIC_SERIE: TStringField
      FieldName = 'VEIC_SERIE'
      Size = 50
    end
    object qrconsultaprodutoVEIC_POTENCIA: TStringField
      FieldName = 'VEIC_POTENCIA'
      Size = 50
    end
    object qrconsultaprodutoVEIC_PESO_LIQUIDO: TStringField
      FieldName = 'VEIC_PESO_LIQUIDO'
      Size = 15
    end
    object qrconsultaprodutoVEIC_PESO_BRUTO: TStringField
      FieldName = 'VEIC_PESO_BRUTO'
      Size = 15
    end
    object qrconsultaprodutoVEIC_TIPO_COMBUSTIVEL: TStringField
      FieldName = 'VEIC_TIPO_COMBUSTIVEL'
    end
    object qrconsultaprodutoVEIC_RENAVAM: TStringField
      FieldName = 'VEIC_RENAVAM'
      Size = 50
    end
    object qrconsultaprodutoVEIC_ANO_FABRICACAO: TIntegerField
      FieldName = 'VEIC_ANO_FABRICACAO'
    end
    object qrconsultaprodutoVEIC_ANO_MODELO: TIntegerField
      FieldName = 'VEIC_ANO_MODELO'
    end
    object qrconsultaprodutoVEIC_TIPO: TStringField
      FieldName = 'VEIC_TIPO'
      Size = 50
    end
    object qrconsultaprodutoVEIC_TIPO_PINTURA: TStringField
      FieldName = 'VEIC_TIPO_PINTURA'
      Size = 15
    end
    object qrconsultaprodutoVEIC_COD_COR: TStringField
      FieldName = 'VEIC_COD_COR'
      Size = 15
    end
    object qrconsultaprodutoVEIC_COR: TStringField
      FieldName = 'VEIC_COR'
      Size = 30
    end
    object qrconsultaprodutoVEIC_VIN: TStringField
      FieldName = 'VEIC_VIN'
      Size = 10
    end
    object qrconsultaprodutoVEIC_NUMERO_MOTOR: TStringField
      FieldName = 'VEIC_NUMERO_MOTOR'
      Size = 50
    end
    object qrconsultaprodutoVEIC_CMKG: TStringField
      FieldName = 'VEIC_CMKG'
      Size = 15
    end
    object qrconsultaprodutoVEIC_CM3: TStringField
      FieldName = 'VEIC_CM3'
      Size = 15
    end
    object qrconsultaprodutoVEIC_DISTANCIA_EIXO: TStringField
      FieldName = 'VEIC_DISTANCIA_EIXO'
      Size = 15
    end
    object qrconsultaprodutoVEIC_COD_MARCA: TStringField
      FieldName = 'VEIC_COD_MARCA'
      Size = 15
    end
    object qrconsultaprodutoVEIC_ESPECIE: TStringField
      FieldName = 'VEIC_ESPECIE'
      Size = 50
    end
    object qrconsultaprodutoVEIC_CONDICAO: TStringField
      FieldName = 'VEIC_CONDICAO'
      Size = 50
    end
    object qrconsultaprodutoLOTE_FABRICACAO: TStringField
      FieldName = 'LOTE_FABRICACAO'
    end
    object qrconsultaprodutoLOTE_VALIDADE: TDateTimeField
      FieldName = 'LOTE_VALIDADE'
    end
    object qrconsultaprodutoMARGEM_AGREGADA: TFloatField
      FieldName = 'MARGEM_AGREGADA'
    end
    object qrconsultaprodutoCODBARRA_NOVARTIS: TStringField
      FieldName = 'CODBARRA_NOVARTIS'
      Size = 13
    end
    object qrconsultaprodutoFARMACIA_DCB: TStringField
      FieldName = 'FARMACIA_DCB'
    end
    object qrconsultaprodutoFARMACIA_ABCFARMA: TStringField
      FieldName = 'FARMACIA_ABCFARMA'
      Size = 10
    end
    object qrconsultaprodutoFARMACIA_APRESENTACAO_CAIXA: TStringField
      FieldName = 'FARMACIA_APRESENTACAO_CAIXA'
      Size = 10
    end
    object qrconsultaprodutoFARMACIA_PRINCIPIOATIVO: TStringField
      FieldName = 'FARMACIA_PRINCIPIOATIVO'
      Size = 30
    end
    object qrconsultaprodutoULTIMA_COMPRA: TDateTimeField
      FieldName = 'ULTIMA_COMPRA'
    end
    object qrconsultaprodutoFARMACIA_DATAVIGENCIA: TDateTimeField
      FieldName = 'FARMACIA_DATAVIGENCIA'
    end
    object qrconsultaprodutoFARMACIA_TIPO: TStringField
      FieldName = 'FARMACIA_TIPO'
      Size = 1
    end
    object qrconsultaprodutoUSA_COMBUSTIVEL: TStringField
      FieldName = 'USA_COMBUSTIVEL'
      Size = 1
    end
    object qrconsultaprodutoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Size = 30
    end
    object qrconsultaprodutoPERDA: TFloatField
      FieldName = 'PERDA'
    end
    object qrconsultaprodutoCOMPOSICAO1: TStringField
      FieldName = 'COMPOSICAO1'
      Size = 30
    end
    object qrconsultaprodutoCOMPOSICAO2: TStringField
      FieldName = 'COMPOSICAO2'
      Size = 30
    end
    object qrconsultaprodutoIAT: TStringField
      FieldName = 'IAT'
      Size = 1
    end
    object qrconsultaprodutoIPPT: TStringField
      FieldName = 'IPPT'
      Size = 1
    end
    object qrconsultaprodutoSITUACAO_TRIBUTARIA: TStringField
      FieldName = 'SITUACAO_TRIBUTARIA'
      Size = 3
    end
    object qrconsultaprodutoFLAG_SIS: TStringField
      FieldName = 'FLAG_SIS'
      Size = 10
    end
    object qrconsultaprodutoFLAG_ACEITO: TStringField
      FieldName = 'FLAG_ACEITO'
      Size = 10
    end
    object qrconsultaprodutoFLAG_EST: TStringField
      FieldName = 'FLAG_EST'
      Size = 10
    end
    object qrconsultaprodutoCSOSN: TStringField
      FieldName = 'CSOSN'
      Size = 60
    end
    object qrconsultaprodutoMODBCST: TSmallintField
      FieldName = 'MODBCST'
    end
    object qrconsultaprodutoPMVAST: TFloatField
      FieldName = 'PMVAST'
    end
    object qrconsultaprodutoPREDCST: TFloatField
      FieldName = 'PREDCST'
    end
    object qrconsultaprodutoVBCST: TFloatField
      FieldName = 'VBCST'
    end
    object qrconsultaprodutoPICMSST: TFloatField
      FieldName = 'PICMSST'
    end
    object qrconsultaprodutoVICMSST: TFloatField
      FieldName = 'VICMSST'
    end
    object qrconsultaprodutoPCREDSN: TFloatField
      FieldName = 'PCREDSN'
    end
    object qrconsultaprodutoVCREDICMSSN: TFloatField
      FieldName = 'VCREDICMSSN'
    end
    object qrconsultaprodutoCSTPIS: TIntegerField
      FieldName = 'CSTPIS'
    end
    object qrconsultaprodutoCSTCOFINS: TIntegerField
      FieldName = 'CSTCOFINS'
    end
    object qrconsultaprodutoIPISEMTABELA: TStringField
      FieldName = 'IPISEMTABELA'
      Size = 1
    end
    object qrconsultaprodutoINCIDENCIA_IPI: TStringField
      FieldName = 'INCIDENCIA_IPI'
      Size = 30
    end
    object qrconsultaprodutoID: TIntegerField
      FieldName = 'ID'
    end
    object qrconsultaprodutoCODPRODUTO: TStringField
      FieldName = 'CODPRODUTO'
      Size = 10
    end
    object qrconsultaprodutoCODFILIAL: TStringField
      FieldName = 'CODFILIAL'
      Size = 10
    end
    object qrconsultaprodutoESTOQUE_INICIAL: TFloatField
      FieldName = 'ESTOQUE_INICIAL'
    end
    object qrconsultaprodutoENTRADAS: TFloatField
      FieldName = 'ENTRADAS'
    end
    object qrconsultaprodutoSAIDAS: TFloatField
      FieldName = 'SAIDAS'
    end
    object qrconsultaprodutoESTOQUE_ATUAL: TFloatField
      FieldName = 'ESTOQUE_ATUAL'
      DisplayFormat = '###,###,##0.000'
    end
    object qrconsultaprodutoULTIMA_ENTRADA: TDateTimeField
      FieldName = 'ULTIMA_ENTRADA'
    end
    object qrconsultaprodutoULTIMA_SAIDA: TDateTimeField
      FieldName = 'ULTIMA_SAIDA'
    end
    object qrconsultaprodutoNOTA_FISCAL: TStringField
      FieldName = 'NOTA_FISCAL'
      Size = 10
    end
    object qrconsultaprodutoID_1: TIntegerField
      FieldName = 'ID_1'
    end
  end
  object dspconsultaproduto: TDataSource
    DataSet = qrconsultaproduto
    Left = 352
    Top = 136
  end
end
