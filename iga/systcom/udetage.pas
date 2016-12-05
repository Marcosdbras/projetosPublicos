unit udetage;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, Buttons, StdCtrls, Mask, DB;

type
  Tfrmdetage = class(TForm)
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    btnnovo: TBitBtn;
    btnsalvar: TBitBtn;
    spdcancelar: TSpeedButton;
    Label3: TLabel;
    DBMemo1: TDBMemo;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    Label4: TLabel;
    spdalterarcli: TSpeedButton;
    spdnovocli: TSpeedButton;
    btnexcluir: TBitBtn;
    lbldata: TLabel;
    lblhora: TLabel;
    BitBtn1: TBitBtn;
    procedure btnnovoClick(Sender: TObject);
    procedure btnsalvarClick(Sender: TObject);
    procedure spdcancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure DBLookupComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure spdalterarcliClick(Sender: TObject);
    procedure spdnovocliClick(Sender: TObject);
    procedure btnexcluirClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    icol, ilin:integer;
  public
    { Public declarations }
    sopcaocli:string;
  end;

var
  frmdetage: Tfrmdetage;

implementation
   uses ugeral, udados, uagenda, ucli;
{$R *.dfm}

procedure Tfrmdetage.btnnovoClick(Sender: TObject);
begin
tabela := 'Agedodia';

with frmdados do
  begin
    cds_agedodia.append;
    if cds_temp.FieldByName('cod').asInteger > 0 then
       begin
         cds_agedodia.FieldByName('cfun').asInteger := cds_temp.FieldByName('cod').asInteger;
       end;
    //endi
  end;
//endth

end;

procedure Tfrmdetage.btnsalvarClick(Sender: TObject);
var
  sdata,shora:string;

begin
tabela := 'Agedodia';


with frmdados do
  begin
    if cds_agedodia.State in [dsinsert,dsedit] then
       begin
         cds_agedodia.Post;
       end;
    //endi

  end;
//endth

frmagenda.dbgagedodia.Cells[1,ilin] := '';
frmagenda.dbgagedodia.Cells[2,ilin] := '';



sdata:= datetostr(  frmagenda.mcagenda.Date );
sdata:= bar_is_point(  sdata );

shora := frmagenda.dbgagedodia.Cells[0,ilin]+':00';

frmagenda.mostracompromisso(ilin,sdata,shora);

frmagenda.mostratodos;

frmagenda.montacompromisso;

close;

end;

procedure Tfrmdetage.spdcancelarClick(Sender: TObject);
begin
tabela := 'Agedodia';

close;
end;

procedure Tfrmdetage.FormClose(Sender: TObject; var Action: TCloseAction);
begin


with frmdados do
  begin
    
    if cds_temp.FieldByName('cod').asInteger > 0 then
       begin

         cds_funcionarios.Active := false;
         dbx_funcionarios.Active := false;
         dbx_funcionarios.SQL.Clear;
         dbx_funcionarios.SQL.Add('Select * from funcionarios order by nome' );
         dbx_funcionarios.Active := true;
         cds_funcionarios.Active := true;

         frmagenda.spdfiltrar.Click;

       end;
    //endi

    if cds_agedodia.State in [dsinsert,dsedit] then
       cds_agedodia.cancel;
    //endi
  end;
//endth


Action:=caFree;
frmdetage:=nil;
form_ativo := '';



end;

procedure Tfrmdetage.FormShow(Sender: TObject);
begin

tabela := 'Agedodia';

icol := frmagenda.dbgagedodia.Col;
ilin := frmagenda.dbgagedodia.row;

lbldata.Caption := frmagenda.lbldata.Caption;
lblhora.Caption := frmagenda.lblhora.Caption; 


with frmdados do
  begin
    if cds_agedodia.RecordCount = 0 then
       cds_agedodia.Append;
    //endi


    if cds_temp.FieldByName('cod').asInteger > 0 then
       begin
         cds_funcionarios.Active := false;
         dbx_funcionarios.Active := false;
         dbx_funcionarios.SQL.Clear;
         dbx_funcionarios.SQL.Add('Select * from funcionarios where codigo = '+inttostr( cds_temp.fieldbyname('cod').asInteger ) );
         dbx_funcionarios.Active := true;
         cds_funcionarios.Active := true;

         cds_agedodia.Edit;
         cds_agedodia.FieldByName('cfun').asInteger := cds_temp.FieldByName('cod').asInteger;
       end;
    //endi



            if Cds_Agedodia.RecordCount = 0 then
               begin
                 btnexcluir.Enabled := false;
               end;
            //endi





  end;
//endth



end;

procedure Tfrmdetage.DBLookupComboBox1KeyPress(Sender: TObject;
  var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmdetage.spdalterarcliClick(Sender: TObject);
begin
sopcaocli := 'A';

frmcli := tfrmcli.create(self);
frmcli.showmodal;
frmcli.free;

end;

procedure Tfrmdetage.spdnovocliClick(Sender: TObject);
begin
sopcaocli := 'I';

frmcli := tfrmcli.create(self);
frmcli.showmodal;
frmcli.free;


end;

procedure Tfrmdetage.btnexcluirClick(Sender: TObject);
var
  sdata,shora:string;

begin
       if application.MessageBox('Deseja Realmente Excluir Esse Registro?','Atenção',mb_YesNo + mb_DefButton2) = idYes then
          begin
            frmdados.Cds_Agedodia.Delete;
            if frmdados.Cds_Agedodia.RecordCount = 0 then
               begin
                 close;
               end;
            //endi

            frmagenda.dbgagedodia.Cells[1,ilin] := '';
            frmagenda.dbgagedodia.Cells[2,ilin] := '';
       
            sdata:= datetostr(  frmagenda.mcagenda.Date );
            sdata:= bar_is_point(  sdata );

            shora := frmagenda.dbgagedodia.Cells[0,ilin]+':00';

            frmagenda.mostracompromisso(ilin,sdata,shora);

            frmagenda.mostratodos;

            frmagenda.montacompromisso;

          end;
       //endi

end;

procedure Tfrmdetage.BitBtn1Click(Sender: TObject);
begin
  frmagenda.iccli := frmdados.Cds_agedodia.fieldbyname('ccli').AsInteger;
  frmagenda.icfun := frmdados.Cds_agedodia.fieldbyname('cfun').AsInteger;
  frmagenda.sAssunto := frmdados.Cds_Agedodia.fieldbyname('assunto').asString;
  frmagenda.icodagedodia := frmdados.Cds_Agedodia.fieldbyname('codigo').asInteger;
  frmagenda.sdescricao := frmdados.Cds_Agedodia.fieldbyname('descricao').asString;
end;

end.
