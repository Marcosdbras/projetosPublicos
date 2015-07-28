unit ufrentecaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, WinSkinData, StdCtrls, EditNum, ExtCtrls;

type
  Tfrmfrentecaixa = class(TForm)
    SkinData1: TSkinData;
    Edit1: TEdit;
    Label1: TLabel;
    Memo1: TMemo;
    Label2: TLabel;
    lblatendente: TLabel;
    Label3: TLabel;
    lblncliente: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    lbltotitens: TLabel;
    Shape3: TShape;
    lblqtde: TLabel;
    lblprve: TLabel;
    lblsubtotal: TLabel;
    lbltotbruto: TLabel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmfrentecaixa: Tfrmfrentecaixa;

implementation

{$R *.dfm}

procedure Tfrmfrentecaixa.FormShow(Sender: TObject);
var
  vardir:string;
begin
vardir := extractfilepath(application.ExeName);

skindata1.LoadFromFile(vardir+'skin.skn');
skindata1.Active := true;
end;

end.
