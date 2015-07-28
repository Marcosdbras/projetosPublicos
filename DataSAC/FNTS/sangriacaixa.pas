unit sangriacaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CurrEdit, StdCtrls, Mask, ToolEdit, RXDBCtrl, Collection,
  ExtCtrls, Buttons, TFlatPanelUnit, Menus, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset;

type
  Tfrmsangriacaixa = class(TForm)
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
  frmsangriacaixa: Tfrmsangriacaixa;
  saldo_anterior : real;

implementation

uses principal, modulo, ecf_daruma, ecf_bematech, ecf_sweda, ecf_urano,
  ecf_yanco;

{$R *.dfm}

procedure Tfrmsangriacaixa.bcancelarClick(Sender: TObject);
begin
  continuar := false;
  close;
end;

procedure Tfrmsangriacaixa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmsangriacaixa.bgravarClick(Sender: TObject);
VAR RESULTADO : STRING;
begin
   continuar := false;

   try
       IF utiliza_lancamento_caixa = 'SIM' THEN
       BEGIN

         if rsaldo.Value > 0 then
         begin



        frmmodulo.qrcaixa_mov.close;
        frmmodulo.qrcaixa_mov.sql.clear;
        frmmodulo.qrcaixa_mov.sql.add('insert into c000044');
        frmmodulo.qrcaixa_mov.sql.add('(codigo,codcaixa,codoperador,data,saida,valor,codconta,movimento,historico)');
        frmmodulo.qrcaixa_mov.sql.add('values');
        frmmodulo.qrcaixa_mov.sql.add('('''+frmprincipal.codifica('000044',7)+''','''+codigo_caixa+''','''+codigo_caixa+''',:datax,');
        frmmodulo.qrcaixa_mov.sql.add(':VALOR,:VALOR,''299999'',2,''Retirada de Caixa'')');
        frmmodulo.qrcaixa_mov.Params.ParamByName('datax').asdatetime := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASdatetime;
        FRMMODULO.QRCAIXA_MOV.Params.ParamByName('VALOR').ASFLOAT := RSALDO.VALUE;
        FRMMODULO.qrcaixa_mov.ExecSQL;
        frmmodulo.conexao.Commit;

           IF ECF_MODELO = 'DARUMA' then RESULTADO := frmecf_daruma.ecf_sangriaX(ecf_modelo,formatfloat('#########0.00',rsaldo.value));
           IF ECF_MODELO = 'BEMATECH' then RESULTADO := frmecf_BEMATECH.ecf_sangriaX(ecf_modelo,formatfloat('#########0.00',rsaldo.value));
           IF ECF_MODELO = 'SWEDA' then RESULTADO := frmecf_SWEDA.ecf_sangriaX(ecf_modelo,formatfloat('#########0.00',rsaldo.value));
           IF ECF_MODELO = 'URANO' then RESULTADO := frmecf_URANO.ecf_sangriaX(ecf_modelo,formatfloat('#########0.00',rsaldo.value));
           IF ECF_MODELO = 'YANCO' then RESULTADO := frmecf_YANCO.ecf_sangriaX(ecf_modelo,formatfloat('#########0.00',rsaldo.value));

           if resultado <> 'OK' Then
           begin
             frmmodulo.conexao.Rollback;
             Exit;
           end;
           continuar := true;
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
           IF ECF_MODELO = 'DARUMA' then RESULTADO := frmecf_daruma.ecf_sangriaX(ecf_modelo,formatfloat('#########0.00',rsaldo.value));
           IF ECF_MODELO = 'BEMATECH' then RESULTADO := frmecf_BEMATECH.ecf_sangriaX(ecf_modelo,formatfloat('#########0.00',rsaldo.value));
           IF ECF_MODELO = 'SWEDA' then RESULTADO := frmecf_SWEDA.ecf_sangriaX(ecf_modelo,formatfloat('#########0.00',rsaldo.value));
           IF ECF_MODELO = 'URANO' then RESULTADO := frmecf_URANO.ecf_sangriaX(ecf_modelo,formatfloat('#########0.00',rsaldo.value));
           IF ECF_MODELO = 'YANCO' then RESULTADO := frmecf_YANCO.ecf_sangriaX(ecf_modelo,formatfloat('#########0.00',rsaldo.value));
           if RESULTADO <> 'OK' Then
           begin
             frmmodulo.conexao.Rollback;
             Exit;
           end;
           continuar := true;
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
procedure Tfrmsangriacaixa.edataEnter(Sender: TObject);
begin
  tedit(sender).color := clyellow;
end;

procedure Tfrmsangriacaixa.edataKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmsangriacaixa.edataExit(Sender: TObject);
begin
  tedit(sender).color := clwhite;
end;

procedure Tfrmsangriacaixa.rsaldoExit(Sender: TObject);
begin
  tedit(sender).color := clwhite;
end;

procedure Tfrmsangriacaixa.FormShow(Sender: TObject);
begin
  saldo_anterior := rsaldo.value;
end;

procedure Tfrmsangriacaixa.Gravar1Click(Sender: TObject);
begin
  bgravar.SetFocus;
  bgravar.OnClick(frmsangriacaixa);
end;

end.
