unit URelAlunosAbaixoMedia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TFrmRelAlunosAbaixoMedia = class(TForm)
    QuickRep1: TQuickRep;
    QRBand2: TQRBand;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel2: TQRLabel;
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
    SHMateria: TQRShape;
    QRDBText2: TQRDBText;
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
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    procedure QuickRep1AfterPreview(Sender: TObject);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    sqlProvas,
    sqlTrabalhos,
    sqlFaltas,
    sqlRelTurmaSerieAlu:String;
  public
    { Public declarations }
  end;

var
  FrmRelAlunosAbaixoMedia: TFrmRelAlunosAbaixoMedia;

implementation

uses UDados, UPesqSerie, uGeral;

{$R *.dfm}

procedure TFrmRelAlunosAbaixoMedia.QuickRep1AfterPreview(Sender: TObject);
begin
  with FrmDados do
  begin
    sqlProvas := DBX_Avaliacoes.SQL.Text;
    sqlTrabalhos := DBX_Trabalhos.SQL.Text;
    sqlFaltas := DBX_Assiduidade.SQL.Text;
    sqlRelTurmaSerieAlu := DBX_RelTurmaSerieAlu.SQL.Text;
  end;
  //endth
end;

procedure TFrmRelAlunosAbaixoMedia.QRBand2BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
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
  SQLTrabalhos :String;
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
        iInicio := 0;
        iFim := 0;
        iQntd := 1;
      end;
      //endi
    end;
    //endth

    CDS_Avaliacoes.Active := False;
    CDS_Trabalhos.Active := False;
    for i:=iInicio to iFim do
    begin

      dProvas:=0.0;
      dTrabalhos:=0.0;
      iQntdN := 0;
      recuperacao := False;

      sCodigoSerieAlu:=inttostr(FrmDados.CDS_RelTurmaSerieAlu.FieldByName('CODIGO').AsInteger);
      sCodigoMat:=inttostr(FrmDados.CDS_SerieMat.fieldByName('CODMAT').AsInteger);


      DBX_Avaliacoes.Active:=False;
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

      DBX_Trabalhos.Active:=False;
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

      DBX_Teste.Active:=False;
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
        dPROVASR := DBX_Teste.FieldByName('NOTA').AsFloat;
        recuperacao := True;
      end
      else
      begin
        dPROVASR := 0.0;
      end;
      //endi

      DBX_Teste.Active:=False;
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
      //endi

      DBX_Teste.Active:=False;
      DBX_Teste.SQL.Clear;
      if i = 1 then
        DBX_Teste.SQL.Add('SELECT SUM(NOTA) AS SOMA FROM TRABALHOS WHERE CODRELALUSER = '+sCodigoSerieAlu+' and CODMAT = ' + sCodigoMat+' and BIM = '+QUOTEDSTR('1'))
      else if i = 2 then
        DBX_Teste.SQL.Add('SELECT SUM(NOTA) AS SOMA FROM TRABALHOS WHERE CODRELALUSER = '+sCodigoSerieAlu+' and CODMAT = '+sCodigoMat+' and  BIM = '+quotedstr('2'))
      else if i = 3 then
        DBX_Teste.SQL.Add('SELECT SUM(NOTA) AS SOMA FROM TRABALHOS WHERE CODRELALUSER = '+sCodigoSerieAlu+' and CODMAT = '+sCodigoMat+' and  BIM = '+quotedstr('3'))
      else
        DBX_Teste.SQL.Add('SELECT SUM(NOTA) AS SOMA FROM TRABALHOS WHERE CODRELALUSER = '+sCodigoSerieAlu+' and CODMAT = '+sCodigoMat+' and  BIM = '+quotedstr('4'));
      DBX_Teste.Active:=True;
      if (DBX_Teste.RecordCount <> 0) AND (FrmPesqSerie.DBLookupComboBox1.Text <> '')then
      begin
        dtrabalhos := DBX_Teste.fieldByName('SOMA').AsFloat;
      end;
      //endi

      DBX_Teste.Active:=False;
      DBX_Teste.SQL.Clear;
      if i = 1 then
        DBX_Teste.SQL.Add('SELECT SUM(NOTA) AS SOMA FROM AVALIACOES WHERE CODRELALUSER = '+sCodigoSerieAlu+' and CODMAT = ' + sCodigoMat+' and BIM = '+QUOTEDSTR('1'))
      else if i = 2 then
        DBX_Teste.SQL.Add('SELECT SUM(NOTA) AS SOMA FROM AVALIACOES WHERE CODRELALUSER = '+sCodigoSerieAlu+' and CODMAT = '+sCodigoMat+' and  BIM = '+quotedstr('2'))
      else if i = 3 then
        DBX_Teste.SQL.Add('SELECT SUM(NOTA) AS SOMA FROM AVALIACOES WHERE CODRELALUSER = '+sCodigoSerieAlu+' and CODMAT = '+sCodigoMat+' and  BIM = '+quotedstr('3'))
      else
        DBX_Teste.SQL.Add('SELECT SUM(NOTA) AS SOMA FROM AVALIACOES WHERE CODRELALUSER = '+sCodigoSerieAlu+' and CODMAT = '+sCodigoMat+' and  BIM = '+quotedstr('4'));
      DBX_Teste.Active:=True;
      if (DBX_Teste.RecordCount <> 0) then
      begin
        dPROVAS:=DBX_Teste.fieldByName('SOMA').AsFloat;
      end;
      //endi

      if (CDS_SerieMat.fieldByName('QNTD_AULAS').AsString <> '')then
      begin
        dassiduidade:=100-((iFaltas / CDS_SerieMat.fieldByName('QNTD_AULAS').AsInteger)*100);
      end;
      //endi

      DBX_Teste.Active:=False;
      DBX_Teste.SQL.Clear;
      DBX_Teste.SQL.Add('SELECT SUM(FALTAS) AS SOMA FROM ASSIDUIDADE WHERE CODRELALUSER = '+FrmDados.CDS_RelTurmaSerieAlu.FieldByName('CODIGO').AsString+' and CODMAT = '+FrmDados.CDS_SerieMat.fieldByName('CODMAT').AsString+' AND BIM = '+inttostr(i));
      DBX_Teste.Active:=True;

      iFaltas := DBX_Teste.fieldByName('SOMA').AsInteger;
      iSoma:=iSoma+iFaltas;

      iQntdN := DBX_Avaliacoes.RecordCount + DBX_Trabalhos.RecordCount;

      if(i=1)then
      begin
        if (dProvas <> 0) or (dTrabalhos <> 0) then
          if recuperacao then
          begin
            if dProvasR + dTrabalhosR > strtofloat(calculaMediaIntegracao(dprovas+dtrabalhos)) then
              dNotas1 := dProvasR + dTrabalhosR
            else
              dNotas1 := strtofloat(calculaMediaIntegracao2(dprovas+dtrabalhos,iQntdN));
            //endi
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
        if dNotas1 < 5 then
          LblNota1Bim.Color := clSilver
        else
          LblNota1Bim.Color := clWhite;
        if iFaltas <> 0 then
          LblAss1Bim.Caption := inttostr(iFaltas)
        else
          LblAss1Bim.Caption := '0';
      end;
      //endi

      if i=2 then
      begin
        if (dProvas <> 0) or (dTrabalhos <> 0) then
          if recuperacao then
          begin
            if dProvasR + dTrabalhosR > strtofloat(calculaMediaIntegracao(dprovas+dtrabalhos)) then
              dNotas2 := dProvasR + dTrabalhosR
            else
              dNotas2 := strtofloat(calculaMediaIntegracao2(dprovas+dtrabalhos,iQntdN));
            //endi
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
        if dNotas2 < 5 then
          LblNota2Bim.Color := clSilver
        else
          LblNota2Bim.Color := clWhite;
        if iFaltas <> 0 then
          LblAss2Bim.Caption := inttostr(iFaltas)
        else
          LblAss2Bim.Caption := '0';
      end;
      //endi

      if i=3 then
      begin
        if (dProvas <> 0) or (dTrabalhos <> 0) then
          if recuperacao then
          begin
            if dProvasR + dTrabalhosR > strtofloat(calculaMediaIntegracao(dprovas+dtrabalhos)) then
              dNotas3 := dProvasR + dTrabalhosR
            else
              dNotas3 := strtofloat(calculaMediaIntegracao2(dprovas+dtrabalhos,iQntdN));
            //endi
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
        if dNotas3 < 5 then
          LblNota3Bim.Color := clSilver
        else
          LblNota3Bim.Color := clWhite;
        if iFaltas <> 0 then
          LblAss3Bim.Caption := inttostr(iFaltas)
        else
          LblAss3Bim.Caption := '0';
      end;
      //endi

      if i=4 then
      begin
        if (dProvas <> 0) or (dTrabalhos <> 0) then
          if recuperacao then
          begin
            if dProvasR + dTrabalhosR > strtofloat(calculaMediaIntegracao(dprovas+dtrabalhos)) then
              dNotas4 := dProvasR + dTrabalhosR
            else
              dNotas4 := strtofloat(calculaMediaIntegracao2(dprovas+dtrabalhos,iQNtdN));
            //endi
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
        if dNotas4 < 5 then
          LblNota4Bim.Color := clSilver
        else
          LblNota4Bim.Color := clWhite;
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
      LblAulas.Caption:=CDS_SerieMat.fieldByName('QNTD_AULAS').AsString;
      LblTotal.Caption:=formatfloat('###,###,##0',dassiduidade);
    end;
    //endi
  end;
  //endth
end;

procedure TFrmRelAlunosAbaixoMedia.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  with FrmDados do
  begin
    CDS_RelTurmaSerieAlu.Active:=False;
    DBX_RelTurmaSerieAlu.Active:=False;
    DBX_RelTurmaSerieAlu.SQL.Clear;
    DBX_RelTurmaSerieAlu.SQL.Add(SQLRelTurmaSerieAlu);
    DBX_RelTurmaSerieAlu.Active := True;
    CDS_RelTurmaSerieAlu.Active := True;

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

    CDS_Assiduidade.Active:=False;
    CDS_AssiduidadeCODRELALUSER.DefaultExpression := CDS_RelTurmaSerieAlu.fieldByName('CODIGO').AsString;
    CDS_AssiduidadeCODMAT.DefaultExpression := CDS_SerieMat.fieldByName('CODMAT').AsString;
    DBX_Assiduidade.Active:=False;
    DBX_Assiduidade.SQL.Clear;
    DBX_Assiduidade.SQL.Add(SQLFaltas);
    DBX_Assiduidade.Active := True;
    CDS_Assiduidade.Active := True;
  end;
  //endth
end;

end.
