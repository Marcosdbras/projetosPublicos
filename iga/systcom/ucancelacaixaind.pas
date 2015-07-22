unit ucancelacaixaind;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, SayPrint;

type
  Tfrmcancelacaixaind = class(TForm)
    btnabrir: TButton;
    btncancelar: TButton;
    Label2: TLabel;
    cbxusucai: TDBLookupComboBox;
    PrintCaixa: TSayPrint;
    lbltitncopia: TLabel;
    edincopias: TEdit;
    procedure FormShow(Sender: TObject);
    procedure btncancelarClick(Sender: TObject);
    procedure btnabrirClick(Sender: TObject);
    function caixaok(cusu:integer; data:string):boolean;
    procedure lancacaixaind;
    procedure edincopiasKeyPress(Sender: TObject; var Key: Char);
    procedure cbxusucaiEnter(Sender: TObject);
    procedure cbxusucaiExit(Sender: TObject);
  private
    { Private declarations }
    ftotavista, ftotaprazo:real;
  public
    { Public declarations }
  end;

var
  frmcancelacaixaind: Tfrmcancelacaixaind;

implementation

uses ugeral, uDados, ufrenteecf, upesqvfb;

{$R *.dfm}

procedure Tfrmcancelacaixaind.FormShow(Sender: TObject);
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

end;

procedure Tfrmcancelacaixaind.btncancelarClick(Sender: TObject);
begin
close;
end;

procedure Tfrmcancelacaixaind.btnabrirClick(Sender: TObject);
var bcaixaabertoant:boolean;
    sdatamovant:string;
    scaixaok:boolean;
    L,i, x:integer;
begin



with frmdados do
  begin

    if cds_temp.fieldbyname('cod').AsInteger = 0 then
       begin
         showmessage('Selecione Usuário!');
         exit;
       end;

    scaixaok := caixaok(cds_temp.fieldbyname('cod').AsInteger, frmpesqvfb.lbldatafec.caption);

    if ( scaixaok )  then
           begin



              lancacaixaind;


              i := 0;


              while  i < strtoint(edincopias.text) do
                begin

                  printcaixa.BeginPrn;

                  printcaixa.Condensed(false);
                  printcaixa.Expand(True);


                  L := 0;

                  printcaixa.Say(L,0,'CANCELAMENTO DE VENDA NO VALOR DE R$ '+ formatfloat('###,###,##0.00', ftotavista )+' A VISTA ');

                  L := L + 1;

                  printcaixa.Say(L,0,'VALOR DE R$ '+ formatfloat('###,###,##0.00', ftotaprazo )+' A PRAZO ');

                  L := L + 1;

                  printcaixa.Say(L,0,'TOTALIZANDO R$ '+ formatfloat('###,###,##0.00', ftotavista+ftotaprazo ));

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


  end;







end;


function tfrmcancelacaixaind.caixaok(cusu:integer; data:string):boolean;
var vardir:string;
begin



  vardir := extractfilepath(application.ExeName);

  with frmdados do
    begin

      if fileexists(vardir+'caixa.cds') then
         begin
           cds_caixa.Active := true;
           cds_caixa.Filtered := false;
           cds_caixa.Filter := '(cusu = '+inttostr(cusu)+') and (data = '+quotedstr(data)+')';
           cds_caixa.Filtered := true;

           cds_caixa.Last;

           result  := true;

           if cds_caixa.fieldbyname('data').AsString = '' then
              begin
                result := false;
              end



         end
      else
         begin
           result := false;
         end;
      //endi

    end;
  //endth

end;

procedure tfrmcancelacaixaind.lancacaixaind;
var
  fdinheiro:real;
