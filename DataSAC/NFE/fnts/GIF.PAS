unit Gif;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls;

const
  Msk: array[0..12] of WORD = ($0,$1,$3,$7,$f,$1f,$3f,$7f,$ff,$1ff,$3ff,$7ff,$fff);

type TGIF_STRUCT = record
  Signature   : packed array[0..5] of Char;
  Width       : WORD;
  Height      : WORD;
  GPalFlag    : Boolean;
  GPalbpp     : BYTE;
  BGColor     : BYTE;
  nFrame      : WORD;
  PGPalData   : PChar;
  NowFrame    : integer;
end;

type
  PGIF_FRAME_PARAM = ^TGIF_FRAME_PARAM;
  TGIF_FRAME_PARAM = record
    LPalFlag         : Boolean;
    LPalbpp          : BYTE;
    DispMet          : BYTE;
    GifDelay         : WORD;
    TransparentFlag  : Boolean;
    TransparentIndex : BYTE;
    Interlaced       : Boolean;
end;

type
  PDECO_STRUCT = ^TDECO_STRUCT;
  TDECO_STRUCT = record
    pPassStep        : BYTE;           //usado no Gif Intrelacado
    pPassNumber      : BYTE;           //usado no Gif Intrelacado
    pX,pY            : WORD;           //Posicao atual do BMP q está sendo criado
    pXstart, pYstart : WORD;           //offset do inicio do bitmap
    pXend, pYend     : WORD;           //Posicao final do bmp

    LZWBlockLength   : WORD;           //Bytes In a Block
    LZWNum           : WORD;           //Count The BlockLenght
    LZWBits          : integer;        //Numero de bits no buffer
    LZWBitString     : integer;        //buffer de bits

    rCodeStack       : array[0..4096-1] of byte;      // buffer temporario
    rPrefix          : array[0..4096-1] of integer;   // string prefixes
    rSuffix          : array[0..4096-1] of BYTE;      // string suffixes
    rSP              : integer;                // pointer into CodeStack
    rClearCode       : integer;                // reset decode params
    rEndCode         : integer;                // last code in input stream
    rHighCode        : integer;                // highest LZW code possible
    rCurSize         : integer;                // current code size
    rCurSlot         : integer;                // next stack index to store a code
    rTopSlot         : integer;                // highest slot used so far
    rMaxVal          : boolean;                // max code value found?
    rFirstSlot       : integer;                // for encoding an image
    rNextSlot        : integer;                // for encoding
    rCount           : integer;                // number of bytes read/written
    rLast            : integer;                // last byte read in
    rUnget           : boolean;                // read a new byte, or use zLast?
    rLZWSize         : integer;                // LZW minimum code size
    rPixelCount      : longint;                // number of pixels
end;

