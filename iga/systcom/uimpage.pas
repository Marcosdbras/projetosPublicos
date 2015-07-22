unit uimpage;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, ExtCtrls, QRCtrls, DBClient, DBTables, DB;

type
  Tfrmimpage = class(TForm)
    relatorio: TQuickRep;
    cabecalho: TQRBand;
    QRBand2: TQRBand;
    rodape: TQRBand;
    lblcab1: TQRLabel;
    lbltit1: TQRLabel;
    lbltit2: TQRLabel;
    lbltit3: TQRLabel;
    lbltit4: TQRLabel;
    lblhora: TQRLabel;
    QRLabel1: TQRLabel;
    QRShape2: TQRShape;
    QRSubDetail1: TQRSubDetail;
    QRShape1: TQRShape;
    QRLabel2: TQRLabel;
    lblnomecli: TQRLabel;
    lbltelefone: TQRLabel;
    lblassunto: TQRLabel;
    lbldentista: TQRLabel;
    lblrealizado: TQRLabel;
    lblpago: TQRLabel;
    lblmens: TQRLabel;
    lblmens2: TQRLabel;
    QRLabel3: TQRLabel;
    lbldentistaf: TQRLabel;
    procedure relatorioBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure cabecalhoBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure montacompromisso;
    procedure montalinha;
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure relatorioAfterPrint(Sender: TObject);
  private
    { Private declarations }
    ipag, icol, ilin:integer;
  public
    { Public declarations }
  end;

var
  frmimpage: Tfrmimpage;

implementation
  uses ugeral, udados, uagenda;
{$R *.dfm}

procedure Tfrmimpage.relatorioBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  ipag := 0;

  icol := frmagenda.dbgagedodia.Col;
  ilin := frmagenda.dbgagedodia.row;

  lblcab1.Caption := frmdados.cds_config.fieldbyname('campo2').asString;
  lbltit1.Caption := datetostr(date);
  lbltit3.Caption := 'Agenda';
  lbltit4.Caption := frmagenda.lbldata.Caption;

  lbldentistaf.Caption := frmagenda.cbxnomefun.Text;
end;

procedure Tfrmimpage.cabecalhoBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
ipag := ipag + 1;
lbltit2.Caption := 'PAG. '+inttostr(ipag);

end;

procedure Tfrmimpage.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  Action:=caFree;
  frmimpage:=nil;

end;

procedure Tfrmimpage.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
lblhora.Caption := copy(frmdados.cdsagenda.fieldbyname('hora').asString,1,5);

montacompromisso;

end;


procedure Tfrmimpage.montacompromisso;
var
  sdata, shora:string;
begin


  sdata :=  frmagenda.lbldata.Caption;
  sdata:= bar_is_point( sdata  );
  shora := frmdados.cdsagenda.fieldbyname('hora').asString;


  with frmdados do
    begin

      cds_agedodia.Active := false;
      cds_agedodiadtcompromi.DefaultExpression := quotedstr(frmagenda.lbldata.Caption);
      cds_agedodiahrcompromi.DefaultExpression := quotedstr(shora);
      cds_agedodiaassunto.DefaultExpression := quotedstr('SESSÃO PARA TRATAMENTO DENTÁRIO');
      cds_agedodiaavisa.DefaultExpression := quotedstr('F');
      dbx_agedodia.Active := false;
      dbx_agedodia.SQL.Clear;
      if cds_temp.FieldByName('cod').asInteger = 0 then
         begin
           dbx_agedodia.SQL.Add('Select * from agedodia where (dtcompromi = '+quotedstr(sData)+') and (hrcompromi = '+quotedstr(shora)+')'  );
         end
      else
         begin
           dbx_agedodia.SQL.Add('Select * from agedodia where (dtcompromi = '+quotedstr(sData)+') and (hrcompromi = '+quotedstr(shora)+') and (cfun = '+inttostr(cds_temp.fieldbyname('cod').asInteger)+')'  );
         end;
      //endi
      dbx_agedodia.Active := true;
      cds_agedodia.Active := true;



    end;
  //endth



end;


procedure Tfrmimpage.montalinha;
var ftotautorizado,
    ftotrealizado,
    ftotdesconto,
    ftotpagar,
    ftotvalor,
    ftotvalorreal,
    fporcrealiz,
    fporcfalta,
    fporcrec:real;

    stotrealizado,
    stotpagar,
    sData,
    sporcrec,
    sporcrealiz:string;

    bvencido,
    bdesproporcao,
    bparcial:boolean;

