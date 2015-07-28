unit ulancomfun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Buttons;

type
  Tfrmlancomfun = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    cbxnomefun: TDBLookupComboBox;
    lblespecialidade: TLabel;
    lbltratamento: TLabel;
    lblvalor: TLabel;
    edipcom: TEdit;
    edivcom: TEdit;
    btnok: TBitBtn;
    btncancelar: TBitBtn;
    procedure btncancelarClick(Sender: TObject);
    procedure edipcomKeyPress(Sender: TObject; var Key: Char);
    procedure edivcomKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure edipcomExit(Sender: TObject);
    procedure edivcomExit(Sender: TObject);
    procedure cbxnomefunKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmlancomfun: Tfrmlancomfun;

implementation
   uses ugeral, udados, utra;
{$R *.dfm}

procedure Tfrmlancomfun.btncancelarClick(Sender: TObject);
begin
close;
end;

procedure Tfrmlancomfun.edipcomKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
     begin
       key := #0;
       SelectNext(ActiveControl,True,True);
       exit;
     end;
  //endif

  If not( key in['0'..'9',#8] ) and (key <> ',')then
     begin
       beep;
       key:=#0;
     end;
  //endi

end;

procedure Tfrmlancomfun.edivcomKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
     begin
       key := #0;
       SelectNext(ActiveControl,True,True);
       exit;
     end;
  //endif

  If not( key in['0'..'9',#8] ) and (key <> ',')then
     begin
       beep;
       key:=#0;
     end;
  //endi

end;

procedure Tfrmlancomfun.FormShow(Sender: TObject);
begin
  edipcom.Text := '0,00';
  edivcom.Text := '0,00';
  
  lblespecialidade.Caption := frmdados.Cds_dmobra.fieldbyname('nmod').asString;
  lbltratamento.Caption := frmdados.Cds_dMobra.fieldbyname('nlistaprod').asString;
  lblvalor.Caption := formatfloat('###,###,##0.00',frmdados.Cds_dMobra.fieldbyname('subtotal').asfloat);

  if frmdados.Cds_cmobra.Locate('codigo',frmdados.Cds_dMobra.fieldbyname('cdesc').asInteger,[]) then
     begin
       edipcom.Text := formatfloat('###,###,##0.00',frmdados.Cds_cmobra.fieldbyname('pcom').asfloat);
       edivcom.Text := formatfloat('###,###,##0.00',frmdados.Cds_dMobra.fieldbyname('subtotal').asfloat*frmdados.Cds_cmobra.fieldbyname('pcom').asfloat/100);
     end;
  //endi


end;

procedure Tfrmlancomfun.edipcomExit(Sender: TObject);
begin
  edipcom.Text := formatfloat('###,###,##0.00',strtofloat(tirapontos(edipcom.Text)));
  edivcom.Text := formatfloat('###,###,##0.00',strtofloat(tirapontos(lblvalor.caption))*strtofloat(tirapontos(edipcom.Text))/100);
end;

procedure Tfrmlancomfun.edivcomExit(Sender: TObject);
begin
  edivcom.Text := formatfloat('###,###,##0.00',strtofloat(tirapontos(edivcom.Text)));
  edipcom.Text := formatfloat('###,###,##0.00',strtofloat(tirapontos(edivcom.Text))/strtofloat(tirapontos(lblvalor.caption))*100);

end;

procedure Tfrmlancomfun.cbxnomefunKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
     begin
       key := #0;
       SelectNext(ActiveControl,True,True);
       exit;
     end;
  //endif

end;

end.