type
  TGif = class(TGraphic)
  private
    GifID       : TGIF_STRUCT;          // estrutura do GIF
    GifFrame    : PGIF_FRAME_PARAM;     // parametros de cada frame
    DecoData    : PDECO_STRUCT;         // estrutura para ler o GIF
    BM          : TBitMap;              // buffer de BMPs
    ListaDeBMP  : TList;                // lista de ponteiros de cada bitmap
    ListaPal    : TList;                // lista de ponteiros de cada bitmap
    ListaGFrame : TList;                // lista de ponteiros de cada bitmap
    PBMPData    : PChar;                // Aponta para pixels do Gif
    PPalData    : PChar;                // Aponta para uma paleta
    fIOStream   : TMemoryStream;        // Memoria de buffer de leitura do arquivo

    GifTimer    : TTimer;               // Timer para fazer Gif Animado
    ptlive      : TBitmap;              // aponta pro Bitmap que será animado
    fastread    : Boolean;              // used to read just the first frame, or the entire GIF

  protected
    //procedures usado para ler o gif
    procedure LZWIncrPosition;
    procedure Plot(A: BYTE);
    procedure WriteBitMap;
    procedure SavePixel(pixel : byte);
    function  ReadCode(CodeSize: WORD) : integer;
    procedure LZWCheckSlot;
    procedure LZWSaveSlot(Prefix, Suffix: integer);
    procedure LZWDecodeCode(var Code: integer);
    procedure LZWDecode;
    function  GetGifControl : BYTE;
    procedure GetGifPal(bpp : BYTE);
    procedure OpenGif;
    procedure ReadSignature;
    procedure ReadScreenDescriptor;
    procedure ReadGifFrame;

    // procedures that overrides TGraphic
    Procedure Draw(ACanvas : TCanvas; Const Rect : TRect); override;
    Function GetHeight : Integer; override;
    Function GetWidth : Integer; override;
    Function GetEmpty : Boolean; override;
    procedure FreeImage;

    // procedures used to implement the PROPERTIES
    function  GetImageDelay(image : integer): integer;
    function  GetFramesRead: integer;
    function  GetBitmap(I: Integer): TBitmap;
    procedure SetBitmap(Sender : TBitmap);

    procedure AnimateImageNotify(Sender: TObject);
  public
    constructor Create; override;
    destructor Destroy; override;
    procedure Free;

    Procedure Assign(Source : TPersistent); override;
    Procedure LoadFromFile(const Filename : String); override;
    Procedure LoadFromStream(Stream : TStream); override;


    property Height                     : integer read GetHeight;
    property Width                      : integer read GetWidth;

    //return the Dalay of the Gif Frame
    property ImageDelay[image: integer] : integer read GetImageDelay;
    //Numbers os frames read
    property FramesRead                 : integer read GetFramesRead;

    //to animate the GIF in a TBitmap Component
    procedure LiveGif(Source : TBitmap);
    procedure StopLiveGif;

    //return a bitmap for the correspondent frame
    property Bitmap[I: Integer]         : TBitmap read GetBitmap;

    property ReadOnlyFirstFrame : Boolean read fastread write fastread;
  end;

implementation

//------------------------------------------------------------------------------

constructor TGif.Create;
begin
  inherited Create;
  ReadOnlyFirstFrame := TRUE;
  BM               := nil;
  PBMPData         := nil;
  PPalData         := nil;
  GifID.PGPalData  := nil;
  GifFrame         := nil;
  ListaDeBMP       := nil;
  ListaPal         := nil;
  ListaGFrame      := nil;

  GifTimer         := TTimer.Create(nil);
  GifTimer.Enabled := FALSE;
end;

//------------------------------------------------------------------------------

procedure TGif.Free;
begin
  Destroy;
end;

//------------------------------------------------------------------------------

Destructor TGif.Destroy;
Begin
  FreeImage;
  GifTimer.Free;
  inherited Destroy;
End;

//------------------------------------------------------------------------------

procedure TGif.FreeImage;
var
  ci : integer;
  P  : PChar;
begin
  if (BM<>nil) then BM.Free;
  BM := nil;

  //libera memoria dos bitmaps já criado
  if (listadebmp<>nil) then begin             //se tem algo na lista de bmp
    for ci:=0 to listadebmp.Count-1 do begin
      P := listadebmp.Items[ci];              //pega ponteiro do bmp
      FreeMem(P);
    end;
    listadebmp.Free;                          //libera a lista de bitmaps
    listadebmp := nil;
  end;

  //libera memoria da Paleta Global
  if (GifID.PGPalData<>nil) then FreeMem(GifID.PGPalData);

  //libera memoria das Paletas Locais criadas
  if (ListaPal<>nil) then begin             //se tem algo na lista de Paleta
    for ci:=0 to ListaPal.Count-1 do begin
      P := ListaPal.Items[ci];              //pega ponteiro da paleta alocada
      if (P<>nil) then FreeMem(P);
    end;
    ListaPal.Free;                          //libera a lista de paletas
    ListaPal := nil;
  end;

  //libera memoria dos Controles de frames do GIF
  if (ListaGFrame<>nil) then begin             //se tem algo na lista de Controle
    for ci:=0 to ListaGFrame.Count-1 do begin
      P := ListaGFrame.Items[ci];              //pega ponteiro do Controle alocada
      if (P<>nil) then dispose(P);
    end;
    ListaGFrame.Free;                          //libera a lista de Controle
    ListaGFrame := nil;
  end;
