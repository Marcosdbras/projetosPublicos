unit uimpost;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, ExtCtrls, Qrctrls, Db, DBTables, jpeg, dbiprocs, shellapi;

type
  TFrmImpOst = class(TForm)
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
    QRLabel4: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel26: TQRLabel;
    lblContato: TQRLabel;
    lblTelefone: TQRLabel;
    lblCidade: TQRLabel;
    lblComplemento: TQRLabel;
    lblEndereco: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel31: TQRLabel;
    lblemail: TQRLabel;
    lblCelular: TQRLabel;
    lblEstado: TQRLabel;
    lblBairro: TQRLabel;
    QRLabel12: TQRLabel;
    lblCep: TQRLabel;
    lblrg: TQRLabel;
    lblcpf: TQRLabel;
    QRLabel54: TQRLabel;
    QRLabel58: TQRLabel;
    QRShape1: TQRShape;
    lbltitdesc1: TQRLabel;
    lbldesc1: TQRLabel;
    lblid1: TQRLabel;
    lbltitid1: TQRLabel;
    lbltitdesc5: TQRLabel;
    lbltitdesc2: TQRLabel;
    lbldesc2: TQRLabel;
    lbldesc5: TQRLabel;
    lbltitdesc6: TQRLabel;
    lbldesc6: TQRLabel;
    lbldesc3: TQRLabel;
    lbltitdesc3: TQRLabel;
    lbltitdesc4: TQRLabel;
    lbldesc4: TQRLabel;
    QRShape3: TQRShape;
    QRSubDetail1: TQRSubDetail;
    QRSubDetail2: TQRSubDetail;
    QRSubDetail3: TQRSubDetail;
    GroupFooterBand1: TQRBand;
    GroupHeaderBand1: TQRBand;
    GroupFooterBand2: TQRBand;
    GroupHeaderBand2: TQRBand;
    lblcabquant: TQRLabel;
    lblcabuni: TQRLabel;
    lblcabdesc: TQRLabel;
    lblcabcod: TQRLabel;
    lblcabunit: TQRLabel;
    lblcabtot: TQRLabel;
    lblQuant: TQRLabel;
    lblUni: TQRLabel;
    lblnpro: TQRLabel;
    lblcodigo: TQRLabel;
    lblPrve: TQRLabel;
    lblsubtotal: TQRLabel;
    QRLabel16: TQRLabel;
    lbltotpeca: TQRLabel;
    QRShape6: TQRShape;
    lblcabtipo2: TQRLabel;
    lblCabQuant2: TQRLabel;
    lblCabDesc2: TQRLabel;
    lblCabtot2: TQRLabel;
    lblModulo: TQRLabel;
    lblQuantc: TQRLabel;
    lblnproC: TQRLabel;
    lblSubtotalC: TQRLabel;
    QRLabel20: TQRLabel;
    lbltotmao: TQRLabel;
    lbltitdesc7: TQRLabel;
    lbldesc7: TQRLabel;
    GroupHeaderBand3: TQRBand;
    QRShape7: TQRShape;
    QRShape4: TQRShape;
    lblcabparc: TQRLabel;
    lblcabdtv: TQRLabel;
    lblcabdoc: TQRLabel;
    lblcabvalor: TQRLabel;
    lblparc: TQRLabel;
    lbldtv: TQRLabel;
    lbldoc: TQRLabel;
    lblvalor: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel24: TQRLabel;
    lblpdesc: TQRLabel;
    lblvdesc: TQRLabel;
    lbltotliquido: TQRLabel;
    lbltotos: TQRLabel;
    lblcab6: TQRLabel;
    lblcab7: TQRLabel;
    GroupFooterBand3: TQRBand;
    mmoobs: TQRMemo;
    QRShape5: TQRShape;
    QRLabel2: TQRLabel;
    lbldin: TQRLabel;
    QRLabel28: TQRLabel;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    lbltxt: TQRLabel;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    lbldatasehoras: TQRLabel;
    mmoobs1: TQRMemo;
    lblmens: TQRLabel;
    tabindice: TTable;
    imgfoto: TQRImage;
    QRLabel1: TQRLabel;
    lblemailfirma: TQRLabel;
    procedure detalheBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure GroupHeaderBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure GroupFooterBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure GroupHeaderBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail2AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure GroupFooterBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure GroupHeaderBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail3BeforePrint(Sender: TQRCustomBand;
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
  FrmImpOst: TFrmImpOst;

implementation
 uses uGeral, udados, upesqost;
{$R *.DFM}

procedure TFrmImpOst.mostrararq_ext;
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

procedure TFrmImpOst.detalheBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
  var pCodSit, pCodfunreb, pCodfuncon:Integer;
      VarDir, presttexto:String;
      S:TMemoryStream;
      j:tjpegimage;
begin

end;

procedure TFrmImpOst.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
  var pCodSit, pCodfunreb, pCodfuncon:Integer;
      VarDir, presttexto:String;
      S:TMemoryStream;
      j:tjpegimage;
begin

lblid1.Visible := false;
lbltitid1.Visible := false;

lbldesc1.Visible := false;
lbltitdesc1.Visible := false;

lbldesc2.Visible := false;
lbltitdesc2.Visible := false;

lbldesc3.Visible := false;
lbltitdesc2.Visible := false;

lbldesc4.Visible := false;
lbltitdesc2.Visible := false;

lbldesc5.Visible := false;
lbltitdesc2.Visible := false;

lbldesc6.Visible := false;
lbltitdesc2.Visible := false;

lbldesc7.Visible := false;
lbltitdesc2.Visible := false;

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

if frmpesqost.rgbtipoop.ItemIndex  = 0 then
   begin
     lblcabcodigo.Caption := 'Nº do Orçamento';
   end
else
   begin
     lblcabcodigo.Caption := 'Ordem de Serviço nº';
   end;
//endi

lblOs.Caption := FormatFloat('00000',frmdados.Cds_sVenda.FieldByName('nos').asFloat);

lblNome.Caption := frmdados.Cds_Clientes.FieldByName('Nome').asString;
lblEndereco.Caption := frmdados.Cds_Clientes.FieldByName('Endent').asString;
lblComplemento.Caption := frmdados.Cds_Clientes.FieldByName('Complent').asString;
lblBairro.Caption := frmdados.Cds_Clientes.FieldByName('Bairroent').asString;
lblCidade.Caption := frmdados.Cds_Clientes.FieldByName('Cidadeent').asString;
lblEstado.Caption := frmdados.Cds_Clientes.FieldByName('Estadoent').asString;
lblCep.Caption := frmdados.Cds_Clientes.FieldByName('Cepent').asString;
lblTelefone.Caption := frmdados.Cds_Clientes.FieldByName('Telefones').asString;
lblContato.Caption := frmdados.Cds_Clientes.FieldByName('Contato').asString;
lblCpf.Caption := frmdados.Cds_Clientes.FieldByName('cpf').asString;
lblrg.Caption := frmdados.Cds_Clientes.FieldByName('ie').asString;
lblCelular.Caption := frmdados.Cds_Clientes.FieldByName('Celular').asString;
lblemail.Caption := frmdados.Cds_Clientes.FieldByName('email').asString;



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


     end;
   //endi

pCodfunreb := frmdados.Cds_sVenda.FieldByName('cfunreb').asInteger;
pCodfuncon := frmdados.Cds_sVenda.FieldByName('cfuncon').asInteger;

//try
  //imglogo.Picture := frmprincipal.imglogo.Picture;
//except
//end;
lbldatasehoras.Caption :=  'Entrada: '+frmdados.cds_svenda.FieldByName('datacad').asString+'-'+frmdados.cds_svenda.FieldByName('hrcad').asString;
if frmdados.Cds_sVenda.FieldByName('datafec').asString <> '' then
   lbldatasehoras.Caption := lbldatasehoras.Caption + ' Saída: '+frmdados.Cds_sVenda.FieldByName('datafec').asString+'-'+frmdados.Cds_sVenda.FieldByName('hrfec').asString;
//endi

end;

procedure TFrmImpOst.GroupHeaderBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
if frmdados.Cds_dVenda.RecordCount > 0  then
   begin
     lblcabquant.Caption := 'Quant.';
     lblcabuni.Caption := 'Unidade';
     lblcabdesc.Caption := 'Descrição';
     lblcabcod.Caption := 'Código';
     lblcabunit.Caption := 'Pr. Unitário';
     lblcabtot.Caption := 'Pr. Total';
   end
else
   begin
     lblcabquant.Caption := '';
     lblcabuni.Caption := '';
     lblcabdesc.Caption := '';
     lblcabcod.Caption := '';
     lblcabunit.Caption := '';
     lblcabtot.Caption := '';
   end;
//endi

end;

procedure TFrmImpOst.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
 if frmdados.Cds_dVenda.RecordCount > 0 then
    begin
      pNumItem := pNumItem + 1;
      lblnpro.Caption := frmdados.Cds_dVenda.FieldByName('nPro').asString;
      lblUNI.Caption := frmdados.cds_dvenda.FieldByName('nunid').asString;
      lblQuant.Caption := formatfloat('###,##0.00',frmdados.cds_dvenda.FieldByName('Qtde').asFloat);
      lblPrve.Caption := formatfloat('###,##0.00',frmdados.cds_dvenda.FieldByName('Prve').asFloat);
      lblSubtotal.Caption := formatfloat('###,##0.00',frmdados.cds_dvenda.FieldByName('SubTotal').asFloat);
      lblCodigo.Caption := formatfloat('00000',frmdados.Cds_dVenda.FieldByName('cPro').asfloat);
      ptotPeca := ptotPeca + Strtofloat(tirapontos(lblSubtotal.Caption));
    end
 else
    begin
      lblnpro.Caption := '';
      lblUNI.Caption := '';
      lblQuant.Caption := '';
      lblPrve.Caption := '';
      lblSubtotal.Caption := '';
      lblCodigo.Caption := '';
    end;
 //endi

end;

procedure TFrmImpOst.GroupFooterBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  lbltotPeca.Caption :=  formatfloat('###,##0.00',ptotPeca);

end;

procedure TFrmImpOst.GroupHeaderBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);