begin

  ftotavista := 0;
  ftotaprazo := 0;

  with frmpesqvfb do
       begin


         if cds_svenda.fieldbyname('din').asfloat > cds_svenda.fieldbyname('totgpagar').asfloat then
            fdinheiro := cds_svenda.fieldbyname('totgpagar').asfloat
         else
            fdinheiro := cds_svenda.fieldbyname('din').asfloat;
         //endi

         if fdinheiro > 0 then
            begin

              ftotavista :=  fdinheiro;


              frmdados.cds_id.Active := true;
              frmdados.cds_caixa.Active := false;


              frmdados.cds_caixa.Active := true;
              frmdados.cds_caixa.Append;
              frmdados.cds_caixa.FieldByName('data').AsDateTime :=  cds_svenda.fieldbyname('datafec').asdatetime;
              frmdados.cds_caixa.FieldByName('valor').AsFloat :=  fdinheiro;
              frmdados.cds_caixa.FieldByName('codformapgto').AsInteger := 99990;
              frmdados.cds_caixa.FieldByName('formapgto').AsString := 'CANCELAMENTO DE VENDA';
              frmdados.cds_caixa.FieldByName('historico').AsString := 'Estorno - Dinheiro';
              frmdados.cds_caixa.FieldByName('op').AsString := 'D';
              frmdados.cds_caixa.FieldByName('status').AsString := 'A';
              frmdados.cds_caixa.FieldByName('cusu').AsInteger := frmdados.Cds_Temp.fieldbyname('cod').AsInteger;
              frmdados.cds_caixa.FieldByName('cusuma').AsInteger := icusu;
              frmdados.cds_caixa.FieldByName('id').AsInteger := cds_svenda.fieldbyname('idterminal').asInteger;
              frmdados.cds_caixa.FieldByName('nped').AsInteger := cds_svenda.fieldbyname('numped').asInteger;
              frmdados.cds_caixa.Post;
              frmdados.cds_caixa.Active := false;
              frmdados.cds_id.Active := false;


            end;
         //endi


         cds_Vencto.Active := false;
         dbx_Vencto.Active := false;
         dbx_Vencto.SQL.Clear;
         dbx_Vencto.SQL.Add('Select * from Vencimentos where ( nco = '+   cds_svenda.fieldbyname('nco').AsString +' ) and (coalesce (nco,0) > 0)');
         dbx_Vencto.Active := true;
         cds_Vencto.Active := true;


         frmdados.cds_caixa.Active := true;
         frmdados.cds_id.Active := true;


         while not cds_vencto.Eof do
           begin

             frmdados.cds_caixa.Append;
             frmdados.cds_caixa.FieldByName('data').AsDateTime :=  cds_svenda.fieldbyname('datafec').asdatetime;
             frmdados.cds_caixa.FieldByName('valor').AsFloat :=  cds_vencto.fieldbyname('valorreal').AsFloat;
             frmdados.cds_caixa.FieldByName('codformapgto').AsInteger := 99990;

             frmdados.cds_caixa.FieldByName('formapgto').AsString := 'CANCELAMENTO DE VENDA';
             frmdados.cds_caixa.FieldByName('historico').AsString := 'Estorno prazo '+ inttostr( cds_vencto.fieldbyname('prazo').AsInteger )+' dias';
             frmdados.cds_caixa.FieldByName('op').AsString := 'D';
             frmdados.cds_caixa.FieldByName('status').AsString := 'A';
             frmdados.cds_caixa.FieldByName('cusu').AsInteger :=  frmdados.Cds_Temp.fieldbyname('cod').AsInteger;
             frmdados.cds_caixa.FieldByName('cusuma').AsInteger := icusu;
             frmdados.cds_caixa.FieldByName('id').AsInteger :=    cds_svenda.fieldbyname('idterminal').asInteger;;
             frmdados.cds_caixa.FieldByName('nped').AsInteger := cds_svenda.fieldbyname('numped').asInteger;
             frmdados.cds_caixa.Post;

             ftotaprazo := ftotaprazo +  cds_vencto.fieldbyname('valorreal').AsFloat;

             Cds_Vencto.Next;
           end;
         //endw



         frmdados.cds_caixa.Active := false;
         frmdados.cds_id.Active := false;


         frmdados.Dbx_Exec.Active := false;
         frmdados.Dbx_Exec.SQL.Clear;
         frmdados.Dbx_Exec.SQL.Add('Delete from svenda where nco = '+cds_svenda.fieldbyname('nco').AsString);
         frmdados.Dbx_Exec.ExecSQL;

         cds_svenda.Refresh;

       end;
  //endi

end;



procedure Tfrmcancelacaixaind.edincopiasKeyPress(Sender: TObject;
  var Key: Char);
begin
If not( key in['0'..'9',#8] ) then
  begin
  beep;
  key:=#0;
  end;
//endi

end;

procedure Tfrmcancelacaixaind.cbxusucaiEnter(Sender: TObject);
begin
tabela := 'Temp';
end;

procedure Tfrmcancelacaixaind.cbxusucaiExit(Sender: TObject);
begin
tabela := 'Vendab';
end;

end.
