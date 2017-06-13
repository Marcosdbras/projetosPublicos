unit ufechacaixaind;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, SayPrint;

type
  Tfrmfechacaixaind = class(TForm)
    btnabrir: TButton;
    btncancelar: TButton;
    Label2: TLabel;
    cbxusucai: TDBLookupComboBox;
    lbltitncopia: TLabel;
    edincopias: TEdit;
    PrintCaixa: TSayPrint;
    procedure FormShow(Sender: TObject);
    procedure btncancelarClick(Sender: TObject);
    procedure btnabrirClick(Sender: TObject);
    procedure edincopiasKeyPress(Sender: TObject; var Key: Char);
    procedure cbxusucaiEnter(Sender: TObject);
    procedure cbxusucaiExit(Sender: TObject);
  private
    { Private declarations }
    canal_impressora:string;
    F:textfile;

  public
    { Public declarations }
  end;

var
  frmfechacaixaind: Tfrmfechacaixaind;

implementation

uses ugeral, uDados, ufrenteecf;

{$R *.dfm}

procedure Tfrmfechacaixaind.FormShow(Sender: TObject);
begin

  frmdados.Cds_indice.Active := false;
  frmdados.Dbx_indice.Active := false;
  frmdados.Dbx_indice.SQL.Clear;
  frmdados.Dbx_indice.SQL.Add('Select * from indice');
  frmdados.Dbx_indice.Active := true;
  frmdados.Cds_indice.Active := true;

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

  canal_impressora := frmdados.Cds_Indice.fieldbyname('caminho_ecf').AsString;

end;

procedure Tfrmfechacaixaind.btncancelarClick(Sender: TObject);
begin
close;
end;

procedure Tfrmfechacaixaind.btnabrirClick(Sender: TObject);
var bcaixaabertoant:boolean;
    sdatamovant:string;
    ssitucaixa:string;

    L,i,x:integer;

    sdata:string;
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
       
   if (frmfrenteecf.bcaixaerro)  then
       begin
         showmessage('CAIXA: '+ssitucaixa);
         frmfrenteecf.bcaixaAberto := bcaixaabertoant ;
         frmfrenteecf.lbldatamov.Caption := sdatamovant ;
         exit;
       end;

    if ssitucaixa  = 'FECHADO' then
       begin
         showmessage('Caixa já está fechado');
         frmfrenteecf.bcaixaAberto := bcaixaabertoant ;
         frmfrenteecf.lbldatamov.Caption := sdatamovant ;
         exit;
       end;

    cds_id.Active := true;
    cds_caixa.Active := true;
    cds_caixa.Append;
    cds_caixa.FieldByName('data').AsDateTime := strtodate(frmfrenteecf.lbldatamov.caption);
    sdata :=  frmfrenteecf.lbldatamov.caption;
    cds_caixa.FieldByName('valor').AsFloat :=  0;
    cds_caixa.FieldByName('historico').AsString := 'Encerramento do caixa';
    cds_caixa.FieldByName('codformapgto').AsInteger := 99996;
    cds_caixa.FieldByName('formapgto').AsString := 'FECHAMENTO DE CAIXA';
    cds_caixa.FieldByName('op').AsString := 'E';
    cds_caixa.FieldByName('status').AsString := 'F';
    cds_caixa.FieldByName('cusu').AsInteger := cds_temp.fieldbyname('cod').AsInteger;
    cds_caixa.FieldByName('cusuma').AsInteger := icusu;
    cds_caixa.FieldByName('id').AsInteger := cds_id.fieldbyname('id').AsInteger;
    cds_caixa.Post;
    cds_caixa.Active := false;
    cds_id.Active := false;

  end;

  i := 0;

  while  i < strtoint(edincopias.text) do
    begin

      AssignFile(F, canal_impressora);
      Rewrite(F);

      writeln(F,  'FECHAMENTO DO CAIXA DE '+ sdata);

      writeln(F, 'Impresso em '+datetimetostr(now) );

      for x := 1 to frmdados.Cds_Indice.fieldbyname('pulalinha').asInteger  do
      begin

        writeln(F,'');


      end;
      //endi

      closefile(F);

      i := i + 1;

    end;
  //endw


  ThreadStatus.Suspended := true;
  application.MessageBox('Caixa Individual encerrado, o sistema será finalizado, inicialize-o novamente com sua senha','Aviso',mb_ok);
  application.Terminate;
         

end;

procedure Tfrmfechacaixaind.edincopiasKeyPress(Sender: TObject;
  var Key: Char);
begin
If not( key in['0'..'9',#8] ) then
  begin
  beep;
  key:=#0;
  end;
//endi

end;

procedure Tfrmfechacaixaind.cbxusucaiEnter(Sender: TObject);
begin
tabela := 'Temp';
end;

procedure Tfrmfechacaixaind.cbxusucaiExit(Sender: TObject);
begin
tabela := 'Vendab';
end;

end.
