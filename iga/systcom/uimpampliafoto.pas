unit uimpampliafoto;

interface

uses
  //Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  //Dialogs, QRCtrls, QuickRpt, ExtCtrls;

  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Buttons, ExtCtrls, DBCtrls, Mask, ComCtrls,
  Grids, DBGrids, SqlExpr, SayPrint, ImgList, Menus, dbcgrids, jpeg, clipbrd,
  shellapi, ExtDlgs, Variants, QuickRpt, QRCtrls;


type
  Tfrmimpampliafoto = class(TForm)
    relatorio: TQuickRep;
    cabecalho: TQRBand;
    lblcab1: TQRLabel;
    lbltit1: TQRLabel;
    lbltit2: TQRLabel;
    lbltit3: TQRLabel;
    lbltit4: TQRLabel;
    detalhe: TQRBand;
    rodape: TQRBand;
    imgfoto1: TQRImage;
    procedure cabecalhoBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure relatorioBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure mostrararq_ext;
    procedure detalheBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
     ipag:integer ;
  public
    { Public declarations }
  end;

var
  frmimpampliafoto: Tfrmimpampliafoto;

implementation
   uses ugeral, udados, upesqos, uampliafoto;
{$R *.dfm}

procedure Tfrmimpampliafoto.cabecalhoBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
ipag := ipag + 1;
lbltit2.Caption := 'PAG. '+inttostr(ipag);
end;

procedure Tfrmimpampliafoto.relatorioBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
 ipag := 0;

  lblcab1.Caption := frmdados.cds_config.fieldbyname('campo2').asString;
  lbltit1.Caption := datetostr(date);
  lbltit3.Caption := 'Foto Ampliada';
  //lbltit4.Caption := frmpesqos.sTitRel;
  lbltit4.Caption := '';
end;

procedure Tfrmimpampliafoto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=caFree;
frmimpampliafoto:=nil;

end;


procedure Tfrmimpampliafoto.mostrararq_ext;
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

      imgfoto1.Visible := false;

      if cds_ImgEquipCliimagem.BlobSize = 0 then exit;

      //se nã há informação sobre o tipo do arquivo, sai...
      if cds_ImgEquipClifilename.AsString = '' then exit;


      //Recupera a extensão do arquivo
      Extensao := uppercase(extractfileext(cds_ImgEquipClifilename.AsString));

      //se for image JPG ou BMP carrega para img
      if pos(extensao,'.JPG .JPEG .BMP') <> 0 then
         begin

           Stream := cds_ImgEquipCli.CreateBlobStream(cds_ImgEquipCliimagem, bmread);
           try
             if extensao = '.BMP' then
                begin
                  figura := tbitmap.Create;
                  try
                    figura.LoadFromStream(stream);
                    imgfoto1.Picture.Assign(figura)
                  finally
                    imgfoto1.Visible := true;
                    figura.Free;
                  end;
                end
             else
                begin
                  j := tjpegimage.Create;
                  try
                    j.LoadFromStream(Stream);
                    imgfoto1.Picture.Assign(j);
                  finally
                    imgfoto1.Visible := true;
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
           temppath := temppath + '\'+cds_ImgEquipCliimagem.AsString;

           //Grava bloco no arquivo temporário
           cds_ImgEquipCliimagem.SaveToFile(temppath);

           //chama a aplicação associada à extensão do arquivo
           Shellexecute(self.Handle,'open',pchar(temppath),nil,nil,SW_SHOWNORMAL);


         end;
      //endi


    //
    end;

end;



procedure Tfrmimpampliafoto.detalheBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
mostrararq_ext;
end;

end.
