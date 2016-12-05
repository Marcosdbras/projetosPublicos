unit UFIltroContasNubia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TFrmFiltroContasNubia = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    BtnOK: TBitBtn;
    BtnCancel: TBitBtn;
    EDInformacao: TEdit;
    CBXCampo: TComboBox;
    CBXOperacao: TComboBox;
    procedure BtnOKClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
//    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    SQL: String;
  end;

var
  FrmFiltroContasNubia: TFrmFiltroContasNubia;

implementation

uses UDados, UPesqContasRec, UFrmPesqContasRecNubia;

{$R *.dfm}

procedure TFrmFiltroContasNubia.BtnOKClick(Sender: TObject);
var
  CONDICAO:INTEGER;
  CAMPO:STRING;
  OPERACAO:STRING;
  ORDEM:STRING;
begin

  if(EDInformacao.Text='')then
    Exit;
  CONDICAO := CBXCampo.ItemIndex;
  CASE CONDICAO OF
    0:CAMPO:='AND R.CODIGO ';
    1:CAMPO:='AND NOME ';
    2:CAMPO:='AND R.VALOR ';
    3:CAMPO:='AND R.TIPO ';
  ELSE
    EXIT;
  END;

  ordem:=' ORDER BY '+quotedstr(FrmPesqContasRecNubia.CBXOrdem.Text);

  CONDICAO:=CBXOperacao.ItemIndex;
  CASE CONDICAO OF
    0:OPERACAO:='= ';
    1:OPERACAO:='<> ';
    2:OPERACAO:='<= ';
    3:OPERACAO:='>= ';
    4:OPERACAO:='< ';
    5:OPERACAO:='> ';
    6:OPERACAO:='LIKE '+QUOTEDSTR('%'+EDInformacao.Text+'%');
  ELSE
    EXIT;
  END;

  if (CBXOperacao.ItemIndex<=5) then
  begin
    SQL := CAMPO + OPERACAO + QUOTEDSTR(EDInformacao.Text);// + ORDEM;
  end
  else
  begin
    SQL := CAMPO + OPERACAO;// + ORDEM;
  end;

  WITH FrmDados do
  begin
    DBX_ContasRecNubia.Active:=False;
    DBX_ContasRecNubia.SQL.Clear;
    if(FrmPesqContasRecNubia.Caption = 'Pesquisa de contas a receber') then
    begin
      DBX_ContasRecNubia.SQL.Add('SELECT R.* FROM CONTASARECEBERNubia R INNER JOIN CADALUNO C ON R.CODAlu = C.CODIGO AND pago is null '+SQL + ordem);
      if (FrmPesqContasRecNubia.EDInicio.Text <> '  .  .    ') and (FrmPesqContasRecNubia.EDFim.Text <> '  .  .    ') then
      begin
        DBX_ContasRecNubia.SQL.Clear;
        DBX_ContasRecNubia.SQL.Add('SELECT R.* FROM CONTASARECEBERNubia R INNER JOIN CADALUNO C ON R.CODALU = C.CODIGO AND R.DATA between '+quotedstr(FrmPesqContasRecNubia.EdInicio.Text)+' AND '+quotedstr(FrmPesqContasRecNubia.EdFim.Text)+' AND PAGO IS NULL '+SQL + ordem);
        //showmessage('filtro'+DBX_ContasrECNubia.SQL.Text);
      end;
      //endi
    end
    else
    begin
      DBX_ContasRecNubia.SQL.Add('SELECT R.* FROM CONTASARECEBERNubia R INNER JOIN CADALUNO C ON R.CODALU = C.CODIGO AND pago is not null '+SQL + ordem);
      if (FrmPesqContasRecNubia.EDInicio.Text <> '  .  .    ') and (FrmPesqContasRecNubia.EDFim.Text <> '  .  .    ') then
      begin
        DBX_ContasRecNubia.SQL.Clear;
        if FrmPEsqContasRecNubia.CBXData.Text = 'Data vencimento' then
          DBX_ContasRecNubia.SQL.Add('SELECT R.* FROM CONTASARECEBERNubia R INNER JOIN CADALUNO C ON R.CODALU = C.CODIGO AND R.DATA between '+quotedstr(FrmPesqContasRecNubia.EdInicio.Text)+' AND '+quotedstr(FrmPesqContasRecNubia.EdFim.Text)+' AND PAGO IS not NULL '+SQL + ordem)
        else
          DBX_ContasRecNubia.SQL.Add('SELECT R.* FROM CONTASARECEBERNubia R INNER JOIN CADALUNO C ON R.CODALU = C.CODIGO AND R.PAGO between '+quotedstr(FrmPesqContasRecNubia.EdInicio.Text)+' AND '+quotedstr(FrmPesqContasRecNubia.EdFim.Text)+' AND PAGO IS not NULL '+SQL + ordem);
      end;
      //endi
    end;
    //endi
    //showmessage(DBX_ContasRecNubia.SQL.Text);
    DBX_ContasRecNubia.Active:=True;
    CDS_ContasRecNubia.Refresh;

    FrmPesqContasRecNubia.SQL:=SQL;

    With FrmPesqContasRecNubia do
    begin
      if(Caption = 'Pesquisa de contas a receber') then
      begin
        DBX_Exec.Active:=False;
        DBX_Exec.SQL.Clear;
        DBX_Exec.SQL.Add('SELECT SUM(R.VALOR) AS TOTAL FROM CONTASARECEBERNubia R INNER JOIN CADALUNO C ON R.CODALU = C.CODIGO AND PAGO IS NULL '+SQL);
        if (EDInicio.Text <> '  .  .    ') and (EDFim.Text <> '  .  .    ') then
        begin
          DBX_Exec.SQL.Clear;
          DBX_Exec.SQL.Add('select SUM(R.VALOR) AS TOTAL FROM CONTASARECEBERNubia R INNER JOIN CADALUNO C ON R.CODALU = C.CODIGO and DATA between '+quotedstr(EdInicio.Text)+' AND '+quotedstr(EdFim.Text)+' AND PAGO IS NULL '+SQL);
          //showmessage(DBX_Exec.SQL.Text);
        end;
        DBX_Exec.Active:=True;
        LblTotal.Caption:='R$'+FormatFloat('###,###,##0.00',DBX_Exec.FieldByName('TOTAL').ASFLOAT);
        DBX_Exec.Active:=False;
      end
      else
      begin
        DBX_Exec.Active:=False;
        DBX_Exec.SQL.Clear;
        DBX_Exec.SQL.Add('SELECT SUM(R.VALOR) AS TOTAL FROM CONTASARECEBERNubia R INNER JOIN CADALUNO C ON PAGO IS NOT NULL '+SQL);
        if (EDInicio.Text <> '  .  .    ') and (EDFim.Text <> '  .  .    ') then
        begin
          if (CBXData.ItemIndex = 0) then
          begin
            DBX_Exec.SQL.Clear;
            DBX_Exec.SQL.Add('select SUM(R.VALOR) AS TOTAL FROM CONTASARECEBERNubia R INNER JOIN CADALUNO C ON R.CODALU = C.CODIGO and DATA between '+quotedstr(EdInicio.Text)+' AND '+quotedstr(EdFim.Text)+' AND PAGO IS NOT NULL '+SQL);
          end
          else
          begin
            DBX_Exec.SQL.Clear;
            DBX_Exec.SQL.Add('select SUM(R.VALOR) AS TOTAL FROM CONTASARECEBERNubia R INNER JOIN CADALUNO C ON R.CODALU = C.CODIGO and PAGO between '+quotedstr(EdInicio.Text)+' AND '+quotedstr(EdFim.Text)+' AND PAGO IS NOT NULL '+SQL);
          end;
        end;
        //showmessage(DBX_Exec.SQL.text);
        DBX_Exec.Active:=True;
        LblTotal.Caption:='R$'+FormatFloat('###,###,##0.00',DBX_Exec.FieldByName('TOTAL').ASFLOAT);
        DBX_Exec.Active:=False;
      end;
    end;
    //endth
  END;
  //endth


  CLOSE;
end;

procedure TFrmFiltroContasNubia.BtnCancelClick(Sender: TObject);
begin
  CLOSE;
end;



procedure TFrmFiltroContasNubia.FormShow(Sender: TObject);
begin
  EdInformacao.SetFocus;
end;

end.
