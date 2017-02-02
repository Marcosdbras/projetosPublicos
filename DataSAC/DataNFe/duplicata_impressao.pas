unit duplicata_impressao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, RzEdit, StdCtrls;

type
  TfrmDuplicata_Impressao = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    ed_fatura_numero: TEdit;
    ed_fatura_valor: TRzNumericEdit;
    Label2: TLabel;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Button1: TButton;
    ed_ordem: TRzNumericEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure ed_fatura_numeroKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDuplicata_Impressao: TfrmDuplicata_Impressao;

implementation

uses prevenda_fechamento;

{$R *.dfm}

procedure TfrmDuplicata_Impressao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmDuplicata_Impressao.Button1Click(Sender: TObject);
begin
  iOrdem := ed_ordem.IntValue;
  sNumero :=  ed_fatura_numero.Text;
  rValor := ed_fatura_valor.Value;
  close;
end;

procedure TfrmDuplicata_Impressao.ed_fatura_numeroKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then Perform(WM_NEXTDLGCTL,0,0);
end;

end.
