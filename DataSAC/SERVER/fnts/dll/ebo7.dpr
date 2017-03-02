library ebo7;

{
  Com�rcio Plus! 7
  DLL de Comandos
  Autor...: Eleno Benedito de Oliveira
  Data....: 08/12/2006
  Versao..: 1.0

 }

uses
  SysUtils,
  Windows,
  Forms,
  Controls,
  ComCtrls,
  DB,
  Winsock,
  Classes;

{$R *.res}


function NomeComputador : String;stdcall;export;
var
  lpBuffer : PChar;
  nSize : DWord;
  const Buff_Size = MAX_COMPUTERNAME_LENGTH + 1;
begin
  nSize := Buff_Size;
  lpBuffer := StrAlloc(Buff_Size);
  GetComputerName(lpBuffer,nSize);
  Result := String(lpBuffer);
  StrDispose(lpBuffer);
END;


// Pegar o numero de serie do hd
function NumeroSerieHD : String; stdcall; export;
  type
   TSrbIoControl = packed record
      HeaderLength : ULONG;
      Signature    : Array[0..7] of Char;
      Timeout      : ULONG;
      ControlCode  : ULONG;
      ReturnCode   : ULONG;
      Length       : ULONG;
    end;
    SRB_IO_CONTROL = TSrbIoControl;
    PSrbIoControl = ^TSrbIoControl;

    TIDERegs = packed record
      bFeaturesReg     : Byte; // especificar "comandos" SMART
      bSectorCountReg  : Byte; // registro de contador de setor
      bSectorNumberReg : Byte; // registro de n�mero de setores
      bCylLowReg       : Byte; // valor de cilindro (byte mais baixo)
      bCylHighReg      : Byte; // valor de cilindro (byte mais alto)
      bDriveHeadReg    : Byte; // registro de drive/cabe�a
      bCommandReg      : Byte; // comando IDE
      bReserved        : Byte; // reservado- tem que ser zero
    end;
    IDEREGS   = TIDERegs;
    PIDERegs  = ^TIDERegs;

    TSendCmdInParams = packed record
      cBufferSize  : DWORD;
      irDriveRegs  : TIDERegs;
      bDriveNumber : Byte;
      bReserved    : Array[0..2] of Byte;
      dwReserved   : Array[0..3] of DWORD;
      bBuffer      : Array[0..0] of Byte;
    end;
    SENDCMDINPARAMS   = TSendCmdInParams;
    PSendCmdInParams  = ^TSendCmdInParams;

    TIdSector = packed record
      wGenConfig                 : Word;
      wNumCyls                   : Word;
      wReserved                  : Word;
      wNumHeads                  : Word;
      wBytesPerTrack             : Word;
      wBytesPerSector            : Word;
      wSectorsPerTrack           : Word;
      wVendorUnique              : Array[0..2] of Word;
      sSerialNumber              : Array[0..19] of Char;
      wBufferType                : Word;
      wBufferSize                : Word;
      wECCSize                   : Word;
      sFirmwareRev               : Array[0..7] of Char;
      sModelNumber               : Array[0..39] of Char;
      wMoreVendorUnique          : Word;
      wDoubleWordIO              : Word;
      wCapabilities              : Word;
      wReserved1                 : Word;
      wPIOTiming                 : Word;
      wDMATiming                 : Word;
      wBS                        : Word;
      wNumCurrentCyls            : Word;
      wNumCurrentHeads           : Word;
      wNumCurrentSectorsPerTrack : Word;
      ulCurrentSectorCapacity    : ULONG;
      wMultSectorStuff           : Word;
      ulTotalAddressableSectors  : ULONG;
      wSingleWordDMA             : Word;
      wMultiWordDMA              : Word;
      bReserved                  : Array[0..127] of Byte;
    end;
    PIdSector = ^TIdSector;

  const
    IDE_ID_FUNCTION               = $EC;
    IDENTIFY_BUFFER_SIZE          = 512;
    DFP_RECEIVE_DRIVE_DATA        = $0007c088;
    IOCTL_SCSI_MINIPORT           = $0004d008;
    IOCTL_SCSI_MINIPORT_IDENTIFY  = $001b0501;
    DataSize = sizeof(TSendCmdInParams)-1+IDENTIFY_BUFFER_SIZE;
    BufferSize = SizeOf(SRB_IO_CONTROL)+DataSize;
    W9xBufferSize = IDENTIFY_BUFFER_SIZE+16;
  var
    hDevice : THandle;
    cbBytesReturned : DWORD;
    pInData : PSendCmdInParams;
    pOutData : Pointer; // PSendCmdOutParams
    Buffer : Array[0..BufferSize-1] of Byte;
    srbControl : TSrbIoControl absolute Buffer;

    procedure ChangeByteOrder( var Data; Size : Integer );
    var ptr : PChar;
        i : Integer;
        c : Char;
    begin
      ptr := @Data;
      for i := 0 to (Size shr 1)-1 do
      begin
        c := ptr^;
        ptr^ := (ptr+1)^;
        (ptr+1)^ := c;
        Inc(ptr,2);
      end;
    end;

  begin
    Result := '';
    FillChar(Buffer,BufferSize,#0);
    if Win32Platform=VER_PLATFORM_WIN32_NT then
       // Windows NT, Windows 2000, Windows XP
       begin
         // recuperar handle da porta SCSI
         hDevice := CreateFile('\\.\Scsi0:',
          // Nota: '\\.\C:' precisa de privil�gios administrativos
          GENERIC_READ or GENERIC_WRITE,
          FILE_SHARE_READ or FILE_SHARE_WRITE,
          nil, OPEN_EXISTING, 0, 0);
        if hDevice=INVALID_HANDLE_VALUE then Exit;
        try
          srbControl.HeaderLength := SizeOf(SRB_IO_CONTROL);
          System.Move('SCSIDISK',srbControl.Signature,8);
          srbControl.Timeout      := 2;
          srbControl.Length       := DataSize;
          srbControl.ControlCode  := IOCTL_SCSI_MINIPORT_IDENTIFY;
          pInData := PSendCmdInParams(PChar(@Buffer)
                     +SizeOf(SRB_IO_CONTROL));
          pOutData := pInData;
          with pInData^ do
          begin
            cBufferSize  := IDENTIFY_BUFFER_SIZE;
            bDriveNumber := 0;
            with irDriveRegs do
            begin
              bFeaturesReg     := 0;
              bSectorCountReg  := 1;
              bSectorNumberReg := 1;
              bCylLowReg       := 0;
              bCylHighReg      := 0;
              bDriveHeadReg    := $A0;
              bCommandReg      := IDE_ID_FUNCTION;
            end;
          end;
          if not DeviceIoControl( hDevice, IOCTL_SCSI_MINIPORT,
            @Buffer, BufferSize, @Buffer, BufferSize,
            cbBytesReturned, nil ) then Exit;
        finally
          CloseHandle(hDevice);
        end;
      end
    else
       begin
        // Windows 95 OSR2, Windows 98, Windows ME
        hDevice := CreateFile( '\\.\SMARTVSD', 0, 0, nil,
          CREATE_NEW, 0, 0 );
        if hDevice=INVALID_HANDLE_VALUE then Exit;
        try
          pInData := PSendCmdInParams(@Buffer);
          pOutData := @pInData^.bBuffer;
          with pInData^ do
          begin
            cBufferSize  := IDENTIFY_BUFFER_SIZE;
            bDriveNumber := 0;
            with irDriveRegs do
            begin
              bFeaturesReg     := 0;
              bSectorCountReg  := 1;
              bSectorNumberReg := 1;
              bCylLowReg       := 0;
              bCylHighReg      := 0;
              bDriveHeadReg    := $A0;
              bCommandReg      := IDE_ID_FUNCTION;
            end;
          end;
          if not DeviceIoControl( hDevice, DFP_RECEIVE_DRIVE_DATA,
            pInData, SizeOf(TSendCmdInParams)-1, pOutData,
            W9xBufferSize, cbBytesReturned, nil ) then Exit;
        finally
          CloseHandle(hDevice);
        end;
      end;
      with PIdSector(PChar(pOutData)+16)^ do
      begin
        ChangeByteOrder(sSerialNumber,SizeOf(sSerialNumber));
        SetString(Result,sSerialNumber,SizeOf(sSerialNumber));
      end;

//  var s : String;
//     rc : DWORD;



{    // retornar o numero do hd
    s := GetIdeDiskSerialNumber;
    if s='' then
    begin
      rc := GetLastError;
      if rc=0 then Showmessage('Drive IDE n�o suporta autentica��o do sistema!')
       else WriteLn(SysErrorMessage(rc));
    end
    else showmessage('N�mero serial do disco:'+s);
    //////
}



  end;




Exports
NomeComputador,
NumeroSerieHD;




end.
