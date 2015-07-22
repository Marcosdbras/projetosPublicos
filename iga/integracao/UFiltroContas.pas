unit UFiltroContas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TFrmFiltroContas = class(TForm)
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
  FrmFiltroContas: TFrmFiltroContas;

implementation

uses UDados, UPesqContasRec;

{$R *.dfm}

procedure TFrmFiltroContas.BtnOKClick(Sender: TObject);
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

  ordem:=' ORDER BY '+quotedstr(FrmPesqContasRec.CBXOrdem.Text);

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
    SQL := CAMPO + OPERACAO + QUOTEDSTR(EDInformacao.Text) + ORDEM;
  end
  else
  begin
    SQL := CAMPO + OPERACAO + ORDEM;
  end;

  WITH FrmDados do
  begin
    DBX_ContasRec.Active:=False;
    DBX_ContasRec.SQL.Clear;
    if(FrmPesqContasRec.Caption = 'Pesquisa de contas a receber') then
    begin
      DBX_ContasRec.SQL.Add('SELECT R.* FROM CONTASARECEBER R INNER JOIN CADALUNO C ON R.CODAlu = C.CODIGO AND pago is null '+SQL);
      if (FrmPesqContasRec.EDInicio.Text <> '  .  .    ') and (FrmPesqContasRec.EDFim.Text <> '  .  .    ') then
      begin
        DBX_ContasRec.SQL.Clear;
        DBX_ContasRec.SQL.Add('SELECT R.* FROM CONTASARECEBER R INNER JOIN CADALUNO C ON R.CODALU = C.CODIGO AND R.DATA between '+quotedstr(FrmPesqContasRec.EdInicio.Text)+' AND '+quotedstr(FrmPesqContasRec.EdFim.Text)+' AND PAGO IS NULL '+SQL);
        //showmessage('filtro'+DBX_ContasrEC.SQL.Text);
      end;
      //endi
    end
    else
    begin
      DBX_ContasRec.SQL.Add('SELECT R.* FROM CONTASARECEBER R INNER JOIN CADALUNO C ON R.CODALU = C.CODIGO AND pago is not null '+SQL);
      if (FrmPesqContasRec.EDInicio.Text <> '  .  .    ') and (FrmPesqContasRec.EDFim.Text <> '  .  .    ') then
      begin
        DBX_ContasRec.SQL.Clear;
        DBX_ContasRec.SQL.Add('SELECT R.* FROM CONTASARECEBER R INNER JOIN CADALUNO C ON R.CODALU = C.CODIGO AND R.DATA between '+quotedstr(FrmPesqContasRec.EdInicio.Text)+' AND '+quotedstr(FrmPesqContasRec.EdFim.Text)+' AND PAGO IS not NULL '+SQL);
      end;
      //endi
    end;
    //endi
    //showmessage(DBX_ContasRec.SQL.Text);
    DBX_ContasRec.Active:=True;
    CDS_ContasRec.Refresh;

    FrmPesqContasRec.SQL:=SQL;

    With FrmPesqContasRec do
    begin
      if(Caption = 'Pesquisa de contas a receber') then
      begin
        DBX_Exec.Active:=False;
        DBX_Exec.SQL.Clear;
        DBX_Exec.SQL.Add('SELECT SUM(R.VALOR) AS TOTAL FROM CONTASARECEBER R INNER JOIN CADALUNO C ON R.CODALU = C.CODIGO AND PAGO IS NULL '+SQL);
        if (EDInicio.Text <> '  .  .    ') and (EDFim.Text <> '  .  .    ') then
        begin
          DBX_Exec.SQL.Clear;
          DBX_Exec.SQL.Add('select SUM(R.VALOR) AS TOTAL FROM CONTASARECEBER R INNER JOIN CADALUNO C ON R.CODALU = C.CODIGO and DATA between '+quotedstr(EdInicio.Text)+' AND '+quotedstr(EdFim.Text)+' AND PAGO IS NULL '+SQL);
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
        DBX_Exec.SQL.Add('SELECT SUM(R.VALOR) AS TOTAL FROM CONTASARECEBER R INNER JOIN CADALUNO C ON PAGO IS NOT NULL '+SQL);
        if (EDInicio.Text <> '  .  .    ') and (EDFim.Text <> '  .  .    ') then
        begin
          if (CBXData.ItemIndex = 0) then
          begin
            DBX_Exec.SQL.Clear;
            DBX_Exec.SQL.Add('select SUM(R.VALOR) AS TOTAL FROM CONTASARECEBER R INNER JOIN CADALUNO C ON R.CODALU = C.CODIGO and DATA between '+quotedstr(EdInicio.Text)+' AND '+quotedstr(EdFim.Text)+' AND PAGO IS NOT NULL '+SQL);
          end
          else
          begin
            DBX_Exec.SQL.Clear;
            DBX_Exec.SQL.Add('select SUM(R.VALOR) AS TOTAL FROM CONTASARECEBER R INNER JOIN CADALUNO C ON R.CODALU = C.CODIGO and PAGO between '+quotedstr(EdInicio.Text)+' AND '+quotedstr(EdFim.Text)+' AND PAGO IS NOT NULL '+SQL);
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

procedure TFrmFiltroContas.BtnCancelClick(Sender: TObject);
begin
  CLOSE;
end;



procedure TFrmFiltroContas.FormShow(Sender: TObject);
begin
  EdInformacao.SetFocus;
end;

end.
