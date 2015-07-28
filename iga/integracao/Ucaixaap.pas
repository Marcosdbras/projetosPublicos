unit ucaixaap;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, StdCtrls, Db, DBTables, ExtCtrls, jpeg, Mask, ComCtrls, SayPrint,
  TeeProcs, TeEngine, Chart, Series;

type
  Tfrmcaixaap = class(TForm)
    pnlsuperior: TPanel;
    sPdGravar: TSpeedButton;
    spdcancela: TSpeedButton;
    Label8: TLabel;
    Label9: TLabel;
    spdFiltrar: TSpeedButton;
    spdLimpar: TSpeedButton;
    dtpdataI: TDateTimePicker;
    dtpdataf: TDateTimePicker;
    PrintCaixa: TSayPrint;
    lblcab2: TLabel;
    lbltittroco: TLabel;
    lbltroco: TLabel;
    lbltitsangria: TLabel;
    lblsangria: TLabel;
    lbltitentrada: TLabel;
    lblentrada: TLabel;
    lbltitsaida: TLabel;
    lblsaida: TLabel;
    lbltitsaldo: TLabel;
    lblsaldo: TLabel;
    procedure FormShow(Sender: TObject);
    procedure spdcancelaClick(Sender: TObject);
    procedure spdFiltrarClick(Sender: TObject);
    procedure spdLimparClick(Sender: TObject);
    procedure sPdGravarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);


  private
    { Private declarations }
    vardir, sDataI, sDataF:string;
    ftotsangria, ftotingestao:real;

  public
    { Public declarations }
  end;

var
  frmcaixaap: Tfrmcaixaap;

implementation

uses uDados, uGeral, urelcaixaap;

{$R *.DFM}

procedure Tfrmcaixaap.FormShow(Sender: TObject);
  var pCodSit, pCodfunreb, pCodfuncon, topo, A:Integer;
      VarDir, presttexto:String;
      S:TMemoryStream;
      j:tjpegimage;
      lblnpro, lblquant, lbluni, lblcodigo, lblprve, lblsubtotal, lblbase:tlabel;
      shlinha:tshape;
  Var
    dia,mes,ano:word;
begin
VarDir := Extractfilepath(Application.exename);
spdlimpar.Click;

end;

procedure Tfrmcaixaap.spdcancelaClick(Sender: TObject);
begin
close;
end;

procedure Tfrmcaixaap.spdFiltrarClick(Sender: TObject);
begin
with frmdados do
  begin

    VarDir := Extractfilepath(Application.exename);

    sDataI := datetostr(dtpdatai.Date);
    sDataI := bar_is_point( sDataI  );

    sDataF := datetostr(dtpdataF.Date);
    sDataF := bar_is_point( sDataF  );

    dbx_exec.Active := false;
    dbx_exec.SQL.Clear;
    dbx_exec.SQL.Add('Select sum(valor) as tot from sangria  group by data having ('+'data >= '+quotedstr(sDataI)+') and (data <= '+quotedstr(sDataF)+')');
    dbx_exec.Active := true;

    lblsangria.Caption := formatfloat('###,##0.00',dbx_exec.fieldbyname('tot').asfloat);

    cds_ingestao.Active := false;
    dbx_ingestao.Active := false;
    dbx_ingestao.SQL.Clear;
    dbx_ingestao.SQL.Add('Select * from ingestao');
    dbx_ingestao.Active := true;
    cds_ingestao.Active := true;

    lbltroco.Caption := formatfloat('###,##0.00',cds_ingestao.fieldbyname('valor').asfloat);

    DBX_EXEC.Active:=False;
    DBX_EXEC.SQL.Clear;
    DBX_EXEC.SQL.Add('SELECT SUM(VALOR) AS TOT, SUM (ENTRADA) AS TOTE, SUM(SAIDA) AS TOTS FROM CONTASARECEBERNUBIA GROUP BY PAGO HAVING ('+'PAGO >= '+quotedstr(sDataI)+') and (PAGO <= '+quotedstr(sDataF)+')');
    DBX_EXEC.Active:=True;


    lblentrada.Caption := formatfloat('###,##0.00',dbx_exec.fieldbyname('tote').asfloat);
    lblsaida.Caption := formatfloat('###,##0.00',dbx_exec.fieldbyname('tots').asfloat);

    lblsaldo.Caption :=  formatfloat('###,###,##0.00',  strtofloat(tirapontos(lbltroco.Caption)) +  strtofloat(tirapontos(lblentrada.Caption)) -  strtofloat(tirapontos(lblsangria.Caption))  -  strtofloat(tirapontos(lblsaida.Caption))  );



  end;
//endth
end;

procedure Tfrmcaixaap.spdLimparClick(Sender: TObject);
begin
dtpdatai.Date := date;
dtpdataf.Date := date;
spdfiltrar.Click;
end;

procedure Tfrmcaixaap.sPdGravarClick(Sender: TObject);
var i:integer;
begin
frmrelcaixaap := tfrmrelcaixaap.create(self);
frmrelcaixaap.relatorio.preview;
frmrelcaixaap.free;

end;

procedure Tfrmcaixaap.FormClose(Sender: TObject; var Action: TCloseAction);
begin
tabela := '';
Action := caFree;
FrmCaixaap := nil;

end;

end.
