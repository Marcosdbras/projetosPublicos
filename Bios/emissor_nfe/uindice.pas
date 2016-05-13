unit uindice;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls, DBCtrls;

type
  Tfrmindice = class(TForm)
    btnsalvar: TBitBtn;
    btncancelar: TBitBtn;
    Label1: TLabel;
    edicaminhoarqnfe: TEdit;
    edinnf: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    edicaminhoarqnfetemp: TEdit;
    Label2: TLabel;
    edicontadornfe: TEdit;
    edichaveconsultacep: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    ediexportarpara: TEdit;
    Label7: TLabel;
    ediimportarpara: TEdit;
    Bevel1: TBevel;
    cbxconfigcpro: TComboBox;
    Label8: TLabel;
    cbxhverao: TComboBox;
    Label9: TLabel;
    Label10: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure edinnfKeyPress(Sender: TObject; var Key: Char);
    procedure edicaminhoarqnfeKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnsalvarClick(Sender: TObject);
    procedure btncancelarClick(Sender: TObject);
    procedure edicontadornfeKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmindice: Tfrmindice;

implementation
   uses ugeral, udados;
{$R *.dfm}

procedure Tfrmindice.edinnfKeyPress(Sender: TObject; var Key: Char);
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

procedure Tfrmindice.edicaminhoarqnfeKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (key = #13) then
     begin
       key := #0;
       SelectNext(ActiveControl,True,True);
       exit;
     end;
  //endif

end;

procedure Tfrmindice.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  with frmdados do
    begin

      cds_pis.Active := false;
      sql_pis.Active := false;

      cds_cfop.Active := false;
      sql_cfop.Active := false;


      cds_cofins.Active := false;
      sql_cofins.Active := false;


      cds_ipi.Active := false;
      sql_ipi.Active := false;

    end;

  Action:=caFree;
  frmindice:=nil;
  form_ativo := '';

end;

procedure Tfrmindice.FormShow(Sender: TObject);
begin
  with frmdados do
    begin
      
      edinnf.Text :=  inttostr(cds_indice.FieldByName('nnf').asInteger);
      edicaminhoarqnfe.Text := cds_indice.FieldByName('caminhoarqnfe').asString;
      edicaminhoarqnfetemp.Text := cds_indice.FieldByName('caminhoarqnfetemp').asString;
      edicontadornfe.Text :=  inttostr(cds_indice.FieldByName('contadornfe').asInteger);
      edichaveconsultacep.Text := cds_indice.FieldByName('chaveconsultacep').asString;
      ediexportarpara.Text := cds_indice.FieldByName('exportarpara').asString;
      ediimportarpara.Text := cds_indice.FieldByName('importarpara').asString;
      cbxhverao.Text := cds_indice.FieldByName('hverao').asString;


      Case  cds_indice.FieldByName('configcpro').asInteger of

         0:cbxconfigcpro.ItemIndex := 0;
         1:cbxconfigcpro.ItemIndex := 1;
         2:cbxconfigcpro.ItemIndex := 2;
      end;


      //cds_temp.Edit;
      //cds_temp.FieldByName('cod2p').asInteger := cds_indice.FieldByName('cipi').asInteger;
      //cds_temp.FieldByName('cod9p').asInteger := cds_indice.FieldByName('cpis').asInteger;
      //cds_temp.FieldByName('cod10p').asInteger := cds_indice.FieldByName('ccofins').asInteger;


    end;
  //endth

end;

procedure Tfrmindice.btnsalvarClick(Sender: TObject);
begin
with frmdados do
  begin
    if cds_indice.RecordCount = 0 then
       begin
         cds_indice.Append;
       end;
    //endi
    cds_indice.Edit;
    cds_indice.FieldByName('nnf').asInteger := strtoint(edinnf.text);
    cds_indice.FieldByName('contadornfe').asInteger := strtoint(edicontadornfe.text);
    cds_indice.FieldByName('caminhoarqnfe').asString := edicaminhoarqnfe.text;
    cds_indice.FieldByName('caminhoarqnfetemp').asString := edicaminhoarqnfetemp.text;
    cds_indice.FieldByName('chaveconsultacep').asString := edichaveconsultacep.text;
    cds_indice.FieldByName('exportarpara').asString := ediexportarpara.text;
    cds_indice.FieldByName('importarpara').asString := ediimportarpara.text;
    cds_indice.FieldByName('hverao').asString := cbxhverao.text;


    Case  cbxconfigcpro.ItemIndex  of

         0:cds_indice.FieldByName('configcpro').asInteger := 0;
         1:cds_indice.FieldByName('configcpro').asInteger := 1;
         2:cds_indice.FieldByName('configcpro').asInteger := 2;
      end;



    //cds_indice.FieldByName('cipi').asInteger := cds_temp.FieldByName('cod2p').asInteger;
    //cds_indice.FieldByName('cpis').asInteger := cds_temp.FieldByName('cod9p').asInteger;
    //cds_indice.FieldByName('ccofins').asInteger := cds_temp.FieldByName('cod10p').asInteger;
    

    cds_indice.Post;
    close;

  end;
//endi

end;

procedure Tfrmindice.btncancelarClick(Sender: TObject);
begin
close;
end;

procedure Tfrmindice.edicontadornfeKeyPress(Sender: TObject;
  var Key: Char);
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

procedure Tfrmindice.FormCreate(Sender: TObject);
begin
with frmdados do
  begin
    sql_pis.Active := true;
    cds_pis.Active := true;

    sql_cfop.Active := true;
    cds_cfop.Active := true;

    sql_cofins.Active := true;
    cds_cofins.Active := true;

    sql_ipi.Active := true;
    cds_ipi.Active := true;
  end;
//endth
end;

end.
