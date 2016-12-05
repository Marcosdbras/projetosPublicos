unit upagto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ComCtrls, Grids, DBGrids;

type
  Tfrmpagto = class(TForm)
    pctcontrole: TPageControl;
    tbsavista: TTabSheet;
    tbsaliquidar: TTabSheet;
    tbsliquidado: TTabSheet;
    Label1: TLabel;
    lblncli: TLabel;
    spdcancelar: TSpeedButton;
    lblccli: TLabel;
    DBGrid1: TDBGrid;
    Label2: TLabel;
    lbltot: TLabel;
    procedure FormShow(Sender: TObject);
    procedure tbsliquidadoShow(Sender: TObject);
    procedure tbsaliquidarShow(Sender: TObject);
    procedure tbsavistaShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmpagto: Tfrmpagto;

implementation
   uses ugeral, udados;
{$R *.dfm}

procedure Tfrmpagto.FormShow(Sender: TObject);
begin
  with frmdados do
    begin

      cds_livrocaixa.Active := false;
      cds_livrocaixacodsvenda.DefaultExpression := cds_sVenda.fieldbyname('codigo').asString;
      cds_livrocaixadescricao.DefaultExpression := QuotedStr('Pagamento à vista');
      cds_livrocaixaccli.DefaultExpression := inttostr(Cds_sVenda.fieldbyname('ccli').asInteger);
      cds_livrocaixadata.DefaultExpression := quotedstr(cds_sVenda.fieldbyname('datacad').asString);
      dbx_livrocaixa.Active := false;
      dbx_livrocaixa.SQL.Clear;
      dbx_livrocaixa.SQL.Add('Select * from livrocaixa where (codsvenda = '+ inttostr( cds_svenda.fieldbyname('codigo').asInteger ) +')'  );
      dbx_livrocaixa.Active := true;
      cds_livrocaixa.Active := true;

      cds_vencto.Active := false;
      cds_venctoehvenda.DefaultExpression := quotedstr('F');
      cds_venctoc_svenda.DefaultExpression := cds_sVenda.fieldbyname('codigo').asString;
      cds_venctodescricao.DefaultExpression := QuotedStr('Parcela Tratamento');
      cds_venctooriginado.DefaultExpression := '4'+frmdados.Cds_sVenda.fieldbyname('tipoop').asString;
      cds_venctoccli.DefaultExpression := inttostr(frmdados.Cds_sVenda.fieldbyname('ccli').asInteger);
      cds_venctoc_tipo_pgto.DefaultExpression := inttostr(frmdados.Cds_Indice.fieldbyname('parcpadrao').asInteger);
      cds_venctocsit.DefaultExpression := inttostr(frmdados.Cds_Indice.fieldbyname('csitr1').asInteger);
      cds_venctodte.DefaultExpression := quotedstr(cds_sVenda.fieldbyname('datacad').asString);
      dbx_vencto.Active := false;
      dbx_vencto.SQL.Clear;
      dbx_vencto.SQL.Add('Select * from Vencimentos where (c_svenda = '+ inttostr( cds_svenda.fieldbyname('codigo').asInteger ) +') and (csit = '+ inttostr(frmdados.Cds_Indice.fieldbyname('csitr1').asInteger)+')'  );
      dbx_vencto.Active := true;
      cds_vencto.Active := true;
      
    end;
  //endth

end;

