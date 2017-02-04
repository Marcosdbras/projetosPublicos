unit sintegra_menu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, RzEdit, RzCmboBx, RzDBCmbo, RzBHints, RzDBEdit,
  Mask, Buttons, Collection, RzPanel, ExtCtrls, TFlatPanelUnit, DB, DBCtrls,
  RzButton, RzRadChk, RzDBChk, TFlatListBoxUnit, TFlatHintUnit, Wwdatsrc,          
  TFlatSpeedButtonUnit, RzLabel, RzDBLbl, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGrid;

type
  Tfrmsintegra_menu = class(TForm)
    ViewSplit1: TViewSplit;
    RzGroupBox1: TRzGroupBox;
    RzGroupBox2: TRzGroupBox;
    RzGroupBox3: TRzGroupBox;
    edmunicipio: TRzDBEdit;
    RzDBEdit7: TRzDBEdit;
    Label5: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    RzDBDateTimeEdit1: TRzDBDateTimeEdit;
    RzDBDateTimeEdit2: TRzDBDateTimeEdit;
    Label6: TLabel;
    Label7: TLabel;
    RzDBComboBox1: TRzDBComboBox;
    RzDBEdit4: TRzDBEdit;
    Label15: TLabel;
    Label16: TLabel;
    RzDBEdit10: TRzDBEdit;
    Label17: TLabel;
    RzDBEdit11: TRzDBEdit;
    Label19: TLabel;
    RzDBEdit12: TRzDBEdit;
    Label20: TLabel;
    RzDBEdit13: TRzDBEdit;
    Label21: TLabel;
    RzDBEdit14: TRzDBEdit;
    Label22: TLabel;
    RzDBEdit15: TRzDBEdit;
    Label23: TLabel;
    RzDBDateTimeEdit3: TRzDBDateTimeEdit;
    Label24: TLabel;
    RzDBEdit16: TRzDBEdit;
    RzDBEdit17: TRzDBEdit;
    Label25: TLabel;
    btretorna: TBitBtn;
    btgerar: TBitBtn;
    btcancelar: TBitBtn;
    qremitente: TDataSource;
    dsempresa: TwwDataSource;
    RzGroupBox5: TRzGroupBox;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1CODIGO: TcxGridDBColumn;
    cxGridDBTableView1EMPRESA: TcxGridDBColumn;
    cxGridDBTableView1CNPJ: TcxGridDBColumn;
    cxGridDBTableView1IE: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure lvcancelaClick(Sender: TObject);
    procedure btgerarClick(Sender: TObject);
    procedure btcancelarClick(Sender: TObject);
    procedure btretornaClick(Sender: TObject);
    procedure qremitenteDataChange(Sender: TObject; Field: TField);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    function sonumeros(str: String):string;
    procedure cxGridDBTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure edmunicipioKeyPress(Sender: TObject; var Key: Char);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmsintegra_menu: Tfrmsintegra_menu;

implementation

uses sintegra_gerar, modulo;

{$R *.dfm}

procedure Tfrmsintegra_menu.FormCreate(Sender: TObject);
begin
     top       := 85;
     left      := 152;
     //width     := 864;
     //height    := 1021;



end;

procedure Tfrmsintegra_menu.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if key = vk_escape then
          btretorna.Click
     else if key = vk_f4 then
          //btgravar.Click
     else if key = vk_f5 then
          btgerar.Click
     else if key = vk_f6 then
          btcancelar.Click;
end;

procedure Tfrmsintegra_menu.FormShow(Sender: TObject);
begin

     {abre o arquivo de empresa}
     frmmodulo.qrfiLIAL.Close;
     frmmodulo.qrfiLIAL.SQL.Clear;
     frmmodulo.qrfiLIAL.SQL.Add('select * from c000004');
     frmmodulo.qrfiLIAL.SQL.Add('order by codigo');
     frmmodulo.qrfiLIAL.Open;

     {abre o arquivo de emitente}
     frmmodulo.qremitente.Close;
     frmmodulo.qremitente.SQL.Clear;
     frmmodulo.qremitente.SQL.Add('select * from c999999');
     frmmodulo.qremitente.Open;

     frmmodulo.qremitente.Edit;

     //edcod.SetFocus;
     cxgrid2.setfocus;

end;

procedure Tfrmsintegra_menu.lvcancelaClick(Sender: TObject);
begin
     btcancelar.Click;

end;

procedure Tfrmsintegra_menu.btgerarClick(Sender: TObject);
begin
     frmmodulo.qremitente.Post;
     //btgravar.Enabled := false;
     //btgerar.Enabled := true;
     //btgerar.SetFocus;
     //edcnpj.SetFocus;

     frmsintegra_gerar := Tfrmsintegra_gerar.create ( application );
     try
          frmsintegra_gerar.showmodal;
     finally
          frmsintegra_gerar.Release;
          frmsintegra_gerar := nil;
          btcancelar.Click;
     end;


end;

procedure Tfrmsintegra_menu.btcancelarClick(Sender: TObject);
begin
     frmmodulo.qremitente.Cancel;
     //frmmodulo.qremitente.Open;
     frmmodulo.qremitente.Edit;

     cxgrid2.SetFocus;

end;

procedure Tfrmsintegra_menu.btretornaClick(Sender: TObject);
begin
     close;
end;

procedure Tfrmsintegra_menu.qremitenteDataChange(Sender: TObject; Field: TField);
begin
     //btgravar.Enabled:=qremitente.state in [dsedit];
     btcancelar.Enabled:=qremitente.state in [dsedit];
end;

procedure Tfrmsintegra_menu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     frmmodulo.qrfiLIAL.Close;
     frmmodulo.qremitente.Close;
end;

function Tfrmsintegra_menu.sonumeros(str: string): string;
var
     i: Integer;
     d1: string;
begin
     for i := 1 to Length ( str ) do
          begin
               if Pos( Copy( str, i, 1 ), '/-.' ) = 0 then
                    d1 := d1 + Copy( str, i, 1 ) ;
          end;
    Result := d1;
end;
procedure Tfrmsintegra_menu.cxGridDBTableView1KeyPress(Sender: TObject;
  var Key: Char);
begin
     if key=#13 then
          begin
               frmmodulo.qremitenteCODIGO.Value                   := frmmodulo.qrfiLIALCODIGO.Value;
               frmmodulo.qremitenteNOME.Value                     := frmmodulo.qrfiLIALfilial.Value;
               frmmodulo.qremitenteCNPJ.Value                     := sonumeros(frmmodulo.qrfiLIALCNPJ.Value);
               frmmodulo.qremitenteIE.Value                       := sonumeros(frmmodulo.qrfiLIALIE.Value);
               frmmodulo.qremitenteCONTRIBUINTE_IPI.Value         := frmmodulo.qrfiLIALCONTRIBUINTE_IPI.Value;
               frmmodulo.qremitenteSUBSTITUTO_TRIBUTARIO.Value    := frmmodulo.qrfiLIALSUBSTITUTO_TRIBUTARIO.Value;




//               lbempresa.Caption  := frmmodulo.qrfiLIALEMPRESA_ESTADUAL.Value;

               PERFORM(WM_NEXTDLGCTL,0,0);

          end;

end;

procedure Tfrmsintegra_menu.edmunicipioKeyPress(Sender: TObject; var Key: Char);
begin
     if key=#13 then
          begin
               PERFORM(WM_NEXTDLGCTL,0,0);
          end;

end;

end.
