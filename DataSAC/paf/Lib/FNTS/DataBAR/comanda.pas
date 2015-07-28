unit comanda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, RzEdit;

type
  TfrmComanda = class(TForm)
    Label1: TLabel;
    EDIT1: TRzNumericEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmComanda: TfrmComanda;

implementation

uses principal, Modulo, mesa_abertura;

{$R *.dfm}

procedure TfrmComanda.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmComanda.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    if edit1.value <= 0 then exit;
{    if edit1.value < 117 then
    begin
      application.messagebox('Número ocupado por uma MESA!','Erro',mb_ok+mb_iconerror);
      exit;
    end;
}

    with frmprincipal do
    begin
      lb_mesa.caption := Edit1.text;

      // verificar se a mesa já estah aberta
      query.close;
      query.sql.clear;
      query.sql.add('select * from r000001');
      query.sql.add('where codigo = '+inttostr(strtoint(edit1.text)));
      query.open;
      if query.RecordCount > 0 then
      begin
        lb_data.Caption := query.fieldbyname('data').asstring;
        lb_hora.caption := query.fieldbyname('hora').asstring;

        qrapoio.close;
        qrapoio.sql.clear;
        qrapoio.sql.add('select nome from c000008 where codigo = '''+query.fieldbyname('cod_funcionario').asstring+'''');
        qrapoio.open;

        lb_funci.Caption := qrapoio.fieldbyname('nome').asstring;

        qrconsumo.close;
        qrconsumo.sql.clear;
        qrconsumo.sql.add('select sum(total) as soma from r000002');
        qrconsumo.sql.add('where cod_mesa = '+inttostr(strtoint(edit1.text)));
        qrconsumo.sql.add('and cancelado = 0');
        qrconsumo.open;
        ed_total_comanda.value := qrconsumo.fieldbyname('soma').asfloat;
        bContinua_mesa := true;
      end
      else
      begin
        bContinua_mesa := false;
        sFunci := '';
        snome_funci := '';
        frmmesa_abertura := tfrmmesa_abertura.create(self);
        frmmesa_abertura.lb_mesa.Caption := edit1.text;
        frmmesa_abertura.showmodal;

        if bContinua_mesa then
        begin
         // lancar a data e hora
          lb_funci.caption := snome_funci;
          lb_mesa.caption := edit1.text;
          lb_data.Caption := DateToStr(date);
          lb_hora.caption := TimeToStr(time);
          ed_total_comanda.value := 0;
          frmmodulo.st_Mesa_Abertura.close;
          frmmodulo.st_Mesa_Abertura.ParamByName('codigo').asinteger := strtoint(edit1.text);
          frmmodulo.st_Mesa_Abertura.parambyname('data').asdatetime := date;
          frmmodulo.st_Mesa_Abertura.parambyname('hora').asstring := timetostr(time);
          frmmodulo.st_mesa_abertura.parambyname('cod_funcionario').asstring := sFunci;
          frmmodulo.st_Mesa_Abertura.Prepare;
          frmmodulo.st_Mesa_Abertura.Execute;
          bContinua_mesa := true;
        end
        else
        begin
          bContinua_mesa := false;
        end;
      end;
    end;
    close;
  end;
  if key = #27 then close;
end;

end.
