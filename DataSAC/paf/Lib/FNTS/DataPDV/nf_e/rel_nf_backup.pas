unit rel_nf_backup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, QRCtrls, QuickRpt, ExtCtrls;

type
  TFRMREL_NF_BACKUP = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    lsaida: TQRLabel;
    lentrada: TQRLabel;
    LNumero1: TQRLabel;
    lnatureza1: TQRLabel;
    lnatureza2: TQRLabel;
    lcfop1: TQRLabel;
    lcfop2: TQRLabel;
    lcliente: TQRLabel;
    lcpf: TQRLabel;
    ldata_emissao: TQRLabel;
    lendereco: TQRLabel;
    lbairro: TQRLabel;
    lcep: TQRLabel;
    ldata_saida: TQRLabel;
    lcidade: TQRLabel;
    ltelefone: TQRLabel;
    luf: TQRLabel;
    lrg: TQRLabel;
    lfat_n1: TQRLabel;
    lfat_n2: TQRLabel;
    lfat_n3: TQRLabel;
    lfat_data1: TQRLabel;
    lfat_data2: TQRLabel;
    lfat_data3: TQRLabel;
    lfat_valor1: TQRLabel;
    lfat_valor2: TQRLabel;
    lfat_valor3: TQRLabel;
    lfat_n4: TQRLabel;
    lfat_n5: TQRLabel;
    lfat_n6: TQRLabel;
    lfat_data4: TQRLabel;
    lfat_data5: TQRLabel;
    lfat_data6: TQRLabel;
    lfat_valor4: TQRLabel;
    lfat_valor5: TQRLabel;
    lfat_valor6: TQRLabel;
    lfat_n7: TQRLabel;
    lfat_n8: TQRLabel;
    lfat_n9: TQRLabel;
    lfat_data7: TQRLabel;
    lfat_data8: TQRLabel;
    lfat_data9: TQRLabel;
    lfat_valor7: TQRLabel;
    lfat_valor8: TQRLabel;
    lfat_valor9: TQRLabel;
    los_tit_codigo: TQRLabel;
    los_tit_descricao: TQRLabel;
    los_tit_qtde: TQRLabel;
    los_tit_unitario: TQRLabel;
    los_tit_total: TQRLabel;
    liss: TQRLabel;
    ltotal_servico: TQRLabel;
    los_cod1: TQRLabel;
    los_desc1: TQRLabel;
    los_qtde1: TQRLabel;
    los_unit1: TQRLabel;
    los_total1: TQRLabel;
    los_cod2: TQRLabel;
    los_desc2: TQRLabel;
    los_qtde2: TQRLabel;
    los_unit2: TQRLabel;
    los_total2: TQRLabel;
    los_cod3: TQRLabel;
    los_desc3: TQRLabel;
    los_qtde3: TQRLabel;
    los_unit3: TQRLabel;
    los_total3: TQRLabel;
    los_cod4: TQRLabel;
    los_desc4: TQRLabel;
    los_qtde4: TQRLabel;
    los_unit4: TQRLabel;
    los_total4: TQRLabel;
    los_cod5: TQRLabel;
    los_desc5: TQRLabel;
    los_qtde5: TQRLabel;
    los_unit5: TQRLabel;
    los_total5: TQRLabel;
    lbase_icms: TQRLabel;
    lfrete: TQRLabel;
    lvalor_icms: TQRLabel;
    lseguro: TQRLabel;
    lbase_subst: TQRLabel;
    loutras: TQRLabel;
    lvalor_subst: TQRLabel;
    lipi: TQRLabel;
    ltotal_produtos: TQRLabel;
    ltotal_nota: TQRLabel;
    ltransp: TQRLabel;
    ltrans_endereco: TQRLabel;
    lqtde: TQRLabel;
    lespecie: TQRLabel;
    lmarca: TQRLabel;
    ltransp_numero: TQRLabel;
    lbruto: TQRLabel;
    lliquido: TQRLabel;
    lfrete_conta: TQRLabel;
    lplaca: TQRLabel;
    ltransp_uf: TQRLabel;
    ltransp_cpf: TQRLabel;
    ltransp_rg: TQRLabel;
    ltransp_uf2: TQRLabel;
    ltransp_cidade: TQRLabel;
    lobs1: TQRLabel;
    lobs2: TQRLabel;
    lobs3: TQRLabel;
    lobs4: TQRLabel;
    lobs5: TQRLabel;
    lobs6: TQRLabel;
    lnumero2: TQRLabel;
    QRBand3: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    Label1: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRMREL_NF_BACKUP: TFRMREL_NF_BACKUP;

implementation

{$R *.dfm}

end.
