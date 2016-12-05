unit uMRProd;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons, Db, DBTables, Mask, ComCtrls, DBXpress, SqlExpr,
  RpDefine, RpCon, RpConDS,  RpConBDE, RpRave, FMTBcd, DBClient;

type
  TfrmMRProd = class(TForm)
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
    Label8: TLabel;
    Bevel1: TBevel;
    pnldata: TPanel;
    Label9: TLabel;
    Label10: TLabel;
    dtpDataI: TDateTimePicker;
    DtpDataf: TDateTimePicker;
    procedure sPdGravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure rgbtiporelClick(Sender: TObject);
    procedure spdSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure apagadados;
  private
    { Private declarations }
  public
    { Public declarations }
    ftotal, ftotalc, fqtdet:real;
  end;

var
  frmMRProd: TfrmMRProd;

implementation

uses urelest, uPrincipal, uDados, uPesqPro, uRelProdSS, uRelProdVB, uGeral,
  urelest_cr, ureldfatu, ureldlu, urelrankp, urellistpr, urelestmin, upesqvprod,
  urelvporgrupo, urellistprdif, uetiqjato, uescetiqjato;

{$R *.DFM}

procedure TfrmMRProd.sPdGravarClick(Sender: TObject);
  var
    vardir, sDatai, sDataf, sngru, sncli:String;
    ftotalcli:real;

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


     sDatai := datetostr(dtpdatai.date);
     sDatai := bar_is_point(sDatai);

     sDataf := datetostr(dtpdataf.date);
     sDataf := bar_is_point(sDataf);


      with frmdados do
        begin
          dbx_Exec.Active := false;
          dbx_Exec.SQL.Clear;
          dbx_Exec.SQL.Add('Select sum(subtotc) as subtotct, sum(subtotv) as subtotvt from vDvendas where (data >= '+quotedstr(sdatai)+') and ( data <= '+quotedstr(sdataf)+')');
          dbx_Exec.Active := true;

          cds_vDvendas.Active := false;
          Dbx_vDvendas.Active := false;
          Dbx_vDvendas.SQL.Clear;
          Dbx_vDvendas.SQL.Add('Select cuni, sum(QTDE) as QtdeT , DESCRICAO, NCO, TIPOOP, PRCU,  PRVE,  Sum(SUBTOTC) as subtotct, Sum(SUBTOTV) as subtotvt,  DATA,  EOUS, CODIGO,  CFUN,  CREP,  CCLI ');
          Dbx_vDvendas.SQL.Add('     from vDvendas ' );
          Dbx_vDvendas.SQL.Add('group by cuni, QTDE, DESCRICAO, NCO, TIPOOP, PRCU,  PRVE,  SUBTOTC, SUBTOTV,  DATA,  EOUS, CODIGO,  CFUN,  CREP,  CCLI   Having (data >= '+quotedstr(sdatai)+') and ( data <= '+quotedstr(sdataf)+') order by data, descricao');
          Dbx_vDvendas.Active := true;
          cds_vDvendas.Active := true;
        end;
      //endi
      frmrelprodVB := tfrmrelprodVB.Create(self);
      frmrelprodVB.relatorio.Preview;
      frmrelprodVB.Free;
   end;
//endi

if rgbtiporel.ItemIndex = 1 then
   begin

     frmdados.cds_vprodutos.Active := false;
     frmdados.cds_vprodutosqua.DisplayFormat := '';
     frmdados.cds_vprodutos.Active := true;

     frmrelest_cr := tfrmrelest_cr.Create(self);
     frmrelest_cr.relatorio.Preview;
     frmrelest_cr.Free;

     frmdados.cds_vprodutos.Active := false;
     frmdados.cds_vprodutosqua.DisplayFormat := '###,###,##0.000';
     frmdados.cds_vprodutos.Active := true;

   end;
//endi

if rgbtiporel.ItemIndex = 2 then
   begin
      frmrelest := tfrmrelest.Create(self);
      frmrelest.relatorio.Preview;
      frmrelest.Free;

   end;
//endi

