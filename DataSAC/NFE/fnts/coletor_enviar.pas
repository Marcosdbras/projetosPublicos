unit coletor_enviar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzPrgres, StdCtrls, TFlatGaugeUnit, Buttons, Mask, RzEdit,
  RzBtnEdt, AdvGlowButton, ExtCtrls, RzPanel, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset;

type
  Tfrmcoletor_enviar = class(TForm)
    Memo1: TMemo;
    FlatGauge1: TFlatGauge;
    lproduto: TLabel;
    ecaminho: TRzButtonEdit;
    OpenDialog1: TOpenDialog;
    Label1: TLabel;
    RzPanel1: TRzPanel;
    bconfirma: TAdvGlowButton;
    AdvGlowButton1: TAdvGlowButton;
    qrprodutos: TZQuery;
    qrprodutosCODIGO: TStringField;
    qrprodutosPRODUTO: TStringField;
    qrprodutosCODBARRA: TStringField;
    qrprodutosUNIDADE: TStringField;
    qrprodutosPRECOVENDA: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ecaminhoButtonClick(Sender: TObject);
    procedure bincluirClick(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcoletor_enviar: Tfrmcoletor_enviar;

implementation

uses produto, principal;

{$R *.dfm}

procedure Tfrmcoletor_enviar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmcoletor_enviar.ecaminhoButtonClick(Sender: TObject);
begin
 if opendialog1.Execute then
   ecaminho.Text := opendialog1.FileName;
end;

procedure Tfrmcoletor_enviar.bincluirClick(Sender: TObject);
begin
  qrprodutos.close;
  qrprodutos.sql.clear;
  qrprodutos.SQL.add('select codigo,produto,codbarra,unidade,precovenda from c000025');
  qrprodutos.open;

  bconfirma.Enabled := false;
  memo1.Text := '';
  flatgauge1.Progress := 0;
  flatgauge1.MaxValue := qrprodutos.recordcount;
  qrprodutos.First;
  while not qrprodutos.Eof do begin
    lproduto.Caption := qrprodutoscodbarra.AsString+' '+qrprodutosproduto.AsString;
    memo1.Lines.Add(frmprincipal.texto_justifica(qrprodutos.fieldbyname('codbarra').asstring,13,' ','D')+' '+
                    frmprincipal.texto_justifica(qrprodutos.fieldbyname('produto').asstring,60,' ','D'));
    qrprodutos.Next;
    flatgauge1.Progress := flatgauge1.Progress + 1;
    Application.ProcessMessages;
  end;

  try
    if FileExists(ecaminho.text) then DELETEFILE(ecaminho.text);
    Memo1.Lines.SaveToFile(ecaminho.text);
  except
    application.messagebox('Arquivo de Carga não atualizado, Verifique!','Atenção',mb_ok+mb_iconerror);
  end;

  flatgauge1.Progress := 0;
  qrprodutos.close;
  close;
end;

procedure Tfrmcoletor_enviar.AdvGlowButton1Click(Sender: TObject);
begin
  close;
end;

end.
