unit urelrescla;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  Tfrmrelrescla = class(TForm)
    relatorio: TQuickRep;
    QRBand1: TQRBand;
    QRLabel2: TQRLabel;
    lbltitrel: TQRLabel;
    QRBand2: TQRBand;
    QRDBText4: TQRDBText;
    lblmes8: TQRLabel;
    lblmes9: TQRLabel;
    lblmes10: TQRLabel;
    lbltitmes8: TQRLabel;
    lbltitmes9: TQRLabel;
    lbltitmes10: TQRLabel;
    lbltitmes12: TQRLabel;
    lblmes12: TQRLabel;
    lbltitmes11: TQRLabel;
    lblmes11: TQRLabel;
    lblmes7: TQRLabel;
    lbltitmes7: TQRLabel;
    lblmes6: TQRLabel;
    lbltitmes6: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    procedure GroupFooterBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    totvalor, totG:real;
    icoluna:integer;
    imes, idia, iano:word;

  public
    { Public declarations }
  end;

var
  frmrelrescla: Tfrmrelrescla;

implementation
       uses udados, ugeral, upesqpag;
{$R *.dfm}

procedure Tfrmrelrescla.GroupFooterBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  //lbltitprcusto.Caption := 'Total';
  //lbltotprcusto.Caption := formatfloat('###,###,##0.00',frmDados.Dbx_Exec.fieldbyname('totvalor').asfloat);
  //totg := totg + frmDados.Dbx_Exec.fieldbyname('totvalor').asfloat;
end;

procedure Tfrmrelrescla.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
//if not frmdados.Cds_Classe.Eof then
//   begin
//     lbltittotg.Caption := '';
//     lbltotg.Caption := '';
//   end
//else
//   begin
//     lbltittotg.Caption := 'Total Geral';
//     lbltotg.Caption := formatfloat('###,###,##0.00',totg);
//   end;
//endi
end;

procedure Tfrmrelrescla.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
   icontador:integer;