if rgbtiporel.ItemIndex = 3 then
   begin

     sDatai := datetostr(dtpdatai.Date);
     sDatai := bar_is_point(sDatai);

     sDataf := datetostr(dtpdataf.date);
     sDataf := bar_is_point(sDataf);

     ftotal := 0;
     ftotalc:= 0;
     fqtdet := 0;

     with frmdados do
       begin

         cds_vprodutos.Active := false;
         cds_vprodutosqua.DisplayFormat := '';
         cds_vprodutos.Active := true;

         dbx_exec.Active := false;
         dbx_exec.SQL.Clear;
         dbx_exec.SQL.Add(dbx_vprodutos.SQL.Text);
         dbx_exec.Active := true;
         while not dbx_exec.Eof do
           begin

             sqp_dados.Close;
             sqp_dados.StoredProcName := 'ptotprodvd';

             sqp_dados.ParamByName('VARDATAI').AsDate := frmMRprod.dtpdatai.date;
             sqp_dados.ParamByName('VARDATAF').AsDate := frmMRprod.dtpdataf.date;

             sqp_dados.ParamByName('VARCPRO').AsInteger := dbx_exec.fieldbyname('codigo').asInteger;
             sqp_dados.ExecProc;

             ftotal := ftotal + frmdados.sqp_dados.ParamByName('vlrtfatu').Asfloat;

             dbx_exec.Next;
           end;
         //endw
         dbx_exec.Active := false;
       end;
     //endth

     frmreldfatu := tfrmreldfatu.Create(self);
     frmreldfatu.relatorio.Preview;
     frmreldfatu.Free;

     frmdados.cds_vprodutos.Active := false;
     frmdados.cds_vprodutosqua.DisplayFormat := '###,###,##0.000';
     frmdados.cds_vprodutos.Active := true;

   end;
//endi

if rgbtiporel.ItemIndex = 4 then
   begin

     sDatai := datetostr(dtpdatai.Date);
     sDatai := bar_is_point(sDatai);

     sDataf := datetostr(dtpdataf.date);
     sDataf := bar_is_point(sDataf);

     ftotal := 0;
     ftotalc := 0;

     with frmdados do
       begin

         cds_vprodutos.Active := false;
         cds_vprodutosqua.DisplayFormat := '';
         cds_vprodutos.Active := true;

         dbx_exec.Active := false;
         dbx_exec.SQL.Clear;
         dbx_exec.SQL.Add(dbx_vprodutos.SQL.Text);
         dbx_exec.Active := true;
         while not dbx_exec.Eof do
           begin

             sqp_dados.Close;
             sqp_dados.StoredProcName := 'ptotprodvd';

             sqp_dados.ParamByName('VARDATAI').AsDate := frmMRprod.dtpdatai.date;
             sqp_dados.ParamByName('VARDATAF').AsDate := frmMRprod.dtpdataf.date;

             sqp_dados.ParamByName('VARCPRO').AsInteger := dbx_exec.fieldbyname('codigo').asInteger;
             sqp_dados.ExecProc;

             ftotal := ftotal + frmdados.sqp_dados.ParamByName('vlrtfatu').Asfloat;
             ftotalc := ftotalc + frmdados.sqp_dados.ParamByName('vlrtcus').Asfloat;

             dbx_exec.Next;
           end;
         //endw
         dbx_exec.Active := false;
       end;
     //endth

     frmreldlu := tfrmreldlu.Create(self);
     frmreldlu.relatorio.Preview;
     frmreldlu.Free;

     frmdados.cds_vprodutos.Active := false;
     frmdados.cds_vprodutosqua.DisplayFormat := '###,###,##0.000';
     frmdados.cds_vprodutos.Active := true;


   end;
//endi


