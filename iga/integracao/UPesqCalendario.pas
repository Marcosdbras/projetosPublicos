unit UPesqCalendario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DBCtrls, Grids, DBGrids, Mask, ComCtrls,
  Buttons, DB;

type
  TFrmPesqCalendario = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    TabSheet1: TTabSheet;
    DBRadioGroup1: TDBRadioGroup;
    DBRadioGroup2: TDBRadioGroup;
    DBRadioGroup3: TDBRadioGroup;
    DBRadioGroup4: TDBRadioGroup;
    DBRadioGroup5: TDBRadioGroup;
    DBRadioGroup6: TDBRadioGroup;
    DBRadioGroup7: TDBRadioGroup;
    DBRadioGroup8: TDBRadioGroup;
    DBRadioGroup9: TDBRadioGroup;
    DBRadioGroup10: TDBRadioGroup;
    DBRadioGroup11: TDBRadioGroup;
    DBRadioGroup12: TDBRadioGroup;
    DBRadioGroup13: TDBRadioGroup;
    DBRadioGroup14: TDBRadioGroup;
    DBRadioGroup15: TDBRadioGroup;
    DBRadioGroup16: TDBRadioGroup;
    TabSheet2: TTabSheet;
    DBRadioGroup17: TDBRadioGroup;
    DBRadioGroup18: TDBRadioGroup;
    DBRadioGroup19: TDBRadioGroup;
    DBRadioGroup20: TDBRadioGroup;
    DBRadioGroup21: TDBRadioGroup;
    DBRadioGroup22: TDBRadioGroup;
    DBRadioGroup23: TDBRadioGroup;
    DBRadioGroup24: TDBRadioGroup;
    DBRadioGroup25: TDBRadioGroup;
    DBRadioGroup26: TDBRadioGroup;
    DBRadioGroup27: TDBRadioGroup;
    DBRadioGroup28: TDBRadioGroup;
    DBRadioGroup29: TDBRadioGroup;
    DBRadioGroup30: TDBRadioGroup;
    DBRadioGroup31: TDBRadioGroup;
    TabSheet3: TTabSheet;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    Label5: TLabel;
    Shape1: TShape;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    BtnInserir: TBitBtn;
    BtnExcluir: TBitBtn;
    BtnConfirmar: TBitBtn;
    BtnCancelar: TBitBtn;
    BtnImprimir: TBitBtn;
    BtnSair: TBitBtn;
    PageControl1: TPageControl;
    DBComboBox1: TDBComboBox;
    procedure BtnInserirClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure BtnConfirmarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBLookupComboBox1Enter(Sender: TObject);
    procedure BtnImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPesqCalendario: TFrmPesqCalendario;

implementation

uses UDados, URelCalendario, uGeral;

{$R *.dfm}

procedure TFrmPesqCalendario.BtnInserirClick(Sender: TObject);
begin
  if bCalendarioI then
    FrmDados.CDS_Calendario.Append
  else
    showmessage('Este usuário não possui privilégios para inserir um cadastro!');
  //endi
end;

procedure TFrmPesqCalendario.BtnExcluirClick(Sender: TObject);
begin
  if bCalendarioE then
    FrmDados.CDS_Calendario.Delete
  else
    showmessage('Este usuário não possui privilégios para deletar este registro!');
end;

procedure TFrmPesqCalendario.BtnConfirmarClick(Sender: TObject);
begin
  if FrmDados.CDS_Calendario.State in [dsinsert,dsedit] then
    FrmDados.CDS_Calendario.Post;
end;

procedure TFrmPesqCalendario.BtnCancelarClick(Sender: TObject);
begin
  FrmDados.CDS_Calendario.Cancel;
end;

procedure TFrmPesqCalendario.BtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmPesqCalendario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := CaFree;
  FrmPesqCalendario := nil;
end;

procedure TFrmPesqCalendario.DBLookupComboBox1Enter(Sender: TObject);
begin
  if not(FrmDados.CDS_Calendario.State in [dsedit,dsinsert]) then
  begin
    if FrmDados.CDS_Calendario.RecordCount <> 0 then
    begin
      if bCalendarioA then
        FrmDados.CDS_Calendario.Edit
      else
        showmessage('Este usuário não possui privilégios para alterar este cadastro!');
      //endi
    end
    else
    begin
      if bCalendarioI then
        FrmDados.CDS_Calendario.Append
      else
        showmessage('Este usuário não possui privilégios para inserir um cadastro!');
      //endi
    end;
    //endi
  end;
  //endi
end;

procedure TFrmPesqCalendario.BtnImprimirClick(Sender: TObject);
begin
  FrmRelCalendario := TFrmRelCalendario.Create(self);
  FrmRelCalendario.QuickRep1.PreviewModal;
  FrmRelCalendario.Free;
end;

end.
