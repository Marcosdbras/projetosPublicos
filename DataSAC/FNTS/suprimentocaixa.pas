unit suprimentocaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CurrEdit, StdCtrls, Mask, ToolEdit, RXDBCtrl, Collection,
  ExtCtrls, Buttons, TFlatPanelUnit, Menus, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset;

type
  Tfrmsuprimentocaixa = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    rsaldo: TRxCalcEdit;
    pgravar: TFlatPanel;
    bgravar: TBitBtn;
    bcancelar: TBitBtn;
    ViewSplit1: TViewSplit;
    DataSource1: TDataSource;
    qrdata: TZQuery;
    PopupMenu1: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    Edit1: TEdit;
    procedure bcancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bgravarClick(Sender: TObject);
    procedure edataEnter(Sender: TObject);
    procedure edataKeyPress(Sender: TObject; var Key: Char);
    procedure edataExit(Sender: TObject);
    procedure rsaldoExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Gravar1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmsuprimentocaixa: Tfrmsuprimentocaixa;
  saldo_anterior : real;

implementation

uses principal, modulo, ecf_daruma, ecf_bematech, ecf_sweda, ecf_urano,
  ecf_yanco;

{$R *.dfm}

procedure Tfrmsuprimentocaixa.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmsuprimentocaixa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmsuprimentocaixa.bgravarClick(Sender: TObject);
VAR RESULTADO : STRING;
begin
   try
     IF utiliza_lancamento_caixa = 'SIM' THEN
     BEGIN

         if rsaldo.Value > 0 then
         begin
        frmmodulo.qrcaixa_mov.close;
        frmmodulo.qrcaixa_mov.sql.clear;
        frmmodulo.qrcaixa_mov.sql.add('insert into c000044');
        frmmodulo.qrcaixa_mov.sql.add('(codigo,codcaixa,codoperador,data,entrada,valor,codconta,movimento,historico)');
        frmmodulo.qrcaixa_mov.sql.add('values');
        frmmodulo.qrcaixa_mov.sql.add('('''+frmprincipal.codifica('000044',7)+''','''+codigo_caixa+''','''+codigo_caixa+''',:datax,');
        frmmodulo.qrcaixa_mov.sql.add(':VALOR,:VALOR,''199999'',2,''Suprimento de Caixa'')');
        frmmodulo.qrcaixa_mov.Params.ParamByName('datax').asdatetime := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASdatetime;
        FRMMODULO.QRCAIXA_MOV.Params.ParamByName('VALOR').ASFLOAT := RSALDO.VALUE;
        FRMMODULO.qrcaixa_mov.ExecSQL;



           frmmodulo.Conexao.Commit;
           IF ECF_MODELO = 'DARUMA' then resultado := frmecf_daruma.ecf_suprimentoX(ecf_modelo,formatfloat('#########0.00',rsaldo.value),'DINHEIRO');
           IF ECF_MODELO = 'BEMATECH' then resultado := frmecf_BEMATECH.ecf_suprimentoX(ecf_modelo,formatfloat('#########0.00',rsaldo.value),'DINHEIRO');
           IF ECF_MODELO = 'SWEDA' then resultado := frmecf_SWEDA.ecf_suprimentoX(ecf_modelo,formatfloat('#########0.00',rsaldo.value),'DINHEIRO');
           IF ECF_MODELO = 'URANO' then resultado := frmecf_URANO.ecf_suprimentoX(ecf_modelo,formatfloat('#########0.00',rsaldo.value),'DINHEIRO');
           IF ECF_MODELO = 'YANCO' then resultado := frmecf_YANCO.ecf_suprimentoX(ecf_modelo,formatfloat('#########0.00',rsaldo.value),'DINHEIRO');



           if resultado <> 'OK' Then
           begin
             frmmodulo.conexao.Rollback;
             Exit;
           end;
         end
         else
         begin
               SHOWMESSAGE('Favor informar o valor!');
         end;
     END
     ELSE
     BEGIN
         if rsaldo.Value > 0 then
         begin     
           IF ECF_MODELO = 'DARUMA' then resultado := frmecf_daruma.ecf_suprimentoX(ecf_modelo,formatfloat('#########0.00',rsaldo.value),'DINHEIRO');
           IF ECF_MODELO = 'BEMATECH' then resultado := frmecf_BEMATECH.ecf_suprimentoX(ecf_modelo,formatfloat('#########0.00',rsaldo.value),'DINHEIRO');
           IF ECF_MODELO = 'SWEDA' then resultado := frmecf_SWEDA.ecf_suprimentoX(ecf_modelo,formatfloat('#########0.00',rsaldo.value),'DINHEIRO');
           IF ECF_MODELO = 'URANO' then resultado := frmecf_URANO.ecf_suprimentoX(ecf_modelo,formatfloat('#########0.00',rsaldo.value),'DINHEIRO');
           IF ECF_MODELO = 'YANCO' then resultado := frmecf_YANCO.ecf_suprimentoX(ecf_modelo,formatfloat('#########0.00',rsaldo.value),'DINHEIRO');



           if resultado <> 'OK' Then
           begin
             frmmodulo.conexao.Rollback;
             Exit;
           end;
         end
         else
         begin
               SHOWMESSAGE('Favor informar o valor!');
         end;

     END;
   EXCEPT
    SHOWMESSAGE('Houve falha nesta função! Este processo foi cancelado!');
    FRMMODULO.Conexao.Rollback;
   END;

   close;
end;

procedure Tfrmsuprimentocaixa.edataEnter(Sender: TObject);
begin
  tedit(sender).color := clyellow;
end;

procedure Tfrmsuprimentocaixa.edataKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmsuprimentocaixa.edataExit(Sender: TObject);
begin
  tedit(sender).color := clwhite;
end;

procedure Tfrmsuprimentocaixa.rsaldoExit(Sender: TObject);
begin
  tedit(sender).color := clwhite;
end;

procedure Tfrmsuprimentocaixa.FormShow(Sender: TObject);
begin
  saldo_anterior := rsaldo.value;
end;

procedure Tfrmsuprimentocaixa.Gravar1Click(Sender: TObject);
begin
  bgravar.SetFocus;
  bgravar.OnClick(frmsuprimentocaixa);
end;

end.