end;

//------------------------------------------------------------------------------

function TGif.GetHeight: integer;
begin
  GetHeight := GifID.Height;
end;

//------------------------------------------------------------------------------

function TGif.GetWidth: integer;
begin
  GetWidth := GifID.Width;
end;

//------------------------------------------------------------------------------

function TGif.GetImageDelay(image : integer): integer;
begin
  GifFrame := ListaGFrame.Items[image];
  GetImageDelay := GifFrame^.GifDelay;
end;

//------------------------------------------------------------------------------

function TGif.GetFramesRead: integer;
begin
  GetFramesRead := GifID.nFrame;
end;

//------------------------------------------------------------------------------

Function TGif.GetEmpty : Boolean;
begin
  if (FramesRead > 0) then Result := FALSE
  else Result := TRUE;
end;

//--------------------------------------------------------------------//

Procedure TGif.Assign(Source : TPersistent);
Var
   iX,iY : Integer;
Begin
  if (FramesRead=0) then begin
    FreeImage;
    ListaDeBMP  := TList.Create;           //cria nova lista de bitmaps
    ListaPal    := TList.Create;           //cria nova lista de paletas
    ListaGFrame := TList.Create;           //cria nova lista de paletas

    GifID.Width := (Source as TGif).Width;
    GifID.Height := (Source as TGif).Height;

    new(GifFrame);
    if (GifFrame=nil) then exit;       //se nao conseguiu alocar a memoria...
    ListaGFrame.add(GifFrame);         //quarda o ponteiro do Frame recem criado

    ListaPal.Add(nil);

    pbmpdata := AllocMem(GifID.Width*GifID.Height);
    if (pbmpdata=nil) then exit;       //se nao conseguiu alocar a memoria...
    listadebmp.add(pbmpdata);          //quarda o ponteiro do BITIMAP recem criado

    GifID.NowFrame := 0;
    If (Source is TBitmap) then begin
      SetBitmap((Source as TBitmap));
    end else if (Source is TPicture) then begin
      if (BM=nil) then begin
        BM := TBitmap.Create;
      end;
      BM.Canvas.Draw(0,0,(Source as TPicture).Graphic);
      SetBitmap(BM);
    end else if (Source is TGif) then begin
      SetBitmap((Source as TGif).Bitmap[0]);
    end;
    GifID.nFrame := 1;
  end;
End;

//----------------------------------------------------------------------

function TGif.GetBitmap(I : Integer) : TBitmap;
var
  cy     : integer;
  scanl  : PChar;
  pbmp   : PChar;
  pal    : PLogPalette;
  LogPal : TMaxLogPalette;     // WINDOZE needs this to make a palette
  hpal   : HPALETTE;
  k      : integer;
  bpp    : BYTE;
