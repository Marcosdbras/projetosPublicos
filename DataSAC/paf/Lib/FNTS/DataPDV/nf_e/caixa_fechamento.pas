unit caixa_fechamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Grids,
  Wwdbigrd, Wwdbgrid, ExtCtrls, Collection, StdCtrls, Mask, ToolEdit,
  CurrEdit, TFlatPanelUnit, Buttons, DBCtrls, Menus, AdvGlowButton;

type
  Tfrmcaixa_fechamento = class(TForm)
    qrcaixa_operador: TZQuery;
    qrcaixa_operadorCODIGO: TStringField;
    qrcaixa_operadorCODFUNCIONARIO: TStringField;
    qrcaixa_operadorSENHA: TStringField;
    qrcaixa_operadorSITUACAO: TIntegerField;
    qrcaixa_operadornome: TStringField;
    qrcaixa_operadorDATA: TDateTimeField;
    qrcaixa_operadorSALDO: TFloatField;
    dscaixa_operador: TDataSource;
    qrcaixa_operadorSIT: TStringField;
    PopupMenu1: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    Panel4: TPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    Bevel2: TBevel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    wwDBGrid1: TwwDBGrid;
    bincluir: TAdvGlowButton;
    Bevel1: TBevel;
    ldata: TLabel;
    Label1: TLabel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Panel3: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    RENTRADA: TRxCalcEdit;
    RSAIDA: TRxCalcEdit;
    RSUBSALDO: TRxCalcEdit;
    Button1: TButton;
    Label2: TLabel;
    Bevel5: TBevel;
    Label7: TLabel;
    Label8: TLabel;
    rsangria: TRxCalcEdit;
    RSALDO: TRxCalcEdit;
    procedure qrcaixa_operadorCalcFields(DataSet: TDataSet);
    procedure bcancelarClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure wwDBGrid1DrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure DBEdit1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bincluirClick(Sender: TObject);
    procedure rsangriaEnter(Sender: TObject);
    procedure rsangriaExit(Sender: TObject);
    procedure rsangriaKeyPress(Sender: TObject; var Key: Char);
    procedure Gravar1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function formata_valor(valor:string):string;
  end;

var
  frmcaixa_fechamento: Tfrmcaixa_fechamento;

implementation

uses modulo, caixa, principal, lista_caixa2, ecf;

{$R *.dfm}
function Tfrmcaixa_fechamento.formata_valor(valor:string):string;
var i : integer;
begin
  i := pos('.',valor);
  while i <> 0 do
  begin
      delete(valor,i,1);
      i := pos('.',valor);
  end;
  result := valor;
end;

procedure Tfrmcaixa_fechamento.qrcaixa_operadorCalcFields(DataSet: TDataSet);
begin
  case qrcaixa_operador.FieldByName('situacao').asinteger of
  1 : qrcaixa_operador.FieldByName('sit').asstring := 'ABERTO';
  2 : qrcaixa_operador.FieldByName('sit').asstring := 'FECHADO';
  3 : qrcaixa_operador.FieldByName('sit').asstring := 'SEM CAIXA';
  END;

end;

procedure Tfrmcaixa_fechamento.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmcaixa_fechamento.bgravarClick(Sender: TObject);
begin

 try
   if qrcaixa_operador.Locate('situacao',1,[loCaseInsensitive]) then
   begin
     application.MessageBox('Existem caixas individuais abertos! Para prosseguir é necessário o fechamento dos mesmos!','Aviso',mb_ok+MB_ICONWARNING);
   end
   else
   begin
     if rsangria.Value > 0 then
     begin
       frmcaixa.qrcaixa_mov.OPEN;
       frmcaixa.qrcaixa_mov.insert;
       frmcaixa.qrcaixa_mov.FieldByName('codigo').asstring      := frmprincipal.codifica('000044');
       frmcaixa.qrcaixa_mov.fieldbyname('codoperador').asstring := '000099';
       frmcaixa.qrcaixa_mov.fieldbyname('data').asstring        := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
       frmcaixa.qrcaixa_mov.fieldbyname('saida').asfloat        := rsangria.value;
       frmcaixa.qrcaixa_mov.fieldbyname('valor').asfloat        := (rsangria.value)*(-1);
       frmcaixa.qrcaixa_mov.fieldbyname('entrada').asfloat      := 0;
       frmmodulo.qrconfig.open;
       frmcaixa.qrcaixa_mov.fieldbyname('codconta').asstring    := frmmodulo.qrconfig.fieldbyname('PLANO_OUTRAS_SAIDAS').asstring;
       frmcaixa.qrcaixa_mov.fieldbyname('movimento').asINTEGER  := 2;
       frmcaixa.qrcaixa_mov.fieldbyname('historico').asstring   := '**RETIRADA** - Fechamento de Caixa';
       frmcaixa.qrcaixa_mov.post;
     end;
     frmmodulo.qrcaixa_operador.Edit;
     frmmodulo.qrcaixa_operador.fieldbyname('situacao').asinteger := 2;
     frmmodulo.qrcaixa_operador.fieldbyname('saldo').asfloat := rsaldo.value;
     frmmodulo.qrcaixa_operador.Post;
     frmmodulo.conexao.Commit;
     frmcaixa.qrcaixa_mov.Refresh;
     application.MessageBox('Caixa Fechado com Sucesso!','Aviso',mb_ok+MB_ICONINFORMATION);
     if application.MessageBox('Deseja imprimir a folha de caixa?','Aviso',mb_yesno+MB_ICONquestion) = idyes then
     begin
       FRMLISTA_CAIXA2 := TFRMLISTA_CAIXA2.CREATE(SELF);
       FRMLISTA_CAIXA2.SHOWMODAL;
     end;

 // Tirei pq não há necessidade de trabalhar com impressora fiscal no retaguarda
 
