unit uimpproducao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, ExtCtrls, Qrctrls, Db, DBTables, jpeg, dbiprocs, shellapi;

type
  TFrmImpProducao = class(TForm)
    tabConfig: TTable;
    tabConfigCAMPO1: TStringField;
    tabConfigCAMPO2: TStringField;
    tabConfigCAMPO3: TStringField;
    tabConfigCAMPO4: TStringField;
    tabConfigCAMPO5: TStringField;
    tabConfigCAMPO6: TStringField;
    tabConfigCAMPO7: TStringField;
    tabConfigCAMPO8: TStringField;
    tabConfigCAMPO9: TStringField;
    tabConfigCAMPO10: TStringField;
    tabConfigCAMPO11: TStringField;
    tabConfigCAMPO12: TStringField;
    tabConfigCAMPO13: TBooleanField;
    tabConfigCAMPO14: TSmallintField;
    tabConfigCAMPO15: TStringField;
    tabConfigCAMPO16: TStringField;
    tabConfigLOGO: TBlobField;
    relatorio: TQuickRep;
    QRBand1: TQRBand;
    lblCab2: TQRLabel;
    lbltit1: TQRLabel;
    lblCab3: TQRLabel;
    lblCab4: TQRLabel;
    lbltit2: TQRLabel;
    lblcabcodigo: TQRLabel;
    lblOS: TQRLabel;
    QRLabel3: TQRLabel;
    lblNome: TQRLabel;
    lbltitdesc1: TQRLabel;
    lbldesc1: TQRLabel;
    lblid1: TQRLabel;
    lbltitid1: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    GroupFooterBand2: TQRBand;
    GroupHeaderBand2: TQRBand;
    lblcabquant: TQRLabel;
    lblcabuni: TQRLabel;
    lblcabdesc: TQRLabel;
    lblCabSubs: TQRLabel;
    lblcabaltmais: TQRLabel;
    lblCabaltmenos: TQRLabel;
    lblQuant: TQRLabel;
    lblUni: TQRLabel;
    lblnpro: TQRLabel;
    lblsubs: TQRLabel;
    lblaltmais: TQRLabel;
    lblaltmenos: TQRLabel;
    lblcab6: TQRLabel;
    lblcab7: TQRLabel;
    lbldatasehoras: TQRLabel;
    tabindice: TTable;
    imgfoto: TQRImage;
    lbltitid2: TQRLabel;
    lblid2: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    lbltitdesc3: TQRLabel;
    lbldesc3: TQRLabel;
    lbltitdesc4: TQRLabel;
    lbldesc4: TQRLabel;
    lbltitdesc5: TQRLabel;
    lbldesc5: TQRLabel;
    lbltitdesc6: TQRLabel;
    lbldesc6: TQRLabel;
    lbltitdesc7: TQRLabel;
    lbldesc7: TQRLabel;
    lbltitdesc8: TQRLabel;
    lbldesc8: TQRLabel;
    lbltitdesc9: TQRLabel;
    lbldesc9: TQRLabel;
    lbltitdesc10: TQRLabel;
    lbldesc10: TQRLabel;
    lbltitdesc11: TQRLabel;
    lbldesc11: TQRLabel;
    lbltitdesc12: TQRLabel;
    lbldesc12: TQRLabel;
    lbltitdesc13: TQRLabel;
    lbldesc13: TQRLabel;
    lbltitdesc14: TQRLabel;
    lbldesc14: TQRLabel;
    lbltitdesc15: TQRLabel;
    lbldesc15: TQRLabel;
    mmoobs1: TQRMemo;
    mmoobs: TQRMemo;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    lbltitdesc2: TQRLabel;
    lbldesc2: TQRLabel;
    QRShape19: TQRShape;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    QRShape35: TQRShape;
    QRShape36: TQRShape;
    QRShape37: TQRShape;
    QRShape38: TQRShape;
    lbltitdesc17: TQRLabel;
    lbldesc17: TQRLabel;
    lbldesc18: TQRLabel;
    lbltitdesc18: TQRLabel;
    lbltitdesc16: TQRLabel;
    lbldesc16: TQRLabel;
    QRShape33: TQRShape;
    QRLabel1: TQRLabel;
    procedure detalheBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure GroupHeaderBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail2AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure GroupFooterBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure GroupFooterBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure mostrararq_ext;
    procedure relatorioBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
    pNumPag,pNumItem,aCodMod,aCodFun:Integer;
    pTotPeca, pTotMao:Real;

  public
    { Public declarations }
  end;

