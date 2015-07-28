unit contaspagar_cheque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, Wwdbigrd, Wwdbgrid, Collection, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ExtCtrls, StdCtrls, Mask, ToolEdit, CurrEdit,
  Buttons, TFlatPanelUnit, Wwkeycb, AdvGlowButton, Menus;

type
  Tfrmcontaspagar_cheque = class(TForm)
    qrcheque: TZQuery;
    dscheque: TDataSource;
    qrchequeCODIGO: TStringField;
    qrchequeEMISSAO: TDateTimeField;
    qrchequeVENCIMENTO: TDateTimeField;
    qrchequeDATA_DEPOSITO1: TDateTimeField;
    qrchequeDATA_DEPOSITO2: TDateTimeField;
    qrchequeDATA_DEVOLUCAO1: TDateTimeField;
    qrchequeDATA_DEVOLUCAO2: TDateTimeField;
    qrchequeSITUACAO: TIntegerField;
    qrchequeCODCLIENTE: TStringField;
    qrchequeTITULAR: TStringField;
    qrchequeCODBANCO: TStringField;
    qrchequeAGENCIA: TStringField;
    qrchequeCONTA: TStringField;
    qrchequeDATA_CONTA: TDateTimeField;
    qrchequeNUMERO: TStringField;
    qrchequeVALOR: TFloatField;
    qrchequeDESCONTO: TFloatField;
    qrchequeLIQUIDO: TFloatField;
    qrchequeCODVENDA: TStringField;
    qrchequeOBS1: TStringField;
    qrchequeOBS2: TStringField;
    qrchequeCODCONTAS_PAGAR: TStringField;
    qrchequeDESTINO: TStringField;
    qrchequeDATA_BAIXA: TDateTimeField;
    qrchequeCODCONTA_CORRENTE: TStringField;
    qrchequeCODCONTA: TStringField;
    FlatPanel1: TFlatPanel;
    wwDBGrid1: TwwDBGrid;
    Panel1: TPanel;
    Label1: TLabel;
    rtotal: TRxCalcEdit;
    Bevel1: TBevel;
    Bevel2: TBevel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    Bevel3: TBevel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    loc: TwwIncrementalSearch;
    Label2: TLabel;
    PopupMenu1: TPopupMenu;
    Cancelar1: TMenuItem;
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcontaspagar_cheque: Tfrmcontaspagar_cheque;

implementation

uses contaspagar_pgto;

{$R *.dfm}

procedure Tfrmcontaspagar_cheque.RadioButton1Click(Sender: TObject);
begin
  qrcheque.IndexFieldNames := 'numero';
  loc.setfocus;
end;

procedure Tfrmcontaspagar_cheque.RadioButton2Click(Sender: TObject);
begin
  qrcheque.IndexFieldNames := 'titular';
  loc.setfocus;
end;

procedure Tfrmcontaspagar_cheque.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmcontaspagar_cheque.FormShow(Sender: TObject);
begin
    qrcheque.close;
    qrcheque.SQL.clear;
    qrcheque.SQL.add('update c000040 set CODCONTAS_PAGAR = '''+'0'+''' where SITUACAO = 1');
    qrcheque.execsql;
    
    qrcheque.SQL.clear;
    qrcheque.SQL.add('select * from c000040 where situacao = 1 order by vencimento');
    qrcheque.open;

    wwdbgrid1.setfocus;
end;

procedure Tfrmcontaspagar_cheque.wwDBGrid1DblClick(Sender: TObject);
begin
  if qrcheque.FieldByName('CODCONTAS_PAGAR').asstring = '1' then
  begin
    qrcheque.Edit;
    qrcheque.fieldbyname('CODCONTAS_PAGAR').AsString := '0';
    qrcheque.Post;
    rtotal.value := rtotal.value - qrcheque.fieldbyname('valor').asfloat;

  end
  else
  begin
    qrcheque.Edit;
    qrcheque.fieldbyname('CODCONTAS_PAGAR').AsString := '1';
    qrcheque.Post;
    rtotal.value := rtotal.value + qrcheque.fieldbyname('valor').asfloat;
  end;

end;

procedure Tfrmcontaspagar_cheque.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmcontaspagar_cheque.bgravarClick(Sender: TObject);
begin
  qrcheque.Close;
  qrcheque.SQL.clear;
  qrcheque.SQL.Add('update c000040 set destino = '''+copy(fornecedor,1,50)+''', situacao = 7, DATA_BAIXA = :datai where CODCONTAS_PAGAR = '''+'1'+''' and SITUACAO = 1');
  qrcheque.Params.ParamByName('datai').asdatetime := Frmcontaspagar_pgto.dateedit1.date;
  qrcheque.ExecSQL;
  frmcontaspagar_pgto.rvalor_terceiro.value := rtotal.value;
  close;
end;

end.
