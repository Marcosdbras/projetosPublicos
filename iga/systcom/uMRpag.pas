unit uMRpag;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons, Db, DBTables, SayPrint, SqlExpr;

type
  TfrmMRPag = class(TForm)
    rgbtiporel: TRadioGroup;
    sPdGravar: TSpeedButton;
    spdSair: TSpeedButton;
    tabprodutos: TTable;
    tabEstCri: TTable;
    tabEstCricodigo: TFloatField;
    tabEstCrinome: TStringField;
    tabEstCriQUA: TFloatField;
    tabEstCriUNI: TStringField;
    tabEstCriCBAR: TStringField;
    tabEstCriCAUX: TStringField;
    tabEstCriCFAB: TStringField;
    tabEstCriESTMIN: TFloatField;
    tabEstCriESTMAX: TFloatField;
    tabEstCriRESERVA: TFloatField;
    tabEstCriSALDOEST: TFloatField;
    tabEstCriCOMPRA: TFloatField;
    tabmarcas: TTable;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    imgdocno: TImage;
    imgdocin: TImage;
    Timer1: TTimer;
    Label8: TLabel;
    Bevel1: TBevel;
    SayPrint: TSayPrint;
    procedure sPdGravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure rgbtiporelClick(Sender: TObject);
    procedure spdSairClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ImprRelPagDia;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMRPag: TfrmMRPag;

implementation

uses uGeral, uPrincipal, uDados, uPesqPag, urelpagar;

{$R *.DFM}

procedure TfrmMRPag.sPdGravarClick(Sender: TObject);
  var
    vardir:String;
begin
VarDir := Extractfilepath(application.exename);
if rgbtiporel.ItemIndex = -1 then
   begin
     Showmessage('Antes de clicar nesse botão, selecione o relatório desejado');
     exit;
   end;
//endi

if rgbtiporel.ItemIndex = 0 then
   begin
     frmrelpagar := tfrmrelpagar.Create(self);
     frmrelpagar.relatorio.Preview;
     frmrelpagar.Free;
     frmpesqpag.spdfiltrar.Click;
   end;
//endi

if rgbtiporel.ItemIndex = 3 then
   begin
   end;
//endi

if rgbtiporel.ItemIndex = 2 then
   begin
   end;
//endi

if rgbtiporel.ItemIndex = 1 then
   begin
     ImprRelPagDia;
     frmpesqpag.spdfiltrar.Click;
   end;
//endi

if rgbtiporel.ItemIndex = 4 then
   begin
   end;
//endi


end;

procedure TfrmMRPag.FormShow(Sender: TObject);
begin
imgdocno.Visible := true;
imgdocin.Visible := false;
spdgravar.Enabled := false;
timer1.Enabled := true;
end;

procedure TfrmMRPag.rgbtiporelClick(Sender: TObject);
begin
spdgravar.Enabled := true;

end;

procedure TfrmMRPag.spdSairClick(Sender: TObject);
begin
close;
end;

procedure TfrmMRPag.Timer1Timer(Sender: TObject);
begin
if imgdocno.Visible then
   begin
     imgdocno.Visible := false;
     imgdocin.Visible := true;
   end
else
   begin
     imgdocno.Visible := true;
     imgdocin.Visible := false;
   end;
//endi

end;

procedure TfrmMRPag.FormClose(Sender: TObject; var Action: TCloseAction);
begin
timer1.Enabled := false;
Action:=caFree;
frmMRpag:=nil;

end;


procedure TfrmMRpag.ImprRelPagDia;
var
  s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,sImp:string;
  ResultSet : tCustomSqlDataSet;
  SqlStMt : String;
  Col, Centro,x, iLin, iItens:Integer;
  sDelimitador, sDataP:string;
  sDte,snfor,spagar, sliqdado, sDoc, sValor, sSit, sDataImp, sHoraImp, sSubtot, scfor, sTotg, sref:String;
  ftotG, ftotI, ftotE, fSubtot:real;
begin
ftotg := 0;

sDataImp := datetostr(date);
sHoraImp := copy(timetostr(time),1,5);
sDelimitador := replicar('-',80);

