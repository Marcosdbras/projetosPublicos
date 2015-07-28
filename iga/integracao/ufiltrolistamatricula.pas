unit ufiltrolistamatricula;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask;

type
  Tfrmfiltrolistamatricula = class(TForm)
    Label1: TLabel;
    edidatai: TMaskEdit;
    Label2: TLabel;
    edidataf: TMaskEdit;
    btnimprime: TBitBtn;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure btnimprimeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmfiltrolistamatricula: Tfrmfiltrolistamatricula;

implementation

uses UDados, ugeral, urellistamatricula;

{$R *.dfm}

procedure Tfrmfiltrolistamatricula.BitBtn1Click(Sender: TObject);
begin
close;
end;

procedure Tfrmfiltrolistamatricula.btnimprimeClick(Sender: TObject);
var
  datai, dataf, titulo:string;
begin



  with frmdados do
    begin
      cds_listamatricula.Active := false;
      dbx_listamatricula.Active := false;
      dbx_listamatricula.SQL.Clear;
      dbx_listamatricula.SQL.Append('SELECT * FROM LISTAMATRICULA ');

      if (edidatai.Text <> '  /  /    ') or ( edidataf.Text <> '  /  /    ' )then
         begin
           dbx_listamatricula.SQL.Append(' WHERE');
           titulo := 'Data';

           if (edidatai.Text <> '  /  /    ') then
              begin
                datai := formatdatetime('dd.mm.yyyy', strtodate( edidatai.Text ) );
                dbx_listamatricula.SQL.Append(' (dtmatricula >= ' + quotedstr( datai )+')'  );
                titulo := titulo + ' de '+ edidatai.text;
              end;
           //endi

           if (edidataf.Text <> '  /  /    ') then
              begin
                dataf := formatdatetime('dd.mm.yyyy', strtodate( edidataf.Text ) );
                dbx_listamatricula.SQL.Append('AND (dtmatricula <= ' + quotedstr( dataf )+')'  );
                titulo := titulo + ' até '+ edidataf.text;
              end;
           //endi


         end;
      //endi

      //showmessage(dbx_listamatricula.text);

      dbx_listamatricula.Active := true;
      cds_listamatricula.Active := true;


    end;



   frmrellistamatricula := tfrmrellistamatricula.Create(self);
   frmrellistamatricula.lblsubtitulo.Caption := titulo;
   frmrellistamatricula.relatorio.Preview;
   frmrellistamatricula.Free;


end;

end.
