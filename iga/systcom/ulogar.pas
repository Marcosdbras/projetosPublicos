unit ulogar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  Tfrmlogar = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    btnok: TBitBtn;
    btncancelar: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmlogar: Tfrmlogar;

implementation

{$R *.dfm}

end.