begin

if frmdados.Cds_exec.RecordCount  > 0 then
   begin
     lblcabtipo2.Caption := 'Tipo';
     lblcabquant2.Caption := 'Quant.';
     lblcabdesc2.Caption := 'Descrição do Serviço';
     //lblcabunit2.Caption := 'Pr. Unitário';
     lblcabtot2.Caption := 'Pr. Total';
     //lblCabMec.Caption := 'Mecânico';
   end
else
   begin
     lblcabtipo2.Caption := '';
     lblcabquant2.Caption := '';
     lblcabdesc2.Caption := '';
     //lblcabunit2.Caption := '';
     lblcabtot2.Caption := '';
     //lblCabMec.Caption := '';
   end;
//endi

end;

procedure TFrmImpOst.QRSubDetail2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
if frmdados.Cds_exec.RecordCount > 0 then
   begin
     pNumItem := pNumItem + 1;
     lblnproC.Caption := frmdados.cds_exec.FieldByName('ndesc').asString;
     lblQuantC.Caption := formatfloat('###,##0.00',frmdados.cds_exec.FieldByName('Qtde').asFloat);
     lblSubtotalC.Caption := formatfloat('###,##0.00',frmdados.Cds_exec.FieldByName('SubTotal').asFloat);
     ptotMao := ptotMao + frmdados.Cds_exec.FieldByName('SubTotal').asFloat;
     if aCodMod = frmdados.Cds_exec.FieldByName('cMod').asInteger then
        begin
          lblModulo.Caption := '     _';
        end
     else
        begin
          frmdados.cds_modulo.Locate('codigo',frmdados.Cds_exec.FieldByName('cMod').asInteger,[]);
          lblmodulo.Caption := frmdados.Cds_Modulo.fieldbyname('descricao').asString;
        end;
     //endi
     if aCodFun = frmdados.Cds_exec.FieldByName('cFun').asInteger then
        begin
          if frmdados.Cds_exec.FieldByName('cFun').asInteger = 0 then
             //lblMecanico.Caption := ''
          else
             //lblMecanico.Caption := '     _';
          //endi
        end
     else
        begin
          if frmdados.cds_funcionarios.Locate('codigo',frmdados.Cds_exec.FieldByName('cfun').asInteger,[]) then
             //lblmecanico.Caption := frmpesqorse.tabfunc.fieldbyname('Nome').asString
          else
             //lblMecanico.Caption := '';
          //endi
        end;
     //endi
   end