begin

bparcial := false;
bvencido := false;
bdesproporcao := false;
lblrealizado.Caption := '';
lblpago.Caption := '';
lblmens.Caption := '';
lblmens2.Caption := '';
lblnomecli.Caption := '';
lblassunto.Caption := '';
lbldentista.Caption := '';

// cor preta para normal

with frmdados do
   begin
     cds_exec.Active := false;

     if cds_agedodia.RecordCount > 0 then
        begin

          lblassunto.Caption := cds_agedodia.fieldbyname('assunto').asString ;

          sData := datetostr(Date);
          sData := bar_is_point( sData  );

          dbx_exec.Active := false;
          dbx_exec.SQL.Clear;
          dbx_exec.SQL.Add('Select ccli, sum(subtotal) as total from autorizados  group by ccli  having (ccli = '+inttostr(cds_agedodia.fieldbyname('ccli').asInteger)+')'  );
          dbx_exec.Active := true;

          ftotautorizado :=  dbx_exec.fieldbyname('total').asfloat;

          dbx_exec.Active := false;
          dbx_exec.SQL.Clear;
          dbx_exec.SQL.Add('Select ccli, sum(subtotal) as total from realizados  group by ccli  having (ccli = '+inttostr(cds_agedodia.fieldbyname('ccli').asInteger)+')'  );
          dbx_exec.Active := true;

          ftotrealizado :=  dbx_exec.fieldbyname('total').asfloat;

          dbx_exec.Active := false;
          dbx_exec.SQL.Clear;
          dbx_exec.SQL.Add('Select ccli, sum(valdesc) as total from livrocaixa  group by ccli  having (ccli = '+inttostr(cds_agedodia.fieldbyname('ccli').asInteger)+')'  );
          dbx_exec.Active := true;

          ftotdesconto :=  dbx_exec.fieldbyname('total').asfloat;

          if ((ftotautorizado-ftotdesconto) > 0 ) and ( (ftotrealizado-ftotdesconto) >= 0 ) then
             fporcrealiz :=  ( (ftotrealizado-ftotdesconto) / (ftotautorizado-ftotdesconto) * 100)
          else
             fporcrealiz := 0;
          //endi

          sporcrealiz :=  formatfloat('##0.00', fporcrealiz );

          lblrealizado.Caption := 'REALIZOU ';
          lblrealizado.Caption := lblrealizado.Caption + sporcrealiz;
          lblrealizado.Caption := lblrealizado.Caption + '%';


          dbx_exec.Active := false;
          dbx_exec.SQL.Clear;
          dbx_exec.SQL.Add('Select ccli, valor, valorreal, csit, dtv from Vencimentos where (ccli = '+inttostr(cds_agedodia.fieldbyname('ccli').asInteger)+') and (valor = valorreal) and (csit = '+ inttostr( cds_indice.fieldbyname('csitr').asInteger )+') and (dtv < '+quotedstr(sdata)+')' );
          dbx_exec.Active := true;


          if dbx_exec.RecordCount > 0 then
             begin
               bvencido := true;
               lblmens2.Caption := 'HÁ PARCELAS(S) VENCIDAS E NÃO PAGA(S)'
             end;
          //endi

          dbx_exec.Active := false;
          dbx_exec.SQL.Clear;
          dbx_exec.SQL.Add('Select count(*) as totreg from Vencimentos where (valor <> valorreal) group by ccli, csit having (ccli = '+inttostr(cds_agedodia.fieldbyname('ccli').asInteger)+') and (csit = '+ inttostr( cds_indice.fieldbyname('csitr').asInteger )+')');
          dbx_exec.Active := true;

          if (dbx_exec.FieldByName('totreg').asInteger  > 0) then
             begin
               bparcial := true;

               dbx_exec.Active := false;
               dbx_exec.SQL.Clear;
               dbx_exec.SQL.Add('Select ccli, csit, sum(valor) as totvalor, sum(valorreal) as totvalorreal from Vencimentos where (valor <> valorreal) group by ccli, csit having (ccli = '+inttostr(cds_agedodia.fieldbyname('ccli').asInteger)+') and (csit = '+ inttostr( cds_indice.fieldbyname('csitr').asInteger )+')');
               dbx_exec.Active := true;

               if (dbx_exec.fieldbyname('totvalorreal').asfloat > 0) then
                  begin
                    fporcfalta :=  dbx_exec.fieldbyname('totvalor').asfloat/dbx_exec.fieldbyname('totvalorreal').asfloat*100;
                    fporcrec := 100-fporcfalta;
                  end
               else
                  begin
                    fporcfalta :=  0;
                    fporcrec := 0;
                  end;
               //endi



             end
          else
             begin

               fporcfalta :=  0;
               fporcrec := 0;

             end;
          //endf



          sporcrec :=  formatfloat('##0.00', fporcrec );

          if (bparcial) then
             begin

               lblpago.Caption := 'PAGOU ';
               lblpago.Caption := lblpago.Caption + sporcrec;
               lblpago.Caption := lblpago.Caption + '%';


               if (strtofloat(tirapontos(sporcrealiz)) >  strtofloat(tirapontos(sporcrec))) then
                   begin
                     bdesproporcao := true;
                     lblmens.Caption := 'PAGTO IRREGULAR, REALIZ. E PAGO'
                   end;
               //endi




             end;
          //endi


          if (bvencido) then
            begin
              // cor vermelha para vencidos
            end;
          //endi

          if (bdesproporcao) then
            begin
              //cor vrmelha para desproporcional
            end;
          //endi
          

        end;
     //endi

     dbx_exec.Active := false;
     dbx_exec.SQL.Clear;
     dbx_exec.SQL.Add('Select * from clientes where codigo = '+inttostr( cds_agedodia.fieldbyname('ccli').asInteger));
     dbx_exec.Active := true;

     lblnomecli.Caption := dbx_exec.fieldbyname('nome').asString;


     lbltelefone.Caption := '';
     if dbx_exec.fieldbyname('telefoneent').asString <> ''then
        begin
          lbltelefone.Caption := lbltelefone.Caption + dbx_exec.fieldbyname('dddeent').asString+' '+dbx_exec.fieldbyname('telefoneent').asString;
        end;
     //endi

     if dbx_exec.fieldbyname('telefones').asString <> '' then
        begin
          if lbltelefone.Caption <> '' then
             lbltelefone.Caption := frmagenda.lbltelefone.Caption + ' ';
          //endi
          lbltelefone.Caption := lbltelefone.Caption  +'CEL.'+dbx_exec.fieldbyname('telefones').asString;
        end;
     //endi

     if dbx_exec.fieldbyname('telefonecom').asString <> '' then
        begin
          if lbltelefone.Caption <> '' then
             lbltelefone.Caption := lbltelefone.Caption + ' ';
          //endi
          lbltelefone.Caption := lbltelefone.Caption +'COM.'+dbx_exec.fieldbyname('dddecom').asString+' '+dbx_exec.fieldbyname('telefonecom').asString;
        end;
     //endi

     if dbx_exec.fieldbyname('telefonecob').asString <> '' then
        begin
          if lbltelefone.Caption <> '' then
             lbltelefone.Caption := lbltelefone.Caption + ' ';
          //endi
          lbltelefone.Caption := lbltelefone.Caption+' COB. '+dbx_exec.fieldbyname('dddecob').asString+' '+dbx_exec.fieldbyname('telefonecob').asString;
        end;
     //endi


     dbx_exec.Active := false;
     dbx_exec.SQL.Clear;
     dbx_exec.SQL.Add('Select * from funcionarios where codigo = '+inttostr( cds_agedodia.fieldbyname('cfun').asInteger));
     dbx_exec.Active := true;

     lbldentista.Caption := dbx_exec.fieldbyname('nome').asString;



   end;
//endth



end;





procedure Tfrmimpage.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
montalinha;
end;

procedure Tfrmimpage.relatorioAfterPrint(Sender: TObject);
var
  sdata, shora:string;

begin
  frmagenda.dbgagedodia.Cells[1,ilin] := '';
  frmagenda.dbgagedodia.Cells[2,ilin] := '';

  sdata:= datetostr(  frmagenda.mcagenda.Date );
  sdata:= bar_is_point(  sdata );

  shora := frmagenda.dbgagedodia.Cells[0,ilin]+':00';

  frmagenda.mostracompromisso(ilin,sdata,shora);

  frmagenda.mostratodos;

  frmagenda.montacompromisso;

end;

end.
