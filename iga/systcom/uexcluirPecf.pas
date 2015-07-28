unit uexcluirPecf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, Grids, DBGrids, StdCtrls, Mask, DBCtrls, SqlExpr,
  Db;

type
  TfrmExcluirPecf = class(TForm)
    sPdGravar: TSpeedButton;
    spdcancelar2310: TSpeedButton;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    lblnpro: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    lblqtde: TLabel;
    lblprve: TLabel;
    lblsubtotal: TLabel;
    procedure spdcancelar2310Click(Sender: TObject);
    procedure sPdGravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure mostrar;
  private
    { Private declarations }
    sItemEcf:String;
  public
    { Public declarations }
  end;

var
  frmExcluirPecf: TfrmExcluirPecf;

implementation

uses uGeral, uDados, uMp20i, ufrenteecf;

{$R *.dfm}

procedure TfrmExcluirPecf.spdcancelar2310Click(Sender: TObject);
begin
  close;
end;

procedure TfrmExcluirPecf.sPdGravarClick(Sender: TObject);
var
  bStatusok:boolean;
  sItemEcf:string;
  smensagem:string;


begin

  bStatusok := false;


  case itipoimpf of
       0:begin
           // Nenhuma
           bStatusok := true;
           if ( frmdados.Cds_Indice.FieldByName('impconcomitante').asString = 'T' ) then
              begin
              end;
           //endi
         end;
       1:begin
           //SWEDA
           iResposta:=ECF_CancelaItemGenerico(sItemEcf);
           if ( VerificaRetornoFuncaoImpressora_sweda( iResposta ) ) then
               begin
                 bStatusok := true;
               end;
           //endi
         end;
       2:begin
          //BEMATECH

         end;
       3:begin
         // DATAREGIS

         end;

       else exit;

   end;


   if bStatusok then
      begin


        frmdados.Cds_Vendab.Delete;
        if frmdados.Cds_Vendab.RecordCount = 0 then
           begin
             frmfrenteecf.desativabotoes;
             frmfrenteecf.spdincluir231.Enabled := true;
             frmfrenteecf.cbxnomefun.Enabled := true;
           end;
        //endi

        if frmdados.Cds_Vendab.RecordCount = 0 then
           begin
             //spdcancelar2310.Click;
             frmfrenteecf.cancelapedido;
           end;
        //endi
        frmfrenteecf.totais;
    end;
  //endi

  close;
end;

procedure TfrmExcluirPecf.FormShow(Sender: TObject);
begin
mostrar;
end;

procedure TfrmExcluirPecf.SpeedButton1Click(Sender: TObject);
begin
frmdados.Cds_Vendab.Prior;
mostrar;


end;

procedure TfrmExcluirPecf.SpeedButton2Click(Sender: TObject);
begin
frmdados.Cds_Vendab.Next;
mostrar;

end;

procedure tfrmExcluirPecf.mostrar;
begin
  lblnpro.Caption := frmdados.Cds_Vendab.fieldbyname('npro').asString;
  lblqtde.Caption := formatfloat('###,###,##0.00',frmdados.Cds_Vendab.fieldbyname('qtde').asfloat);
  lblprve.Caption := formatfloat('###,###,##0.00',frmdados.Cds_Vendab.fieldbyname('prve').asfloat);
  lblsubtotal.Caption := formatfloat('###,###,##0.00',frmdados.Cds_Vendab.fieldbyname('subtotal').asfloat);
  sItemEcf :=  frmdados.Cds_Vendab.fieldbyname('itemecf').asString;


end;

end.
