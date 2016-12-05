unit uimprecpgto;

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
  Tfrmimprecpgto = class(TForm)
    relatorio: TQuickRep;
    cabecalho: TQRBand;
    lblcab1: TQRLabel;
    lbltit1: TQRLabel;
    lbltit2: TQRLabel;
    lbltit3: TQRLabel;
    lbltit4: TQRLabel;
    imgfoto: TQRImage;
    QRShape2: TQRShape;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    lblncli: TQRLabel;
    QRLabel2: TQRLabel;
    lblvalor: TQRLabel;
    lblvlrextenso: TQRLabel;
    QRLabel3: TQRLabel;
    lbldata: TQRLabel;
    lbldest: TQRLabel;
    QRLabel4: TQRLabel;
    QRShape1: TQRShape;
    lblrodape: TQRLabel;
    procedure cabecalhoBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure relatorioBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure mostrararq_ext;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
    ipag:integer;
    ftotalm, ftotalv, ftotala:real;


  public
    { Public declarations }
  end;

var
  frmimprecpgto: Tfrmimprecpgto;

implementation
   uses ugeral, udados, utra;
{$R *.dfm}

procedure Tfrmimprecpgto.cabecalhoBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
ipag := ipag + 1;
lbltit2.Caption := 'PAG. '+inttostr(ipag);

end;

procedure Tfrmimprecpgto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=caFree;
frmimprecpgto:=nil;
end;

procedure Tfrmimprecpgto.relatorioBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  ipag := 0;
  lblcab1.Caption := frmdados.cds_config.fieldbyname('campo2').asString;
  lbltit1.Caption := datetostr(date);
  lbltit3.Caption := 'RECIBO';
  //lbltit4.Caption := frm.sTitRel;
  lbltit4.Caption := '';
  mostrararq_ext;
end;

procedure Tfrmimprecpgto.mostrararq_ext;
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




procedure Tfrmimprecpgto.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  with frmdados do
    begin
      dbx_exec.Active := false;
      dbx_exec.SQL.Clear;
      dbx_exec.SQL.Add('select * from clientes where codigo = '+ inttostr( frmtra.iccli ) );
      dbx_exec.Active := true;
      lblncli.Caption := dbx_exec.fieldbyname('nome').asString;
      lblvalor.Caption := '('+formatfloat('###,###,##0.00',frmtra.fvalorrec)+')';
      lblvlrextenso.Caption := '('+trim(Extenso(frmtra.fvalorrec))+')';
      lbldata.Caption := frmdados.Cds_Config.fieldbyname('campo5').asString+', '+datetostr(date);
      lbldest.Caption := frmdados.Cds_Config.fieldbyname('campo2').asString;

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
  //endi
end;

end.
