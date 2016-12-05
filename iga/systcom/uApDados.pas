unit uApDados;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Buttons, ExtCtrls, DBCtrls, Mask, ComCtrls,
  Grids, DBGrids, SqlExpr;

type
  TfrmApDados = class(TForm)
    Bevel1: TBevel;
    dtpdatai: TDateTimePicker;
    dtpdataf: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    lblmensagem: TLabel;
    antmove: TAnimate;
    lblmensagem2: TLabel;
    spdconfirma: TSpeedButton;
    SpeedButton1: TSpeedButton;
    ckbapaga: TCheckBox;
    ckbzera: TCheckBox;
    Label6: TLabel;
    Label7: TLabel;
    procedure FormShow(Sender: TObject);
    procedure ediOSExit(Sender: TObject);
    procedure ediosefExit(Sender: TObject);
    procedure ediparcExit(Sender: TObject);
    procedure edimaxparcExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure mmoobsKeyPress(Sender: TObject; var Key: Char);
    procedure envia_dados_para_firebird;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure spdconfirmaClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure envia_dados_cad_para_firebird;
    procedure envia_dados_fin_para_firebird;
    procedure envia_clientes;
    procedure envia_produtos;
    procedure envia_fornecedores;

  private
    { Private declarations }
      x:integer;
      sEnc, sSubs, sNovaInf, sInfAnt, sDataI, sDataF:string;
      ResultSet : tCustomSqlDataSet;
      icrep, iped, itipo_pgto, icpro, imaxcpro, idescprod, icontregdesc, icontregprod, idescod, icuni, iccli,
      imaxccli, icclap, imaxcclap, iccla, imaxccla, icfor, imaxcfor, icpag, imaxcpag:integer;
      pgtotvalor, fValor:real;
      sValor:String;
      aTipo:array of string;


  public
    { Public declarations }
  end;

var
  frmApDados: TfrmApDados;

implementation

uses uGeral, uPrincipal, uDados, uAtu;

{$R *.DFM}

procedure TfrmApDados.FormShow(Sender: TObject);
var
   vardir: String;
begin
  vardir := ExtractFilePath(Application.ExeName);
  

  ckbzera.Checked := false;


  dtpDataf.Date := Date;
  dtpDataI.Date := Date - frmdados.Cds_Indice.FieldByName('periodo_previo').asInteger;


   lblmensagem.Visible := false;
   lblmensagem2.Visible := false;
   antmove.Visible := false;
end;

procedure TfrmApDados.ediOSExit(Sender: TObject);
var
   valor : integer;
begin
end;

procedure TfrmApDados.ediosefExit(Sender: TObject);
var
   valor : integer;
begin
end;

procedure TfrmApDados.ediparcExit(Sender: TObject);
var
   valor : integer;
begin

end;

procedure TfrmApDados.edimaxparcExit(Sender: TObject);
var
   valor : integer;
begin
end;

procedure TfrmApDados.FormClose(Sender: TObject; var Action: TCloseAction);
var
  vardir:string;
begin

  frmdados.ADO_Conexao.Connected := false;


  vardir := ExtractFilePath(Application.ExeName);

  frmPrincipal.pnlcentral.Visible := true;
  Action:=caFree;
  frmApDados:=nil;
  form_ativo := '';
end;

