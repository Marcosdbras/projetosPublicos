unit UCadAluno;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, ExtCtrls, Buttons, Mask, DB;

type
  TFrmCadAluno = class(TForm)
    DBText1: TDBText;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    edinome: TDBEdit;
    DBEEndereco: TDBEdit;
    DBEBairro: TDBEdit;
    DBETelefone: TDBEdit;
    DBEEmail: TDBEdit;
    DBECep: TDBEdit;
    DBEDtNasc: TDBEdit;
    MemoObs: TDBMemo;
    BtnConfirmar: TBitBtn;
    BtnCancelar: TBitBtn;
    DBRDGPeriodo: TDBRadioGroup;
    Label13: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit6: TDBEdit;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    DBRGProjeto: TDBRadioGroup;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBRDGDP: TDBRadioGroup;
    BtnObsPai: TBitBtn;
    BtnObsMae: TBitBtn;
    CHBRecibo: TCheckBox;
    CHBNota: TCheckBox;
    DBEdit4: TDBEdit;
    Label9: TLabel;
    BtnAdcAltTurma: TBitBtn;
    Label14: TLabel;
    DBEdit5: TDBEdit;
    BtnMensalidade: TBitBtn;
    BtnPeriodo: TBitBtn;
    BtnDP: TBitBtn;
    BtnProjeto: TBitBtn;
    procedure BtnMenuPrincClick(Sender: TObject);
    procedure BtnPesquisarClick(Sender: TObject);
    procedure BtnMenuClick(Sender: TObject);
//    procedure BtnCursosClick(Sender: TObject);
    procedure BtnConfirmarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BtnObsPaiClick(Sender: TObject);
    procedure BtnObsMaeClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBRGProjetoClick(Sender: TObject);
    procedure DBRDGDPClick(Sender: TObject);
    procedure edinomeKeyPress(Sender: TObject; var Key: Char);
    procedure BtnAdcAltTurmaClick(Sender: TObject);
    procedure DBRDGDPChange(Sender: TObject);
    procedure BtnMensalidadeClick(Sender: TObject);
    procedure BtnPeriodoClick(Sender: TObject);
    procedure DBRDGPeriodoClick(Sender: TObject);
    procedure BtnDPClick(Sender: TObject);
    procedure BtnProjetoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadAluno: TFrmCadAluno;

implementation

uses UMenuPrincipal, UPesqAluno, UDados,
  UPeriEspecial, UDP, UObsMae, UObsPai, UProjeto, UMensalidade;

{$R *.dfm}

procedure TFrmCadAluno.BtnMenuPrincClick(Sender: TObject);
begin
  FrmPrincipal.Show;
  FrmCadAluno.close;
end;

procedure TFrmCadAluno.BtnPesquisarClick(Sender: TObject);
begin
  FrmPesqAluno.Show;
  FrmCadAluno.Close;
end;

procedure TFrmCadAluno.BtnMenuClick(Sender: TObject);
begin
  Close;
end;





procedure TFrmCadAluno.BtnConfirmarClick(Sender: TObject);
begin
  if (FrmDados.CDS_CadAluno.State = dsEdit) or (FrmDados.CDS_CadAluno.State = dsInsert) then
  begin
    if CHBRecibo.Checked=True then
    begin
      FrmDados.CDS_CadAluno.FieldByName('RECIBO').AsString:='S';
    end
    else
    begin
      FrmDados.CDS_CadAluno.FieldByName('RECIBO').AsString:='N';
    end;

    if CHBNota.Checked=True then
    begin
      FrmDados.CDS_CadAluno.FieldByName('NOTA_FISCAL').AsString:='S';
    end
    else
    begin
      FrmDados.CDS_CadAluno.FieldByName('NOTA_FISCAL').AsString:='N';
    end;

    if (FrmDados.CDS_CadAluno.State = dsInsert) or (FrmDados.CDS_CadAluno.State = dsEdit) then
      FrmDados.CDS_CadAluno.Post;
    //endi

  end;
  //endi


  if frmpesqaluno.sopcao = 'I' then
  begin
    FrmDados.CDS_CadAluno.Append;
    edinome.SetFocus;
  end
  else
  begin
    Close;
  end;
  //endi
end;

procedure TFrmCadAluno.BtnCancelarClick(Sender: TObject);
begin
  if (FrmDados.CDS_CadAluno.State = dsEdit) or (FrmDados.CDS_CadAluno.State = dsInsert) then
    begin
      FrmDados.CDS_CadAluno.Cancel;
    end;
  //endi
  Close;
end;

procedure TFrmCadAluno.FormActivate(Sender: TObject);
begin
//  DBECodPai.SetFocus;  
end;

