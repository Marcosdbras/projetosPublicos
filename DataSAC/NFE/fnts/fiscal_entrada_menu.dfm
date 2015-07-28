object frmfiscal_entrada_menu: Tfrmfiscal_entrada_menu
  Left = 65
  Top = 70
  BorderStyle = bsDialog
  Caption = 'NOTAS FISCAIS DE ENTRADA | Rela'#231#227'o'
  ClientHeight = 437
  ClientWidth = 708
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object ViewSplit1: TViewSplit
    Left = 0
    Top = 35
    Width = 708
    Height = 3
    Cursor = crVSplit
    Align = alTop
  end
  object ViewSplit2: TViewSplit
    Left = 0
    Top = 401
    Width = 708
    Height = 3
    Cursor = crVSplit
    Align = alTop
  end
  object FlatPanel1: TFlatPanel
    Left = 0
    Top = 0
    Width = 708
    Height = 35
    ParentColor = True
    ColorHighLight = clBtnFace
    ColorShadow = clBtnFace
    Align = alTop
    TabOrder = 0
    object Label2: TLabel
      Left = 16
      Top = 13
      Width = 48
      Height = 13
      Caption = 'Per'#237'odo:'
    end
    object Label3: TLabel
      Left = 176
      Top = 13
      Width = 7
      Height = 13
      Caption = 'a'
    end
    object DateEdit1: TDateEdit
      Left = 72
      Top = 8
      Width = 96
      Height = 21
      NumGlyphs = 2
      TabOrder = 0
      Text = '01/01/0001'
      OnKeyPress = DateEdit1KeyPress
    end
    object DateEdit2: TDateEdit
      Left = 192
      Top = 8
      Width = 95
      Height = 21
      NumGlyphs = 2
      TabOrder = 1
      Text = '31/12/2100'
      OnKeyPress = DateEdit1KeyPress
    end
    object BitBtn1: TBitBtn
      Left = 295
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Filtrar'
      TabOrder = 2
      OnClick = BitBtn1Click
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFCFDFEE7EEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBFD6494BA2166
        9C80A8C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFAFCFD6E9BC1548CBB88B4DC175E96FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFD7AA3C96396C49CC0E36598
        C63070A4FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEE8CEB9DAB292D2A57FCFA07BD1
        A684ADA09874A1CBAACAE775A3CD3F7AAEDEE8F1FFFFFFFFFFFFFFFFFFFFFEFE
        E8C9AFE7C8ADF4E0CCF6E4D2F6E4D0F2DCC7DEB99BC6A79085ADD44F86BAE1EA
        F3FFFFFFFFFFFFFFFFFFFFFFFFF1DBC7ECCFB6F7E7D8F4DDC7F2D7BCF2D5BAF3
        DAC1F6E3D1DEBA9C9F9694E3ECF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDCDB1
        F6E6D6F5E0CBF3DAC1F3D9BFF2D7BCF2D6BAF3DAC1F2DDC8D1A787FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFEFCDAEF8EBDEF4DEC7F4DCC5F3DBC2F3D9C0F2
        D8BDF2D6BCF7E5D2D2A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D2B4
        F8ECE0F5E0CBF4DEC8F4DDC6F3DBC3F3DAC1F3D9BFF7E6D5D6AA86FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFF7DBC0F8EADDF6E6D5F5E0CBF4DFC9F4DDC7F4
        DCC4F5E0CAF4E1CFDEB898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE9D7
        F7E1CBF9EDE2F6E6D5F5E1CDF5E0CAF5E2CFF8E9DCEBCEB4EBD3BEFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAE3CDF8E1CCF9EBDDF8EDE1F8ECE1F7
        E8D9EFD4BCECCFB6FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFBEAD9F9DCC2F5D5B8F3D2B4F2D3B7F4E0CDFFFFFEFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    end
  end
  object Grid: TcxGrid
    Left = 0
    Top = 38
    Width = 708
    Height = 363
    Align = alTop
    TabOrder = 1
    object grid_qrnota: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsnota
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skCount
          FieldName = 'NOTAFISCAL'
          sum = grid_qrnotaDATA
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      Styles.Header = cxStyle34
      object grid_qrnotaDATA: TcxGridDBColumn
        DataBinding.FieldName = 'DATA'
        HeaderAlignmentHorz = taCenter
        Width = 89
      end
      object grid_qrnotaNOTAFISCAL: TcxGridDBColumn
        Caption = 'N'#218'MERO'
        DataBinding.FieldName = 'NOTAFISCAL'
        HeaderAlignmentHorz = taCenter
        Width = 71
      end
      object grid_qrnotaMODELO_NF: TcxGridDBColumn
        Caption = 'MODELO'
        DataBinding.FieldName = 'MODELO_NF'
        HeaderAlignmentHorz = taCenter
        Options.Filtering = False
        Width = 61
      end
      object grid_qrnotaOBS2: TcxGridDBColumn
        Caption = 'FORNECEDOR'
        DataBinding.FieldName = 'OBS2'
        HeaderAlignmentHorz = taCenter
        Width = 356
      end
      object grid_qrnotaTOTAL_GERAL: TcxGridDBColumn
        Caption = 'TOTAL-R$'
        DataBinding.FieldName = 'VALOR_CONTABIL'
        Width = 107
      end
    end
    object cvPeople: TcxGridDBCardView
      NavigatorButtons.ConfirmDelete = False
      DataController.DetailKeyFieldNames = 'FilmID'
      DataController.KeyFieldNames = 'ID'
      DataController.MasterKeyFieldNames = 'ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cvPeopleName: TcxGridDBCardViewRow
        DataBinding.FieldName = 'Name'
        Kind = rkCaption
      end
      object cvPeoplePersonLineID: TcxGridDBCardViewRow
        Caption = 'Occupation'
        DataBinding.FieldName = 'PersonLineID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'NAME'
          end>
      end
      object cvPeopleFIRSTNAME: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FIRSTNAME'
      end
      object cvPeopleSECONDNAME: TcxGridDBCardViewRow
        DataBinding.FieldName = 'SECONDNAME'
      end
      object cvPeopleNICKNAME: TcxGridDBCardViewRow
        DataBinding.FieldName = 'NICKNAME'
      end
      object cvPeopleBIRTHNAME: TcxGridDBCardViewRow
        DataBinding.FieldName = 'BIRTHNAME'
      end
      object cvPeopleDATEOFBIRTH: TcxGridDBCardViewRow
        DataBinding.FieldName = 'DATEOFBIRTH'
      end
      object cvPeopleLOCATIONOFBIRTH: TcxGridDBCardViewRow
        DataBinding.FieldName = 'LOCATIONOFBIRTH'
      end
      object cvPeopleBIOGRAPHY: TcxGridDBCardViewRow
        DataBinding.FieldName = 'BIOGRAPHY'
        PropertiesClassName = 'TcxBlobEditProperties'
        Properties.BlobEditKind = bekMemo
      end
      object cvPeopleHOMEPAGE: TcxGridDBCardViewRow
        DataBinding.FieldName = 'HOMEPAGE'
      end
      object cvPeopleID: TcxGridDBCardViewRow
        DataBinding.FieldName = 'ID'
        Visible = False
      end
      object cvPeopleFilmID: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FilmID'
        Visible = False
      end
      object cvPeopleBIRTHCOUNTRY: TcxGridDBCardViewRow
        DataBinding.FieldName = 'BIRTHCOUNTRY'
        Visible = False
      end
      object cvPeopleGender: TcxGridDBCardViewRow
        DataBinding.FieldName = 'Gender'
        Visible = False
      end
    end
    object grid_qrproduto: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DetailKeyFieldNames = 'CODCLIENTE'
      DataController.MasterKeyFieldNames = 'CODIGO'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      Styles.Background = cxStyle38
      Styles.Content = cxStyle39
      Styles.ContentEven = cxStyle40
      Styles.ContentOdd = cxStyle41
      Styles.FilterBox = cxStyle43
      Styles.Inactive = cxStyle48
      Styles.IncSearch = cxStyle49
      Styles.Footer = cxStyle44
      Styles.Group = cxStyle45
      Styles.GroupByBox = cxStyle46
      Styles.Header = cxStyle47
      Styles.Indicator = cxStyle50
      object grid_qrprodutoCODPRODUTO: TcxGridDBColumn
        Caption = 'C'#211'DIGO'
        DataBinding.FieldName = 'CODPRODUTO'
        Width = 73
      end
      object grid_qrprodutoColumn1: TcxGridDBColumn
        DataBinding.FieldName = 'PRODUTO'
        HeaderAlignmentHorz = taCenter
        Width = 209
      end
      object grid_qrprodutoQTDE: TcxGridDBColumn
        Caption = 'QTDE.'
        DataBinding.FieldName = 'QTDE'
        HeaderAlignmentHorz = taCenter
        Options.Filtering = False
        Width = 56
      end
      object grid_qrprodutoUNIDADE: TcxGridDBColumn
        Caption = 'UND.'
        DataBinding.FieldName = 'UNIDADE'
        Options.Filtering = False
        Width = 34
      end
      object grid_qrprodutoUNITARIO: TcxGridDBColumn
        Caption = 'UNIT'#193'RIO-R$'
        DataBinding.FieldName = 'UNITARIO'
        HeaderAlignmentHorz = taCenter
        Options.Filtering = False
        Width = 91
      end
      object grid_qrprodutoDESCONTO: TcxGridDBColumn
        Caption = 'DESC-R$'
        DataBinding.FieldName = 'DESCONTO'
        HeaderAlignmentHorz = taCenter
        Options.Filtering = False
      end
      object grid_qrprodutoACRESCIMO: TcxGridDBColumn
        Caption = 'ACRESC.-R$'
        DataBinding.FieldName = 'ACRESCIMO'
        HeaderAlignmentHorz = taCenter
        Options.Filtering = False
      end
      object grid_qrprodutoTOTAL: TcxGridDBColumn
        Caption = 'TOTAL-R$'
        DataBinding.FieldName = 'TOTAL'
        HeaderAlignmentHorz = taCenter
        Options.Filtering = False
      end
    end
    object cvPhotos: TcxGridDBCardView
      NavigatorButtons.ConfirmDelete = False
      DataController.DetailKeyFieldNames = 'FILMID'
      DataController.KeyFieldNames = 'ID'
      DataController.MasterKeyFieldNames = 'ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.CellAutoHeight = True
      object cvPhotosID: TcxGridDBCardViewRow
        DataBinding.FieldName = 'ID'
        Visible = False
      end
      object cvPhotosFILMID: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FILMID'
        Visible = False
      end
      object cvPhotosSCREEN: TcxGridDBCardViewRow
        DataBinding.FieldName = 'SCREEN'
        PropertiesClassName = 'TcxImageProperties'
        Properties.GraphicClassName = 'TJPEGImage'
        Properties.Stretch = True
        Options.ShowCaption = False
      end
      object cvPhotosICON: TcxGridDBCardViewRow
        DataBinding.FieldName = 'ICON'
        Visible = False
      end
    end
    object grid_qrreceber: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsitem
      DataController.DetailKeyFieldNames = 'CODCLIENTE'
      DataController.MasterKeyFieldNames = 'NOTAFISCAL'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      Styles.Background = cxStyle30
      Styles.Content = cxStyle31
      Styles.ContentEven = cxStyle32
      Styles.ContentOdd = cxStyle33
      object grid_qrreceberColumn1: TcxGridDBColumn
        Caption = 'VENDA/N'#186
        DataBinding.FieldName = 'CODIGO'
      end
      object grid_qrreceberDATA_EMISSAO: TcxGridDBColumn
        Caption = 'DATA COMPRA'
        DataBinding.FieldName = 'DATA_EMISSAO'
        Width = 110
      end
      object grid_qrreceberDATA_VENCIMENTO: TcxGridDBColumn
        Caption = 'DATA VENCIMENTO'
        DataBinding.FieldName = 'DATA_VENCIMENTO'
        Width = 141
      end
      object grid_qrreceberVALOR_ATUAL: TcxGridDBColumn
        Caption = 'VALOR - R$'
        DataBinding.FieldName = 'VALOR_ATUAL'
        Options.Editing = False
        Options.Filtering = False
        Width = 91
      end
    end
    object grid_produto_venda2: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DetailKeyFieldNames = 'CODNOTA'
      DataController.MasterKeyFieldNames = 'CODVENDA'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      Styles.Background = cxStyle35
      Styles.Content = cxStyle36
      Styles.Header = cxStyle37
      object grid_produto_venda2CODPRODUTO: TcxGridDBColumn
        Caption = 'C'#211'DIGO'
        DataBinding.FieldName = 'CODPRODUTO'
        Options.Filtering = False
        Width = 55
      end
      object grid_produto_venda2Column1: TcxGridDBColumn
        DataBinding.FieldName = 'PRODUTO'
        Options.Filtering = False
        Width = 201
      end
      object grid_produto_venda2QTDE: TcxGridDBColumn
        Caption = 'QTDE.'
        DataBinding.FieldName = 'QTDE'
        Options.Filtering = False
        Width = 50
      end
      object grid_produto_venda2UNITARIO: TcxGridDBColumn
        Caption = 'UNIT'#193'RIO-R$'
        DataBinding.FieldName = 'UNITARIO'
        Options.Filtering = False
        Width = 86
      end
      object grid_produto_venda2UNIDADE: TcxGridDBColumn
        Caption = 'UND.'
        DataBinding.FieldName = 'UNIDADE'
        Options.Filtering = False
        Width = 43
      end
      object grid_produto_venda2DESCONTO: TcxGridDBColumn
        Caption = 'DESC.-R$'
        DataBinding.FieldName = 'DESCONTO'
        Options.Filtering = False
      end
      object grid_produto_venda2ACRESCIMO: TcxGridDBColumn
        Caption = 'ACRESC.-R$'
        DataBinding.FieldName = 'ACRESCIMO'
        Options.Filtering = False
      end
      object grid_produto_venda2TOTAL: TcxGridDBColumn
        Caption = 'TOTAL-R$'
        DataBinding.FieldName = 'TOTAL'
        Options.Filtering = False
      end
    end
    object GRID_QRITEM: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsitem
      DataController.DetailKeyFieldNames = 'CODNOTA'
      DataController.MasterKeyFieldNames = 'CODIGO'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      Styles.Background = cxStyle6
      Styles.Content = cxStyle7
      Styles.ContentOdd = cxStyle13
      Styles.Group = cxStyle8
      Styles.Header = cxStyle11
      object GRID_QRITEMCD_PRODUTO: TcxGridDBColumn
        Caption = 'C'#211'DIGO'
        DataBinding.FieldName = 'CD_PRODUTO'
        Width = 88
      end
      object GRID_QRITEMPRODUTO: TcxGridDBColumn
        DataBinding.FieldName = 'PRODUTO'
        Width = 325
      end
      object GRID_QRITEMAPR_UND: TcxGridDBColumn
        Caption = 'UN.'
        DataBinding.FieldName = 'APR_UND'
        Options.Filtering = False
        Width = 30
      end
      object GRID_QRITEMQUANTIDADE: TcxGridDBColumn
        Caption = 'QTDE.'
        DataBinding.FieldName = 'QUANTIDADE'
        Options.Filtering = False
      end
      object GRID_QRITEMSUBTOTAL: TcxGridDBColumn
        Caption = 'TOTAL'
        DataBinding.FieldName = 'SUBTOTAL'
        Options.Filtering = False
        Width = 86
      end
      object GRID_QRITEMALIQUOTA_ICMS: TcxGridDBColumn
        Caption = 'AL'#205'QUOTA'
        DataBinding.FieldName = 'ALIQUOTA_ICMS'
        Options.Filtering = False
        Width = 65
      end
    end
    object grid_nota: TcxGridLevel
      GridView = grid_qrnota
      Options.DetailTabsPosition = dtpTop
      object GRID_ITEM: TcxGridLevel
        GridView = GRID_QRITEM
      end
    end
  end
  object bincluir: TBitBtn
    Left = 8
    Top = 408
    Width = 81
    Height = 25
    Caption = 'Incluir'
    TabOrder = 2
    OnClick = bincluirClick
    Glyph.Data = {
      DA050000424DDA05000000000000360000002800000019000000130000000100
      180000000000A4050000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFF00FFFFFF8F45398F45398F45398F45398F45398F45398F45398F45
      398F45398F45398F45398F45398F45398F45398F45398F45398F45398F45398F
      45398F45398F45398F45398F4539FFFFFF00FFFFFF8F4539ECE3E0ECE2DFEBE0
      DEECE2DFECE2DFECE2DFECE3E0ECE2DFEBE0DEECE2DFECE3E0ECE3E0ECE2DFEB
      E0DEEBE0DEECE2DFECE2DFECE2DFECE2DFECE2DFECE2DF8F4539FFFFFF00FFFF
      FF8F4539ECE3E0AE6A37AC6734A66031A25B2D9C552B965028914B238A481D84
      441C7D411F763E22713D236D3B256838266536276437266438256537266A3A25
      ECE2DF8F4539FFFFFF00FFFFFF8F4539ECE2DFB16D39AE6A37AA6533A6602FA1
      5A2C9B542A955026904B2388471D81431C793F22733C256C3B24663826643726
      6136255E3526613625643825EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE2DFB5
      723BB36F3AB06C38AC6734A86231A35D2D9D562A985228924D248A481D82441B
      794020733D246C3A266537266035275E35275E3527613626EBDFDD8F4539FFFF
      FF00FFFFFF8F4539ECE3E0B9763CB7753CCA8D50FFFFFFFFFFFFB7753DA66030
      A25B2D9C552BCFA887FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB59E886136255E35
      26623626EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE2DFBC7A3EBC7A3ECE9254
      FFFFFFFFFFFFBD7C41B06C39AC6737A86232B16E3BF8F6F5FFFFFFE0D7CCC8B1
      9AC5AE9A9C7758663726623626633726EBE0DE8F4539FFFFFF00FFFFFF8F4539
      ECE3E0C17F3DC1803FD39857FFFFFFFFFFFFCD904EC28144BF7E42B36F3BAE69
      35BC7C48F1EEEBFBFAF9BF957582431D783F226F3C236A3A25693925EBDFDD8F
      4539FFFFFF00FFFFFF8F4539ECE3E0C6853DC6853ED89D55FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFBD7B3FB6733CAF6B39B8763FE8E0D6FFFFFFCDB29785461C7B
      4120733D23723D23EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE3E0C8873CC888
      3EDCA153FFFFFFFFFFFFE4B57BE1AC69E0AA69C1803FBF7E41C38344BA7941B0
      6C38E8E0D7FFFFFFAE794F87461C7F411E7C4020ECE2DF8F4539FFFFFF00FFFF
      FF8F4539ECE3E0CB8B3BCC8C3ADFA551FFFFFFFFFFFFE8BF88E5B67CE4B67CD7
      9C54E0AB71FFFFFFEADED0C3854CE5D9CBFFFFFFBE8E66904B228A471E86451C
      ECE2DF8F4539FFFFFF00FFFFFF8F4539ECE2DFCD8D38CF8F38E0A652FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFE8BF8DC58442E8D3B9FFFFFFFFFFFFFFFFFFE1CFBA
      A45F2E98512A934D268F4B22EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE3E0CF
      8F36D09037D29237D8993FD8993ED59741D39442D19344C98942C17F3EBC7A3E
      C28142C7894EB8753DA96434A45E2E9F582D9B5429985128EBE0DE8F4539FFFF
      FF00FFFFFF8F4539ECE2DFD09036D09037CF8F38CE8E38CD8D39CA8A3BC8873D
      C6853EC3833EBF7E3FBC7A3EB9773DB6733CB26F3AAE6937AA6533A55F30A25B
      2C9F582CECE2DF8F4539FFFFFF00FFFFFF8F4539ECE2DFCF8F38CF8F38CE8E39
      CD8D3ACB8B3CC8883DC6863DC5843EC3823FC07F3FBD7B3FBA783DB8763DB572
      3CB16E3AAE6937AB6634A86231A6602FEBE0DE8F4539FFFFFF00FFFFFF8F4539
      EBE0DEEBE0DEEBDFDDEBE0DEEBE0DEEBE0DEEBE0DEEBE0DEEBDFDDEBE0DEEBE0
      DEEBE0DEEBE0DEEBDFDDEBDFDDEBE0DEEBE0DEEBDFDDEBE0DEEBDFDDEBDFDD8F
      4539FFFFFF00FFFFFF8F45398F45398F45398F45398F45398F45398F45398F45
      398F45398F45398F45398F45398F45398F45398F45398F45398F45398F45398F
      45398F45398F45398F45398F4539FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
  end
  object bfechar: TBitBtn
    Left = 600
    Top = 408
    Width = 99
    Height = 25
    Caption = 'Fechar'
    TabOrder = 4
    OnClick = bfecharClick
    Glyph.Data = {
      DA050000424DDA05000000000000360000002800000019000000130000000100
      180000000000A4050000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFF00FFFFFF406B00406B00406B00406B00406B00406B00406B00406B
      00406B00406B00406B00406B00406B00406B00406B00406B00406B00406B0040
      6B00406B00406B00406B00406B00FFFFFF00FFFFFF406B00ECE3E0ECE2DFEBE2
      DFECE2DFECE2DFECE2DFECE3E0ECE2DFEBE2DFECE2DFECE3E0ECE3E0ECE2DFEB
      E2DFEBE2DFECE2DFECE2DFECE2DFECE2DFECE2DFECE2DF406B00FFFFFF00FFFF
      FF416C00ECE3E0539300538E004F87004C8000487900457200416C003F65003C
      61003B5D003A58003A5300395200374D00354B00354A00354A00354B00374E00
      ECE2DF416C00FFFFFF00FFFFFF406B00ECE2DF559700539200528D004F86004C
      7F00487700457000426B003F64003C5F003B5A003A5500385100374D00364B00
      354800344707354800354A00EBE2DF406B00FFFFFF00FFFFFF406B00ECE2DF5A
      9E00589900559500538F005089004D8100487900477400466E00476E003C6100
      3B5B003B5600395200374E003B5300354800344800354A00EBE1DE406B00FFFF
      FF00FFFFFF416C00ECE3E05EA300A2C36EFFFFFFFFFFFFFFFFFFFFFFFF699900
      9CB866FBFBFAFFFFFFD8DFCE5174003C5E008D9E65F4F4F2FFFFFFC8CEBB3B54
      00364B00EBE2DF416C00FFFFFF00FFFFFF406B00ECE2DF63A800A3C572FFFFFF
      BED39BAAC87BA9C6796EA400FDFDFCD1DDC27EA324FAFBFAB1C28C608200FFFF
      FFD3D9C7AAB58DFFFFFF92A071374E00EBE2DF406B00FFFFFF00FFFFFF416C00
      ECE3E068AD00A5C876FFFFFFA0C46D83B6327EB21B65A60082B22178AB00A6C2
      74FFFFFFC1D1A491AC59FFFFFF6A89283C5D009BAA765B7323385200EBE1DE41
      6C00FFFFFF00FFFFFF406B00ECE3E070B200A7C979FFFFFFFFFFFFFFFFFFEAF0
      E56AAE00A0C46DF4F8F4FFFFFFF3F6F275A400ADC481FFFFFF5C82003F64003C
      5E003A59003B5800EBE2DF406B00FFFFFF00FFFFFF406B00ECE3E074B426A7CA
      7AFFFFFF9DC56B85BA4683BA4372B31DF5F8F4E4ECDD9CC16598BD5B6FA4009A
      BA60FFFFFF87A545487200AFBE8C6C892E3C5E00ECE2DF406B00FFFFFF00FFFF
      FF416C00ECE3E077B736A7C97AFFFFFFE5EDDEDDE9D2DDE9D17EB83CD9E6CBE6
      EDDFCADBB0FFFFFF94BB54619B00F4F6F3FAFBFAEDEFE9FFFFFF7895383E6400
      ECE2DF416C00FFFFFF00FFFFFF406B00ECE2DF78B73A95C160BBD498BBD498BB
      D498BAD4987CB73982B93EB4CF8BC7D9AAA3C6725EA100589A006B9F00B3C98B
      C0CFA084A440457000436D00EBE2DF406B00FFFFFF00FFFFFF416C00ECE3E078
      B83B7BB93F7BB93F7AB83D79B83A78B73675B52C72B3186DB00067AD0063A800
      5FA2005A9D00559500518D004E84004B7E00487800467400EBE2DF416C00FFFF
      FF00FFFFFF406B00ECE2DF7AB83D7BB93F7AB83D7AB83C78B73676B62F73B422
      71B2006CAF0067AC0064A8005FA3005C9E00579800549100518C004E84004B7F
      004A7C00ECE2DF406B00FFFFFF00FFFFFF406B00ECE2DF7AB83D7AB83E7AB83C
      79B73877B63275B52A72B3186FB1006BAE0067AC0064A80060A4005DA1005A9C
      00569600539100518C004F86004E8300EBE2DF406B00FFFFFF00FFFFFF406B00
      EBE2DFEBE2DFEBE1DEEBE2DFEBE2DFEBE2DFEBE2DFEBE2DFEBE1DEEBE2DFEBE2
      DFEBE2DFEBE2DFEBE1DEEBE1DEEBE2DFEBE2DFEBE1DEEBE2DFEBE1DEEBE1DE40
      6B00FFFFFF00FFFFFF406B00406B00406B00406B00406B00406B00406B00406B
      00406B00406B00406B00406B00406B00406B00406B00406B00406B00406B0040
      6B00406B00406B00406B00406B00FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
  end
  object bexcluir: TBitBtn
    Left = 88
    Top = 408
    Width = 81
    Height = 25
    Caption = 'Excluir'
    TabOrder = 5
    OnClick = bexcluirClick
    Glyph.Data = {
      DA050000424DDA05000000000000360000002800000019000000130000000100
      180000000000A4050000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFF00FFFFFF1838B21838B21838B21838B21838B21838B21838B21838
      B21838B21838B21838B21838B21838B21838B21838B21838B21838B21838B218
      38B21838B21838B21838B21838B2FFFFFF00FFFFFF1838B2F1F1F9EFF0F8EEEF
      F8EFF0F8EFF0F8EFF0F8F1F1F9EFF0F8EEEFF8EFF0F8F1F1F9F1F1F9EFF0F8EE
      EFF8EEEFF8EFF0F8EFF0F8EFF0F8EFF0F8EFF0F8EFF0F81838B2FFFFFF00FFFF
      FF1839B3F1F1F95366EA5163E34D5ED94959CC4554C0414FB33D4AA73C479C3A
      439137408A353D82343B7A333A7531366E30356B31366930356830356A31376F
      EFF0F81839B3FFFFFF00FFFFFF1838B2EFF0F85568ED5466E85062E14C5DD648
      58C94452BC404EB03E4AA53C469839428E363F86343B7D333A7532376E31366A
      2F34672F33642F346631366AEEEFF81838B2FFFFFF00FFFFFF1838B2EFF0F85B
      6EF1586BEF5668EA5264E44E5FDA4A5ACE4554C14350B53F4CA93C479C394291
      374087353D7E333A7631366D2F34682F34662F3466303568EDEEF71838B2FFFF
      FF00FFFFFF1839B3F1F1F96173F39DA6F8FFFFFFFFFFFFF4F5FABBBFF15061DB
      848CDCFFFFFFFFFFFFFFFFFFFFFFFF868AB8B9B9D1FFFFFFFFFFFFFFFFFFD2D1
      DC31366AEEEFF81839B3FFFFFF00FFFFFF1838B2EFF0F86477F4A0A8F8FFFFFF
      C8CCFAD2D4F8FFFFFF9DA5F38A94ECFFFFFFCACDEEA2A7DE9FA2D56269B0BABC
      D7FFFFFFB7B7CEAFAFC69192B031366EEEEFF81838B2FFFFFF00FFFFFF1839B3
      F1F1F96B7CF5A5ADF8FFFFFF98A2F97383F6FFFFFFC7CBFA929CF7FFFFFFACB2
      F1727DE26C76D44754B8BDBFDFFFFFFF454C92353C7E333A78323977EDEEF718
      39B3FFFFFF00FFFFFF1838B2F1F1F97181F6A7AFF8FFFFFF9DA6F87786F6FFFF
      FFD5D7F899A3F9FFFFFFFFFFFFFFFFFFFFFFFF606DD6BFC2E6FFFFFF49529F38
      418C353D83363E81EEEFF81838B2FFFFFF00FFFFFF1838B2F1F1F97484F6AAB2
      F8FFFFFFA2AAF899A3F9FFFFFFC7CBFA9DA6F8FFFFFFAEB5F97584F66F7EF153
      64E2C1C4EDFFFFFF4E58AF3D479B3A439138418DEFF0F81838B2FFFFFF00FFFF
      FF1839B3F1F1F97988F6ABB3F8FFFFFFF6F7FBFEFEFEFEFEFE959FF8A1A9F8FF
      FFFFEEEFF8E0E2F7DFE1F6818CEFC3C6F1FFFFFF515DC03F4CAB3E49A03B469A
      EFF0F81839B3FFFFFF00FFFFFF1838B2EFF0F87A89F699A3F9C7CBFAC7CBFABF
      C3FB97A1F87887F6909BF7C2C6FAC0C4FBBEC2FABAC0FA7986F2969FEEB6BAED
      505ECB4351BB424FB03E4BA8EEEFF81838B2FFFFFF00FFFFFF1839B3F1F1F97B
      8AF67E8CF67E8CF67D8BF67B8AF67988F67685F67484F67080F56B7CF56477F4
      6173F35C6FF15668EA5062E14B5CD44857C74553BD4350B6EEEFF81839B3FFFF
      FF00FFFFFF1838B2EFF0F87D8BF67D8BF67D8BF67B8AF67988F67786F67484F6
      7181F66F80F56A7BF46477F46274F35D70F1576AEE5366E84F61DF4B5CD44858
      CB4756C4EFF0F81838B2FFFFFF00FFFFFF1838B2EFF0F87D8BF67E8CF67D8BF6
      7B8AF67988F67584F67383F67181F66E7FF56A7BF46678F46275F35F72F25B6E
      F05769EB5365E65061DE4C5DD74C5CD1EEEFF81838B2FFFFFF00FFFFFF1838B2
      EEEFF8EEEFF8EDEEF7EEEFF8EEEFF8EEEFF8EEEFF8EEEFF8EDEEF7EEEFF8EEEF
      F8EEEFF8EEEFF8EDEEF7EDEEF7EEEFF8EEEFF8EDEEF7EEEFF8EDEEF7EDEEF718
      38B2FFFFFF00FFFFFF1838B21838B21838B21838B21838B21838B21838B21838
      B21838B21838B21838B21838B21838B21838B21838B21838B21838B21838B218
      38B21838B21838B21838B21838B2FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
  end
  object brelatorio: TBitBtn
    Left = 168
    Top = 408
    Width = 104
    Height = 25
    Caption = 'Relat'#243'rios'
    Enabled = False
    TabOrder = 3
    OnClick = brelatorioClick
    Glyph.Data = {
      DA050000424DDA05000000000000360000002800000019000000130000000100
      180000000000A4050000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFF00FFFFFF8F45398F45398F45398F45398F45398F45398F45398F45
      398F45398F45398F45398F45398F45398F45398F45398F45398F45398F45398F
      45398F45398F45398F45398F4539FFFFFF00FFFFFF8F4539ECE3E0ECE2DFEBE0
      DEECE2DFECE2DFECE2DFECE3E0ECE2DFEBE0DEECE2DFECE3E0ECE3E0ECE2DFEB
      E0DEEBE0DEECE2DFECE2DFECE2DFECE2DFECE2DFECE2DF8F4539FFFFFF00FFFF
      FF8F4539ECE3E0AE6A37AC6734A66031A25B2D9C552B965028914B238A481D84
      441C7D411F763E22713D236D3B256838266536276437266438256537266A3A25
      ECE2DF8F4539FFFFFF00FFFFFF8F4539ECE2DFB16D39AE6A37AA6533A6602FA1
      5A2C9B542A955026904B2388471D81431C793F22733C256C3B24663826643726
      6136255E3526613625643825EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE2DFB5
      723BB36F3AB06C38AC6734A86231A35D2D9D562A985228924D248A481D82441B
      7940207D4A267442246537266035275E35275E3527613626EBDFDD8F4539FFFF
      FF00FFFFFF8F4539ECE3E0B9763CB7753CB5723BCC9158FFFFFFEDE8E1A66030
      A25B2D9C552B954F27B3825CF2EFEDFFFFFFFFFFFFD0C5B56D40256136255E35
      26623626EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE2DFBC7A3EBC7A3EBA783E
      D1975CFFFFFFEEE8E1B06C39AC6737A86232A35D2DF4F2EFFDFCFCA7734CCFBD
      A9FFFFFFAE8F76663726623626633726EBE0DE8F4539FFFFFF00FFFFFF8F4539
      ECE3E0C17F3DC1803FC17F3FD79E60FFFFFFF1EBE5C28144BF7E42B8763DB16D
      37F9F7F5F5F3F09A552AC49C7EFFFFFFB7977D6F3C236A3A25693925EBDFDD8F
      4539FFFFFF00FFFFFF8F4539ECE3E0C6853DC6853EC6853EDBA35EFFFFFFFFFF
      FFFFFFFFFFFFFFE6C29BB6733CD4A16FFFFFFFEEE9E4FDFDFDE1D8CD8D51297B
      4120733D23723D23EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE3E0C8873CC888
      3EC9893DE0A75BFFFFFFF5F2EEE1AC69E0AA69D29652BC7A3EE5BE95FFFFFFDC
      B48FE6DED3F6F4F29C5E3287461C7F411E7C4020ECE2DF8F4539FFFFFF00FFFF
      FF8F4539ECE3E0CB8B3BCC8C3ACE8E39E2AA5CFFFFFFF6F3F0E5B67CE4B67CE3
      B37CC38241EADDCDFEFDFDBA7840DEC1A3FFFFFFB98257904B228A471E86451C
      ECE2DF8F4539FFFFFF00FFFFFF8F4539ECE2DFCD8D38CF8F38D09037E3AB5BFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFC58542DAA368FAF9F7FFFFFFFFFFFFE2D2BE
      A35E2D98512A934D268F4B22EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE3E0CF
      8F36D09037D09037D29237D8993ED59741D39442D19344CE9045C1803EBC7A3E
      BE7D41C7894EBB7A43A96434A45E2E9F582D9B5429985128EBE0DE8F4539FFFF
      FF00FFFFFF8F4539ECE2DFD09036D09037CF8F38CE8E38CD8D39CA8A3BC8873D
      C6853EC3833EBF7E3FBC7A3EB9773DB6733CB26F3AAE6937AA6533A55F30A25B
      2C9F582CECE2DF8F4539FFFFFF00FFFFFF8F4539ECE2DFCF8F38CF8F38CE8E39
      CD8D3ACB8B3CC8883DC6863DC5843EC3823FC07F3FBD7B3FBA783DB8763DB572
      3CB16E3AAE6937AB6634A86231A6602FEBE0DE8F4539FFFFFF00FFFFFF8F4539
      EBE0DEEBE0DEEBDFDDEBE0DEEBE0DEEBE0DEEBE0DEEBE0DEEBDFDDEBE0DEEBE0
      DEEBE0DEEBE0DEEBDFDDEBDFDDEBE0DEEBE0DEEBDFDDEBE0DEEBDFDDEBDFDD8F
      4539FFFFFF00FFFFFF8F45398F45398F45398F45398F45398F45398F45398F45
      398F45398F45398F45398F45398F45398F45398F45398F45398F45398F45398F
      45398F45398F45398F45398F4539FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 1232
    Top = 856
    object cxStyle1: TcxStyle
    end
    object cxStyle2: TcxStyle
    end
    object cxStyle3: TcxStyle
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 15851719
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      TextColor = 7355399
    end
    object cxStyle30: TcxStyle
      AssignedValues = [svColor]
      Color = 10928328
    end
    object cxStyle31: TcxStyle
      AssignedValues = [svColor]
      Color = 13228766
    end
    object cxStyle32: TcxStyle
      AssignedValues = [svColor]
      Color = 13228766
    end
    object cxStyle33: TcxStyle
      AssignedValues = [svColor]
      Color = 15725813
    end
    object cxStyle34: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 15851719
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle35: TcxStyle
      AssignedValues = [svColor]
      Color = clWindow
    end
    object cxStyle36: TcxStyle
      AssignedValues = [svColor]
      Color = 15851719
    end
    object cxStyle37: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
    end
    object cxStyle38: TcxStyle
      AssignedValues = [svColor]
      Color = 10928328
    end
    object cxStyle39: TcxStyle
      AssignedValues = [svColor]
      Color = 15851719
    end
    object cxStyle40: TcxStyle
      AssignedValues = [svColor]
      Color = 15851719
    end
    object cxStyle41: TcxStyle
      AssignedValues = [svColor]
      Color = 16380136
    end
    object cxStyle42: TcxStyle
    end
    object cxStyle6: TcxStyle
      AssignedValues = [svColor]
      Color = 12509924
    end
    object cxStyle7: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 12509924
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
    end
    object cxStyle8: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 3571073
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
    end
    object cxStyle9: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 3571073
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
    end
    object cxStyle10: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 3571073
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
    end
    object cxStyle12: TcxStyle
      AssignedValues = [svColor]
      Color = 15266032
    end
    object cxStyle13: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 15266032
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
    end
  end
  object cxStyleRepository2: TcxStyleRepository
    Left = 1200
    Top = 856
    object cxStyle4: TcxStyle
    end
  end
  object cxStyleRepository4: TcxStyleRepository
    Left = 1168
    Top = 856
    object cxStyle43: TcxStyle
    end
  end
  object cxStyleRepository5: TcxStyleRepository
    Left = 1136
    Top = 856
    object cxStyle44: TcxStyle
    end
  end
  object cxStyleRepository6: TcxStyleRepository
    Left = 1104
    Top = 856
    object cxStyle45: TcxStyle
    end
    object cxStyle11: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 3571073
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
  end
  object cxStyleRepository7: TcxStyleRepository
    Left = 1072
    Top = 856
    object cxStyle46: TcxStyle
    end
  end
  object cxStyleRepository8: TcxStyleRepository
    Left = 1040
    Top = 856
    object cxStyle47: TcxStyle
    end
  end
  object cxStyleRepository9: TcxStyleRepository
    Left = 1008
    Top = 856
    object cxStyle48: TcxStyle
    end
  end
  object cxStyleRepository10: TcxStyleRepository
    Left = 976
    Top = 856
    object cxStyle49: TcxStyle
    end
  end
  object cxStyleRepository11: TcxStyleRepository
    Left = 944
    Top = 856
    object cxStyle50: TcxStyle
    end
  end
  object qrnota: TZQuery
    Connection = frmmodulo.Conexao
    Active = True
    SQL.Strings = (
      'select sum(valor_contabil) total_geral,'
      'data,'
      'CODIGO,'
      'notafiscal,'
      'modelo_nf,'
      'valor_contabil,'
      'obs2'
      'from c000086'
      'group by '
      'data,'
      'CODIGO,'
      'notafiscal,'
      'modelo_nf,'
      'valor_contabil,'
      'obs2'
      'order by data')
    Params = <>
    Left = 224
    Top = 24
    object qrnotaTOTAL_GERAL: TFloatField
      FieldName = 'TOTAL_GERAL'
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
    end
    object qrnotaDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object qrnotaNOTAFISCAL: TStringField
      FieldName = 'NOTAFISCAL'
      Size = 6
    end
    object qrnotaMODELO_NF: TStringField
      FieldName = 'MODELO_NF'
      Size = 2
    end
    object qrnotaOBS2: TStringField
      FieldName = 'OBS2'
      Size = 100
    end
    object qrnotaCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 15
    end
    object qrnotaVALOR_CONTABIL: TFloatField
      FieldName = 'VALOR_CONTABIL'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object dsnota: TDataSource
    DataSet = qrnota
    Left = 304
    Top = 40
  end
  object qritem: TZQuery
    Connection = frmmodulo.Conexao
    Active = True
    SQL.Strings = (
      'select * from c000085')
    Params = <>
    Left = 320
    Top = 120
    object qritemTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object qritemDATA_EMISSAO: TStringField
      FieldName = 'DATA_EMISSAO'
      Size = 6
    end
    object qritemNRO_SERIE_EQP: TStringField
      FieldName = 'NRO_SERIE_EQP'
    end
    object qritemNRO_ORDEM_EQP: TStringField
      FieldName = 'NRO_ORDEM_EQP'
      Size = 2
    end
    object qritemMODELO_DOC: TStringField
      FieldName = 'MODELO_DOC'
      Size = 50
    end
    object qritemNRO_CONTADOR_INICIO: TStringField
      FieldName = 'NRO_CONTADOR_INICIO'
      Size = 10
    end
    object qritemNRO_CONTADOR_FIM: TStringField
      FieldName = 'NRO_CONTADOR_FIM'
      Size = 5
    end
    object qritemNRO_CONTADOR_Z: TStringField
      FieldName = 'NRO_CONTADOR_Z'
      Size = 10
    end
    object qritemCONTADOR_REINICIO: TStringField
      FieldName = 'CONTADOR_REINICIO'
      Size = 5
    end
    object qritemVALOR_VENDA_BRUTA: TFloatField
      FieldName = 'VALOR_VENDA_BRUTA'
    end
    object qritemVALOR_TOTAL_GERAL: TFloatField
      FieldName = 'VALOR_TOTAL_GERAL'
    end
    object qritemBRANCOS: TStringField
      FieldName = 'BRANCOS'
      Size = 10
    end
    object qritemDATAHORA_RECEBIMENTO: TDateTimeField
      FieldName = 'DATAHORA_RECEBIMENTO'
    end
    object qritemMODELO_NF: TStringField
      FieldName = 'MODELO_NF'
      Size = 2
    end
    object qritemDATAHORA_INI: TDateTimeField
      FieldName = 'DATAHORA_INI'
    end
    object qritemDATAHORA_FIM: TDateTimeField
      FieldName = 'DATAHORA_FIM'
    end
    object qritemDATAHORA_EMISSAO: TDateTimeField
      FieldName = 'DATAHORA_EMISSAO'
    end
    object qritemTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object qritemBASE_CALCULO: TFloatField
      FieldName = 'BASE_CALCULO'
    end
    object qritemBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
    end
    object qritemVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
    end
    object qritemNOTAFISCAL: TStringField
      FieldName = 'NOTAFISCAL'
      Size = 6
    end
    object qritemMOVIMENTO: TIntegerField
      FieldName = 'MOVIMENTO'
    end
    object qritemCOD_PEDIDOS: TStringField
      FieldName = 'COD_PEDIDOS'
      Size = 10
    end
    object qritemNUM_ITEM: TStringField
      FieldName = 'NUM_ITEM'
      Size = 3
    end
    object qritemCD_PRODUTO: TStringField
      FieldName = 'CD_PRODUTO'
      Size = 6
    end
    object qritemQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object qritemCL_FIS: TStringField
      FieldName = 'CL_FIS'
      Size = 4
    end
    object qritemPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Size = 40
    end
    object qritemAPR_UND: TStringField
      FieldName = 'APR_UND'
      Size = 2
    end
    object qritemS_TRIB: TStringField
      FieldName = 'S_TRIB'
      Size = 3
    end
    object qritemALIQUOTA_IPI: TFloatField
      FieldName = 'ALIQUOTA_IPI'
    end
    object qritemBASE_IPI: TFloatField
      FieldName = 'BASE_IPI'
    end
    object qritemVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
    end
    object qritemALIQUOTA_ICMS: TFloatField
      FieldName = 'ALIQUOTA_ICMS'
    end
    object qritemREDUCAO_BASE_ICMS: TFloatField
      FieldName = 'REDUCAO_BASE_ICMS'
    end
    object qritemBASE_ICMS_SUBST: TFloatField
      FieldName = 'BASE_ICMS_SUBST'
    end
    object qritemDATAHORA: TDateTimeField
      FieldName = 'DATAHORA'
    end
    object qritemVALOR_DESCONTO: TFloatField
      FieldName = 'VALOR_DESCONTO'
    end
    object qritemSUBTOTAL: TFloatField
      FieldName = 'SUBTOTAL'
      DisplayFormat = '###,###,##0.00'
    end
    object qritemCFOP: TStringField
      FieldName = 'CFOP'
      Size = 4
    end
    object qritemOUTRAS_IPI: TFloatField
      FieldName = 'OUTRAS_IPI'
    end
    object qritemISENTAS_IPI: TFloatField
      FieldName = 'ISENTAS_IPI'
    end
    object qritemOUTRAS_ICMS: TFloatField
      FieldName = 'OUTRAS_ICMS'
    end
    object qritemISENTAS_ICMS: TFloatField
      FieldName = 'ISENTAS_ICMS'
    end
    object qritemIPI_NAO_CREDITADO: TFloatField
      FieldName = 'IPI_NAO_CREDITADO'
    end
    object qritemFRETE: TFloatField
      FieldName = 'FRETE'
    end
    object qritemSEGURO: TFloatField
      FieldName = 'SEGURO'
    end
    object qritemOUTRAS_DESPESAS: TFloatField
      FieldName = 'OUTRAS_DESPESAS'
    end
    object qritemTIPO_FRETE: TStringField
      FieldName = 'TIPO_FRETE'
      Size = 1
    end
    object qritemCODNOTA: TStringField
      FieldName = 'CODNOTA'
      Size = 15
    end
  end
  object dsitem: TDataSource
    DataSet = qritem
    Left = 352
    Top = 120
  end
  object PopupMenu1: TPopupMenu
    Left = 536
    Top = 224
    object Incluir1: TMenuItem
      Caption = 'Incluir'
      ShortCut = 113
      OnClick = bincluirClick
    end
    object Excluir1: TMenuItem
      Caption = 'Excluir'
      ShortCut = 46
      OnClick = bexcluirClick
    end
    object Relatrios1: TMenuItem
      Caption = 'Relat'#243'rios'
      ShortCut = 119
      OnClick = brelatorioClick
    end
    object Fechar1: TMenuItem
      Caption = 'Fechar'
      ShortCut = 27
      OnClick = bfecharClick
    end
  end
  object qrproduto: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000025')
    Params = <>
    Left = 660
    Top = 188
  end
  object qrgrade_entrada: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000033')
    Params = <>
    Left = 296
    Top = 216
  end
end
