unit uingestaoecf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, SayPrint;

type
  Tfrmingestaoecf = class(TForm)
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
  frmingestaoecf: Tfrmingestaoecf;

implementation

uses uGeral, uDados, ufrenteecf;

{$R *.dfm}

procedure Tfrmingestaoecf.FormShow(Sender: TObject);
Var
  sData:String;
  sHora:String;
begin

tabela :=  'Ingestao';

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



    Cds_Ingestao.Active := false;
    Cds_Ingestaodata.DefaultExpression := QuotedStr(  sData  );
    Cds_IngestaoOrigem.DefaultExpression := '1';
    Cds_IngestaoHora.DefaultExpression := QuotedStr( sHora );

    Dbx_Ingestao.Active := false;
    Dbx_Ingestao.SQL.Clear;
    Dbx_Ingestao.SQL.Add('Select * from Ingestao where origem = 1');
    Dbx_Ingestao.Active := true;
    Cds_Ingestao.Active := true;



    Cds_Ingestao.Append;



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
  sMsg := 'Erro ao abrir gaveta para ingestão';
end;



end;

procedure Tfrmingestaoecf.btnbaixaClick(Sender: TObject);
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
          showmessage('Caixa está Fechado ou inoperante');
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




     Cds_Ingestao.Post;



    cds_id.Active := true;
    cds_caixa.Active := true;
    cds_caixa.Append;
    cds_caixa.FieldByName('data').AsDateTime := strtodate(frmfrenteecf.lbldatamov.Caption);
    cds_caixa.FieldByName('valor').AsFloat :=  cds_ingestaovalor.AsFloat;
    cds_caixa.FieldByName('historico').AsString := 'Operação de caixa - Inserção de troco';
    cds_caixa.FieldByName('formapgto').AsString := 'SUPRIMENTO DE DINHEIRO';
    cds_caixa.FieldByName('codformapgto').AsInteger := 99998;
    cds_caixa.FieldByName('op').AsString := 'C';
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

      printcaixa.Say(L,0,'SUPRIMENTO NO VALOR DE R$ '+ formatfloat('###,###,##0.00',frmdados.cds_ingestaovalor.AsFloat ));

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

procedure Tfrmingestaoecf.btncancelarClick(Sender: TObject);
begin
frmdados.Cds_Ingestao.cancel;
close;
end;

procedure Tfrmingestaoecf.FormClose(Sender: TObject; var Action: TCloseAction);
begin
tabela := 'Vendab';
end;

procedure Tfrmingestaoecf.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmingestaoecf.edincopiasKeyPress(Sender: TObject;
  var Key: Char);
begin
If not( key in['0'..'9',#8] ) then
  begin
  beep;
  key:=#0;
  end;
//endi

end;

procedure Tfrmingestaoecf.cbxusucaiEnter(Sender: TObject);
begin
tabela := 'Temp';
end;

procedure Tfrmingestaoecf.cbxusucaiExit(Sender: TObject);
begin
tabela := 'Vendab';
end;

end.