procedure TFrmCadAluno.BtnObsPaiClick(Sender: TObject);
begin
  FrmObsPai:=TFrmObsPai.Create(self);
  FrmObsPai.MemoObs.Text:=FrmDados.CDS_CadAluno.fieldByName('OBS_Pai').AsString;
  FrmObsPai.ShowModal;
  FrmObsPai.Free;
end;

procedure TFrmCadAluno.BtnObsMaeClick(Sender: TObject);
begin
  FrmObsMae:=TFrmObsMae.Create(self);
  FrmObsMae.MemoObs.Text:=FrmDados.CDS_CadAluno.fieldByName('OBS_MAE').AsString;
  FrmObsMae.ShowModal;
  FrmObsMae.Free;
end;

procedure TFrmCadAluno.FormCreate(Sender: TObject);
begin
  if  FrmDados.CDS_CadAluno.FieldByName('RECIBO').AsString='S' then
  begin
    CHBRecibo.Checked:=True;
  end
  else
  begin
    CHBRecibo.Checked:=False;
  end;

  if  FrmDados.CDS_CadAluno.FieldByName('NOTA_FISCAL').AsString='S' then
  begin
    CHBNota.Checked:=True;
  end
  else
  begin
    CHBNota.Checked:=False;
  end;
end;

procedure TFrmCadAluno.DBRGProjetoClick(Sender: TObject);
begin
  if(DBRGProjeto.ItemIndex=0)then
  begin
    with FrmDados do
    begin
      CDS_Projeto.Active:=False;
//      CDS_ProjetoCODALUNO.DefaultExpression:=CDS_CadAluno.fieldByName('CODIGO').AsString;
      DBX_Projeto.Active:=False;
      DBX_Projeto.SQL.Clear;
      DBX_Projeto.SQL.Add('SELECT * FROM PROJETO WHERE CODALUNO = '+CDS_CADALUNO.FieldByName('CODIGO').AsString);
      DBX_Projeto.Active:=True;
      CDS_Projeto.Active:=True;
    end;
    FrmProjeto:=TFrmProjeto.Create(self);
    FrmProjeto.ShowModal;
    FrmProjeto.Free;
  end;
end;

procedure TFrmCadAluno.DBRDGDPClick(Sender: TObject);
begin
  FrmDados.CDS_CadAluno.Post;
  FrmDados.CDS_CadAluno.Edit;
  if(DBRDGDP.ItemIndex=0)then
  begin
    with FrmDados do
    begin
      CDS_DP.Active:=False;
      CDS_DPCODALUNO.DefaultExpression:=CDS_CadAluno.fieldByName('CODIGO').AsString;
      DBX_DP.Active:=False;
      DBX_DP.SQL.Clear;
      DBX_DP.SQL.Add('SELECT * FROM DP WHERE CODALUNO = '+CDS_CADALUNO.FieldByName('CODIGO').AsString);
      DBX_DP.Active:=True;
      CDS_DP.Active:=True;
    end;
    FrmDP:=TFrmDP.Create(self);
    FrmDP.ShowModal;
    FrmDP.Free;
  end;
end;

procedure TFrmCadAluno.edinomeKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    begin
      SelectNext(ActiveControl,True,True);
    end;
  end;

  
end;

procedure TFrmCadAluno.BtnAdcAltTurmaClick(Sender: TObject);
begin
  frmpesqaluno.BtnAdcAltTurma.Click;
end;

