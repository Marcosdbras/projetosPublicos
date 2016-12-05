unit upcodibge;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, xmldom, XMLIntf, msxmldom, XMLDoc,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP;

type
  Tfrmpcodibge = class(TForm)
    btninserir: TBitBtn;
    btncancelar: TBitBtn;
    edicep: TMaskEdit;
    btnconsultacep: TBitBtn;
    memores: TMemo;
    edicepresp: TEdit;
    ediuf: TEdit;
    edicidade: TEdit;
    edibairro: TEdit;
    editipolog: TEdit;
    edilogradouro: TEdit;
    ediresultado: TEdit;
    ediresultadotxt: TEdit;
    ediufibge: TEdit;
    edicidadeibge: TEdit;
    XMLDocument1: TXMLDocument;
    edidigito: TEdit;
    IdHTTP1: TIdHTTP;
    Memo1: TMemo;
    procedure btnconsultacepClick(Sender: TObject);
    procedure btncancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btninserirClick(Sender: TObject);
    procedure Memo1Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmpcodibge: Tfrmpcodibge;

implementation
    uses udados, ugeral, uconfig;
{$R *.dfm}

procedure Tfrmpcodibge.btnconsultacepClick(Sender: TObject);
begin

 XMLDocument1.Active := False;
 XMLDocument1.LoadFromFile('http://aplicativos-marcosbras.rhcloud.com/wscep.php?chave='+frmdados.cds_indice.fieldbyname('chaveconsultacep').asString+'&campo=CEP'+'&valor='+ediCep.Text);
 XMLDocument1.Active := True;

 ediCepResp.Text      := XMLDocument1.ChildNodes['wscep'].ChildNodes['response'].ChildNodes['cep'].Text;
 ediUF.Text           := XMLDocument1.ChildNodes['wscep'].ChildNodes['response'].ChildNodes['uf'].Text;
 ediCidade.Text       := XMLDocument1.ChildNodes['wscep'].ChildNodes['response'].ChildNodes['cidade'].Text;
 ediBairro.Text       := XMLDocument1.ChildNodes['wscep'].ChildNodes['response'].ChildNodes['bairro'].Text;
 ediTipoLog.Text      := XMLDocument1.ChildNodes['wscep'].ChildNodes['response'].ChildNodes['tipologradouro'].Text;
 ediLogradouro.Text   := XMLDocument1.ChildNodes['wscep'].ChildNodes['response'].ChildNodes['logradouro'].Text;
 ediResultado.Text    := XMLDocument1.ChildNodes['wscep'].ChildNodes['response'].ChildNodes['resultado'].Text;
 ediResultadoTXT.Text := XMLDocument1.ChildNodes['wscep'].ChildNodes['response'].ChildNodes['resultadotxt'].Text;
 ediUFIBGE.Text       := XMLDocument1.ChildNodes['wscep'].ChildNodes['response'].ChildNodes['ibgeuf'].Text;
 ediCidadeIBGE.Text   := XMLDocument1.ChildNodes['wscep'].ChildNodes['response'].ChildNodes['ibgemunicipio'].Text;

 edidigito.Text := DigitoCidade(ediCidadeIBGE.Text);

 XMLDocument1.Active := false;

end;

procedure Tfrmpcodibge.btncancelarClick(Sender: TObject);
begin
close;
end;

procedure Tfrmpcodibge.FormShow(Sender: TObject);
begin

edicep.Text := '';
memores.Text := '';
edicepresp.Text := '';
ediuf.Text := '';
edicidade.Text := '';
edibairro.Text := '';
editipolog.Text := '';
edilogradouro.Text := '';
ediresultado.Text := '';
ediresultadotxt.Text := '';
ediufibge.Text := '';
edicidadeibge.Text := '';
edidigito.Text := '';

btninserir.Enabled := false;
memores.enabled := false;

if frmconfig <> nil then
   begin
     btninserir.Enabled := true;
     edicep.Text := frmconfig.edicep.Text;
     edicep.Enabled := false;

   end;
//endi