else
   begin
     lblnproC.Caption := '';
     lblQuantC.Caption := '';
     //lblPrveC.Caption := '';
     lblmodulo.caption := '';
     lblSubtotalC.Caption := '';
     //lblMecanico.Caption := '';
   end;
//endi

end;

procedure TFrmImpOst.QRSubDetail2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
try
  aCodMod := frmdados.Cds_exec.fieldbyname('cMod').asInteger;
  aCodFun := frmdados.cds_exec.FieldByName('cFun').asInteger;
except
end;

end;

procedure TFrmImpOst.GroupFooterBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  mmoobs1.Lines.Clear;
  mmoobs1.Lines.Add(frmdados.Cds_sVenda.fieldbyname('obs1').asString);
  lbltotMao.Caption :=  formatfloat('###,##0.00',ptotMao);
  lbltotos.Caption := formatfloat('###,###,##0.00',ptotpeca+ptotmao);
  lblpdesc.Caption := formatfloat('###,###,##0.00',frmdados.Cds_sVenda.fieldbyname('pdesc_p').asfloat);
  lblvdesc.Caption := formatfloat('###,###,##0.00',frmdados.Cds_sVenda.fieldbyname('valdesc_p').asfloat);
  lbltotliquido.Caption := formatfloat('###,###,##0.00', frmdados.Cds_sVenda.fieldbyname('liquido_p').asfloat);

