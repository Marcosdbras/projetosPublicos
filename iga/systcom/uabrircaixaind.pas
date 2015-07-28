unit uabrircaixaind;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, SayPrint;

type
  Tfrmabrircaixaind = class(TForm)
    btncancelar: TButton;
    btnabrir: TButton;
    Label1: TLabel;
    ediinicio: TEdit;
    cbxusucai: TDBLookupComboBox;
    Label2: TLabel;
    lbltitncopia: TLabel;
    edincopias: TEdit;
    PrintCaixa: TSayPrint;
    procedure FormCreate(Sender: TObject);
    procedure ediinicioKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure btncancelarClick(Sender: TObject);
    procedure btnabrirClick(Sender: TObject);
    procedure ediinicioExit(Sender: TObject);
    procedure edincopiasKeyPress(Sender: TObject; var Key: Char);
    procedure cbxusucaiEnter(Sender: TObject);
    procedure cbxusucaiExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmabrircaixaind: Tfrmabrircaixaind;

implementation
   uses ugeral, udados, ufrenteecf;
{$R *.dfm}

procedure Tfrmabrircaixaind.FormCreate(Sender: TObject);
begin
SysLocale.MiddleEast := true;
Ediinicio.BiDiMode := bdRightToLeft;

end;

procedure Tfrmabrircaixaind.ediinicioKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not( key in['0'..'9',#8,','] ) then
     begin
       beep;
       key:=#0;
     end;
   //endi

end;

procedure Tfrmabrircaixaind.FormShow(Sender: TObject);
begin
  frmdados.Cds_Usuarios.Active := false;
  frmdados.Dbx_Usuarios.Active := false;
  frmdados.Dbx_Usuarios.SQL.Clear;
  frmdados.Dbx_Usuarios.SQL.Add('Select * from usuarios');
  frmdados.Dbx_Usuarios.Active := true;
  frmdados.Cds_Usuarios.Active := true;

  frmdados.Cds_temp.Active := false;
  frmdados.Dbx_temp.Active := false;
  frmdados.Dbx_temp.SQL.Clear;
  frmdados.Dbx_temp.SQL.Add('Select * from temp');
  frmdados.Dbx_temp.Active := true;
  frmdados.Cds_temp.Active := true;


  edincopias.Text := frmdados.Cds_Indice.fieldbyname('ncopiasv').asString;


  ediinicio.Text := '0,00';
end;

procedure Tfrmabrircaixaind.btncancelarClick(Sender: TObject);
begin
close;
end;

procedure Tfrmabrircaixaind.btnabrirClick(Sender: TObject);
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


     if ssitucaixa  = 'ABERTO' then
        begin
          showmessage('Caixa já está aberto');
          frmfrenteecf.bcaixaAberto := bcaixaabertoant ;
          frmfrenteecf.lbldatamov.Caption := sdatamovant ;
          exit;
        end;
    
    cds_id.Active := true;
    cds_caixa.Active := true;
    cds_caixa.Append;
    cds_caixa.FieldByName('data').AsDateTime := date;
    cds_caixa.FieldByName('valor').AsFloat :=  strtofloat( tirapontos(ediinicio.text) );
    cds_caixa.FieldByName('historico').AsString := 'Saldo Anterior - Abertura de caixa';
    cds_caixa.FieldByName('codformapgto').AsInteger := 99999;
    cds_caixa.FieldByName('formapgto').AsString := 'ABERTURA DO CAIXA';
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

      printcaixa.Say(L,0,'ABERTURA DO CAIXA COM VALOR DE R$ '+ formatfloat('###,###,##0.00',strtofloat( tirapontos(ediinicio.text) )   ));

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
  application.MessageBox('Caixa Individual aberto com sucesso, o sistema será finalizado, inicialize-o novamente com sua senha','Aviso',mb_ok);
  application.Terminate;
end;

procedure Tfrmabrircaixaind.ediinicioExit(Sender: TObject);
begin
formatfloat('###,###,##0.00', strtofloat( tirapontos(ediinicio.text) ) );
end;

procedure Tfrmabrircaixaind.edincopiasKeyPress(Sender: TObject;
  var Key: Char);
begin
If not( key in['0'..'9',#8] ) then
  begin
  beep;
  key:=#0;
  end;
//endi

end;

procedure Tfrmabrircaixaind.cbxusucaiEnter(Sender: TObject);
begin
tabela := 'Temp';
end;

procedure Tfrmabrircaixaind.cbxusucaiExit(Sender: TObject);
begin
tabela := 'Vendab';
end;

end.
