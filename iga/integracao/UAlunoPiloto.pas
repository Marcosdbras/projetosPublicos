unit UAlunoPiloto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TFrmrelAlunoPiloto = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRLabel1: TQRLabel;
    QRShape3: TQRShape;
    QRLabel2: TQRLabel;
    QRShape5: TQRShape;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRShape1: TQRShape;
    lblnome: TQRLabel;
    QRShape7: TQRShape;
    lblrgm: TQRLabel;
    QRShape10: TQRShape;
    QRShape2: TQRShape;
    lblra: TQRLabel;
    procedure FormCreate(Sender: TObject);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    sqlRelTurmaSerieAlu:String;
    count : integer;
    vardir:string;
    f:TextFile;

  public
    { Public declarations }
  end;

var
  FrmrelAlunoPiloto: TFrmrelAlunoPiloto;

implementation

uses UDados, UPesqSerie, uGeral;

{$R *.dfm}

procedure TFrmrelAlunoPiloto.FormCreate(Sender: TObject);
begin
  count := 0;
end;

procedure TFrmrelAlunoPiloto.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  count := 0;


  vardir:= extractfilepath(application.ExeName);



    AssignFile(f, vardir+ '\relatorios\AlunosGeral.txt');

    Rewrite(f);

    Writeln(f,'NOME; RGM; RA');





end;

procedure TFrmrelAlunoPiloto.QRSubDetail1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
  var
    anoletivo:integer;
begin

end;

procedure TFrmrelAlunoPiloto.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  count := count + 1;

  lblrgm.Caption := frmdados.cds_rel.fieldbyname('rgm').AsString;
  lblnome.Caption := frmdados.cds_rel.fieldbyname('nome').AsString;

  lblra.Caption := frmdados.cds_rel.fieldbyname('ra').AsString;

  Writeln(f, frmdados.CDS_rel.FieldByName('NOME').AsString+';'+frmdados.CDS_rel.FieldByName('rgm').AsString+';'+frmdados.CDS_rel.FieldByName('ra').AsString   );


end;

procedure TFrmrelAlunoPiloto.FormDestroy(Sender: TObject);
begin
  //if frmdados.cds_rel.Eof then
   Closefile(f);

end;

end.
