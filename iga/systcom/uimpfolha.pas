unit uimpfolha;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, ExtCtrls, Qrctrls, Db, DBTables, jpeg, dbiprocs, shellapi;

type
  TFrmImpfolha = class(TForm)
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
    tabindice: TTable;
    titulo: TQRBand;
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
    lbltitdesc7: TQRLabel;
    lbldesc7: TQRLabel;
    lblcab6: TQRLabel;
    lblcab7: TQRLabel;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    lbldatasehoras: TQRLabel;
    imgfoto: TQRImage;
    lblnro: TQRLabel;
    QRLabel5: TQRLabel;
    lblcab22: TQRLabel;
    lbltit12: TQRLabel;
    lblCab32: TQRLabel;
    lblCab42: TQRLabel;
    lblcabcodigo2: TQRLabel;
    lblOS2: TQRLabel;
    QRLabel16: TQRLabel;
    lblNome2: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    lblContato2: TQRLabel;
    lblTelefone2: TQRLabel;
    lblCidade2: TQRLabel;
    lblComplemento2: TQRLabel;
    lblEndereco2: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    lblemail2: TQRLabel;
    lblCelular2: TQRLabel;
    lblEstado2: TQRLabel;
    lblBairro2: TQRLabel;
    QRLabel39: TQRLabel;
    lblCep2: TQRLabel;
    lblrg2: TQRLabel;
    lblcpf2: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRShape2: TQRShape;
    lbltitdesc12: TQRLabel;
    lbldesc12: TQRLabel;
    lblid12: TQRLabel;
    lbltitid12: TQRLabel;
    lbltitdesc52: TQRLabel;
    lbltitdesc22: TQRLabel;
    lbldesc22: TQRLabel;
    lbldesc52: TQRLabel;
    lbltitdesc62: TQRLabel;
    lbldesc62: TQRLabel;
    lbldesc32: TQRLabel;
    lbltitdesc32: TQRLabel;
    lbltitdesc42: TQRLabel;
    lbldesc42: TQRLabel;
    QRShape4: TQRShape;
    lbltitdesc72: TQRLabel;
    lbldesc72: TQRLabel;
    lblcab62: TQRLabel;
    lblcab72: TQRLabel;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    lbldatasehoras2: TQRLabel;
    imgfoto2: TQRImage;
    lblnro2: TQRLabel;
    QRLabel67: TQRLabel;
    lbltit22: TQRLabel;
    QRShape7: TQRShape;
    mmoobs1: TQRMemo;
    mmoobs12: TQRMemo;
    mmoobs2: TQRMemo;
    procedure detalheBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail2AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure GroupFooterBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure mostrararq_ext;
    procedure relatorioBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure tituloBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
    pNumPag,pNumItem,aCodMod,aCodFun:Integer;
    pTotPeca, pTotMao:Real;

  public
    { Public declarations }
  end;

var
  FrmImpfolha: TFrmImpfolha;

implementation
 uses uGeral, udados, upesqos;
{$R *.DFM}

procedure TFrmImpfolha.mostrararq_ext;
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
      imgfoto2.Visible := false;


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
                    imgfoto.Picture.Assign(figura);
                    imgfoto2.Picture.Assign(figura);
                  finally
                    imgfoto.Visible := true;
                    imgfoto2.Visible := true;
                    figura.Free;
                  end;
                end
             else
                begin
                  j := tjpegimage.Create;
                  try
                    j.LoadFromStream(Stream);
                    imgfoto.Picture.Assign(j);
                    imgfoto2.Picture.Assign(j);
                  finally
                    imgfoto.Visible := true;
                    imgfoto2.Visible := true;
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

procedure TFrmImpfolha.detalheBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
  var pCodSit, pCodfunreb, pCodfuncon:Integer;
      VarDir, presttexto:String;
      S:TMemoryStream;
      j:tjpegimage;
begin

end;

procedure TFrmImpfolha.QRSubDetail2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
try
  aCodMod := frmdados.Cds_exec.fieldbyname('cMod').asInteger;
  aCodFun := frmdados.cds_exec.FieldByName('cFun').asInteger;
