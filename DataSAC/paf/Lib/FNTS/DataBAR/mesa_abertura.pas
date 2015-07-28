unit mesa_abertura;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, RzCmboBx, DB, DBAccess, IBC,
  wwdblook, MemDS, Menus;

type
  Tfrmmesa_abertura = class(TForm)
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    bt_confirmar: TBitBtn;
    bt_cancelar: TBitBtn;
    Bevel1: TBevel;
    GroupBox2: TGroupBox;
    qrfunci: TIBCQuery;
    CB_FUNCI: TwwDBLookupCombo;
    dsfunci: TIBCDataSource;
    query: TIBCQuery;
    lb_mesa: TLabel;
    PopupMenu1: TPopupMenu;
    Cancelar1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bt_cancelarClick(Sender: TObject);
    procedure bt_confirmarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CB_FUNCIKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmmesa_abertura: Tfrmmesa_abertura;

implementation

uses Modulo, principal;

{$R *.dfm}

// -------------------------------------------------------------------------- //
procedure Tfrmmesa_abertura.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

// -------------------------------------------------------------------------- //
procedure Tfrmmesa_abertura.bt_cancelarClick(Sender: TObject);
begin
  close;
end;

// -------------------------------------------------------------------------- //
procedure Tfrmmesa_abertura.bt_confirmarClick(Sender: TObject);
begin
  if cb_funci.text = '' then
  begin
    Application.messagebox('Favor informar o atendente!','Erro',MB_OK+mb_iconerror);
    cb_funci.setfocus;
    exit;
  end
  else
  begin
    query.close;
    query.sql.clear;
    query.sql.add('select nome from c000008 where upper(nome) = '''+cb_funci.text+'''');
    query.Open;

    if query.RecordCount = 0 then
    begin
      Application.messagebox('Funcionário não localizado!','Erro',MB_OK+mb_iconerror);
      cb_funci.setfocus;
      exit;
    end;
  end;


  sFunci := qrfunci.fieldbyname('codigo').asstring;
  sNome_funci := CB_FUNCI.text;
  bContinua_mesa := true;
  close;
end;

// -------------------------------------------------------------------------- //
procedure Tfrmmesa_abertura.FormShow(Sender: TObject);
begin
  qrfunci.open;
  CB_FUNCi.setfocus;
end;

// -------------------------------------------------------------------------- //
procedure Tfrmmesa_abertura.CB_FUNCIKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    bt_confirmar.setfocus;
end;

end.
