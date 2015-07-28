unit lista_funcionario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, Buttons, Collection, ExtCtrls;

type
  TFrmlista_funcionario = class(TForm)
    Panel1: TPanel;
    ViewSplit2: TViewSplit;
    HeaderView1: THeaderView;
    FlipView1: TFlipView;
    RadioButton2: TRadioButton;
    RadioButton1: TRadioButton;
    ViewSplit1: TViewSplit;
    bimprimir: TBitBtn;
    bcancelar: TBitBtn;
    PopupMenu1: TPopupMenu;
    Imprimir1: TMenuItem;
    Cancelar1: TMenuItem;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Edit5: TEdit;
    BitBtn2: TBitBtn;
    Edit6: TEdit;
    BitBtn3: TBitBtn;
    FlipView3: TFlipView;
    RadioButton13: TRadioButton;
    RadioButton14: TRadioButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frmlista_funcionario: TFrmlista_funcionario;

implementation

{$R *.dfm}

end.
