unit uMensEstqecf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  Tfrmmensestqecf = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmmensestqecf: Tfrmmensestqecf;

implementation
      uses ufrenteecf, ugeral, uDados;
{$R *.dfm}

procedure Tfrmmensestqecf.BitBtn3Click(Sender: TObject);
begin
close;
end;

procedure Tfrmmensestqecf.BitBtn2Click(Sender: TObject);
begin
frmfrenteecf.spdcancelar2310.Click;
close;
end;

procedure Tfrmmensestqecf.BitBtn1Click(Sender: TObject);
begin

  with frmdados do
    begin
      cds_vendab.DisableControls;
      cds_vendab.First;
      while not cds_vendab.Eof do
        begin
          dbx_vProdutos.Active := false;
          dbx_vProdutos.SQL.Clear;
          dbx_vProdutos.SQL.Add('Select * from vProdutos Where Codigo = '+cds_vendab.fieldbyname('cpro').asString);
          dbx_vProdutos.Active := true;
          if dbx_vProdutos.RecordCount > 0 then
             begin
               if (cds_vendab.FieldByName('qtde').asfloat > dbx_vProdutos.fieldbyname('qua').asfloat) and (cds_vendab.FieldByName('EouS').asString = 'S') then
                  begin
                    cds_vendab.Delete;
                  end
               else
                  begin
                    cds_vendab.Next;
                  end;
               //endi
             end;
          //endi

        end;
      //endw
      cds_vendab.EnableControls;
    end;
  //endth
  close;
  frmfrenteecf.spdcancfec.Click;
  frmfrenteecf.totais;

  frmfrenteecf.bApresEstq := false;
  frmfrenteecf.lbltitestq.Visible := false;
  frmfrenteecf.lbltotestq.Visible := false;


end;

procedure Tfrmmensestqecf.FormShow(Sender: TObject);
begin
frmfrenteecf.bApresEstq := true;
end;

end.
