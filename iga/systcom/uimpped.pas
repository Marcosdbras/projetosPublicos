unit uimpped;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, ExtCtrls, Qrctrls, Db, DBTables, jpeg, dbiprocs, shellapi;

type
  TFrmImpPed = class(TForm)
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
    QRShape3: TQRShape;
    QRSubDetail1: TQRSubDetail;
    QRSubDetail3: TQRSubDetail;
    GroupFooterBand1: TQRBand;
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
    lblcab6: TQRLabel;
    lblcab7: TQRLabel;
    QRLabel2: TQRLabel;
    lbldin: TQRLabel;
    QRLabel28: TQRLabel;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    lbldatasehoras: TQRLabel;
    tabindice: TTable;
    imgfoto: TQRImage;
    lblCabMarca: TQRLabel;
    lbldescmarca: TQRLabel;
    QRLabel5: TQRLabel;
    lblnumero: TQRLabel;
    GroupFooterBand3: TQRBand;
    mmoobs1: TQRMemo;
    QRLabel14: TQRLabel;
    QRLabel18: TQRLabel;
    lblpdesc: TQRLabel;
    QRLabel22: TQRLabel;
    lbltotos: TQRLabel;
    lblvdesc: TQRLabel;
    lbltotliquido: TQRLabel;
    QRLabel24: TQRLabel;
    QRShape9: TQRShape;
    lbltxt: TQRLabel;
    lblmens: TQRLabel;
    QRShape10: TQRShape;
    QRLabel1: TQRLabel;
    lblemailfirma: TQRLabel;
    lblcoddest: TQRLabel;
    lblddd: TQRLabel;
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
    procedure QRSubDetail2AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
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
  FrmImpPed: TFrmImpPed;

implementation
 uses uGeral, udados, upesqvd;
{$R *.DFM}

procedure TFrmImpPed.mostrararq_ext;
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

procedure TFrmImpPed.detalheBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
  var pCodSit, pCodfunreb, pCodfuncon:Integer;
      VarDir, presttexto:String;
      S:TMemoryStream;
      j:tjpegimage;
begin

end;

procedure TFrmImpPed.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
  var pCodSit, pCodfunreb, pCodfuncon:Integer;
      VarDir, presttexto:String;
      S:TMemoryStream;
      j:tjpegimage;
      shora:string;
begin

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

if frmpesqvd.rgbtipoop.ItemIndex  = 0 then
   begin
     lblcabcodigo.Caption := 'Nº do Orçamento';
   end
else
   begin
     lblcabcodigo.Caption := 'Pedido nº';
   end;
//endi

lblOs.Caption := FormatFloat('00000',frmdados.Cds_sVenda.FieldByName('nped').asFloat);

lblcoddest.Caption := frmdados.Cds_Clientes.FieldByName('codigo').asString;



lblNome.Caption := frmdados.Cds_Clientes.FieldByName('Nome').asString;
lblEndereco.Caption := frmdados.Cds_Clientes.FieldByName('Endent').asString;
lblnumero.Caption := frmdados.Cds_Clientes.FieldByName('nroent').asString;

lblComplemento.Caption := frmdados.Cds_Clientes.FieldByName('Complent').asString;
lblBairro.Caption := frmdados.Cds_Clientes.FieldByName('Bairroent').asString;
lblCidade.Caption := frmdados.Cds_Clientes.FieldByName('Cidadeent').asString;
lblEstado.Caption := frmdados.Cds_Clientes.FieldByName('Estadoent').asString;
lblCep.Caption := frmdados.Cds_Clientes.FieldByName('Cepent').asString;
lblTelefone.Caption := frmdados.Cds_Clientes.FieldByName('Telefones').asString;

lblddd.Caption := frmdados.Cds_Clientes.FieldByName('dddfs').asString;


lblContato.Caption := frmdados.Cds_Clientes.FieldByName('Contato').asString;
lblCpf.Caption := frmdados.Cds_Clientes.FieldByName('cpf').asString;
lblrg.Caption := frmdados.Cds_Clientes.FieldByName('ie').asString;
lblCelular.Caption := frmdados.Cds_Clientes.FieldByName('Celular').asString;
lblemail.Caption := frmdados.Cds_Clientes.FieldByName('email').asString;

pCodfunreb := frmdados.Cds_sVenda.FieldByName('cfunreb').asInteger;
pCodfuncon := frmdados.Cds_sVenda.FieldByName('cfuncon').asInteger;

