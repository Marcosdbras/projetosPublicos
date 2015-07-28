unit xloc_cliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, wwdbedit, Wwdotdot, Wwdbcomb, ExtCtrls,
  Collection, TFlatPanelUnit, Menus, Grids, Wwdbigrd, Wwdbgrid, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Buttons, RzEdit,
  RzDBEdit, AdvGlowButton, MemDS, DBAccess, IBC;

type
  Tfrmxloc_cliente = class(TForm)
    FlatPanel1: TFlatPanel;
    combo_localizar: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    combo_referencia: TComboBox;
    Bevel1: TBevel;
    Label4: TLabel;
    Label5: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    loc: TEdit;
    PopupMenu1: TPopupMenu;
    Localizarpor1: TMenuItem;
    Referncia1: TMenuItem;
    ParmetrosdaPesquisa1: TMenuItem;
    GRID: TwwDBGrid;
    ds: TDataSource;
    Bevel2: TBevel;
    Label7: TLabel;
    lvoltar: TLabel;
    N1: TMenuItem;
    Fechar1: TMenuItem;
    N2: TMenuItem;
    Panel1: TPanel;
    Bevel3: TBevel;
    Label8: TLabel;
    RzDBNumericEdit1: TRzDBNumericEdit;
    Label9: TLabel;
    RzDBEdit1: TRzDBEdit;
    RzDBEdit2: TRzDBEdit;
    Bevel4: TBevel;
    Bevel5: TBevel;
    query: TIBCQuery;
    procedure Localizarpor1Click(Sender: TObject);
    procedure Referncia1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Fechar1Click(Sender: TObject);
    procedure locKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GRIDKeyPress(Sender: TObject; var Key: Char);
    procedure locKeyPress(Sender: TObject; var Key: Char);
    procedure locEnter(Sender: TObject);
    procedure locExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure GRIDEnter(Sender: TObject);
    procedure GRIDExit(Sender: TObject);
    procedure GRIDDblClick(Sender: TObject);
    procedure ParmetrosdaPesquisa1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmxloc_cliente: Tfrmxloc_cliente;
  voltar : boolean;

implementation

uses modulo, contasreceber;

{$R *.dfm}

procedure Tfrmxloc_cliente.Localizarpor1Click(Sender: TObject);
VAR X : INTEGER;
begin
  X := combo_localizar.Items.Count - 1;
  if combo_localizar.ItemIndex = x then
     combo_localizar.ItemIndex := 0
  else
     combo_localizar.ItemIndex := combo_localizar.ItemIndex + 1
end;

procedure Tfrmxloc_cliente.Referncia1Click(Sender: TObject);
VAR X : INTEGER;
begin
  X := combo_referencia.Items.Count - 1;
  if combo_referencia.ItemIndex = x then
     combo_referencia.ItemIndex := 0
  else
     combo_referencia.ItemIndex := combo_referencia.ItemIndex + 1

end;

procedure Tfrmxloc_cliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  parametro_pesquisa := '';
  ACTION := CAFREE;
end;

procedure Tfrmxloc_cliente.Fechar1Click(Sender: TObject);
begin
  if voltar then loc.setfocus else
  begin
    resultado_pesquisa1 := '';
    resultado_pesquisa2 := '';
    close;
  end;
end;

procedure Tfrmxloc_cliente.locKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_down then
  begin
    grid.setfocus;
  end;
end;

procedure Tfrmxloc_cliente.GRIDKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    if query.RecNo > 0 then
    begin
      resultado_pesquisa1 := query.fieldbyname('codigo').asstring;
      resultado_pesquisa2 := query.fieldbyname('nome').asstring;
      resultado_pesquisa3 := query.fieldbyname('endereco').asstring+'  '+query.fieldbyname('bairro').asstring;
      resultado_pesquisa4 := query.fieldbyname('cidade').asstring;
      resultado_pesquisa5 := query.fieldbyname('uf').asstring;
      resultado_pesquisa6 := query.fieldbyname('cpf').asstring;
      resultado_pesquisa7 := query.fieldbyname('codconvenio').asstring;
      resultado_pesquisa8 := query.fieldbyname('codREGIAO').asstring;
      close;
    end;
  end;
end;

procedure Tfrmxloc_cliente.locKeyPress(Sender: TObject; var Key: Char);
var ref, tipo : string;
begin
  if key = #13 then
  begin
    if combo_referencia.ItemIndex = 0 then ref := '' else ref := '%';
    case combo_localizar.ItemIndex  OF
    0:TIPO := 'NOME';
    1:TIPO := 'CODIGO';
    2:TIPO := 'CPF';
    3:TIPO := 'RG';
    end;

    try
      query.close;
      query.sql.clear;
      if loc.text = '' then
        query.sql.Add('select * from c000007 where codigo = ''xxxxxx''')
      else
        query.sql.Add('select * from c000007 where upper('+tipo+') like '''+ref+loc.Text+'%'' order by '+tipo);
      query.open;
    except
    end;

    if query.RecNo > 0 then
    begin
       grid.setfocus;
    end
    else
    begin
      application.messagebox('Cliente não encontrado!','Atenção',mb_ok+MB_ICONERROR);
    end;
  end;


end;

procedure Tfrmxloc_cliente.locEnter(Sender: TObject);
begin
  tedit(sender).color := $00A0FAF8;
  voltar := false;
end;

procedure Tfrmxloc_cliente.locExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
end;

procedure Tfrmxloc_cliente.FormShow(Sender: TObject);
begin
  voltar := false;


  query.Close;
  query.SQL.clear;
  if parametro_pesquisa <> '' then
    query.SQL.Add(parametro_pesquisa)
  else
    query.SQL.Add('select * from c000007 where codigo = ''XXXXXX''');

  query.open;


  if parametro_pesquisa <> '' then GRID.SetFocus;

end;

procedure Tfrmxloc_cliente.GRIDEnter(Sender: TObject);
begin
  voltar := true;
  lvoltar.Caption := 'VOLTAR';
end;

procedure Tfrmxloc_cliente.GRIDExit(Sender: TObject);
begin
  lvoltar.Caption := 'FECHAR';
  VOLTAR := FALSE;
end;

procedure Tfrmxloc_cliente.GRIDDblClick(Sender: TObject);
begin
      resultado_pesquisa1 := query.fieldbyname('codigo').asstring;
      resultado_pesquisa2 := query.fieldbyname('nome').asstring;
      resultado_pesquisa3 := query.fieldbyname('endereco').asstring+'  '+query.fieldbyname('bairro').asstring;
      resultado_pesquisa4 := query.fieldbyname('cidade').asstring;
      resultado_pesquisa5 := query.fieldbyname('uf').asstring;
      resultado_pesquisa6 := query.fieldbyname('cpf').asstring;
//      resultado_pesquisa6 := query.fieldbyname('rg').asstring;
      resultado_pesquisa7 := query.fieldbyname('codconvenio').asstring;
      resultado_pesquisa8 := query.fieldbyname('codREGIAO').asstring;



      close;

end;

procedure Tfrmxloc_cliente.ParmetrosdaPesquisa1Click(Sender: TObject);
begin
  LOC.SETFOCUS;
end;

end.
