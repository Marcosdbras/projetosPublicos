unit lista_fornecedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, Buttons, Collection, ExtCtrls;

type
  Tfrmlista_fornecedor = class(TForm)
    Panel1: TPanel;
    ViewSplit2: TViewSplit;
    HeaderView1: THeaderView;
    FlipView1: TFlipView;
    RadioButton2: TRadioButton;
    RadioButton1: TRadioButton;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Edit5: TEdit;
    BitBtn2: TBitBtn;
    Edit6: TEdit;
    BitBtn3: TBitBtn;
    ViewSplit1: TViewSplit;
    bimprimir: TBitBtn;
    bcancelar: TBitBtn;
    PopupMenu1: TPopupMenu;
    Imprimir1: TMenuItem;
    Cancelar1: TMenuItem;
    FlipView3: TFlipView;
    RadioButton13: TRadioButton;
    RadioButton14: TRadioButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmlista_fornecedor: Tfrmlista_fornecedor;

implementation

{$R *.dfm}

end.
