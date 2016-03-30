unit upcodcest;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, xmldom, XMLIntf, msxmldom, XMLDoc,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP,
  ExtCtrls;

type
  Tfrmpcodcest = class(TForm)
    btninserir: TBitBtn;
    btncancelar: TBitBtn;
    edincm: TMaskEdit;
    btnconsultacep: TBitBtn;
    memores: TMemo;
    edincmresp: TEdit;
    edicest: TEdit;
    ediresultado: TEdit;
    ediresultadotxt: TEdit;
    XMLDocument1: TXMLDocument;
    IdHTTP1: TIdHTTP;
    Memo1: TMemo;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
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
  frmpcodcest: Tfrmpcodcest;

implementation
    uses udados, ugeral, upesqprodutos;
{$R *.dfm}

procedure Tfrmpcodcest.btnconsultacepClick(Sender: TObject);
var x, comprimento:integer;
begin
 comprimento :=  length(edincm.Text);

 x:=0;

 repeat

 XMLDocument1.Active := False;
 XMLDocument1.LoadFromFile('http://aplicativos-marcosbras.rhcloud.com/wscest.php/?chave='+frmdados.cds_indice.fieldbyname('chaveconsultacep').asString+'&campo=NCM'+'&valor='+ediNCM.Text);
 XMLDocument1.Active := True;

 edincmResp.Text      := XMLDocument1.ChildNodes['wscest'].ChildNodes['response'].ChildNodes['ncm'].Text;
 edicest.Text           := XMLDocument1.ChildNodes['wscest'].ChildNodes['response'].ChildNodes['cest'].Text;

 memo1.Clear;
 memo1.Lines.Add(XMLDocument1.ChildNodes['wscest'].ChildNodes['response'].ChildNodes['descricao'].Text);

 ediResultado.Text    := XMLDocument1.ChildNodes['wscest'].ChildNodes['response'].ChildNodes['resultado'].Text;
 ediResultadoTXT.Text := XMLDocument1.ChildNodes['wscest'].ChildNodes['response'].ChildNodes['resultadotxt'].Text;

 btninserir.Enabled := true;

 edincm.Text := copy(edincm.Text,1,comprimento-x);

 x:= x +1;

 if edincm.Text = '' then
    break;

 //if (application.MessageBox('Deseja continuar a pesquisa?','Pesquisa',mb_yesno) = 7) then
 //   break;

 until(application.MessageBox('Deseja continuar a pesquisa?','Pesquisa',mb_yesno) = 7)    ;


end;

procedure Tfrmpcodcest.btncancelarClick(Sender: TObject);
begin
close;
end;

procedure Tfrmpcodcest.FormShow(Sender: TObject);
begin

edincm.Text := '';
memores.Text := '';
edincmresp.Text := '';
edicest.Text := '';
ediresultado.Text := '';

memo1.Clear;

if frmpesqprodutos <> nil then
   begin
     edincm.Text := frmpesqprodutos.edisimplesncm.Text;
   end;
//endi


btninserir.Enabled := false;
memores.enabled := false;



end;

procedure Tfrmpcodcest.btninserirClick(Sender: TObject);
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



  if frmpesqprodutos <> nil then
     begin
       frmpesqprodutos.edicest.Text := edicest.Text;
     end;
  //endi


  close;

end;

procedure Tfrmpcodcest.Memo1Enter(Sender: TObject);
begin
SelectNext(ActiveControl,True,True);
end;

end.
