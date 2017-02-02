unit upesquisaproduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Grids, DBGrids, ComCtrls, Buttons, ExtCtrls;

type
  Tfrmpesquisaproduto = class(TForm)
    pnlsuperior: TPanel;
    BitBtn1: TBitBtn;
    pnlesquerda: TPanel;
    btnfiltrar: TBitBtn;
    btnlimpar: TBitBtn;
    btnimprimir: TBitBtn;
    pnlinferior: TPanel;
    stbrodape: TStatusBar;
    pnlinternodir: TPanel;
    btnanterior: TBitBtn;
    btnproximo: TBitBtn;
    Panel1: TPanel;
    lbllocalizar: TLabel;
    edilocalizar: TEdit;
    pctdados: TPageControl;
    tbslista: TTabSheet;
    dbg_produtos: TDBGrid;
    tbsficha: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    lblcodigo: TLabel;
    btnsalvar: TBitBtn;
    btnnova: TBitBtn;
    edidescricao: TEdit;
    btnexcluir: TBitBtn;
    pctcadprod: TPageControl;
    tbsprincipal: TTabSheet;
    Label5: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label20: TLabel;
    cbxnund: TDBLookupComboBox;
    ediprve: TEdit;
    edicbar: TEdit;
    EDICAUX: TEdit;
    TabSheet1: TTabSheet;
    tbsipi: TPageControl;
    tbsicms: TTabSheet;
    pnlsuptab: TPanel;
    Label11: TLabel;
    lblsita: TLabel;
    Label22: TLabel;
    Label17: TLabel;
    Label9: TLabel;
    lblaliqicms: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label6: TLabel;
    Label19: TLabel;
    Label21: TLabel;
    lblregime: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    cbxdescsitb_cod5: TDBLookupComboBox;
    cbxdescsita_cod4: TDBLookupComboBox;
    edisimplesncm: TEdit;
    cbxdesccfop_cod11: TDBLookupComboBox;
    cbxdesccf_cod3: TDBLookupComboBox;
    ckbcompoetnf: TCheckBox;
    cbxdescicms_cod1: TDBLookupComboBox;
    cbxdescmodbs_cod6: TDBLookupComboBox;
    cbxdescmodbst_cod7: TDBLookupComboBox;
    edibscalcst: TEdit;
    ediicmscalcst: TEdit;
    cbxdesccsosn_cod14p: TDBLookupComboBox;
    cbxregime: TComboBox;
    EDIEX: TEdit;
    ediiva: TEdit;
    TabSheet3: TTabSheet;
    lblaliquota_ipi: TLabel;
    cbxdescipi_cod2: TDBLookupComboBox;
    tbspip: TTabSheet;
    lblaliquota_pis: TLabel;
    cbxdescpis_cod9: TDBLookupComboBox;
    tbscofins: TTabSheet;
    lblaliquota_cofins: TLabel;
    cbxdesccofins_cod10: TDBLookupComboBox;
    tbsii: TTabSheet;
    lblaliquota_ii: TLabel;
    cbxdescvii_cod8: TDBLookupComboBox;
    tbsoutras: TTabSheet;
    lblaliquota_outras: TLabel;
    cbxdescoimp_cod12: TDBLookupComboBox;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmpesquisaproduto: Tfrmpesquisaproduto;

implementation
     uses udados;
{$R *.dfm}

end.
