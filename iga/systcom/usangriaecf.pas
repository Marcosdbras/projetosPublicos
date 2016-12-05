unit usangriaecf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, SayPrint;

type
  Tfrmsangriaecf = class(TForm)
    btnbaixa: TButton;
    btncancelar: TButton;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    cbxusucai: TDBLookupComboBox;
    PrintCaixa: TSayPrint;
    lbltitncopia: TLabel;
    edincopias: TEdit;
    procedure FormShow(Sender: TObject);
    procedure btnbaixaClick(Sender: TObject);
    procedure btncancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure edincopiasKeyPress(Sender: TObject; var Key: Char);
    procedure cbxusucaiEnter(Sender: TObject);
    procedure cbxusucaiExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmsangriaecf: Tfrmsangriaecf;

implementation

uses uGeral, uDados, ufrenteecf;

{$R *.dfm}

procedure Tfrmsangriaecf.FormShow(Sender: TObject);
Var
  sData:String;
  sHora:String;
begin

tabela :=  'Sangria';

with frmdados do
  begin
    sData := datetostr(  date  );
    sHora := timetostr( time );

    Cds_Usuarios.Active := false;
    Dbx_Usuarios.Active := false;
    Dbx_Usuarios.SQL.Clear;
    Dbx_Usuarios.SQL.Add('Select * from usuarios');
    Dbx_Usuarios.Active := true;
    Cds_Usuarios.Active := true;

    Cds_temp.Active := false;
    Dbx_temp.Active := false;
    Dbx_temp.SQL.Clear;
    Dbx_temp.SQL.Add('Select * from temp');
    Dbx_temp.Active := true;
    Cds_temp.Active := true;

    Cds_Sangria.Active := false;
    Cds_Sangriadata.DefaultExpression := QuotedStr(  sData  );
    Cds_SangriaOrigem.DefaultExpression := '1';
    Cds_SangriaHora.DefaultExpression := QuotedStr( sHora );

    Dbx_Sangria.Active := false;
    Dbx_Sangria.SQL.Clear;
    Dbx_Sangria.SQL.Add('Select * from Sangria where (codigo = 0) and (origem = 1)');
    Dbx_Sangria.Active := true;
    Cds_Sangria.Active := true;

    Cds_Sangria.Append;


    edincopias.Text := Cds_Indice.fieldbyname('ncopiasv').asString;

  end;
//endith

try

  if (frmdados.Cds_Indice.FieldByName('tpimpv').asInteger = 3) then
     begin

       frmfrenteecf.sayprint.BeginPrn;
       frmfrenteecf.sayprint.Say(0,0,chr(27)+chr(118)+chr(76));
       frmfrenteecf.sayprint.EndPrn;

     end;

  //endi

except
  sMsg := 'Erro ao abrir gaveta para sangria';
end;



end;

procedure Tfrmsangriaecf.btnbaixaClick(Sender: TObject);
var bcaixaabertoant:boolean;
    sdatamovant, ssitucaixa:string;

    L, i, x:integer;

begin


bcaixaabertoant := frmfrenteecf.bcaixaAberto;
sdatamovant := frmfrenteecf.lbldatamov.Caption;


with frmdados do
  begin


     ssitucaixa := frmfrenteecf.verificacaixa(cds_temp.fieldbyname('cod').AsInteger);

     if cds_temp.fieldbyname('cod').AsInteger = 0 then
        begin
          showmessage('Selecione Usuário!');
          frmfrenteecf.bcaixaAberto := bcaixaabertoant ;
          frmfrenteecf.lbldatamov.Caption := sdatamovant ;
          exit;
        end;


     if ssitucaixa  <> 'ABERTO' then
        begin
          showmessage('Caixa está fechado ou inoperante');
          frmfrenteecf.bcaixaAberto := bcaixaabertoant ;
          frmfrenteecf.lbldatamov.Caption := sdatamovant ;
          exit;
        end;


      if frmfrenteecf.lbldatamov.Caption <> datetostr( date ) then
         begin
           if application.MessageBox(pchar('Divergência entre data atual e do sistema, deseja continuar? '+#13+'Data Atual: '+datetostr(date)+#13+'Data do Caixa: '+frmfrenteecf.lbldatamov.Caption),'atenção',mb_yesno) <> 6  then
              begin
                frmfrenteecf.bcaixaAberto := bcaixaabertoant ;
                frmfrenteecf.lbldatamov.Caption := sdatamovant ;
                exit;
              end;
           //endi
         end;
      //endi




     Cds_Sangria.Post;


    cds_id.Active := true;
    cds_caixa.Active := true;
    cds_caixa.Append;
    cds_caixa.FieldByName('data').AsDateTime := strtodate(frmfrenteecf.lbldatamov.Caption);
    cds_caixa.FieldByName('valor').AsFloat :=  cds_sangriavalor.AsFloat;
    cds_caixa.FieldByName('historico').AsString := 'Operação de caixa - Sangria de Caixa';
    cds_caixa.FieldByName('formapgto').AsString := 'SANGRIA';
    cds_caixa.FieldByName('codformapgto').AsInteger := 99997;
    cds_caixa.FieldByName('op').AsString := 'D';
    cds_caixa.FieldByName('status').AsString := 'A';
    cds_caixa.FieldByName('cusu').AsInteger := cds_temp.fieldbyname('cod').AsInteger;
    cds_caixa.FieldByName('cusuma').AsInteger := icusu;
    cds_caixa.FieldByName('id').AsInteger := cds_id.fieldbyname('id').AsInteger;
    cds_caixa.Post;
    cds_caixa.Active := false;
    cds_id.Active := false;

    frmfrenteecf.lbldatamov.Caption :=  datetostr( date );
    frmfrenteecf.lblstatuscaixa.Caption := 'ABERTO'

  end;

  i := 0;


  while  i < strtoint(edincopias.text) do
    begin

      printcaixa.BeginPrn;

      printcaixa.Condensed(false);
      printcaixa.Expand(True);


      L := 0;

      printcaixa.Say(L,0,'SANGRIA NO VALOR DE R$ '+ formatfloat('###,###,##0.00',frmdados.cds_sangriavalor.AsFloat ));

      L := L + 1;

      printcaixa.Say(L,1,'Impresso em '+datetimetostr(now));

      for x := 1 to frmdados.Cds_Indice.fieldbyname('pulalinha').asInteger  do
      begin
         L := L + 1;
         printcaixa.Say(L,0,'');
      end;
      //endi

      printcaixa.EndPrn;

      i := i + 1;

    end;
  //endw


  ThreadStatus.Suspended := true;
  application.MessageBox('Caixa Individual alterado com sucesso, o sistema será finalizado, inicialize-o novamente com a senha do usuário caixa','Aviso',mb_ok);
  application.Terminate;



end;

procedure Tfrmsangriaecf.btncancelarClick(Sender: TObject);
begin
frmdados.Cds_Sangria.cancel;
close;
end;

procedure Tfrmsangriaecf.FormClose(Sender: TObject; var Action: TCloseAction);
begin
tabela := 'Vendab';
end;

procedure Tfrmsangriaecf.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmsangriaecf.edincopiasKeyPress(Sender: TObject;
  var Key: Char);
begin
If not( key in['0'..'9',#8] ) then
  begin
  beep;
  key:=#0;
  end;
//endi

end;

procedure Tfrmsangriaecf.cbxusucaiEnter(Sender: TObject);
begin
tabela := 'Temp';
end;

procedure Tfrmsangriaecf.cbxusucaiExit(Sender: TObject);
begin
tabela := 'Vendab';
end;

end.
