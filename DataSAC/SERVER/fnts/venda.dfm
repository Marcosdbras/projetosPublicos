object frmvenda: Tfrmvenda
  Left = 3
  Top = 1
  Width = 798
  Height = 568
  BorderIcons = []
  Caption = 'Pedido de Venda'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pficha: TPanel
    Left = 0
    Top = 0
    Width = 790
    Height = 541
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Bevel10: TBevel
      Left = 0
      Top = 453
      Width = 790
      Height = 3
      Align = alBottom
    end
    object Bevel4: TBevel
      Left = 0
      Top = 66
      Width = 790
      Height = 3
      Align = alTop
    end
    object FlatPanel57: TFlatPanel
      Left = 0
      Top = 456
      Width = 790
      Height = 85
      ParentColor = True
      ColorHighLight = clBtnFace
      ColorShadow = clBtnFace
      Align = alBottom
      TabOrder = 0
      UseDockManager = True
      object Bevel2: TBevel
        Left = 1
        Top = 49
        Width = 788
        Height = 3
        Align = alTop
      end
      object Panel3: TPanel
        Left = 1
        Top = 52
        Width = 788
        Height = 32
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object bfinalizar: TAdvGlowButton
          Left = 272
          Top = 3
          Width = 107
          Height = 26
          Caption = 'F5 | Finalizar'
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
          OnClick = bfinalizarClick
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
          Left = 389
          Top = 3
          Width = 108
          Height = 26
          Caption = 'F9 | Cancelar'
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
        object PTEF: TFlatPanel
          Left = 5
          Top = 5
          Width = 52
          Height = 23
          Caption = 'TEF'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = True
          Enabled = False
          TabOrder = 2
          UseDockManager = True
        end
      end
      object Panel2: TPanel
        Left = 1
        Top = 1
        Width = 788
        Height = 48
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object Bevel1: TBevel
          Left = 384
          Top = 2
          Width = 2
          Height = 44
        end
        object bincluir: TAdvGlowButton
          Left = 4
          Top = 11
          Width = 124
          Height = 24
          Caption = 'F2 | Incluir Item'
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
        object bitbtn1: TAdvGlowButton
          Left = 132
          Top = 11
          Width = 124
          Height = 24
          Caption = 'F3 | Devolu'#231#227'o'
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
          OnClick = BitBtn1Click
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
          Left = 260
          Top = 11
          Width = 116
          Height = 24
          Caption = 'F4 | Excluir Item'
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
        object Panel4: TPanel
          Left = 395
          Top = 0
          Width = 393
          Height = 48
          Align = alRight
          BevelOuter = bvNone
          Enabled = False
          TabOrder = 3
          object Label25: TLabel
            Left = -4
            Top = 3
            Width = 125
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Quantidade de Itens:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label26: TLabel
            Left = -4
            Top = 27
            Width = 125
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Quantidade de Produtos:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label24: TLabel
            Left = 263
            Top = 1
            Width = 106
            Height = 13
            Caption = 'Total dos Produtos'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Bevel3: TBevel
            Left = 223
            Top = 2
            Width = 2
            Height = 44
          end
          object ritem: TRxCalcEdit
            Left = 129
            Top = 1
            Width = 80
            Height = 21
            AutoSize = False
            DisplayFormat = '###,###,##0'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ButtonWidth = 0
            NumGlyphs = 2
            ParentFont = False
            TabOrder = 0
          end
          object rqtde: TRxCalcEdit
            Left = 129
            Top = 24
            Width = 80
            Height = 21
            AutoSize = False
            DisplayFormat = '###,###,##0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ButtonWidth = 0
            NumGlyphs = 2
            ParentFont = False
            TabOrder = 1
          end
          object rtotal: TRxCalcEdit
            Left = 235
            Top = 15
            Width = 150
            Height = 29
            AutoSize = False
            DisplayFormat = '###,###,##0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -19
            Font.Name = 'Verdana'
            Font.Style = []
            ButtonWidth = 0
            NumGlyphs = 2
            ParentFont = False
            TabOrder = 2
          end
        end
      end
    end
    object wwDBGrid1: TwwDBGrid
      Left = 0
      Top = 69
      Width = 790
      Height = 384
      DittoAttributes.ShortCutDittoField = 0
      DittoAttributes.ShortCutDittoRecord = 0
      DittoAttributes.Options = []
      DisableThemesInTitle = False
      Selected.Strings = (
        'ITEM'#9'4'#9'Item'#9#9
        'CODPRODUTO'#9'6'#9'C'#243'digo'#9#9
        'PRODUTO'#9'36'#9'Produto'#9#9
        'CST'#9'4'#9'CST'#9#9
        'NUMERACAO'#9'4'#9'Un.'#9#9
        'SERIAL'#9'20'#9'N'#250'mero de S'#233'rie'#9#9
        'QTDE'#9'10'#9'Quantidade'#9#9
        'UNITARIO'#9'9'#9'Unit'#225'rio'#9#9
        'TOTAL'#9'10'#9'Total'#9#9
        'ALIQUOTA'#9'8'#9'ICMS'#9#9
        'mix'#9'6'#9'MIX'#9'F'#9)
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      Align = alClient
      BorderStyle = bsNone
      Ctl3D = True
      DataSource = dsvenda_produto
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
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
    object Panel5: TPanel
      Left = 0
      Top = 0
      Width = 790
      Height = 66
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 2
      object Bevel6: TBevel
        Left = 112
        Top = 5
        Width = 65
        Height = 24
      end
      object Bevel5: TBevel
        Left = 56
        Top = 4
        Width = 2
        Height = 58
      end
      object Label4: TLabel
        Left = 64
        Top = 9
        Width = 41
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Venda:'
      end
      object lvenda_codigo: TLabel
        Left = 112
        Top = 9
        Width = 65
        Height = 19
        Alignment = taCenter
        AutoSize = False
        Caption = '000000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label1: TLabel
        Left = 184
        Top = 9
        Width = 35
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Data:'
      end
      object Bevel7: TBevel
        Left = 224
        Top = 5
        Width = 77
        Height = 24
      end
      object lvenda_data: TLabel
        Left = 226
        Top = 10
        Width = 73
        Height = 18
        Alignment = taCenter
        AutoSize = False
        Caption = '00/00/0000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label5: TLabel
        Left = 296
        Top = 9
        Width = 42
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Caixa:'
        Transparent = True
      end
      object Label6: TLabel
        Left = 176
        Top = 37
        Width = 57
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Vendedor:'
        Transparent = True
      end
      object Bevel8: TBevel
        Left = 344
        Top = 5
        Width = 57
        Height = 24
      end
      object lcaixa_codigo: TLabel
        Left = 346
        Top = 9
        Width = 53
        Height = 17
        Alignment = taCenter
        AutoSize = False
        Caption = '000099'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Bevel9: TBevel
        Left = 240
        Top = 33
        Width = 161
        Height = 24
      end
      object lvendedor_codigo: TLabel
        Left = 253
        Top = 38
        Width = 40
        Height = 13
        AutoSize = False
        Caption = '000000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object lvendedor_nome: TLabel
        Left = 296
        Top = 38
        Width = 97
        Height = 13
        AutoSize = False
        Caption = 'NOME DO VENDEDOR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Bevel11: TBevel
        Left = 408
        Top = 3
        Width = 2
        Height = 59
      end
      object Label2: TLabel
        Left = 446
        Top = 9
        Width = 55
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Cliente:'
      end
      object Bevel12: TBevel
        Left = 504
        Top = 5
        Width = 277
        Height = 20
      end
      object lcliente_codigo: TLabel
        Left = 503
        Top = 8
        Width = 53
        Height = 15
        Alignment = taCenter
        AutoSize = False
        Caption = '000099'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lcliente_nome: TLabel
        Left = 560
        Top = 8
        Width = 218
        Height = 15
        AutoSize = False
        Caption = 'ANT'#212'NIO CARLOS DA CUNHA DE OLIVEIRA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label3: TLabel
        Left = 445
        Top = 28
        Width = 55
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Retirado:'
      end
      object Bevel13: TBevel
        Left = 504
        Top = 28
        Width = 277
        Height = 16
      end
      object Label7: TLabel
        Left = 445
        Top = 47
        Width = 55
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'CPF/CNPJ:'
      end
      object Bevel14: TBevel
        Left = 504
        Top = 46
        Width = 145
        Height = 16
      end
      object Label8: TLabel
        Left = 653
        Top = 47
        Width = 44
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Limite:'
      end
      object Bevel15: TBevel
        Left = 704
        Top = 46
        Width = 77
        Height = 16
      end
      object lcliente_limite: TLabel
        Left = 708
        Top = 47
        Width = 69
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = '10.000,00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lcliente_cpf: TLabel
        Left = 509
        Top = 47
        Width = 128
        Height = 18
        AutoSize = False
        Caption = '00.000.000/0001-00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object LRETIRADO: TLabel
        Left = 509
        Top = 29
        Width = 212
        Height = 13
        AutoSize = False
        Caption = 'NOME DO VENDEDOR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label10: TLabel
        Left = 64
        Top = 37
        Width = 41
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Cupom:'
      end
      object Bevel16: TBevel
        Left = 112
        Top = 33
        Width = 65
        Height = 24
      end
      object lvenda_cupom: TLabel
        Left = 112
        Top = 37
        Width = 65
        Height = 19
        Alignment = taCenter
        AutoSize = False
        Caption = '000000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object AdvShapeButton1: TAdvShapeButton
        Left = 0
        Top = 0
        Width = 57
        Height = 65
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Picture.Data = {
          89504E470D0A1A0A0000000D49484452000000300000003008060000005702F9
          870000000473424954080808087C086488000000097048597300000AF000000A
          F00142AC34980000001F74455874536F667477617265004D6163726F6D656469
          612046697265776F726B732038B568D27800000C92494441546881D59A797055
          D77DC73FE76E6FD59384246CB10823109B050641E285C48CC724D8C9A49094DA
          4CC9329371A78DCBD849D37632938E9BB8F6346D9C94284D9C18DB498A9BB80E
          F630E3186A1B63C0804D2C3518B149EC8BAC5D7AEFE949EFBEBB9DFE71EF9514
          102004B8D3DFCC1B49F79EE5FBFD9DDFEF7B7EE73C092925FF9F4DB99AC677DE
          7D7F62EFBE86A5C0178055C03C207523808DD5B4B136AC9DBF64D1F7BFFF2F9B
          E7CE9A5575ECC429CCC13CD168CC8BC5636712C9784B329138AA6BEA11A00538
          0DB403F91B847BC8C64CA0F2E68A059D9D9D55BBDED9DDB3607EEDA64C36A7F5
          F665E6819CA12A6285AA6B2B74DD206A44302286198B464EC5E2F1E644227E24
          168D1C018E0367814EC0FEC809689AD6D7D3D383616885E9D3AB364E9F5EB527
          781503269D3CD5569D4EF7D464FB73F3BC8C370F296B10AC52356595A6EA18BA
          4E246AF44723D113C5A52547814399BE4CE32DB74C690C48DD5802A6991F5054
          152451A06CC4AB3C70A27A7AE509A87C73C4731D9874F66C47756F5FCF6CB350
          98971B18A89552CE6A397662E194A995B4341F2FF4F6753D5CB768D1AF00F786
          12F03CD7B44C13CB2A288C2DF96DE04C55D54D67AAAA6E7A7BE49CBB76FF4FF5
          CB9B5EFEAF682CBE30D79FADAE5BB468DC523866151ACC9B7955D3505455058C
          F14E0838777FA2AEA5A3BDEB8DC1C101F488EE00DE78071B3301DBB60B8EE3E0
          B8AECE55ACDCA54CA86A346A4489E8C63529D5980938B653701CC7751D57715D
          F7AAF68FD1CD8BBBD20370AE65943103E9EEEEC8ABAAEA288AA20C0E0E5E4B08
          85134BE9495CCF1B57F28E18676C56285885826559B6656B96655D7308211447
          2802CF75AFA99619339074BAD706F2208BF279F372FDE27D1B377E5595D28857
          551DD6EAEA4E924A9DE3825DD9965EC1735C3C10E3C40E5C5D325A802754857C
          7E501FAD41DF6F7FBBB663F3E6EFB46ED932D3761C8AA64E253171A28C5754B4
          EBB1D8C968717173A4BCFCD08489E50726C66365966DD3D0933EF1E04744C0B1
          6D3B6FDB2E178690B967CFDDAD2FBEF844FBEF7EF7C9AED3A7C9011990EA9123
          4239724444A03202950958AA03C540E5C7EFE0EC9A3FA7EED99F3FDEFDC22F56
          515D7D283A67CEE1E4CA95C7B8F5D6F340E17A13B01530150179DBF1E3369399
          7E76FDFAC7DB5F7BED8BEDEFBF4F1E7FFB8DF83F85822FF005C004D2C14006D0
          7DFE3CD192123A1ADF5FF8012CD4F7EC2109C41F7BCC8B9695B546274E6C894C
          9E7C50AFADFD7DF2A9A75E05FAAF898094926F7FFB3BF99C6922F54871E69967
          9E3CB969D3236D6FBE99CC82ABFAA0550D901026A60854A20DE802E600860A48
          4F62BB0E6955E3B4EBE0046022AEABC43B3BA71675764E8D1F3C786FC9EBAF53
          BC71E3A9586DEDD2B2B7DE6A1B370180B67C3E397FF61CF4677EF6AD86677E6E
          749B26125C1D54153F1B5568F3E0E60BBAEE7A48CA35CF0A7107F00EA061E651
          852A5155A1B90E12BF181A0072F865EB04908B410E76764EB7B76FBFA5CC77C4
          1FD95865B47857FD8F9F5A3B79F2AC194F3C2E8FD5FF48ED304D4B012F04AF40
          5AC0970C5817FC3D525D0C7C82A7095647D8169A99A7EDCEA53F506035F08A12
          38C10566009F300C1105251868703460575A8192F6A79FFE5AA6A9699DB673E7
          A4F4E1C34E5B00DA0023ACEA14784FC0839F93F2EC3621EE532F96462BF056C4
          05C503304DA46589DC9CB93D5FDAF1D6CBCF09D16BC3171460512CC6947C1ED3
          B210FE7CFF108B460F5F0D81E2D6FAFA87732D2D8FF4EEDB777367430303600B
          101130C43070144085939F95F22CFEEFB6167872C40E35ED3921661AE0B82139
          D7C1D00D629E5709D0064635705B3249229763103020A3C367A64AB9F7521EBE
          908071BEBE7EDDC0B1637F93696A9ADCB5732719B03DBFA1A606491910F89102
          0B54B8478185E1000AC8301F5C866274A184C682BF990DF1D20D1DC530CA003E
          BF78F102BDB11191CB61020920B96C5963E98E1D9704FF47047A366D5ADDF3DE
          7BFF943D7C784EF7EEDDA4FBFB6DC707A3EAA006DE96020EA9F0CD9552BEB145
          887F14708F0A55DB84285B2E658F0A9D928B62E835E09BC083C0F70054A0ADA3
          9D68516AC9B939737E166F6EFE4B2BE857944C12AFAB43358CA6CB811F22B06B
          D1A2EFEA89C46383A74FD3D5DAEA167C595434D00365091526ABC2B2CF49D91B
          78FB40402C0994033DC0231A17A9837848CA33FF21C4060B9EF4FCD5A4A86232
          ABB6BE3A6BB0B979560846AFA8203E650A8A940829FF704502BF10C2D0E00109
          18E0A614C5B33C4F3741C861F0FB5548283013A801F6055E6C12E0A9A028F0C0
          6E21EE1550A5F8F932B2DC10002EA45CFCFAF9B6921266AEFF5764F361DC609E
          531515724A71B1289512541555D70F5E8980A2FA32A505B1A4BA9EA717A552A2
          72F264262693941AC6B37F2AE5221B9EC4CF811561E74F49795C851341227F43
          C07FC66085EAE319691EC05EC8EB20972493CC4AA7B103F009389059BEFC898C
          A2A0AB2AC23010BA9E168671EC8A04BE2CA5A9C1F32AF40BFC4DA42B9BA5A7B5
          152B97239A4C7EFA83BBEE7A69EEF2E5B7A6001DEE093BBF2DC46D0A1405BABF
          6DA9941B80823EACDDA119007FBB76EDECDB1309A53C97A3E08F9536A0213E7D
          7A93BB6C5993AEAA42E83A6A2482AA69C7629B3767AF4440035823E53F6F15E2
          F902DC6BC02F2DD03D7CC928F4F656F5BDFB6E550C8847A3A4CACA6E3FFFE8A3
          5F4BBFFEBAA1C3D73DB082FC980D500C8BBBF14FF40ABE124958F16E79F9AEC9
          BDBD0B06A554DDE0F97EF8FD9DB04581FB74CB8A4B554589C550741DA969574C
          E0210200F74BD901FCBA61C992BF2BB4B72FCCB4B6A2E317616A0028639AE45A
          5B63B9FAFA9F4681D299334F6A8AD269B6B4547930E90F426CE881AF9E0EDABB
          F8F78E739349A3B8A7E79339DFEBB84023D00ECE7D2014C3700AE5E5F6D49A1A
          2646A348DB4668DAFEAB223064AEFBB6DDD6B6B0A4B4142D12C16A6FB7157851
          811A05EE08F57D00308F1FAF8E40755451485454943B8EF3D0402643C4714802
          15C924531D0791CB110A8217F41F046270D741A8F97855D5898FE5F3F7E55C17
          D2694459198AA21C181701B7AF6F9BED79DF2899368DEEFDFB31408BC056CFDF
          8012C03401A9505A014CCFC3ECE8C0C02F378946512C0B258875153F1C0F02B5
          403C78360825369478ADAD33CFBDF08248EBBA37AFAC4CD134CD548B8B0F8D85
          C045C55CF39933EF6990C3B2C23816C00B4036018B15680D92160DBFD677F1CF
          005A00D4344D0A9E37045E004D4006FF1E92A0DDFC588C25B367D3DAD1210EB8
          AE172D2A221A8D528066F1FCF35921C415ABE58B087C59CADED2D9B31BAC0F3F
          6444CDA328B0E56352DA0AB486E584817FCA68029A81EE8044B891A923267046
          90D4807BA64D63413249A6B919339542370CE5E6584CB13DAFE7EB3B76D40375
          C06221C47C21C42421C4A867E751CBE9444DCD0E3B9D1EF25E00E6E97D42AC51
          E1D691BB73043FAE7B81933014EB23766F64D0C60BFE2E056267CEF06A571705
          C3C0320C8AE3716CDB3EFB275BB6ACDBD0D77704FFFEB5025F072C79896F6246
          25E065B3DB5D8613C4004A62B16971F88D0A95A167C3550881320264B8021A7E
          88E5F16BFC22FCDA7A67F0BC64C204547F058EDCB97DFBBAFF8673C004FCE83C
          0AEC9352768F86F39204068E1E6D94D01596CB36E0E5F388A2226223C005C748
          C2CB4D270015120807578165A91435F8B2EC04634E004ACACB51A2D17DCB76EE
          7CF414648112FCE3678394F2B894F2B23777A312A8EBE81814B0370419C177CB
          EEFE7E5AF0BD1AD6FB296066224102DFB3798673200CDA3240C966D911BCB3F1
          657412707A60E08DDA77DEF9FB823F9C0E1C0EC087770097B54B66B90A6F0958
          290220797CEFA6F1BD1DDE2D0A60C6C000B5A914B9540ACE9F1F0AA330C4CEE1
          874C25FE954A7B00BE2B127969E9A953F5F8CADA0BB4482947BD7DB86A020ABC
          1DDC302082893B03124E306340940F002B9BA52A9BA592E17C50F05DDA1B902E
          0D269C188BF181AA6E5893CBFD2A68DE0C9C1DCF37A6973CD477C2C156784E06
          93A6183E6585E545A84271FC83404380C4603807C23E040414E0CD7CFE075FC9
          E59EC357E14629E5B8C05F96C04A29F93C3CBC113E731C7E03644B8277398613
          55E06FCF4A40C61A3170387878E195026B3D3CF615F825BEC70F482907C6853C
          B0CBEE74524A0BD80A6CBD5D88B97F01AB4BE0011D6AC3441E4940307C1F182A
          95C44FDA1930F063F8D64FE015A0474A39A6ABC32B99B8DAA51342A4BE079F5A
          0C6BA7C0A78B21D10FBC11002E0296337C1C5380A3D0F56BF8AB7F87D7AE17F0
          71131869F70A31FFAF61F52CF8B31E98FB21BE90DF8F4F440132D0FC4358BB5E
          CAC6EB03F90293525EF30748BD04ABF71AC62BDB61E01CC80CC8F3B0ED41B8E9
          7ACC71A9CF35ADC068F66F42CCFA2C7CB104DC9BE0BB37FA9F49AE3B818FDAAE
          C3B78DFFB7F6BFBB1C5FB2B72551940000000049454E44AE426082}
        ParentFont = False
        TabOrder = 1
        Version = '5.4.0.0'
      end
      object AdvShapeButton2: TAdvShapeButton
        Left = 411
        Top = 5
        Width = 34
        Height = 53
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Picture.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F4000000097048597300000B1300000B1301009A9C1800000A4D694343505068
          6F746F73686F70204943432070726F66696C65000078DA9D53775893F7163EDF
          F7650F5642D8F0B1976C81002223AC08C81059A21092006184101240C585880A
          561415119C4855C482D50A489D88E2A028B867418A885A8B555C38EE1FDCA7B5
          7D7AEFEDEDFBD7FBBCE79CE7FCCE79CF0F8011122691E6A26A003952853C3AD8
          1F8F4F48C4C9BD80021548E0042010E6CBC26705C50000F00379787E74B03FFC
          01AF6F00020070D52E2412C7E1FF83BA50265700209100E02212E70B01905200
          C82E54C81400C81800B053B3640A009400006C797C422200AA0D00ECF4493E05
          00D8A993DC1700D8A21CA908008D0100992847240240BB00605581522C02C0C2
          00A0AC40222E04C0AE018059B632470280BD0500768E58900F4060008099422C
          CC0020380200431E13CD03204C03A030D2BFE0A95F7085B8480100C0CB95CD97
          4BD23314B895D01A77F2F0E0E221E2C26CB142611729106609E4229C979B2313
          48E7034CCE0C00001AF9D1C1FE383F90E7E6E4E1E666E76CEFF4C5A2FE6BF06F
          223E21F1DFFEBC8C020400104ECFEFDA5FE5E5D60370C701B075BF6BA95B00DA
          560068DFF95D33DB09A05A0AD07AF98B7938FC401E9EA150C83C1D1C0A0B0BED
          2562A1BD30E38B3EFF33E16FE08B7EF6FC401EFEDB7AF000719A4099ADC0A383
          FD71616E76AE528EE7CB0442316EF7E723FEC7857FFD8E29D1E234B15C2C158A
          F15889B850224DC779B952914421C995E212E97F32F11F96FD0993770D00AC86
          4FC04EB607B5CB6CC07EEE01028B0E58D27600407EF32D8C1A0B910010673432
          79F7000093BFF98F402B0100CD97A4E30000BCE8185CA894174CC608000044A0
          812AB041070CC114ACC00E9CC11DBCC01702610644400C24C03C104206E4801C
          0AA11896411954C03AD804B5B0031AA0119AE110B4C131380DE7E0125C81EB70
          170660189EC218BC86090441C8081361213A8811628ED822CE0817998E042261
          48349280A420E988145122C5C872A402A9426A915D4823F22D7214398D5C40FA
          90DBC820328AFC8ABC47319481B25103D4027540B9A81F1A8AC6A073D174340F
          5D8096A26BD11AB41E3D80B6A2A7D14BE87574007D8A8E6380D1310E668CD961
          5C8C87456089581A26C71663E55835568F35631D583776151BC09E61EF082402
          8B8013EC085E8410C26C82909047584C5843A825EC23B412BA085709838431C2
          272293A84FB4257A12F9C478623AB1905846AC26EE211E219E255E270E135F93
          48240EC992E44E0A21259032490B496B48DB482DA453A43ED210699C4C26EB90
          6DC9DEE408B280AC209791B7900F904F92FBC9C3E4B7143AC588E24C09A22452
          A494124A35653FE504A59F324299A0AA51CDA99ED408AA883A9F5A496DA07650
          2F5387A91334759A25CD9B1643CBA42DA3D5D09A696769F7682FE974BA09DD83
          1E4597D097D26BE807E9E7E983F4770C0D860D83C7486228196B197B19A718B7
          192F994CA605D39799C85430D7321B9967980F986F55582AF62A7C1591CA1295
          3A9556957E95E7AA545573553FD579AA0B54AB550FAB5E567DA64655B350E3A9
          09D416ABD5A91D55BBA936AECE5277528F50CF515FA3BE5FFD82FA630DB28685
          46A08648A35463B7C6198D2116C63265F15842D6725603EB2C6B984D625BB2F9
          EC4C7605FB1B762F7B4C534373AA66AC6691669DE671CD010EC6B1E0F039D99C
          4ACE21CE0DCE7B2D032D3F2DB1D66AAD66AD7EAD37DA7ADABEDA62ED72ED16ED
          EBDAEF75709D409D2C9DF53A6D3AF77509BA36BA51BA85BADB75CFEA3ED363EB
          79E909F5CAF50EE9DDD147F56DF4A3F517EAEFD6EFD11F373034083690196C31
          3863F0CC9063E86B9869B8D1F084E1A811CB68BA91C468A3D149A327B826EE87
          67E33578173E66AC6F1C62AC34DE65DC6B3C61626932DBA4C4A4C5E4BE29CD94
          6B9A66BAD1B4D374CCCCC82CDCACD8ACC9EC8E39D59C6B9E61BED9BCDBFC8D85
          A5459CC54A8B368BC796DA967CCB05964D96F7AC98563E567956F556D7AC49D6
          5CEB2CEB6DD6576C501B579B0C9B3A9BCBB6A8AD9BADC4769B6DDF14E2148F29
          D229F5536EDA31ECFCEC0AEC9AEC06ED39F661F625F66DF6CF1DCC1C121DD63B
          743B7C727475CC766C70BCEBA4E134C3A9C4A9C3E957671B67A1739DF33517A6
          4B90CB1297769717536DA78AA76E9F7ACB95E51AEEBAD2B5D3F5A39BBB9BDCAD
          D96DD4DDCC3DC57DABFB4D2E9B1BC95DC33DEF41F4F0F758E271CCE39DA79BA7
          C2F390E72F5E765E595EFBBD1E4FB39C269ED6306DC8DBC45BE0BDCB7B603A3E
          3D65FACEE9033EC63E029F7A9F87BEA6BE22DF3DBE237ED67E997E07FC9EFB3B
          FACBFD8FF8BFE179F216F14E056001C101E501BD811A81B3036B031F049904A5
          0735058D05BB062F0C3E15420C090D591F72936FC017F21BF96333DC672C9AD1
          15CA089D155A1BFA30CC264C1ED6118E86CF08DF107E6FA6F94CE9CCB60888E0
          476C88B81F69199917F97D14292A32AA2EEA51B453747174F72CD6ACE459FB67
          BD8EF18FA98CB93BDB6AB6727667AC6A6C526C63EC9BB880B8AAB8817887F845
          F1971274132409ED89E4C4D8C43D89E37302E76C9A339CE49A54967463AEE5DC
          A2B917E6E9CECB9E773C593559907C3885981297B23FE5832042502F184FE5A7
          6E4D1D13F2849B854F45BEA28DA251B1B7B84A3C92E69D5695F638DD3B7D43FA
          68864F4675C633094F522B79911992B923F34D5644D6DEACCFD971D92D39949C
          949CA3520D6996B42BD730B728B74F662B2B930DE479E66DCA1B9387CAF7E423
          F973F3DB156C854CD1A3B452AE500E164C2FA82B785B185B78B848BD485AD433
          DF66FEEAF9230B82167CBD90B050B8B0B3D8B87859F1E022BF45BB16238B5317
          772E315D52BA647869F0D27DCB68CBB296FD50E2585255F26A79DCF28E5283D2
          A5A5432B82573495A994C9CB6EAEF45AB9631561956455EF6A97D55B567F2A17
          955FAC70ACA8AEF8B046B8E6E2574E5FD57CF5796DDADADE4AB7CAEDEB48EBA4
          EB6EACF759BFAF4ABD6A41D5D086F00DAD1BF18DE51B5F6D4ADE74A17A6AF58E
          CDB4CDCACD03356135ED5BCCB6ACDBF2A136A3F67A9D7F5DCB56FDADABB7BED9
          26DAD6BFDD777BF30E831D153BDEEF94ECBCB52B78576BBD457DF56ED2EE82DD
          8F1A621BBABFE67EDDB847774FC59E8F7BA57B07F645EFEB6A746F6CDCAFBFBF
          B2096D52368D1E483A70E59B806FDA9BED9A77B5705A2A0EC241E5C127DFA67C
          7BE350E8A1CEC3DCC3CDDF997FB7F508EB48792BD23ABF75AC2DA36DA03DA1BD
          EFE88CA39D1D5E1D47BEB7FF7EEF31E36375C7358F579EA09D283DF1F9E48293
          E3A764A79E9D4E3F3DD499DC79F74CFC996B5D515DBD6743CF9E3F1774EE4CB7
          5FF7C9F3DEE78F5DF0BC70F422F762DB25B74BAD3DAE3D477E70FDE148AF5B6F
          EB65F7CBED573CAE74F44DEB3BD1EFD37FFA6AC0D573D7F8D72E5D9F79BDEFC6
          EC1BB76E26DD1CB825BAF5F876F6ED17770AEE4CDC5D7A8F78AFFCBEDAFDEA07
          FA0FEA7FB4FEB165C06DE0F860C060CFC3590FEF0E09879EFE94FFD387E1D247
          CC47D52346238D8F9D1F1F1B0D1ABDF264CE93E1A7B2A713CFCA7E56FF79EB73
          ABE7DFFDE2FB4BCF58FCD8F00BF98BCFBFAE79A9F372EFABA9AF3AC723C71FBC
          CE793DF1A6FCADCEDB7DEFB8EFBADFC7BD1F9928FC40FE50F3D1FA63C7A7D04F
          F73EE77CFEFC2FF784F3FB25D29F330000000467414D410000B18E7CFB519300
          0000206348524D00007A25000080830000F9FF000080E9000075300000EA6000
          003A980000176F925FC546000006D74944415478DA9C975B6C14E715C77FDF5C
          7676BDBBDE5DE3F5DA061B0CB6096023C046692D9A42E9035129296D2E12E185
          A8954AA496547295BEB40FE5813C2055559387903669A53C24542814A9424829
          A229948B120C310E76F0E25B7D597C61EDBDEFECCCD78719576E826DCC91463B
          D27EFACE6FCE77CEF9FE474829791CDB2E8417D804340031C0E3FE550272401E
          7808DCED927290C734B11CC07621C2C0410D7E14808E32881880065880EDFE16
          813987E40BE063E09D2E29EFAC184008F1BFF76DB0D707BFAB81D61A2004E84B
          6C9605A6800120090F8063B7E083AFAE5BE87351806D50570B57B7C0EA325666
          25A01B188649E0E95B0ED3230194C5365903CF3F8973DCE369018210055E5A6A
          EDA20011F8E693389F371DA8735E5FDEE624EDCA000CA85C18D222B05CBD4820
          E33E00B54019AC61C15E8F8AD6A3B3D3859B047A8100E005FCCEF17C8DBCE0AE
          4B0135155036E378D5413CD11194DC0F1906FC1E78FDE4467EF36E3B5B7F18A1
          D78DC8BC4D01D770287FFDE6CB1C7FFF283901A61315DB5EC2CFA211B0215972
          BFE8E9ADB0BEB912A11A1C3EFA2DEA9B8778FF8DDBAC76CA8D3EA07D4B806327
          5E656D7335763EC9BA56487D0E12B28525AA7751001326926EA359D718064505
          21404A763FBB9548651567DEFB8472140E6FDFC8E15F1CC21FF0629B596C6911
          A92A6794395290292C53318FB411B89887D736D4A2D46F88327F943612C536D9
          D1D1C8CE3D6D281E3F8A6280A2609B196429876D668836C598F9784E4E43CF08
          8CAF182005979EFB0E998E1F7404ABAA7D084538276A99D84A01616511A682B4
          2D6C55771B8C892CE5B0CC2C3B9FA967BCEF9E7DF62267DD26B932805B90F9F9
          2AA66275C160281CC6CA2791B2849416B6554014D248DB42D58A209C6D6CDB44
          5A05A499C532A7292BC704A697AA606D99D2BE37393AD01089EE425A456C338B
          9416D236B100455A482BE7004809B6859426F9EC2CA3F13B8C3F24E1B685D28A
          CBD0B50B13FD5F624B15D508A1E86508A182940E5029876566B08A292C338565
          A6B1CC2C73C94946FA4BA54F7AB9EE5ED1C52705383F33CA7F86FA3E45F50450
          8D10AA1140681E84509D685825A455741EDB44968AC47BBE606C9AE4BF125C72
          01AC1501482905C02B7FE56EA6C03BBD97BB484E8DA37A42289E109A278CAA07
          50351F42F520540DA1EA08CD6068A09FF138F2836B5CF27ABD832D2D2DE9CECE
          4EB1220021849B3407F6FEECDC9183E70703F2EAD9334C2786D08C089AB702C5
          1B41F555A0792BD0BC95689E30C3F17EFAAE8EF14FED19D1A31E6ACBE763BE78
          3C5E1C18185059A4252FA2070EE8A0FD9470EB715A9B43745DE1A5A6BF70606B
          86756DEB59B3A18D5024060A98850C338961867B6F70FF768A3FDDD9CA8DAA1F
          D3B07B3303A73E4C91F8F74FA0E75C676767E1E4C993F6630A9203AF106C7D8B
          7DFBBC4C3F808BFF000CD63675F1EA8E9B84ED39B09CC407D0FD70A127CCB9FE
          23E453CD503E46E0B5EF919ECBC29BA73294AE1C82910BEE9DB51CC0736D10FB
          88832FD45115850B976170CAB907FD127263BC71E2297EF5FA5100A2D1282F1E
          FA3D6F9DBA0F4A3D64BD2047A1BD0C9EFF367475C3877F98802BDF07EB36602E
          A7888EB0B6A98EFA286A8580CC3450ED48145383702537BB7DB4B7B703F0DBE3
          27F8E3993BB03A04C1342873E0F7427C0CA62D68DD0C0D7BAA61D32F81555FCD
          854701EC21B68A40A54E4BAD4660FF4E8825C0B0A168802FC0E9D33741A906E0
          FA8D090A49137401B200659360DD878D75309984A20A3B3601FA5E57D27B9701
          90D54A5D39FB1B55BE51A7B16BD77AA287F640640AB459A7A9D6D4F0E98D3800
          7F7EF734442B9C7B333305E6146C6B846019CC3D84AC090DF540240CAC77A4E2
          920056309A4DB23D2AA8F74343C866CDBA0A78711F4414984A80E10576B9EB5B
          40D76160084A79D8DE048606B204A60579137C0140575C9516580620FB2071FE
          0A173EFA8C74BA84E151280F68181103F67F17AA22707F0862B5400778ABA07F
          00BC3A6C5A0752802D9CA32E16A1370EEFFDCD5516942D98A816AB822DBBC1F7
          36AC6E66F566FC1DAD781A1B48EAE5C8C9128C27E0F36E181C04BBE0388AC520
          1A024D07AFD749B3D9340C4D40660CB85F82BE1E98791BF8BB947278A93EA03B
          C9527B0CEA5F80C82A58AF505503D5958E032C4825E1EE6750D504613FE40A90
          C939022C3F074C4A183121350A5F5E032E03D7815E296566B9C948032A80A720
          FA2CA27E3732BB0142E5E0D7C150405D20C6014C09690B920590B3901A80916E
          A0078803F78031202717385D6A3614CE78401867C2A906EA0DBF511B08062A75
          430FAA42F54850F2B99C9DCD640BF9747ED615C953AEA21F0712AE28C9CCDF8A
          8F351BFEFF88800AF8DC24F2BB99EC730720C50D83E5B6DAF9D924ED4AB1AFCD
          340B7DFE77008FE4D64D2186FEB00000000049454E44AE426082}
        ParentFont = False
        TabOrder = 2
        Version = '5.4.0.0'
      end
      object FlatPanel6: TFlatPanel
        Left = 856
        Top = 17
        Width = 353
        Height = 28
        ParentColor = True
        ColorHighLight = clBtnFace
        ColorShadow = clBtnFace
        TabOrder = 0
        UseDockManager = True
        object Label15: TLabel
          Left = 168
          Top = 0
          Width = 74
          Height = 24
          Caption = 'LIMITE'#13#10'DISPON'#205'VEL:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object FlatPanel9: TFlatPanel
          Left = 13
          Top = 4
          Width = 143
          Height = 20
          Color = clWindow
          TabOrder = 0
          UseDockManager = True
        end
        object FlatPanel10: TFlatPanel
          Left = 245
          Top = 4
          Width = 98
          Height = 20
          Color = clWindow
          TabOrder = 1
          UseDockManager = True
        end
      end
    end
    object pveiculo: TFlatPanel
      Left = 352
      Top = 216
      Width = 417
      Height = 225
      ParentColor = True
      Visible = False
      TabOrder = 3
      UseDockManager = True
      object Label9: TLabel
        Left = 11
        Top = 195
        Width = 50
        Height = 13
        Caption = 'Aliena'#231#227'o:'
      end
      object FlatPanel2: TFlatPanel
        Left = 2
        Top = 2
        Width = 413
        Height = 17
        Caption = 'Venda de Ve'#237'culo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Color = clBlue
        ColorHighLight = clBlue
        ColorShadow = clBlue
        TabOrder = 0
        UseDockManager = True
      end
      object Memo1: TMemo
        Left = 8
        Top = 24
        Width = 401
        Height = 161
        Lines.Strings = (
          'Memo1')
        TabOrder = 1
      end
      object Edit1: TEdit
        Left = 72
        Top = 192
        Width = 337
        Height = 21
        TabOrder = 2
        Text = 'COM ALIENA'#199#195'O FIDUCI'#193'RIA PARA '
      end
    end
  end
  object dsvenda_produto: TDataSource
    DataSet = qrvenda_produto
    Left = 172
    Top = 120
  end
  object PopupMenu1: TPopupMenu
    Left = 604
    Top = 152
    object IncluirItem1: TMenuItem
      Caption = 'Incluir Item'
      ShortCut = 113
      OnClick = bincluirClick
    end
    object ExcluirItem1: TMenuItem
      Caption = 'Excluir Item'
      ShortCut = 115
      OnClick = bexcluirClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object EfetuarTroca1: TMenuItem
      Caption = 'Efetuar Troca'
      ShortCut = 114
      OnClick = BitBtn1Click
    end
    object FinalizarVenda1: TMenuItem
      Caption = 'Finalizar Venda'
      ShortCut = 116
      OnClick = bfinalizarClick
    end
    object Oramentos1: TMenuItem
      Caption = 'Or'#231'amentos'
      ShortCut = 117
    end
    object CancelarVenda1: TMenuItem
      Caption = 'Cancelar Venda'
      ShortCut = 120
      OnClick = bcancelarClick
    end
  end
  object qrproduto_serial: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000022')
    Params = <>
    Left = 520
    Top = 72
    object qrproduto_serialSERIAL: TStringField
      DisplayLabel = 'Seriais'
      DisplayWidth = 28
      FieldName = 'SERIAL'
      Size = 30
    end
    object qrproduto_serialNUMERONOTA: TStringField
      DisplayLabel = 'NF.COMPRA'
      DisplayWidth = 9
      FieldName = 'NUMERONOTA'
      Visible = False
      Size = 6
    end
    object qrproduto_serialESTOQUE: TFloatField
      DisplayWidth = 10
      FieldName = 'ESTOQUE'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrproduto_serialDATACOMPRA: TDateTimeField
      DisplayLabel = 'DATA'
      DisplayWidth = 10
      FieldName = 'DATACOMPRA'
      Visible = False
    end
    object qrproduto_serialPRECOCUSTO: TFloatField
      DisplayLabel = 'PR.CUSTO'
      DisplayWidth = 8
      FieldName = 'PRECOCUSTO'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrproduto_serialPRECOVENDA: TFloatField
      DisplayLabel = 'PR.VENDA'
      DisplayWidth = 8
      FieldName = 'PRECOVENDA'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrproduto_serialCLIENTE: TStringField
      DisplayWidth = 18
      FieldName = 'CLIENTE'
      Visible = False
      Size = 80
    end
    object qrproduto_serialDATAVENDA: TDateTimeField
      DisplayLabel = 'DATA SA'#205'DA'
      DisplayWidth = 10
      FieldName = 'DATAVENDA'
      Visible = False
    end
    object qrproduto_serialCODNOTA: TStringField
      DisplayLabel = 'NF.COMPRA'
      DisplayWidth = 9
      FieldName = 'CODNOTA'
      Visible = False
      Size = 6
    end
    object qrproduto_serialCODIGO: TStringField
      DisplayWidth = 6
      FieldName = 'CODIGO'
      Required = True
      Visible = False
      Size = 6
    end
    object qrproduto_serialCODPRODUTO: TStringField
      DisplayWidth = 6
      FieldName = 'CODPRODUTO'
      Visible = False
      Size = 6
    end
    object qrproduto_serialCODCLIENTE: TStringField
      DisplayWidth = 6
      FieldName = 'CODCLIENTE'
      Visible = False
      Size = 6
    end
    object qrproduto_serialSITUACAO: TIntegerField
      DisplayWidth = 10
      FieldName = 'SITUACAO'
      Visible = False
    end
    object qrproduto_serialCODITEM: TStringField
      FieldName = 'CODITEM'
      Visible = False
      Size = 6
    end
    object qrproduto_serialCODFORNECEDOR: TStringField
      DisplayWidth = 6
      FieldName = 'CODFORNECEDOR'
      Visible = False
      Size = 6
    end
    object qrproduto_serialCODVENDA_ITEM: TStringField
      FieldName = 'CODVENDA_ITEM'
      Visible = False
      Size = 6
    end
    object qrproduto_serialFILTRO: TIntegerField
      FieldName = 'FILTRO'
      Visible = False
    end
    object qrproduto_serialCODVENDA: TStringField
      FieldName = 'CODVENDA'
      Visible = False
      Size = 6
    end
  end
  object qrproduto_grade: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000021')
    Params = <>
    Left = 492
    Top = 72
    object qrproduto_gradeNUMERACAO: TStringField
      DisplayLabel = 'N'#186'.'
      DisplayWidth = 11
      FieldName = 'NUMERACAO'
      Size = 10
    end
    object qrproduto_gradeESTOQUE: TFloatField
      DisplayLabel = 'Estoque'
      DisplayWidth = 10
      FieldName = 'ESTOQUE'
    end
    object qrproduto_gradeCOR: TStringField
      DisplayLabel = 'Cor'
      DisplayWidth = 15
      FieldName = 'COR'
      Size = 15
    end
    object qrproduto_gradeCODBARRA: TStringField
      DisplayWidth = 15
      FieldName = 'CODBARRA'
      Visible = False
      Size = 13
    end
    object qrproduto_gradeCODIGO: TStringField
      DisplayWidth = 6
      FieldName = 'CODIGO'
      Required = True
      Visible = False
      Size = 6
    end
    object qrproduto_gradeCODPRODUTO: TStringField
      DisplayWidth = 6
      FieldName = 'CODPRODUTO'
      Visible = False
      Size = 6
    end
  end
  object qrapoio: TZQuery
    Connection = frmmodulo.ConexaoLocal
    BeforePost = qrapoioBeforePost
    SQL.Strings = (
      'select * from cl00004')
    Params = <>
    Left = 448
    Top = 72
    object qrapoioCODPRODUTO: TStringField
      FieldName = 'CODPRODUTO'
      Size = 6
    end
    object qrapoioPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Size = 60
    end
    object qrapoioCF: TStringField
      FieldName = 'CF'
    end
    object qrapoioSTR: TStringField
      FieldName = 'STR'
    end
    object qrapoioUN: TStringField
      FieldName = 'UN'
      Size = 15
    end
    object qrapoioQTDE: TStringField
      FieldName = 'QTDE'
      Size = 15
    end
    object qrapoioUNITARIO: TStringField
      FieldName = 'UNITARIO'
      Size = 15
    end
    object qrapoioTOTAL: TStringField
      FieldName = 'TOTAL'
      Size = 15
    end
    object qrapoioICMS: TStringField
      FieldName = 'ICMS'
      Size = 15
    end
    object qrapoioIPI: TStringField
      FieldName = 'IPI'
      Size = 15
    end
    object qrapoioIPI_ALIQUOTA: TStringField
      FieldName = 'IPI_ALIQUOTA'
      Size = 15
    end
    object qrapoioTEXTO1: TStringField
      FieldName = 'TEXTO1'
    end
    object qrapoioTEXTO2: TStringField
      FieldName = 'TEXTO2'
    end
    object qrapoioTEXTO3: TStringField
      FieldName = 'TEXTO3'
    end
    object qrapoioTEXTO4: TStringField
      FieldName = 'TEXTO4'
    end
    object qrapoioTEXTO6: TStringField
      FieldName = 'TEXTO6'
    end
    object qrapoioTEXTO7: TStringField
      FieldName = 'TEXTO7'
    end
    object qrapoioTEXTO8: TStringField
      FieldName = 'TEXTO8'
    end
    object qrapoioTEXTO9: TStringField
      FieldName = 'TEXTO9'
    end
    object qrapoioTEXTO10: TStringField
      FieldName = 'TEXTO10'
    end
  end
  object qrcliente: TZQuery
    Connection = frmmodulo.econexao2
    SQL.Strings = (
      'select * from c000007')
    Params = <>
    Left = 136
    Top = 88
  end
  object qrvenda_produto1: TZQuery
    Connection = frmmodulo.econexao2
    OnCalcFields = qrvenda_produto1CalcFields
    SQL.Strings = (
      'select * from CL00001')
    Params = <>
    Left = 208
    Top = 120
    object qrvenda_produto1ITEM: TStringField
      DisplayLabel = 'Item'
      DisplayWidth = 4
      FieldName = 'ITEM'
      Size = 3
    end
    object qrvenda_produto1CODPRODUTO: TStringField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 6
      FieldName = 'CODPRODUTO'
      Size = 6
    end
    object qrvenda_produto1PRODUTO: TStringField
      DisplayLabel = 'Produto'
      DisplayWidth = 36
      FieldName = 'PRODUTO'
      Size = 80
    end
    object qrvenda_produto1CST: TStringField
      DisplayWidth = 4
      FieldName = 'CST'
      Size = 3
    end
    object qrvenda_produto1NUMERACAO: TStringField
      DisplayLabel = 'Un.'
      DisplayWidth = 4
      FieldName = 'NUMERACAO'
      Size = 10
    end
    object qrvenda_produto1SERIAL: TStringField
      DisplayLabel = 'N'#250'mero de S'#233'rie'
      DisplayWidth = 20
      FieldName = 'SERIAL'
      Size = 30
    end
    object qrvenda_produto1QTDE: TFloatField
      DisplayLabel = 'Quantidade'
      DisplayWidth = 10
      FieldName = 'QTDE'
      DisplayFormat = '########0.00'
    end
    object qrvenda_produto1UNITARIO: TFloatField
      DisplayLabel = 'Unit'#225'rio'
      DisplayWidth = 9
      FieldName = 'UNITARIO'
      DisplayFormat = '########0.00'
    end
    object qrvenda_produto1TOTAL: TFloatField
      DisplayLabel = 'Total'
      DisplayWidth = 10
      FieldName = 'TOTAL'
      DisplayFormat = '########0.00'
    end
    object qrvenda_produto1ALIQUOTA: TFloatField
      DisplayLabel = 'ICMS'
      DisplayWidth = 8
      FieldName = 'ALIQUOTA'
    end
    object qrvenda_produto1MIX: TFloatField
      DisplayWidth = 6
      FieldKind = fkCalculated
      FieldName = 'MIX'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object qrvenda_produto1CODGRADE: TStringField
      DisplayWidth = 6
      FieldName = 'CODGRADE'
      Visible = False
      Size = 6
    end
    object qrvenda_produto1CODBARRAS: TStringField
      FieldName = 'CODBARRAS'
      Visible = False
      Size = 13
    end
    object qrvenda_produto1DESCONTO: TFloatField
      FieldName = 'DESCONTO'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrvenda_produto1ACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrvenda_produto1TIPO: TIntegerField
      DisplayWidth = 10
      FieldName = 'TIPO'
      Visible = False
    end
    object qrvenda_produto1TERMINAL: TStringField
      FieldName = 'TERMINAL'
      Visible = False
      Size = 4
    end
  end
  object qrvenda_contasreceber: TZQuery
    Connection = frmmodulo.econexao2
    BeforeInsert = qrvenda_contasreceberBeforeInsert
    BeforeEdit = qrvenda_contasreceberBeforeEdit
    BeforePost = qrvenda_contasreceberBeforePost
    AfterPost = qrvenda_contasreceberAfterPost
    SQL.Strings = (
      'select * from cL00002')
    Params = <>
    Left = 136
    Top = 152
    object qrvenda_contasreceberPRESTACAO: TIntegerField
      DisplayLabel = 'N'#186
      DisplayWidth = 3
      FieldName = 'PRESTACAO'
    end
    object qrvenda_contasreceberVENCIMENTO: TDateTimeField
      DisplayLabel = 'Vencimento'
      DisplayWidth = 14
      FieldName = 'VENCIMENTO'
    end
    object qrvenda_contasreceberTIPO: TStringField
      DisplayLabel = 'Tipo'
      DisplayWidth = 16
      FieldName = 'TIPO'
    end
    object qrvenda_contasreceberDOCUMENTO: TStringField
      DisplayLabel = 'Documento'
      DisplayWidth = 18
      FieldName = 'DOCUMENTO'
    end
    object qrvenda_contasreceberVALOR: TFloatField
      DisplayLabel = 'Valor-R$'
      DisplayWidth = 13
      FieldName = 'VALOR'
      DisplayFormat = '###,###,##0.00'
    end
    object qrvenda_contasreceberTERMINAL: TStringField
      FieldName = 'TERMINAL'
      Visible = False
      Size = 4
    end
  end
  object qrvenda_produto: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from CL00001')
    Params = <>
    Left = 136
    Top = 120
    object qrvenda_produtoITEM: TStringField
      DisplayLabel = 'Item'
      DisplayWidth = 4
      FieldName = 'ITEM'
      Size = 3
    end
    object qrvenda_produtoCODPRODUTO: TStringField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 6
      FieldName = 'CODPRODUTO'
      Size = 6
    end
    object qrvenda_produtoPRODUTO: TStringField
      DisplayLabel = 'Produto'
      DisplayWidth = 36
      FieldName = 'PRODUTO'
      Size = 80
    end
    object qrvenda_produtoCST: TStringField
      DisplayWidth = 4
      FieldName = 'CST'
      Size = 3
    end
    object qrvenda_produtoNUMERACAO: TStringField
      DisplayLabel = 'Un.'
      DisplayWidth = 4
      FieldName = 'NUMERACAO'
      Size = 10
    end
    object qrvenda_produtoSERIAL: TStringField
      DisplayLabel = 'N'#250'mero de S'#233'rie'
      DisplayWidth = 20
      FieldName = 'SERIAL'
      Size = 30
    end
    object qrvenda_produtoQTDE: TFloatField
      DisplayLabel = 'Quantidade'
      DisplayWidth = 10
      FieldName = 'QTDE'
      DisplayFormat = '###,###,##0.000'
    end
    object qrvenda_produtoUNITARIO: TFloatField
      DisplayLabel = 'Unit'#225'rio'
      DisplayWidth = 9
      FieldName = 'UNITARIO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrvenda_produtoTOTAL: TFloatField
      DisplayLabel = 'Total'
      DisplayWidth = 10
      FieldName = 'TOTAL'
      DisplayFormat = '###,###,##0.00'
    end
    object qrvenda_produtoALIQUOTA: TFloatField
      DisplayLabel = 'ICMS'
      DisplayWidth = 8
      FieldName = 'ALIQUOTA'
      DisplayFormat = '###,###,##0.00'
    end
    object qrvenda_produtomix: TFloatField
      DisplayLabel = 'MIX'
      DisplayWidth = 6
      FieldKind = fkCalculated
      FieldName = 'mix'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object qrvenda_produtoCODBARRAS: TStringField
      FieldName = 'CODBARRAS'
      Visible = False
      Size = 13
    end
    object qrvenda_produtoDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      Visible = False
    end
    object qrvenda_produtoACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
      Visible = False
    end
    object qrvenda_produtoCODGRADE: TStringField
      FieldName = 'CODGRADE'
      Visible = False
      Size = 6
    end
    object qrvenda_produtoTIPO: TIntegerField
      FieldName = 'TIPO'
      Visible = False
    end
    object qrvenda_produtoTERMINAL: TStringField
      FieldName = 'TERMINAL'
      Visible = False
      Size = 4
    end
    object qrvenda_produtoPISCOFINS: TStringField
      FieldName = 'PISCOFINS'
      Visible = False
      Size = 1
    end
    object qrvenda_produtoCODSUBGRUPO: TStringField
      FieldName = 'CODSUBGRUPO'
      Visible = False
      Size = 6
    end
  end
end