begin

  with frmdados do
    begin
      sqp_dados.ParamByName('VARANOI').AsInteger := iAno;
      sqp_dados.ParamByName('VARANOF').AsInteger := iAno;
      sqp_dados.ParamByName('VARCOD_CLA').AsInteger := cds_classe.fieldbyname('codigo').asInteger;
      sqp_dados.ExecProc;
    end;
  //endth


  icoluna := 1;
  with frmdados do
     begin



                   for icontador := 6 to 12 do
                     begin
                        if icontador = 1 then
                           begin
                             //lblmes1.Caption := formatfloat('###,###,##0.00',sqp_dados.ParamByName('Jan').Asfloat);
                             //fsubtotjan := fsubtotjan + sqp_dados.ParamByName('Jan').Asfloat;
                             //ftotjan := ftotjan + sqp_dados.ParamByName('Jan').Asfloat;
                           end;
                         //endi
                         if icontador = 2 then
                             begin
                               //lblmes2.Caption := formatfloat('###,###,##0.00',sqp_dados.ParamByName('fev').Asfloat);
                               //fsubtotfev := fsubtotfev + sqp_dados.ParamByName('fev').Asfloat;
                               //ftotfev := ftotfev + sqp_dados.ParamByName('fev').Asfloat;
                             end;
                         //endi
                         if icontador = 3 then
                             begin
                               //lblmes3.Caption := formatfloat('###,###,##0.00',sqp_dados.ParamByName('mar').Asfloat);
                               //fsubtotmar := fsubtotmar + sqp_dados.ParamByName('mar').Asfloat;
                               //ftotmar := ftotmar + sqp_dados.ParamByName('mar').Asfloat;
                             end;
                         //endi
                         if icontador = 4 then
                             begin
                               //lblmes4.Caption := formatfloat('###,###,##0.00',sqp_dados.ParamByName('abr').Asfloat);
                               //fsubtotabr := fsubtotabr + sqp_dados.ParamByName('abr').Asfloat;
                               //ftotabr := ftotabr + sqp_dados.ParamByName('abr').Asfloat;
                             end;
                         //endi
                         if icontador = 5 then
                             begin
                               //lblmes5.Caption := formatfloat('###,###,##0.00',sqp_dados.ParamByName('mai').Asfloat);
                               //fsubtotmai := fsubtotmai + sqp_dados.ParamByName('mai').Asfloat;
                               //ftotmai := ftotmai + sqp_dados.ParamByName('mai').Asfloat;
                             end;
                         //endi
                         if icontador = 6 then
                             begin
                               lblmes6.Caption := formatfloat('###,###,##0.00',sqp_dados.ParamByName('Jun').Asfloat);
                               //fsubtotjun := fsubtotjun + sqp_dados.ParamByName('Jun').Asfloat;
                               //ftotjun := ftotjun + sqp_dados.ParamByName('Jun').Asfloat;
                             end;
                         //endi
                         if icontador = 7 then
                             begin
                               lblmes7.Caption := formatfloat('###,###,##0.00',sqp_dados.ParamByName('Jul').Asfloat);
                               //fsubtotjul := fsubtotjul + sqp_dados.ParamByName('Jul').Asfloat;
                               //ftotago := ftotago + sqp_dados.ParamByName('Jul').Asfloat;
                             end;
                         //endi
                         if icontador = 8 then
                             begin
                               lblmes8.Caption := formatfloat('###,###,##0.00',sqp_dados.ParamByName('Ago').Asfloat);
                               //fsubtotago := fsubtotago + sqp_dados.ParamByName('ago').Asfloat;
                               //ftotago := ftotago + sqp_dados.ParamByName('ago').Asfloat;
                             end;
                         //endi
                         if icontador = 9 then
                             begin
                               lblmes9.Caption := formatfloat('###,###,##0.00',sqp_dados.ParamByName('Sete').Asfloat);
                               //fsubtotsete := fsubtotsete + sqp_dados.ParamByName('sete').Asfloat;
                               //ftotsete := ftotsete + sqp_dados.ParamByName('sete').Asfloat;
                             end;
                         //endi
                         if icontador = 10 then
                             begin
                               lblmes10.Caption := formatfloat('###,###,##0.00',sqp_dados.ParamByName('Out').Asfloat);
                               //fsubtotout := fsubtotout + sqp_dados.ParamByName('out').Asfloat;
                               //ftotout := ftotout + sqp_dados.ParamByName('out').Asfloat;
                             end;
                         //endi
                         if icontador = 11 then
                            begin
                              lblmes11.Caption := formatfloat('###,###,##0.00',sqp_dados.ParamByName('Nov').Asfloat);
                              //fsubtotnov := fsubtotnov + sqp_dados.ParamByName('nov').Asfloat;
                              //ftotnov := ftotnov + sqp_dados.ParamByName('nov').Asfloat;
                             end;
                         //endi
                         if icontador = 12 then
                             begin
                               lblmes12.Caption := formatfloat('###,###,##0.00',sqp_dados.ParamByName('Dez').Asfloat);
                               //fsubtotdez := fsubtotdez + sqp_dados.ParamByName('dez').Asfloat;
                               //ftotdez := ftotdez + sqp_dados.ParamByName('dez').Asfloat;
                             end;
                         //endi
                         icoluna := icoluna + 1;
                       end;
                  //endfor



       end;
    //endth








//totvalor := 0;

//      with frmdados do
//        begin
//          Dbx_Exec.Active := false;
//          Dbx_Exec.SQL.Clear;
//          Dbx_Exec.SQL.Add('select sum(valor) as totvalor from pagar where (ccla = '+cds_classe.fieldbyname('codigo').asString+') and ('+frmpesqpag.sCompo+')');
//          Dbx_Exec.Active := true;

//          Cds_Pagar.Active := false;
//          Dbx_Pagar.Active := false;
//          Dbx_Pagar.SQL.Clear;
//          Dbx_Pagar.SQL.Add('select * from pagar where (ccla = '+cds_classe.fieldbyname('codigo').asString+') and ('+frmpesqpag.sCompo+')');
//          Dbx_Pagar.Active := true;
//          Cds_Pagar.Active := true;
//        end;
      //endi






end;

procedure Tfrmrelrescla.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
   icontador:integer;

begin

  decodedate(date,iano,imes,idia);


  lbltitrel.Caption := 'Resumo de contas Pagas - 2º Semestre - Ano de ';
  lbltitrel.Caption := lbltitrel.Caption  + inttostr(iano);




end;

procedure Tfrmrelrescla.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
  frmrelrescla:=nil;

end;

end.
