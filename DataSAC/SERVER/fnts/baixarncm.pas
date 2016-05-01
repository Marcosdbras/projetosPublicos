unit baixarncm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, FMTBcd, DB, SqlExpr,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  Tfrmbaixarncm = class(TForm)
    BitBtn1: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    qrexec: TZQuery;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmbaixarncm: Tfrmbaixarncm;

implementation
      uses funcoes, modulo, funcoes_ibpt;
{$R *.dfm}

procedure Tfrmbaixarncm.BitBtn1Click(Sender: TObject);
var
  sncm:string;
begin
  
  label1.Caption := 'Sincronizando';
  label2.Caption := 'Aguarde enquanto ocorre a sincronização...';
  bitbtn1.Enabled := false;
  update;

  qrexec.Active := false;
  qrexec.SQL.Clear;
  qrexec.SQL.Add('select * from C000025 order by produto');
  qrexec.Active := true;

  while not qrexec.Eof do
     begin

       sncm := qrexec.fieldbyname('classificacao_fiscal').AsString;

       frmmodulo.qrconsulta.Close;
       frmmodulo.qrconsulta.SQL.Clear;
       frmmodulo.qrconsulta.SQL.Add('select * from ncm where codncmnbs = '+quotedstr(sncm)    );
       frmmodulo.qrconsulta.Open;

       if frmmodulo.qrconsulta.RecordCount = 0 then
          begin

            frmmodulo.atualizancm(sncm);



          end;


       qrexec.Next;
     end;
  //endi

 frmmodulo.Conexao.commit;

 label1.Caption := 'Finalizado';
 label2.Caption := 'Sincronizado com sucesso';
 bitbtn1.Caption := 'Sincronizado com sucesso';
  update;             

end;

end.
