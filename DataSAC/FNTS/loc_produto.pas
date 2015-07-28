unit loc_produto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Grids,
  Wwdbigrd, Wwdbgrid, ExtCtrls, Collection, StdCtrls, Buttons,
  TFlatPanelUnit, Menus, jpeg, AdvGlowButton;

type
  Tfrmloc_produto = class(TForm)
    FlatPanel1: TFlatPanel;
    Label1: TLabel;
    Edit1: TEdit;
    bfiltro: TBitBtn;
    ViewSplit1: TViewSplit;
    wwDBGrid1: TwwDBGrid;
    dsproduto: TDataSource;
    qrproduto: TZQuery;
    qrprodutoCODIGO: TStringField;
    qrprodutoPRODUTO: TStringField;
    qrprodutoUNIDADE: TStringField;
    qrprodutoPRECOVENDA: TFloatField;
    qrprodutoESTOQUE: TFloatField;
    PopupMenu1: TPopupMenu;
    Fechar1: TMenuItem;
    qrprodutoCODBARRA: TStringField;
    Image1: TImage;
    BFECHAR: TBitBtn;
    Estoque1: TMenuItem;
    ZQuery1: TZQuery;
    FlatPanel2: TFlatPanel;
    Bevel1: TBevel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Label2: TLabel;
    Inicio1: TMenuItem;
    Parte1: TMenuItem;
    AdvGlowButton2: TAdvGlowButton;
    procedure BFECHARClick(Sender: TObject);
    procedure bfiltroClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure wwDBGrid1Enter(Sender: TObject);
    procedure wwDBGrid1Exit(Sender: TObject);
    procedure wwDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Inicio1Click(Sender: TObject);
    procedure Parte1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmloc_produto: Tfrmloc_produto;

implementation

uses modulo, principal;

{$R *.dfm}

procedure Tfrmloc_produto.BFECHARClick(Sender: TObject);
begin
  IF BFECHAR.CAPTION = 'Fechar' then
  begin
     codigo := '';
     close;
  end;
  if BFECHAR.Caption = 'Voltar' then edit1.setfocus;
end;

procedure Tfrmloc_produto.bfiltroClick(Sender: TObject);
begin
    qrproduto.close;
    qrproduto.sql.clear;
    qrproduto.sql.add('select * from c000025 ');

    if radiobutton1.checked then
      qrproduto.sql.add('where   upper(produto) like '''+edit1.text+'%'' order by produto')
    else
      qrproduto.sql.add('where   upper(produto) like ''%'+edit1.text+'%'' order by produto');
    qrproduto.open;
    IF QRPRODUTO.RECORDCOUNT > 0 THEN WWDBGRID1.SETFOCUS ELSE EDIT1.SETFOCUS;
end;

procedure Tfrmloc_produto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmloc_produto.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then bfiltro.setfocus;
end;

procedure Tfrmloc_produto.FormShow(Sender: TObject);
begin
        bfiltroClick(frmloc_produto);
end;

procedure Tfrmloc_produto.Fechar1Click(Sender: TObject);
begin
  IF BFECHAR.CAPTION = 'Fechar' then
  begin
     codigo := '';
     close;
  end;

  if BFECHAR.Caption = 'Voltar' then edit1.setfocus;
end;

procedure Tfrmloc_produto.Edit1Enter(Sender: TObject);
begin
  bfechar.Caption := 'Fechar';
  tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmloc_produto.wwDBGrid1Enter(Sender: TObject);
begin
  bfechar.Caption := 'Voltar';
end;

procedure Tfrmloc_produto.wwDBGrid1Exit(Sender: TObject);
begin
  bfechar.Caption := 'Fechar';
end;

procedure Tfrmloc_produto.wwDBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    codigo := qrproduto.fieldbyname('codbarra').asstring;
    close;
  end;
end;

procedure Tfrmloc_produto.wwDBGrid1DblClick(Sender: TObject);
begin
    codigo := qrproduto.fieldbyname('codbarra').asstring;
    close;
end;

procedure Tfrmloc_produto.Edit1Exit(Sender: TObject);
begin
  TEDIT(SENDER).COLOR := CLWINDOW;
end;

procedure Tfrmloc_produto.Inicio1Click(Sender: TObject);
begin
  radiobutton1.checked := true;
  edit1.setfocus;
end;

procedure Tfrmloc_produto.Parte1Click(Sender: TObject);
begin
  radiobutton2.checked := true;
  edit1.setfocus;
end;

end.
