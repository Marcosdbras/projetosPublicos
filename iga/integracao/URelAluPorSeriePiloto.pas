unit URelAluPorSeriePiloto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TFrmRelAlunosPorSeriePiloto = class(TForm)
    QuickRep1: TQuickRep;
    QRSubDetail1: TQRSubDetail;
    QRShape7: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    LblSerie: TQRLabel;
    QRShape1: TQRShape;
    QRLabel5: TQRLabel;
    QRShape2: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRLabel6: TQRLabel;
    lblnumero: TQRLabel;
    lblrgm: TQRLabel;
    lblnome: TQRLabel;
    lbldescontoate: TQRLabel;
    lblvlrb: TQRLabel;
    QRShape6: TQRShape;
    QRShape8: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    lblvlrdesc: TQRLabel;
    lblvlrl: TQRLabel;
    procedure FormCreate(Sender: TObject);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRSubDetail1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
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
  FrmRelAlunosPorSeriePiloto: TFrmRelAlunosPorSeriePiloto;

implementation

uses UDados, UPesqSerie, uGeral;

{$R *.dfm}

procedure TFrmRelAlunosPorSeriePiloto.FormCreate(Sender: TObject);
begin
  count := 0;
end;

procedure TFrmRelAlunosPorSeriePiloto.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  count := 0;


  vardir:= extractfilepath(application.ExeName);


  with FrmDados do
  begin
    CDS_Rel.Active := False;
    DBX_Rel.Active := False;
    DBX_Rel.SQL.Clear;
    DBX_Rel.SQL.Add('SELECT * FROM ALUNOPORSERIEPILOTO R WHERE R.CODSERIE = ' + inttostr(CDS_Serie.FieldByName('CODIGO').AsInteger) + ' and R.CANCEL_MATRICULA <> ' + quotedstr('V') + ' and R.ANOLETIVO = ' + CDS_Serie.FieldByName('ANO').AsString + ' order by R.numero');
    DBX_Rel.Active := True;
    CDS_Rel.Active := True;

    AssignFile(f, vardir+ '\relatorios\piloto_por_serie.txt');

    Rewrite(f);

        Writeln(f,'NUMERO; RGM; NOME; DESCONTO ATÉ; VALOR NORMAL; DESCONTO; VALOR LÍQUIDO');



  end;
  //endth



end;

procedure TFrmRelAlunosPorSeriePiloto.QRSubDetail1AfterPrint(
  Sender: TQRCustomBand; BandPrinted: Boolean);
begin
  if FrmDados.CDS_RelTurmaSerieAlu.Eof then
  begin
    count := 0;
  end;
  //endi
end;

procedure TFrmRelAlunosPorSeriePiloto.QRSubDetail1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
  var
    anoletivo:integer;
begin
  count := count + 1;

  lbldescontoate.Caption := '';
  lblvlrb.Caption :=   '0,00';
  lblvlrdesc.Caption :=   '0,00';
  lblvlrl.Caption :=   '0,00';

  lblnumero.Caption := frmdados.cds_rel.fieldbyname('numero').AsString;
  lblrgm.Caption := frmdados.cds_rel.fieldbyname('rgm').AsString;
  lblnome.Caption := frmdados.cds_rel.fieldbyname('nome').AsString;




    try
      anoletivo := strtoint(frmdados.cds_rel.fieldbyname('anoletivo').asString);

      frmdados.cds_reldet.Active := false;
      frmdados.dbx_reldet.Active := false;
      frmdados.dbx_reldet.SQL.Clear;
      frmdados.dbx_reldet.SQL.Append('select * from cadalunoanual where (codalu = '+ inttostr(frmdados.cds_rel.fieldbyname('codaluno').asInteger)+') and ( ano = '+  inttostr(anoletivo)  +')' );
      frmdados.dbx_reldet.Active := true;
      frmdados.cds_reldet.Active := true;



      if frmdados.cds_reldet.RecordCount > 0 then
         begin
           lbldescontoate.Caption := frmdados.cds_reldet.fieldbyname('descontoate').AsString;
           lblvlrb.Caption :=   formatfloat('###,###,##0.00',frmdados.cds_reldet.fieldbyname('vlrnormal').Asfloat);
           lblvlrdesc.Caption :=   formatfloat('###,###,##0.00',frmdados.cds_reldet.fieldbyname('vlrdesconto').Asfloat);
           lblvlrl.Caption :=   formatfloat('###,###,##0.00',frmdados.cds_reldet.fieldbyname('valor').Asfloat);
         end;


    except
      lbldescontoate.Caption := '';
      lblvlrb.Caption :=   '0,00';
      lblvlrdesc.Caption :=   '0,00';
      lblvlrl.Caption :=   '0,00';
    end;



       Writeln(f,  lblnumero.caption+';'+
              lblrgm.caption+';'+
              lblnome.caption+';'+
              lbldescontoate.caption+';'+
              formatfloat('0.00',  strtofloat( tirapontos( lblvlrb.Caption  )  ) )+';'+
              formatfloat('0.00',  strtofloat( tirapontos( lblvlrdesc.Caption  )  ) )+';'+
              formatfloat('0.00',  strtofloat( tirapontos( lblvlrl.Caption  )  ) )

              ) ;










end;

procedure TFrmRelAlunosPorSeriePiloto.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  with FrmDados do
  begin
    LblSerie.Caption := '';
    LblSerie.Caption := CDS_Serie.FieldByName('SERIE').AsString + ' ' + CDS_Serie.FieldByName('TURMA').AsString + ' ' + CDS_Serie.FieldByName('GRAU').AsString + ' - ' + CDS_Serie.FieldByName('PERIODO').AsString;
    CDS_Rel.Active := False;
    DBX_ReL.Active := False;
    DBX_Rel.SQL.Clear;
    DBX_Rel.SQL.Add('SELECT * FROM ALUNOPORSERIEPILOTO R WHERE R.CODSERIE = ' + inttostr(CDS_Serie.FieldByName('CODIGO').AsInteger) + ' and R.ANOLETIVO = ' + CDS_SErie.FieldByName('ANO').AsString + ' and R.CANCEL_MATRICULA <> ' + quotedstr('V') + ' order by R.numero');

    DBX_Rel.Active := True;
    CDS_Rel.Active := True;

    count := 0;

    Writeln(f,'');
        Writeln(f, CDS_Serie.FieldByName('GRAU').AsString+' '+CDS_Serie.FieldByName('SERIE').AsString+' '+CDS_Serie.FieldByName('TURMA').AsString   );
    Writeln(f,'');











  end;
  //endth
end;

procedure TFrmRelAlunosPorSeriePiloto.FormDestroy(Sender: TObject);
begin
 //if frmdados.CDS_Serie.Eof then
   Closefile(f);

end;

end.
