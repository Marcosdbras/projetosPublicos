unit ufimpf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  Tfrmfimpf = class(TForm)
    btnleiturax: TButton;
    btnreducaoz: TButton;
    btnsair: TButton;
    btnfechadia: TButton;
    btnapuracaocaixa: TButton;
    btntroco: TButton;
    btnsangria: TButton;
    btnapcaixaind: TButton;
    btnabcaixaind: TButton;
    btnfcaixaind: TButton;
    btnconfcaixaind: TButton;
    Button1: TButton;
    btnpedidosterminal: TButton;
    procedure btnsairClick(Sender: TObject);
    procedure btnleituraxClick(Sender: TObject);
    procedure btnreducaozClick(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure btnfechadiaClick(Sender: TObject);
    procedure btncancupomClick(Sender: TObject);
    procedure btnapuracaocaixaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnsangriaClick(Sender: TObject);
    procedure btntrocoClick(Sender: TObject);
    procedure btnabcaixaindClick(Sender: TObject);
    procedure btnapcaixaindClick(Sender: TObject);
    procedure btnfcaixaindClick(Sender: TObject);
    procedure btnconfcaixaindClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnpedidosterminalClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmfimpf: Tfrmfimpf;

implementation


{$R *.dfm}

uses ugeral, udados, ufrenteecf, uMp20i, usangriaecf, uingestaoecf, ucaixaapecf,
  ualterapecf, uabrircaixaind, ucaixaapind, uconfcaixaind, ufechacaixaind,
  udetcaixaind, upesqvfb;


procedure Tfrmfimpf.btnsairClick(Sender: TObject);
begin


close;
end;

procedure Tfrmfimpf.btnleituraxClick(Sender: TObject);
begin


  case itipoimpf of
       0:begin
           // Nenhuma


         end;


       1:begin
           //SWEDA
           iResposta:= ECF_LeituraX;
           Analisa_resposta_sweda();
           Retorno_Impressora_sweda;


         end;


       2:begin
           //BEMATECH
           iResposta:= Bematech_FI_LeituraX;
           Analisa_resposta_BEMA();
           Retorno_Impressora_BEMA;


         end;


       3:begin
           //DATAREGIS


         end;





       else exit;

  end;








end;

procedure Tfrmfimpf.btnreducaozClick(Sender: TObject);
var
  cdata, chora:char;

begin
  if application.MessageBox('Essa operação poderá desativar as vendas pelo resto do período'+'deseja continuar '+ '?','Atenção',mb_YesNo + mb_DefButton2) = idNo then
     begin
       exit;
     end;
  //endi

  case itipoimpf of
       0:begin
           // Nenhuma


         end;


       1:begin
           //SWEDA
           cdata:=#0; chora:=#0;
           if not ((cdata=#0) and (chora=#0)) then iResposta:= ECF_ReducaoZ(cdata,chora);


         end;


       2:begin
           //BEMATECH
           cdata:=#0; chora:=#0;
           if not ((cdata=#0) and (chora=#0)) then iResposta:= Bematech_FI_ReducaoZ(cdata,chora);



         end;

       3:begin
           //DATAREGIS



         end;






       else exit;

  end;



end;

procedure Tfrmfimpf.Button4Click(Sender: TObject);
begin

  case itipoimpf of
       0:begin
           // Nenhuma


         end;


       1:begin
           //SWEDA


         end;


       2:begin
           //BEMATECH


         end;

       3:begin
           //DATAREGIS


         end;

       else exit;

  end;




end;

procedure Tfrmfimpf.btnfechadiaClick(Sender: TObject);
begin


  case itipoimpf of
       0:begin
           // Nenhuma


         end;


       1:begin
           //SWEDA

           if MessageDlg('Confirma Fechamento do Dia ? Esta função emitirá um Redução Z e poderá bloquear o ECF.',
              mtConfirmation, [mbYes, mbNo], 0) = mrYes then
              begin
                  iResposta:= ECF_FechamentoDoDia;
              end;
           //endi




         end;


       2:begin
           //BEMATECH

           if MessageDlg('Confirma Fechamento do Dia ? Esta função emitirá um Redução Z e poderá bloquear o ECF.',
              mtConfirmation, [mbYes, mbNo], 0) = mrYes then
              begin
                  iResposta:= Bematech_FI_FechamentoDoDia;
              end;
           //endi



         end;


       3:begin
           //DATAREGIS




         end;






       else exit;





  end;


 frmfechacaixaind := tfrmfechacaixaind.create(self);
 frmfechacaixaind.showmodal;
 frmfechacaixaind.free;


end;

procedure Tfrmfimpf.btncancupomClick(Sender: TObject);
begin
  case itipoimpf of
       0:begin
           // Nenhuma


         end;


       1:begin
           //SWEDA
           iResposta := ECF_CancelaCupom();
           Analisa_resposta_sweda();
           Retorno_Impressora_sweda;


         end;


       2:begin
           //BEMATECH
           iResposta := BEMATECH_FI_CancelaCupom();
           Analisa_resposta_BEMA();
           Retorno_Impressora_BEMA;




         end;

       3:begin
           //DATAREGIS




         end;




       else exit;

  end;

end;

procedure Tfrmfimpf.btnapuracaocaixaClick(Sender: TObject);
begin
  tabela := 'Vendab';

  if (not frmdados.Cds_Vendab.Active) then
     begin
       //Showmessage('Nenhum Venda Ativa!');
       frmdados.Cds_Vendab.Active := true;
       //exit;
     end;
  //endi

  if (frmdados.cds_vendab.RecordCount > 0) then
     begin
       Showmessage('Feche a operação anterior antes desta!');
       exit;
     end;
  //endi

  frmcaixaapecf := tfrmcaixaapecf.create(self);
  frmcaixaapecf.showmodal;
  frmcaixaapecf.free;
end;

procedure Tfrmfimpf.FormShow(Sender: TObject);
begin

   bCaixaApsVendabP := false;
   btnTroco.Enabled := false;
   btnSangria.Enabled := false;
   btnleiturax.Enabled := false;
   btnapcaixaind.Enabled := false;
   btnfechadia.Enabled := false;
   btnreducaoz.Enabled := false;
   btnapuracaocaixa.Enabled := false;
   btnabcaixaind.Enabled := false;
   btnfcaixaind.Enabled := false;
   btnconfcaixaind.Enabled := false;
   btnpedidosterminal.Enabled := false;

   if bCaixaApsVendab then
      btnapuracaocaixa.Enabled := true;
   //endi

   if bTroco then
      btnTroco.Enabled := true;
   //endi

   if bSangria then
      btnSangria.Enabled := true;
   //endi

   if bleiturax then
      btnleiturax.Enabled := true;
   //endi

   if bapcaixaind then
      btnapcaixaind.Enabled := true;
   //endi

   if bfechadia then
      btnfechadia.Enabled := true;
   //endi

   if breducaoz then
      btnreducaoz.Enabled := true;
   //endi

   if babcaixaind then
      btnabcaixaind.Enabled := true;
   //endi


   if bfcaixaind then
      btnfcaixaind.Enabled := true;
   //endi

   if bconfcaixaind then
      btnconfcaixaind.Enabled := true;
   //endi

   if bpedidosterminal then
      btnpedidosterminal.Enabled := true;
   //endi


end;

procedure Tfrmfimpf.btnsangriaClick(Sender: TObject);
begin
frmsangriaecf := tfrmsangriaecf.create(self);
frmsangriaecf.showmodal;
frmsangriaecf.free;

end;

procedure Tfrmfimpf.btntrocoClick(Sender: TObject);
begin
frmingestaoecf := tfrmingestaoecf.create(self);
frmingestaoecf.showmodal;
frmingestaoecf.free;

end;

procedure Tfrmfimpf.btnabcaixaindClick(Sender: TObject);
begin


       frmabrircaixaind := tfrmabrircaixaind.create(self);
       frmabrircaixaind.showmodal;
       frmabrircaixaind.free;



end;

procedure Tfrmfimpf.btnapcaixaindClick(Sender: TObject);
begin
  tabela := 'Vendab';

  if (not frmdados.Cds_Vendab.Active) then
     begin
       ;
       //Showmessage('Nenhum Venda Ativa!');
       frmdados.Cds_Vendab.Active := true;
       //exit;
     end;
  //endi

  if (frmdados.cds_vendab.RecordCount > 0) then
     begin
       Showmessage('Feche a operação anterior antes desta!');
       exit;
     end;
  //endi

  ThreadStatus.Suspended := true;

  frmcaixaapind := tfrmcaixaapind.create(self);
  frmcaixaapind.showmodal;
  frmcaixaapind.free;

end;

procedure Tfrmfimpf.btnfcaixaindClick(Sender: TObject);
begin


  frmfechacaixaind := tfrmfechacaixaind.create(self);
  frmfechacaixaind.showmodal;
  frmfechacaixaind.free;


{

  if frmfrenteecf.lblstatuscaixa.Caption = 'FECHADO' then
     begin
       application.MessageBox('Caixa já está fechado!','Mensagem',mb_ok);
       exit;
     end;
  //endi



if application.MessageBox('Deseja realmente encerrar o caixa?','Confirme',mb_yesno) = 6 then
   begin

     with frmdados do
       begin

         cds_id.Active := true;
         cds_caixa.Active := true;
         cds_caixa.Append;
         cds_caixa.FieldByName('data').AsDateTime := strtodate(frmfrenteecf.lbldatamov.caption);
         cds_caixa.FieldByName('valor').AsFloat :=  0;
         cds_caixa.FieldByName('historico').AsString := 'Encerramento do caixa';
         cds_caixa.FieldByName('codformapgto').AsInteger := 99996;
         cds_caixa.FieldByName('op').AsString := 'E';
         cds_caixa.FieldByName('status').AsString := 'F';
         cds_caixa.FieldByName('cusu').AsInteger := icusu;
         cds_caixa.FieldByName('id').AsInteger := cds_id.fieldbyname('id').AsInteger;
         cds_caixa.Post;
         cds_caixa.Active := false;
         cds_id.Active := false;

         frmfrenteecf.lbldatamov.Caption :=  datetostr( date );
         frmfrenteecf.lblstatuscaixa.Caption := 'ABERTO'

      end;


      application.MessageBox('Caixa Individual encerrado, o sistema será finalizado, inicialize-o novamente com sua senha','Aviso',mb_ok);
      application.Terminate;


   end;
 }




end;

procedure Tfrmfimpf.btnconfcaixaindClick(Sender: TObject);
begin
  frmconfcaixaind := tfrmconfcaixaind.create(self);
  frmconfcaixaind.showmodal;
  frmconfcaixaind.free;
end;

procedure Tfrmfimpf.Button1Click(Sender: TObject);
begin
  frmdetcaixaind := tfrmdetcaixaind.create(self);
  frmdetcaixaind.showmodal;
  frmdetcaixaind.free;
end;

procedure Tfrmfimpf.btnpedidosterminalClick(Sender: TObject);
begin

  frmpesqvfb := tfrmpesqvfb.create(self);
  frmpesqvfb.showmodal;
  frmpesqvfb.free;

  
end;

end.