if rgbtiporel.ItemIndex = 5 then
   begin

     sDatai := datetostr(dtpdatai.Date);
     sDatai := bar_is_point(sDatai);

     sDataf := datetostr(dtpdataf.date);
     sDataf := bar_is_point(sDataf);

     ftotal := 0;
     ftotalc := 0;
     fqtdet := 0;

     with frmdados do
       begin

         cdsRanking.Active := true;
         cdsRanking.AddIndex('qtdet', 'qtdet', [ixDescending], 'qtdet', '', 0);
         cdsRanking.IndexName := 'qtdet';

         //cdsRanking.AddIndex('nproqtdet', 'nproqtdet',[ixDescending], 'nproqtdet', '', 0);
         //cdsRanking.IndexName := 'nproqtdet';

         cds_vprodutos.Active := false;
         cds_vprodutosqua.DisplayFormat := '';
         cds_vprodutos.Active := true;

         dbx_exec.Active := false;
         dbx_exec.SQL.Clear;
         dbx_exec.SQL.Add(dbx_vprodutos.SQL.Text);
         dbx_exec.Active := true;

         cdsRanking.First;
         while not cdsRanking.Eof do
           begin
             cdsRanking.Delete;
           end;
         //endi

         while not dbx_exec.Eof do
           begin

             sqp_dados.Close;
             sqp_dados.StoredProcName := 'ptotprodvd';

             sqp_dados.ParamByName('VARDATAI').AsDate := frmMRprod.dtpdatai.date;
             sqp_dados.ParamByName('VARDATAF').AsDate := frmMRprod.dtpdataf.date;

             sqp_dados.ParamByName('VARCPRO').AsInteger := dbx_exec.fieldbyname('codigo').asInteger;
             sqp_dados.ExecProc;

             ftotal  := ftotal + frmdados.sqp_dados.ParamByName('vlrtfatu').Asfloat;
             ftotalc := ftotalc + frmdados.sqp_dados.ParamByName('vlrtcus').Asfloat;
             fqtdet  := sqp_dados.ParamByName('qtdetot').Asfloat;

             cdsRanking.Insert;

             cdsRanking.FieldByName('cpro').Value := dbx_exec.fieldbyname('codigo').asInteger;
             cdsRanking.FieldByName('descricao').Value := dbx_exec.fieldbyname('descricao').asString;
             cdsRanking.FieldByName('qtdet').Value := sqp_dados.ParamByName('qtdetot').Asfloat;
             cdsRanking.FieldByName('nproqtdet').Value := sqp_dados.ParamByName('qtdetot').AsString+dbx_exec.fieldbyname('descricao').asString;


             dbx_exec.Next;


           end;
         //endw
         dbx_exec.Active := false;


       end;
     //endth




     frmrelrankp := tfrmrelrankp.Create(self);
     frmrelrankp.relatorio.Preview;
     frmrelrankp.Free;

     frmdados.cds_vprodutos.Active := false;
     frmdados.cds_vprodutosqua.DisplayFormat := '###,###,##0.000';
     frmdados.cds_vprodutos.Active := true;


   end;
//endi

if rgbtiporel.ItemIndex = 6 then
   begin
      frmrellistpr := tfrmrellistpr.Create(self);
      frmrellistpr.relatorio.Preview;
      frmrellistpr.Free;
   end;
//endi

if rgbtiporel.ItemIndex = 7 then
   begin

      with frmdados do
        begin
          cds_unidade.Active := false;
          dbx_unidade.Active := false;
          dbx_unidade.SQL.Clear;
          dbx_unidade.SQL.Add('Select * from unidade');
          dbx_unidade.Active := true;
          cds_unidade.Active := true;

          cds_dados.Active := false;
          dbx_dados.Active := false;
          dbx_dados.SQL.Clear;
          if  frmpesqvprod.sfiltro <> '' then
              dbx_dados.SQL.add('Select * from vestmin where '+frmpesqvprod.sfiltro)
          else
             dbx_dados.SQL.add('Select * from vestmin');
          //endi
          dbx_dados.Active := true;
          cds_dados.Active := true;

        end;
      //endi

      frmrelestmin := tfrmrelestmin.Create(self);
      frmrelestmin.relatorio.Preview;
      frmrelestmin.Free;

   end;
//endi