except
end;

end;

procedure TFrmImpfolha.GroupFooterBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
  var
    vardir:string;
begin

end;

procedure TFrmImpfolha.relatorioBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin

  pNumPag  := 0;
  pNumItem := 0;
  aCodMod  := 0;
  aCodFun  := 0;
  pTotPeca := 0;
  pTotMao  := 0;


end;

procedure TFrmImpfolha.tituloBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);

  var pCodSit, pCodfunreb, pCodfuncon:Integer;
      VarDir, presttexto:String;
      S:TMemoryStream;
      j:tjpegimage;

begin


lblid1.caption := '';
lblid12.caption := '';

lbltitid1.caption := '';
lbltitid12.caption := '';


lbldesc1.caption := '';
lbldesc12.caption := '';

lbltitdesc1.caption := '';
lbltitdesc12.caption := '';


lbldesc2.caption := '';
lbldesc22.caption := '';

lbltitdesc2.caption := '';
lbltitdesc22.caption := '';

lbldesc3.caption := '';
lbldesc32.caption := '';

lbltitdesc3.caption := '';
lbltitdesc32.caption := '';

lbldesc4.caption := '';
lbldesc42.caption := '';

lbltitdesc4.caption := '';
lbltitdesc42.caption := '';

lbldesc5.caption := '';
lbldesc52.caption := '';

lbltitdesc5.caption := '';
lbltitdesc52.caption := '';

lbldesc6.caption := '';
lbldesc62.caption := '';

lbltitdesc6.caption := '';
lbltitdesc62.caption := '';

lbldesc7.caption := '';
lbldesc72.caption := '';

lbltitdesc7.caption := '';
lbltitdesc72.caption := '';

mostrararq_ext;

lblCab2.Caption := frmdados.cds_config.FieldByName('Campo2').asString;
lblCab22.Caption := frmdados.cds_config.FieldByName('Campo2').asString;

lblCab3.Caption := frmdados.cds_config.FieldByName('Campo3').asString;
lblCab32.Caption := frmdados.cds_config.FieldByName('Campo3').asString;

lblCab4.Caption := frmdados.cds_config.FieldByName('Campo4').asString;
lblCab42.Caption := frmdados.cds_config.FieldByName('Campo4').asString;


if lblcab3.Caption = '' then
   lbltit1.Caption := '';
//endi

if lblcab32.Caption = '' then
   lbltit12.Caption := '';
//endi

if lblcab4.Caption = '' then
   lbltit2.Caption := '';
//endi

if lblcab42.Caption = '' then
   lbltit22.Caption := '';
//endi

lblCab6.Caption  := frmdados.cds_config.FieldByName('Campo6').asString;
lblCab62.Caption  := frmdados.cds_config.FieldByName('Campo6').asString;

if frmdados.Cds_Config.fieldbyname('nro').asString <> '' then
   lblCab6.Caption := lblCab6.Caption + ' N.o '+frmdados.Cds_Config.fieldbyname('nro').asString;
//endi

if frmdados.Cds_Config.fieldbyname('nro').asString <> '' then
   lblCab62.Caption := lblCab62.Caption + ' N.o '+frmdados.Cds_Config.fieldbyname('nro').asString;
//endi

if frmdados.Cds_Config.fieldbyname('bairro').asString <> '' then
   lblCab6.Caption := lblCab6.Caption + ' - '+frmdados.Cds_Config.fieldbyname('bairro').asString;
//endi

if frmdados.Cds_Config.fieldbyname('bairro').asString <> '' then
   lblCab62.Caption := lblCab62.Caption + ' - '+frmdados.Cds_Config.fieldbyname('bairro').asString;
//endi


if frmdados.Cds_Config.fieldbyname('campo5').asString <> '' then
   lblCab6.Caption := lblCab6.Caption + ' - '+frmdados.Cds_Config.fieldbyname('campo5').asString;
//endi

