unit contasreceber_recebimentos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Buttons, ExtCtrls,
  Collection, Menus, DBCtrls;

type
  Tfrmcontasreceber_recebimentos = class(TForm)
    wwDBGrid1: TwwDBGrid;
    dscontasreceber_pgto: TDataSource;
    ViewSplit1: TViewSplit;
    BitBtn1: TBitBtn;
    PopupMenu1: TPopupMenu;
    Fechar1: TMenuItem;
    PMEIO: THeaderView;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcontasreceber_recebimentos: Tfrmcontasreceber_recebimentos;

implementation

uses contasreceber;

{$R *.dfm}

procedure Tfrmcontasreceber_recebimentos.FormShow(Sender: TObject);
begin
  top := frmcontasreceber.Height - 200;
  left := frmcontasreceber.Width - 450;

  PMEIO.Enabled := FALSE;
end;

procedure Tfrmcontasreceber_recebimentos.BitBtn1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmcontasreceber_recebimentos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

end.