{
if frmpesqfornecedores <> nil then
   begin
     btninserir.Enabled := true;
     edicep.Text := frmpesqfornecedores.edicep.Text;
     edicep.Enabled := false;

   end;
//endi

if frmpesqtransportadora <> nil then
   begin
     btninserir.Enabled := true;
     edicep.Text := frmpesqtransportadora.edicep.Text;
     edicep.Enabled := false;

   end;
//endi

if frmpesqemitente <> nil then
   begin
     btninserir.Enabled := true;
     edicep.Text := frmpesqemitente.edicep.Text;
     edicep.Enabled := false;
   end;
//endi
}

end;

procedure Tfrmpcodibge.btninserirClick(Sender: TObject);
var
   icpais, icodest, icodmunic:integer;
begin
  icpais := 0;

  if ediresultado.Text = '' then
     exit;
  //endi

  if (strtoint(ediresultado.Text) = -1) or
     (strtoint(ediresultado.Text) = 0)
  then
     begin
       //exit;
     end;
  //endi


  {
  frmdados.cds_Paises.Active := true;
  frmdados.cds_Munic.Active := true;
  frmdados.cds_Estados.Active := true;

  if not frmdados.cds_Estados.Locate('codibge',ediufibge.Text,[]) then
     begin
       if frmdados.cds_Paises.Locate('nome','BRASIL',[]) then
          begin
            icpais := frmdados.cds_paises.fieldbyname('codigo').asInteger;
          end;
       //endi

       frmdados.cds_Estados.Last;
       icodest := frmdados.cds_Estados.fieldbyname('codigo').asInteger + 1;

       frmdados.cds_Estados.Append;
       frmdados.cds_Estados.FieldByName('codigo').asInteger := icodest;
       frmdados.cds_Estados.FieldByName('nome').asString := ediuf.Text;
       frmdados.cds_Estados.FieldByName('sigla').AsString := ediuf.Text;
       frmdados.cds_Estados.FieldByName('codibge').asString := ediufibge.Text;
       frmdados.cds_Estados.FieldByName('cpais').asInteger := icpais;
       frmdados.cds_Estados.Post;

     end
  else
     begin
       icodest := frmdados.cds_Estados.fieldbyname('codigo').asInteger;
     end;
  //endi

  if not frmdados.cds_munic.Locate('codibge',edidigito.Text,[]) then
     begin

       frmdados.cds_Munic.Last;
       icodmunic := frmdados.cds_Munic.fieldbyname('codigo').asInteger + 1;

       frmdados.cds_Munic.Append;
       frmdados.cds_Munic.FieldByName('codigo').asInteger := icodmunic;
       frmdados.cds_Munic.FieldByName('nome').asString := edicidade.Text;
       frmdados.cds_Munic.FieldByName('codibge').asString := edidigito.Text;
       frmdados.cds_Munic.FieldByName('cest').asInteger := icodest;
       frmdados.cds_Munic.Post;

     end
  else
     begin
       icodmunic := frmdados.cds_Munic.fieldbyname('codigo').asInteger;
     end;
  //endi
  }

  if frmconfig <> nil then
     begin
       tabela := 'Config';


       frmdados.Cds_config.Edit;
       frmconfig.ediestado.Text := ediuf.Text;
       frmconfig.edicidade.Text := edicidade.Text;
       frmconfig.ediendereco.Text := editipolog.Text+' '+editipolog.Text;
       frmconfig.edibairro.Text := edibairro.Text;
       frmconfig.edicodigoibge.Text := ediCidadeIBGE.Text;
       frmconfig.edicodigoibgeuf.Text := ediUFIBGE.Text;

       //frmconfig.edicodigoibge.Text :=

       //frmdados.cds_Temp.Edit;
       //frmdados.cds_temp.FieldByName('cod2cc').asInteger := icodmunic;
       //frmdados.cds_temp.FieldByName('cod1cc').asInteger := icodest;
     end;
  //endi




  //frmdados.cds_Paises.Active := false;
  //frmdados.cds_Munic.Active := false;
  //frmdados.cds_Estados.Active := false;

  close;

end;

procedure Tfrmpcodibge.Memo1Enter(Sender: TObject);
begin
SelectNext(ActiveControl,True,True);
end;

end.