frmdados.Cds_Pagar.First;
if frmdados.Cds_Pagar.RecordCount = 0 then
   exit;
//endi
while true do
  begin

    s1 := '';
    sayprint.BeginPrn;

    sayprint.Condensed(false);
    sayprint.Expand(True);
    sayprint.Bold(True);
    for x := 1 to (( 40  - length( frmdados.Cds_Config.fieldbyname('campo2').asString )) div 2) do
        begin
          s1 := (s1 + ' ');
        end;
    //endfor
    sImp := s1+frmdados.Cds_Config.fieldbyname('campo2').asString;
    sayprint.Say(0,0,sImp);
    sayprint.Expand(false);
    sayprint.Bold(false);

    s1 := '';
    for x := 1 to (( 80  - length( frmdados.Cds_Config.fieldbyname('campo6').asString )) div 2) do
        begin
          s1 := (s1 + ' ');
        end;
    //endfor
    sImp := s1+frmdados.Cds_Config.fieldbyname('campo6').asString;
    sayprint.Say(1,0,sImp);

    s1 := '';
    for x := 1 to (( 80  - length( frmdados.Cds_Config.fieldbyname('campo7').asString )) div 2) do
        begin
          s1 := (s1 + ' ');
        end;
    //endfor
    sImp := s1+frmdados.Cds_Config.fieldbyname('campo7').asString;
    sayprint.Say(2,0,sImp);
    sayprint.Say(3,0,sDelimitador);

    sayprint.Say(4,0,'Contas');

    sayprint.Say(4,35,'Data     '+sDataImp);
    sayprint.Say(4,68,'Hora   '+sHoraImp);
    sayprint.Say(5,0,sDelimitador);
    sayprint.Condensed(true);

    //sayprint.Say(6,0,'Emissao    Nome do Cliente                                                         Vencto     Liqdado    Documento      Valor  Situacao');

    sayprint.Say(6,0,'Emissao    Nome do Fornecedor                                 Referente            Vencto     Liqdado    Documento      Valor  Situacao');
    //                xx/xx/xxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx xxxxxxxxxxxxxxxxxxxx xx/xx/xxxx xx/xx/xxxx xxxxxxxxx xxx.xxx,xx  xxxxxxxxx
    //                0          11                                                 60                   81         91         101       110         121
    sayprint.Condensed(false);
    sayprint.Say(7,0,sDelimitador);
    sayprint.Condensed(true);

    iLin    := 8;
    iItens  := 0;

    with frmdados do
       begin


         while true do
            begin

              sDte :=       Cds_pagar.fieldbyname('Dte').asString;
              snfor := copy(Cds_pagar.fieldbyname('nfor').asString,1,50 );
              scfor :=  formatfloat('00000', Cds_pagar.fieldbyname('cfor').asfloat );
              sref := copy(Cds_pagar.fieldbyname('descricao').asString,1,20);
              spagar :=    Cds_pagar.fieldbyname('Dtv').asString;
              sliqdado :=   Cds_pagar.fieldbyname('Dtl').asString;
              sDoc :=       Cds_pagar.fieldbyname('Doc').asString;
              sValor     := AlinNumD(10,Cds_pagar.fieldbyname('valor').asfloat);
              sSit       := Cds_pagar.fieldbyname('nSituapagar').asString;

              fSubtot :=  fSubtot + Cds_pagar.fieldbyname('valor').asfloat;
              ftotG :=   ftotG + Cds_pagar.fieldbyname('valor').asfloat;

              sayprint.Say(iLin,0,sDte);
              sayprint.Say(iLin,11,scfor+' '+snfor);
              sayprint.Say(iLin,61,sref);
              sayprint.Say(iLin,83,spagar);
              sayprint.Say(iLin,92,sliqdado);
              sayprint.Say(iLin,105,sDoc);
              sayprint.Say(iLin,115,sValor);
              sayprint.Say(iLin,122,sSit);

              Cds_pagar.Next;

              case frmpesqpag.cbxclassificar.ItemIndex of
                  0:begin
                      if (sDte <> Cds_pagar.fieldbyname('Dte').asString) or (cds_pagar.Eof) then
                         begin
                           iLin := iLin + 1;
                           iItens := iItens + 1;
                           sayprint.Say(iLin,115,'----------');
                           sSubtot := AlinNumD(10,fSubtot);
                           iLin := iLin + 1;
                           iItens := iItens + 1;
                           sayprint.Say(iLin,83,'Emitido > '+diasemana(strtodate(sdte)));
                           sayprint.Say(iLin,115,sSubtot);
                           fSubtot := 0;
                           iLin := iLin + 1;
                           iItens := iItens + 1;
                         end;
                      //endi
                    end;
                  1:begin
                      if (spagar <> Cds_pagar.fieldbyname('Dtv').asString ) or (cds_pagar.Eof) then
                         begin
                           iLin := iLin + 1;
                           iItens := iItens + 1;
                           sayprint.Say(iLin,115,'----------');
                           sSubtot := AlinNumD(10,fSubtot);
                           iLin := iLin + 1;
                           iItens := iItens + 1;
                           sayprint.Say(iLin,83,'Vencto > '+diasemana(strtodate(spagar)));
                           sayprint.Say(iLin,115,sSubtot);
                           fSubtot := 0;
                           iLin := iLin + 1;
                           iItens := iItens + 1;
                         end;
                      //endi
                    end;
                  2:begin
                      if (sliqdado <> Cds_pagar.fieldbyname('Dtl').asString ) or (cds_pagar.Eof) then
                         begin
                           iLin := iLin + 1;
                           iItens := iItens + 1;
                           sayprint.Say(iLin,115,'----------');
                           sSubtot := AlinNumD(10,fSubtot);
                           iLin := iLin + 1;
                           iItens := iItens + 1;
                           sayprint.Say(iLin,83,'Liqdado > '+diasemana(strtodate(sliqdado)));
                           sayprint.Say(iLin,115,sSubtot);
                           fSubtot := 0;
                           iLin := iLin + 1;
                           iItens := iItens + 1;
                         end;
                      //endi
                    end;
                  3:begin
                      if (sDte <> Cds_pagar.fieldbyname('Dte').asString ) or (cds_pagar.Eof)then
                         begin
                           iLin := iLin + 1;
                           iItens := iItens + 1;
                           sayprint.Say(iLin,115,'----------');
                           sSubtot := AlinNumD(10,fSubtot);
                           iLin := iLin + 1;
                           iItens := iItens + 1;
                           sayprint.Say(iLin,83,'Emitido > '+diasemana(strtodate(sdte)));
                           sayprint.Say(iLin,115,sSubtot);
                           fSubtot := 0;
                           iLin := iLin + 1;
                           iItens := iItens + 1;
                         end;
                      //endi
                    end;
                  4:begin
                      if (sDte <> Cds_pagar.fieldbyname('Dte').asString ) or (cds_pagar.Eof)then
                         begin
                           iLin := iLin + 1;
                           iItens := iItens + 1;
                           sayprint.Say(iLin,115,'----------');
                           sSubtot := AlinNumD(10,fSubtot);
                           iLin := iLin + 1;
                           iItens := iItens + 1;
                           sayprint.Say(iLin,83,'Emitido > '+diasemana(strtodate(sdte)));
                           sayprint.Say(iLin,115,sSubtot);
                           fSubtot := 0;
                           iLin := iLin + 1;
                           iItens := iItens + 1;
                         end;
                      //endi
                    end;
              end;

              iItens := iItens + 1;
              if iItens >= 50 then
                 break;
              //endi
              
              iLin := iLin + 1;
              if Cds_pagar.Eof then
                 break;
              //endi


            end;
         //endw


      end;
    //endi

    sayprint.Condensed(false);
    sayprint.Say(60,0,sDelimitador);
    sayprint.Condensed(true);

    if frmdados.Cds_pagar.Eof then
       begin
         stotG := AlinNumD(10,ftotg);
         sayprint.Say(61,83,'Total Geral');
         sayprint.Say(61,115,sTotG);
       end;
    //endi


    sayprint.Say(66,0,' ');


    sayprint.FreeCommand(chr(13));
    sayprint.EndPrn;

    if frmdados.Cds_pagar.Eof then
       break;
    //endi

  end;
//endw


end;

end.
