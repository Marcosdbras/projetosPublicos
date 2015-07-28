unit URelNotas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, jpeg;

type
  TFrmRelNotas = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    LblNome: TQRLabel;
    LblCurso: TQRLabel;
    LblAno: TQRLabel;
    LblPeriodo: TQRLabel;
    LblTurma: TQRLabel;
    LblNumero: TQRLabel;
    LblRgm: TQRLabel;
    LblData: TQRLabel;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRLabel65: TQRLabel;
    QRLabel66: TQRLabel;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRShape33: TQRShape;
    QRLabel67: TQRLabel;
    QRShape34: TQRShape;
    QRLabel68: TQRLabel;
    QRShape35: TQRShape;
    QRShape36: TQRShape;
    QRShape37: TQRShape;
    QRShape38: TQRShape;
    QRShape39: TQRShape;
    QRShape40: TQRShape;
    QRLabel69: TQRLabel;
    QRLabel70: TQRLabel;
    QRLabel71: TQRLabel;
    QRLabel72: TQRLabel;
    QRLabel73: TQRLabel;
    QRLabel74: TQRLabel;
    QRLabel75: TQRLabel;
    QRLabel76: TQRLabel;
    QRLabel77: TQRLabel;
    QRLabel78: TQRLabel;
    Logo: TQRImage;
    QRBand4: TQRBand;
    QRLabel1: TQRLabel;
    QRShape1: TQRShape;
    QRBand3: TQRBand;
    SHMateria: TQRShape;
    QRDBText1: TQRDBText;
    SHNota4: TQRShape;
    SHNota3: TQRShape;
    SHNota2: TQRShape;
    SHNota1: TQRShape;
    SHMEdia: TQRShape;
    LblMedia: TQRLabel;
    LblNota1Bim: TQRLabel;
    LblNota2Bim: TQRLabel;
    LblNota4Bim: TQRLabel;
    LblNota3Bim: TQRLabel;
    SHAss4: TQRShape;
    SHAss3: TQRShape;
    SHAss2: TQRShape;
    SHAss1: TQRShape;
    SHAulas: TQRShape;
    SHTotal: TQRShape;
    LblAulas: TQRLabel;
    LblTotal: TQRLabel;
    LblAss4Bim: TQRLabel;
    LblAss3BIM: TQRLabel;
    LblAss2Bim: TQRLabel;
    LblAss1BIM: TQRLabel;
    QRBand2: TQRBand;
    SHNomeMaster: TQRShape;
    DBNomeMaster: TQRDBText;
    SHNota4Master: TQRShape;
    SHNota3Master: TQRShape;
    SHNota2Master: TQRShape;
    SHNota1Master: TQRShape;
    SHMediaMaster: TQRShape;
    LblMediaMaster: TQRLabel;
    LblNota1Master: TQRLabel;
    LblNota2Master: TQRLabel;
    LblNota4Master: TQRLabel;
    LblNota3Master: TQRLabel;
    SHAss4Master: TQRShape;
    SHAss3Master: TQRShape;
    SHAss2Master: TQRShape;
    SHAss1Master: TQRShape;
    SHAulasMaster: TQRShape;
    SHTotalMaster: TQRShape;
    LblAulasMaster: TQRLabel;
    LblTotalMaster: TQRLabel;
    LblAss4Master: TQRLabel;
    LblAss3Master: TQRLabel;
    LblAss2Master: TQRLabel;
    LblAss1Master: TQRLabel;
    QRLabel2: TQRLabel;
    lblra: TQRLabel;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRep1AfterPreview(Sender: TObject);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRep1AfterPrint(Sender: TObject);
  private
    dNota1Master,
    dNota2Master,
    dNota3Master,
    dNota4Master,
    dAssiduidadeMaster:double;

    iAss1Master,
    iAss2Master,
    iAss3Master,
    iAss4Master,
    iSomaMaster,
    iqntdMat:integer;

    tudo,
    sCodMatMaster : String;
  public
    { Public declarations }
  end;

var
  FrmRelNotas: TFrmRelNotas;

implementation

uses UDados, URelAluTurma, uGeral, UPesqSerie;

{$R *.dfm}

