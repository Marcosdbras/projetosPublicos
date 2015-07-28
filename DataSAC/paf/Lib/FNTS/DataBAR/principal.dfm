object frmPrincipal: TfrmPrincipal
  Left = 242
  Top = 27
  Width = 791
  Height = 668
  Caption = 'DataSAC 2.0 Atendimento - Bares e Restaurantes'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 121
    Width = 775
    Height = 2
    Align = alTop
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 775
    Height = 121
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Bevel2: TBevel
      Left = 305
      Top = 0
      Width = 2
      Height = 121
      Align = alLeft
    end
    object Panel19: TPanel
      Left = 0
      Top = 0
      Width = 305
      Height = 121
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object GroupBox1: TGroupBox
        Left = 8
        Top = 8
        Width = 89
        Height = 49
        Caption = 'Mesa/Comanda'
        TabOrder = 0
        object lb_mesa: TLabel
          Left = 3
          Top = 16
          Width = 82
          Height = 23
          Alignment = taCenter
          AutoSize = False
          Caption = '---'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object GroupBox3: TGroupBox
        Left = 8
        Top = 64
        Width = 89
        Height = 49
        Caption = 'Valor Atual'
        Enabled = False
        TabOrder = 1
        object ed_total_comanda: TRzNumericEdit
          Left = 8
          Top = 16
          Width = 73
          Height = 22
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          IntegersOnly = False
          DisplayFormat = '###,###,##0.00'
        end
      end
      object pn_mesa: TRzPanel
        Left = 184
        Top = 0
        Width = 121
        Height = 121
        Align = alRight
        BorderOuter = fsNone
        Enabled = False
        TabOrder = 2
        object bt_consumo: TAdvGlowButton
          Tag = 99
          Left = 28
          Top = 18
          Width = 82
          Height = 49
          Caption = 'F6 - Consumo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = bt_consumoClick
          Appearance.BorderColor = 12631218
          Appearance.BorderColorHot = 10079963
          Appearance.BorderColorDown = 4548219
          Appearance.Color = 14671574
          Appearance.ColorTo = 15000283
          Appearance.ColorChecked = 7915518
          Appearance.ColorCheckedTo = 11918331
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 7778289
          Appearance.ColorDownTo = 4296947
          Appearance.ColorHot = 15465983
          Appearance.ColorHotTo = 11332863
          Appearance.ColorMirror = 14144974
          Appearance.ColorMirrorTo = 15197664
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
          Enabled = False
        end
        object bt_cancelar: TAdvGlowButton
          Tag = 99
          Left = 28
          Top = 79
          Width = 82
          Height = 25
          Caption = 'Cancelar'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = bt_cancelarClick
          Appearance.BorderColor = 12631218
          Appearance.BorderColorHot = 10079963
          Appearance.BorderColorDown = 4548219
          Appearance.Color = 14671574
          Appearance.ColorTo = 15000283
          Appearance.ColorChecked = 7915518
          Appearance.ColorCheckedTo = 11918331
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 7778289
          Appearance.ColorDownTo = 4296947
          Appearance.ColorHot = 15465983
          Appearance.ColorHotTo = 11332863
          Appearance.ColorMirror = 14144974
          Appearance.ColorMirrorTo = 15197664
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
          Enabled = False
        end
      end
      object GroupBox2: TGroupBox
        Left = 104
        Top = 8
        Width = 97
        Height = 49
        Caption = 'Abertura'
        TabOrder = 3
        object lb_data: TLabel
          Left = 8
          Top = 15
          Width = 3
          Height = 13
        end
        object lb_hora: TLabel
          Left = 8
          Top = 31
          Width = 3
          Height = 13
        end
        object imgVerde: TAdvOfficeImage
          Left = 0
          Top = 20
          Width = 25
          Height = 25
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          Version = '1.1.0.0'
          Visible = False
        end
        object imgLar: TAdvOfficeImage
          Left = 28
          Top = 20
          Width = 25
          Height = 25
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F949444154789C5D95DB8E13471086BFEE9EF3C1637B310B4A20A02C
            107193B788C49B244FC49B90FB3C40A25C444A046C0E2C6BD8F5FA38E3B1E7D0
            9D0BBA61B4964A9E6EF57C5553F557B530C6B0FDF92701286B3E10002110DBFF
            C0EE4B40033DD000878135D67AA01FBD7869C4E6D58F437060810990594BED3A
            B06734D00235500EACB24E8E4007F49E8DC6811320070A60626D6CF7E201DC81
            37C0CA9A63B99F711BBE7D39B7C0BBC0A9B5997590DA73BD8D72032C802B20B2
            8E018C0D407BB7A22E2CF8EB7DD33DDAAECBB3ABF7ABB3CD62336ECB4388417A
            81EAD2223D4CEF8EB7937BE3F3348BCE7D257D0B76F5F89C16DF162DB3519FEE
            9BEED1E2C3F2FBCBB78BA7F5623BCD55904C54E2F9CAC8A6356637AFDA0FCBBA
            3C96757CFA709664D34CF84A7683221F81C6B3B98A87F0EDBA3C9B9F5F3FD5AB
            FDECD168944D2329534FE28FC674C543B1ED74383F7F1D6CDE5DAB3854C68F83
            5A2661A5A4D8D95AEC817A18796A733BBB996FBF3DACCBE983F1387B3C8964EC
            0BA41088FB0F31CF7F20F3238AFC95B8F8ED976271B16AC627A36F641ACD816B
            60696BE0DFCE790E8CF7AB6A1C8559727A6724935188270518038104B347F51D
            692C98DE198BF7FF5E155D592F84542798DEA92A043C07778D130369DF121527
            233F9915C864502B7384CB5FC16854B320CC03FC30F09B8349841F8C4C53C796
            E301CA03C440EB0AF09594CA4B73E94DC788C8FF74A2D7A035F437A05B8CD7E1
            E5017EA42446FA4606814DB3B23CE10D75E9A41406AAED425FF7E958EA2C4419
            F3E958DF421F813E4253D3999E4E2923E3142903A33FC9D0718C37D0A66BE96A
            9479FBC5A1EDF6320CD264024AA04D07A64176357401A691ECB61507A1FAB898
            7446E8CABEDF389D4BFBD03068E962966E837AB5FBB858984A79F44906F90891
            8EE8B39C2E8D2995E46AB937495CD4E1B43898AE5B0D64D8B826EAACF0DDAC58
            E4A793BFBFAABBF8FD3FE7FE5B3FCE4F1F3F10599AA094A2EBA0DC945CBEF960
            76D7EDF1D993EF5661165DD02EE7C09A2F03ACF56C3A1C7C055C7961F07776FF
            4EF6E0BA5417AF7FEFFFF8EF3C8FA727CA0B02D1EDD7A65ADEE8A8F50ECF9E3C
            5F6627E9A510D55F46B773ABF19DCD427B3BF21510A1B51FE691F093F8186C8B
            B62D9BECB85CC5BA379E8A3313DE3B6BC2495E45A9F74E50FE698EBB3718EDE0
            E5307237F82BA74F004CDF4A4F56C92C9ECBFB93BB42C6B9F0FC00D0E8BEECBB
            C30DCDFAD2E8766EC11F6D70A59D2DFD102EF9328F35D0A07529F4F1DAB4C7DC
            B089ADF37E50FCB58D7669C19F53E2E04E8A470B3676ED52B5B49D3BBC891AAB
            8ACA02DD6DE4A4D802BDB875870E075964A1915DBB8B450FE47BB04037665B6B
            1A30C21803E01CC88113E7C81FD4420CBEAC1FC0DAC15E0F307AF1D2FC0F9578
            FA002F28FA8F0000000049454E44AE426082}
          Version = '1.1.0.0'
          Visible = False
        end
        object imgVerm: TAdvOfficeImage
          Left = 56
          Top = 20
          Width = 25
          Height = 25
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003FD49444154789C6D95CB8EDC441486BF2ABB7C6DB7DDDDE999043290
            C06814B1E10DD8F12EB0CAABC02A6FC28625124B84108B40C20CD224D399999E
            BEBBEDF6A58A45CA132BA2A5A35695ECEFFC3EE7AF53C218C3E6C7EF05E0D850
            8007F84068FF3DBB2F010DB4400594BDA86CB4403B7CFEC288F50FDFF5C19E05
            46C0C0466CD79E7D4603355000BB5EE436C9016880D6B56A3A700424400A8C6C
            64762FECC13BF01A58DAE858DDCF741BCABE9C58E011706C636A13C4F6B9D6AA
            5C0373E006086C6200630568F723D5A9053F2EEAE6C97A9D9FDECC96A7EBF93A
            ABB7A58F31D2F5DC261E46E5F828DB8C8EB3F378109C2B29950577FDB82F8BB2
            4D1B58D5C745DD3CB9BD5E7E7D75717B56DC6CC689F0A2B10C5D258C3C14C66C
            7779FDEEAED855DB223CFA6C1A0DC603A1A46C7A4D3E00956B6B15F6E1EB757E
            3ABBB839D3F3FDF449381C4C1C2923E9A04619CDA313B135DABF7AF5CA5B5DDE
            3A81728C177A850CFDDC91626B7BB1078ABEF2D8D676BA78B7FEB25CE6E39324
            1D3C8D02193A120988A79F61BEF996411090FEFC93B8FCF59774FE76596593E1
            E7320A66C02DB0B03D50FFE7942C5FE65910C4D1F17828A37182CA0638698CF4
            244EBD47953B225F309EA4E2505469B32942E138939EAB7CC0ED1ADA1D9C1088
            DB86209DA42A3A4A9181673DA0A12DE1E56FA035CE768E9F78A8A5525545243C
            7F68CA7D68392EE0B880E879DD019423A5E30E13E91E8D109E7AFF44ABA16DA1
            5C405363DC169578A8C0952015AEBA875A9E70FBBEECACE42BB76E42A5DB2C95
            26F211C62A6F6AA80FD01C1065412D1B1A258D8C6384E319F3DE861DC7B83D6F
            76473A1F86CE7E5E55CDDEF7BD381B811418DD405B21AA12AA125D4A76454EE9
            3A6D38CA1AD0B97DBFEAFBBCF3E7FD91CE26F16673B7DA5EDFDD8DE34FA6220A
            4384D088BA42D72EBA14E4BAE07AB337519416FE83B4344DB3ECD9B0EAC34B3E
            CC8A79F27074F169D1846FFFFE47BD0E82E4E11727228E231CD7A1A96197E75C
            FD7B6DB677F5E1D9D9B3A59F046FCC7E3103567C1860B56BCBD1C197C08D1378
            1783C7D3C1C9CDD679F3FB1FED9FE7E749389D38CAF344BD5D997CBED041E596
            CFCEBE5AC493F84AB6F95FBAA967D6E35B5B85FA63E54B20406BE527BE505170
            F076595D6FABC1E17215EAD6B84E1C1BFFE8B40AC683DC8FDC4BD9EC5EEAFDF6
            354677F05D5F7937F8F39E9540B7B574641E3D0867CEA3EC08152642290F84A6
            6D76BA2AEF4CBEBAD24D3DB3E06B2B6E67674BDB874B3ECC630D5468BD1387F2
            561FCA04D6A14DDEF69ABFB26A17167C5F920EDE59F160C1C6AEBB522DECC9ED
            DF449575456E81DD6DD459B1065AF1D11DDA1F6481850676DD5D2CBA67DFD202
            BB315BDBD08011C618802E81EC25E912A95E2F44EFCBDA1EACEEEDB500C3E72F
            CC7F8262FC4BDCB12B090000000049454E44AE426082}
          Version = '1.1.0.0'
          Visible = False
        end
      end
      object GroupBox5: TGroupBox
        Left = 104
        Top = 64
        Width = 97
        Height = 49
        Caption = 'Gar'#231'on/Antend.'
        Enabled = False
        TabOrder = 4
        object lb_funci: TLabel
          Left = 8
          Top = 20
          Width = 81
          Height = 13
          AutoSize = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
      end
    end
    object pn_consumo: TRzPanel
      Left = 307
      Top = 0
      Width = 468
      Height = 121
      Align = alClient
      BorderOuter = fsStatus
      Enabled = False
      TabOrder = 1
      object RzPanel2: TRzPanel
        Left = 1
        Top = 1
        Width = 466
        Height = 18
        Align = alTop
        BorderOuter = fsBump
        Caption = 'Lan'#231'amento de Consumo'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object GroupBox4: TGroupBox
        Left = 7
        Top = 21
        Width = 370
        Height = 46
        Caption = 'Produto'
        Enabled = False
        TabOrder = 1
        object ed_produto_codigo: TEdit
          Left = 8
          Top = 16
          Width = 129
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnEnter = ed_produto_codigoEnter
          OnKeyPress = ed_produto_codigoKeyPress
        end
        object ed_produto_nome: TEdit
          Left = 144
          Top = 16
          Width = 217
          Height = 24
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
      end
      object gp_qtde: TGroupBox
        Left = 7
        Top = 69
        Width = 106
        Height = 46
        Caption = 'Quantidade'
        Enabled = False
        TabOrder = 2
        object ed_qtde: TRzNumericEdit
          Left = 8
          Top = 16
          Width = 89
          Height = 24
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnEnter = ed_qtdeEnter
          OnExit = ed_qtdeExit
          OnKeyPress = ed_qtdeKeyPress
          IntegersOnly = False
          DisplayFormat = '###,###,##0.000'
        end
      end
      object GroupBox6: TGroupBox
        Left = 161
        Top = 69
        Width = 106
        Height = 46
        Caption = 'Unit'#225'rio'
        Enabled = False
        TabOrder = 3
        object ed_unitario: TRzNumericEdit
          Left = 8
          Top = 16
          Width = 89
          Height = 24
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          IntegersOnly = False
          DisplayFormat = '###,###,##0.000'
        end
      end
      object GroupBox7: TGroupBox
        Left = 270
        Top = 69
        Width = 108
        Height = 46
        Caption = 'Total'
        Enabled = False
        TabOrder = 4
        object ed_total: TRzNumericEdit
          Left = 8
          Top = 16
          Width = 89
          Height = 24
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          IntegersOnly = False
          DisplayFormat = '###,###,##0.000'
        end
      end
      object GroupBox8: TGroupBox
        Left = 116
        Top = 69
        Width = 42
        Height = 46
        Caption = 'Un'
        Enabled = False
        TabOrder = 5
        object ed_unidade: TEdit
          Left = 7
          Top = 16
          Width = 28
          Height = 21
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
      end
      object bt_gravar_consumo: TAdvGlowButton
        Tag = 99
        Left = 388
        Top = 74
        Width = 79
        Height = 41
        Caption = 'Gravar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 6
        OnClick = bt_gravar_consumoClick
        Appearance.BorderColor = 12631218
        Appearance.BorderColorHot = 10079963
        Appearance.BorderColorDown = 4548219
        Appearance.Color = 14671574
        Appearance.ColorTo = 15000283
        Appearance.ColorChecked = 7915518
        Appearance.ColorCheckedTo = 11918331
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 7778289
        Appearance.ColorDownTo = 4296947
        Appearance.ColorHot = 15465983
        Appearance.ColorHotTo = 11332863
        Appearance.ColorMirror = 14144974
        Appearance.ColorMirrorTo = 15197664
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
        Enabled = False
      end
      object bt_balanca: TAdvGlowButton
        Tag = 99
        Left = 387
        Top = 33
        Width = 79
        Height = 25
        Caption = 'F10 - Balan'#231'a'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 7
        OnClick = bt_balancaClick
        Appearance.BorderColor = 12631218
        Appearance.BorderColorHot = 10079963
        Appearance.BorderColorDown = 4548219
        Appearance.Color = 14671574
        Appearance.ColorTo = 15000283
        Appearance.ColorChecked = 7915518
        Appearance.ColorCheckedTo = 11918331
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 7778289
        Appearance.ColorDownTo = 4296947
        Appearance.ColorHot = 15465983
        Appearance.ColorHotTo = 11332863
        Appearance.ColorMirror = 14144974
        Appearance.ColorMirrorTo = 15197664
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
        Enabled = False
      end
    end
  end
  object pg_principal: TPageControl
    Left = 0
    Top = 123
    Width = 1280
    Height = 523
    ActivePage = TabSheet1
    Align = alCustom
    TabOrder = 1
    OnChange = pg_principalChange
    object TabSheet1: TTabSheet
      Caption = 'F1 | Mesas'
      object Panel18: TPanel
        Left = 0
        Top = 0
        Width = 1272
        Height = 60
        Align = alTop
        BevelOuter = bvLowered
        TabOrder = 0
        object AdvGlowButton226: TAdvGlowButton
          Tag = 15
          Left = 715
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '015'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 0
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton227: TAdvGlowButton
          Tag = 14
          Left = 664
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '014'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 1
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton228: TAdvGlowButton
          Tag = 13
          Left = 613
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '013'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 2
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton229: TAdvGlowButton
          Tag = 12
          Left = 562
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '012'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 3
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton230: TAdvGlowButton
          Tag = 11
          Left = 511
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '011'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 4
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton231: TAdvGlowButton
          Tag = 10
          Left = 460
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '010'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 5
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton232: TAdvGlowButton
          Tag = 9
          Left = 409
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '009'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 6
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton233: TAdvGlowButton
          Tag = 8
          Left = 358
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '008'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 7
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton234: TAdvGlowButton
          Tag = 7
          Left = 307
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '007'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 8
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton235: TAdvGlowButton
          Tag = 6
          Left = 256
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '006'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 9
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton236: TAdvGlowButton
          Tag = 5
          Left = 205
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '005'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 10
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton237: TAdvGlowButton
          Tag = 4
          Left = 154
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '004'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 11
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton238: TAdvGlowButton
          Tag = 3
          Left = 103
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '003'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 12
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton239: TAdvGlowButton
          Tag = 2
          Left = 52
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '002'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 13
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object bt_mesa_001: TAdvGlowButton
          Tag = 1
          Left = 1
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '001'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 14
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
      end
      object Panel16: TPanel
        Left = 0
        Top = 60
        Width = 1272
        Height = 60
        Align = alTop
        BevelOuter = bvLowered
        TabOrder = 1
        object AdvGlowButton196: TAdvGlowButton
          Tag = 30
          Left = 715
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '030'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 0
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton197: TAdvGlowButton
          Tag = 29
          Left = 664
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '029'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 1
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton198: TAdvGlowButton
          Tag = 28
          Left = 613
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '028'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 2
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton199: TAdvGlowButton
          Tag = 27
          Left = 562
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '027'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 3
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton200: TAdvGlowButton
          Tag = 26
          Left = 511
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '026'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 4
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton201: TAdvGlowButton
          Tag = 25
          Left = 460
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '025'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 5
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton202: TAdvGlowButton
          Tag = 24
          Left = 409
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '024'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 6
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton203: TAdvGlowButton
          Tag = 23
          Left = 358
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '023'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 7
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton204: TAdvGlowButton
          Tag = 22
          Left = 307
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '022'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 8
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton205: TAdvGlowButton
          Tag = 21
          Left = 256
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '021'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 9
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton206: TAdvGlowButton
          Tag = 20
          Left = 205
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '020'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 10
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton207: TAdvGlowButton
          Tag = 19
          Left = 154
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '019'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 11
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton208: TAdvGlowButton
          Tag = 18
          Left = 103
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '018'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 12
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton209: TAdvGlowButton
          Tag = 17
          Left = 52
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '017'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 13
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton210: TAdvGlowButton
          Tag = 16
          Left = 1
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '016'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 14
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
      end
      object Panel14: TPanel
        Left = 0
        Top = 120
        Width = 1272
        Height = 60
        Align = alTop
        BevelOuter = bvLowered
        TabOrder = 2
        object AdvGlowButton166: TAdvGlowButton
          Tag = 45
          Left = 715
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '045'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 0
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton167: TAdvGlowButton
          Tag = 44
          Left = 664
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '044'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 1
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton168: TAdvGlowButton
          Tag = 43
          Left = 613
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '043'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 2
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton169: TAdvGlowButton
          Tag = 42
          Left = 562
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '042'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 3
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton170: TAdvGlowButton
          Tag = 41
          Left = 511
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '041'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 4
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton171: TAdvGlowButton
          Tag = 40
          Left = 460
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '040'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 5
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton172: TAdvGlowButton
          Tag = 39
          Left = 409
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '039'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 6
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton173: TAdvGlowButton
          Tag = 38
          Left = 358
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '038'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 7
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton174: TAdvGlowButton
          Tag = 37
          Left = 307
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '037'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 8
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton175: TAdvGlowButton
          Tag = 36
          Left = 256
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '036'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 9
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton176: TAdvGlowButton
          Tag = 35
          Left = 205
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '035'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 10
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton177: TAdvGlowButton
          Tag = 34
          Left = 154
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '034'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 11
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton178: TAdvGlowButton
          Tag = 33
          Left = 103
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '033'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 12
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton179: TAdvGlowButton
          Tag = 32
          Left = 52
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '032'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 13
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton180: TAdvGlowButton
          Tag = 31
          Left = 1
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '031'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 14
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
      end
      object Panel12: TPanel
        Left = 0
        Top = 180
        Width = 1272
        Height = 60
        Align = alTop
        BevelOuter = bvLowered
        TabOrder = 3
        object AdvGlowButton136: TAdvGlowButton
          Tag = 60
          Left = 715
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '060'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 0
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton137: TAdvGlowButton
          Tag = 59
          Left = 664
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '059'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 1
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton138: TAdvGlowButton
          Tag = 58
          Left = 613
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '058'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 2
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton139: TAdvGlowButton
          Tag = 57
          Left = 562
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '057'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 3
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton140: TAdvGlowButton
          Tag = 56
          Left = 511
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '056'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 4
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton141: TAdvGlowButton
          Tag = 55
          Left = 460
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '055'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 5
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton142: TAdvGlowButton
          Tag = 54
          Left = 409
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '054'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 6
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton143: TAdvGlowButton
          Tag = 53
          Left = 358
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '053'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 7
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton144: TAdvGlowButton
          Tag = 52
          Left = 307
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '052'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 8
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton145: TAdvGlowButton
          Tag = 51
          Left = 256
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '051'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 9
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton146: TAdvGlowButton
          Tag = 50
          Left = 205
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '050'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 10
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton147: TAdvGlowButton
          Tag = 49
          Left = 154
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '049'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 11
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton148: TAdvGlowButton
          Tag = 48
          Left = 103
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '048'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 12
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton149: TAdvGlowButton
          Tag = 47
          Left = 52
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '047'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 13
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton150: TAdvGlowButton
          Tag = 46
          Left = 1
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '046'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 14
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
      end
      object Panel10: TPanel
        Left = 0
        Top = 240
        Width = 1272
        Height = 60
        Align = alTop
        BevelOuter = bvLowered
        TabOrder = 4
        object AdvGlowButton106: TAdvGlowButton
          Tag = 75
          Left = 715
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '075'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 0
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton107: TAdvGlowButton
          Tag = 74
          Left = 664
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '074'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 1
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton108: TAdvGlowButton
          Tag = 73
          Left = 613
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '073'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 2
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton109: TAdvGlowButton
          Tag = 72
          Left = 562
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '072'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 3
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton110: TAdvGlowButton
          Tag = 71
          Left = 511
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '071'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 4
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton111: TAdvGlowButton
          Tag = 70
          Left = 460
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '070'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 5
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton112: TAdvGlowButton
          Tag = 69
          Left = 409
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '069'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 6
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton113: TAdvGlowButton
          Tag = 68
          Left = 358
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '068'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 7
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton114: TAdvGlowButton
          Tag = 67
          Left = 307
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '067'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 8
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton115: TAdvGlowButton
          Tag = 66
          Left = 256
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '066'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 9
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton116: TAdvGlowButton
          Tag = 65
          Left = 205
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '065'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 10
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton117: TAdvGlowButton
          Tag = 64
          Left = 154
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '064'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 11
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton118: TAdvGlowButton
          Tag = 63
          Left = 103
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '063'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 12
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton119: TAdvGlowButton
          Tag = 62
          Left = 52
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '062'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 13
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton120: TAdvGlowButton
          Tag = 61
          Left = 1
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '061'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 14
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
      end
      object Panel8: TPanel
        Left = 0
        Top = 300
        Width = 1272
        Height = 60
        Align = alTop
        BevelOuter = bvLowered
        TabOrder = 5
        object AdvGlowButton76: TAdvGlowButton
          Tag = 90
          Left = 715
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '090'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 0
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton77: TAdvGlowButton
          Tag = 89
          Left = 664
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '089'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 1
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton78: TAdvGlowButton
          Tag = 88
          Left = 613
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '088'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 2
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton79: TAdvGlowButton
          Tag = 87
          Left = 562
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '087'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 3
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton80: TAdvGlowButton
          Tag = 86
          Left = 511
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '086'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 4
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton81: TAdvGlowButton
          Tag = 85
          Left = 460
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '085'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 5
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton82: TAdvGlowButton
          Tag = 84
          Left = 409
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '084'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 6
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton83: TAdvGlowButton
          Tag = 83
          Left = 358
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '083'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 7
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton84: TAdvGlowButton
          Tag = 82
          Left = 307
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '082'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 8
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton85: TAdvGlowButton
          Tag = 81
          Left = 256
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '081'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 9
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton86: TAdvGlowButton
          Tag = 80
          Left = 205
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '080'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 10
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton87: TAdvGlowButton
          Tag = 79
          Left = 154
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '079'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 11
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton88: TAdvGlowButton
          Tag = 78
          Left = 103
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '078'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 12
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton89: TAdvGlowButton
          Tag = 77
          Left = 52
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '077'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 13
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton90: TAdvGlowButton
          Tag = 76
          Left = 1
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '076'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 14
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
      end
      object Panel6: TPanel
        Left = 0
        Top = 360
        Width = 1272
        Height = 60
        Align = alTop
        BevelOuter = bvLowered
        TabOrder = 6
        object AdvGlowButton46: TAdvGlowButton
          Tag = 105
          Left = 715
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '105'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 0
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton47: TAdvGlowButton
          Tag = 104
          Left = 664
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '104'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 1
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton48: TAdvGlowButton
          Tag = 103
          Left = 613
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '103'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 2
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton49: TAdvGlowButton
          Tag = 102
          Left = 562
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '102'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 3
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton50: TAdvGlowButton
          Tag = 101
          Left = 511
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '101'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 4
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton51: TAdvGlowButton
          Tag = 100
          Left = 460
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '100'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 5
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton52: TAdvGlowButton
          Tag = 99
          Left = 409
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '099'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 6
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton53: TAdvGlowButton
          Tag = 98
          Left = 358
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '098'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 7
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton54: TAdvGlowButton
          Tag = 97
          Left = 307
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '097'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 8
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton55: TAdvGlowButton
          Tag = 96
          Left = 256
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '096'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 9
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton56: TAdvGlowButton
          Tag = 95
          Left = 205
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '095'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 10
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton57: TAdvGlowButton
          Tag = 94
          Left = 154
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '094'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 11
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton58: TAdvGlowButton
          Tag = 93
          Left = 103
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '093'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 12
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton59: TAdvGlowButton
          Tag = 92
          Left = 52
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '092'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 13
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton60: TAdvGlowButton
          Tag = 91
          Left = 1
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '091'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 14
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
      end
      object Panel5: TPanel
        Left = 0
        Top = 420
        Width = 1272
        Height = 60
        Align = alTop
        BevelOuter = bvLowered
        TabOrder = 7
        object bt_comanda: TAdvGlowButton
          Tag = 99
          Left = 562
          Top = 1
          Width = 203
          Height = 58
          Align = alLeft
          Caption = 'F5 - Comanda'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = bt_comandaClick
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
        end
        object AdvGlowButton35: TAdvGlowButton
          Tag = 116
          Left = 511
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '116'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 1
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton36: TAdvGlowButton
          Tag = 115
          Left = 460
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '115'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 2
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton37: TAdvGlowButton
          Tag = 114
          Left = 409
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '114'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 3
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton38: TAdvGlowButton
          Tag = 113
          Left = 358
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '113'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 4
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton39: TAdvGlowButton
          Tag = 112
          Left = 307
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '112'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 5
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton40: TAdvGlowButton
          Tag = 111
          Left = 256
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '111'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 6
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton41: TAdvGlowButton
          Tag = 110
          Left = 205
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '110'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 7
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton42: TAdvGlowButton
          Tag = 109
          Left = 154
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '109'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 8
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton43: TAdvGlowButton
          Tag = 108
          Left = 103
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '108'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 9
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton44: TAdvGlowButton
          Tag = 107
          Left = 52
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '107'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 10
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
        object AdvGlowButton45: TAdvGlowButton
          Tag = 106
          Left = 1
          Top = 1
          Width = 51
          Height = 58
          Align = alLeft
          Caption = '106'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000170000001608060000002B7607
            05000003F049444154789C6D95CB72D4461486BFBEE9AE99B1C18009602AA10C
            59A5F20279AD6417963C54D67981649154C22D011B5F187BACCB8CD45277362D
            505199AA5333DD257DE79F73FE3E2DBCF73CFFE72701A8100688801848C37714
            F625E08011E881DD2CFA1023303E7FF4C28B9FDFFE38074701980145883CACA3
            F08C032CB005EA59342149070CC0A8839A099C0125B004F642ACC25E3A834FE0
            0D701562624D1F3F6D98F07219807780BB210E42823C3C3706951BE012380792
            9018C007014E7FA17A19C00FFAD63E6EAAFA497DF1F149B3B9598D76170B9042
            A921C98B5DB9BFBAC9F656AFE23C79A5B432013CF5E353594C685A1154DFED5B
            FB7873B9FEAEFE7071DCB7D57E594659B2CCB5D7486FBD6FEBC6561FB675BFDB
            A6AB7B07595C14426935CC9ADC01BD0EB54AE7F0A6AA9F5467E7C78CDB83C347
            AB22DE5332CA2479B4E4365F89AE1AE237272FA3B39B4B55A7DA4B1D6D451637
            52CA2AF4A205B673E579A8EDC16E7DFD4DB7ADF7EF3FD82F5647B95489404AC9
            6DF390EFE31FD0B762CCE21751BDF975D9AED77DB15A1C49999C0217C03AF4C0
            FC9F5356B66D578BB4C896779632C94AE2A844EB0C2F05ADD8B1532D32532CF6
            F784EDBAE5306C5325D4AD99AB62404F0D9D0E4E0AE47224C9160B13674B9432
            08010E4FE72D7FD9DF7038AEB842C411DA4486DE654A98C5E8BB347034A03420
            665E5780914AAA34CA651C95442AC20B1078461C976ECDE0074637E0B5416825
            35D2184CD4D34D622520F4DC97939554A4AC1BB54BFC5246C408E9F1C0E00710
            31F89E416E611C70A3F2B1CC8955E41BC738E3783DF3E674A41B5D466D773D0C
            6267A2A2588114583720BCC54B8D276240D2D535AE93E3225F0D83F34D78BF9F
            7C2EC38F7E7EA4CD32BBD9EAEBEAFCECC2DBADC4F88C542C487581F10B844BE8
            5A4173D9F8BD7CB18D93C5CE797B35B3613F1DA221187F9A159779B9F75A1E8E
            E9D987B7C6BC4CCBC37B47222F32A48CC15A6EAA2D67EFDF7B55F7DDF1D3A757
            2A4EDED5EEFA14B8E6F300B33A9463825F01E7CA44AFF3E25691DC6FD49B93DF
            C77717AFCB45B6AFB48A44356CFCA6FEE8CAD8EC9E3DFB76AD8BFC64E3B77F5A
            EC69F07815AA60BF547E0524786F749288284ABB8771697D6F0BD75729CEEB43
            93FBAF1F1CF75152342231FF6E7CF347EBEBBFF17E82D773E5D3E06F267F028C
            DED9518A46A5D96952C4773295945A9808708EB1DE0EBB8F3B579D58EC69009F
            057175982DE31C2EF93C8F1DD0E37D3D8AFEA2757DD9BA2A0DC9C759F3AF83DA
            75007F2AC9049FACD805B00FEBA954EB7072E737511F5CD104E0741B4D56B4C0
            28BEB843E7832C09D024ACA78BC5CDECBB0BC069CCDA100EF0C27B0F302590B3
            24532233EB8598FDB37106B3B3BD11E0F9A317FE3FB5C4FA65243F200A000000
            0049454E44AE426082}
          TabOrder = 11
          OnClick = bt_mesa_001Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Layout = blGlyphTopAdjusted
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 360
    Top = 636
    Width = 777
    Height = 15
    Align = alCustom
    BevelOuter = bvNone
    TabOrder = 2
    Visible = False
    object grid: TNextGrid
      Left = 10
      Top = 12
      Width = 777
      Height = 24
      Align = alCustom
      AppearanceOptions = [aoHighlightSlideCells]
      HideScrollBar = False
      Options = [goEscClearEdit, goGrid]
      SelectionMoveDirection = mdRight
      TabOrder = 0
      TabStop = True
      WantTabs = True
      OnCellClick = gridCellClick
      object NxTextColumn1: TNxTextColumn
        Cursor = crHandPoint
        DefaultWidth = 54
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Position = 0
        SortType = stAlphabetic
        Width = 54
      end
      object NxTextColumn2: TNxTextColumn
        Cursor = crHandPoint
        DefaultWidth = 54
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Position = 1
        SortType = stAlphabetic
        Width = 54
      end
      object NxTextColumn3: TNxTextColumn
        Cursor = crHandPoint
        DefaultWidth = 54
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Position = 2
        SortType = stAlphabetic
        Width = 54
      end
      object NxTextColumn4: TNxTextColumn
        Cursor = crHandPoint
        DefaultWidth = 54
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Position = 3
        SortType = stAlphabetic
        Width = 54
      end
      object NxTextColumn5: TNxTextColumn
        Cursor = crHandPoint
        DefaultWidth = 54
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Position = 4
        SortType = stAlphabetic
        Width = 54
      end
      object NxTextColumn6: TNxTextColumn
        Cursor = crHandPoint
        DefaultWidth = 54
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Position = 5
        SortType = stAlphabetic
        Width = 54
      end
      object NxTextColumn7: TNxTextColumn
        Cursor = crHandPoint
        DefaultWidth = 54
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Position = 6
        SortType = stAlphabetic
        Width = 54
      end
      object NxTextColumn8: TNxTextColumn
        Cursor = crHandPoint
        DefaultWidth = 54
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Position = 7
        SortType = stAlphabetic
        Width = 54
      end
      object NxTextColumn9: TNxTextColumn
        Cursor = crHandPoint
        DefaultWidth = 54
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Position = 8
        SortType = stAlphabetic
        Width = 54
      end
      object NxTextColumn10: TNxTextColumn
        Cursor = crHandPoint
        DefaultWidth = 54
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Position = 9
        SortType = stAlphabetic
        Width = 54
      end
      object NxTextColumn11: TNxTextColumn
        Cursor = crHandPoint
        DefaultWidth = 54
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Position = 10
        SortType = stAlphabetic
        Width = 54
      end
      object NxTextColumn12: TNxTextColumn
        Cursor = crHandPoint
        DefaultWidth = 54
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Position = 11
        SortType = stAlphabetic
        Width = 54
      end
      object NxTextColumn13: TNxTextColumn
        Cursor = crHandPoint
        DefaultWidth = 54
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Position = 12
        SortType = stAlphabetic
        Width = 54
      end
      object NxTextColumn14: TNxTextColumn
        Cursor = crHandPoint
        DefaultWidth = 54
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Position = 13
        SortType = stAlphabetic
        Width = 54
      end
    end
  end
  object query: TIBCQuery
    Connection = frmModulo.Conexao
    Left = 523
    Top = 112
  end
  object qrConsumo: TIBCQuery
    Connection = frmModulo.Conexao
    Left = 555
    Top = 112
  end
  object PopupMenu1: TPopupMenu
    Left = 280
    Top = 495
    object Mess1: TMenuItem
      Caption = 'Mesas'
      ShortCut = 112
      OnClick = Mess1Click
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object Comanda1: TMenuItem
      Caption = 'Comanda'
      ShortCut = 116
      OnClick = bt_comandaClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Consumo1: TMenuItem
      Caption = 'Consumo'
      ShortCut = 117
      OnClick = Consumo1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Balana1: TMenuItem
      Caption = 'Balan'#231'a'
      ShortCut = 121
      OnClick = Balana1Click
    end
  end
  object qrbuffer: TIBCQuery
    Connection = frmModulo.Conexao
    Left = 531
    Top = 176
  end
  object qrapoio: TIBCQuery
    Connection = frmModulo.Conexao
    Left = 523
    Top = 112
  end
  object timer_mesa_aberta: TTimer
    Enabled = False
    Interval = 10000
    OnTimer = timer_mesa_abertaTimer
    Left = 419
    Top = 112
  end
  object qrmesa_aberta: TIBCQuery
    Connection = frmModulo.Conexao
    Left = 579
    Top = 168
  end
  object wnxp1: TWinXP
    Left = 372
    Top = 100
  end
end
