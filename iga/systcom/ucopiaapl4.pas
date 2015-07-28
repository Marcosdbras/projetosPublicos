unit ucopiaapl4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ExtCtrls, ComCtrls, StdCtrls, Grids, DBGrids;

type
  Tfrmcopiaapl4 = class(TForm)
    Bevel1: TBevel;
    spdconfirma: TSpeedButton;
    SpeedButton1: TSpeedButton;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Label3: TLabel;
    lblmensagem2: TLabel;
    antmove: TAnimate;
    lblmensagem: TLabel;
    procedure SpeedButton1Click(Sender: TObject);
    procedure spdconfirmaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcopiaapl4: Tfrmcopiaapl4;

implementation
  uses ugeral, udados, uprincipal;
{$R *.dfm}

procedure Tfrmcopiaapl4.SpeedButton1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmcopiaapl4.spdconfirmaClick(Sender: TObject);
var sPrve, sQtde, sSubtotal, sOp, sEouS, sprcu, sSubtotalc, sdata_op, sValor, sActdesc, sPer, sData:string;
begin

   if application.MessageBox('Deseja Realmente Copiar Dados?','Atenção',mb_YesNo + mb_DefButton2) = idNo then
      exit;
   //endi

   lblmensagem.Visible := true;
   lblmensagem2.Visible := true;

   antmove.Visible := true;
   antmove.Active := true;
   frmcopiaapl4.Update;



   with frmdados do
     begin

       dbx_exec.Active := false;
       dbx_exec.SQL.Clear;
       dbx_exec.SQL.Add('delete from clientes');
       dbx_exec.ExecSQL;

       cds_clientes.Active := false;
       dbx_clientes.Active := false;
       dbx_clientes.SQL.Clear;
       dbx_clientes.SQL.Add('Select * from clientes order by nome');
       dbx_clientes.Active := true;
       cds_clientes.Active := true;

       Dbx_Dbf.active := false;
       Dbx_Dbf.Sql.Clear;
       Dbx_Dbf.sql.Add('Select * from '+quotedstr(frmdados.Cds_Indice.fieldbyName('caminhodbf_1').asString+'\cliente.dbf'));
       Dbx_Dbf.active := true;

       tabela := 'Clientes';

       while not dbx_dbf.Eof do
         begin
           cds_clientes.Append;
           cds_clientes.FieldByName('codigo').asInteger := dbx_dbf.fieldbyname('codigo').asInteger;
           cds_clientes.FieldByName('nome').asString := dbx_dbf.fieldbyname('nome').asString;
           cds_clientes.FieldByName('bairroent').asString := dbx_dbf.fieldbyname('bairro').asString;
           cds_clientes.FieldByName('fantasia').asString := dbx_dbf.fieldbyname('fantasia').asString;
           cds_clientes.FieldByName('endent').asString := dbx_dbf.fieldbyname('endereco').asString;
           cds_clientes.FieldByName('complent').asString := dbx_dbf.fieldbyname('complement').asString;
           cds_clientes.FieldByName('cidadeent').asString := dbx_dbf.fieldbyname('cidade').asString;
           cds_clientes.FieldByName('estadoent').asString := dbx_dbf.fieldbyname('estado').asString;
           cds_clientes.FieldByName('cepent').asString := dbx_dbf.fieldbyname('cep').asString;
           cds_clientes.FieldByName('telefones').asString := dbx_dbf.fieldbyname('telefone').asString;
           cds_clientes.FieldByName('celular').asString := dbx_dbf.fieldbyname('celular').asString;
           cds_clientes.FieldByName('email').asString := dbx_dbf.fieldbyname('email').asString;
           cds_clientes.FieldByName('contato').asString := dbx_dbf.fieldbyname('contato').asString;
           cds_clientes.FieldByName('cpf').asString := dbx_dbf.fieldbyname('cpf').asString;
           cds_clientes.FieldByName('ie').asString := dbx_dbf.fieldbyname('rg').asString;
           cds_clientes.Post;
           dbx_dbf.Next;
         end;
       //endw
     end;
   //endi

   close;


   lblmensagem.Visible := false;
   lblmensagem2.Visible := false;
   antmove.Visible := false;
   antmove.Active  := false;

end;

procedure Tfrmcopiaapl4.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  vardir:string;
begin

frmdados.ADO_Conexao.Connected := false;



  vardir := ExtractFilePath(Application.ExeName);

  frmPrincipal.pnlcentral.Visible := true;
  Action:=caFree;
  frmCopiaApl4:=nil;
  form_ativo := '';
end;

procedure Tfrmcopiaapl4.FormShow(Sender: TObject);
begin
   lblmensagem.Visible := false;
   lblmensagem2.Visible := false;
   antmove.Visible := false;

     tabela := 'Clientes';

     itag := frmprincipal.Clientes1.Tag;

     if localiza_DetItens_Usuario(iTag,icUsu,'I') > 0 then
        begin
          bClientesI := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'A') > 0 then
        begin
          bClientesA := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'E') > 0 then
        begin
          bClientesE := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'N') > 0 then
        begin
          bClientesN := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'V') > 0 then
        begin
          bClientesV := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'R') > 0 then
        begin
          bClientesR := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'CF') > 0 then
        begin
          bClientesCF := true;
        end;
     //endi



end;

end.
