unit uMensEstq;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  Tfrmmensestq = class(TForm)
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
  frmmensestq: Tfrmmensestq;

implementation
      uses ufrente, ugeral, uDados;
{$R *.dfm}

procedure Tfrmmensestq.BitBtn3Click(Sender: TObject);
begin
close;
end;

procedure Tfrmmensestq.BitBtn2Click(Sender: TObject);
begin
frmfrente.spdcancelar2310.Click;
close;
end;

procedure Tfrmmensestq.BitBtn1Click(Sender: TObject);
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
  frmfrente.spdcancfec.Click;
  frmfrente.totais;

  frmfrente.bApresEstq := false;
  frmfrente.lbltitestq.Visible := false;
  frmfrente.lbltotestq.Visible := false;


end;

procedure Tfrmmensestq.FormShow(Sender: TObject);
begin
frmfrente.bApresEstq := true;
end;

end.
