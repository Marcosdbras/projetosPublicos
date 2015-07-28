unit buscapreco;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, ComCtrls, Buttons, Grids, IniFiles, Menus, Lang,
  Jpeg, Gif, ExtDlgs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZConnection, RXShell, Collection;

const
  RIDvSetSetupTCP  = $0118;
  RIDvUpdateSoft   = $0172;
  RIDvAlwayslive   = $0174;
  RIDvChecklive    = $0176;
  RIDvRestart      = $017A;
  RIDvParam        = $0182;
  RIDvUpdConfig    = $0184;
  RIDvImg          = $0186;
  RIDvOK           = $0188;

procedure OpenIniFile;
procedure SaveIniFile;

type TARRAYBYTE = array[0..1023] of byte;
type PARRAYBYTE = ^TARRAYBYTE;

type TTABSOCK = record
    TabSock: array[0..1023] of integer;
    TabUID: array[0..1023] of DWORD;
    NumSockConec: integer;
  end;

type PTABSOCK = ^TTABSOCK;

type
  TCCONFIG = packed record
    ID        : integer;
    host      : array[0..21] of byte;
    endereco  : array[0..21] of byte;
    msknet    : array[0..21] of byte;
    texto1    : array[0..21] of byte;
    texto2    : array[0..21] of byte;
    texto3    : array[0..21] of byte;
    texto4    : array[0..21] of byte;
    tempoexib : byte;
  end;
  PTCCONFIG = ^TCCONFIG;

type
  TCPARAMCONFIG = packed record
    ID        : integer;
    ipdinamico: byte;
    buscaserv : byte;
  end;
  PTCPARAMCONFIG = ^TCPARAMCONFIG;

type
  TCEXTCONFIG = packed record
    ID         : integer;
    host       : array[0..21] of byte;
    endereco   : array[0..21] of byte;
    msknet     : array[0..21] of byte;
    gateway    : array[0..21] of byte;
    nameserver : array[0..21] of byte;
    tcname     : array[0..21] of byte;
    texto1     : array[0..21] of byte;
    texto2     : array[0..21] of byte;
    updserv    : array[0..99] of byte;
    upduser    : array[0..21] of byte;
    updpass    : array[0..21] of byte;
    tempoexib  : byte;
    dinamicip  : byte;
    buscaserv  : byte;
  end;
  PTCEXTCONFIG = ^TCEXTCONFIG;

type
  TCUPDCONFIG = packed record
    ID         : integer;
    gateway    : array[0..21] of byte;
    nameserver : array[0..21] of byte;
    tcname     : array[0..21] of byte;
    updserv    : array[0..99] of byte;
    upduser    : array[0..21] of byte;
    updpass    : array[0..21] of byte;
  end;
  PTCUPDCONFIG = ^TCUPDCONFIG;

