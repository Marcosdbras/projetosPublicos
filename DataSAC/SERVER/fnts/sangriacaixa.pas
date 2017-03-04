unit sangriacaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, rxcurredit, StdCtrls, Mask, rxtooledit, RXDBCtrl, Collection,
  ExtCtrls, Buttons, TFlatPanelUnit, Menus, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, AdvGlowButton;

type
  Tfrmsangriacaixa = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    rsaldo: TRxCalcEdit;
    DataSource1: TDataSource;
    qrdata: TZQuery;
    PopupMenu1: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    Edit1: TEdit;
    pgravar: TFlatPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    Bevel1: TBevel;
    procedure bcancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bgravarClick(Sender: TObject);
    procedure edataEnter(Sender: TObject);
    procedure edataKeyPress(Sender: TObject; var Key: Char);
    procedure edataExit(Sender: TObject);
    procedure rsaldoExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Gravar1Click(Sender: TObject);
    procedure rsaldoKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmsangriacaixa: Tfrmsangriacaixa;
  saldo_anterior : real;

implementation

uses principal, modulo, ecf;

{$R *.dfm}

procedure Tfrmsangriacaixa.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmsangriacaixa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmsangriacaixa.bgravarClick(Sender: TObject);
begin
 try
         if rsaldo.Value > 0 then
         begin
           frmmodulo.qrcaixa_mov.OPEN;
           frmmodulo.qrcaixa_mov.insert;
           frmmodulo.qrcaixa_mov.FieldByName('codigo').asstring := frmprincipal.codifica('000044');
           frmmodulo.qrcaixa_mov.fieldbyname('codoperador').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('codigo').ASSTRING;
           frmmodulo.qrcaixa_mov.fieldbyname('data').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
           frmmodulo.qrcaixa_mov.fieldbyname('saida').asfloat := RSALDO.VALUE;
           frmmodulo.qrcaixa_mov.fieldbyname('entrada').asfloat := 0;
           frmmodulo.qrcaixa_mov.fieldbyname('valor').asfloat := RSALDO.VALUE;
           frmmodulo.qrcaixa_mov.fieldbyname('codconta').asstring := '299999';
           frmmodulo.qrcaixa_mov.fieldbyname('movimento').asINTEGER := 2;
           frmmodulo.qrcaixa_mov.fieldbyname('historico').asstring := 'Retirada de Caixa';
           frmmodulo.qrcaixa_mov.post;
           frmmodulo.Conexao.Commit;

           if ecf_sangriaX(ecf_modelo,formatfloat('#########0.00',rsaldo.value)) <> 'OK' Then
           begin
             frmmodulo.conexao.Rollback;
             Exit;
           end;
         end
         else
         begin
               SHOWMESSAGE('Favor informar o valor!');
         end;
   EXCEPT
    SHOWMESSAGE('Houve falha nesta função! Este processo foi cancelado!');
    FRMMODULO.Conexao.Rollback;
   END;

   close;
end;

procedure Tfrmsangriacaixa.edataEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmsangriacaixa.edataKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmsangriacaixa.edataExit(Sender: TObject);
begin
  tedit(sender).color := clwhite;
end;

procedure Tfrmsangriacaixa.rsaldoExit(Sender: TObject);
begin
  tedit(sender).color := clwhite;
end;

procedure Tfrmsangriacaixa.FormShow(Sender: TObject);
begin
  saldo_anterior := rsaldo.value;
end;

procedure Tfrmsangriacaixa.Gravar1Click(Sender: TObject);
begin
  bgravar.SetFocus;
  bgravar.OnClick(frmsangriacaixa);
end;

procedure Tfrmsangriacaixa.rsaldoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

end.