if frmdados.Cds_Config.fieldbyname('campo5').asString <> '' then
   lblCab62.Caption := lblCab62.Caption + ' - '+frmdados.Cds_Config.fieldbyname('campo5').asString;
//endi

if frmdados.Cds_Config.fieldbyname('campo15').asString <> '' then
   lblCab6.Caption := lblCab6.Caption + ' - '+frmdados.Cds_Config.fieldbyname('campo15').asString;
//endi


if frmdados.Cds_Config.fieldbyname('campo15').asString <> '' then
   lblCab62.Caption := lblCab62.Caption + ' - '+frmdados.Cds_Config.fieldbyname('campo15').asString;
//endi

if frmdados.Cds_Config.fieldbyname('campo16').asString <> '' then
   lblCab6.Caption := lblCab6.Caption + ' - '+frmdados.Cds_Config.fieldbyname('campo16').asString;
//endi

if frmdados.Cds_Config.fieldbyname('campo16').asString <> '' then
   lblCab62.Caption := lblCab62.Caption + ' - '+frmdados.Cds_Config.fieldbyname('campo16').asString;
//endi

lblCab7.Caption  := frmdados.cds_config.FieldByName('Campo7').asString;

lblCab72.Caption  := frmdados.cds_config.FieldByName('Campo7').asString;

if frmdados.Cds_Config.fieldbyname('fone').asString <> '' then
   lblCab7.Caption := lblCab7.Caption + ' '+frmdados.Cds_Config.fieldbyname('fone').asString;
//endi

if frmdados.Cds_Config.fieldbyname('fone').asString <> '' then
   lblCab72.Caption := lblCab72.Caption + ' '+frmdados.Cds_Config.fieldbyname('fone').asString;
//endi

lblcabcodigo.Caption := 'Ordem de Serviço nº';
lblOs.Caption := FormatFloat('00000',frmdados.Cds_sVenda.FieldByName('nos').asFloat)+'.'+FormatFloat('00000',frmdados.Cds_sVenda.FieldByName('norc').asFloat);

lblcabcodigo2.Caption := lblcabcodigo.Caption;
lblOs2.Caption := lblOs.Caption;

//if ((frmpesqos.cbxtipo.ItemIndex  > 0) and (frmpesqos.cbxtipo.ItemIndex  < 6)) or (frmdados.Cds_sVenda.FieldByName('lancado').asString = 'T') then
//   begin
//     lblcabcodigo.Caption := 'Ordem de Serviço nº';
//     lblOs.Caption := FormatFloat('00000',frmdados.Cds_sVenda.FieldByName('nos').asFloat);

//     lblcabcodigo2.Caption := 'Ordem de Serviço nº';
//     lblOs2.Caption := FormatFloat('00000',frmdados.Cds_sVenda.FieldByName('nos').asFloat);

//   end
//else
//   begin

//     lblcabcodigo.Caption := 'Nº do Orçamento';
//     lblOs.Caption := FormatFloat('00000',frmdados.Cds_sVenda.FieldByName('norc').asFloat);

//     lblcabcodigo2.Caption := 'Nº do Orçamento';
//     lblOs2.Caption := FormatFloat('00000',frmdados.Cds_sVenda.FieldByName('norc').asFloat);

//   end;
//endi

lblNome.Caption := frmdados.Cds_Clientes.FieldByName('Nome').asString;

lblNome2.Caption := frmdados.Cds_Clientes.FieldByName('Nome').asString;

lblEndereco.Caption := frmdados.Cds_Clientes.FieldByName('Endent').asString;

lblEndereco2.Caption := frmdados.Cds_Clientes.FieldByName('Endent').asString;


lblnro.Caption := frmdados.Cds_Clientes.FieldByName('nroent').asString;

lblnro2.Caption := frmdados.Cds_Clientes.FieldByName('nroent').asString;


lblComplemento.Caption := frmdados.Cds_Clientes.FieldByName('Complent').asString;

lblComplemento2.Caption := frmdados.Cds_Clientes.FieldByName('Complent').asString;


