object frmemitente: Tfrmemitente
  Left = 356
  Top = 186
  Width = 422
  Height = 465
  BorderIcons = []
  Caption = 'Configura'#231#227'o de Emitente'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label8: TLabel
    Left = 10
    Top = 16
    Width = 45
    Height = 13
    Caption = 'C'#243'digo:'
  end
  object Label9: TLabel
    Left = 10
    Top = 40
    Width = 78
    Height = 13
    Caption = 'Raz'#227'o Social:'
  end
  object Label10: TLabel
    Left = 10
    Top = 64
    Width = 64
    Height = 13
    Caption = 'N.Fantasia:'
  end
  object Label11: TLabel
    Left = 10
    Top = 88
    Width = 58
    Height = 13
    Caption = 'Endere'#231'o:'
  end
  object Label12: TLabel
    Left = 10
    Top = 112
    Width = 40
    Height = 13
    Caption = 'Bairro:'
  end
  object Label13: TLabel
    Left = 10
    Top = 136
    Width = 45
    Height = 13
    Caption = 'Cidade:'
  end
  object Label14: TLabel
    Left = 150
    Top = 162
    Width = 19
    Height = 13
    Caption = 'UF:'
  end
  object Label15: TLabel
    Left = 211
    Top = 162
    Width = 28
    Height = 13
    Caption = 'CEP:'
  end
  object Label16: TLabel
    Left = 10
    Top = 184
    Width = 34
    Height = 13
    Caption = 'CNPJ:'
  end
  object Label17: TLabel
    Left = 250
    Top = 184
    Width = 17
    Height = 13
    Caption = 'IE:'
  end
  object Label18: TLabel
    Left = 186
    Top = 208
    Width = 36
    Height = 13
    Caption = 'Email:'
  end
  object Label19: TLabel
    Left = 10
    Top = 232
    Width = 71
    Height = 13
    Caption = 'Home-Page:'
  end
  object Label20: TLabel
    Left = 10
    Top = 256
    Width = 77
    Height = 13
    Caption = 'Respons'#225'vel:'
  end
  object Label21: TLabel
    Left = 10
    Top = 282
    Width = 46
    Height = 13
    Caption = 'Celular:'
  end
  object Label37: TLabel
    Left = 271
    Top = 112
    Width = 32
    Height = 13
    Caption = 'Fone:'
  end
  object Label1: TLabel
    Left = 10
    Top = 341
    Width = 32
    Height = 13
    Caption = 'Logo:'
  end
  object Label55: TLabel
    Left = 271
    Top = 279
    Width = 95
    Height = 13
    Caption = 'Dia Vencimento:'
  end
  object Label44: TLabel
    Left = 254
    Top = 136
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
  object Label24: TLabel
    Left = 10
    Top = 162
    Width = 35
    Height = 13
    AutoSize = False
    Caption = 'IBGE:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label27: TLabel
    Left = 10
    Top = 208
    Width = 33
    Height = 13
    AutoSize = False
    Caption = 'IM:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object DBEdit3: TDBEdit
    Left = 90
    Top = 12
    Width = 65
    Height = 21
    DataField = 'CODIGO'
    DataSource = dsemitente
    TabOrder = 0
    OnExit = DBEdit3Exit
    OnKeyPress = DBEdit3KeyPress
  end
  object DBEdit4: TDBEdit
    Left = 90
    Top = 36
    Width = 313
    Height = 21
    DataField = 'NOME'
    DataSource = dsemitente
    TabOrder = 1
    OnKeyPress = DBEdit3KeyPress
  end
  object DBEdit5: TDBEdit
    Left = 90
    Top = 60
    Width = 313
    Height = 21
    DataField = 'FANTASIA'
    DataSource = dsemitente
    TabOrder = 2
    OnKeyPress = DBEdit3KeyPress
  end
  object DBEdit6: TDBEdit
    Left = 90
    Top = 84
    Width = 313
    Height = 21
    DataField = 'ENDERECO'
    DataSource = dsemitente
    TabOrder = 3
    OnKeyPress = DBEdit3KeyPress
  end
  object DBEdit7: TDBEdit
    Left = 90
    Top = 108
    Width = 175
    Height = 21
    DataField = 'BAIRRO'
    DataSource = dsemitente
    TabOrder = 4
    OnKeyPress = DBEdit3KeyPress
  end
  object DBEdit8: TDBEdit
    Left = 124
    Top = 132
    Width = 141
    Height = 21
    DataField = 'CIDADE'
    DataSource = dsemitente
    TabOrder = 6
    OnKeyPress = DBEdit3KeyPress
  end
  object DBEdit9: TDBEdit
    Left = 171
    Top = 156
    Width = 28
    Height = 21
    DataField = 'UF'
    DataSource = dsemitente
    TabOrder = 9
    OnKeyPress = DBEdit3KeyPress
  end
  object DBEdit10: TDBEdit
    Left = 243
    Top = 156
    Width = 89
    Height = 21
    DataField = 'CEP'
    DataSource = dsemitente
    TabOrder = 10
    OnKeyPress = DBEdit3KeyPress
  end
  object DBEdit11: TDBEdit
    Left = 90
    Top = 180
    Width = 153
    Height = 21
    DataField = 'CNPJ'
    DataSource = dsemitente
    MaxLength = 18
    TabOrder = 11
    OnKeyPress = DBEdit3KeyPress
  end
  object DBEdit12: TDBEdit
    Left = 274
    Top = 180
    Width = 130
    Height = 21
    DataField = 'IE'
    DataSource = dsemitente
    TabOrder = 12
    OnKeyPress = DBEdit3KeyPress
  end
  object DBEdit13: TDBEdit
    Left = 224
    Top = 204
    Width = 180
    Height = 21
    DataField = 'EMAIL'
    DataSource = dsemitente
    TabOrder = 14
    OnKeyPress = DBEdit3KeyPress
  end
  object DBEdit14: TDBEdit
    Left = 90
    Top = 228
    Width = 314
    Height = 21
    DataField = 'HOMEPAGE'
    DataSource = dsemitente
    TabOrder = 15
    OnKeyPress = DBEdit3KeyPress
  end
  object DBEdit15: TDBEdit
    Left = 90
    Top = 252
    Width = 314
    Height = 21
    DataField = 'RESPONSAVEL'
    DataSource = dsemitente
    TabOrder = 16
    OnKeyPress = DBEdit3KeyPress
  end
  object DBEdit16: TDBEdit
    Left = 90
    Top = 276
    Width = 121
    Height = 21
    DataField = 'CELULAR'
    DataSource = dsemitente
    TabOrder = 17
    OnKeyPress = DBEdit3KeyPress
  end
  object DBEdit18: TDBEdit
    Left = 306
    Top = 108
    Width = 97
    Height = 21
    DataField = 'TELEFONE'
    DataSource = dsemitente
    MaxLength = 13
    TabOrder = 5
    OnKeyPress = DBEdit3KeyPress
  end
  object DBImage1: TDBImage
    Left = 88
    Top = 305
    Width = 160
    Height = 80
    DataField = 'LOGO'
    Stretch = True
    TabOrder = 19
  end
  object BitBtn9: TBitBtn
    Left = 256
    Top = 319
    Width = 75
    Height = 25
    Caption = 'Incluir'
    TabOrder = 20
    OnClick = BitBtn9Click
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5F0E79FC8A5559B5E3F
      8E483B8C444C955297C19BE1EDE2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFC3DDC8569F6340984F7CC18E95CFA595CEA577BD88358C41408C47B9D5
      BBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6DFCB549F6363B377A7DAB486CB9765
      BB7C63B97B85CA97A4D8B357A96A34853CB9D5BBFFFFFFFFFFFFFFFFFFE9F3EB
      66AB7569B87CA7DAB15FBB765BB97258B76F58B46E57B46E5AB673A4D8B259A9
      6B418E48E2EEE3FFFFFFFFFFFFAED4B852AA67A9DCB363C0785EBD705FBB76FE
      FEFEFEFEFE58B76F57B46D5BB673A5D9B3378E4296C19AFFFFFFFFFFFF76B788
      89CB9788D2956AC57962C06F54AA64FEFEFEFEFEFE58B76F58B76F5AB87184CB
      967ABD8C4C9554FFFFFFFFFFFF69B17EA8DCB27CCE8974CB80FEFEFEFEFEFEFE
      FEFEFEFEFEFEFEFEFEFEFE58B76F66BD7C9BD3AA3A8B43FFFFFFFFFFFF6DB482
      B5E1BD8AD49679C885FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE58B76F68C0
      7D9CD3A93E8E48FFFFFFFFFFFF81BF94ABDCB5A5DEAE80CA8B7BC8856DBC78FE
      FEFEFEFEFE5AAB695FBB765BB9728AD0987FC491579D60FFFFFFFFFFFFB8DBC3
      84C696D1EDD694D89F89D2937EC788FEFEFEFEFEFE78CC846AC27B6EC67DABDE
      B4449D56A0C8A6FFFFFFFFFFFFECF6EF7EBE92A9D9B6D7F0DB91D79C87CC9283
      CB8D8AD39589D39482D18DAEDFB66AB87C5AA266E6F1E8FFFFFFFFFFFFFFFFFF
      D1E9D975BA8BAEDBBADBF1DFB5E3BC9ADAA495D89FA4DEAEBFE7C478C18957A1
      65C4DEC9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1E9D97EBE9293CDA3C2E5CACE
      EAD3C8E8CDAEDCB76CB87E67AD77C7E0CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFECF6EFB9DCC482BF9570B6856DB48178B989B1D5BAE8F3EBFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
  end
  object BitBtn10: TBitBtn
    Left = 256
    Top = 346
    Width = 75
    Height = 25
    Caption = 'Excluir'
    TabOrder = 21
    OnClick = BitBtn10Click
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5E7F79EA9E1536AC63E
      58BF3953BE4B66C197A7DBE1E6F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFC2C8ED5465CB3B51CB7479E78E91ED8E91ED7077E3324CC03F5BBDB9C4
      E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC5C9EE505FCC5B64DFA0A5F47D85EE5A
      62E8585CE67C83ED9D9FF3505CD63351B9B9C4E7FFFFFFFFFFFFFFFFFFE8EAF9
      6470D3606AE2A0ABF4535EEB4F5BE94C58E84D58E54B55E54F55E59DA1F3535F
      D53F5CBEE2E7F5FFFFFFFFFFFFACB0E94A55DAA1AAF55563EF5165ED4C58E84C
      58E84C58E84C58E84B57E55159E59EA2F4334FC395A5DBFFFFFFFFFFFF7277DC
      808BED7D90F65C72F24C58E84C58E84C58E84C58E84C58E84C58E84E5AE87A82
      EF747AE14B64C3FFFFFFFFFFFF6468DAA0AAF66F85F76781F5FEFEFEFEFEFEFE
      FEFEFEFEFEFEFEFEFEFEFE4C58E85B65E9959BF03855BDFFFFFFFFFFFF696DDB
      AEB8F87E92F96F84EFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE4C58E85D69
      ED959CF03C54BFFFFFFFFFFFFF7C7EE2A4AEF49CAAF9768BEF535EEB535EEB53
      5EEB535EEB535EEB535EEB6276F1808DF3777EE8556AC8FFFFFFFFFFFFB5B4EF
      7C82E9CCD3FB8A9CF97D92F67489ED6B83F56B83F56B83F56B83F56278F2A3AE
      F73D4ECF9FAAE0FFFFFFFFFFFFEBEBFB7877E2A2A6F2D3DAFC8699F97E90EF79
      8DF07E93F77D91F8758BF7A7B5F7626DE25767CCE6E8F7FFFFFFFFFFFFFFFFFF
      CFCFF66F6FE0A9ACF1D7DBFCADB9F990A2F98A9CF99BA8FAB9C6FB6F7AE85361
      CDC3C8EDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFF67878E18D92ECBDC2F7CB
      D2F8C3CAF8A9B3F3656FE1636DD5C6CAEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFEBEBFBB6B5F07C7EE1696ADD676ADB7378DEAEB2EAE8E9F9FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
  end
  object BitBtn4: TBitBtn
    Left = 88
    Top = 408
    Width = 105
    Height = 23
    Caption = 'Gravar'
    TabOrder = 22
    Visible = False
    OnClick = BitBtn4Click
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0EEE08FBF913A8C3E24
      79282476283A843E8FB991E0EBE0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFB5D9B6308E34419F5186C9999AD2AA9AD1AA82C6953C964B307B33B4D0
      B6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB5DBBA248E296CBD82A7DAB486CB9765
      BB7C63B97B85CA97A4D8B365B67C237126B4D0B6FFFFFFFFFFFFFFFFFFE1F2E4
      32A04371C186A7DAB15FBB765BB97258B76F58B46E57B46E5AB673A4D8B268B7
      7E307F34E0ECE1FFFFFFFFFFFF8FD29F4BAF63A9DCB363C0785EBD7074C484D3
      EBD889CC9855B56B57B46D5BB673A5D9B3409A4D8EBB90FFFFFFFFFFFF3EB45C
      90D19E8CD39963C27378C886F1F9F3FEFEFEFCFDFC85CA9556B66C5AB87184CB
      9686C6993A8A3EFFFFFFFFFFFF26AF48A5DBAE6FC97E72C97FEFF8F0FEFEFEEA
      F6ECFEFEFEFAFCFB87CC955AB87066BD7C9FD6AE227E25FFFFFFFFFFFF2DB650
      A6DCB071CB7F65C672AFE0B6D1EDD562C06FB7E2BEFEFEFEFAFCFB8BCF9868C0
      7DA0D6AD228325FFFFFFFFFFFF4AC46B94D6A090D69A68C87563C56E60C36D60
      C26E60C16EB8E3BFFEFEFEE2F3E58AD0988ACD9C3B983FFFFFFFFFFFFF9ADEAC
      56BE6FAEE0B66CCB7967C77164C66F62C46D61C36D62C370B5E2BD6EC67DABDE
      B447A85D8EC793FFFFFFFFFFFFE4F7E948C4657ECD8FADE0B46CCB7969C97567
      C77167C77367C7746AC878ABDEB375C38832A042E1F1E3FFFFFFFFFFFFFFFFFF
      BFECCA3CC25B7ECD8FAEE0B691D79C76CD8276CD8291D79CADE0B477C78A26A0
      3AB5DFBDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0ECCB49C76858C17395D6A2A4
      DBADA4DBAD94D5A04FB86934B254B6E3C1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFE5F7E99EE2B054CA713ABF5B36BD5948C26A97DBAAE1F5E7FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
  end
  object BitBtn5: TBitBtn
    Left = 208
    Top = 408
    Width = 121
    Height = 23
    Caption = 'Cancelar'
    TabOrder = 23
    Visible = False
    OnClick = Fechar1Click
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB9BCF0676DDF4048D643
      4BD74048D7353ED55960DCAFB2EEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFBABDF05760DF8A96F599A6FB93A0F8909EF6929FF67F8BED404AD9AEB1
      EEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBCBEF15F67E0919DF6657CFE3D58FE3B
      57FE3752FD2F4BF85269F6808CF03F48D9ABAFEDFFFFFFFFFFFFFFFFFFC0C3F1
      6970E298A5F76F87FE4260FE3E5CFE3956FE3552FE304DFE2B49FE556CFA828F
      F3404AD9ADB0EEFFFFFFFFFFFF8186E59EACF87891FE4E6DFE6D86FE8EA0FE40
      5EFE3B5AFE8195FE647AFE2C4BFE566DFE828FF5585FDCFFFFFFFFFFFF6B70DF
      AFBFFD5D7EFE5675FE95A8FEFEFEFEAAB8FE9AABFEFEFEFE9AAAFE3352FE3351
      FE96A5FD3840D5FFFFFFFFFFFF767BE1B0BFFC6788FE5D7EFE5D7EFEAEBEFEFE
      FEFEFEFEFEB8C4FE4867FE3A5AFE3C5BFE96A4FB444DD8FFFFFFFFFFFF7A7FE3
      B3C4FC6E91FE6387FE5F83FEA7B9FEFEFEFEFEFEFEAFBFFE4A6BFE4162FE4363
      FE99A8FB4950D9FFFFFFFFFFFF797EE3BACBFD7196FE6A8FFE9EB5FEFEFEFEC1
      CEFEB4C4FEFEFEFE92A8FE486AFE4668FE9FB0FD464ED8FFFFFFFFFFFF9499E8
      AFC0F893B2FE7098FE8FADFEB0C4FE678DFE5E84FE9BB1FE7694FE4F73FE718D
      FE92A2F66D73E0FFFFFFFFFFFFCDCFF4868FE7B0C1F895B6FE739CFE6F98FE6A
      92FE658DFE6188FE5B82FE7B99FE99A9F76069E0BCBEF1FFFFFFFFFFFFFFFFFF
      CECFF4878FE7B1C2F896B8FE78A2FE76A0FE729BFE6B94FE84A3FEA0B0F76871
      E2BEC0F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFD1F58891E8B1C3F8BDD2FDB9
      CDFCB7CAFCB7CAFDA6B7F7727BE4C2C4F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFCFD1F5989DE97E83E38084E47C82E3747AE18C91E6C7CAF3FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
  end
  object DBEdit53: TDBEdit
    Left = 371
    Top = 276
    Width = 33
    Height = 21
    DataField = 'DIA_VENCIMENTO_CHAVE'
    DataSource = dsemitente
    Enabled = False
    TabOrder = 18
    OnKeyPress = DBEdit3KeyPress
  end
  object bcancelar: TAdvGlowButton
    Left = 206
    Top = 393
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
    TabOrder = 24
    OnClick = Fechar1Click
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
  object bgravar: TAdvGlowButton
    Left = 89
    Top = 393
    Width = 107
    Height = 24
    Caption = 'F3 | Gravar'
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
    TabOrder = 25
    OnClick = BitBtn4Click
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
  object ecodmunicipio: TDBEdit
    Left = 342
    Top = 132
    Width = 61
    Height = 21
    DataField = 'COD_MUNICIPIO_IBGE'
    DataSource = dsemitente
    TabOrder = 7
  end
  object DBEdit17: TDBEdit
    Left = 90
    Top = 156
    Width = 51
    Height = 21
    CharCase = ecUpperCase
    DataField = 'IBGE'
    DataSource = dsemitente
    TabOrder = 8
  end
  object AdvGlowButton1: TAdvGlowButton
    Left = 88
    Top = 130
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
    TabOrder = 26
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
  object DBEdit1: TDBEdit
    Left = 90
    Top = 204
    Width = 94
    Height = 21
    DataField = 'INSC_MUNICIPAL'
    DataSource = dsemitente
    TabOrder = 13
  end
  object dsemitente: TDataSource
    DataSet = frmmodulo.qremitente
    Left = 348
    Top = 150
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Filter = 'Bitmaps (*.bmp)|*.bmp'
    Left = 361
    Top = 304
  end
  object MainMenu1: TMainMenu
    Left = 368
    Top = 367
    object Fechar1: TMenuItem
      Caption = 'Fechar'
      ShortCut = 16499
      Visible = False
      OnClick = Fechar1Click
    end
  end
end
