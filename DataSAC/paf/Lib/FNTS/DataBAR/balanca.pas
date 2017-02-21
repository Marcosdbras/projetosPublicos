unit balanca;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvGlowButton, StdCtrls, Mask, rxToolEdit, rxCurrEdit, ExtCtrls,
  ACBrBase, ACBrBAL;

type
  TfrmBalanca = class(TForm)
    Panel1: TPanel;
    ed_peso: TRxCalcEdit;
    BT_OK: TAdvGlowButton;
    BT_CANCELAR: TAdvGlowButton;
    timer_balanca: TTimer;
    procedure BT_CANCELARClick(Sender: TObject);
    procedure BT_OKClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure timer_balancaTimer(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBalanca: TfrmBalanca;



implementation

uses Modulo, principal;

{$R *.dfm}

// -------------------------------------------------------------------------- //
procedure TfrmBalanca.BT_CANCELARClick(Sender: TObject);
begin
  close;
end;

// -------------------------------------------------------------------------- //
procedure TfrmBalanca.BT_OKClick(Sender: TObject);
begin
  timer_balanca.Enabled := false;
  FRMPRINCIPAL.ed_qtde.VALUE := ed_peso.VALUE;
  close;
end;

// -------------------------------------------------------------------------- //
procedure TfrmBalanca.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  try
     frmmodulo.Balanca.Ativo := false;
     frmmodulo.balanca.DESativar;
  except
  end;
  action := cafree;
end;

// -------------------------------------------------------------------------- //
procedure TfrmBalanca.timer_balancaTimer(Sender: TObject);
begin
  try
    frmmodulo.balanca.LePeso(ibal_time);
  except
    timer_balanca.Enabled := False;
    Application.MessageBox('Não foi possível realizar a leitura do peso.',
      'Balança', MB_OK+mb_iconerror);

    ModalResult := mrCancel;
    Abort;
  end;

  ed_peso.Value := rbal_peso;
  application.ProcessMessages;
end;

// -------------------------------------------------------------------------- //
procedure TfrmBalanca.FormShow(Sender: TObject);
begin
  try
     frmmodulo.balanca.ativar;
     frmmodulo.balanca.Ativo := true;
  except
  end;

  timer_balanca.Enabled := true;
  BT_OK.SETFOCUS;
end;

end.