begin

  GifFrame := ListaGFrame.Items[I];
  if (GifFrame^.LPalFlag) then begin         //se tiver paleta local
    PPalData := ListaPal.Items[I];
    bpp := GifFrame^.LPalbpp;
  end else begin
    PPalData := GifID.PGPalData;
    bpp := GifID.GPalbpp;
  end;

  //creating HPALETTE for the Bitmap
  LogPal.palNumEntries := 256;
  LogPal.palVersion := $300;
  for k:=0 to (1 shl bpp)-1 do begin
    LogPal.palPalEntry[k].peRed   := Ord(PPalData[k*3]);
    LogPal.palPalEntry[k].peGreen := Ord(PPalData[k*3+1]);
    LogPal.palPalEntry[k].peBlue  := Ord(PPalData[k*3+2]);
    LogPal.palPalEntry[k].peFlags := 0;
  end;
  // have Windows API make a palette, and return handle
  pal := @LogPal;                      // to fool the type-cast on CreatePalette
  hpal := CreatePalette(pal^);

  pbmp := listadebmp.Items[I];
  if (BM=nil) then begin
    BM := TBitmap.Create;
  end;
  with BM do begin
    PixelFormat := pf8bit;
    Width := GifID.Width;
    Height := GifID.Height;
  end;

  //if (GifFrame^.TransparentFlag) then
{  BM.Transparent := GifFrame^.TransparentFlag;
  BM.TransparentColor := RGB(ord(PPalData[GifFrame^.TransparentIndex*3]),
                             ord(PPalData[GifFrame^.TransparentIndex*3+1]),
                             ord(PPalData[GifFrame^.TransparentIndex*3+2]));}
  //BM.ReleasePalette;
  BM.Palette := CopyPalette(hpal);
  DeleteObject(hpal);

  for cy := 0 to GifID.Height-1 do begin
    scanl := BM.ScanLine[cy];
    StrMove(scanl,@pbmp[cy*GifID.Width],GifID.Width);
  end;

  GetBitmap := BM;
end;

//------------------------------------------------------------------------------

procedure TGif.SetBitmap(Sender : TBitmap);
var
  cy        : integer;
  scanl     : PChar;
  pbmp      : PChar;
  LogPal    : TMaxLogPalette;     // WINDOZE needs this to make a palette
  k         : integer;
  xmax,ymax : integer;
begin
  GifID.NowFrame := 0;
  with Sender as TBitmap do begin
    GifFrame := ListaGFrame.Items[0];
    GifFrame^.LPalFlag := TRUE;
    GifFrame^.LPalbpp := 8;

    PixelFormat := pf8bit;

    PPalData := ListaPal.Items[0];
    if (PPalData=nil) then PPalData := AllocMem(768);
    ListaPal.Items[0] := PPalData;

    // getting PALETTE from the Bitmap
    GetPaletteEntries(Palette, 0, 256, LogPal.palPalEntry);
    for k:=0 to 255 do begin
      PPalData[k*3]     := Chr(LogPal.palPalEntry[k].peRed);
      PPalData[(k*3)+1] := Chr(LogPal.palPalEntry[k].peGreen);
      PPalData[(k*3)+2] := Chr(LogPal.palPalEntry[k].peBlue);
    end;

    //get the source bmp data, and copy to gifbmpdata
    pbmp := listadebmp.Items[0];

    xmax := GifID.Width;
    if (Width<xmax) then xmax:=Width;
    ymax := GifID.Height;
    if (Height<ymax) then ymax:=Height;

    for cy := 0 to ymax-1 do begin
      scanl := ScanLine[cy];
      StrMove(@pbmp[cy*GifID.Width],scanl,xmax);
    end;
  end;  //with sender as tbitmap
end;

//----------------------------------------------------------------------

Procedure TGif.Draw(ACanvas : TCanvas; const Rect : TRect);
Begin
if (FramesRead>0) then
  ACanvas.StretchDraw(Rect,Bitmap[0]);
End;

//------------------------------------------------------------------------------

procedure TGif.StopLiveGif;
begin
  GifTimer.Enabled := FALSE;
end;

//------------------------------------------------------------------------------

procedure TGif.AnimateImageNotify(Sender: TObject);
begin
  GifFrame := ListaGFrame.Items[GifID.NowFrame];

  with ptlive do begin
    Canvas.Draw(0,0,Bitmap[GifID.NowFrame]);
  end;
  //ptlive.Assign(Bitmap[GifID.NowFrame]);

  if (GifID.nFrame<2) then GifTimer.Enabled := FALSE;

  GifFrame := ListaGFrame.Items[GifID.NowFrame];
  GifTimer.Interval := GifFrame^.GifDelay*10;

  inc(GifID.NowFrame);
  if (GifID.NowFrame>=GifID.nFrame) then //GifID.NowFrame := 0;
    GifTimer.Enabled := FALSE;