var
  FrmImpProducao: TFrmImpProducao;

implementation
 uses uGeral, udados, upesqos;
{$R *.DFM}

procedure TFrmImpProducao.mostrararq_ext;
var
 J : TJPEGImage;
 figura : tbitmap;
 S : TMemoryStream;
 vardir:string;
 pathbuf:array[0..255] of char;
 temppath:string;
 bmp:tbitmap;
 extensao:string;
 stream:tstream;
begin


with frmdados do
   begin

      imgfoto.Visible := false;

      if cds_configlogo.BlobSize = 0 then exit;

      //se nã há informação sobre o tipo do arquivo, sai...
      if cds_configfilelogo.AsString = '' then exit;


      //Recupera a extensão do arquivo
      Extensao := uppercase(extractfileext(cds_configfilelogo.AsString));

      //se for image JPG ou BMP carrega para img
      if pos(extensao,'.JPG .JPEG .BMP') <> 0 then
         begin

           Stream := cds_config.CreateBlobStream(cds_configlogo, bmread);
           try
             if extensao = '.BMP' then
                begin
                  figura := tbitmap.Create;
                  try
                    figura.LoadFromStream(stream);
                    imgfoto.Picture.Assign(figura)
                  finally
                    imgfoto.Visible := true;
                    figura.Free;
                  end;
                end
             else
                begin
                  j := tjpegimage.Create;
                  try
                    j.LoadFromStream(Stream);
                    imgfoto.Picture.Assign(j);
                  finally
                    imgfoto.Visible := true;
                    j.Free
                  end;
                end;
             //endi
           finally
             stream.Free;
           end;
         end
      else
         begin
           //recupera o diretorio temp do windows
           gettemppath(sizeof(pathbuf),pathbuf);

           //monta path completo para o nosso diretório temporário
           temppath := strpas(pathbuf)+'\blobs';

           //Verifica se o diretório temporário já existe caso contrario cria
           if not directoryexists(temppath) then
              if not forcedirectories(temppath) then
                 begin
                   messagedlg('Não foi possível criar o diretório temporário!!!',mtError,[mbOK],0);
                   sysutils.Abort;
                 end;
              //endi
           //endi
           temppath := temppath + '\'+cds_configlogo.AsString;

           //Grava bloco no arquivo temporário
           cds_configlogo.SaveToFile(temppath);

           //chama a aplicação associada à extensão do arquivo
           Shellexecute(self.Handle,'open',pchar(temppath),nil,nil,SW_SHOWNORMAL);


         end;
      //endi


    //
    end;

end;

procedure TFrmImpProducao.detalheBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
  var pCodSit, pCodfunreb, pCodfuncon:Integer;
      VarDir, presttexto:String;
      S:TMemoryStream;
      j:tjpegimage;
begin

end;

procedure TFrmImpProducao.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
  var pCodSit, pCodfunreb, pCodfuncon:Integer;
      VarDir, presttexto:String;
      S:TMemoryStream;
      j:tjpegimage;
begin


lblid1.caption := '';
lbltitid1.caption := '';

lbldesc1.caption := '';
lbltitdesc1.caption := '';

lbldesc2.caption := '';
lbltitdesc2.caption := '';

lbldesc3.caption := '';
lbltitdesc3.caption := '';

lbldesc4.caption := '';
lbltitdesc4.caption := '';

