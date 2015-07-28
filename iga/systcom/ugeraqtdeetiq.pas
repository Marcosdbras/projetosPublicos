unit ugeraqtdeetiq;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, DBTables, DBClient;

type
  Tfrmgeraqtdeetiq = class(TForm)
    btnsalvar: TBitBtn;
    btncancelar: TBitBtn;
    Label1: TLabel;
    lblproduto: TLabel;
    Label2: TLabel;
    ediqtde: TEdit;
    procedure btncancelarClick(Sender: TObject);
    procedure ediqtdeKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnsalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmgeraqtdeetiq: Tfrmgeraqtdeetiq;

implementation
     uses ugeral, udados;
{$R *.dfm}

procedure Tfrmgeraqtdeetiq.btncancelarClick(Sender: TObject);
begin
close;
end;

procedure Tfrmgeraqtdeetiq.ediqtdeKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
     begin
       key := #0;
       SelectNext(ActiveControl,True,True);
       exit;
     end;
  //endif

  If not( key in['0'..'9',#8] )then
     begin
       beep;
       key:=#0;
     end;
  //endi

end;

procedure Tfrmgeraqtdeetiq.FormShow(Sender: TObject);
//var
//  vardir:string;

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

    end;
  //endth

  while not frmdados.cdsetiq.Eof do
      begin
        frmdados.cdsetiq.Next;
      end;

  lblproduto.Caption := frmdados.Cds_vProdutos.fieldbyname('descricao').AsString;

  ediqtde.Text := '0';
end;

procedure Tfrmgeraqtdeetiq.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
frmdados.cdsetiq.Active := true;
end;

procedure Tfrmgeraqtdeetiq.btnsalvarClick(Sender: TObject);
var
   icontador, icoluna:integer;
begin
if strtoint(ediqtde.Text) <= 0 then
   exit;
//endi


icontador := 1;
icoluna := 1;

while true do
  begin

    icoluna := 1;

    frmdados.cdsetiq.Append;



    while true do
      begin

        if icoluna = 1 then
           begin
             frmdados.cdsetiq.FieldByName('nome1').AsString := frmdados.Cds_vProdutos.fieldbyname('descricao').asString;
             frmdados.cdsetiq.FieldByName('valor1').AsString := 'R$ '+formatfloat('###,##0.00',frmdados.Cds_vProdutos.fieldbyname('prve').asfloat);
             frmdados.cdsetiq.FieldByName('empresa1').AsString := frmdados.Cds_config.fieldbyname('campo2').asString;
             frmdados.cdsetiq.FieldByName('cbar1').AsString := frmdados.Cds_vProdutos.fieldbyname('cbar').asString;
           end;
        //endi
        if icoluna = 2 then
           begin
             frmdados.cdsetiq.FieldByName('nome2').AsString := frmdados.Cds_vProdutos.fieldbyname('descricao').asString;
             frmdados.cdsetiq.FieldByName('valor2').AsString := 'R$ '+formatfloat('###,##0.00',frmdados.Cds_vProdutos.fieldbyname('prve').asfloat);
             frmdados.cdsetiq.FieldByName('empresa2').AsString := frmdados.Cds_config.fieldbyname('campo2').asString;
             frmdados.cdsetiq.FieldByName('cbar2').AsString := frmdados.Cds_vProdutos.fieldbyname('cbar').asString;
           end;
        //endi
        if icoluna = 3 then
           begin
             frmdados.cdsetiq.FieldByName('nome3').AsString := frmdados.Cds_vProdutos.fieldbyname('descricao').asString;
             frmdados.cdsetiq.FieldByName('valor3').AsString := 'R$ '+formatfloat('###,##0.00',frmdados.Cds_vProdutos.fieldbyname('prve').asfloat);
             frmdados.cdsetiq.FieldByName('empresa3').AsString := frmdados.Cds_config.fieldbyname('campo2').asString;
             frmdados.cdsetiq.FieldByName('cbar3').AsString := frmdados.Cds_vProdutos.fieldbyname('cbar').asString;
           end;
        //endi
        if icoluna = 4 then
           begin
             frmdados.cdsetiq.FieldByName('nome4').AsString := frmdados.Cds_vProdutos.fieldbyname('descricao').asString;
             frmdados.cdsetiq.FieldByName('valor4').AsString := 'R$ '+formatfloat('###,##0.00',frmdados.Cds_vProdutos.fieldbyname('prve').asfloat);
             frmdados.cdsetiq.FieldByName('empresa4').AsString := frmdados.Cds_config.fieldbyname('campo2').asString;
             frmdados.cdsetiq.FieldByName('cbar4').AsString := frmdados.Cds_vProdutos.fieldbyname('cbar').asString;
           end;
        //endi
        if icoluna = 5 then
           begin
             frmdados.cdsetiq.FieldByName('nome5').AsString := frmdados.Cds_vProdutos.fieldbyname('descricao').asString;
             frmdados.cdsetiq.FieldByName('valor5').AsString := 'R$ '+formatfloat('###,##0.00',frmdados.Cds_vProdutos.fieldbyname('prve').asfloat);
             frmdados.cdsetiq.FieldByName('empresa5').AsString := frmdados.Cds_config.fieldbyname('campo2').asString;
             frmdados.cdsetiq.FieldByName('cbar5').AsString := frmdados.Cds_vProdutos.fieldbyname('cbar').asString;
           end;
        //endi



        icontador := icontador + 1;

        if ( icontador > strtoint(ediqtde.Text)  ) then
           break;
        //endi


        icoluna := icoluna + 1;

        if (icoluna > 5) then
           break;
        //endi

      end;
    //endw

    frmdados.cdsetiq.Post;

    if (icontador > strtoint(ediqtde.Text)) then
       break;
    //endi


  end;
//endw





close;
end;

end.
