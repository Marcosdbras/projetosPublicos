unit caixa_indisponivel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, Buttons, Menus;

type
  TFRMCAIXA_INDISPONIVEL = class(TForm)
    Image2: TImage;
    PopupMenu1: TPopupMenu;
    SairdoSistema1: TMenuItem;
    image_indisponivel: TImage;
    procedure SairdoSistema1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public                                                                
    { Public declarations }
  end;

var
  FRMCAIXA_INDISPONIVEL: TFRMCAIXA_INDISPONIVEL;

implementation

uses principal, caixa_abertura_individual;

{$R *.dfm}

procedure TFRMCAIXA_INDISPONIVEL.SairdoSistema1Click(Sender: TObject);
begin
  close;
end;

procedure TFRMCAIXA_INDISPONIVEL.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   action := cafree;
end;

procedure TFRMCAIXA_INDISPONIVEL.FormShow(Sender: TObject);
begin
  image_indisponivel.Picture.LoadFromFile('\DataSAC\IMG\faixa_indisponivel.JPG');
end;

end.