lbldesc5.caption := '';
lbltitdesc5.caption := '';

lbldesc6.caption := '';
lbltitdesc6.caption := '';

lbldesc7.caption := '';
lbltitdesc7.caption := '';


lbldesc8.caption := '';
lbltitdesc8.caption := '';

lbldesc9.caption := '';
lbltitdesc9.caption := '';


lbldesc10.caption := '';
lbltitdesc10.caption := '';

lbldesc11.caption := '';
lbltitdesc11.caption := '';

lbldesc12.caption := '';
lbltitdesc12.caption := '';


lbldesc13.caption := '';
lbltitdesc13.caption := '';

lbldesc14.caption := '';
lbltitdesc14.caption := '';

lbldesc15.caption := '';
lbltitdesc15.caption := '';

lbldesc16.caption := '';
lbltitdesc16.caption := '';

lbldesc17.caption := '';
lbltitdesc17.caption := '';

lbldesc18.caption := '';
lbltitdesc18.caption := '';


mostrararq_ext;

lblCab2.Caption := frmdados.cds_config.FieldByName('Campo2').asString;
lblCab3.Caption := frmdados.cds_config.FieldByName('Campo3').asString;
lblCab4.Caption := frmdados.cds_config.FieldByName('Campo4').asString;
if lblcab3.Caption = '' then
   lbltit1.Caption := '';
//endi
if lblcab4.Caption = '' then
   lbltit2.Caption := '';
//endi

lblCab6.Caption  := frmdados.cds_config.FieldByName('Campo6').asString;

if frmdados.Cds_Config.fieldbyname('nro').asString <> '' then
   lblCab6.Caption := lblCab6.Caption + ' N.o '+frmdados.Cds_Config.fieldbyname('nro').asString;
//endi

if frmdados.Cds_Config.fieldbyname('bairro').asString <> '' then
   lblCab6.Caption := lblCab6.Caption + ' - '+frmdados.Cds_Config.fieldbyname('bairro').asString;
//endi

if frmdados.Cds_Config.fieldbyname('campo5').asString <> '' then
   lblCab6.Caption := lblCab6.Caption + ' - '+frmdados.Cds_Config.fieldbyname('campo5').asString;
//endi

if frmdados.Cds_Config.fieldbyname('campo15').asString <> '' then
   lblCab6.Caption := lblCab6.Caption + ' - '+frmdados.Cds_Config.fieldbyname('campo15').asString;
//endi

if frmdados.Cds_Config.fieldbyname('campo16').asString <> '' then
   lblCab6.Caption := lblCab6.Caption + ' - '+frmdados.Cds_Config.fieldbyname('campo16').asString;
//endi

lblCab7.Caption  := frmdados.cds_config.FieldByName('Campo7').asString;

if frmdados.Cds_Config.fieldbyname('fone').asString <> '' then
   lblCab7.Caption := lblCab7.Caption + ' '+frmdados.Cds_Config.fieldbyname('fone').asString;
//endi

lblcabcodigo.Caption := 'Ordem de Produção nº';
lblOs.Caption := FormatFloat('00000',frmdados.Cds_sVenda.FieldByName('nos').asFloat)+'.'+FormatFloat('00000',frmdados.Cds_sVenda.FieldByName('norc').asFloat);








