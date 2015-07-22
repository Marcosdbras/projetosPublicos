unit uconsprodutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, Buttons, DB;

type
  Tfrmconsprodutos = class(TForm)
    lbllocalizar: TLabel;
    edilocalizar: TEdit;
    Label4: TLabel;
    CbxOrdPor: TComboBox;
    dbg_produtos: TDBGrid;
    ckbfechar: TCheckBox;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure CbxOrdPorClick(Sender: TObject);
    procedure edilocalizarChange(Sender: TObject);
    procedure entracodigo;
    procedure dbg_produtosKeyPress(Sender: TObject; var Key: Char);
    procedure dbg_produtosDblClick(Sender: TObject);
    procedure edilocalizarKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure CbxOrdPorKeyPress(Sender: TObject; var Key: Char);
    procedure filtro;
    procedure retirarfiltro;


  private
    { Private declarations }
    sOrdem:string;
  public
    { Public declarations }
  end;

var
  frmconsprodutos: Tfrmconsprodutos;

implementation
   uses upesqnf, ugeral, udados;
{$R *.dfm}

procedure Tfrmconsprodutos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  frmdados.cds_produtos.Filtered  := false;

  Action:=caFree;
  frmconsprodutos:=nil;
  form_ativo := '';

end;

procedure Tfrmconsprodutos.FormShow(Sender: TObject);
begin
  edilocalizar.Text := '';
  cbxOrdPor.Items.Clear;
  cbxOrdPor.Items.Add('CÓDIGO');
  cbxOrdPor.Items.Add('DESCRIÇÃO');
  cbxOrdPor.Items.Add('COD. AUX.');
  cbxOrdPor.Items.Add('COD. BAR.');

  cbxOrdPor.ItemIndex := 1;

  sOrdem:='descricao';
  lbllocalizar.Caption := 'DESCRIÇÃO';


end;

procedure Tfrmconsprodutos.CbxOrdPorClick(Sender: TObject);
begin
  CASE cbxOrdPor.ItemIndex OF
    0:begin
        sOrdem :='codigo';
        lbllocalizar.Caption := 'CÓDIGO';
      end;
    1:begin
        sOrdem:='descricao';
        lbllocalizar.Caption := 'DESCRIÇÃO';
      end;
    2:begin
        sOrdem:='caux';
        lbllocalizar.Caption := 'COD. AUX.';
      end;
    3:begin
        sOrdem:='cbar';
        lbllocalizar.Caption := 'COD. BAR.';
      end;
  ELSE
    sOrdem:='';
  END;

  frmdados.cds_produtos.IndexName:=sOrdem;
  edilocalizar.Text := '';

end;

procedure Tfrmconsprodutos.edilocalizarChange(Sender: TObject);
begin
  if sOrdem <> '' then
   if edilocalizar.Text <> '' then
      begin
        frmdados.cds_produtos.Locate(sOrdem,edilocalizar.Text,[loPartialKey,loCaseInsensitive]);
      end;
   //endi
//endi

end;

procedure tfrmconsprodutos.entracodigo;
begin
  frmpesqnf.edicpro.Text := frmdados.cds_produtos.fieldbyname('codigo').asString;

  if ckbfechar.Checked then
     begin
       close;
     end
  else
     begin
       frmpesqnf.ediqtde.Text := '1';
       frmpesqnf.icpro := frmdados.cds_produtos.fieldbyname('codigo').asInteger;
       frmpesqnf.edinpro.Text := frmdados.cds_produtos.fieldbyname('descricao').asString;
       frmpesqnf.ediprve.Text := floattostr( frmdados.cds_produtos.fieldbyname('prve').asfloat );
       frmpesqnf.edisubtotal.Text := floattostr( strtofloat(tirapontos(frmpesqnf.ediqtde.Text)) * strtofloat(tirapontos(frmpesqnf.ediprve.Text)) );
       frmpesqnf.btngravaprod.Click;
     end;
  //endi


end;

procedure Tfrmconsprodutos.dbg_produtosKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
   entracodigo;
//endi
end;

procedure Tfrmconsprodutos.dbg_produtosDblClick(Sender: TObject);
begin
entracodigo;
end;

procedure Tfrmconsprodutos.edilocalizarKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

if cbxordpor.ItemIndex = 0 then
   begin
     If not( key in['0'..'9',#8] ) then
        begin
          beep;
          key:=#0;
        end;
     //endi
   end;
//endi

end;

procedure Tfrmconsprodutos.SpeedButton1Click(Sender: TObject);
begin
  if edilocalizar.Text = '' then
     exit;
  //endi

  frmdados.cds_produtos.Filtered  := false;
  if cbxordpor.ItemIndex > 0 then
     begin
       frmdados.cds_produtos.Filter := sOrdem + ' LIKE '+quotedstr('%'+edilocalizar.Text+'%');
     end
  else
     begin
       frmdados.cds_produtos.Filter := sOrdem + ' = '+quotedstr(edilocalizar.Text);
     end;
  //endi
  frmdados.cds_produtos.Filtered := true;

end;

procedure Tfrmconsprodutos.SpeedButton2Click(Sender: TObject);
begin
  frmdados.cds_produtos.Filtered  := false;
  edilocalizar.Text := '';
end;

procedure Tfrmconsprodutos.CbxOrdPorKeyPress(Sender: TObject;
  var Key: Char);
begin
key := #0;
end;

procedure tfrmconsprodutos.filtro;
begin
  with frmdados do
    begin
      frmdados.cds_produtos.Active := false;
      frmdados.sql_produtos.Active := false;
      frmdados.sql_produtos.SQL.Clear;
      frmdados.sql_produtos.SQL.Add('select * from produtos where descricao like  '+quotedstr('%'+edilocalizar.Text+'%'  ));
      frmdados.sql_produtos.Active := true;
      frmdados.cds_produtos.Active := true;
    end;


end;

procedure tfrmconsprodutos.retirarfiltro;
begin
  with frmdados do
    begin
      frmdados.cds_produtos.Active := false;
      frmdados.sql_produtos.Active := false;
      frmdados.sql_produtos.SQL.Clear;
      frmdados.sql_produtos.SQL.Add('select * from produtos');
      frmdados.sql_produtos.Active := true;
      frmdados.cds_produtos.Active := true;
    end;


end;



end.