end;

//------------------------------------------------------------------------------

procedure TGif.LiveGif(Source : TBitmap);
begin
  if (GifID.nFrame<1) then exit;
  ptlive := Source;
  with ptlive do begin
    PixelFormat := pf24Bit;
    Width := GifID.Width;
    Height := GifID.Height;
  end;
  GifTimer.OnTimer := AnimateImageNotify;
  GifTimer.Interval := 1;
  GifTimer.enabled := TRUE;
  GifID.NowFrame:=0;
end;


{ ---------------------------------------------------------------------------- }
{ PROCEDURES TO READ A GIF FILE ---------------------------------------------- }

{ ---------------------------------------------------------------------------- }
{ read the GIF signature from the source stream }
{ this assumes the memory stream position is correct }
{ the signature is always 6 bytes, and must be either GIF87A or GIF89A }

procedure TGif.ReadSignature;
begin
  with GifID do begin
    fIOStream.ReadBuffer(Signature, 6);
  end;
end;

{ ---------------------------------------------------------------------------- }
{ read the GIF logical screen descriptor from the source stream }
{ this assumes the memory stream position is correct }
{ this always follows the GIF signature }

procedure TGif.ReadScreenDescriptor;
var
  b : BYTE;
begin
  with GifID do begin
    fIOStream.Read(Width,2);            //pega Largura do GIF
    fIOStream.Read(Height,2);           //pega Altura do GIF

    fIOStream.Read(b,1);                // pega Package
    GPalFlag := ((b and $80) <> 0);     // Global Color Table Flag
    GPalbpp:=(b and $7)+1;                 // Bitx Por Pixel

    fIOStream.Read(BGColor,1);          // pega BackGround
    fIOStream.Read(b,1);                // Ignora o PixelAspectRatio

    // pega paleta
    if (GPalFlag) then begin
      PGPalData := AllocMem(768);
      if (PGPalData = nil) then exit;
      PPalData := PGPalData;
      GetGifPal(GPalbpp);
    end;
  end;
end;

//--------------------------------------------------------------------
// retorna:
// 1 se chegou no fim do GIF
// 0 se tem um novo frame a ser lido
//--------------------------------------------------------------------
function TGif.GetGifControl : BYTE;
var
  b  : BYTE;
begin
  //repete até chegar a proxima imagem ou o fim do arquivo
  repeat
    if (fIOStream.Position >= fIOStream.Size) then begin  //se chegou no fim
      GetGifControl := 1;
      exit;
    end;
    fIOStream.ReadBuffer(b,1);  //pega um byte do arquivo .GIF
    if (b=$3B) then begin       //image TERMINATOR
      GetGifControl := 1;
      exit;
    end;
    if (b=$21) then begin       //CONTROLE
      fIOStream.ReadBuffer(b,1);
      if (b=$FF) then begin                    //NETSCAPE LOOP
        repeat                                 //Ignora o Numero de Loops
          fIOStream.ReadBuffer(b,1);
        until (b=0);
      end else if (b=$F9) then begin           //SE FOR EXTENSION
        fIOStream.ReadBuffer(b,1);
        if (b=4) then begin
          fIOStream.ReadBuffer(b,1);
          GifFrame^.TransparentFlag := ((b and $01) <> 0); // Transparent Flag
          GifFrame^.DispMet         := (b and $1C) shr 2;  // METODO DE MOSTRAGEM
          fIOStream.Read(GifFrame^.GifDelay,2);            //delay do gif
          fIOStream.Read(GifFrame^.TransparentIndex,1);    //cor de transparencia
          fIOStream.Read(b,1);                             //BLOCK TERMINATOR
        end;
        b:=0;
      end else if (b=$FE) then begin                    //SE FOR COMENTARIO
        repeat
          fIOStream.ReadBuffer(b,1);
        until (b=0);
      end;
    end;
  until (b=$2C);
  GetGifControl := 0;