lblNome.Caption := frmdados.Cds_Clientes.FieldByName('Nome').asString;



   with frmdados do
     begin


       if (cds_indice.FieldByName('ID1').asString <> '') then
           begin
             lbltitid1.Caption := cds_indice.FieldByName('ID1').asString;
             lbltitid1.Visible := true;

             lblid1.Caption := cds_svenda.FieldByName('ID1').asString;
             lblid1.Visible := true;

           end;
       //endi


       if (cds_indice.FieldByName('ID2').asString <> '') then
           begin
             lbltitid2.Caption := cds_indice.FieldByName('ID2').asString;
             lbltitid2.Visible := true;

             lblid2.Caption := cds_svenda.FieldByName('ID2').asString;
             lblid2.Visible := true;

           end;
       //endi



       if (cds_indice.FieldByName('DESC1').asString <> '') then
          begin
             lbltitdesc1.Caption := cds_indice.FieldByName('desc1').asString;
             lbltitdesc1.Visible := true;

             lbldesc1.Caption := cds_svenda.FieldByName('desc1').asString;
             lbldesc1.Visible := true;

          end;
       //endi
       if (cds_indice.FieldByName('DESC2').asString <> '') then
          begin
             lbltitdesc2.Caption := cds_indice.FieldByName('desc2').asString;
             lbltitdesc2.Visible := true;

             lbldesc2.Caption := cds_svenda.FieldByName('desc2').asString;
             lbldesc2.Visible := true;

          end;
       //endi
       if (cds_indice.FieldByName('DESC3').asString <> '') then
          begin
             lbltitdesc3.Caption := cds_indice.FieldByName('desc3').asString;
             lbltitdesc3.Visible := true;

             lbldesc3.Caption := cds_svenda.FieldByName('desc3').asString;
             lbldesc3.Visible := true;

          end;
       //endi
       if (cds_indice.FieldByName('DESC4').asString <> '') then
          begin
             lbltitdesc4.Caption := cds_indice.FieldByName('desc4').asString;
             lbltitdesc4.Visible := true;

             lbldesc4.Caption := cds_svenda.FieldByName('desc4').asString;
             lbldesc4.Visible := true;

          end;
       //endi

       if (cds_indice.FieldByName('DESC5').asString <> '') then
          begin
             lbltitdesc5.Caption := cds_indice.FieldByName('desc5').asString;
             lbltitdesc5.Visible := true;

             lbldesc5.Caption := cds_svenda.FieldByName('desc5').asString;
             lbldesc5.Visible := true;

          end;
       //endi
       if (cds_indice.FieldByName('DESC6').asString <> '') then
          begin
             lbltitdesc6.Caption := cds_indice.FieldByName('desc6').asString;
             lbltitdesc6.Visible := true;

             lbldesc6.Caption := cds_svenda.FieldByName('desc6').asString;
             lbldesc6.Visible := true;

          end;
       //endi
       if (cds_indice.FieldByName('DESC7').asString <> '') then
          begin
             lbltitdesc7.Caption := cds_indice.FieldByName('desc7').asString;
             lbltitdesc7.Visible := true;

             lbldesc7.Caption := cds_svenda.FieldByName('desc7').asString;
             lbldesc7.Visible := true;

          end;
       //endi

       if (cds_indice.FieldByName('DESC8').asString <> '') then
          begin
             lbltitdesc8.Caption := cds_indice.FieldByName('desc8').asString;
             lbltitdesc8.Visible := true;

             lbldesc8.Caption := cds_svenda.FieldByName('desc8').asString;
             lbldesc8.Visible := true;

          end;
       //endi

       if (cds_indice.FieldByName('DESC9').asString <> '') then
          begin
             lbltitdesc9.Caption := cds_indice.FieldByName('desc9').asString;
             lbltitdesc9.Visible := true;

             lbldesc9.Caption := cds_svenda.FieldByName('desc9').asString;
             lbldesc9.Visible := true;

          end;
       //endi


       if (cds_indice.FieldByName('DESC10').asString <> '') then
          begin
             lbltitdesc10.Caption := cds_indice.FieldByName('desc10').asString;
             lbltitdesc10.Visible := true;

             lbldesc10.Caption := cds_svenda.FieldByName('desc10').asString;
             lbldesc10.Visible := true;

          end;
       //endi


       if (cds_indice.FieldByName('DESC11').asString <> '') then
          begin
             lbltitdesc11.Caption := cds_indice.FieldByName('desc11').asString;
             lbltitdesc11.Visible := true;

             lbldesc11.Caption := cds_svenda.FieldByName('desc11').asString;
             lbldesc11.Visible := true;

          end;
       //endi


       if (cds_indice.FieldByName('DESC12').asString <> '') then
          begin
             lbltitdesc12.Caption := cds_indice.FieldByName('desc12').asString;
             lbltitdesc12.Visible := true;

             lbldesc12.Caption := cds_svenda.FieldByName('desc12').asString;
             lbldesc12.Visible := true;

          end;
       //endi


       if (cds_indice.FieldByName('DESC13').asString <> '') then
          begin
             lbltitdesc13.Caption := cds_indice.FieldByName('desc13').asString;
             lbltitdesc13.Visible := true;

             lbldesc13.Caption := cds_svenda.FieldByName('desc13').asString;
             lbldesc13.Visible := true;

          end;
       //endi

       if (cds_indice.FieldByName('DESC14').asString <> '') then
          begin
             lbltitdesc14.Caption := cds_indice.FieldByName('desc14').asString;
             lbltitdesc14.Visible := true;

             lbldesc14.Caption := cds_svenda.FieldByName('desc14').asString;
             lbldesc14.Visible := true;

          end;
       //endi

       if (cds_indice.FieldByName('DESC15').asString <> '') then
          begin
             lbltitdesc15.Caption := cds_indice.FieldByName('desc15').asString;
             lbltitdesc15.Visible := true;

             lbldesc15.Caption := cds_svenda.FieldByName('desc15').asString;
             lbldesc15.Visible := true;

          end;
       //endi


       if (cds_indice.FieldByName('DESC16').asString <> '') then
          begin
             lbltitdesc16.Caption := cds_indice.FieldByName('desc16').asString;
             lbltitdesc16.Visible := true;

             lbldesc16.Caption := cds_svenda.FieldByName('desc16').asString;
             lbldesc16.Visible := true;

          end;
       //endi


       if (cds_indice.FieldByName('DESC17').asString <> '') then
          begin
             lbltitdesc17.Caption := cds_indice.FieldByName('desc17').asString;
             lbltitdesc17.Visible := true;

             lbldesc17.Caption := cds_svenda.FieldByName('desc17').asString;
             lbldesc17.Visible := true;

          end;
       //endi


       if (cds_indice.FieldByName('DESC18').asString <> '') then
          begin
             lbltitdesc18.Caption := cds_indice.FieldByName('desc18').asString;
             lbltitdesc18.Visible := true;

             lbldesc18.Caption := cds_svenda.FieldByName('desc18').asString;
             lbldesc18.Visible := true;

          end;
       //endi



     end;
   //endi


  mmoobs1.Lines.Clear;
  mmoobs1.Lines.Add(frmdados.Cds_sVenda.fieldbyname('obs').asString);

  mmoobs.Lines.Clear;
  mmoobs.Lines.Add(frmdados.Cds_Indice.fieldbyname('obs1').asString);