procedure Tfrmpagto.tbsliquidadoShow(Sender: TObject);
begin

  with frmdados do
    begin

      cds_vencto.Active := false;
      cds_venctoehvenda.DefaultExpression := quotedstr('F');
      cds_venctoc_svenda.DefaultExpression := cds_sVenda.fieldbyname('codigo').asString;
      cds_venctodescricao.DefaultExpression := QuotedStr('Parcela Tratamento');
      cds_venctooriginado.DefaultExpression := '4'+frmdados.Cds_sVenda.fieldbyname('tipoop').asString;
      cds_venctoccli.DefaultExpression := inttostr(frmdados.Cds_sVenda.fieldbyname('ccli').asInteger);
      cds_venctoc_tipo_pgto.DefaultExpression := inttostr(frmdados.Cds_Indice.fieldbyname('parcpadrao').asInteger);
      cds_venctocsit.DefaultExpression := inttostr(frmdados.Cds_Indice.fieldbyname('csitr1').asInteger);
      if cds_sVenda.fieldbyname('datacad').asString <> '' then
         cds_venctodte.DefaultExpression := quotedstr(cds_sVenda.fieldbyname('datacad').asString);
      //endi
      dbx_vencto.Active := false;
      dbx_vencto.SQL.Clear;
      dbx_vencto.SQL.Add('Select * from Vencimentos where (c_svenda = '+ inttostr( cds_svenda.fieldbyname('codigo').asInteger ) +') and (csit = '+ inttostr(frmdados.Cds_Indice.fieldbyname('csitr1').asInteger)+')'  );
      dbx_vencto.Active := true;
      cds_vencto.Active := true;

    end;
  //endth

  tabela := 'Vencimentos';


end;

procedure Tfrmpagto.tbsaliquidarShow(Sender: TObject);
begin
  with frmdados do
    begin

      cds_vencto.Active := false;
      cds_venctoehvenda.DefaultExpression := quotedstr('F');
      cds_venctoc_svenda.DefaultExpression := cds_sVenda.fieldbyname('codigo').asString;
      cds_venctodescricao.DefaultExpression := QuotedStr('Parcela Tratamento');
      cds_venctooriginado.DefaultExpression := '4'+frmdados.Cds_sVenda.fieldbyname('tipoop').asString;
      cds_venctoccli.DefaultExpression := inttostr(frmdados.Cds_sVenda.fieldbyname('ccli').asInteger);
      cds_venctoc_tipo_pgto.DefaultExpression := inttostr(frmdados.Cds_Indice.fieldbyname('parcpadrao').asInteger);
      cds_venctocsit.DefaultExpression := inttostr(frmdados.Cds_Indice.fieldbyname('csitr').asInteger);
      if cds_sVenda.fieldbyname('datacad').asString <> '' then
         cds_venctodte.DefaultExpression := quotedstr(cds_sVenda.fieldbyname('datacad').asString);
      //endi
      dbx_vencto.Active := false;
      dbx_vencto.SQL.Clear;
      dbx_vencto.SQL.Add('Select * from Vencimentos where (c_svenda = '+ inttostr( cds_svenda.fieldbyname('codigo').asInteger ) +') and (csit = '+ inttostr(frmdados.Cds_Indice.fieldbyname('csitr').asInteger)+')'  );
      dbx_vencto.Active := true;
      cds_vencto.Active := true;

    end;
  //endth

  tabela := 'Vencimentos';

end;

procedure Tfrmpagto.tbsavistaShow(Sender: TObject);
begin
  with frmdados do
    begin
      cds_livrocaixa.Active := false;
      cds_livrocaixacodsvenda.DefaultExpression := cds_sVenda.fieldbyname('codigo').asString;
      cds_livrocaixadescricao.DefaultExpression := QuotedStr('Pagamento à vista');
      cds_livrocaixaccli.DefaultExpression := inttostr(Cds_sVenda.fieldbyname('ccli').asInteger);
      cds_livrocaixadata.DefaultExpression := quotedstr(cds_sVenda.fieldbyname('datacad').asString);
      dbx_livrocaixa.Active := false;
      dbx_livrocaixa.SQL.Clear;
      dbx_livrocaixa.SQL.Add('Select * from livrocaixa where (codsvenda = '+ inttostr( cds_svenda.fieldbyname('codigo').asInteger ) +')'  );
      dbx_livrocaixa.Active := true;
      cds_livrocaixa.Active := true;
    end;
  //endth

  tabela := 'livrocaixa';

end;

procedure Tfrmpagto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=caFree;
frmpagto:=nil;
form_ativo := '';

end;

end.
