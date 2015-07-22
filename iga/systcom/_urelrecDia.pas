unit _urelrecDia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, StdCtrls, DBCtrls;

type
  TfrmrelrecDia = class(TForm)
    relatorio: TQuickRep;
    QRBand1: TQRBand;
    QRBand3: TQRBand;
    QRShape2: TQRShape;
    lblcab1: TQRLabel;
    lbltit1: TQRLabel;
    lbltit4: TQRLabel;
    lbltit3: TQRLabel;
    lbltit2: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    lbltittot: TQRLabel;
    lbltotal: TQRLabel;
    detalhe: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    tqrtotaldia: TQRStringsBand;
    lbltotdia: TQRLabel;
    QRLabel8: TQRLabel;
    lbldtv: TQRLabel;
    lbldtl: TQRLabel;
    lbldte: TQRLabel;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure relatorioBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure detalheBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure detalheAfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private
    { Private declarations }
    iPag:integer;
    ftotal:real;
    iAno, iMes, iDia:word;
    sDataA, sDataB:string;
    bEsp:boolean;
  public
    { Public declarations }
  end;

var
  frmrelrecDia: TfrmrelrecDia;

implementation
   uses udados, ugeral, upesqrec;
{$R *.dfm}

procedure TfrmrelrecDia.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
ipag := ipag + 1;
lbltit2.Caption := 'PAG. '+inttostr(ipag);
//sDataA := '';
//sDataA := frmdados.Cds_Vencto.FieldByName('dtl').asString;
//sDataA := bar_is_point( sDataA  );

end;

procedure TfrmrelrecDia.relatorioBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
ipag := 0;
ftotal := 0;
bEsp := false;

lblcab1.Caption := frmdados.cds_config.fieldbyname('campo2').asString;
lbltit1.Caption := datetostr(date);
lbltit3.Caption := 'Contas';
lbltit4.Caption := frmpesqrec.sTitRel;

end;

procedure TfrmrelrecDia.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin

  lbltotal.Caption := '';
  lbltittot.caption := '';
  with frmdados do
    begin
      if cds_vencto.Eof then
        begin
          //dbx_exec.Active := false;
          //dbx_exec.SQL.Clear;
          //dbx_exec.SQL.Add('Select sum(valor) as total from vencimentos where ehvenda = '+quotedstr('T'));
          //dbx_exec.Active := true;
          lbltittot.caption := 'Total';
          lbltotal.Caption := formatfloat('###,###,##0.00',ftotal);
        end;
      //endi

    end;
  //endi


end;

procedure TfrmrelrecDia.detalheBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin

  with frmdados do
    begin
      lbldtl.Caption := Cds_Vencto.FieldByName('dtl').asString;
      lbldtv.Caption := Cds_Vencto.FieldByName('dtv').asString;
      lbldte.Caption := Cds_Vencto.FieldByName('dte').asString;
    end;
  //endi

{

  if frmpesqrec.sclassificar = 'Dtl' then
     begin

       sDataA := frmdados.Cds_Vencto.FieldByName('dtl').asString;
       sDataA := bar_is_point( sDataA  );

     end;
  //endi

}


  ftotal := ftotal + frmdados.Cds_Vencto.fieldbyname('valor').asfloat;


end;

procedure TfrmrelrecDia.detalheAfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
  var
    iA:Integer;


begin




with frmdados do
    begin
     iA := 1;
     while true do
       begin

         dbx_exec.Active := false;
         dbx_exec.SQL.Clear;
         dbx_exec.SQL.Add('select * from vencimentos where codigo = '+inttostr( cds_vencto.fieldbyname('codigo').asInteger+iA));
         dbx_exec.Active := true;

         iA := iA + 1;
         if dbx_exec.RecordCount > 0 then
            begin
              showmessage(lbldtl.Caption+' '+frmdados.Dbx_Exec.FieldByName('dtl').asString);
              if lbldtl.Caption = frmdados.Dbx_Exec.FieldByName('dtl').asString then
                 begin
                   tqrtotaldia.Items.Clear;


                 end
              else
                 begin

                   tqrtotaldia.Items.Add('');
                 end;

              //endi
              break;
            end;
         //endi
         if cds_vencto.Eof then
            break;
         //endi

       end;
     //endi

    end;
  //endi









 //tqrtotaldia.Items.Clear;
 //if bEsp then
 //   begin
 //     tqrtotaldia.Items.Add('');
 //     bEsp := false;
 //   end;
 //endi

{

 sDataA := frmdados.Cds_Vencto.FieldByName('dtl').asString;


  if lbldtl.Caption <> sDataA then
     begin

       bEsp := true;

       //showmessage(lbldtl.Caption+'  '+sDataA);
       //showmessage(lbldtl.Caption);

       //tqrtotaldia.Items.Add('');

     end
  else
     begin
       showmessage(lbldtl.Caption);

     end;
  //endi

}


{


}

//       sDataB := bar_is_point( sDataB  );


//  showmessage(sDataB+' '+sDataA);

{

  tqrtotaldia.Items.Clear;

  if frmpesqrec.sclassificar = 'Dtl' then
     begin

       if sDataA <> sDataB then
          begin


            frmdados.dbx_exec.Active := false;
            frmdados.dbx_exec.SQL.Clear;
            frmdados.dbx_exec.SQL.Add('Select sum(valor) as total from vencimentos where (ehvenda = '+quotedstr('T')+') and ( dtl = '+quotedstr( sDataA )+')');
            frmdados.dbx_exec.Active := true;

            //showmessage(sDataA+' '+sDataB);


            tqrtotaldia.Items.Add('');
            lbltotdia.Caption := formatfloat('###,###,##0.00',frmdados.Dbx_Exec.fieldbyname('total').asfloat);

          end;
       //endi



     end;
  //endi
}
end;

end.
