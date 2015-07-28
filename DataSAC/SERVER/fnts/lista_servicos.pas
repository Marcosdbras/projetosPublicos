unit lista_servicos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, Buttons, Collection, ExtCtrls;

type
  TFrmlista_servicos = class(TForm)
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
    GroupBox3: TGroupBox;
    Edit1: TEdit;
    blocvendedor: TBitBtn;
    Edit2: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frmlista_servicos: TFrmlista_servicos;

implementation

{$R *.dfm}

end.
