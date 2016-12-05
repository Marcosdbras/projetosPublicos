unit uagenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Grids, ExtCtrls, Buttons, dbcgrids, StdCtrls, Mask,
  DBCtrls, DB, DBGrids, DBClient, DBTables;

type
  Tfrmagenda = class(TForm)
    pnlsuperior: TPanel;
    pnlcentral: TPanel;
    pnlinferior: TPanel;
    dbgagedodia: TStringGrid;
    spdcancelar: TSpeedButton;
    mcagenda: TMonthCalendar;
    dbgassunto: TDBCtrlGrid;
    lblnomecli: TDBText;
    lblassunto: TDBText;
    lbltitnomecli: TLabel;
    lbltitassunto: TLabel;
    lbldentista: TDBText;
    lbltitdentista: TLabel;
    Shape1: TShape;
    lbldata: TLabel;
    lblhora: TLabel;
    cbxnomefun: TDBLookupComboBox;
    Label4: TLabel;
    spdfiltrar: TSpeedButton;
    spdlimpar: TSpeedButton;
    lblrealizado: TLabel;
    lblpago: TLabel;
    lblmens: TLabel;
    lbltittratamento: TLabel;
    lbltitmens: TLabel;
    lblmens2: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    lbltelefone: TLabel;
    SpeedButton1: TSpeedButton;
    procedure spdcancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure mcagendaClick(Sender: TObject);
    procedure dbgagedodiaClick(Sender: TObject);
    procedure montacompromisso;
    procedure dbgagedodiaDblClick(Sender: TObject);
    procedure dbgagedodiaDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure dbgassuntoDblClick(Sender: TObject);
    procedure mostracompromisso(ilinha:integer;sDt,sho:string);
    procedure mostratodos;
    procedure criaagenda;
    procedure limparagenda;
    procedure spdlimparClick(Sender: TObject);
    procedure spdfiltrarClick(Sender: TObject);
    procedure limparcompromisso;
    procedure exibecompromisso;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbgassuntoPaintPanel(DBCtrlGrid: TDBCtrlGrid;
      Index: Integer);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    iccli,icfun, icodagedodia:integer;
    sAssunto, sdescricao:string;

  end;

var
  frmagenda: Tfrmagenda;

implementation
      uses ugeral, udados, udetage, uimpage;
{$R *.dfm}

procedure Tfrmagenda.spdcancelarClick(Sender: TObject);
begin
close;
end;

procedure Tfrmagenda.FormShow(Sender: TObject);

begin

tabela := 'Temp';
with frmdados do
  begin
    cdsagenda.Active := false;
    cdsagenda.FileName :=vardir+'agenda.cds';
    if not fileexists(vardir+'agenda.cds') then
       begin
         cdsagenda.CreateDataSet;
         cdsagenda.SaveToFile(vardir+'agenda.cds',dfbinary);
       end;
    //endi

    cdsagenda.Active := true;
    cdsagenda.IndexName := 'datacompromisso';
    
    cds_temp.Active := false;
    dbx_temp.Active := false;
    dbx_temp.SQL.Clear;
    dbx_temp.SQL.Add('Select * from temp');
    dbx_temp.Active := true;
    cds_temp.Active := true;
  end;
//endth

tabela := 'Agedodia';
criaagenda;
spdlimpar.Click;

end;

procedure Tfrmagenda.mcagendaClick(Sender: TObject);
begin
//showmessage(  datetostr(mcagenda.Date));

//limparagenda;
//criaagenda;
//mostratodos;
//montacompromisso;


limparcompromisso;
exibecompromisso;
mostratodos;
montacompromisso;


end;

procedure Tfrmagenda.dbgagedodiaClick(Sender: TObject);
begin

montacompromisso;

end;


procedure tfrmagenda.montacompromisso;
var
  sdata, shora:string;
begin

  lbldata.Caption :=  datetostr(  mcagenda.Date );
  lblhora.Caption := dbgagedodia.Cells[0,dbgagedodia.Row];



  sdata:= datetostr(  mcagenda.Date );
  sdata:= bar_is_point(  sdata );

  shora := dbgagedodia.Cells[0,dbgagedodia.Row]+':00';


  with frmdados do
    begin

      cds_agedodia.Active := false;
      cds_agedodiadtcompromi.DefaultExpression := quotedstr(datetostr(mcagenda.Date));
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


procedure Tfrmagenda.dbgagedodiaDblClick(Sender: TObject);
begin
  frmdetage := tfrmdetage.create(self);
  frmdetage.showmodal;
  frmdetage.free;

end;

procedure Tfrmagenda.dbgagedodiaDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin

