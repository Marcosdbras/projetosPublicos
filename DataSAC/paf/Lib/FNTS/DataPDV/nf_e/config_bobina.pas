unit config_bobina;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, TFlatPanelUnit, StdCtrls, DBCtrls, Buttons;

type
  Tfrmconfig_bobina = class(TForm)
    FlatPanel1: TFlatPanel;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    DBCheckBox9: TDBCheckBox;
    DBCheckBox10: TDBCheckBox;
    DBCheckBox11: TDBCheckBox;
    DBCheckBox12: TDBCheckBox;
    DBCheckBox13: TDBCheckBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmconfig_bobina: Tfrmconfig_bobina;

implementation

uses modulo;

{$R *.dfm}

procedure Tfrmconfig_bobina.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmconfig_bobina.BitBtn2Click(Sender: TObject);
begin
  frmmodulo.conexao.Rollback;
  close;
end;

procedure Tfrmconfig_bobina.BitBtn1Click(Sender: TObject);
begin
  frmmodulo.qrconfig.post;
  frmmodulo.conexao.Commit;
  close;
end;

end.