procedure TFrmRelNotas.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  with FrmDados do
  begin
    LblData.Caption := CDS_Indices.fieldByName('DT_BOLETIM').AsString;
    DBX_Teste.Active:=False;
    DBX_Teste.SQL.Clear;
    DBX_Teste.SQL.Add('SELECT * FROM CADALUNO WHERE CODIGO = '+CDS_RelTurmaSerieAlu.fieldByName('CODALUNO').AsString);
    DBX_Teste.Active:=True;
    LblNome.Caption := DBX_Teste.fieldByName('NOME').AsString;
    LblRA.Caption := DBX_Teste.fieldByName('RA').AsString;
    LblRGM.Caption := DBX_Teste.fieldByName('RGM').AsString;
    LblCurso.Caption := CDS_Serie.fieldByName('GRAU').AsString;
    LblTurma.Caption := CDS_Serie.fieldByName('TURMA').AsString;
    LblAno.Caption := CDS_Serie.fieldByName('SERIE').AsString;
    LblPeriodo.Caption := CDS_Serie.fieldByName('PERIODO').AsString;
    LblNumero.Caption := CDS_RelTurmaSerieAlu.fieldByName('NUMERO').AsString;

    LblNota1Master.Caption := '';
    LblNota2Master.Caption := '';
    LblNota3Master.Caption := '';
    LblNota4Master.Caption := '';
    LblMediaMaster.Caption := '';
    LblAss1Master.Caption := '';
    LblAss2Master.Caption := '';
    LblAss3Master.Caption := '';
    LblAss4Master.Caption := '';
    LblTotalMaster.Caption := '';
    LblAulasMaster.Caption := '';

    dNota1Master:=0;
    dNota2Master:=0;
    dNota3Master:=0;
    dNota4Master:=0;
    dAssiduidadeMaster := 0;
    iAss1Master:=0;
    iAss2Master:=0;
    iAss3Master:=0;
    iAss4Master:=0;
    iSomaMaster:=0;
    iQntdMat:=0;
  end;
end;

procedure TFrmRelNotas.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
  i,
  iFaltas,
  iTotal,
  iqntd,
  iInicio,
  iFIm,
  iSoma,
  iQntdN : integer;
  dprovas,
  dtrabalhos,
  dProvasR,
  dTrabalhosR,
  dNotas1,
  dNotas2,
  dNotas3,
  dNotas4,
  dAssiduidade:double;
  sCodigoSerieAlu,
  sCodigoMat,
  SQLProvas,
  SQLTrabalhos:String;
  recuperacao : boolean;
begin
LblNota1Bim.Caption:='';
LblNota2Bim.Caption:='';
LblNota3Bim.Caption:='';
LblNota4Bim.Caption:='';
LblMedia.Caption:='';
LblAss1Bim.Caption:='';
LblAss2Bim.Caption:='';
LblAss3Bim.Caption:='';
LblAss4Bim.Caption:='';
LblTotal.Caption:='';
LblAulas.Caption:='';

SQLProvas := FrmDados.DBX_Avaliacoes.SQL.Text;
SQLTrabalhos := FrmDados.DBX_Trabalhos.SQL.Text;

if (FrmDados.CDS_SerieMat.RecordCount <> 0) then
begin
iSoma:=0;
iFaltas:=0;
dProvas:=0.0;
dTrabalhos:=0.0;
dNotas1:=0.0;
dNotas2:=0.0;
dNotas3:=0.0;
dNotas4:=0.0;
dAssiduidade:=0.0;