{
if (arow <> 0) then
   begin

     if (dbgagedodia.Cells[1,arow] <> '') then
        begin
          dbgagedodia.Canvas.Font.Color:= clWhite;//coloque a cor do colordialog
          dbgagedodia.Canvas.Brush.Color:= clred;
        end;
     //endi

   end;
//endi

dbgagedodia.Canvas.FillRect(Rect);
dbgagedodia.Canvas.TextOut(Rect.Left+2,Rect.Top+2,dbgagedodia.Cells[ACol,Arow]);
{


{
if (gdselected in state) then
begin
dbgagedodia.Canvas.Font.Color:= clWhite;//coloque a cor do colordialog
dbgagedodia.Canvas.Brush.Color:= clblack;
end
else
begin
dbgagedodia.Canvas.Font.Color:= clBlack;
dbgagedodia.Canvas.Brush.Color:=clWhite;
end;
dbgagedodia.Canvas.FillRect(Rect);
dbgagedodia.Canvas.TextOut(Rect.Left+2,Rect.Top+2,dbgagedodia.Cells[ACol,Arow]);
}


//DrawText(dbgagedodia.Canvas.Handle, PChar(dbgagedodia.Cells[aCol, aRow]), Length(dbgagedodia.Cells[aCol, aRow]), Rect, DT_WORDBREAK);



end;

procedure Tfrmagenda.dbgassuntoDblClick(Sender: TObject);
begin
//frmdetage := tfrmdetage.create(self);
//frmdetage.showmodal;
//frmdetage.free;

end;

procedure tfrmagenda.mostracompromisso(ilinha:integer;sDt,sho:string);
var
  iccli,icfor,icfun,icontador:integer;
  sncli,snfor,snfun:string;

begin

  icontador := 0;

  with frmdados do
    begin

      cds_exec.Active := false;
      dbx_exec.Active := false;
      dbx_exec.SQL.Clear;

      if cds_temp.FieldByName('cod').asInteger = 0 then
         begin
           dbx_exec.SQL.Add('Select * from agedodia where (dtcompromi = '+quotedstr(sDt)+') and (hrcompromi = '+quotedstr(sho)+')');
         end
      else
         begin
           dbx_exec.SQL.Add('Select * from agedodia where (dtcompromi = '+quotedstr(sDt)+') and (hrcompromi = '+quotedstr(sho)+') and (cfun = '+inttostr(cds_temp.fieldbyname('cod').asInteger)+')'  );
         end;
      //endi

      dbx_exec.Active := true;

      while not dbx_exec.Eof do
        begin

          icontador := icontador + 1;

          iccli := dbx_exec.fieldbyname('ccli').asInteger;
          icfor := dbx_exec.fieldbyname('cfor').asInteger;
          icfun := dbx_exec.fieldbyname('cfun').asInteger;

          cds_clientes.Active := false;
          dbx_clientes.Active := false;
          dbx_clientes.SQL.Clear;
          dbx_clientes.SQL.Add('Select * from clientes where (codigo = '+inttostr(iccli)+')');
          dbx_clientes.Active := true;

          sncli := dbx_clientes.fieldbyname('nome').asString;

          cds_fornecedores.Active := false;
          dbx_fornecedores.Active := false;
          dbx_fornecedores.SQL.Clear;
          dbx_fornecedores.SQL.Add('Select * from fornecedores where (codigo = '+inttostr(icfor)+')');
          dbx_fornecedores.Active := true;

          snfor := dbx_fornecedores.fieldbyname('nome').asString;


          cds_funcionarios.Active := false;
          dbx_funcionarios.Active := false;
          dbx_funcionarios.SQL.Clear;
          dbx_funcionarios.SQL.Add('Select * from funcionarios where (codigo = '+inttostr(icfun)+')');
          dbx_funcionarios.Active := true;

          snfun := dbx_funcionarios.fieldbyname('nome').asString;

          dbgagedodia.Cells[1,ilinha]:= dbgagedodia.Cells[1,ilinha] + inttostr(icontador)+') '+sncli+' ';


          dbx_exec.Next;

        end;
      //endw

      dbgagedodia.Cells[2,ilinha]:= '';

      if icontador > 0 then
         begin
           dbgagedodia.Cells[2,ilinha]:= dbgagedodia.Cells[2,ilinha] + inttostr(icontador);
         end
      else
         begin
           dbgagedodia.Cells[2,ilinha]:= dbgagedodia.Cells[2,ilinha] + '';
         end;
      //endi



    end;
  //endth
end;


procedure tfrmagenda.mostratodos;
begin
  with frmdados do
    begin
      cds_clientes.Active := false;
      dbx_clientes.Active := false;
      dbx_clientes.SQL.Clear;
      dbx_clientes.SQL.Add('Select * from clientes order by nome');
      dbx_clientes.Active := true;

      cds_fornecedores.Active := false;
      dbx_fornecedores.Active := false;
      dbx_fornecedores.SQL.Clear;
      dbx_fornecedores.SQL.Add('Select * from fornecedores order by nome');
      dbx_fornecedores.Active := true;

      cds_funcionarios.Active := false;
      dbx_funcionarios.Active := false;
      dbx_funcionarios.SQL.Clear;
      dbx_funcionarios.SQL.Add('Select * from funcionarios order by nome');
      dbx_funcionarios.Active := true;

    end;
  //endth


end;

procedure tfrmagenda.criaagenda;
var
  fhoras:real;
  shorai,shoraf, sdata, shora, sncli, snfun, snfor:string;

  hhora:tdatetime;
  hfimagedodia:tdatetime;
  hintervaloagedodia:tdatetime;

  ilin, icol, iccli, icfun, icfor:integer;

  acodigo: array of integer;
begin

//dbgagedodia.ColCount := 4;
dbgagedodia.ColCount := 3;
dbgagedodia.RowCount := 2;

ilin:= 0;

dbgagedodia.Cells[0,ilin]:= 'HORÁRIO';
dbgagedodia.Cells[1,ilin]:= 'COMPROMISSO';
dbgagedodia.Cells[2,ilin]:= 'TOTAL';



dbgagedodia.ColWidths[0] := 70;
dbgagedodia.ColWidths[1] := 350;
dbgagedodia.ColWidths[2] := 50;
//dbgagedodia.ColWidths[3] := 300;

ilin:= dbgagedodia.RowCount;

with frmdados do
  begin

    cdsagenda.First;
    while not cdsagenda.Eof do
      begin
        cdsagenda.Delete;
      end;
    //endi

    sdata:= datetostr(  mcagenda.Date );
    sdata:= bar_is_point(  sdata );

    hfimagedodia       := cds_indice.FieldByName('fimagedodia').AsDateTime;
    hhora              := cds_indice.FieldByName('inicioagedodia').AsDateTime;
    hintervaloagedodia := cds_indice.FieldByName('intervaloagedodia').AsDateTime;


    while  true  do
       begin

         cdsagenda.Append;
         cdsagenda.FieldByName('hora').AsString :=  copy(  timetostr(hhora),1,5  );
         cdsagenda.Post;


         dbgagedodia.Cells[0,ilin-1]:= copy(  timetostr(hhora),1,5  );

         shora := dbgagedodia.Cells[0,ilin-1]+':00';

         //mostracompromisso(ilin-1,sData,shora);

         if hhora >= hfimagedodia then
            break;
         //endi

         hhora :=  hhora + hintervaloagedodia;
         ilin  := ilin + 1;

         dbgagedodia.RowCount := ilin;

       end;
    //enddo


  end;
//endth


end;

procedure tfrmagenda.limparagenda;
var
  I, J: integer;
begin
  with dbgagedodia do
    for I := 0 to ColCount -1 do
      for J := 0 to RowCount -1 do
        Cells[I,J] := '';


end;




procedure Tfrmagenda.spdlimparClick(Sender: TObject);
begin

tabela := 'Temp';
frmdados.Cds_Temp.Append;


mcagenda.Date := date;


tabela := 'Agedodia';
spdfiltrar.Click;

end;

procedure Tfrmagenda.spdfiltrarClick(Sender: TObject);
begin

limparcompromisso;
exibecompromisso;
mostratodos;
montacompromisso;


end;


procedure tfrmagenda.limparcompromisso;
var
  I, J: integer;
begin
  with dbgagedodia do
      for J := 1 to RowCount -1 do
          Cells[1,J] := '';


end;


procedure tfrmagenda.exibecompromisso;
var
  I, J: integer;
  sData, sHora:string;
begin
  sdata:= datetostr(  mcagenda.Date );
  sdata:= bar_is_point(  sdata );

  with dbgagedodia do
     begin
      for J := 1 to RowCount -1 do
        begin
          shora := Cells[0,j]+':00';
          mostracompromisso(j,sData,shora);


        end;
      //endf
     end;
  //endth

end;


procedure Tfrmagenda.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  try
    if fileexists(frmdados.vardir+'agenda.cds') then
       begin
         frmdados.cdsagenda.Active := false;
         deletefile(frmdados.vardir+'agenda.cds');
       end;
    //endi
  except
    sMsg := 'não consegui apagar agenda.cds';
  end;


  Action:=caFree;
  frmagenda:=nil;
  form_ativo := '';

end;

procedure Tfrmagenda.dbgassuntoPaintPanel(DBCtrlGrid: TDBCtrlGrid;
  Index: Integer);
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
Shape1.Brush.Color := clMoneyGreen;

lbltitnomecli.Font.Color := clblack;
lblnomecli.Font.Color := clblack;
lbltelefone.Font.Color := clblack;

lbltitassunto.Font.Color := clblack;
lblassunto.Font.Color := clblack;
lbltitdentista.Font.Color := clblack;
lbldentista.Font.Color := clblack;
lblrealizado.Font.Color := clblack;
lbltitmens.Font.Color := clblack;
lblmens2.Font.Color := clblack;
lblpago.Font.Color := clblack;
lblmens.Font.Color := clblack;
lbltittratamento.Font.Color := clblack;


with frmdados do
   begin
     cds_exec.Active := false;

     if cds_agedodia.RecordCount > 0 then
        begin

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
               Shape1.Brush.Color := clRed;
               lbltitnomecli.Font.Color := clwhite;
               lblnomecli.Font.Color := clwhite;
               lbltelefone.Font.Color := clwhite;
               lbltitassunto.Font.Color := clwhite;
               lblassunto.Font.Color := clwhite;
               lbltitdentista.Font.Color := clwhite;
               lbldentista.Font.Color := clwhite;
               lblrealizado.Font.Color := clwhite;
               lbltittratamento.Font.Color := clwhite;
               lbltitmens.Font.Color := clwhite;
               lblmens2.Font.Color := clwhite;
               lblpago.Font.Color := clwhite;
               lblmens.Font.Color := clwhite;
            end;
          //endi

          if (bdesproporcao) then
            begin
               Shape1.Brush.Color := clRed;
               lbltitnomecli.Font.Color := clwhite;
               lblnomecli.Font.Color := clwhite;
               lbltelefone.Font.Color := clwhite;
               lbltitassunto.Font.Color := clwhite;
               lblassunto.Font.Color := clwhite;
               lbltitdentista.Font.Color := clwhite;
               lbldentista.Font.Color := clwhite;
               lblrealizado.Font.Color := clwhite;
               lbltittratamento.Font.Color := clwhite;
               lbltitmens.Font.Color := clwhite;
               lblmens2.Font.Color := clwhite;
               lblpago.Font.Color := clwhite;
               lblmens.Font.Color := clwhite;
            end;
          //endi







        end;
     //endi

     dbx_exec.Active := false;
     dbx_exec.SQL.Clear;
     dbx_exec.SQL.Add('Select * from clientes where codigo = '+inttostr( cds_agedodia.fieldbyname('ccli').asInteger));
     dbx_exec.Active := true;

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

   end;
//endth



end;

procedure Tfrmagenda.BitBtn1Click(Sender: TObject);
begin
  iccli := frmdados.Cds_agedodia.fieldbyname('ccli').AsInteger;
  icfun := frmdados.Cds_agedodia.fieldbyname('cfun').AsInteger;
  sAssunto := frmdados.Cds_Agedodia.fieldbyname('assunto').asString;
  icodagedodia := frmdados.Cds_Agedodia.fieldbyname('codigo').asInteger;
  sdescricao := frmdados.Cds_Agedodia.fieldbyname('descricao').asString;
end;

procedure Tfrmagenda.BitBtn2Click(Sender: TObject);
var
  ilin,icol:integer;
  sdata, shora:string;
begin
if frmdados.Cds_Agedodia.Locate('codigo',icodagedodia,[]) then
   begin
     showmessage('Impossível colar, indique qual horário de destino');
     exit;
   end;
//endi
if icodagedodia = 0 then
   begin
     showmessage('Impossível colar, não há nada para colar');
     exit;
   end;
//endi


tabela := 'Agedodia';

icol := dbgagedodia.Col;
ilin := dbgagedodia.row;


with frmdados do
  begin
     cds_agedodia.append;
     Cds_Agedodia.fieldbyname('ccli').asInteger := iccli;
     Cds_Agedodia.fieldbyname('cfun').asInteger := icfun;
     Cds_Agedodia.fieldbyname('assunto').asString := sAssunto;
     Cds_Agedodia.fieldbyname('descricao').asString := sdescricao;
     cds_agedodia.Post;
  end;
//endth


icodagedodia := frmdados.Cds_Agedodia.fieldbyname('codigo').asInteger;


dbgagedodia.Cells[1,ilin] := '';
dbgagedodia.Cells[2,ilin] := '';

sdata:= datetostr(  mcagenda.Date );
sdata:= bar_is_point(  sdata );

shora := dbgagedodia.Cells[0,ilin]+':00';

mostracompromisso(ilin,sdata,shora);

mostratodos;

montacompromisso;

end;

procedure Tfrmagenda.SpeedButton1Click(Sender: TObject);
begin
frmimpage := tfrmimpage.create(self);
frmimpage.relatorio.Preview;
frmimpage.free;
end;

end.