lblBairro.Caption := frmdados.Cds_Clientes.FieldByName('Bairroent').asString;

lblBairro2.Caption := frmdados.Cds_Clientes.FieldByName('Bairroent').asString;


lblCidade.Caption := frmdados.Cds_Clientes.FieldByName('Cidadeent').asString;

lblCidade2.Caption := frmdados.Cds_Clientes.FieldByName('Cidadeent').asString;


lblEstado.Caption := frmdados.Cds_Clientes.FieldByName('Estadoent').asString;

lblEstado2.Caption := frmdados.Cds_Clientes.FieldByName('Estadoent').asString;


lblCep.Caption := frmdados.Cds_Clientes.FieldByName('Cepent').asString;

lblCep2.Caption := frmdados.Cds_Clientes.FieldByName('Cepent').asString;


lblTelefone.Caption := frmdados.Cds_Clientes.FieldByName('Telefones').asString;

lblTelefone2.Caption := frmdados.Cds_Clientes.FieldByName('Telefones').asString;


lblContato.Caption := frmdados.Cds_Clientes.FieldByName('Contato').asString;

lblContato2.Caption := frmdados.Cds_Clientes.FieldByName('Contato').asString;

lblCpf.Caption := frmdados.Cds_Clientes.FieldByName('cpf').asString;

lblCpf2.Caption := frmdados.Cds_Clientes.FieldByName('cpf').asString;


lblrg.Caption := frmdados.Cds_Clientes.FieldByName('ie').asString;

lblrg2.Caption := frmdados.Cds_Clientes.FieldByName('ie').asString;


lblCelular.Caption := frmdados.Cds_Clientes.FieldByName('Celular').asString;

lblCelular2.Caption := frmdados.Cds_Clientes.FieldByName('Celular').asString;


lblemail.Caption := frmdados.Cds_Clientes.FieldByName('email').asString;