end;

//--------------------------------------------------------------------

procedure TGif.GetGifPal(bpp : BYTE);
begin
  fIOStream.ReadBuffer(PPalData[0],(1 shl bpp)*3);
end;

//--------------------------------------------------------------------

procedure TGif.ReadGifFrame;
var
  b                : BYTE;
  Xlength          : WORD;
  Ylength          : WORD;
//  ci : integer;
begin
  with DecoData^ do begin
    fIOStream.Read(pXstart,2);                 //frame start x offset
    fIOStream.Read(pYstart,2);                 //frame start y offset
    fIOStream.Read(Xlength,2);                 //frame width
    fIOStream.Read(Ylength,2);                 //frame height
    pXend := Xlength + pXstart - 1;
    pYend := Ylength + pYstart - 1;
    pX := pXstart;
    pY := pYstart;

    if ( (GifFrame^.DispMet<>2) and (GifID.nFrame<>0) ) then begin
      StrMove(pbmpdata,listadebmp.Items[GifID.nFrame-1],GifID.Width*GifID.Height);
    end;
  end;

  fIOStream.ReadBuffer(b,1);             // pega package
  with GifFrame^do begin
    LPalFlag    := ((b and $80) <> 0);   // Pega Local Color Table Flag
    Interlaced  := ((b and $40) <> 0);   // Pega Intrelacado
    LPalbpp     := (b and $7)+1;         // Bit Por Pixel Local

    if (LPalFlag) then begin             // se tiver paleta Local
      PPalData := AllocMem(768);
      if (PPalData = nil) then exit;
      GetGifPal(LPalbpp);              // pega a paleta
    end else begin
      PPalData := nil;
    end;
    ListaPal.Add(PPalData);
  end;

  LZWDecode;           //decodifica o GIF para BMP
end;

//------------------------------------------------------------------------------
// Do EveryThing with he Gif File to Be Openned
//------------------------------------------------------------------------------
procedure TGif.OpenGif;
begin
  //Inicializa variáveis
  GifID.nFrame := 0;                 // frames lidos
  //DecoData^.DispMet := 2;            // Metodo de Mostragem Padrão

  FreeImage;
  ListaDeBMP  := TList.Create;           //cria nova lista de bitmaps
  ListaPal    := TList.Create;           //cria nova lista de paletas
  ListaGFrame := TList.Create;           //cria nova lista de paletas

  fIOStream.Position := 0;              //inicio do arquivo .GIF

  //Começa a ler o GIF.

  //read the signature GIF87A or GIF89A
  ReadSignature;
  //read the logical screen descriptor
  ReadScreenDescriptor;

  //loop onde le todos os frames do GIF
  repeat
    new(GifFrame);
    if (GifFrame=nil) then exit;       //se nao conseguiu alocar a memoria...
    ListaGFrame.add(GifFrame);         //quarda o ponteiro do Frame recem criado
    //FillChar(GifFrame,SizeOf(TGIF_FRAME_PARAM),0);

    if (GetGifControl=1) then exit;

    pbmpdata := AllocMem(GifID.Width*GifID.Height);
    if (pbmpdata=nil) then exit;       //se nao conseguiu alocar a memoria...
    listadebmp.add(pbmpdata);          //quarda o ponteiro do BITIMAP recem criado

    ReadGifFrame;

    inc(GifID.nFrame);             //incrementa numero de frames lidos
  until ( (fIOStream.Position >= fIOStream.Size) or (ReadOnlyFirstFrame) );
  ReadOnlyFirstFrame := TRUE;
end;

//------------------------------------------------------------------------------

