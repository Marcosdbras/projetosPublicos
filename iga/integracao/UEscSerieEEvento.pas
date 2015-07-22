unit UEscSerieEEvento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, Buttons, ExtCtrls, StdCtrls;

type
  TFrmEscSerieEEvento = class(TForm)
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    Panel1: TPanel;
    BtnConfirma: TSpeedButton;
    Label1: TLabel;
    EdAno: TEdit;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    CBSerie: TCheckBox;
    procedure BtnConfirmaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EdAnoKeyPress(Sender: TObject; var Key: Char);
    procedure EdAnoExit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEscSerieEEvento: TFrmEscSerieEEvento;

implementation

uses UDados, URelSerieAluProj, URelEventos;

{$R *.dfm}

procedure TFrmEscSerieEEvento.BtnConfirmaClick(Sender: TObject);
var
  sTurma:String;
begin
  with FrmDados do
  begin
    if CBSerie.Checked = True then
    begin
      CDS_ContasRecNubia.Active := False;
      DBX_ContasRecNubia.Active := False;
      DBX_ContasRecNubia.SQL.Clear;
      DBX_ContasRecNubia.SQL.Add('select n.* from contasarecebernubia n inner join (select c.* from cadaluno c inner join relturmaseriealu r on r.codaluno = c.codigo and r.codserie = 0' + CDS_Serie.FieldByName('CODIGO').AsString + ')');
      DBX_ContasRecNubia.SQL.Add(' as c on c.codigo = n.codalu and codevento = 0' + CDS_Evento.FieldByName('CODIGO').AsString+' order by c.nome');
      DBX_ContasRecNubia.Active := True;
      CDS_ContasRecNubia.Active := True;

      sTurma := 'Alunos do ' + CDS_Serie.FieldByName('SERIE').AsString + ' ' + CDS_Serie.FieldByName('TURMA').AsString + ' - ' + CDS_Serie.FieldByName('Grau').AsString + ' ' + CDS_Serie.FieldByName('PERIODO').AsString;

      //showmessage( DBX_ContasRecNubia.SQL.Text);
    end
    else
    begin
      CDS_ContasRecNubia.Active := False;
      DBX_ContasRecNubia.Active := False;
      DBX_ContasRecNubia.SQL.Clear;
      DBX_ContasRecNubia.SQL.Add('select * from contasarecebernubia where codevento = 0' + CDS_Evento.FieldByName('CODIGO').AsString);
      DBX_ContasRecNubia.Active := True;
      CDS_ContasRecNubia.Active := True;

      sTurma := 'Todos os alunos!';
    end;
    //endi
  end;
  //endth

  FrmRelEventos := TFrmRelEventos.Create(self);
  FrmRelEventos.LblTurma.Caption := sTurma;
  FrmRelEventos.LblEvento.Caption := FrmDados.CDS_Evento.FieldByName('NOME').AsString;
  FrmRelEventos.QuickRep1.PreviewModal;
  FrmRelEventos.Free;
end;

procedure TFrmEscSerieEEvento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := CaFree;
  FrmEscSerieEEvento := nil;
end;

procedure TFrmEscSerieEEvento.EdAnoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    EdAnoExit(Sender);
end;

procedure TFrmEscSerieEEvento.EdAnoExit(Sender: TObject);
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

procedure TFrmEscSerieEEvento.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

end.
