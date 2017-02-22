unit uFrmCadastroLayout;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, DBCtrls, ExtCtrls, StdCtrls, Mask, DBClient, MidasLib,
  RzPanel;

type
  TfrmCadastroLayout = class(TForm)
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    dsLayout: TDataSource;
    DBGrid1: TDBGrid;
    RzGroupBox1: TRzGroupBox;
    DBEdit1: TDBEdit;
    RzGroupBox2: TRzGroupBox;
    RzGroupBox3: TRzGroupBox;
    RzGroupBox4: TRzGroupBox;
    RzGroupBox5: TRzGroupBox;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    RzGroupBox6: TRzGroupBox;
    edtDenominacao: TEdit;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit5Exit(Sender: TObject);
    procedure edtDenominacaoChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtDenominacaoExit(Sender: TObject);
  private
    procedure SetDataset(pValue: TDataSet);
    procedure DatasetNewRecord(DataSet: TDataSet);
    procedure DatasetBeforePost(DataSet: TDataSet);
  public
    property Dataset: TDataSet write SetDataset;
  end;

implementation

{$R *.dfm}

{ TfrmCadastroLayout }

procedure TfrmCadastroLayout.DatasetBeforePost(DataSet: TDataSet);
var vIdx: Integer;
begin
  for vIdx:=0 to dsLayout.DataSet.FieldCount-1 do
    if (dsLayout.DataSet.Fields[vIdx].IsNull) or (dsLayout.DataSet.Fields[vIdx].AsString=EmptyStr) then
    begin
      dsLayout.DataSet.Fields[vIdx].FocusControl;
      raise Exception.Create('Campo "'+dsLayout.DataSet.Fields[vIdx].DisplayLabel+'" é obrigatório.');
    end;
end;

procedure TfrmCadastroLayout.DatasetNewRecord(DataSet: TDataSet);
begin
  DBEdit1.SetFocus;
end;

procedure TfrmCadastroLayout.DBEdit5Exit(Sender: TObject);
begin
  if dsLayout.DataSet.State in [dsInsert, dsEdit] then
    if Application.MessageBox('Deseja salvar este registro?','Confirmação', mb_YesNo+mb_IconQuestion+mb_DefButton1)=idYes then
    begin
      dsLayout.DataSet.Post;
      if Application.MessageBox('Deseja incluir um novo registro?','Confirmação', mb_YesNo+mb_IconQuestion+mb_DefButton1)=idYes then
        dsLayout.DataSet.Insert;
    end;
end;

procedure TfrmCadastroLayout.edtDenominacaoChange(Sender: TObject);
begin
  dsLayout.DataSet.Filtered:=False;
  dsLayout.DataSet.Filter:='Campo like '+QuotedStr(edtDenominacao.Text+'%');
  dsLayout.DataSet.Filtered:=True;
end;

procedure TfrmCadastroLayout.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dsLayout.DataSet.Filtered:=False;
end;

procedure TfrmCadastroLayout.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TfrmCadastroLayout.SetDataset(pValue: TDataSet);
begin
  dsLayout.DataSet:=pValue;
  dsLayout.DataSet.OnNewRecord:=DatasetNewRecord;
  dsLayout.DataSet.BeforePost:=DatasetBeforePost;
end;

procedure TfrmCadastroLayout.edtDenominacaoExit(Sender: TObject);
begin
  DBGrid1.SetFocus;
end;

end.