procedure TGif.LoadFromStream(Stream: TStream);
begin
  GifTimer.enabled := FALSE;
  fIOStream := TMemoryStream.Create;
  fIOStream.LoadFromStream(Stream);

  new(DecoData);  //aloca memoria para decodificar o GIF (DecoData)
  fillchar(DecoData^, sizeof(TDECO_STRUCT), 0);  //apaga os dados
  if (DecoData=nil) then exit;                   //se nao tem memoria para cria-lo

  OpenGif;
  GifID.NowFrame := GifId.nFrame;

  dispose(DecoData);

  fIOStream.Free;
end;

//------------------------------------------------------------------------------

procedure TGif.LoadFromFile(const FileName: string);
var
  fstream : TMemoryStream;
begin
  fstream := TMemoryStream.Create;
  fstream.LoadFromFile(FileName);
  LoadFromStream(fstream);
  fstream.Free;
end;

//------------------------------------------------------------------------------

procedure TGif.Plot(A: Byte);
begin
  with GifFrame^ do begin
    if ( (A<>TransparentIndex) or    //se nao for a cor transparente
         (not TransparentFlag)  ) then begin    //ou nao tiver cor transparente
      pbmpdata[(DecoData^.pY*GifID.Width)+DecoData^.pX]:=chr(A);
    end;
  end;

  LZWIncrPosition;
end;

//------------------------------------------------------------------------------

procedure TGif.LZWIncrPosition;
begin
  with DecoData^ do begin
    inc(pX);
    if(pX > pXend) then begin
      pX := pXstart;
      if (GifFrame^.Interlaced) then begin  //se for intrelacado
        pY := pY + pPassStep;
        if (pY>pYend) then begin
          inc(pPassNumber);
          pPassNumber := pPassNumber and $03;
          case pPassNumber of
            1: begin pY:=4;pPassStep:=8; end;
            2: begin pY:=2;pPassStep:=4; end;
            3: begin pY:=1;pPassStep:=2; end;
          end;
        end;
      end else
        inc(pY);
    end;
  end;
end;

//------------------------------------------------------------------------------

procedure TGif.WriteBitMap;
var
  n : integer;
begin
  with DecoData^ do begin
    for n := rSp-1 downto 0 do
      Plot(rCodeStack[n]);
    rSP :=0;
  end;
end;

//------------------------------------------------------------------------------

procedure TGif.SavePixel(pixel : byte);
begin
  with DecoData^ do begin
    rCodeStack[rSP]:=pixel;
    inc(rSP);
  end;
end;

//------------------------------------------------------------------------------

function TGif.ReadCode(CodeSize: WORD) : integer;
var
  cc: integer;
  n : integer;
  b : BYTE;
begin
  with DecoData^ do begin
    while (CodeSize > LZWBits) do begin
      fIOStream.Read(b,1);
      LZWNum := LZWNum +1;
      if (LZWNum=LZWBlockLength) then begin
        LZWBlockLength := b + 1;
        fIOStream.Read(b,1);
        LZWNum := 1;
      end;
      n := b;
      n := (n shl LZWBits);
      LZWBitString := (LZWBitString or n);
      LZWBits := LZWBits + 8;
    end;

    cc := (LZWBitString and msk[CodeSize]);
    LZWBitString := (LZWBitString shr CodeSize);
    LZWBits := LZWBits - CodeSize;
    ReadCode := cc;
  end;
end;

{ ---------------------------------------------------------------------------- }
{ see if it is time to add a new slot to the decoder tables }

procedure TGif.LZWCheckSlot;
begin
  with DecoData^ do begin
    if (rCurSlot >= rTopSlot) then begin
      if (rCurSize < 12) then begin
        rTopSlot := (rTopSlot shl 1);
        inc(rCurSize);
      end;
    end;
  end;
end;

{ ---------------------------------------------------------------------------- }
{ save a new prefix/suffix pair }

