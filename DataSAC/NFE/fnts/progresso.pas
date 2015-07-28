unit progresso;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls;

type
  Tfrmprogresso = class(TForm)
    barra: TProgressBar;
    ltexto: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmprogresso: Tfrmprogresso;

implementation

{$R *.dfm}

end.
