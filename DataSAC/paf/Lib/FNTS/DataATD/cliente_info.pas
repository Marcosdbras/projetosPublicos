unit cliente_info;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, StdCtrls,
  AdvGlowButton, ExtCtrls, RzEdit, RzDBEdit, Mask, DBCtrls, Menus;

type
  Tfrmcliente_info = class(TForm)
    Panel1: TPanel;
    Bevel1: TBevel;
    isair: TAdvGlowButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    qrcliente: TZQuery;
    dscliente: TDataSource;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    RzDBNumericEdit1: TRzDBNumericEdit;
    ed_situacao: TEdit;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    PopupMenu1: TPopupMenu;
    Fechar1: TMenuItem;
    procedure isairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcliente_info: Tfrmcliente_info;

implementation

uses modulo;

{$R *.dfm}

procedure Tfrmcliente_info.isairClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmcliente_info.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmcliente_info.FormShow(Sender: TObject);
begin
  qrcliente.close;
  qrcliente.sql.clear;
  qrcliente.sql.add('select  * from c000007 where codigo = '''+resultado_pesquisa1+'''');
  qrcliente.open;

  ed_situacao.text := 'APROVADO';
  if qrcliente.FieldByName('situacao').asstring = '2' then ed_situacao.text := 'EM OBSERVAÇÃO';
  if qrcliente.FieldByName('situacao').asstring = '3' then ed_situacao.text := 'BLOQUEADO';
  if qrcliente.FieldByName('situacao').asstring = '4' then ed_situacao.text := 'INATIVO';
  if qrcliente.FieldByName('situacao').asstring = '5' then ed_situacao.text := 'SPC';

   ISAIR.SetFocus;
end;

procedure Tfrmcliente_info.Fechar1Click(Sender: TObject);
begin
 close;
end;

end.
