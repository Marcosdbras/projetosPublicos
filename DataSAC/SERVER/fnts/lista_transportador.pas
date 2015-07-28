unit lista_transportador;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, Buttons, Collection, ExtCtrls;

type
  TFrmlista_transportador = class(TForm)
    Panel1: TPanel;
    ViewSplit2: TViewSplit;
    HeaderView1: THeaderView;
    FlipView1: TFlipView;
    RadioButton1: TRadioButton;
    ViewSplit1: TViewSplit;
    bimprimir: TBitBtn;
    bcancelar: TBitBtn;
    PopupMenu1: TPopupMenu;
    Imprimir1: TMenuItem;
    Cancelar1: TMenuItem;
    FlipView3: TFlipView;
    RadioButton13: TRadioButton;
    RadioButton14: TRadioButton;
    RadioButton2: TRadioButton;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Edit5: TEdit;
    BitBtn2: TBitBtn;
    Edit6: TEdit;
    BitBtn3: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frmlista_transportador: TFrmlista_transportador;

implementation

{$R *.dfm}

end.