lblemail2.Caption := frmdados.Cds_Clientes.FieldByName('email').asString;


   with frmdados do
     begin


       if (cds_indice.FieldByName('ID1').asString <> '') then
           begin
             lbltitid1.Caption := cds_indice.FieldByName('ID1').asString;
             lbltitid1.Visible := true;

             lblid1.Caption := cds_svenda.FieldByName('ID1').asString;
             lblid1.Visible := true;



             lbltitid12.Caption := cds_indice.FieldByName('ID1').asString;
             lbltitid12.Visible := true;

             lblid12.Caption := cds_svenda.FieldByName('ID1').asString;
             lblid12.Visible := true;




           end;
       //endi


       if (cds_indice.FieldByName('DESC1').asString <> '') then
          begin
             lbltitdesc1.Caption := cds_indice.FieldByName('desc1').asString;
             lbltitdesc1.Visible := true;

             lbldesc1.Caption := cds_svenda.FieldByName('desc1').asString;
             lbldesc1.Visible := true;


             lbltitdesc12.Caption := cds_indice.FieldByName('desc1').asString;
             lbltitdesc12.Visible := true;

             lbldesc12.Caption := cds_svenda.FieldByName('desc1').asString;
             lbldesc12.Visible := true;



          end;
       //endi
       if (cds_indice.FieldByName('DESC2').asString <> '') then
          begin
             lbltitdesc2.Caption := cds_indice.FieldByName('desc2').asString;
             lbltitdesc2.Visible := true;

             lbldesc2.Caption := cds_svenda.FieldByName('desc2').asString;
             lbldesc2.Visible := true;


             lbltitdesc22.Caption := cds_indice.FieldByName('desc2').asString;
             lbltitdesc22.Visible := true;

             lbldesc22.Caption := cds_svenda.FieldByName('desc2').asString;
             lbldesc22.Visible := true;



          end;
       //endi
       if (cds_indice.FieldByName('DESC3').asString <> '') then
          begin
             lbltitdesc3.Caption := cds_indice.FieldByName('desc3').asString;
             lbltitdesc3.Visible := true;

             lbldesc3.Caption := cds_svenda.FieldByName('desc3').asString;
             lbldesc3.Visible := true;


             lbltitdesc32.Caption := cds_indice.FieldByName('desc3').asString;
             lbltitdesc32.Visible := true;

             lbldesc32.Caption := cds_svenda.FieldByName('desc3').asString;
             lbldesc32.Visible := true;



          end;
       //endi
       if (cds_indice.FieldByName('DESC4').asString <> '') then
          begin
             lbltitdesc4.Caption := cds_indice.FieldByName('desc4').asString;
             lbltitdesc4.Visible := true;

             lbldesc4.Caption := cds_svenda.FieldByName('desc4').asString;
             lbldesc4.Visible := true;


             lbltitdesc42.Caption := cds_indice.FieldByName('desc4').asString;
             lbltitdesc42.Visible := true;

             lbldesc42.Caption := cds_svenda.FieldByName('desc4').asString;
             lbldesc42.Visible := true;



          end;
       //endi

       if (cds_indice.FieldByName('DESC5').asString <> '') then
          begin
             lbltitdesc5.Caption := cds_indice.FieldByName('desc5').asString;
             lbltitdesc5.Visible := true;

             lbldesc5.Caption := cds_svenda.FieldByName('desc5').asString;
             lbldesc5.Visible := true;



             lbltitdesc52.Caption := cds_indice.FieldByName('desc5').asString;
             lbltitdesc52.Visible := true;

             lbldesc52.Caption := cds_svenda.FieldByName('desc5').asString;
             lbldesc52.Visible := true;




          end;
       //endi
       if (cds_indice.FieldByName('DESC6').asString <> '') then
          begin
             lbltitdesc6.Caption := cds_indice.FieldByName('desc6').asString;
             lbltitdesc6.Visible := true;

             lbldesc6.Caption := cds_svenda.FieldByName('desc6').asString;
             lbldesc6.Visible := true;


             lbltitdesc62.Caption := cds_indice.FieldByName('desc6').asString;
             lbltitdesc62.Visible := true;

             lbldesc62.Caption := cds_svenda.FieldByName('desc6').asString;
             lbldesc62.Visible := true;



          end;
       //endi
       if (cds_indice.FieldByName('DESC7').asString <> '') then
          begin
             lbltitdesc7.Caption := cds_indice.FieldByName('desc7').asString;
             lbltitdesc7.Visible := true;

             lbldesc7.Caption := cds_svenda.FieldByName('desc7').asString;
             lbldesc7.Visible := true;


             lbltitdesc72.Caption := cds_indice.FieldByName('desc7').asString;
             lbltitdesc72.Visible := true;

             lbldesc72.Caption := cds_svenda.FieldByName('desc7').asString;
             lbldesc72.Visible := true;




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
lbldatasehoras2.Caption :=  'Entrada: '+frmdados.cds_svenda.FieldByName('datacad').asString+'-'+frmdados.cds_svenda.FieldByName('hrcad').asString;


if frmdados.Cds_sVenda.FieldByName('datafec').asString <> '' then
   begin
     lbldatasehoras.Caption := lbldatasehoras.Caption + ' Saída: '+frmdados.Cds_sVenda.FieldByName('datafec').asString+'-'+frmdados.Cds_sVenda.FieldByName('hrfec').asString;
     lbldatasehoras2.Caption := lbldatasehoras2.Caption + ' Saída: '+frmdados.Cds_sVenda.FieldByName('datafec').asString+'-'+frmdados.Cds_sVenda.FieldByName('hrfec').asString;
   end;
//endi

mmoobs1.Lines.Clear;
mmoobs1.Lines.Add(frmdados.Cds_sVenda.fieldbyname('obs').asString);

mmoobs12.Lines.Clear;
mmoobs12.Lines.Add(frmdados.Cds_sVenda.fieldbyname('obs').asString);


mmoobs2.Lines.Clear;
mmoobs2.Lines.Add(frmdados.Cds_Indice.fieldbyname('obs').asString);


end;

end.