procedure TfrmApDados.mmoobsKeyPress(Sender: TObject; var Key: Char);
begin
   if (key = #13) then SelectNext(ActiveControl,True,True);
end;

procedure TfrmApDados.envia_dados_para_firebird;


begin
  imaxcpro := 0;
  icpro := 0;
  icuni := 0;
  icclap := 0;
  imaxcclap := 0;
  imaxccla := 0;
  iccla := 0;
  icfor := 0;
  imaxcfor := 0;
  icpag := 0;
  imaxcpag := 0;

  setlength(atipo,2);
  atipo[0]:= 'S';
  atipo[1]:= 'N';

  lblmensagem.Visible := true;
  lblmensagem2.Visible := true;

  antmove.Visible := true;
  antmove.Active := true;
  frmApDados.Update;

  sDataI := copy(datetimetostr(dtpdatai.Date),1,10);
  sDataI := datainvertida( sDataI  );

  sDataF := copy(datetimetostr(dtpdataF.Date),1,10);
  sDataF := datainvertida( sDataF  );


  try
    with frmdados.ADO_Conexao do
       begin
         Connected := false;
         ConnectionString := 'Provider=MSDASQL.1;Password='+frmdados.Cds_Indice.fieldbyname('senhaado').asString+';Persist Security Info=True;User ID='+frmdados.Cds_Indice.fieldbyname('loginado').asString+';Data Source=Banco de dados MS Access;Extended Properties="DSN=Banco de dados MS Access;'+
                             'DBQ='+frmdados.Cds_Indice.fieldbyname('caminhobcoado').asString+';DriverId=25;FIL=MS Access;MaxBufferSize=2048;PageTimeout=5;PWD='+frmdados.Cds_Indice.fieldbyname('senhaado').asString+';'+
                             'UID=admin;";Initial Catalog='+frmdados.Cds_Indice.fieldbyname('caminhobcoado').asString;
         Connected := true;
       end;
    //endwith
  except
  end;
  
  try
    try
      with frmdados.ADO_Mestre do
         begin
           active := false;
           sql.Clear;
           sql.Add('select * from tabvenda where ( veEmissao >= #'+ sDataI +'#) and  (VeEmissao <=#'+ sDataF +'#) and (vefechado = '+quotedstr('S')+')');
           active := true;
           if recordcount = 0 then
              begin
                lblmensagem.Visible := false;
                lblmensagem2.Visible := false;
                antmove.Visible := false;
                antmove.Active  := false;
                exit;
              end;
           //end
         end;
      //endi
    except
      lblmensagem.Visible := false;
      lblmensagem2.Visible := false;
      antmove.Visible := false;
      antmove.Active  := false;
      showmessage('Não consegui conectar a tabela vendas, operação abortada!!!');
      exit;
    end;

    try
       with frmdados.ADO_Detalhe do
          begin
            active := false;
            sql.Clear;
            sql.Add('select * from tabitens');
             active := true;
           end;
        //endi
    except
        lblmensagem.Visible := false;
        lblmensagem2.Visible := false;
        antmove.Visible := false;
        antmove.Active  := false;
        showmessage('Não consegui conectar a tabela itens da venda, operação abortada!!!');
        exit;
    end;



   imaxcpro := 0;
   icpro := 0;




   { Inicia Leitura tabela vendas principal }
    while not frmdados.ADO_Mestre.Eof do
      begin

        iccli := 0;
        icrep := 0;
        itipo_pgto := 0;
        idescprod := 0;

        { Dbx_Exec dentro FrmDados executa instruções SQL no banco de dados }
        with frmdados.Dbx_Exec do
           begin

             { Verifica se há representante desso pedido cadastrado se for o caso grava }
             active := false;
             sql.Clear;
             sql.Add('select * from representantes Where nome = '+QuotedStr(frmDados.ADO_Mestre.FieldByName('vevendedor').asString));
             active := true;

             if recordcount = 0 then
                begin
                  if frmdados.ADO_Mestre.FieldByName('vevendedor').asString <> '' then
                     begin
                       active := false;
                       sql.Clear;
                       sql.Add('insert into representantes (');
                       sql.Add('nome');
                       sql.Add(')');
                       sql.Add('values (');
                       sql.Add(QuotedStr(frmdados.ADO_Mestre.FieldByName('vevendedor').asString));
                       sql.Add(');');
                       ExecSQL;

                       active := false;
                       sql.Clear;
                       sql.Add('select * from representantes order by codigo');
                       active := true;

                       while not frmdados.Dbx_Exec.Eof do
                         begin
                           icrep := frmdados.Dbx_Exec.fieldbyname('codigo').asInteger;
                           frmdados.Dbx_Exec.Next;
                         end;
                       //endw
                     end;
                  //endi
                end
             else
                begin
                  icrep := frmdados.Dbx_Exec.fieldbyname('codigo').asInteger;
                end;
             //endi
             { Fim da Verificação do Representante }


             { Verifica se o cliente desse pedido está cadastrado se for o caso grava }
             active := false;
             sql.Clear;
             sql.Add('select * from clientes Where codigo = '+QuotedStr(frmDados.ADO_Mestre.FieldByName('vecodcli').asString));
             active := true;
             if recordcount = 0 then
                begin
                  active := false;
                  sql.Clear;
                  sql.Add('insert into clientes (');

                  if frmdados.ADO_Mestre.FieldByName('vecliente').asString <> '' then
                     sql.Add('nome,');
                  //endi

                  if frmdados.ADO_Mestre.FieldByName('veendereco').asString <> '' then
                     sql.Add('endcom,');
                  //endi

                  if frmdados.ADO_Mestre.FieldByName('vebairro').asString <> '' then
                     sql.Add('bairrocom,');
                  //endi

                  if frmdados.ADO_Mestre.FieldByName('vefone').asString <> '' then
                     sql.Add('telefonecom,');
                  //endi

                  if frmdados.ADO_Mestre.FieldByName('vemunicipio').asString <> '' then
                     sql.Add('cidadecom,');
                  //endi

                  if frmdados.ADO_Mestre.FieldByName('vecontato').asString <> '' then
                     sql.Add('contato,');
                  //endi

                  if frmdados.ADO_Mestre.FieldByName('vecpf').asString <> '' then
                     sql.Add('cpf,');
                  //endi

                  if frmdados.ADO_Mestre.FieldByName('veie').asString <> '' then
                     sql.Add('ie,');
                  //endi

                  sql.Add('codigo');

                  sql.Add(')');
                  sql.Add('values (');

                  if frmdados.ADO_Mestre.FieldByName('vecliente').asString <> '' then
                     sql.Add(QuotedStr(frmdados.ADO_Mestre.FieldByName('vecliente').asString)+',');
                  //endi

                  if frmdados.ADO_Mestre.FieldByName('veendereco').asString <> '' then
                     sql.Add(QuotedStr(frmdados.ADO_Mestre.FieldByName('veendereco').asString)+',');
                  //endi

                  if frmdados.ADO_Mestre.FieldByName('vebairro').asString <> '' then
                     sql.Add(QuotedStr(frmdados.ADO_Mestre.FieldByName('vebairro').asString)+',');
                  //endi

                  if frmdados.ADO_Mestre.FieldByName('vefone').asString <> '' then
                     sql.Add(QuotedStr(copy(frmdados.ADO_Mestre.FieldByName('vefone').asString,1,10))+',');
                  //endi

                  if frmdados.ADO_Mestre.FieldByName('vemunicipio').asString <> '' then
                     sql.Add(QuotedStr(frmdados.ADO_Mestre.FieldByName('vemunicipio').asString)+',');
                  //endi

                  if frmdados.ADO_Mestre.FieldByName('vecontato').asString <> '' then
                     sql.Add(QuotedStr(frmdados.ADO_Mestre.FieldByName('vecontato').asString)+',');
                  //endi

                  if frmdados.ADO_Mestre.FieldByName('vecpf').asString <> '' then
                     sql.Add(QuotedStr(frmdados.ADO_Mestre.FieldByName('vecpf').asString)+',');
                  //endi

                  if frmdados.ADO_Mestre.FieldByName('veie').asString <> '' then
                     sql.Add(QuotedStr(frmdados.ADO_Mestre.FieldByName('veie').asString)+',');
                  //endi

                  sql.Add(QuotedStr(frmdados.ADO_Mestre.FieldByName('vecodcli').asString));

                  sql.Add(');');
                  ExecSQL;

                  active := false;
                  sql.Clear;
                  sql.Add('select * from clientes order by codigo');
                  active := true;

                  while not frmdados.Dbx_Exec.Eof do
                    begin
                      iccli := frmdados.Dbx_Exec.fieldbyname('codigo').asInteger;
                      frmdados.Dbx_Exec.Next;
                    end;
                  //endw

                end
             else
                begin
                  iccli := frmdados.Dbx_Exec.fieldbyname('codigo').asInteger;

                  frmdados.Dbx_Clientes.Active := false;
                  frmdados.Dbx_Clientes.SQL.Clear;
                  frmdados.Dbx_Clientes.SQL.Add('Update clientes set endent = '+quotedstr(frmdados.ADO_Mestre.FieldByName('veendereco').asString)+' where codigo = '+frmdados.Dbx_Exec.fieldbyname('codigo').asString);
                  frmdados.Dbx_Clientes.ExecSQL;


                  frmdados.Dbx_Clientes.Active := false;
                  frmdados.Dbx_Clientes.SQL.Clear;
                  frmdados.Dbx_Clientes.SQL.Add('Update clientes set bairroent = '+quotedstr(frmdados.ADO_Mestre.FieldByName('vebairro').asString)+' where codigo = '+frmdados.Dbx_Exec.fieldbyname('codigo').asString);
                  frmdados.Dbx_Clientes.ExecSQL;


                  frmdados.Dbx_Clientes.Active := false;
                  frmdados.Dbx_Clientes.SQL.Clear;
                  frmdados.Dbx_Clientes.SQL.Add('Update clientes set cidadeent = '+quotedstr(frmdados.ADO_Mestre.FieldByName('vemunicipio').asString)+' where codigo = '+frmdados.Dbx_Exec.fieldbyname('codigo').asString);
                  frmdados.Dbx_Clientes.ExecSQL;

                  frmdados.Dbx_Clientes.Active := false;
                  frmdados.Dbx_Clientes.SQL.Clear;
                  frmdados.Dbx_Clientes.SQL.Add('Update clientes set telefones = '+quotedstr(frmdados.ADO_Mestre.FieldByName('vefone').asString)+' where codigo = '+frmdados.Dbx_Exec.fieldbyname('codigo').asString);
                  frmdados.Dbx_Clientes.ExecSQL;



                end;
             //endi
             { Fim da Verificação do Cliente }

             if iccli > imaxccli then
               imaxccli := iccli;
             //endi


             { Verifica se o pedido está já está cadastrado }
             active := false;
             sql.Clear;
             sql.Add('select * from svenda Where codigo = '+frmDados.ADO_Mestre.FieldByName('venumeronota').asString);
             active := true;

             if RecordCount = 0 then
                begin
                  with frmdados.Dbx_Exec do
                     begin
                       active := false;
                       sql.Clear;
                       sql.Add('insert into svenda (');

                       if frmdados.ADO_Mestre.FieldByName('vecodcli').asString <> '' then
                          sql.Add('ccli,');
                       //endi

                       if frmdados.ADO_Mestre.FieldByName('vevendedor').asString <> '' then
                          sql.Add('vendedorst,');
                       //endi

                       if icrep <> 0 then
                          sql.Add('crep,');
                       //endi

                       if frmdados.ADO_Mestre.FieldByName('vecliente').asString <> '' then
                          sql.Add('clientest,');
                       //endi

                       if frmdados.ADO_Mestre.FieldByName('veendereco').asString <> '' then
                          sql.Add('enderecost,');
                       //endi

                       if frmdados.ADO_Mestre.FieldByName('vebairro').asString <> '' then
                          sql.Add('bairrost,');
                       //endi

                       if frmdados.ADO_Mestre.FieldByName('vefone').asString <> '' then
                          sql.Add('fonest,');
                       //endi

                       if frmdados.ADO_Mestre.FieldByName('vemunicipio').asString <> '' then
                          sql.Add('municipiost,');
                       //endi

                       if frmdados.ADO_Mestre.FieldByName('veemissao').asString <> '' then
                          sql.Add('emissaost,');
                       //endi


                       if frmdados.ADO_Mestre.FieldByName('vetotal').asfloat <> 0 then
                          sql.Add('totalst,');
                       //endi

                       if frmdados.ADO_Mestre.FieldByName('veoperacao').asString <> '' then
                          sql.Add('operacaost,');
                       //endi

                       if frmdados.ADO_Mestre.FieldByName('vevencimento').asString <> '' then
                          sql.Add('vencimentost,');
                       //endi

                       if frmdados.ADO_Mestre.FieldByName('vepagamento').asString <> '' then
                          sql.Add('pagamentost,');
                       //endi

                       if frmdados.ADO_Mestre.FieldByName('vetotalp').asfloat <> 0 then
                          sql.Add('totalpst,');
                       //endi

                       if frmdados.ADO_Mestre.FieldByName('vedesconto').asfloat <> 0 then
                          sql.Add('descontost,');
                       //endi

                       if frmdados.ADO_Mestre.FieldByName('ved').asString <> '' then
                          sql.Add('dst,');
                       //endi

                       if frmdados.ADO_Mestre.FieldByName('vecontato').asString <> '' then
                          sql.Add('contatost,');
                       //endi

                       if frmdados.ADO_Mestre.FieldByName('vecpf').asString <> '' then
                          sql.Add('cpfst,');
                       //endi

                       if frmdados.ADO_Mestre.FieldByName('veie').asString <> '' then
                          sql.Add('iest,');
                       //endi

                       if frmdados.ADO_Mestre.FieldByName('veobs').asString <> '' then
                          sql.Add('obsst,');
                       //endi

                       if frmdados.ADO_Mestre.FieldByName('vedinheiro').asfloat <> 0 then
                          sql.Add('din,');
                       //endi

                       if frmdados.ADO_Mestre.FieldByName('vetroco').asfloat <> 0 then
                          sql.Add('troco,');
                       //endi

                       if frmdados.ADO_Mestre.FieldByName('vefechado').asString <> '' then
                          sql.Add('fechadost,');
                       //endi

                       if frmdados.ADO_Mestre.FieldByName('veretorno').asString <> '' then
                          sql.Add('retornost,');
                       //endi


                       if frmdados.ADO_Mestre.FieldByName('vehora').asString <> '' then
                          sql.Add('horast,');
                       //endi


                       if frmdados.ADO_Mestre.FieldByName('vecusto').asfloat <> 0 then
                          sql.Add('custost,');
                       //endi


                       sql.Add('codigo');

                       sql.Add(')');

                       sql.Add('values (');

                       if frmdados.ADO_Mestre.FieldByName('vecodcli').asString <> '' then
                          sql.Add(frmdados.ADO_Mestre.FieldByName('vecodcli').asString+',');
                       //endi

                       if frmdados.ADO_Mestre.FieldByName('vevendedor').asString <> '' then
                          sql.Add(QuotedStr(frmdados.ADO_Mestre.FieldByName('vevendedor').asString)+',');
                       //endi

                       if icrep <> 0 then
                          sql.Add(quotedstr(inttostr(icrep))+',');
                       //endi

                       if frmdados.ADO_Mestre.FieldByName('vecliente').asString <> '' then
                          sql.Add(QuotedStr(frmdados.ADO_Mestre.FieldByName('vecliente').asString)+',');
                       //endi

                       if frmdados.ADO_Mestre.FieldByName('veendereco').asString <> '' then
                          sql.Add(QuotedStr(frmdados.ADO_Mestre.FieldByName('veendereco').asString)+',');
                       //endi


                       if frmdados.ADO_Mestre.FieldByName('vebairro').asString <> '' then
                          sql.Add(QuotedStr(frmdados.ADO_Mestre.FieldByName('vebairro').asString)+',');
                       //endi

                       if frmdados.ADO_Mestre.FieldByName('vefone').asString <> '' then
                          sql.Add(QuotedStr(copy(frmdados.ADO_Mestre.FieldByName('vefone').asString,1,10))+',');
                       //endi

                       if frmdados.ADO_Mestre.FieldByName('vemunicipio').asString <> '' then
                          sql.Add(QuotedStr(frmdados.ADO_Mestre.FieldByName('vemunicipio').asString)+',');
                       //endi

                       sEnc := '/';
                       sSubs := '.';
                       sInfAnt := frmdados.ADO_Mestre.FieldByName('veemissao').asString;
                       sNovaInf := findreplace(sEnc,sSubs,sInfAnt);
                       if frmdados.ADO_Mestre.FieldByName('veemissao').asString <> '' then
                          sql.Add(quotedstr(sNovaInf)+',');
                       //endi

                       sEnc := ',';
                       sSubs := '.';
                       sInfAnt := frmdados.ADO_Mestre.FieldByName('vetotal').asString;
                       sNovaInf := findreplace(sEnc,sSubs,sinfAnt);
                       if frmdados.ADO_Mestre.FieldByName('vetotal').asfloat <> 0 then
                          sql.Add(sNovaInf+',');
                       //endi

                       if frmdados.ADO_Mestre.FieldByName('veoperacao').asString <> '' then
                          sql.Add(QuotedStr(frmdados.ADO_Mestre.FieldByName('veoperacao').asString)+',');
                       //endi

                       sEnc := '/';
                       sSubs := '.';
                       sInfAnt := frmdados.ADO_Mestre.FieldByName('vevencimento').asString;
                       sNovaInf := findreplace(sEnc,sSubs,sInfAnt);
                       if frmdados.ADO_Mestre.FieldByName('vevencimento').asString <> '' then
                          sql.Add(quotedstr(sNovainf)+',');
                       //endi

                       if frmdados.ADO_Mestre.FieldByName('vepagamento').asString <> '' then
                          sql.Add(Quotedstr(frmdados.ADO_Mestre.FieldByName('vepagamento').asString)+',');
                       //endi

                       sEnc := ',';
                       sSubs := '.';
                       sInfAnt := frmdados.ADO_Mestre.FieldByName('vetotalp').asString;
                       sNovaInf := findreplace(sEnc,sSubs,sinfAnt);
                       if frmdados.ADO_Mestre.FieldByName('vetotalp').asfloat <> 0 then
                          sql.Add(sNovaInf+',');
                       //endi

                       sEnc := ',';
                       sSubs := '.';
                       sInfAnt := frmdados.ADO_Mestre.FieldByName('vedesconto').asString;
                       sNovaInf := findreplace(sEnc,sSubs,sinfAnt);
                       if frmdados.ADO_Mestre.FieldByName('vedesconto').asfloat <> 0 then
                          sql.Add(sNovaInf+',');
                       //endi

                       if frmdados.ADO_Mestre.FieldByName('ved').asString <> '' then
                          sql.Add(QuotedStr(frmdados.ADO_Mestre.FieldByName('ved').asString)+',');
                       //endi

                       if frmdados.ADO_Mestre.FieldByName('vecontato').asString <> '' then
                          sql.Add(QuotedStr(frmdados.ADO_Mestre.FieldByName('vecontato').asString)+',');
                       //endi

                       if frmdados.ADO_Mestre.FieldByName('vecpf').asString <> '' then
                          sql.Add(QuotedStr(frmdados.ADO_Mestre.FieldByName('vecpf').asString)+',');
                       //endi

                       if frmdados.ADO_Mestre.FieldByName('veie').asString <> '' then
                          sql.Add(QuotedStr(frmdados.ADO_Mestre.FieldByName('veie').asString)+',');
                       //endi

                       if frmdados.ADO_Mestre.FieldByName('veobs').asString <> '' then
                          sql.Add(QuotedStr(frmdados.ADO_Mestre.FieldByName('veobs').asString)+',');
                       //endi

                       sEnc := ',';
                       sSubs := '.';
                       sInfAnt := frmdados.ADO_Mestre.FieldByName('vedinheiro').asString;
                       sNovaInf := findreplace(sEnc,sSubs,sinfAnt);
                       if frmdados.ADO_Mestre.FieldByName('vedinheiro').asfloat <> 0 then
                          sql.Add(sNovaInf+',');
                       //endi

                       sEnc := ',';
                       sSubs := '.';
                       sInfAnt := frmdados.ADO_Mestre.FieldByName('vetroco').asString;
                       sNovaInf := findreplace(sEnc,sSubs,sinfAnt);
                       if frmdados.ADO_Mestre.FieldByName('vetroco').asfloat <> 0 then
                          sql.Add(sNovaInf+',');
                       //endi

                       if frmdados.ADO_Mestre.FieldByName('vefechado').asString <> '' then
                          sql.Add(QuotedStr(frmdados.ADO_Mestre.FieldByName('vefechado').asString)+',');
                       //endi

                       sEnc := '/';
                       sSubs := '.';
                       sInfAnt := frmdados.ADO_Mestre.FieldByName('veretorno').asString;
                       sNovaInf := findreplace(sEnc,sSubs,sinfAnt);
                       if frmdados.ADO_Mestre.FieldByName('veretorno').asString <> '' then
                          sql.Add(quotedstr(sNovaInf)+',');
                       //endi

                       if frmdados.ADO_Mestre.FieldByName('vehora').asString <> '' then
                          sql.Add(QuotedStr(frmdados.ADO_Mestre.FieldByName('vehora').asString)+',');
                       //endi

                       sEnc := ',';
                       sSubs := '.';
                       sInfAnt := frmdados.ADO_Mestre.FieldByName('vecusto').asString;
                       sNovaInf := findreplace(sEnc,sSubs,sinfAnt);
                       if frmdados.ADO_Mestre.FieldByName('vecusto').asfloat <> 0 then
                          sql.Add(sNovaInf+',');
                       //endi

                       sql.Add(frmdados.ADO_Mestre.FieldByName('venumeronota').asString);

                       sql.Add(');');
                       ExecSQL;
                     end;
                  //endw










        { Filtra detalhe do pedido }
        with frmdados.ADO_Detalhe do
           begin
             active := false;
             sql.Clear;
             sql.Add('select * from tabitens i Where i.itnumeronota = '+frmDados.ADO_Mestre.FieldByName('venumeronota').asString);
             active := true;
           end;
        //endi
        {fim do filtro}

        {inicia gravação do detalhe}
        while not frmdados.ADO_Detalhe.Eof do
          begin

            with FrmDados.Dbx_Exec do
              begin
                { Verifica se há descricao produto cadastrado }

                active := false;
                sql.Clear;
                sql.Add('select * from dprodutos Where codigo = '+frmDados.ADO_Detalhe.FieldByName('itcodigo').asString);
                active := true;
                icontregprod := recordcount;

                active := false;
                sql.Clear;
                sql.Add('select * from produtos');
                active := true;

                if icontregprod = 0 then
                   begin
                     if frmdados.ADO_Detalhe.FieldByName('itdescricao').asString <> '' then
                        begin
                          active := false;
                          sql.Clear;
                          sql.Add('insert into produtos (');

                          sql.Add('descricao');
                          sql.Add(')');
                          sql.Add('values (');

                          sql.Add(QuotedStr(frmdados.ADO_Detalhe.FieldByName('itdescricao').asString));
                          sql.Add(');');
                          ExecSQL;

                          active := false;
                          sql.Clear;
                          sql.Add('select * from produtos order by codigo');
                          active := true;

                          while not frmdados.Dbx_Exec.Eof do
                            begin
                              idescprod := frmdados.Dbx_Exec.fieldbyname('codigo').asInteger;
                              frmdados.Dbx_Exec.Next;
                            end;
                          //endw
                        end;
                     //endi
                   end
                else
                   begin
                     idescprod := frmdados.Dbx_Exec.fieldbyname('codigo').asInteger;
                   end;
                //endi
                { Fim da Verificação do produto }
              end;
            //endth

            with FrmDados.Dbx_Exec do
              begin

                //Verifica se há produto cadastrado no cadastro de produtos
                active := false;
                sql.Clear;
                sql.Add('select * from dprodutos Where codigo = '+frmDados.ADO_Detalhe.FieldByName('itcodigo').asString);
                active := true;

                if recordcount = 0 then
                   begin
                     if frmDados.ADO_Detalhe.FieldByName('itcodigo').asInteger <> 0 then
                        begin
                          active := false;
                          sql.Clear;
                          sql.Add('insert into dprodutos (');



                          sql.Add('codigo,');
                          sql.Add('cdescprod');

                          sql.Add(')');
                          sql.Add('values (');


                          sql.Add(frmDados.ADO_Detalhe.FieldByName('itcodigo').asString+',');
                          sql.Add(inttostr(idescprod));

                          sql.Add(');');
                          ExecSQL;

                          active := false;
                          sql.Clear;
                          sql.Add('select * from dprodutos order by codigo');
                          active := true;

                          while not frmdados.Dbx_Exec.Eof do
                            begin
                              icpro := frmdados.Dbx_Exec.fieldbyname('codigo').asInteger;
                              frmdados.Dbx_Exec.Next;
                            end;
                          //endw
                        end;
                     //endi
                   end
                else
                   begin
                     icpro := frmdados.Dbx_Exec.fieldbyname('codigo').asInteger;
                     //with frmdados.dbx_Exec do
                     //   begin
                     //     active := false;
                     //     sql.Clear;
                     //     sql.Add('update Produtos p set p.descricao = '+Quotedstr(frmDados.ADO_Detalhe.FieldByName('itdescricao').asString)+' Where p.codigo =  '+inttostr(idescprod) );
                     //     ExecSQL;
                     //   end;
                     //endw
                   end;
                //endi
                //Fim da Verificação do produto
              end;
            //endth

            { Vista como transferido }
            with frmdados.ADO_Exec do
                begin
                  active := false;
                  sql.Clear;
                  sql.Add('update tabestoque e  set e.estransf = '+quotedstr('S')+'Where e.escodigo = '+frmDados.ADO_Detalhe.FieldByName('itcodigo').asString);
                  ExecSQL;
               end;
            //endw
            { Fim da Instrução }



            if icpro > imaxcpro then
               imaxcpro := icpro;
            //endi





            with frmdados.Dbx_Exec do
               begin
                 active := false;
                 sql.Clear;
                 sql.Add('insert into dvenda (');

                 if frmDados.ADO_Detalhe.FieldByName('itbaixa').asString = 'S' then
                    sql.Add('ehvenda,');
                 //endi

                 if frmDados.ADO_Detalhe.FieldByName('itdescricao').asString <> '' then
                    sql.Add('descricaost,');
                 //endi

                 if frmDados.ADO_Detalhe.FieldByName('itcodigo').asInteger <> 0 then
                    sql.Add('cpro,');
                 //endi

                 if frmDados.ADO_Detalhe.FieldByName('itbaixa').asString <> '' then
                    sql.Add('baixa,');
                 //endi

                 if frmDados.ADO_Detalhe.FieldByName('itquantidade').asfloat <> 0 then
                    sql.Add('qtde,');
                 //endi

                 if frmDados.ADO_Detalhe.FieldByName('itunitario').asfloat <> 0 then
                    sql.Add('prve,');
                 //endi

                 if frmDados.ADO_Detalhe.FieldByName('ittotal').asfloat <> 0 then
                    sql.Add('subtotal,');
                 //endi

                 if frmDados.ADO_Detalhe.FieldByName('itreferencia').asString <> '' then
                    sql.Add('referencia,');
                 //endi

                 if frmDados.ADO_Detalhe.FieldByName('itmetragem').asInteger <> 0 then
                    sql.Add('metragem,');
                 //endi

                 if frmDados.ADO_Detalhe.FieldByName('itvenda').asString <> '' then
                    sql.Add('data_op,');
                 //endi

                 if frmDados.ADO_Detalhe.FieldByName('itund').asString <> '' then
                    sql.Add('undst,');
                 //endi

                 if frmDados.ADO_Detalhe.FieldByName('itcomicao').asfloat <> 0 then
                    sql.Add('comissao,');
                 //endi

                 if frmDados.ADO_Detalhe.FieldByName('itcliente').asString <> '' then
                    sql.Add('clientest,');
                 //endi

                 //informação do arquivo principal
                 if frmDados.ADO_Mestre.FieldByName('vecodcli').asInteger <> 0 then
                    sql.Add('ccli,');
                 //endi

                 if frmDados.ADO_Detalhe.FieldByName('itvendedor').asString <> '' then
                    sql.Add('vendedorst,');
                 //endi

                 //informação do arquivo principal
                 if icrep <> 0 then
                    sql.Add('crep,');
                 //endi

                 if frmDados.ADO_Detalhe.FieldByName('itpg').asString <> '' then
                    sql.Add('pgst,');
                 //endi

                 if frmDados.ADO_Detalhe.FieldByName('itmetragem2').asInteger <> 0 then
                    sql.Add('metragem2,');
                 //endi

                 if frmDados.ADO_Detalhe.FieldByName('itident').asString <> '' then
                    sql.Add('identst,');
                 //endi

                 if frmDados.ADO_Detalhe.FieldByName('itcusto').asfloat <> 0 then
                    sql.Add('prcu,');
                 //endi

                 if frmDados.ADO_Detalhe.FieldByName('ittipo').asString <> '' then
                    sql.Add('tipost,');
                 //endi

                 if frmDados.ADO_Detalhe.FieldByName('itmax').asInteger <> 0 then
                    sql.Add('max,');
                 //endi

                 if frmDados.ADO_Detalhe.FieldByName('itdesconto').asfloat <> 0 then
                    sql.Add('vdesc,');
                 //endi

                 if frmDados.ADO_Detalhe.FieldByName('iticm').asInteger <> 0 then
                    sql.Add('icm,');
                 //endi

                 if frmDados.ADO_Detalhe.FieldByName('itiss').asInteger <> 0 then
                    sql.Add('iss,');
                 //endi

                 sql.Add('codsvenda');
                 sql.Add(')');
                 sql.Add('values (');

                 if frmDados.ADO_Detalhe.FieldByName('itbaixa').asString = 'S' then
                    sql.Add(quotedstr('T')+',');
                 //endi

                 if frmDados.ADO_Detalhe.FieldByName('itdescricao').asString <> '' then
                    sql.Add(quotedstr(frmDados.ADO_Detalhe.FieldByName('itdescricao').asString)+',');
                 //endi


                 if frmDados.ADO_Detalhe.FieldByName('itcodigo').asInteger <> 0 then
                    sql.Add(inttostr(frmDados.ADO_Detalhe.FieldByName('itcodigo').asInteger)+',');
                 //endi

                 if frmDados.ADO_Detalhe.FieldByName('itbaixa').asString <> '' then
                    sql.Add(quotedstr(frmDados.ADO_Detalhe.FieldByName('itbaixa').asString)+',');
                 //endi

                 sEnc := ',';
                 sSubs := '.';
                 sInfAnt := floattostr(frmDados.ADO_Detalhe.FieldByName('itquantidade').asfloat);
                 sNovaInf := findreplace(sEnc,sSubs,sinfAnt);
                 if frmDados.ADO_Detalhe.FieldByName('itquantidade').asfloat <> 0 then
                    sql.Add(sNovaInf+',');
                 //endi

                 sEnc := ',';
                 sSubs := '.';
                 sInfAnt := floattostr(frmDados.ADO_Detalhe.FieldByName('itunitario').asfloat);
                 sNovaInf := findreplace(sEnc,sSubs,sinfAnt);
                 if frmDados.ADO_Detalhe.FieldByName('itunitario').asfloat <> 0 then
                    sql.Add(sNovaInf+',');
                 //endi

                 sEnc := ',';
                 sSubs := '.';
                 sInfAnt := floattostr(frmDados.ADO_Detalhe.FieldByName('ittotal').asfloat);
                 sNovaInf := findreplace(sEnc,sSubs,sinfAnt);
                 if frmDados.ADO_Detalhe.FieldByName('ittotal').asfloat <> 0 then
                    sql.Add(sNovaInf+',');
                 //endi

                 if frmDados.ADO_Detalhe.FieldByName('itreferencia').asString <> '' then
                    sql.Add(quotedstr(frmDados.ADO_Detalhe.FieldByName('itreferencia').asString)+',');
                 //endi


                 sEnc := ',';
                 sSubs := '.';
                 sInfAnt := floattostr(frmDados.ADO_Detalhe.FieldByName('itmetragem').asfloat);
                 sNovaInf := findreplace(sEnc,sSubs,sinfAnt);
                 if frmDados.ADO_Detalhe.FieldByName('itmetragem').asfloat <> 0 then
                    sql.Add(sNovaInf+',');
                 //endi

                 sEnc := '/';
                 sSubs := '.';
                 sInfAnt := frmDados.ADO_Detalhe.FieldByName('itvenda').asString;
                 sNovaInf := findreplace(sEnc,sSubs,sInfAnt);
                 if frmDados.ADO_Detalhe.FieldByName('itvenda').asString <> '' then
                    sql.Add(quotedstr(sNovaInf)+',');
                 //endi

                 if frmDados.ADO_Detalhe.FieldByName('itund').asString <> '' then
                    sql.Add(quotedstr(frmDados.ADO_Detalhe.FieldByName('itund').asString)+',');
                 //endi

                 sEnc := ',';
                 sSubs := '.';
                 sInfAnt := floattostr(frmDados.ADO_Detalhe.FieldByName('itcomicao').asfloat);
                 sNovaInf := findreplace(sEnc,sSubs,sinfAnt);
                 if frmDados.ADO_Detalhe.FieldByName('itcomicao').asfloat <> 0 then
                    sql.Add(sNovaInf+',');
                 //endi

                 if frmDados.ADO_Detalhe.FieldByName('itcliente').asString <> '' then
                    sql.Add(quotedstr(frmDados.ADO_Detalhe.FieldByName('itcliente').asString)+',');
                 //endi

                 //informação do arquivo principal
                 if frmDados.ADO_Mestre.FieldByName('vecodcli').asInteger <> 0 then
                    sql.Add(inttostr(frmDados.ADO_Mestre.FieldByName('vecodcli').asInteger)+',');
                 //endi

                 if frmDados.ADO_Detalhe.FieldByName('itvendedor').asString <> '' then
                     sql.Add(quotedstr(frmDados.ADO_Detalhe.FieldByName('itvendedor').asString)+',');
                 //endi

                 //informação do arquivo principal
                 if icrep <> 0 then
                    sql.Add(quotedstr(inttostr(icrep))+',');
                 //endi

                 if frmDados.ADO_Detalhe.FieldByName('itpg').asString <> '' then
                    sql.Add(quotedstr(frmDados.ADO_Detalhe.FieldByName('itpg').asString)+',');
                 //endi

                 sEnc := ',';
                 sSubs := '.';
                 sInfAnt := floattostr(frmDados.ADO_Detalhe.FieldByName('itmetragem2').asfloat);
                 sNovaInf := findreplace(sEnc,sSubs,sinfAnt);
                 if frmDados.ADO_Detalhe.FieldByName('itmetragem2').asfloat <> 0 then
                    sql.Add(sNovaInf+',');
                 //endi

                 if frmDados.ADO_Detalhe.FieldByName('itident').asString <> '' then
                    sql.Add(quotedstr(frmDados.ADO_Detalhe.FieldByName('itident').asString)+',');
                 //endi

                 sEnc := ',';
                 sSubs := '.';
                 sInfAnt := floattostr(frmDados.ADO_Detalhe.FieldByName('itcusto').asfloat);
                 sNovaInf := findreplace(sEnc,sSubs,sinfAnt);
                 if frmDados.ADO_Detalhe.FieldByName('itcusto').asfloat <> 0 then
                    sql.Add(sNovaInf+',');
                 //endi

                 if frmDados.ADO_Detalhe.FieldByName('ittipo').asString <> '' then
                    sql.Add(quotedstr(frmDados.ADO_Detalhe.FieldByName('ittipo').asString)+',');
                 //endi

                 sEnc := ',';
                 sSubs := '.';
                 sInfAnt := floattostr(frmDados.ADO_Detalhe.FieldByName('itmax').asfloat);
                 sNovaInf := findreplace(sEnc,sSubs,sinfAnt);
                 if frmDados.ADO_Detalhe.FieldByName('itmax').asfloat <> 0 then
                    sql.Add(sNovaInf+',');
                 //endi

                 sEnc := ',';
                 sSubs := '.';
                 sInfAnt := floattostr(frmDados.ADO_Detalhe.FieldByName('itdesconto').asfloat);
                 sNovaInf := findreplace(sEnc,sSubs,sinfAnt);
                 if frmDados.ADO_Detalhe.FieldByName('itdesconto').asfloat <> 0 then
                    sql.Add(sNovaInf+',');
                 //endi

                 sEnc := ',';
                 sSubs := '.';
                 sInfAnt := floattostr(frmDados.ADO_Detalhe.FieldByName('iticm').asfloat);
                 sNovaInf := findreplace(sEnc,sSubs,sinfAnt);
                 if frmDados.ADO_Detalhe.FieldByName('iticm').asfloat <> 0 then
                    sql.Add(sNovaInf+',');
                 //endi

                 sEnc := ',';
                 sSubs := '.';
                 sInfAnt := floattostr(frmDados.ADO_Detalhe.FieldByName('itiss').asfloat);
                 sNovaInf := findreplace(sEnc,sSubs,sinfAnt);
                 if frmDados.ADO_Detalhe.FieldByName('itiss').asfloat <> 0 then
                    sql.Add(sNovaInf+',');
                 //endi

                 sql.Add(frmdados.ADO_Detalhe.FieldByName('itnumeronota').asString);
                 sql.Add(');');
                 ExecSQL;
               end;
            //endw

            frmdados.ADO_Detalhe.Next;
          end;
        //endw
        { Fim da Gravação do detalhe }

        { Verifica se o tipo de pagamento está cadastrado se for o caso grava}
        with frmdados.ADO_Detalhe do
           begin
             active := false;
             sql.Clear;
             sql.Add('select pgnumeronota, pgtipo, pgvalor from tabpagamento group by pgtipo, pgnumeronota, pgvalor having pgnumeronota = '+frmDados.ADO_Mestre.FieldByName('venumeronota').asString);
             active := true;
           end;
        //endi
        {fim do filtro}

        with frmdados.Dbx_Exec do
           begin


             if  frmDados.ADO_Detalhe.FieldByName('pgtipo').asString <> '' then
                 begin


             active := false;
             sql.Clear;
             sql.Add('select * from tipo_pgto Where descricao = '+QuotedStr(frmDados.ADO_Detalhe.FieldByName('pgtipo').asString));
             active := true;

             if recordcount = 0 then
                begin

                  active := false;
                  sql.Clear;
                  sql.Add('insert into tipo_pgto (');

                  sql.Add('Descricao');

                  sql.Add(')');
                  sql.Add('values (');

                  sql.Add(QuotedStr(frmdados.ADO_Detalhe.FieldByName('pgtipo').asString));

                  sql.Add(');');
                  ExecSQL;

                  active := false;
                  sql.Clear;
                  sql.Add('select * from tipo_pgto order by codigo');
                  active := true;

                  while not frmdados.Dbx_Exec.Eof do
                    begin
                      itipo_pgto := frmdados.Dbx_Exec.fieldbyname('codigo').asInteger;
                      frmdados.Dbx_Exec.Next;
                    end;
                  //endw

                end
             else
                begin
                  itipo_pgto := frmdados.Dbx_Exec.fieldbyname('codigo').asInteger;
                end;
             //endi




             end;
             //endi

           end;
        //endth

        {inicia gravação do detalhe vencimento}
        while not frmdados.ADO_Detalhe.Eof do
          begin

            with frmdados.Dbx_Exec do
               begin
                 active := false;
                 sql.Clear;
                 sql.Add('insert into vencimentos (');

                 if frmDados.ADO_Detalhe.FieldByName('pgvalor').asfloat <> 0 then
                    sql.Add('valor,');
                 //endi

                 if frmDados.ADO_Detalhe.FieldByName('pgtipo').asString <> '' then
                    sql.Add('c_tipo_pgto,');
                 //endi

                 sql.Add('c_svenda');

                 sql.Add(')');
                 sql.Add('values (');

                 sEnc := ',';
                 sSubs := '.';
                 sInfAnt := frmDados.ADO_Detalhe.FieldByName('pgvalor').asString;
                 sNovaInf := findreplace(sEnc,sSubs,sinfAnt);
                 if frmDados.ADO_Detalhe.FieldByName('pgvalor').asfloat <> 0 then
                    sql.Add(sNovaInf+',');
                 //endi

                 if frmDados.ADO_Detalhe.FieldByName('pgtipo').asString <> '' then
                    sql.Add(inttostr(itipo_pgto)+',');
                 //endi

                 sql.Add(frmdados.ADO_Mestre.FieldByName('venumeronota').asString);
                 sql.Add(');');
                 ExecSQL;
               end;
            //endth
            frmdados.ADO_Detalhe.Next;
          end;
        //endw



                end;
             //endi
             {fim da verificação da existência do pedido}
           end;
        //endth




        if ckbapaga.Checked then
           begin

            { Apaga Detalhe do Pedido }
            with frmdados.ADO_Exec do
               begin
                 active := false;
                 sql.Clear;
                 sql.Add('Delete from tabitens i Where i.itnumeronota = '+frmDados.ADO_Mestre.FieldByName('venumeronota').asString);
                 ExecSQL;
               end;
            //endw
            { Fim da Instrução }


            { Apaga Pedido }
            with frmdados.ADO_Exec do
               begin
                 active := false;
                 sql.Clear;
                 sql.Add('Delete from tabvenda v Where v.venumeronota = '+frmDados.ADO_Mestre.FieldByName('venumeronota').asString);
                 ExecSQL;
               end;
            //endw
            { Fim da Instrução }

           end
        else
           begin
            { Vista como transferido }
            //with frmdados.ADO_Exec do
            //   begin
            //     active := false;
            //     sql.Clear;
            //     sql.Add('update tabitens i  set i.ittransf ='+quotedstr('S')+'Where i.itnumeronota = '+frmDados.ADO_Mestre.FieldByName('venumeronota').asString);
            //     ExecSQL;
            //   end;
            //endw
            { Fim da Instrução }

            //with frmdados.ADO_Exec do
            //   begin
            //     frmprincipal.Stb.Panels[0].Text := 'Vistando...';
            //     active := false;
            //     sql.Clear;
            //     sql.Add('update tabvenda v set v.vetransf = '+quotedstr('S')+' Where v.venumeronota = '+frmDados.ADO_Mestre.FieldByName('venumeronota').asString);
            //     ExecSQL;
            //   end;
            //endw
            { Fim da Instrução }

           end;
        //endi


        frmdados.ADO_Mestre.Next;
      end;
    //endw

    //Atualiza generator
    if (icpro > 0) and (imaxcpro > 0) then
       begin
         try
           frmdados.Sql_Dados.Execute('SET GENERATOR GEN_DPRODUTOS_ID TO '+inttostr(imaxcpro),nil,@ResultSet);
         except
         end;
       end;
    //endi
    try
      frmdados.Sql_Dados.Execute('SET GENERATOR GEN_SVENDA_ID TO '+frmDados.ADO_Mestre.FieldByName('venumeronota').asString,nil,@ResultSet);
    except
    end;

    if (iccli > 0) and (imaxccli > 0) then
       begin
         try
           frmdados.Sql_Dados.Execute('SET GENERATOR GEN_Clientes_ID TO '+inttostr(imaxccli),nil,@ResultSet);
         except
         end;
       end;
    //endi
  except
    lblmensagem.Visible := false;
    lblmensagem2.Visible := false;
    antmove.Visible := false;
    antmove.Active  := false;
    showmessage('Houve um erro qdo tentei realizar a operação!!!');
    showmessage(frmdados.Ado_Exec.SQL.Text);
    showmessage(frmdados.ADO_Mestre.SQL.text);
    showmessage(frmdados.ADO_Detalhe.SQL.text);
    showmessage(frmdados.Dbx_Exec.SQL.text);


    exit;
  end;






end;


procedure TfrmApDados.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 27 then
   close;
//endi

end;

procedure TfrmApDados.spdconfirmaClick(Sender: TObject);
begin
  if application.MessageBox('Deseja Realmente Mover Dados, Tais informações não poderam mais serem visualizados no SYSTCOM?','Atenção',mb_YesNo + mb_DefButton2) = idNo then
     exit;
  //endi

if ckbzera.Checked then
     begin

       with frmdados.Dbx_Exec do
         begin
           active := false;
           sql.Clear;
           sql.Add('delete from dvenda');
           ExecSql;
         end;
       //endi
       try
         frmdados.Sql_Dados.Execute('SET GENERATOR GEN_dvenda_ID TO 0',nil,@ResultSet);
       except
       end;

       with frmdados.Dbx_Exec do
         begin
           active := false;
           sql.Clear;
           sql.Add('delete from svenda');
           ExecSql;
         end;
       //endi
       try
         frmdados.Sql_Dados.Execute('SET GENERATOR GEN_svenda_ID TO 0',nil,@ResultSet);
       except
       end;


       with frmdados.Dbx_Exec do
         begin
           active := false;
           sql.Clear;
           sql.Add('delete from dprodutos');
           ExecSql;
         end;
       //endi
       try
         frmdados.Sql_Dados.Execute('SET GENERATOR GEN_dprodutos_ID TO 0',nil,@ResultSet);
       except
       end;

       with frmdados.Dbx_Exec do
         begin
           active := false;
           sql.Clear;
           sql.Add('delete from produtos');
           ExecSql;
         end;
       //endi
       try
         frmdados.Sql_Dados.Execute('SET GENERATOR GEN_produtos_ID TO 0',nil,@ResultSet);
       except
       end;

       with frmdados.Dbx_Exec do
         begin
           active := false;
           sql.Clear;
           sql.Add('delete from clientes');
           ExecSql;
         end;
       //endi
       try
         frmdados.Sql_Dados.Execute('SET GENERATOR GEN_clientes_ID TO 0',nil,@ResultSet);
       except
       end;

       with frmdados.Dbx_Exec do
         begin
           active := false;
           sql.Clear;
           sql.Add('delete from Ent_Prod');
           ExecSql;
         end;
       //endi
       try
         frmdados.Sql_Dados.Execute('SET GENERATOR GEN_Ent_Prod_ID TO 0',nil,@ResultSet);
       except
       end;




       with frmdados.Dbx_Exec do
         begin
           active := false;
           sql.Clear;
           sql.Add('delete from Fornecedores');
           ExecSql;
         end;
       //endi
       try
         frmdados.Sql_Dados.Execute('SET GENERATOR GEN_Fornecedores_ID TO 0',nil,@ResultSet);
       except
       end;



       with frmdados.Dbx_Exec do
         begin
           active := false;
           sql.Clear;
           sql.Add('delete from representantes');
           ExecSql;
         end;
       //endi
       try
         frmdados.Sql_Dados.Execute('SET GENERATOR GEN_representantes_ID TO 0',nil,@ResultSet);
       except
       end;

       with frmdados.Dbx_Exec do
         begin
           active := false;
           sql.Clear;
           sql.Add('delete from pagar');
           ExecSql;
         end;
       //endi
       try
         frmdados.Sql_Dados.Execute('SET GENERATOR GEN_pagar_ID TO 0',nil,@ResultSet);
       except
       end;


       with frmdados.Dbx_Exec do
         begin
           active := false;
           sql.Clear;
           sql.Add('delete from classep');
           ExecSql;
         end;
       //endi
       try
         frmdados.Sql_Dados.Execute('SET GENERATOR GEN_classep_ID TO 0',nil,@ResultSet);
       except
       end;

       with frmdados.Dbx_Exec do
         begin
           active := false;
           sql.Clear;
           sql.Add('delete from classe');
           ExecSql;
         end;
       //endi
       try
         frmdados.Sql_Dados.Execute('SET GENERATOR GEN_classe_ID TO 0',nil,@ResultSet);
       except
       end;

     end;
  //endi



  if frmdados.Cds_Indice.fieldbyname('caminhobcoado').asString <> '' then
     begin
       envia_dados_cad_para_firebird;
       //envia_dados_para_firebird;
     end;
  //endi
  if frmdados.Cds_Indice.fieldbyname('caminhobcoado_2').asString <> '' then
     begin
       //envia_dados_fin_para_firebird;
     end;
  //endi
  close;

end;

procedure TfrmApDados.SpeedButton1Click(Sender: TObject);
begin
   close;

end;

procedure TfrmApDados.envia_dados_cad_para_firebird;
begin
envia_clientes;
envia_fornecedores;
//envia_produtos;

end;

procedure TfrmApDados.envia_dados_fin_para_firebird;
begin
try

  sDataI := copy(datetimetostr(dtpdatai.Date),1,10);
  sDataI := datainvertida( sDataI  );

  sDataF := copy(datetimetostr(dtpdataF.Date),1,10);
  sDataF := datainvertida( sDataF  );



    x:= 0;

  setlength(atipo,2);
  atipo[0]:= 'S';
  atipo[1]:= 'N';


    with frmdados.ADO_Conexao do
       begin
         Connected := false;
         ConnectionString := 'Provider=MSDASQL.1;Password='+frmdados.Cds_Indice.fieldbyname('senhaado').asString+';Persist Security Info=True;User ID='+frmdados.Cds_Indice.fieldbyname('loginado').asString+';Data Source=Banco de dados MS Access;Extended Properties="DSN=Banco de dados MS Access;'+
                             'DBQ='+frmdados.Cds_Indice.fieldbyname('caminhobcoado_2').asString+';DriverId=25;FIL=MS Access;MaxBufferSize=2048;PageTimeout=5;PWD='+frmdados.Cds_Indice.fieldbyname('senhaado').asString+';'+
                             'UID=admin;";Initial Catalog='+frmdados.Cds_Indice.fieldbyname('caminhobcoado_2').asString;
         Connected := true;
       end;
    //endwith




    while x < length(atipo) do
      begin



    with frmdados.ADO_Mestre do
      begin
        active := false;
        sql.Clear;
        sql.Add('select * from tabpagar where ( paEmissao >= #'+ sDataI +'#) and  (paEmissao <=#'+ sDataF +'#) and (pabpagar = '+Quotedstr( atipo[x] )+')');
        active := true;
     end;
    //endth
    while not frmdados.ADO_Mestre.Eof do
      begin
         with FrmDados.Dbx_Exec do
              begin
                try
                // Verifica se há descricao classep cadastrado
                active := false;
                sql.Clear;
                sql.Add('select * from classep Where codigo = '+inttostr(strtoint(copy(frmDados.ADO_Mestre.FieldByName('paReferencia').asString,1,3))));
                active := true;

                if recordcount = 0 then
                   begin
                     active := false;
                     sql.Clear;
                     sql.Add('insert into classep (');

                     sql.Add('codigo');
                     //sql.Add('codigo,');

                     sql.Add(')');
                     sql.Add('values (');

                     sql.Add(inttostr(strtoint(copy(frmDados.ADO_Mestre.FieldByName('paReferencia').asString,1,3))));
                     //sql.Add(frmDados.ADO_Mestre.FieldByName('esmed').asString+',');
                     //sql.Add(inttostr(idescprod));

                     sql.Add(');');
                     ExecSQL;

                     active := false;
                     sql.Clear;
                     sql.Add('select * from classep order by codigo');
                     active := true;

                     while not frmdados.Dbx_Exec.Eof do
                        begin
                          icclap := frmdados.Dbx_Exec.fieldbyname('codigo').asInteger;
                          frmdados.Dbx_Exec.Next;
                        end;
                     //endw
                   end
                else
                   begin
                     icclap := frmdados.Dbx_Exec.fieldbyname('codigo').asInteger;
                   end;
                //endi
                except
                end;
                if icclap > imaxcclap then
                   imaxcclap := icclap;
                //endi
                try
                  frmdados.Sql_Dados.Execute('SET GENERATOR GEN_classep_ID TO '+inttostr(imaxcclap),nil,@ResultSet);
                except
                end;

                try
                // Verifica se há descricao classe cadastrado
                active := false;
                sql.Clear;
                sql.Add('select * from classe Where (cclap = '+inttostr(strtoint(copy(frmDados.ADO_Mestre.FieldByName('paReferencia').asString,1,3)))+') and (subgru = '+inttostr(strtoint(copy(frmDados.ADO_Mestre.FieldByName('paReferencia').asString,5,3)))+')');
                active := true;

                if recordcount = 0 then
                   begin
                     active := false;
                     sql.Clear;
                     sql.Add('insert into classe (');

                     sql.Add('cclap,');
                     sql.Add('subgru');

                     sql.Add(')');
                     sql.Add('values (');

                     sql.Add(inttostr(strtoint(copy(frmDados.ADO_Mestre.FieldByName('paReferencia').asString,1,3)))+',');
                     sql.Add(inttostr(strtoint(copy(frmDados.ADO_Mestre.FieldByName('paReferencia').asString,5,3))));

                     sql.Add(');');

                     ExecSQL;

                     active := false;
                     sql.Clear;
                     sql.Add('select * from classe order by codigo');
                     active := true;

                     while not frmdados.Dbx_Exec.Eof do
                        begin
                          iccla := frmdados.Dbx_Exec.fieldbyname('codigo').asInteger;
                          frmdados.Dbx_Exec.Next;
                        end;
                     //endw
                   end
                else
                   begin
                     iccla := frmdados.Dbx_Exec.fieldbyname('codigo').asInteger;
                   end;
                //endi
                except
                end;
                //if iccla > imaxccla then
                //   imaxccla := iccla;
                //endi
                //try
                //  frmdados.Sql_Dados.Execute('SET GENERATOR GEN_classe_ID TO '+inttostr(imaxccla),nil,@ResultSet);
                //except
                //end;

                try
                // Verifica se há nome fornecedor cadastrado
                active := false;
                sql.Clear;
                sql.Add('select * from Fornecedores Where Nome = '+QuotedStr(frmDados.ADO_Mestre.FieldByName('pafornecedor').asString));
                active := true;

                if recordcount = 0 then
                   begin
                     active := false;
                     sql.Clear;
                     sql.Add('insert into fornecedores (');

                     sql.Add('nome');

                     sql.Add(')');
                     sql.Add('values (');

                     sql.Add(QuotedStr(frmDados.ADO_Mestre.FieldByName('pafornecedor').asString));

                     sql.Add(');');
                     ExecSQL;

                     active := false;
                     sql.Clear;
                     sql.Add('select * from Fornecedores order by codigo');
                     active := true;

                     while not frmdados.Dbx_Exec.Eof do
                        begin
                          icfor := frmdados.Dbx_Exec.fieldbyname('codigo').asInteger;
                          frmdados.Dbx_Exec.Next;
                        end;
                     //endw
                   end
                else
                   begin
                     icfor := frmdados.Dbx_Exec.fieldbyname('codigo').asInteger;
                   end;
                //endi
                except
                end;


                try
                // Verifica se há codigo cadastrado
                active := false;
                sql.Clear;
                sql.Add('select * from Pagar Where Codigo = '+frmDados.ADO_Mestre.FieldByName('pacodigo').asString);
                active := true;

                if (recordcount = 0) then
                   begin
                     active := false;
                     sql.Clear;
                     sql.Add('insert into Pagar (');

                     if frmDados.ADO_Mestre.FieldByName('paValor').asstring <> '' then
                        sql.Add('Valor,');
                     //endi

                     if frmDados.ADO_Mestre.FieldByName('paReferencia').asstring <> '' then
                        sql.Add('Descricao,');
                     //endi

                     if frmDados.ADO_Mestre.FieldByName('paFornecedor').asstring <> '' then
                        sql.Add('cFor,');
                     //endi

                     if frmDados.ADO_Mestre.FieldByName('paEmissao').asstring <> '' then
                        sql.Add('Dte,');
                     //endi

                     if frmDados.ADO_Mestre.FieldByName('paVencimento').asstring <> '' then
                        sql.Add('Dtv,');
                     //endi

                     if frmDados.ADO_Mestre.FieldByName('paPago').asstring <> '' then
                        sql.Add('Dtl,');
                     //endi

                     if frmDados.ADO_Mestre.FieldByName('pavalorpago').asstring <> '' then
                        sql.Add('valliq,');
                     //endi

                     if frmDados.ADO_Mestre.FieldByName('paDocumento').asstring <> '' then
                        sql.Add('Doc,');
                     //endi

                     if iccla > 0 then
                        sql.Add('ccla,');
                     //endi

                     sql.Add('cSit,');

                     sql.Add('Codigo');

                     sql.Add(')');
                     sql.Add('values (');

                     if  frmDados.ADO_Mestre.FieldByName('paValor').asstring <> '' then
                         begin
                           sValor := frmDados.ADO_Mestre.FieldByName('paValor').asstring;
                           sValor :=  Decimal_Is_Point(sValor);
                           sql.Add( sValor+','   );
                         end;
                     //endi

                     if frmDados.ADO_Mestre.FieldByName('paReferencia').asstring <> '' then
                        sql.Add(Quotedstr(frmDados.ADO_Mestre.FieldByName('paReferencia').asstring)+',');
                     //endi

                     if frmDados.ADO_Mestre.FieldByName('paFornecedor').asstring <> '' then
                        sql.Add( inttostr(icfor)+',');
                     //endi

                     if frmDados.ADO_Mestre.FieldByName('paEmissao').asstring <> '' then
                        begin
                          sValor := frmDados.ADO_Mestre.FieldByName('paEmissao').asstring;
                          sValor := bar_is_point(sValor);
                          sql.Add(quotedstr(sValor)+',');
                        end;
                     //endi

                     if frmDados.ADO_Mestre.FieldByName('paVencimento').asstring <> '' then
                        begin
                          sValor := frmDados.ADO_Mestre.FieldByName('paVencimento').asstring;
                          sValor := bar_is_point(sValor);
                          sql.Add(quotedstr(sValor)+',');
                        end;
                     //endi

                     if frmDados.ADO_Mestre.FieldByName('paPago').asstring <> '' then
                        begin
                          sValor := frmDados.ADO_Mestre.FieldByName('paPago').asstring;
                          sValor := bar_is_point(sValor);
                          sql.Add(quotedstr(sValor)+',');
                        end;
                     //endi


                     if frmDados.ADO_Mestre.FieldByName('pavalorpago').asstring <> '' then
                         begin
                           sValor := frmDados.ADO_Mestre.FieldByName('pavalorpago').asstring;
                           sValor :=  Decimal_Is_Point(sValor);
                           sql.Add( sValor+',');
                         end;
                     //endi

                     if frmDados.ADO_Mestre.FieldByName('paDocumento').asstring <> '' then
                        sql.Add(Quotedstr(frmDados.ADO_Mestre.FieldByName('paDocumento').asstring)+',');
                     //endi

                     if iccla > 0 then
                        sql.Add(inttostr(iccla)+',');
                     //endi

                     if  (frmDados.ADO_Mestre.FieldByName('pavalorpago').asfloat > 0) and (frmDados.ADO_Mestre.FieldByName('pabpagar').asString <> 'S') then
                         sql.Add( '2,' )
                     else
                         sql.Add( '1,' );
                     //endi

                     sql.Add( frmDados.ADO_Mestre.FieldByName('paCodigo').asstring );


                     sql.Add(');');


                     ExecSQL;

                     active := false;
                     sql.Clear;
                     sql.Add('select * from pagar order by codigo');
                     active := true;

                     while not frmdados.Dbx_Exec.Eof do
                        begin
                          icpag := frmdados.Dbx_Exec.fieldbyname('codigo').asInteger;
                          frmdados.Dbx_Exec.Next;
                        end;
                     //endw


                   end
                else
                   begin

                     if atipo[x] = 'S' then
                        begin



                         active := false;
                         sql.Clear;
                         sql.Add('insert into Pagar (');

                         if frmDados.ADO_Mestre.FieldByName('paValor').asstring <> '' then
                            sql.Add('Valor,');
                         //endi

                         if frmDados.ADO_Mestre.FieldByName('paReferencia').asstring <> '' then
                            sql.Add('Descricao,');
                         //endi

                         if frmDados.ADO_Mestre.FieldByName('paFornecedor').asstring <> '' then
                            sql.Add('cFor,');
                         //endi

                         if frmDados.ADO_Mestre.FieldByName('paEmissao').asstring <> '' then
                            sql.Add('Dte,');
                         //endi

                         if frmDados.ADO_Mestre.FieldByName('paVencimento').asstring <> '' then
                            sql.Add('Dtv,');
                         //endi

                         if frmDados.ADO_Mestre.FieldByName('paPago').asstring <> '' then
                            sql.Add('Dtl,');
                         //endi

                         if frmDados.ADO_Mestre.FieldByName('pavalorpago').asstring <> '' then
                            sql.Add('valliq,');
                         //endi

                         if frmDados.ADO_Mestre.FieldByName('paDocumento').asstring <> '' then
                            sql.Add('Doc,');
                         //endi

                         if iccla > 0 then
                            sql.Add('ccla,');
                         //endi

                         sql.Add('cSit');


                         sql.Add(')');
                         sql.Add('values (');

                         if  frmDados.ADO_Mestre.FieldByName('paValor').asstring <> '' then
                             begin
                               sValor := frmDados.ADO_Mestre.FieldByName('paValor').asstring;
                               sValor :=  Decimal_Is_Point(sValor);
                               sql.Add( sValor+','   );
                             end;
                         //endi

                         if frmDados.ADO_Mestre.FieldByName('paReferencia').asstring <> '' then
                            sql.Add(Quotedstr(frmDados.ADO_Mestre.FieldByName('paReferencia').asstring)+',');
                         //endi

                         if frmDados.ADO_Mestre.FieldByName('paFornecedor').asstring <> '' then
                            sql.Add( inttostr(icfor)+',');
                         //endi

                         if frmDados.ADO_Mestre.FieldByName('paEmissao').asstring <> '' then
                            sql.Add(quotedstr(frmDados.ADO_Mestre.FieldByName('paEmissao').asstring)+',');
                         //endi

                         if frmDados.ADO_Mestre.FieldByName('paVencimento').asstring <> '' then
                            sql.Add(quotedstr(frmDados.ADO_Mestre.FieldByName('paVencimento').asstring)+',');
                         //endi

                         if frmDados.ADO_Mestre.FieldByName('paPago').asstring <> '' then
                            sql.Add(quotedstr(frmDados.ADO_Mestre.FieldByName('paPago').asstring)+',');
                         //endi

                         if frmDados.ADO_Mestre.FieldByName('pavalorpago').asstring <> '' then
                             begin
                               sValor := frmDados.ADO_Mestre.FieldByName('pavalorpago').asstring;
                               sValor :=  Decimal_Is_Point(sValor);
                               sql.Add( sValor+',');
                             end;
                         //endi

                         if frmDados.ADO_Mestre.FieldByName('paDocumento').asstring <> '' then
                            sql.Add(Quotedstr(frmDados.ADO_Mestre.FieldByName('paDocumento').asstring)+',');
                         //endi

                         if iccla > 0 then
                            sql.Add(inttostr(iccla)+',');
                         //endi

                         sql.Add( '1' );


                         sql.Add(');');

                        end;
                     //endi
                     icpag := frmdados.Dbx_Exec.fieldbyname('codigo').asInteger;
                   end;
                //endi
                except
                end;
                if icpag > imaxcpag then
                   imaxcpag := icpag;
                //endi
                try
                  frmdados.Sql_Dados.Execute('SET GENERATOR GEN_pagar_ID TO '+inttostr(imaxcpag),nil,@ResultSet);
                except
                end;
              end;
         //endth




        frmdados.ADO_Mestre.Next;
      end;
    //endw




     x:= x + 1;



      end;
    //endw




  except
    showmessage('Houve um problema com SYSTCOM financeiro');
    showmessage(frmdados.ADO_Mestre.SQL.Text);
  end;
end;


procedure tfrmapdados.envia_clientes;
begin
  try

        with frmdados.ADO_Mestre do
           begin
             active := false;
             sql.Clear;
             sql.Add('select * from tabcliente');
             active := true;
           end;
        //endi
        //fim do filtro

        //inicia gravação do Mestre
        while not frmdados.ADO_Mestre.Eof do
          begin

            with FrmDados.Dbx_Exec do
              begin
                // Verifica se há cliente cadastrado

                active := false;
                sql.Clear;
                sql.Add('select * from clientes Where codigo = '+frmDados.ADO_Mestre.FieldByName('clicodigo').asString);
                active := true;

                if recordcount = 0 then
                   begin
                     if frmdados.ADO_Mestre.FieldByName('clicodigo').asString <> '' then
                        begin

                          active := false;
                          sql.Clear;
                          sql.Add('insert into clientes (');

                          if frmdados.ADO_Mestre.FieldByName('clinome').asString <> '' then
                             sql.Add('nome,');
                          //endi

                          if frmdados.ADO_Mestre.FieldByName('cliendereco').asString <> '' then
                             sql.Add('endcom,');
                          //endi

                          if frmdados.ADO_Mestre.FieldByName('clibairro').asString <> '' then
                             sql.Add('bairrocom,');
                          //endi

                          if frmdados.ADO_Mestre.FieldByName('clifone').asString <> '' then
                             sql.Add('telefonecom,');
                          //endi

                         if frmdados.ADO_Mestre.FieldByName('climunicipio').asString <> '' then
                            sql.Add('cidadecom,');
                         //endi

                         if frmdados.ADO_Mestre.FieldByName('clicontato').asString <> '' then
                            sql.Add('contato,');
                         //endi

                         if frmdados.ADO_Mestre.FieldByName('clicpf').asString <> '' then
                            sql.Add('cpf,');
                         //endi

                         if frmdados.ADO_Mestre.FieldByName('cliie').asString <> '' then
                            sql.Add('ie,');
                         //endi

                         sql.Add('codigo');

                         sql.Add(')');
                         sql.Add('values (');

                         if frmdados.ADO_Mestre.FieldByName('clinome').asString <> '' then
                            sql.Add(QuotedStr(frmdados.ADO_Mestre.FieldByName('clinome').asString)+',');
                         //endi

                         if frmdados.ADO_Mestre.FieldByName('cliendereco').asString <> '' then
                            sql.Add(QuotedStr(frmdados.ADO_Mestre.FieldByName('cliendereco').asString)+',');
                         //endi

                         if frmdados.ADO_Mestre.FieldByName('clibairro').asString <> '' then
                            sql.Add(QuotedStr(frmdados.ADO_Mestre.FieldByName('clibairro').asString)+',');
                         //endi

                         if frmdados.ADO_Mestre.FieldByName('clifone').asString <> '' then
                            sql.Add(QuotedStr(copy(frmdados.ADO_Mestre.FieldByName('clifone').asString,1,10))+',');
                         //endi

                         if frmdados.ADO_Mestre.FieldByName('climunicipio').asString <> '' then
                            sql.Add(QuotedStr(frmdados.ADO_Mestre.FieldByName('climunicipio').asString)+',');
                         //endi

                         if frmdados.ADO_Mestre.FieldByName('clicontato').asString <> '' then
                            sql.Add(QuotedStr(frmdados.ADO_Mestre.FieldByName('clicontato').asString)+',');
                         //endi

                         if frmdados.ADO_Mestre.FieldByName('clicpf').asString <> '' then
                            sql.Add(QuotedStr(frmdados.ADO_Mestre.FieldByName('clicpf').asString)+',');
                         //endi

                         if frmdados.ADO_Mestre.FieldByName('cliie').asString <> '' then
                            sql.Add(QuotedStr(frmdados.ADO_Mestre.FieldByName('cliie').asString)+',');
                        //endi

                        sql.Add(QuotedStr(frmdados.ADO_Mestre.FieldByName('clicodigo').asString));

                        sql.Add(');');
                        ExecSQL;




                        end;
                     //endi
                   end
                else
                   begin

                     active := false;
                     sql.Clear;
                     sql.Add('Update clientes set endent = '+quotedstr(frmdados.ADO_Mestre.FieldByName('cliendereco').asString)+' where codigo = '+frmDados.ADO_Mestre.FieldByName('clicodigo').asString);
                     ExecSql;

                     active := false;
                     sql.Clear;
                     sql.Add('Update clientes set bairroent = '+quotedstr(frmdados.ADO_Mestre.FieldByName('clibairro').asString)+' where codigo = '+frmDados.ADO_Mestre.FieldByName('clicodigo').asString);
                     ExecSql;

                     active := false;
                     sql.Clear;
                     sql.Add('Update clientes set telefoneent = '+quotedstr(copy(frmdados.ADO_Mestre.FieldByName('clifone').asString,1,8))+' where codigo = '+frmDados.ADO_Mestre.FieldByName('clicodigo').asString);
                     ExecSql;

                     active := false;
                     sql.Clear;
                     sql.Add('Update clientes set cidadeent = '+quotedstr(frmdados.ADO_Mestre.FieldByName('climunicipio').asString)+' where codigo = '+frmDados.ADO_Mestre.FieldByName('clicodigo').asString);
                     ExecSql;


                     active := false;
                     sql.Clear;
                     sql.Add('Update clientes set telefones = '+quotedstr(frmdados.ADO_Mestre.FieldByName('clifone').asString)+' where codigo = '+frmDados.ADO_Mestre.FieldByName('clicodigo').asString);
                     ExecSql;



                   end;
                //endi
              end;
            //endth


            frmdados.ADO_Mestre.Next;


          end;
        //endw


  except
    showmessage(frmdados.Dbx_Exec.SQL.Text);
  end;
end;



procedure tfrmapdados.envia_fornecedores;
begin
  try

        with frmdados.ADO_Mestre do
           begin
             active := false;
             sql.Clear;
             sql.Add('select * from tabfornecedor');
             active := true;
           end;
        //endi
        //fim do filtro

        //inicia gravação do Mestre
        while not frmdados.ADO_Mestre.Eof do
          begin

            with FrmDados.Dbx_Exec do
              begin

                if frmdados.ADO_Mestre.FieldByName('fonome').asString <> '' then
                   begin

                     active := false;
                     sql.Clear;
                     sql.Add('insert into Fornecedores (');

                     if frmdados.ADO_Mestre.FieldByName('foendereco').asString <> '' then
                        sql.Add('endereco,');
                     //endi

                     if frmdados.ADO_Mestre.FieldByName('fobairro').asString <> '' then
                        sql.Add('bairro,');
                     //endi

                     if frmdados.ADO_Mestre.FieldByName('fotelefone').asString <> '' then
                        sql.Add('telefones,');
                     //endi

                     if frmdados.ADO_Mestre.FieldByName('fomunicipio').asString <> '' then
                        sql.Add('cidade,');
                     //endi

                     if frmdados.ADO_Mestre.FieldByName('focontato').asString <> '' then
                        sql.Add('contato,');
                     //endi

                     if frmdados.ADO_Mestre.FieldByName('focpf').asString <> '' then
                        sql.Add('cpf,');
                     //endi

                     if frmdados.ADO_Mestre.FieldByName('foie').asString <> '' then
                        sql.Add('rg,');
                     //endi

                     sql.Add('nome,');

                     sql.Add('codigo');

                     sql.Add(')');
                     sql.Add('values (');

                     if frmdados.ADO_Mestre.FieldByName('foendereco').asString <> '' then
                        sql.Add(QuotedStr(frmdados.ADO_Mestre.FieldByName('foendereco').asString)+',');
                     //endi

                     if frmdados.ADO_Mestre.FieldByName('fobairro').asString <> '' then
                        sql.Add(QuotedStr(frmdados.ADO_Mestre.FieldByName('fobairro').asString)+',');
                     //endi

                     if frmdados.ADO_Mestre.FieldByName('fotelefone').asString <> '' then
                        sql.Add(QuotedStr(frmdados.ADO_Mestre.FieldByName('fotelefone').asString+' '+frmdados.ADO_Mestre.FieldByName('fofax').asString)+',');
                     //endi

                     if frmdados.ADO_Mestre.FieldByName('fomunicipio').asString <> '' then
                        sql.Add(QuotedStr(frmdados.ADO_Mestre.FieldByName('fomunicipio').asString)+',');
                     //endi

                     if frmdados.ADO_Mestre.FieldByName('focontato').asString <> '' then
                        sql.Add(QuotedStr(frmdados.ADO_Mestre.FieldByName('focontato').asString)+',');
                     //endi

                     if frmdados.ADO_Mestre.FieldByName('focpf').asString <> '' then
                        sql.Add(QuotedStr(frmdados.ADO_Mestre.FieldByName('focpf').asString)+',');
                     //endi

                     if frmdados.ADO_Mestre.FieldByName('foie').asString <> '' then
                        sql.Add(QuotedStr(frmdados.ADO_Mestre.FieldByName('foie').asString)+',');
                     //endi

                     sql.Add(QuotedStr(frmdados.ADO_Mestre.FieldByName('fonome').asString)+',');

                     sql.Add(QuotedStr(frmdados.ADO_Mestre.FieldByName('focodigo').asString));
                     
                     sql.Add(')');

                     //showmessage(frmdados.Dbx_Exec.SQL.Text);

                     ExecSQL;

                   end;
                //endi


              end;
            //endth


            frmdados.ADO_Mestre.Next;


          end;
        //endw


  except
    showmessage(frmdados.Dbx_Exec.SQL.Text);
  end;
end;





procedure tfrmapdados.envia_produtos;
begin
      try
        with frmdados.ADO_Conexao do
           begin
             Connected := false;
             ConnectionString := 'Provider=MSDASQL.1;Password='+frmdados.Cds_Indice.fieldbyname('senhaado').asString+';Persist Security Info=True;User ID='+frmdados.Cds_Indice.fieldbyname('loginado').asString+';Data Source=Banco de dados MS Access;Extended Properties="DSN=Banco de dados MS Access;'+
                                 'DBQ='+frmdados.Cds_Indice.fieldbyname('caminhobcoado').asString+';DriverId=25;FIL=MS Access;MaxBufferSize=2048;PageTimeout=5;PWD='+frmdados.Cds_Indice.fieldbyname('senhaado').asString+';'+
                                 'UID=admin;";Initial Catalog='+frmdados.Cds_Indice.fieldbyname('caminhobcoado').asString;
             Connected := true;
           end;
        //endwith
        except
        end;


        with frmdados.ADO_Mestre do
           begin
             active := false;
             sql.Clear;
             sql.Add('select * from tabestoque');
             active := true;
           end;
        //endi
        //fim do filtro

        //inicia gravação do Mestre
        while not frmdados.ADO_Mestre.Eof do
          begin

            with FrmDados.Dbx_Exec do
              begin
                // Verifica se há descricao unidade cadastrado

                active := false;
                sql.Clear;
                sql.Add('select * from unidade Where descricao = '+QuotedStr(frmDados.ADO_Mestre.FieldByName('esmed').asString));
                active := true;

                if recordcount = 0 then
                   begin
                     if frmDados.ADO_Mestre.FieldByName('esmed').asString <> '' then
                        begin
                          active := false;
                          sql.Clear;
                          sql.Add('insert into unidade (');

                          sql.Add('descricao');
                          //sql.Add('codigo,');

                          sql.Add(')');
                          sql.Add('values (');

                          sql.Add(QuotedStr(frmDados.ADO_Mestre.FieldByName('esmed').asString));
                          //sql.Add(frmDados.ADO_Mestre.FieldByName('esmed').asString+',');
                          //sql.Add(inttostr(idescprod));

                          sql.Add(');');
                          ExecSQL;

                          active := false;
                          sql.Clear;
                          sql.Add('select * from unidade order by codigo');
                          active := true;

                          while not frmdados.Dbx_Exec.Eof do
                            begin
                              icuni := frmdados.Dbx_Exec.fieldbyname('codigo').asInteger;
                              frmdados.Dbx_Exec.Next;
                            end;
                          //endw
                        end;
                     //endi
                   end
                else
                   begin
                     icuni := frmdados.Dbx_Exec.fieldbyname('codigo').asInteger;
                   end;
                //endi


              end;
            //endth


            with FrmDados.Dbx_Exec do
              begin
                // Verifica se há descricao produto cadastrado

                active := false;
                sql.Clear;
                sql.Add('select * from dprodutos Where codigo = '+frmDados.ADO_Mestre.FieldByName('escodigo').asString);
                active := true;
                icontregprod := recordcount;

                active := false;
                sql.Clear;
                sql.Add('select * from produtos');
                active := true;

                if icontregprod = 0 then
                   begin
                     if frmdados.ADO_Mestre.FieldByName('esdescricao').asString <> '' then
                        begin
                          active := false;
                          sql.Clear;
                          sql.Add('insert into produtos (');

                          sql.Add('descricao');
                          sql.Add(')');
                          sql.Add('values (');

                          sql.Add(QuotedStr(frmdados.ADO_Mestre.FieldByName('esdescricao').asString));
                          sql.Add(');');
                          ExecSQL;

                          active := false;
                          sql.Clear;
                          sql.Add('select * from produtos order by codigo');
                          active := true;

                          while not frmdados.Dbx_Exec.Eof do
                            begin
                              idescprod := frmdados.Dbx_Exec.fieldbyname('codigo').asInteger;
                              frmdados.Dbx_Exec.Next;
                            end;
                          //endw
                        end;
                     //endi
                   end
                else
                   begin
                     idescprod := frmdados.Dbx_Exec.fieldbyname('codigo').asInteger;
                   end;
                //endi
                // Fim da Verificação do produto
              end;
            //endth

            with FrmDados.Dbx_Exec do
              begin

                //Verifica se há produto cadastrado no cadastro de produtos
                active := false;
                sql.Clear;
                sql.Add('select * from dprodutos Where codigo = '+frmDados.ADO_Mestre.FieldByName('escodigo').asString);
                active := true;

                if recordcount = 0 then
                   begin
                     if frmDados.ADO_Mestre.FieldByName('escodigo').asInteger <> 0 then
                        begin
                          active := false;
                          sql.Clear;
                          sql.Add('insert into dprodutos (');

                          //1
                          sql.Add('codigo,');

                          //2
                          if frmDados.ADO_Mestre.FieldByName('esmed').asString <> '' then
                             sql.Add('cuni,');
                          //endi

                          //3
                          if frmDados.ADO_Mestre.FieldByName('esPreco').asString <> '' then
                             sql.Add('prve,');
                          //endi

                          //4
                          //if frmDados.ADO_Mestre.FieldByName('esPrecop').asString <> '' then
                          //   sql.Add('prcubs,');
                          //endi
                          //if frmDados.ADO_Mestre.FieldByName('escustobruto').asString <> '' then
                          //   sql.Add('prcubs,');
                          //endi

                          //5
                          if frmDados.ADO_Mestre.FieldByName('esMargem').asString <> '' then
                             sql.Add('per,');
                          //endi

                          //6
                          //if frmDados.ADO_Mestre.FieldByName('esPrecop').asString <> '' then
                          //   sql.Add('prcu,');
                          //endi
                          if frmDados.ADO_Mestre.FieldByName('esvalorcompra').asString <> '' then
                             sql.Add('prcu,');
                          //endi

                          //7
                          //if frmDados.ADO_Mestre.FieldByName('esdesconto').asString <> '' then
                          //   sql.Add('aliqcus,');
                          //endi

                          //8
                          if frmDados.ADO_Mestre.FieldByName('esquantidade').asString <> '' then
                             sql.Add('qua,');
                          //endi

                          //9
                          if frmDados.ADO_Mestre.FieldByName('esreferencia').asString <> '' then
                             sql.Add('caux,');
                          //endi

                          //10
                          if frmDados.ADO_Mestre.FieldByName('esaplicacao').asString <> '' then
                             sql.Add('aplicacao,');
                          //endi

                          //11
                          sql.Add('actdesc,');

                          //...
                          sql.Add('cdescprod');

                          sql.Add(')');
                          sql.Add('values (');

                          //1
                          sql.Add( inttostr( frmDados.ADO_Mestre.FieldByName('escodigo').asinteger )+',');
                          //sql.Add( inttostr(idescprod)+',');

                          //2
                          if frmDados.ADO_Mestre.FieldByName('esmed').asString <> '' then
                             sql.Add(inttostr(icuni)+',');
                          //endi

                          //3
                          if frmDados.ADO_Mestre.FieldByName('esPreco').asString <> '' then
                             begin
                               sValor := formatfloat('0.00',frmDados.ADO_Mestre.FieldByName('espreco').asfloat);
                               sValor :=  Decimal_Is_Point(sValor);
                               sql.Add(sValor+',');
                             end;
                          //endi

                          //4
                          //if frmDados.ADO_Mestre.FieldByName('esPrecop').asString <> '' then
                          //   begin
                          //     sValor := frmDados.ADO_Mestre.FieldByName('esprecop').asstring;
                          //     sValor :=  Decimal_Is_Point(sValor);
                          //     sql.Add(sValor+',');
                          //   end;
                          //endi
                          //if frmDados.ADO_Mestre.FieldByName('escustobruto').asString <> '' then
                          //   begin
                          //     sValor := frmDados.ADO_Mestre.FieldByName('escustobruto').asstring;
                          //     sValor :=  Decimal_Is_Point(sValor);
                          //     sql.Add(sValor+',');
                          //   end;
                          //endi

                          //5
                          if frmDados.ADO_Mestre.FieldByName('esMargem').asString <> '' then
                             begin
                               sValor := formatfloat('0.00',frmDados.ADO_Mestre.FieldByName('esMargem').asfloat);
                               sValor :=  Decimal_Is_Point(sValor);
                               sql.Add(sValor+',');
                             end;
                          //endi

                          //6
                          //if frmDados.ADO_Mestre.FieldByName('esPrecop').asString <> '' then
                          //   begin
                          //     sValor :=  frmDados.ADO_Mestre.FieldByName('esprecop').asstring;
                          //     sValor :=  Decimal_Is_Point(sValor);
                          //     sql.Add(sValor+',');
                          //   end;
                          //endi
                          if frmDados.ADO_Mestre.FieldByName('esvalorcompra').asString <> '' then
                             begin
                               sValor :=  formatfloat('0.00',frmDados.ADO_Mestre.FieldByName('esvalorcompra').asfloat);
                               sValor :=  Decimal_Is_Point(sValor);
                               sql.Add(sValor+',');
                             end;
                          //endi

                          //7
                          //if frmDados.ADO_Mestre.FieldByName('esdesconto').asString <> '' then
                          //   begin
                          //     sValor :=  frmDados.ADO_Mestre.FieldByName('esdesconto').asstring;
                          //     sValor :=  Decimal_Is_Point(sValor);
                          //     sValor :=  '-' + sValor;
                          //     sql.Add(sValor+',');
                          //   end;
                          //endi

                          //8
                          if frmDados.ADO_Mestre.FieldByName('esquantidade').asString <> '' then
                             begin
                               sValor :=  formatfloat('0.00',frmDados.ADO_Mestre.FieldByName('esquantidade').asfloat);
                               sValor :=  Decimal_Is_Point(sValor);
                               sql.Add(sValor+',');
                             end;
                          //endi

                          //9
                          if frmDados.ADO_Mestre.FieldByName('esreferencia').asString <> '' then
                             sql.Add(quotedstr('R'+frmDados.ADO_Mestre.FieldByName('esreferencia').asString)+',');
                          //endi

                          //10
                          if frmDados.ADO_Mestre.FieldByName('esaplicacao').asString <> '' then
                             sql.Add(quotedstr(frmDados.ADO_Mestre.FieldByName('esaplicacao').asString)+',');
                          //endi

                          //11
                          sql.Add(quotedstr('T')+',');


                          //...
                          sql.Add(inttostr(idescprod));

                          sql.Add(');');
                          ExecSQL;

                          active := false;
                          sql.Clear;
                          sql.Add('select * from dprodutos order by codigo');
                          active := true;

                          while not frmdados.Dbx_Exec.Eof do
                            begin
                              icpro := frmdados.Dbx_Exec.fieldbyname('codigo').asInteger;
                              frmdados.Dbx_Exec.Next;
                            end;
                          //endw
                        end;
                     //endi
                   end
                else
                   begin
                     icpro := frmdados.Dbx_Exec.fieldbyname('codigo').asInteger;
                     with frmdados.dbx_Exec do
                        begin
                          try
                          //active := false;
                          //sql.Clear;
                          //sql.Add('update Produtos p set p.descricao = '+Quotedstr(frmDados.ADO_Mestre.FieldByName('esdescricao').asString)+' Where p.codigo =  '+inttostr(idescprod)+';' );
                          //ExecSQL;

                          active := false;
                          sql.Clear;
                          sValor := frmDados.ADO_Mestre.FieldByName('esPreco').asstring;
                          sValor :=  Decimal_Is_Point(sValor);
                          sql.Add('update dProdutos d set d.prve = '+sValor+' Where (d.codigo =  '+frmDados.ADO_Mestre.FieldByName('escodigo').asString+')');
                          ExecSQL;

                          active := false;
                          sql.Clear;
                          sValor := formatfloat('0.00',frmDados.ADO_Mestre.FieldByName('escustobruto').asfloat);
                          sValor :=  Decimal_Is_Point(sValor);
                          sql.Add('update dProdutos d set d.prcubs = '+sValor+' Where (d.codigo =  '+frmDados.ADO_Mestre.FieldByName('escodigo').asString+') and ( d.prcubs = 0 );');
                          ExecSQL;

                          active := false;
                          sql.Clear;
                          sValor := formatfloat('0.00',frmDados.ADO_Mestre.FieldByName('escustobruto').asfloat);
                          sValor :=  Decimal_Is_Point(sValor);
                          sql.Add('update dProdutos d set d.prcu = '+sValor+' Where (d.codigo =  '+frmDados.ADO_Mestre.FieldByName('escodigo').asString+') and ( d.prcu = 0 );');
                          ExecSQL;


                          except
                             showmessage(sql.Text);

                          end;
                        end;
                     //endw
                   end;
                //endi
                //Fim da Verificação do produto
              end;
            //endth

            frmdados.ADO_Mestre.Next;


          end;
        //endw

end;





end.