{     IF APPLICATION.MESSAGEBOX('Deseja emitir a Redução Z?','Aviso',mb_yesno+mb_iconquestion+MB_DEFBUTTON2) = idyes then
     begin
       Button1Click(frmcaixa_fechamento);
     end;
}
     close;
   end;
 except
   application.MessageBox('Houve falha no fechamento do caixa... Este processamento foi cancelado!','Erro',mb_ok+MB_ICONERROR);
   close;
 end;

end;

procedure Tfrmcaixa_fechamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmcaixa_fechamento.wwDBGrid1DrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
  if qrcaixa_operador.FieldByName('situacao').asinteger = 2 then
  begin
    wwDbgrid1.canvas.Brush.Color:= clred;
    wwDbgrid1.Canvas.Pen.Color:= clblack;
  end;
  if qrcaixa_operador.FieldByName('situacao').asinteger = 3 then
  begin
    wwDbgrid1.canvas.Brush.Color:= $005ACAFA;
    wwDbgrid1.Canvas.Pen.Color:= clblack;
  end;

  wwDbgrid1.DefaultDrawDataCell(Rect, field, State);
end;

procedure Tfrmcaixa_fechamento.DBEdit1Change(Sender: TObject);
begin
  if qrcaixa_operador.FieldByName('situacao').asinteger = 1 then
    bincluir.visible := true else bincluir.Visible := false;
end;

procedure Tfrmcaixa_fechamento.FormShow(Sender: TObject);
begin
  frmmodulo.qrcaixa_operador.Refresh;
  qrcaixa_operador.Close;
  qrcaixa_operador.SQL.Clear;
  qrcaixa_operador.SQL.add('select * from c000045 where codigo <> '''+'000099'+''' order by codigo');
  qrcaixa_operador.Open;
  qrcaixa_operador.Refresh;
  frmmodulo.qrcaixa_operador.Locate('codigo','000099',[loCaseInsensitive]);

  rsangria.setfocus;


end;

procedure Tfrmcaixa_fechamento.bincluirClick(Sender: TObject);
begin
    if application.MessageBox('Confirma a fechamento deste caixa?','Caixa',mb_yesno+mb_iconquestion) = idyes then
    begin
      qrcaixa_operador.Edit;
      qrcaixa_operador.FieldByName('situacao').asinteger := 2;
      qrcaixa_operador.Post;
      frmmodulo.Conexao.commit;
      IF APPLICATION.MessageBox('Deseja imprimir a folha de caixa?','Aviso',mb_yesno+mb_iconquestion) = idyes then
      begin
          FRMLISTA_CAIXA2 := TFRMLISTA_CAIXA2.CREATE(SELF);
          FRMLISTA_CAIXA2.SHOWMODAL;
      end;
    end;
end;

procedure Tfrmcaixa_fechamento.rsangriaEnter(Sender: TObject);
begin
  TEDIT(SENDER).COLOR := $00A0FAF8;
end;

procedure Tfrmcaixa_fechamento.rsangriaExit(Sender: TObject);
begin
 TEDIT(SENDER).COLOR := CLWINDOW;
 RSALDO.VALUE := RSUBSALDO.Value - RSANGRIA.VALUE;
end;

procedure Tfrmcaixa_fechamento.rsangriaKeyPress(Sender: TObject;
  var Key: Char);
begin
  IF KEY = #13 THEN BGRAVAR.SetFocus;
end;

procedure Tfrmcaixa_fechamento.Gravar1Click(Sender: TObject);
begin
  bgravar.setfocus;
  bgravar.OnClick(frmcaixa_fechamento);
end;

procedure Tfrmcaixa_fechamento.Button1Click(Sender: TObject);
var texto : pansichar;
TXT : TEXTFILE;
cnpj_cpf, ie_rg, TEXTOS : STRING;
i : integer;
begin
  if frmprincipal.autentica('Redução Z',nivel_exclusao) then
  begin
    texto := pansichar('Este procedimento fechará o Caixa da ECF, permitindo efetuar novas vendas após as 00:00 hs!'+#13+'Confirma a emissão da REDUÇÃO Z?');
    if application.messagebox(texto,'Atenção - Redução Z',mb_yesno+MB_ICONWARNING+MB_DEFBUTTON2) = idyes then
    begin
      ecf_reducao_z(ecf_modelo);
      frmPrincipal.GravaReducaoZ;
    END;
  end
  else
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
  end;

end;

end.