procedure TGif.LZWSaveSlot(Prefix, Suffix: integer);
begin
  with DecoData^ do begin
    rPrefix[rCurSlot] := Prefix;
    rSuffix[rCurSlot] := Suffix;
    inc(rCurSlot);
  end;
end;

{ ---------------------------------------------------------------------------- }
{ decode the CurrentCode into the clear-text pixel value }
{ mainly, just save the CurrentCode on the output stack, along with }
{ whatever prefixes go with it }

procedure TGif.LZWDecodeCode(var Code: integer);
begin
  with DecoData^ do begin
    while (Code > rHighCode) do begin
      SavePixel(rSuffix[Code]);
      Code := rPrefix[Code];
    end;
    SavePixel(Code);
  end;
end;

//------------------------------------------------------------------------------

procedure TGif.LZWDecode;
var
  i:          integer;
  pc:         integer;            // next compressed code parsed from input
  cc:         integer;            // current code to translate
  oc:         integer;            // old code translated
  tt:         integer;            // temp storage for OldCode
//  b :         byte;
begin

  with DecoData^ do begin

    //INICIO DO DECODER (LZW)
    fIOStream.Read(rLZWSize,1);
    fIOStream.Read(LZWBlockLength,1);
    inc(LZWBlockLength);

    //RESET LZW PARAMETERS
    LZWNum := 0;
    LZWBits := 0;
    LZWBitString := 0;
    pPassStep := 8;
    pPassNumber := 0;
    rSP:=0;

    {while (LZWBlockLength>1) do begin
      fIOStream.Read(b,1);
      LZWNum := LZWNum +1;
      if (LZWNum=LZWBlockLength) then begin
        LZWBlockLength := b + 1;
        fIOStream.Read(b,1);
        LZWNum := 1;
      end;
    end;
    //Label1.Caption:='Frame: ' + IntToStr(GifID.nFrame+1);
    //Label1.Update;
    exit;}

    for i := 0 to (4096 - 1) do begin
      rPrefix[i] := 0;
      rSuffix[i] := 0;
    end;

    //INICIALIZA PARAMETROS LZW
    rCurSize   := rLZWSize + 1;
    rClearCode := (1 shl rLZWSize);
    rEndCode   := rClearCode + 1;
    rHighCode  := rClearCode - 1;
    rFirstSlot := (1 shl (rCurSize - 1)) + 2;
    rNextSlot  := rFirstSlot;

    pc := ReadCode(rCurSize);
    while (pc <> rEndCode) do begin

      // reset decode parameters and save first code

      if (pc = rClearCode) then begin
        rCurSize := rLZWSize + 1;
        rCurSlot := rEndCode + 1;
        rTopSlot := (1 shl rCurSize);
        while (pc = rClearCode) do pc := ReadCode(rCurSize);
        if (pc = rEndCode) then exit;
        if (pc >= rCurSlot) then pc := 0;
        oc := pc;
        SavePixel(pc);
      end

    // find a code in the table and write out translation

      else begin
        cc := pc;
        if (cc < rCurSlot) then begin
          LZWDecodeCode(cc);
          if (rCurSlot <= rTopSlot) then begin
            LZWSaveSlot(oc, cc);
            oc := pc;
          end;
          LZWCheckSlot;
        end

    // add a new code to the decode table

        else begin
          if (cc <> rCurSlot) then exit;
          tt := oc;
          while (oc > rHighCode) do oc := rPrefix[oc];
          if (rCurSlot <= rTopSlot) then LZWSaveSlot(tt, oc);
          LZWCheckSlot;
          LZWDecodeCode(cc);
          oc := pc;
        end;
      end;

    // write out translated bytes to the image storage

      WriteBitmap;
      pc := ReadCode(rCurSize);
    end; // while not EOI
  end;
end;
//----------------------------------------------------------------------
Initialization
   TPicture.RegisterFileFormat('GIF','Gif Format',TGif);

//----------------------------------------------------------------------
Finalization
   TPicture.UnRegisterGraphicClass(TGif);


end.