lbldatasehoras.Caption := datetimetostr(now);


//try
  //imglogo.Picture := frmprincipal.imglogo.Picture;
//except
//end;
//lbldatasehoras.Caption :=  frmdados.cds_svenda.FieldByName('datacad').asString+' - '+frmdados.cds_svenda.FieldByName('hrcad').asString;
//if frmdados.Cds_sVenda.FieldByName('datafec').asString <> '' then
//   lbldatasehoras.Caption := lbldatasehoras.Caption + ' Saída: '+frmdados.Cds_sVenda.FieldByName('datafec').asString+'-'+frmdados.Cds_sVenda.FieldByName('hrfec').asString;
//endi



end;

procedure TFrmImpPed.GroupHeaderBand2BeforePrint(Sender: TQRCustomBand;
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
     lblcabmarca.Caption := 'Marca';
   end
else
   begin
     lblcabquant.Caption := '';
     lblcabuni.Caption := '';
     lblcabdesc.Caption := '';
     lblcabcod.Caption := '';
     lblcabunit.Caption := '';
     lblcabtot.Caption := '';
     lblcabmarca.Caption := '';
   end;
//endi

end;

procedure TFrmImpPed.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
 lbldescmarca.Caption := '';
 if frmdados.Cds_dVenda.RecordCount > 0 then
    begin
      pNumItem := pNumItem + 1;
      if frmdados.cds_dvenda.fieldbyname('cmar').asInteger > 0 then
         begin
           frmdados.Dbx_Exec.Active := false;
           frmdados.Dbx_Exec.SQL.Clear;
           frmdados.Dbx_Exec.SQL.Add('Select * from Marca Where codigo = '+ inttostr( frmdados.cds_dvenda.fieldbyname('cMar').asInteger ));
           frmdados.Dbx_Exec.Active := true;
           lbldescmarca.Caption := copy(frmdados.Dbx_Exec.fieldbyname('Descricao').asString,1,20);
        end;
      //endi

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

procedure TFrmImpPed.GroupFooterBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  lbltotPeca.Caption :=  formatfloat('###,##0.00',ptotPeca);

end;

procedure TFrmImpPed.QRSubDetail2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
try
  aCodMod := frmdados.Cds_exec.fieldbyname('cMod').asInteger;
  aCodFun := frmdados.cds_exec.FieldByName('cFun').asInteger;
except
end;

end;

procedure TFrmImpPed.GroupHeaderBand3BeforePrint(Sender: TQRCustomBand;
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
     if frmpesqvd.rgbtipoop.ItemIndex = 0 then
        begin
          lblcabdtv.Caption := 'Prazo(dias)';
        end
     else
        begin
          lblcabdtv.Caption := 'Data de Vencimento';
        end;
     //endi
   end
else
   begin
     lblcabparc.Caption := '';
     lblcabdtv.Caption := '';
     lblcabdoc.Caption := '';
     lblcabvalor.Caption := '';
   end;
//endi

end;

procedure TFrmImpPed.QRSubDetail3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
 if frmdados.Cds_Vencto.RecordCount > 0 then
    begin
      pNumItem := pNumItem + 1;
      lblparc.Caption := frmdados.Cds_Vencto.FieldByName('parc').asString;
      if frmpesqvd.rgbtipoop.ItemIndex  = 0 then
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

procedure TFrmImpPed.GroupFooterBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
  var
    vardir:string;
begin

  mmoobs1.Lines.Clear;
  lbltxt.Caption := '';

  if frmdados.cds_dvenda.Eof then
     begin
       mmoobs1.Lines.Add(frmdados.Cds_sVenda.fieldbyname('obs1').asString);
       lbltotos.Caption := formatfloat('###,###,##0.00',ptotpeca);
       lblpdesc.Caption := formatfloat('###,###,##0.00',frmdados.Cds_sVenda.fieldbyname('pdesc_p').asfloat);
       lblvdesc.Caption := formatfloat('###,###,##0.00',frmdados.Cds_sVenda.fieldbyname('valdesc_p').asfloat);
       lbltotliquido.Caption := formatfloat('###,###,##0.00', frmdados.Cds_sVenda.fieldbyname('liquido_p').asfloat);


     end;




  lblmens.Caption := frmdados.cds_indice.fieldbyname('mens').asString;
  lblemailfirma.Caption  := frmdados.cds_config.FieldByName('Campo8').asString;




end;

procedure TFrmImpPed.relatorioBeforePrint(Sender: TCustomQuickRep;
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
