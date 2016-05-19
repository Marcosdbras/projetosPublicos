object frmempresa: Tfrmempresa
  Left = 369
  Top = 32
  Width = 608
  Height = 676
  BorderIcons = [biSystemMenu]
  Caption = 'EMPRESAS/EMITENTES | Ficha de Cadastro'
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 616
    Width = 600
    Height = 2
    Align = alBottom
  end
  object Panel2: TPanel
    Left = 0
    Top = 618
    Width = 600
    Height = 31
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object bincluir: TAdvGlowButton
      Left = 4
      Top = 3
      Width = 90
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
      Visible = False
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
    object balterar: TAdvGlowButton
      Left = 4
      Top = 3
      Width = 90
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
      Left = 97
      Top = 3
      Width = 90
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
    object blocalizar: TAdvGlowButton
      Left = 190
      Top = 3
      Width = 106
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
      TabOrder = 3
      Visible = False
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
    object DBAdvGlowButton1: TDBAdvGlowButton
      Left = 310
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
      TabOrder = 4
      Visible = False
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
      DataSource = dsempresa2
      DBButtonType = dbFirst
      DisableControl = [drBOF, drEditing, drEmpty]
    end
    object DBAdvGlowButton2: TDBAdvGlowButton
      Left = 333
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
      TabOrder = 5
      Visible = False
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
      DataSource = dsempresa2
      DBButtonType = dbPrior
      DisableControl = [drBOF, drEditing, drEmpty]
    end
    object DBAdvGlowButton3: TDBAdvGlowButton
      Left = 356
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
      TabOrder = 6
      Visible = False
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
      DataSource = dsempresa2
      DBButtonType = dbNext
      DisableControl = [drEOF, drEditing, drEmpty]
    end
    object DBAdvGlowButton4: TDBAdvGlowButton
      Left = 379
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
      TabOrder = 7
      Visible = False
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
      DataSource = dsempresa2
      DBButtonType = dbLast
      DisableControl = [drEOF, drEditing, drEmpty]
    end
    object bfechar: TAdvGlowButton
      Left = 516
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
      TabOrder = 8
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
    object pgravar: TFlatPanel
      Left = -8
      Top = 16
      Width = 1191
      Height = 31
      ParentColor = True
      Visible = False
      ColorHighLight = clBtnFace
      ColorShadow = clBtnFace
      TabOrder = 9
      UseDockManager = True
      object bgravar: TAdvGlowButton
        Left = 187
        Top = 2
        Width = 108
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
        Left = 312
        Top = 2
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
  object pficha: TFlatPanel
    Left = -2
    Top = 2
    Width = 602
    Height = 603
    ParentColor = True
    ColorHighLight = clBtnFace
    ColorShadow = clBtnFace
    TabOrder = 1
    UseDockManager = True
    object Label1: TLabel
      Left = 6
      Top = 9
      Width = 78
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'C'#243'digo:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 6
      Top = 35
      Width = 78
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Nome / Raz'#227'o:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 6
      Top = 83
      Width = 78
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Endere'#231'o:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 14
      Top = 131
      Width = 78
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Cidade:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 520
      Top = 131
      Width = 17
      Height = 13
      Caption = 'UF:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 58
      Top = 156
      Width = 23
      Height = 13
      Caption = 'CEP:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label14: TLabel
      Left = 232
      Top = 156
      Width = 3
      Height = 12
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object LRG: TLabel
      Left = 6
      Top = 206
      Width = 78
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'IE:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object LCPF: TLabel
      Left = 374
      Top = 206
      Width = 29
      Height = 13
      Caption = 'CNPJ:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 210
      Top = 156
      Width = 78
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Telefone:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label13: TLabel
      Left = 476
      Top = 156
      Width = 22
      Height = 13
      Caption = 'Fax:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 52
      Top = 364
      Width = 91
      Height = 13
      Caption = 'Contribuinte de IPI'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 216
      Top = 363
      Width = 98
      Height = 13
      Caption = 'Substituto Tribut'#225'rio'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 52
      Top = 386
      Width = 101
      Height = 13
      Caption = 'Optante pelo Simples'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label12: TLabel
      Left = 52
      Top = 340
      Width = 113
      Height = 13
      Caption = 'Micro Empresa Estadual'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label15: TLabel
      Left = 360
      Top = 333
      Width = 70
      Height = 13
      Caption = 'Taxa de IPI %'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label16: TLabel
      Left = 216
      Top = 341
      Width = 53
      Height = 13
      Caption = 'Utiliza ECF '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label17: TLabel
      Left = 214
      Top = 386
      Width = 132
      Height = 13
      Caption = 'Optante pelo Super Simples'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label18: TLabel
      Left = 360
      Top = 367
      Width = 72
      Height = 13
      Caption = 'Taxa de ISS %'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 470
      Top = 83
      Width = 41
      Height = 13
      Caption = 'N'#250'mero:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label19: TLabel
      Left = 6
      Top = 181
      Width = 78
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Respons'#225'vel:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label20: TLabel
      Left = 302
      Top = 107
      Width = 69
      Height = 13
      Caption = 'Complemento:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label21: TLabel
      Left = 6
      Top = 107
      Width = 78
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Bairro:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label22: TLabel
      Left = 470
      Top = 31
      Width = 42
      Height = 13
      Caption = 'Seq. NF:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Bevel2: TBevel
      Left = -16
      Top = 286
      Width = 629
      Height = 3
    end
    object Label23: TLabel
      Left = 418
      Top = 9
      Width = 94
      Height = 13
      Caption = 'Seq.Conhecimento:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label24: TLabel
      Left = 423
      Top = 131
      Width = 35
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'IBGE:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label25: TLabel
      Left = 476
      Top = 332
      Width = 72
      Height = 13
      Caption = 'Taxa de PIS %'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label26: TLabel
      Left = 475
      Top = 367
      Width = 94
      Height = 13
      Caption = 'Taxa de COFINS %'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label30: TLabel
      Left = 377
      Top = 181
      Width = 38
      Height = 12
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'CNAE:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label27: TLabel
      Left = 176
      Top = 206
      Width = 78
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'IM:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label28: TLabel
      Left = 6
      Top = 261
      Width = 78
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Atividade:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label29: TLabel
      Left = 457
      Top = 263
      Width = 47
      Height = 13
      Caption = 'Abertura:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Bevel3: TBevel
      Left = -27
      Top = 417
      Width = 629
      Height = 3
    end
    object Label31: TLabel
      Left = 6
      Top = 432
      Width = 78
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Nome:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label32: TLabel
      Left = 6
      Top = 456
      Width = 78
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Endere'#231'o:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label33: TLabel
      Left = 6
      Top = 480
      Width = 78
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Bairro:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label34: TLabel
      Left = 424
      Top = 504
      Width = 35
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'IBGE:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label35: TLabel
      Left = 236
      Top = 528
      Width = 52
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Telefone:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label36: TLabel
      Left = 6
      Top = 553
      Width = 78
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Email:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label37: TLabel
      Left = 6
      Top = 578
      Width = 78
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'CRC:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label38: TLabel
      Left = 470
      Top = 456
      Width = 41
      Height = 13
      Caption = 'N'#250'mero:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label39: TLabel
      Left = 302
      Top = 480
      Width = 69
      Height = 13
      Caption = 'Complemento:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label40: TLabel
      Left = 67
      Top = 528
      Width = 23
      Height = 13
      Caption = 'CEP:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label41: TLabel
      Left = 475
      Top = 528
      Width = 22
      Height = 13
      Caption = 'Fax:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label42: TLabel
      Left = 198
      Top = 578
      Width = 23
      Height = 13
      Caption = 'CPF:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label43: TLabel
      Left = 358
      Top = 578
      Width = 76
      Height = 13
      Caption = 'CNPJ Escrit'#243'rio:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label44: TLabel
      Left = 277
      Top = 131
      Width = 84
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'C'#243'd.Municipio:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label45: TLabel
      Left = 17
      Top = 296
      Width = 137
      Height = 13
      Caption = 'Perfil de Apresenta'#231#227'o SPED'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label46: TLabel
      Left = 6
      Top = 504
      Width = 78
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Cidade:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label47: TLabel
      Left = 277
      Top = 504
      Width = 84
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'C'#243'd.Municipio:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label48: TLabel
      Left = 520
      Top = 504
      Width = 17
      Height = 13
      Caption = 'UF:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label50: TLabel
      Left = 185
      Top = 296
      Width = 20
      Height = 13
      Caption = 'CRT'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label51: TLabel
      Left = 6
      Top = 57
      Width = 78
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Fantasia:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label53: TLabel
      Left = 9
      Top = 233
      Width = 78
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Email:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBEdit1: TDBEdit
      Left = 96
      Top = 5
      Width = 73
      Height = 21
      DataField = 'CODIGO'
      DataSource = dsempresa2
      TabOrder = 0
      OnEnter = DBEdit1Enter
      OnExit = DBEdit1Exit
      OnKeyPress = DBEdit1KeyPress
    end
    object DBEdit2: TDBEdit
      Left = 96
      Top = 29
      Width = 353
      Height = 21
      CharCase = ecUpperCase
      DataField = 'FILIAL'
      DataSource = dsempresa2
      TabOrder = 1
      OnEnter = DBEdit1Enter
      OnExit = DBEdit1Exit
      OnKeyPress = DBEdit1KeyPress
    end
    object DBEdit4: TDBEdit
      Left = 96
      Top = 79
      Width = 353
      Height = 21
      CharCase = ecUpperCase
      DataField = 'ENDERECO'
      DataSource = dsempresa2
      TabOrder = 5
      OnEnter = DBEdit1Enter
      OnExit = DBEdit1Exit
      OnKeyPress = DBEdit1KeyPress
    end
    object DBEdit6: TDBEdit
      Left = 136
      Top = 127
      Width = 145
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CIDADE'
      DataSource = dsempresa2
      TabOrder = 9
      OnEnter = DBEdit1Enter
      OnExit = DBEdit6Exit
      OnKeyPress = DBEdit1KeyPress
    end
    object DBEdit8: TDBEdit
      Left = 96
      Top = 152
      Width = 84
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CEP'
      DataSource = dsempresa2
      MaxLength = 8
      TabOrder = 13
      OnEnter = DBEdit1Enter
      OnExit = DBEdit8Exit
      OnKeyPress = DBEdit1KeyPress
    end
    object DBEdit10: TDBEdit
      Left = 300
      Top = 152
      Width = 86
      Height = 21
      CharCase = ecUpperCase
      DataField = 'TELEFONE'
      DataSource = dsempresa2
      MaxLength = 10
      TabOrder = 14
      OnEnter = DBEdit1Enter
      OnExit = DBEdit10Exit
      OnKeyPress = DBEdit1KeyPress
    end
    object DBEdit11: TDBEdit
      Left = 504
      Top = 152
      Width = 86
      Height = 21
      CharCase = ecUpperCase
      DataField = 'FAX'
      DataSource = dsempresa2
      MaxLength = 10
      TabOrder = 15
      OnEnter = DBEdit1Enter
      OnExit = DBEdit11Exit
      OnKeyPress = DBEdit1KeyPress
    end
    object DBEdit14: TDBEdit
      Left = 96
      Top = 202
      Width = 137
      Height = 21
      CharCase = ecUpperCase
      DataField = 'IE'
      DataSource = dsempresa2
      TabOrder = 18
      OnEnter = DBEdit1Enter
      OnExit = DBEdit1Exit
      OnKeyPress = DBEdit1KeyPress
    end
    object DBEdit15: TDBEdit
      Left = 418
      Top = 202
      Width = 169
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CNPJ'
      DataSource = dsempresa2
      TabOrder = 20
      OnEnter = DBEdit1Enter
      OnExit = DBEdit15Exit
      OnKeyPress = DBEdit1KeyPress
    end
    object eddesdobra: TRzDBComboBox
      Left = 16
      Top = 336
      Width = 33
      Height = 21
      DataField = 'EMPRESA_ESTADUAL'
      DataSource = dsempresa2
      CharCase = ecUpperCase
      Ctl3D = False
      FrameHotTrack = True
      FrameHotStyle = fsStatus
      FrameVisible = True
      ItemHeight = 13
      ParentCtl3D = False
      TabOrder = 27
      OnKeyPress = DBEdit1KeyPress
      Items.Strings = (
        'N'
        'S')
      Values.Strings = (
        'N'
        'S')
    end
    object RzDBComboBox1: TRzDBComboBox
      Left = 16
      Top = 382
      Width = 33
      Height = 21
      DataField = 'OPTANTE_SIMPLES'
      DataSource = dsempresa2
      CharCase = ecUpperCase
      Ctl3D = False
      Enabled = False
      FrameHotTrack = True
      FrameHotStyle = fsStatus
      FrameVisible = True
      ItemHeight = 13
      ParentCtl3D = False
      TabOrder = 29
      OnKeyPress = DBEdit1KeyPress
      Items.Strings = (
        'N'
        'S')
      Values.Strings = (
        'N'
        'S')
    end
    object RzDBComboBox2: TRzDBComboBox
      Left = 16
      Top = 359
      Width = 33
      Height = 21
      DataField = 'CONTRIBUINTE_IPI'
      DataSource = dsempresa2
      CharCase = ecUpperCase
      Ctl3D = False
      FrameHotTrack = True
      FrameHotStyle = fsStatus
      FrameVisible = True
      ItemHeight = 13
      ParentCtl3D = False
      TabOrder = 28
      OnKeyPress = DBEdit1KeyPress
      Items.Strings = (
        'N'
        'S')
      Values.Strings = (
        'N'
        'S')
    end
    object RzDBComboBox3: TRzDBComboBox
      Left = 180
      Top = 359
      Width = 33
      Height = 21
      DataField = 'SUBSTITUTO_TRIBUTARIO'
      DataSource = dsempresa2
      CharCase = ecUpperCase
      Ctl3D = False
      FrameHotTrack = True
      FrameHotStyle = fsStatus
      FrameVisible = True
      ItemHeight = 13
      ParentCtl3D = False
      TabOrder = 31
      OnKeyPress = DBEdit1KeyPress
      Items.Strings = (
        'N'
        'S')
      Values.Strings = (
        'N'
        'S')
    end
    object RzDBEdit1: TRzDBEdit
      Left = 360
      Top = 346
      Width = 95
      Height = 21
      DataSource = dsempresa2
      DataField = 'IPI'
      FrameHotTrack = True
      FrameHotStyle = fsFlat
      FrameVisible = True
      TabOrder = 33
      OnKeyPress = DBEdit1KeyPress
    end
    object RzDBComboBox4: TRzDBComboBox
      Left = 180
      Top = 336
      Width = 33
      Height = 21
      DataField = 'ECF'
      DataSource = dsempresa2
      CharCase = ecUpperCase
      Ctl3D = False
      FrameHotTrack = True
      FrameHotStyle = fsStatus
      FrameVisible = True
      ItemHeight = 13
      ParentCtl3D = False
      TabOrder = 30
      OnKeyPress = DBEdit1KeyPress
      Items.Strings = (
        'N'
        'S')
      Values.Strings = (
        'N'
        'S')
    end
    object RzDBComboBox5: TRzDBComboBox
      Left = 180
      Top = 382
      Width = 33
      Height = 21
      DataField = 'OPTANTE_SUPER_SIMPLES'
      DataSource = dsempresa2
      CharCase = ecUpperCase
      Ctl3D = False
      FrameHotTrack = True
      FrameHotStyle = fsStatus
      FrameVisible = True
      ItemHeight = 13
      ParentCtl3D = False
      TabOrder = 32
      OnKeyPress = DBEdit1KeyPress
      Items.Strings = (
        'N'
        'S')
      Values.Strings = (
        'N'
        'S')
    end
    object RzDBEdit2: TRzDBEdit
      Left = 360
      Top = 380
      Width = 95
      Height = 21
      DataSource = dsempresa2
      DataField = 'ISS'
      FrameHotTrack = True
      FrameHotStyle = fsFlat
      FrameVisible = True
      TabOrder = 34
      OnKeyPress = DBEdit1KeyPress
    end
    object DBEdit3: TDBEdit
      Left = 520
      Top = 79
      Width = 69
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NUMERO'
      DataSource = dsempresa2
      MaxLength = 5
      TabOrder = 6
      OnEnter = DBEdit1Enter
      OnExit = DBEdit3Exit
      OnKeyPress = DBEdit1KeyPress
    end
    object DBEdit5: TDBEdit
      Left = 96
      Top = 177
      Width = 277
      Height = 21
      CharCase = ecUpperCase
      DataField = 'RESPONSAVEL'
      DataSource = dsempresa2
      TabOrder = 16
      OnEnter = DBEdit1Enter
      OnExit = DBEdit1Exit
      OnKeyPress = DBEdit1KeyPress
    end
    object DBEdit9: TDBEdit
      Left = 376
      Top = 103
      Width = 212
      Height = 21
      CharCase = ecUpperCase
      DataField = 'COMPLEMENTO'
      DataSource = dsempresa2
      TabOrder = 8
      OnEnter = DBEdit1Enter
      OnExit = DBEdit1Exit
      OnKeyPress = DBEdit1KeyPress
    end
    object DBEdit12: TDBEdit
      Left = 96
      Top = 103
      Width = 201
      Height = 21
      CharCase = ecUpperCase
      DataField = 'BAIRRO'
      DataSource = dsempresa2
      TabOrder = 7
      OnEnter = DBEdit1Enter
      OnExit = DBEdit1Exit
      OnKeyPress = DBEdit1KeyPress
    end
    object DBEdit13: TDBEdit
      Left = 520
      Top = 29
      Width = 69
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NOTAFISCAL'
      DataSource = dsempresa2
      MaxLength = 5
      TabOrder = 3
      OnEnter = DBEdit1Enter
      OnExit = DBEdit1Exit
      OnKeyPress = DBEdit1KeyPress
    end
    object FlatPanel1: TFlatPanel
      Left = 16
      Top = 279
      Width = 125
      Height = 16
      Caption = 'Informa'#231#245'es Fiscais'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = True
      ColorHighLight = clBtnFace
      ColorShadow = clBtnFace
      TabOrder = 53
      UseDockManager = True
    end
    object DBEdit16: TDBEdit
      Left = 520
      Top = 5
      Width = 69
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CONHECIMENTO'
      DataSource = dsempresa2
      MaxLength = 5
      TabOrder = 2
      OnEnter = DBEdit1Enter
      OnExit = DBEdit1Exit
      OnKeyPress = DBEdit1KeyPress
    end
    object DBEdit17: TDBEdit
      Left = 462
      Top = 127
      Width = 51
      Height = 21
      CharCase = ecUpperCase
      DataField = 'IBGE'
      DataSource = dsempresa2
      TabOrder = 11
      OnEnter = DBEdit1Enter
      OnExit = DBEdit1Exit
      OnKeyPress = DBEdit1KeyPress
    end
    object RzDBEdit3: TRzDBEdit
      Left = 475
      Top = 345
      Width = 95
      Height = 21
      DataSource = dsempresa2
      DataField = 'PIS'
      FrameHotTrack = True
      FrameHotStyle = fsFlat
      FrameVisible = True
      TabOrder = 35
      OnKeyPress = DBEdit1KeyPress
    end
    object RzDBEdit4: TRzDBEdit
      Left = 475
      Top = 380
      Width = 95
      Height = 21
      DataSource = dsempresa2
      DataField = 'COFINS'
      FrameHotTrack = True
      FrameHotStyle = fsFlat
      FrameVisible = True
      TabOrder = 36
      OnKeyPress = DBEdit1KeyPress
    end
    object AdvGlowButton1: TAdvGlowButton
      Left = 96
      Top = 125
      Width = 35
      Height = 24
      Hint = 'Pesquisa o Municipio,IBGE'
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
        89504E470D0A1A0A0000000D494844520000001E0000001B08060000006BFD3F
        11000000097048597300000B1300000B1301009A9C180000000467414D410000
        B18E7CFB5193000000206348524D00007A25000080830000F9FF000080E90000
        75300000EA6000003A980000176F925FC546000006C74944415478DA62FCFFFF
        3FC3400080006262182000104003663140000D98C500013460160304D080590C
        10402CD8041F3C79059164616678F0F815FBDD872F5CD8D8584C801900230B30
        323230FCFDFBEF3D273BDB3E2E4EB67B9FBFFE08FDF3F79F2250F81F3717C727
        A019FF7FFCF875EECDFB4FB724C4045EC9488880D433000410568BBF7EFB0924
        FF33B0B2B2307CFBFED318E89059CCCC4C528C0C8C186AFFFEFBC7C0C6CAB259
        5B5576E1874FDF5C6FDF7F3E17A8166CEE3F5056056146C64FEC6CAC7B850579
        2B9999986E8284000208ABC5EF3F7E01AA65046BBCFBE845342B0BB314131366
        ACFCFBF71F64E9115303D57C1E4EF64F8F2EBF8902590AC46079668452BE5FBF
        7E07BE7BFFE5D95BFECFB9C010F90F10402CF8E20158B8887DFEF25D1FE4084C
        4BFF313031319E06FA340318CCF7AFDE7A2C040C1D2B6C0E042726A0F8F71FBF
        4C9FBD7CC70274F06F8000C2AAEAD79F3FE0207CF4F4B5DE9F3FFFACD12D06C5
        11C8206D35B91C692991ABEF3F7C61F8F9EB0F231323D3070686FFB83CC1C0CE
        CEFA5C4488EF8FA8301F03400061B5F8F7EF3F20CCF8EDC72F3758910AA2FFFC
        FDCBF0EBD71F067E5E2E06171B7D900F026EDD7B5A0B8C1A5D61419E77ACACCC
        CB7E031D0D8A02907A640C12E3E4605B25252EF49F878B83012080B00635D097
        0C1F3F7D137AF5FA833BC8DABF40CB80863208F2F330A8294A319819A8325CBF
        F384E1F683E795FF80BE077AD51D985AD38D7494D75FBC7EBF1D9438415101D2
        CB040C2D5080313333BF11E0E3BEF2FAED4786E72FDF33000410568BF979B941
        AED3FAF9EBB70C1F3727030F0F278394B82083B48430031F0F1758CD959B8FC0
        BE00A57C60D05B7FFAF26D8E9EA6FC7D3D4D3986CF5F7E00F13706602A07E68A
        1F0C3F7EFDF90FCC6A7DF2D2A2976EDE7BC6000C15268000C26A315013F3EF3F
        7F9579B93985988029F4D7EFBF0C8F9FBD6578FAE23D030F370783A6B234032F
        907E0AF2D57F26A0C57F198049D902E8580B506A78F1FA03C3C3676F189EBD78
        07CC9A3F80FAFF7C55969738FC9EE72BB86C00266A1E8000C26A31308B889EBF
        7AAF08A8001C4CE06806C715246F02F3EA6B6539F1A4771FBE047CFEFADD8F83
        9DEB9B9589BAE49D072FD88E9DBD0EB618940099A1291C68D90BA0E577418950
        495E9C71EBDE33CC000184C3C7DF9D80966A00F32FD6D4F9F4C55B163E5ECE93
        065A8A3B9EBE7CD7A9A624F50C1877974F5EB8ADF8E7CF5F06903E66561678B6
        039660AB80C1FC02E48BCB371EB2EC3F7E85052080B0A6EAD7EF3E59333331B2
        62936304271646AE078F5EAB007DF2474B45E6F6ED7BCF5C8F9DBD29CE08092D
        06E4EC0774E7375161DE8B9FBE7CFFFFF9F33786376F3FF1DFBAFB8C07208098
        B01BCEF015E4585CF91168F06721419E8FC00284E1D6FDE741D76E3F5E008C63
        2EF4FC0E8A1AA09A87922282DB39D859199EBC78CBB461E7295066FB09104058
        2D0626A04DC0A0FE012A44FE61C98F405F6D959312B971E1DA03F5ABB71EF502
        B30A3FA8E040CFBB7F80795A5880F7280707DB67A0C31864A544788145F04FA0
        196F0002086B1CAB2B499FFAF8F97BE18F9FBFC2818A5480F1048F6CA0BDEF79
        B8D85703A343ECEBD7EF71C05AEB3FD0574F215E84945B607F83F32E1383B4A4
        F02271510150AA673878E2EA576061F35F889F9B0D2080B05A0CCC77BF4485F9
        67898BF02F7BF5E6031F30E5B2018BC8FF205F000B042660283CFEF8F92BAF90
        20EF6260E8CE018A43A385115C60804A38A083198196FD979716790ACD520C9F
        3E7FFDAB2023FE9F8B83ED2F400061B518986A8196FF06168FBFBF7CFEF6E30B
        A85C06590AB4089C373555644035D87B60B6790F8A577636166891C8CAA0AFA9
        C870F3DE5370360417BDC0542E2D21C000CA4A06DA8AFF9FBD7A0FCA8EBF0002
        880957CA056503A04F195EBDF9083498155C09B0B2B03002F32E83A49820C872
        C60F1FBF00F157783E07FA8A1918E78C4202DC204BC0E6DCBAFB14AC1F182560
        6C6DA2C16066A8CA00104038AAC5FFCCC0A2105483FF03662B7E6041F00B5856
        FF7CF6FCED7F60826102D6A7FF1E3F7BCDC4C6C60A0C59C63FE04407D4C4CBC9
        FEF7EBB7EF8C4F5FFE0515B9C0907B072EE980A99EE1FFBFFF4C40DF339EBA78
        E72F073B0B03400031E128B9D881F1F01FE4E20F9FBEFE04169BBFE5A5C5FE7D
        F8FCF5BFA498F0BFDBF79F31DE7DF8F23FA87A03D6C5209FFD070529C8A2FB8F
        5F830A20C68327AF3102132013304533DF7BF81228FE8AE1FBCF9FFF81C530A7
        86B22C2B4000BAEA2505401806C2B0A3AE7DA094EC2C8AF7BF5EA452FCD3BD37
        089319BEBFA895B6A575D49FE2D0F772482391E976EE453456F1FB11B5AE6CBA
        B3855C3D02C5BC15429D87695FA70A1EA233A437544BB378953E010600C1D442
        6D06AD16470000000049454E44AE426082}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 54
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
    end
    object euf: TwwDBComboBox
      Left = 540
      Top = 127
      Width = 49
      Height = 21
      ShowButton = True
      Style = csDropDown
      MapList = False
      AllowClearKey = False
      CharCase = ecUpperCase
      DataField = 'UF'
      DataSource = dsempresa2
      DropDownCount = 8
      ItemHeight = 0
      Items.Strings = (
        'AC'
        'AL'
        'AP'
        'AM'
        'BA'
        'CE'
        'DF'
        'ES'
        'EX'
        'GO'
        'MA'
        'MT'
        'MS'
        'MG'
        'PA'
        'PB'
        'PR'
        'PE'
        'PI'
        'RR'
        'RO'
        'RJ'
        'RN'
        'RS'
        'SC'
        'SP'
        'SE'
        'TO')
      ItemIndex = 1
      Sorted = False
      TabOrder = 12
      UnboundDataType = wwDefault
      OnEnter = DBEdit1Enter
      OnExit = DBEdit1Exit
      OnKeyPress = DBEdit1KeyPress
    end
    object ecnae: TDBEdit
      Left = 418
      Top = 177
      Width = 136
      Height = 21
      DataField = 'CNAE'
      DataSource = dsempresa2
      TabOrder = 17
      OnEnter = DBEdit1Enter
      OnExit = ecnaeExit
      OnKeyPress = DBEdit1KeyPress
    end
    object bcnae: TAdvGlowButton
      Left = 556
      Top = 175
      Width = 35
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
        89504E470D0A1A0A0000000D494844520000001E0000001E08060000003B30AE
        A2000000097048597300000B1300000B1301009A9C180000000467414D410000
        B18E7CFB5193000000206348524D00007A25000080830000F9FF000080E90000
        75300000EA6000003A980000176F925FC546000009824944415478DA62FCFFFF
        3FC340008000626218200010402C20E2E187930C4C8C2C0C1F7E3C61F8FBEF17
        0333231B8300A734030B3307C3D517DB1918987E30FC67F82FACC4EFF6EDE265
        468E4F9F7FCB08F0715DBE78E3A1C6E98B0F92CF5F7B142C21CA7B2731D8AED2
        C942FBEC8F9FBF199EBC7CC7F0FFFF3F0629312186976F3F30303232A2580C10
        402C986E6104C35F7FBE327CFCF15CE3F3DF7BBAAF9EB30ABCFAFC30F911BBC0
        BC0DEB988C94150496FEFDF3DF7BE5E6330B7FFCF92C6CA4237D918F53FCEB92
        4D47A7B0B03277D818AA6F0446A1042313E327A07DDFD02D050180006241B7F2
        DFFFBF228C4C4C6CAFBEDE7DF68FE9C3AB9B0F5FD6EDDAC5A0A3ACF99961D3DE
        4746CA32AAF1176F3C513872E2CEBCF8201B96D0705686E77F375F11FA691CF3
        EC9196CCFB8FDF025EBDFB28F6F5FB0FEDE7AF3F484B890A2EFAF3F71F1F2707
        EB6760728227288000825AFC1F18D4405FFEFD667CF4C98CC5BCECE22F247934
        4B3FFD7869BC7FABA4A0A0F45D86833B781914A4BEFE62E37B6C757AE79738D7
        A0272C76111B18EEFE7ACBF0EACB035F1171794F47B9F0ED3FBFAA2C7CFBE13B
        BB30BFC0ED955B4F16F07273EC7AFDEE9399001FCF25A0150F6016030410D8E2
        B75FEF333033B131BCFDF640FEC3CFA7CAEF7E3ED47CFFFBD6F17D5B6558BEFF
        E762FC7A4F84E1D32B66061EC367DCEBD6FECC710979C1E0E0F390E1C1FBEF0C
        40DF30C8F01AFEE4619560FEC3F488F71BEBE5CF6252729F5FBFE26578F1FA33
        CBB76FBFAD1465C4DF9FBD7ACF5C5B55E6C1AFDF7F40FE64000820B0C59F7FBD
        06FA98099418AE71B38A7CF8C9F45CECF64D36D69BE7C518E4D5BE311CDCC3CB
        6068FD89E1C23121061DC33F0C365EB719BE7E07A63906760616A6BFA028E2BB
        F3EED0E2175FAE5F03FAEABC10EFF57D1FBF186E60FCC7F1EAD0A93BD6BA9A52
        CB9EBE7AEFCDCECEBAF2CF9FBFA03865000820B0C5ECCCDC0CC2DC8A0C2FBFDC
        14FDF5EF13EFFF3FBC0C7BD628310808FF65B879899D41489895E1EB5B09866F
        9F3E32B8E7DD64F8F79791E1FF3F48826162646678FAE5223B0FAB18FBFB9F8F
        ACBEFC7E6DC5FA91235B8EE769838EB920EB875742B6728AEC7B8E9EFB26EB6E
        25CFCEC1F9FBA7BCDC4F0680006281C4F07FFE471FCFF8DE797F289391E507E7
        A5431A0C6F5F0831F0F3B032BC7CF295414D8391E1D9D31F0C56AEAF1978455E
        32FCF8C68C9A4299D819BEFF790F66B3327382B3D1E32F276A55AC98FFFFFEC9
        CEF4819D7DB599A7CC4B19055D295E810FF72504A518000208928F3F9EACBBF6
        6E7B1133330B031B30EFDEB820C42022C8CFF0FCC9170636CEDF0CBFFF7D65E0
        E4FEC76068F384E1CF2F6670FAC7C8848C4C48B98309983BFE33FF07C63F13DB
        57866F7FBF70734BBE54BAFBB76F82C26FAB0EB13F32270002086CF1ED8F077D
        5999B9185859812EBD2B0CF4252F8398E47B86C7CF7E33484871307C7AC3C9A0
        6C708F815FF81BC3F71FC4954C8C50C7FDFFC70C66FDFFCBC2F0E2CB2DBF375F
        1FB9F3B14985000410D8999C2C7C1FFFFDFFC3C0C8F49FE1CE1521A0AE9F40F6
        4F86EFDF18188424BE32FC63FCC6A0A9FF09E88BDF401318C92F268151F2EBDF
        67F657DF6E59010410D862455E9B42053EB3498CBF84DE3CBAC3CF202325C4F0
        E93D2B8388F85F0656463E86DF7F7E33088B7F03262A668ACAE7BF4087B331F3
        7E91E333D9041040608B9999FF1E9117D4C8D7E32E4FFCF246F883AEB226C3FF
        1F820C3C02FF187EFCFACE2024C8CDC0CBF70B588E935F93014B44061646B66F
        56D2A9B9E23C1A270002081CC7CF1EF1339C7E28C8F0FFFBBF87C202FC7FE5A4
        05193E7CF9C460ADADC5F0EEDD0F0666898B0CACECBF197EFEF98F35611102A0
        540E8A654BE9946C2D118F053FFF7E65000820B08FEF5ED263F8F5599AE1E9AB
        0F021C1CCC3C6C2C2C0C9FBF7D63D05556061712DA92360C7A627EE09A0BA9B8
        25CE527071CCF25B4BC8B3489A477FE13F86BFE0BC0F1040601F1727BA337073
        B2316C3E709EF5F6FD974C6CACCC0C6C6C2CFF4584787A7FFCFEE6A52461A0A5
        2AC4C670E6E91A863FC044C8CCC84A826FFF3270B189BC126097DDFCFCCBB5FF
        AFBFDE013B062080C016F72ED80A8C672686C7CFDF314888F033F27173317071
        B27D7BF1EEC3FE6FDF7F997DFDF98941893F8021487D22C3AEFB6D0CC0F29C68
        CB4196303230FF01E6736031FD8DE117C317B0384000812D7EF9EE2398F3E7DF
        DFBFD212020779B8D88F02CBDC7CA0CFBFB3B1B07E7BF4EC0D50968D4153D493
        E1D9E7CB0C879F4C0546350B51F10DF2B10087D4454541CB177F81A1C5008D2A
        8000025BEC6EAD0F6E21FCF8F9EBC5D5DB4F6E9FBE7A6F2F2B0B4BAA928CF877
        3121DE77B71E3C67F8FEF30F03273B0BC3176085028967462283FA3F838AA0FD
        222E56C1BFBFFF214A1F8000025B6CA6A3C4006A24FCFBC7F000582F9F7AF8FC
        CD571E2E8E4F9C6CAC2C3AEA3267272FDE1D75EAF23D067B13356099FC0998BA
        BF30B0B071C04B27ECC1CB080CC19F0C523CBAFB8015C8FE77DF1F80B3140C00
        04103855333131827DCCC4C4F0535D5172ADB79DC179417EAE870F9EBC51D454
        953AFCE7C7EFFF0B361C026B7052CE66B097CB05790568FC5F0C0B41A9F63F30
        487FFDFDC2C0CD227C5991DF3A1F28F0EEDBAFF70C3F7E7F8263800082D44ED0
        1C02F431033B2BEB279043EC4D35D73E78F65AD3D546679991BED2C905CBF65A
        488B0B303466853078AA6833707331331C7A301F983B99C08E0615B9C06CF38F
        8745F4BCA688C76660E2FBFCF2F39DBD40B75C013907B91201018000C268ECFD
        F9FB978119083DECF4D71C3C732D16E828C68460DB8EF3971F6CE898B699E1C8
        B9DB0CFAEA4A0C1F7FFE6710D117601012FFC2006CF83170B0F03D97E7B1A862
        67E15C29CDABFF9D9F5D8AE1DDD7C7600761030001C484A55A61F80BACCE80D1
        FBCEC95C7BFE87CFDF586C4CD437A6C538B53002B3DCC17D171926F56F6058B2
        E029C3B3FBD20CAC2CCCC032F817832497F636112EA50540877E07C52DB0FD86
        37110204100BD62A0D94D04071F89FE1D33F6071C7C3C9C1A0A32E5BEBEB6274
        F7D1934F49AC3CAF4D64756E726A9A3C64F8F5EB1F38663958059E029B4DC04A
        8013D8A2E1851693B8014000B110C8FD60F7821A747FFFFE62D0D3125B901AA3
        B2FD15FBFC334FBF5E93F9FF1758CDFDFDC920C6A9B95B8ED7B89F93951F58AC
        72010B171682452B4000B11093177F02E3D3DA9C87E11FEB1B060EB6779F3EBD
        E6AB61FAC75FF4EDEF7B3D4176D91B363269A5425C8A1F40D51EAC1DF6FDF707
        BC660204100B718500B012670636F058FE33FCFCFDEF3B378BF8423389B83DF7
        3E1E5DACC067D1C6C7217991019C7799E04D1F420020C000BFDECD22E08CF6B1
        0000000049454E44AE426082}
      TabOrder = 55
      OnClick = bcnaeClick
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
    object DBEdit7: TDBEdit
      Left = 257
      Top = 202
      Width = 116
      Height = 21
      CharCase = ecUpperCase
      DataField = 'INSC_MUNICIPAL'
      DataSource = dsempresa2
      TabOrder = 19
      OnEnter = DBEdit1Enter
      OnExit = DBEdit1Exit
      OnKeyPress = DBEdit1KeyPress
    end
    object rAtividade: TRzDBComboBox
      Left = 96
      Top = 258
      Width = 355
      Height = 21
      DataField = 'ATIVIDADE'
      DataSource = dsempresa2
      Style = csDropDownList
      CharCase = ecUpperCase
      Ctl3D = False
      FrameHotTrack = True
      FrameHotStyle = fsStatus
      FrameVisible = True
      ItemHeight = 13
      ParentCtl3D = False
      TabOnEnter = True
      TabOrder = 22
      Items.Strings = (
        'IND'#218'STRIA OU EQUIPARADO'
        'COM'#201'RCIO'
        'DISTRIBUIDORA')
      Values.Strings = (
        'COM'#201'RCIO'
        'IND'#218'STRIA'
        'DISTRIBUIDORA')
    end
    object DBDateEdit2: TDBDateEdit
      Left = 508
      Top = 260
      Width = 83
      Height = 21
      DataField = 'DATA_ABERTURA'
      DataSource = dsempresa2
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
      ButtonWidth = 18
      NumGlyphs = 1
      TabOrder = 24
      OnEnter = DBEdit1Enter
      OnExit = DBEdit1Exit
      OnKeyPress = DBEdit1KeyPress
    end
    object FlatPanel2: TFlatPanel
      Left = 24
      Top = 410
      Width = 125
      Height = 16
      Caption = 'Dados do Contador'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = True
      ColorHighLight = clBtnFace
      ColorShadow = clBtnFace
      TabOrder = 56
      UseDockManager = True
    end
    object DBEdit28: TDBEdit
      Left = 96
      Top = 574
      Width = 89
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CONTADOR_CRC'
      DataSource = dsempresa2
      TabOrder = 50
      OnEnter = DBEdit1Enter
      OnExit = DBEdit1Exit
      OnKeyPress = DBEdit1KeyPress
    end
    object DBEdit27: TDBEdit
      Left = 96
      Top = 549
      Width = 494
      Height = 21
      CharCase = ecLowerCase
      DataField = 'CONTADOR_EMAIL'
      DataSource = dsempresa2
      TabOrder = 49
      OnEnter = DBEdit1Enter
      OnExit = DBEdit1Exit
      OnKeyPress = DBEdit1KeyPress
    end
    object DBEdit25: TDBEdit
      Left = 300
      Top = 524
      Width = 86
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CONTADOR_FONE'
      DataSource = dsempresa2
      MaxLength = 10
      TabOrder = 47
      OnEnter = DBEdit1Enter
      OnExit = DBEdit25Exit
      OnKeyPress = DBEdit1KeyPress
    end
    object DBEdit23: TDBEdit
      Left = 463
      Top = 500
      Width = 51
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CONTADOR_COD_MUNICIPIO_IBGE'
      DataSource = dsempresa2
      TabOrder = 44
      OnEnter = DBEdit1Enter
      OnExit = DBEdit1Exit
      OnKeyPress = DBEdit1KeyPress
    end
    object DBEdit21: TDBEdit
      Left = 96
      Top = 476
      Width = 201
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CONTADOR_BAIRRO'
      DataSource = dsempresa2
      TabOrder = 40
      OnEnter = DBEdit1Enter
      OnExit = DBEdit1Exit
      OnKeyPress = DBEdit1KeyPress
    end
    object DBEdit19: TDBEdit
      Left = 96
      Top = 452
      Width = 353
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CONTADOR_ENDERECO'
      DataSource = dsempresa2
      TabOrder = 38
      OnEnter = DBEdit1Enter
      OnExit = DBEdit1Exit
      OnKeyPress = DBEdit1KeyPress
    end
    object DBEdit18: TDBEdit
      Left = 96
      Top = 428
      Width = 493
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CONTADOR_NOME'
      DataSource = dsempresa2
      TabOrder = 37
      OnEnter = DBEdit1Enter
      OnExit = DBEdit1Exit
      OnKeyPress = DBEdit1KeyPress
    end
    object DBEdit20: TDBEdit
      Left = 520
      Top = 452
      Width = 69
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CONTADOR_NUMERO'
      DataSource = dsempresa2
      TabOrder = 39
      OnEnter = DBEdit1Enter
      OnExit = DBEdit20Exit
      OnKeyPress = DBEdit1KeyPress
    end
    object DBEdit22: TDBEdit
      Left = 376
      Top = 476
      Width = 212
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CONTADOR_COMPLEMENTO'
      DataSource = dsempresa2
      TabOrder = 41
      OnEnter = DBEdit1Enter
      OnExit = DBEdit1Exit
      OnKeyPress = DBEdit1KeyPress
    end
    object DBEdit24: TDBEdit
      Left = 96
      Top = 524
      Width = 84
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CONTADOR_CEP'
      DataSource = dsempresa2
      MaxLength = 8
      TabOrder = 46
      OnEnter = DBEdit1Enter
      OnExit = DBEdit24Exit
      OnKeyPress = DBEdit1KeyPress
    end
    object DBEdit26: TDBEdit
      Left = 503
      Top = 524
      Width = 86
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CONTADOR_FAX'
      DataSource = dsempresa2
      MaxLength = 10
      TabOrder = 48
      OnEnter = DBEdit1Enter
      OnExit = DBEdit26Exit
      OnKeyPress = DBEdit1KeyPress
    end
    object DBEdit29: TDBEdit
      Left = 226
      Top = 574
      Width = 119
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CONTADOR_CPF'
      DataSource = dsempresa2
      TabOrder = 51
      OnEnter = DBEdit1Enter
      OnExit = DBEdit29Exit
      OnKeyPress = DBEdit1KeyPress
    end
    object DBEdit30: TDBEdit
      Left = 440
      Top = 573
      Width = 150
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CONTADOR_CNPJ'
      DataSource = dsempresa2
      TabOrder = 52
      OnEnter = DBEdit1Enter
      OnExit = DBEdit30Exit
      OnKeyPress = RzDBEdit4KeyPress
    end
    object ecodmunicipio: TDBEdit
      Left = 365
      Top = 127
      Width = 61
      Height = 21
      DataField = 'COD_MUNICIPIO_IBGE'
      DataSource = dsempresa2
      TabOrder = 10
      OnEnter = DBEdit1Enter
      OnExit = DBEdit1Exit
      OnKeyPress = DBEdit1KeyPress
    end
    object RzDBComboBox6: TRzDBComboBox
      Left = 184
      Top = 311
      Width = 271
      Height = 21
      DataField = 'CRT'
      DataSource = dsempresa2
      Style = csDropDownList
      Ctl3D = False
      FrameHotTrack = True
      FrameHotStyle = fsStatus
      FrameVisible = True
      ItemHeight = 13
      ParentCtl3D = False
      TabOnEnter = True
      TabOrder = 25
      OnChange = RzDBComboBox6Change
      OnKeyPress = DBEdit1KeyPress
      Items.Strings = (
        '1 - SIMPLES NACIONAL'
        '2 - SIMPLES NACIONAL - EXCESSO DE SUBLIMITE DA RECEITA BRUTA'
        '3 - REGIME NORMAL')
      Values.Strings = (
        '1'
        '2'
        '3')
    end
    object AdvGlowButton2: TAdvGlowButton
      Left = 96
      Top = 498
      Width = 35
      Height = 24
      Hint = 'Pesquisa o Municipio,IBGE'
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
        89504E470D0A1A0A0000000D494844520000001E0000001B08060000006BFD3F
        11000000097048597300000B1300000B1301009A9C180000000467414D410000
        B18E7CFB5193000000206348524D00007A25000080830000F9FF000080E90000
        75300000EA6000003A980000176F925FC546000006C74944415478DA62FCFFFF
        3FC3400080006262182000104003663140000D98C500013460160304D080590C
        10402CD8041F3C79059164616678F0F815FBDD872F5CD8D8584C801900230B30
        323230FCFDFBEF3D273BDB3E2E4EB67B9FBFFE08FDF3F79F2250F81F3717C727
        A019FF7FFCF875EECDFB4FB724C4045EC9488880D433000410568BBF7EFB0924
        FF33B0B2B2307CFBFED318E89059CCCC4C528C0C8C186AFFFEFBC7C0C6CAB259
        5B5576E1874FDF5C6FDF7F3E17A8166CEE3F5056056146C64FEC6CAC7B850579
        2B9999986E8284000208ABC5EF3F7E01AA65046BBCFBE845342B0BB314131366
        ACFCFBF71F64E9115303D57C1E4EF64F8F2EBF8902590AC46079668452BE5FBF
        7E07BE7BFFE5D95BFECFB9C010F90F10402CF8E20158B8887DFEF25D1FE4084C
        4BFF313031319E06FA340318CCF7AFDE7A2C040C1D2B6C0E042726A0F8F71FBF
        4C9FBD7CC70274F06F8000C2AAEAD79F3FE0207CF4F4B5DE9F3FFFACD12D06C5
        11C8206D35B91C692991ABEF3F7C61F8F9EB0F231323D3070686FFB83CC1C0CE
        CEFA5C4488EF8FA8301F03400061B5F8F7EF3F20CCF8EDC72F3758910AA2FFFC
        FDCBF0EBD71F067E5E2E06171B7D900F026EDD7B5A0B8C1A5D61419E77ACACCC
        CB7E031D0D8A02907A640C12E3E4605B25252EF49F878B83012080B00635D097
        0C1F3F7D137AF5FA833BC8DABF40CB80863208F2F330A8294A319819A8325CBF
        F384E1F683E795FF80BE077AD51D985AD38D7494D75FBC7EBF1D9438415101D2
        CB040C2D5080313333BF11E0E3BEF2FAED4786E72FDF33000410568BF979B941
        AED3FAF9EBB70C1F3727030F0F278394B82083B48430031F0F1758CD959B8FC0
        BE00A57C60D05B7FFAF26D8E9EA6FC7D3D4D3986CF5F7E00F13706602A07E68A
        1F0C3F7EFDF90FCC6A7DF2D2A2976EDE7BC6000C15268000C26A315013F3EF3F
        7F9579B93985988029F4D7EFBF0C8F9FBD6578FAE23D030F370783A6B234032F
        907E0AF2D57F26A0C57F198049D902E8580B506A78F1FA03C3C3676F189EBD78
        07CC9A3F80FAFF7C55969738FC9EE72BB86C00266A1E8000C26A31308B889EBF
        7AAF08A8001C4CE06806C715246F02F3EA6B6539F1A4771FBE047CFEFADD8F83
        9DEB9B9589BAE49D072FD88E9DBD0EB618940099A1291C68D90BA0E577418950
        495E9C71EBDE33CC000184C3C7DF9D80966A00F32FD6D4F9F4C55B163E5ECE93
        065A8A3B9EBE7CD7A9A624F50C1877974F5EB8ADF8E7CF5F06903E66561678B6
        039660AB80C1FC02E48BCB371EB2EC3F7E85052080B0A6EAD7EF3E59333331B2
        62936304271646AE078F5EAB007DF2474B45E6F6ED7BCF5C8F9DBD29CE08092D
        06E4EC0774E7375161DE8B9FBE7CFFFFF9F33786376F3FF1DFBAFB8C07208098
        B01BCEF015E4585CF91168F06721419E8FC00284E1D6FDE741D76E3F5E008C63
        2EF4FC0E8A1AA09A87922282DB39D859199EBC78CBB461E7295066FB09104058
        2D0626A04DC0A0FE012A44FE61C98F405F6D959312B971E1DA03F5ABB71EF502
        B30A3FA8E040CFBB7F80795A5880F7280707DB67A0C31864A544788145F04FA0
        196F0002086B1CAB2B499FFAF8F97BE18F9FBFC2818A5480F1048F6CA0BDEF79
        B8D85703A343ECEBD7EF71C05AEB3FD0574F215E84945B607F83F32E1383B4A4
        F02271510150AA673878E2EA576061F35F889F9B0D2080B05A0CCC77BF4485F9
        67898BF02F7BF5E6031F30E5B2018BC8FF205F000B042660283CFEF8F92BAF90
        20EF6260E8CE018A43A385115C60804A38A083198196FD979716790ACD520C9F
        3E7FFDAB2023FE9F8B83ED2F400061B518986A8196FF06168FBFBF7CFEF6E30B
        A85C06590AB4089C373555644035D87B60B6790F8A577636166891C8CAA0AFA9
        C870F3DE5370360417BDC0542E2D21C000CA4A06DA8AFF9FBD7A0FCA8EBF0002
        880957CA056503A04F195EBDF9083498155C09B0B2B03002F32E83A49820C872
        C60F1FBF00F157783E07FA8A1918E78C4202DC204BC0E6DCBAFB14AC1F182560
        6C6DA2C16066A8CA00104038AAC5FFCCC0A2105483FF03662B7E6041F00B5856
        FF7CF6FCED7F60826102D6A7FF1E3F7BCDC4C6C60A0C59C63FE04407D4C4CBC9
        FEF7EBB7EF8C4F5FFE0515B9C0907B072EE980A99EE1FFBFFF4C40DF339EBA78
        E72F073B0B03400031E128B9D881F1F01FE4E20F9FBEFE04169BBFE5A5C5FE7D
        F8FCF5BFA498F0BFDBF79F31DE7DF8F23FA87A03D6C5209FFD070529C8A2FB8F
        5F830A20C68327AF3102132013304533DF7BF81228FE8AE1FBCF9FFF81C530A7
        86B22C2B4000BAEA2505401806C2B0A3AE7DA094EC2C8AF7BF5EA452FCD3BD37
        089319BEBFA895B6A575D49FE2D0F772482391E976EE453456F1FB11B5AE6CBA
        B3855C3D02C5BC15429D87695FA70A1EA233A437544BB378953E010600C1D442
        6D06AD16470000000049454E44AE426082}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 57
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
    object DBEdit31: TDBEdit
      Left = 136
      Top = 500
      Width = 145
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CONTADOR_CIDADE'
      DataSource = dsempresa2
      TabOrder = 42
      OnEnter = DBEdit1Enter
      OnExit = DBEdit31Exit
      OnKeyPress = DBEdit1KeyPress
    end
    object DBEdit32: TDBEdit
      Left = 365
      Top = 500
      Width = 61
      Height = 21
      DataField = 'CONTADOR_COD_MUNICIPIO'
      DataSource = dsempresa2
      TabOrder = 43
      OnEnter = DBEdit1Enter
      OnExit = DBEdit1Exit
      OnKeyPress = DBEdit1KeyPress
    end
    object wwDBComboBox1: TwwDBComboBox
      Left = 540
      Top = 500
      Width = 49
      Height = 21
      ShowButton = True
      Style = csDropDown
      MapList = False
      AllowClearKey = False
      CharCase = ecUpperCase
      DataField = 'CONTADOR_UF'
      DataSource = dsempresa2
      DropDownCount = 8
      ItemHeight = 0
      Items.Strings = (
        'AC'
        'AL'
        'AP'
        'AM'
        'BA'
        'CE'
        'DF'
        'ES'
        'EX'
        'GO'
        'MA'
        'MT'
        'MS'
        'MG'
        'PA'
        'PB'
        'PR'
        'PE'
        'PI'
        'RR'
        'RO'
        'RJ'
        'RN'
        'RS'
        'SC'
        'SP'
        'SE'
        'TO')
      ItemIndex = 1
      Sorted = False
      TabOrder = 45
      UnboundDataType = wwDefault
      OnEnter = DBEdit1Enter
      OnExit = DBEdit1Exit
      OnKeyPress = DBEdit1KeyPress
    end
    object CBCreditoICMS: TDBCheckBox
      Left = 465
      Top = 312
      Width = 121
      Height = 17
      Caption = 'Permite Cr'#233'dito ICMS'
      DataField = 'PERMITE_CREDITO'
      DataSource = dsempresa2
      Enabled = False
      TabOrder = 26
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
    object RzDBComboBox7: TRzDBComboBox
      Left = 16
      Top = 310
      Width = 163
      Height = 21
      DataField = 'PERFIL_SPED'
      DataSource = dsempresa2
      Style = csDropDownList
      Ctl3D = False
      FrameHotTrack = True
      FrameHotStyle = fsStatus
      FrameVisible = True
      ItemHeight = 13
      ParentCtl3D = False
      TabOnEnter = True
      TabOrder = 23
      OnChange = RzDBComboBox6Change
      OnKeyPress = DBEdit1KeyPress
      Items.Strings = (
        'Perfil A'
        'Perfil B'
        'Perfil C')
      Values.Strings = (
        '1'
        '2'
        '3')
    end
    object DBEdit33: TDBEdit
      Left = 96
      Top = 54
      Width = 493
      Height = 21
      CharCase = ecUpperCase
      DataField = 'FANTASIA'
      DataSource = dsempresa2
      TabOrder = 4
      OnEnter = DBEdit1Enter
      OnExit = DBEdit1Exit
      OnKeyPress = DBEdit1KeyPress
    end
    object DBEdit34: TDBEdit
      Left = 96
      Top = 230
      Width = 493
      Height = 21
      CharCase = ecUpperCase
      DataField = 'EMAIL_EMPRESA'
      DataSource = dsempresa2
      TabOrder = 21
      OnEnter = DBEdit1Enter
      OnExit = DBEdit1Exit
      OnKeyPress = DBEdit1KeyPress
    end
  end
  object Pop1: TPopupMenu
    Left = 480
    Top = 184
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
    object Fechar1: TMenuItem
      Caption = 'Fechar'
      ShortCut = 27
      OnClick = bfecharClick
    end
  end
  object Pop2: TPopupMenu
    Left = 528
    Top = 184
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
  end
  object dsempresa2: TDataSource
    DataSet = frmmodulo.qrFilial
    Left = 640
    Top = 224
  end
  object POP3: TPopupMenu
    Left = 568
    Top = 184
    object InciodoNome1: TMenuItem
      Caption = 'In'#237'cio do Nome'
      ShortCut = 112
    end
    object PartedoNome1: TMenuItem
      Caption = 'Parte do Nome'
      ShortCut = 113
    end
    object FecharLocalizao1: TMenuItem
      Caption = 'Fechar Localiza'#231#227'o'
      ShortCut = 27
    end
  end
end
