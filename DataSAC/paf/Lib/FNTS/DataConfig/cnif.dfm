object frmCNIF: TfrmCNIF
  Left = 522
  Top = 246
  Width = 537
  Height = 412
  Caption = 'TABELA NACIONAL DE C'#211'DIGOS DE IDENTIFICA'#199#195'O DE ECF'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object ListBox1: TListBox
    Left = 0
    Top = 0
    Width = 529
    Height = 385
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Lucida Console'
    Font.Style = []
    ItemHeight = 9
    Items.Strings = (
      
        '     TABELA NACIONAL DE C'#211'DIGOS DE IDENTIFICA'#199#195'O DE ECF - P'#225'gina' +
        ': 1'#13'     '
      
        '     ===========================================================' +
        '================================================================' +
        '================================================================' +
        '============='
      
        '          Identifica'#231#227'o    |    Tipo    |       Marca          |' +
        ' Modelo               | Vers'#227'o SB  | Qtde Lacres  |Qtde Lacres  ' +
        ' | Tem   | Lacre | Ato de                         | Formato N'#250'me' +
        'ro'#13'       '
      
        '       Marca |Modelo|Vers'#227'o|    ECF     |       ECF            |' +
        ' ECF                  | do ECF     | Ext SL       |Ext Fab      ' +
        ' | MFD?  | MFD?  | Aprova'#231#227'o                      | de Fabrica'#231#227 +
        'o'
      
        '     ===========================================================' +
        '================================================================' +
        '================================================================' +
        '============='#13'         '
      
        '         01  |  01  |  01  | ECF-IF     | AOKI                 |' +
        ' AOKI 1E              | FCP-402    |       1      |       0     ' +
        ' |  NAO  |  NAO  | ATO 067/00                     | 9999999999  ' +
        '        '
      
        #13'         01  |  01  |  02  | ECF-IF     | AOKI                 ' +
        '| AOKI 1E              | FCP-500    |       1      |       0    ' +
        '  |  NAO  |  NAO  | ATO 036/01                     | 9999999999 ' +
        '         '
      
        #13'         02  |  01  |  01  | ECF-IF     | ASTICK               ' +
        '| ASTICK 100           | 0          |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 006/95                 | INDEFINIDO ' +
        '         '
      
        #13'         02  |  01  |  02  | ECF-IF     | ASTICK               ' +
        '| ASTICK 100           | 1BRASFIS.1 |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 060/99                 | INDEFINIDO ' +
        '         '
      
        #13'         02  |  02  |  01  | ECF-IF     | ASTICK               ' +
        '| ASTICK L             | 0          |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 006/95                 | INDEFINIDO ' +
        '         '
      
        #13'         02  |  02  |  02  | ECF-IF     | ASTICK               ' +
        '| ASTICK L             | 1BRASFIS.1 |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 061/99                 | INDEFINIDO ' +
        '         '
      
        #13'         03  |  01  |  01  | ECF-IF     | BEMATECH             ' +
        '| Kit ECF-IF FM-20 FI  | 2.12       |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 007/98                 | 999999999/9' +
        '999      '
      
        #13'         03  |  02  |  01  | ECF-IF     | BEMATECH             ' +
        '| MP-20 FI             | 2.0        |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 003/96                 | 999999999/9' +
        '999      '
      
        #13'         03  |  02  |  02  | ECF-IF     | BEMATECH             ' +
        '| ECF-IF MP-20 FI      | 2.10       |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 049/97                 | 999999999/9' +
        '999      '
      
        #13'         03  |  02  |  03  | ECF-IF     | BEMATECH             ' +
        '| ECF-IF MP-20 FI      | 2.12       |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 065/97                 | 999999999/9' +
        '999      '
      
        #13'         03  |  03  |  01  | ECF-IF     | BEMATECH             ' +
        '| MP-20 FI DUAL        | VER03.15   |       2      |       0    ' +
        '  |  NAO  |  NAO  | ATO 068/00                     | 999999999/9' +
        '999      '
      
        #13'         03  |  04  |  01  | ECF-IF     | BEMATECH             ' +
        '| MP-20 FI DUAL R      | VER03.21   |       3      |       0    ' +
        '  |  NAO  |  NAO  | ATO 013/01                     | 999999999/9' +
        '999      '
      
        #13'         03  |  05  |  01  | ECF-IF     | BEMATECH             ' +
        '| MP-20 FI II          | VER.03.00  |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 005/99                 | 99999999999' +
        '99       '
      
        #13'         03  |  05  |  02  | ECF-IF     | BEMATECH             ' +
        '| MP-20 FI II          | 03.05      |       2      |       0    ' +
        '  |  NAO  |  NAO  | PAR/SC 01 - 19/11/99           | 99999999999' +
        '99       '
      
        #13'         03  |  05  |  03  | ECF-IF     | BEMATECH             ' +
        '| MP-20 FI II          | 03.10      |       2      |       0    ' +
        '  |  NAO  |  NAO  | ATO 015/00                     | 99999999999' +
        '99       '
      
        #13'         03  |  05  |  04  | ECF-IF     | BEMATECH             ' +
        '| MP-20 FI II          | VER03.15   |       2      |       0    ' +
        '  |  NAO  |  NAO  | ATO 069/00                     | 99999999999' +
        '99       '
      
        #13'         03  |  05  |  05  | ECF-IF     | BEMATECH             ' +
        '| MP-20 FI II          | VER03.22   |       3      |       0    ' +
        '  |  NAO  |  NAO  | ATO 038/01                     | 99999999999' +
        '99       '
      
        '         03  |  05  |  06  | ECF-IF     | BEMATECH             |' +
        ' MP-20 FI II          | VER03.25   |       3      |       0     ' +
        ' |  NAO  |  NAO  | PAR/SC 07 - 26/10/03           | 999999999999' +
        '9       '
      
        #13'         03  |  05  |  07  | ECF-IF     | BEMATECH             ' +
        '| MP-20 FI II          | VER03.26   |       3      |       0    ' +
        '  |  NAO  |  NAO  | ATO 028/03                     | 99999999999' +
        '99       '
      
        #13'         03  |  05  |  08  | ECF-IF     | BEMATECH             ' +
        '| MP-20 FI II          | VER03.31   |       3      |       0    ' +
        '  |  NAO  |  NAO  | TDF 013/06 PT-16               | 99999999999' +
        '99       '
      
        #13'         03  |  06  |  01  | ECF-IF     | BEMATECH             ' +
        '| MP-20 FI II R        | 03.00      |       2      |       0    ' +
        '  |  NAO  |  NAO  | PAR/SC 01 - 25/01/00           | 99999999999' +
        '99       '
      
        #13'         03  |  06  |  02  | ECF-IF     | BEMATECH             ' +
        '| MP-20 FI II R        | 03.10      |       2      |       0    ' +
        '  |  NAO  |  NAO  | ATO 030/00                     | 99999999999' +
        '99       '
      
        #13'         03  |  06  |  03  | ECF-IF     | BEMATECH             ' +
        '| MP-20 FI II R        | VER03.20   |       2      |       0    ' +
        '  |  NAO  |  NAO  | ATO 007/01                     | 99999999999' +
        '99       '
      
        #13'         03  |  07  |  01  | ECF-IF     | BEMATECH             ' +
        '| MP-20 FI R           | 1.10       |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 066/97                 | 999999999/9' +
        '999      '
      
        #13'         03  |  08  |  01  | ECF-IF     | BEMATECH             ' +
        '| MP-2000 TH FI        | 01.00.00   |       2      |       2    ' +
        '  |  SIM  |  SIM  | ATO 015/04 - REG 008           | BE0399SC999' +
        '99999999 '
      
        #13'         03  |  08  |  02  | ECF-IF     | BEMATECH             ' +
        '| MP-2000 TH FI        | 01.00.01   |       1      |       1    ' +
        '  |  SIM  |  SIM  | PAR/SC 01 - 26/02/03           | BE0399SC999' +
        '99999999 '
      
        #13'         03  |  08  |  03  | ECF-IF     | BEMATECH             ' +
        '| MP-2000 TH FI        | 01.01.01   |       2      |       2    ' +
        '  |  SIM  |  SIM  | ATO 008/05 - REG 014           | BE0399SC999' +
        '99999999 '
      
        #13'         03  |  08  |  04  | ECF-IF     | BEMATECH             ' +
        '| MP-2000 TH FI        | 01.02.02   |       2      |       2    ' +
        '  |  SIM  |  SIM  | ATO 046/05 - REG 029           | BE0399SC999' +
        '99999999 '
      
        #13'         03  |  08  |  05  | ECF-IF     | BEMATECH             ' +
        '| MP-2000 TH FI        | 01.03.02   |       2      |       2    ' +
        '  |  SIM  |  SIM  | TDF 012/05 PT-16               | BE0399SC999' +
        '99999999 '
      
        #13'         03  |  08  |  06  | ECF-IF     | BEMATECH             ' +
        '| MP-2000 TH FI        | 01.03.03   |       2      |       2    ' +
        '  |  SIM  |  SIM  | ATO 020/06 - REG 057           | BE0399SC999' +
        '99999999 '
      
        #13'         03  |  09  |  01  | ECF-IF     | BEMATECH             ' +
        '| MP-2100 TH FI        | 01.00.00   |       1      |       1    ' +
        '  |  SIM  |  SIM  | ATO 053/05 - REG 036           | BE059999999' +
        '999999999'
      
        #13'         03  |  09  |  02  | ECF-IF     | BEMATECH             ' +
        '| MP-2100 TH FI        | 01.01.00   |       1      |       1    ' +
        '  |  SIM  |  SIM  | TDF 010/06 PT-16               | BE059999999' +
        '999999999'
      
        #13'         03  |  09  |  03  | ECF-IF     | BEMATECH             ' +
        '| MP-2100 TH FI        | 01.00.01   |       1      |       1    ' +
        '  |  SIM  |  SIM  | Com DEAT/SP 068/05             | BE059999999' +
        '999999999'
      
        #13'         03  |  10  |  01  | ECF-IF     | BEMATECH             ' +
        '| MP-25 FI             | 01.00.00   |       2      |       2    ' +
        '  |  NAO  |  NAO  | ATO 013/04 - REG 006           | BE0199SC999' +
        '99999999 '
      
        #13'         03  |  10  |  02  | ECF-IF     | BEMATECH             ' +
        '| MP-25 FI             | 01.01.01   |       2      |       2    ' +
        '  |  NAO  |  NAO  | ATO 047/05 - REG 030           | BE0199SC999' +
        '99999999 '
      
        #13'         03  |  10  |  03  | ECF-IF     | BEMATECH             ' +
        '| MP-25 FI             | 01.02.02   |       2      |       2    ' +
        '  |  NAO  |  NAO  | ATO 019/06 - REG 056           | BE0199SC999' +
        '99999999 '
      
        '         03  |  10  |  05  | ECF-IF     | BEMATECH             |' +
        ' MP-25 FI             | 01.01.02   |       2      |       2     ' +
        ' |  NAO  |  NAO  | Com. DEAT/SP 01/06             | BE0199SC9999' +
        '9999999 '
      
        #13'         03  |  11  |  01  | ECF-IF     | BEMATECH             ' +
        '| MP-30 FI             | 2.12       |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 008/98                 | 999999999/9' +
        '999      '
      
        #13'         03  |  12  |  01  | ECF-IF     | BEMATECH             ' +
        '| MP-40 FI             | 2.12       |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 009/98                 | 999999999/9' +
        '999      '
      
        #13'         03  |  12  |  02  | ECF-IF     | BEMATECH             ' +
        '| MP-40 FI             | 2.13       |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 063/98                 | 999999999/9' +
        '999      '
      
        #13'         03  |  13  |  01  | ECF-IF     | BEMATECH             ' +
        '| MP-40 FI II          | VER.03.00  |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 004/99                 | 99999999999' +
        '99       '
      
        #13'         03  |  13  |  02  | ECF-IF     | BEMATECH             ' +
        '| MP-40 FI II          | 03.05      |       2      |       0    ' +
        '  |  NAO  |  NAO  | PAR/SC 02 - 19/11/99           | 99999999999' +
        '99       '
      
        #13'         03  |  13  |  03  | ECF-IF     | BEMATECH             ' +
        '| MP-40 FI II          | 03.10      |       2      |       0    ' +
        '  |  NAO  |  NAO  | ATO 010/00                     | 99999999999' +
        '99       '
      
        #13'         03  |  13  |  04  | ECF-IF     | BEMATECH             ' +
        '| MP-40 FI II          | VER03.21   |       2      |       0    ' +
        '  |  NAO  |  NAO  | ATO 006/01                     | 99999999999' +
        '99       '
      
        #13'         03  |  14  |  01  | ECF-IF     | BEMATECH             ' +
        '| MP-40 FI II R        | 03.00      |       2      |       0    ' +
        '  |  NAO  |  NAO  | PAR/SC 02 - 25/01/00           | 99999999999' +
        '99       '
      
        #13'         03  |  14  |  02  | ECF-IF     | BEMATECH             ' +
        '| MP-40 FI II R        | 03.10      |       2      |       0    ' +
        '  |  NAO  |  NAO  | ATO 031/00                     | 99999999999' +
        '99       '
      
        #13'         03  |  15  |  01  | ECF-IF     | BEMATECH             ' +
        '| MP-45 FI             | VER03.21   |       2      |       0    ' +
        '  |  NAO  |  NAO  | ATO 031/01                     | 99999999999' +
        '99       '
      
        #13'         03  |  16  |  01  | ECF-IF     | BEMATECH             ' +
        '| MP-50 FI             | 2.12       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 010/98                 | 999999999/9' +
        '999      '
      
        #13'         03  |  16  |  02  | ECF-IF     | BEMATECH             ' +
        '| MP-50 FI             | 01.00.00   |       1      |       1    ' +
        '  |  NAO  |  NAO  | ATO 014/04 - REG 007           | BE029999999' +
        '99999999 '
      
        #13'         03  |  17  |  01  | ECF-IF     | BEMATECH             ' +
        '| MP-6000 TH FI        | 01.00.00   |       1      |       1    ' +
        '  |  SIM  |  SIM  | ATO 016/04 - REG 009           | BE0499SC999' +
        '99999999 '
      
        #13'         03  |  17  |  02  | ECF-IF     | BEMATECH             ' +
        '| MP-6000 TH FI        | 01.01.01   |       1      |       1    ' +
        '  |  SIM  |  SIM  | ATO 009/05 - REG 015           | BE0499SC999' +
        '99999999 '
      
        #13'         03  |  17  |  03  | ECF-IF     | BEMATECH             ' +
        '| MP-6000 TH FI        | 01.02.02   |       1      |       1    ' +
        '  |  SIM  |  SIM  | ATO 045/05 - REG 028           | BE0499SC999' +
        '99999999 '
      
        '         03  |  17  |  04  | ECF-IF     | BEMATECH             |' +
        ' MP-6000 TH FI        | 01.03.02   |       1      |       1     ' +
        ' |  SIM  |  SIM  | TDF 013/05 PT-16               | BE0499SC9999' +
        '9999999 '
      
        #13'         03  |  17  |  05  | ECF-IF     | BEMATECH             ' +
        '| MP-6000 TH FI        | 01.03.03   |       1      |       1    ' +
        '  |  SIM  |  SIM  | ATO 021/06 - REG 058           | BE0499SC999' +
        '99999999 '
      
        #13'         03  |  18  |  01  | ECF-IF     | BEMATECH             ' +
        '| MP-6100 TH FI        | 01.01.02   |       1      |       1    ' +
        '  |  SIM  |  SIM  | ATO 018/06 - REG 055           | BE069999999' +
        '999999999'
      
        #13'         03  |  18  |  02  | ECF-IF     | BEMATECH             ' +
        '| MP-6100 TH FI        | 01.03.02   |       1      |       1    ' +
        '  |  SIM  |  SIM  | TDF 004/06 PT-16               | BE069999999' +
        '999999999'
      
        #13'         03  |  19  |  01  | ECF-IF     | BEMATECH             ' +
        '| MP-3000 TH FI        | 01.00.00   |       1      |       1    ' +
        '  |  SIM  |  SIM  | ATO 036/06 - REG 071           | BE079999999' +
        '999999999'
      
        #13'         03  |  19  |  02  | ECF-IF     | BEMATECH             ' +
        '| MP-3000 TH FI        | 01.01.00   |       1      |       1    ' +
        '  |  SIM  |  SIM  | TDF 001/07 PT-41               | BE079999999' +
        '999999999'
      
        #13'         03  |  19  |  03  | ECF-IF     | BEMATECH             ' +
        '| MP-3000 TH FI        | 01.01.01   |       1      |       1    ' +
        '  |  SIM  |  SIM  | PORTARIA CAT/SP 19/07          | BE079999999' +
        '999999999'
      
        #13'         03  |  20  |  01  | ECF-IF     | BEMATECH             ' +
        '| MP-7000 TH FI        | 01.00.01   |       1      |       1    ' +
        '  |  SIM  |  SIM  | TDF 001/08 PT-41               | BE089999999' +
        '999999999'
      
        #13'         03  |  21  |  01  | ECF-IF     | BEMATECH             ' +
        '| MP-4000 TH FI        | 01.00.01   |       1      |       1    ' +
        '  |  SIM  |  SIM  | TDF 009/08 PT-41               | BE099999999' +
        '999999999'
      
        #13'         04  |  01  |  01  | ECF-IF     | BETHA                ' +
        '| BETHA 1E             | FCP-201    |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 065/98                 | 9999999999 ' +
        '         '
      
        #13'         04  |  02  |  01  | ECF-IF     | BETHA                ' +
        '| BETHA 2E             | FPE-301    |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 111/98                 | 9999999999 ' +
        '         '
      
        #13'         05  |  01  |  01  | ECF-IF     | CHRONOS              ' +
        '| 250 1E               | FCP-201    |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 066/98                 | 9999999999 ' +
        '         '
      
        #13'         05  |  01  |  02  | ECF-IF     | CHRONOS              ' +
        '| 250-1E               | FCP-500    |       1      |       0    ' +
        '  |  NAO  |  NAO  | ATO 021/01                     | 9999999999 ' +
        '         '
      
        #13'         05  |  02  |  01  | ECF-IF     | CHRONOS              ' +
        '| 260-1E               | FPE-301    |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 112/98                 | 9999999999 ' +
        '         '
      
        #13'         05  |  03  |  01  | ECF-IF     | CHRONOS              ' +
        '| 270-2E               | FPE-301    |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 113/98                 | 9999999999 ' +
        '         '
      
        #13'         05  |  04  |  01  | ECF-IF     | CHRONOS              ' +
        '| ACC 220              | V3.5       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 021/97                 | INDEFINIDO ' +
        '         '
      
        #13'         05  |  05  |  01  | ECF-IF     | CHRONOS              ' +
        '| MULTI-50110          | FPO-400    |       2      |       0    ' +
        '  |  NAO  |  NAO  | ATO 070/00                     | 9999999999 ' +
        '         '
      
        #13'         06  |  01  |  01  | ECF-IF     | CORISCO              ' +
        '| CT-7000 V1           | 1.10       |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 041/99                 | INDEFINIDO ' +
        '         '
      
        #13'         06  |  01  |  02  | ECF-IF     | CORISCO              ' +
        '| CT-7000 V1           | 1.20       |       2      |       0    ' +
        '  |  NAO  |  NAO  | ATO 052/00                     | INDEFINIDO ' +
        '         '
      
        '         06  |  02  |  01  | ECF-IF     | CORISCO              |' +
        ' CT-7000 V2           | V3.00      |       1      |       0     ' +
        ' |  NAO  |  NAO  | PARECER 013/97                 | INDEFINIDO  ' +
        '        '
      
        #13'         06  |  03  |  01  | ECF-IF     | CORISCO              ' +
        '| CT-7000 V2A          | 3.10       |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 012/98                 | INDEFINIDO ' +
        '         '
      
        #13'         06  |  04  |  01  | ECF-IF     | CORISCO              ' +
        '| CT-7000 V2B          | 3.20       |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 013/98                 | INDEFINIDO ' +
        '         '
      
        #13'         06  |  05  |  01  | ECF-IF     | CORISCO              ' +
        '| CT-7000 V2C          | 3.30       |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 014/98                 | INDEFINIDO ' +
        '         '
      
        #13'         06  |  06  |  01  | ECF-IF     | CORISCO              ' +
        '| CT-7000 V2D          | 3.40       |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 015/98                 | INDEFINIDO ' +
        '         '
      
        #13'         06  |  07  |  01  | ECF-IF     | CORISCO              ' +
        '| CT-7000 V2E          | 3.50       |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 016/98                 | INDEFINIDO ' +
        '         '
      
        #13'         06  |  08  |  01  | ECF-IF     | CORISCO              ' +
        '| CT-7000 V3           | 1.0        |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 008/95                 | INDEFINIDO ' +
        '         '
      
        #13'         06  |  08  |  02  | ECF-IF     | CORISCO              ' +
        '| CT-7000 V3           | 2.0        |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 012/97                 | INDEFINIDO ' +
        '         '
      
        #13'         06  |  08  |  03  | ECF-IF     | CORISCO              ' +
        '| CT-7000 V3           | V3.0       |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 017/98                 | INDEFINIDO ' +
        '         '
      
        #13'         06  |  08  |  04  | ECF-IF     | CORISCO              ' +
        '| CT-7000 V3           | V3.1       |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 080/99                 | INDEFINIDO ' +
        '         '
      
        #13'         06  |  08  |  05  | ECF-IF     | CORISCO              ' +
        '| CT-7000 V3           | V4.00      |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 130/98                 | INDEFINIDO ' +
        '         '
      
        #13'         06  |  08  |  06  | ECF-IF     | CORISCO              ' +
        '| CT-7000 V3           | V4.01      |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 079/99                 | INDEFINIDO ' +
        '         '
      
        #13'         06  |  08  |  07  | ECF-IF     | CORISCO              ' +
        '| CT-7000 V3           | V4.02      |       2      |       0    ' +
        '  |  NAO  |  NAO  | ATO 053/00                     | INDEFINIDO ' +
        '         '
      
        #13'         06  |  09  |  01  | ECF-IF     | CORISCO              ' +
        '| KIT CT-7000 V2       | V4.00      |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 131/98                 | INDEFINIDO ' +
        '         '
      
        #13'         06  |  09  |  02  | ECF-IF     | CORISCO              ' +
        '| KIT CT-7000 V2       | V4.01      |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 077/99                 | INDEFINIDO ' +
        '         '
      
        #13'         06  |  09  |  03  | ECF-IF     | CORISCO              ' +
        '| KIT CT-7000 V2       | V3.10      |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 078/99                 | INDEFINIDO ' +
        '         '
      
        #13'         07  |  01  |  01  | ECF-IF     | COSMOPOLITAN         ' +
        '| COSMOS/1EFM          | 3.00       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 133/98                 | 99999999   ' +
        '         '
      
        '         07  |  02  |  01  | ECF-IF     | COSMOPOLITAN         |' +
        ' COSMOS/2EFC          | 1.00       |       1      |       0     ' +
        ' |  NAO  |  NAO  | PARECER 134/98                 | 99999999    ' +
        '        '
      
        #13'         08  |  01  |  01  | ECF-IF     | DARUMA               ' +
        '| FS-2000              | 1.00       |       1      |       0    ' +
        '  |  NAO  |  NAO  | ATO 054/00                     | 9999999    ' +
        '         '
      
        #13'         08  |  01  |  02  | ECF-IF     | DARUMA               ' +
        '| FS-2000              | 1.01       |       1      |       0    ' +
        '  |  NAO  |  NAO  | ATO 011/06 - REG 048           | 9999999    ' +
        '         '
      
        #13'         08  |  01  |  03  | ECF-IF     | DARUMA               ' +
        '| FS-2000              | 1.02       |       1      |       0    ' +
        '  |  NAO  |  NAO  | TDF 004/07 PT-41               | 9999999    ' +
        '         '
      
        #13'         08  |  02  |  01  | ECF-IF     | DARUMA               ' +
        '| FS-2100T             | 01.00.00   |       1      |       1    ' +
        '  |  SIM  |  SIM  | ATO 029/05 - REG 023           | DR0199BR999' +
        '999999999'
      
        #13'         08  |  02  |  02  | ECF-IF     | DARUMA               ' +
        '| FS-2100T             | 01.02.00   |       1      |       1    ' +
        '  |  SIM  |  SIM  | TDF 008/05 PT-16               | DR0199BR999' +
        '999999999'
      
        #13'         08  |  02  |  03  | ECF-IF     | DARUMA               ' +
        '| FS-2100T             | 01.03.00   |       1      |       1    ' +
        '  |  SIM  |  SIM  | ATO 013/06 - REG 050           | DR0199BR999' +
        '999999999'
      
        #13'         08  |  02  |  04  | ECF-IF     | DARUMA               ' +
        '| FS-2100T             | 01.04.00   |       1      |       1    ' +
        '  |  SIM  |  SIM  | TDF 026/07 PT-41               | DR0199BR999' +
        '999999999'
      
        #13'         08  |  02  |  05  | ECF-IF     | DARUMA               ' +
        '| FS-2100T             | 01.05.00   |       1      |       1    ' +
        '  |  SIM  |  SIM  | TDF 027/08 PT-41               | DR0199BR999' +
        '999999999'
      
        #13'         08  |  03  |  01  | ECF-IF     | DARUMA               ' +
        '| FS-318               | V1.00      |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 119/98                 | 99999999   ' +
        '         '
      
        #13'         08  |  03  |  02  | ECF-IF     | DARUMA               ' +
        '| FS-318               | 1.10       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PAR/SC 02 - 30/03/01           | 99999999   ' +
        '         '
      
        #13'         08  |  03  |  03  | ECF-IF     | DARUMA               ' +
        '| FS-318               | 1.20       |       1      |       0    ' +
        '  |  NAO  |  NAO  | TDF 004/05 PT-16               | 99999999   ' +
        '         '
      
        #13'         08  |  04  |  01  | ECF-IF     | DARUMA               ' +
        '| FS-335               | 1.00       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 063/97                 | 99999999   ' +
        '         '
      
        #13'         08  |  05  |  01  | ECF-IF     | DARUMA               ' +
        '| FS-345               | 1.00       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 117/98                 | 99999999   ' +
        '         '
      
        #13'         08  |  05  |  02  | ECF-IF     | DARUMA               ' +
        '| FS-345               | V1.10      |       1      |       0    ' +
        '  |  NAO  |  NAO  | ATO 072/00                     | 99999999   ' +
        '         '
      
        #13'         08  |  05  |  03  | ECF-IF     | DARUMA               ' +
        '| FS-345               | 1.11       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PAR/SC 01 - 06/04/01           | 99999999   ' +
        '         '
      
        #13'         08  |  05  |  04  | ECF-IF     | DARUMA               ' +
        '| FS-345               | 1.20       |       1      |       0    ' +
        '  |  NAO  |  NAO  | ATO 030/02                     | 99999999   ' +
        '         '
      
        #13'         08  |  05  |  05  | ECF-IF     | DARUMA               ' +
        '| FS-345               | 1.22       |       1      |       0    ' +
        '  |  NAO  |  NAO  | ATO 010/06 REG 047             | 99999999   ' +
        '         '
      
        #13'         08  |  06  |  01  | ECF-PDV    | DARUMA               ' +
        '| FS-420               | 1.00       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 016/99                 | 99999999   ' +
        '         '
      
        '         08  |  06  |  02  | ECF-PDV    | DARUMA               |' +
        ' FS-420               | V1.10      |       1      |       0     ' +
        ' |  NAO  |  NAO  | ATO 071/00                     | 99999999    ' +
        '        '
      
        #13'         08  |  06  |  03  | ECF-PDV    | DARUMA               ' +
        '| FS-420               | 1.21       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PAR/SC 06 - 04/10/01           | 99999999   ' +
        '         '
      
        #13'         08  |  06  |  04  | ECF-PDV    | DARUMA               ' +
        '| FS-420               | 1.30       |       1      |       0    ' +
        '  |  NAO  |  NAO  | TDF 007/05 PT-16               | 99999999   ' +
        '         '
      
        #13'         08  |  07  |  01  | ECF-IF     | DARUMA               ' +
        '| FS-500               | 1.00       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 086/99                 | 99999999   ' +
        '         '
      
        #13'         08  |  08  |  01  | ECF-IF     | DARUMA               ' +
        '| FS-600               | 01.01.00   |       1      |       1    ' +
        '  |  SIM  |  SIM  | ATO 052/05 - REG 035           | DR0299BR999' +
        '999999999'
      
        #13'         08  |  08  |  02  | ECF-IF     | DARUMA               ' +
        '| FS-600               | 01.02.00   |       1      |       1    ' +
        '  |  SIM  |  SIM  | TDF 014/05 PT-16               | DR0299BR999' +
        '999999999'
      
        #13'         08  |  08  |  03  | ECF-IF     | DARUMA               ' +
        '| FS-600               | 01.03.00   |       1      |       1    ' +
        '  |  SIM  |  SIM  | ATO 012/06 - REG 049           | DR0299BR999' +
        '999999999'
      
        #13'         08  |  08  |  04  | ECF-IF     | DARUMA               ' +
        '| FS-600               | 01.04.00   |       1      |       1    ' +
        '  |  SIM  |  SIM  | TDF 025/07 PT-41               | DR0299BR999' +
        '999999999'
      
        #13'         08  |  08  |  05  | ECF-IF     | DARUMA               ' +
        '| FS-600               | 01.05.00   |       1      |       1    ' +
        '  |  SIM  |  SIM  | TDF 026/08 PT-41               | DR0299BR999' +
        '999999999'
      
        #13'         08  |  09  |  01  | ECF-IF     | DARUMA               ' +
        '| FS-600 USB           | 01.00.00   |       1      |       1    ' +
        '  |  SIM  |  SIM  | TDF 018/08 PT-41               | DR039999999' +
        '999999999'
      
        #13'         08  |  10  |  01  | ECF-IF     | DARUMA               ' +
        '| FS-700L              | 01.00.00   |       1      |       1    ' +
        '  |  SIM  |  SIM  | TDF 019/08 PT-41               | DR049999999' +
        '999999999'
      
        #13'         08  |  11  |  01  | ECF-IF     | DARUMA               ' +
        '| FS-700M              | 01.01.00   |       1      |       1    ' +
        '  |  SIM  |  SIM  | TDF 024/08 PT-41               | DR069999999' +
        '999999999'
      
        #13'         08  |  12  |  01  | ECF-IF     | DARUMA               ' +
        '| FS-700H              | 01.01.00   |       1      |       1    ' +
        '  |  SIM  |  SIM  | TDF 025/08 PT-41               | DR059999999' +
        '999999999'
      
        #13'         09  |  01  |  01  | ECF-IF     | DATAREGIS            ' +
        '| 1Q-EP                | 04.02      |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 105/98                 | INDEFINIDO ' +
        '         '
      
        #13'         09  |  01  |  02  | ECF-IF     | DATAREGIS            ' +
        '| 1Q-EP                | 04.02b     |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 030/99                 | INDEFINIDO ' +
        '         '
      
        #13'         09  |  02  |  01  | ECF-IF     | DATAREGIS            ' +
        '| 675-EP               | 01.00.00   |       2      |       2    ' +
        '  |  NAO  |  NAO  | ATO 011/05 - REG 017           | DT019999999' +
        '99X      '
      
        #13'         09  |  03  |  01  | ECF-PDV    | DATAREGIS            ' +
        '| BABY                 | 1.01       |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 024/95                 | INDEFINIDO ' +
        '         '
      
        '         09  |  03  |  02  | ECF-PDV    | DATAREGIS            |' +
        ' BABY                 | 01.02      |       2      |       0     ' +
        ' |  NAO  |  NAO  | PARECER 003/98                 | INDEFINIDO  ' +
        '        '
      
        #13'         09  |  03  |  03  | ECF-PDV    | DATAREGIS            ' +
        '| BABY                 | 01.03      |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 020/99                 | INDEFINIDO ' +
        '         '
      
        #13'         09  |  04  |  01  | ECF-PDV    | DATAREGIS            ' +
        '| DT-12000             | 01.00      |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 047/98                 | 999999     ' +
        '         '
      
        #13'         09  |  04  |  02  | ECF-PDV    | DATAREGIS            ' +
        '| DT-12000             | 01.01      |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 019/99                 | 999999     ' +
        '         '
      
        #13'         09  |  05  |  01  | ECF-PDV    | DATAREGIS            ' +
        '| DT-12000 TEF         | 02.00      |       2      |       0    ' +
        '  |  NAO  |  NAO  | PAR/SC 14 -21/08/00            | 999999     ' +
        '         '
      
        #13'         09  |  05  |  02  | ECF-PDV    | DATAREGIS            ' +
        '| DT-12000 TEF         | 02.01      |       2      |       0    ' +
        '  |  NAO  |  NAO  | ATO 082/00                     | 999999     ' +
        '         '
      
        #13'         09  |  06  |  01  | ECF-IF     | DATAREGIS            ' +
        '| DT-4000              | 05.03      |       1      |       0    ' +
        '  |  NAO  |  NAO  | ATO 016/00                     | 999999     ' +
        '         '
      
        #13'         09  |  06  |  02  | ECF-IF     | DATAREGIS            ' +
        '| DT 4000              | 05.04      |       2      |       0    ' +
        '  |  NAO  |  NAO  | PAR/SC 15 -31/08/00            | 999999     ' +
        '         '
      
        #13'         09  |  06  |  03  | ECF-IF     | DATAREGIS            ' +
        '| DT-4000              | 05.05      |       2      |       0    ' +
        '  |  NAO  |  NAO  | ATO 026/03                     | 999999     ' +
        '         '
      
        #13'         09  |  06  |  04  | ECF-IF     | DATAREGIS            ' +
        '| DT-4000              | 05.06      |       2      |       0    ' +
        '  |  NAO  |  NAO  | CD-SP 033/2006                 | 999999     ' +
        '         '
      
        #13'         09  |  07  |  01  | ECF-MR     | DATAREGIS            ' +
        '| DT-560               | 5.0        |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 022/95                 | INDEFINIDO ' +
        '         '
      
        #13'         09  |  08  |  01  | ECF-IF     | DATAREGIS            ' +
        '| IF 1Q                | 04.01      |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 051/98                 | INDEFINIDO ' +
        '         '
      
        #13'         09  |  09  |  01  | ECF-IF     | DATAREGIS            ' +
        '| IF/1                 | 10.07      |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 023/95                 | INDEFINIDO ' +
        '         '
      
        #13'         09  |  09  |  02  | ECF-IF     | DATAREGIS            ' +
        '| IF/1                 | 10.09      |       3      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 004/98                 | INDEFINIDO ' +
        '         '
      
        #13'         09  |  10  |  01  | ECF-IF     | DATAREGIS            ' +
        '| IF/1N                | 11.07      |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 023/95                 | INDEFINIDO ' +
        '         '
      
        #13'         09  |  10  |  02  | ECF-IF     | DATAREGIS            ' +
        '| IF/1N                | 11.09      |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 039/98                 | INDEFINIDO ' +
        '         '
      
        #13'         09  |  11  |  01  | ECF-IF     | DATAREGIS            ' +
        '| IF/2                 | 09.07      |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 023/95                 | INDEFINIDO ' +
        '         '
      
        #13'         09  |  11  |  02  | ECF-IF     | DATAREGIS            ' +
        '| IF/2                 | 09.09      |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 004/98                 | INDEFINIDO ' +
        '         '
      
        #13'         09  |  11  |  03  | ECF-IF     | DATAREGIS            ' +
        '| IF/2                 | 09.10      |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 003/99                 | INDEFINIDO ' +
        '         '
      
        #13'         09  |  12  |  01  | ECF-IF     | DATAREGIS            ' +
        '| IF300-EP             | 01.01      |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 050/98                 | 999999     ' +
        '         '
      
        #13'         09  |  12  |  02  | ECF-IF     | DATAREGIS            ' +
        '| IF300-EP             | 01.02      |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 104/98                 | 999999     ' +
        '         '
      
        #13'         09  |  12  |  03  | ECF-IF     | DATAREGIS            ' +
        '| IF300-EP             | 01.02b     |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 018/99                 | 999999     ' +
        '         '
      
        #13'         09  |  12  |  04  | ECF-IF     | DATAREGIS            ' +
        '| IF300-EP             | 01.03      |       2      |       0    ' +
        '  |  NAO  |  NAO  | ATO 017/00                     | 999999     ' +
        '         '
      
        #13'         09  |  12  |  05  | ECF-IF     | DATAREGIS            ' +
        '| IF300-EP             | 01.04      |       3      |       0    ' +
        '  |  NAO  |  NAO  | PAR/SC 19 - 9/11/00            | 999999     ' +
        '         '
      
        #13'         09  |  12  |  06  | ECF-IF     | DATAREGIS            ' +
        '| IF300-EP             | 01.05      |       2      |       0    ' +
        '  |  NAO  |  NAO  | ATO 024/03                     | 999999     ' +
        '         '
      
        #13'         09  |  12  |  07  | ECF-IF     | DATAREGIS            ' +
        '| IF300-EP             | 01.06      |       2      |       0    ' +
        '  |  NAO  |  NAO  | CD-SP 031/2006                 | 999999     ' +
        '         '
      
        #13'         09  |  13  |  01  | ECF-IF     | DATAREGIS            ' +
        '| IF375-EP             | 02.01      |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 049/98                 | 999999     ' +
        '         '
      
        #13'         09  |  13  |  02  | ECF-IF     | DATAREGIS            ' +
        '| IF375-EP             | 02.02      |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 103/98                 | 999999     ' +
        '         '
      
        #13'         09  |  13  |  03  | ECF-IF     | DATAREGIS            ' +
        '| IF375-EP             | 02.02b     |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 029/99                 | 999999     ' +
        '         '
      
        #13'         09  |  13  |  04  | ECF-IF     | DATAREGIS            ' +
        '| IF375-EP             | 02.03      |       1      |       0    ' +
        '  |  NAO  |  NAO  | ATO 018/00                     | 999999     ' +
        '         '
      
        #13'         09  |  13  |  05  | ECF-IF     | DATAREGIS            ' +
        '| IF375-EP             | 02.04      |       2      |       0    ' +
        '  |  NAO  |  NAO  | PAR/SC 20 - 9/11/00            | 999999     ' +
        '         '
      
        #13'         09  |  13  |  06  | ECF-IF     | DATAREGIS            ' +
        '| IF375-EP             | 02.05      |       1      |       0    ' +
        '  |  NAO  |  NAO  | ATO 025/03                     | 999999     ' +
        '         '
      
        #13'         09  |  13  |  07  | ECF-IF     | DATAREGIS            ' +
        '| IF375-EP             | 02.06      |       1      |       0    ' +
        '  |  NAO  |  NAO  | CD-SP 032/2006                 | 999999     ' +
        '         '
      
        #13'         09  |  14  |  01  | ECF-IF     | DATAREGIS            ' +
        '| IF950-EP             | 03.01      |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 048/98                 | 999999     ' +
        '         '
      
        #13'         09  |  14  |  02  | ECF-IF     | DATAREGIS            ' +
        '| IF950-EP             | 03.02      |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 102/98                 | 999999     ' +
        '         '
      
        #13'         09  |  14  |  03  | ECF-IF     | DATAREGIS            ' +
        '| IF950-EP             | 03.02b     |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 017/99                 | 999999     ' +
        '         '
      
        '         09  |  14  |  04  | ECF-IF     | DATAREGIS            |' +
        ' IF950-EP             | 03.03      |       1      |       0     ' +
        ' |  NAO  |  NAO  | ATO 019/00                     | 999999      ' +
        '        '
      
        #13'         09  |  15  |  01  | ECF-PDV    | DATAREGIS            ' +
        '| LITE                 | 01.00      |       1      |       0    ' +
        '  |  NAO  |  NAO  | ATO 081/00                     | INDEFINIDO ' +
        '         '
      
        #13'         09  |  16  |  01  | ECF-IF     | DATAREGIS            ' +
        '| 3202-DT              | 01.00.00   |       1      |       1    ' +
        '  |  SIM  |  NAO  | ATO 037/06 - REG 072           | DT039999999' +
        '999999999'
      
        #13'         09  |  16  |  02  | ECF-IF     | DATAREGIS            ' +
        '| 3202-DT              | 01.00.01   |       1      |       1    ' +
        '  |  SIM  |  NAO  | CD-SP 017/2006                 | DT039999999' +
        '999999999'
      
        #13'         09  |  16  |  03  | ECF-IF     | DATAREGIS            ' +
        '| 3202-DT              | 01.00.15   |       1      |       1    ' +
        '  |  SIM  |  NAO  | TDF 010/07 PT-41               | DT039999999' +
        '999999999'
      
        #13'         09  |  16  |  04  | ECF-IF     | DATAREGIS            ' +
        '| 3202-DT              | 01.00.16   |       1      |       1    ' +
        '  |  SIM  |  NAO  | Com. DEAT 35/07 - SP           | DT039999999' +
        '999999999'
      
        #13'         09  |  16  |  05  | ECF-IF     | DATAREGIS            ' +
        '| 3202-DT              | 01.00.25   |       1      |       1    ' +
        '  |  SIM  |  NAO  | TDF 005/08 PT-41               | DT039999999' +
        '999999999'
      
        #13'         09  |  17  |  01  | ECF-IF     | DATAREGIS            ' +
        '| 6000-EP              | 01.00.00   |       1      |       1    ' +
        '  |  SIM  |  NAO  | ATO 035/06 - REG 073           | DT029999999' +
        '999999999'
      
        #13'         09  |  17  |  02  | ECF-IF     | DATAREGIS            ' +
        '| 6000-EP              | 01.00.03   |       1      |       1    ' +
        '  |  SIM  |  NAO  | CD-SP 018/2006                 | DT029999999' +
        '999999999'
      
        #13'         09  |  17  |  03  | ECF-IF     | DATAREGIS            ' +
        '| 6000-EP              | 01.03.19   |       2      |       2    ' +
        '  |  SIM  |  NAO  | TDF 011/07 PT-41               | DT029999999' +
        '999999999'
      
        #13'         09  |  17  |  04  | ECF-IF     | DATAREGIS            ' +
        '| 6000-EP              | 01.03.22   |       2      |       2    ' +
        '  |  SIM  |  NAO  | Com DEAT 34/04 - SP            | DT029999999' +
        '999999999'
      
        #13'         09  |  17  |  05  | ECF-IF     | DATAREGIS            ' +
        '| 6000-EP              | 01.03.31   |       2      |       2    ' +
        '  |  SIM  |  NAO  | TDF 006/08 PT-41               | DT029999999' +
        '999999999'
      
        #13'         09  |  18  |  01  | ECF-IF     | DATAREGIS            ' +
        '| 100-OT               | 01.00.00   |       1      |       1    ' +
        '  |  SIM  |  NAO  | ATO 038/06 - REG 070           | DT049999999' +
        '999999999'
      
        #13'         09  |  19  |  01  | ECF-IF     | DATAREGIS            ' +
        '| MT100                | 01.00.47   |       1      |       1    ' +
        '  |  SIM  |  NAO  | TDF 012/09 PT-41               | DT059999999' +
        '999999999'
      
        #13'         10  |  01  |  01  | ECF-IF     | DIGIARTE             ' +
        '| 2E                   | FPE-301    |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 126/98                 | 9999999999 ' +
        '         '
      
        #13'         10  |  02  |  01  | ECF-IF     | DIGIARTE             ' +
        '| DGIARTE 1E           | FCP-201    |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 125/98                 | 9999999999 ' +
        '         '
      
        #13'         10  |  03  |  01  | ECF-IF     | DIGIARTE             ' +
        '| DIGIARTE 1           | FCP-201    |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 076/98                 | 9999999999 ' +
        '         '
      
        #13'         10  |  03  |  02  | ECF-IF     | DIGIARTE             ' +
        '| DIGIARTE 1           | FCP-500    |       1      |       0    ' +
        '  |  NAO  |  NAO  | ATO 035/01                     | 9999999999 ' +
        '         '
      
        #13'         11  |  01  |  01  | ECF-IF     | DIGISAT              ' +
        '| 1E                   | FCP-201    |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 143/98                 | 9999999999 ' +
        '         '
      
        '         11  |  01  |  02  | ECF-IF     | DIGISAT              |' +
        ' 1E                   | FCP-500    |       1      |       0     ' +
        ' |  NAO  |  NAO  | ATO 022/01                     | 9999999999  ' +
        '        '
      
        #13'         12  |  01  |  01  | ECF-IF     | DISMAC               ' +
        '| 2001-I               | 2.00       |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 029/96                 | INDEFINIDO ' +
        '         '
      
        #13'         12  |  02  |  01  | ECF-IF     | DISMAC               ' +
        '| 2001-II              | V:01r00    |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 028/96                 | INDEFINIDO ' +
        '         '
      
        #13'         12  |  02  |  02  | ECF-IF     | DISMAC               ' +
        '| 2001-II              | V:01r01    |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 064/97                 | INDEFINIDO ' +
        '         '
      
        #13'         12  |  03  |  01  | ECF-MR     | DISMAC               ' +
        '| 404                  | VER01.000  |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 035/96                 | INDEFINIDO ' +
        '         '
      
        #13'         12  |  04  |  01  | ECF-MR     | DISMAC               ' +
        '| 408i                 | VER:01.000 |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 026/97                 | INDEFINIDO ' +
        '         '
      
        #13'         12  |  05  |  01  | ECF-MR     | DISMAC               ' +
        '| 5020                 | 1.1        |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 011/96                 | INDEFINIDO ' +
        '         '
      
        #13'         12  |  05  |  02  | ECF-MR     | DISMAC               ' +
        '| 5020                 | 2.4        |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 047/97                 | INDEFINIDO ' +
        '         '
      
        #13'         12  |  06  |  01  | ECF-MR     | DISMAC               ' +
        '| 540                  | 1.0        |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 012/96                 | INDEFINIDO ' +
        '         '
      
        #13'         12  |  07  |  01  | ECF-MR     | DISMAC               ' +
        '| 620                  | VER: 1.00  |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 027/97                 | INDEFINIDO ' +
        '         '
      
        #13'         12  |  08  |  01  | ECF-MR     | DISMAC               ' +
        '| 640                  | 1.0        |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 012/96                 | INDEFINIDO ' +
        '         '
      
        #13'         12  |  09  |  01  | ECF-MR     | DISMAC               ' +
        '| 650R                 | VER.1.00   |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 045/97                 | INDEFINIDO ' +
        '         '
      
        #13'         12  |  10  |  01  | ECF-MR     | DISMAC               ' +
        '| 7000                 | 1.2        |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 046/97                 | INDEFINIDO ' +
        '         '
      
        #13'         13  |  01  |  01  | ECF-IF     | EAGLE                ' +
        '| PRINTER 2000         | 2.10       |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 051/97                 | 999999999/9' +
        '999      '
      
        #13'         13  |  01  |  02  | ECF-IF     | EAGLE                ' +
        '| PRINTER 2000         | 2.12       |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 067/97                 | 999999999/9' +
        '999      '
      
        #13'         13  |  02  |  01  | ECF-IF     | EAGLE                ' +
        '| PRINTER 2000 II      | VER.03.00  |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 006/99                 | 99999999999' +
        '99       '
      
        #13'         13  |  02  |  02  | ECF-IF     | EAGLE                ' +
        '| PRINTER 2000 II      | 03.10      |       2      |       0    ' +
        '  |  NAO  |  NAO  | ATO 024/00                     | 99999999999' +
        '99       '
      
        '         13  |  02  |  03  | ECF-IF     | EAGLE                |' +
        ' PRINTER 2000 II      | VER03.22   |       3      |       0     ' +
        ' |  NAO  |  NAO  | ATO 040/01                     | 999999999999' +
        '9       '
      
        #13'         13  |  02  |  04  | ECF-IF     | EAGLE                ' +
        '| PRINTER 2000 II      | VER03.26   |       3      |       0    ' +
        '  |  NAO  |  NAO  | ATO 031/03                     | 99999999999' +
        '99       '
      
        #13'         13  |  02  |  05  | ECF-IF     | EAGLE                ' +
        '| PRINTER 2000 II      | VER03.30   |       3      |       0    ' +
        '  |  NAO  |  NAO  | CD-SP 030/2006                 | 99999999999' +
        '99       '
      
        #13'         13  |  02  |  06  | ECF-IF     | EAGLE                ' +
        '| PRINTER 2000 II      | VER03.31   |       3      |       0    ' +
        '  |  NAO  |  NAO  | TDF 019/06 PT-16               | 99999999999' +
        '99       '
      
        #13'         13  |  03  |  01  | ECF-IF     | EAGLE                ' +
        '| PRINTER 2000 II R    | VER03.21   |       3      |       0    ' +
        '  |  NAO  |  NAO  | ATO 014/01                     | 99999999999' +
        '99       '
      
        #13'         13  |  04  |  01  | ECF-IF     | EAGLE                ' +
        '| PRINTER 2001         | 1.10       |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 068/97                 | 999999999/9' +
        '999      '
      
        #13'         13  |  05  |  01  | ECF-IF     | EAGLE                ' +
        '| PRINTER 2002 II      | VER03.00   |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 007/99                 | 99999999999' +
        '99       '
      
        #13'         13  |  05  |  02  | ECF-IF     | EAGLE                ' +
        '| PRINTER 2002 II      | VER03.21   |       2      |       0    ' +
        '  |  NAO  |  NAO  | ATO 005/01                     | 99999999999' +
        '99       '
      
        #13'         13  |  06  |  01  | ECF-IF     | EAGLE                ' +
        '| PRINTER 2000 II MFD  | 01.00.00   |       1      |       1    ' +
        '  |  SIM  |  NAO  | REGISTRO 077                   | EG019999999' +
        '999999999'
      
        #13'         13  |  06  |  02  | ECF-IF     | EAGLE                ' +
        '| PRINTER 2000 II MFD  | 01.00.07   |       1      |       1    ' +
        '  |  SIM  |  NAO  | TDF 020/07 PT-41               | EG019999999' +
        '999999999'
      
        #13'         14  |  01  |  01  | ECF-MR     | ELGIN                ' +
        '| 10000-S              | V1.0       |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 122/98                 | 99999999   ' +
        '         '
      
        #13'         14  |  01  |  02  | ECF-MR     | ELGIN                ' +
        '| 10000-S              | V1.1       |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 058/99                 | 99999999   ' +
        '         '
      
        #13'         14  |  01  |  03  | ECF-MR     | ELGIN                ' +
        '| 10000-S              | V1.2       |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 058/99                 | 99999999   ' +
        '         '
      
        #13'         14  |  01  |  04  | ECF-MR     | ELGIN                ' +
        '| 10000-S              | V4.2       |       3      |       0    ' +
        '  |  NAO  |  NAO  | ATO 007/02                     | 99999999   ' +
        '         '
      
        #13'         14  |  01  |  05  | ECF-MR     | ELGIN                ' +
        '| 10000-S              | V6.2       |       3      |       0    ' +
        '  |  NAO  |  NAO  | ATO 030/05 - REG 024           | 99999999   ' +
        '         '
      
        #13'         14  |  01  |  06  | ECF-MR     | ELGIN                ' +
        '| 10000-S              | V5.2       |       3      |       0    ' +
        '  |  NAO  |  NAO  | PH 01/06 SRE/PB                | 99999999   ' +
        '         '
      
        #13'         14  |  02  |  01  | ECF-MR     | ELGIN                ' +
        '| 10000-S1             | V1.3       |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 059/99                 | 99999999   ' +
        '         '
      
        #13'         14  |  02  |  02  | ECF-MR     | ELGIN                ' +
        '| 10000-S1             | V2.3       |       2      |       0    ' +
        '  |  NAO  |  NAO  | ATO 065/00                     | 99999999   ' +
        '         '
      
        #13'         14  |  02  |  03  | ECF-MR     | ELGIN                ' +
        '| 10000-S1             | V3.3       |       3      |       0    ' +
        '  |  NAO  |  NAO  | ATO 018/01                     | 99999999   ' +
        '         '
      
        '         14  |  02  |  04  | ECF-MR     | ELGIN                |' +
        ' 10000-S1             | V5.3       |       3      |       0     ' +
        ' |  NAO  |  NAO  | PH02/05 SRE/PB                 | 99999999    ' +
        '        '
      
        #13'         14  |  03  |  01  | ECF-MR     | ELGIN                ' +
        '| 12000-S              | V2.1       |       2      |       0    ' +
        '  |  NAO  |  NAO  | ATO 055/00                     | 99999999   ' +
        '         '
      
        #13'         14  |  03  |  02  | ECF-MR     | ELGIN                ' +
        '| 12000-S              | V5.1       |       2      |       0    ' +
        '  |  NAO  |  NAO  | PH 03/06 SRE/PB                | 99999999   ' +
        '         '
      
        #13'         14  |  04  |  01  | ECF-IF     | ELGIN                ' +
        '| 600-2E-OL            | FPO-400    |       2      |       0    ' +
        '  |  NAO  |  NAO  | ATO 037/00                     | 9999999999 ' +
        '         '
      
        #13'         14  |  05  |  01  | ECF-MR     | ELGIN                ' +
        '| 800-S                | V.01.000   |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 121/98                 | 99999999   ' +
        '         '
      
        #13'         14  |  05  |  02  | ECF-MR     | ELGIN                ' +
        '| 800-S                | V.02.200   |       2      |       0    ' +
        '  |  NAO  |  NAO  | ATO 001/01                     | 99999999   ' +
        '         '
      
        #13'         14  |  06  |  01  | ECF-MR     | ELGIN                ' +
        '| 800-S2               | V1.0       |       2      |       0    ' +
        '  |  NAO  |  NAO  | ATO 002/01                     | 99999999   ' +
        '         '
      
        #13'         14  |  07  |  01  | ECF-IF     | ELGIN                ' +
        '| ELGIN FIT            | 01.00.00   |       2      |       2    ' +
        '  |  SIM  |  NAO  | ATO 027/06 - REG 064           | EL019999999' +
        '999999999'
      
        #13'         14  |  07  |  02  | ECF-IF     | ELGIN                ' +
        '| ELFIN FIT            | 01.00.08   |       2      |       2    ' +
        '  |  SIM  |  NAO  | TDF 012/06 PT-16               | EL019999999' +
        '999999999'
      
        #13'         14  |  08  |  01  | ECF-IF     | ELGIN                ' +
        '| IF 400 1E-EP         | FPE-301    |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 062/99                 | 9999999999 ' +
        '         '
      
        #13'         14  |  09  |  01  | ECF-IF     | ELGIN                ' +
        '| IF 400 2E            | FPE-301    |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 063/99                 | 9999999999 ' +
        '         '
      
        #13'         14  |  09  |  02  | ECF-IF     | ELGIN                ' +
        '| IF 400 2E            | FPE-302    |       2      |       0    ' +
        '  |  NAO  |  NAO  | ATO MG 00154-6R1               | 9999999999 ' +
        '         '
      
        #13'         14  |  10  |  01  | ECF-IF     | ELGIN                ' +
        '| IF 500 1E            | FCP-201    |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 064/99                 | 9999999999 ' +
        '         '
      
        #13'         14  |  10  |  02  | ECF-IF     | ELGIN                ' +
        '| IF 500 1E            | FCP-500    |       1      |       0    ' +
        '  |  NAO  |  NAO  | ATO 033/01                     | 9999999999 ' +
        '         '
      
        #13'         14  |  11  |  01  | ECF-IF     | ELGIN                ' +
        '| IF 6000TH            | 01.00.00   |       2      |       2    ' +
        '  |  SIM  |  NAO  | ATO 026/06 - REG 063           | EL029999999' +
        '999999999'
      
        #13'         14  |  11  |  02  | ECF-IF     | ELGIN                ' +
        '| IF 6000TH            | 01.00.08   |       2      |       2    ' +
        '  |  SIM  |  NAO  | TDF 011/06 PT-16               | EL029999999' +
        '999999999'
      
        #13'         14  |  12  |  01  | ECF-MR     | ELGIN                ' +
        '| FX7                  | 01.00.07   |       1      |       1    ' +
        '  |  SIM  |  NAO  | TDF 017/07 PT-41               | EL039999999' +
        '999999999'
      
        '         14  |  13  |  01  | ECF-IF     | ELGIN                |' +
        ' X5                   | 01.00.07   |       1      |       1     ' +
        ' |  SIM  |  NAO  | TDF 018/07 PT-41               | EL0499999999' +
        '99999999'
      
        #13'         15  |  01  |  01  | ECF-IF     | EPSON                ' +
        '| TM-H6000 FB          | 01.00.00   |       1      |       1    ' +
        '  |  SIM  |  SIM  | ATO 033/05 - REG 027           | EP0199SC999' +
        '999999999'
      
        #13'         15  |  01  |  02  | ECF-IF     | EPSON                ' +
        '| TM-H6000 FB          | 01.01.01   |       1      |       1    ' +
        '  |  SIM  |  SIM  | ATO 016/06 - REG 053           | EP0199SC999' +
        '999999999'
      
        #13'         15  |  01  |  03  | ECF-IF     | EPSON                ' +
        '| TM-H6000 FB          | 01.02.00   |       1      |       1    ' +
        '  |  SIM  |  SIM  | TDF 008/06 PT-16               | EP0199SC999' +
        '999999999'
      
        #13'         15  |  01  |  04  | ECF-IF     | EPSON                ' +
        '| TM-H6000 FB          | 01.06.00   |       1      |       1    ' +
        '  |  SIM  |  SIM  | TDF 003/08 PT-41               | EP0199SC999' +
        '999999999'
      
        #13'         15  |  02  |  01  | ECF-IF     | EPSON                ' +
        '| TM-T88 FB            | 01.00.00   |       1      |       1    ' +
        '  |  SIM  |  SIM  | ATO 017/06 - REG 054           | EP0299SC999' +
        '999999999'
      
        #13'         15  |  02  |  02  | ECF-IF     | EPSON                ' +
        '| TM-T88 FB            | 01.01.00   |       1      |       1    ' +
        '  |  SIM  |  SIM  | TDF 007/06 PT-16               | EP0299SC999' +
        '999999999'
      
        #13'         15  |  02  |  03  | ECF-IF     | EPSON                ' +
        '| TM-T88 FB            | 01.06.00   |       1      |       1    ' +
        '  |  SIM  |  SIM  | TDF 004/08 PT-41               | EP0299SC999' +
        '999999999'
      
        #13'         15  |  03  |  01  | ECF-IF     | EPSON                ' +
        '| TM-U675 FB           | 01.00.00   |       1      |       1    ' +
        '  |  SIM  |  SIM  | ATO 040/06 - REG 068           | EP039999999' +
        '999999999'
      
        #13'         15  |  04  |  01  | ECF-IF     | EPSON                ' +
        '| TM-T81 FBII          | 01.00.00   |       1      |       1    ' +
        '  |  SIM  |  NAO  | ATO 042/06 - REG 067           | EP049999999' +
        '999999999'
      
        #13'         15  |  04  |  02  | ECF-IF     | EPSON                ' +
        '| TM-T81 FBII          | 01.00.04   |       1      |       1    ' +
        '  |  SIM  |  NAO  | TDF 016/06 PT-16               | EP049999999' +
        '999999999'
      
        #13'         15  |  04  |  03  | ECF-IF     | EPSON                ' +
        '| TM-T81 FBII          | 01.02.00   |       1      |       1    ' +
        '  |  SIM  |  NAO  | TDF 008/07 PT-41               | EP049999999' +
        '999999999'
      
        #13'         15  |  04  |  04  | ECF-IF     | EPSON                ' +
        '| TM-T81 FBII          | 01.03.00   |       1      |       1    ' +
        '  |  SIM  |  NAO  | TDF 030/07 PT-41               | EP049999999' +
        '999999999'
      
        #13'         15  |  04  |  05  | ECF-IF     | EPSON                ' +
        '| TM-T81 FBII          | 01.05.00   |       1      |       1    ' +
        '  |  SIM  |  NAO  | TDF 016/08 PT-41               | EP049999999' +
        '999999999'
      
        #13'         15  |  04  |  06  | ECF-IF     | EPSON                ' +
        '| TM-T81 FBII          | 01.07.00   |       1      |       1    ' +
        '  |  SIM  |  NAO  | TDF 001/09 PT-41               | EP049999999' +
        '999999999'
      
        #13'         15  |  05  |  01  | ECF-IF     | EPSON                ' +
        '| TM-H6000 FBII        | 01.02.00   |       1      |       1    ' +
        '  |  SIM  |  NAO  | TDF 006/07 PT-41               | EP059999999' +
        '999999999'
      
        #13'         15  |  05  |  02  | ECF-IF     | EPSON                ' +
        '| TM-H6000 FBII        | 01.03.00   |       1      |       1    ' +
        '  |  SIM  |  NAO  | TDF 028/07 PT-41               | EP059999999' +
        '999999999'
      
        #13'         15  |  05  |  03  | ECF-IF     | EPSON                ' +
        '| TM-H6000 FBII        | 01.05.00   |       1      |       1    ' +
        '  |  SIM  |  NAO  | TDF 015/08 PT-41               | EP059999999' +
        '999999999'
      
        #13'         15  |  05  |  04  | ECF-IF     | EPSON                ' +
        '| TM-H6000 FBII        | 01.07.00   |       1      |       1    ' +
        '  |  SIM  |  NAO  | TDF 003/09 PT-41               | EP059999999' +
        '999999999'
      
        #13'         15  |  06  |  01  | ECF-IF     | EPSON                ' +
        '| TM-T88 FBII          | 01.02.00   |       1      |       1    ' +
        '  |  SIM  |  NAO  | TDF 007/07 PT-41               | EP069999999' +
        '999999999'
      
        #13'         15  |  06  |  02  | ECF-IF     | EPSON                ' +
        '| TM-T88 FBII          | 01.03.00   |       1      |       1    ' +
        '  |  SIM  |  NAO  | TDF 029/07 PT-41               | EP069999999' +
        '999999999'
      
        #13'         15  |  06  |  03  | ECF-IF     | EPSON                ' +
        '| TM-T88 FBII          | 01.05.00   |       1      |       1    ' +
        '  |  SIM  |  NAO  | TDF 017/08 PT-41               | EP069999999' +
        '999999999'
      
        #13'         15  |  06  |  04  | ECF-IF     | EPSON                ' +
        '| TM-T88 FBII          | 01.07.00   |       1      |       1    ' +
        '  |  SIM  |  NAO  | TDF 002/09 PT-41               | EP069999999' +
        '999999999'
      
        #13'         16  |  01  |  01  | ECF-MR     | GENERAL              ' +
        '| G-3900               | 1.0        |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 002/95                 | INDEFINIDO ' +
        '         '
      
        '         16  |  01  |  02  | ECF-MR     | GENERAL              |' +
        ' G-3900               | 2.0        |       2      |       0     ' +
        ' |  NAO  |  NAO  | PARECER 002/95                 | INDEFINIDO  ' +
        '        '
      
        #13'         16  |  01  |  03  | ECF-MR     | GENERAL              ' +
        '| G-3900               | 1.1        |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 009/97                 | INDEFINIDO ' +
        '         '
      
        #13'         16  |  01  |  04  | ECF-MR     | GENERAL              ' +
        '| G-3900               | 2.1        |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 009/97                 | INDEFINIDO ' +
        '         '
      
        #13'         16  |  02  |  01  | ECF-MR     | GENERAL              ' +
        '| G-880                | V1.0       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 088/98                 | 999999     ' +
        '         '
      
        #13'         16  |  02  |  02  | ECF-MR     | GENERAL              ' +
        '| G-880                | V1.1       |       1      |       0    ' +
        '  |  NAO  |  NAO  | ATO 032/00                     | 999999     ' +
        '         '
      
        #13'         16  |  03  |  01  | ECF-MR     | GENERAL              ' +
        '| G-910                | V1.0       |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 016/96                 | 999999     ' +
        '         '
      
        #13'         16  |  03  |  02  | ECF-MR     | GENERAL              ' +
        '| G-910                | V1.1       |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 010/97                 | 999999     ' +
        '         '
      
        #13'         16  |  03  |  03  | ECF-MR     | GENERAL              ' +
        '| G-910                | V1.2       |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 086/98                 | 999999     ' +
        '         '
      
        #13'         16  |  03  |  04  | ECF-MR     | GENERAL              ' +
        '| G-910                | V1.3       |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 137/98                 | 999999     ' +
        '         '
      
        #13'         16  |  04  |  01  | ECF-MR     | GENERAL              ' +
        '| G-910E               | V1.0       |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 016/96                 | 999999     ' +
        '         '
      
        #13'         16  |  04  |  02  | ECF-MR     | GENERAL              ' +
        '| G-910E               | V1.1       |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 010/97                 | 999999     ' +
        '         '
      
        #13'         16  |  04  |  03  | ECF-MR     | GENERAL              ' +
        '| G-910E               | V1.2       |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 087/98                 | 999999     ' +
        '         '
      
        '         16  |  04  |  04  | ECF-MR     | GENERAL              |' +
        ' G-910E               | V1.3       |       2      |       0     ' +
        ' |  NAO  |  NAO  | PARECER 138/98                 | 999999      ' +
        '        '
      
        #13'         16  |  05  |  01  | ECF-MR     | GENERAL              ' +
        '| G-930                | V1.0       |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 008/97                 | 999999     ' +
        '         '
      
        #13'         16  |  05  |  02  | ECF-MR     | GENERAL              ' +
        '| G-930                | V1.1       |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 094/98                 | 999999     ' +
        '         '
      
        #13'         16  |  05  |  03  | ECF-MR     | GENERAL              ' +
        '| G-930                | V1.2       |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 139/98                 | 999999     ' +
        '         '
      
        #13'         16  |  05  |  04  | ECF-MR     | GENERAL              ' +
        '| G-930                | V2.0       |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 081/99                 | 999999     ' +
        '         '
      
        #13'         16  |  06  |  01  | ECF-MR     | GENERAL              ' +
        '| G-930E               | V1.0       |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 008/97                 | 999999     ' +
        '         '
      
        #13'         16  |  06  |  02  | ECF-MR     | GENERAL              ' +
        '| G-930E               | V1.1       |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 095/98                 | 999999     ' +
        '         '
      
        #13'         16  |  06  |  03  | ECF-MR     | GENERAL              ' +
        '| G-930E               | V1.2       |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 140/98                 | 999999     ' +
        '         '
      
        #13'         16  |  06  |  04  | ECF-MR     | GENERAL              ' +
        '| G-930E               | V2.0       |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 082/99                 | 999999     ' +
        '         '
      
        #13'         16  |  07  |  01  | ECF-MR     | GENERAL              ' +
        '| G-980                | V1.0       |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 083/99                 | 999999     ' +
        '         '
      
        #13'         16  |  07  |  02  | ECF-MR     | GENERAL              ' +
        '| G-980                | V1.1       |       2      |       0    ' +
        '  |  NAO  |  NAO  | ATO 048/00                     | 999999     ' +
        '         '
      
        #13'         16  |  08  |  01  | ECF-IF     | GENERAL              ' +
        '| GP-2000              | V1.0       |       1      |       0    ' +
        '  |  NAO  |  NAO  | ATO 075/00                     | 999999     ' +
        '         '
      
        #13'         17  |  01  |  01  | ECF-MR     | GOLD                 ' +
        '| 1220/20i             | 1.00       |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 056/97                 | INDEFINIDO ' +
        '         '
      
        #13'         17  |  02  |  01  | ECF-MR     | GOLD                 ' +
        '| 1220/50R             | VER: 1.00  |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 057/97                 | INDEFINIDO ' +
        '         '
      
        #13'         17  |  03  |  01  | ECF-MR     | GOLD                 ' +
        '| 1220/70TR            | 1.2        |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 058/97                 | INDEFINIDO ' +
        '         '
      
        #13'         17  |  04  |  01  | ECF-MR     | GOLD                 ' +
        '| 1220/8i              | VER. 01.00 |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 055/97                 | INDEFINIDO ' +
        '         '
      
        #13'         18  |  01  |  01  | ECF-IF     | IBM                  ' +
        '| 4610-KR4             | 01.00.00   |       1      |       1    ' +
        '  |  SIM  |  SIM  | ATO 010/04 - REG 003           | IB019999999' +
        '999999999'
      
        #13'         18  |  01  |  02  | ECF-IF     | IBM                  ' +
        '| 4610-KR4             | 01.01.02   |       1      |       1    ' +
        '  |  SIM  |  SIM  | ATO 051/05 - REG 034           | IB019999999' +
        '999999999'
      
        #13'         18  |  01  |  03  | ECF-IF     | IBM                  ' +
        '| 4610-KR4             | 01.03.02   |       1      |       1    ' +
        '  |  SIM  |  SIM  | TDF 015/05 PT-16               | IB019999999' +
        '999999999'
      
        #13'         18  |  01  |  04  | ECF-IF     | IBM                  ' +
        '| 4610-KR4             | 01.03.03   |       1      |       1    ' +
        '  |  SIM  |  SIM  | TDF 020/08 PT-41               | IB019999999' +
        '999999999'
      
        #13'         18  |  02  |  01  | ECF-PDV    | IBM                  ' +
        '| ECF 4614-001         | TS01.00    |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 019/96                 | INDEFINIDO ' +
        '         '
      
        #13'         18  |  03  |  01  | ECF-IF     | IBM                  ' +
        '| 4679-3B4             | 01.00.00   |       1      |       1    ' +
        '  |  NAO  |  NAO  | ATO 011/04 - REG 004           | IB029999999' +
        '999999999'
      
        #13'         18  |  04  |  01  | ECF-IF     | IBM                  ' +
        '| 4679-3BM             | 7E         |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 124/98                 | 9999999    ' +
        '         '
      
        #13'         18  |  04  |  02  | ECF-IF     | IBM                  ' +
        '| 4679-3BM             | 85         |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 043/99                 | 9999999    ' +
        '         '
      
        #13'         18  |  04  |  03  | ECF-IF     | IBM                  ' +
        '| 4679-3BM             | 8C         |       1      |       0    ' +
        '  |  NAO  |  NAO  | ATO 021/00                     | 9999999    ' +
        '         '
      
        #13'         18  |  05  |  01  | ECF-IF     | IBM                  ' +
        '| 4679-3BS             | 7E         |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 123/98                 | 9999999    ' +
        '         '
      
        #13'         18  |  05  |  02  | ECF-IF     | IBM                  ' +
        '| 4679-3BS             | 85         |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 042/99                 | 9999999    ' +
        '         '
      
        #13'         18  |  05  |  03  | ECF-IF     | IBM                  ' +
        '| 4679-3BS             | 8C         |       1      |       0    ' +
        '  |  NAO  |  NAO  | ATO 022/00                     | 9999999    ' +
        '         '
      
        #13'         18  |  06  |  01  | ECF-IF     | IBM                  ' +
        '| 4679-3FB             | 4B         |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 005/96                 | 9999999    ' +
        '         '
      
        #13'         18  |  06  |  02  | ECF-IF     | IBM                  ' +
        '| 4679-3FB             | V60        |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 028/97                 | 9999999    ' +
        '         '
      
        #13'         18  |  07  |  01  | ECF-IF     | IBM                  ' +
        '| IB-20 FI II          | VER.03.00  |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 010/99                 | 99999999999' +
        '99       '
      
        #13'         18  |  07  |  02  | ECF-IF     | IBM                  ' +
        '| IB 20 FI II          | 03.05      |       2      |       0    ' +
        '  |  NAO  |  NAO  | PAR/SC 09 - 26/05/00           | 99999999999' +
        '99       '
      
        #13'         18  |  07  |  03  | ECF-IF     | IBM                  ' +
        '| IB-20 FI II          | 03.10      |       2      |       0    ' +
        '  |  NAO  |  NAO  | ATO 028/00                     | 99999999999' +
        '99       '
      
        #13'         18  |  07  |  04  | ECF-IF     | IBM                  ' +
        '| IB-20 FI II          | VER03.22   |       3      |       0    ' +
        '  |  NAO  |  NAO  | ATO 042/01                     | 99999999999' +
        '99       '
      
        #13'         18  |  07  |  05  | ECF-IF     | IBM                  ' +
        '| IB-20 FI II          | VER03.26   |       3      |       0    ' +
        '  |  NAO  |  NAO  | ATO 030/03                     | 99999999999' +
        '99       '
      
        #13'         18  |  07  |  06  | ECF-IF     | IBM                  ' +
        '| IB-20 FI II          | VER03.31   |       3      |       0    ' +
        '  |  NAO  |  NAO  | TDF 017/06 PT-16               | 99999999999' +
        '99       '
      
        '         18  |  08  |  01  | ECF-IF     | IBM                  |' +
        ' IB-20 FI II R        | VER03.21   |       3      |       0     ' +
        ' |  NAO  |  NAO  | ATO 027/01                     | 999999999999' +
        '9       '
      
        #13'         18  |  09  |  01  | ECF-IF     | IBM                  ' +
        '| IB-40 FI II          | VER.03.00  |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 011/99                 | 99999999999' +
        '99       '
      
        #13'         18  |  09  |  02  | ECF-IF     | IBM                  ' +
        '| IB 40 FI II          | 03.05      |       2      |       0    ' +
        '  |  NAO  |  NAO  | PAR/SC 10 - 26/05/00           | 99999999999' +
        '99       '
      
        #13'         18  |  09  |  03  | ECF-IF     | IBM                  ' +
        '| IB-40 FI II          | 03.10      |       2      |       0    ' +
        '  |  NAO  |  NAO  | ATO 029/00                     | 99999999999' +
        '99       '
      
        #13'         18  |  09  |  04  | ECF-IF     | IBM                  ' +
        '| IB-40 FI II          | VER03.21   |       2      |       0    ' +
        '  |  NAO  |  NAO  | ATO 041/01                     | 99999999999' +
        '99       '
      
        #13'         18  |  10  |  01  | ECF-IF     | IBM                  ' +
        '| POS ENTRY            | FCP-201    |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 067/98                 | 9999999999 ' +
        '         '
      
        #13'         18  |  11  |  01  | ECF-PDV    | IBM                  ' +
        '| KIT ECF 4614-001     | TS01.00    |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 019/96                 | INDEFINIDO ' +
        '         '
      
        #13'         18  |  12  |  01  | ECF-IF     | IBM                  ' +
        '| 4610-KN4             | 01.00.01   |       1      |       1    ' +
        '  |  SIM  |  SIM  | TDF 002/08 PT-41               | IB039999999' +
        '999999999'
      
        #13'         19  |  01  |  01  | ECF-IF     | iCASH                ' +
        '| IF-II                | 01.00.00   |       2      |       2    ' +
        '  |  NAO  |  NAO  | ATO 040/03 - REG 001           | INDEFINIDO ' +
        '         '
      
        #13'         20  |  01  |  01  | ECF-IF     | INFOT'#201'CNICA          ' +
        '| EXCELER 1E           | FCP-201    |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 135/98                 | 9999999999 ' +
        '         '
      
        #13'         20  |  02  |  01  | ECF-IF     | INFOT'#201'CNICA          ' +
        '| EXCELER 2E           | FPE-301    |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 136/98                 | 9999999999 ' +
        '         '
      
        #13'         21  |  01  |  01  | ECF-IF     | IONICS               ' +
        '| IONICS 1E            | FCP-201    |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 068/98                 | 9999999999 ' +
        '         '
      
        #13'         21  |  01  |  02  | ECF-IF     | IONICS               ' +
        '| IONICS 1E            | FCP-400    |       1      |       0    ' +
        '  |  NAO  |  NAO  | ATO 038/00                     | 9999999999 ' +
        '         '
      
        #13'         21  |  02  |  01  | ECF-IF     | IONICS               ' +
        '| IONICS 2E            | FPE-301    |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 101/98                 | 9999999999 ' +
        '         '
      
        #13'         22  |  01  |  01  | ECF-IF     | ITAUTEC              ' +
        '| INFOWAY 1E T1        | 01.00.00   |       1      |       1    ' +
        '  |  SIM  |  NAO  | ATO 054/05 - REG 037           | IP019999999' +
        '999999999'
      
        #13'         22  |  01  |  02  | ECF-IF     | ITAUTEC              ' +
        '| INFOWAY 1E T1        | 01.01.00   |       1      |       1    ' +
        '  |  SIM  |  NAO  | ATO 065/05 - REG 042           | IP019999999' +
        '999999999'
      
        #13'         22  |  01  |  03  | ECF-IF     | ITAUTEC              ' +
        '| INFOWAY 1E T1        | 01.01.02   |       1      |       1    ' +
        '  |  SIM  |  NAO  | TDF 003/06 PT-16               | IP019999999' +
        '999999999'
      
        #13'         22  |  01  |  04  | ECF-IF     | ITAUTEC              ' +
        '| INFOWAY 1E T1        | 01.01.04   |       1      |       1    ' +
        '  |  SIM  |  NAO  | ATO 073/06 REG 087             | IP019999999' +
        '999999999'
      
        #13'         22  |  01  |  05  | ECF-IF     | ITAUTEC              ' +
        '| INFOWAY 1E T1        | 01.01.05   |       1      |       1    ' +
        '  |  SIM  |  NAO  | TDF 023/07 PT-41               | IP019999999' +
        '999999999'
      
        #13'         22  |  02  |  01  | ECF-IF     | ITAUTEC              ' +
        '| POS 4000 1E          | V6.00      |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 025/95                 | 99999999999' +
        '99999    '
      
        #13'         22  |  03  |  01  | ECF-IF     | ITAUTEC              ' +
        '| POS 4000 3E          | V6.00      |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 025/95                 | 99999999999' +
        '99999    '
      
        #13'         22  |  04  |  01  | ECF-IF     | ITAUTEC              ' +
        '| POS 4000 3E BR       | V6.00      |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 025/95                 | 99999999999' +
        '99999    '
      
        #13'         22  |  05  |  01  | ECF-IF     | ITAUTEC              ' +
        '| POS 4000 IF/1E       | V6.01      |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 015/96                 | 99999999999' +
        '99999    '
      
        #13'         22  |  05  |  02  | ECF-IF     | ITAUTEC              ' +
        '| POS 4000 IF/1E       | V6.02      |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 015/97                 | 99999999999' +
        '99999    '
      
        #13'         22  |  05  |  03  | ECF-IF     | ITAUTEC              ' +
        '| POS 4000 IF/1E       | V6.03      |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 018/98                 | 99999999999' +
        '99999    '
      
        #13'         22  |  06  |  01  | ECF-IF     | ITAUTEC              ' +
        '| POS 4000 IF/1E BR    | V6.01      |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 015/96                 | 99999999999' +
        '99999    '
      
        #13'         22  |  06  |  02  | ECF-IF     | ITAUTEC              ' +
        '| POS 4000 IF/1E BR    | V7.00      |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 015/97                 | 99999999999' +
        '99999    '
      
        #13'         22  |  07  |  01  | ECF-IF     | ITAUTEC              ' +
        '| POS 4000 IF/1E II    | V1.00      |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 014/99                 | 99999999999' +
        '99999    '
      
        #13'         22  |  08  |  01  | ECF-IF     | ITAUTEC              ' +
        '| POS 4000 IF/3E       | V6.01      |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 015/96                 | 99999999999' +
        '99999    '
      
        #13'         22  |  08  |  02  | ECF-IF     | ITAUTEC              ' +
        '| POS 4000 IF/3E       | V6.02      |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 015/97                 | 99999999999' +
        '99999    '
      
        #13'         22  |  08  |  03  | ECF-IF     | ITAUTEC              ' +
        '| POS 4000 IF/3E       | V6.03      |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 019/98                 | 99999999999' +
        '99999    '
      
        #13'         22  |  09  |  01  | ECF-IF     | ITAUTEC              ' +
        '| POS 4000 IF/3E BR    | V6.01      |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 015/96                 | 99999999999' +
        '99999    '
      
        #13'         22  |  09  |  02  | ECF-IF     | ITAUTEC              ' +
        '| POS 4000 IF/3E BR    | V7.00      |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 015/97                 | 99999999999' +
        '99999    '
      
        #13'         22  |  10  |  01  | ECF-IF     | ITAUTEC              ' +
        '| POS 4000 IF/3E II    | V1.00      |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 015/99                 | 99999999999' +
        '99999    '
      
        #13'         22  |  11  |  01  | ECF-IF     | ITAUTEC              ' +
        '| POS ECF IF/1E M      | FCP-201    |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 141/98                 | 9999999999 ' +
        '         '
      
        #13'         22  |  12  |  01  | ECF-IF     | ITAUTEC              ' +
        '| POS ECF IF/2E M      | FPE-301    |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 142/98                 | 9999999999 ' +
        '         '
      
        '         22  |  13  |  01  | ECF-IF     | ITAUTEC              |' +
        ' POS-4000 IF/3        | 5.1        |       1      |       0     ' +
        ' |  NAO  |  NAO  | PARECER 003/95                 | INDEFINIDO  ' +
        '        '
      
        #13'         22  |  14  |  01  | ECF-IF     | ITAUTEC              ' +
        '| KIT ECF-IF/3E        | V6.00      |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 025/95                 | INDEFINIDO ' +
        '         '
      
        #13'         22  |  15  |  01  | ECF-IF     | ITAUTEC              ' +
        '| KIT ECF-IF/1E        | V6.00      |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 025/95                 | INDEFINIDO ' +
        '         '
      
        #13'         22  |  16  |  01  | ECF-IF     | ITAUTEC              ' +
        '| KIT POS 4000 ECF-IF/ | V6.01      |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 015/96                 | 99999999999' +
        '99999    '
      
        #13'         22  |  16  |  02  | ECF-IF     | ITAUTEC              ' +
        '| KIT POS 4000 ECF-IF/ | V6.02      |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 015/97                 | 99999999999' +
        '99999    '
      
        #13'         22  |  17  |  01  | ECF-IF     | ITAUTEC              ' +
        '| KIT POS 4000 ECF-IF/ | V6.01      |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 015/96                 | 99999999999' +
        '99999    '
      
        #13'         22  |  17  |  02  | ECF-IF     | ITAUTEC              ' +
        '| KIT POS 4000 ECF-IF/ | V6.02      |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 015/97                 | 99999999999' +
        '99999    '
      
        #13'         22  |  18  |  01  | ECF-IF     | ITAUTEC              ' +
        '| QW PRINTER 1E T3     | 01.00.01   |       1      |       1    ' +
        '  |  SIM  |  NAO  | TDF 024/07 PT-41               | IP039999999' +
        '999999999'
      
        #13'         22  |  19  |  01  | ECF-IF     | ITAUTEC              ' +
        '| INFOWAY 1E T2        | 01.00.05   |       1      |       1    ' +
        '  |  SIM  |  NAO  | TDF 021/08 PT-41               | IP029999999' +
        '999999999'
      
        #13'         22  |  20  |  01  | ECF-IF     | ITAUTEC              ' +
        '| KUBUS 1EF            | 01.00.05   |       1      |       1    ' +
        '  |  SIM  |  NAO  | TDF 022/08 PT-41               | IP059999999' +
        '999999999'
      
        #13'         22  |  21  |  01  | ECF-IF     | ITAUTEC              ' +
        '| QW PRINTER 6000 MT2  | 01.00.05   |       1      |       1    ' +
        '  |  SIM  |  NAO  | TDF 023/08 PT-41               | IP049999999' +
        '999999999'
      
        #13'         23  |  01  |  01  | ECF-IF     | MECAF                ' +
        '| 1E-3001              | FPE-301    |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 098/98                 | 9999999999 ' +
        '         '
      
        #13'         23  |  01  |  02  | ECF-IF     | MECAF                ' +
        '| 1E-3001              | FPE-003    |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 022/98                 | 9999999999 ' +
        '         '
      
        #13'         23  |  01  |  03  | ECF-IF     | MECAF                ' +
        '| 1E-3001              | FPE-002    |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 023/97                 | 9999999999 ' +
        '         '
      
        #13'         23  |  02  |  01  | ECF-IF     | MECAF                ' +
        '| 2E-3002              | FPE-301    |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 099/98                 | 9999999999 ' +
        '         '
      
        #13'         23  |  02  |  02  | ECF-IF     | MECAF                ' +
        '| 2E-3002              | FPE-003    |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 023/98                 | 9999999999 ' +
        '         '
      
        #13'         23  |  02  |  03  | ECF-IF     | MECAF                ' +
        '| 2E-3002              | FPE-002    |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 023/97                 | 9999999999 ' +
        '         '
      
        #13'         23  |  02  |  04  | ECF-IF     | MECAF                ' +
        '| 2E-3002              | FPE-302    |       1      |       0    ' +
        '  |  NAO  |  NAO  | ATO MG 00027-2R1               | 9999999999 ' +
        '         '
      
        #13'         23  |  03  |  01  | ECF-IF     | MECAF                ' +
        '| 2E-4002              | FPO-302    |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 071/99                 | 9999999999 ' +
        '         '
      
        '         23  |  03  |  02  | ECF-IF     | MECAF                |' +
        ' 2E-4002              | FPO-400    |       2      |       0     ' +
        ' |  NAO  |  NAO  | ATO 040/00                     | 9999999999  ' +
        '        '
      
        #13'         23  |  04  |  01  | ECF-IF     | MECAF                ' +
        '| COMPACT FCR          | FCP-400    |       1      |       0    ' +
        '  |  NAO  |  NAO  | ATO 039/00                     | 9999999999 ' +
        '         '
      
        #13'         23  |  04  |  02  | ECF-IF     | MECAF                ' +
        '| COMPACT FCR          | FCP-402    |       1      |       0    ' +
        '  |  NAO  |  NAO  | ATO 076/00                     | 9999999999 ' +
        '         '
      
        #13'         23  |  04  |  03  | ECF-IF     | MECAF                ' +
        '| COMPACT FCR          | FCP-500    |       1      |       0    ' +
        '  |  NAO  |  NAO  | ATO 019/01                     | 9999999999 ' +
        '         '
      
        #13'         23  |  05  |  01  | ECF-IF     | MECAF                ' +
        '| COMPACT FISCAL       | FCP0000.00 |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 026/95                 | 9999999999 ' +
        '         '
      
        #13'         23  |  05  |  02  | ECF-IF     | MECAF                ' +
        '| COMPACT FISCAL       | FCP-000    |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 017/96                 | 9999999999 ' +
        '         '
      
        #13'         23  |  05  |  03  | ECF-IF     | MECAF                ' +
        '| COMPACT FISCAL       | FCP-001    |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 022/97                 | 9999999999 ' +
        '         '
      
        #13'         23  |  05  |  04  | ECF-IF     | MECAF                ' +
        '| COMPACT FISCAL       | FCP-002    |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 021/98                 | 9999999999 ' +
        '         '
      
        #13'         23  |  05  |  05  | ECF-IF     | MECAF                ' +
        '| COMPACT FISCAL       | FCP-101    |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 077/98                 | 9999999999 ' +
        '         '
      
        #13'         23  |  05  |  06  | ECF-IF     | MECAF                ' +
        '| COMPACT FISCAL       | FCP-201    |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 072/98                 | 9999999999 ' +
        '         '
      
        #13'         24  |  01  |  01  | ECF-IF     | MICROMAN             ' +
        '| MICROMAN 1E          | FCP-201    |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 069/98                 | 9999999999 ' +
        '         '
      
        #13'         24  |  02  |  01  | ECF-IF     | MICROMAN             ' +
        '| MICROMAN 2E          | FPE-301    |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 100/98                 | 9999999999 ' +
        '         '
      
        #13'         25  |  01  |  01  | ECF-IF     | MICROTEC             ' +
        '| EXATTO ECF           | 3.01       |       1      |       0    ' +
        '  |  NAO  |  NAO  | ATO 004/01                     | 99999999   ' +
        '         '
      
        #13'         26  |  01  |  01  | ECF-IF     | NCR                  ' +
        '| ECF-IF 7141          | 02.10      |       1      |       0    ' +
        '  |  NAO  |  NAO  | ATO 020/00                     | INDEFINIDO ' +
        '         '
      
        #13'         26  |  01  |  02  | ECF-IF     | NCR                  ' +
        '| ECF-IF 7141          | 02.11      |       2      |       0    ' +
        '  |  NAO  |  NAO  | PAR/SC 16 - 31/08/00           | INDEFINIDO ' +
        '         '
      
        #13'         26  |  01  |  03  | ECF-IF     | NCR                  ' +
        '| ECF-IF 7141          | V:02.12    |       2      |       0    ' +
        '  |  NAO  |  NAO  | ATO 017/01                     | INDEFINIDO ' +
        '         '
      
        #13'         26  |  02  |  01  | ECF-IF     | NCR                  ' +
        '| ECF-IF 7141A         | V03.00     |       2      |       0    ' +
        '  |  NAO  |  NAO  | ATO 008/02                     | INDEFINIDO ' +
        '         '
      
        '         26  |  03  |  01  | ECF-IF     | NCR                  |' +
        ' 7167                 | 01.00.00   |       1      |       1     ' +
        ' |  SIM  |  SIM  | ATO 024/05 - REG 018           | NC0299999999' +
        '99999999'
      
        #13'         26  |  03  |  02  | ECF-IF     | NCR                  ' +
        '| 7167                 | 01.02.13   |       1      |       1    ' +
        '  |  SIM  |  SIM  | ATO 022/06 - REG 059           | NC029999999' +
        '999999999'
      
        #13'         26  |  03  |  03  | ECF-IF     | NCR                  ' +
        '| 7167                 | 02.01.29   |       1      |       1    ' +
        '  |  SIM  |  SIM  | TDF 010/08 PT-41               | NC029999999' +
        '999999999'
      
        #13'         26  |  04  |  01  | ECF-IF     | NCR                  ' +
        '| 7197                 | 01.00.00   |       1      |       1    ' +
        '  |  SIM  |  SIM  | ATO 025/05 - REG 019           | NC039999999' +
        '999999999'
      
        #13'         26  |  04  |  02  | ECF-IF     | NCR                  ' +
        '| 7197                 | 01.02.13   |       1      |       1    ' +
        '  |  SIM  |  SIM  | ATO 023/06 - REG 060           | NC039999999' +
        '999999999'
      
        #13'         26  |  04  |  03  | ECF-IF     | NCR                  ' +
        '| 7197                 | 02.01.29   |       1      |       1    ' +
        '  |  SIM  |  SIM  | TDF 011/08 PT-41               | NC039999999' +
        '999999999'
      
        #13'         26  |  05  |  01  | ECF-IF     | NCR                  ' +
        '| 72EPS-01             | 01.00      |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 044/97                 | INDEFINIDO ' +
        '         '
      
        #13'         26  |  05  |  02  | ECF-IF     | NCR                  ' +
        '| 72EPS-01             | 01.01      |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 054/97                 | INDEFINIDO ' +
        '         '
      
        #13'         26  |  05  |  03  | ECF-IF     | NCR                  ' +
        '| 72EPS-01             | 01.02      |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 055/98                 | INDEFINIDO ' +
        '         '
      
        #13'         26  |  06  |  01  | ECF-IF     | NCR                  ' +
        '| 72EPS-02             | 01.00      |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 044/97                 | INDEFINIDO ' +
        '         '
      
        #13'         26  |  06  |  02  | ECF-IF     | NCR                  ' +
        '| 72EPS-02             | 01.01      |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 054/97                 | INDEFINIDO ' +
        '         '
      
        #13'         26  |  06  |  03  | ECF-IF     | NCR                  ' +
        '| 72EPS-02             | 01.02      |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 056/98                 | INDEFINIDO ' +
        '         '
      
        #13'         26  |  07  |  01  | ECF-IF     | NCR                  ' +
        '| 7424E2I              | 01.00.00   |       1      |       1    ' +
        '  |  NAO  |  NAO  | ATO 012/04 - REG 005           | NC019999999' +
        '99       '
      
        #13'         26  |  07  |  02  | ECF-IF     | NCR                  ' +
        '| 7424E2I              | 01.01.00   |       1      |       1    ' +
        '  |  NAO  |  NAO  | ATO 006/05 - REG 012           | NC019999999' +
        '99       '
      
        #13'         26  |  08  |  01  | ECF-PDV    | NCR                  ' +
        '| 7445                 | 01.00      |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 043/97                 | INDEFINIDO ' +
        '         '
      
        #13'         26  |  08  |  02  | ECF-PDV    | NCR                  ' +
        '| 7445                 | 01.01      |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 053/97                 | INDEFINIDO ' +
        '         '
      
        #13'         26  |  08  |  03  | ECF-PDV    | NCR                  ' +
        '| 7445                 | 01.02      |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 054/98                 | INDEFINIDO ' +
        '         '
      
        #13'         26  |  09  |  01  | ECF-IF     | NCR                  ' +
        '| IF 02-01             | 02.00      |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 001/99                 | 99999999999' +
        '         '
      
        #13'         26  |  09  |  02  | ECF-IF     | NCR                  ' +
        '| IF 02-01             | 02.01      |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 084/99                 | 99999999999' +
        '         '
      
        #13'         26  |  09  |  03  | ECF-IF     | NCR                  ' +
        '| IF 02-01             | 02.02      |       2      |       0    ' +
        '  |  NAO  |  NAO  | ATO 013/00                     | 99999999999' +
        '         '
      
        #13'         26  |  10  |  01  | ECF-IF     | NCR                  ' +
        '| IF 03-02             | 02.00      |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 002/99                 | 99999999999' +
        '         '
      
        #13'         26  |  10  |  02  | ECF-IF     | NCR                  ' +
        '| IF 03-02             | 02.01      |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 085/99                 | 99999999999' +
        '         '
      
        #13'         26  |  10  |  03  | ECF-IF     | NCR                  ' +
        '| IF 03-02             | 02.02      |       1      |       0    ' +
        '  |  NAO  |  NAO  | ATO 014/00                     | 99999999999' +
        '         '
      
        #13'         26  |  11  |  01  | ECF-MR     | NCR                  ' +
        '| NCR2003              | V1.00      |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 128/98                 | INDEFINIDO ' +
        '         '
      
        #13'         26  |  12  |  01  | ECF-MR     | NCR                  ' +
        '| NCR2050              | V1.00      |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 127/98                 | INDEFINIDO ' +
        '         '
      
        #13'         27  |  01  |  01  | ECF-IF     | OLIVETTI             ' +
        '| PR4/F                | 1.00       |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 061/98                 | INDEFINIDO ' +
        '         '
      
        #13'         27  |  01  |  02  | ECF-IF     | OLIVETTI             ' +
        '| PR4/F                | 1.10       |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 034/99                 | INDEFINIDO ' +
        '         '
      
        #13'         27  |  01  |  03  | ECF-IF     | OLIVETTI             ' +
        '| PR4/F                | 1.20       |       2      |       0    ' +
        '  |  NAO  |  NAO  | ATO 056/00                     | INDEFINIDO ' +
        '         '
      
        #13'         27  |  02  |  01  | ECF-IF     | OLIVETTI             ' +
        '| PR4/FB               | 03.10      |       2      |       0    ' +
        '  |  NAO  |  NAO  | ATO 035/00                     | INDEFINIDO ' +
        '         '
      
        #13'         27  |  03  |  01  | ECF-IF     | OLIVETTI             ' +
        '| PR4/FSW              | 1.0        |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 036/99                 | INDEFINIDO ' +
        '         '
      
        #13'         27  |  04  |  01  | ECF-IF     | OLIVETTI             ' +
        '| PR4/FZ               | 03.10      |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 035/99                 | INDEFINIDO ' +
        '         '
      
        #13'         28  |  01  |  01  | ECF-IF     | PERTO                ' +
        '| PERTOCHEK FP         | V2.10      |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 052/99                 | 99999999   ' +
        '         '
      
        #13'         28  |  01  |  02  | ECF-IF     | PERTO                ' +
        '| PERTOCHEK FP         | 03.00.00   |       2      |       2    ' +
        '  |  SIM  |  NAO  | ATO 021/03                     | PE019999999' +
        '         '
      
        #13'         28  |  01  |  03  | ECF-IF     | PERTO                ' +
        '| PERTOCHEK FP         | 03.03.01   |       2      |       2    ' +
        '  |  SIM  |  NAO  | ATO 015/06 - REG 052           | PE019999999' +
        '         '
      
        #13'         28  |  01  |  04  | ECF-IF     | PERTO                ' +
        '| PERTOCHEK FP         | 03.03.02   |       2      |       2    ' +
        '  |  SIM  |  NAO  | TDF 015/06 PT-16               | PE019999999' +
        '         '
      
        #13'         28  |  02  |  01  | ECF-PDV    | PERTO                ' +
        '| PERTOCHEK POS FP     | V2.10      |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 053/99                 | 99999999   ' +
        '         '
      
        '         28  |  02  |  02  | ECF-PDV    | PERTO                |' +
        ' PERTOCHEK POS FP     | 03.00.00   |       2      |       2     ' +
        ' |  SIM  |  NAO  | ATO 020/03                     | PE029999999 ' +
        '        '
      
        #13'         28  |  03  |  01  | ECF-IF     | PERTO                ' +
        '| PERTOPAY 2020        | 2.79       |       2      |       2    ' +
        '  |  SIM  |  SIM  | PAR/SC 05 - 06/09/01           | INDEFINIDO ' +
        '         '
      
        #13'         28  |  03  |  02  | ECF-IF     | PERTO                ' +
        '| PERTOPAY 2020        | 2.63       |       2      |       2    ' +
        '  |  SIM  |  SIM  | PAR/SC 24 - 1/12/00            | INDEFINIDO ' +
        '         '
      
        #13'         28  |  04  |  01  | ECF-IF     | PERTO                ' +
        '| PERTOPAY 2040        | 2.63       |       2      |       2    ' +
        '  |  SIM  |  SIM  | PAR/SC 25 - 1/12/00            | INDEFINIDO ' +
        '         '
      
        #13'         28  |  05  |  01  | ECF-IF     | PERTO                ' +
        '| PERTOPRINTER 1EF     | 01.00.00   |       1      |       1    ' +
        '  |  SIM  |  NAO  | ATO 078/06 REG 092             | PE039999999' +
        '999999999'
      
        #13'         28  |  05  |  02  | ECF-IF     | PERTO                ' +
        '| PERTOPRINTER 1EF     | 01.00.04   |       1      |       1    ' +
        '  |  SIM  |  NAO  | TDF 009/07 - PT41              | PE039999999' +
        '999999999'
      
        #13'         29  |  01  |  01  | ECF-IF     | PROCOMP              ' +
        '| 2001                 | FPE-002    |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 025/97                 | 9999999999 ' +
        '         '
      
        #13'         29  |  01  |  02  | ECF-IF     | PROCOMP              ' +
        '| 2001                 | FPE-003    |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 025/98                 | 9999999999 ' +
        '         '
      
        #13'         29  |  01  |  03  | ECF-IF     | PROCOMP              ' +
        '| 2001                 | FPE-301    |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 107/98                 | 9999999999 ' +
        '         '
      
        #13'         29  |  02  |  01  | ECF-IF     | PROCOMP              ' +
        '| 2002                 | FPE-001    |       1      |       0    ' +
        '  |  NAO  |  NAO  | ATO 00083-3/MG                 | 9999999999 ' +
        '         '
      
        #13'         29  |  02  |  02  | ECF-IF     | PROCOMP              ' +
        '| 2002                 | FPE-002    |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 025/97                 | 9999999999 ' +
        '         '
      
        #13'         29  |  02  |  03  | ECF-IF     | PROCOMP              ' +
        '| 2002                 | FPE-003    |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 026/98                 | 9999999999 ' +
        '         '
      
        #13'         29  |  02  |  04  | ECF-IF     | PROCOMP              ' +
        '| 2002                 | FPE-301    |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 106/98                 | 9999999999 ' +
        '         '
      
        #13'         29  |  02  |  05  | ECF-IF     | PROCOMP              ' +
        '| 2002                 | FPE-302    |       1      |       0    ' +
        '  |  NAO  |  NAO  | ATO MG 00083-3R3               | 9999999999 ' +
        '         '
      
        #13'         29  |  03  |  01  | ECF-IF     | PROCOMP              ' +
        '| 2003                 | FPO-400    |       2      |       0    ' +
        '  |  NAO  |  NAO  | ATO 008/00                     | 9999999999 ' +
        '         '
      
        #13'         29  |  04  |  01  | ECF-IF     | PROCOMP              ' +
        '| 2011                 | FCP-001    |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 024/97                 | 9999999999 ' +
        '         '
      
        #13'         29  |  04  |  02  | ECF-IF     | PROCOMP              ' +
        '| 2011                 | FCP-002    |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 024/98                 | 9999999999 ' +
        '         '
      
        #13'         29  |  04  |  03  | ECF-IF     | PROCOMP              ' +
        '| 2011                 | FCP-101    |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 078/98                 | 9999999999 ' +
        '         '
      
        #13'         29  |  04  |  04  | ECF-IF     | PROCOMP              ' +
        '| 2011                 | FCP-201    |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 073/98                 | 9999999999 ' +
        '         '
      
        #13'         29  |  04  |  05  | ECF-IF     | PROCOMP              ' +
        '| 2011                 | FCP-500    |       1      |       0    ' +
        '  |  NAO  |  NAO  | ATO 020/01                     | 9999999999 ' +
        '         '
      
        #13'         29  |  05  |  01  | ECF-IF     | PROCOMP              ' +
        '| 2021                 | FCP-402    |       1      |       0    ' +
        '  |  NAO  |  NAO  | ATO 077/00                     | 9999999999 ' +
        '         '
      
        #13'         29  |  06  |  01  | ECF-IF     | PROCOMP              ' +
        '| 2023                 | FPO-400    |       2      |       0    ' +
        '  |  NAO  |  NAO  | ATO 041/00                     | 9999999999 ' +
        '         '
      
        #13'         30  |  01  |  01  | ECF-IF     | QUALID               ' +
        '| CASH TOP ECF-IF      | 2.00       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 008/96                 | INDEFINIDO ' +
        '         '
      
        #13'         30  |  02  |  01  | ECF-PDV    | QUALID               ' +
        '| CASH TOP ECF-PDV     | 2.00       |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 008/96                 | INDEFINIDO ' +
        '         '
      
        #13'         31  |  01  |  01  | ECF-IF     | QUATTRO              ' +
        '| EASY APF             | 01.00      |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 002/98                 | 999999     ' +
        '         '
      
        #13'         31  |  01  |  02  | ECF-IF     | QUATTRO              ' +
        '| EASY APF             | 01.02      |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 129/98                 | 999999     ' +
        '         '
      
        #13'         31  |  01  |  03  | ECF-IF     | QUATTRO              ' +
        '| EASY APF             | 01.03      |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 054/99                 | 999999     ' +
        '         '
      
        #13'         31  |  01  |  04  | ECF-IF     | QUATTRO              ' +
        '| EASY APF             | 01.04      |       1      |       0    ' +
        '  |  NAO  |  NAO  | ATO 033/00                     | 999999     ' +
        '         '
      
        #13'         31  |  01  |  05  | ECF-IF     | QUATTRO              ' +
        '| EASY APF             | 02.00      |       1      |       0    ' +
        '  |  NAO  |  NAO  | ATO 032/03                     | 999999     ' +
        '         '
      
        #13'         31  |  02  |  01  | ECF-IF     | QUATTRO              ' +
        '| EASY IIF             | 02.00      |       1      |       0    ' +
        '  |  NAO  |  NAO  | ATO 029/01                     | 999999     ' +
        '         '
      
        #13'         31  |  03  |  01  | ECF-IF     | QUATTRO              ' +
        '| TKT40                | 01.00.00   |       1      |       1    ' +
        '  |  NAO  |  NAO  | ATO 009/04 - REG 002           | INDEFINIDO ' +
        '         '
      
        #13'         32  |  01  |  01  | ECF-IF     | ROBOMARKET           ' +
        '| IF S-7000 I          | 2.0        |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 027/95                 | 99999999   ' +
        '         '
      
        #13'         32  |  02  |  01  | ECF-IF     | ROBOMARKET           ' +
        '| IF S-7000 II         | 2.0        |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 027/95                 | 99999999   ' +
        '         '
      
        #13'         32  |  03  |  01  | ECF-IF     | ROBOMARKET           ' +
        '| IF S-7000 III        | 2.0        |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 027/95                 | 99999999   ' +
        '         '
      
        #13'         32  |  04  |  01  | ECF-IF     | ROBOMARKET           ' +
        '| RM 1                 | FCP-002    |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 031/98                 | 9999999999 ' +
        '         '
      
        #13'         32  |  04  |  02  | ECF-IF     | ROBOMARKET           ' +
        '| RM 1                 | FCP-201    |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 074/98                 | 9999999999 ' +
        '         '
      
        '         32  |  05  |  01  | ECF-IF     | ROBOMARKET           |' +
        ' RM 1E                | FPE-003    |       2      |       0     ' +
        ' |  NAO  |  NAO  | PARECER 032/98                 | 9999999999  ' +
        '        '
      
        #13'         32  |  05  |  02  | ECF-IF     | ROBOMARKET           ' +
        '| RM 1E                | FPE-301    |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 109/98                 | 9999999999 ' +
        '         '
      
        #13'         32  |  06  |  01  | ECF-IF     | ROBOMARKET           ' +
        '| RM 2E                | FPE-003    |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 033/98                 | 9999999999 ' +
        '         '
      
        #13'         32  |  06  |  02  | ECF-IF     | ROBOMARKET           ' +
        '| RM 2E                | FPE-301    |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 110/98                 | 9999999999 ' +
        '         '
      
        #13'         32  |  07  |  01  | ECF-IF     | ROBOMARKET           ' +
        '| S-2050               | 2.0        |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 027/95                 | INDEFINIDO ' +
        '         '
      
        #13'         33  |  01  |  01  | ECF-IF     | ROR                  ' +
        '| IF ROR 1E            | FCP-001    |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 020/97                 | 9999999999 ' +
        '         '
      
        #13'         33  |  01  |  02  | ECF-IF     | ROR                  ' +
        '| IF ROR 1E            | FCP-002    |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 027/98                 | 9999999999 ' +
        '         '
      
        #13'         33  |  01  |  03  | ECF-IF     | ROR                  ' +
        '| IF ROR 1E            | FCP-101    |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 079/98                 | 9999999999 ' +
        '         '
      
        #13'         33  |  01  |  04  | ECF-IF     | ROR                  ' +
        '| IF ROR 1E            | FCP-201    |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 070/98                 | 9999999999 ' +
        '         '
      
        #13'         34  |  01  |  01  | ECF-IF     | SCHALTER             ' +
        '| D-PRINT              | V.2.03     |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 036/97                 | 99999999   ' +
        '         '
      
        #13'         34  |  01  |  02  | ECF-IF     | SCHALTER             ' +
        '| D-PRINT              | 2.04       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 005/98                 | 99999999   ' +
        '         '
      
        #13'         34  |  02  |  01  | ECF-IF     | SCHALTER             ' +
        '| D-PRINT ECF          | 3.00       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 013/99                 | 99999999   ' +
        '         '
      
        #13'         34  |  02  |  02  | ECF-IF     | SCHALTER             ' +
        '| D-PRINT ECF          | 3.01       |       1      |       0    ' +
        '  |  NAO  |  NAO  | ATO 009/00                     | 99999999   ' +
        '         '
      
        #13'         34  |  02  |  03  | ECF-IF     | SCHALTER             ' +
        '| D PRINT ECF          | 3.03       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PAR/SC 3 -27/03/00             | 99999999   ' +
        '         '
      
        #13'         34  |  03  |  01  | ECF-IF     | SCHALTER             ' +
        '| SCFI-1E              | 3.01       |       1      |       0    ' +
        '  |  NAO  |  NAO  | ATO 006/00                     | 99999999   ' +
        '         '
      
        #13'         34  |  03  |  02  | ECF-IF     | SCHALTER             ' +
        '| SCFI 1E              | 3.03       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PAR/SC 4 - 27/03/00            | 99999999   ' +
        '         '
      
        #13'         34  |  03  |  03  | ECF-IF     | SCHALTER             ' +
        '| SCFI 1E              | 3.05       |       1      |       0    ' +
        '  |  NAO  |  NAO  | ATO 041/04 - REG 010           | 99999999   ' +
        '         '
      
        #13'         34  |  03  |  04  | ECF-IF     | SCHALTER             ' +
        '| SCFI-1E              | 3.06       |       1      |       0    ' +
        '  |  NAO  |  NAO  | ATO 026/05 - REG 020           | 99999999   ' +
        '         '
      
        #13'         34  |  04  |  01  | ECF-IF     | SCHALTER             ' +
        '| S-PRINT              | 2.00       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 010/95                 | 99999999   ' +
        '         '
      
        #13'         34  |  04  |  02  | ECF-IF     | SCHALTER             ' +
        '| S-PRINT              | 2.01       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 013/96                 | 99999999   ' +
        '         '
      
        #13'         34  |  04  |  03  | ECF-IF     | SCHALTER             ' +
        '| S-PRINT              | V2.02      |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 032/96                 | 99999999   ' +
        '         '
      
        #13'         34  |  04  |  04  | ECF-IF     | SCHALTER             ' +
        '| S-PRINT              | V2.03      |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 037/97                 | 99999999   ' +
        '         '
      
        #13'         34  |  04  |  05  | ECF-IF     | SCHALTER             ' +
        '| S-PRINT              | 2.04       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 006/98                 | 99999999   ' +
        '         '
      
        #13'         34  |  05  |  01  | ECF-IF     | SCHALTER             ' +
        '| S-PRINT ECF          | 3.00       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 012/99                 | 99999999   ' +
        '         '
      
        #13'         34  |  05  |  02  | ECF-IF     | SCHALTER             ' +
        '| S-PRINT ECF          | 3.01       |       1      |       0    ' +
        '  |  NAO  |  NAO  | ATO 007/00                     | 99999999   ' +
        '         '
      
        #13'         34  |  05  |  03  | ECF-IF     | SCHALTER             ' +
        '| S PRINT ECF          | 3.03       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PAR/SC 5 - 27/03/00            | 99999999   ' +
        '         '
      
        #13'         34  |  06  |  01  | ECF-IF     | SCHALTER             ' +
        '| T-PRINT              | 2.00       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 010/95                 | 99999999   ' +
        '         '
      
        #13'         34  |  06  |  02  | ECF-IF     | SCHALTER             ' +
        '| T-PRINT              | 2.01       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 013/96                 | 99999999   ' +
        '         '
      
        #13'         34  |  06  |  03  | ECF-IF     | SCHALTER             ' +
        '| T-PRINT              | V2.02      |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 032/96                 | 99999999   ' +
        '         '
      
        #13'         34  |  06  |  04  | ECF-IF     | SCHALTER             ' +
        '| T-PRINT              | V2.03      |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 037/97                 | 99999999   ' +
        '         '
      
        #13'         34  |  06  |  05  | ECF-IF     | SCHALTER             ' +
        '| T-PRINT              | 2.04       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 006/98                 | 99999999   ' +
        '         '
      
        #13'         35  |  01  |  01  | ECF-PDV    | SID                  ' +
        '| ECF-PDV 6001         | 2.01       |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 014/96                 | INDEFINIDO ' +
        '         '
      
        #13'         35  |  01  |  02  | ECF-PDV    | SID                  ' +
        '| ECF-PDV 6001         | V2.02      |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 033/96                 | INDEFINIDO ' +
        '         '
      
        #13'         35  |  01  |  03  | ECF-PDV    | SID                  ' +
        '| ECF-PDV 6001         | V2.03      |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 038/97                 | INDEFINIDO ' +
        '         '
      
        #13'         35  |  01  |  04  | ECF-PDV    | SID                  ' +
        '| ECF-PDV 6001         | 2.04       |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 082/98                 | INDEFINIDO ' +
        '         '
      
        #13'         35  |  02  |  01  | ECF-PDV    | SID                  ' +
        '| 6002                 | 3.00       |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 023/96                 | INDEFINIDO ' +
        '         '
      
        '         35  |  03  |  01  | ECF-IF     | SID                  |' +
        ' 6404                 | 2.00       |       1      |       0     ' +
        ' |  NAO  |  NAO  | PARECER 011/95                 | INDEFINIDO  ' +
        '        '
      
        #13'         35  |  03  |  02  | ECF-IF     | SID                  ' +
        '| 6404                 | 2.01       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 020/96                 | INDEFINIDO ' +
        '         '
      
        #13'         35  |  03  |  03  | ECF-IF     | SID                  ' +
        '| 6404                 | 2.02       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 034/96                 | INDEFINIDO ' +
        '         '
      
        #13'         35  |  03  |  04  | ECF-IF     | SID                  ' +
        '| 6404                 | 2.03       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 039/97                 | INDEFINIDO ' +
        '         '
      
        #13'         35  |  03  |  05  | ECF-IF     | SID                  ' +
        '| 6404                 | 2.04       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 084/98                 | INDEFINIDO ' +
        '         '
      
        #13'         35  |  04  |  01  | ECF-IF     | SID                  ' +
        '| 6417                 | 2.00       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 011/95                 | INDEFINIDO ' +
        '         '
      
        #13'         35  |  04  |  02  | ECF-IF     | SID                  ' +
        '| 6417                 | 2.01       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 020/96                 | INDEFINIDO ' +
        '         '
      
        #13'         35  |  04  |  03  | ECF-IF     | SID                  ' +
        '| 6417                 | V2.02      |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 034/96                 | INDEFINIDO ' +
        '         '
      
        #13'         35  |  04  |  04  | ECF-IF     | SID                  ' +
        '| 6417                 | V2.03      |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 039/97                 | INDEFINIDO ' +
        '         '
      
        #13'         35  |  04  |  05  | ECF-IF     | SID                  ' +
        '| 6417                 | 2.04       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 085/98                 | INDEFINIDO ' +
        '         '
      
        #13'         35  |  05  |  01  | ECF-IF     | SID                  ' +
        '| 6454 PRINT PLUS FS-2 | 3.0        |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 021/96                 | INDEFINIDO ' +
        '         '
      
        #13'         35  |  06  |  01  | ECF-IF     | SID                  ' +
        '| 6457                 | 3.00       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 025/96                 | INDEFINIDO ' +
        '         '
      
        #13'         35  |  07  |  01  | ECF-IF     | SID                  ' +
        '| 6458                 | 3.00       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 024/96                 | INDEFINIDO ' +
        '         '
      
        #13'         35  |  08  |  01  | ECF-IF     | SID                  ' +
        '| 6459                 | FSC-000    |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 029/98                 | INDEFINIDO ' +
        '         '
      
        #13'         35  |  08  |  02  | ECF-IF     | SID                  ' +
        '| 6459                 | FSC-001    |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 075/98                 | INDEFINIDO ' +
        '         '
      
        #13'         35  |  09  |  01  | ECF-IF     | SID                  ' +
        '| 6460                 | FSE-001    |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 040/97                 | INDEFINIDO ' +
        '         '
      
        #13'         35  |  09  |  02  | ECF-IF     | SID                  ' +
        '| 6460                 | FSE-002    |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 030/98                 | INDEFINIDO ' +
        '         '
      
        #13'         35  |  09  |  03  | ECF-IF     | SID                  ' +
        '| 6460                 | FSE-201    |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 108/98                 | INDEFINIDO ' +
        '         '
      
        #13'         35  |  10  |  01  | ECF-IF     | SID                  ' +
        '| 6461                 | V.2.03     |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 035/97                 | INDEFINIDO ' +
        '         '
      
        '         35  |  11  |  01  | ECF-IF     | SID                  |' +
        ' PR-45                | 01.00      |       1      |       0     ' +
        ' |  NAO  |  NAO  | PARECER 004/95                 | INDEFINIDO  ' +
        '        '
      
        #13'         35  |  12  |  01  | ECF-IF     | SID                  ' +
        '| ECF SID PR-45        | 01.00      |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 018/96                 | INDEFINIDO ' +
        '         '
      
        #13'         35  |  12  |  02  | ECF-IF     | SID                  ' +
        '| ECF SID PR-45        | 01.01      |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 030/96                 | INDEFINIDO ' +
        '         '
      
        #13'         35  |  12  |  03  | ECF-IF     | SID                  ' +
        '| ECF SID PR-45        | 01.02      |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 001/98                 | INDEFINIDO ' +
        '         '
      
        #13'         35  |  13  |  01  | ECF-PDV    | SID                  ' +
        '| KIT ECF-PDV 6001     | V2.03      |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 038/97                 | INDEFINIDO ' +
        '         '
      
        #13'         35  |  13  |  02  | ECF-PDV    | SID                  ' +
        '| KIT ECF-PDV 6001     | V2.04      |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 083/98                 | INDEFINIDO ' +
        '         '
      
        #13'         36  |  01  |  01  | ECF-IF     | SIGTRON              ' +
        '| FS-110               | 2.0        |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 009/95                 | INDEFINIDO ' +
        '         '
      
        #13'         36  |  02  |  01  | ECF-IF     | SIGTRON              ' +
        '| FS-317               | 1.00       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 040/98                 | INDEFINIDO ' +
        '         '
      
        #13'         36  |  03  |  01  | ECF-IF     | SIGTRON              ' +
        '| FS-367               | 1.00       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 040/98                 | INDEFINIDO ' +
        '         '
      
        #13'         36  |  04  |  01  | ECF-IF     | SIGTRON              ' +
        '| PRINT PLUS FS-100    | 2.00       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 009/95                 | INDEFINIDO ' +
        '         '
      
        #13'         36  |  05  |  01  | ECF-IF     | SIGTRON              ' +
        '| PRINT PLUS FS-200    | 3.00       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 009/96                 | INDEFINIDO ' +
        '         '
      
        #13'         36  |  06  |  01  | ECF-IF     | SIGTRON              ' +
        '| PRINT PLUS FS-200G   | 3.00       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 009/96                 | INDEFINIDO ' +
        '         '
      
        #13'         36  |  07  |  01  | ECF-IF     | SIGTRON              ' +
        '| PRINT PLUS FS-210    | 3.00       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 026/96                 | INDEFINIDO ' +
        '         '
      
        #13'         36  |  08  |  01  | ECF-IF     | SIGTRON              ' +
        '| PRINT PLUS FS-215    | 3.00       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 026/96                 | INDEFINIDO ' +
        '         '
      
        #13'         36  |  09  |  01  | ECF-IF     | SIGTRON              ' +
        '| PRINT PLUS FS-220    | 1.00       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 002/97                 | INDEFINIDO ' +
        '         '
      
        #13'         36  |  09  |  02  | ECF-IF     | SIGTRON              ' +
        '| PRINT PLUS FS-220    | 1.01       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 076/97                 | INDEFINIDO ' +
        '         '
      
        #13'         36  |  10  |  01  | ECF-IF     | SIGTRON              ' +
        '| PRINT PLUS FS-225    | 1.0        |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 002/97                 | INDEFINIDO ' +
        '         '
      
        '         36  |  10  |  02  | ECF-IF     | SIGTRON              |' +
        ' PRINT PLUS FS-225    | 1.01       |       1      |       0     ' +
        ' |  NAO  |  NAO  | PARECER 076/97                 | INDEFINIDO  ' +
        '        '
      
        #13'         36  |  11  |  01  | ECF-IF     | SIGTRON              ' +
        '| PRINT PLUS FS-250    | 3.0        |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 009/96                 | INDEFINIDO ' +
        '         '
      
        #13'         36  |  12  |  01  | ECF-IF     | SIGTRON              ' +
        '| PRINT PLUS FS-250G   | 3.0        |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 009/96                 | INDEFINIDO ' +
        '         '
      
        #13'         36  |  13  |  01  | ECF-IF     | SIGTRON              ' +
        '| PRINT PLUS FS-265    | 3.00       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 027/96                 | INDEFINIDO ' +
        '         '
      
        #13'         36  |  14  |  01  | ECF-IF     | SIGTRON              ' +
        '| PRINT PLUS FS-300    | 1.00       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 059/97                 | INDEFINIDO ' +
        '         '
      
        #13'         36  |  15  |  01  | ECF-IF     | SIGTRON              ' +
        '| PRINT PLUS FS-315    | 1.00       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 060/97                 | INDEFINIDO ' +
        '         '
      
        #13'         36  |  16  |  01  | ECF-IF     | SIGTRON              ' +
        '| PRINT PLUS FS-320    | 1.00       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 061/97                 | INDEFINIDO ' +
        '         '
      
        #13'         36  |  17  |  01  | ECF-IF     | SIGTRON              ' +
        '| PRINT PLUS FS-325    | 1.00       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 062/97                 | INDEFINIDO ' +
        '         '
      
        #13'         36  |  18  |  01  | ECF-IF     | SIGTRON              ' +
        '| PRINT PLUS FS-350    | 1.00       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 059/97                 | INDEFINIDO ' +
        '         '
      
        #13'         36  |  19  |  01  | ECF-IF     | SIGTRON              ' +
        '| PRINT PLUS FS-365    | 1.00       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 060/97                 | INDEFINIDO ' +
        '         '
      
        #13'         36  |  20  |  01  | ECF-IF     | SIGTRON              ' +
        '| PRINT PLUS FS-368    | V1,00      |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 120/98                 | INDEFINIDO ' +
        '         '
      
        #13'         36  |  21  |  01  | ECF-IF     | SIGTRON              ' +
        '| PRINT PLUS FS-370    | 1.00       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 061/97                 | INDEFINIDO ' +
        '         '
      
        #13'         36  |  22  |  01  | ECF-IF     | SIGTRON              ' +
        '| PRINT PLUS FS-375    | 1.00       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 062/97                 | INDEFINIDO ' +
        '         '
      
        #13'         36  |  23  |  01  | ECF-IF     | SIGTRON              ' +
        '| PRINT PLUS FS-385    | 1.00       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 063/97                 | INDEFINIDO ' +
        '         '
      
        #13'         36  |  24  |  01  | ECF-IF     | SIGTRON              ' +
        '| PRINT PLUS FS-395    | V1.00      |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 118/98                 | INDEFINIDO ' +
        '         '
      
        #13'         37  |  01  |  01  | ECF-IF     | SONDA                ' +
        '| SIM-67               | 01.00.00   |       1      |       1    ' +
        '  |  SIM  |  SIM  | ATO 027/05 - REG 021           | SI019999999' +
        '999999999'
      
        #13'         37  |  01  |  02  | ECF-IF     | SONDA                ' +
        '| SIM-67               | 01.02.13   |       1      |       1    ' +
        '  |  SIM  |  SIM  | ATO 024/06 - REG 061           | SI019999999' +
        '999999999'
      
        #13'         37  |  01  |  03  | ECF-IF     | SONDA                ' +
        '| SIM-67               | 02.01.29   |       1      |       1    ' +
        '  |  SIM  |  SIM  | TDF 013/08 - PT-41             | SI019999999' +
        '999999999'
      
        #13'         37  |  02  |  01  | ECF-IF     | SONDA                ' +
        '| SIM-97               | 01.00.00   |       1      |       1    ' +
        '  |  SIM  |  SIM  | ATO 028/05 - REG 022           | SI029999999' +
        '999999999'
      
        #13'         37  |  02  |  02  | ECF-IF     | SONDA                ' +
        '| SIM-97               | 01.02.13   |       1      |       1    ' +
        '  |  SIM  |  SIM  | ATO 025/06 - REG 062           | SI029999999' +
        '999999999'
      
        #13'         37  |  02  |  03  | ECF-IF     | SONDA                ' +
        '| SIM-97               | 02.01.29   |       1      |       1    ' +
        '  |  SIM  |  SIM  | TDF 014/08 - PT-41             | SI029999999' +
        '999999999'
      
        #13'         38  |  01  |  01  | ECF-MR     | SWEDA                ' +
        '| MR 2550              | V.0036     |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 020/95                 | 99999999   ' +
        '         '
      
        #13'         38  |  01  |  02  | ECF-MR     | SWEDA                ' +
        '| MR 2550              | V.3065     |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 003/97                 | 99999999   ' +
        '         '
      
        #13'         38  |  02  |  01  | ECF-MR     | SWEDA                ' +
        '| MR 2570              | B          |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 019/95                 | 99999999   ' +
        '         '
      
        #13'         38  |  02  |  02  | ECF-MR     | SWEDA                ' +
        '| MR 2570              | C          |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 004/97                 | 99999999   ' +
        '         '
      
        #13'         38  |  02  |  03  | ECF-MR     | SWEDA                ' +
        '| MR 2570              | A          |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 116/98                 | 99999999   ' +
        '         '
      
        #13'         38  |  03  |  01  | ECF-MR     | SWEDA                ' +
        '| MR-2571              | A          |       1      |       0    ' +
        '  |  NAO  |  NAO  | ATO 023/00                     | 99999999   ' +
        '         '
      
        #13'         38  |  03  |  02  | ECF-MR     | SWEDA                ' +
        '| MR-2571              | B          |       1      |       0    ' +
        '  |  NAO  |  NAO  | ATO 066/00                     | 99999999   ' +
        '         '
      
        #13'         38  |  04  |  01  | ECF-MR     | SWEDA                ' +
        '| MR-2590              | 1.02       |       1      |       0    ' +
        '  |  NAO  |  NAO  | ATO 012/00                     | 99999999   ' +
        '         '
      
        #13'         38  |  04  |  02  | ECF-MR     | SWEDA                ' +
        '| MR-2590              | 1.18       |       3      |       0    ' +
        '  |  NAO  |  NAO  | ATO 003/01                     | 99999999   ' +
        '         '
      
        #13'         38  |  05  |  01  | ECF-PDV    | SWEDA                ' +
        '| S-2050               | V02        |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 018/95                 | INDEFINIDO ' +
        '         '
      
        #13'         38  |  05  |  02  | ECF-PDV    | SWEDA                ' +
        '| S-2050               | V03        |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 006/97                 | INDEFINIDO ' +
        '         '
      
        #13'         38  |  06  |  01  | ECF-PDV    | SWEDA                ' +
        '| S-2070               | V01        |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 052/97                 | INDEFINIDO ' +
        '         '
      
        #13'         38  |  06  |  02  | ECF-PDV    | SWEDA                ' +
        '| S-2070               | 1.0        |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 060/98                 | INDEFINIDO ' +
        '         '
      
        #13'         38  |  07  |  01  | ECF-IF     | SWEDA                ' +
        '| IF S-7000 I          | V02        |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 018/95                 | 99999999   ' +
        '         '
      
        #13'         38  |  07  |  02  | ECF-IF     | SWEDA                ' +
        '| IF S-7000 I          | V03        |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 006/97                 | 99999999   ' +
        '         '
      
        '         38  |  07  |  03  | ECF-IF     | SWEDA                |' +
        ' IF S-7000 I          | V04        |       2      |       0     ' +
        ' |  NAO  |  NAO  | ATO 00014-0R3/MG               | 99999999    ' +
        '        '
      
        #13'         38  |  07  |  04  | ECF-IF     | SWEDA                ' +
        '| IF S-7000 I          | 1.0        |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 057/98                 | 99999999   ' +
        '         '
      
        #13'         38  |  07  |  05  | ECF-IF     | SWEDA                ' +
        '| IF S-7000 I          | 1.5        |       2      |       0    ' +
        '  |  NAO  |  NAO  | ATO 00014-0R4/MG               | 99999999   ' +
        '         '
      
        #13'         38  |  07  |  06  | ECF-IF     | SWEDA                ' +
        '| IF S-7000 I          | 1.6        |       2      |       0    ' +
        '  |  NAO  |  NAO  | TDF 003/05 PT-16               | 99999999   ' +
        '         '
      
        #13'         38  |  08  |  01  | ECF-IF     | SWEDA                ' +
        '| IF S-7000 IE         | V03        |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 005/97                 | 99999999   ' +
        '         '
      
        #13'         38  |  08  |  02  | ECF-IF     | SWEDA                ' +
        '| IF S-7000 IE         | V04        |       2      |       0    ' +
        '  |  NAO  |  NAO  | ATO 00072-8R3/MG               | 99999999   ' +
        '         '
      
        #13'         38  |  08  |  03  | ECF-IF     | SWEDA                ' +
        '| IF S-7000 IE         | 1.0        |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 058/98                 | 99999999   ' +
        '         '
      
        #13'         38  |  08  |  04  | ECF-IF     | SWEDA                ' +
        '| IF S-7000 IE         | 1.A        |       2      |       0    ' +
        '  |  NAO  |  NAO  | ATO 029/02                     | 99999999   ' +
        '         '
      
        #13'         38  |  08  |  05  | ECF-IF     | SWEDA                ' +
        '| IF S-7000 IE         | 1.5        |       2      |       0    ' +
        '  |  NAO  |  NAO  | ATO 00072-8R4/MG               | 99999999   ' +
        '         '
      
        #13'         38  |  08  |  06  | ECF-IF     | SWEDA                ' +
        '| IF S-7000 IE         | 1.6        |       2      |       0    ' +
        '  |  NAO  |  NAO  | TDF 001/05 PT-16               | 99999999   ' +
        '         '
      
        #13'         38  |  09  |  01  | ECF-IF     | SWEDA                ' +
        '| IF S-7000 II         | V02        |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 018/95                 | 99999999   ' +
        '         '
      
        #13'         38  |  09  |  02  | ECF-IF     | SWEDA                ' +
        '| IF S-7000 II         | V03        |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 006/97                 | 99999999   ' +
        '         '
      
        #13'         38  |  09  |  03  | ECF-IF     | SWEDA                ' +
        '| IF S-7000 II         | V04        |       2      |       0    ' +
        '  |  NAO  |  NAO  | ATO 00015-9R3/MG               | 99999999   ' +
        '         '
      
        #13'         38  |  09  |  04  | ECF-IF     | SWEDA                ' +
        '| IF S-7000 II         | 1.0        |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 059/98                 | 99999999   ' +
        '         '
      
        #13'         38  |  09  |  05  | ECF-IF     | SWEDA                ' +
        '| IF S-7000 II         | 1.5        |       1      |       0    ' +
        '  |  NAO  |  NAO  | ATO 00015-9R4/MG               | 99999999   ' +
        '         '
      
        #13'         38  |  09  |  06  | ECF-IF     | SWEDA                ' +
        '| IF S-7000 II         | 1.6        |       1      |       0    ' +
        '  |  NAO  |  NAO  | TDF 002/05 PT-16               | 99999999   ' +
        '         '
      
        #13'         38  |  10  |  01  | ECF-IF     | SWEDA                ' +
        '| IF S-7000 III        | V02        |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 018/95                 | 99999999   ' +
        '         '
      
        #13'         38  |  11  |  01  | ECF-IF     | SWEDA                ' +
        '| IF S-9000 I          | 1.1        |       2      |       0    ' +
        '  |  NAO  |  NAO  | ATO 057/00                     | 99999999   ' +
        '         '
      
        #13'         38  |  11  |  02  | ECF-IF     | SWEDA                ' +
        '| IF S-9000 I          | 1.7        |       2      |       0    ' +
        '  |  NAO  |  NAO  | ATO 066/05 - REG 043           | 99999999   ' +
        '         '
      
        '         38  |  12  |  01  | ECF-IF     | SWEDA                |' +
        ' IF S-9000 IE         | 1.1        |       2      |       0     ' +
        ' |  NAO  |  NAO  | ATO 058/00                     | 99999999    ' +
        '        '
      
        #13'         38  |  12  |  02  | ECF-IF     | SWEDA                ' +
        '| IF S-9000 IE         | 1.7        |       2      |       0    ' +
        '  |  NAO  |  NAO  | ATO 067/05 - REG 044           | 99999999   ' +
        '         '
      
        #13'         38  |  13  |  01  | ECF-IF     | SWEDA                ' +
        '| IF S-9000 II         | 1.0        |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 040/99                 | 99999999   ' +
        '         '
      
        #13'         38  |  13  |  02  | ECF-IF     | SWEDA                ' +
        '| IF S-9000 II         | 1.1        |       2      |       0    ' +
        '  |  NAO  |  NAO  | ATO 059/00                     | 99999999   ' +
        '         '
      
        #13'         38  |  14  |  01  | ECF-IF     | SWEDA                ' +
        '| IF S-9000 IIE        | 1.1        |       2      |       0    ' +
        '  |  NAO  |  NAO  | ATO 060/00                     | 99999999   ' +
        '         '
      
        #13'         38  |  15  |  01  | ECF-IF     | SWEDA                ' +
        '| IF S-9000 IIIE       | 1.0        |       1      |       0    ' +
        '  |  NAO  |  NAO  | ATO 006/02                     | 99999999   ' +
        '         '
      
        #13'         38  |  15  |  02  | ECF-IF     | SWEDA                ' +
        '| IF S-9000 IIIE       | 1.7        |       1      |       0    ' +
        '  |  NAO  |  NAO  | ATO 068/05 - REG 045           | 99999999   ' +
        '         '
      
        #13'         38  |  16  |  01  | ECF-IF     | SWEDA                ' +
        '| IF S-9000 PR         | 1.10       |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 039/99                 | 99999999   ' +
        '         '
      
        #13'         38  |  17  |  01  | ECF-IF     | SWEDA                ' +
        '| IF ST100             | 01.00.03   |       2      |       2    ' +
        '  |  SIM  |  SIM  | ATO 042/04 - REG 011           | SW019999999' +
        '999999999'
      
        #13'         38  |  17  |  02  | ECF-IF     | SWEDA                ' +
        '| IF ST100             | 01.00.04   |       2      |       2    ' +
        '  |  SIM  |  SIM  | ATO 031/05 - REG 025           | SW019999999' +
        '999999999'
      
        #13'         38  |  17  |  03  | ECF-IF     | SWEDA                ' +
        '| IF ST100             | 02.00.00   |       2      |       2    ' +
        '  |  SIM  |  SIM  | TDF 016/07 PT-41               | SW019999999' +
        '999999999'
      
        #13'         38  |  17  |  04  | ECF-IF     | SWEDA                ' +
        '| IF ST100             | 02.00.01   |       2      |       2    ' +
        '  |  SIM  |  SIM  | TDF 007/09 PT-41               | SW019999999' +
        '999999999'
      
        #13'         38  |  18  |  01  | ECF-IF     | SWEDA                ' +
        '| IF ST1000            | 01.00.03   |       1      |       1    ' +
        '  |  SIM  |  SIM  | ATO 010/05 - REG 016           | SW029999999' +
        '999999999'
      
        #13'         38  |  18  |  02  | ECF-IF     | SWEDA                ' +
        '| IF ST1000            | 01.00.04   |       1      |       1    ' +
        '  |  SIM  |  SIM  | ATO 032/05 - REG 026           | SW029999999' +
        '999999999'
      
        #13'         38  |  19  |  01  | ECF-IF     | SWEDA                ' +
        '| IF ST200             | 01.00.01   |       1      |       1    ' +
        '  |  SIM  |  SIM  | TDF 002/07 PT-41               | SW039999999' +
        '999999999'
      
        #13'         38  |  19  |  02  | ECF-IF     | SWEDA                ' +
        '| IF ST200             | 01.00.05   |       1      |       1    ' +
        '  |  SIM  |  SIM  | TDF 006/09 PT-41               | SW039999999' +
        '999999999'
      
        #13'         38  |  20  |  01  | ECF-IF     | SWEDA                ' +
        '| IF ST120             | 01.00.01   |       2      |       2    ' +
        '  |  SIM  |  SIM  | TDF 003/07 PT-41               | SW049999999' +
        '999999999'
      
        '         38  |  20  |  02  | ECF-IF     | SWEDA                |' +
        ' IF ST120             | 01.00.05   |       2      |       2     ' +
        ' |  SIM  |  SIM  | TDF 008/09 PT-41               | SW0499999999' +
        '99999999'
      
        #13'         38  |  21  |  01  | ECF-IF     | SWEDA                ' +
        '| IF ST2000            | 01.00.01   |       2      |       2    ' +
        '  |  SIM  |  SIM  | TDF 015/07 PT-41               | SW059999999' +
        '999999999'
      
        #13'         38  |  22  |  01  | ECF-IF     | SWEDA                ' +
        '| IF ST2500            | 01.00.05   |       1      |       1    ' +
        '  |  SIM  |  SIM  | TDF 012/08 PT-41               | SW069999999' +
        '999999999'
      
        #13'         39  |  01  |  01  | ECF-IF     | SYSDATA              ' +
        '| IF SYSPRINT          | FCP-001    |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 019/97                 | 9999999999 ' +
        '         '
      
        #13'         39  |  01  |  02  | ECF-IF     | SYSDATA              ' +
        '| IF SYSPRINT          | FCP-002    |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 028/98                 | 9999999999 ' +
        '         '
      
        #13'         39  |  01  |  03  | ECF-IF     | SYSDATA              ' +
        '| IF SYSPRINT          | FCP-101    |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 080/98                 | 9999999999 ' +
        '         '
      
        #13'         39  |  01  |  04  | ECF-IF     | SYSDATA              ' +
        '| IF SYSPRINT          | FCP-201    |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 071/98                 | 9999999999 ' +
        '         '
      
        #13'         40  |  01  |  01  | ECF-IF     | TERMOPRINTER         ' +
        '| TPF1001              | 01.00.00   |       2      |       2    ' +
        '  |  SIM  |  SIM  | ATO 007/05 - REG 013           | TP019999999' +
        '999999999'
      
        #13'         40  |  02  |  01  | ECF-IF     | TERMOPRINTER         ' +
        '| TPF2001              | 01.00.00   |       1      |       1    ' +
        '  |  SIM  |  SIM  | ATO 055/05 - REG 038           | TP029999999' +
        '999999999'
      
        #13'         40  |  02  |  02  | ECF-IF     | TERMOPRINTER         ' +
        '| TPF2001              | 01.00.03   |       1      |       1    ' +
        '  |  SIM  |  SIM  | ATO 069/05 - REG 046           | TP029999999' +
        '999999999'
      
        #13'         40  |  03  |  01  | ECF-IF     | TERMOPRINTER         ' +
        '| TPF-1002             | 01.00.00   |       1      |       1    ' +
        '  |  SIM  |  NAO  | ATO 044/06 - REG 074           | TP039999999' +
        '999999999'
      
        #13'         40  |  03  |  02  | ECF-IF     | TERMOPRINTER         ' +
        '| TPF-1002             | 01.00.01   |       1      |       1    ' +
        '  |  SIM  |  NAO  | CD-SP 19/2006                  | TP039999999' +
        '999999999'
      
        #13'         40  |  03  |  03  | ECF-IF     | TERMOPRINTER         ' +
        '| TPF-1002             | 01.00.15   |       1      |       1    ' +
        '  |  SIM  |  NAO  | TDF 012/07 PT-41               | TP039999999' +
        '999999999'
      
        #13'         40  |  03  |  04  | ECF-IF     | TERMOPRINTER         ' +
        '| TPF-1002             | 01.00.16   |       1      |       1    ' +
        '  |  SIM  |  NAO  | Com DEAT 37/07 - SP            | TP039999999' +
        '999999999'
      
        #13'         40  |  03  |  05  | ECF-IF     | TERMOPRINTER         ' +
        '| TPF-1002             | 01.00.25   |       1      |       1    ' +
        '  |  SIM  |  NAO  | TDF 007/08 PT-41               | TP039999999' +
        '999999999'
      
        #13'         40  |  04  |  01  | ECF-IF     | TERMOPRINTER         ' +
        '| TPF-2002             | 01.00.00   |       1      |       1    ' +
        '  |  SIM  |  NAO  | ATO 045/06 - REG 075           | TP049999999' +
        '999999999'
      
        #13'         40  |  04  |  02  | ECF-IF     | TERMOPRINTER         ' +
        '| TPF-2002             | 01.00.03   |       1      |       1    ' +
        '  |  SIM  |  NAO  | CD-SO20/2006                   | TP049999999' +
        '999999999'
      
        #13'         40  |  04  |  03  | ECF-IF     | TERMOPRINTER         ' +
        '| TPF-2002             | 01.03.19   |       2      |       2    ' +
        '  |  SIM  |  NAO  | TDF 013/07 PT-41               | TP049999999' +
        '999999999'
      
        #13'         40  |  04  |  04  | ECF-IF     | TERMOPRINTER         ' +
        '| TPF-2002             | 01.03.22   |       2      |       2    ' +
        '  |  SIM  |  NAO  | Com DEAT 36/07 - SP            | TP049999999' +
        '999999999'
      
        #13'         40  |  04  |  05  | ECF-IF     | TERMOPRINTER         ' +
        '| TPF-2002             | 01.03.31   |       2      |       2    ' +
        '  |  SIM  |  NAO  | TDF 008/08 PT-41               | TP049999999' +
        '999999999'
      
        #13'         40  |  05  |  01  | ECF-IF     | TERMOPRINTER         ' +
        '| TPF-1003             | 01.00.47   |       2      |       2    ' +
        '  |  SIM  |  NAO  | TDF 004/09 PT-41               | TP059999999' +
        '999999999'
      
        #13'         40  |  06  |  01  | ECF-IF     | TERMOPRINTER         ' +
        '| TPF-1004             | 01.00.47   |       1      |       1    ' +
        '  |  SIM  |  NAO  | TDF 005/09 PT-41               | TP069999999' +
        '999999999'
      
        #13'         41  |  01  |  01  | ECF-IF     | TESC                 ' +
        '| TS-101               | 1.0        |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 012/95                 | INDEFINIDO ' +
        '         '
      
        #13'         42  |  01  |  01  | ECF-IF     | TRENDS               ' +
        '| TRENDS 1.0E          | FCP-201    |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 065/99                 | 9999999999 ' +
        '         '
      
        #13'         42  |  01  |  02  | ECF-IF     | TRENDS               ' +
        '| TRENDS 1.0E          | FCP-402    |       1      |       0    ' +
        '  |  NAO  |  NAO  | ATO 079/00                     | 9999999999 ' +
        '         '
      
        #13'         42  |  01  |  03  | ECF-IF     | TRENDS               ' +
        '| TRENDS 1.0E          | FCP-500    |       1      |       0    ' +
        '  |  NAO  |  NAO  | ATO 023/01                     | 9999999999 ' +
        '         '
      
        #13'         42  |  02  |  01  | ECF-IF     | TRENDS               ' +
        '| TRENDS 1.1E          | 3.01       |       1      |       0    ' +
        '  |  NAO  |  NAO  | ATO 027/00                     | 99999999   ' +
        '         '
      
        #13'         42  |  03  |  01  | ECF-IF     | TRENDS               ' +
        '| TRENDS 2.0E          | FPO-400    |       2      |       0    ' +
        '  |  NAO  |  NAO  | ATO 042/00                     | 9999999999 ' +
        '         '
      
        #13'         43  |  01  |  01  | ECF-IF     | TRIX                 ' +
        '| FISC-FI R            | VER03.21   |       3      |       0    ' +
        '  |  NAO  |  NAO  | ATO 015/01                     | 999999999/9' +
        '999      '
      
        #13'         43  |  02  |  01  | ECF-IF     | TRIX                 ' +
        '| TRIX FISC-FI         | VER03.15   |       2      |       0    ' +
        '  |  NAO  |  NAO  | ATO 074/00                     | 999999999/9' +
        '999      '
      
        #13'         44  |  01  |  01  | ECF-IF     | UNIGRAPH             ' +
        '| UN-FI                | FCP-201    |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 066/99                 | 9999999999 ' +
        '         '
      
        #13'         44  |  01  |  02  | ECF-IF     | UNIGRAPH             ' +
        '| UN-FI                | FCP-500    |       1      |       0    ' +
        '  |  NAO  |  NAO  | ATO 034/01                     | 9999999999 ' +
        '         '
      
        #13'         44  |  02  |  01  | ECF-IF     | UNIGRAPH             ' +
        '| UN'#8211'FI 2E             | FPO-400    |       2      |       0    ' +
        '  |  NAO  |  NAO  | ATO 043/00                     | 9999999999 ' +
        '         '
      
        #13'         45  |  01  |  01  | ECF-PDV    | UNISYS               ' +
        '| BEETLE 4/61 MF       | 11.07/BR   |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 002/96                 | INDEFINIDO ' +
        '         '
      
        #13'         45  |  01  |  02  | ECF-PDV    | UNISYS               ' +
        '| BEETLE 4/61 MF       | 13.08/BR   |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 007/97                 | INDEFINIDO ' +
        '         '
      
        #13'         45  |  01  |  03  | ECF-PDV    | UNISYS               ' +
        '| BEETLE 4/61 MF       | 11.08/BR   |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 031/99                 | INDEFINIDO ' +
        '         '
      
        '         45  |  01  |  04  | ECF-PDV    | UNISYS               |' +
        ' BEETLE 4/61-MF       | 15.09      |       1      |       0     ' +
        ' |  NAO  |  NAO  | PARECER 096/98                 | INDEFINIDO  ' +
        '        '
      
        #13'         45  |  01  |  05  | ECF-PDV    | UNISYS               ' +
        '| BEETLE 4/61-MF       | 13.09/BR   |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 031/99                 | INDEFINIDO ' +
        '         '
      
        #13'         45  |  01  |  06  | ECF-PDV    | UNISYS               ' +
        '| BEETLE 4/61-MF       | 15.10      |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 031/99                 | INDEFINIDO ' +
        '         '
      
        #13'         45  |  02  |  01  | ECF-PDV    | UNISYS               ' +
        '| KIT BEETLE 4/61-MF   | 13.08/BR   |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 007/97                 | INDEFINIDO ' +
        '         '
      
        #13'         45  |  02  |  02  | ECF-PDV    | UNISYS               ' +
        '| KIT BEETLE 4/61-MF   | 15.09      |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 097/98                 | INDEFINIDO ' +
        '         '
      
        #13'         45  |  02  |  03  | ECF-PDV    | UNISYS               ' +
        '| KIT BEETLE 4/61-MF   | 13.09/BR   |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 032/99                 | INDEFINIDO ' +
        '         '
      
        #13'         45  |  02  |  04  | ECF-PDV    | UNISYS               ' +
        '| KIT BEETLE 4/61-MF   | 15.10      |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 032/99                 | INDEFINIDO ' +
        '         '
      
        #13'         45  |  03  |  01  | ECF-IF     | UNISYS               ' +
        '| BR400 IF             | VER03.21   |       2      |       0    ' +
        '  |  NAO  |  NAO  | ATO 032/01                     | 99999999999' +
        '99       '
      
        #13'         45  |  04  |  01  | ECF-IF     | UNISYS               ' +
        '| BR401-IF             | 03.10      |       2      |       0    ' +
        '  |  NAO  |  NAO  | ATO 036/00                     | 99999999999' +
        '99       '
      
        #13'         45  |  05  |  01  | ECF-IF     | UNISYS               ' +
        '| BRB375               | 2.12       |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 011/98                 | 999999999/9' +
        '999      '
      
        #13'         45  |  05  |  02  | ECF-IF     | UNISYS               ' +
        '| BRB375               | 2.13       |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 064/98                 | 999999999/9' +
        '999      '
      
        #13'         45  |  06  |  01  | ECF-IF     | UNISYS               ' +
        '| BR-20                | 2.10       |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 050/97                 | 999999999/9' +
        '999      '
      
        #13'         45  |  06  |  02  | ECF-IF     | UNISYS               ' +
        '| BR-20                | 2.12       |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 069/97                 | 999999999/9' +
        '999      '
      
        #13'         45  |  07  |  01  | ECF-IF     | UNISYS               ' +
        '| BR-20 IF2            | VER.03.00  |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 008/99                 | 99999999999' +
        '99       '
      
        #13'         45  |  07  |  02  | ECF-IF     | UNISYS               ' +
        '| BR-20 IF2            | 03.10      |       2      |       0    ' +
        '  |  NAO  |  NAO  | ATO 025/00                     | 99999999999' +
        '99       '
      
        #13'         45  |  07  |  03  | ECF-IF     | UNISYS               ' +
        '| BR-20 IF2            | VER03.22   |       3      |       0    ' +
        '  |  NAO  |  NAO  | ATO 039/01                     | 99999999999' +
        '99       '
      
        #13'         45  |  07  |  04  | ECF-IF     | UNISYS               ' +
        '| BR-20 IF2            | VER03.26   |       3      |       0    ' +
        '  |  NAO  |  NAO  | ATO 029/03                     | 99999999999' +
        '99       '
      
        #13'         45  |  07  |  05  | ECF-IF     | UNISYS               ' +
        '| BR-20 IF2            | VER03.31   |       3      |       0    ' +
        '  |  NAO  |  NAO  | TDF 018/06 PT-16               | 99999999999' +
        '99       '
      
        #13'         45  |  08  |  01  | ECF-IF     | UNISYS               ' +
        '| BR-40 IF2            | VER.03.00  |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 009/99                 | 99999999999' +
        '99       '
      
        '         45  |  08  |  02  | ECF-IF     | UNISYS               |' +
        ' BR-40 IF2            | 03.10      |       2      |       0     ' +
        ' |  NAO  |  NAO  | ATO 026/00                     | 999999999999' +
        '9       '
      
        #13'         45  |  08  |  03  | ECF-IF     | UNISYS               ' +
        '| BR-40 IF2            | VER03.21   |       2      |       0    ' +
        '  |  NAO  |  NAO  | ATO 037/01                     | 99999999999' +
        '99       '
      
        #13'         45  |  09  |  01  | ECF-IF     | UNISYS               ' +
        '| BR1000-FIM           | 2.20       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 089/99                 | 99999999   ' +
        '         '
      
        #13'         45  |  10  |  01  | ECF-IF     | UNISYS               ' +
        '| BR1001-FIT           | 2.20       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 087/99                 | 99999999   ' +
        '         '
      
        #13'         45  |  10  |  02  | ECF-IF     | UNISYS               ' +
        '| BR1001-FIT           | 03.00.00   |       2      |       2    ' +
        '  |  SIM  |  NAO  | ATO 019/03                     | UN019999999' +
        '         '
      
        #13'         45  |  11  |  01  | ECF-IF     | UNISYS               ' +
        '| BR1002-EFC           | 2.20       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 088/99                 | 99999999   ' +
        '         '
      
        #13'         45  |  11  |  02  | ECF-IF     | UNISYS               ' +
        '| BR1002-EFC           | 03.00.00   |       2      |       2    ' +
        '  |  SIM  |  NAO  | ATO 022/03                     | UN029999999' +
        '         '
      
        #13'         45  |  12  |  01  | ECF-IF     | UNISYS               ' +
        '| BR-20 TH             | 01.00.00   |       1      |       1    ' +
        '  |  SIM  |  SIM  | AH-ECF/ES 03/03                | INDEFINIDO ' +
        '         '
      
        #13'         45  |  13  |  01  | ECF-IF     | UNISYS               ' +
        '| BR-6000 TH           | 01.00.00   |       1      |       1    ' +
        '  |  SIM  |  SIM  | AH-ECF/ES 04/03                | INDEFINIDO ' +
        '         '
      
        #13'         46  |  01  |  01  | ECF-IF     | URANO                ' +
        '| ZPM/1EF              | 1.00       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 004/96                 | 99999999   ' +
        '         '
      
        #13'         46  |  01  |  02  | ECF-IF     | URANO                ' +
        '| ZPM/1EF              | 2.00       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 017/97                 | 99999999   ' +
        '         '
      
        #13'         46  |  01  |  03  | ECF-IF     | URANO                ' +
        '| ZPM/1EF              | 3.00       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 043/98                 | 99999999   ' +
        '         '
      
        #13'         46  |  01  |  04  | ECF-IF     | URANO                ' +
        '| ZPM/1EF              | 3.01       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PAR/SC 3 - 02/12/99            | 99999999   ' +
        '         '
      
        #13'         46  |  01  |  05  | ECF-IF     | URANO                ' +
        '| ZPM/1EF              | 2.01       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 090/98                 | 99999999   ' +
        '         '
      
        #13'         46  |  01  |  06  | ECF-IF     | URANO                ' +
        '| ZPM/1EF              | 2.02       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 076/99                 | 99999999   ' +
        '         '
      
        #13'         46  |  01  |  07  | ECF-IF     | URANO                ' +
        '| ZPM/1EF              | 4.00       |       1      |       0    ' +
        '  |  NAO  |  NAO  | ATO 061/00                     | 99999999   ' +
        '         '
      
        #13'         46  |  01  |  08  | ECF-IF     | URANO                ' +
        '| ZPM/1EF              | 5.0        |       2      |       0    ' +
        '  |  NAO  |  NAO  | PAR/SC 12 - 11/08/00           | 99999999   ' +
        '         '
      
        '         46  |  02  |  01  | ECF-IF     | URANO                |' +
        ' URANO/2EFE           | 1.00       |       1      |       0     ' +
        ' |  NAO  |  NAO  | PARECER 014/97                 | 99999999    ' +
        '        '
      
        #13'         46  |  02  |  02  | ECF-IF     | URANO                ' +
        '| URANO/2EFE           | 1.10       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 057/99                 | 99999999   ' +
        '         '
      
        #13'         46  |  03  |  01  | ECF-IF     | URANO                ' +
        '| URANO/1EFNF          | 1.00       |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 032/97                 | 99999999   ' +
        '         '
      
        #13'         46  |  04  |  01  | ECF-IF     | URANO                ' +
        '| URANO/1EFREST        | 1.00       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 033/97                 | 99999999   ' +
        '         '
      
        #13'         46  |  04  |  02  | ECF-IF     | URANO                ' +
        '| URANO/1EFREST        | 2.00       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 072/97                 | 99999999   ' +
        '         '
      
        #13'         46  |  04  |  03  | ECF-IF     | URANO                ' +
        '| URANO/1EFREST        | 3.00       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 046/98                 | 99999999   ' +
        '         '
      
        #13'         46  |  05  |  01  | ECF-IF     | URANO                ' +
        '| URANO/2EFCR          | 1.00       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 034/97                 | 99999999   ' +
        '         '
      
        #13'         46  |  06  |  01  | ECF-IF     | URANO                ' +
        '| URANO/1EFA           | 1.00       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 073/97                 | 99999999   ' +
        '         '
      
        #13'         46  |  07  |  01  | ECF-IF     | URANO                ' +
        '| URANO/2EFC           | 1.00       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 044/98                 | 99999999   ' +
        '         '
      
        #13'         46  |  07  |  02  | ECF-IF     | URANO                ' +
        '| URANO/2EFC           | 2.01       |       1      |       0    ' +
        '  |  NAO  |  NAO  | CD-SP 026/2005                 | 99999999   ' +
        '         '
      
        #13'         46  |  07  |  03  | ECF-IF     | URANO                ' +
        '| URANO/2EFC           | 3.00       |       1      |       0    ' +
        '  |  NAO  |  NAO  | ATO 067/063 REG 081            | 99999999   ' +
        '         '
      
        #13'         46  |  08  |  01  | ECF-IF     | URANO                ' +
        '| KIT URANO EFC/2EFC   | 4.41       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PAR/SC 21 - 27/10/00           | 99999999   ' +
        '         '
      
        #13'         46  |  09  |  01  | ECF-IF     | URANO                ' +
        '| KIT URANO/2EFC       | 1.00       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 053/98                 | 99999999   ' +
        '         '
      
        #13'         46  |  09  |  02  | ECF-IF     | URANO                ' +
        '| KIT URANO/2EFC       | 4.41       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PAR/SC 21 - 27/10/00           | 99999999   ' +
        '         '
      
        #13'         46  |  09  |  03  | ECF-IF     | URANO                ' +
        '| KIT URANO/2EFC       | 2.01       |       1      |       0    ' +
        '  |  NAO  |  NAO  | CD-SP 028/2005                 | 99999999   ' +
        '         '
      
        #13'         46  |  09  |  04  | ECF-IF     | URANO                ' +
        '| KIT URANO/2EFC       | 3.00       |       1      |       0    ' +
        '  |  NAO  |  NAO  | ATO 068/06 REG 082             | 99999999   ' +
        '         '
      
        #13'         46  |  10  |  01  | ECF-IF     | URANO                ' +
        '| URANO/1E LOGGER      | 1.00       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 089/98                 | 99999999   ' +
        '         '
      
        #13'         46  |  11  |  01  | ECF-IF     | URANO                ' +
        '| URANO/2E LOGGER      | 1.00       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 093/98                 | 99999999   ' +
        '         '
      
        #13'         46  |  12  |  01  | ECF-IF     | URANO                ' +
        '| URANO/1FIT LOGGER    | 2.00       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 025/99                 | 99999999   ' +
        '         '
      
        #13'         46  |  12  |  02  | ECF-IF     | URANO                ' +
        '| URANO/1FIT LOGGER    | 2.63       |       2      |       2    ' +
        '  |  NAO  |  NAO  | PAR/SC 22 - 1/12/00            | 99999999   ' +
        '         '
      
        #13'         46  |  12  |  03  | ECF-IF     | URANO                ' +
        '| URANO/1FIT LOGGER    | 03.00.00   |       2      |       2    ' +
        '  |  SIM  |  NAO  | ATO 018/03                     | UR019999999' +
        '         '
      
        #13'         46  |  12  |  04  | ECF-IF     | URANO                ' +
        '| URANO/1FIT LOGGER    | 03.02.00   |       2      |       2    ' +
        '  |  SIM  |  NAO  | ATO 00208-9R1/MG               | UR019999999' +
        '         '
      
        #13'         46  |  12  |  05  | ECF-IF     | URANO                ' +
        '| URANO/1FIT LOGGER    | 03.02.01   |       2      |       2    ' +
        '  |  SIM  |  NAO  | ATO 049/05 - REG 032           | UR019999999' +
        '         '
      
        #13'         46  |  12  |  06  | ECF-IF     | URANO                ' +
        '| URANO/1FIT LOGGER    | 03.03.00   |       2      |       2    ' +
        '  |  SIM  |  NAO  | ATO 064/05 - REG 041           | UR019999999' +
        '         '
      
        #13'         46  |  12  |  07  | ECF-IF     | URANO                ' +
        '| URANO/1FIT LOGGER    | 03.03.04   |       2      |       2    ' +
        '  |  SIM  |  NAO  | TDF 027/07 PT-41               | UR019999999' +
        '         '
      
        #13'         46  |  13  |  01  | ECF-IF     | URANO                ' +
        '| URANO/2EFC LOGGER    | 2.00       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 026/99                 | 99999999   ' +
        '         '
      
        #13'         46  |  14  |  01  | ECF-IF     | URANO                ' +
        '| URANO/1FIM LOGGER    | 2.00       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 027/99                 | 99999999   ' +
        '         '
      
        #13'         46  |  15  |  01  | ECF-IF     | URANO                ' +
        '| KIT UR/2EFC LOGGER   | 2.00       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 028/99                 | 99999999   ' +
        '         '
      
        #13'         46  |  16  |  01  | ECF-IF     | URANO                ' +
        '| URANO/2EA LOGGER     | 2.20       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 048/99                 | 99999999   ' +
        '         '
      
        #13'         46  |  17  |  01  | ECF-IF     | URANO                ' +
        '| KIT UR/2EA LOGGER    | 2.20       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 049/99                 | 99999999   ' +
        '         '
      
        #13'         46  |  18  |  01  | ECF-IF     | URANO                ' +
        '| KIT UR/2EF LOGGER    | 2.63       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PAR/SC 23 - 1/12/00            | 99999999   ' +
        '         '
      
        #13'         46  |  19  |  01  | ECF-IF     | URANO                ' +
        '| URANO/3EF LOGGER     | V2.10      |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 050/99                 | 99999999   ' +
        '         '
      
        #13'         46  |  20  |  01  | ECF-PDV    | URANO                ' +
        '| URANO/3EFC LOGGER    | V2.10      |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 051/99                 | 99999999   ' +
        '         '
      
        #13'         46  |  21  |  01  | ECF-IF     | URANO                ' +
        '| URANO/2FTMA LOGGER   | 2.20       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 069/99                 | 99999999   ' +
        '         '
      
        #13'         46  |  22  |  01  | ECF-IF     | URANO                ' +
        '| URANO/2FMMO LOGGER   | 2.20       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 070/99                 | 99999999   ' +
        '         '
      
        #13'         46  |  23  |  01  | ECF-IF     | URANO                ' +
        '| URANO/1EFC           | 3.00       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 074/99                 | 99999999   ' +
        '         '
      
        '         46  |  23  |  02  | ECF-IF     | URANO                |' +
        ' URANO/1EFC           | 4.00       |       1      |       0     ' +
        ' |  NAO  |  NAO  | ATO 062/00                     | 99999999    ' +
        '        '
      
        #13'         46  |  23  |  03  | ECF-IF     | URANO                ' +
        '| URANO/1EFC           | 7.00       |       1      |       0    ' +
        '  |  NAO  |  NAO  | ATO 069/06 REG 083             | 99999999   ' +
        '         '
      
        #13'         46  |  24  |  01  | ECF-IF     | URANO                ' +
        '| URANO/1FIREST        | 3.00       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 075/99                 | 99999999   ' +
        '         '
      
        #13'         46  |  24  |  02  | ECF-IF     | URANO                ' +
        '| URANO/1FIREST        | 5.04       |       2      |       0    ' +
        '  |  NAO  |  NAO  | PAR/SC 3 -30/05/01             | 99999999   ' +
        '         '
      
        #13'         46  |  25  |  01  | ECF-IF     | URANO                ' +
        '| URANO/2EFCO          | 4.00       |       2      |       0    ' +
        '  |  NAO  |  NAO  | ATO 046/00                     | 99999999   ' +
        '         '
      
        #13'         46  |  26  |  01  | ECF-IF     | URANO                ' +
        '| KIT ECF-IF URANO/1EF | 1.00       |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 032/97                 | 99999999   ' +
        '         '
      
        #13'         47  |  01  |  01  | ECF-MR     | YANCO                ' +
        '| 6000                 | 1.0        |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 010/96                 | 9999999999 ' +
        '         '
      
        #13'         47  |  01  |  02  | ECF-MR     | YANCO                ' +
        '| 6000                 | V2.1       |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 034/98                 | 9999999999 ' +
        '         '
      
        #13'         47  |  01  |  03  | ECF-MR     | YANCO                ' +
        '| 6000                 | 2.0        |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 074/97                 | 9999999999 ' +
        '         '
      
        #13'         47  |  02  |  01  | ECF-MR     | YANCO                ' +
        '| 6000 PLUS            | V3.0       |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 042/97                 | 9999999999 ' +
        '         '
      
        #13'         47  |  02  |  02  | ECF-MR     | YANCO                ' +
        '| 6000 PLUS            | V4.0       |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 075/97                 | 9999999999 ' +
        '         '
      
        #13'         47  |  02  |  03  | ECF-MR     | YANCO                ' +
        '| 6000 PLUS            | V4.1       |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 035/98                 | 9999999999 ' +
        '         '
      
        #13'         47  |  02  |  04  | ECF-MR     | YANCO                ' +
        '| 6000 PLUS            | V4.2       |       3      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 033/99                 | 9999999999 ' +
        '         '
      
        #13'         47  |  02  |  05  | ECF-MR     | YANCO                ' +
        '| 6000 PLUS            | V5.0       |       3      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 033/99                 | 9999999999 ' +
        '         '
      
        #13'         47  |  02  |  06  | ECF-MR     | YANCO                ' +
        '| 6000 PLUS            | V.6.0      |       3      |       0    ' +
        '  |  NAO  |  NAO  | PAR/SC 11 - 07/07/00           | 9999999999 ' +
        '         '
      
        #13'         47  |  02  |  07  | ECF-MR     | YANCO                ' +
        '| 6000 PLUS            | V6.1       |       3      |       0    ' +
        '  |  NAO  |  NAO  | ATO 073/00                     | 9999999999 ' +
        '         '
      
        #13'         47  |  02  |  08  | ECF-MR     | YANCO                ' +
        '| 6000 PLUS            | 6.1B       |       3      |       0    ' +
        '  |  NAO  |  NAO  | PAR/SC 13 -09/11/01            | 9999999999 ' +
        '         '
      
        #13'         47  |  02  |  09  | ECF-MR     | YANCO                ' +
        '| 6000 PLUS            | V7.0       |       3      |       0    ' +
        '  |  NAO  |  NAO  | ATO 031/02                     | 9999999999 ' +
        '         '
      
        #13'         47  |  03  |  01  | ECF-MR     | YANCO                ' +
        '| 6000I                | 1.0I       |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 010/95                 | INDEFINIDO ' +
        '         '
      
        '         47  |  03  |  02  | ECF-MR     | YANCO                |' +
        ' 6000I                | 2.0I       |       2      |       0     ' +
        ' |  NAO  |  NAO  | PARECER 074/97                 | INDEFINIDO  ' +
        '        '
      
        #13'         47  |  04  |  01  | ECF-MR     | YANCO                ' +
        '| 7000-8               | 4.0        |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 021/95                 | INDEFINIDO ' +
        '         '
      
        #13'         47  |  04  |  02  | ECF-MR     | YANCO                ' +
        '| 7000-8               | 4.0 I      |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 021/95                 | INDEFINIDO ' +
        '         '
      
        #13'         47  |  04  |  03  | ECF-MR     | YANCO                ' +
        '| 7000-8               | 4.1        |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 041/97                 | INDEFINIDO ' +
        '         '
      
        #13'         47  |  04  |  04  | ECF-MR     | YANCO                ' +
        '| 7000-8               | 4.1 I      |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 041/97                 | INDEFINIDO ' +
        '         '
      
        #13'         47  |  05  |  01  | ECF-IF     | YANCO                ' +
        '| IF YANCO 8000        | V1.0       |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 036/98                 | 9999999999 ' +
        '         '
      
        #13'         47  |  05  |  02  | ECF-IF     | YANCO                ' +
        '| IF YANCO 8000        | V1.1       |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 056/99                 | 9999999999 ' +
        '         '
      
        #13'         47  |  05  |  03  | ECF-IF     | YANCO                ' +
        '| IF YANCO 8000        | 2.0        |       2      |       0    ' +
        '  |  NAO  |  NAO  | ATO 011/00                     | 9999999999 ' +
        '         '
      
        #13'         47  |  05  |  04  | ECF-IF     | YANCO                ' +
        '| IF YANCO 8000        | 2.1        |       3      |       0    ' +
        '  |  NAO  |  NAO  | PAR/SC 6 - 7/04/00             | 9999999999 ' +
        '         '
      
        #13'         47  |  06  |  01  | ECF-MR     | YANCO                ' +
        '| YANCO 2000           | V1.0       |       3      |       0    ' +
        '  |  NAO  |  NAO  | ATO 080/00                     | 9999999999 ' +
        '         '
      
        #13'         47  |  06  |  02  | ECF-MR     | YANCO                ' +
        '| YANCO 2000           | V2.0       |       3      |       0    ' +
        '  |  NAO  |  NAO  | ATO 027/03                     | 9999999999 ' +
        '         '
      
        #13'         47  |  07  |  01  | ECF-IF     | YANCO                ' +
        '| YANCO 8500           | V2.0       |       2      |       0    ' +
        '  |  NAO  |  NAO  | ATO 078/00                     | 9999999999 ' +
        '         '
      
        #13'         48  |  01  |  01  | ECF-PDV    | ZANTHUS              ' +
        '| Z-6100               | 01.10      |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 016/95                 | INDEFINIDO ' +
        '         '
      
        #13'         48  |  02  |  01  | ECF-IF     | ZANTHUS              ' +
        '| 1E                   | 01.00      |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 005/95                 | INDEFINIDO ' +
        '         '
      
        #13'         48  |  02  |  02  | ECF-IF     | ZANTHUS              ' +
        '| 1E                   | 01.10      |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 017/95                 | INDEFINIDO ' +
        '         '
      
        #13'         48  |  03  |  01  | ECF-IF     | ZANTHUS              ' +
        '| 3E                   | 01.00      |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 005/95                 | INDEFINIDO ' +
        '         '
      
        #13'         48  |  03  |  02  | ECF-IF     | ZANTHUS              ' +
        '| 3E                   | 01.10      |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 017/95                 | INDEFINIDO ' +
        '         '
      
        '         48  |  04  |  01  | ECF-IF     | ZANTHUS              |' +
        ' 2E-ECF               | 1.20       |       1      |       0     ' +
        ' |  NAO  |  NAO  | PARECER 007/96                 | INDEFINIDO  ' +
        '        '
      
        #13'         48  |  04  |  02  | ECF-IF     | ZANTHUS              ' +
        '| 2E-ECF               | 01.60      |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 062/98                 | INDEFINIDO ' +
        '         '
      
        #13'         48  |  04  |  03  | ECF-IF     | ZANTHUS              ' +
        '| 2E-ECF               | 01.61      |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 062/98                 | INDEFINIDO ' +
        '         '
      
        #13'         48  |  05  |  01  | ECF-IF     | ZANTHUS              ' +
        '| IZ-10                | 02.00      |       3      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 037/98                 | 99999999   ' +
        '         '
      
        #13'         48  |  06  |  01  | ECF-IF     | ZANTHUS              ' +
        '| IZ-11                | 03.00      |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 114/98                 | 99999999   ' +
        '         '
      
        #13'         48  |  07  |  01  | ECF-IF     | ZANTHUS              ' +
        '| IZ-20                | 02.00      |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 038/98                 | 99999999   ' +
        '         '
      
        #13'         48  |  08  |  01  | ECF-IF     | ZANTHUS              ' +
        '| IZ-21                | 03.00      |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 115/98                 | 99999999   ' +
        '         '
      
        #13'         48  |  08  |  02  | ECF-IF     | ZANTHUS              ' +
        '| IZ-21                | 03.50      |       1      |       0    ' +
        '  |  NAO  |  NAO  | ATO 024/01                     | 99999999   ' +
        '         '
      
        #13'         48  |  09  |  01  | ECF-IF     | ZANTHUS              ' +
        '| IZ-22                | 04.10      |       1      |       0    ' +
        '  |  NAO  |  NAO  | ATO 023/03                     | 99999999   ' +
        '         '
      
        #13'         48  |  10  |  01  | ECF-IF     | ZANTHUS              ' +
        '| IZ-41                | 03.10      |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 038/99                 | 99999999   ' +
        '         '
      
        #13'         48  |  11  |  01  | ECF-IF     | ZANTHUS              ' +
        '| IZ-51                | 04.00      |       2      |       0    ' +
        '  |  NAO  |  NAO  | ATO 008/01                     | 99999999   ' +
        '         '
      
        #13'         48  |  12  |  01  | ECF-IF     | ZANTHUS              ' +
        '| PRZ4                 | 1.10       |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 037/99                 | INDEFINIDO ' +
        '         '
      
        #13'         48  |  13  |  01  | ECF-IF     | ZANTHUS              ' +
        '| QZ-1000              | 01.02      |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 132/98                 | 999999     ' +
        '         '
      
        #13'         48  |  13  |  02  | ECF-IF     | ZANTHUS              ' +
        '| QZ-1000              | 01.03      |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 055/99                 | 999999     ' +
        '         '
      
        #13'         48  |  13  |  03  | ECF-IF     | ZANTHUS              ' +
        '| QZ-1000              | 01.04      |       1      |       0    ' +
        '  |  NAO  |  NAO  | ATO 034/00                     | 999999     ' +
        '         '
      
        #13'         48  |  13  |  04  | ECF-IF     | ZANTHUS              ' +
        '| QZ-1000              | 02.00      |       1      |       0    ' +
        '  |  NAO  |  NAO  | ATO 033/03                     | 999999     ' +
        '         '
      
        #13'         48  |  14  |  01  | ECF-IF     | ZANTHUS              ' +
        '| QZ-1001              | FCP-500    |       1      |       0    ' +
        '  |  NAO  |  NAO  | ATO 016/01                     | 9999999999 ' +
        '         '
      
        #13'         48  |  15  |  01  | ECF-IF     | ZANTHUS              ' +
        '| QZ-2000              | 02.00      |       1      |       0    ' +
        '  |  NAO  |  NAO  | ATO 030/01                     | 999999     ' +
        '         '
      
        #13'         49  |  01  |  01  | ECF-IF     | ZPM                  ' +
        '| ZPM/1EF              | 1.00       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 006/96                 | 99999999   ' +
        '         '
      
        '         49  |  02  |  01  | ECF-IF     | ZPM                  |' +
        ' ZPM/1EFM             | 1.00       |       1      |       0     ' +
        ' |  NAO  |  NAO  | PARECER 031/96                 | 99999999    ' +
        '        '
      
        #13'         49  |  02  |  02  | ECF-IF     | ZPM                  ' +
        '| ZPM/1EFM             | 2.00       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 018/97                 | 99999999   ' +
        '         '
      
        #13'         49  |  02  |  03  | ECF-IF     | ZPM                  ' +
        '| ZPM/1EFM             | 3.00       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 041/98                 | 99999999   ' +
        '         '
      
        #13'         49  |  02  |  04  | ECF-IF     | ZPM                  ' +
        '| ZPM/1EFM             | 2.01       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 091/98                 | 99999999   ' +
        '         '
      
        #13'         49  |  02  |  05  | ECF-IF     | ZPM                  ' +
        '| ZPM/1EFM             | 3.01       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PAR/SC SN                      | 99999999   ' +
        '         '
      
        #13'         49  |  02  |  06  | ECF-IF     | ZPM                  ' +
        '| ZPM/1EFM             | 4.00       |       1      |       0    ' +
        '  |  NAO  |  NAO  | ATO 064/00                     | 99999999   ' +
        '         '
      
        #13'         49  |  02  |  07  | ECF-IF     | ZPM                  ' +
        '| ZPM/1EFM             | 5.00       |       2      |       0    ' +
        '  |  NAO  |  NAO  | PAR/SC 13 -11/08/00            | 99999999   ' +
        '         '
      
        #13'         49  |  03  |  01  | ECF-IF     | ZPM                  ' +
        '| ZPM/2EFE             | 1.00       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 016/97                 | 99999999   ' +
        '         '
      
        #13'         49  |  04  |  01  | ECF-IF     | ZPM                  ' +
        '| ZPM/1EFNF            | 1.00       |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 029/97                 | 99999999   ' +
        '         '
      
        #13'         49  |  05  |  01  | ECF-IF     | ZPM                  ' +
        '| ZPM/1EFREST          | 1.00       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 030/97                 | 99999999   ' +
        '         '
      
        #13'         49  |  05  |  02  | ECF-IF     | ZPM                  ' +
        '| ZPM/1EFREST          | 2.00       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 070/97                 | 99999999   ' +
        '         '
      
        #13'         49  |  05  |  03  | ECF-IF     | ZPM                  ' +
        '| ZPM/1EFREST          | 3.00       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 045/98                 | 99999999   ' +
        '         '
      
        #13'         49  |  06  |  01  | ECF-IF     | ZPM                  ' +
        '| ZPM/2EFCR            | 1.00       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 031/97                 | 99999999   ' +
        '         '
      
        #13'         49  |  07  |  01  | ECF-IF     | ZPM                  ' +
        '| ZPM/1EFA             | 1.00       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 071/97                 | 99999999   ' +
        '         '
      
        #13'         49  |  08  |  01  | ECF-IF     | ZPM                  ' +
        '| ZPM/2EFC             | 1.00       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 042/98                 | 99999999   ' +
        '         '
      
        #13'         49  |  08  |  02  | ECF-IF     | ZPM                  ' +
        '| ZPM/2EFC             | 2.01       |       1      |       0    ' +
        '  |  NAO  |  NAO  | CD-SP 025/2005 - SP            | 99999999   ' +
        '         '
      
        #13'         49  |  08  |  03  | ECF-IF     | ZPM                  ' +
        '| ZPM/2EFC             | 3.00       |       1      |       0    ' +
        '  |  NAO  |  NAO  | ATO 066/06 REG 080             | 99999999   ' +
        '         '
      
        '         49  |  09  |  01  | ECF-IF     | ZPM                  |' +
        ' KIT ZPM/2EFC         | 1.00       |       1      |       0     ' +
        ' |  NAO  |  NAO  | PARECER 052/98                 | 99999999    ' +
        '        '
      
        #13'         49  |  09  |  02  | ECF-IF     | ZPM                  ' +
        '| KIT ZPM/2EFC         | 2.01       |       1      |       0    ' +
        '  |  NAO  |  NAO  | CD-SP 027/2005                 | 99999999   ' +
        '         '
      
        #13'         49  |  09  |  03  | ECF-IF     | ZPM                  ' +
        '| KIT ZPM/2EFC         | 3.00       |       1      |       0    ' +
        '  |  NAO  |  NAO  | ATO 065/06 REG 079             | 99999999   ' +
        '         '
      
        #13'         49  |  10  |  01  | ECF-IF     | ZPM                  ' +
        '| ZPM/1E LOGGER        | 1.00       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 081/98                 | 99999999   ' +
        '         '
      
        #13'         49  |  11  |  01  | ECF-IF     | ZPM                  ' +
        '| ZPM/2E LOGGER        | 1.00       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 092/98                 | 99999999   ' +
        '         '
      
        #13'         49  |  12  |  01  | ECF-IF     | ZPM                  ' +
        '| ZPM/1FIT LOGGER      | 2.00       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 021/99                 | 99999999   ' +
        '         '
      
        #13'         49  |  12  |  02  | ECF-IF     | ZPM                  ' +
        '| ZPM/1FIT LOGGER      | 03.00.00   |       2      |       2    ' +
        '  |  SIM  |  NAO  | ATO 014/03                     | ZP049999999' +
        '         '
      
        #13'         49  |  12  |  03  | ECF-IF     | ZPM                  ' +
        '| ZPM/1FIT LOGGER      | 03.02.00   |       2      |       2    ' +
        '  |  SIM  |  NAO  | ATO 00207-0R1/MG               | ZP049999999' +
        '         '
      
        #13'         49  |  12  |  04  | ECF-IF     | ZPM                  ' +
        '| ZPM/1FIT LOGGER      | 03.02.01   |       2      |       2    ' +
        '  |  SIM  |  NAO  | ATO 048/05 - REG 031           | ZP049999999' +
        '         '
      
        #13'         49  |  12  |  05  | ECF-IF     | ZPM                  ' +
        '| ZPM/1FIT LOGGER      | 03.03.00   |       2      |       2    ' +
        '  |  SIM  |  NAO  | ATO 063/05 - REG 040           | ZP049999999' +
        '         '
      
        #13'         49  |  12  |  06  | ECF-IF     | ZPM                  ' +
        '| ZPM/1FIT LOGGER      | 03.03.02   |       2      |       2    ' +
        '  |  SIM  |  NAO  | ATO 077/06 REG 091             | ZP049999999' +
        '         '
      
        #13'         49  |  12  |  07  | ECF-IF     | ZPM                  ' +
        '| ZPM/1FIT LOGGER      | 03.03.04   |       2      |       2    ' +
        '  |  SIM  |  NAO  | TDF 021/07 PT-41               | ZP049999999' +
        '         '
      
        #13'         49  |  13  |  01  | ECF-IF     | ZPM                  ' +
        '| ZPM/2EFC LOGGER      | 2.00       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 022/99                 | 99999999   ' +
        '         '
      
        #13'         49  |  13  |  02  | ECF-IF     | ZPM                  ' +
        '| ZPM/2EFC LOGGER      | 03.00.00   |       2      |       2    ' +
        '  |  SIM  |  NAO  | ATO 016/03                     | ZP039999999' +
        '         '
      
        #13'         49  |  13  |  03  | ECF-IF     | ZPM                  ' +
        '| ZPM/2EFC LOGGER      | 03.02.00   |       2      |       2    ' +
        '  |  SIM  |  NAO  | ATO 00206-2R1/MG               | ZP039999999' +
        '         '
      
        #13'         49  |  13  |  04  | ECF-IF     | ZPM                  ' +
        '| ZPM/2EFC LOGGER      | 03.02.01   |       2      |       2    ' +
        '  |  SIM  |  NAO  | ATO 050/05 - REG 033           | ZP039999999' +
        '         '
      
        #13'         49  |  13  |  05  | ECF-IF     | ZPM                  ' +
        '| ZPM/2EFC LOGGER      | 03.03.00   |       2      |       2    ' +
        '  |  SIM  |  NAO  | ATO 062/05 - REG 039           | ZP039999999' +
        '         '
      
        #13'         49  |  13  |  06  | ECF-IF     | ZPM                  ' +
        '| ZPM/2EFC LOGGER      | 03.03.02   |       2      |       2    ' +
        '  |  SIM  |  NAO  | ATO 079/06 REG 093             | ZP039999999' +
        '         '
      
        #13'         49  |  13  |  07  | ECF-IF     | ZPM                  ' +
        '| ZPM/2EFC LOGGER      | 03.03.04   |       2      |       2    ' +
        '  |  SIM  |  NAO  | TDF 022/07 PT-41               | ZP039999999' +
        '         '
      
        '         49  |  14  |  01  | ECF-IF     | ZPM                  |' +
        ' ZPM/1FIM LOGGER      | 2.00       |       1      |       0     ' +
        ' |  NAO  |  NAO  | PARECER 023/99                 | 99999999    ' +
        '        '
      
        #13'         49  |  15  |  01  | ECF-IF     | ZPM                  ' +
        '| KIT 2EFC LOGGER      | 2.00       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 024/99                 | 99999999   ' +
        '         '
      
        #13'         49  |  16  |  01  | ECF-IF     | ZPM                  ' +
        '| ZPM/2EA LOGGER       | 2.20       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 044/99                 | 99999999   ' +
        '         '
      
        #13'         49  |  17  |  01  | ECF-IF     | ZPM                  ' +
        '| KIT 2EA LOGGER       | 2.20       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 045/99                 | 99999999   ' +
        '         '
      
        #13'         49  |  18  |  01  | ECF-IF     | ZPM                  ' +
        '| ZPM/3EF LOGGER       | V2.10      |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 046/99                 | 99999999   ' +
        '         '
      
        #13'         49  |  18  |  02  | ECF-IF     | ZPM                  ' +
        '| ZPM/3EF LOGGER       | 03.00.00   |       2      |       2    ' +
        '  |  SIM  |  NAO  | ATO 017/03                     | ZP019999999' +
        '         '
      
        #13'         49  |  18  |  03  | ECF-IF     | ZPM                  ' +
        '| ZPM/3EF LOGGER       | 03.03.01   |       2      |       2    ' +
        '  |  SIM  |  NAO  | ATO 014/06 - REG 051           | ZP019999999' +
        '         '
      
        #13'         49  |  18  |  04  | ECF-IF     | ZPM                  ' +
        '| ZPM/3EF LOGGER       | 03.03.02   |       2      |       2    ' +
        '  |  SIM  |  NAO  | TDF 014/06 PT-16               | ZP019999999' +
        '         '
      
        #13'         49  |  19  |  01  | ECF-PDV    | ZPM                  ' +
        '| ZPM/3EFC LOGGER      | V2.10      |       2      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 047/99                 | 99999999   ' +
        '         '
      
        #13'         49  |  19  |  02  | ECF-PDV    | ZPM                  ' +
        '| ZPM/3EFC LOGGER      | 03.00.00   |       2      |       2    ' +
        '  |  SIM  |  NAO  | ATO 015/03                     | ZP029999999' +
        '         '
      
        #13'         49  |  20  |  01  | ECF-IF     | ZPM                  ' +
        '| ZPM/2FTMA LOGGER     | 2.20       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 067/99                 | 99999999   ' +
        '         '
      
        #13'         49  |  21  |  01  | ECF-IF     | ZPM                  ' +
        '| ZPM/2FMMO LOGGER     | 2.20       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 068/99                 | 99999999   ' +
        '         '
      
        #13'         49  |  22  |  01  | ECF-IF     | ZPM                  ' +
        '| ZPM/1EFC             | 3.00       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 072/99                 | 99999999   ' +
        '         '
      
        #13'         49  |  22  |  02  | ECF-IF     | ZPM                  ' +
        '| ZPM/1EFC             | 4.00       |       1      |       0    ' +
        '  |  NAO  |  NAO  | ATO 063/00                     | 99999999   ' +
        '         '
      
        #13'         49  |  22  |  03  | ECF-IF     | ZPM                  ' +
        '| ZPM/1EFC             | 7.00       |       1      |       0    ' +
        '  |  NAO  |  NAO  | ATO 064/06 REG 078             | 99999999   ' +
        '         '
      
        #13'         49  |  23  |  01  | ECF-IF     | ZPM                  ' +
        '| ZPM/1FIREST          | 3.00       |       1      |       0    ' +
        '  |  NAO  |  NAO  | PARECER 073/99                 | 99999999   ' +
        '         '
      
        #13'         49  |  24  |  01  | ECF-IF     | ZPM                  ' +
        '| ZPM/2EFCO            | 4.00       |       2      |       0    ' +
        '  |  NAO  |  NAO  | ATO 047/00                     | 99999999   ' +
        '         '
      
        '         49  |  25  |  01  | ECF-IF     | ZPM                  |' +
        ' KIT ECF-IF ZPM/1EFNF | 1.00       |       2      |       0     ' +
        ' |  NAO  |  NAO  | PARECER 029/97                 | 99999999    ' +
        '        '
      
        #13'         49  |  26  |  01  | ECF-IF     | ZPM                  ' +
        '| ZPM-200              | 01.02.03   |       2      |       2    ' +
        '  |  SIM  |  SIM  | TDF 009/09 PT-41               | ZP059999999' +
        '999999999'
      
        #13'         49  |  26  |  02  | ECF-IF     | ZPM                  ' +
        '| ZPM-200              | 01.03.00   |       2      |       2    ' +
        '  |  SIM  |  SIM  | Com. DEAT/SP 025/09            | ZP059999999' +
        '999999999'
      
        #13'         49  |  27  |  01  | ECF-IF     | ZPM                  ' +
        '| ZPM-300              | 01.02.03   |       1      |       1    ' +
        '  |  SIM  |  SIM  | TDF 010/09 PT-41               | ZP069999999' +
        '999999999'
      
        #13'         49  |  27  |  02  | ECF-IF     | ZPM                  ' +
        '| ZPM-300              | 01.03.00   |       1      |       1    ' +
        '  |  SIM  |  SIM  | Com. DEAT/SP 026/09            | ZP069999999' +
        '999999999'
      
        #13'         49  |  28  |  01  | ECF-IF     | ZPM                  ' +
        '| ZPM-400              | 01.02.03   |       2      |       2    ' +
        '  |  SIM  |  SIM  | TDF 011/09 PT-41               | ZP079999999' +
        '999999999'
      
        #13'         49  |  28  |  02  | ECF-IF     | ZPM                  ' +
        '| ZPM-400              | 01.03.00   |       2      |       2    ' +
        '  |  SIM  |  SIM  | Com DEAT/SP 027/09             | ZP079999999' +
        '999999999'
      
        #13'         50  |  01  |  01  | ECF-IF     | INTERWAY             ' +
        '| PRT-100 FI           | 01.00.00   |       1      |       1    ' +
        '  |  SIM  |  NAO  | ATO 043/06 - REG 069           | IW019999999' +
        '999999999'
      
        #13'         50  |  01  |  02  | ECF-IF     | INTERWAY             ' +
        '| PRT-100 FI           | 01.00.07   |       1      |       1    ' +
        '  |  SIM  |  NAO  | TDF 014/07 PT-41               | IW019999999' +
        '999999999'
      
        #13'         51  |  01  |  01  | ECF-IF     | PERCEPTION           ' +
        '| P01                  | 01.00.00   |       1      |       1    ' +
        '  |  SIM  |  NAO  | ATO 059/06 REG 076             | PP019999999' +
        '999999999'
      
        #13'         51  |  01  |  02  | ECF-IF     | PERCEPTION           ' +
        '| P01                  | 01.00.07   |       1      |       1    ' +
        '  |  SIM  |  NAO  | TDF 019/07 PT-41               | PP019999999' +
        '999999999'
      
        #13'         52  |  01  |  01  | ECF-PDV    | APB PRODATA          ' +
        '| MSD6600 IF           | 01.00.01   |       1      |       1    ' +
        '  |  SIM  |  SIM  | Com. DEAT SP 023/2008          | AP019999999' +
        '999999999'
      
        #13'         53  |  01  |  01  | ECF-IF     | AABLAZE              ' +
        '| A400                 | 01.00.47   |       2      |       2    ' +
        '  |  SIM  |  NAO  | TDF 013/09 PT-41               | AA019999999' +
        '999999999'
      
        #13'         53  |  02  |  01  | ECF-IF     | AABLAZE              ' +
        '| S400                 | 01.00.47   |       1      |       1    ' +
        '  |  SIM  |  NAO  | TDF 014/09 PT-41               | AA029999999' +
        '999999999')
    ParentFont = False
    TabOrder = 0
    OnDblClick = ListBox1DblClick
  end
end
