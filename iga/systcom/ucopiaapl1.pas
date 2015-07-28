unit ucopiaapl1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ExtCtrls, ComCtrls, StdCtrls;

type
  Tfrmcopiaapl1 = class(TForm)
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
  frmcopiaapl1: Tfrmcopiaapl1;

implementation
  uses ugeral, udados, uprincipal;
{$R *.dfm}

procedure Tfrmcopiaapl1.SpeedButton1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmcopiaapl1.spdconfirmaClick(Sender: TObject);
var
  sValor:string;
begin

if application.MessageBox('Deseja Realmente Copiar Dados?','Atenção',mb_YesNo + mb_DefButton2) = idNo then
   exit;
//endi



lblmensagem.Visible := true;
lblmensagem2.Visible := true;

antmove.Visible := true;
antmove.Active := true;
frmcopiaapl1.Update;


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

with frmdados do
  begin


        ADO_Mestre.active := false;
        ADO_Mestre.sql.Clear;
        ADO_Mestre.sql.Add('select * from tabestoque');
        ADO_Mestre.active := true;



        Dbx_Dbf.active := false;
        Dbx_Dbf.Sql.Clear;
        Dbx_Dbf.sql.Add('Delete from '+quotedstr(Cds_Indice.fieldbyName('caminhodbf_1').asString+'\estoque.dbf'));
        Dbx_Dbf.ExecSQL; 


        Dbx_Dbf.active := false;
        Dbx_Dbf.Sql.Clear;
        Dbx_Dbf.sql.Add('Select * from '+quotedstr(frmdados.Cds_Indice.fieldbyName('caminhodbf_1').asString+'\estoque.dbf'));
        Dbx_Dbf.active := true;




  end;
//endi










    try
     frmdados.ADO_Mestre.First;
    while not  frmdados.ADO_Mestre.Eof do
      begin
             frmdados.Dbx_Dbf.Append;
             frmdados.Dbx_Dbf.FieldByName('codigo').asString            := frmdados.ADO_Mestre.FieldByName('escodigo').asString;
             frmdados.Dbx_Dbf.FieldByName('descricao').asString         := frmdados.ADO_Mestre.FieldByName('esdescricao').asString;
             frmdados.Dbx_Dbf.FieldByName('qtd_atual').asfloat         := frmdados.ADO_Mestre.FieldByName('esquantidade').asfloat;
             frmdados.Dbx_Dbf.FieldByName('obs').asString               := '';
             frmdados.Dbx_Dbf.FieldByName('custocompr').asfloat        := frmdados.ADO_Mestre.FieldByName('escustobruto').asfloat;
             frmdados.Dbx_Dbf.FieldByName('margemlb').asfloat          := 0;
             frmdados.Dbx_Dbf.FieldByName('preco').asfloat             := frmdados.ADO_Mestre.FieldByName('espreco').asfloat;
             frmdados.Dbx_Dbf.FieldByName('ativo').asboolean        := false;
             frmdados.Dbx_Dbf.Post;



         frmdados.ADO_Mestre.Next;
      end;

    except
      showmessage(frmdados.Ado_Exec.sql.text);
    end;





























close;


lblmensagem.Visible := false;
lblmensagem2.Visible := false;
antmove.Visible := false;
antmove.Active  := false;



                  //tabNova.Append;
                  //tabNova.FieldByName('codigo').asString            := tabAntiga.FieldByName('codprod').asString;
                  //tabNova.FieldByName('descricao').asString         := tabAntiga.FieldByName('descprod').asString;
                  //tabNova.FieldByName('qtd_atual').asString         := tabAntiga.FieldByName('qtdatual').asString;
                  //tabNova.FieldByName('obs').asString               := 'Fabricante:'+tabAntiga.FieldByName('fabricante').asString;
                  //tabNova.FieldByName('custocompr').asString        := tabAntiga.FieldByName('custo').asString;
                  //tabNova.FieldByName('margemlb').asString          := tabAntiga.FieldByName('markup').asString;
                  //tabNova.FieldByName('preco').asString             := tabAntiga.FieldByName('prcvenda').asString;
                  //tabNova.FieldByName('ativo').asboolean        := false;


                  //tabNova.FieldByName('nome').asString              := tabAntiga.FieldByName('').asString;
                  //tabNova.FieldByName('referencia').asString        := tabAntiga.FieldByName('').asString;
                  //tabNova.FieldByName('fornecedor').asString        := tabAntiga.FieldByName('').asString;
                  //tabNova.FieldByName('fornec_pre').asString        := tabAntiga.FieldByName('').asString;
                  //tabNova.FieldByName('medida').asString            := tabAntiga.FieldByName('').asString;
                  //tabNova.FieldByName('indexador').asString         := tabAntiga.FieldByName('').asString;
                  //tabNova.FieldByName('customedio').asString        := tabAntiga.FieldByName('').asString;
                  //tabNova.FieldByName('qtd_compra').asString        := tabAntiga.FieldByName('').asString;
                  //tabNova.FieldByName('qtd_minim').asString         := tabAntiga.FieldByName('').asString;
                  //tabNova.FieldByName('qtd_inicio').asString        := tabAntiga.FieldByName('').asString;
                  //tabNova.FieldByName('dat_inicio').asString        := tabAntiga.FieldByName('').asString;
                  //tabNova.FieldByName('ult_compra').asString        := tabAntiga.FieldByName('').asString;
                  //tabNova.FieldByName('ult_venda').asString         := tabAntiga.FieldByName('').asString;
                  //tabNova.FieldByName('peso').asString              := tabAntiga.FieldByName('').asString;
                  //tabNova.FieldByName('cf').asString                := tabAntiga.FieldByName('').asString;
                  //tabNova.FieldByName('ipi').asString               := tabAntiga.FieldByName('').asString;
                  //tabNova.FieldByName('cst').asString               := tabAntiga.FieldByName('').asString;
                  //tabNova.FieldByName('st').asString                := tabAntiga.FieldByName('').asString;
                  //tabNova.FieldByName('comissao').asString          := tabAntiga.FieldByName('').asString;
                  //tabNova.FieldByName('adicional1').asString        := tabAntiga.FieldByName('').asString;
                  //tabNova.FieldByName('adicional2').asString        := tabAntiga.FieldByName('').asString;
                  //tabNova.FieldByName('qtd_vend').asString          := tabAntiga.FieldByName('').asString;
                  //tabNova.FieldByName('cus_vend').asString          := tabAntiga.FieldByName('').asString;
                  //tabNova.FieldByName('val_vend').asString          := tabAntiga.FieldByName('').asString;
                  //tabNova.FieldByName('luc_vend').asString          := tabAntiga.FieldByName('').asString;
                  //tabNova.FieldByName('ativo').asString             := tabAntiga.FieldByName('').asString;
                  //tabNova.FieldByName('alterado').asString          := tabAntiga.FieldByName('').asString;
                  //tabNova.FieldByName('serie').asString             := tabAntiga.FieldByName('').asString;
                  //tabNova.FieldByName('servico').asString           := tabAntiga.FieldByName('').asString;
                  //tabnova.post;




end;

procedure Tfrmcopiaapl1.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  vardir:string;
begin

frmdados.ADO_Conexao.Connected := false;



  vardir := ExtractFilePath(Application.ExeName);

  frmPrincipal.pnlcentral.Visible := true;
  Action:=caFree;
  frmCopiaApl1:=nil;
  form_ativo := '';
end;

procedure Tfrmcopiaapl1.FormShow(Sender: TObject);
begin
   lblmensagem.Visible := false;
   lblmensagem2.Visible := false;
   antmove.Visible := false;

end;

end.