WITH FrmDados do
begin
  with FrmPesqSerie do
  begin
    if (CBXBimInicio.Text = '1º Bimestre')and (CBXBimFinal.Text = '1º Bimestre')then
    begin
      iInicio:=1;
      iFim:=1;
      iQntd:=1;
    end
    else if (CBXBimInicio.Text = '1º Bimestre')and (CBXBimFinal.Text = '2º Bimestre')then
    begin
      iInicio:=1;
      iFim:=2;
      iQntd:=2;
    end
    else if (CBXBimInicio.Text = '1º Bimestre')and (CBXBimFinal.Text = '3º Bimestre')then
    begin
      iInicio:=1;
      iFim:=3;
      iQntd:=3;
    end
    else if (CBXBimInicio.Text = '1º Bimestre')and (CBXBimFinal.Text = '4º Bimestre')then
    begin
      iInicio:=1;
      iFim:=4;
      iQntd:=4;
    end
    else if (CBXBimInicio.Text = '2º Bimestre')and (CBXBimFinal.Text = '2º Bimestre')then
    begin
      iInicio:=2;
      iFim:=2;
      iQntd:=1;
    end
    else if (CBXBimInicio.Text = '2º Bimestre')and (CBXBimFinal.Text = '3º Bimestre')then
    begin
      iInicio:=2;
      iFim:=3;
      iQntd:=2;
    end
    else if (CBXBimInicio.Text = '2º Bimestre')and (CBXBimFinal.Text = '4º Bimestre')then
    begin
      iInicio:=2;
      iFim:=4;
      iQntd:=3;
    end
    else if (CBXBimInicio.Text = '3º Bimestre')and (CBXBimFinal.Text = '3º Bimestre')then
    begin
      iInicio:=3;
      iFim:=3;
      iQntd:=1;
    end
    else if (CBXBimInicio.Text = '3º Bimestre')and (CBXBimFinal.Text = '4º Bimestre')then
    begin
      iInicio:=3;
      iFim:=4;
      iQntd:=2;
    end
    else if (CBXBimInicio.Text = '4º Bimestre')and (CBXBimFinal.Text = '4º Bimestre')then
    begin
      iInicio:=4;
      iFim:=4;
      iQntd:=1;
    end
    else
    begin
      iInicio:=0;
      iFim:=0;
      iQntd:=1;
    end;
    //endi
  end;
  //endth

  CDS_Avaliacoes.Active := False;
  CDS_Trabalhos.Active := False;
  for i:=iInicio to iFim do
  begin

    dProvas := 0.0;
    dTrabalhos := 0.0;
    iQntdN := 0;
    recuperacao := False;

    sCodigoSerieAlu := inttostr(FrmDados.CDS_RelTurmaSerieAlu.FieldByName('CODIGO').AsInteger);
    sCodigoMat := inttostr(FrmDados.CDS_SerieMat.fieldByName('CODMAT').AsInteger);


    DBX_Avaliacoes.Active := False;
    DBX_Avaliacoes.SQL.Clear;
    if i = 1 then
      DBX_Avaliacoes.SQL.Add('SELECT * FROM AVALIACOES WHERE CODRELALUSER = '+sCodigoSerieAlu+' and CODMAT = '+sCodigoMat+' and  BIM = '+quotedstr('1'))
    else if i = 2 then
      DBX_Avaliacoes.SQL.Add('SELECT * FROM AVALIACOES WHERE CODRELALUSER = '+sCodigoSerieAlu+' and CODMAT = '+sCodigoMat+' and  BIM = '+quotedstr('2'))
    else if i = 3 then
      DBX_Avaliacoes.SQL.Add('SELECT * FROM AVALIACOES WHERE CODRELALUSER = '+sCodigoSerieAlu+' and CODMAT = '+sCodigoMat+' and  BIM = '+quotedstr('3'))
    else
      DBX_Avaliacoes.SQL.Add('SELECT * FROM AVALIACOES WHERE CODRELALUSER = '+sCodigoSerieAlu+' and CODMAT = '+sCodigoMat+' and  BIM = '+quotedstr('4'));
    DBX_Avaliacoes.Active:=True;

    DBX_Trabalhos.Active := False;
    DBX_Trabalhos.SQL.Clear;
    if i = 1 then
      DBX_Trabalhos.SQL.Add('SELECT * FROM TRABALHOS WHERE CODRELALUSER = '+sCodigoSerieAlu+' and CODMAT = '+sCodigoMat+' and  BIM = '+quotedstr('1'))
    else if i = 2 then
      DBX_Trabalhos.SQL.Add('SELECT * FROM TRABALHOS WHERE CODRELALUSER = '+sCodigoSerieAlu+' and CODMAT = '+sCodigoMat+' and  BIM = '+quotedstr('2'))
    else if i = 3 then
      DBX_Trabalhos.SQL.Add('SELECT * FROM TRABALHOS WHERE CODRELALUSER = '+sCodigoSerieAlu+' and CODMAT = '+sCodigoMat+' and  BIM = '+quotedstr('3'))
    else
      DBX_Trabalhos.SQL.Add('SELECT * FROM TRABALHOS WHERE CODRELALUSER = '+sCodigoSerieAlu+' and CODMAT = '+sCodigoMat+' and  BIM = '+quotedstr('4'));
    DBX_TRABALHOS.Active:=True;

    DBX_Teste.Active := False;
    DBX_Teste.SQL.Clear;
    if i = 1 then
      DBX_Teste.SQL.Add('SELECT * FROM AVALIACOES  WHERE CODRELALUSER = '+sCodigoSerieAlu+' and CODMAT = '+sCodigoMat+' and  BIM = '+quotedstr('R1'))
    else if i = 2 then
      DBX_Teste.SQL.Add('SELECT * FROM AVALIACOES  WHERE CODRELALUSER = '+sCodigoSerieAlu+' and CODMAT = '+sCodigoMat+' and  BIM = '+quotedstr('R2'))
    else if i = 3 then
      DBX_Teste.SQL.Add('SELECT * FROM AVALIACOES  WHERE CODRELALUSER = '+sCodigoSerieAlu+' and CODMAT = '+sCodigoMat+' and  BIM = '+quotedstr('R3'))
    else
      DBX_Teste.SQL.Add('SELECT * FROM AVALIACOES  WHERE CODRELALUSER = '+sCodigoSerieAlu+' and CODMAT = '+sCodigoMat+' and  BIM = '+quotedstr('R4'));
    DBX_Teste.Active:=True;
    if (DBX_Teste.RecordCount <> 0)then
    begin
      tudo := 'R1';
      dPROVASR := DBX_Teste.FieldByName('NOTA').AsFloat;
      recuperacao := True;
    end
    else
    begin
      dPROVASR := 0.0;
    end;

    DBX_Teste.Active := False;
    DBX_Teste.SQL.Clear;
    if i = 1 then
      DBX_Teste.SQL.Add('SELECT * FROM TRABALHOS  WHERE CODRELALUSER = '+sCodigoSerieAlu+' and CODMAT = '+sCodigoMat+' and  BIM = '+quotedstr('R1'))
    else if i = 2 then
      DBX_Teste.SQL.Add('SELECT * FROM TRABALHOS  WHERE CODRELALUSER = '+sCodigoSerieAlu+' and CODMAT = '+sCodigoMat+' and  BIM = '+quotedstr('R2'))
    else if i = 3 then
      DBX_Teste.SQL.Add('SELECT * FROM TRABALHOS  WHERE CODRELALUSER = '+sCodigoSerieAlu+' and CODMAT = '+sCodigoMat+' and  BIM = '+quotedstr('R3'))
    else
      DBX_Teste.SQL.Add('SELECT * FROM TRABALHOS  WHERE CODRELALUSER = '+sCodigoSerieAlu+' and CODMAT = '+sCodigoMat+' and  BIM = '+quotedstr('R4'));
    DBX_Teste.Active:=True;
    if (DBX_Teste.RecordCount <> 0)then
    begin
      dTrabalhosR := DBX_Teste.FieldByName('NOTA').AsFloat;
      recuperacao := True;
    end
    else
    begin
      dTrabalhosR := 0.0;
    end;

    DBX_Teste.Active := False;
    DBX_Teste.SQL.Clear;
    if i = 1 then
      DBX_Teste.SQL.Add('SELECT SUM(NOTA) AS SOMA FROM TRABALHOS WHERE CODRELALUSER = '+sCodigoSerieAlu+' and CODMAT = ' + sCodigoMat+' and BIM = '+QUOTEDSTR('1'))
    else if i = 2 then
      DBX_Teste.SQL.Add('SELECT SUM(NOTA) AS SOMA FROM TRABALHOS WHERE CODRELALUSER = '+sCodigoSerieAlu+' and CODMAT = '+sCodigoMat+' and  BIM = '+quotedstr('2'))
    else if i = 3 then
      DBX_Teste.SQL.Add('SELECT SUM(NOTA) AS SOMA FROM TRABALHOS WHERE CODRELALUSER = '+sCodigoSerieAlu+' and CODMAT = '+sCodigoMat+' and  BIM = '+quotedstr('3'))
    else
      DBX_Teste.SQL.Add('SELECT SUM(NOTA) AS SOMA FROM TRABALHOS WHERE CODRELALUSER = '+sCodigoSerieAlu+' and CODMAT = '+sCodigoMat+' and  BIM = '+quotedstr('4'));
    DBX_Teste.Active := True;
    if (DBX_Teste.RecordCount <> 0)then //AND (FrmPesqSerie.DBLookupComboBox1.Text <> '')then
    begin
      dtrabalhos := DBX_Teste.fieldByName('SOMA').AsFloat;
    end;

    DBX_Teste.Active := False;
    DBX_Teste.SQL.Clear;
    if i = 1 then
      DBX_Teste.SQL.Add('SELECT SUM(NOTA) AS SOMA FROM AVALIACOES WHERE CODRELALUSER = '+sCodigoSerieAlu+' and CODMAT = ' + sCodigoMat+' and BIM = '+QUOTEDSTR('1'))
    else if i = 2 then
      DBX_Teste.SQL.Add('SELECT SUM(NOTA) AS SOMA FROM AVALIACOES WHERE CODRELALUSER = '+sCodigoSerieAlu+' and CODMAT = '+sCodigoMat+' and  BIM = '+quotedstr('2'))
    else if i = 3 then
      DBX_Teste.SQL.Add('SELECT SUM(NOTA) AS SOMA FROM AVALIACOES WHERE CODRELALUSER = '+sCodigoSerieAlu+' and CODMAT = '+sCodigoMat+' and  BIM = '+quotedstr('3'))
    else
      DBX_Teste.SQL.Add('SELECT SUM(NOTA) AS SOMA FROM AVALIACOES WHERE CODRELALUSER = '+sCodigoSerieAlu+' and CODMAT = '+sCodigoMat+' and  BIM = '+quotedstr('4'));
    DBX_Teste.Active := True;
    if (DBX_Teste.RecordCount <> 0) then
    begin
      dPROVAS := DBX_Teste.fieldByName('SOMA').AsFloat;
    end;

    if (CDS_SerieMat.fieldByName('QNTD_AULAS').AsString <> '')then
    begin
      dassiduidade := 100-((iFaltas / CDS_SerieMat.fieldByName('QNTD_AULAS').AsInteger)*100);
    end;
    //endi

    DBX_Teste.Active := False;
    DBX_Teste.SQL.Clear;
    DBX_Teste.SQL.Add('SELECT SUM(FALTAS) AS SOMA FROM ASSIDUIDADE WHERE CODRELALUSER = '+FrmDados.CDS_RelTurmaSerieAlu.FieldByName('CODIGO').AsString+' and CODMAT = '+FrmDados.CDS_SerieMat.fieldByName('CODMAT').AsString+' AND BIM = '+inttostr(i));
    DBX_Teste.Active := True;

    iFaltas := DBX_Teste.fieldByName('SOMA').AsInteger;
    iSoma := iSoma+iFaltas;

    iQntdN := DBX_Avaliacoes.RecordCount + DBX_Trabalhos.RecordCount;

    if(i = 1)then
    begin
      if (dProvas <> 0) or (dTrabalhos <> 0) or (dProvasR <> 0) or (dTrabalhosR <> 0) then
        if recuperacao then
        begin
         try
          if (dProvasR + dTrabalhosR) > strtofloat(calculaMediaIntegracao2(dprovas+dtrabalhos,iQntdN)) then
          begin
            dNotas1 := dProvasR + dTrabalhosR;
          end
          else
          begin
            dNotas1 := strtofloat(calculaMediaIntegracao2(dprovas+dtrabalhos,iQntdN));
          end;
          //endi
         except
          dNotas1 := dProvasR + dTrabalhosR;
         end;
         //endtry
        end
        else
        begin
          dNotas1 := strtofloat(calculaMediaIntegracao(dprovas+dtrabalhos));
        end;
        //endi

      if (recuperacao) and (dNotas1 = dProvasR + dTrabalhosR) then
        LblNota1Bim.Caption:=formatfloat('###,###,##0.0',dNotas1)+'*'
      else
        LblNota1Bim.Caption:=formatfloat('###,###,##0.0',dNotas1);

      //if dNotas1 < 5 then
      //  LblNota1Bim.Color := clSilver
      //else
      //  LblNota1Bim.Color := clWhite;

      if iFaltas <> 0 then
        LblAss1Bim.Caption := inttostr(iFaltas)
      else
        LblAss1Bim.Caption := '0';

    end;
    //endi

    if i=2 then
    begin
      if (dProvas <> 0) or (dTrabalhos <> 0) or (dProvasR <> 0) or (dTrabalhosR <> 0) then
        if recuperacao then
        begin
         try
          if (dProvasR + dTrabalhosR) > strtofloat(calculaMediaIntegracao2(dprovas+dtrabalhos,iQntdN)) then
          begin
            dNotas2 := dProvasR + dTrabalhosR;
          end
          else
          begin
            dNotas2 := strtofloat(calculaMediaIntegracao2(dprovas+dtrabalhos,iQntdN));
          end;
          //endi
         except
          dNotas2 := dProvasR + dTrabalhosR;
         end;
         //endtry
        end
        else
        begin
          dNotas2 := strtofloat(calculaMediaIntegracao(dprovas+dtrabalhos));
        end;
        //endi

      if (recuperacao) and (dNotas2 = dProvasR + dTrabalhosR) then
        LblNota2Bim.Caption:=formatfloat('###,###,##0.0',dNotas2)+'*'
      else
        LblNota2Bim.Caption:=formatfloat('###,###,##0.0',dNotas2);

      //if dNotas2 < 5 then
      //  LblNota2Bim.Color := clSilver
      //else
      //  LblNota2Bim.Color := clWhite;

      if iFaltas <> 0 then
        LblAss2Bim.Caption := inttostr(iFaltas)
      else
        LblAss2Bim.Caption := '0';

    end;
    //endi

    if i=3 then
    begin
      if (dProvas <> 0) or (dTrabalhos <> 0) or (dProvasR <> 0) or (dTrabalhosR <> 0) then
        if recuperacao then
        begin
         try
          if (dProvasR + dTrabalhosR) > strtofloat(calculaMediaIntegracao2(dprovas+dtrabalhos,iQntdN)) then
          begin
            dNotas3 := dProvasR + dTrabalhosR;
          end
          else
          begin
            dNotas3 := strtofloat(calculaMediaIntegracao2(dprovas+dtrabalhos,iQntdN));
          end;
          //endi
         except
          dNotas3 := dProvasR + dTrabalhosR;
         end;
         //endtry
        end
        else
        begin
          dNotas3 := strtofloat(calculaMediaIntegracao(dprovas+dtrabalhos));
        end;
        //endi

      if (recuperacao) and (dNotas3 = dProvasR + dTrabalhosR) then
        LblNota3Bim.Caption:=formatfloat('###,###,##0.0',dNotas3)+'*'
      else
        LblNota3Bim.Caption:=formatfloat('###,###,##0.0',dNotas3);

      //if dNotas3 < 5 then
      //  LblNota3Bim.Color := clSilver
      //else
      //  LblNota3Bim.Color := clWhite;

      if iFaltas <> 0 then
        LblAss3Bim.Caption := inttostr(iFaltas)
      else
        LblAss3Bim.Caption := '0';

    end;
    //endi

    if i=4 then
    begin
      if (dProvas <> 0) or (dTrabalhos <> 0) or (dProvasR <> 0) or (dTrabalhosR <> 0) then
        if recuperacao then
        begin
         try
          if (dProvasR + dTrabalhosR) > strtofloat(calculaMediaIntegracao2(dprovas+dtrabalhos,iQntdN)) then
          begin
            dNotas4 := dProvasR + dTrabalhosR;
          end
          else
          begin
            dNotas4 := strtofloat(calculaMediaIntegracao2(dprovas+dtrabalhos,iQntdN));
          end;
          //endi
         except
          dNotas4 := dProvasR + dTrabalhosR;
         end;
         //endtry
        end
        else
        begin
          dNotas4 := strtofloat(calculaMediaIntegracao(dprovas+dtrabalhos));
        end;
        //endi

      if (recuperacao) and (dNotas4 = dProvasR + dTrabalhosR) then
        LblNota4Bim.Caption:=formatfloat('###,###,##0.0',dNotas4)+'*'
      else
        LblNota4Bim.Caption:=formatfloat('###,###,##0.0',dNotas4);

      //if dNotas4 < 5 then
      //  LblNota4Bim.Color := clSilver
      //else
      //  LblNota4Bim.Color := clWhite;

      if iFaltas <> 0 then
        LblAss4Bim.Caption := inttostr(iFaltas)
      else
        LblAss4Bim.Caption := '0';

    end;
    //endi
  end;
  //endfor

  LblMedia.Caption:= formatfloat('###,###,##0.0',(dNotas1+dNotas2+dNotas3+dNotas4)/iqntd);

  if (CDS_SerieMat.fieldByName('QNTD_AULAS').AsString <> '') then//and (DBLookupComboBox1.Text <> '')then
  BEGIN
    dassiduidade:=100-((iSoma / CDS_SerieMat.fieldByName('QNTD_AULAS').AsInteger)*100);
    LblAulas.Caption := CDS_SerieMat.fieldByName('QNTD_AULAS').AsString;
    LblTotal.Caption := formatfloat('###,###,##0',dassiduidade);
  end;

  //Calcula nota da Materia Master
  if (CDS_SerieMat.FieldByName('CODMASTER').AsString <> '') then
  begin
    sCodMatMaster := CDS_SerieMat.FieldByName('CODMASTER').AsString;
    dNota1Master := dNota1Master + dNotas1;
    dNota2Master := dNota2Master + dNotas2;
    dNota3Master := dNota3Master + dNotas3;
    dNota4Master := dNota4Master + dNotas4;
    iQntdMaT := iQntdMat + 1;

    CDS_SerieMaster.Active := False;
    DBX_SeriemASTER.Active := False;
    DBX_SerieMaster.SQL.Clear;
    DBX_SerieMaster.SQL.Add('SELECT * FROM SERIEMASTER WHERE CODIGO = 0'+ sCodMatMaster);
    DBX_SerieMaster.Active := True;
    CDS_SerieMaster.Active:=True;



    if LblAss1Bim.Caption <> '' then
      iAss1Master := iAss1Master + strtoint(LblAss1BIM.Caption);
    if LblAss2Bim.Caption <> '' then
      iAss2Master := iAss2Master + strtoint(LblAss2BIM.Caption);
    if LblAss3Bim.Caption <> '' then
      iAss3Master := iAss3Master + strtoint(LblAss3BIM.Caption);
    if LblAss4Bim.Caption <> '' then
      iAss4Master := iAss4Master + strtoint(LblAss4BIM.Caption);

    if LblAulas.Caption <> '' then
      iSomaMaster := iSomaMaster + strtoint(LblAulas.caption);

    if (dAssiduidadeMaster = 0) or (LblTotal.Caption = '') then
      dAssiduidadeMaster := dAssiduidadeMaster + dAssiduidade
    else
      dAssiduidadeMaster := (dAssiduidadeMaster + dAssiduidade)/2;

    if LblNota1bim.Caption <> '' then
      LblNota1Master.Caption := calculaMediaIntegracao2(dNota1Master,iQntdMat);
    if LblNota2Bim.Caption <> '' then
      LblNota2Master.Caption := calculaMediaIntegracao2(dNota2Master,iQntdMat);
    if LblNota3Bim.Caption <> '' then
      LblNota3Master.Caption := calculaMediaIntegracao2(dNota3Master,iQntdMat);
    if LblNota4Bim.Caption <> '' then
      LblNota4Master.Caption := calculaMediaIntegracao2(dNota4Master,iQntdMat);
    if LblMedia.Caption <> '' then
      LblMediaMaster.Caption := calculaMediaintegracao2((dNota1Master+dNota2Master+dNota3Master+dNota4Master)/iQntd,iQntdMat);

    if LblAss1BIM.Caption <> '' then
      LblAss1Master.Caption := inttostr(iAss1Master);
    if LblAss2Bim.Caption <> '' then
      LblAss2Master.Caption := inttostr(iAss2Master);
    if LblAss3Bim.Caption <> '' then
      LblAss3Master.Caption := inttostr(iAss3Master);
    if LblAss4Bim.Caption <> '' then
      LblAss4Master.Caption := inttostr(iAss4Master);

    if iSomaMaster <> 0 then
      LblAulasMaster.Caption := inttostr(iSomaMaster)
    else
      LblAulasMaster.Caption := '';
    if dAssiduidadeMaster <> 0 then
      LblTotalMaster.Caption := formatfloat('###,###,##0',dAssiduidadeMaster)
  end;
  //endi

  CDS_Avaliacoes.Active:=False;
  CDS_AvaliacoesCODRELALUSER.DefaultExpression := CDS_RelTurmaSerieAlu.fieldByName('CODIGO').AsString;
  CDS_AvaliacoesCODMAT.DefaultExpression := CDS_SerieMat.fieldByName('CODMAT').AsString;
  DBX_Avaliacoes.Active:=False;
  DBX_Avaliacoes.SQL.Clear;
  DBX_Avaliacoes.SQL.Add(SQLProvas);
  DBX_Avaliacoes.Active := True;
  CDS_Avaliacoes.Active := True;

  CDS_Trabalhos.Active:=False;
  CDS_TrabalhosCODRELALUSER.DefaultExpression := CDS_RelTurmaSerieAlu.fieldByName('CODIGO').AsString;
  CDS_TrabalhosCODMAT.DefaultExpression := CDS_SerieMat.fieldByName('CODMAT').AsString;
  DBX_Trabalhos.Active:=False;
  DBX_Trabalhos.SQL.Clear;
  DBX_Trabalhos.SQL.Add(SQLTrabalhos);
  DBX_Trabalhos.Active := True;
  CDS_Trabalhos.Active := True;
