unit cliente_consulta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Collection, TFlatPanelUnit, Buttons, Menus,
  jpeg, AdvGlowButton;

type
  Tfrmcliente_consulta = class(TForm)
    Bevel1: TBevel;
    Label3: TLabel;
    lendereco: TLabel;
    Label5: TLabel;
    lbairro: TLabel;
    Label7: TLabel;
    lcidade: TLabel;
    Label9: TLabel;
    luf: TLabel;
    Label11: TLabel;
    lcep: TLabel;
    Label13: TLabel;
    ltelefone: TLabel;
    Label15: TLabel;
    lcpf: TLabel;
    Label2: TLabel;
    lrg: TLabel;
    Bevel2: TBevel;
    Label18: TLabel;
    Bevel5: TBevel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Label19: TLabel;
    Bevel6: TBevel;
    Bevel7: TBevel;
    Label20: TLabel;
    LLIMITE: TLabel;
    LUTILIZADO: TLabel;
    LDISPONIVEL: TLabel;
    BitBtn1: TBitBtn;
    PopupMenu1: TPopupMenu;
    Fechar1: TMenuItem;
    o1: TLabel;
    o2: TLabel;
    o3: TLabel;
    o4: TLabel;
    Label4: TLabel;
    Image1: TImage;
    lcliente: TLabel;
    Label1: TLabel;
    Bevel8: TBevel;
    Bevel9: TBevel;
    Bevel10: TBevel;
    Label6: TLabel;
    lvalor_prestacao: TLabel;
    ldias_atrazo: TLabel;
    AdvGlowButton2: TAdvGlowButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcliente_consulta: Tfrmcliente_consulta;

implementation

{$R *.dfm}

procedure Tfrmcliente_consulta.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmcliente_consulta.BitBtn1Click(Sender: TObject);
begin
  close;
end;

end.