procedure TFrmCadAluno.DBRDGDPChange(Sender: TObject);
begin
{if ( then
begin
  if(DBRDGDP.ItemIndex=0)then
  begin
    with FrmDados do
    begin
      CDS_DP.Active:=False;
      CDS_DPCODALUNO.DefaultExpression:=CDS_CadAluno.fieldByName('CODIGO').AsString;
      DBX_DP.Active:=False;
      DBX_DP.SQL.Clear;
      DBX_DP.SQL.Add('SELECT * FROM DP WHERE CODALUNO = '+CDS_CADALUNO.FieldByName('CODIGO').AsString);
      DBX_DP.Active:=True;
      CDS_DP.Active:=True;
    end;
    //endth
    FrmDP:=TFrmDP.Create(self);
    FrmDP.Show;
    FrmDP.Free;
  end;
  //endi
end;
//endi}
end;

procedure TFrmCadAluno.BtnMensalidadeClick(Sender: TObject);
var
  zerar:boolean;
begin
with FrmDados do
begin
  CDS_Mensalidade.Active:=False;
  CDS_MensalidadeCODALUNO.DefaultExpression:=CDS_CadAluno.fieldByName('CODIGO').AsString;
  CDS_MensalidadeANOLETIVO.DefaultExpression:=CDS_Indices.FieldByName('ANO').AsString;
  DBX_Mensalidade.Active:=False;
  DBX_Mensalidade.SQL.Clear;
  DBX_Mensalidade.SQL.Add('SELECT * FROM MENSALIDADE WHERE CODALUNO = ' + CDS_CadAluno.fieldByName('CODIGO').AsString+' and ANOLETIVO = ' + CDS_Indices.FieldByName('ANO').AsString + ' AND CODDP IS NULL AND CODPROJETO IS NULL');
  DBX_Mensalidade.Active:=True;
  CDS_Mensalidade.Active:=True;

  if FrmDados.CDS_Mensalidade.RecordCount <> 0 then
  begin
    CDS_Mensalidade.Edit;
    zerar:=false;
  end
  else
  begin
    CDS_Mensalidade.Append;
    zerar:=true;
  end;

  FrmMensalidade:=TFrmMensalidade.Create(self);
  FrmMensalidade.EDAno.Text:=FrmDados.CDS_Indices.fieldByName('ANO').AsString;
  if zerar then
  begin
    with FrmMensalidade do
    begin
      CDS_Mensalidade.FieldByName('JAN').AsString:='N';
      CDS_Mensalidade.FieldByName('FEV').AsString:='N';
      CDS_Mensalidade.FieldByName('MAR').AsString:='N';
      CDS_Mensalidade.FieldByName('ABR').AsString:='N';
      CDS_Mensalidade.FieldByName('MAI').AsString:='N';
      CDS_Mensalidade.FieldByName('JUN').AsString:='N';
      CDS_Mensalidade.FieldByName('JUL').AsString:='N';
      CDS_Mensalidade.FieldByName('AGO').AsString:='N';
      CDS_Mensalidade.FieldByName('SETE').AsString:='N';
      CDS_Mensalidade.FieldByName('OUT').AsString:='N';
      CDS_Mensalidade.FieldByName('NOV').AsString:='N';
      CDS_Mensalidade.FieldByName('DEZ').AsString:='N';
    end;
  end;
  FrmMensalidade.ShowModal;
  FrmMensalidade.Free;
end;
//endth
end;

procedure TFrmCadAluno.BtnPeriodoClick(Sender: TObject);
begin
  if(DBRDGPeriodo.ItemIndex=4)then
  begin
    FrmPerEspecial:=TFrmPerEspecial.Create(self);
    FrmPerEspecial.ShowModal;
    FrmPerEspecial.Free;
  end;
end;

procedure TFrmCadAluno.DBRDGPeriodoClick(Sender: TObject);
begin
  if(DBRDGPeriodo.ItemIndex=4)then
  begin
    FrmPerEspecial:=TFrmPerEspecial.Create(self);
    FrmPerEspecial.ShowModal;
    FrmPerEspecial.Free;
  end;
end;

procedure TFrmCadAluno.BtnDPClick(Sender: TObject);
begin
  if(DBRDGDP.ItemIndex=0)then
  begin
    with FrmDados do
    begin
      CDS_DP.Active:=False;
      CDS_DPCODALUNO.DefaultExpression:=CDS_CadAluno.fieldByName('CODIGO').AsString;
      DBX_DP.Active:=False;
      DBX_DP.SQL.Clear;
      DBX_DP.SQL.Add('SELECT * FROM DP WHERE CODALUNO = '+CDS_CADALUNO.FieldByName('CODIGO').AsString);
      DBX_DP.Active:=True;
      CDS_DP.Active:=True;
    end;
    FrmDP:=TFrmDP.Create(self);
    FrmDP.ShowModal;
    FrmDP.Free;
  end;
end;

procedure TFrmCadAluno.BtnProjetoClick(Sender: TObject);
begin
  if(DBRGProjeto.ItemIndex=0)then
  begin
    with FrmDados do
    begin
      CDS_Projeto.Active:=False;
//      CDS_ProjetoCODALUNO.DefaultExpression:=CDS_CadAluno.fieldByName('CODIGO').AsString;
      DBX_Projeto.Active:=False;
      DBX_Projeto.SQL.Clear;
      DBX_Projeto.SQL.Add('SELECT * FROM PROJETO WHERE CODALUNO = '+CDS_CADALUNO.FieldByName('CODIGO').AsString);
      DBX_Projeto.Active:=True;
      CDS_Projeto.Active:=True;
    end;
    FrmProjeto:=TFrmProjeto.Create(self);
    FrmProjeto.ShowModal;
    FrmProjeto.Free;
  end;
end;

end.
