unit uindice;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls, DBCtrls, EditNum;

type
  Tfrmindice = class(TForm)
    btnsalvar: TBitBtn;
    btncancelar: TBitBtn;
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
    ckbviatexto: TRadioButton;
    ckbviatcpip: TRadioButton;
    Label11: TLabel;
    Label12: TLabel;
    ediacbrmonitor_hosttcpip: TEdit;
    ediacbrmonitor_porttcpip: TEdit;
    Label13: TLabel;
    Label1: TLabel;
    Bevel2: TBevel;
    Label14: TLabel;
    cbxfonte_transp_imposto: TComboBox;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    btnaplicaliq: TBitBtn;
    edtaliqfederal: TEdit;
    edtaliqestadual: TEdit;
    edtaliqmunicipal: TEdit;
    lblregistro: TLabel;
    procedure edinnfKeyPress(Sender: TObject; var Key: Char);
    procedure edicaminhoarqnfeKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnsalvarClick(Sender: TObject);
    procedure btncancelarClick(Sender: TObject);
    procedure edicontadornfeKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure ediacbrmonitor_hosttcpipKeyPress(Sender: TObject; var Key: Char);
    procedure ediacbrmonitor_porttcpipKeyPress(Sender: TObject; var Key: Char);
    procedure edtaliqfederalExit(Sender: TObject);
    procedure edtaliqestadualExit(Sender: TObject);
    procedure edtaliqmunicipalExit(Sender: TObject);
    procedure cbxfonte_transp_impostoChange(Sender: TObject);
    procedure btnaplicaliqClick(Sender: TObject);
    procedure salvar;
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

      ediacbrmonitor_porttcpip.Text := cds_indice.FieldByName('acbrmonitor_porttcpip').asString;
      ediacbrmonitor_hosttcpip.Text := cds_indice.FieldByName('acbrmonitor_hosttcpip').asString;

      case cds_indice.FieldByName('acbrmonitor_tipocomunicacao').asInteger of
       0:begin
           ckbviatexto.Checked := true;
         end;
       1:begin
           ckbviatcpip.Checked := true;
         end;

      end;


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


      cbxfonte_transp_imposto.Text :=  cds_indice.FieldByName('fonte_transp_imposto').asString;
      edtaliqfederal.Text := formatfloat('###,##0.00',  cds_indice.FieldByName('aliqfederal').asfloat );
      edtaliqestadual.Text := formatfloat('###,##0.00',  cds_indice.FieldByName('aliqestadual').asfloat );
      edtaliqmunicipal.Text := formatfloat('###,##0.00',  cds_indice.FieldByName('aliqmunicipal').asfloat );


      //cds_temp.Edit;
      //cds_temp.FieldByName('cod2p').asInteger := cds_indice.FieldByName('cipi').asInteger;
      //cds_temp.FieldByName('cod9p').asInteger := cds_indice.FieldByName('cpis').asInteger;
      //cds_temp.FieldByName('cod10p').asInteger := cds_indice.FieldByName('ccofins').asInteger;

      if  cbxfonte_transp_imposto.Text = 'IBPT' then
         begin
           edtaliqfederal.Enabled := false;
           edtaliqestadual.Enabled := false;
           edtaliqmunicipal.Enabled := false;
           btnaplicaliq.Enabled := false;
         end
     else
        begin
           edtaliqfederal.Enabled := true;
           edtaliqestadual.Enabled := true;
           edtaliqmunicipal.Enabled := true;
           btnaplicaliq.Enabled := true;

        end;

    end;
  //endth

  lblregistro.Caption := '';

end;

procedure Tfrmindice.btnsalvarClick(Sender: TObject);
begin
  salvar;
  close;

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

procedure Tfrmindice.ediacbrmonitor_hosttcpipKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
     begin
       key := #0;
       SelectNext(ActiveControl,True,True);
       exit;
     end;
  //endif

end;

procedure Tfrmindice.ediacbrmonitor_porttcpipKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
     begin
       key := #0;
       SelectNext(ActiveControl,True,True);
       exit;
     end;
  //endif

end;

