unit uacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls;

type
  Tfrmacao = class(TForm)
    btnacao: TButton;
    btnCancelar: TButton;
    Label15: TLabel;
    cbxnomemod: TDBLookupComboBox;
    Label16: TLabel;
    ediqtdeM: TEdit;
    Label17: TLabel;
    cbxdescricao: TDBLookupComboBox;
    Label18: TLabel;
    cbxdente: TDBLookupComboBox;
    Label21: TLabel;
    ediprveM: TEdit;
    Label22: TLabel;
    edisubtotalM: TEdit;
    Label19: TLabel;
    cbxnomefun: TDBLookupComboBox;
    ckbtratar: TCheckBox;
    procedure btnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnacaoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmacao: Tfrmacao;

implementation
   uses ugeral, udados, utradental;
{$R *.dfm}

procedure Tfrmacao.btnCancelarClick(Sender: TObject);
begin
close;
end;

procedure Tfrmacao.FormShow(Sender: TObject);
begin
  ediqtdem.Text := '1';
  ediprvem.Text := '0,00';
  edisubtotalm.Text := '0,00';

  btnacao.Caption := '&Inserir';

  with frmdados do
    begin

      cbxNomeMod.ListSource := dts_Modulo;   //  vai ler no
      cbxNomeMod.Keyfield   := 'codigo'; // o campo
      cbxNomeMod.DataSource := dts_Temp;  // vai gravar no
      cbxNomeMod.DataField  :='cod4';  // no campo
      cbxNomeMod.ListField  :='descricao';    // vai exibir o campo

      cbxdescricao.ListSource := dts_cmobra;   //  vai ler no
      cbxdescricao.Keyfield   := 'codigo'; // o campo
      cbxdescricao.DataSource := dts_Temp;  // vai gravar no
      cbxdescricao.DataField  :='cod5';  // no campo
      cbxdescricao.ListField  :='descr';    // vai exibir o campo

      cbxdente.ListSource := dts_mat_restaurar;   //  vai ler no
      cbxdente.Keyfield   := 'codigo'; // o campo
      cbxdente.DataSource := dts_Temp;  // vai gravar no
      cbxdente.DataField  :='cod6';  // no campo
      cbxdente.ListField  :='ID';    // vai exibir o campo

      cbxnomefun.ListSource := dst_funcionarios;   //  vai ler no
      cbxnomefun.Keyfield   := 'codigo'; // o campo
      cbxnomefun.DataSource := dts_Temp;  // vai gravar no
      cbxnomefun.DataField  :='cod7';  // no campo
      cbxnomefun.ListField  :='nome';    // vai exibir o campo


      //tabela := 'Temp';


      //cds_temp.Edit;
      //cds_temp.FieldByName('cod6').asInteger := cds_mat_restaurar.fieldbyname('codigo').asInteger;


      tabela := 'dMobra';



    end;
  //endth

end;

procedure Tfrmacao.btnacaoClick(Sender: TObject);
var
  sprveM, sQtdeM, sSubtotalM, sSubtotalcM, sEouS, sPrcuM, sData, sPcomM, sVcomM, sCfunM, scmodM,
  sCnproM, sCmatrepM:string;
  icodigo, itotreg:integer;
  svalsobra:string;
begin
  //if cbxdescricao.Text = '' then
  //   exit;
  //endi

  tabela := 'DMOBRA';

  sData := datetostr(date);
  sPrveM := tirapontos(trim(ediprveM.Text));
  sQtdeM := tirapontos(trim(ediqtdeM.Text));
  sSubtotalM := tirapontos(trim(edisubtotalM.Text));

  sCmodM := frmdados.Cds_temp.fieldbyname('cod4').asString;
  sCnproM := frmdados.Cds_temp.fieldbyname('cod5').asString;
  sCmatrepM := frmdados.Cds_temp.fieldbyname('cod6').asString;
  sCfunM := frmdados.Cds_temp.fieldbyname('cod7').asString;

  //if frmtradental.dbgmat_rest.Focused then
  //   begin
       //Inserir

       with frmdados do
         begin

           dbx_Exec.Active := false;
           dbx_Exec.SQL.Clear;
           dbx_Exec.SQL.Add('Insert into dmobra(');

           if sCnproM <> '' then
              dbx_Exec.SQL.Add('cdesc, ');
           //endi

           if cbxdescricao.Text <> '' then
              dbx_Exec.SQL.Add('ndesc, ');
           //endi

           if sQtdeM <> '' then
              dbx_Exec.SQL.Add('qtde, ');
           //endi

           if sPrveM <> '' then
              dbx_Exec.SQL.Add('valor, ');
           //endi

           if sSubtotalM <> '' then
              dbx_Exec.SQL.Add('subtotal, ');
           //endi

           if sPcomM <> '' then
              dbx_Exec.SQL.Add('pcom, ');
           //endi

           if sVcomM <> '' then
              dbx_Exec.SQL.Add('vcom, ');
           //endi

           if sCfunM <> '' then
              dbx_Exec.SQL.Add('cfun, ');
           //endi

           if sCmodM <> '' then
              dbx_Exec.SQL.Add('cmod, ');
           //endi

           if sCmatrepM <> '' then
              dbx_Exec.SQL.Add('codmat_restaurar, ');
           //endi

           dbx_Exec.SQL.Add('codsvenda');

           dbx_Exec.SQL.Add(')');

           dbx_Exec.SQL.Add(' values (');

           if sCnproM <> '' then
              dbx_Exec.SQL.Add(sCnproM+',');
           //endi

           if cbxdescricao.Text <> '' then
              dbx_Exec.SQL.Add(quotedstr(cbxdescricao.Text)+',');
           //endi

           if sQtdeM <> '' then
              dbx_Exec.SQL.Add(decimal_is_pointf(sQtdeM)+',');
           //endi

           if sPrveM <> '' then
              dbx_Exec.SQL.Add(decimal_is_point(sPrveM)+',');
           //endi

           if sSubtotalM <> '' then
              dbx_Exec.SQL.Add(decimal_is_point(sSubtotalM)+',');
            //endi

           if sPcomM <> '' then
              dbx_Exec.SQL.Add(decimal_is_point(sPcomM)+',');
           //endi

           if sVcomM <> '' then
              dbx_Exec.SQL.Add(decimal_is_point(sVcomM)+',');
           //endi

           if sCfunM <> '' then
              dbx_Exec.SQL.Add(decimal_is_point(sCfunM)+',');
           //endi

           if sCmodM <> '' then
              dbx_Exec.SQL.Add(decimal_is_point(sCmodM)+',');
           //endi

           if sCmatrepM <> ''then
              dbx_Exec.SQL.Add(sCmatrepM+',');
           //endi

           dbx_Exec.SQL.Add(frmdados.Cds_sVenda.fieldbyname('codigo').asString);

           dbx_Exec.SQL.Add(')');

           dbx_Exec.ExecSQL;

           cds_dmobra.Refresh;


         end;
       //endth


  //   end
  //else
  //   begin
       //Alterar'
  //   end;
  //endi

  close;

end;

procedure Tfrmacao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=caFree;
frmacao:=nil;
form_ativo := '';

end;

end.
