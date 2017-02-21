object frmproduto_pedido_item: Tfrmproduto_pedido_item
  Left = 178
  Top = 270
  BorderStyle = bsToolWindow
  Caption = 'PEDIDO DE COMPRA | Edi'#231#227'o de Itens'
  ClientHeight = 286
  ClientWidth = 765
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = Pop2
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 385
    Top = 0
    Width = 3
    Height = 241
    Align = alLeft
  end
  object pgravar: TFlatPanel
    Left = 0
    Top = 247
    Width = 765
    Height = 39
    ParentColor = True
    ColorHighLight = clBtnFace
    ColorShadow = clBtnFace
    Align = alBottom
    TabOrder = 0
    UseDockManager = True
    object Label11: TLabel
      Left = 475
      Top = 21
      Width = 51
      Height = 13
      Caption = 'ESTOQUE:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label12: TLabel
      Left = 612
      Top = 21
      Width = 43
      Height = 13
      Caption = 'VENDAS:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 543
      Top = 21
      Width = 65
      Height = 17
      DataField = 'ESTOQUE_ATUAL'
      DataSource = dssugestao
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 673
      Top = 21
      Width = 65
      Height = 17
      DataField = 'vendas'
      DataSource = dssugestao
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText3: TDBText
      Left = 475
      Top = 4
      Width = 357
      Height = 17
      DataField = 'fornecedor'
      DataSource = frmproduto_pedido.dspedido_produto2
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object bgravar: TAdvGlowButton
      Left = 71
      Top = 6
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
      Left = 188
      Top = 6
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
  object bar: TProgressBar
    Left = 0
    Top = 241
    Width = 765
    Height = 6
    Align = alBottom
    TabOrder = 1
  end
  object Panel5: TPanel
    Left = 0
    Top = 0
    Width = 385
    Height = 241
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 2
    object Bevel2: TBevel
      Left = 0
      Top = 49
      Width = 385
      Height = 3
      Align = alTop
    end
    object Bevel3: TBevel
      Left = 0
      Top = 199
      Width = 385
      Height = 3
      Align = alBottom
    end
    object Panel1: TPanel
      Left = 0
      Top = 52
      Width = 385
      Height = 57
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object Label1: TLabel
        Left = 8
        Top = 11
        Width = 42
        Height = 13
        Caption = 'Produto:'
      end
      object Label2: TLabel
        Left = 8
        Top = 35
        Width = 43
        Height = 13
        Caption = 'Unidade:'
      end
      object DBEdit30: TDBEdit
        Left = 195
        Top = 6
        Width = 185
        Height = 21
        Color = clBtnFace
        DataField = 'produto'
        DataSource = dspedido_item
        TabOrder = 1
      end
      object DBEdit1: TDBEdit
        Left = 88
        Top = 31
        Width = 64
        Height = 21
        Color = clBtnFace
        DataField = 'unidade'
        DataSource = dspedido_item
        TabOrder = 2
      end
      object eproduto: TRzButtonEdit
        Left = 88
        Top = 6
        Width = 105
        Height = 21
        Text = '8888888888889'
        FocusColor = 10550008
        TabOrder = 0
        OnExit = eprodutoExit
        OnKeyPress = eprodutoKeyPress
        OnButtonClick = eprodutoButtonClick
      end
    end
    object Panel2: TPanel
      Left = 0
      Top = 202
      Width = 385
      Height = 39
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      object Label6: TLabel
        Left = 8
        Top = 11
        Width = 48
        Height = 13
        Caption = 'Recebido:'
      end
      object Label7: TLabel
        Left = 208
        Top = 11
        Width = 28
        Height = 13
        Caption = 'Falta:'
      end
      object DBEdit5: TDBEdit
        Left = 88
        Top = 7
        Width = 89
        Height = 21
        DataField = 'RECEBIDO'
        DataSource = dspedido_item
        TabOrder = 0
        OnExit = DBEdit5Exit
        OnKeyPress = DBEdit5KeyPress
      end
      object DBEdit6: TDBEdit
        Left = 256
        Top = 7
        Width = 89
        Height = 21
        DataField = 'FALTA'
        DataSource = dspedido_item
        TabOrder = 1
        OnExit = DBEdit2Exit
        OnKeyPress = eprodutoKeyPress
      end
    end
    object Panel3: TPanel
      Left = 0
      Top = 109
      Width = 422
      Height = 90
      BevelOuter = bvNone
      TabOrder = 2
      object Label3: TLabel
        Left = 8
        Top = 7
        Width = 60
        Height = 13
        Caption = 'Quantidade:'
      end
      object Label4: TLabel
        Left = 8
        Top = 35
        Width = 58
        Height = 13
        Caption = 'Unit'#225'rio-R$:'
      end
      object Label5: TLabel
        Left = 8
        Top = 60
        Width = 45
        Height = 13
        Caption = 'Total-R$:'
      end
      object lponto: TLabel
        Left = 181
        Top = -1
        Width = 13
        Height = 25
        Cursor = crHelp
        Hint = 
          'Este produto n'#227'o pode ser alterado,'#13#10'devido ele possuir uma grad' +
          'e de pre'#231'os'#13#10'ou um controle de Seriais, neste caso'#13#10'ser'#225' necess'#225 +
          'rio excluir o item para que'#13#10'o sistema possa refazer a grade/ser' +
          'iais'#13#10'atribuidos a ele.'
        Caption = '?'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -21
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        Transparent = True
        Visible = False
      end
      object DBEdit2: TDBEdit
        Left = 88
        Top = 3
        Width = 89
        Height = 21
        DataField = 'QTDE'
        DataSource = dspedido_item
        TabOrder = 0
        OnExit = DBEdit2Exit
        OnKeyPress = eprodutoKeyPress
      end
      object DBEdit3: TDBEdit
        Left = 88
        Top = 31
        Width = 89
        Height = 21
        DataField = 'UNITARIO'
        DataSource = dspedido_item
        TabOrder = 1
        OnExit = DBEdit3Exit
        OnKeyPress = DBEdit3KeyPress
      end
      object DBEdit4: TDBEdit
        Left = 88
        Top = 56
        Width = 89
        Height = 21
        DataField = 'TOTAL'
        DataSource = dspedido_item
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnKeyPress = DBEdit4KeyPress
      end
      object bgrade: TBitBtn
        Left = 183
        Top = 28
        Width = 178
        Height = 25
        Caption = 'Pedir pela Grade de N'#250'meros'
        TabOrder = 3
        Visible = False
        OnClick = bgradeClick
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          20000000000000040000C40E0000C40E00000000000000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A97151A9C38E
          68FFC08B66FFBE8864FFBB8561FFB9835FFFB47E5CFFB27C5AFFB17B58FFAE79
          57FFAD7656FFAB7554FFA97353FFA97151FFA97151A9FFFFFF00C8926CFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA97251FFFFFFFF00CA946EFFFFFF
          FFFFEBB060FFFFFFFFFFB2B2B2FFAEAEAEFFA5A5A5FFFEFAF7FFA2A2A2FFFEFA
          F7FF989898FF959595FF919191FFFFFFFFFFAA7353FFFFFFFF00CC976FFFFFFF
          FFFFFEFDFBFFFEFCFBFFFEFBF9FFFEFBF9FFFEFAF7FFFEFAF7FFFEFAF7FFFEFA
          F7FFFDF8F4FFFCF6F3FFFCF6F3FFFFFFFFFFAC7554FFFFFFFF00D19C73FFFFFF
          FFFFEFB462FFFFFFFFFFB5B5B5FFB3B3B3FFABABABFFFEFAF7FFA8A8A8FFFDF8
          F5FFA2A2A2FF9E9E9EFF9B9B9BFFFFFFFFFFB07A58FFFFFFFF00D49E75FFFFFF
          FFFFFEFCFAFFFEFBF9FFFEFAF8FFFEFAF8FFFEFAF6FFFEFAF7FFFCF7F4FFFCF7
          F2FFFCF6F0FFFCF5EFFFFCF4EEFFFFFFFFFFB27C5AFFFFFFFF00D5A076FFFFFF
          FFFFF3B663FFFFFFFFFFBABABAFFB8B8B8FFB2B2B2FFFEFAF7FFAFAFAFFFFCF6
          F0FFA9A9A9FFA7A7A7FFA5A5A5FFFFFFFFFFB57E5CFFFFFFFF00D8A279FFFFFF
          FFFFFEFAF8FFFEFAF7FFFEFAF6FFFDF8F6FFFCF7F2FFFEFAF7FFFCF6F0FFFCF5
          EFFFFBF3ECFFFAF1EAFFFAF0E8FFFFFFFFFFB7815EFFFFFFFF00D9A379FFFFFF
          FFFFF6B965FFFFFFFFFFBDBDBDFFBBBBBBFFB7B7B7FFFEFAF7FFB5B5B5FFFCF3
          EDFFB1B1B1FFB0B0B0FFADADADFFFFFFFFFFBA8560FFFFFFFF00DBA47AFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBD8763FFFFFFFF00DCA77BFFDCA7
          7BFFDCA77BFFDCA77BFFDCA77BFFDCA77BFFDCA77BFFDCA77BFFDCA77BFFDCA7
          7BFFDCA77BFFDCA77BFFDCA77BFFDCA77BFFC08B66FFFFFFFF00DDAC85FDE8B9
          92FFE8B992FFE8B992FFE8B992FFE8B992FFE8B992FFE8B992FFE8B992FFE8B9
          92FFE8B992FFE8B992FFE8B992FFE8B992FFC1906FFDFFFFFF00A971516BDDB1
          8DF4DCA77BFFDCA67AFFDAA47AFFD8A279FFD5A076FFD49E75FFD29D73FFCF9A
          72FFCE9970FFCB966FFFC9946CFFC49A7AF4A971516BFFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
      end
    end
    object Panel4: TPanel
      Left = 0
      Top = 0
      Width = 385
      Height = 49
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 3
      object linicio_remarcado: TLabel
        Left = 171
        Top = 20
        Width = 29
        Height = 13
        Caption = 'In'#237'cio:'
        Visible = False
      end
      object lfim_remarcado: TLabel
        Left = 121
        Top = 4
        Width = 20
        Height = 13
        Caption = 'Fim:'
      end
      object Label8: TLabel
        Left = 11
        Top = 4
        Width = 29
        Height = 13
        Caption = 'In'#237'cio:'
      end
      object Label9: TLabel
        Left = 234
        Top = 8
        Width = 96
        Height = 13
        Caption = 'Per'#237'odo de Vendas :'
      end
      object ldias: TLabel
        Left = 254
        Top = 22
        Width = 31
        Height = 16
        Caption = '...    '
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 284
        Top = 24
        Width = 20
        Height = 13
        Caption = 'Dias'
      end
      object ldataini_remarcado: TDateEdit
        Left = 10
        Top = 20
        Width = 100
        Height = 21
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
        NumGlyphs = 1
        TabOrder = 0
        Text = '01/01/0001'
        OnExit = ldataini_remarcadoExit
        OnKeyPress = eprodutoKeyPress
      end
      object ldatafim_remarcado: TDateEdit
        Left = 120
        Top = 20
        Width = 104
        Height = 21
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
        NumGlyphs = 1
        ReadOnly = True
        TabOrder = 1
        Text = '31/12/2099'
        OnExit = ldataini_remarcadoExit
        OnKeyPress = eprodutoKeyPress
      end
    end
  end
  object Panel6: TPanel
    Left = 388
    Top = 0
    Width = 377
    Height = 241
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 3
    object GRID5: TwwDBGrid
      Left = 0
      Top = 17
      Width = 377
      Height = 224
      DittoAttributes.ShortCutDittoField = 0
      DittoAttributes.ShortCutDittoRecord = 0
      DittoAttributes.Options = []
      DisableThemesInTitle = False
      ControlType.Strings = (
        'produto;CustomEdit;COMBOPRODUTO;F'
        'SITUACAO;ImageIndex;Original Size')
      Selected.Strings = (
        'CODIGO'#9'6'#9'C'#243'digo'#9'F'
        'CODBARRA'#9'13'#9'C'#243'd.Barra'#9'F'
        'produto'#9'32'#9'Produto'#9'F'
        'UNIDADE'#9'2'#9'UN'#9'F'
        'sugestao'#9'9'#9'Sugest'#227'o'#9'F')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      Align = alClient
      DataSource = dssugestao
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      ParentFont = False
      TabOrder = 0
      TitleAlignment = taCenter
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
      UseTFields = False
      OnDblClick = GRID5DblClick
      OnKeyPress = GRID5KeyPress
      PaintOptions.AlternatingRowColor = 16053492
      PaintOptions.ActiveRecordColor = clBlack
    end
    object Panel7: TPanel
      Left = 0
      Top = 0
      Width = 377
      Height = 17
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Sugest'#227'o de Compra'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
  end
  object Pop2: TPopupMenu
    Left = 372
    Top = 61
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
  object dspedido_item: TDataSource
    DataSet = frmproduto_pedido.qrpedido_item
    Left = 336
    Top = 61
  end
  object qrgrade_pedido: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000039')
    Params = <>
    Left = 304
    Top = 48
  end
  object qrsugestao: TZQuery
    Connection = frmmodulo.Conexao
    OnCalcFields = qrsugestaoCalcFields
    Active = True
    SQL.Strings = (
      'select pro.*, est.* from c000025 pro,'
      'c000100 est'
      ' where'
      'pro.codigo = est.codproduto')
    Params = <>
    Left = 400
    Top = 112
    object qrsugestaoCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrsugestaoCODBARRA: TStringField
      FieldName = 'CODBARRA'
      Size = 13
    end
    object qrsugestaoPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Size = 60
    end
    object qrsugestaoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 2
    end
    object qrsugestaoCODFORNECEDOR: TStringField
      FieldName = 'CODFORNECEDOR'
      Size = 6
    end
    object qrsugestaoESTOQUE: TFloatField
      FieldName = 'ESTOQUE'
      DisplayFormat = '###,###,###0.000'
    end
    object qrsugestaosugestao: TFloatField
      FieldKind = fkCalculated
      FieldName = 'sugestao'
      DisplayFormat = '###,###,###0.000'
      Calculated = True
    end
    object qrsugestaovendas: TFloatField
      FieldKind = fkCalculated
      FieldName = 'vendas'
      DisplayFormat = '###,###,###0.000'
      Calculated = True
    end
    object qrsugestaoPRECOCUSTO: TFloatField
      FieldName = 'PRECOCUSTO'
      DisplayFormat = '###,###,###0.000'
    end
    object qrsugestaoPRECOVENDA: TFloatField
      FieldName = 'PRECOVENDA'
      DisplayFormat = '###,###,###0.000'
    end
    object qrsugestaoESTOQUE_ATUAL: TFloatField
      FieldName = 'ESTOQUE_ATUAL'
    end
    object qrsugestaoSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
  end
  object dssugestao: TDataSource
    DataSet = qrsugestao
    Left = 400
    Top = 149
  end
  object QUERY: TZQuery
    Connection = frmmodulo.Conexao
    Params = <>
    Left = 432
    Top = 112
  end
  object qrloc: TZQuery
    Connection = frmmodulo.Conexao
    Params = <>
    Left = 240
    Top = 100
  end
end