procedure Tfrmindice.edtaliqfederalExit(Sender: TObject);
begin
try
  strtofloat( edtaliqfederal.Text );
except
  edtaliqfederal.SetFocus;
end;
end;

procedure Tfrmindice.edtaliqestadualExit(Sender: TObject);
begin
try
  strtofloat( edtaliqestadual.Text );
except
  edtaliqestadual.SetFocus;
end;

end;

procedure Tfrmindice.edtaliqmunicipalExit(Sender: TObject);
begin
try
  strtofloat( edtaliqmunicipal.Text );
except
  edtaliqmunicipal.SetFocus;
end;

end;

procedure Tfrmindice.cbxfonte_transp_impostoChange(Sender: TObject);
begin
      if  cbxfonte_transp_imposto.Text = 'IBPT' then
         begin
           edtaliqfederal.Enabled := false;
           edtaliqestadual.Enabled := false;
           edtaliqmunicipal.Enabled := false;
           btnaplicaliq.Enabled := false;
         end
     else
        begin
           edtaliqfederal.Enabled := true;
           edtaliqestadual.Enabled := true;
           edtaliqmunicipal.Enabled := true;
           btnaplicaliq.Enabled := true;

        end;

end;

procedure Tfrmindice.btnaplicaliqClick(Sender: TObject);
begin

salvar;

lblregistro.Caption := 'Aguarde... Pode demorar alguns minutos.';
Update;

with frmdados do
  begin
    sql_produtos.Active := false;
    cds_produtos.Active := false;

    sql_produtos.SQL.Clear;
    sql_produtos.SQL.Add('select * from produtos');


    sql_produtos.Active := true;
    cds_produtos.Active := true;

    while not cds_produtos.Eof do
      begin
         cds_produtos.Edit;
         cds_produtos.FieldByName('aliqfederal').AsFloat := strtofloat( tirapontos( edtaliqfederal.Text)  );
         cds_produtos.FieldByName('aliqestadual').AsFloat := strtofloat( tirapontos( edtaliqestadual.Text)  );
         cds_produtos.FieldByName('aliqmunicipal').AsFloat := strtofloat( tirapontos( edtaliqmunicipal.Text)  );
         cds_produtos.Post;

         cds_produtos.Next;


      end;

  end;


  lblregistro.Caption := '';

  showmessage('Aliquotas SEBRAE aplicadas com sucesso');

end;

procedure tfrmindice.salvar;
var svalor:string;
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

    cds_indice.FieldByName('acbrmonitor_porttcpip').asString := ediacbrmonitor_porttcpip.Text;
    cds_indice.FieldByName('acbrmonitor_hosttcpip').asString := ediacbrmonitor_hosttcpip.Text;

    if ckbviatexto.Checked  then
    begin
      cds_indice.FieldByName('acbrmonitor_tipocomunicacao').asInteger := 0;
    end
    else
    begin
      cds_indice.FieldByName('acbrmonitor_tipocomunicacao').asInteger := 1;
    end;

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


      cds_indice.FieldByName('fonte_transp_imposto').asString := cbxfonte_transp_imposto.Text;

      svalor := tirapontos(  edtaliqfederal.Text  );
      //svalor :=  Decimal_Is_( svalor );
      cds_indice.FieldByName('aliqfederal').asfloat :=     strtofloat( svalor ) ;


      svalor := tirapontos(  edtaliqestadual.Text  );
      //svalor :=  Decimal_Is_Point( svalor );
      cds_indice.FieldByName('aliqestadual').asfloat :=     strtofloat( svalor ) ;


      svalor := tirapontos(  edtaliqmunicipal.Text  );
      //svalor :=  Decimal_Is_Point( svalor );
      cds_indice.FieldByName('aliqmunicipal').asfloat :=     strtofloat( svalor ) ;


    //cds_indice.FieldByName('cipi').asInteger := cds_temp.FieldByName('cod2p').asInteger;
    //cds_indice.FieldByName('cpis').asInteger := cds_temp.FieldByName('cod9p').asInteger;
    //cds_indice.FieldByName('ccofins').asInteger := cds_temp.FieldByName('cod10p').asInteger;
    

    cds_indice.Post;


  end;
//endi

end;

end.
