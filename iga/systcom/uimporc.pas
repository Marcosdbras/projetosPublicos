unit uimporc;

interface

uses
  Windows,
  Messages,
  SysUtils,
  Classes,
  Graphics,
  Controls,
  Forms, 
  Dialogs,
  Db,
  DBTables,
  QuickRpt,
  StdCtrls,
  ExtCtrls,
  Buttons,
  QRCtrls,

  jpeg,
  DBCtrls,
  shellapi,
  Mask,
  ExtDlgs,
  dbiprocs,
  Variants;

type
  Tfrmimporc = class(TForm)
    relatorio: TQuickRep;
    cabecalho: TQRBand;
    rodape: TQRBand;
    procedimentos: TQRSubDetail;
    pgto: TQRSubDetail;
    lblcab1: TQRLabel;
    lbltit1: TQRLabel;
    lbltit2: TQRLabel;
    lbltit3: TQRLabel;
    lbltit4: TQRLabel;
    lblnmod: TQRLabel;
    lblnlistaprod: TQRLabel;
    lblidmat_restaurar: TQRLabel;
    lblvalor: TQRLabel;
    lblsubtotal: TQRLabel;
    GroupFooterBand1: TQRBand;
    GroupHeaderBand1: TQRBand;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    lblqtde: TQRLabel;
    lbltotalm: TQRLabel;
    lbltittotalm: TQRLabel;
    lbln_tipo_pgto: TQRLabel;
    lbldoc: TQRLabel;
    lblprazo: TQRLabel;
    lbldtv: TQRLabel;
    lblvalorreal: TQRLabel;
    GroupFooterBand2: TQRBand;
    GroupHeaderBand2: TQRBand;
    lbltitformapagto: TQRLabel;
    lbltitdoc: TQRLabel;
    lbltitprazo: TQRLabel;
    lbltitvencto: TQRLabel;
    lbltitvalor: TQRLabel;
    QRLabel17: TQRLabel;
    lblncli: TQRLabel;
    lbltittotalv: TQRLabel;
    lbltotalv: TQRLabel;
    mmoobs: TQRMemo;
    QRLabel18: TQRLabel;
    QRLabel1: TQRLabel;
    lbltratar: TQRLabel;
    lbltittotala: TQRLabel;
    lbltotala: TQRLabel;
    lblsit: TQRLabel;
    imgfoto: TQRImage;
    QRShape1: TQRShape;
    QRLabel3: TQRLabel;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape5: TQRShape;
    QRShape8: TQRShape;
    lblrodape: TQRLabel;
    QRShape6: TQRShape;
    procedure cabecalhoBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure relatorioBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure GroupHeaderBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure procedimentosBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure pgtoBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure GroupFooterBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure GroupFooterBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure rodapeBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure GroupHeaderBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure mostrararq_ext;  
  private
    { Private declarations }
    ipag:integer;
    ftotalm, ftotalv, ftotala:real;


  public
    { Public declarations }
  end;

var
  frmimporc: Tfrmimporc;

implementation
   uses ugeral, udados, utra;
{$R *.dfm}

procedure Tfrmimporc.cabecalhoBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
ipag := ipag + 1;
lbltit2.Caption := 'PAG. '+inttostr(ipag);

end;

procedure Tfrmimporc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=caFree;
frmimporc:=nil;
end;

procedure Tfrmimporc.relatorioBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
  var
    bano:boolean;
begin

  ipag := 0;
  ftotalm := 0;
  ftotalv := 0;
  ftotala := 0;


  with frmdados do
     begin

       cds_siturec.Active := false;
       dbx_siturec.Active := false;
       dbx_siturec.SQL.Clear;
       dbx_siturec.SQL.Add('Select * from siturec'   );
       dbx_siturec.Active := true;
       cds_siturec.Active := true;

       cds_tipo_pgto.Active := false;
       dbx_tipo_pgto.Active := false;
       dbx_tipo_pgto.SQL.Clear;
       dbx_tipo_pgto.SQL.Add('Select * from tipo_pgto'   );
       dbx_tipo_pgto.Active := true;
       cds_tipo_pgto.Active := true;

       cds_dMobra.Active := false;
       dbx_dMobra.Active := false;
       dbx_dMobra.SQL.Clear;
       dbx_dMobra.SQL.Add('Select * from dMobra where ( codsvenda = '+ inttostr( cds_sVenda.fieldbyname('codigo').asInteger ) +' )'   );
       dbx_dMobra.Active := true;
       cds_dMobra.Active := true;

       cds_vencto.Active := false;
       dbx_vencto.Active := false;
       dbx_vencto.SQL.Clear;
       dbx_vencto.SQL.Add('Select * from vencimentos where ( c_svenda = '+ inttostr( cds_sVenda.fieldbyname('codigo').asInteger ) +' )'   );
       dbx_vencto.Active := true;
       cds_vencto.Active := true;


    end;
  //endth


  lblcab1.Caption := frmdados.cds_config.fieldbyname('campo2').asString;
  lbltit1.Caption := datetostr(date);
  lbltit3.Caption := 'ORÇAMENTO';
  //lbltit4.Caption := frm.sTitRel;
  lbltit4.Caption := '';


  mostrararq_ext;
