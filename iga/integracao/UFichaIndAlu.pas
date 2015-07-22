unit UFichaIndAlu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DBCtrls, ComCtrls, Menus, Grids, DBGrids,
  Buttons, Mask, DB;

type
  TFrmFichaIndAlu = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DBRadioGroup1: TDBRadioGroup;
    DBRadioGroup2: TDBRadioGroup;
    DBRadioGroup3: TDBRadioGroup;
    DBRadioGroup4: TDBRadioGroup;
    DBRadioGroup5: TDBRadioGroup;
    DBRadioGroup6: TDBRadioGroup;
    DBRadioGroup7: TDBRadioGroup;
    DBRadioGroup8: TDBRadioGroup;
    DBRadioGroup9: TDBRadioGroup;
    DBRadioGroup10: TDBRadioGroup;
    DBRadioGroup11: TDBRadioGroup;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    DBRadioGroup12: TDBRadioGroup;
    DBRadioGroup13: TDBRadioGroup;
    DBRadioGroup14: TDBRadioGroup;
    DBRadioGroup15: TDBRadioGroup;
    DBRadioGroup16: TDBRadioGroup;
    DBRadioGroup17: TDBRadioGroup;
    DBRadioGroup18: TDBRadioGroup;
    DBRadioGroup20: TDBRadioGroup;
    DBRadioGroup21: TDBRadioGroup;
    DBRadioGroup22: TDBRadioGroup;
    DBRadioGroup19: TDBRadioGroup;
    DBRadioGroup23: TDBRadioGroup;
    DBRadioGroup24: TDBRadioGroup;
    DBRadioGroup25: TDBRadioGroup;
    DBRadioGroup26: TDBRadioGroup;
    DBRadioGroup27: TDBRadioGroup;
    DBRadioGroup28: TDBRadioGroup;
    DBRadioGroup29: TDBRadioGroup;
    DBRadioGroup30: TDBRadioGroup;
    DBRadioGroup31: TDBRadioGroup;
    DBRadioGroup32: TDBRadioGroup;
    DBRadioGroup33: TDBRadioGroup;
    DBRadioGroup34: TDBRadioGroup;
    DBRadioGroup35: TDBRadioGroup;
    DBRadioGroup36: TDBRadioGroup;
    TabSheet6: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBEdit1: TDBEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    BtnSair: TBitBtn;
    BtnInserir: TBitBtn;
    BtnExcluir: TBitBtn;
    BtnPesqAlu: TBitBtn;
    BtnConfirmar: TBitBtn;
    BtnCancelar: TBitBtn;
    BtnIMprimir: TBitBtn;
    CBXBim: TDBComboBox;
    DBText1: TDBText;
    DBText2: TDBText;
    procedure BtnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnPesqAluClick(Sender: TObject);
    procedure DBLookupComboBox1Enter(Sender: TObject);
    procedure BtnInserirClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure BtnConfirmarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnIMprimirClick(Sender: TObject);
  private
    { Private declarations }
    Mensagem:boolean;
  public
    { Public declarations }
    codalu : integer;
  end;

var
  FrmFichaIndAlu: TFrmFichaIndAlu;

implementation

uses UDados, UPesqAlu, URelFichaIndAlu, UPesqSerie, uGeral;

{$R *.dfm}

procedure TFrmFichaIndAlu.BtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmFichaIndAlu.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  FrmFichaIndAlu := nil;
end;

procedure TFrmFichaIndAlu.BtnPesqAluClick(Sender: TObject);
begin
  if not(FrmDados.CDS_FichaIndAlu.State in [dsedit,dsinsert]) then
  begin
    FrmDados.CDS_FichaIndAlu.Edit;
  end;
  //endi
  FrmPesqAlu :=TFrmPesqAlu.Create(self);
  FrmPesqAlu.showmodal;
  FrmPesqAlu.free;
end;

procedure TFrmFichaIndAlu.DBLookupComboBox1Enter(Sender: TObject);
begin
  if FrmDados.CDS_FichaIndAlu.RecordCount = 0 then
  begin
    if not bFichaIndAluI then
    begin
      if not Mensagem then
        showmessage('Este usuário não possui privilégios para inserir nenhum registro!');
      //endi
      Mensagem := True;
      Exit;
    end;
    //endi
  end
  else
  begin
    if not bFichaIndAluA then
    begin
      if not Mensagem then
        showmessage('Este usuário não possui privilégios para editar este registro!');
      //endi
      Mensagem := True;
      Exit;
    end;
    //endi
  end;
  //endi
  if not(FrmDados.CDS_FichaIndAlu.State in [dsedit,dsinsert]) then
    FrmDados.CDS_FichaIndAlu.Edit
end;

