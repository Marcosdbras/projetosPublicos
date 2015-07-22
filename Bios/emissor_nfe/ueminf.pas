unit ueminf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, StdCtrls, DBCtrls, ComCtrls;

type
  Tfrmeminf = class(TForm)
    pctcadnf: TPageControl;
    tbstransportador: TTabSheet;
    Label24: TLabel;
    Label8: TLabel;
    Label4: TLabel;
    Label25: TLabel;
    Label49: TLabel;
    edicnpjtransp: TDBText;
    Label50: TLabel;
    enderecotransp: TDBText;
    Label51: TLabel;
    DBText23: TDBText;
    Label52: TLabel;
    edibairrotransp: TDBText;
    Label53: TLabel;
    ediceptransp: TDBText;
    Label54: TLabel;
    edimunicipiotransp: TDBText;
    Label55: TLabel;
    editelefonestransp: TDBText;
    Label56: TLabel;
    ediuftransp: TDBText;
    Label57: TLabel;
    ediietransp: TDBText;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    cbxdesctransp_cod5nf: TDBLookupComboBox;
    cbxdescfreteporconta_cod2nf: TDBLookupComboBox;
    ediplacavei: TEdit;
    EDIUFVEI: TEdit;
    EDIQUANTIDADE: TEdit;
    ediespecie: TEdit;
    edimarca: TEdit;
    EDINUMERO: TEdit;
    EDIPESOB: TEdit;
    EDIPESOL: TEdit;
    tbstotais: TTabSheet;
    Label3: TLabel;
    Label2: TLabel;
    Label20: TLabel;
    Label23: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    ediprve: TEdit;
    Edit1: TEdit;
    Edit2: TEdit;
    edibscalcsubstrib: TEdit;
    EDIVLRICMSSUBTRIB: TEdit;
    editvlrfrete: TEdit;
    EDITVLRSEG: TEdit;
    editvlrout: TEdit;
    tbsadicnf: TTabSheet;
    mmoadicnf: TMemo;
    lbldest: TLabel;
    Label6: TLabel;
    btnimprime: TButton;
    Button1: TButton;
    Label7: TLabel;
    cbxdesctiponf_cod1nf: TDBLookupComboBox;
    Label5: TLabel;
    cbxdescnatop_cod6nf: TDBLookupComboBox;
    Label26: TLabel;
    edidatasai: TMaskEdit;
    Label27: TLabel;
    edihorasai: TMaskEdit;
    PageControl1: TPageControl;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmeminf: Tfrmeminf;

implementation

{$R *.dfm}

procedure Tfrmeminf.FormShow(Sender: TObject);
begin
pctcadnf.TabIndex := 0;

end;

end.