end;

procedure Tfrmimporc.GroupHeaderBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
lblncli.Caption := frmdados.Cds_sVenda.fieldbyname('ncli').asString;
end;

procedure Tfrmimporc.procedimentosBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
if frmdados.Cds_dMobra.fieldbyname('selec').asString = 'T' then
   begin
     lbltratar.Caption := 'SIM';
     ftotala := ftotala + frmdados.Cds_dMobra.fieldbyname('subtotal').asfloat;
   end
else
   begin
     lbltratar.Caption := 'NÃO';
   end;
//endi


lblnmod.Caption := frmdados.Cds_dMobra.fieldbyname('nmod').asString;
lblqtde.Caption := formatfloat('0',frmdados.Cds_dMobra.fieldbyname('qtde').asfloat);
lblnlistaprod.Caption := frmdados.Cds_dMobra.fieldbyname('nlistaprod').asString;
lblidmat_restaurar.Caption := frmdados.Cds_dMobra.fieldbyname('idmat_restaurar').asString;
lblvalor.Caption := formatfloat('###,###,##0.00',frmdados.Cds_dMobra.fieldbyname('valor').asfloat);
lblsubtotal.Caption := formatfloat('###,###,##0.00',frmdados.Cds_dMobra.fieldbyname('subtotal').asfloat);
ftotalm := ftotalm + frmdados.Cds_dMobra.fieldbyname('subtotal').asfloat;
end;

procedure Tfrmimporc.pgtoBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
lblvalorreal.Caption := '';
lbln_tipo_pgto.Caption := frmdados.Cds_Vencto.fieldbyname('n_tipo_pgto').asstring;
lbldoc.Caption := frmdados.Cds_Vencto.fieldbyname('doc').asstring;
lblprazo.Caption := frmdados.Cds_Vencto.fieldbyname('prazo').asstring;
lbldtv.Caption := frmdados.Cds_Vencto.fieldbyname('dtv').asstring;
lblsit.Caption := frmdados.Cds_Vencto.fieldbyname('nsiturec').asstring;

if frmdados.Cds_Vencto.fieldbyname('valorreal').asfloat > 0 then
   begin
     lblvalorreal.Caption := formatfloat('###,###,##0.00',frmdados.Cds_Vencto.fieldbyname('valorreal').asfloat);
     ftotalv := ftotalv + frmdados.cds_vencto.fieldbyname('valorreal').asfloat;
   end;
//endi   
end;

procedure Tfrmimporc.GroupFooterBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
lbltittotalm.Caption := '';
lbltotalm.Caption := '';

lbltittotala.Caption := '';
lbltotala.Caption := '';


if frmdados.Cds_dVenda.Eof then
   begin
     lbltittotalm.Caption := 'TOTAL ORÇADO';
     lbltotalm.Caption := formatfloat('###,###,##0.00',ftotalm);

     lbltittotala.Caption := 'TOTAL AUTORIZADO';
     lbltotala.Caption := formatfloat('###,###,##0.00',ftotala);

   end;
//endi
end;

procedure Tfrmimporc.GroupFooterBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
lbltittotalv.Caption := '';
lbltotalv.Caption := '';

if frmdados.Cds_Vencto.RecordCount > 0 then
   begin
     if frmdados.Cds_vencto.Eof then
        begin
          lbltittotalv.Caption := 'TOTAL';
          lbltotalv.Caption := formatfloat('###,###,##0.00',ftotalv);
        end;
     //endi
   end;
//endi

end;

procedure Tfrmimporc.rodapeBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
mmoobs.Lines.Clear;
mmoobs.Lines.Add(frmdados.Cds_sVenda.fieldbyname('dadosadicionais').asstring);

lblrodape.Caption := frmdados.Cds_Config.fieldbyname('campo6').asString;
if lblrodape.Caption <> '' then
   lblrodape.Caption := lblrodape.Caption + ' - '+frmdados.Cds_Config.fieldbyname('nro').asString;
//endi
if lblrodape.Caption <> '' then
   lblrodape.Caption := lblrodape.Caption + ' - '+frmdados.Cds_Config.fieldbyname('bairro').asString;
//endi
if lblrodape.Caption <> '' then
   lblrodape.Caption := lblrodape.Caption + ' - '+frmdados.Cds_Config.fieldbyname('campo17').asString;
//endi
if lblrodape.Caption <> '' then
   lblrodape.Caption := lblrodape.Caption + ' - '+frmdados.Cds_Config.fieldbyname('cep').asString;
//endi
if lblrodape.Caption <> '' then
   lblrodape.Caption := lblrodape.Caption + ' - '+frmdados.Cds_Config.fieldbyname('fone').asString;
//endi


end;

procedure Tfrmimporc.GroupHeaderBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
if frmdados.Cds_Vencto.RecordCount = 0 then
   begin
     lbltitformapagto.Caption := '';
     lbltitdoc.Caption := '';
     lbltitprazo.Caption := '';
     lbltitvencto.Caption := '';
     lbltitvalor.Caption := '';
     lbltittotalv.Caption := '';
     lbltotalv.Caption := '';


   end;
//endi
end;

procedure Tfrmimporc.mostrararq_ext;
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




end.