procedure TFrmFichaIndAlu.BtnInserirClick(Sender: TObject);
begin
  if not bFichaIndAluI then
  begin
    showmessage('Este usuário não possui privilégios para inserir um registro!');
    Exit;
  end
  else
  begin
    FrmDados.CDS_FichaIndAlu.Append;
  end;
  //endi
end;

procedure TFrmFichaIndAlu.BtnExcluirClick(Sender: TObject);
begin
  if not bFichaIndAluE then
  begin
    showmessage('Este usuário não possui privilégios para excluir este registro!');
    Exit;
  end
  else
  begin
    FrmDados.CDS_FichaIndAlu.Delete;
  end;
  //endi
end;

procedure TFrmFichaIndAlu.BtnConfirmarClick(Sender: TObject);
var
  sCodigoSerieAlu,
  sCodigoMat,
  sBim2,
  sSerie:string;
  recuperacao : boolean;
  {dProvas,
  dTrabalhos:double;
  iqntd:integer;}
begin
  if(FrmDados.CDS_FichaIndAlu.State in [dsinsert,dsedit]) then
  begin
    recuperacao := False;

    if CBXBim.Text = '1º Bimestre' then
    begin
      sBim2 := ' AND BIM IN ('+quotedstr('1')+','+quotedstr('R1')+')';
    end
    else if CBXBim.Text = '2º Bimestre' then
    begin
      sBim2 := ' AND BIM IN ('+quotedstr('2')+','+quotedstr('R2')+')';
    end
    else if CBXBim.Text = '3º Bimestre' then
    begin
      sBim2 := ' AND BIM IN ('+quotedstr('3')+','+quotedstr('R3')+')';
    end
    else
    begin
      sBim2 := ' AND BIM IN ('+quotedstr('4')+','+quotedstr('R4')+')';
    end;
    //endi

    with FrmDados do
    begin
      CDS_RelTurmaSerieAlu.Active := False;
      DBX_RelTurmaSerieAlu.Active := False;
      DBX_RelTurmaSerieAlu.SQL.Clear;
      DBX_RelTurmaSerieAlu.SQL.Add('SELECT * FROM RELTURMASERIEALU WHERE CODALUNO = '+CDS_FichaIndAlu.FieldByName('CODALUNO').AsString);
      DBX_RelTurmaSerieAlu.Active := True;
      CDS_RelTurmaSerieAlu.Active := True;

      CDS_Serie.Active := False;
      DBX_Serie.Active := False;
      DBX_Serie.SQL.Clear;
      DBX_Serie.SQL.Add('SELECT * FROM SERIE WHERE CODIGO = '+CDS_RelTurmaSerieAlu.FieldByName('CODSERIE').AsString);
      DBX_Serie.Active := True;
      CDS_Serie.Active := True;

      sSerie := CDS_Serie.FieldByName('SERIE').AsString;
      sSerie := sSerie + ' ' + CDS_Serie.FieldByName('Turma').AsString;
      sSerie := sSerie + ' ' + CDS_Serie.FieldByName('GRAU').AsString;
      sSerie := sSerie + ' ' + CDS_Serie.FieldByName('PERIODO').AsString;

      CDS_FichaIndAlu.FieldByName('SERIE').AsString := sSerie;

      sCodigoSerieAlu := inttostr(FrmDados.CDS_RelTurmaSerieAlu.FieldByName('CODIGO').AsInteger);
      sCodigoMat := inttostr(FrmDados.CDS_FichaIndAlu.fieldByName('CODMAT').AsInteger);

      CDS_Avaliacoes.Active:=False;
      CDS_AvaliacoesCODRELALUSER.DefaultExpression := CDS_RelTurmaSerieAlu.fieldByName('CODIGO').AsString;
      CDS_AvaliacoesCODMAT.DefaultExpression := CDS_SerieMat.fieldByName('CODMAT').AsString;
      DBX_Avaliacoes.Active:=False;
      DBX_Avaliacoes.SQL.Clear;
      DBX_Avaliacoes.SQL.Add('SELECT * FROM AVALIACOES  WHERE CODRELALUSER = '+sCodigoSerieAlu+' and CODMAT = '+sCodigoMat+sBim+' order by BIM');
      DBX_Avaliacoes.Active:=True;
      CDS_Avaliacoes.Active:=True;
      iQntd := iQntd+CDS_Avaliacoes.RecordCount;

      CDS_Trabalhos.Active:=False;
      CDS_TrabalhosCODRELALUSER.DefaultExpression := CDS_RelTurmaSerieAlu.fieldByName('CODIGO').AsString;
      CDS_TrabalhosCODMAT.DefaultExpression := CDS_SerieMat.fieldByName('CODMAT').AsString;
      DBX_Trabalhos.Active:=False;
      DBX_Trabalhos.SQL.Clear;
      DBX_Trabalhos.SQL.Add('SELECT * FROM TRABALHOS WHERE CODRELALUSER = '+sCodigoSerieAlu+' and CODMAT = '+sCodigoMat+ sBIM+' order by BIM');
      DBX_Trabalhos.Active:=True;
      CDS_Trabalhos.Active:=True;
      iQntd := iQntd + CDS_Trabalhos.RecordCount;

      DBX_Teste.Active:=False;
      DBX_Teste.SQL.Clear;
      DBX_Teste.SQL.Add('SELECT * FROM AVALIACOES  WHERE CODRELALUSER = '+sCodigoSerieAlu+' and CODMAT = '+sCodigoMat+sBIM2+' and not BIM in ('+quotedstr('1')+','+quotedstr('2')+','+quotedstr('3')+','+quotedstr('4')+')');
      DBX_Teste.Active:=True;
      if (DBX_Teste.RecordCount <> 0)then
      begin
        dPROVAS := DBX_Teste.FieldByName('NOTA').AsFloat;
        recuperacao := True;
        iQntd := iQntd - DBX_Teste.RecordCount;
      end
      else
      begin
        dPROVAS := 0.0;
      end;
      //endi

      DBX_Teste.Active:=False;
      DBX_Teste.SQL.Clear;
      DBX_Teste.SQL.Add('SELECT * FROM Trabalhos  WHERE CODRELALUSER = '+sCodigoSerieAlu+' and CODMAT = '+sCodigoMat+sBIM2+' and not BIM in ('+quotedstr('1')+','+quotedstr('2')+','+quotedstr('3')+','+quotedstr('4')+')');
      DBX_Teste.Active:=True;
      if (DBX_Teste.RecordCount <> 0)then
      begin
        dTrabalhos := DBX_Teste.FieldByName('NOTA').AsFloat;
        recuperacao := True;
        iQntd := iQntd - DBX_Teste.RecordCount;
      end
      else
      begin
        dTrabalhos := 0.0;
      end;
      //endi

      CDS_FichaIndAlu.FieldByName('NOTA').AsFloat := strtofloat(formatfloat('###,###,##0.0',dprovas+dtrabalhos));

      DBX_Teste.Active:=False;
      DBX_Teste.SQL.Clear;
      DBX_Teste.SQL.Add('SELECT SUM(NOTA) AS SOMA FROM TRABALHOS  WHERE CODRELALUSER = '+sCodigoSerieAlu+' and CODMAT = ' + sCodigoMat+ sBIM2+' and not BIM in ('+quotedstr('R1')+','+quotedstr('R2')+','+quotedstr('R3')+','+quotedstr('R4')+')');
      showmessage(DBX_Teste.SQL.Text);
      DBX_Teste.Active:=True;
      if (DBX_Teste.RecordCount <> 0)then
      begin
        dtrabalhos := DBX_Teste.fieldByName('SOMA').AsFloat;
      end;
      //endi

      DBX_Teste.Active:=False;
      DBX_Teste.SQL.Clear;
      DBX_Teste.SQL.Add('SELECT SUM(NOTA) AS SOMA FROM AVALIACOES  WHERE CODRELALUSER = 0'+sCodigoSerieAlu+' and CODMAT = 0'+sCodigoMat+sBIM2+' and not BIM in ('+quotedstr('R1')+','+quotedstr('R2')+','+quotedstr('R3')+','+quotedstr('R4')+')');
      DBX_Teste.Active:=True;
      if (DBX_Teste.RecordCount <> 0)then
      begin
        dPROVAS := DBX_Teste.fieldByName('SOMA').AsFloat;
      end;
      //endi

      if not recuperacao then
      begin
        CDS_FichaIndAlu.FieldByName('NOTA').AsFloat := strtofloat(calculaMediaIntegracao(dprovas+dtrabalhos));
      end
      else
      begin
        if strtofloat(FrmPesqSerie.LblFinal.Caption) < strtofloat(calculaMediaIntegracao(dprovas+dtrabalhos)) then
          CDS_FichaIndAlu.FieldByName('NOTA').AsFloat := strtofloat(calculaMediaIntegracao2(dPROVAS+dtrabalhos,iQntd));
      end;
      //endi
      CDS_FichaIndAlu.Post;
    end;
    //endth
  end;
  //endi
end;

procedure TFrmFichaIndAlu.BtnCancelarClick(Sender: TObject);
begin
  FrmDados.CDS_FichaIndAlu.Cancel;
end;

procedure TFrmFichaIndAlu.BtnIMprimirClick(Sender: TObject);
begin
  FrmDados.DBX_Indices.Active := True;
  FrmDados.CDS_Indices.Active := True;
  FrmRelFichaIndAlu := TFrmRelFichaIndAlu.Create(self);
  FrmRelFichaIndAlu.QuickRep1.Preview;
  FrmRelFichaIndAlu.Free;
end;

end.
