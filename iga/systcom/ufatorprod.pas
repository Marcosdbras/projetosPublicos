unit ufatorprod;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, EditNum, Grids, DBGrids, Db;

type
  Tfrmfatorprod = class(TForm)
    btnok: TButton;
    btncancelar: TButton;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    dbgtipo_embalagem: TDBGrid;
    dbgmatprima: TDBGrid;
    Label3: TLabel;
    Label4: TLabel;
    lbltotalfg: TLabel;
    dbgcomposicaoemb: TDBGrid;
    Label5: TLabel;
    Label6: TLabel;
    lblcomposicaoemb: TLabel;
    Label7: TLabel;
    lbltotalemb: TLabel;
    Label8: TLabel;
    lblcustomatprima: TLabel;
    edimateria: TEdit;
    Label9: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btncancelarClick(Sender: TObject);
    procedure btnokClick(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure dbgmodel1SelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure dbgmodel1KeyPress(Sender: TObject; var Key: Char);
    procedure dbgtipo_embalagemEnter(Sender: TObject);
    procedure dbgtipo_embalagemKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure dbgmatprimaEnter(Sender: TObject);

    procedure dbgmatprimaKeyPress(Sender: TObject; var Key: Char);
    procedure dbgcomposicaoembEnter(Sender: TObject);
    procedure dbgcomposicaoembKeyPress(Sender: TObject; var Key: Char);
    procedure edimateriaKeyPress(Sender: TObject; var Key: Char);

  private
    { Private declarations }
    icol, irow:integer;
  public
    { Public declarations }
    procedure calc_customatprima;

  end;

var
  frmfatorprod: Tfrmfatorprod;

implementation
    uses ugeral, udados, upesqvprod;
{$R *.dfm}

procedure Tfrmfatorprod.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
  frmfatorprod:=nil;
  frmpesqvprod.ediprcubs.SetFocus;

end;

procedure Tfrmfatorprod.btncancelarClick(Sender: TObject);
begin

close;
end;

procedure Tfrmfatorprod.btnokClick(Sender: TObject);
begin
  with frmdados do
    begin
      cds_vprodutos.Edit;
      cds_vprodutos.FieldByName('prcubs').asfloat := (cds_vprodutos.FieldByName('fator1').asfloat * cds_vprodutos.FieldByName('fator2').asfloat)  +  StrToFloat(tirapontos( lbltotalemb.Caption  )) + StrToFloat(tirapontos( lblcustomatprima.Caption  )) + frmDados.cds_tipo_embalagem.fieldbyname('DESPESAS').AsFloat  ;


    end;
  //endif

  close;
  
end;

procedure Tfrmfatorprod.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
     begin
       SelectNext(ActiveControl,True,True);
     end;
  //endi

end;

procedure Tfrmfatorprod.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
     begin
       SelectNext(ActiveControl,True,True);
     end;
  //endi

end;

procedure Tfrmfatorprod.FormCreate(Sender: TObject);
begin


{
edimodel1.Clear;



with dbgmodel1 do
  begin

    width := 255;

    colcount := 2;
    rowcount := 12;

    colwidths[0] := 200;
    colwidths[1] := 50;

    cells[0,0] := 'Descrição';
    cells[1,0] := 'Valor';




  end;
}
end;

procedure Tfrmfatorprod.dbgmodel1SelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
  icol := acol;
  irow := arow;

end;

procedure Tfrmfatorprod.dbgmodel1KeyPress(Sender: TObject; var Key: Char);
begin
  if icol = 1 then
     begin

     If not( key in['0'..'9'] ) then
        key := #0;



     end;

end;

procedure Tfrmfatorprod.dbgtipo_embalagemEnter(Sender: TObject);
begin
tabela := 'Tipo_embalagem';
end;

procedure Tfrmfatorprod.dbgtipo_embalagemKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
   if frmdados.cds_tipo_embalagem.State in [dsinsert, dsedit] then
      frmdados.cds_tipo_embalagem.Post;
end;

procedure Tfrmfatorprod.FormShow(Sender: TObject);
var
  total:real;
begin

  edimateria.Text := '';

  with frmdados do
    begin

      Cds_Tipo_embalagem.Active := false;
      with Dbx_Tipo_embalagem do
        begin
          Active := false;
          SQL.Clear;
          SQL.Add('Select * from Tipo_embalagem');
          Active := true;
        end;
      //endth
      Cds_Tipo_embalagem.Active := true;


      Cds_composicao_prod.Active := false;
      with dbx_composicao_prod do
        begin
          Active := false;
          SQL.Clear;
          SQL.Add('Select * from composicao_prod');
          Active := true;
        end;
      //endth
      Cds_composicao_prod.Active := true;
      
      Cds_Tipo_embalagem.Last;

      total := totaliza_formula_geral('');
      lbltotalfg.Caption := formatfloat('###,###,##0.00',total);

      total := totaliza_embalagem('where ctipo_emb = '+cds_tipo_embalagem.fieldbyname('codigo').asstring );
      lbltotalemb.Caption := formatfloat('###,###,##0.00',total);

      Cds_Tipo_embalagem.First;
    end;

    //calc_customatprima;

end;

procedure Tfrmfatorprod.dbgmatprimaEnter(Sender: TObject);
begin
tabela := 'Composicao_prod';
end;

procedure tfrmfatorprod.calc_customatprima;
begin

  with frmDados do
    begin
      
      cds_tipo_embalagem.First;
      while not cds_tipo_embalagem.Eof do
        begin


          cds_tipo_embalagem.Next;

        end;


    end;

end;

procedure Tfrmfatorprod.dbgmatprimaKeyPress(Sender: TObject; var Key: Char);
var
    codigo:Integer;
begin
if key = #13 then
   if frmdados.cds_composicao_prod.State in [dsinsert, dsedit] then
      begin

        frmdados.cds_composicao_prod.Post;

        codigo := frmDados.cds_tipo_embalagem.fieldbyname('codigo').AsInteger;
        frmDados.cds_tipo_embalagem.Next;
        frmDados.cds_tipo_embalagem.Locate('codigo',codigo,[]);


      end;


end;



procedure Tfrmfatorprod.dbgcomposicaoembEnter(Sender: TObject);
begin
tabela := 'Comp_embalagem';
end;

procedure Tfrmfatorprod.dbgcomposicaoembKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
   if frmdados.cds_comp_embalagem.State in [dsinsert, dsedit] then
      frmdados.cds_comp_embalagem.Post;

end;

procedure Tfrmfatorprod.edimateriaKeyPress(Sender: TObject; var Key: Char);
var
  total:Real;
begin
if key = #13 then
   begin

     with frmDados do
     begin
        Cds_composicao_prod.Active := false;
        with dbx_composicao_prod do
          begin
            Active := false;
            SQL.Clear;
            if edimateria.Text <> '' then
               begin
                 SQL.Add('Select * from composicao_prod where descricao like '+ QuotedStr(  '%'+edimateria.Text +'%'));
                 total := totaliza_formula_geral('where descricao like '+ QuotedStr(  '%'+edimateria.Text +'%'));
               end
            else
               begin
                 SQL.Add('Select * from composicao_prod');
                 total := totaliza_formula_geral( '' );
               end;

            Active := true;
          end;
        //endth
        Cds_composicao_prod.Active := true;


        lbltotalfg.Caption := formatfloat('###,###,##0.00',total);


     end;



   end;


end;

end.