end;
//endth
end
else
begin
  SHMateria.Width := 0;
  SHMateria.Height := 0;
  SHNota1.Width := 0;
  ShNota2.Width := 0;
  SHNota3.Width := 0;
  SHNota4.Width := 0;
  SHMedia.Width := 0;
  SHAss1.Width := 0;
  SHAss2.Width := 0;
  SHAss3.Width := 0;
  SHAss4.Width := 0;
  SHAulas.Width := 0;
  SHTotal.Width := 0;
  SHNota1.Height := 0;
  ShNota2.Height := 0;
  SHNota3.Height := 0;
  SHNota4.Height := 0;
  SHMedia.Height := 0;
  SHAss1.Height := 0;
  SHAss2.Height := 0;
  SHAss3.Height := 0;
  SHAss4.Height := 0;
  SHAulas.Height := 0;
  SHTotal.Height := 0;
end;
//endi
end;


procedure TFrmRelNotas.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
if iQntdMat = 0 then
begin
  SHNomeMaster.Width := 0;
  SHNomeMaster.Height := 0;
  SHNota1Master.Width := 0;
  ShNota2Master.Width := 0;
  SHNota3Master.Width := 0;
  SHNota4Master.Width := 0;
  SHMediaMaster.Width := 0;
  SHAss1Master.Width := 0;
  SHAss2Master.Width := 0;
  SHAss3Master.Width := 0;
  SHAss4Master.Width := 0;
  SHAulasMaster.Width := 0;
  SHTotalMaster.Width := 0;
  SHNota1Master.Height := 0;
  ShNota2Master.Height := 0;
  SHNota3Master.Height := 0;
  SHNota4Master.Height := 0;
  SHMediaMaster.Height := 0;
  SHAss1Master.Height := 0;
  SHAss2Master.Height := 0;
  SHAss3Master.Height := 0;
  SHAss4Master.Height := 0;
  SHAulasMaster.Height := 0;
  SHTotalMaster.Height := 0;
  DBNomeMaster.DataField := '';
  with FrmDados do
  begin
    CDS_SerieMaster.Active := False;
    DBX_SeriemASTER.Active := False;
    DBX_SerieMaster.SQL.Clear;
    DBX_SerieMaster.SQL.Add('SELECT * FROM SERIEMASTER WHERE CODIGO = 0');
    DBX_SerieMaster.Active := True;
    CDS_SerieMaster.Active:=True;
  end;
  //endth
end;
//endi
end;

procedure TFrmRelNotas.QuickRep1AfterPreview(Sender: TObject);
var
  laco:boolean;
begin
laco := True;
FrmDados.CDS_SerieMat.First;
  while laco do
  begin
    if FrmDados.CDS_SerieMat.FieldByName('CODigo').AsInteger = codSerie then
      laco := false
    else
      FrmDados.CDS_SerieMat.Next;
  end;
end;

procedure TFrmRelNotas.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
  vardir : String;
begin
  vardir := extractFilePath(application.ExeName);
  logo.Picture.LoadFromFile(vardir + 'logo.jpg'); 
end;

procedure TFrmRelNotas.QuickRep1AfterPrint(Sender: TObject);
var
  laco:boolean;
begin
laco := True;
FrmDados.CDS_SerieMat.First;
  while laco do
  begin
    if FrmDados.CDS_SerieMat.FieldByName('CODigo').AsInteger = codSerie then
      laco := false
    else
      FrmDados.CDS_SerieMat.Next;
  end;
end;

end.