end;

procedure TFrmImpOst.GroupHeaderBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
if frmdados.Cds_sVenda.fieldbyname('din_p').asfloat > frmdados.Cds_sVenda.fieldbyname('liquido_p').asfloat then
   lbldin.Caption := formatfloat('###,###,##0.00',frmdados.Cds_sVenda.fieldbyname('liquido_p').asfloat)
else
   lbldin.Caption := formatfloat('###,###,##0.00',frmdados.Cds_sVenda.fieldbyname('din_p').asfloat);
//endi

if frmdados.Cds_vencto.RecordCount > 0 then
   begin
     lblcabparc.Caption := 'Parcelamento';
     if frmpesqost.rgbtipoop.ItemIndex = 0 then
        begin
          lblcabdtv.Caption := 'Prazo(dias)';
        end
     else
        begin
          lblcabdtv.Caption := 'Data de Vencimento';
        end;
     //endi
     lblcabdesc2.Caption := 'Descrição do Serviço';
     lblcabdoc.Caption := 'Documento';
     lblcabvalor.Caption := 'Valor';
     //lblCabMec.Caption := 'Mecânico';
   end
else
   begin
     lblcabparc.Caption := '';
     lblcabdtv.Caption := '';
     lblcabdesc2.Caption := '';
     lblcabdoc.Caption := '';
     lblcabvalor.Caption := '';
   end;
//endi

end;

procedure TFrmImpOst.QRSubDetail3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
 if frmdados.Cds_Vencto.RecordCount > 0 then
    begin
      pNumItem := pNumItem + 1;
      lblparc.Caption := frmdados.Cds_Vencto.FieldByName('parc').asString;
      if frmpesqost.rgbtipoop.ItemIndex  = 0 then
         begin
           lbldtv.Caption := frmdados.Cds_vencto.FieldByName('prazo').asString;
         end
      else
         begin
           lbldtv.Caption := frmdados.Cds_Vencto.FieldByName('dtv').asString;
         end;
      //endi
      lbldoc.Caption := frmdados.Cds_Vencto.FieldByName('doc').asString;
      lblvalor.Caption := formatfloat('###,##0.00',frmdados.cds_vencto.FieldByName('valor').asFloat);
    end
 else
    begin
      lblparc.Caption := '';
      lbldtv.Caption := '';
      lbldoc.Caption := '';
      lblvalor.Caption := '';
    end;
 //endi

end;

procedure TFrmImpOst.GroupFooterBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
  var
    vardir:string;
begin
  mmoobs.Lines.Clear;
  mmoobs.Lines.Add(frmdados.Cds_sVenda.fieldbyname('obs').asString);
  lbltxt.Caption := '';

  lblmens.Caption := frmdados.cds_indice.fieldbyname('mens').asString;
  lblemailfirma.Caption  := frmdados.cds_config.FieldByName('Campo8').asString;

end;

procedure TFrmImpOst.relatorioBeforePrint(Sender: TCustomQuickRep;
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