if rgbtiporel.ItemIndex = 8 then
   begin

      ftotalcli := 0;

      sDatai := datetostr(dtpdatai.date);
      sDatai := bar_is_point(sDatai);

      sDataf := datetostr(dtpdataf.date);
      sDataf := bar_is_point(sDataf);

      with frmdados do
        begin

          cds_RelPorGrupo.Active := false;
          dbx_RelPorGrupo.Active := false;
          dbx_RelPorGrupo.SQL.Clear;
          dbx_RelPorGrupo.SQL.Add('Select * from RelPorGrupo where (data >= '+quotedstr(sdatai)+') and ( data <= '+quotedstr(sdataf)+') order by ccli, cgru');
          dbx_RelPorGrupo.Active := true;
          cds_RelPorGrupo.Active := true;

          while not cdsrelatorio.Eof do
            begin
              cdsrelatorio.Delete;
            end;
          //endw

          while true do
            begin

              cds_exec.Active := false;
              dbx_exec.Active := false;
              dbx_exec.SQL.Clear;
              dbx_exec.SQL.Add('Select * from grupo where codigo = '+inttostr(cds_RelPorGrupo.fieldbyname('cgru').asInteger) );
              dbx_exec.Active := true;
              sngru := dbx_exec.fieldbyname('descricao').asString;

              cds_exec.Active := false;
              dbx_exec.Active := false;
              dbx_exec.SQL.Clear;
              dbx_exec.SQL.Add('Select * from clientes where codigo = '+inttostr(cds_RelPorGrupo.fieldbyname('ccli').asInteger) );
              dbx_exec.Active := true;
              sncli := dbx_exec.fieldbyname('nome').asString;

              cdsrelatorio.Append;
              cdsrelatorio.FieldByName('icampo1').asInteger := cds_relporgrupo.fieldbyname('ccli').asInteger;
              cdsrelatorio.FieldByName('campo2').asString := sncli;
              cdsrelatorio.FieldByName('campo3').asString := cds_relporgrupo.fieldbyname('data').asString;
              cdsrelatorio.FieldByName('campo4').asString := sngru;
              cdsrelatorio.FieldByName('campo5').asString := formatfloat('###,###,##0.00',cds_relporgrupo.fieldbyname('subtotal').asfloat);
              cdsrelatorio.Post;

              ftotalcli := ftotalcli + cds_relporgrupo.fieldbyname('subtotal').asfloat;

              cds_RelPorGrupo.Next;

              if (cdsrelatorio.FieldByName('icampo1').asInteger <> cds_relporgrupo.fieldbyname('ccli').asInteger) or (cds_RelPorGrupo.Eof) then
                 begin
                   cdsrelatorio.Append;
                   cdsrelatorio.FieldByName('campo4').asString := 'Total';
                   cdsrelatorio.FieldByName('campo5').asString := formatfloat('###,###,##0.00',ftotalcli);
                   cdsrelatorio.Post;

                   cdsrelatorio.Append;
                   cdsrelatorio.FieldByName('campo4').asString := '';
                   cdsrelatorio.Post;



                   ftotalcli := 0;
                 end;
              //endi

              if cds_RelPorGrupo.Eof then
                 break;
              //endi


            end;
          //endw


        end;
      //endi

      frmrelvPorGrupo := tfrmrelvPorGrupo.Create(self);
      frmrelvPorGrupo.relatorio.Preview;
      frmrelvPorGrupo.Free;

   end;
//endi

if rgbtiporel.ItemIndex = 9 then
   begin
      frmrellistprdif := tfrmrellistprdif.Create(self);
      frmrellistprdif.relatorio.Preview;
      frmrellistprdif.Free;
   end;
//endi

if rgbtiporel.ItemIndex = 10 then
   begin
      frmescetiqjato := tfrmescetiqjato.Create(self);
      frmescetiqjato.showmodal;
      frmescetiqjato.Free;
   end;
//endi



end;

procedure TfrmMRProd.FormShow(Sender: TObject);
begin

