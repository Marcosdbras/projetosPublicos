unit UEscSerie;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, Buttons, ExtCtrls, StdCtrls;

type
  TFrmEscSerie = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    EdAno: TEdit;
    Label1: TLabel;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EdAnoExit(Sender: TObject);
    procedure EdAnoKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    sRel : String;
  end;

var
  FrmEscSerie: TFrmEscSerie;

implementation

uses UDados, URelSerieAluProj, URelPgmtos, UEscSerieEProj,
  URelPgmtosAss1A4, uRelPgmtosAss5A8;

{$R *.dfm}

procedure TFrmEscSerie.SpeedButton1Click(Sender: TObject);
begin
  with FrmDados do
  begin
    CDS_RelTurmaSerieAlu.Active := False;
    DBX_RelTurmaSerieAlu.Active := False;
    DBX_RelTurmaSerieAlu.SQL.Clear;
    //DBX_RelTUrmaSerieAlu.SQL.Add('select * from relturmaseriealu where codserie = ' + CDS_Serie.FieldByName('CODIGO').AsString + ' order by numero');
    DBX_RelTUrmaSerieAlu.SQL.Add('SELECT R.*,A.nome FROM RELTURMASERIEALU R INNER JOIN CADALUNO A ON R.codaluno = A.codigo where R.codserie = ' + CDS_Serie.FieldByName('CODIGO').AsString + ' order by A.nome');
    DBX_RelTurmaSerieAlu.Active := True;
    CDS_RelTurmaSerieAlu.Active := True;

    if sRel = 'RelPgmto' then
    begin
      FrmRelPgmtos := TFrmRelPgmtos.Create(self);
      FrmRelPgmtos.QuickRep1.PreviewModal;
      FrmRelPgmtos.Free;
    end
    else
    begin
      if CDS_Serie.FieldByName('GRAU').AsString = 'FUND I' then
      begin
        FrmRelPgmtosAss1A4 := TFrmRelPgmtosAss1A4.Create(self);
        FrmRelPgmtosAss1A4.QuickRep1.PreviewModal;
        FrmRelPgmtosAss1A4.Free;

        FrmRelPgmtosAss5A8 := TFrmRelPgmtosAss5A8.Create(self);
        FrmRelPgmtosAss5A8.QuickRep1.PreviewModal;
        FrmRelPgmtosAss5A8.Free;
      end
      else if CDS_Serie.FieldByName('GRAU').AsString = 'FUND II' then
      begin
        FrmRelPgmtosAss1A4 := TFrmRelPgmtosAss1A4.Create(self);
        FrmRelPgmtosAss1A4.QuickRep1.PreviewModal;
        FrmRelPgmtosAss1A4.Free;
      end
      else
      begin
        if CDS_Serie.FieldByName('SERIE').AsString = '1º Ano' then
        begin
          FrmRelPgmtosAss1A4 := TFrmRelPgmtosAss1A4.Create(self);
          FrmRelPgmtosAss1A4.QuickRep1.PreviewModal;
          FrmRelPgmtosAss1A4.Free;

          FrmRelPgmtosAss5A8 := TFrmRelPgmtosAss5A8.Create(self);
          FrmRelPgmtosAss5A8.QuickRep1.PreviewModal;
          FrmRelPgmtosAss5A8.Free;
        end
        else
        begin
          FrmRelPgmtosAss1A4 := TFrmRelPgmtosAss1A4.Create(self);
          FrmRelPgmtosAss1A4.QuickRep1.PreviewModal;
          FrmRelPgmtosAss1A4.Free;
        end;
        //endi
      end;
      //endi
    end;
    //endi
  end;
  //endth
end;

procedure TFrmEscSerie.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := CaFree;
  FrmEscSerie := nil;
end;

procedure TFrmEscSerie.EdAnoExit(Sender: TObject);
begin
  with FrmDados do
  begin
    CDS_Serie.Active := False;
    DBX_Serie.Active := False;
    DBX_Serie.SQL.Clear;
    DBX_Serie.SQL.Add('select * from serie where ano = ' + quotedstr(EdAno.Text) + ' order by ordem');
    DBX_Serie.Active := True;
    CDS_Serie.Active := True;
  end;
  //endth
end;

procedure TFrmEscSerie.EdAnoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    EdAnoExit(Sender);
end;

end.