pCodfunreb := frmdados.Cds_sVenda.FieldByName('cfunreb').asInteger;
pCodfuncon := frmdados.Cds_sVenda.FieldByName('cfuncon').asInteger;

//try
  //imglogo.Picture := frmprincipal.imglogo.Picture;
//except
//end;
lbldatasehoras.Caption :=  frmdados.cds_svenda.FieldByName('datacad').asString+'-'+frmdados.cds_svenda.FieldByName('hrcad').asString;
if frmdados.Cds_sVenda.FieldByName('datafec').asString <> '' then
   lbldatasehoras.Caption := lbldatasehoras.Caption + ' Saída: '+frmdados.Cds_sVenda.FieldByName('datafec').asString+'-'+frmdados.Cds_sVenda.FieldByName('hrfec').asString;
//endi

end;

procedure TFrmImpProducao.GroupHeaderBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
if frmdados.Cds_dVenda.RecordCount > 0  then
   begin
     lblcabquant.Caption := 'Quant.';
     lblcabuni.Caption := 'Unidade';
     lblcabdesc.Caption := 'Código';
     lblcabsubs.Caption := 'Substituição';
     lblcabaltmais.Caption := 'ALT +';
     lblcabaltmenos.Caption := 'ALT -';
   end
else
   begin
     lblcabquant.Caption := '';
     lblcabuni.Caption := '';
     lblcabdesc.Caption := '';
     lblcabsubs.Caption := '';
     lblcabaltmais.Caption := '';
     lblcabaltmenos.Caption := '';
   end;
