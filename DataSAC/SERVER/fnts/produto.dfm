object frmproduto: Tfrmproduto
  Left = 4
  Top = 127
  Width = 1005
  Height = 528
  BorderIcons = [biSystemMenu]
  Caption = 'PRODUTOS | Ficha de Cadastro'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = Pop1
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel7: TBevel
    Left = 0
    Top = 212
    Width = 997
    Height = 3
    Align = alBottom
  end
  object Bevel10: TBevel
    Left = 0
    Top = 465
    Width = 997
    Height = 3
    Align = alBottom
  end
  object pfichas: TFlatPanel
    Left = -520
    Top = 728
    Width = 1713
    Height = 922
    ParentColor = True
    Visible = False
    ColorHighLight = clBtnFace
    ColorShadow = clBtnFace
    TabOrder = 0
    UseDockManager = True
    object Label6: TLabel
      Left = 350
      Top = 60
      Width = 65
      Height = 12
      Caption = 'SUBGRUPO:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 725
      Top = 184
      Width = 26
      Height = 12
      Caption = 'CST:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object bservicos: TBitBtn
      Left = 744
      Top = 464
      Width = 75
      Height = 25
      Caption = 'bservicos'
      TabOrder = 0
      OnClick = bservicosClick
    end
  end
  object Panel1: TPanel
    Left = 776
    Top = -8
    Width = 9
    Height = 12
    Caption = 'Panel1'
    TabOrder = 1
    Visible = False
    object blocaliquota: TBitBtn
      Left = 85
      Top = 20
      Width = 25
      Height = 21
      TabOrder = 0
      OnClick = blocaliquotaClick
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
    object ealiquota: TDBEdit
      Left = 41
      Top = 20
      Width = 43
      Height = 21
      DataField = 'CODALIQUOTA'
      DataSource = dsproduto2
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnEnter = DBEdit1Enter
      OnExit = ealiquotaExit
      OnKeyPress = ealiquotaKeyPress
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 468
    Width = 997
    Height = 33
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    object bincluir: TAdvGlowButton
      Left = 10
      Top = 3
      Width = 87
      Height = 24
      Caption = 'F2 | Incluir'
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
      TabOrder = 0
      OnClick = bincluirClick
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
    object balterar: TAdvGlowButton
      Left = 98
      Top = 3
      Width = 87
      Height = 24
      Caption = 'F3 | Alterar'
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
        424D360400000000000036000000280000001000000010000000010020000000
        00000004000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BD735200C65A
        0000AD4A0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B55A3100C65A
        0000CE630000B5521000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B55A
        3100C6630000CE630000B55A2100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00B55A2100CE630000C6630000C6846300FFFFFF00FFFFFF00AD4A0000BD5A
        0000BD5A0000BD5A0000BD5A0000BD5A0000BD5A0000BD5A0000C6846300FFFF
        FF00FFFFFF00AD4A0000CE630000B54A0000FFFFFF00FFFFFF00B5520000D673
        0000CE6B0000CE630000CE630000CE630000CE630000C6630000BD6B4200FFFF
        FF00FFFFFF00CE9C8400C6630000C6630000C6846300FFFFFF00BD5A0000DE7B
        0000D6730000CE630000A5421000CE9C8400CE9C8400CE9C8400FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00AD4A0000CE630000B5521000FFFFFF00C6630000E784
        0000CE630000DE730000CE630000C6846300FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00C6734200CE630000B54A0000FFFFFF00CE630000F794
        0000B5521000B5520000DE7B0000CE6B0000BD7B5200FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00C6734200CE630000B54A0000FFFFFF00CE6B0800FF9C
        0800CE844200FFFFFF00B5520000E7840000CE6B0000BD633100FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00B54A0000CE630000B5521000FFFFFF00CE732100FFAD
        3100CE844A00FFFFFF00FFFFFF00C6631000E7840000E77B0000BD520000C67B
        5200C68C7300B5521000C6630000C6630000C6846300FFFFFF00CE7B3900FFBD
        6300C67B5200FFFFFF00FFFFFF00FFFFFF00B55A2100E77B0000E7840000DE7B
        0000D6730000CE6B0000C6630000AD4A1000FFFFFF00FFFFFF00CE947B00C684
        5A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CE9C8400C6631000CE6B
        0000CE6B0000BD5A0000BD6B4200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
      TabOrder = 1
      OnClick = balterarClick
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
    object bexcluir: TAdvGlowButton
      Left = 186
      Top = 3
      Width = 87
      Height = 24
      Caption = 'Del | Excluir'
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
      TabOrder = 2
      OnClick = bexcluirClick
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
    object DBAdvGlowButton1: TDBAdvGlowButton
      Left = 368
      Top = 3
      Width = 23
      Height = 24
      Hint = 'First record'
      ImageIndex = 0
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 3
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
      AutoDisable = True
      ConfirmAction = False
      DataSource = dsproduto2
      DBButtonType = dbFirst
      DisableControl = [drBOF, drEditing, drEmpty]
    end
    object DBAdvGlowButton2: TDBAdvGlowButton
      Left = 391
      Top = 3
      Width = 23
      Height = 24
      Hint = 'Prior record'
      ImageIndex = 0
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 4
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
      AutoDisable = True
      ConfirmAction = False
      DataSource = dsproduto2
      DBButtonType = dbPrior
      DisableControl = [drBOF, drEditing, drEmpty]
    end
    object DBAdvGlowButton3: TDBAdvGlowButton
      Left = 414
      Top = 3
      Width = 23
      Height = 24
      Hint = 'Next record'
      ImageIndex = 0
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 5
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
      AutoDisable = True
      ConfirmAction = False
      DataSource = dsproduto2
      DBButtonType = dbNext
      DisableControl = [drEOF, drEditing, drEmpty]
    end
    object DBAdvGlowButton4: TDBAdvGlowButton
      Left = 437
      Top = 3
      Width = 23
      Height = 24
      Hint = 'Last record'
      ImageIndex = 0
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 6
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
      AutoDisable = True
      ConfirmAction = False
      DataSource = dsproduto2
      DBButtonType = dbLast
      DisableControl = [drEOF, drEditing, drEmpty]
    end
    object bitbtn5: TAdvGlowButton
      Left = 462
      Top = 3
      Width = 103
      Height = 24
      Caption = 'F7 | Relat'#243'rios'
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
        650041646F626520496D616765526561647971C9653C000002B64944415478DA
        62FCFFFF3F030CB8D61D4AE0E4638F6662647006721981F007C37F4686BF7FFF
        B0BF7FFB7FDA914EEB1C06340010408CC80678B51FFDB538C798950968024C18
        44BFFEF28B61D9990F0CCFEEFFF87EFBD62DC18353BC7FC2F400041013B269CC
        CC4C7F58999918EEBF676178F08199E1F65B46866BAF18181445B919024CA418
        1455393859F8B8E723EB0108201403FE839C0D1564626484E3E7EFBE33C8F3FC
        6648B514666066650E45D603104070039A9A9A38814630819CCCC20CC28C0CCC
        40AF80E83B40979C7CF487819D9599819185F15F626222274C1F400031413527
        03A95740EBD9405E67616402BB8215A89905E802763666060E20FE0F1405BA88
        EDE7CF9FAF424242407A1800028809A8D9555252728EB7B7370F131313C33F50
        C83242BCC0088C019021AC2C4C0C6CCCCC603926266686ACAC2C1E4545C5391E
        1E1EAE0001C40214EBB5B0B06010131363D0FF34956142E736065C6017101B03
        B1AA6A3643404000C3A3478FA6030410C800752D2D2DB0023F3F3F0675757506
        7CE0CA952B0C22222260BC66CD1A25800062F9FBF72F1B1083251F3C78009678
        F3E60D56CD20B9BB77EF32181B1B83F91F3F7E64040820963F7FFE30DCBB770F
        2C00D2080C20862F5FBE603580878787E1F5EBD770F5201A2080587EFFFECDF0
        E4C913B0C0B76FDF184006FEFAF50BAB0120B9AF5FBFC2D5830C030820B00130
        0D1C1C1C0C6BD7AE05B37FFCF80156FCF9F3679053C11894EC757474E0EA417A
        01028805C8F9F7E9D327263E3E3EB01734B5F5188445C4B0BAE0F5AB170C2D4D
        F50CEEEEEE0CCF9E3D63F8F7EF1F034000B100FD3C67DBB66D9640D374396DF3
        194ABD8D18BEFD02276B867F401BFFFEFDCFF01B18C87F818A2D2D4C1976BE92
        62C8CF8F05B9E61250C94A800042C98D49D34EFE656106A6A6FF28F9034E3202
        13D79F3FFFFECDCB366786C90304180072C1114B15D29D760000000049454E44
        AE426082}
      TabOrder = 7
      OnClick = BitBtn5Click
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
    object LMDButton1: TAdvGlowMenuButton
      Left = 567
      Top = 3
      Width = 119
      Height = 24
      Caption = 'Tabelas/Fun'#231#245'es'
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      Picture.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000000467414D410000AFC837058AE90000001974455874536F6674776172
        650041646F626520496D616765526561647971C9653C000002154944415478DA
        62FCFFFF3F03250020805840C492C31FEA80E6A4FEFDFF4FE6DFBF7F0C7FFF31
        30FC01D17F41ECFF0C7F803402FF65F8FBE73F50FCDFE9D61855338000021BF0
        EFFFFFDC60335E11526C6E5879470F44030410D800A06960CD1BEF2D04DAFC07
        68CB1F86DF40FAF7DFDF081A280693ABB06C65F8FDFB2F3B480F4000410D8084
        4394563251B67FFD0134F4CF5F301B20802006803C0D04CB8FBC22CA003F1321
        865F50030002086CC01FA80120106923C6B0EAE84B86306B71B8D8DA132F1982
        2D10FC379F7EC05D00104060037E030D000624030B3350F1F1570CCCCC4C0CEB
        4EBC626064626060826ADA780AE83AA01A56A00E4D692E865FBF2106000410DC
        0BA05060616664083413052A7ECDE06F2686E20264FE9D679F18FEFC81B81A20
        80E02EF80FE4B300ADDB72F635D005101AAC800961080B2330CA816C2D290EA0
        8510030002086200D034508A64056AF4301465D873F10D838B3E2259ECBEF09A
        C1425D90819713AC9CE1E6E38F0CDCEC103640004102F11FC434662646B06610
        80D14021605A6060387CFD3DDC4065513678CC010410C4803F7F20610074AEA3
        AE08C3812B6F181C74102E5877E235439085289C0F720133D46B0001840803A0
        1774E478189EBFFBCEA02CCEC970FFC517785ED09666036B4206FFFEFD073B01
        2080A0B1F0FF68E3F2DB06BFFEFEE306C52F08FF0586CB6F70E6F98335317DF8
        FC633388060820464AB33340800100BF940F28257F2EDB0000000049454E44AE
        426082}
      TabOrder = 8
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
      DropDownButton = True
      DropDownSplit = False
      DropDownMenu = popmenu1
    end
    object blocalizar: TAdvGlowButton
      Left = 274
      Top = 3
      Width = 92
      Height = 24
      Caption = 'F6 | Localizar'
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
        650041646F626520496D616765526561647971C9653C000002514944415478DA
        62FCFFFF3F032500208058608C43F7FF32FDFBF76FEA9FBFFF7DFEFEFD2BF5E7
        EF3F86DF7FFE3EFBF3E7EF96DFBFFF66475A8AFCC36600400031825C7010A4F9
        EFBF7DFCECFFED05B91819589880AE02A21F7FFE333C7EF383E1D1EBEF077FFF
        F9E394EA2C8361084000318188BF7FFF4DE563FF672FC6C3C8F0E3F75F86375F
        FE32BC04E26FBFFE312888723288F1B3DAFFFCF5672A3617000410D800A0337D
        843819193EFF0469FACFF0E7DF7FA0A1FF19BE02D9EFBEFF659016E664001AE0
        83CD008000021B00F4AB14339005D2FC17A419E850B02140FCF5E73F06365666
        865FBFFE486133002080C081F8EBF71F867FFF59C19AFE0135FFFD8FA0FF8369
        06869F4035D8004000815D0034FDD98FDFFF8081C708B599014EB3B230327CFB
        F19BE1CFAF5FAFB0190010404C50176C79F0F21B032F3B13031B3323D8E92017
        B003350B7032335CB9FB8641FCEB0581BDAD3EEAE806000410D800600065DF7F
        F1E5E0D5871F1880DE6510E36501863C0B031B303A4F5D7BC1F0E5ED0B0667A9
        971C3F7F7E3BB2A1C20AC51080006284A5C4099BEF3101E37A2A30D1F8FC0206
        EA1F60740203F7B9C8F7ABBF9CF82F2BCA689A313CBB799AE1D6995D6F7EFFFE
        611333E5FA4D903E8000622494947734B8B2FDFAF563B9889C4690BC9625C3E3
        1B2719AE9DD9F92669D60351903C400031114AEB1E0DBB7F019D1EF9E0DAF175
        37CEEC601093510606FA4F11983C400031129B99E6A72BB3FDF9F37339332B7B
        D0B72FEF3B7296BCAB04890304102329B9715A9C28F3DFBF7FC47397BE7F0613
        030820464AB333408001004AB837A11ECA28F10000000049454E44AE426082}
      TabOrder = 9
      OnClick = blocalizarClick
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
    object bfechar: TAdvGlowButton
      Left = 712
      Top = 3
      Width = 73
      Height = 24
      Caption = 'ESC | Sair'
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
        650041646F626520496D616765526561647971C9653C000002A04944415478DA
        62FCFFFF3F032500208058D005FEB6652BFFFBFF3FEAFFBF7F71FFFEFD930062
        06207E01C48BFEFDFDB74CA063D15D64F50001C488EC82DFAD59C1FFFFFD9FFC
        95914D924D598581858F0F22FEE923C3B7EBD71998BE7D7CFEEFDFDF5CB1BE95
        6B617A0002086EC0AF964CA0E67F0B7F8AC97173A9A932FC7DF690E11F108300
        93A41C0393943CC3A76BD7197EDCBAFCF5DFDFBFF1B2D336800D010820B0013F
        9B3294804E3CFC4B424E8A5B4D8DE1D7D15D608D5CB573C0F497FA2406867FFF
        19D86CDD183E5EB9CAF0E5FAF9677FFFFDB35599BBFD1E40003181FDFDF74FCC
        3726768466A0A140AFC0BDF6EFCF3F86BF7FFE337CDBBB9D814F438BE13F8FB0
        D49FDFBF63407200010436E0CF9F3FB1ECAA40673FB90FD6F8EF2FD000A02664
        03FEFDFECBF0F7D73F869FF7EE32F06BE830FCFEFD3B16240710403003A45905
        0418FE3CBE0FD608B3111E33408D7F7F43C47FDCB9CBC02A20C4F0E7F71F6990
        1C4000410CF8FD87E13FD0569846988DBF6F5D4178E137D490BF409701F19F3F
        BFC17200010475C1EFA73FDFBC0386B63CDCA920C5DF8FEC65F8B26139DCF67F
        409A455681E1DB9B37204B9F82F4020410CC058B3F5CB9C4C02CA500570CA2F9
        92F219780222C11AFF82C48036B32B2831BCBA701AE4EDC520BD000104360018
        204B7EBD7DF6ECFDD52B0C5C4E9E7043DE4DEE62783BB913AC11C417F0F26178
        7DE502C3FBC7B79F010D5802D20B1040F084742DD639189840160A689B710B02
        43F9C7FD7BE00003C9B32B2A81F11BA0E647C7777D05A69978A77D37C0090920
        805092F28550EB60600299CC21242529AC63C4C02E20084A120C3FDEBF637879
        FE24C3FB27778049F95FAECB819BF0A40C10408CE8B9F1A49F893250511430B4
        8199E92F6A66FAF76F99EBC1DB28990920801829CDCE0001060095D1AF4C86CE
        FBDD0000000049454E44AE426082}
      TabOrder = 10
      OnClick = bfecharClick
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
    object bfornecedor_codigo: TAdvGlowButton
      Left = 688
      Top = 3
      Width = 22
      Height = 24
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
        650041646F626520496D616765526561647971C9653C000001AB4944415478DA
        62FCFFFF3F03250020805870494C3BF8F5FFB75F7F18BEFCF8C5F0F1DB0F86FE
        7059466CEA000288099701DF7EFE61B093626070966661F8F0E51B4E17000410
        4E177CFAFE93E1FB7716861F3FFE327CFC88DB008000C269C0872F3F18E69FFB
        C6F0F1F337864F9FBEE33400208018290D44800062C227B97DFBF6FF9B366DC2
        6B034000C15DB07FFFFEFFFFFEFD63F8FBF72FC3EFDFBF817EFFC1F0EDDB3760
        387C67F8FAF52BC3972F5FC0344C6CF6ECD9E0580108207818FCFAF58BC1DDDD
        9D911867C7C5C5C15D0510401487014000B1141E4AF9FFF7DF5F86BF40E7FF03
        D2D35D96805D91B02DF4FFCF3F3F197EFCFC05C43F18B6C71C008B1B4ED0FDFF
        EBE76F863FBFFF3030FCFBCF0010404C7FFEFE617091F6617095F166F80D64C3
        C08FDF3F18ECA41D196CE46C18BEFFFC0917FF054C9906EA3A0C46DA7A400BFF
        33000410CB9FBF20DBFF000DFBCB0062C3C0F71F3F193EFDFAC8F0E5D76720FB
        075C1C6433C8C5FF805EFF0F3400208058402ED87C6F2DD80B2009B80140676F
        BDB29DE127D00B200C03FFFEFE67387BF102032CE8000288E24004082026060A
        01408001007FEBE3182F912DE30000000049454E44AE426082}
      TabOrder = 12
      OnClick = bfornecedor_codigoClick
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
    object pgravar: TFlatPanel
      Left = 8
      Top = 16
      Width = 776
      Height = 33
      ParentColor = True
      Visible = False
      ColorHighLight = clBtnFace
      ColorShadow = clBtnFace
      TabOrder = 11
      UseDockManager = True
      object bgravar: TAdvGlowButton
        Left = 272
        Top = 4
        Width = 107
        Height = 24
        Caption = 'F2 | Gravar'
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
          650041646F626520496D616765526561647971C9653C000003274944415478DA
          62FCFFFF3F032500208058D005924F392AFFF9F33BEAEFDF7F713F7FFF90F8F7
          EF0F03C3BF7F2F18FE312CFAF3F7EFB28DDED7EF22AB070820466417249EB00B
          FEF9FBE764690665497D515B066E567EB0F8E75F1F184E3EDECD70E3D3F9E740
          8372F7863D580BD30310407003E28FD9047FFFFD73A1359F37B7BAB001C3B3EF
          8F199E7D7B0A9693E2926690E09461B8F6FC14C3F2AB4BBF029D1D7F32E911D8
          108000021B107BD84AE9E79FDF87AD05BCA55485F5198EBEDECFF0E7DF5F20FE
          C7C0045204F22B233383B59823C3D5A7A718965C5AF60CE812DB4BD98FEF0104
          10489EE1EF9FDF31D28CCA52209B419A7FFCF9CDF0EBEF6F863F40FCEBCF2F06
          609830B84A79339C7A71984147DA8CC1505847EAE76F8618905E8000021BF0FB
          EFCF5843093B8627DF1E0135FD61F80B0CB87F409A11E802C67FFF19FC15C218
          1C653C1932744B189E7CBACF60AFEACCF0EB27432C482F4000810DF8FEF3A7B4
          009B10C3D3AF0F819AFF327848FB306468150235333104288633D84BBB810DDD
          7C6725C3D30FF7180439C518FE7DFF2F0DD20B10402C500318FE01C3E23FD046
          5E665E062B0907063E367E865AB30E06210E11B0E659177A196EBFB9CCC0C3CA
          030C1360C0FF86C4024000815DC0F00768F0B7D70CD25CB20C5F7E7E649876A1
          93E1EBEFCF60CDFFFEFF639875AE9BE1FAABF3E0C094E2936378FDE139D0750C
          E0280208204818FCFEBFF8E8BDDD0C529CB20CACFF18185E7D7DC630F17433C3
          ADB75719E69CEF65B8F6FA02500323031310CBF229326CB9B28B01E888C520BD
          00010436E0E7F7FF4B4E3FBBF0ECF2D3130C96522E0C6C4085EFBE3E67987EA6
          95E1DA8BF30CCCFF9918D8989819EC953C194EDF3BCC70E1DACD670CBF189680
          F40204103C21E94C920DFEFAF3FFC26493206E23596B86C71FEF03FD751F1C2E
          32824A0C327CF20C27EF1D6458B075CB572656C6F8077D4FC0090920805092B2
          52B76CF0BF9FFF271BCBAA4B7A68B902435B04E45486D75F5F306CBBB08BE1D2
          F5BBCF199918731FF43F81276580006244CF8D0A4DB2CA0C7FFF47010336EEFF
          CFFF120C7F81299191F105506A1130E4973D98FC04253301041023A5D91920C0
          00B9755E16835EC02B0000000049454E44AE426082}
        TabOrder = 0
        OnClick = bgravarClick
        Appearance.BorderColor = 14727579
        Appearance.BorderColorHot = 10079963
        Appearance.BorderColorDown = 4548219
        Appearance.BorderColorChecked = clBlack
        Appearance.Color = 15653832
        Appearance.ColorTo = 16178633
        Appearance.ColorChecked = 7915518
        Appearance.ColorCheckedTo = 11918331
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 7778289
        Appearance.ColorDownTo = 4296947
        Appearance.ColorHot = 15465983
        Appearance.ColorHotTo = 11332863
        Appearance.ColorMirror = 15586496
        Appearance.ColorMirrorTo = 16245200
        Appearance.ColorMirrorHot = 5888767
        Appearance.ColorMirrorHotTo = 10807807
        Appearance.ColorMirrorDown = 946929
        Appearance.ColorMirrorDownTo = 5021693
        Appearance.ColorMirrorChecked = 10480637
        Appearance.ColorMirrorCheckedTo = 5682430
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
        Appearance.GradientHot = ggVertical
        Appearance.GradientMirrorHot = ggVertical
        Appearance.GradientDown = ggVertical
        Appearance.GradientMirrorDown = ggVertical
        Appearance.GradientChecked = ggVertical
      end
      object bcancelar: TAdvGlowButton
        Left = 397
        Top = 4
        Width = 108
        Height = 24
        Caption = 'ESC | Cancelar'
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
          650041646F626520496D616765526561647971C9653C000002E74944415478DA
          62FCFFFF3F032500208058D0059EB636C431FCFB9BF9FFEF3F7D86BF7FBFFFFF
          FB87E1FFDFBF9C407C91E1CF9FE9F213A62D42560F10408CC82E006A8E67E5E3
          5A2060A4C9C0CACFC3F0FFF71F0686BFFF18188172BFDEBE67787BE40CC3CF57
          6F9214672E980FD303104070039EB6D427B2F072CD1334D66260FBF69481E1D5
          2306867FFF18184086FCFCC9C0C02FC9F0935786E1F5C1130C3F5FBF4D565EB4
          721E481F4000810D78DA5C97C8C207D46C04D4FC15A8F9D93D06A07381D6FE06
          1AF01B62C8AF5F0C0CE20A0C3F05E4185E1E380E7249A2EAEA4D0B0002880964
          0AD09F9982869A0C6C1F1F33303CBACDC02028C3C0A0E308D4F89781E13BD076
          4D2B0606216906865B5718D89FDC6010B334027AEF5726482F40004102F1CF5F
          3D566E6E06866B409B7F026DE2E06760B0F26360E0126460F8F619C8F6626058
          3505287F8981E1F6550676653DA001BFF5415A0102086CC0FF3FBFBFFDFFF993
          9D1164E30FA08DE70E3230B0703230B8864342EAE0460686C33B20728C4C0CFF
          7EFC0219F00D240510406003FE81FC0B73EEF75F104DACEC88B862051AF6E71F
          DC00A08B419682A5000208E282DFBFB9191980B1F1ED1BC410637B0606870006
          865D6B18183E7F6060084E01062C305656CC640029636204E9F9C30DD20B1040
          9030F8FDFBF2EFB7EF8DD984810175E71A03C3BD1B0C0C8B263030ECDB04B40D
          68D3ABE7C0787E0C894E252D861FAFDE805C7019A4152080A05EF83DFDD591D3
          73444DF519D8BF7D6760B80994BB7611128D20EFED580F36E88FB216C34F251D
          8667BBF7010DF83B1DA4172080E009E96E4C680A2B2FCF6C313323068EFB5780
          2E01BAE2FF3F706AFCFDF307C33F3965865FC0D07FB9673F300DBC4ED5397365
          0E481F4000A124E55BC13E89ECFCBCF3C4CC8C19D804F819FE0213CFBF7F7FC1
          01F7FDCD5B8637FB0F32FC7CFE3249E7EC55785206082046F4DC78D3CB29EEFF
          9F3FC0CCF4571F487F674064A64B403C5DF7ECB585C8EA01028891D2EC0C1060
          008C5756165E6F8C750000000049454E44AE426082}
        TabOrder = 1
        OnClick = bcancelarClick
        Appearance.BorderColor = 14727579
        Appearance.BorderColorHot = 10079963
        Appearance.BorderColorDown = 4548219
        Appearance.BorderColorChecked = clBlack
        Appearance.Color = 15653832
        Appearance.ColorTo = 16178633
        Appearance.ColorChecked = 7915518
        Appearance.ColorCheckedTo = 11918331
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 7778289
        Appearance.ColorDownTo = 4296947
        Appearance.ColorHot = 15465983
        Appearance.ColorHotTo = 11332863
        Appearance.ColorMirror = 15586496
        Appearance.ColorMirrorTo = 16245200
        Appearance.ColorMirrorHot = 5888767
        Appearance.ColorMirrorHotTo = 10807807
        Appearance.ColorMirrorDown = 946929
        Appearance.ColorMirrorDownTo = 5021693
        Appearance.ColorMirrorChecked = 10480637
        Appearance.ColorMirrorCheckedTo = 5682430
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
        Appearance.GradientHot = ggVertical
        Appearance.GradientMirrorHot = ggVertical
        Appearance.GradientDown = ggVertical
        Appearance.GradientMirrorDown = ggVertical
        Appearance.GradientChecked = ggVertical
      end
    end
  end
  object batualiza_estoque: TBitBtn
    Left = 1112
    Top = 464
    Width = 137
    Height = 25
    Caption = 'batualiza_estoque'
    TabOrder = 3
    Visible = False
    OnClick = batualiza_estoqueClick
  end
  object bcalcula_precovenda: TBitBtn
    Left = 976
    Top = 464
    Width = 129
    Height = 25
    Caption = 'bcalcula_precovenda'
    TabOrder = 4
    Visible = False
    OnClick = bcalcula_precovendaClick
  end
  object bcalcula_precocusto: TBitBtn
    Left = 848
    Top = 464
    Width = 129
    Height = 25
    Caption = 'bcalcula_precocusto'
    TabOrder = 5
    Visible = False
    OnClick = bcalcula_precocustoClick
  end
  object bpreco_custo: TBitBtn
    Left = 744
    Top = 465
    Width = 129
    Height = 25
    Caption = 'bpreco_custo'
    TabOrder = 6
    Visible = False
    OnClick = bpreco_custoClick
  end
  object bpreco_venda: TBitBtn
    Left = 1256
    Top = 465
    Width = 129
    Height = 25
    Caption = 'bpreco_venda'
    TabOrder = 7
    Visible = False
    OnClick = bpreco_vendaClick
  end
  object bnovopreco_venda: TBitBtn
    Left = 1393
    Top = 462
    Width = 129
    Height = 25
    Caption = 'bnovopreco_venda'
    TabOrder = 8
    Visible = False
    OnClick = bnovopreco_vendaClick
  end
  object bremarcacao: TBitBtn
    Left = 856
    Top = 256
    Width = 193
    Height = 25
    Caption = 'remarcacao'
    TabOrder = 9
    Visible = False
    OnClick = bremarcacaoClick
  end
  object PageView1: TPageView
    Left = 0
    Top = 215
    Width = 997
    Height = 250
    ActivePage = PageSheet9
    ActivePageIndex = 0
    AdaptiveColors = True
    Align = alBottom
    BackgroundColor = clBtnFace
    BackgroundKind = bkSolid
    Indent = 2
    Margin = 0
    Options = [pgBoldActiveTab]
    ShowTabs = True
    Spacing = 0
    TabHeight = 17
    TabOrder = 10
    TabStyle = tsOneNote
    TopIndent = 3
    OnChange = PageView1Change
    object PageSheet9: TPageSheet
      Left = 0
      Top = 21
      Width = 997
      Height = 229
      Caption = ' Estoque'
      DisplayMode = tdGlyph
      ImageIndex = 0
      Margin = 0
      PageIndex = 0
      TabColor = clWindow
      TabWidth = 0
      TransparentColor = clNone
      object PageView2: TPageView
        Left = 0
        Top = 0
        Width = 997
        Height = 250
        ActivePage = PageSheet10
        ActivePageIndex = 0
        AdaptiveColors = True
        Align = alTop
        BackgroundColor = 13230308
        BackgroundKind = bkSolid
        Indent = 2
        Margin = 0
        Options = [pgBoldActiveTab]
        ShowTabs = True
        Spacing = 0
        TabHeight = 17
        TabOrder = 0
        TabStyle = tsOneNote
        TopIndent = 3
        OnKeyPress = combo_tipoKeyPress
        OnChange = PageView2Change
        object PageSheet10: TPageSheet
          Left = 0
          Top = 21
          Width = 997
          Height = 229
          Caption = 'Posi'#231#227'o do Estoque / Informa'#231#245'es'
          DisplayMode = tdGlyph
          ImageIndex = 0
          Margin = 0
          PageIndex = 0
          TabColor = clWindow
          TabWidth = 0
          TransparentColor = clNone
          object pficha2: TPanel
            Left = 0
            Top = 0
            Width = 997
            Height = 229
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            object Label90: TLabel
              Left = 8
              Top = 132
              Width = 113
              Height = 14
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'C'#243'digo do Fornecedor:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label80: TLabel
              Left = 428
              Top = 122
              Width = 53
              Height = 13
              AutoSize = False
              Caption = 'Dias'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label57: TLabel
              Left = 294
              Top = 170
              Width = 37
              Height = 13
              Caption = 'Fra'#231#227'o:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label56: TLabel
              Left = 260
              Top = 98
              Width = 70
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'CF/NCM:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label35: TLabel
              Left = 260
              Top = 146
              Width = 70
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Comiss'#227'o:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label18: TLabel
              Left = 260
              Top = 122
              Width = 70
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Validade:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label16: TLabel
              Left = 260
              Top = 75
              Width = 70
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Localiza'#231#227'o:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label14: TLabel
              Left = 260
              Top = 10
              Width = 70
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Aplica'#231#227'o:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Bevel6: TBevel
              Left = 256
              Top = 8
              Width = 2
              Height = 191
            end
            object GroupBox16: TGroupBox
              Left = 638
              Top = 3
              Width = 161
              Height = 90
              Caption = 'Promo'#231#227'o'
              TabOrder = 21
              object Label12: TLabel
                Left = 9
                Top = 17
                Width = 40
                Height = 12
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Pre'#231'o:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label65: TLabel
                Left = 9
                Top = 41
                Width = 40
                Height = 12
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'In'#237'cio:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label66: TLabel
                Left = 9
                Top = 65
                Width = 40
                Height = 12
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Fim:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object RzDBNumericEdit4: TRzDBNumericEdit
                Left = 56
                Top = 13
                Width = 97
                Height = 21
                DataSource = dsproduto2
                DataField = 'PRECO_PROMOCAO'
                Alignment = taLeftJustify
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = [fsBold]
                FocusColor = 11075583
                ParentFont = False
                TabOrder = 0
                OnEnter = DBEdit1Enter
                OnExit = DBEdit1Exit
                OnKeyPress = RzDBNumericEdit4KeyPress
                IntegersOnly = False
                DisplayFormat = '###,###,##0.000'
              end
              object DBDateEdit1: TDBDateEdit
                Left = 56
                Top = 37
                Width = 97
                Height = 21
                DataField = 'DATA_PROMOCAO'
                DataSource = dsproduto2
                NumGlyphs = 2
                TabOrder = 1
                OnEnter = DBEdit1Enter
                OnExit = DBEdit1Exit
                OnKeyPress = DBDateEdit1KeyPress
              end
              object DBDateEdit2: TDBDateEdit
                Left = 56
                Top = 61
                Width = 97
                Height = 21
                DataField = 'FIM_PROMOCAO'
                DataSource = dsproduto2
                NumGlyphs = 2
                TabOrder = 2
                OnEnter = DBEdit1Enter
                OnExit = DBDateEdit2Exit
                OnKeyPress = DBDateEdit2KeyPress
              end
            end
            object GroupBox12: TGroupBox
              Left = 470
              Top = 122
              Width = 160
              Height = 63
              Caption = #218'ltima Remarca'#231#227'o'
              Enabled = False
              TabOrder = 20
              object Label64: TLabel
                Left = 13
                Top = 28
                Width = 33
                Height = 14
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Data:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object DBEdit60: TDBEdit
                Left = 54
                Top = 25
                Width = 88
                Height = 21
                DataField = 'DATA_REMARCACAO_VENDA'
                DataSource = dsproduto2
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = [fsBold]
                ParentFont = False
                ReadOnly = True
                TabOrder = 0
                OnExit = DBEdit2Exit
                OnKeyPress = DBEdit2KeyPress
              end
            end
            object GroupBox11: TGroupBox
              Left = 638
              Top = 102
              Width = 161
              Height = 86
              Caption = 'Peso'
              TabOrder = 22
              object Label17: TLabel
                Left = 14
                Top = 18
                Width = 43
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Bruto:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label59: TLabel
                Left = 14
                Top = 42
                Width = 43
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'L'#237'quido:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object DBEdit17: TDBEdit
                Left = 64
                Top = 14
                Width = 89
                Height = 21
                DataField = 'PESO'
                DataSource = dsproduto2
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                OnEnter = DBEdit1Enter
                OnExit = DBEdit1Exit
                OnKeyPress = DBEdit17KeyPress
              end
              object DBEdit10: TDBEdit
                Left = 64
                Top = 38
                Width = 89
                Height = 21
                DataField = 'PESO_LIQUIDO'
                DataSource = dsproduto2
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
                OnEnter = DBEdit1Enter
                OnExit = DBEdit1Exit
                OnKeyPress = DBEdit10KeyPress
              end
            end
            object FlatPanel2: TFlatPanel
              Left = 8
              Top = 40
              Width = 121
              Height = 25
              Caption = 'Entradas:  '
              ParentColor = True
              ColorHighLight = 10776320
              ColorShadow = 10776320
              Alignment = taRightJustify
              TabOrder = 0
              UseDockManager = True
              object Image3: TImage
                Left = 8
                Top = 5
                Width = 16
                Height = 16
                Picture.Data = {
                  07544269746D617036030000424D360300000000000036000000280000001000
                  000010000000010018000000000000030000C40E0000C40E0000000000000000
                  0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5F0
                  E79FC8A5559B5E3F8E483B8C444C955297C19BE1EDE2FFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFC3DDC8569F6340984F7CC18E95CFA595CEA577BD88
                  358C41408C47B9D5BBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6DFCB549F6363B3
                  77A7DAB486CB9765BB7C63B97B85CA97A4D8B357A96A34853CB9D5BBFFFFFFFF
                  FFFFFFFFFFE9F3EB66AB7569B87CA7DAB15FBB765BB97258B76F58B46E57B46E
                  5AB673A4D8B259A96B418E48E2EEE3FFFFFFFFFFFFAED4B852AA67A9DCB363C0
                  785EBD705FBB76FEFEFEFEFEFE58B76F57B46D5BB673A5D9B3378E4296C19AFF
                  FFFFFFFFFF76B78889CB9788D2956AC57962C06F54AA64FEFEFEFEFEFE58B76F
                  58B76F5AB87184CB967ABD8C4C9554FFFFFFFFFFFF69B17EA8DCB27CCE8974CB
                  80FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE58B76F66BD7C9BD3AA3A8B43FF
                  FFFFFFFFFF6DB482B5E1BD8AD49679C885FEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                  FEFEFE58B76F68C07D9CD3A93E8E48FFFFFFFFFFFF81BF94ABDCB5A5DEAE80CA
                  8B7BC8856DBC78FEFEFEFEFEFE5AAB695FBB765BB9728AD0987FC491579D60FF
                  FFFFFFFFFFB8DBC384C696D1EDD694D89F89D2937EC788FEFEFEFEFEFE78CC84
                  6AC27B6EC67DABDEB4449D56A0C8A6FFFFFFFFFFFFECF6EF7EBE92A9D9B6D7F0
                  DB91D79C87CC9283CB8D8AD39589D39482D18DAEDFB66AB87C5AA266E6F1E8FF
                  FFFFFFFFFFFFFFFFD1E9D975BA8BAEDBBADBF1DFB5E3BC9ADAA495D89FA4DEAE
                  BFE7C478C18957A165C4DEC9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1E9D97EBE
                  9293CDA3C2E5CACEEAD3C8E8CDAEDCB76CB87E67AD77C7E0CDFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFECF6EFB9DCC482BF9570B6856DB48178B989
                  B1D5BAE8F3EBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFF}
                Transparent = True
              end
            end
            object FlatPanel18: TFlatPanel
              Left = 128
              Top = 96
              Width = 121
              Height = 25
              Color = clWindow
              Enabled = False
              ColorHighLight = 10776320
              ColorShadow = 10776320
              Alignment = taRightJustify
              TabOrder = 1
              UseDockManager = True
              object restoque: TRxCalcEdit
                Left = 1
                Top = 4
                Width = 114
                Height = 20
                AutoSize = False
                BorderStyle = bsNone
                DisplayFormat = '###,###,##0.000'
                Font.Charset = ANSI_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ButtonWidth = 0
                NumGlyphs = 2
                ParentFont = False
                TabOrder = 0
              end
            end
            object FlatPanel16: TFlatPanel
              Left = 128
              Top = 64
              Width = 121
              Height = 25
              Color = clWindow
              Enabled = False
              ColorHighLight = 10776320
              ColorShadow = 10776320
              Alignment = taRightJustify
              TabOrder = 2
              UseDockManager = True
              object rsaida: TRxCalcEdit
                Left = 2
                Top = 4
                Width = 116
                Height = 20
                AutoSize = False
                BorderStyle = bsNone
                DisplayFormat = '###,###,##0.000'
                Font.Charset = ANSI_CHARSET
                Font.Color = clRed
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ButtonWidth = 0
                NumGlyphs = 2
                ParentFont = False
                TabOrder = 0
              end
            end
            object FlatPanel15: TFlatPanel
              Left = 128
              Top = 40
              Width = 121
              Height = 25
              Color = clWindow
              Enabled = False
              ColorHighLight = 10776320
              ColorShadow = 10776320
              Alignment = taRightJustify
              TabOrder = 3
              UseDockManager = True
              object rentrada: TRxCalcEdit
                Left = 2
                Top = 4
                Width = 116
                Height = 20
                AutoSize = False
                BorderStyle = bsNone
                DisplayFormat = '###,###,##0.000'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ButtonWidth = 0
                NumGlyphs = 2
                ParentFont = False
                TabOrder = 0
              end
            end
            object FlatPanel14: TFlatPanel
              Left = 128
              Top = 8
              Width = 121
              Height = 25
              Color = clWindow
              Enabled = False
              ColorHighLight = 10776320
              ColorShadow = 10776320
              Alignment = taRightJustify
              TabOrder = 4
              UseDockManager = True
              object RINICIAL: TRxCalcEdit
                Left = 2
                Top = 4
                Width = 116
                Height = 20
                AutoSize = False
                BorderStyle = bsNone
                DisplayFormat = '###,###,##0.000'
                Font.Charset = ANSI_CHARSET
                Font.Color = clGreen
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ButtonWidth = 0
                NumGlyphs = 2
                ParentFont = False
                TabOrder = 0
              end
            end
            object FlatPanel13: TFlatPanel
              Left = 8
              Top = 96
              Width = 121
              Height = 25
              Caption = 'Estoque Atual:  '
              ParentColor = True
              ColorHighLight = 10776320
              ColorShadow = 10776320
              Alignment = taRightJustify
              TabOrder = 5
              UseDockManager = True
              object Image6: TImage
                Left = 8
                Top = 5
                Width = 16
                Height = 16
                Picture.Data = {
                  07544269746D617036030000424D360300000000000036000000280000001000
                  000010000000010018000000000000030000C40E0000C40E0000000000000000
                  0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E7
                  E3CAAA9BA16A508F573D8D563D996851C5A99BEEE7E3FFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFDFC8BDA26547B17F56D4B692DAC2A5D9C2A5D1B38F
                  AA7951915F47D8C6BDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2CCBDA25B3BCAA6
                  7CD7BA9EC29B76B58961B3855FBD9571D0B296C4A27688563DD8C6BDFFFFFFFF
                  FFFFFFFFFFF4ECE4B37749CEA980D9BBA1BD9065B98B61B6885EB2835DB0825C
                  AF825BCCA98CC5A478946148EFE8E4FFFFFFFFFFFFDBBC9BBE905DDFC1A7C495
                  6BC19068E0CAB7FDFCFBFEFEFDE9DBCFB3845DB2845DD3B498AD7A55C7A99BFF
                  FFFFFFFFFFC58F51DABB9BD4AC88C6976BC29468C09266ECDED2F9F6F3BA8A62
                  B88962B78961C49C77D1B7929F6951FFFFFFFFFFFFC0823BE2C6AECFA175C498
                  6AC39669C39568EDDFD3FAF6F3BE8F65BD8E64BD8E63BD9168DEC5A995553AFF
                  FFFFFFFFFFC68841E3C8AFCFA279CB9C70C6996BC4976AFEFEFEFEFEFDC29568
                  C09367C19367C2976CDEC4AA98583AFFFFFFFFFFFFD19D5BDFBB9EDAB292CE9F
                  74CC9D71CA9B70DCBEA2DCBEA1C4986AC4986AC3976AD0AA84D7B996AB6D51FF
                  FFFFFFFFFFE6C8A4CC9B67E6CAB3D3A479CF9F76CE9D73FAF7F4FAF7F4CA9D70
                  CA9C70CCA076DEBFA4B8895AD2AE9AFFFFFFFFFFFFF9F0E7D29959D8B18BE5C9
                  B2D5A87CD0A478E1C3A7E0C2A7CFA175D0A376DCBCA1CFAB84B37549F3EAE4FF
                  FFFFFFFFFFFFFFFFF1DCC5D0914ED8B18BE5CCB7DFB99CD6AA84D5A881D8B290
                  E0C1AAD3AD85B3703DE5D0BDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1DDC5D59B
                  5ACF9F69DFBE9FE2C4ADE2C4ADDEBB9EC79661C38948E9D5BDFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF1E7E9CBA7D7A164CE904DCC9049D09B5A
                  E3C6A1F7EEE4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFF}
                Transparent = True
              end
            end
            object FlatPanel11: TFlatPanel
              Left = 8
              Top = 64
              Width = 121
              Height = 25
              Caption = 'Sa'#237'das:  '
              ParentColor = True
              ColorHighLight = 10776320
              ColorShadow = 10776320
              Alignment = taRightJustify
              TabOrder = 6
              UseDockManager = True
              object Image4: TImage
                Left = 8
                Top = 5
                Width = 16
                Height = 16
                Picture.Data = {
                  07544269746D617036030000424D360300000000000036000000280000001000
                  000010000000010018000000000000030000C40E0000C40E0000000000000000
                  0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5E7
                  F79EA9E1536AC63E58BF3953BE4B66C197A7DBE1E6F5FFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFC2C8ED5465CB3B51CB7479E78E91ED8E91ED7077E3
                  324CC03F5BBDB9C4E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC5C9EE505FCC5B64
                  DFA0A5F47D85EE5A62E8585CE67C83ED9D9FF3505CD63351B9B9C4E7FFFFFFFF
                  FFFFFFFFFFE8EAF96470D3606AE2A0ABF4535EEB4F5BE94C58E84D58E54B55E5
                  4F55E59DA1F3535FD53F5CBEE2E7F5FFFFFFFFFFFFACB0E94A55DAA1AAF55563
                  EF5165ED4C58E84C58E84C58E84C58E84B57E55159E59EA2F4334FC395A5DBFF
                  FFFFFFFFFF7277DC808BED7D90F65C72F24C58E84C58E84C58E84C58E84C58E8
                  4C58E84E5AE87A82EF747AE14B64C3FFFFFFFFFFFF6468DAA0AAF66F85F76781
                  F5FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE4C58E85B65E9959BF03855BDFF
                  FFFFFFFFFF696DDBAEB8F87E92F96F84EFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                  FEFEFE4C58E85D69ED959CF03C54BFFFFFFFFFFFFF7C7EE2A4AEF49CAAF9768B
                  EF535EEB535EEB535EEB535EEB535EEB535EEB6276F1808DF3777EE8556AC8FF
                  FFFFFFFFFFB5B4EF7C82E9CCD3FB8A9CF97D92F67489ED6B83F56B83F56B83F5
                  6B83F56278F2A3AEF73D4ECF9FAAE0FFFFFFFFFFFFEBEBFB7877E2A2A6F2D3DA
                  FC8699F97E90EF798DF07E93F77D91F8758BF7A7B5F7626DE25767CCE6E8F7FF
                  FFFFFFFFFFFFFFFFCFCFF66F6FE0A9ACF1D7DBFCADB9F990A2F98A9CF99BA8FA
                  B9C6FB6F7AE85361CDC3C8EDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFF67878
                  E18D92ECBDC2F7CBD2F8C3CAF8A9B3F3656FE1636DD5C6CAEFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFEBEBFBB6B5F07C7EE1696ADD676ADB7378DE
                  AEB2EAE8E9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFF}
                Transparent = True
              end
            end
            object FlatPanel1: TFlatPanel
              Left = 8
              Top = 8
              Width = 121
              Height = 25
              Caption = 'Estoque Inicial:  '
              ParentColor = True
              ColorHighLight = 10776320
              ColorShadow = 10776320
              Alignment = taRightJustify
              TabOrder = 7
              UseDockManager = True
              object Image1: TImage
                Left = 8
                Top = 5
                Width = 16
                Height = 16
                Picture.Data = {
                  07544269746D617036030000424D360300000000000036000000280000001000
                  000010000000010018000000000000030000C40E0000C40E0000000000000000
                  0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFF5E8E60FAFBFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0DFD12B6D2F417944FFFFFFFFFFFFFF
                  FFFFFFFFFF60BD6C5CB76757B06152A85B4CA05546984E4090483A8741347F3A
                  3E874458A05D438A484A804CFFFFFFFFFFFFFFFFFF64C2709FD6A89BD4A497D2
                  A093CF9C8FCD978ACA9286C88D81C5887DC28379C07F75BD7B448B49548656FF
                  FFFFFFFFFF67C673A4D9ADA1D7AA9DD5A699D3A295D19E92CE998DCB9488C98F
                  84C68A80C4867CC18149904F528856FFFFFFFFFFFF67C67367C67364C27060BD
                  6C5CB76757B06152A85B4CA05546984E40904859A261549C5B549059FFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFF46934E56985CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF77B37DFBFCFBFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFF}
                Transparent = True
              end
            end
            object FLAG_SIS: TDBEdit
              Left = 260
              Top = 188
              Width = 67
              Height = 21
              TabStop = False
              DataField = 'FLAG_SIS'
              DataSource = dsproduto2
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 8
              Visible = False
              OnEnter = DBEdit1Enter
              OnExit = DBEdit1Exit
              OnKeyPress = DBEdit62KeyPress
            end
            object FLAG_EST: TDBEdit
              Left = 400
              Top = 188
              Width = 67
              Height = 21
              TabStop = False
              DataField = 'FLAG_EST'
              DataSource = dsproduto2
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 9
              Visible = False
              OnEnter = DBEdit1Enter
              OnExit = DBEdit1Exit
              OnKeyPress = DBEdit62KeyPress
            end
            object FLAG_ACEITO: TDBEdit
              Left = 330
              Top = 188
              Width = 67
              Height = 21
              TabStop = False
              DataField = 'FLAG_ACEITO'
              DataSource = dsproduto2
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 12
              Visible = False
              OnEnter = DBEdit1Enter
              OnExit = DBEdit1Exit
              OnKeyPress = DBEdit62KeyPress
            end
            object DBMemo1: TDBMemo
              Left = 332
              Top = 8
              Width = 285
              Height = 59
              DataField = 'APLICACAO'
              DataSource = dsproduto2
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Lucida Console'
              Font.Style = []
              ParentFont = False
              TabOrder = 13
              OnKeyPress = DBMemo1KeyPress
            end
            object DBEdit62: TDBEdit
              Left = 332
              Top = 142
              Width = 89
              Height = 21
              DataField = 'COMISSAO'
              DataSource = dsproduto2
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 17
              OnEnter = DBEdit1Enter
              OnExit = DBEdit1Exit
              OnKeyPress = DBEdit62KeyPress
            end
            object DBEdit29: TDBEdit
              Left = 128
              Top = 128
              Width = 121
              Height = 21
              CharCase = ecUpperCase
              DataField = 'REFERENCIA_FORNECEDOR'
              DataSource = dsproduto2
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 10
              OnEnter = DBEdit1Enter
              OnExit = DBEdit2Exit
              OnKeyPress = DBEdit29KeyPress
            end
            object DBEdit28: TDBEdit
              Left = 332
              Top = 166
              Width = 89
              Height = 21
              DataField = 'QTDE_EMBALAGEM'
              DataSource = dsproduto2
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 18
              OnEnter = DBEdit1Enter
              OnExit = DBEdit1Exit
              OnKeyPress = DBEdit62KeyPress
            end
            object DBEdit18: TDBEdit
              Left = 332
              Top = 118
              Width = 89
              Height = 21
              DataField = 'VALIDADE'
              DataSource = dsproduto2
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 16
              OnEnter = DBEdit1Enter
              OnExit = DBEdit1Exit
              OnKeyPress = DBEdit18KeyPress
            end
            object DBEdit15: TDBEdit
              Left = 332
              Top = 70
              Width = 285
              Height = 21
              DataField = 'LOCALICAZAO'
              DataSource = dsproduto2
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 14
              OnEnter = DBEdit1Enter
              OnExit = DBEdit1Exit
              OnKeyPress = DBEdit15KeyPress
            end
            object DBCheckBox1: TDBCheckBox
              Left = 470
              Top = 95
              Width = 137
              Height = 17
              Caption = 'Exportar para Balan'#231'a'
              DataField = 'USA_BALANCA'
              DataSource = dsproduto2
              TabOrder = 19
              ValueChecked = '1'
              ValueUnchecked = '2'
              OnKeyPress = DBCheckBox1KeyPress
            end
            object rComposicao: TRzGroupBox
              Left = 8
              Top = 152
              Width = 242
              Height = 46
              Caption = 'Composi'#231#227'o'
              TabOrder = 11
              Visible = False
              object DBEdit70: TDBEdit
                Left = 6
                Top = 17
                Width = 113
                Height = 21
                DataField = 'COMPOSICAO1'
                DataSource = dsproduto2
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                OnEnter = DBEdit1Enter
                OnExit = DBEdit1Exit
                OnKeyPress = DBEdit70KeyPress
              end
              object DBEdit71: TDBEdit
                Left = 122
                Top = 17
                Width = 113
                Height = 21
                DataField = 'COMPOSICAO2'
                DataSource = dsproduto2
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
                OnEnter = DBEdit1Enter
                OnExit = DBEdit1Exit
                OnKeyPress = DBEdit71KeyPress
              end
            end
            object eNCM: TRzDBButtonEdit
              Left = 332
              Top = 94
              Width = 125
              Height = 21
              DataSource = dsproduto2
              DataField = 'CLASSIFICACAO_FISCAL'
              FocusColor = 10550008
              TabOrder = 15
              OnKeyPress = eNCMKeyPress
              OnButtonClick = eNCMButtonClick
            end
          end
        end
        object PageSheet11: TPageSheet
          Left = 0
          Top = 21
          Width = 997
          Height = 229
          Caption = 'Entradas'
          DisplayMode = tdGlyph
          ImageIndex = 0
          Margin = 0
          PageIndex = 1
          TabColor = clWindow
          TabWidth = 0
          TransparentColor = clNone
          object Bevel8: TBevel
            Left = 0
            Top = 155
            Width = 997
            Height = 2
            Align = alTop
          end
          object GroupBox1: TGroupBox
            Left = 4
            Top = 160
            Width = 605
            Height = 41
            Caption = 'Filtro | Per'#237'odo'
            TabOrder = 0
            object Label4: TLabel
              Left = 112
              Top = 16
              Width = 6
              Height = 13
              Caption = 'a'
            end
            object di_entrada: TDateEdit
              Left = 7
              Top = 14
              Width = 98
              Height = 21
              NumGlyphs = 2
              TabOrder = 0
              OnKeyPress = di_entradaKeyPress
            end
            object df_entrada: TDateEdit
              Left = 127
              Top = 14
              Width = 98
              Height = 21
              NumGlyphs = 2
              TabOrder = 1
              OnKeyPress = df_entradaKeyPress
            end
            object bfiltro_entrada: TAdvGlowButton
              Left = 512
              Top = 11
              Width = 84
              Height = 23
              Caption = 'Filtrar...'
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
                650041646F626520496D616765526561647971C9653C0000030B4944415478DA
                62FCFFFF3F032500208058B009EEDDBB971D68B01F1047FEFBF74F0348AB0231
                90F9EF0A90BE03A4E702F1DE808080BF0001C488EE02A0662DA0D8725151513D
                090909066E6E6E062E2E2E0690BA8F1F3F327CFEFC99E1D1A3470CAF5FBF3E02
                148B000820B00432DEB56BD7FE870F1F82ACFB8F0BFCFEFDFBFFF9F3E7FFAF5C
                B972214000C1BDF0E6ACBDF3FFBFFF276B70F3AB71BCE66478F39281E1FFDF7F
                0CFFFEFC666064E2661031EA6760E61087BB545A5A9AE1C68D1B9E0001C402D5
                CC0CD41CCC296CA6C9C32606D6F4FFF75F867FBFBE337C7F779D8143268CE10F
                031FC3EB172FC0DE78FFFE3D83BCBC3C03D0950C00010436E0DFDF7FB2400362
                58B91518FE7C3CC3C0C461C8F0E7CF1B861F1F6E313CFF63C5F0F7AD2CC3DF57
                9719DEBC79C3C0C4C4040F1390010001C4F2EA942D1BD0A9299C4206BC0C0CCC
                0CFFBEBF606060F9C9F0E1F16E064689440661212F0616161606A0BFC1F4D7AF
                5FC15E0069FEFBF72F034000B100351B02713A3B9F2AC3FF3FDF816648320055
                33FCFF0734ECCB6386BF9F6633FCFDFF87E12F0317C33F6663A0143BD8153017
                000410CBFF3FFF26738A9A8A7C7F7303E895FF0C6C5C2A40E3591804249D81FE
                BFCDF0EFF72F862F6F2E33FC97CF63F8F58F1DEC12666666B00120170004100B
                D0FFABBE3C3D7EE8FF9FBFBF816CD6DF7F2E168AC8BB31FDFDF181E1F7B7B70C
                5F99941898F5E731FC631565F80D0CC4DFBFBFC1A31C64184000B148399CEC81
                45CDC34DBA7C0C7F7E147D7F7395E1CB87E70CBF452319FE083A30707270025D
                F21B6E2B2C0C7EFDFAC50010402849F9DF9F7FEB39382518BFFE116410739AC2
                F0EAED57863FDFBFC3E5191919192425251964656519EEDDBB0776014000C10D
                B8BF56CB13E805A5C71F845BEEFD772AD47CF0821B14D7ECECEC608D20DB419A
                4149F9CA952B0C172E5C78F1E7CF1F3F800082E785BB2B35F4FEFFFDFB4F25EA
                F695254B9628029D5803C4C1C010E707C53B5031C3BB77EF187EFCF801D2B818
                E8959ECACACA570001C448283BCF9A358B17A841058881C1F0FB467171F14F64
                7980000300E768D347C7AF4C950000000049454E44AE426082}
              TabOrder = 2
              OnClick = bfiltro_entradaClick
              Appearance.BorderColor = 14727579
              Appearance.BorderColorHot = 10079963
              Appearance.BorderColorDown = 4548219
              Appearance.BorderColorChecked = clBlack
              Appearance.Color = 15653832
              Appearance.ColorTo = 16178633
              Appearance.ColorChecked = 7915518
              Appearance.ColorCheckedTo = 11918331
              Appearance.ColorDisabled = 15921906
              Appearance.ColorDisabledTo = 15921906
              Appearance.ColorDown = 7778289
              Appearance.ColorDownTo = 4296947
              Appearance.ColorHot = 15465983
              Appearance.ColorHotTo = 11332863
              Appearance.ColorMirror = 15586496
              Appearance.ColorMirrorTo = 16245200
              Appearance.ColorMirrorHot = 5888767
              Appearance.ColorMirrorHotTo = 10807807
              Appearance.ColorMirrorDown = 946929
              Appearance.ColorMirrorDownTo = 5021693
              Appearance.ColorMirrorChecked = 10480637
              Appearance.ColorMirrorCheckedTo = 5682430
              Appearance.ColorMirrorDisabled = 11974326
              Appearance.ColorMirrorDisabledTo = 15921906
              Appearance.GradientHot = ggVertical
              Appearance.GradientMirrorHot = ggVertical
              Appearance.GradientDown = ggVertical
              Appearance.GradientMirrorDown = ggVertical
              Appearance.GradientChecked = ggVertical
            end
            object combo_entrada: TComboBox
              Left = 241
              Top = 12
              Width = 264
              Height = 21
              Style = csDropDownList
              ItemHeight = 13
              ItemIndex = 0
              TabOrder = 3
              Text = '** TODAS AS ENTRADAS **'
              Items.Strings = (
                '** TODAS AS ENTRADAS **'
                '0 - IMPLANTA'#199#195'O DE SALDO'
                '1 - COMPRA'
                '7 - DEVOL.DE VENDA'
                '8 - RETORNO SERIAL'
                '10-ACERTO ESTOQUE'
                '13-ENTRADA PRODUTO ACABADO'
                '16-ENTRADA DA RENTABILIDADE')
            end
          end
          object GroupBox13: TGroupBox
            Left = 640
            Top = 160
            Width = 121
            Height = 41
            Caption = 'Totalizador'
            TabOrder = 1
            object eentrada: TLabel
              Left = 9
              Top = 17
              Width = 104
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Caption = '0,00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
          object wwDBGrid4: TwwDBGrid
            Left = 0
            Top = 0
            Width = 997
            Height = 155
            DittoAttributes.ShortCutDittoField = 0
            DittoAttributes.ShortCutDittoRecord = 0
            DittoAttributes.Options = []
            DisableThemesInTitle = False
            Selected.Strings = (
              'MOVIMENTO'#9'4'#9'C'#211'D.'#9'F'#9'MOVIMENTO'
              'MOV'#9'23'#9'DESCRI'#199#195'O'#9'F'#9'MOVIMENTO'
              'cliente'#9'28'#9'FORNECEDOR'#9'F'
              'DATA'#9'11'#9'DATA/FABR'#9#9
              'NUMERONOTA'#9'7'#9'N.FISCAL'#9#9
              'QTDE'#9'10'#9'QTDE.'#9#9
              'UNITARIO'#9'8'#9'UNIT'#193'RIO'#9#9
              'TOTAL'#9'9'#9'TOTAL'#9#9
              'CODNOTA'#9'8'#9'CD.NOTA'#9#9
              'LOTE_FABRICACAO'#9'7'#9'LOTE'#9#9)
            IniAttributes.Delimiter = ';;'
            TitleColor = clBtnFace
            FixedCols = 0
            ShowHorzScrollBar = True
            Align = alTop
            DataSource = dsmov_entrada
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
            ParentFont = False
            TabOrder = 2
            TitleAlignment = taCenter
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -9
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            TitleLines = 2
            TitleButtons = False
            UseTFields = False
          end
        end
        object PageSheet12: TPageSheet
          Left = 0
          Top = 21
          Width = 997
          Height = 229
          Caption = 'Sa'#237'das'
          DisplayMode = tdGlyph
          ImageIndex = 0
          Margin = 0
          PageIndex = 2
          TabColor = clWindow
          TabWidth = 0
          TransparentColor = clNone
          object Bevel9: TBevel
            Left = 0
            Top = 155
            Width = 997
            Height = 2
            Align = alTop
          end
          object wwDBGrid5: TwwDBGrid
            Left = 0
            Top = 0
            Width = 997
            Height = 155
            DittoAttributes.ShortCutDittoField = 0
            DittoAttributes.ShortCutDittoRecord = 0
            DittoAttributes.Options = []
            DisableThemesInTitle = False
            Selected.Strings = (
              'MOVIMENTO'#9'4'#9'C'#211'D.'#9'F'#9'MOVIMENTO'
              'MOV'#9'23'#9'DESCRI'#199#195'O'#9'F'#9'MOVIMENTO'
              'cliente'#9'28'#9'CLIENTE'#9#9
              'DATA'#9'11'#9'DATA/FABR'#9#9
              'NUMERONOTA'#9'7'#9'N.FISCAL'#9#9
              'QTDE'#9'10'#9'QTDE.'#9#9
              'UNITARIO'#9'8'#9'UNIT'#193'RIO'#9#9
              'TOTAL'#9'9'#9'TOTAL'#9#9
              'CODNOTA'#9'8'#9'CD.NOTA'#9#9
              'LOTE_FABRICACAO'#9'7'#9'LOTE'#9#9)
            IniAttributes.Delimiter = ';;'
            TitleColor = clBtnFace
            FixedCols = 0
            ShowHorzScrollBar = True
            Align = alTop
            DataSource = dsmov_saida
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
            ParentFont = False
            TabOrder = 0
            TitleAlignment = taCenter
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -9
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            TitleLines = 2
            TitleButtons = False
            UseTFields = False
          end
          object GroupBox14: TGroupBox
            Left = 4
            Top = 160
            Width = 605
            Height = 41
            Caption = 'Filtro | Per'#237'odo'
            TabOrder = 1
            object Label9: TLabel
              Left = 112
              Top = 16
              Width = 6
              Height = 13
              Caption = 'a'
            end
            object di_saida: TDateEdit
              Left = 7
              Top = 14
              Width = 98
              Height = 21
              NumGlyphs = 2
              TabOrder = 0
              OnKeyPress = di_entradaKeyPress
            end
            object df_saida: TDateEdit
              Left = 127
              Top = 14
              Width = 98
              Height = 21
              NumGlyphs = 2
              TabOrder = 1
              OnKeyPress = df_saidaKeyPress
            end
            object bfiltro_saida: TAdvGlowButton
              Left = 512
              Top = 11
              Width = 84
              Height = 23
              Caption = 'Filtrar...'
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
                650041646F626520496D616765526561647971C9653C0000030B4944415478DA
                62FCFFFF3F032500208058B009EEDDBB971D68B01F1047FEFBF74F0348AB0231
                90F9EF0A90BE03A4E702F1DE808080BF0001C488EE02A0662DA0D8725151513D
                090909066E6E6E062E2E2E0690BA8F1F3F327CFEFC99E1D1A3470CAF5FBF3E02
                148B000820B00432DEB56BD7FE870F1F82ACFB8F0BFCFEFDFBFFF9F3E7FFAF5C
                B972214000C1BDF0E6ACBDF3FFBFFF276B70F3AB71BCE66478F39281E1FFDF7F
                0CFFFEFC666064E2661031EA6760E61087BB545A5A9AE1C68D1B9E0001C402D5
                CC0CD41CCC296CA6C9C32606D6F4FFF75F867FBFBE337C7F779D8143268CE10F
                031FC3EB172FC0DE78FFFE3D83BCBC3C03D0950C00010436E0DFDF7FB2400362
                58B91518FE7C3CC3C0C461C8F0E7CF1B861F1F6E313CFF63C5F0F7AD2CC3DF57
                9719DEBC79C3C0C4C4040F1390010001C4F2EA942D1BD0A9299C4206BC0C0CCC
                0CFFBEBF606060F9C9F0E1F16E064689440661212F0616161606A0BFC1F4D7AF
                5FC15E0069FEFBF72F034000B100351B02713A3B9F2AC3FF3FDF816648320055
                33FCFF0734ECCB6386BF9F6633FCFDFF87E12F0317C33F6663A0143BD8153017
                000410CBFF3FFF26738A9A8A7C7F7303E895FF0C6C5C2A40E3591804249D81FE
                BFCDF0EFF72F862F6F2E33FC97CF63F8F58F1DEC12666666B00120170004100B
                D0FFABBE3C3D7EE8FF9FBFBF816CD6DF7F2E168AC8BB31FDFDF181E1F7B7B70C
                5F99941898F5E731FC631565F80D0CC4DFBFBFC1A31C64184000B148399CEC81
                45CDC34DBA7C0C7F7E147D7F7395E1CB87E70CBF452319FE083A30707270025D
                F21B6E2B2C0C7EFDFAC50010402849F9DF9F7FEB39382518BFFE116410739AC2
                F0EAED57863FDFBFC3E5191919192425251964656519EEDDBB0776014000C10D
                B8BF56CB13E805A5C71F845BEEFD772AD47CF0821B14D7ECECEC608D20DB419A
                4149F9CA952B0C172E5C78F1E7CF1F3F800082E785BB2B35F4FEFFFDFB4F25EA
                F695254B9628029D5803C4C1C010E707C53B5031C3BB77EF187EFCF801D2B818
                E8959ECACACA570001C448283BCF9A358B17A841058881C1F0FB467171F14F64
                7980000300E768D347C7AF4C950000000049454E44AE426082}
              TabOrder = 2
              OnClick = bfiltro_saidaClick
              Appearance.BorderColor = 14727579
              Appearance.BorderColorHot = 10079963
              Appearance.BorderColorDown = 4548219
              Appearance.BorderColorChecked = clBlack
              Appearance.Color = 15653832
              Appearance.ColorTo = 16178633
              Appearance.ColorChecked = 7915518
              Appearance.ColorCheckedTo = 11918331
              Appearance.ColorDisabled = 15921906
              Appearance.ColorDisabledTo = 15921906
              Appearance.ColorDown = 7778289
              Appearance.ColorDownTo = 4296947
              Appearance.ColorHot = 15465983
              Appearance.ColorHotTo = 11332863
              Appearance.ColorMirror = 15586496
              Appearance.ColorMirrorTo = 16245200
              Appearance.ColorMirrorHot = 5888767
              Appearance.ColorMirrorHotTo = 10807807
              Appearance.ColorMirrorDown = 946929
              Appearance.ColorMirrorDownTo = 5021693
              Appearance.ColorMirrorChecked = 10480637
              Appearance.ColorMirrorCheckedTo = 5682430
              Appearance.ColorMirrorDisabled = 11974326
              Appearance.ColorMirrorDisabledTo = 15921906
              Appearance.GradientHot = ggVertical
              Appearance.GradientMirrorHot = ggVertical
              Appearance.GradientDown = ggVertical
              Appearance.GradientMirrorDown = ggVertical
              Appearance.GradientChecked = ggVertical
            end
            object combo_saida: TComboBox
              Left = 241
              Top = 12
              Width = 264
              Height = 21
              Style = csDropDownList
              ItemHeight = 13
              ItemIndex = 0
              TabOrder = 3
              Text = '** TODAS AS SA'#205'DAS **'
              Items.Strings = (
                '** TODAS AS SA'#205'DAS **'
                '2 - VENDA'
                '3 - DEVOL.DE COMPRA'
                '4 - SA'#205'DA'
                '5 - BAIXA DE SERIAL'
                '6 - EXCLUS'#195'O SERIAL'
                '9 - VENDA EM O.S'
                '11-BAIXA MAT'#201'RIA-PRIMA'
                '12-ESTORNA MAT'#201'RIA-PRIMA'
                '14-ESTORNA PRODUTO ACABADO'
                '15-BAIXA PARA RENTABILIDADE'
                '17-INSTALA'#199#195'O'
                '18-GARANTIA DE SERVI'#199'O'
                '19-SAIDA PARA OFICINA'
                '20-DOA'#199#195'O'
                '99-SAIDA SEM BAIXAR ESTOQUE')
            end
          end
          object GroupBox15: TGroupBox
            Left = 640
            Top = 160
            Width = 121
            Height = 41
            Caption = 'Totalizador'
            TabOrder = 2
            object esaida: TLabel
              Left = 9
              Top = 17
              Width = 104
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Caption = '0,00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
        end
      end
    end
    object PageSheet7: TPageSheet
      Left = 0
      Top = 21
      Width = 997
      Height = 229
      Caption = 'C'#225'lculo Pre'#231'o'
      DisplayMode = tdGlyph
      ImageIndex = 0
      Margin = 0
      PageIndex = 1
      TabColor = clWindow
      TabWidth = 0
      TransparentColor = clNone
      object ppreco: TPanel
        Left = 0
        Top = 0
        Width = 997
        Height = 229
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object pficha1: TPanel
          Left = 0
          Top = 0
          Width = 997
          Height = 229
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          object Label87: TLabel
            Left = 657
            Top = 62
            Width = 103
            Height = 13
            Caption = 'Novo Pre'#231'o de Venda'
          end
          object Label70: TLabel
            Left = 562
            Top = 62
            Width = 73
            Height = 13
            Caption = 'Pre'#231'o de Custo'
          end
          object ptermometro: TFlatPanel
            Left = 555
            Top = 154
            Width = 216
            Height = 42
            ParentColor = True
            Visible = False
            ColorHighLight = clBtnFace
            ColorShadow = clBtnFace
            TabOrder = 0
            UseDockManager = True
            object Label88: TLabel
              Left = 3
              Top = 22
              Width = 65
              Height = 12
              Caption = 'Processando'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object batualizar_estoque: TBitBtn
              Left = 7
              Top = 3
              Width = 206
              Height = 22
              Caption = 'Atualizar Pre'#231'os'
              TabOrder = 0
              Visible = False
              OnClick = batualizar_estoqueClick
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECECECF5F5F5FFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFED
                EDEDAFAFAFB5B5B5F4F4F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFEEEEEEB3B3B3DFDFDFD7D7D7B5B5B5F4F4F4FFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEEEEB6B6B6E1
                E1E1FCFCFCFCFCFCD8D8D8B5B5B5F4F4F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFEFEFEFBABABAE3E3E3FCFCFCFAEBD4FCD196FCFAF6D8D8D8B6B6
                B6F4F4F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFBDBDBDE4E4E4FCFCFCFA
                EBD5FCCC85FECE8BF9D096F8F6F2D8D8D8B6B6B6F4F4F4FFFFFFFFFFFFFFFFFF
                F0F0F0C1C1C1E6E6E6FCFCFCFAEBD5FCCC87FED497FED59BFECF8DF6CB8CFCFB
                FAD8D8D8B6B6B6F5F5F5FFFFFFF1F1F1C4C4C4E7E7E7FCFCFCFAEBD5FCCC87FE
                D497FED69DFED59AFECD88FCE0B9FCFCFCD6D6D6B4B4B4F8F8F8F2F2F2C8C8C8
                E8E8E8FCFCFCFAEAD2FECB82FED397FED69DFED59AFECE8AFCE1BBFCFCFCD8D8
                D8B8B8B8F8F8F8FFFFFFCCCCCCEAEAEAFCFCFCF9F9F9FAF2E6FDCD88FED395FE
                D499FECE8AFCE1BBFCFCFCD9D9D9BCBCBCF9F9F9FFFFFFFFFFFFCCCCCCFCFCFC
                FCFCFCFBFBFBF6F6F6FCF4E9FDCE89FECB82FCE1BBFCFCFCDBDBDBBFBFBFF9F9
                F9FFFFFFFFFFFFFFFFFFCDCDCDFCFCFCDFDFDFCACACACDCDCDF6F6F6FAF2E7FC
                E2BCFCFCFCDDDDDDC2C2C2F9F9F9FFFFFFFFFFFFFFFFFFFFFFFFCFCFCFFCFCFC
                CCCCCCFFFFFFD4D4D4F2F2F2FAFAFAFCFCFCDFDFDFC6C6C6FAFAFAFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFD1D1D1FCFCFCE1E1E1CDCDCDDFDFDFFCFCFCFCFCFCE1
                E1E1CACACAFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD2D2D2FCFCFC
                FCFCFCFCFCFCFCFCFCFCFCFCE3E3E3CCCCCCFAFAFAFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFD4D4D4D3D3D3D1D1D1D0D0D0CFCFCFCDCDCDCCCCCCFB
                FBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            end
            object bar: TProgressBar
              Left = 1
              Top = 34
              Width = 214
              Height = 7
              Align = alBottom
              TabOrder = 1
            end
          end
          object ppreco_automatico: TDBCheckBox
            Left = 558
            Top = 8
            Width = 173
            Height = 17
            Caption = 'C'#225'lcula Venda Autom'#225'tico'
            DataField = 'PRECO_AUTOMATICO'
            DataSource = dspreco
            TabOrder = 2
            ValueChecked = '1'
            ValueUnchecked = '2'
            OnExit = ppreco_automaticoExit
            OnKeyPress = DBCheckBox1KeyPress
          end
          object pdtaltera: TFlatPanel
            Left = 555
            Top = 112
            Width = 218
            Height = 47
            ParentColor = True
            Visible = False
            ColorHighLight = clBtnFace
            ColorShadow = clBtnFace
            TabOrder = 3
            UseDockManager = True
            object GroupBox10: TGroupBox
              Left = 5
              Top = 0
              Width = 205
              Height = 42
              Caption = 'Data da '#218'ltima Altera'#231#227'o'
              Enabled = False
              TabOrder = 0
              object DBText1: TDBText
                Left = 52
                Top = 15
                Width = 106
                Height = 17
                DataField = 'DATA_ALTERACAO'
                DataSource = dspreco
                Font.Charset = ANSI_CHARSET
                Font.Color = clRed
                Font.Height = -16
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
            end
          end
          object GroupBox4: TGroupBox
            Left = 235
            Top = 3
            Width = 317
            Height = 219
            Caption = 'Comercializa'#231#227'o'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            object Label25: TLabel
              Left = 8
              Top = 14
              Width = 90
              Height = 13
              Caption = 'ICMS de Sa'#237'da:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label26: TLabel
              Left = 8
              Top = 34
              Width = 25
              Height = 13
              Caption = 'PIS:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label27: TLabel
              Left = 8
              Top = 54
              Width = 50
              Height = 13
              Caption = 'COFINS:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label28: TLabel
              Left = 8
              Top = 74
              Width = 115
              Height = 13
              Caption = 'Contribui'#231#227'o Social:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label39: TLabel
              Left = 8
              Top = 94
              Width = 110
              Height = 13
              Caption = 'Custo Operacional:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label40: TLabel
              Left = 8
              Top = 114
              Width = 61
              Height = 13
              Caption = 'Comiss'#227'o:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Bevel16: TBevel
              Left = 0
              Top = 133
              Width = 316
              Height = 2
            end
            object Label41: TLabel
              Left = 8
              Top = 140
              Width = 111
              Height = 13
              Caption = 'Total dos Custos:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label49: TLabel
              Left = 9
              Top = 192
              Width = 105
              Height = 13
              Caption = 'Pre'#231'o de Venda:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label50: TLabel
              Left = 134
              Top = 36
              Width = 15
              Height = 9
              Caption = '(+)'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -9
              Font.Name = 'Lucida Console'
              Font.Style = []
              ParentFont = False
            end
            object Label51: TLabel
              Left = 134
              Top = 56
              Width = 15
              Height = 9
              Caption = '(+)'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -9
              Font.Name = 'Lucida Console'
              Font.Style = []
              ParentFont = False
            end
            object Label52: TLabel
              Left = 134
              Top = 76
              Width = 15
              Height = 9
              Caption = '(+)'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -9
              Font.Name = 'Lucida Console'
              Font.Style = []
              ParentFont = False
            end
            object Label53: TLabel
              Left = 134
              Top = 96
              Width = 15
              Height = 9
              Caption = '(+)'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -9
              Font.Name = 'Lucida Console'
              Font.Style = []
              ParentFont = False
            end
            object Label54: TLabel
              Left = 134
              Top = 116
              Width = 15
              Height = 9
              Caption = '(+)'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -9
              Font.Name = 'Lucida Console'
              Font.Style = []
              ParentFont = False
            end
            object Label61: TLabel
              Left = 134
              Top = 16
              Width = 15
              Height = 9
              Caption = '(+)'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -9
              Font.Name = 'Lucida Console'
              Font.Style = []
              ParentFont = False
            end
            object Bevel17: TBevel
              Left = 0
              Top = 159
              Width = 317
              Height = 2
            end
            object Label62: TLabel
              Left = 8
              Top = 166
              Width = 105
              Height = 13
              Caption = 'Lucro Desejado:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label63: TLabel
              Left = 134
              Top = 168
              Width = 15
              Height = 9
              Caption = '(+)'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -9
              Font.Name = 'Lucida Console'
              Font.Style = []
              ParentFont = False
            end
            object Bevel18: TBevel
              Left = 0
              Top = 185
              Width = 316
              Height = 2
            end
            object DBEdit23: TDBEdit
              Left = 152
              Top = 30
              Width = 75
              Height = 21
              DataField = 'PIS_P'
              DataSource = dspreco
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              OnEnter = DBEdit1Enter
              OnExit = DBEdit23Exit
            end
            object DBEdit24: TDBEdit
              Left = 152
              Top = 50
              Width = 75
              Height = 21
              DataField = 'COFINS_P'
              DataSource = dspreco
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
              OnEnter = DBEdit1Enter
              OnExit = DBEdit24Exit
            end
            object DBEdit25: TDBEdit
              Left = 152
              Top = 70
              Width = 75
              Height = 21
              DataField = 'CONTRIBUICAO_SOCIAL_P'
              DataSource = dspreco
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 6
              OnEnter = DBEdit1Enter
              OnExit = DBEdit25Exit
            end
            object DBEdit26: TDBEdit
              Left = 152
              Top = 90
              Width = 75
              Height = 21
              DataField = 'CUSTO_OPERACIONAL_P'
              DataSource = dspreco
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 8
              OnEnter = DBEdit1Enter
              OnExit = DBEdit26Exit
            end
            object DBEdit27: TDBEdit
              Left = 152
              Top = 110
              Width = 75
              Height = 21
              DataField = 'COMISSAO_P'
              DataSource = dspreco
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 10
              OnEnter = DBEdit1Enter
              OnExit = DBEdit27Exit
            end
            object DBEdit33: TDBEdit
              Left = 228
              Top = 30
              Width = 80
              Height = 21
              DataField = 'PIS'
              DataSource = dspreco
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
            end
            object DBEdit34: TDBEdit
              Left = 228
              Top = 50
              Width = 80
              Height = 21
              DataField = 'COFINS'
              DataSource = dspreco
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 5
            end
            object DBEdit35: TDBEdit
              Left = 228
              Top = 70
              Width = 80
              Height = 21
              DataField = 'CONTRIBUICAO_SOCIAL'
              DataSource = dspreco
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 7
            end
            object DBEdit36: TDBEdit
              Left = 228
              Top = 90
              Width = 80
              Height = 21
              DataField = 'CUSTO_OPERACIONAL'
              DataSource = dspreco
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 9
            end
            object DBEdit37: TDBEdit
              Left = 228
              Top = 110
              Width = 80
              Height = 21
              DataField = 'COMISSAO'
              DataSource = dspreco
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 11
            end
            object DBEdit38: TDBEdit
              Left = 152
              Top = 136
              Width = 75
              Height = 21
              DataField = 'TOTAL_CUSTO_P'
              DataSource = dspreco
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 12
              OnEnter = DBEdit1Enter
              OnExit = DBEdit19Exit
            end
            object DBEdit4: TDBEdit
              Left = 228
              Top = 136
              Width = 80
              Height = 21
              DataField = 'TOTAL_CUSTO'
              DataSource = dspreco
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 13
            end
            object DBEdit5: TDBEdit
              Left = 152
              Top = 188
              Width = 157
              Height = 26
              DataField = 'PRECO_VENDA'
              DataSource = dspreco
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 16
            end
            object DBEdit6: TDBEdit
              Left = 152
              Top = 9
              Width = 75
              Height = 21
              DataField = 'ICMS_SAIDA_P'
              DataSource = dspreco
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnEnter = DBEdit1Enter
              OnExit = DBEdit6Exit
            end
            object DBEdit12: TDBEdit
              Left = 228
              Top = 9
              Width = 80
              Height = 21
              DataField = 'ICMS_SAIDA'
              DataSource = dspreco
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
            object DBEdit22: TDBEdit
              Left = 152
              Top = 162
              Width = 75
              Height = 21
              DataField = 'LUCRO_P'
              DataSource = dspreco
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 14
              OnEnter = DBEdit1Enter
              OnExit = DBEdit22Exit
              OnKeyPress = DBEdit22KeyPress
            end
            object DBEdit32: TDBEdit
              Left = 228
              Top = 162
              Width = 80
              Height = 21
              DataField = 'LUCRO'
              DataSource = dspreco
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 15
              OnEnter = DBEdit32Enter
              OnExit = DBEdit32Exit
              OnKeyPress = DBEdit32KeyPress
            end
          end
          object GroupBox3: TGroupBox
            Left = 6
            Top = 3
            Width = 226
            Height = 219
            Caption = 'Custos'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            object Label19: TLabel
              Left = 8
              Top = 16
              Width = 130
              Height = 13
              Caption = 'Valor da Nota Fiscal'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label20: TLabel
              Left = 8
              Top = 46
              Width = 31
              Height = 13
              Caption = 'ICMS'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Bevel1: TBevel
              Left = 0
              Top = 175
              Width = 226
              Height = 2
            end
            object Label21: TLabel
              Left = 8
              Top = 182
              Width = 117
              Height = 13
              Caption = 'Custo Mercadoria:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label22: TLabel
              Left = 8
              Top = 66
              Width = 53
              Height = 13
              Caption = 'Desconto'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label23: TLabel
              Left = 8
              Top = 97
              Width = 29
              Height = 13
              Caption = 'Frete'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label24: TLabel
              Left = 8
              Top = 155
              Width = 17
              Height = 13
              Caption = 'IPI'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label77: TLabel
              Left = 8
              Top = 116
              Width = 41
              Height = 13
              Caption = 'Seguro'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label78: TLabel
              Left = 8
              Top = 135
              Width = 97
              Height = 13
              Caption = 'Outras Despesas'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label79: TLabel
              Left = 122
              Top = 48
              Width = 15
              Height = 9
              Caption = '(-)'
              Font.Charset = ANSI_CHARSET
              Font.Color = clRed
              Font.Height = -9
              Font.Name = 'Lucida Console'
              Font.Style = []
              ParentFont = False
            end
            object Label81: TLabel
              Left = 122
              Top = 68
              Width = 15
              Height = 9
              Caption = '(-)'
              Font.Charset = ANSI_CHARSET
              Font.Color = clRed
              Font.Height = -9
              Font.Name = 'Lucida Console'
              Font.Style = []
              ParentFont = False
            end
            object Label82: TLabel
              Left = 122
              Top = 96
              Width = 15
              Height = 9
              Caption = '(+)'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -9
              Font.Name = 'Lucida Console'
              Font.Style = []
              ParentFont = False
            end
            object Label83: TLabel
              Left = 122
              Top = 116
              Width = 15
              Height = 9
              Caption = '(+)'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -9
              Font.Name = 'Lucida Console'
              Font.Style = []
              ParentFont = False
            end
            object Label84: TLabel
              Left = 122
              Top = 136
              Width = 15
              Height = 9
              Caption = '(+)'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -9
              Font.Name = 'Lucida Console'
              Font.Style = []
              ParentFont = False
            end
            object Label85: TLabel
              Left = 122
              Top = 157
              Width = 15
              Height = 9
              Caption = '(+)'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -9
              Font.Name = 'Lucida Console'
              Font.Style = []
              ParentFont = False
            end
            object Bevel2: TBevel
              Left = 0
              Top = 37
              Width = 226
              Height = 2
            end
            object Bevel15: TBevel
              Left = 0
              Top = 86
              Width = 226
              Height = 2
            end
            object DBEdit19: TDBEdit
              Left = 141
              Top = 13
              Width = 80
              Height = 21
              DataField = 'VALOR_ULTIMA_COMPRA'
              DataSource = dspreco
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
              OnEnter = DBEdit1Enter
              OnExit = DBEdit19Exit
            end
            object DBEdit20: TDBEdit
              Left = 141
              Top = 42
              Width = 80
              Height = 21
              DataField = 'ICMS_ENTRADA'
              DataSource = dspreco
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              OnEnter = DBEdit1Enter
              OnExit = DBEdit19Exit
            end
            object DBEdit21: TDBEdit
              Left = 141
              Top = 62
              Width = 80
              Height = 21
              DataField = 'DESCONTO'
              DataSource = dspreco
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
              OnEnter = DBEdit1Enter
              OnExit = DBEdit19Exit
            end
            object DBEdit3: TDBEdit
              Left = 141
              Top = 90
              Width = 80
              Height = 21
              DataField = 'FRETE'
              DataSource = dspreco
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
              OnEnter = DBEdit1Enter
              OnExit = DBEdit19Exit
            end
            object DBEdit64: TDBEdit
              Left = 141
              Top = 110
              Width = 80
              Height = 21
              DataField = 'SEGURO'
              DataSource = dspreco
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 5
              OnEnter = DBEdit1Enter
              OnExit = DBEdit19Exit
            end
            object DBEdit65: TDBEdit
              Left = 141
              Top = 130
              Width = 80
              Height = 21
              DataField = 'OUTRAS_DESPESAS'
              DataSource = dspreco
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 6
              OnEnter = DBEdit1Enter
              OnExit = DBEdit19Exit
            end
            object DBEdit66: TDBEdit
              Left = 141
              Top = 150
              Width = 80
              Height = 21
              DataField = 'IPI'
              DataSource = dspreco
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 8
              OnEnter = DBEdit1Enter
              OnExit = DBEdit19Exit
            end
            object DBEdit67: TDBEdit
              Left = 141
              Top = 178
              Width = 80
              Height = 21
              DataField = 'CUSTO_COMPRA'
              DataSource = dspreco
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 9
              OnEnter = DBEdit1Enter
            end
            object DBEdit68: TDBEdit
              Left = 56
              Top = 43
              Width = 62
              Height = 21
              DataField = 'ICMS_ENTRADA_P'
              DataSource = dspreco
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              OnEnter = DBEdit1Enter
              OnExit = DBEdit68Exit
            end
            object FlatPanel12: TFlatPanel
              Left = 185
              Top = 0
              Width = 33
              Height = 13
              ParentColor = True
              ColorHighLight = clBtnFace
              ColorShadow = clBtnFace
              TabOrder = 10
              UseDockManager = True
              object Label86: TLabel
                Left = 10
                Top = 0
                Width = 16
                Height = 13
                Caption = 'R$'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = [fsBold]
                ParentFont = False
              end
            end
            object DBEdit69: TDBEdit
              Left = 56
              Top = 150
              Width = 62
              Height = 21
              DataField = 'IPI_P'
              DataSource = dspreco
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 7
              OnEnter = DBEdit1Enter
              OnExit = DBEdit69Exit
            end
          end
          object bnovo_preco_venda: TRzDBNumericEdit
            Left = 656
            Top = 78
            Width = 110
            Height = 28
            DataSource = dspreco
            DataField = 'NOVO_PRECO_VENDA'
            Alignment = taLeftJustify
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -17
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            FocusColor = 11075583
            ParentFont = False
            TabOrder = 6
            OnEnter = bnovo_preco_vendaEnter
            OnExit = bnovo_preco_vendaExit
            IntegersOnly = False
            DisplayFormat = ',0;(,0)'
          end
          object bnovo_preco_custo: TRzDBNumericEdit
            Left = 560
            Top = 78
            Width = 91
            Height = 28
            DataSource = dspreco
            DataField = 'NOVO_PRECO_CUSTO'
            Alignment = taLeftJustify
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -17
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            FocusColor = 11075583
            ParentFont = False
            TabOrder = 7
            OnEnter = bnovo_preco_custoEnter
            OnExit = bnovo_preco_custoExit
            IntegersOnly = False
            DisplayFormat = ',0;(,0)'
          end
          object batu: TAdvGlowButton
            Left = 555
            Top = 199
            Width = 218
            Height = 24
            Caption = 'Atualizar Pre'#231'os'
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
              650041646F626520496D616765526561647971C9653C0000029B4944415478DA
              62BC7AF5EA7F2060F8F7EF1F03884666036931131393D70C78004000315EBE7C
              F9BF96961686C4F3E7CF195EBE7CC9F0FBF76F317373739C8600041013C82610
              78FAF429C3C58B17191E3F7E0CE64B4A4A32888A8A32303333BF3A7AF4A8282E
              0300028809E45C1078FDFA3583A1A121E3AB57AFCE7DFBF60DEC0D696969B821
              070F1EC46A084000C10D10161666387DFAF44F205F94858585E1FDEB5F0C27F6
              BC6190959565101717071BB26FDF3E0C4300028805E605904219191936A09F65
              BF7E6260583BF729C3AF1FA0406560B0749507BBE8C99327AF76EDDA25E6E6E6
              060F13800002B9E0FBBB77EFC01C90A2CFEFFF31AC9AF998819B87854154929D
              E1CAE94F0CC777BF61505454649092926200BAEED5B66DDBE02E0108209001EE
              77EEDCF9FEE6CD1B903319DE019DFEFBE77F0646264606661646063E4156B821
              CACACA2057820DD9B46913D8108000620479E1D8B163D6408376ABAAAA728202
              EDDEF5CF0CBBD7BE046A666360656362F8FBE73FC387B7BF18744CF918ACDD45
              196EDDBAC570EFDE3D869F3F7F8A01041013C8142B2BABA340035C6FDCB8F11D
              180B0C4A9ABC0CAEC1E20C9FDE035DF3EB1FD0350C6083AE5F7C07F4E67F0626
              26263006EAE102082046582082003094AD81FCDD9A9A9A9C1212126097EC5CF3
              8281959599818B978121305186E1E9B34760DBBF7EFDAA141C1C7C1F2080500C
              0081DDBB7783BDA3A3A3C3094A4C77AF7D6238B1F71D4358BA1CC3C347F7C09A
              BF7CF9A2141212721FA41E2080300C0081EDDBB7830DD1D3D3E3042526100006
              34C3DDBB77C136C3348300400061350004366FDE6C0194DBA7AFAFCFF9E3C70F
              B8B3913583004000E1340004366CD8600174C93E4E2000393B3434F43EBA1A80
              00C26B0008AC59B306E4926740CD8FB0C903041800317E55ED538993D2000000
              0049454E44AE426082}
            TabOrder = 8
            OnClick = batuClick
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
          object ptampapreco: TFlatPanel
            Left = 0
            Top = 0
            Width = 57
            Height = 229
            ParentColor = True
            Visible = False
            ColorHighLight = clBtnFace
            ColorShadow = clBtnFace
            TabOrder = 1
            UseDockManager = True
            object Label38: TLabel
              Left = 288
              Top = 96
              Width = 198
              Height = 13
              Caption = 'Produto sem C'#225'lculo de pre'#231'o!'
              Font.Charset = ANSI_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object bitbtn7: TAdvGlowButton
              Left = 288
              Top = 123
              Width = 201
              Height = 24
              Caption = 'F5 | Criar...'
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
                650041646F626520496D616765526561647971C9653C000002494944415478DA
                62F8FFFF3F0321FCF5A821E7D7A3FA69D8E4000288890107F876CC440E887320
                BC3F4E0CFFFE6482C50F29297E39249706530710408C2053701B627009A8F129
                10FF65E2D5F4FEF7F97CD9BF7FBFAA81FC2C1EA757CB406A00028885011FF8F7
                6B0D13AF612323BB300303AB0003E3FFDF5D0C1F8E7D071AB009A6042080305C
                F0ED989E04C3BF7F4B819A9D80B63230F29B329C3A7E9A8197979781978F9741
                8AFB26C3EF4FC71918FEFE98C1E7F63F1320807007DC41F9BA6FE703FF1F5AEA
                FFFFC78F1FFFFFFDFBF7FFEC86A8FFDFAF65FDFFB89DE12A10CB83D4010410D6
                40FC724846F4DFBF1F9661B5BF193854ABC1065EBD7A95E1D3C78F0C8CCC5C40
                AF31C801B124482D40006184C197035240C95F936326D978484B4B301C3A7488
                E1FEFDFB0CDCEF6630B8389931FCBCD3F917A8EC26D00077207D022080B0C682
                BFBFFF7F494949868B172F327071713170737333ACA8FFC7F0F7E33906865F5F
                18FEFFFA2CCFE7F7FF11482D400031E1D27CE1C205060E0E0E862B57AE302CC9
                D83CE5CFF3AD7FFF7F7B6E05D47C0168BB374C3D4000A118101919F9DFCCCC0C
                AE19E4EF972F5F320235AC04E2DD7C3EFF8FFFFBC760FE8F81E13E4C0F4000C1
                BDE0E1E1F1DFC6C68661CB962D60CDD7AE5D6378F5EA15234CE1870D8CAE0201
                FF77A3BB182080C006B8B8B8FCB7B3B3036BE6E4E464B87EFD3A8A667C002080
                18323333FFDFBB77EFBFA1A1E17F5757D7FFA2A2A2FF89C960300C1040E03078
                FDFA35434A4A0A38D489B6190A000288C1CDCD2D1FE8FCFFE2E2E224D90CC300
                010600DA2D81A2BAB3FF080000000049454E44AE426082}
              TabOrder = 0
              OnClick = BitBtn7Click
              Appearance.BorderColor = 14727579
              Appearance.BorderColorHot = 10079963
              Appearance.BorderColorDown = 4548219
              Appearance.BorderColorChecked = clBlack
              Appearance.Color = 15653832
              Appearance.ColorTo = 16178633
              Appearance.ColorChecked = 7915518
              Appearance.ColorCheckedTo = 11918331
              Appearance.ColorDisabled = 15921906
              Appearance.ColorDisabledTo = 15921906
              Appearance.ColorDown = 7778289
              Appearance.ColorDownTo = 4296947
              Appearance.ColorHot = 15465983
              Appearance.ColorHotTo = 11332863
              Appearance.ColorMirror = 15586496
              Appearance.ColorMirrorTo = 16245200
              Appearance.ColorMirrorHot = 5888767
              Appearance.ColorMirrorHotTo = 10807807
              Appearance.ColorMirrorDown = 946929
              Appearance.ColorMirrorDownTo = 5021693
              Appearance.ColorMirrorChecked = 10480637
              Appearance.ColorMirrorCheckedTo = 5682430
              Appearance.ColorMirrorDisabled = 11974326
              Appearance.ColorMirrorDisabledTo = 15921906
              Appearance.GradientHot = ggVertical
              Appearance.GradientMirrorHot = ggVertical
              Appearance.GradientDown = ggVertical
              Appearance.GradientMirrorDown = ggVertical
              Appearance.GradientChecked = ggVertical
            end
          end
        end
      end
    end
    object PageSheet2: TPageSheet
      Left = 0
      Top = 21
      Width = 997
      Height = 229
      Caption = 'Grade'
      DisplayMode = tdGlyph
      ImageIndex = 0
      Margin = 0
      PageIndex = 2
      TabColor = clWindow
      TabWidth = 0
      TransparentColor = clNone
      object pficha4: TPanel
        Left = 0
        Top = 0
        Width = 997
        Height = 229
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object pgrade: TPanel
          Left = 0
          Top = 0
          Width = 997
          Height = 229
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          object wwDBGrid1: TwwDBGrid
            Left = 136
            Top = 6
            Width = 361
            Height = 217
            DittoAttributes.ShortCutDittoField = 0
            DittoAttributes.ShortCutDittoRecord = 0
            DittoAttributes.Options = []
            DisableThemesInTitle = False
            Selected.Strings = (
              'NUMERACAO'#9'10'#9'N'#218'MERO'#9'F'#9
              'CODBARRA'#9'25'#9'C'#211'D.BARRAS'#9#9
              'ESTOQUE'#9'9'#9'ESTOQUE'#9#9)
            IniAttributes.Delimiter = ';;'
            TitleColor = clBtnFace
            FixedCols = 1
            ShowHorzScrollBar = True
            DataSource = dsgrade_produto
            KeyOptions = [dgEnterToTab, dgAllowDelete, dgAllowInsert]
            TabOrder = 0
            TitleAlignment = taLeftJustify
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            TitleLines = 1
            TitleButtons = False
          end
          object DBCheckBox2: TDBCheckBox
            Left = 16
            Top = 16
            Width = 105
            Height = 17
            Caption = 'Utilizar Grade'
            DataField = 'USA_GRADE'
            DataSource = dsproduto2
            TabOrder = 1
            ValueChecked = '1'
            ValueUnchecked = '0'
            OnClick = DBCheckBox2Click
          end
          object bitbtn8: TAdvGlowButton
            Left = 8
            Top = 60
            Width = 113
            Height = 24
            Caption = 'Gerar Grade...  '
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
              650041646F626520496D616765526561647971C9653C0000012D4944415478DA
              62FCFFFF3F032500208098182804000144B101000144B1010001C472EAD4298A
              02012080584084B1B131599ADFBC79C3001040702F9C3D7B962C43000288E230
              0008208A0D000820166215EE3EBB9161DF85CD0C1FBFBE67F8FDE737838B911F
              83B34E00034000C10DC01790DB4EAE6238FF6C3783BDB529838C902AC3FEAB1B
              18365D9ECAF0E8F93D068000629197970787263EB0FEE86286004F7786BF4C7F
              19F4255D19F65C5BCD60A16BC5B06EF34A0680006200E50542D8A7DAF0FFB62B
              73FE23834D97A6FE37CF96FC0F10404405E2DB8FAF7E5C7D768CA163772298DF
              B12B91E1EEAB4B20E60F800022CA807FFFFFF59EB8748C818D818561F3E5690C
              6C8C2C0C472E1C04494D0508204662B3B3458E540790CA02625E20FE0CC4D34E
              4C7956011060001F5A84A9D97C28CD0000000049454E44AE426082}
            TabOrder = 2
            OnClick = BitBtn8Click
            Appearance.BorderColor = 14727579
            Appearance.BorderColorHot = 10079963
            Appearance.BorderColorDown = 4548219
            Appearance.BorderColorChecked = clBlack
            Appearance.Color = 15653832
            Appearance.ColorTo = 16178633
            Appearance.ColorChecked = 7915518
            Appearance.ColorCheckedTo = 11918331
            Appearance.ColorDisabled = 15921906
            Appearance.ColorDisabledTo = 15921906
            Appearance.ColorDown = 7778289
            Appearance.ColorDownTo = 4296947
            Appearance.ColorHot = 15465983
            Appearance.ColorHotTo = 11332863
            Appearance.ColorMirror = 15586496
            Appearance.ColorMirrorTo = 16245200
            Appearance.ColorMirrorHot = 5888767
            Appearance.ColorMirrorHotTo = 10807807
            Appearance.ColorMirrorDown = 946929
            Appearance.ColorMirrorDownTo = 5021693
            Appearance.ColorMirrorChecked = 10480637
            Appearance.ColorMirrorCheckedTo = 5682430
            Appearance.ColorMirrorDisabled = 11974326
            Appearance.ColorMirrorDisabledTo = 15921906
            Appearance.GradientHot = ggVertical
            Appearance.GradientMirrorHot = ggVertical
            Appearance.GradientDown = ggVertical
            Appearance.GradientMirrorDown = ggVertical
            Appearance.GradientChecked = ggVertical
          end
          object bitbtn11: TAdvGlowButton
            Left = 8
            Top = 92
            Width = 113
            Height = 24
            Caption = 'Limpar Grade...'
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
              650041646F626520496D616765526561647971C9653C0000012F4944415478DA
              62FCFFFF3F032500208098182804000144B101000144B1010001C472EAD4298A
              02012080584084B1B131599ADFBC79C3001040702F9C3D7B962C43000288E230
              0008208A0D0008201662153EDB3C83E1E9E6690C5F1FDE666015976290F6C960
              E0714A64000820B801F80212A4F9C3F1950C06C1C90CEC8ADA0CDF2FED62B87E
              7405C38FDF0C0C0001C4F8E2C50B82D178BDC88AC13C3A9B81F3EE010686A747
              1818F80518DEB0C8335C39FF900120801840798110DEE3C4F2EFDFD975FF91C1
              FB7A89FF20718000222A0CFE32FF7FFAEDC25619EE4D590C3FBFBF60F80614FB
              FC891928CEF00C2080888A052E21F1B9578F1FFAF3FC0727C327665686F7EF18
              19EE3C65FC0BF4FB3480006224363B1F8D90ABF8FAEE593AF35F4679908B80BA
              A6BBEFFAD306106000B64A8BAC40D9D8800000000049454E44AE426082}
            TabOrder = 3
            OnClick = BitBtn11Click
            Appearance.BorderColor = 14727579
            Appearance.BorderColorHot = 10079963
            Appearance.BorderColorDown = 4548219
            Appearance.BorderColorChecked = clBlack
            Appearance.Color = 15653832
            Appearance.ColorTo = 16178633
            Appearance.ColorChecked = 7915518
            Appearance.ColorCheckedTo = 11918331
            Appearance.ColorDisabled = 15921906
            Appearance.ColorDisabledTo = 15921906
            Appearance.ColorDown = 7778289
            Appearance.ColorDownTo = 4296947
            Appearance.ColorHot = 15465983
            Appearance.ColorHotTo = 11332863
            Appearance.ColorMirror = 15586496
            Appearance.ColorMirrorTo = 16245200
            Appearance.ColorMirrorHot = 5888767
            Appearance.ColorMirrorHotTo = 10807807
            Appearance.ColorMirrorDown = 946929
            Appearance.ColorMirrorDownTo = 5021693
            Appearance.ColorMirrorChecked = 10480637
            Appearance.ColorMirrorCheckedTo = 5682430
            Appearance.ColorMirrorDisabled = 11974326
            Appearance.ColorMirrorDisabledTo = 15921906
            Appearance.GradientHot = ggVertical
            Appearance.GradientMirrorHot = ggVertical
            Appearance.GradientDown = ggVertical
            Appearance.GradientMirrorDown = ggVertical
            Appearance.GradientChecked = ggVertical
          end
        end
      end
    end
    object PageSheet3: TPageSheet
      Left = 0
      Top = 21
      Width = 997
      Height = 229
      Caption = 'Seriais'
      DisplayMode = tdGlyph
      ImageIndex = 0
      Margin = 0
      PageIndex = 3
      TabColor = clWindow
      TabWidth = 0
      TransparentColor = clNone
      object pficha5: TPanel
        Left = 0
        Top = 0
        Width = 997
        Height = 229
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object Bevel19: TBevel
          Left = 0
          Top = 178
          Width = 997
          Height = 2
          Align = alBottom
        end
        object wwDBGrid2: TwwDBGrid
          Left = 0
          Top = 41
          Width = 997
          Height = 137
          DittoAttributes.ShortCutDittoField = 0
          DittoAttributes.ShortCutDittoRecord = 0
          DittoAttributes.Options = []
          DisableThemesInTitle = False
          Selected.Strings = (
            'NUMERONOTA'#9'10'#9'NF.COMPRA'
            'DATACOMPRA'#9'10'#9'DATA'
            'SERIAL'#9'28'#9'N'#218'MERO DE S'#201'RIE'
            'PRECOCUSTO'#9'9'#9'PR.CUSTO'
            'PRECOVENDA'#9'11'#9'PR.VENDA'
            'CLIENTE'#9'37'#9'CLIENTE'
            'DATAVENDA'#9'11'#9'DATA SA'#205'DA')
          IniAttributes.Delimiter = ';;'
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          Align = alClient
          DataSource = dsserial_produto
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
          ParentFont = False
          TabOrder = 0
          TitleAlignment = taLeftJustify
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -9
          TitleFont.Name = 'Verdana'
          TitleFont.Style = []
          TitleLines = 1
          TitleButtons = False
          OnDrawDataCell = wwDBGrid2DrawDataCell
        end
        object Panel6: TPanel
          Left = 0
          Top = 180
          Width = 997
          Height = 49
          Align = alBottom
          BevelOuter = bvNone
          Caption = 'Panel6'
          TabOrder = 1
          object Label42: TLabel
            Left = 192
            Top = 10
            Width = 77
            Height = 13
            Caption = 'Seriais Vendidos'
          end
          object Label43: TLabel
            Left = 192
            Top = 24
            Width = 77
            Height = 13
            Caption = 'Seriais Baixados'
          end
          object Bevel14: TBevel
            Left = 440
            Top = 6
            Width = 2
            Height = 34
          end
          object Label67: TLabel
            Left = 456
            Top = 16
            Width = 45
            Height = 13
            Caption = 'Localizar:'
          end
          object Shape11: TShape
            Left = 176
            Top = 11
            Width = 13
            Height = 12
            Brush.Color = clRed
            Shape = stRoundRect
          end
          object Shape12: TShape
            Left = 176
            Top = 25
            Width = 13
            Height = 12
            Brush.Color = clYellow
            Shape = stRoundRect
          end
          object button3: TAdvGlowButton
            Left = 285
            Top = 12
            Width = 140
            Height = 24
            Caption = 'Baixar / Retornar'
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
              650041646F626520496D616765526561647971C9653C000002A74944415478DA
              62F8FFFF3F03211CBED8AF2270B627333639800062622002FCF8F633EAC7B71F
              33B1C901041023C81410C83F9822FBE7F79FE0DF3FFFB8FFFAF9DBF8F7CF5FA2
              3F7FFC66F8F5E31783B49034C3AF5FBF196EDCB939F168E3E902640300028805
              44E4ED4FB6FCFDFB4FB93497B43F3FBF0003171B3703132323C3EF7FBF197EFF
              F903A67FFCFEC9F0E9F3E77CDD3C8D2F9727DDA881190010402CB97B13657FFF
              FA53AE2EACE92FC62DC6F0E5D717867FFFFF31FCFCF31B6A00D01540FAD75FA0
              213F7E32005DC586EC02800062010A044B724BF90B730A836DF9FAF33BC38D07
              37186EDFBF0D74FE6FA0865F0C3252D20C401732DCBA717BCAED39F7CB900D00
              0820969FDF7FBA73F373036DFECAF0F5C737865DC7773D02FA7BCDC19A13C530
              451AE92A9780E173F6CEBC07B9E8810810402CDFBFFD343C76EDF84FA0A67F3F
              BFFFFA0EA4171DAE3F558BAC0818A82BFFFEF9DB11BF263411E4A25FD0C005B1
              010288E5C7D71F9510C15F7027971CCF60066AA8E8B79DDD0A32E0DE8287603A
              6C919F12505D161073022D6302D21F0002081E8DC80018A5F3814E369EEAB240
              0F261632DFA717A821C4D1C0518E919989E1F9ABE70C7B0FEFDF0110402CE89A
              81513A59825332E10FD31F06A093FFC39C2C2528C5A0A0AAC0C0C8CC088C915F
              0C0F9E3C640086DF4E800042310018A55DE21C92394A02CA0C7FFFFE65901350
              60F80D8C3E300646E5A71F9F18987FB330DC7B709FE1CA956B1B81D1BF162080
              500C0046E9AF9F8CBF187EFCFAC1F0F7DF3F70FC833483D2C0B7EF5F195EBF7F
              CDF0F4E933861BD76E6E04466B27304A1F0304104618442CF19F20CE2B910F4A
              BA771EDE818636D0A09FBF5E0363E32C30A9EF0486CF5A60943E06A9070820AC
              B9CF73A2E31CA70EEB4BC4E4548000C29A1BBF7FFD910ECC81CB88C9A9000106
              00A6B9DD3A774369CA0000000049454E44AE426082}
            TabOrder = 0
            OnClick = Button3Click
            Appearance.BorderColor = 14727579
            Appearance.BorderColorHot = 10079963
            Appearance.BorderColorDown = 4548219
            Appearance.BorderColorChecked = clBlack
            Appearance.Color = 15653832
            Appearance.ColorTo = 16178633
            Appearance.ColorChecked = 7915518
            Appearance.ColorCheckedTo = 11918331
            Appearance.ColorDisabled = 15921906
            Appearance.ColorDisabledTo = 15921906
            Appearance.ColorDown = 7778289
            Appearance.ColorDownTo = 4296947
            Appearance.ColorHot = 15465983
            Appearance.ColorHotTo = 11332863
            Appearance.ColorMirror = 15586496
            Appearance.ColorMirrorTo = 16245200
            Appearance.ColorMirrorHot = 5888767
            Appearance.ColorMirrorHotTo = 10807807
            Appearance.ColorMirrorDown = 946929
            Appearance.ColorMirrorDownTo = 5021693
            Appearance.ColorMirrorChecked = 10480637
            Appearance.ColorMirrorCheckedTo = 5682430
            Appearance.ColorMirrorDisabled = 11974326
            Appearance.ColorMirrorDisabledTo = 15921906
            Appearance.GradientHot = ggVertical
            Appearance.GradientMirrorHot = ggVertical
            Appearance.GradientDown = ggVertical
            Appearance.GradientMirrorDown = ggVertical
            Appearance.GradientChecked = ggVertical
          end
          object eserial: TRzEdit
            Left = 512
            Top = 12
            Width = 257
            Height = 21
            FocusColor = 10550008
            TabOrder = 1
            OnChange = eserialChange
          end
          object DBCheckBox3: TDBCheckBox
            Left = 8
            Top = 16
            Width = 153
            Height = 17
            Caption = 'Utilizar controle de seriais'
            DataField = 'USA_SERIAL'
            DataSource = dsproduto2
            TabOrder = 2
            ValueChecked = '1'
            ValueUnchecked = '0'
            OnClick = DBCheckBox3Click
          end
        end
        object Panel5: TPanel
          Left = 0
          Top = 0
          Width = 997
          Height = 41
          Align = alTop
          TabOrder = 2
          object AdvGlowButton2: TAdvGlowButton
            Left = 9
            Top = 7
            Width = 64
            Height = 24
            Caption = 'Incluir'
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
            TabOrder = 0
            OnClick = AdvGlowButton2Click
            Appearance.BorderColor = 14727579
            Appearance.BorderColorHot = 10079963
            Appearance.BorderColorDown = 4548219
            Appearance.BorderColorChecked = clBlack
            Appearance.Color = 15653832
            Appearance.ColorTo = 16178633
            Appearance.ColorChecked = 7915518
            Appearance.ColorCheckedTo = 11918331
            Appearance.ColorDisabled = 15921906
            Appearance.ColorDisabledTo = 15921906
            Appearance.ColorDown = 7778289
            Appearance.ColorDownTo = 4296947
            Appearance.ColorHot = 15465983
            Appearance.ColorHotTo = 11332863
            Appearance.ColorMirror = 15586496
            Appearance.ColorMirrorTo = 16245200
            Appearance.ColorMirrorHot = 5888767
            Appearance.ColorMirrorHotTo = 10807807
            Appearance.ColorMirrorDown = 946929
            Appearance.ColorMirrorDownTo = 5021693
            Appearance.ColorMirrorChecked = 10480637
            Appearance.ColorMirrorCheckedTo = 5682430
            Appearance.ColorMirrorDisabled = 11974326
            Appearance.ColorMirrorDisabledTo = 15921906
            Appearance.GradientHot = ggVertical
            Appearance.GradientMirrorHot = ggVertical
            Appearance.GradientDown = ggVertical
            Appearance.GradientMirrorDown = ggVertical
            Appearance.GradientChecked = ggVertical
          end
          object AdvGlowButton5: TAdvGlowButton
            Left = 81
            Top = 7
            Width = 64
            Height = 24
            Caption = 'Excluir'
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
            TabOrder = 1
            OnClick = AdvGlowButton5Click
            Appearance.BorderColor = 14727579
            Appearance.BorderColorHot = 10079963
            Appearance.BorderColorDown = 4548219
            Appearance.BorderColorChecked = clBlack
            Appearance.Color = 15653832
            Appearance.ColorTo = 16178633
            Appearance.ColorChecked = 7915518
            Appearance.ColorCheckedTo = 11918331
            Appearance.ColorDisabled = 15921906
            Appearance.ColorDisabledTo = 15921906
            Appearance.ColorDown = 7778289
            Appearance.ColorDownTo = 4296947
            Appearance.ColorHot = 15465983
            Appearance.ColorHotTo = 11332863
            Appearance.ColorMirror = 15586496
            Appearance.ColorMirrorTo = 16245200
            Appearance.ColorMirrorHot = 5888767
            Appearance.ColorMirrorHotTo = 10807807
            Appearance.ColorMirrorDown = 946929
            Appearance.ColorMirrorDownTo = 5021693
            Appearance.ColorMirrorChecked = 10480637
            Appearance.ColorMirrorCheckedTo = 5682430
            Appearance.ColorMirrorDisabled = 11974326
            Appearance.ColorMirrorDisabledTo = 15921906
            Appearance.GradientHot = ggVertical
            Appearance.GradientMirrorHot = ggVertical
            Appearance.GradientDown = ggVertical
            Appearance.GradientMirrorDown = ggVertical
            Appearance.GradientChecked = ggVertical
          end
        end
      end
    end
    object PageSheet4: TPageSheet
      Left = 0
      Top = 21
      Width = 997
      Height = 229
      Caption = 'Composi'#231#227'o'
      DisplayMode = tdGlyph
      ImageIndex = 0
      Margin = 0
      PageIndex = 4
      TabColor = clWindow
      TabWidth = 0
      TransparentColor = clNone
      object pficha6: TPanel
        Left = 0
        Top = 0
        Width = 997
        Height = 229
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object pcomposicao: TPanel
          Left = 0
          Top = 0
          Width = 997
          Height = 229
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          object Label34: TLabel
            Left = 6
            Top = 12
            Width = 53
            Height = 12
            Caption = 'RECEITA:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object ereceita: TDBEdit
            Left = 88
            Top = 8
            Width = 64
            Height = 21
            DataField = 'CODRECEITA'
            DataSource = dsproduto2
            TabOrder = 0
            OnEnter = DBEdit1Enter
            OnExit = ereceitaExit
          end
          object blocreceita: TBitBtn
            Left = 152
            Top = 8
            Width = 25
            Height = 21
            TabOrder = 2
            OnClick = blocreceitaClick
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
          object DBEdit61: TDBEdit
            Left = 177
            Top = 8
            Width = 496
            Height = 21
            Color = clBtnFace
            DataField = 'receitas'
            DataSource = dsproduto2
            TabOrder = 3
            OnEnter = DBEdit1Enter
            OnExit = DBEdit1Exit
          end
          object GroupBox6: TGroupBox
            Left = 6
            Top = 36
            Width = 667
            Height = 181
            Caption = 'Composi'#231#227'o'
            TabOrder = 1
            object wwDBGrid3: TwwDBGrid
              Left = 8
              Top = 15
              Width = 561
              Height = 157
              DittoAttributes.ShortCutDittoField = 0
              DittoAttributes.ShortCutDittoRecord = 0
              DittoAttributes.Options = []
              DisableThemesInTitle = False
              ControlType.Strings = (
                'CODPRODUTO;CustomEdit;comboproduto;F'
                'prod;CustomEdit;comboproduto;F')
              Selected.Strings = (
                'CODPRODUTO'#9'13'#9'C'#211'D.PRODUTO'#9#9
                'prod'#9'50'#9'PRODUTO'#9#9
                'QTDE'#9'10'#9'QTDE.'#9#9)
              IniAttributes.Delimiter = ';;'
              TitleColor = clBtnFace
              FixedCols = 0
              ShowHorzScrollBar = True
              DataSource = dscomposicao_produto
              KeyOptions = [dgEnterToTab, dgAllowDelete, dgAllowInsert]
              TabOrder = 0
              TitleAlignment = taLeftJustify
              TitleFont.Charset = ANSI_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              TitleLines = 1
              TitleButtons = False
            end
            object comboproduto: TwwDBLookupComboDlg
              Left = 216
              Top = 80
              Width = 121
              Height = 21
              GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
              GridColor = clWhite
              GridTitleAlignment = taLeftJustify
              Caption = 'Localizar Produto...'
              MaxWidth = 0
              MaxHeight = 209
              Selected.Strings = (
                'PRODUTO'#9'60'#9'PRODUTO'#9#9
                'CODIGO'#9'6'#9'CODIGO'#9#9)
              DataField = 'CODPRODUTO'
              DataSource = dscomposicao_produto
              LookupTable = qrproduto_loc
              LookupField = 'CODIGO'
              TabOrder = 1
              AutoDropDown = False
              ShowButton = True
              AllowClearKey = False
            end
            object button1: TAdvGlowButton
              Left = 576
              Top = 20
              Width = 83
              Height = 24
              Caption = 'Limpar'
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
                650041646F626520496D616765526561647971C9653C000002734944415478DA
                62FCFFFF3F0325002080587049BC3D60C7FCFFEFFF8BFFFFFD7BFFEFDF7F0771
                F7637FB1A9030820265C0600354F6293F0D46613F7B0F9FFF75F1A2E750001C4
                00F2023A7EBDC746E8E52EAB4F7F7F7DFCFFEBFDD5FFCF3699BE7DB2DE58089B
                5A8000C2EA827F7FFF2DE2948BE26564626260E11662E0528C1202BAA2059B5A
                8000C230F1E54E2B8317DB2DFEFEFFFBF3FFCF9753FEFF7A3DEFFFBF5F6FFE3F
                5CA9FFE7C1325D0374F5000184E10260A02DE1D12864FAF7E70BC3DD5DAB18EE
                EC58C0F0EFF70B0601BD6266A0CB26A3AB07082014035E6EB78C6215B4D4E696
                0F60F8FEB8900114C320FCE3490703AF8A3703BB84ADCD9DB9EA51C87A000288
                094933CFBF7FFF2671298533FCFBF316181050DD40FCEFDF6F867F3F6E31F06B
                4480C2A7EBE674651E983E800062420AB8795C7261C2EC824A0CBFDFAC037986
                8143800BE631869F2FA632708ACA31F0A9474AFFF9F1BB1AA60F2080184101F1
                7C8BB90AD0EFD725BDF6B3FCFD7E81E1F7AB99405B191898583918BEBEF9CCC0
                CEFD8F8199F93F03339F030333AF3FC3D5C926BFFEFEFCA36D54FFE60E400031
                4112CDBF653C6A992CFFFF7D61F8FBF9042824C1B6DE3F7493E1D5B567603648
                ECCFFB3D0C8C4C5F19442D0AD9FEFCFC3D01A4172080189F6E30F166E6D7DB22
                663B89E1CFE7830CBF5F2F8678E91F289A18C17A9980B633FEFF05E4FF05B245
                1838143B18AECC8862F878EB900F4000B1FCFBFB7786804A0C2463F05801B125
                D4738C30EF4389FFF0F06060646390B44E67787F757F2F4000B1009DBFFFF591
                FC58200D0A480664FAEFEFBF0C7F7FFE66003A174C03FDCDF0F7D71FB0F8BF3F
                607C0A20801829CDCE00010600944C63D900D526150000000049454E44AE4260
                82}
              TabOrder = 2
              OnClick = button1Click
              Appearance.BorderColor = 14727579
              Appearance.BorderColorHot = 10079963
              Appearance.BorderColorDown = 4548219
              Appearance.BorderColorChecked = clBlack
              Appearance.Color = 15653832
              Appearance.ColorTo = 16178633
              Appearance.ColorChecked = 7915518
              Appearance.ColorCheckedTo = 11918331
              Appearance.ColorDisabled = 15921906
              Appearance.ColorDisabledTo = 15921906
              Appearance.ColorDown = 7778289
              Appearance.ColorDownTo = 4296947
              Appearance.ColorHot = 15465983
              Appearance.ColorHotTo = 11332863
              Appearance.ColorMirror = 15586496
              Appearance.ColorMirrorTo = 16245200
              Appearance.ColorMirrorHot = 5888767
              Appearance.ColorMirrorHotTo = 10807807
              Appearance.ColorMirrorDown = 946929
              Appearance.ColorMirrorDownTo = 5021693
              Appearance.ColorMirrorChecked = 10480637
              Appearance.ColorMirrorCheckedTo = 5682430
              Appearance.ColorMirrorDisabled = 11974326
              Appearance.ColorMirrorDisabledTo = 15921906
              Appearance.GradientHot = ggVertical
              Appearance.GradientMirrorHot = ggVertical
              Appearance.GradientDown = ggVertical
              Appearance.GradientMirrorDown = ggVertical
              Appearance.GradientChecked = ggVertical
            end
            object button2: TAdvGlowButton
              Left = 576
              Top = 52
              Width = 83
              Height = 24
              Caption = 'Excluir'
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
              OnClick = button2Click
              Appearance.BorderColor = 14727579
              Appearance.BorderColorHot = 10079963
              Appearance.BorderColorDown = 4548219
              Appearance.BorderColorChecked = clBlack
              Appearance.Color = 15653832
              Appearance.ColorTo = 16178633
              Appearance.ColorChecked = 7915518
              Appearance.ColorCheckedTo = 11918331
              Appearance.ColorDisabled = 15921906
              Appearance.ColorDisabledTo = 15921906
              Appearance.ColorDown = 7778289
              Appearance.ColorDownTo = 4296947
              Appearance.ColorHot = 15465983
              Appearance.ColorHotTo = 11332863
              Appearance.ColorMirror = 15586496
              Appearance.ColorMirrorTo = 16245200
              Appearance.ColorMirrorHot = 5888767
              Appearance.ColorMirrorHotTo = 10807807
              Appearance.ColorMirrorDown = 946929
              Appearance.ColorMirrorDownTo = 5021693
              Appearance.ColorMirrorChecked = 10480637
              Appearance.ColorMirrorCheckedTo = 5682430
              Appearance.ColorMirrorDisabled = 11974326
              Appearance.ColorMirrorDisabledTo = 15921906
              Appearance.GradientHot = ggVertical
              Appearance.GradientMirrorHot = ggVertical
              Appearance.GradientDown = ggVertical
              Appearance.GradientMirrorDown = ggVertical
              Appearance.GradientChecked = ggVertical
            end
          end
        end
      end
    end
    object PageSheet5: TPageSheet
      Left = 0
      Top = 21
      Width = 997
      Height = 229
      Caption = 'Inf.Nutricionais'
      DisplayMode = tdGlyph
      ImageIndex = 0
      Margin = 0
      PageIndex = 5
      TabColor = clWindow
      TabWidth = 0
      TransparentColor = clNone
      object pficha7: TPanel
        Left = 0
        Top = 0
        Width = 997
        Height = 229
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object pnutricional: TPanel
          Left = 0
          Top = 0
          Width = 997
          Height = 229
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          object Label157: TLabel
            Left = 8
            Top = 147
            Width = 138
            Height = 12
            Caption = '65533 - MENOR QUE 5mg'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label29: TLabel
            Left = 8
            Top = 163
            Width = 129
            Height = 12
            Caption = '65534 - MENOR QUE 1g'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label76: TLabel
            Left = 8
            Top = 179
            Width = 199
            Height = 12
            Caption = '65535 - QTDE. N'#195'O SIGNIFICATIVA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object GroupBox5: TGroupBox
            Left = 8
            Top = 2
            Width = 169
            Height = 46
            Caption = 'Por'#231#227'o'
            TabOrder = 0
            object DBEdit39: TDBEdit
              Left = 9
              Top = 17
              Width = 152
              Height = 21
              DataField = 'PORCAO'
              DataSource = qrinfnutricional_produto
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnEnter = DBEdit1Enter
              OnExit = DBEdit1Exit
            end
          end
          object FlatPanel3: TFlatPanel
            Left = 255
            Top = 9
            Width = 137
            Height = 17
            Caption = 'Informa'#231#227'o'
            ParentColor = True
            ColorHighLight = clBlack
            ColorShadow = clBlack
            TabOrder = 2
            UseDockManager = True
          end
          object FlatPanel4: TFlatPanel
            Left = 391
            Top = 9
            Width = 105
            Height = 17
            Caption = 'Por'#231#227'o'
            ParentColor = True
            ColorHighLight = clBlack
            ColorShadow = clBlack
            TabOrder = 3
            UseDockManager = True
          end
          object FlatPanel5: TFlatPanel
            Left = 495
            Top = 9
            Width = 62
            Height = 17
            Caption = '% VD'
            ParentColor = True
            ColorHighLight = clBlack
            ColorShadow = clBlack
            TabOrder = 4
            UseDockManager = True
          end
          object FlatPanel6: TFlatPanel
            Left = 255
            Top = 25
            Width = 137
            Height = 162
            ParentColor = True
            ColorHighLight = clBlack
            ColorShadow = clBlack
            TabOrder = 5
            UseDockManager = True
            object Shape6: TShape
              Left = 0
              Top = 128
              Width = 137
              Height = 17
              Brush.Color = 16381926
            end
            object Shape5: TShape
              Left = 0
              Top = 96
              Width = 137
              Height = 17
              Brush.Color = 16381926
            end
            object Shape4: TShape
              Left = 0
              Top = 64
              Width = 137
              Height = 17
              Brush.Color = 16381926
            end
            object Shape3: TShape
              Left = 0
              Top = 32
              Width = 137
              Height = 17
              Brush.Color = 16381926
            end
            object Shape1: TShape
              Left = 0
              Top = 0
              Width = 137
              Height = 17
              Brush.Color = 16381926
            end
            object Label145: TLabel
              Left = 2
              Top = 2
              Width = 101
              Height = 12
              Caption = 'VALOR CAL'#211'RICO'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label148: TLabel
              Left = 2
              Top = 18
              Width = 90
              Height = 12
              Caption = 'CARBOIDRATOS'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label149: TLabel
              Left = 2
              Top = 34
              Width = 65
              Height = 12
              Caption = 'PROTE'#205'NAS'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label150: TLabel
              Left = 2
              Top = 50
              Width = 108
              Height = 12
              Caption = 'GORDURAS TOTAIS'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label151: TLabel
              Left = 2
              Top = 66
              Width = 133
              Height = 12
              Caption = 'GORDURAS SATURADAS'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label152: TLabel
              Left = 2
              Top = 83
              Width = 73
              Height = 12
              Caption = 'COLESTEROL'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label153: TLabel
              Left = 2
              Top = 99
              Width = 101
              Height = 12
              Caption = 'FIBRA ALIMENTAR'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label154: TLabel
              Left = 2
              Top = 115
              Width = 44
              Height = 12
              Caption = 'C'#193'LCIO'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label155: TLabel
              Left = 2
              Top = 131
              Width = 36
              Height = 12
              Caption = 'FERRO'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label156: TLabel
              Left = 2
              Top = 147
              Width = 38
              Height = 12
              Caption = 'S'#211'DIO'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
          end
          object FlatPanel7: TFlatPanel
            Left = 391
            Top = 25
            Width = 166
            Height = 162
            ParentColor = True
            ColorHighLight = clBlack
            ColorShadow = clBlack
            TabOrder = 1
            UseDockManager = True
            object Shape10: TShape
              Left = 0
              Top = 128
              Width = 166
              Height = 17
              Brush.Color = 16381926
            end
            object Shape9: TShape
              Left = 0
              Top = 96
              Width = 166
              Height = 17
              Brush.Color = 16381926
            end
            object Shape8: TShape
              Left = 0
              Top = 64
              Width = 166
              Height = 17
              Brush.Color = 16381926
            end
            object Shape7: TShape
              Left = 0
              Top = 32
              Width = 166
              Height = 17
              Brush.Color = 16381926
            end
            object Shape2: TShape
              Left = 0
              Top = 0
              Width = 166
              Height = 17
              Brush.Color = 16381926
            end
            object Label158: TLabel
              Left = 75
              Top = 2
              Width = 21
              Height = 12
              Caption = 'kcal'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label159: TLabel
              Left = 75
              Top = 18
              Width = 6
              Height = 12
              Caption = 'g'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label160: TLabel
              Left = 75
              Top = 34
              Width = 6
              Height = 12
              Caption = 'g'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label161: TLabel
              Left = 75
              Top = 50
              Width = 6
              Height = 12
              Caption = 'g'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label162: TLabel
              Left = 75
              Top = 66
              Width = 6
              Height = 12
              Caption = 'g'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label163: TLabel
              Left = 75
              Top = 82
              Width = 15
              Height = 12
              Caption = 'mg'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label165: TLabel
              Left = 75
              Top = 146
              Width = 15
              Height = 12
              Caption = 'mg'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label31: TLabel
              Left = 75
              Top = 130
              Width = 15
              Height = 12
              Caption = 'mg'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label32: TLabel
              Left = 75
              Top = 114
              Width = 15
              Height = 12
              Caption = 'mg'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label33: TLabel
              Left = 75
              Top = 98
              Width = 6
              Height = 12
              Caption = 'g'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object FlatPanel8: TFlatPanel
              Left = 104
              Top = 0
              Width = 1
              Height = 188
              ParentColor = True
              ColorHighLight = clBlack
              ColorShadow = clBlack
              TabOrder = 0
              UseDockManager = True
            end
            object DBEdit40: TDBEdit
              Left = 5
              Top = 1
              Width = 67
              Height = 14
              BorderStyle = bsNone
              Color = 16381926
              DataField = 'VALOR_CALORICO'
              DataSource = qrinfnutricional_produto
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              OnEnter = DBEdit1Enter
              OnExit = DBEdit40Exit
            end
            object DBEdit41: TDBEdit
              Left = 107
              Top = 1
              Width = 55
              Height = 14
              BorderStyle = bsNone
              Color = 16381926
              DataField = 'VALOR_CALORICO_VD'
              DataSource = qrinfnutricional_produto
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              OnEnter = DBEdit1Enter
              OnExit = DBEdit40Exit
            end
            object DBEdit42: TDBEdit
              Left = 5
              Top = 17
              Width = 67
              Height = 14
              BorderStyle = bsNone
              Color = clBtnFace
              DataField = 'CARBOIDRATOS'
              DataSource = qrinfnutricional_produto
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
              OnEnter = DBEdit1Enter
              OnExit = DBEdit42Exit
            end
            object DBEdit43: TDBEdit
              Left = 107
              Top = 17
              Width = 55
              Height = 14
              BorderStyle = bsNone
              Color = clBtnFace
              DataField = 'CARBOIDRATOS_VD'
              DataSource = qrinfnutricional_produto
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
              OnEnter = DBEdit1Enter
              OnExit = DBEdit42Exit
            end
            object DBEdit44: TDBEdit
              Left = 5
              Top = 33
              Width = 67
              Height = 14
              BorderStyle = bsNone
              Color = 16381926
              DataField = 'PROTEINAS'
              DataSource = qrinfnutricional_produto
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 5
              OnEnter = DBEdit1Enter
              OnExit = DBEdit40Exit
            end
            object DBEdit45: TDBEdit
              Left = 107
              Top = 33
              Width = 55
              Height = 14
              BorderStyle = bsNone
              Color = 16381926
              DataField = 'PROTEINAS_VD'
              DataSource = qrinfnutricional_produto
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 6
              OnEnter = DBEdit1Enter
              OnExit = DBEdit40Exit
            end
            object DBEdit46: TDBEdit
              Left = 5
              Top = 49
              Width = 67
              Height = 14
              BorderStyle = bsNone
              Color = clBtnFace
              DataField = 'GORDURASTOTAIS'
              DataSource = qrinfnutricional_produto
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 7
              OnEnter = DBEdit1Enter
              OnExit = DBEdit42Exit
            end
            object DBEdit47: TDBEdit
              Left = 107
              Top = 49
              Width = 55
              Height = 14
              BorderStyle = bsNone
              Color = clBtnFace
              DataField = 'GORDURASTOTAIS_VD'
              DataSource = qrinfnutricional_produto
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 8
              OnEnter = DBEdit1Enter
              OnExit = DBEdit42Exit
            end
            object DBEdit48: TDBEdit
              Left = 5
              Top = 65
              Width = 67
              Height = 14
              BorderStyle = bsNone
              Color = 16381926
              DataField = 'GORDURASSATURADAS'
              DataSource = qrinfnutricional_produto
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 9
              OnEnter = DBEdit1Enter
              OnExit = DBEdit40Exit
            end
            object DBEdit49: TDBEdit
              Left = 107
              Top = 65
              Width = 55
              Height = 14
              BorderStyle = bsNone
              Color = 16381926
              DataField = 'GORDURASSATURADAS_VD'
              DataSource = qrinfnutricional_produto
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 10
              OnEnter = DBEdit1Enter
              OnExit = DBEdit40Exit
            end
            object DBEdit50: TDBEdit
              Left = 5
              Top = 81
              Width = 67
              Height = 14
              BorderStyle = bsNone
              Color = clBtnFace
              DataField = 'COLESTEROL'
              DataSource = qrinfnutricional_produto
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 11
              OnEnter = DBEdit1Enter
              OnExit = DBEdit42Exit
            end
            object DBEdit51: TDBEdit
              Left = 107
              Top = 81
              Width = 55
              Height = 14
              BorderStyle = bsNone
              Color = clBtnFace
              DataField = 'COLESTEROL_VD'
              DataSource = qrinfnutricional_produto
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 12
              OnEnter = DBEdit1Enter
              OnExit = DBEdit42Exit
            end
            object DBEdit52: TDBEdit
              Left = 5
              Top = 97
              Width = 67
              Height = 14
              BorderStyle = bsNone
              Color = 16381926
              DataField = 'FIBRA'
              DataSource = qrinfnutricional_produto
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 13
              OnEnter = DBEdit1Enter
              OnExit = DBEdit40Exit
            end
            object DBEdit53: TDBEdit
              Left = 107
              Top = 97
              Width = 55
              Height = 14
              BorderStyle = bsNone
              Color = 16381926
              DataField = 'FIBRA_VD'
              DataSource = qrinfnutricional_produto
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 14
              OnEnter = DBEdit1Enter
              OnExit = DBEdit40Exit
            end
            object DBEdit54: TDBEdit
              Left = 5
              Top = 113
              Width = 67
              Height = 14
              BorderStyle = bsNone
              Color = clBtnFace
              DataField = 'CALCIO'
              DataSource = qrinfnutricional_produto
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 15
              OnEnter = DBEdit1Enter
              OnExit = DBEdit42Exit
            end
            object DBEdit55: TDBEdit
              Left = 107
              Top = 113
              Width = 55
              Height = 14
              BorderStyle = bsNone
              Color = clBtnFace
              DataField = 'CALCIO_VD'
              DataSource = qrinfnutricional_produto
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 16
              OnEnter = DBEdit1Enter
              OnExit = DBEdit42Exit
            end
            object DBEdit56: TDBEdit
              Left = 5
              Top = 129
              Width = 67
              Height = 14
              BorderStyle = bsNone
              Color = 16381926
              DataField = 'FERRO'
              DataSource = qrinfnutricional_produto
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 17
              OnEnter = DBEdit1Enter
              OnExit = DBEdit40Exit
            end
            object DBEdit57: TDBEdit
              Left = 107
              Top = 129
              Width = 55
              Height = 14
              BorderStyle = bsNone
              Color = 16381926
              DataField = 'FERRO_VD'
              DataSource = qrinfnutricional_produto
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 18
              OnEnter = DBEdit1Enter
              OnExit = DBEdit40Exit
            end
            object DBEdit58: TDBEdit
              Left = 5
              Top = 145
              Width = 67
              Height = 14
              BorderStyle = bsNone
              Color = clBtnFace
              DataField = 'SODIO'
              DataSource = qrinfnutricional_produto
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 19
              OnEnter = DBEdit1Enter
              OnExit = DBEdit42Exit
            end
            object DBEdit59: TDBEdit
              Left = 107
              Top = 145
              Width = 55
              Height = 14
              BorderStyle = bsNone
              Color = clBtnFace
              DataField = 'SODIO_VD'
              DataSource = qrinfnutricional_produto
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 20
              OnEnter = DBEdit1Enter
              OnExit = DBEdit42Exit
              OnKeyPress = DBEdit59KeyPress
            end
          end
          object ptampainfnutricional: TFlatPanel
            Left = 608
            Top = 0
            Width = 684
            Height = 229
            ParentColor = True
            ColorHighLight = clBtnFace
            ColorShadow = clBtnFace
            TabOrder = 6
            UseDockManager = True
            object Label44: TLabel
              Left = 8
              Top = 16
              Width = 317
              Height = 13
              Caption = 'Produto sem tabela de informa'#231#245'es nutricionais.'
              Font.Charset = ANSI_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object bitbtn6: TAdvGlowButton
              Left = 5
              Top = 44
              Width = 316
              Height = 24
              Caption = 'Criar...'
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
                650041646F626520496D616765526561647971C9653C000002954944415478DA
                62FCFFFF3F03250020805870497895A79AB2B3BCDDC922FC83EF073733C3EF0F
                5C1F1DEFDE3BFFFFF34B67A0F416209E5EB1FCD1368000C26900A7D6C553EAE2
                9A0C9E46790C5F7EBF6738F576BFD0E9C31F9D5724EF6638D0EBEE73E6CA7390
                B26D0001C46291DECE24A0C87895556EAD0603E35F0646B0F6FF0C9E4A410C06
                9A8E0CAC4C6C0C7F197E31D8887931382818333C3F3A9DE1E5BB1F2045EB4104
                4000B1FC6164E364613D2B55E2D2C9F0E7DF6FB06676162E065646568617DF1F
                31F0B10A313CFBFE80E1D75F3E869FBBA632A8044731BC7EFB19A47707880008
                20965FAC82D21C1CEF385F7E7FC270FEFD61B0FD529C0A0C826CC20C221C920C
                3FFFFD001AF99FE1C7E7E70C62DC0C0CDFDFDD67F8F1F30F03D0FFCF406A0102
                884991E3B51707EB7F66264646062620646180040B13230B0333231BC3CFBFDF
                18FEFDFFCBC0F38B9F414498978185831F25AC000288E91DBB84BE9F5514D387
                5FEF801A5818989880981168142333032F2B3F0327330F83188734C3BB471F18
                C4C444185EDC3E09D2771566004000B17CE164D46517E064B8F3FA30C3DFFF7F
                80CE576490E65264E062E16578F2E51EC3A9A747197E33F1FFB7E1306564F87E
                92E1E59B2FF0000401800062E116B826F7F5B70A83B1900358809D9983E1D4AB
                FD0C179F9D6610FF62FAC3D4C06FF183A77F35DAB2926D1735DA32BC7AF311A4
                6C37CC0080006261FFF8E8F382A3474599F8BF83228081E10B2BC3DF87A25F77
                579EE28129EA68940BCDF213B36562616678FBEE1328000FC1E4000288656FD5
                32652252AC8DA8A80056098000622232C9BB4B8A0B6295000820620D50E7E1E6
                6478F1EA3D03341FC0014000319192F3DEBD07A7C0A3C862000144AC01D3376E
                3BCE70FBEED3E92036B204408001003701CA9BF04011740000000049454E44AE
                426082}
              TabOrder = 0
              OnClick = BitBtn6Click
              Appearance.BorderColor = 14727579
              Appearance.BorderColorHot = 10079963
              Appearance.BorderColorDown = 4548219
              Appearance.BorderColorChecked = clBlack
              Appearance.Color = 15653832
              Appearance.ColorTo = 16178633
              Appearance.ColorChecked = 7915518
              Appearance.ColorCheckedTo = 11918331
              Appearance.ColorDisabled = 15921906
              Appearance.ColorDisabledTo = 15921906
              Appearance.ColorDown = 7778289
              Appearance.ColorDownTo = 4296947
              Appearance.ColorHot = 15465983
              Appearance.ColorHotTo = 11332863
              Appearance.ColorMirror = 15586496
              Appearance.ColorMirrorTo = 16245200
              Appearance.ColorMirrorHot = 5888767
              Appearance.ColorMirrorHotTo = 10807807
              Appearance.ColorMirrorDown = 946929
              Appearance.ColorMirrorDownTo = 5021693
              Appearance.ColorMirrorChecked = 10480637
              Appearance.ColorMirrorCheckedTo = 5682430
              Appearance.ColorMirrorDisabled = 11974326
              Appearance.ColorMirrorDisabledTo = 15921906
              Appearance.GradientHot = ggVertical
              Appearance.GradientMirrorHot = ggVertical
              Appearance.GradientDown = ggVertical
              Appearance.GradientMirrorDown = ggVertical
              Appearance.GradientChecked = ggVertical
            end
          end
        end
      end
    end
    object PageSheet8: TPageSheet
      Left = 0
      Top = 21
      Width = 997
      Height = 229
      Caption = 'Foto'
      DisplayMode = tdGlyph
      ImageIndex = 0
      Margin = 0
      PageIndex = 6
      TabColor = clWindow
      TabWidth = 0
      TransparentColor = clNone
      object pficha8: TPanel
        Left = 0
        Top = 0
        Width = 997
        Height = 229
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object PFOTO: TPanel
          Left = 0
          Top = 0
          Width = 997
          Height = 229
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          object Label48: TLabel
            Left = 32
            Top = 96
            Width = 127
            Height = 23
            Caption = 'Sem Imagem'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -19
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object SpeedButton1: TSpeedButton
            Left = 211
            Top = 11
            Width = 30
            Height = 24
            Hint = 'Inserir imagem de um arquivo'
            Glyph.Data = {
              36050000424D3605000000000000360400002800000010000000100000000100
              0800000000000001000000000000000000000001000000010000000801000210
              0300031905000521070006280900072F0B00083B0D0009490F000A5411000B60
              13000B6914000B7015000C7616000C7A16000C7D17000C7F17000C8117000C82
              17000C8317000C8317000C8417000C8417000C8417000C8417000C8418000C84
              18000C8418000C8418000C8418000C8318000C8318000C8218000C8118000D80
              18000D7E18000E7C19000F79190010741A00116F1B0014691C0016601E001959
              20001D502200204924002245260025412800283D2A002A392C002D352E003131
              3100323232003333330034343400353535003636360037373700383838003939
              39003A3A3A003B3B3B003C3C3C003D3D3D003E3E3E003F3F3F00404040004141
              4100424242004343430044444400454545004646460047474700484848004949
              49004A4A4A004B4B4B004C4C4C004D4D4D004E4E4E004F4F4F00505050005151
              5100525252005353530054545400555555005656560057575700585858005959
              59005A5A5A005B5B5B005C5C5C005D5D5D005E5E5E005F5F5F00606060006161
              6100626262006363630064646400656565006666660067676700686868006969
              69006A6A6A006B6B6B006C6C6C006D6D6D006E6E6E006F6F6F006F7B8000787E
              9600817FAA009176BF00A566D100C247E400E61EF500F60AFC00FC03FE00FE01
              FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
              FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
              FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
              FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
              FE00FE00FE00FE01FE00FD02FE00FC03FE00FA05FE00F809FE00F310FD00EC1B
              FB00E12CF800D242F300BE62EC00AD7EE300A48FDB00A296D300A19ECA00A1A6
              BF00A2AEB300ABABAB00AFB0B100B2B6B600B6BBBB00B9BFC000BCC3C400C2CA
              CB00C7D0D100CDDBDD00D0E6E900D3EFF200D4F3F700D5F5FA00D6F6FB00D8F7
              FB00D6F7FC00D4F7FC00D1F7FC00CEF7FC00CAF6FD00C3F6FC00BAF6FC00B6F7
              FD00B1F7FC00ACF7FC00A9F7FC00A5F7FC00A2F7FD009FF6FD009EF4FD009DF3
              FC009BF1FC0099F0FC0095EEFC0092EBFB008FE9FB008CE7FB0089E5FB0086E3
              FB0084E1FA0080DEF9007BDCFA0079DAF90077DAF90074D8F90072D6F8006DD2
              F60066CDF2005EC7EB0058C3E70050BEE1004BBBDD0048B9D90046B8D40046BA
              CB0046BDC10047C0B70047C4AB004BCC980049CD890046CC80003FC679003DC3
              74003BC2740038BF730035BC730030B872002CB27D0028AD8B0022A698001A9D
              AA001396B6000D92B9000A8FBC00088EBD00078DBE00078DBE00078DBE00078D
              BE00078DBE00078DBE00078DBD00078DBD00078DBC00078DBB008AFBFBFBFBFB
              FBFBFBFBFBFBFBFB8A8AFBF1DBD2DADADADADADADADAE0FB8A8AFBDEE0CAD8D8
              D9D8D8D8D8D9DFD3FB8AFBD8FBC3D4D4D4D4D4D4D4D4DFC3FB8AFBD4F2CBCDD1
              D1D1D1D1D1D1DFC2FB8AFBD1DFDCC3CECECECECECE1ADEC1DAFBFBCFD6F1B9BE
              BEBEBEBE1AEC1AB9B8FBFBCCCCF2FBFBFBFBFB1AE7E5E91AFBFBFBC8C7C7C8C7
              C7C81AE7E6E6E5E91A8AFBB9C6C6C6C6C61A1A1A1AE6E71A1A1A8AFBB9C5C5C5
              FFDFDFDF1AE7EC1A8A8A8A8AFBFBFBFB8A8A8A8A1AE81A8A8A8A8A8A8A8A8A8A
              8A8A8A1AEDED1A8A8A8A8A8A8A8A8A8A8A8A8A1AED1A8A8A8A8A8A8A8A8A8A8A
              8A1A1A1A1A8A8A8A8A8A8A8A8A8A8A1A1A1A1A8A8A8A8A8A8A8A}
            ParentShowHint = False
            ShowHint = True
            OnClick = SpeedButton1Click
          end
          object SpeedButton2: TSpeedButton
            Left = 211
            Top = 35
            Width = 30
            Height = 24
            Hint = 'Inserir imagem de uma webcan'
            Glyph.Data = {
              5E040000424D5E04000000000000360000002800000012000000130000000100
              1800000000002804000000000000000000000000000000000000FF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FFFF00FFFF00FF5A7B9C5A7B
              9C5A7B9C5A7B9C5A7B9C5A7B9C5A7B9C5A7B9C5A7B9C5A7B9C5A7B9C5A7B9CFF
              00FFFF00FFFF00FF0000FF00FFFF00FFFF00FF75B2DE85B9DF8ADEF5BFECF9FF
              FFFFC4EEFA96E3F36CBFEE5AA9EF4E79C25A7B9C5A7B9CFF00FFFF00FFFF00FF
              0000FF00FFFF00FFFF00FFFF00FFF7F0E9B3DBE74BC0ECE3F6FF96E3F36FCBEE
              58A8EF4E79C25374ACDBE7E9FF00FFFF00FFFF00FFFF00FF0000FF00FFFF00FF
              FF00FFFF00FFFF00FFDCD6D1A7A7A7A0A0A09C9C9CA0A0A0A6A6A6ADADADF3EC
              E7FF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FFFF00FFFF00FFF1E9E4C7C3
              C0A8A8A8B3B3B3B8B8B8BBBBBBB5B5B5ADADADA5A5A5A8A8A8F1E9E4FF00FFFF
              00FFFF00FFFF00FF0000FF00FFFF00FFFF00FFC8C4C1B9B9B9D1D1D1D4D4D4D6
              D6D6D1D1D1CCCCCCC5C5C5BDBDBDACACACC7C3C0FF00FFFF00FFFF00FFFF00FF
              0000FF00FFFF00FFE7E1DCB7B7B7DADADAE8E8E8EAEAEAECECECEBEBEBE4E4E4
              DADADAC8C8C8BCBCBCA4A4A4DCD6D1FF00FFFF00FFFF00FF0000FF00FFFF00FF
              B9B7B68B8B8B7F7F7FB4B2B1E2E0DFF5F5F5F3F3F3F0F0F0E9E9E9D9D9D9C4C4
              C4ACACACC0BDBAFF00FFFF00FFFF00FF0000FF00FFFF00FF8181819A69549D6E
              5BAC9761B5B2B0FCFCFCFBFBFBF6F6F6F1F1F1E7E7E7D3D3D3B8B8B8A0A0A0FF
              00FFFF00FFFF00FF0000FF00FFFF00FF787878B17813EBB2009D6E5BA4A2A1FF
              FFFFFFFFFFFCFCFCF5F5F5EDEDEDDADADAC2C2C29C9C9CFF00FFFF00FFFF00FF
              0000FF00FFFF00FF767676FFFFFFC39C2A997740B4B1AFFFFFFFFFFFFFFFFFFF
              F7F7F7F0F0F0E2E2E2C3C3C3A1A1A1FF00FFFF00FFFF00FF0000FF00FFFF00FF
              BFBDBB8D8D8D949494B6B4B3E3E1E0FFFFFFFFFFFFFFFFFFF9F9F9F1F1F1E6E6
              E6C1C1C1C0BDBAFF00FFFF00FFFF00FF0000FF00FFFF00FFE9E3DEDADADAFAFA
              FAFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF6F6F6EFEFEFE6E6E6B1B1B1DCD6D1FF
              00FFFF00FFFF00FF0000FF00FFFF00FFFF00FFE2DEDBE8E8E8FBFBFBFEFEFEFF
              FFFFFEFEFEF9F9F9F1F1F1EAEAEAC5C5C5C7C3C0FF00FFFF00FFFF00FFFF00FF
              0000FF00FFFF00FFFF00FFF5EDE8E6E2DFE3E3E3ECECECF3F3F3F5F5F5EAEAEA
              D4D4D4B6B6B6C7C3C0F1E9E4FF00FFFF00FFFF00FFFF00FF0000FF00FFFF00FF
              FF00FFFF00FFFF00FFEBE5E0DAD7D4CCCBCAC5C5C5C9C8C7CDCAC7DDD7D2FF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FF0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              0000}
            ParentShowHint = False
            ShowHint = True
            OnClick = SpeedButton2Click
          end
          object SpeedButton3: TSpeedButton
            Left = 211
            Top = 59
            Width = 30
            Height = 24
            Hint = 'Excluir Imagem'
            Glyph.Data = {
              36050000424D3605000000000000360400002800000010000000100000000100
              08000000000000010000000000000000000000010000000100000005F0000005
              F1000005F2000005F2000005F1000005EF000005EC000005E7000005E3000005
              DF000005DC000005D8000005D4000005D0000005CD000005C8000005C1000005
              BA000005B7000005B7000005B7000005B6000005B6000005B6000005B6000005
              B6000005B5000005B5000005B4000005B3000106B0000206AD000307A6000509
              9D00070B94000A0D8B000D10800010137400151766001A1B56001C1E50001F20
              49002223420025263B00292934002D2D2D002E2E2E002F2F2F00303030003131
              3100323232003333330034343400353535003636360037373700383838003939
              39003A3A3A003B3B3B003C3C3C003D3D3D003E3E3E003F3F3F00404040004141
              4100424242004343430044444400454545004646460047474700484848004949
              49004A4A4A004B4B4B004C4C4C004D4D4D004E4E4E004F4F4F00505050005151
              5100525252005353530054545400555555005656560057575700585858005959
              59005A5A5A005B5B5B005C5C5C005D5D5D005E5E5E005F5F5F00606060006161
              6100626262006363630064646400656565006666660067676700686868006969
              69006A6A6A006B6B6B006C6C6C006D6D6D006E6E6E006F6F6F00707070007171
              7100727272007373730074747400757575007676760077777700787878007979
              79007A7A7A007B7B7B007C7C7C007D7D7D007E7E7E007F7F7F00808080008181
              8100828282008383830084848400858585008686860087878700888888008989
              89008A8A8A008B8B8B008C8C8C008D8D8D008E8E8E008F8F8F00909090009191
              9100929292009393930094949400959595009696960097979700989898009999
              99009A9A9A009B9B9B009C9C9C009D9D9D009E9E9E009F9F9F00A0A0A000A1A1
              A100A2A2A200A3A3A300A4A4A400A5A5A500A6A6A600A7A7A700A8A8A800A9A9
              A900AAAAAA00ABABAB00ACACAC00ADADAD00AEAEAE00AFAFAF00B0B0B000B1B1
              B100B2B2B200B3B3B300B4B4B400B5B5B500B6B6B600B7B7B700B8B8B800B9B9
              B900BABABA00BBBBBB00BCBCBC00BDBDBD00BEBEBE00BFBFBF00C0C0C000C1C1
              C100C2C2C200C3C3C300C4C4C400C5C5C500C6C6C600C7C7C700C8C8C800C9C9
              C900CACACA00D1B2D100D994D900E46CE400F139F100F917F900FD07FD00FE01
              FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
              FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
              FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
              FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
              FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
              FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00E9E9E9E9E9E9
              E9E9E9E9E9E9E9E91212E91212E9E9E9E9E9E9E9E9E9E91212E9E9121212E9E9
              E9E9E9E9E9E91212E9E9E912151212E9E9E9E9E9E91212E9E9E9E9E90B111212
              E9E9E9E91212E9E9E9E9E9E9E9E9121215E9151212E9E9E9E9E9E9E9E9E9E915
              0F0F0E1CE9E9E9E9E9E9E9E9E9E9E9E910100BE9E9E9E9E9E9E9E9E9E9E9E915
              0B0E0B07E9E9E9E9E9E9E9E9E9E9080B0CE9E90805E9E9E9E9E9E9E9E9030B05
              E9E9E9E90303E9E9E9E9E9E9030303E9E9E9E9E9E90303E9E9E9E9030303E9E9
              E9E9E9E9E9E9E903E9E9030303E9E9E9E9E9E9E9E9E9E9E9E9E90303E9E9E9E9
              E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9}
            ParentShowHint = False
            ShowHint = True
            OnClick = SpeedButton3Click
          end
          object Label45: TLabel
            Left = 248
            Top = 16
            Width = 142
            Height = 13
            Caption = 'Inserir atrav'#233's de um arquivo'
          end
          object Label46: TLabel
            Left = 248
            Top = 40
            Width = 134
            Height = 13
            Caption = 'Capturar por uma Web Cam'
          end
          object Label47: TLabel
            Left = 248
            Top = 64
            Width = 31
            Height = 13
            Caption = 'Excluir'
          end
          object Image2: TImage
            Left = 5
            Top = 5
            Width = 190
            Height = 190
            Stretch = True
          end
        end
      end
    end
    object PageSheet1: TPageSheet
      Left = 0
      Top = 21
      Width = 997
      Height = 229
      Caption = 'Rentabilidade'
      DisplayMode = tdGlyph
      ImageIndex = 0
      Margin = 0
      PageIndex = 7
      TabColor = clWindow
      TabWidth = 0
      TransparentColor = clNone
      object pficha9: TPanel
        Left = 0
        Top = 0
        Width = 997
        Height = 229
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object Label55: TLabel
          Left = 8
          Top = 136
          Width = 224
          Height = 65
          Caption = 
            'Esta fun'#231#227'o faz com que este produto '#13#10'ao ser comprado, n'#227'o alim' +
            'ente o seu '#13#10'estoque, atribuindo aos produtos listados '#13#10'os resp' +
            'ectivos percentuais aos seus estoques.'#13#10'Ex.: Animal Bovino, divi' +
            'do em carnes.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Bevel11: TBevel
          Left = 464
          Top = 0
          Width = 3
          Height = 229
          Align = alRight
        end
        object Panel3: TPanel
          Left = 467
          Top = 0
          Width = 530
          Height = 229
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 0
          object Bevel12: TBevel
            Left = 0
            Top = 40
            Width = 530
            Height = 3
            Align = alTop
          end
          object Bevel13: TBevel
            Left = 0
            Top = 37
            Width = 530
            Height = 3
            Align = alTop
          end
          object Label37: TLabel
            Left = 284
            Top = 204
            Width = 107
            Height = 13
            Caption = 'Total dos Percentuais:'
          end
          object AdvGlowButton3: TAdvGlowButton
            Left = 5
            Top = 198
            Width = 83
            Height = 24
            Caption = 'Limpar'
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
              650041646F626520496D616765526561647971C9653C000002734944415478DA
              62FCFFFF3F0325002080587049BC3D60C7FCFFEFFF8BFFFFFD7BFFEFDF7F0771
              F7637FB1A9030820265C0600354F6293F0D46613F7B0F9FFF75F1A2E750001C4
              00F2023A7EBDC746E8E52EAB4F7F7F7DFCFFEBFDD5FFCF3699BE7DB2DE58089B
              5A8000C2EA827F7FFF2DE2948BE26564626260E11662E0528C1202BAA2059B5A
              8000C230F1E54E2B8317DB2DFEFEFFFBF3FFCF9753FEFF7A3DEFFFBF5F6FFE3F
              5CA9FFE7C1325D0374F5000184E10260A02DE1D12864FAF7E70BC3DD5DAB18EE
              EC58C0F0EFF70B0601BD6266A0CB26A3AB07082014035E6EB78C6215B4D4E696
              0F60F8FEB8900114C320FCE3490703AF8A3703BB84ADCD9DB9EA51C87A000288
              094933CFBF7FFF2671298533FCFBF316181050DD40FCEFDF6F867F3F6E31F06B
              4480C2A7EBE674651E983E800062420AB8795C7261C2EC824A0CBFDFAC037986
              8143800BE631869F2FA632708ACA31F0A9474AFFF9F1BB1AA60F2080184101F1
              7C8BB90AD0EFD725BDF6B3FCFD7E81E1F7AB99405B191898583918BEBEF9CCC0
              CEFD8F8199F93F03339F030333AF3FC3D5C926BFFEFEFCA36D54FFE60E400031
              4112CDBF653C6A992CFFFF7D61F8FBF9042824C1B6DE3F7493E1D5B567603648
              ECCFFB3D0C8C4C5F19442D0AD9FEFCFC3D01A4172080189F6E30F166E6D7DB22
              663B89E1CFE7830CBF5F2F8678E91F289A18C17A9980B633FEFF05E4FF05B245
              1838143B18AECC8862F878EB900F4000B1FCFBFB7786804A0C2463F05801B125
              D4738C30EF4389FFF0F06060646390B44E67787F757F2F4000B1009DBFFFF591
              FC58200D0A480664FAEFEFBF0C7F7FFE66003A174C03FDCDF0F7D71FB0F8BF3F
              607C0A20801829CDCE00010600944C63D900D526150000000049454E44AE4260
              82}
            TabOrder = 0
            OnClick = AdvGlowButton3Click
            Appearance.BorderColor = 14727579
            Appearance.BorderColorHot = 10079963
            Appearance.BorderColorDown = 4548219
            Appearance.BorderColorChecked = clBlack
            Appearance.Color = 15653832
            Appearance.ColorTo = 16178633
            Appearance.ColorChecked = 7915518
            Appearance.ColorCheckedTo = 11918331
            Appearance.ColorDisabled = 15921906
            Appearance.ColorDisabledTo = 15921906
            Appearance.ColorDown = 7778289
            Appearance.ColorDownTo = 4296947
            Appearance.ColorHot = 15465983
            Appearance.ColorHotTo = 11332863
            Appearance.ColorMirror = 15586496
            Appearance.ColorMirrorTo = 16245200
            Appearance.ColorMirrorHot = 5888767
            Appearance.ColorMirrorHotTo = 10807807
            Appearance.ColorMirrorDown = 946929
            Appearance.ColorMirrorDownTo = 5021693
            Appearance.ColorMirrorChecked = 10480637
            Appearance.ColorMirrorCheckedTo = 5682430
            Appearance.ColorMirrorDisabled = 11974326
            Appearance.ColorMirrorDisabledTo = 15921906
            Appearance.GradientHot = ggVertical
            Appearance.GradientMirrorHot = ggVertical
            Appearance.GradientDown = ggVertical
            Appearance.GradientMirrorDown = ggVertical
            Appearance.GradientChecked = ggVertical
          end
          object AdvGlowButton4: TAdvGlowButton
            Left = 93
            Top = 198
            Width = 83
            Height = 24
            Caption = 'Excluir'
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
            TabOrder = 1
            OnClick = AdvGlowButton4Click
            Appearance.BorderColor = 14727579
            Appearance.BorderColorHot = 10079963
            Appearance.BorderColorDown = 4548219
            Appearance.BorderColorChecked = clBlack
            Appearance.Color = 15653832
            Appearance.ColorTo = 16178633
            Appearance.ColorChecked = 7915518
            Appearance.ColorCheckedTo = 11918331
            Appearance.ColorDisabled = 15921906
            Appearance.ColorDisabledTo = 15921906
            Appearance.ColorDown = 7778289
            Appearance.ColorDownTo = 4296947
            Appearance.ColorHot = 15465983
            Appearance.ColorHotTo = 11332863
            Appearance.ColorMirror = 15586496
            Appearance.ColorMirrorTo = 16245200
            Appearance.ColorMirrorHot = 5888767
            Appearance.ColorMirrorHotTo = 10807807
            Appearance.ColorMirrorDown = 946929
            Appearance.ColorMirrorDownTo = 5021693
            Appearance.ColorMirrorChecked = 10480637
            Appearance.ColorMirrorCheckedTo = 5682430
            Appearance.ColorMirrorDisabled = 11974326
            Appearance.ColorMirrorDisabledTo = 15921906
            Appearance.GradientHot = ggVertical
            Appearance.GradientMirrorHot = ggVertical
            Appearance.GradientDown = ggVertical
            Appearance.GradientMirrorDown = ggVertical
            Appearance.GradientChecked = ggVertical
          end
          object Panel4: TPanel
            Left = 0
            Top = 0
            Width = 530
            Height = 37
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 2
            object Label15: TLabel
              Left = 336
              Top = 13
              Width = 69
              Height = 13
              Caption = 'Rentabilidade:'
            end
            object elocproduto: TRzButtonEdit
              Left = 72
              Top = 9
              Width = 73
              Height = 21
              FocusColor = 10550008
              TabOrder = 0
              OnKeyPress = elocprodutoKeyPress
              OnButtonClick = elocprodutoButtonClick
            end
            object eproduto: TRzEdit
              Left = 152
              Top = 9
              Width = 177
              Height = 21
              Enabled = False
              TabOrder = 1
            end
            object erentabilidade: TRzNumericEdit
              Left = 408
              Top = 9
              Width = 65
              Height = 21
              FocusColor = 10550008
              TabOrder = 2
              OnKeyPress = erentabilidadeKeyPress
              IntegersOnly = False
              DisplayFormat = '###,##0.00%'
            end
            object brent_gravar: TAdvGlowButton
              Left = 488
              Top = 7
              Width = 33
              Height = 24
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
                650041646F626520496D616765526561647971C9653C000003274944415478DA
                62FCFFFF3F032500208058D005924F392AFFF9F33BEAEFDF7F713F7FFF90F8F7
                EF0F03C3BF7F2F18FE312CFAF3F7EFB28DDED7EF22AB070820466417249EB00B
                FEF9FBE764690665497D515B066E567EB0F8E75F1F184E3EDECD70E3D3F9E740
                8372F7863D580BD30310407003E28FD9047FFFFD73A1359F37B7BAB001C3B3EF
                8F199E7D7B0A9693E2926690E09461B8F6FC14C3F2AB4BBF029D1D7F32E911D8
                108000021B107BD84AE9E79FDF87AD05BCA55485F5198EBEDECFF0E7DF5F20FE
                C7C0045204F22B233383B59823C3D5A7A718965C5AF60CE812DB4BD98FEF0104
                10489EE1EF9FDF31D28CCA52209B419A7FFCF9CDF0EBEF6F863F40FCEBCF2F06
                609830B84A79339C7A71984147DA8CC1505847EAE76F8618905E8000021BF0FB
                EFCF5843093B8627DF1E0135FD61F80B0CB87F409A11E802C67FFF19FC15C218
                1C653C1932744B189E7CBACF60AFEACCF0EB27432C482F4000810DF8FEF3A7B4
                009B10C3D3AF0F819AFF327848FB306468150235333104288633D84BBB810DDD
                7C6725C3D30FF7180439C518FE7DFF2F0DD20B10402C500318FE01C3E23FD046
                5E665E062B0907063E367E865AB30E06210E11B0E659177A196EBFB9CCC0C3CA
                030C1360C0FF86C4024000815DC0F00768F0B7D70CD25CB20C5F7E7E649876A1
                93E1EBEFCF60CDFFFEFF639875AE9BE1FAABF3E0C094E2936378FDE139D0750C
                E0280208204818FCFEBFF8E8BDDD0C529CB20CACFF18185E7D7DC630F17433C3
                ADB75719E69CEF65B8F6FA02500323031310CBF229326CB9B28B01E888C520BD
                00010436E0E7F7FF4B4E3FBBF0ECF2D3130C96522E0C6C4085EFBE3E67987EA6
                95E1DA8BF30CCCFF9918D8989819EC953C194EDF3BCC70E1DACD670CBF189680
                F40204103C21E94C920DFEFAF3FFC26493206E23596B86C71FEF03FD751F1C2E
                32824A0C327CF20C27EF1D6458B075CB572656C6F8077D4FC0090920805092B2
                52B76CF0BF9FFF271BCBAA4B7A68B902435B04E45486D75F5F306CBBB08BE1D2
                F5BBCF199918731FF43F81276580006244CF8D0A4DB2CA0C7FFF47010336EEFF
                CFFF120C7F81299191F105506A1130E4973D98FC04253301041023A5D91920C0
                00B9755E16835EC02B0000000049454E44AE426082}
              TabOrder = 3
              OnClick = brent_gravarClick
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
            object RadioButton1: TRadioButton
              Left = 5
              Top = 2
              Width = 61
              Height = 17
              Caption = 'Produto:'
              Checked = True
              TabOrder = 4
              TabStop = True
              OnClick = RadioButton1Click
            end
            object RadioButton2: TRadioButton
              Left = 5
              Top = 18
              Width = 61
              Height = 17
              Caption = 'Perda:'
              TabOrder = 5
              OnClick = RadioButton2Click
            end
          end
          object rtotal_rent: TRzNumericEdit
            Left = 400
            Top = 200
            Width = 105
            Height = 21
            TabOrder = 3
            IntegersOnly = False
            DisplayFormat = '###,###,##0.00%'
          end
          object wwDBGrid6: TwwDBGrid
            Left = 0
            Top = 43
            Width = 530
            Height = 150
            DittoAttributes.ShortCutDittoField = 0
            DittoAttributes.ShortCutDittoRecord = 0
            DittoAttributes.Options = []
            DisableThemesInTitle = False
            Selected.Strings = (
              'CODPRODUTO'#9'13'#9'C'#243'd.Produto'
              'PRODUTO'#9'54'#9'Produto'
              'RENDIMENTO'#9'10'#9'Rentabilidade %')
            IniAttributes.Delimiter = ';;'
            TitleColor = clBtnFace
            FixedCols = 0
            ShowHorzScrollBar = True
            Align = alTop
            DataSource = dsrentabilidade
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
            TabOrder = 4
            TitleAlignment = taLeftJustify
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            TitleLines = 1
            TitleButtons = False
            PaintOptions.AlternatingRowColor = 16316664
            PaintOptions.ActiveRecordColor = clBlack
          end
        end
        object check_rentabilidade: TDBCheckBox
          Left = 8
          Top = 208
          Width = 209
          Height = 17
          Caption = 'Utiliza Rentabilidade'
          DataField = 'USA_RENTABILIDADE'
          DataSource = dsproduto2
          TabOrder = 1
          ValueChecked = '1'
          ValueUnchecked = '0'
          OnClick = check_rentabilidadeClick
        end
        object AdvShapeButton1: TAdvShapeButton
          Left = 4
          Top = -12
          Width = 221
          Height = 159
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Picture.Data = {
            474946383961C8009D00C4000035352AD5D5AAF3F3C200000086866B444437BA
            BA95EDEDBDFCFCCA535343686853CCCCA3C3C39C9B9B7CE2E2B5A2A28172725B
            DCDCB07B7B62191914ACAC8A91917425251DB2B28EF7F7C68C8C7060604DE7E7
            B90E0E0BA8A886969678FFFFCC21F9040100001F002C00000000C8009D000005
            FFE0278E64699E68AAAE6CEBBE702CCF746DDF78AEEF7CEFFFC0A070482C1A8F
            C8A472C96C3A9FD0A8744AAD5AAFD8AC76CBED7ABFE0B0784C2E9BCFE8B47ACD
            6EBB2C83022B321834DC781CA7CE62D43979813475032D7B0304828A2F842D02
            8D8B912A902C8792972775162E1E751D98A022942B740310A1A0962E75A7A897
            AA2D7589AE92057C2D0B9EB479020A1E2312751222071001281D750FBB787003
            1C7718841B1F007508271A750E241405161613751ACC5F1610020787750C0487
            C11C0628E203D81084F87FE55D0803130B1F10642004C896BF01008E9DB0D420
            1F800204E07CDAC745DF88751B2C70802301DB890A139C7150D8CD83478A2D0E
            FF1820900FA10101411A0E9037E2C133850666AED8B3C9442E4428534460A0A0
            258775F818FCD8500740890C0DB021A83080E4093A13689660396062D0121700
            209D004041850A0A0A882568758741AD2536583B79028302144C9F9538A0F628
            80B2191E1838100981830A09F215F06033C5027AFE7C603028C74400BD34F624
            241121714BA313C8162820E1C26031011A4850ABB1250398231270208C97E00F
            423D49EC2127C35D1D0C28102010B06143040ACF9C7DCE773434E006D01B4408
            40BDAD8F081D1A28D0006EC2D1E575203A005E6082895BC1E959A0BD23599D04
            DC46289351CAD40B047B300810408100046BE08177D480044E90C0810766A060
            FF06062CE0E002EC8980C102065490C1811A0D18603E0910B00106275D66C21E
            2234509902B37CC0003D29EEA0C03A2338801E0C87B4F2C2050300844B051A24
            E0DD771B0629E486039245000311A6000E6CC470F08B08891870D708FDFCF683
            021354F6813809CC10000149BAE04E0EB69410810368A6E940076CB6D9150470
            C609E75F7402E019050E308982010944308953243C00C807B9A568501DE6FD40
            017BCF2C83C40185E000C70C91AE92DB0A03043349A5C4445AA808EEC9C42910
            4C4D99C4004ADD40A20CA362EAD50A4E697982A6252052C75D7CF8E127A175E8
            E90302932E910107D4D83023232F88F842442B58300C09AD7E708F561B8823AB
            FF0F1DACAA04A419DC80590CD1A270C1A0C8AA305AAD0B8D9AD804D6ED208EA9
            4A1CCB6AA2E0BE20680F0D902B020736CAD72567E189204044A1F54B03574EB0
            E42BB8809670C7072866721EAD242CC001702D38C08007122890805A7516E0B1
            BE1F40AA6F0613D0254A64142065110D70342C030332CFE00034C6D6FC414322
            C0D1A228E77D706DC9559580C0060F780C807743120280A32288E315382A7FA0
            8F01CA254543431DD17081380FD780A30A1C28B06B26FFA20B65ABAD72608D4F
            025A0080061574101F0A111040C01D7C0DD0ED087400A0D4213A5E84DED9F75C
            234330E1BE70CF0418D7508F0A11C0552B6F6A7F3066E6F27D90B6085441906A
            FF0EA6D261827202E0D8AF41679350D44C55AF60ED0D39156DACE5255C7A1EBC
            9D7F20819D4197600DC97FF1F073AB53D50190355A1A343A09E30E90C0C2E63E
            133BB8F6D9302CF58462CA7B0BD2B8D050021A10D00192C6D6DAAEB48956B06A
            E2B88B3010AA2F04934098944A8F0342837CCF8204F4628101FE92A10D858434
            0D48D2CFAC76B71278208070A80057FE660219E9AF05D12BD6FE2EC88206E84C
            14246304E65E003C1A2020001D408B5A7EF4998D2480025593C6F5F24582CB70
            80710BECD4007487020B426D8339444110133388A1AD8025F8F381001EF03B97
            1D420E61230100CD04A0018CB056F2B2CC33FC4783523CEF882810C0048288A9
            FF0FA6C082251040003CD0A370B82C487E295F1245801F0D38001B932280AC4A
            5882437CAE8F5924C18AFCC683647060570C78C017B792820498115301548100
            22B0870238B235702C526834B41CB25CA02EB6D35CB426F0AC12508583230AA4
            FCEA10451C1C000EADF803212A108347E4AF697F200BF932C080EBD54000AB39
            04072830827B90802599D020161FE98C46BAA40700EAA11DC0E5CB14682B0BA7
            DCC43559F9BADE8D408F72688A9202A90D23D2EE3D8EC9DE1BFED8022276E131
            886241B67A26022D69C29A81B486327500A0F58922922B8000403B38B92EE485
            8B24500B94EA1907ABF10F05A320C106CC5983BE3D749CE05A46001253807D9E
            FFC002089D01A01011C21BC0A19599E8498B12214E88AAB20779D1C90A1A0383
            1DEE6102EA40E50994A58359888C8736F849E34A54076AB0D2168068A90920F5
            D21D88F1652A9011F75C6A0A6A44C016F1A3D2507B23023B6D1506AF24CB5005
            C08102DCD0A5E614EA100E00199239887A1CA0E51B9E113911F8013E29104BE1
            6E308B42A0B40624226B294D208E0FD08182D0D2694D225A020870E087306880
            6758293C42804978ECFCE80E3795D50FEC61AA50488C8EFC8082CBF0268BE310
            226375735118308E10DFABA23AEBF9C811CC0FB4D9E2C0F55862302A644AAB28
            280F3730704DF9FCF604891B2A80323B4E7C34A08182E4CA005A27D0A8DA628E
            FFB9E34010C3770570700E7003204E3E2C0017599C6003935541951042CC5834
            850275ADCDB73E30CF1434D504B6F86B3528DA049BA8AC5536F1803566F11038
            38AA147F658033804A026DFC01B228B0063AAA4902679C84B4F6656E0A102016
            14E46B018924800420B01D0D9858030A8080042AD000037894078FD159DB0A81
            1E8162A0C32AAAC3274D10BDCD56221F219D4104AC51B87EA440A014862873FF
            C08190C8AD4E0000871BDF48100B142003D8556F23A417A95115E501568E9C00
            7A32805FF841A6A6749A98D6D25A1D2047668DD3AEE4325B5C132E00023E7248
            674B401623172211C90018880A3A02D8E4E2015CD9EB085E37DB0E8EC69F3590
            FF51001B47BF4194F46D3D708037F061010D64B96885F8CE981B969142F07404
            72B51A44EA80BFC9A61A0A7BD8B1D5EC6BAC685D26CB3608462F943358A24EA9
            52CFE014218075C559EF2B0E45D52CABA70007CC7505A2C62A29A182EC2DAB58
            4C18F2012A912F62819B35646195E2A8E25219075C1F2131B97908B425674685
            066102BCE3F0AD3A8366ADB69768C79880364ED0A53B0CA49999780F68932093
            421FF7BB8C4C01725EFC819631A2D72C38755A1271B32C16C546BCED59B0E8B9
            B20F08355AD2D071929130237154AD719886A8AC25D68206589955D02A4100B8
            4402196949D2230007A7FA3AEB9846CB82D3ADC28C1A32B470E16A12D5FC2A94
            FFB00673E396C0829133EBD9CC3A3AB9ED7C6576B8CC6AEBC3F026EC01BA37ED
            8047C2B55A113816532F30007F21DA3AA199802518E3542EF45436619B22A91F
            985F16853A7025EC01B1767D5153861AAE4EB43D7841E080ACEB2C020D706001
            1E205730566E35B25A0E0291534E496D725F251485C13167D557952E030418A0
            018E0F89779C0C00092CA0AE9A688534005A08055C6A031CB85BB0E7BBE87B56
            A113A0F7664D830FB41CA8843B54060F00008201380C1354D3FC80DA81960B12
            74025A0629A967D6BE0469481B5AF115E000BA2EFC6425206B9A308BB93D7E28
            7A28447A972A808C44313A6D95E71191216C1D002F05774E62913B4146A1B702
            FF178025F830379016030E36009F2422297217EE6613ADE02022A02CF1741E75
            B0674D3010E4E75910862987C7727B22500401117D270364856DD59522A12657
            F8573214700C07B0342B0350EBA56853D06826A2159D562FB140021830405596
            01E1F70318801C23812AD1244B9C610D068200DAA05B1F807F3C147203B07E49
            D00F16B048951233C9427A76D05678C5046A8581267066CFC024A5C0434C457A
            4AD00F1C00787A6438DFF776DF27000B607B90B14306508449E0602AF308C5F6
            081460395A37346D98054A35025A124D6FA0000CF01F546601092001BD6405B6
            10492F6702C5630232F13D16545B4F801CE3675C0D7366E6D60F01607B09D001
            FF21B805398139B69409F8734AC5468AD4D60416746F26500A38780232E28760
            B0078E2201D26674CFF03308C038104705E25087D8C602C8C405DC4179005315
            D7F53665D1652850148F6534C3C38B56503BE29858A2280245C105F887100028
            7DF4D025D3C874561326CDD728251072F2A705071085BFE850C4D7786ED80450
            082327B00099E827D3683A56F32A22503B23914602B705EB883F50950265E205
            9E6101B1633277804C89702200254C6D872384C4055A1774253059F8A0494CD3
            7953601098770248E54BA3720F379524AFD38E56400F0060398C032401325059
            B00070F00F27408AAF683567230D790650ACE30576E134A3530A1F582B757805
            FF54380F0D8502C618006C650A8314922E390524F907F2002C8A751E5779050E
            463D83E44F84A0017EE200E22063BCC705CB880F898000B6908F93B096E3B80D
            75A10D0450848CD33074A9581738061A9001B0419236221C017112F92705C221
            8C02C30A28002913206B7C715387E785B9939663C0540DE3119219103ED60418
            E0005FC26BB2A34AF7F0174EF36A259089988906EB38020F735567191E069094
            3E1000060001E8870F0C69028923144D219C23C08F82608544250A04F09B7F50
            00C9D903C4D94402A261C0306E4B550709F89D1C909D6BB05EC51229DF200FF5
            910F59528917A0931157804B132094F800CE2948F9911E65E6024CE59D697008
            FF34216C9E030018C000872220A1B1A03F4220C9D742AE075DF6F252F7C07DC6
            25946B601013112928520820450C57854B228A0F1AB00011909B2B1079579802
            C9007A7AC38277D906F3D35BF2F162C281000B40002A894B1C90001070012032
            722FF013BE1401FB963B249036F4909F66F013345A7C6320282B1A1C64C53B86
            921B2469A165500A4F3A8B636000E2D0818ED5402C585E6DD6064C654EDC6102
            89516C56401518AA5576271D70513B028806F8085138B80780F904D6F08F0DF7
            6CB062258190A7995035F4C0059AE10251F663013906215752D5A77F8FBA04E6
            B50A128A454FBA06216783FC920D75508E42576F292AA805B96CD1B998238023
            FF2128139B1A05F8379ED0027A39412C8A209D5884379A21A44B40157DFA9DA2
            2A4A0580856480AB23002908250E1310AC51200E806A263B341A2756458579AB
            111579FEE484D6689901237AE06112D6CA7B95C695FEB0AD516073F299029062
            9B06B007B27A0621772939B1027E206756909706C0ABD0DA229CF7AE6610AF1F
            030E1BB10226D38C503064533A08972213FE5A0691FA100AE0317DF70C06FB04
            9FA72A9CC2B08B901755B9296EFA0421C7AC2EE07F1FD009A114083FA18101A7
            A548C03838801C24A0B18A503BE9BAB256E07C3830A94475B279F03A4C8A452C
            6B049731011DFB025EFA01D153B368400F2708B454B000D6A0011D98129CD2AE
            FF76A0AF63306C31500A1FCB0482E79838307F2360B5512108EB2503B93001E6
            B9046D88B52800B3231000D650B681807FE7A89C3B34B5E7B6883670A42210A2
            749B074CD5B5E374B7468000F4F0AA30709112A20D81EB0602C18731D0320707
            0565B903D724006DDAB4636041B95859392205585391C61249F0A0B764C015FA
            A502F4E0B640B08084CB3025C038C41A068480A21858A94090532599037EB04F
            A4C87F6BE07B30F03AABFB875AAB03F066025989073F11BB2700209C2B0468B9
            953A10BAB99B07B00003262B056539BD2BC0142800706D503B71DA0514F08CB6
            69525D9BAF906B10C20B060E9600A8BB0AFD18089EF1B9591053F5DB0267970A
            50639905AFA3B831600DE09B06158A060671BF94F2AB5F210519F0A1EED26D0F
            BC0BB2E1BA15AC06DA50B119BC08E071BE1D1CC2223CC2245CC2267CC2289CC2
            2ABCC22CDCC22EFCC2301CC332EC042100003B}
          ParentFont = False
          TabOrder = 2
          Version = '5.4.0.0'
        end
      end
    end
    object PageSheet6: TPageSheet
      Left = 0
      Top = 21
      Width = 997
      Height = 229
      Caption = 'Movimento'
      DisplayMode = tdGlyph
      ImageIndex = 0
      Margin = 0
      PageIndex = 8
      TabColor = clWindow
      TabWidth = 0
      TransparentColor = clNone
      object graf_venda: TChart
        Left = 0
        Top = 0
        Width = 997
        Height = 118
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        Title.Text.Strings = (
          'V E N D A S')
        Legend.Visible = False
        View3D = False
        Align = alTop
        TabOrder = 0
        object Series1: TBarSeries
          Marks.ArrowLength = 20
          Marks.Style = smsValue
          Marks.Visible = True
          SeriesColor = clRed
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Bar'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
        end
      end
      object Chart1: TChart
        Left = 0
        Top = 118
        Width = 997
        Height = 117
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        Title.Text.Strings = (
          'C O M P R A S')
        Legend.Visible = False
        View3D = False
        Align = alTop
        TabOrder = 1
        object BarSeries1: TBarSeries
          Marks.ArrowLength = 20
          Marks.Style = smsValue
          Marks.Visible = True
          SeriesColor = clRed
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Bar'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
        end
      end
    end
    object PageSheet13: TPageSheet
      Left = 0
      Top = 21
      Width = 997
      Height = 229
      Caption = 'Tributa'#231#227'o'
      DisplayMode = tdGlyph
      ImageIndex = 0
      Margin = 0
      PageIndex = 9
      TabColor = clWindow
      TabWidth = 0
      TransparentColor = clNone
      object GroupBox2: TGroupBox
        Left = 5
        Top = 8
        Width = 980
        Height = 212
        TabOrder = 0
        object Panel7: TPanel
          Left = 300
          Top = 11
          Width = 342
          Height = 194
          BevelInner = bvRaised
          BevelOuter = bvLowered
          TabOrder = 1
          object Label73: TLabel
            Left = 13
            Top = 28
            Width = 36
            Height = 12
            AutoSize = False
            Caption = 'CST:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label30: TLabel
            Left = 13
            Top = 52
            Width = 38
            Height = 12
            AutoSize = False
            Caption = 'ICMS:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label93: TLabel
            Left = 13
            Top = 78
            Width = 24
            Height = 12
            AutoSize = False
            Caption = 'ST:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label92: TLabel
            Left = 13
            Top = 104
            Width = 29
            Height = 13
            AutoSize = False
            Caption = 'IAT:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label60: TLabel
            Left = 13
            Top = 128
            Width = 20
            Height = 13
            AutoSize = False
            Caption = 'IPI:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label94: TLabel
            Left = 13
            Top = 155
            Width = 28
            Height = 13
            AutoSize = False
            Caption = 'IPPT:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label89: TLabel
            Left = 13
            Top = 176
            Width = 62
            Height = 13
            Caption = 'PIS/COFINS:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label104: TLabel
            Left = 10
            Top = 4
            Width = 214
            Height = 13
            Caption = 'REGIME NORMAL DE APURA'#199#195'O ou ECF'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label91: TLabel
            Left = 172
            Top = 26
            Width = 58
            Height = 13
            AutoSize = False
            Caption = 'Incid'#234'ncia:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object edt1: TRzDBButtonEdit
            Left = 86
            Top = 25
            Width = 68
            Height = 21
            DataSource = dsproduto2
            DataField = 'CST'
            FocusColor = 10550008
            TabOrder = 0
            OnEnter = edata_cadastroEnter
            OnExit = edt1Exit
            OnKeyPress = edt1KeyPress
            OnButtonClick = edt1ButtonClick
          end
          object ealiq: TRxDBCalcEdit
            Left = 86
            Top = 48
            Width = 68
            Height = 21
            DataField = 'ALIQUOTA'
            DataSource = dsproduto2
            DecimalPlaces = 15
            DisplayFormat = '#0.00'
            ButtonWidth = 0
            NumGlyphs = 2
            TabOrder = 1
            OnEnter = DBEdit1Enter
            OnExit = ealiqExit
            OnKeyPress = ealiqKeyPress
          end
          object wwDBComboBox2: TwwDBComboBox
            Left = 86
            Top = 71
            Width = 70
            Height = 21
            Hint = 
              'T=Tributado, I=Isento, N=N'#227'o Tributado, F=Substitui'#231#227'o Tributari' +
              'a'
            ShowButton = True
            Style = csDropDownList
            MapList = False
            AllowClearKey = False
            CharCase = ecUpperCase
            DataField = 'SITUACAO_TRIBUTARIA'
            DataSource = dsproduto2
            DropDownCount = 8
            ItemHeight = 0
            Items.Strings = (
              'T'
              'I'
              'N'
              'F')
            ItemIndex = 0
            Sorted = False
            TabOrder = 2
            UnboundDataType = wwDefault
            OnEnter = combo_tipoEnter
            OnExit = DBEdit1Exit
            OnKeyPress = wwDBComboBox2KeyPress
          end
          object wwDBComboBox3: TwwDBComboBox
            Left = 86
            Top = 95
            Width = 69
            Height = 21
            ShowButton = True
            Style = csDropDownList
            MapList = False
            AllowClearKey = False
            DataField = 'IAT'
            DataSource = dsproduto2
            DropDownCount = 8
            ItemHeight = 0
            Items.Strings = (
              'T'
              'A')
            ItemIndex = 0
            Sorted = False
            TabOrder = 3
            UnboundDataType = wwDefault
            OnEnter = combo_tipoEnter
            OnExit = DateEdit1Exit
            OnKeyPress = wwDBComboBox3KeyPress
          end
          object RxDBCalcEdit1: TRxDBCalcEdit
            Left = 86
            Top = 120
            Width = 68
            Height = 21
            DataField = 'IPI'
            DataSource = dsproduto2
            DecimalPlaces = 15
            DisplayFormat = '#0.00'
            ButtonWidth = 0
            NumGlyphs = 2
            TabOrder = 4
            OnEnter = DBEdit1Enter
            OnExit = ealiqExit
            OnKeyPress = RxDBCalcEdit1KeyPress
          end
          object wwDBComboBox4: TwwDBComboBox
            Left = 86
            Top = 144
            Width = 68
            Height = 21
            ShowButton = True
            Style = csDropDownList
            MapList = False
            AllowClearKey = False
            DataField = 'IPPT'
            DataSource = dsproduto2
            DropDownCount = 8
            ItemHeight = 0
            Items.Strings = (
              'T'
              'P')
            ItemIndex = 0
            Sorted = False
            TabOrder = 5
            UnboundDataType = wwDefault
            OnEnter = combo_tipoEnter
            OnExit = DateEdit1Exit
            OnKeyPress = wwDBComboBox4KeyPress
          end
          object ecombo_piscofins: TwwDBComboBox
            Left = 86
            Top = 168
            Width = 67
            Height = 21
            ShowButton = True
            Style = csDropDownList
            MapList = False
            AllowClearKey = False
            DataField = 'PISCOFINS'
            DataSource = dsproduto2
            DropDownCount = 8
            ItemHeight = 0
            Items.Strings = (
              'S'
              'N')
            ItemIndex = 0
            Sorted = False
            TabOrder = 6
            UnboundDataType = wwDefault
            OnEnter = combo_tipoEnter
            OnExit = DateEdit1Exit
            OnKeyPress = ecombo_piscofinsKeyPress
          end
          object wwDBComboBox1: TwwDBComboBox
            Left = 229
            Top = 23
            Width = 81
            Height = 21
            ShowButton = True
            Style = csDropDownList
            MapList = False
            AllowClearKey = False
            DataField = 'INCIDENCIA_PISCOFINS'
            DataSource = dsproduto2
            DropDownCount = 8
            ItemHeight = 0
            Items.Strings = (
              'NENHUMA'
              'MONOF'#193'SICA'
              'SUBST.TRIBUT'#193'RIA'
              'AL'#205'QUOTA 0'
              'SUSPENS'#195'O')
            Sorted = False
            TabOrder = 7
            UnboundDataType = wwDefault
            OnEnter = DBEdit1Enter
            OnExit = DBEdit1Exit
            OnKeyPress = DBEdit62KeyPress
          end
        end
        object Panel8: TPanel
          Left = 7
          Top = 11
          Width = 290
          Height = 194
          BevelInner = bvRaised
          BevelOuter = bvLowered
          TabOrder = 0
          object Label96: TLabel
            Left = 5
            Top = 4
            Width = 262
            Height = 13
            Caption = 'DEMAIS INFORMA'#199#213'ES DE TRIBUTA'#199#195'O ou SAT'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label103: TLabel
            Left = 3
            Top = 34
            Width = 51
            Height = 13
            AutoSize = False
            Caption = 'ORIGEM:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label102: TLabel
            Left = 5
            Top = 58
            Width = 40
            Height = 13
            AutoSize = False
            Caption = 'CFOP:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label95: TLabel
            Left = 6
            Top = 82
            Width = 40
            Height = 13
            AutoSize = False
            Caption = 'CSOSN:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label106: TLabel
            Left = 6
            Top = 107
            Width = 38
            Height = 12
            AutoSize = False
            Caption = 'MVA:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label105: TLabel
            Left = 5
            Top = 145
            Width = 247
            Height = 13
            Caption = 'ATEN'#199#195'O! CASO FOR EMITIR CUPOM FISCAL SAT '
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label107: TLabel
            Left = 5
            Top = 161
            Width = 279
            Height = 13
            Caption = 'TORNA-SE OBRIGAT'#211'RIO O PREENCHIMENTO DE TODOS'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label108: TLabel
            Left = 6
            Top = 177
            Width = 136
            Height = 13
            Caption = 'OS CAMPOS EM VERMELHO.'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object eorigem: TRzDBButtonEdit
            Left = 60
            Top = 30
            Width = 54
            Height = 21
            DataSource = dsproduto2
            DataField = 'SITA'
            FocusColor = 10550008
            TabOrder = 0
            OnKeyPress = eorigemKeyPress
            OnButtonClick = eorigemButtonClick
          end
          object ecfop: TRzDBButtonEdit
            Left = 60
            Top = 54
            Width = 54
            Height = 21
            DataSource = dsproduto2
            DataField = 'CFOP'
            FocusColor = 10550008
            TabOrder = 1
            OnKeyPress = ecfopKeyPress
            OnButtonClick = ecfopButtonClick
          end
          object ecsosn: TRzDBButtonEdit
            Left = 60
            Top = 78
            Width = 54
            Height = 21
            DataSource = dsproduto2
            DataField = 'CSOSN'
            FocusColor = 10550008
            TabOrder = 2
            OnKeyPress = ecsosnKeyPress
            OnButtonClick = ecsosnButtonClick
          end
          object RxDBCalcEdit2: TRxDBCalcEdit
            Left = 60
            Top = 102
            Width = 51
            Height = 21
            DataField = 'MARGEM_AGREGADA'
            DataSource = dsproduto2
            DecimalPlaces = 15
            DisplayFormat = '#0.00'
            ButtonWidth = 0
            NumGlyphs = 2
            TabOrder = 3
            OnEnter = DBEdit1Enter
            OnExit = DBEdit1Exit
            OnKeyPress = RxDBCalcEdit2KeyPress
          end
        end
      end
    end
  end
  object pficha3: TPanel
    Left = 0
    Top = 0
    Width = 997
    Height = 212
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 12
    object Bevel3: TBevel
      Left = 428
      Top = 78
      Width = 2
      Height = 123
    end
    object Label1: TLabel
      Left = 6
      Top = 12
      Width = 37
      Height = 13
      Caption = 'C'#243'digo:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 117
      Top = 12
      Width = 58
      Height = 13
      Caption = 'C'#243'd.Barras:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label58: TLabel
      Left = 369
      Top = 12
      Width = 65
      Height = 13
      Caption = 'Classifica'#231#227'o:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 564
      Top = 12
      Width = 27
      Height = 13
      Caption = 'Data:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 0
      Top = 52
      Width = 65
      Height = 12
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Produto:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 646
      Top = 52
      Width = 70
      Height = 12
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Unidade:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label36: TLabel
      Left = 0
      Top = 84
      Width = 77
      Height = 12
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Grupo:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label68: TLabel
      Left = 0
      Top = 108
      Width = 77
      Height = 12
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Subgrupo:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label69: TLabel
      Left = 0
      Top = 132
      Width = 77
      Height = 12
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Fornecedor:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object label7: TLabel
      Left = 0
      Top = 156
      Width = 77
      Height = 12
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Marca:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Bevel4: TBevel
      Left = 0
      Top = 40
      Width = 1041
      Height = 3
    end
    object Label13: TLabel
      Left = 267
      Top = 181
      Width = 79
      Height = 20
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Estoque M'#237'nimo:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Bevel20: TBevel
      Left = 800
      Top = 77
      Width = 177
      Height = 89
    end
    object Label97: TLabel
      Left = 841
      Top = 98
      Width = 106
      Height = 23
      Caption = 'Cadastro de '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label101: TLabel
      Left = 841
      Top = 122
      Width = 73
      Height = 23
      Caption = 'Produtos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBEdit1: TDBEdit
      Left = 48
      Top = 8
      Width = 57
      Height = 21
      DataField = 'CODIGO'
      DataSource = dsproduto2
      TabOrder = 0
      OnChange = DBEdit1Change
      OnEnter = DBEdit1Enter
      OnExit = DBEdit1Exit
    end
    object combo_tipo: TwwDBComboBox
      Left = 440
      Top = 8
      Width = 113
      Height = 21
      ShowButton = True
      Style = csDropDownList
      MapList = False
      AllowClearKey = False
      DataField = 'TIPO'
      DataSource = dsproduto2
      DropDownCount = 8
      ItemHeight = 0
      Items.Strings = (
        'VENDA'
        'CONSUMO'
        'MAT'#201'RIA-PRIMA'
        'IMOBILIZADO')
      ItemIndex = 0
      Sorted = False
      TabOrder = 2
      UnboundDataType = wwDefault
      OnEnter = combo_tipoEnter
      OnExit = combo_tipoExit
      OnKeyPress = combo_tipoKeyPress
    end
    object edata_cadastro: TDBDateEdit
      Left = 600
      Top = 8
      Width = 73
      Height = 21
      DataField = 'DATA_CADASTRO'
      DataSource = dsproduto2
      GlyphKind = gkCustom
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFDFB492D49C73D09567CD9162CA8D5DC8895AC6
        8655C28351C28351C28351C28351C28351C28351CFA07CFFFFFFFFFFFFD6A074
        F7F1ECF6EFE9F5ECE5F3E9E1F2E6DDF0E3DAEFE1D7EFE1D7EFE1D7EFE1D7EFE1
        D7EFE1D7C48A5DFFFFFFFFFFFFD8A379F8F2EDEACFBBE6C0A3E6BEA0E5BD9EE5
        BA99E2B794E0B48EDDAF88DBAA82D8AD88EFE1D7C58B5EFFFFFFFFFFFFDCA77D
        F8F2EEEACFB9FEFEFEFDFDFDFDFEFDFDFEFDFEFEFEFDFDFDFEFEFEFEFEFEDAAF
        8BEFE1D7C5895BFFFFFFFFFFFFDEA981F8F2EEE9CDB6FEFEFEBFDCC261AA68A0
        CCA4AAD1AE67AD6DAAD1AEFEFEFEDCB390EFE1D7C78C5EFFFFFFFFFFFFE0AD86
        F9F3EFE9CAB1FEFEFEFEFEFE61AA68D4E8D68BC090FEFEFE61AA68FEFEFEDEB7
        95EFE1D7C38553FFFFFFFFFFFFE2B08BF9F5F0E9C8ADFEFEFEFEFEFE61AA68D4
        E8D695C69AF8FBF86BB072FEFEFEE0BC9CEFE1D7C58554FFFFFFFFFFFFE4B38E
        F9F5F1E8C5A9FEFEFEAAD1AE6BB072D4E8D6AAD1AE64AC6BAAD1AEFEFEFEE3C0
        A3F1E6DDC78958FFFFFFFFFFFFE6B693FAF6F3E8C2A5FEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEE4C5AAF6F0EACA8E5EFFFFFFFFFFFFE8B997
        FAF6F364A3FE63A2FE61A1FE60A0FE5E9EFE5B9CFE5999FE5697FE5394FE5193
        FEFAF6F3CD9263FFFFFFFFFFFFEABC9AFAF6F363A3FE78BCFE74BAFE70B8FE6C
        B7FE67B2FE60AFFE59AAFE53A6FE3A7CFEFAF6F3D09669FFFFFFFFFFFFEBBE9D
        FAF6F364A3FE63A2FE5F9FFE5C9DFE5798FE5395FE4C8FFE468AFE4183FE3C7E
        FEFAF6F3D39A6EFFFFFFFFFFFFEEC5A7FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FA
        F6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3D7A277FFFFFFFFFFFFF7E0D1
        F0C7ABECBF9EEABD9CEABB99E8B995E6B692E5B48FE3B18BE1AE87DFAB83DCA8
        7FDBA47CE1B595FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ButtonWidth = 0
      NumGlyphs = 1
      TabOrder = 3
      OnEnter = edata_cadastroEnter
      OnExit = Edit1Exit
    end
    object DBEdit2: TDBEdit
      Left = 69
      Top = 48
      Width = 596
      Height = 21
      CharCase = ecUpperCase
      DataField = 'PRODUTO'
      DataSource = dsproduto2
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnEnter = DBEdit1Enter
      OnExit = DBEdit2Exit
      OnKeyPress = DBEdit2KeyPress
    end
    object DBEdit7: TDBEdit
      Left = 728
      Top = 48
      Width = 41
      Height = 21
      CharCase = ecUpperCase
      DataField = 'UNIDADE'
      DataSource = dsproduto2
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnEnter = DBEdit1Enter
      OnExit = DBEdit7Exit
      OnKeyPress = DBEdit7KeyPress
    end
    object egrupo: TRzDBButtonEdit
      Left = 80
      Top = 80
      Width = 69
      Height = 21
      DataSource = dsproduto2
      DataField = 'CODGRUPO'
      FocusColor = 10550008
      TabOrder = 7
      OnKeyPress = egrupoKeyPress
      OnButtonClick = egrupoButtonClick
    end
    object DBEdit30: TDBEdit
      Left = 152
      Top = 80
      Width = 270
      Height = 21
      Color = clBtnFace
      DataField = 'grupo'
      DataSource = dsproduto2
      TabOrder = 8
      OnEnter = DBEdit1Enter
      OnExit = DBEdit1Exit
    end
    object esubgrupo: TRzDBButtonEdit
      Left = 80
      Top = 104
      Width = 69
      Height = 21
      DataSource = dsproduto2
      DataField = 'CODSUBGRUPO'
      FocusColor = 10550008
      TabOrder = 9
      OnEnter = esubgrupoEnter
      OnKeyPress = esubgrupoKeyPress
      OnButtonClick = esubgrupoButtonClick
    end
    object DBEdit8: TDBEdit
      Left = 152
      Top = 104
      Width = 270
      Height = 21
      Color = clBtnFace
      DataField = 'subgrupo'
      DataSource = dsproduto2
      TabOrder = 10
      OnEnter = DBEdit1Enter
      OnExit = DBEdit1Exit
    end
    object efornecedor: TRzDBButtonEdit
      Left = 80
      Top = 128
      Width = 69
      Height = 21
      DataSource = dsproduto2
      DataField = 'CODFORNECEDOR'
      FocusColor = 10550008
      TabOrder = 11
      OnKeyPress = efornecedorKeyPress
      OnButtonClick = efornecedorButtonClick
    end
    object DBEdit9: TDBEdit
      Left = 152
      Top = 128
      Width = 270
      Height = 21
      Color = clBtnFace
      DataField = 'fornecedor'
      DataSource = dsproduto2
      TabOrder = 12
      OnEnter = DBEdit1Enter
      OnExit = DBEdit1Exit
    end
    object emarca: TRzDBButtonEdit
      Left = 80
      Top = 152
      Width = 69
      Height = 21
      DataSource = dsproduto2
      DataField = 'CODMARCA'
      FocusColor = 10550008
      TabOrder = 13
      OnKeyPress = emarcaKeyPress
      OnButtonClick = emarcaButtonClick
    end
    object DBEdit63: TDBEdit
      Left = 152
      Top = 152
      Width = 270
      Height = 21
      Color = clBtnFace
      DataField = 'marca'
      DataSource = dsproduto2
      TabOrder = 14
      OnEnter = DBEdit1Enter
      OnExit = DBEdit1Exit
    end
    object GroupBox7: TGroupBox
      Left = 436
      Top = 72
      Width = 359
      Height = 94
      Caption = 'Pre'#231'os'
      TabOrder = 16
      object Label71: TLabel
        Left = 10
        Top = 26
        Width = 36
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Custo:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label72: TLabel
        Left = 10
        Top = 59
        Width = 36
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Venda:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label98: TLabel
        Left = 259
        Top = 20
        Width = 91
        Height = 13
        Caption = 'F2 - Incluir / Salvar'
      end
      object Label99: TLabel
        Left = 259
        Top = 43
        Width = 55
        Height = 13
        Caption = 'F3 - Alterar'
      end
      object Label100: TLabel
        Left = 259
        Top = 64
        Width = 63
        Height = 13
        Caption = 'F6 - Localizar'
      end
      object ecusto: TRzDBNumericEdit
        Left = 48
        Top = 22
        Width = 89
        Height = 21
        DataSource = dsproduto2
        DataField = 'PRECOCUSTO'
        Alignment = taLeftJustify
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        FocusColor = 11075583
        ParentFont = False
        TabOrder = 0
        OnEnter = ecustoEnter
        OnExit = ecustoExit
        OnKeyPress = ecustoKeyPress
        IntegersOnly = False
        DisplayFormat = '###,###,##0.00000'
      end
      object evenda: TRzDBNumericEdit
        Left = 48
        Top = 56
        Width = 89
        Height = 21
        DataSource = dsproduto2
        DataField = 'PRECOVENDA'
        Alignment = taLeftJustify
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        FocusColor = 11075583
        ParentFont = False
        TabOrder = 1
        OnEnter = evendaEnter
        OnExit = evendaExit
        OnKeyPress = evendaKeyPress
        IntegersOnly = False
        DisplayFormat = '###,###,##0.00000'
      end
      object AdvGlowButton1: TAdvGlowButton
        Left = 144
        Top = 20
        Width = 108
        Height = 58
        Caption = 'F7 - C'#225'lculo Pre'#231'o'
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
          424D360400000000000036000000280000001000000010000000010020000000
          00000004000000000000000000000000000000000000FF00FF00FF00FF00FF00
          FF00FF00FF00174259002A6188004B89BD006FA8CC00E3EDF500FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF002D66840093C6F80090C8F8004084C800266AAD00D8E6F200FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00909090008887
          8700868585004288A900DFF1FE005399D7001979BD004897C4003C82BA007885
          92008685840096969600FF00FF00FF00FF00FF00FF00FF00FF0087878700C1C1
          C000BBBBBB007D9BAF0079B5D4008FB6D00054C8E3005ADEF40077CFEC004B96
          D600AFBAC3008A8A8900FF00FF00FF00FF00FF00FF00FF00FF008B8B8A00FEFE
          FE00EAEAEA00EAEAEA00A4C7D70075B8D500C1F5FC0062DEF6005CE1F70078D2
          EF004998DB00828C9500FF00FF00FF00FF00FF00FF00FF00FF0091909000FEFE
          FE00B3B3B30093939300E6E6E6007DA1B30076CAE600C6F6FC005DDBF40059E0
          F6007AD3F0004594D700D6E7F700FF00FF00FF00FF00FF00FF0094949400FEFE
          FE00E7E7E700E6E6E600E4E4E400E2E2E200AAD2DF0078D2ED00C6F6FC005EDB
          F4005AE1F60079D5F10050A1E100DCE9F500FF00FF00FF00FF0099999800FEFE
          FE00B0B0B00090909000E1E1E100ACACAC008E8E8E00A7D1DD007BD3EC00C3F5
          FC006BDCF5006CC9EC0062A2D60068A2D400E5EFF700FF00FF009D9C9C00FEFE
          FE00E2E2E200E0E0E000DBDBDB00DADADA00D6D6D600D2D2D20097C8D7007FD4
          EC00B1E2F8008ABFE600ADD2F500C3DFFB006AA1D300FF00FF009F9F9F00FEFE
          FE00ACACAC008D8D8D00D7D7D700A4A4A40089898900CDCDCD007273E7004079
          DD0076BDE600B3D1EF00E4F2FE00ABD1EE005895CB00FF00FF00A2A2A200FBFB
          FB00D9D9D900D6D6D600D1D1D100CDCDCD00C8C8C800C4C4C400C1C1C100BEBE
          BE00BBE4F30057A4D70084B0DA00459CCF00B0D8EE00FF00FF00A2A2A200FEFE
          FE00AF7A5500C28C6600C48E6700C58F6800C7916A00C9936B00C9946D00AF7A
          5500FEFEFE00A09F9E00FF00FF00FF00FF00FF00FF00FF00FF00A3A3A300FEFE
          FE00AF7A5500C08A6300C28C6500C48E6600C58F6800C7916A00C9936B00AF7A
          5500FEFEFE009F9F9F00FF00FF00FF00FF00FF00FF00FF00FF00A2A2A200FEFE
          FE00A6714C00A6714C00A6714C00A6714C00A6714C00A6714C00A6714C00A671
          4C00FEFEFE009D9D9D00FF00FF00FF00FF00FF00FF00FF00FF00A9A9A900FEFE
          FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
          FE00FEFEFE00A2A2A200FF00FF00FF00FF00FF00FF00FF00FF00B2B2B200A8A8
          A800A7A7A700AAAAAA00ABABAB00ACACAC00ABABAB00AAAAAA00A7A7A700A3A3
          A300A2A2A200B5B5B500FF00FF00FF00FF00FF00FF00}
        TabOrder = 2
        OnClick = AdvGlowButton1Click
        Appearance.BorderColor = 14727579
        Appearance.BorderColorHot = 10079963
        Appearance.BorderColorDown = 4548219
        Appearance.BorderColorChecked = clBlack
        Appearance.Color = 15653832
        Appearance.ColorTo = 16178633
        Appearance.ColorChecked = 7915518
        Appearance.ColorCheckedTo = 11918331
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 7778289
        Appearance.ColorDownTo = 4296947
        Appearance.ColorHot = 15465983
        Appearance.ColorHotTo = 11332863
        Appearance.ColorMirror = 15586496
        Appearance.ColorMirrorTo = 16245200
        Appearance.ColorMirrorHot = 5888767
        Appearance.ColorMirrorHotTo = 10807807
        Appearance.ColorMirrorDown = 946929
        Appearance.ColorMirrorDownTo = 5021693
        Appearance.ColorMirrorChecked = 10480637
        Appearance.ColorMirrorCheckedTo = 5682430
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
        Appearance.GradientHot = ggVertical
        Appearance.GradientMirrorHot = ggVertical
        Appearance.GradientDown = ggVertical
        Appearance.GradientMirrorDown = ggVertical
        Appearance.GradientChecked = ggVertical
        Layout = blGlyphTop
      end
    end
    object GroupBox8: TGroupBox
      Left = 436
      Top = 166
      Width = 233
      Height = 32
      Caption = #218'ltima Compra'
      TabOrder = 18
      object Label74: TLabel
        Left = 6
        Top = 14
        Width = 35
        Height = 12
        AutoSize = False
        Caption = 'Data:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label75: TLabel
        Left = 126
        Top = 14
        Width = 43
        Height = 12
        AutoSize = False
        Caption = 'N.Fiscal:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object ldata_compra: TLabel
        Left = 38
        Top = 14
        Width = 83
        Height = 12
        AutoSize = False
        Caption = '---'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lnf: TLabel
        Left = 170
        Top = 14
        Width = 54
        Height = 12
        AutoSize = False
        Caption = '---'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object GroupBox9: TGroupBox
      Left = 675
      Top = 166
      Width = 303
      Height = 32
      Caption = #218'ltima Venda'
      TabOrder = 19
      object ldata_venda: TLabel
        Left = 4
        Top = 14
        Width = 77
        Height = 12
        Alignment = taCenter
        AutoSize = False
        Caption = '---'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object DBEdit11: TDBEdit
      Left = 354
      Top = 176
      Width = 69
      Height = 21
      DataField = 'ESTOQUEMINIMO'
      DataSource = dsproduto2
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 15
      OnEnter = DBEdit1Enter
      OnExit = DBEdit1Exit
      OnKeyPress = DBEdit11KeyPress
    end
    object DBEdit16: TDBEdit
      Left = 782
      Top = 8
      Width = 11
      Height = 21
      DataField = 'CODBARRA'
      DataSource = dsproduto2
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 20
      Visible = False
      OnEnter = DBEdit1Enter
    end
    object gestoque: TGroupBox
      Left = 436
      Top = 166
      Width = 542
      Height = 35
      TabOrder = 17
      Visible = False
      object Label11: TLabel
        Left = 6
        Top = 14
        Width = 83
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Estoque Inicial:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object eestoque: TRzDBNumericEdit
        Left = 98
        Top = 9
        Width = 55
        Height = 21
        DataSource = dsproduto2
        DataField = 'ESTOQUE'
        Alignment = taLeftJustify
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        FocusColor = 11075583
        ParentFont = False
        TabOrder = 0
        OnEnter = DBEdit1Enter
        OnExit = DBEdit1Exit
        OnKeyPress = eestoqueKeyPress
        IntegersOnly = False
        DisplayFormat = '###,###,##0.000'
      end
    end
    object fdados_codbarra: TFlatPanel
      Left = 1060
      Top = 77
      Width = 209
      Height = 146
      ParentColor = True
      Visible = False
      TabOrder = 21
      UseDockManager = True
      object Bevel5: TBevel
        Left = 1
        Top = 116
        Width = 207
        Height = 3
        Align = alTop
      end
      object grid_barra: TwwDBGrid
        Left = 1
        Top = 1
        Width = 207
        Height = 115
        DittoAttributes.ShortCutDittoField = 0
        DittoAttributes.ShortCutDittoRecord = 0
        DittoAttributes.Options = []
        DisableThemesInTitle = False
        Selected.Strings = (
          'CODBARRA'#9'24'#9'C'#211'DIGO DE BARRAS')
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alTop
        DataSource = dscodbarra
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TitleAlignment = taCenter
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -9
        TitleFont.Name = 'Verdana'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = False
        PaintOptions.AlternatingRowColor = 14540253
      end
      object bexclui_barra: TAdvGlowButton
        Left = 3
        Top = 119
        Width = 97
        Height = 24
        Caption = 'F11 | Excluir'
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
        TabOrder = 1
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
      object bgrava_barra: TAdvGlowButton
        Left = 106
        Top = 119
        Width = 97
        Height = 24
        Caption = 'ESC | Fechar'
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
        TabOrder = 2
        OnClick = bgrava_barraClick
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
    end
    object RzDBCheckBox1: TRzDBCheckBox
      Left = 701
      Top = 10
      Width = 53
      Height = 15
      DataField = 'SITUACAO'
      DataSource = dsproduto2
      ValueChecked = '1'
      ValueUnchecked = '0'
      Caption = 'Inativo'
      TabOrder = 4
    end
    object pexporta: TFlatPanel
      Left = 64
      Top = 128
      Width = 361
      Height = 25
      Caption = 'Exportando produto...'
      ParentColor = True
      Visible = False
      ColorHighLight = clRed
      ColorShadow = clRed
      TabOrder = 22
      UseDockManager = True
    end
    object COMBOCODBARRA: TDBEdit
      Left = 184
      Top = 8
      Width = 169
      Height = 21
      DataField = 'CODBARRA'
      DataSource = dsproduto2
      TabOrder = 1
      OnEnter = combocodbarraEnter
      OnExit = combocodbarraExit
      OnKeyPress = combocodbarraKeyPress
    end
    object pbarra: TFlatPanel
      Left = 330
      Top = 11
      Width = 19
      Height = 15
      Hint = 'O d'#237'gito verificador deste c'#243'digo de barras est'#225' incorreto!'
      Color = clWindow
      Visible = False
      ColorHighLight = clWindow
      ColorShadow = clWindow
      ParentShowHint = False
      ShowHint = True
      TabOrder = 23
      UseDockManager = True
      object INIMAGE: TImage
        Left = 1
        Top = 0
        Width = 16
        Height = 16
        Picture.Data = {
          07544269746D617036030000424D360300000000000036000000280000001000
          000010000000010018000000000000030000C40E0000C40E0000000000000000
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3E6
          F79AA6E34C61CB354EC4334CC2455CC694A1DEE1E4F5FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFBFC7EF4B62D05163D3838FE6949FED949EEC828DE4
          4B5CCD3C53C3B8C0E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC1CAF1465FD47483
          E2A0ABF37E8AEB5B66E35A65E27C86E99EA7F06E7BDC314AC1B8C1E9FFFFFFFF
          FFFFFFFFFFE7EAFA586FDD7787E5A2AFF45666E65564E58891EC8791EB525EE1
          515CE09EA8F16E7CDC4056C6E2E6F6FFFFFFFFFFFFA7B4F05F72DFA3B2F6596D
          EA586BE95768E7FEFEFEFEFEFE5461E45360E2525EE19EA8F14F60D097A3E0FF
          FFFFFFFFFF6A81E88D9EEF8398F35B72ED5A6FEB596DEA8F9CF0A5AEF25666E6
          5564E55461E47C88EA8490E64D63CDFFFFFFFFFFFF5C75E99FB2F6647FF15E77
          EF5C75EE5B72EDD2D8F9FEFEFE586BE95768E75666E65C6BE698A4F03B54CBFF
          FFFFFFFFFF607AEDA0B5F76683F35F7BF25E79F05E77EFFEFEFEFEFEFE5A6FEB
          596DEA586BE95E6EE89AA7F04058CFFFFFFFFFFFFF758CF290A5F287A0F7617F
          F3607DF25F7BF2FEFEFEFEFEFE5C75EE5B72ED5A6FEB8192F08897EB586FD7FF
          FFFFFFFFFFB1BFFA6B80EBA8BCFA6281F46180F4617FF3FEFEFEFEFEFE5E79F0
          5E77EF5C75EEA4B4F75C6FDCA2AEEBFFFFFFFFFFFFEBEEFE748BF68296EFA8BC
          FA6281F46281F4FEFEFEFEFEFE607DF25F7BF2A5B8F87A8CE95C73E0E6EAFAFF
          FFFFFFFFFFFFFFFFCED6FD6C85F78396F0A8BCFA89A2F76A88F56A88F588A1F7
          A7BBF97E91EB5971E4C5CEF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCED7FD768D
          F96D82ED91A5F39FB3F79FB3F790A5F2677CE86880ECC8D0F8FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFEAEEFEB5C2FC7C93F96B85F66983F5768EF4
          B0BDF8E9ECFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF}
        Transparent = True
      end
    end
  end
  object Pop1: TPopupMenu
    Left = 848
    Top = 176
    object Incluir1: TMenuItem
      Caption = 'Incluir'
      ShortCut = 113
      OnClick = bincluirClick
    end
    object Alterar1: TMenuItem
      Caption = 'Alterar'
      ShortCut = 114
      OnClick = balterarClick
    end
    object Servicos1: TMenuItem
      Caption = 'Servi'#231'os'
      ShortCut = 115
      OnClick = Servicos1Click
    end
    object Excluir1: TMenuItem
      Caption = 'Excluir'
      ShortCut = 46
      OnClick = bexcluirClick
    end
    object Localizar1: TMenuItem
      Caption = 'Localizar'
      ShortCut = 117
      OnClick = blocalizarClick
    end
    object Relatrios1: TMenuItem
      Caption = 'Relat'#243'rios'
      ShortCut = 118
      OnClick = BitBtn5Click
    end
    object Regies1: TMenuItem
      Caption = 'Tabelas'
      ShortCut = 119
      OnClick = Regies1Click
    end
    object Fechar1: TMenuItem
      Caption = 'Fechar'
      ShortCut = 27
      OnClick = bfecharClick
    end
  end
  object Pop2: TPopupMenu
    Left = 688
    Top = 176
    object Gravar1: TMenuItem
      Caption = 'Gravar'
      ShortCut = 113
      OnClick = bgravarClick
    end
    object Cancelar1: TMenuItem
      Caption = 'Cancelar'
      ShortCut = 27
      OnClick = bcancelarClick
    end
    object F31: TMenuItem
      Caption = 'Criar C'#225'lculo de Pre'#231'o'
      ShortCut = 116
      OnClick = BitBtn7Click
    end
    object ClculodePreo1: TMenuItem
      Caption = 'C'#225'lculo de Pre'#231'o'
      ShortCut = 118
      OnClick = AdvGlowButton1Click
    end
  end
  object dsproduto2: TDataSource
    DataSet = qrproduto
    Left = 744
    Top = 776
  end
  object dsproduto: TDataSource
    Left = 872
    Top = 776
  end
  object dspreco: TDataSource
    DataSet = qrpreco
    OnDataChange = dsprecoDataChange
    Left = 777
    Top = 777
  end
  object dsgrade_produto: TDataSource
    DataSet = frmmodulo.qrgrade_produto
    Left = 841
    Top = 777
  end
  object dsserial_produto: TDataSource
    DataSet = frmmodulo.qrserial_produto
    Left = 905
    Top = 777
  end
  object dscomposicao_produto: TDataSource
    DataSet = qrcomposicao_produto
    Left = 809
    Top = 777
  end
  object qrcomposicao_produto: TZQuery
    Connection = frmmodulo.Conexao
    BeforeInsert = qrcomposicao_produtoBeforeInsert
    BeforeEdit = qrcomposicao_produtoBeforeEdit
    BeforePost = qrcomposicao_produtoBeforePost
    SQL.Strings = (
      'select * from c000027')
    Params = <>
    Left = 904
    Top = 744
    object qrcomposicao_produtoCODPRODUTO: TStringField
      DisplayLabel = 'C'#211'D.PRODUTO'
      DisplayWidth = 13
      FieldName = 'CODPRODUTO'
      Size = 6
    end
    object qrcomposicao_produtoprod: TStringField
      DisplayLabel = 'PRODUTO'
      DisplayWidth = 50
      FieldKind = fkLookup
      FieldName = 'prod'
      LookupDataSet = qrproduto_loc
      LookupKeyFields = 'codigo'
      LookupResultField = 'produto'
      KeyFields = 'codproduto'
      Size = 80
      Lookup = True
    end
    object qrcomposicao_produtoQTDE: TFloatField
      DisplayLabel = 'QTDE.'
      DisplayWidth = 10
      FieldName = 'QTDE'
    end
    object qrcomposicao_produtoPRODUTO: TStringField
      DisplayWidth = 6
      FieldName = 'PRODUTO'
      Visible = False
      Size = 6
    end
    object qrcomposicao_produtoCODIGO: TStringField
      DisplayWidth = 6
      FieldName = 'CODIGO'
      Required = True
      Visible = False
      Size = 6
    end
  end
  object qrproduto_loc: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000025')
    Params = <>
    Left = 874
    Top = 744
    object StringField3: TStringField
      DisplayWidth = 60
      FieldName = 'PRODUTO'
      Size = 60
    end
    object StringField1: TStringField
      DisplayWidth = 6
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
  end
  object qrinfnutricional_produto: TDataSource
    DataSet = frmmodulo.qrinfnutricional_produto
    Left = 969
    Top = 777
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 777
    Top = 745
  end
  object query: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000025')
    Params = <>
    Left = 936
    Top = 744
  end
  object qradic: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000025')
    Params = <>
    Left = 968
    Top = 744
  end
  object dsadic: TDataSource
    DataSet = qradic
    Left = 937
    Top = 776
  end
  object qrcodbarra: TZQuery
    Connection = frmmodulo.Conexao
    BeforePost = qrcodbarraBeforePost
    SQL.Strings = (
      'select * from c000055')
    Params = <>
    Left = 992
    Top = 16
  end
  object dscodbarra: TDataSource
    DataSet = qrcodbarra
    Left = 736
    Top = 520
  end
  object qrbarra: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000025')
    Params = <>
    Left = 928
    Top = 16
  end
  object pop_barra: TPopupMenu
    Left = 760
    Top = 176
    object excluircodigodebarra1: TMenuItem
      Caption = 'excluir codigo de barra'
      ShortCut = 122
    end
    object gravarcodigodebarra1: TMenuItem
      Caption = 'gravar codigo de barra'
      ShortCut = 27
      OnClick = GravarCodigodeBarra1Click
    end
  end
  object qrentrada: TZQuery
    Connection = frmmodulo.Conexao
    Params = <>
    Left = 809
    Top = 745
  end
  object qrsaida: TZQuery
    Connection = frmmodulo.Conexao
    Params = <>
    Left = 841
    Top = 745
  end
  object qrmov_entrada: TZQuery
    Connection = frmmodulo.Conexao
    OnCalcFields = qrmov_entradaCalcFields
    SQL.Strings = (
      'select * from c000032')
    Params = <>
    Left = 1066
    Top = 744
    object qrmov_entradaMOV: TStringField
      DisplayLabel = 'MOVIMENTO'
      DisplayWidth = 26
      FieldKind = fkCalculated
      FieldName = 'MOV'
      Size = 50
      Calculated = True
    end
    object qrmov_entradacliente: TStringField
      DisplayLabel = 'CLIENTE'
      DisplayWidth = 28
      FieldKind = fkLookup
      FieldName = 'cliente'
      LookupDataSet = frmmodulo.qrfornecedor
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODCLIENTE'
      Size = 40
      Lookup = True
    end
    object qrmov_entradaDATA: TDateTimeField
      DisplayLabel = 'DATA/FABR'
      DisplayWidth = 11
      FieldName = 'DATA'
    end
    object qrmov_entradaNUMERONOTA: TStringField
      DisplayLabel = 'N.FISCAL'
      DisplayWidth = 7
      FieldName = 'NUMERONOTA'
      Size = 6
    end
    object qrmov_entradaQTDE: TFloatField
      DisplayLabel = 'QTDE.'
      DisplayWidth = 10
      FieldName = 'QTDE'
      DisplayFormat = '###,###,##0.000'
    end
    object qrmov_entradaUNITARIO: TFloatField
      DisplayLabel = 'UNIT'#193'RIO'
      DisplayWidth = 8
      FieldName = 'UNITARIO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrmov_entradaTOTAL: TFloatField
      DisplayWidth = 9
      FieldName = 'TOTAL'
      DisplayFormat = '###,###,##0.00'
    end
    object qrmov_entradaCODNOTA: TStringField
      DisplayLabel = 'CD.NOTA'
      DisplayWidth = 8
      FieldName = 'CODNOTA'
      Size = 6
    end
    object qrmov_entradaLOTE_FABRICACAO: TStringField
      DisplayLabel = 'LOTE'
      DisplayWidth = 8
      FieldName = 'LOTE_FABRICACAO'
      Size = 10
    end
    object qrmov_entradaCODPRODUTO: TStringField
      DisplayLabel = 'C'#211'DIGO'
      DisplayWidth = 8
      FieldName = 'CODPRODUTO'
      Visible = False
      Size = 6
    end
    object qrmov_entradaICMS: TFloatField
      DisplayLabel = '%ICMS'
      DisplayWidth = 8
      FieldName = 'ICMS'
      Visible = False
      DisplayFormat = '###,##0.00%'
    end
    object qrmov_entradaIPI: TFloatField
      DisplayLabel = '%IPI'
      DisplayWidth = 7
      FieldName = 'IPI'
      Visible = False
      DisplayFormat = '###,##0.00%'
    end
    object qrmov_entradaCFOP: TStringField
      DisplayWidth = 5
      FieldName = 'CFOP'
      Visible = False
      Size = 6
    end
    object qrmov_entradaCODCLIENTE: TStringField
      DisplayWidth = 6
      FieldName = 'CODCLIENTE'
      Visible = False
      Size = 6
    end
    object qrmov_entradaDESCONTO: TFloatField
      DisplayWidth = 10
      FieldName = 'DESCONTO'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrmov_entradaACRESCIMO: TFloatField
      DisplayWidth = 10
      FieldName = 'ACRESCIMO'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrmov_entradaCODIGO: TStringField
      DisplayWidth = 6
      FieldName = 'CODIGO'
      Required = True
      Visible = False
      Size = 6
    end
    object qrmov_entradaCODVENDEDOR: TStringField
      FieldName = 'CODVENDEDOR'
      Visible = False
      Size = 6
    end
    object qrmov_entradaMOVIMENTO: TIntegerField
      DisplayWidth = 10
      FieldName = 'MOVIMENTO'
      Visible = False
    end
  end
  object dsmov_entrada: TDataSource
    DataSet = qrmov_entrada
    Left = 1009
    Top = 777
  end
  object qrproduto_mov: TZQuery
    Connection = frmmodulo.Conexao
    BeforePost = qrproduto_movBeforePost
    SQL.Strings = (
      'select * from c000032')
    Params = <>
    Left = 1034
    Top = 744
  end
  object qrmov_saida: TZQuery
    Connection = frmmodulo.Conexao
    OnCalcFields = qrmov_saidaCalcFields
    SQL.Strings = (
      'select * from c000032')
    Params = <>
    Left = 1098
    Top = 744
    object StringField13: TStringField
      DisplayLabel = 'MOVIMENTO'
      DisplayWidth = 26
      FieldKind = fkCalculated
      FieldName = 'MOV'
      Size = 50
      Calculated = True
    end
    object StringField14: TStringField
      DisplayLabel = 'CLIENTE'
      DisplayWidth = 28
      FieldKind = fkLookup
      FieldName = 'cliente'
      LookupDataSet = frmmodulo.qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODCLIENTE'
      Size = 40
      Lookup = True
    end
    object DateTimeField2: TDateTimeField
      DisplayLabel = 'DATA/FABR'
      DisplayWidth = 11
      FieldName = 'DATA'
    end
    object StringField15: TStringField
      DisplayLabel = 'N.FISCAL'
      DisplayWidth = 7
      FieldName = 'NUMERONOTA'
      Size = 6
    end
    object FloatField8: TFloatField
      DisplayLabel = 'QTDE.'
      DisplayWidth = 10
      FieldName = 'QTDE'
      DisplayFormat = '###,###,##0.000'
    end
    object FloatField9: TFloatField
      DisplayLabel = 'UNIT'#193'RIO'
      DisplayWidth = 8
      FieldName = 'UNITARIO'
      DisplayFormat = '###,###,##0.00'
    end
    object FloatField10: TFloatField
      DisplayWidth = 9
      FieldName = 'TOTAL'
      DisplayFormat = '###,###,##0.00'
    end
    object StringField16: TStringField
      DisplayLabel = 'CD.NOTA'
      DisplayWidth = 8
      FieldName = 'CODNOTA'
      Size = 6
    end
    object StringField17: TStringField
      DisplayLabel = 'LOTE'
      DisplayWidth = 8
      FieldName = 'LOTE_FABRICACAO'
      Size = 10
    end
    object IntegerField2: TIntegerField
      DisplayWidth = 10
      FieldName = 'MOVIMENTO'
    end
    object StringField18: TStringField
      DisplayLabel = 'C'#211'DIGO'
      DisplayWidth = 8
      FieldName = 'CODPRODUTO'
      Visible = False
      Size = 6
    end
    object FloatField11: TFloatField
      DisplayLabel = '%ICMS'
      DisplayWidth = 8
      FieldName = 'ICMS'
      Visible = False
      DisplayFormat = '###,##0.00%'
    end
    object FloatField12: TFloatField
      DisplayLabel = '%IPI'
      DisplayWidth = 7
      FieldName = 'IPI'
      Visible = False
      DisplayFormat = '###,##0.00%'
    end
    object StringField19: TStringField
      DisplayWidth = 5
      FieldName = 'CFOP'
      Visible = False
      Size = 6
    end
    object StringField20: TStringField
      DisplayWidth = 6
      FieldName = 'CODCLIENTE'
      Visible = False
      Size = 6
    end
    object FloatField13: TFloatField
      DisplayWidth = 10
      FieldName = 'DESCONTO'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object FloatField14: TFloatField
      DisplayWidth = 10
      FieldName = 'ACRESCIMO'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object StringField21: TStringField
      DisplayWidth = 6
      FieldName = 'CODIGO'
      Required = True
      Visible = False
      Size = 6
    end
    object StringField22: TStringField
      FieldName = 'CODVENDEDOR'
      Visible = False
      Size = 6
    end
  end
  object dsmov_saida: TDataSource
    DataSet = qrmov_saida
    Left = 1033
    Top = 777
  end
  object qrestoque: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000100')
    Params = <>
    Left = 746
    Top = 744
  end
  object dsrentabilidade: TDataSource
    DataSet = QRRENTABILIDADE
    Left = 472
    Top = 80
  end
  object QRRENTABILIDADE: TZQuery
    Connection = frmmodulo.Conexao
    BeforeInsert = QRRENTABILIDADEBeforeInsert
    BeforeEdit = QRRENTABILIDADEBeforeEdit
    BeforeDelete = QRRENTABILIDADEBeforeDelete
    SQL.Strings = (
      'select * from c000078')
    Params = <>
    Left = 344
    Top = 80
    object QRRENTABILIDADECODPRODUTO: TStringField
      DisplayLabel = 'C'#243'd.Produto'
      DisplayWidth = 13
      FieldName = 'CODPRODUTO'
      Size = 6
    end
    object QRRENTABILIDADEPRODUTO: TStringField
      DisplayLabel = 'Produto'
      DisplayWidth = 54
      FieldName = 'PRODUTO'
      Size = 40
    end
    object QRRENTABILIDADERENDIMENTO: TFloatField
      DisplayLabel = 'Rentabilidade %'
      DisplayWidth = 10
      FieldName = 'RENDIMENTO'
      DisplayFormat = '###,###,##0.00%'
    end
    object QRRENTABILIDADERENTABILIDADE: TStringField
      DisplayWidth = 13
      FieldName = 'RENTABILIDADE'
      Required = True
      Visible = False
      Size = 6
    end
    object QRRENTABILIDADEQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      Visible = False
      DisplayFormat = '###,###,##0.000'
    end
    object QRRENTABILIDADEVALOR: TFloatField
      FieldName = 'VALOR'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object QRRENTABILIDADECODIGO: TStringField
      FieldName = 'CODIGO'
      Visible = False
      Size = 6
    end
  end
  object popmenu1: TAdvPopupMenu
    MenuStyler = AdvMenuOfficeStyler1
    Version = '2.5.4.0'
    Left = 216
    Top = 80
    object NFeExportarProdutoSelecionado1: TMenuItem
      Caption = 'NFe - Exportar Produto Selecionado'
      OnClick = NFeExportarProdutoSelecionado1Click
    end
    object NFeExportartodososPrdutos1: TMenuItem
      Caption = 'NFe - Exportar todos os Produtos'
      OnClick = NFeExportartodososPrdutos1Click
    end
    object N7: TMenuItem
      Caption = '-'
    end
    object Indstrializao1: TMenuItem
      Caption = 'Industrializa'#231#227'o'
      OnClick = Indstrializao1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Inventrio1: TMenuItem
      Caption = 'Invent'#225'rio'
      OnClick = Inventrio1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object MovimentarEstoque1: TMenuItem
      Caption = 'Movimentar Estoque'
      OnClick = MovimentarEstoque1Click
    end
    object ConsultaSerial1: TMenuItem
      Caption = 'Consulta Serial'
      OnClick = ConsultaSerial1Click
    end
    object Servios1: TMenuItem
      Caption = 'Servi'#231'os'
      ShortCut = 115
      OnClick = Servios1Click
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object GrupoSubgrupo1: TMenuItem
      Caption = 'Grupo / Subgrupo'
      OnClick = GrupoSubgrupo1Click
    end
    object Fornecedor1: TMenuItem
      Caption = 'Fornecedor'
      OnClick = Fornecedor1Click
    end
    object MarcaFabricanteLaboratrio1: TMenuItem
      Caption = 'Marca / Fabricante / Laborat'#243'rio'
      OnClick = MarcaFabricanteLaboratrio1Click
    end
    object Receitas1: TMenuItem
      Caption = 'Receitas'
      OnClick = Receitas1Click
    end
    object NaturezadeOperaoCFOP1: TMenuItem
      Caption = 'Natureza de Opera'#231#227'o - CFOP'
      OnClick = NaturezadeOperaoCFOP1Click
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object Exportarparaarquivo1: TMenuItem
      Caption = 'Exportar para arquivo'
      OnClick = Exportarparaarquivo1Click
    end
    object ImportardeArquivo1: TMenuItem
      Caption = 'Importar de Arquivo'
      OnClick = ImportardeArquivo1Click
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object otalizarestoque1: TMenuItem
      Caption = 'Totalizar estoque'
      OnClick = otalizarestoque1Click
    end
    object N6: TMenuItem
      Caption = '-'
    end
    object AtualizaodePreos1: TMenuItem
      Caption = 'Atualiza'#231#227'o de Pre'#231'os'
      OnClick = AtualizaodePreos1Click
    end
    object AtualizarPreosdeVendasRemarcados1: TMenuItem
      Caption = 'Atualizar Pre'#231'os de Vendas Remarcados'
      OnClick = AtualizarPreosdeVendasRemarcados1Click
    end
    object BaixarTabelaNCM1: TMenuItem
      Caption = 'Baixar Tabela NCM'
      OnClick = BaixarTabelaNCM1Click
    end
  end
  object AdvMenuOfficeStyler1: TAdvMenuOfficeStyler
    AntiAlias = aaNone
    AutoThemeAdapt = False
    Style = osOffice2007Silver
    Background.Position = bpCenter
    Background.Color = 16448250
    Background.ColorTo = 16448250
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
    IconBar.Color = 15724527
    IconBar.ColorTo = 15724527
    IconBar.CheckBorder = clNavy
    IconBar.RadioBorder = clNavy
    IconBar.SeparatorColor = 12961221
    SelectedItem.Color = 15465983
    SelectedItem.ColorTo = 11267071
    SelectedItem.ColorMirror = 6936319
    SelectedItem.ColorMirrorTo = 9889023
    SelectedItem.BorderColor = 10079963
    SelectedItem.Font.Charset = DEFAULT_CHARSET
    SelectedItem.Font.Color = clWindowText
    SelectedItem.Font.Height = -11
    SelectedItem.Font.Name = 'Tahoma'
    SelectedItem.Font.Style = []
    SelectedItem.NotesFont.Charset = DEFAULT_CHARSET
    SelectedItem.NotesFont.Color = clWindowText
    SelectedItem.NotesFont.Height = -8
    SelectedItem.NotesFont.Name = 'Tahoma'
    SelectedItem.NotesFont.Style = []
    SelectedItem.CheckBorder = clNavy
    SelectedItem.RadioBorder = clNavy
    RootItem.ColorTo = 16249843
    RootItem.Font.Charset = DEFAULT_CHARSET
    RootItem.Font.Color = clMenuText
    RootItem.Font.Height = -11
    RootItem.Font.Name = 'Tahoma'
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
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    NotesFont.Charset = DEFAULT_CHARSET
    NotesFont.Color = clGray
    NotesFont.Height = -8
    NotesFont.Name = 'Tahoma'
    NotesFont.Style = []
    MenuBorderColor = 8816262
    Left = 248
    Top = 80
  end
  object qrproduto: TZQuery
    Connection = frmmodulo.Conexao
    BeforeInsert = qrprodutoBeforeInsert
    AfterInsert = qrprodutoAfterInsert
    BeforeEdit = qrprodutoBeforeEdit
    AfterEdit = qrprodutoAfterEdit
    BeforePost = qrprodutoBeforePost
    AfterPost = qrprodutoAfterPost
    AfterCancel = qrprodutoAfterCancel
    SQL.Strings = (
      'select * from c000025')
    Params = <>
    Left = 312
    Top = 80
    object qrprodutoCODIGO: TStringField
      DisplayWidth = 7
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrprodutoPRODUTO: TStringField
      DisplayWidth = 39
      FieldName = 'PRODUTO'
      Size = 60
    end
    object qrprodutoUNIDADE: TStringField
      DisplayLabel = 'UN'
      DisplayWidth = 2
      FieldName = 'UNIDADE'
      Size = 2
    end
    object qrprodutoPRECOVENDA: TFloatField
      DisplayLabel = 'PRE'#199'O'
      DisplayWidth = 12
      FieldName = 'PRECOVENDA'
      DisplayFormat = '###,###,##0.00'
    end
    object qrprodutoESTOQUE: TFloatField
      DisplayWidth = 8
      FieldName = 'ESTOQUE'
      Visible = False
      DisplayFormat = '###,###,##0.000'
    end
    object qrprodutoCODBARRA: TStringField
      DisplayWidth = 13
      FieldName = 'CODBARRA'
      Visible = False
      Size = 13
    end
    object qrprodutoDATA_CADASTRO: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DATA_CADASTRO'
      Visible = False
    end
    object qrprodutoCODGRUPO: TStringField
      DisplayWidth = 6
      FieldName = 'CODGRUPO'
      Visible = False
      Size = 6
    end
    object qrprodutoCODSUBGRUPO: TStringField
      DisplayWidth = 6
      FieldName = 'CODSUBGRUPO'
      Visible = False
      Size = 6
    end
    object qrprodutoCODFORNECEDOR: TStringField
      DisplayWidth = 6
      FieldName = 'CODFORNECEDOR'
      Visible = False
      Size = 6
    end
    object qrprodutoCODMARCA: TStringField
      DisplayWidth = 6
      FieldName = 'CODMARCA'
      Visible = False
      Size = 6
    end
    object qrprodutoDATA_ULTIMACOMPRA: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DATA_ULTIMACOMPRA'
      Visible = False
    end
    object qrprodutoNOTAFISCAL: TStringField
      DisplayWidth = 6
      FieldName = 'NOTAFISCAL'
      Visible = False
      Size = 6
    end
    object qrprodutoPRECOCUSTO: TFloatField
      DisplayWidth = 10
      FieldName = 'PRECOCUSTO'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrprodutoDATA_ULTIMAVENDA: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DATA_ULTIMAVENDA'
      Visible = False
    end
    object qrprodutoESTOQUEMINIMO: TFloatField
      DisplayWidth = 10
      FieldName = 'ESTOQUEMINIMO'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrprodutoAPLICACAO: TMemoField
      DisplayWidth = 10
      FieldName = 'APLICACAO'
      Visible = False
      BlobType = ftMemo
    end
    object qrprodutoLOCALICAZAO: TStringField
      DisplayWidth = 50
      FieldName = 'LOCALICAZAO'
      Visible = False
      Size = 50
    end
    object qrprodutoPESO: TFloatField
      DisplayWidth = 10
      FieldName = 'PESO'
      Visible = False
      DisplayFormat = '###,###,##0.000'
    end
    object qrprodutoVALIDADE: TStringField
      DisplayWidth = 20
      FieldName = 'VALIDADE'
      Visible = False
    end
    object qrprodutoCOMISSAO: TFloatField
      DisplayWidth = 10
      FieldName = 'COMISSAO'
      Visible = False
    end
    object qrprodutoUSA_BALANCA: TIntegerField
      DisplayWidth = 10
      FieldName = 'USA_BALANCA'
      Visible = False
    end
    object qrprodutoUSA_SERIAL: TIntegerField
      DisplayWidth = 10
      FieldName = 'USA_SERIAL'
      Visible = False
    end
    object qrprodutoUSA_GRADE: TIntegerField
      DisplayWidth = 10
      FieldName = 'USA_GRADE'
      Visible = False
    end
    object qrprodutoCODRECEITA: TStringField
      DisplayWidth = 6
      FieldName = 'CODRECEITA'
      Visible = False
      Size = 6
    end
    object qrprodutoFOTO: TStringField
      DisplayWidth = 80
      FieldName = 'FOTO'
      Visible = False
      Size = 80
    end
    object qrprodutoDATA_ULTIMACOMPRA_ANTERIOR: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DATA_ULTIMACOMPRA_ANTERIOR'
      Visible = False
    end
    object qrprodutoNOTAFISCAL_ANTERIOR: TStringField
      DisplayWidth = 6
      FieldName = 'NOTAFISCAL_ANTERIOR'
      Visible = False
      Size = 6
    end
    object qrprodutoCODFORNECEDOR_ANTERIOR: TStringField
      DisplayWidth = 6
      FieldName = 'CODFORNECEDOR_ANTERIOR'
      Visible = False
      Size = 6
    end
    object qrprodutoPRECOCUSTO_ANTERIOR: TFloatField
      DisplayWidth = 10
      FieldName = 'PRECOCUSTO_ANTERIOR'
      Visible = False
    end
    object qrprodutoPRECOVENDA_ANTERIOR: TFloatField
      DisplayWidth = 10
      FieldName = 'PRECOVENDA_ANTERIOR'
      Visible = False
    end
    object qrprodutoCUSTOMEDIO: TFloatField
      DisplayWidth = 10
      FieldName = 'CUSTOMEDIO'
      Visible = False
    end
    object qrprodutoAUTO_APLICACAO: TStringField
      FieldName = 'AUTO_APLICACAO'
      Visible = False
      Size = 60
    end
    object qrprodutoAUTO_COMPLEMENTO: TStringField
      FieldName = 'AUTO_COMPLEMENTO'
      Visible = False
      Size = 60
    end
    object qrprodutoDATA_REMARCACAO_CUSTO: TDateTimeField
      FieldName = 'DATA_REMARCACAO_CUSTO'
      Visible = False
    end
    object qrprodutoDATA_REMARCACAO_VENDA: TDateTimeField
      FieldName = 'DATA_REMARCACAO_VENDA'
      Visible = False
    end
    object qrprodutoPRECO_PROMOCAO: TFloatField
      FieldName = 'PRECO_PROMOCAO'
      Visible = False
    end
    object qrprodutoDATA_PROMOCAO: TDateTimeField
      FieldName = 'DATA_PROMOCAO'
      Visible = False
    end
    object qrprodutoFIM_PROMOCAO: TDateTimeField
      FieldName = 'FIM_PROMOCAO'
      Visible = False
    end
    object qrprodutoCODALIQUOTA: TStringField
      FieldName = 'CODALIQUOTA'
      Visible = False
      Size = 5
    end
    object qrprodutoCST: TStringField
      FieldName = 'CST'
      Visible = False
      Size = 10
    end
    object qrprodutoCLASSIFICACAO_FISCAL: TStringField
      FieldName = 'CLASSIFICACAO_FISCAL'
      Visible = False
    end
    object qrprodutoNBM: TStringField
      FieldName = 'NBM'
      Visible = False
    end
    object qrprodutoNCM: TStringField
      FieldName = 'NCM'
      Visible = False
    end
    object qrprodutoALIQUOTA: TFloatField
      FieldName = 'ALIQUOTA'
      Visible = False
    end
    object qrprodutoIPI: TFloatField
      FieldName = 'IPI'
      Visible = False
    end
    object qrprodutoREDUCAO: TFloatField
      FieldName = 'REDUCAO'
      Visible = False
    end
    object qrprodutoQTDE_EMBALAGEM: TFloatField
      FieldName = 'QTDE_EMBALAGEM'
      Visible = False
    end
    object qrprodutoPESO_LIQUIDO: TFloatField
      FieldName = 'PESO_LIQUIDO'
      Visible = False
      DisplayFormat = '###,###,##0.000'
    end
    object qrprodutoFARMACIA_CONTROLADO: TStringField
      FieldName = 'FARMACIA_CONTROLADO'
      Visible = False
      Size = 1
    end
    object qrprodutoFARMACIA_APRESENTACAO: TIntegerField
      FieldName = 'FARMACIA_APRESENTACAO'
      Visible = False
    end
    object qrprodutoFARMACIA_REGISTRO_MEDICAMENTO: TStringField
      FieldName = 'FARMACIA_REGISTRO_MEDICAMENTO'
      Visible = False
    end
    object qrprodutoFARMACIA_PMC: TFloatField
      FieldName = 'FARMACIA_PMC'
      Visible = False
    end
    object qrprodutoULTIMA_ALTERACAO: TDateTimeField
      FieldName = 'ULTIMA_ALTERACAO'
      Visible = False
    end
    object qrprodutoULTIMA_CARGA: TDateTimeField
      FieldName = 'ULTIMA_CARGA'
      Visible = False
    end
    object qrprodutoDATA_INVENTARIO: TDateTimeField
      FieldName = 'DATA_INVENTARIO'
      Visible = False
    end
    object qrprodutoESTOQUE_INVENTARIO: TFloatField
      FieldName = 'ESTOQUE_INVENTARIO'
      Visible = False
    end
    object qrprodutoCUSTO_INVENTARIO: TFloatField
      FieldName = 'CUSTO_INVENTARIO'
      Visible = False
    end
    object qrprodutoTIPO: TStringField
      FieldName = 'TIPO'
      Visible = False
      Size = 30
    end
    object qrprodutoESTOQUE_ANTERIOR: TFloatField
      FieldName = 'ESTOQUE_ANTERIOR'
      Visible = False
    end
    object qrprodutoPRECOVENDA_NOVO: TFloatField
      FieldName = 'PRECOVENDA_NOVO'
      Visible = False
    end
    object qrprodutoUSA_RENTABILIDADE: TIntegerField
      FieldName = 'USA_RENTABILIDADE'
    end
    object qrprodutogrupo: TStringField
      FieldKind = fkLookup
      FieldName = 'grupo'
      LookupDataSet = frmmodulo.qrgrupo
      LookupKeyFields = 'codigo'
      LookupResultField = 'grupo'
      KeyFields = 'codgrupo'
      Size = 50
      Lookup = True
    end
    object qrprodutosubgrupo: TStringField
      FieldKind = fkLookup
      FieldName = 'subgrupo'
      LookupDataSet = frmmodulo.qrsubgrupo
      LookupKeyFields = 'codigo'
      LookupResultField = 'subgrupo'
      KeyFields = 'codsubgrupo'
      Size = 50
      Lookup = True
    end
    object qrprodutofornecedor: TStringField
      FieldKind = fkLookup
      FieldName = 'fornecedor'
      LookupDataSet = frmmodulo.qrfornecedor
      LookupKeyFields = 'codigo'
      LookupResultField = 'NOME'
      KeyFields = 'codfornecedor'
      Size = 80
      Lookup = True
    end
    object qrprodutomarca: TStringField
      FieldKind = fkLookup
      FieldName = 'marca'
      LookupDataSet = frmmodulo.qrmarca
      LookupKeyFields = 'codigo'
      LookupResultField = 'NOME'
      KeyFields = 'codmarca'
      Size = 80
      Lookup = True
    end
    object qrprodutoreceitas: TStringField
      FieldKind = fkLookup
      FieldName = 'receitas'
      LookupDataSet = frmmodulo.qrreceita
      LookupKeyFields = 'codigo'
      LookupResultField = 'RECEITA'
      KeyFields = 'CODRECEITA'
      Size = 100
      Lookup = True
    end
    object qrprodutoSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrprodutoPISCOFINS: TStringField
      FieldName = 'PISCOFINS'
      Size = 1
    end
    object qrprodutoREFERENCIA_FORNECEDOR: TStringField
      FieldName = 'REFERENCIA_FORNECEDOR'
      Size = 30
    end
    object qrprodutoINCIDENCIA_PISCOFINS: TStringField
      FieldName = 'INCIDENCIA_PISCOFINS'
      Size = 30
    end
    object qrprodutoIAT: TStringField
      FieldName = 'IAT'
      Size = 1
    end
    object qrprodutoIPPT: TStringField
      FieldName = 'IPPT'
      Size = 1
    end
    object qrprodutoSITUACAO_TRIBUTARIA: TStringField
      FieldName = 'SITUACAO_TRIBUTARIA'
      Size = 1
    end
    object qrprodutoFLAG_SIS: TStringField
      FieldName = 'FLAG_SIS'
      Size = 1
    end
    object qrprodutoFLAG_ACEITO: TStringField
      FieldName = 'FLAG_ACEITO'
      Size = 3
    end
    object qrprodutoFLAG_EST: TStringField
      FieldName = 'FLAG_EST'
      Size = 1
    end
    object qrprodutoCOMPOSICAO1: TStringField
      FieldName = 'COMPOSICAO1'
      Size = 30
    end
    object qrprodutoCOMPOSICAO2: TStringField
      FieldName = 'COMPOSICAO2'
      Size = 30
    end
    object qrprodutoCSOSN: TStringField
      FieldName = 'CSOSN'
      Size = 60
    end
    object qrprodutoMARGEM_AGREGADA: TFloatField
      FieldName = 'MARGEM_AGREGADA'
    end
    object qrprodutoSITA: TStringField
      FieldName = 'SITA'
      Size = 4
    end
    object qrprodutoCFOP: TStringField
      FieldName = 'CFOP'
    end
  end
  object qrpreco: TZQuery
    Connection = frmmodulo.Conexao
    BeforeInsert = qrprecoBeforeInsert
    BeforeEdit = qrprecoBeforeEdit
    SQL.Strings = (
      'select * from c000026')
    Params = <>
    Left = 376
    Top = 80
    object qrprecoCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrprecoCODPRODUTO: TStringField
      FieldName = 'CODPRODUTO'
      Size = 6
    end
    object qrprecoCUSTO_COMPRA: TFloatField
      FieldName = 'CUSTO_COMPRA'
      DisplayFormat = '###,###,##0.00'
    end
    object qrprecoVALOR_ULTIMA_COMPRA: TFloatField
      FieldName = 'VALOR_ULTIMA_COMPRA'
      DisplayFormat = '###,###,##0.00'
    end
    object qrprecoFRETE_IPI_OUTRAS: TFloatField
      FieldName = 'FRETE_IPI_OUTRAS'
      DisplayFormat = '###,###,##0.00'
    end
    object qrprecoICMS_ENTRADA: TFloatField
      FieldName = 'ICMS_ENTRADA'
      DisplayFormat = '###,###,##0.00'
    end
    object qrprecoICMS_SAIDA: TFloatField
      FieldName = 'ICMS_SAIDA'
      DisplayFormat = '###,###,##0.00'
    end
    object qrprecoCUSTO_OPERACIONAL: TFloatField
      FieldName = 'CUSTO_OPERACIONAL'
      DisplayFormat = '###,###,##0.00'
    end
    object qrprecoOUTROS_IMPOSTOS: TFloatField
      FieldName = 'OUTROS_IMPOSTOS'
      DisplayFormat = '###,###,##0.00'
    end
    object qrprecoCOMISSAO: TFloatField
      FieldName = 'COMISSAO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrprecoLUCRO: TFloatField
      FieldName = 'LUCRO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrprecoPRECO_VENDA: TFloatField
      FieldName = 'PRECO_VENDA'
      DisplayFormat = '###,###,##0.00'
    end
    object qrprecoICMS_ENTRADA_P: TFloatField
      FieldName = 'ICMS_ENTRADA_P'
      DisplayFormat = '###,###,##0.00%'
    end
    object qrprecoICMS_SAIDA_P: TFloatField
      FieldName = 'ICMS_SAIDA_P'
      DisplayFormat = '###,###,##0.00%'
    end
    object qrprecoCUSTO_OPERACIONAL_P: TFloatField
      FieldName = 'CUSTO_OPERACIONAL_P'
      DisplayFormat = '###,###,##0.00%'
    end
    object qrprecoOUTROS_IMPOSTOS_P: TFloatField
      FieldName = 'OUTROS_IMPOSTOS_P'
      DisplayFormat = '###,###,##0.00%'
    end
    object qrprecoCOMISSAO_P: TFloatField
      FieldName = 'COMISSAO_P'
      DisplayFormat = '###,###,##0.00%'
    end
    object qrprecoLUCRO_P: TFloatField
      FieldName = 'LUCRO_P'
      DisplayFormat = '###,###,##0.00%'
    end
    object qrprecoTOTAL_CUSTO: TFloatField
      FieldName = 'TOTAL_CUSTO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrprecoTOTAL_CUSTO_P: TFloatField
      FieldName = 'TOTAL_CUSTO_P'
      DisplayFormat = '###,###,##0.00%'
    end
    object qrprecoPRECO_AUTOMATICO: TIntegerField
      FieldName = 'PRECO_AUTOMATICO'
    end
    object qrprecoDATA_ALTERACAO: TDateTimeField
      FieldName = 'DATA_ALTERACAO'
    end
    object qrprecoALTERA_AUTOMATICO: TIntegerField
      FieldName = 'ALTERA_AUTOMATICO'
    end
    object qrprecoNOVO_PRECO_VENDA: TFloatField
      FieldName = 'NOVO_PRECO_VENDA'
      DisplayFormat = '###,###,##0.00'
    end
    object qrprecoDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrprecoFRETE: TFloatField
      FieldName = 'FRETE'
      DisplayFormat = '###,###,##0.00'
    end
    object qrprecoSEGURO: TFloatField
      FieldName = 'SEGURO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrprecoOUTRAS_DESPESAS: TFloatField
      FieldName = 'OUTRAS_DESPESAS'
      DisplayFormat = '###,###,##0.00'
    end
    object qrprecoIPI_P: TFloatField
      FieldName = 'IPI_P'
      DisplayFormat = '###,###,##0.00%'
    end
    object qrprecoIPI: TFloatField
      FieldName = 'IPI'
      DisplayFormat = '###,###,##0.00'
    end
    object qrprecoPIS_P: TFloatField
      FieldName = 'PIS_P'
      DisplayFormat = '###,###,##0.00%'
    end
    object qrprecoPIS: TFloatField
      FieldName = 'PIS'
      DisplayFormat = '###,###,##0.00'
    end
    object qrprecoCOFINS_P: TFloatField
      FieldName = 'COFINS_P'
      DisplayFormat = '###,###,##0.00%'
    end
    object qrprecoCOFINS: TFloatField
      FieldName = 'COFINS'
      DisplayFormat = '###,###,##0.00'
    end
    object qrprecoCONTRIBUICAO_SOCIAL_P: TFloatField
      FieldName = 'CONTRIBUICAO_SOCIAL_P'
      DisplayFormat = '###,###,##0.00%'
    end
    object qrprecoCONTRIBUICAO_SOCIAL: TFloatField
      FieldName = 'CONTRIBUICAO_SOCIAL'
      DisplayFormat = '###,###,##0.00'
    end
    object qrprecoNOVO_PRECO_CUSTO: TFloatField
      FieldName = 'NOVO_PRECO_CUSTO'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object qrduplo: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000025')
    Params = <>
    Left = 280
    Top = 80
  end
  object QUERY1: TZQuery
    Connection = frmmodulo.Conexao
    Params = <>
    Left = 808
    Top = 8
  end
  object qrvenda_mes: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select sum(qtde) sum_0, '
      '(select sum(qtde) from c000032) , '
      '(select sum(qtde) from c000032) , '
      '(select sum(qtde) from c000032) , '
      '(select sum(qtde) from c000032) , '
      '(select sum(qtde) from c000032) , '
      '(select sum(qtde) from c000032) , '
      '(select sum(qtde) from c000032) , '
      '(select sum(qtde) from c000032) , '
      '(select sum(qtde) from c000032) , '
      '(select sum(qtde) from c000032) , '
      '(select sum(qtde) from c000032)  '
      ' from c000032')
    Params = <>
    Left = 440
    Top = 80
    object qrvenda_mesCOLUMN_0: TFloatField
      DisplayLabel = 'janeiro'
      DisplayWidth = 9
      FieldName = 'sum_0'
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
    end
    object qrvenda_mesColumn: TFloatField
      DisplayWidth = 8
      FieldName = 'sum'
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
    end
    object qrvenda_mesColumn_1: TFloatField
      DisplayWidth = 8
      FieldName = 'sum_1'
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
    end
    object qrvenda_mesColumn_2: TFloatField
      DisplayWidth = 8
      FieldName = 'sum_2'
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
    end
    object qrvenda_mesColumn_3: TFloatField
      DisplayWidth = 8
      FieldName = 'sum_3'
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
    end
    object qrvenda_mesColumn_4: TFloatField
      DisplayWidth = 8
      FieldName = 'sum_4'
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
    end
    object qrvenda_mesColumn_5: TFloatField
      DisplayWidth = 8
      FieldName = 'sum_5'
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
    end
    object qrvenda_mesColumn_6: TFloatField
      DisplayWidth = 8
      FieldName = 'sum_6'
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
    end
    object qrvenda_mesColumn_7: TFloatField
      DisplayWidth = 8
      FieldName = 'sum_7'
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
    end
    object qrvenda_mesColumn_8: TFloatField
      DisplayWidth = 9
      FieldName = 'sum_8'
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
    end
    object qrvenda_mesColumn_9: TFloatField
      DisplayWidth = 9
      FieldName = 'sum_9'
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
    end
    object qrvenda_mesColumn_10: TFloatField
      DisplayWidth = 9
      FieldName = 'sum_10'
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
    end
  end
  object ZQuery1: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000025')
    Params = <>
    Left = 408
    Top = 80
  end
  object qrcondicional: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select mov.*, cli.nome from c000032 mov,'
      'c000007 cli'
      'where mov.codcliente = cli.codigo'
      'order by vencimento')
    Params = <>
    Left = 864
    Top = 16
  end
  object dscondicional: TDataSource
    DataSet = qrcondicional
    Left = 608
    Top = 171
  end
end
