unit contasreceber_banco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, ToolEdit, StdCtrls, Buttons, Menus, AdvGlowButton,
  ExtCtrls, TFlatPanelUnit;

type
  TfrmContasreceber_banco = class(TForm)
    Label3: TLabel;
    Label4: TLabel;
    econta: TEdit;
    blocconta: TBitBtn;
    enomeconta: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    DateEdit1: TDateEdit;
    Edit1: TEdit;
    Label2: TLabel;
    PopupMenu1: TPopupMenu;
    Cancelar1: TMenuItem;
    Bevel2: TBevel;
    pgravar: TFlatPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bcancelarClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure DateEdit1Enter(Sender: TObject);
    procedure DateEdit1Exit(Sender: TObject);
    procedure DateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure bloccontaClick(Sender: TObject);
    procedure econtaExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmContasreceber_banco: TfrmContasreceber_banco;

implementation

uses modulo, principal, contasreceber_pgto, loc_contacorrent;

{$R *.dfm}

procedure TfrmContasreceber_banco.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmContasreceber_banco.bcancelarClick(Sender: TObject);
begin
  continua_banco := false;
  close;
end;

procedure TfrmContasreceber_banco.bgravarClick(Sender: TObject);
begin
  try

      frmmodulo.qrlancamento_conta.Open;
      frmmodulo.qrlancamento_conta.Insert;
      frmmodulo.qrlancamento_conta.FieldByName('codigo').asstring           := frmPrincipal.codifica('000042',6);
      frmmodulo.qrlancamento_conta.FieldByName('data').asdatetime           := dateedit1.date;
      frmmodulo.qrlancamento_conta.FieldByName('codcontacorrente').asstring := frmmodulo.qrcontacorrente.fieldbyname('codigo').asstring;
      frmmodulo.qrlancamento_conta.FieldByName('VALOR').asFLOAT             := frmcontasreceber_pgto.rtotal.value;
      frmmodulo.qrlancamento_conta.FieldByName('DOCUMENTO').asstring        := edit2.text;
      frmmodulo.qrlancamento_conta.FieldByName('HISTORICO').asstring        := edit1.text;
      frmmodulo.qrlancamento_conta.FieldByName('TIPO').asstring             := 'C';
                       frmmodulo.qrconfig.open;
      frmmodulo.qrlancamento_conta.FieldByName('codconta').asstring         := frmmodulo.qrconfig.fieldbyname('PLANO_RECEBTO_CREDIARIO').asstring;
      frmmodulo.qrlancamento_conta.post;

      continua_banco := true;
  except
    showmessage('Houve erro no processamento!');
    continua_banco := false;
  end;


  close;
end;

procedure TfrmContasreceber_banco.DateEdit1Enter(Sender: TObject);
begin
  tedit(sender).color := clyellow;
end;

procedure TfrmContasreceber_banco.DateEdit1Exit(Sender: TObject);
begin
  tedit(sender).color := clWindow;
end;

procedure TfrmContasreceber_banco.DateEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure TfrmContasreceber_banco.bloccontaClick(Sender: TObject);
begin
  frmloc_contacorrente := tfrmloc_contacorrente.create(self);
  frmloc_contacorrente.showmodal;
  enomeconta.text := frmmodulo.qrcontacorrente.fieldbyname('banco').asstring;
  econta.text    := frmmodulo.qrcontacorrente.fieldbyname('conta').asstring;
  EDIT2.SETFOCUS;
end;

procedure TfrmContasreceber_banco.econtaExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
    if eCONTA.text <> '' then
    begin
      FRMMODULO.QRCONTACORRENTE.Close;
      FRMMODULO.QRCONTACORRENTE.SQL.CLEAR;
      FRMMODULO.QRCONTACORRENTE.SQL.Add('SELECT * FROM C000041 where conta = '''+econta.text+'''');
      frmmodulo.qrcontacorrente.sql.add('ORDER BY CONTA');
      FRMMODULO.QRCONTACORRENTE.OPEN;
      if frmmodulo.qrcontacorrente.RecordCount = 0 then
      begin
        bloccontaclick(frmcontasreceber_banco);
      end
      else
      begin
        enomeconta.text := frmmodulo.qrcontacorrente.fieldbyname('banco').asstring;
        econta.text    := frmmodulo.qrcontacorrente.fieldbyname('conta').asstring;
        edit2.setfocus;
      end;
    end
    else
    begin
      blocconta.SetFocus;
    end;
end;

procedure TfrmContasreceber_banco.FormShow(Sender: TObject);
begin
  FRMMODULO.QRCONTACORRENTE.Close;
  FRMMODULO.QRCONTACORRENTE.SQL.CLEAR;
  FRMMODULO.QRCONTACORRENTE.SQL.Add('SELECT * FROM C000041 ORDER BY CONTA');
  FRMMODULO.QRCONTACORRENTE.OPEN;
  FRMMODULO.QRCONTACORRENTE.INDEXFIELDNAMES := 'CONTA';
  dateedit1.Setfocus;
end;

procedure TfrmContasreceber_banco.Edit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

end.