//endi

end;

procedure TFrmImpProducao.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
 if frmdados.Cds_dVenda.RecordCount > 0 then
    begin
      pNumItem := pNumItem + 1;
      lblnpro.Caption := frmdados.Cds_dVenda.FieldByName('nPro').asString;
      lblUNI.Caption := frmdados.cds_dvenda.FieldByName('nunid').asString;
      lblQuant.Caption := formatfloat('###,##0.000',frmdados.cds_dvenda.FieldByName('Qtde').asFloat);
      lblaltmais.Caption := frmdados.cds_dvenda.FieldByName('altmais').AsString;
      lblaltmenos.Caption := frmdados.cds_dvenda.FieldByName('altmenos').asString;
      lblsubs.Caption := frmdados.Cds_dVenda.FieldByName('subs').asString;
    end
 else
    begin
      lblnpro.Caption := '';
      lblUNI.Caption := '';
      lblQuant.Caption := '';
      lblaltmais.Caption := '';
      lblaltmenos.Caption := '';
      lblsubs.Caption := '';
    end;
 //endi

end;

procedure TFrmImpProducao.QRSubDetail2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
try
  aCodMod := frmdados.Cds_exec.fieldbyname('cMod').asInteger;
  aCodFun := frmdados.cds_exec.FieldByName('cFun').asInteger;
except
end;

end;

procedure TFrmImpProducao.GroupFooterBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  mmoobs1.Lines.Clear;
  mmoobs1.Lines.Add(frmdados.Cds_sVenda.fieldbyname('obs').asString);



end;

procedure TFrmImpProducao.GroupFooterBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
  var
    vardir:string;
begin
  mmoobs.Lines.Clear;
  mmoobs.Lines.Add(frmdados.Cds_Indice.fieldbyname('obs1').asString);

end;

procedure TFrmImpProducao.relatorioBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin

  pNumPag  := 0;
  pNumItem := 0;
  aCodMod  := 0;
  aCodFun  := 0;
  pTotPeca := 0;
  pTotMao  := 0;
  
  frmdados.Cds_dvenda.Active := false;
  frmdados.Dbx_dvenda.Active := false;
  frmdados.Dbx_dvenda.SQL.Clear;
  frmdados.Dbx_dvenda.SQL.Add('Select * from dvenda where codsvenda = '+ inttostr( frmdados.cds_svenda.fieldbyname('codigo').asInteger ) );
  frmdados.Dbx_dvenda.Active := true;
  frmdados.Cds_dvenda.Active := true;

  frmdados.Cds_Exec.Active := false;
  frmdados.Dbx_Exec.Active := false;
  frmdados.Dbx_Exec.SQL.Clear;
  frmdados.Dbx_Exec.SQL.Add('Select * from dmobra where codsvenda = '+ inttostr( frmdados.cds_svenda.fieldbyname('codigo').asInteger ) );
  frmdados.Dbx_Exec.Active := true;
  frmdados.Cds_Exec.Active := true;

  frmdados.Cds_Vencto.Active := false;
  frmdados.Dbx_Vencto.Active := false;
  frmdados.Dbx_Vencto.SQL.Clear;
  frmdados.Dbx_Vencto.SQL.Add('Select * from Vencimentos where c_svenda = '+ inttostr( frmdados.cds_svenda.fieldbyname('codigo').asInteger ) );
  frmdados.Dbx_Vencto.Active := true;
  frmdados.Cds_Vencto.Active := true;

end;

end.