with frmdados do
   begin

      cdsetiq.Active := false;
      cdsetiq.FileName :=vardir+'etiq.cds';
      if not fileexists(vardir+'etiq.cds') then
         begin
           cdsetiq.CreateDataSet;
           cdsetiq.SaveToFile(vardir+'etiq.cds',dfbinary);
         end;
      //endi
      cdsetiq.Active := true;

      cdsRanking.Active := false;
      cdsRanking.FileName :=vardir+'rankprod.cds';
      if not fileexists(vardir+'rankprod.cds') then
         begin
           cdsRanking.CreateDataSet;
           cdsRanking.SaveToFile(vardir+'rankprod.cds',dfbinary);
         end;
      //endi
      cdsRanking.Active := true;
      //criar indice com active ativo somente qdo precisar utiliza-lo caso contrário não funciona
      cdsRanking.AddIndex('qtdet', 'qtdet', [ixDescending], 'qtdet', '', 0);
      cdsRanking.IndexName := '';
      cdsRanking.Active := false;

      cdsrelatorio.Active := false;
      cdsrelatorio.FileName :=vardir+'relatorio.cds';
      if not fileexists(vardir+'relatorio.cds') then
         begin
           cdsrelatorio.CreateDataSet;
           cdsrelatorio.SaveToFile(vardir+'relatorio.cds',dfbinary);
         end;
      //endi
      cdsrelatorio.Active := true;

   end;
//endth

  spdgravar.Enabled := false;
  dtpdatai.Enabled := false;
  dtpdataf.Enabled := false;
  dtpDataf.Date := Date;
  dtpDataI.Date := Date - frmdados.Cds_Indice.FieldByName('periodo_previo').asInteger;

end;

procedure TfrmMRProd.rgbtiporelClick(Sender: TObject);
begin
spdgravar.Enabled := true;
if rgbtiporel.ItemIndex = 0 then
   begin
     dtpdatai.Enabled := true;
     dtpdataf.Enabled := true;
     dtpdatai.SetFocus;
   end
else
   begin
     if rgbtiporel.ItemIndex = 3 then
        begin
          dtpdatai.Enabled := true;
          dtpdataf.Enabled := true;
          dtpdatai.SetFocus;
        end
     else
        begin
          if rgbtiporel.ItemIndex = 4 then
             begin
               dtpdatai.Enabled := true;
               dtpdataf.Enabled := true;
               dtpdatai.SetFocus;
             end
          else
             begin
               if rgbtiporel.ItemIndex = 5 then
                  begin
                    dtpdatai.Enabled := true;
                    dtpdataf.Enabled := true;
                    dtpdatai.SetFocus;
                  end
               else
                  begin
                    if rgbtiporel.ItemIndex = 8 then
                       begin
                         dtpdatai.Enabled := true;
                         dtpdataf.Enabled := true;
                         dtpdatai.SetFocus;
                       end
                    else
                       begin
                         dtpdatai.Enabled := false;
                         dtpdataf.Enabled := false;
                       end;
                    //endi
                  end;
               //endi
             end;
          //endi

        end;
     //endi
   end;
//endi


end;

procedure TfrmMRProd.spdSairClick(Sender: TObject);
begin
close;
end;

procedure TfrmMRProd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  try
    if fileexists(frmdados.vardir+'rankprod.cds') then
       begin
         frmdados.cdsRanking.Active := false;
         deletefile(frmdados.vardir+'rankprod.cds');
       end;
    //endi
  except
    sMsg := 'não consegui apagar rankprod.cds';
  end;

  try
    if fileexists(frmdados.vardir+'relatorio.cds') then
       begin
         frmdados.cdsrelatorio.Active := false;
         deletefile(frmdados.vardir+'relatorio.cds');
       end;
    //endi
  except
    sMsg := 'não consegui apagar relatorio.cds';
  end;


  frmdados.cdsetiq.Active := false;


  Action:=caFree;
  frmMRprod:=nil;

end;


procedure tfrmmrprod.apagadados;
begin

  frmdados.cdsetiq.First;
  while not frmdados.cdsetiq.Eof do
    begin
      frmdados.cdsetiq.Delete;
    end;
  //endw


end;
end.