type
  Tfrmbuscapreco = class(TForm)
    Timer1: TTimer;
    Timer2: TTimer;
    PageControl1: TPageControl;
    TabSheet4: TTabSheet;
    MemoRecv: TMemo;
    TabSheet1: TTabSheet;
    StringGrid1: TStringGrid;
    TabSheet2: TTabSheet;
    TabSheet5: TTabSheet;
    StringGrid2: TStringGrid;
    BtnProdAdd: TButton;
    BtnProdDel: TButton;
    BtnProdSave: TButton;
    BtnCardAdd: TButton;
    BtnCardDel: TButton;
    BtnCardSave: TButton;
    BtnClearMemo: TButton;
    BtnAllwaysLive: TButton;
    BtnUpdSoft: TButton;
    BtnCheckLive: TButton;
    BtnRestartSoft: TButton;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    TabSheet6: TTabSheet;
    GrpUpdate: TGroupBox;
    LabGateway: TLabel;
    LabNameServer: TLabel;
    LabTCName: TLabel;
    LabSrv: TLabel;
    LabUsr: TLabel;
    LabPass: TLabel;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    Edit15: TEdit;
    Shape5: TShape;
    Shape6: TShape;
    BtnGetUpdConfig: TButton;
    BtnSendUpdConfig: TButton;
    GrpEthernet: TGroupBox;
    LabServIP: TLabel;
    LabCliIP: TLabel;
    LabNetMask: TLabel;
    LabText1: TLabel;
    LabText2: TLabel;
    LabTimeExi: TLabel;
    Shape7: TShape;
    LabText3: TLabel;
    LabText4: TLabel;
    Edit16: TEdit;
    Edit17: TEdit;
    Edit18: TEdit;
    Edit19: TEdit;
    Edit20: TEdit;
    Edit21: TEdit;
    BtnGetCfg: TButton;
    BtnSendCfg: TButton;
    Edit22: TEdit;
    Edit23: TEdit;
    GrpExtras: TGroupBox;
    BtnGetParam: TButton;
    BtnSendParam: TButton;
    CBdynamicip: TCheckBox;
    CBfindserver: TCheckBox;
    Shape8: TShape;
    Shape9: TShape;
    BtnProdRel: TButton;
    BtnCardRel: TButton;
    EdtCurrency: TEdit;
    LabCurrency: TLabel;
    MainMenu1: TMainMenu;
    Language1: TMenuItem;
    Portugues1: TMenuItem;
    English1: TMenuItem;
    GrpIMsg: TGroupBox;
    LabLine1: TLabel;
    LabLine2: TLabel;
    LabTimeEx: TLabel;
    EdtLine1: TEdit;
    EdtLine2: TEdit;
    EdtTimeEx: TEdit;
    BtnMsgSend: TButton;
    GrpIImg: TGroupBox;
    IImg: TImage;
    EdtIImg: TEdit;
    BtnIImg: TButton;
    BtnIImgClear: TButton;
    BtnIImgFont: TButton;
    FontDialog1: TFontDialog;
    SavePictureDialog1: TSavePictureDialog;
    BtnIImgSave: TButton;
    BtnTr1: TButton;
    BtnTr2: TButton;
    Start: TMenuItem;
    TabSheet3: TTabSheet;
    StringGrid3: TStringGrid;
    Image1: TImage;
    OpenPictureDialog1: TOpenPictureDialog;
    BtnImgAdd: TButton;
    BtnImgDel: TButton;
    BtnImgRel: TButton;
    BtnImgSave: TButton;
    Button6: TButton;
    qrproduto: TZQuery;
    Conexao: TZConnection;
    PopupMenu1: TPopupMenu;
    ECFServer101: TMenuItem;
    N1: TMenuItem;
    Fechar1: TMenuItem;
    RxTrayIcon1: TRxTrayIcon;
    Timer3: TTimer;
    Configuraes1: TMenuItem;
    HeaderView1: THeaderView;
    ListBConec: TListBox;
    ViewSplit1: TViewSplit;
    N2: TMenuItem;
    otaldeConsultas1: TMenuItem;
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure BtnMsgSendClick(Sender: TObject);
    procedure BtnGetUpdConfigClick(Sender: TObject);
    procedure ListBConecClick(Sender: TObject);
    procedure BtnSendUpdConfigClick(Sender: TObject);
    procedure BtnAllwaysLiveClick(Sender: TObject);
    procedure BtnUpdSoftClick(Sender: TObject);
    procedure BtnClearMemoClick(Sender: TObject);
    procedure BtnCheckLiveClick(Sender: TObject);
    procedure BtnRestartSoftClick(Sender: TObject);
    procedure BtnGetCfgClick(Sender: TObject);
    procedure BtnSendCfgClick(Sender: TObject);
    procedure BtnGetParamClick(Sender: TObject);
    procedure BtnSendParamClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Portugues1Click(Sender: TObject);
    procedure English1Click(Sender: TObject);
    procedure EdtImg1DblClick(Sender: TObject);
    procedure EdtImg1Enter(Sender: TObject);
    procedure BtnIImgFontClick(Sender: TObject);
    procedure BtnTr1Click(Sender: TObject);
    procedure BtnIImgClearClick(Sender: TObject);
    procedure BtnIImgSaveClick(Sender: TObject);
    procedure BtnImg1Click(Sender: TObject);
    procedure BtnImgAllClick(Sender: TObject);
    procedure StartClick(Sender: TObject);
    procedure StringGrid3SelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure StringGrid3DblClick(Sender: TObject);
    procedure BtnImgAddClick(Sender: TObject);
    procedure BtnImgDelClick(Sender: TObject);
    procedure BtnImgRelClick(Sender: TObject);
    procedure BtnImgSaveClick(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Fechar1Click(Sender: TObject);
    procedure Configuraes1Click(Sender: TObject);
  private
    { Private declarations }
    procedure ShowPriceProduct(ID: integer; BarCode: string);
    procedure ShowCardBonus(ID: integer; BarCode: string);
  public
    { Public declarations }
    TabConec: TTABSOCK;
  end;

var
  frmbuscapreco: Tfrmbuscapreco;
  SelectedTermSock: integer;
  lastdate: integer;
  sendalluso : array[0..1023] of boolean;
  H : THandle;
  //LANGUAGE
  ulang : stlang;
  fechar : boolean;

  consultas : integer;

  //TO BE SAVED
  lu : string;

  //prototipos
  procedure ClearImage(mybmp : TBitmap);
  function SendAllImages(var oID : integer): integer;
  procedure ShowImage(mybmp : TBitmap; filename : string);
  procedure MontaTabela(filename : string; var sgrid : TStringGrid);





implementation


{$R *.DFM}

//------------------------------------------------------------------------------

//FUNCOES DE REDE
procedure TCinet_ntoa(nIP : DWORD; var buf : array of byte); far; external 'sc501ger.dll';
function  TCinet_addr(buf : array of byte): DWORD; far; external 'sc501ger.dll';

//FUNCOES DE INICIALIZACAO/INFORMACAO DE REDE
function  GetTabConectados(nada: integer): TTABSOCK; far; external 'sc501ger.dll';
procedure vInitialize; far; external 'sc501ger.dll';
procedure _TermGertecServer; far; external 'sc501ger.dll';
function tc_startserver: integer; far; external 'sc501ger.dll';
function dll_version: DWORD; far; external 'sc501ger.dll';
function iTypeTerm(ID : integer): integer; far; external 'sc501ger.dll';

//FUNCOES DE LIVE
function bEnviaVivo(ID: Integer): boolean; far; external 'sc501ger.dll';
function bSendAllwaysLive(ID: Integer): boolean; far; external 'sc501ger.dll';
function bSendCheckLive(ID: Integer): boolean; external 'sc501ger.dll';
function bSendRestartSoft(ID: Integer): boolean; external 'sc501ger.dll';

//FUNCA DE ATUALIZACAO
procedure bUpdateSoftware(ID: Integer); far; external 'sc501ger.dll';

//FUNCOES DE CARTAO
function  bSendCardBonus(ID: Integer; Line1, Line2 : array of byte; TimeExhibition: WORD): Boolean; far; external 'sc501ger.dll';
function  bReceiveCardCode(var ID: integer; var buffer: PARRAYBYTE; var Nbr: integer): boolean; far; external 'sc501ger.dll';
function  bSendCardNotFound(ID: Integer): boolean; far; external 'sc501ger.dll';

//FUNCOES DE CONFIGURACAO
function  bPedeConfig(ID: Integer): boolean; far; external 'sc501ger.dll';
function  bReceiveConfig(var conftemp: PTCCONFIG): boolean; far; external 'sc501ger.dll';
function  bMandaConfig(conftemp: PTCCONFIG): boolean; far; external 'sc501ger.dll';

function bPedeExtConfig(ID: Integer): boolean; far; external 'sc501ger.dll';
function bReceiveExtConfig(var conftemp: PTCEXTCONFIG): boolean; far; external 'sc501ger.dll';
function bMandaExtConfig(conftemp: PTCEXTCONFIG): Boolean; far; external 'sc501ger.dll';

function GetResponseCtr(var pID: integer; var aresp :integer): boolean; far; external 'sc501ger.dll';

function bPedeParam(ID: Integer): boolean; far; external 'sc501ger.dll';
function bMandaParam(conftemp: PTCPARAMCONFIG): Boolean; far; external 'sc501ger.dll';
function bReceiveParam(var conftemp: PTCPARAMCONFIG): boolean; far; external 'sc501ger.dll';

function bPedeUpdConfig(ID: Integer): boolean; far; external 'sc501ger.dll';
function bMandaUpdConfig(conftemp: PTCUPDCONFIG): Boolean; far; external 'sc501ger.dll';
function bReceiveUpdConfig(var conftemp: PTCUPDCONFIG): boolean; far; external 'sc501ger.dll';
//FUNCAO DE MENSAGEM DE DISPLAY
function  bSendDisplayMsg(ID: Integer; Line1, Line2 : array of byte; TimeExhibition, TypeAnimation : WORD): boolean; far; external 'sc501ger.dll';
//TC505
function bSendImageFromFile(ID: Integer; filename : array of byte; width, height, index, loop, pause, resize : integer): Boolean; far; external 'sc501ger.dll';

//FUNCOES DE PRODUTOS (CODIGO DE BARRAS)
function  bSendProdNotFound(ID: Integer): boolean; far; external 'sc501ger.dll';
function  bSendProdPrice(ID: Integer; NameProd, PriceProd : array of byte): Boolean;  far; external 'sc501ger.dll';
function  bReceiveBarcode(var ID: integer; var Porta: integer;var buffer: PARRAYBYTE; var Nbr: integer): boolean;  far; external 'sc501ger.dll';

//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//----- I N I C I A L I Z A C O E S --------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------

procedure Tfrmbuscapreco.FormCreate(Sender: TObject);
var
  filename: string;
  txt : textfile;
  entrada : string;
  arquivo : string;
begin
  conexao.connected       := false;
  assignfile(txt,'c:\siscom\server\dll\com.ini');
  reset(txt);
  while not eof(txt) do
  begin
    readln(txt,entrada);
    IF COPY(entrada,1,7) = 'arq-001' then arquivo := copy(entrada,9,1);
    if ansiuppercase(arquivo) = 'F' then
    begin
      if copy(entrada,1,7) = 'adi-001' then conexao.database := trim(copy(entrada,9,50));
      if copy(entrada,1,7) = 'adi-002' then conexao.hostname := trim(copy(entrada,9,50));
    end
    else
    begin
      if copy(entrada,1,7) = '999-001' then conexao.database := trim(copy(entrada,9,50));
      if copy(entrada,1,7) = '999-002' then conexao.hostname := trim(copy(entrada,9,50));
    end;
  end;
  conexao.Connected       := true;



  OpenIniFile;
  OpenLanguageFile(lu,ulang);

  vInitialize;

  MemoRecv.Lines.Add('DLL Version: ' + IntToHex(dll_version,8));

  //_TermGertecServer;
  if (tc_startserver <> 0) then begin
    MemoRecv.Lines.Add(ulang.serverstartok);
    Start.Enabled := false;
  end else begin
    MemoRecv.Lines.Add(ulang.serverstartfail);
    ShowMessage(ulang.serverstartfail);
  end;

  Timer1.Enabled := true;
  //PRODUTOS
  frmbuscapreco.StringGrid1.ColWidths[0] := 100;  //BarCode
  frmbuscapreco.StringGrid1.ColWidths[1] := 150;  //Product
  frmbuscapreco.StringGrid1.ColWidths[2] := 60;  //Price
  MontaTabela(ExtractFilePath(ParamStr(0)) + 'pricetab.txt',frmbuscapreco.StringGrid1);

  //CARD
  frmbuscapreco.StringGrid2.ColWidths[0] := 250;  //BarCode
  frmbuscapreco.StringGrid2.ColWidths[1] := 140;  //Product
  frmbuscapreco.StringGrid2.ColWidths[2] := 50;   //Price
  MontaTabela(ExtractFilePath(ParamStr(0)) + 'cardtab.txt',frmbuscapreco.StringGrid2);

  //IMAGE
  frmbuscapreco.StringGrid3.ColWidths[0] := 140;  //Filename
  frmbuscapreco.StringGrid3.ColWidths[1] := 40;   //Pause
  frmbuscapreco.StringGrid3.ColWidths[2] := 40;   //Loop
  MontaTabela(ExtractFilePath(ParamStr(0)) + 'images.txt',frmbuscapreco.StringGrid3);
  filename := ExtractFilePath(ParamStr(0)) + 'images\' + StringGrid3.Cells[0,1];
  if (FileExists(filename)) then
    ShowImage(Image1.Picture.Bitmap,filename)
  else
    ClearImage(Image1.Picture.Bitmap);


  SelectedTermSock := -1;
  ClearImage(IImg.Picture.Bitmap);
  if (FileExists(ExtractFilePath(ParamStr(0))+'temp.bmp')) then
    IImg.Picture.LoadFromFile(ExtractFilePath(ParamStr(0))+'temp.bmp');

    lu := 'lg_port.ini';
  OpenLanguageFile(lu,ulang);
  Portugues1.Checked := true;
  English1.Checked := false;

  consultas := 0;
end;

//------------------------------------------------------------------------------

procedure Tfrmbuscapreco.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SaveIniFile;
  try
    IImg.Picture.SaveToFile(ExtractFilePath(ParamStr(0))+'temp.bmp');
  except
  end;
end;

//------------------------------------------------------------------------------

procedure SalvaTabela(filename : string; var sgrid : TStringGrid);
var
  FDB     : TextFile;
  StrAuxA : String;
  ci, cj  : integer;
begin
  AssignFile(FDB,filename);
  ReWrite(FDB);
  for cj := 1 to sgrid.RowCount -1 do begin
    for ci := 0 to sgrid.ColCount -1 do begin
      StrAuxA := StrAuxA + sgrid.Cells[ci,cj] + '|';
    end;
    if (StrAuxA<>'|||') then begin
      WriteLn(FDB,StrAuxA);
    end;
    StrAuxA:='';
  end;
  CloseFile(FDB);
end;

//------------------------------------------------------------------------------

procedure MontaTabela(filename : string; var sgrid : TStringGrid);
var
  FDB: TextFile;
  StrAuxA, StrAuxB: String;
  ci: integer;
  ti, tj: integer;
  car: char;
begin
  ti := 0;
  tj := 1;

{$I-}
  AssignFile(FDB,filename);
  Reset(FDB);
  if (IOResult=0) then begin
    while (not(eof(FDB))) do begin
      Readln(FDB,StrAuxA);
      StrAuxB := '';
      for ci:= 1 to Length(StrAuxA) do begin
        car := StrAuxA[ci];
        if (car = '|') then begin
          sgrid.Cells[ti,tj] := StrAuxB;
          StrAuxB := '';
          ti := ti + 1;
        end else begin
          StrAuxB := StrAuxB + car;
        end; // if (car = '|') ... else ....
      end; // for
      ti := 0;
      tj := tj + 1;
    end; // if not(eof(FDB))
    CloseFile(FDB);
    sgrid.RowCount := tj;
  end;
{$I+}
end;

//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//---- I N I   F I L E S -------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------

procedure OpenIniFile;
var
  EZIni: TIniFile;
  fname : string;
begin
  EZIni := TIniFile.Create(ExtractFilePath(ParamStr(0)) + 'tc501.ini');

  with EZIni do begin
    //GENERAL
    frmbuscapreco.EdtCurrency.Text := ReadString('GENERAL','currency','R$');
    lu := ReadString('GENERAL','language','lg_eng.ini');
    if (lu='lg_eng.ini') then begin
      frmbuscapreco.Portugues1.Checked := false;
      frmbuscapreco.English1.Checked := true;
    end else if (lu='lg_port.ini') then begin
      frmbuscapreco.Portugues1.Checked := true;
      frmbuscapreco.English1.Checked := false;
    end;

    //MESSAGE
    frmbuscapreco.EdtLine1.Text  := ReadString('MESSAGE','line1','Gande Promoção');
    frmbuscapreco.EdtLine2.Text  := ReadString('MESSAGE','line2','Não Perca!');
    frmbuscapreco.EdtTimeEx.Text := IntToStr(ReadInteger('MESSAGE','timeex',4));

    //IMAGES
    frmbuscapreco.EdtIImg.Text  := ReadString('IMAGES','img0','');
    fname := ExtractFilePath(ParamStr(0)) + 'temp.bmp';
    //frmbuscapreco.OpenPictureDialog1.FileName := ReadString('IMAGES','lastload',fname);
    frmbuscapreco.SavePictureDialog1.FileName  := ReadString('IMAGES','lastsave',fname);
  end;

  EZIni.Free
end;

//------------------------------------------------------------------------------

procedure SaveIniFile;
var
  EZIni: TIniFile;
begin
  try
    EZIni := TIniFile.Create(ExtractFilePath(ParamStr(0)) + 'tc501.ini');

    with EZIni do begin
      //GENERAL
      WriteString('GENERAL','currency',frmbuscapreco.EdtCurrency.Text);
      WriteString('GENERAL','language',lu);

      //MESSAGE
      WriteString('MESSAGE','line1',frmbuscapreco.EdtLine1.Text);
      WriteString('MESSAGE','line2',frmbuscapreco.EdtLine2.Text);
      WriteInteger('MESSAGE','timeex',StrToInt(frmbuscapreco.EdtTimeEx.Text));

      //IMAGES
      WriteString('IMAGES','img0',frmbuscapreco.EdtIImg.Text);
      //WriteString('IMAGES','lastload',frmbuscapreco.OpenPictureDialog1.FileName);
      WriteString('IMAGES','lastsave',frmbuscapreco.SavePictureDialog1.FileName);

    end;
    EZIni.Free
  except
  end;
end;

//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//---- T I M E R S -------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------

procedure Tfrmbuscapreco.Timer1Timer(Sender: TObject);
var
  ci, cj: integer;
  ToSelect : integer;
  selsock : integer;
  buf : array[0..20] of byte;
begin
  TabConec := GetTabConectados(1);
  ListBConec.Clear;

  ToSelect := -1;
  ci := -1;
  cj := 0;
  repeat
    ci := ci + 1;
    if TabConec.TabSock[ci] <> 0 then begin
      if (TabConec.TabSock[ci] = SelectedTermSock) and (ToSelect = -1) then begin
        ToSelect := cj;
      end;
      cj := cj + 1;
      selsock := TabConec.TabSock[ci];
      TCinet_ntoa(TabConec.TabUID[ci],buf);
      ListBConec.Items.Add(StrPas(@buf) + ':' + IntToStr(TabConec.TabSock[ci]));
      bEnviaVivo(TabConec.TabSock[ci]);
    end;
  until ((cj >= TabConec.NumSockConec)or(ci > 1020));

  if ToSelect>=0 then begin
    if (ListBConec.Items.Count=1) then ListBConec.Items.Add('');
    ListBConec.ItemIndex := 1;
    ListBConec.ItemIndex := ToSelect;
    if (ListBConec.Items.Count=1) then ListBConec.Items.Delete(1);
  end else if (cj>0) then begin
    if (ListBConec.Items.Count=1) then ListBConec.Items.Add('');
    ListBConec.ItemIndex := 1;
    ListBConec.ItemIndex := 0;
    if (ListBConec.Items.Count=1) then ListBConec.Items.Delete(1);
    SelectedTermSock := selsock;
  end else begin
    SelectedTermSock := -1;
  end;


  
end;

//------------------------------------------------------------------------------

procedure Tfrmbuscapreco.Timer2Timer(Sender: TObject);
var
   ID: integer;
   straux: string;
   bufferserial: PARRAYBYTE;
   bufferout: TARRAYBYTE;
   serport: integer;
   sernbr: integer;

   bufoldconfig  : TCCONFIG;
   pbufoldconfig : PTCCONFIG;

   pbufparam : PTCPARAMCONFIG;

   pbufupdconfig : PTCUPDCONFIG;

   resposta : integer;
   THID : DWORD;
begin
  if bReceiveBarcode(ID,serport,bufferserial,sernbr) then begin
    bufferout := bufferserial^;
    if sernbr > 0 then begin
      straux := StrPas(@bufferout[1]);
      ShowPriceProduct(ID,straux);
      MemoRecv.Lines.Append('#'+straux);
    end;
  end;

  if bReceiveCardCode(ID,bufferserial,sernbr) then begin
    bufferout := bufferserial^;
    if sernbr > 0 then begin
      straux := StrPas(@bufferout);
      MemoRecv.Lines.Append('#bonus?'+ chr(sernbr+48) + straux);
      ShowCardBonus(ID,straux);
    end;
  end;

  new(pbufparam);
  if bReceiveParam(pbufparam) then begin
    Shape8.Brush.Color := clGreen;
    //bufparam := pbufparam^;
    if (pbufparam^.ipdinamico) > 0 then CBdynamicip.Checked := true
    else CBdynamicip.Checked := false;

    if (pbufparam^.buscaserv) > 0 then CBfindserver.Checked := true
    else CBfindserver.Checked := false;
  end;
  dispose(pbufparam);

  new(pbufupdconfig);
  if bReceiveUpdConfig(pbufupdconfig) then begin
    Shape5.Brush.Color := clGreen;
    //bufconfig := pbufconfig^;
    Edit10.Text := StrPas(@pbufupdconfig^.gateway);
    Edit11.Text := StrPas(@pbufupdconfig^.nameserver);
    Edit12.Text := StrPas(@pbufupdconfig^.tcname);
    Edit13.Text := StrPas(@pbufupdconfig^.updserv);
    Edit14.Text := StrPas(@pbufupdconfig^.upduser);
    Edit15.Text := StrPas(@pbufupdconfig^.updpass);
  end;
  dispose(pbufupdconfig);

  new(pbufoldconfig);
  if bReceiveConfig(pbufoldconfig) then begin
    Shape7.Brush.Color := clGreen;
    bufoldconfig := pbufoldconfig^;
    Edit16.Text := StrPas(@bufoldconfig.host);
    Edit17.Text := StrPas(@bufoldconfig.endereco);
    Edit18.Text := StrPas(@bufoldconfig.msknet);
    Edit19.Text := StrPas(@bufoldconfig.texto1);
    Edit20.Text := StrPas(@bufoldconfig.texto2);
    Edit22.Text := StrPas(@bufoldconfig.texto3);
    Edit23.Text := StrPas(@bufoldconfig.texto4);
    Edit21.Text := IntToStr(bufoldconfig.tempoexib);
  end;
  dispose(pbufoldconfig);

  while (GetResponseCtr(ID,resposta)) do begin
    case resposta of
      RIDvOK: begin
        sendalluso[ID] := true;
        BeginThread(nil,0,@SendAllImages,@ID,0,THID);
        while sendalluso[ID] do;
      end;
      RIDvUpdateSoft: begin
        Shape4.Brush.Color := clGreen;
      end;
      RIDvAlwayslive: begin
        Shape1.Brush.Color := clGreen;
      end;
      RIDvChecklive: begin
        Shape2.Brush.Color := clGreen;
      end;
      RIDvRestart: begin
        Shape3.Brush.Color := clGreen;
      end;
      RIDvParam: begin
        Shape9.Brush.Color := clGreen;
      end;
      RIDvUpdConfig: begin
        Shape6.Brush.Color := clGreen;
      end;
      RIDvImg: begin
        if (GetResponseCtr(ID,resposta)) then begin
          frmbuscapreco.MemoRecv.Lines.Add('Response: ' + IntToHex(RIDvImg,4) + '/' + IntToHex(resposta,2));
          resposta := 0;
        end;
      end;
    end;
    if (resposta <>0) then MemoRecv.Lines.Add('Response: ' + inttohex(resposta,4));
  end;

end;

//-------------------------------------------------------------------------------
//-------------------------------------------------------------------------------
//---- M O S T R A   P R E C O / B O N U S --------------------------------------
//-------------------------------------------------------------------------------
//-------------------------------------------------------------------------------

procedure Tfrmbuscapreco.ShowPriceProduct(ID: integer; BarCode: string);
var
//  ci     : integer;
  strlcda: array[0..100] of byte;
  strlcdb: array[0..100] of byte;
begin
  qrproduto.close;
  qrproduto.sql.clear;
  qrproduto.sql.add('select * from c000025 where codbarra ='''+BarCode+'''');
  qrproduto.open;
  if qrproduto.RecNo = 1 then
  begin
    StrPCopy(@strlcda,copy(qrproduto.fieldbyname('produto').asstring,1,20));
    StrPCopy(@strlcdb,'R$ '+formatfloat('###,###,##0.00', qrproduto.fieldbyname('precovenda').asfloat));
    bSendProdPrice(ID, strlcda, strlcdb);
  end else begin
    bSendProdNotFound(ID);
  end;

  consultas := consultas + 1;
  otaldeConsultas1.Caption := inttostr(consultas)+' consulta(s)';



{  ci := 0;
  repeat
    ci := ci + 1;
  until (BarCode = StringGrid1.Cells[0,ci])or(ci = StringGrid1.RowCount);

  if (ci < StringGrid1.RowCount) then begin      //se achou o produto
    StrPCopy(@strlcda,StringGrid1.Cells[1,ci]);
    StrPCopy(@strlcdb,EdtCurrency.Text + StringGrid1.Cells[2,ci]);
    bSendProdPrice(ID, strlcda, strlcdb);
  end else begin
    bSendProdNotFound(ID);
  end;
}
end;

//------------------------------------------------------------------------------

procedure Tfrmbuscapreco.ShowCardBonus(ID: integer; BarCode: string);
var
  ci     : integer;
  strlcda: array[0..100] of byte;
  strlcdb: array[0..100] of byte;
begin
  ci := 0;
  repeat
    ci := ci + 1;
  until (BarCode = StringGrid2.Cells[0,ci])or(ci = StringGrid2.RowCount);

  if (ci < StringGrid2.RowCount) then begin      //se achou o produto
    StrPCopy(@strlcda,StringGrid2.Cells[1,ci]);
    StrPCopy(@strlcdb,StringGrid2.Cells[2,ci]);
    bSendCardBonus(ID,strlcda, strlcdb,5);
  end else begin
    bSendCardNotFound(ID);
  end;
end;

//------------------------------------------------------------------------------
//-------------------------------------------------------------------------------
//----- M E N S A G E N S -------------------------------------------------------
//-------------------------------------------------------------------------------
//-------------------------------------------------------------------------------

procedure Tfrmbuscapreco.BtnMsgSendClick(Sender: TObject);
var
  ci,cj   : integer;
  strlcda : array[0..100] of byte;
  strlcdb : array[0..100] of byte;
  TimeExib : integer;
begin
  ci := -1;
  cj := 0;
  StrPCopy(@strlcda,EdtLine1.Text);
  StrPCopy(@strlcdb,EdtLine2.Text);
  TimeExib := StrToInt(EdtTimeEx.Text);
  repeat
    ci := ci + 1;
    if TabConec.TabSock[ci] <> 0 then begin
      cj := cj + 1;
      bSendDisplayMsg(TabConec.TabSock[ci],strlcda,strlcdb,TimeExib,1);
    end;
  until ((cj >= TabConec.NumSockConec)or(ci > 1020));
end;

//-------------------------------------------------------------------------------

procedure ImageOnebpp(mybmp : TBitmap);
var
  tmpPal   : pLogPalette;
  cj       : Integer;
begin
  mybmp.PixelFormat := pf8bit;  //to 256 color to have a palette
  GetMem(tmpPal,sizeof(TLogPalette) + 256 * sizeof(TPaletteEntry));
  for cj := $00 to $ff do begin
    tmpPal.palPalEntry[cj].peRed := (cj mod 2) * $ff;
    tmpPal.palPalEntry[cj].peGreen := (cj mod 2) * $ff;
    tmpPal.palPalEntry[cj].peBlue := (cj mod 2) * $ff;
  end;
  SetPaletteEntries(mybmp.Palette, 0, 256, tmpPal^.palPalEntry);
  FreeMem(tmpPal);
  mybmp.PixelFormat := pf1bit;
end;

//-------------------------------------------------------------------------------

procedure ClearImage(mybmp : TBitmap);
begin
  mybmp.Width := 128;
  mybmp.Height := 64;

  ImageOneBpp(mybmp);

  mybmp.Canvas.Brush.Color := clWhite;
  mybmp.Canvas.FillRect(Rect(0,0,128,64));
end;

//-------------------------------------------------------------------------------

procedure ShowImage(mybmp : TBitmap; filename : string);
var
  MyImg : TPicture;
begin
  if not(FileExists(filename)) then exit;

  MyImg := TPicture.Create;
  MyImg.LoadFromFile(filename);

  ClearImage(mybmp);

  //mybmp.Canvas.StretchDraw(Rect(0,0,MyImg.Width,MyImg.Height),MyImg.Graphic);
  mybmp.Canvas.StretchDraw(Rect(0,0,128,64),MyImg.Graphic);
  mybmp.Monochrome;
  mybmp.PixelFormat := pf1bit;

  MyImg.free;
end;

//-------------------------------------------------------------------------------

procedure Tfrmbuscapreco.EdtImg1DblClick(Sender: TObject);
begin
  with (Sender as TEdit) do begin
    if (OpenPictureDialog1.Execute) then begin
      text := OpenPictureDialog1.Filename;
      ShowImage(IImg.Picture.Bitmap,text)
    end;
  end;
end;

//-------------------------------------------------------------------------------

procedure Tfrmbuscapreco.EdtImg1Enter(Sender: TObject);
begin
end;

//-------------------------------------------------------------------------------

procedure Tfrmbuscapreco.BtnIImgFontClick(Sender: TObject);
begin
  FontDialog1.Execute;
end;

//-------------------------------------------------------------------------------

procedure Tfrmbuscapreco.BtnTr1Click(Sender: TObject);
var
  textsize : TSize;
  texto : string;
  yoffset : integer;
begin
  with (Sender as TButton) do begin
    if (Name = 'BtnTr1') then begin
      texto := EdtLine1.Text;
      yoffset := 16;
    end else begin
      texto := EdtLine2.Text;
      yoffset := 48;
    end;
  end;

  with IImg.Picture.Bitmap do begin
    Canvas.Font := FontDialog1.Font;
    textsize := Canvas.TextExtent(texto);

    Canvas.TextOut((128 div 2)-(textsize.cx div 2),yoffset-(textsize.cy div 2),texto);
  end;
end;

//------------------------------------------------------------------------------

procedure Tfrmbuscapreco.BtnIImgSaveClick(Sender: TObject);
begin
  SavePictureDialog1.DefaultExt := '.bmp';
  SavePictureDialog1.Filter := 'Bitmap (*.bmp)|*.BMP';
  if (SavePictureDialog1.Execute) then begin
    IImg.Picture.SaveToFile(SavePictureDialog1.FileName);
  end;
end;

//------------------------------------------------------------------------------

procedure Tfrmbuscapreco.BtnIImgClearClick(Sender: TObject);
begin
  ClearImage(IImg.Picture.Bitmap);
end;

//------------------------------------------------------------------------------

procedure Tfrmbuscapreco.BtnImg1Click(Sender: TObject);
var
  filename : string;
  fn : array[0..255] of byte;
begin
  if (SelectedTermSock<0) then begin
    ShowMessage(ulang.chooseterminal);
    exit;
  end;

  filename := ExtractFilePath(ParamStr(0)) + 'temp.bmp';
  IImg.Picture.SaveToFile(filename);

  StrPCopy(@fn,filename);
  if (FileExists(filename)) then bSendImageFromFile(selectedtermsock,fn,128,64,0,0,0,1);
end;

//-------------------------------------------------------------------------------

function SendAllImages(var oID : integer): integer;
var
  ID    : integer;
  fn    : array[0..255] of byte;
  loop  : integer;
  pause : integer;
  cj    : integer;
begin
  ID := oid;
  sendalluso[ID] := false;

  if (iTypeTerm(ID)<2) then exit;

  StrPCopy(@fn,ExtractFilePath(ParamStr(0)) + 'upd.bmp');
  bSendImageFromFile(ID,fn,128,64,0,0,$fe,1);

  bSendImageFromFile(ID,fn,0,0,$ff,0,0,0);  //envia RESET das imagens

  for cj := 1 to frmbuscapreco.StringGrid3.RowCount -1 do begin
    StrPCopy(@fn,ExtractFilePath(ParamStr(0)) + 'images\' + frmbuscapreco.StringGrid3.Cells[0,cj]);
    loop := StrToInt(frmbuscapreco.StringGrid3.Cells[1,cj]);
    pause := StrToInt(frmbuscapreco.StringGrid3.Cells[2,cj]);

    if (FileExists(StrPas(@fn))) then
      bSendImageFromFile(ID,fn,128,64,cj,loop,pause,1);
  end;

  StrPCopy(@fn,ExtractFilePath(ParamStr(0)) + 'upd.bmp');
  bSendImageFromFile(ID,fn,128,64,0,0,$0,1);

end;

//-------------------------------------------------------------------------------

procedure Tfrmbuscapreco.BtnImgAllClick(Sender: TObject);
begin
end;

//-------------------------------------------------------------------------------
//-------------------------------------------------------------------------------
//----- L I S T A   D E   C O N E C T A D O S -----------------------------------
//-------------------------------------------------------------------------------
//-------------------------------------------------------------------------------

procedure Tfrmbuscapreco.ListBConecClick(Sender: TObject);
var
  ci : integer;
begin
  with (Sender as TListBox) do begin
    ci := ItemIndex-1;
    repeat
      inc(ci);
      SelectedTermSock := TabConec.TabSock[ci];
    until (TabConec.TabSock[ci]<>0) or (ci>1200);
  end;
end;

//-------------------------------------------------------------------------------
//-------------------------------------------------------------------------------
//----- C O N F I G -------------------------------------------------------------
//-------------------------------------------------------------------------------
//-------------------------------------------------------------------------------

procedure Tfrmbuscapreco.BtnGetUpdConfigClick(Sender: TObject);
begin
  if (SelectedTermSock<0) then begin
    ShowMessage(ulang.chooseterminal);
    exit;
  end;

  Shape5.Brush.Color := clYellow;
  bPedeUpdConfig(SelectedTermSock);
end;

//-------------------------------------------------------------------------------

procedure Tfrmbuscapreco.BtnGetCfgClick(Sender: TObject);
begin
  if (SelectedTermSock<0) then begin
    ShowMessage(ulang.chooseterminal);
    exit;
  end;

  Shape7.Brush.Color := clYellow;
  bPedeConfig(SelectedTermSock);
end;

//-------------------------------------------------------------------------------

procedure Tfrmbuscapreco.BtnGetParamClick(Sender: TObject);
begin
  if (SelectedTermSock<0) then begin
    ShowMessage(ulang.chooseterminal);
    exit;
  end;

  Shape8.Brush.Color := clYellow;
  bPedeParam(SelectedTermSock);
end;

//-------------------------------------------------------------------------------

procedure Tfrmbuscapreco.BtnSendUpdConfigClick(Sender: TObject);
var
  ci,cj   : integer;
  pbufconfig : PTCUPDCONFIG;
begin
  if (SelectedTermSock<0) then begin
    ShowMessage(ulang.chooseterminal);
    exit;
  end;

  new(pbufconfig);
  pbufconfig^.ID := SelectedTermSock;

  StrPCopy(@pbufconfig.gateway,Edit10.text);
  StrPCopy(@pbufconfig.nameserver,Edit11.text);
  StrPCopy(@pbufconfig.tcname,Edit12.text);
  StrPCopy(@pbufconfig.updserv,Edit13.text);
  StrPCopy(@pbufconfig.upduser,Edit14.text);
  StrPCopy(@pbufconfig.updpass,Edit15.text);

  Shape6.Brush.Color := clYellow;
  bMandaUpdConfig(pbufconfig);
  dispose(pbufconfig);
end;

//-------------------------------------------------------------------------------

procedure Tfrmbuscapreco.BtnSendCfgClick(Sender: TObject);
var
  ci,cj      : integer;
  pbufconfig : PTCCONFIG;
begin
  if (SelectedTermSock<0) then begin
    ShowMessage(ulang.chooseterminal);
    exit;
  end;

  //CONFIG REDE
  new(pbufconfig);
  pbufconfig^.ID := SelectedTermSock;

  StrPCopy(@pbufconfig.host,Edit16.text);
  StrPCopy(@pbufconfig.endereco,Edit17.text);
  StrPCopy(@pbufconfig.msknet,Edit18.text);
  StrPCopy(@pbufconfig.texto1,Edit19.text);
  StrPCopy(@pbufconfig.texto2,Edit20.text);
  StrPCopy(@pbufconfig.texto3,Edit22.text);
  StrPCopy(@pbufconfig.texto4,Edit23.text);
  pbufconfig.tempoexib := StrToInt(Edit21.Text);

  bMandaConfig(pbufconfig);
  dispose(pbufconfig);
end;

//-------------------------------------------------------------------------------

procedure Tfrmbuscapreco.BtnSendParamClick(Sender: TObject);
var
  pbufparam : PTCPARAMCONFIG;
begin
  if (SelectedTermSock<0) then begin
    ShowMessage(ulang.chooseterminal);
    exit;
  end;

  //PARAM (IPDINAMIC/BUSCASERV)
  new(pbufparam);
  pbufparam^.ID := SelectedTermSock;

  pbufparam.ipdinamico := 0;
  if (CBdynamicip.Checked) then pbufparam^.ipdinamico := 1;
  pbufparam.buscaserv  := 0;
  if (CBdynamicip.Checked) then pbufparam^.buscaserv  := 1;

  bMandaParam(pbufparam);
  dispose(pbufparam);
  Shape9.Brush.Color := clYellow;
end;

//-------------------------------------------------------------------------------

procedure Tfrmbuscapreco.BtnAllwaysLiveClick(Sender: TObject);
begin
  if (SelectedTermSock<0) then begin
    ShowMessage(ulang.chooseterminal);
    exit;
  end;

  Shape1.Brush.Color := clYellow;
  bSendAllwaysLive(SelectedTermSock);
end;

//-------------------------------------------------------------------------------

procedure Tfrmbuscapreco.BtnUpdSoftClick(Sender: TObject);
begin
  if (SelectedTermSock<0) then begin
    ShowMessage(ulang.chooseterminal);
    exit;
  end;

  Shape4.Brush.Color := clYellow;
  bUpdateSoftware(SelectedTermSock);
end;

//-------------------------------------------------------------------------------

procedure Tfrmbuscapreco.BtnCheckLiveClick(Sender: TObject);
begin
  if (SelectedTermSock<0) then begin
    ShowMessage(ulang.chooseterminal);
    exit;
  end;

  Shape2.Brush.Color := clYellow;
  bSendCheckLive(SelectedTermSock);
end;

//-------------------------------------------------------------------------------

procedure Tfrmbuscapreco.BtnRestartSoftClick(Sender: TObject);
begin
  if (SelectedTermSock<0) then begin
    ShowMessage(ulang.chooseterminal);
    exit;
  end;

  Shape3.Brush.Color := clYellow;
  bSendRestartSoft(SelectedTermSock);
end;

//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//---- R E C E I V E D ---------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------

procedure Tfrmbuscapreco.BtnClearMemoClick(Sender: TObject);
begin
  MemoRecv.Clear;
end;

//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//---- M E N U -----------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------

procedure Tfrmbuscapreco.Portugues1Click(Sender: TObject);
begin
    lu := 'lg_port.ini';
  OpenLanguageFile(lu,ulang);
  Portugues1.Checked := true;
  English1.Checked := false;
end;

//------------------------------------------------------------------------------

procedure Tfrmbuscapreco.English1Click(Sender: TObject);
begin
end;

//------------------------------------------------------------------------------

procedure Tfrmbuscapreco.StartClick(Sender: TObject);
begin
  if (tc_startserver <> 0) then begin
    MemoRecv.Lines.Add(ulang.serverstartok);
    Start.Enabled := false;
  end else begin
    MemoRecv.Lines.Add(ulang.serverstartfail);
    ShowMessage(ulang.serverstartfail);
  end;
end;

//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//---- I M A G E S -------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------

procedure Tfrmbuscapreco.StringGrid3SelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
var
  filename : string;
begin
  filename := ExtractFilePath(ParamStr(0)) + 'images\' + StringGrid3.Cells[0,ARow];
  if (ARow <> StringGrid3.Row) then begin
    if (FileExists(filename)) then begin
      ShowImage(Image1.Picture.Bitmap,filename);
    end else begin
      ClearImage(Image1.Picture.Bitmap);
      {with Image1.Picture.Bitmap.Canvas do begin
        Font.Size := 9;
        Font.Name := 'Verdana';
        Font.Style := [fsBold];
        TextOut(5,10,'Double Click');
        TextOut(5,34,'to Load an Image');
      end;}
    end;
  end;
end;

//------------------------------------------------------------------------------

procedure Tfrmbuscapreco.StringGrid3DblClick(Sender: TObject);
var
  r, c : integer;
begin
  r := StringGrid3.Row;
  c := StringGrid3.Col;

  if ((c <> 0) and (Sender.ClassName = 'TStringGrid')) then exit;

  OpenPIctureDialog1.InitialDir := ExtractFilePath(ParamStr(0))+ 'images\';

  with StringGrid3 do begin
    if (OpenPictureDialog1.Execute) then begin
      StringGrid3.Cells[0,r] := ExtractFileName(OpenPictureDialog1.Filename);
      ShowImage(Image1.Picture.Bitmap,OpenPictureDialog1.Filename);
    end;
  end;

end;

//------------------------------------------------------------------------------

procedure Tfrmbuscapreco.Button6Click(Sender: TObject);
var
  THID : DWORD;
begin
  if (SelectedTermSock<0) then begin
    ShowMessage(ulang.chooseterminal);
    exit;
  end;

  BeginThread(nil,0,@SendAllImages,@SelectedTermSock,0,THID);
end;

//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//---- D A T A   B A S E   M A N A G E R ---------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------

function GetStringGrid(name : string) : TStringGrid;
begin
  if (strlicomp(PChar(name),'btnprod',7)=0) then
    Result := frmbuscapreco.StringGrid1
  else if (strlicomp(PChar(name),'btncard',7)=0) then
    Result := frmbuscapreco.StringGrid2
  else if (strlicomp(PChar(name),'btnimg',6)=0) then
    Result := frmbuscapreco.StringGrid3
  else
    Result := nil;
end;

//------------------------------------------------------------------------------

procedure Tfrmbuscapreco.BtnImgAddClick(Sender: TObject);
var
  sgrid : TStringGrid;
  isimg : boolean;
begin
  isimg := false;
  with (Sender as TButton) do begin
    sgrid := GetStringGrid(Name);

    if (name = 'BtnImgAdd') then
      isimg := true;
  end;
  if (sgrid = nil) then exit;

  sgrid.RowCount := sgrid.RowCount + 1;
  sgrid.Row := sgrid.RowCount-1;
  sgrid.Col := 0;
  sgrid.SetFocus;
  sgrid.EditorMode := TRUE;

  if (isimg) then begin
    sgrid.Cells[1,sgrid.RowCount-1] := '0';
    sgrid.Cells[2,sgrid.RowCount-1] := '3';
  end;
end;

//------------------------------------------------------------------------------

procedure Tfrmbuscapreco.BtnImgDelClick(Sender: TObject);
var
  isimg : boolean;
  sgrid : TStringGrid;
  cj : integer;
  filename : string;
begin
  isimg:=false;
  with (Sender as TButton) do begin
    sgrid := GetStringGrid(Name);
    if (name = 'BtnImgDel') then
      isimg := true;
  end;
  if (sgrid = nil) then exit;

  if (sgrid.Row=0) then Exit;
  if (sgrid.RowCount>2) then begin
    for cj := sgrid.Row to sgrid.RowCount -1 do
      sgrid.Rows[cj] := sgrid.Rows[cj+1];

    sgrid.Rows[sgrid.RowCount-1].Clear;
    sgrid.RowCount := sgrid.RowCount - 1;
  end else begin
    sgrid.Rows[1].Clear;
    if ((isimg) and (sgrid.RowCount=2)) then begin
      sgrid.Cells[1,1] := '0';
      sgrid.Cells[2,1] := '3';
    end;
  end;

  if (isimg) then begin
    filename := ExtractFilePath(ParamStr(0)) + 'images\' + StringGrid3.Cells[0,StringGrid3.Row];
    if (FileExists(filename)) then begin
      ShowImage(Image1.Picture.Bitmap,filename);
    end else begin
      ClearImage(Image1.Picture.Bitmap);
    end;
  end;

end;

//------------------------------------------------------------------------------

procedure Tfrmbuscapreco.BtnImgRelClick(Sender: TObject);
var
  sgrid : TStringGrid;
  filename : string;
begin
  with (Sender as TButton) do begin
    sgrid := GetStringGrid(Name);
    if (sgrid = nil) then exit;

    if (name = 'BtnProdRel') then
      filename := 'pricetab.txt'
    else if (name = 'BtnCardRel') then
      filename := 'cardtab.txt'
    else if (name = 'BtnImgRel') then
      filename := 'images.txt'
    else
      exit;
  end;

  filename := ExtractFilePath(ParamStr(0)) + filename;
  MontaTabela(filename,sgrid);
  if (ExtractFileName(filename)='images.txt') then begin
    filename := ExtractFilePath(ParamStr(0)) + 'images\' + StringGrid3.Cells[0,1];
    if (FileExists(filename)) then
      ShowImage(Image1.Picture.Bitmap,filename)
    else
      ClearImage(Image1.Picture.Bitmap);
  end;
end;

//------------------------------------------------------------------------------

procedure Tfrmbuscapreco.BtnImgSaveClick(Sender: TObject);
var
  filename : string;
  sgrid : TStringGrid;
begin
  with (Sender as TButton) do begin
    sgrid := GetStringGrid(Name);
    if (sgrid = nil) then exit;

    if (name = 'BtnProdSave') then
      filename := 'pricetab.txt'
    else if (name = 'BtnCardSave') then
      filename := 'cardtab.txt'
    else if (name = 'BtnImgSave') then
      filename := 'images.txt'
    else
      exit;
  end;

  filename := ExtractFilePath(ParamStr(0)) + filename;
  SalvaTabela(filename,sgrid);
end;

procedure Tfrmbuscapreco.FormShow(Sender: TObject);
begin

  timer3.enabled := true;

end;

procedure Tfrmbuscapreco.Timer3Timer(Sender: TObject);
begin
  if not fechar then
  begin
    close;
    fechar := true;
    timer3.Enabled := false;
  end;

end;

procedure Tfrmbuscapreco.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
    if CanClose then
    CanClose := false;
    h := FindWindow(nil,'ECFServer');
    ShowWindow(h,SW_HIDE);
    RxTrayIcon1.Active := true;
    hide;
end;

procedure Tfrmbuscapreco.Fechar1Click(Sender: TObject);
begin
  application.Terminate;
end;

procedure Tfrmbuscapreco.Configuraes1Click(Sender: TObject);
begin
  show;
end;

end.
