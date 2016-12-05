unit ucopiaapl3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ExtCtrls, ComCtrls, StdCtrls;

type
  Tfrmcopiaapl3 = class(TForm)
    Bevel1: TBevel;
    spdconfirma: TSpeedButton;
    SpeedButton1: TSpeedButton;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Label3: TLabel;
    Label4: TLabel;
    lblmensagem2: TLabel;
    antmove: TAnimate;
    lblmensagem: TLabel;
    Label1: TLabel;
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
  frmcopiaapl3: Tfrmcopiaapl3;

implementation
  uses ugeral, udados, uprincipal;
{$R *.dfm}

procedure Tfrmcopiaapl3.SpeedButton1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmcopiaapl3.spdconfirmaClick(Sender: TObject);
var sPrve, sQtde, sSubtotal, sOp, sEouS, sprcu, sSubtotalc, sdata_op, sValor, sActdesc, sPer, sData:string;
begin

if application.MessageBox('Deseja Realmente Copiar Dados?','Atenção',mb_YesNo + mb_DefButton2) = idNo then
   exit;
//endi

lblmensagem.Visible := true;
lblmensagem2.Visible := true;

antmove.Visible := true;
antmove.Active := true;
frmcopiaapl3.Update;



   tabela := 'vProdutos';




   with frmdados do
     begin

       Dbx_Dbf.active := false;
       Dbx_Dbf.Sql.Clear;
       Dbx_Dbf.sql.Add('Select * from '+quotedstr(frmdados.Cds_Indice.fieldbyName('caminhodbf_1').asString+'material.dbf'));
       Dbx_Dbf.active := true;

     end;
   //endi


   try
     frmdados.Dbx_Dbf.First;
    while not  frmdados.Dbx_Dbf.Eof do
      begin

        sPrve := frmdados.Dbx_Dbf.FieldByName('precof').asString;
        sPrcu := frmdados.Dbx_Dbf.FieldByName('custo').asString;
        sQtde := frmdados.Dbx_Dbf.FieldByName('qatual').asString;
        sPer := frmdados.Dbx_Dbf.FieldByName('margen_f').asString;

        sData_Op := datetostr(date);
        sActDesc := 'T';

        frmdados.dbx_Exec.Active := false;
        frmdados.dbx_Exec.SQL.Clear;
        frmdados.dbx_Exec.SQL.Add('Insert into Produtos(');

        if frmdados.Dbx_Dbf.FieldByName('material').asString <> '' then
           frmdados.dbx_Exec.SQL.Add('descricao, ');
        //endi

        frmdados.dbx_Exec.SQL.Add('Codigo');

        frmdados.dbx_Exec.SQL.Add(')');

        frmdados.dbx_Exec.SQL.Add(' values (');

        if frmdados.Dbx_Dbf.FieldByName('material').asString <> '' then
           frmdados.dbx_Exec.SQL.Add(quotedstr(frmdados.Dbx_Dbf.FieldByName('material').asString)+',');
        //endi

        frmdados.dbx_Exec.SQL.Add(frmdados.Dbx_Dbf.FieldByName('codmat').asString);

        frmdados.dbx_Exec.SQL.Add(')');

        frmdados.dbx_Exec.ExecSQL;

        frmdados.dbx_Exec.Active := false;
        frmdados.dbx_Exec.SQL.Clear;
        frmdados.dbx_Exec.SQL.Add('Insert into dProdutos(');


        if sQtde <> '' then
           frmdados.dbx_Exec.SQL.Add('Qua, ');
        //endi

        if sPrve <> '' then
           frmdados.dbx_Exec.SQL.Add('prve, ');
        //endi

        if sActDesc <> '' then
           frmdados.dbx_Exec.SQL.Add('ActDesc, ');
        //endi

        if sPrcu <> '' then
           frmdados.dbx_Exec.SQL.Add('prcu, ');
        //endi

        if sPer <> '' then
           frmdados.dbx_Exec.SQL.Add('Per, ');
        //endi

        frmdados.dbx_Exec.SQL.Add('ultcont, ');

        frmdados.dbx_Exec.SQL.Add('CodSita, ');

        frmdados.dbx_Exec.SQL.Add('CodSitb, ');

        frmdados.dbx_Exec.SQL.Add('cdescprod, ');

        frmdados.dbx_Exec.SQL.Add('codigo');

        frmdados.dbx_Exec.SQL.Add(')');

        frmdados.dbx_Exec.SQL.Add(' values (');

        if sQtde <> '' then
           frmdados.dbx_Exec.SQL.Add(decimal_is_point(sQtde)+',');
        //endi

        if sPrve <> '' then
           frmdados.dbx_Exec.SQL.Add(decimal_is_point(sPrve)+',');
        //endi

        if sActDesc <> '' then
           frmdados.dbx_Exec.SQL.Add(quotedstr(sActDesc)+',');
        //endi

        if sPrcu <> '' then
           frmdados.dbx_Exec.SQL.Add(decimal_is_point(sPrcu)+',');
        //endi

        if sPer <> '' then
           frmdados.dbx_Exec.SQL.Add(decimal_is_point(sPer)+',');
        //endi

        sData := datetostr(date);
        frmdados.dbx_Exec.SQL.Add(quotedstr(bar_is_point(sData))+',');

        frmdados.dbx_Exec.SQL.Add('1,');

        frmdados.dbx_Exec.SQL.Add('2,');

        frmdados.dbx_Exec.SQL.Add(frmdados.Dbx_Dbf.FieldByName('codmat').asString+',');

        frmdados.dbx_Exec.SQL.Add(frmdados.Dbx_Dbf.FieldByName('codmat').asString);

        frmdados.dbx_Exec.SQL.Add(')');

        frmdados.dbx_Exec.ExecSQL;

        frmdados.Dbx_Dbf.Next;
      end;

    except
      showmessage('Erro!!!');
    end;





   with frmdados do
     begin

       Dbx_Dbf.active := false;
       Dbx_Dbf.Sql.Clear;
       Dbx_Dbf.sql.Add('Select * from '+quotedstr(frmdados.Cds_Indice.fieldbyName('caminhodbf_1').asString+'clientes.dbf'));
       Dbx_Dbf.active := true;

     end;
   //endi


   try
     frmdados.Dbx_Dbf.First;
    while not  frmdados.Dbx_Dbf.Eof do
      begin


        frmdados.dbx_Exec.Active := false;
        frmdados.dbx_Exec.SQL.Clear;
        frmdados.dbx_Exec.SQL.Add('Insert into Clientes(');

        if frmdados.Dbx_Dbf.FieldByName('cli').asString <> '' then
           frmdados.dbx_Exec.SQL.Add('Nome, ');
        //endi

        if frmdados.Dbx_Dbf.FieldByName('fantasia').asString <> '' then
           frmdados.dbx_Exec.SQL.Add('Fantasia, ');
        //endi


        //entrega
        if frmdados.Dbx_Dbf.FieldByName('Endereco').asString <> '' then
           frmdados.dbx_Exec.SQL.Add('EndEnt, ');
        //endi

        if frmdados.Dbx_Dbf.FieldByName('Bairro').asString <> '' then
           frmdados.dbx_Exec.SQL.Add('BairroEnt, ');
        //endi

        if frmdados.Dbx_Dbf.FieldByName('Vila').asString <> '' then
           frmdados.dbx_Exec.SQL.Add('ComplEnt, ');
        //endi

        if frmdados.Dbx_Dbf.FieldByName('Cidade').asString <> '' then
           frmdados.dbx_Exec.SQL.Add('Cidadeent, ');
        //endi

        if frmdados.Dbx_Dbf.FieldByName('uf').asString <> '' then
           frmdados.dbx_Exec.SQL.Add('Estadoent, ');
        //endi

        if frmdados.Dbx_Dbf.FieldByName('Cep').asString <> '' then
           frmdados.dbx_Exec.SQL.Add('Cepent, ');
        //endi

        //if frmdados.Dbx_Dbf.FieldByName('Fone').asString <> '' then
        //   frmdados.dbx_Exec.SQL.Add('telefoneent, ');
        //endi

        //telefones
        if (frmdados.Dbx_Dbf.FieldByName('fone').asString <> '') or (frmdados.Dbx_Dbf.FieldByName('fax').asString <> '')then
           frmdados.dbx_Exec.SQL.Add('telefones, ');
        //endi



        //cobrança
        if frmdados.Dbx_Dbf.FieldByName('Endereco').asString <> '' then
           frmdados.dbx_Exec.SQL.Add('Endcob, ');
        //endi

        if frmdados.Dbx_Dbf.FieldByName('Bairro').asString <> '' then
           frmdados.dbx_Exec.SQL.Add('Bairrocob, ');
        //endi

        if frmdados.Dbx_Dbf.FieldByName('Vila').asString <> '' then
           frmdados.dbx_Exec.SQL.Add('Complcob, ');
        //endi

        if frmdados.Dbx_Dbf.FieldByName('Cidade').asString <> '' then
           frmdados.dbx_Exec.SQL.Add('Cidadecob, ');
        //endi

        if frmdados.Dbx_Dbf.FieldByName('uf').asString <> '' then
           frmdados.dbx_Exec.SQL.Add('Estadocob, ');
        //endi

        if frmdados.Dbx_Dbf.FieldByName('Cep').asString <> '' then
           frmdados.dbx_Exec.SQL.Add('Cepcob, ');
        //endi

        //if frmdados.Dbx_Dbf.FieldByName('Fone').asString <> '' then
        //   frmdados.dbx_Exec.SQL.Add('telefonecob, ');
        //endi




        //comercial
        if frmdados.Dbx_Dbf.FieldByName('Endereco').asString <> '' then
           frmdados.dbx_Exec.SQL.Add('Endcom, ');
        //endi

        if frmdados.Dbx_Dbf.FieldByName('Bairro').asString <> '' then
           frmdados.dbx_Exec.SQL.Add('Bairrocom, ');
        //endi

        if frmdados.Dbx_Dbf.FieldByName('Vila').asString <> '' then
           frmdados.dbx_Exec.SQL.Add('Complcom, ');
        //endi

        if frmdados.Dbx_Dbf.FieldByName('Cidade').asString <> '' then
           frmdados.dbx_Exec.SQL.Add('Cidadecom, ');
        //endi

        if frmdados.Dbx_Dbf.FieldByName('uf').asString <> '' then
           frmdados.dbx_Exec.SQL.Add('Estadocom, ');
        //endi

        if frmdados.Dbx_Dbf.FieldByName('Cep').asString <> '' then
           frmdados.dbx_Exec.SQL.Add('Cepcom, ');
        //endi

        //if frmdados.Dbx_Dbf.FieldByName('Fone').asString <> '' then
        //   frmdados.dbx_Exec.SQL.Add('telefonecom, ');
        //endi


        //identificação

        if frmdados.Dbx_Dbf.FieldByName('cpf').asString <> '' then
           frmdados.dbx_Exec.SQL.Add('cpf, ')
        else
           if frmdados.Dbx_Dbf.FieldByName('cgc').asString <> '' then
              frmdados.dbx_Exec.SQL.Add('cpf, ');
           //endi
        //endi

        if frmdados.Dbx_Dbf.FieldByName('insc_est').asString <> '' then
           frmdados.dbx_Exec.SQL.Add('ie, ')
        else
           if frmdados.Dbx_Dbf.FieldByName('rg').asString <> '' then
              frmdados.dbx_Exec.SQL.Add('ie, ');
           //endi
        //endi



        //outros
        if frmdados.Dbx_Dbf.FieldByName('d_cadastro').asString <> '' then
           frmdados.dbx_Exec.SQL.Add('dtcad, ');
        //endi

        if frmdados.Dbx_Dbf.FieldByName('comprador').asString <> '' then
           frmdados.dbx_Exec.SQL.Add('comprador, ');
        //endi

        if (frmdados.Dbx_Dbf.FieldByName('obs_1').asString <> '') or (frmdados.Dbx_Dbf.FieldByName('obs_2').asString <> '')then
           frmdados.dbx_Exec.SQL.Add('observacao, ');
        //endi

        if frmdados.Dbx_Dbf.FieldByName('codved').asString <> '' then
           frmdados.dbx_Exec.SQL.Add('cvend, ');
        //endi

        frmdados.dbx_Exec.SQL.Add('reducaoicms, ');

        frmdados.dbx_Exec.SQL.Add('codigo');

        frmdados.dbx_Exec.SQL.Add(')');

        frmdados.dbx_Exec.SQL.Add(' values (');

        if frmdados.Dbx_Dbf.FieldByName('cli').asString <> '' then
           frmdados.dbx_Exec.SQL.Add(quotedstr(frmdados.Dbx_Dbf.FieldByName('cli').asString)+',');
        //endi

        if frmdados.Dbx_Dbf.FieldByName('fantasia').asString <> '' then
           frmdados.dbx_Exec.SQL.Add(Quotedstr(frmdados.Dbx_Dbf.FieldByName('fantasia').asString)+',');
        //endi

        //entrega
        if frmdados.Dbx_Dbf.FieldByName('Endereco').asString <> '' then
           frmdados.dbx_Exec.SQL.Add(Quotedstr(frmdados.Dbx_Dbf.FieldByName('Endereco').asString)+',');
        //endi

        if frmdados.Dbx_Dbf.FieldByName('Bairro').asString <> '' then
           frmdados.dbx_Exec.SQL.Add(Quotedstr(frmdados.Dbx_Dbf.FieldByName('Bairro').asString)+',');
        //endi

        if frmdados.Dbx_Dbf.FieldByName('Vila').asString <> '' then
           frmdados.dbx_Exec.SQL.Add(QuotedStr(frmdados.Dbx_Dbf.FieldByName('Vila').asString)+',');
        //endi

        if frmdados.Dbx_Dbf.FieldByName('Cidade').asString <> '' then
           frmdados.dbx_Exec.SQL.Add(Quotedstr(frmdados.Dbx_Dbf.FieldByName('Cidade').asString)+',');
        //endi

        if frmdados.Dbx_Dbf.FieldByName('uf').asString <> '' then
           frmdados.dbx_Exec.SQL.Add(Quotedstr(frmdados.Dbx_Dbf.FieldByName('uf').asString)+',');
        //endi

        if frmdados.Dbx_Dbf.FieldByName('Cep').asString <> '' then
           frmdados.dbx_Exec.SQL.Add(Quotedstr(frmdados.Dbx_Dbf.FieldByName('Cep').asString)+',');
        //endi

        //if frmdados.Dbx_Dbf.FieldByName('fone').asString <> '' then
        //   frmdados.dbx_Exec.SQL.Add(Quotedstr(frmdados.Dbx_Dbf.FieldByName('fone').asString)+',');
        //endi

        //telefones
        if (frmdados.Dbx_Dbf.FieldByName('fone').asString <> '') or (frmdados.Dbx_Dbf.FieldByName('fax').asString <> '')then
           frmdados.dbx_Exec.SQL.Add(Quotedstr(frmdados.Dbx_Dbf.FieldByName('fone').asString+' '+frmdados.Dbx_Dbf.FieldByName('fax').asString)+',');
        //endi

        //cobrança
        if frmdados.Dbx_Dbf.FieldByName('Endereco').asString <> '' then
           frmdados.dbx_Exec.SQL.Add(Quotedstr(frmdados.Dbx_Dbf.FieldByName('Endereco').asString)+',');
        //endi

        if frmdados.Dbx_Dbf.FieldByName('Bairro').asString <> '' then
           frmdados.dbx_Exec.SQL.Add(QuotedStr(frmdados.Dbx_Dbf.FieldByName('Bairro').asString)+',');
        //endi

        if frmdados.Dbx_Dbf.FieldByName('Vila').asString <> '' then
           frmdados.dbx_Exec.SQL.Add(Quotedstr(frmdados.Dbx_Dbf.FieldByName('Vila').asString)+',');
        //endi

        if frmdados.Dbx_Dbf.FieldByName('Cidade').asString <> '' then
           frmdados.dbx_Exec.SQL.Add(Quotedstr(frmdados.Dbx_Dbf.FieldByName('Cidade').asString)+',');
        //endi

        if frmdados.Dbx_Dbf.FieldByName('uf').asString <> '' then
           frmdados.dbx_Exec.SQL.Add(Quotedstr(frmdados.Dbx_Dbf.FieldByName('uf').asString)+',');
        //endi

        if frmdados.Dbx_Dbf.FieldByName('Cep').asString <> '' then
           frmdados.dbx_Exec.SQL.Add(Quotedstr(frmdados.Dbx_Dbf.FieldByName('Cep').asString)+',');
        //endi

        //if frmdados.Dbx_Dbf.FieldByName('fone').asString <> '' then
        //   frmdados.dbx_Exec.SQL.Add(Quotedstr(frmdados.Dbx_Dbf.FieldByName('fone').asString)+',');
        //endi

        //comercial
        if frmdados.Dbx_Dbf.FieldByName('Endereco').asString <> '' then
           frmdados.dbx_Exec.SQL.Add(Quotedstr(frmdados.Dbx_Dbf.FieldByName('Endereco').asString)+',');
        //endi

        if frmdados.Dbx_Dbf.FieldByName('Bairro').asString <> '' then
           frmdados.dbx_Exec.SQL.Add(Quotedstr(frmdados.Dbx_Dbf.FieldByName('Bairro').asString)+',');
        //endi

        if frmdados.Dbx_Dbf.FieldByName('Vila').asString <> '' then
           frmdados.dbx_Exec.SQL.Add(Quotedstr(frmdados.Dbx_Dbf.FieldByName('Vila').asString)+',');
        //endi

        if frmdados.Dbx_Dbf.FieldByName('Cidade').asString <> '' then
           frmdados.dbx_Exec.SQL.Add(Quotedstr(frmdados.Dbx_Dbf.FieldByName('Cidade').asString)+',');
        //endi

        if frmdados.Dbx_Dbf.FieldByName('uf').asString <> '' then
           frmdados.dbx_Exec.SQL.Add(Quotedstr(frmdados.Dbx_Dbf.FieldByName('uf').asString)+',');
        //endi

        if frmdados.Dbx_Dbf.FieldByName('Cep').asString <> '' then
           frmdados.dbx_Exec.SQL.Add(Quotedstr(frmdados.Dbx_Dbf.FieldByName('Cep').asString)+',');
        //endi

        //if frmdados.Dbx_Dbf.FieldByName('fone').asString <> '' then
        //   frmdados.dbx_Exec.SQL.Add(Quotedstr(frmdados.Dbx_Dbf.FieldByName('fone').asString)+',');
        //endi


        //identificação
        if frmdados.Dbx_Dbf.FieldByName('cpf').asString <> '' then
           frmdados.dbx_Exec.SQL.Add(Quotedstr(frmdados.Dbx_Dbf.FieldByName('cpf').asString)+',')
        else
           if frmdados.Dbx_Dbf.FieldByName('cgc').asString <> '' then
              frmdados.dbx_Exec.SQL.Add(Quotedstr(frmdados.Dbx_Dbf.FieldByName('cgc').asString)+',');
           //endi
        //endi


        if frmdados.Dbx_Dbf.FieldByName('insc_est').asString <> '' then
           frmdados.dbx_Exec.SQL.Add(Quotedstr(frmdados.Dbx_Dbf.FieldByName('insc_est').asString)+',')
        else
           if frmdados.Dbx_Dbf.FieldByName('rg').asString <> '' then
              frmdados.dbx_Exec.SQL.Add(Quotedstr(frmdados.Dbx_Dbf.FieldByName('rg').asString)+',');
           //endi
        //endi


        //outros

        sData := frmdados.Dbx_Dbf.FieldByName('d_cadastro').asString;
        if frmdados.Dbx_Dbf.FieldByName('d_cadastro').asString <> '' then
           frmdados.dbx_Exec.SQL.Add(quotedstr(bar_is_point(sData))+',');
        //endi

        if frmdados.Dbx_Dbf.FieldByName('comprador').asString <> '' then
           frmdados.dbx_Exec.SQL.Add(Quotedstr(frmdados.Dbx_Dbf.FieldByName('comprador').asString)+',');
        //endi

        if (frmdados.Dbx_Dbf.FieldByName('obs_1').asString <> '') or (frmdados.Dbx_Dbf.FieldByName('obs_2').asString <> '')then
           frmdados.dbx_Exec.SQL.Add(Quotedstr(frmdados.Dbx_Dbf.FieldByName('obs_1').asString+' '+frmdados.Dbx_Dbf.FieldByName('obs_2').asString)+',');
        //endi

        if frmdados.Dbx_Dbf.FieldByName('codved').asString <> '' then
           frmdados.dbx_Exec.SQL.Add(frmdados.Dbx_Dbf.FieldByName('codved').asString+',');
        //endi

        if frmdados.Dbx_Dbf.FieldByName('Empresa').asString = 'LTDA' then
           frmdados.dbx_Exec.SQL.Add(QuotedStr('T')+',')
        else
           frmdados.dbx_Exec.SQL.Add(QuotedStr('F')+',');
        //endi

        frmdados.dbx_Exec.SQL.Add(frmdados.Dbx_Dbf.FieldByName('codcli').asString);

        frmdados.dbx_Exec.SQL.Add(')');

        //showmessage(frmdados.dbx_Exec.SQL.text);

        frmdados.dbx_Exec.ExecSQL;

        frmdados.Dbx_Dbf.Next;
      end;

    except
      showmessage('Erro!!!');
    end;








   with frmdados do
     begin

       Dbx_Dbf.active := false;
       Dbx_Dbf.Sql.Clear;
       Dbx_Dbf.sql.Add('Select * from '+quotedstr(frmdados.Cds_Indice.fieldbyName('caminhodbf_1').asString+'arqfor.dbf'));
       Dbx_Dbf.active := true;

     end;
   //endi


   try
     frmdados.Dbx_Dbf.First;
    while not  frmdados.Dbx_Dbf.Eof do
      begin


        frmdados.dbx_Exec.Active := false;
        frmdados.dbx_Exec.SQL.Clear;
        frmdados.dbx_Exec.SQL.Add('Insert into Fornecedores(');

        if frmdados.Dbx_Dbf.FieldByName('fornecedor').asString <> '' then
           frmdados.dbx_Exec.SQL.Add('Nome, ');
        //endi

        if frmdados.Dbx_Dbf.FieldByName('linha').asString <> '' then
           frmdados.dbx_Exec.SQL.Add('linha, ');
        //endi

        //entrega
        if frmdados.Dbx_Dbf.FieldByName('Endereco').asString <> '' then
           frmdados.dbx_Exec.SQL.Add('Endereco, ');
        //endi

        if frmdados.Dbx_Dbf.FieldByName('Bairro').asString <> '' then
           frmdados.dbx_Exec.SQL.Add('Bairro, ');
        //endi

        if frmdados.Dbx_Dbf.FieldByName('Cidade').asString <> '' then
           frmdados.dbx_Exec.SQL.Add('Cidade, ');
        //endi

        if frmdados.Dbx_Dbf.FieldByName('uf').asString <> '' then
           frmdados.dbx_Exec.SQL.Add('Estado, ');
        //endi

        if frmdados.Dbx_Dbf.FieldByName('Cep').asString <> '' then
           frmdados.dbx_Exec.SQL.Add('Cep, ');
        //endi

        if (frmdados.Dbx_Dbf.FieldByName('Fone').asString <> '') or (frmdados.Dbx_Dbf.FieldByName('Fax').asString <> '') then
           frmdados.dbx_Exec.SQL.Add('telefones, ');
        //endi

        if frmdados.Dbx_Dbf.FieldByName('contato').asString <> '' then
           frmdados.dbx_Exec.SQL.Add('contato, ');
        //endi

        if frmdados.Dbx_Dbf.FieldByName('obs').asString <> '' then
           frmdados.dbx_Exec.SQL.Add('obs, ');
        //endi

        //identificação
        if frmdados.Dbx_Dbf.FieldByName('cgc').asString <> '' then
           frmdados.dbx_Exec.SQL.Add('cpf, ');
        //endi

        if frmdados.Dbx_Dbf.FieldByName('insc_est').asString <> '' then
           frmdados.dbx_Exec.SQL.Add('rg, ');
        //endi

        frmdados.dbx_Exec.SQL.Add('codigo');

        frmdados.dbx_Exec.SQL.Add(')');

        frmdados.dbx_Exec.SQL.Add(' values (');

        if frmdados.Dbx_Dbf.FieldByName('fornecedor').asString <> '' then
           frmdados.dbx_Exec.SQL.Add(Quotedstr(frmdados.Dbx_Dbf.FieldByName('fornecedor').asString)+',');
        //endi

        if frmdados.Dbx_Dbf.FieldByName('linha').asString <> '' then
           frmdados.dbx_Exec.SQL.Add(Quotedstr(frmdados.Dbx_Dbf.FieldByName('linha').asString)+',');
        //endi

        //entrega
        if frmdados.Dbx_Dbf.FieldByName('Endereco').asString <> '' then
           frmdados.dbx_Exec.SQL.Add(Quotedstr(frmdados.Dbx_Dbf.FieldByName('Endereco').asString)+',');
        //endi

        if frmdados.Dbx_Dbf.FieldByName('Bairro').asString <> '' then
           frmdados.dbx_Exec.SQL.Add(Quotedstr(frmdados.Dbx_Dbf.FieldByName('Bairro').asString)+',');
        //endi

        if frmdados.Dbx_Dbf.FieldByName('Cidade').asString <> '' then
           frmdados.dbx_Exec.SQL.Add(Quotedstr(frmdados.Dbx_Dbf.FieldByName('Cidade').asString)+',');
        //endi

        if frmdados.Dbx_Dbf.FieldByName('uf').asString <> '' then
           frmdados.dbx_Exec.SQL.Add(Quotedstr(frmdados.Dbx_Dbf.FieldByName('uf').asString)+',');
        //endi

        if frmdados.Dbx_Dbf.FieldByName('Cep').asString <> '' then
           frmdados.dbx_Exec.SQL.Add(Quotedstr(frmdados.Dbx_Dbf.FieldByName('Cep').asString)+',');
        //endi

        if (frmdados.Dbx_Dbf.FieldByName('fone').asString <> '') or (frmdados.Dbx_Dbf.FieldByName('fax').asString <> '') then
           frmdados.dbx_Exec.SQL.Add(Quotedstr(frmdados.Dbx_Dbf.FieldByName('fone').asString+' '+frmdados.Dbx_Dbf.FieldByName('fax').asString)+',');
        //endi

        if frmdados.Dbx_Dbf.FieldByName('contato').asString <> '' then
           frmdados.dbx_Exec.SQL.Add(Quotedstr(frmdados.Dbx_Dbf.FieldByName('contato').asString)+',');
        //endi

        if frmdados.Dbx_Dbf.FieldByName('obs').asString <> '' then
           frmdados.dbx_Exec.SQL.Add(Quotedstr(frmdados.Dbx_Dbf.FieldByName('obs').asString)+',');
        //endi



        //identificação
        if frmdados.Dbx_Dbf.FieldByName('cgc').asString <> '' then
           frmdados.dbx_Exec.SQL.Add(Quotedstr(frmdados.Dbx_Dbf.FieldByName('cgc').asString)+',');
        //endi

        if frmdados.Dbx_Dbf.FieldByName('insc_est').asString <> '' then
           frmdados.dbx_Exec.SQL.Add(Quotedstr(frmdados.Dbx_Dbf.FieldByName('insc_est').asString)+',');
        //endi

        frmdados.dbx_Exec.SQL.Add(frmdados.Dbx_Dbf.FieldByName('codfor').asString);

        frmdados.dbx_Exec.SQL.Add(')');

        frmdados.dbx_Exec.ExecSQL;


         frmdados.Dbx_Dbf.Next;
      end;

    except
      showmessage('Erro!!!');
    end;





   with frmdados do
     begin

       Dbx_Dbf.active := false;
       Dbx_Dbf.Sql.Clear;
       Dbx_Dbf.sql.Add('Select * from '+quotedstr(frmdados.Cds_Indice.fieldbyName('caminhodbf_1').asString+'arqfor.dbf'));
       Dbx_Dbf.active := true;

     end;
   //endi


   try
     frmdados.Dbx_Dbf.First;
    while not  frmdados.Dbx_Dbf.Eof do
      begin


        frmdados.dbx_Exec.Active := false;
        frmdados.dbx_Exec.SQL.Clear;
        frmdados.dbx_Exec.SQL.Add('Insert into Marca(');

        if frmdados.Dbx_Dbf.FieldByName('linha').asString <> '' then
           frmdados.dbx_Exec.SQL.Add('descricao, ');
        //endi

        frmdados.dbx_Exec.SQL.Add('codigo');

        frmdados.dbx_Exec.SQL.Add(')');

        frmdados.dbx_Exec.SQL.Add(' values (');

        if frmdados.Dbx_Dbf.FieldByName('linha').asString <> '' then
           frmdados.dbx_Exec.SQL.Add(Quotedstr(frmdados.Dbx_Dbf.FieldByName('linha').asString)+',');
        //endi

        frmdados.dbx_Exec.SQL.Add(frmdados.Dbx_Dbf.FieldByName('codfor').asString);

        frmdados.dbx_Exec.SQL.Add(')');

        frmdados.dbx_Exec.ExecSQL;


         frmdados.Dbx_Dbf.Next;
      end;

    except
      showmessage('Erro!!!');
    end;


    close;


lblmensagem.Visible := false;
lblmensagem2.Visible := false;
antmove.Visible := false;
antmove.Active  := false;



end;

procedure Tfrmcopiaapl3.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  vardir:string;
begin

frmdados.ADO_Conexao.Connected := false;



  vardir := ExtractFilePath(Application.ExeName);

  frmPrincipal.pnlcentral.Visible := true;
  Action:=caFree;
  frmCopiaApl3:=nil;
  form_ativo := '';
end;

procedure Tfrmcopiaapl3.FormShow(Sender: TObject);
begin
   lblmensagem.Visible := false;
   lblmensagem2.Visible := false;
   antmove.Visible := false;

end;

end.
