unit uconexaotcpip;

interface

uses
  SysUtils, Classes, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdIOHandler, IdGlobal;

type
  Tfrmconexaotcpip = class(TDataModule)
    IdTCPClient1: TIdTCPClient;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmconexaotcpip: Tfrmconexaotcpip;

implementation

{$R *.dfm}

end.
