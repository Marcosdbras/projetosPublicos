unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Collection, ExtCtrls, StdCtrls, Buttons, Menus;

type
  Tfrmlista_cliente = class(TForm)
    Panel1: TPanel;
    HeaderView1: THeaderView;
    ViewSplit1: TViewSplit;
    bimprimir: TBitBtn;
    bcancelar: TBitBtn;
    ViewSplit2: TViewSplit;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    FlipView1: TFlipView;
    RadioButton4: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton1: TRadioButton;
    FlipView2: TFlipView;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    RadioButton7: TRadioButton;
    RadioButton8: TRadioButton;
    PopupMenu1: TPopupMenu;
    Imprimir1: TMenuItem;
    Cancelar1: TMenuItem;
    blocvendedor: TBitBtn;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    BitBtn1: TBitBtn;
    Edit4: TEdit;
    Edit5: TEdit;
    BitBtn2: TBitBtn;
    Edit6: TEdit;
    BitBtn3: TBitBtn;
    Label1: TLabel;
    RadioButton9: TRadioButton;
    RadioButton10: TRadioButton;
    Edit7: TEdit;
    procedure bimprimirClick(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmlista_cliente: Tfrmlista_cliente;

implementation

{$R *.dfm}

procedure Tfrmlista_cliente.bimprimirClick(Sender: TObject);
begin
  //
end;

procedure Tfrmlista_cliente.bcancelarClick(Sender: TObject);
begin
  //
end;

procedure Tfrmlista_cliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

end.
