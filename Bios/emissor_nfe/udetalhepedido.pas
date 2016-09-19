unit udetalhepedido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, DBCtrls, Grids, DBGrids, ComCtrls,
  IdIOHandler, IdGlobal;

type
  Tfrmdetalhepedido = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label10: TLabel;
    Label31: TLabel;
    lblcnpj: TLabel;
    Label29: TLabel;
    lblendereco: TLabel;
    Label30: TLabel;
    lblnumero: TLabel;
    Label33: TLabel;
    lblbairro: TLabel;
    Label34: TLabel;
    lblcep: TLabel;
    Label35: TLabel;
    lblmunicipio: TLabel;
    Label36: TLabel;
    lbltelefones: TLabel;
    Label39: TLabel;
    lblestado: TLabel;
    Label32: TLabel;
    lblie: TLabel;
    lbldest: TLabel;
    pctprod: TPageControl;
    tbslistaprod: TTabSheet;
    Label49: TLabel;
    lbltotprod: TLabel;
    dbgprod: TDBGrid;
    tbstributacao: TTabSheet;
    pnlnavegatribnf: TPanel;
    spdprodant: TSpeedButton;
    spdprodprox: TSpeedButton;
    pnldescricao: TPanel;
    Label24: TLabel;
    lblproduto: TLabel;
    tbsipi: TPageControl;
    tbsicms: TTabSheet;
    pnlsuptab: TPanel;
    Label7: TLabel;
    lblsita: TLabel;
    Label22: TLabel;
    Label17: TLabel;
    Label13: TLabel;
    lblaliqicms: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label21: TLabel;
    cbxdescsitb_cod5prodnf: TDBLookupComboBox;
    cbxdescsita_cod4prodnf: TDBLookupComboBox;
    edisimplesncm: TEdit;
    cbxdesccfop_cod11prodnf: TDBLookupComboBox;
    cbxdesccf_cod3prodnf: TDBLookupComboBox;
    ckbcompoetnf: TCheckBox;
    cbxdescicms_cod1prodnf: TDBLookupComboBox;
    cbxdescmodbs_cod6prodnf: TDBLookupComboBox;
    cbxdescmodbst_cod7prodnf: TDBLookupComboBox;
    edibscalcst: TEdit;
    ediicmscalcst: TEdit;
    cbxdesccsosn_cod14prodnf: TDBLookupComboBox;
    TabSheet3: TTabSheet;
    lblaliquota_ipi: TLabel;
    cbxdescipi_cod2prodnf: TDBLookupComboBox;
    tbspip: TTabSheet;
    lblaliquota_pis: TLabel;
    cbxdescpis_cod9prodnf: TDBLookupComboBox;
    tbscofins: TTabSheet;
    lblaliquota_cofins: TLabel;
    cbxdesccofins_cod10prodnf: TDBLookupComboBox;
    tbsii: TTabSheet;
    lblaliquota_ii: TLabel;
    cbxdescvii_cod8prodnf: TDBLookupComboBox;
    tbsoutras: TTabSheet;
    lblaliquota_outras: TLabel;
    cbxdescoimp_cod12prodnf: TDBLookupComboBox;
    lblchave: TLabel;
    CHAVE: TLabel;
    lblmensagem: TLabel;
    btncancnfe: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure carregafichaprod;
    procedure spdprodantClick(Sender: TObject);
    procedure spdprodproxClick(Sender: TObject);
    procedure tbstributacaoShow(Sender: TObject);
    procedure bloqtribprod;
    procedure totserv;
    procedure totprod;
    procedure btncancnfeClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    function  conexao_acbrmonitortcpip(comando:String):String;



  private
     sresposta:string;
     ipos:integer;
    { Private declarations }
  public
    { Public declarations }
    sresp:string;

  end;

var
  frmdetalhepedido: Tfrmdetalhepedido;

implementation

uses udados, ugeral, urelcartacorrecao, upesqnfemi, ucorrecao, ucancelar,
  uconexaotcpip;

{$R *.dfm}

procedure Tfrmdetalhepedido.FormShow(Sender: TObject);
var texto, saida:textfile;
    linha, sid:string;
    iposicaoi, iposicaof:integer;
    baut, bachou:boolean;
    x:integer;
begin

lblmensagem.Caption := '';


cbxdescipi_cod2prodnf.Top  := cbxdescicms_cod1prodnf.Top;
cbxdescipi_cod2prodnf.Left  := cbxdescicms_cod1prodnf.Left;

cbxdescpis_cod9prodnf.Top  := cbxdescicms_cod1prodnf.Top;
cbxdescpis_cod9prodnf.Left  := cbxdescicms_cod1prodnf.Left;

cbxdesccofins_cod10prodnf.Top  := cbxdescicms_cod1prodnf.Top;
cbxdesccofins_cod10prodnf.Left  := cbxdescicms_cod1prodnf.Left;

cbxdescvii_cod8prodnf.Top  := cbxdescicms_cod1prodnf.Top;
cbxdescvii_cod8prodnf.Left  := cbxdescicms_cod1prodnf.Left;

cbxdescoimp_cod12prodnf.Top  := cbxdescicms_cod1prodnf.Top;
cbxdescoimp_cod12prodnf.Left  := cbxdescicms_cod1prodnf.Left;

lblaliquota_ipi.Top    := lblaliqicms.Top;
lblaliquota_ipi.left    := lblaliqicms.left;

lblaliquota_pis.Top    := lblaliqicms.Top;
lblaliquota_pis.left    := lblaliqicms.left;

lblaliquota_cofins.Top    := lblaliqicms.Top;
lblaliquota_cofins.left    := lblaliqicms.left;

lblaliquota_ii.Top    := lblaliqicms.Top;
lblaliquota_ii.left    := lblaliqicms.left;

lblaliquota_outras.Top    := lblaliqicms.Top;
lblaliquota_outras.left    := lblaliqicms.left;



       if (frmdados.cds_nfetipodest.Value = 'C') then
          begin

            if frmdados.cds_clientes.Locate('codigo',frmdados.cds_nfecdest.Value,[]) then
               begin
                 lbldest.Caption := frmdados.cds_clientes.fieldbyname('nome').asString;
                 lblendereco.Caption := frmdados.cds_clientes.fieldbyname('endereco').asString;
                 lblnumero.Caption := frmdados.cds_clientes.fieldbyname('nro').asString;
                 lblbairro.Caption := frmdados.cds_clientes.fieldbyname('bairro').asString;
                 lblcep.Caption := frmdados.cds_clientes.fieldbyname('cep').asString;
                 lbltelefones.Caption := frmdados.cds_clientes.fieldbyname('telefones').asString;
                 lblcnpj.Caption := frmdados.cds_clientes.fieldbyname('cnpj').asString;
                 lblie.Caption := frmdados.cds_clientes.fieldbyname('ie').asString;

                 if frmdados.cds_Munic.Locate('codigo',frmdados.cds_clientes.fieldbyname('cmun').asInteger,[]) then
                    lblmunicipio.caption := frmdados.cds_Munic.fieldbyname('nome').asString
                 else
                    lblmunicipio.caption := '';
                 //endi

                 if frmdados.cds_estados.Locate('codigo',frmdados.cds_clientes.fieldbyname('cest').asInteger,[]) then
                    lblestado.caption := frmdados.cds_estados.fieldbyname('sigla').asString
                 else
                    lblestado.caption := '';
                 //endi

               end
            else
               begin
                 lbldest.Caption := '';
                 lblendereco.Caption := '';
                 lblnumero.Caption := '';
                 lblbairro.Caption := '';
                 lblcep.Caption := '';
                 lbltelefones.Caption := '';
                 lblcnpj.Caption := '';
                 lblie.Caption := '';
                 lblmunicipio.caption := '';
                 lblestado.caption := '';

               end;
            //endi
          end;
       //endi

       if (frmdados.cds_nfetipodest.Value = 'F') then
          begin
            if frmdados.cds_fornecedores.Locate('codigo',frmdados.cds_nfecdest.Value,[]) then
               begin
                 lbldest.Caption := frmdados.cds_fornecedores.fieldbyname('nome').asString;

                 lblendereco.Caption := frmdados.cds_fornecedores.fieldbyname('endereco').asString;
                 lblnumero.Caption := frmdados.cds_fornecedores.fieldbyname('nro').asString;
                 lblbairro.Caption := frmdados.cds_fornecedores.fieldbyname('bairro').asString;
                 lblcep.Caption := frmdados.cds_fornecedores.fieldbyname('cep').asString;
                 lbltelefones.Caption := frmdados.cds_fornecedores.fieldbyname('telefones').asString;
                 lblcnpj.Caption := frmdados.cds_fornecedores.fieldbyname('cnpj').asString;
                 lblie.Caption := frmdados.cds_fornecedores.fieldbyname('ie').asString;

                 if frmdados.cds_Munic.Locate('codigo',frmdados.cds_fornecedores.fieldbyname('cmun').asInteger,[]) then
                    lblmunicipio.caption := frmdados.cds_Munic.fieldbyname('nome').asString
                 else
                    lblmunicipio.caption := '';
                 //endi

                 if frmdados.cds_estados.Locate('codigo',frmdados.cds_fornecedores.fieldbyname('cest').asInteger,[]) then
                    lblestado.caption := frmdados.cds_estados.fieldbyname('sigla').asString
                 else
                    lblestado.caption := '';
                 //endi

               end
            else
               begin
                 lbldest.Caption := '';
                 lblendereco.Caption := '';
                 lblnumero.Caption := '';
                 lblbairro.Caption := '';
                 lblcep.Caption := '';
                 lbltelefones.Caption := '';
                 lblcnpj.Caption := '';
                 lblie.Caption := '';
                 lblmunicipio.caption := '';
                 lblestado.caption := '';
               end;
            //endi
          end;
       //endi


       if fileexists(frmdados.cds_indice.fieldbyname('caminhoarqnfetemp').asString+'\'+frmdados.cds_nfe.fieldbyname('arquivonfe').asString) then
          begin

            assignfile(texto,frmdados.cds_indice.fieldbyname('caminhoarqnfetemp').asString+'\'+frmdados.cds_nfe.fieldbyname('arquivonfe').asString);
            reset(texto);

            baut := false;
            bachou := false;


            iposicaoi := 0;
            iposicaof := 0;

            while not eof(texto) do
              begin
                //showmessage('');
                readln(texto,linha);
                if pos('OK',linha) > 0 then
                   begin
                     baut := true;
                   end;
                //endi

                x:= pos('Id=',linha);

                if x > 0 then
                   begin
                     bachou := true;
                     if baut then
                        begin
                          sid := linha;

                        end;
                     //endi
                   end;
                //endi

                if baut and bachou then
                   begin

                     lblchave.caption := copy(sid,x+7,44);
                     break;
                     
                   end;
                //endi


              end;
            //endw


            closefile(texto);

          end
       else
          begin
            if frmdados.cds_nfe.FieldByName('chave').AsString = '' then
               begin
                 lblchave.caption := 'NENHUM ARQUIVO DE CHAVE IDENTIFICADO';
               end
            else
               begin
                 lblchave.caption := frmdados.cds_nfe.FieldByName('chave').AsString;
               end;
            //endi

          end;
       //endi

      with frmdados do
        begin
          cds_nfp.Filtered := false;
          cds_nfp.Filter := 'cnf = '+ inttostr( cds_nfe.fieldbyname('cnf').asInteger ) ;
          cds_nfp.Filtered := true;


          cds_nfs.Filtered := false;
          cds_nfs.Filter := 'cnf = '+ inttostr( cds_nfe.fieldbyname('cnf').asInteger ) ;
          cds_nfs.Filtered := true;


        end;
      //endth


      totprod;

end;

procedure Tfrmdetalhepedido.FormCreate(Sender: TObject);
begin

  frmdados.cds_nf.Active := true;
  frmdados.cds_nfp.Active := true;
  frmdados.cds_nfs.Active := true;

  frmdados.cds_emitente.Active := true;
  frmdados.cds_icms.Active := true;
  frmdados.cds_ipi.Active := true;
  frmdados.cds_cf.Active := true;
  frmdados.cds_sita.Active := true;
  frmdados.cds_sitb.Active := true;
  frmdados.cds_modbc.Active := true;
  frmdados.cds_modbcst.Active := true;
  frmdados.cds_impostoII.Active := true;
  frmdados.cds_pis.Active := true;
  frmdados.cds_cofins.Active := true;
  frmdados.cds_cfop.Active := true;
  frmdados.cds_impostoIII.Active := true;
  frmdados.cds_csosn.Active := true;
  frmdados.cds_produtos.Active := true;
  frmdados.cds_tiposerv.Active := true;
  frmdados.cds_rcserv.Active := true;
  frmdados.cds_impostoI.Active := true;

  frmdados.cds_Munic.Active := true;
  frmdados.cds_Estados.Active := true;
  frmdados.cds_Paises.Active := true;

  frmdados.cds_tiponf.Active := true;
  frmdados.cds_natop.Active := true;
  frmdados.cds_transportador.Active := true;
  frmdados.cds_onusdofrete.Active := true;
  frmdados.cds_cfop.Active := true;

  frmdados.cds_tiponf.Active := true;
  frmdados.cds_natop.Active := true;
  frmdados.cds_transportador.Active := true;
  frmdados.cds_onusdofrete.Active := true;
  frmdados.cds_temp_imp.Active := true;
  frmdados.cds_regtrib.Active := true;
  frmdados.cds_cfop.Active := true;

  pctprod.TabIndex := 0;


end;

procedure Tfrmdetalhepedido.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

  frmdados.cds_nf.Active := false;
  frmdados.cds_nfp.Active := false;
  frmdados.cds_nfs.Active := false;

  frmdados.cds_emitente.Active := false;
  frmdados.cds_icms.Active := false;
  frmdados.cds_ipi.Active := false;
  frmdados.cds_cf.Active := false;
  frmdados.cds_sita.Active := false;
  frmdados.cds_sitb.Active := false;
  frmdados.cds_modbc.Active := false;
  frmdados.cds_modbcst.Active := false;
  frmdados.cds_impostoII.Active := false;
  frmdados.cds_pis.Active := false;
  frmdados.cds_cofins.Active := false;
  frmdados.cds_cfop.Active := false;
  frmdados.cds_impostoIII.Active := false;
  frmdados.cds_csosn.Active := false;
  frmdados.cds_produtos.Active := false;
  frmdados.cds_tiposerv.Active := false;
  frmdados.cds_rcserv.Active := false;
  frmdados.cds_impostoI.Active := false;

  frmdados.cds_Munic.Active := false;
  frmdados.cds_Estados.Active := false;
  frmdados.cds_Paises.Active := false;

  frmdados.cds_tiponf.Active := false;
  frmdados.cds_natop.Active := false;
  frmdados.cds_transportador.Active := false;
  frmdados.cds_onusdofrete.Active := false;
  frmdados.cds_cfop.Active := false;

  frmdados.cds_tiponf.Active := false;
  frmdados.cds_natop.Active := false;
  frmdados.cds_transportador.Active := false;
  frmdados.cds_onusdofrete.Active := false;
  frmdados.cds_temp_imp.Active := false;
  frmdados.cds_regtrib.Active := false;
  frmdados.cds_cfop.Active := false;


  Action:=caFree;
  frmdetalhepedido:=nil;
  form_ativo := '';


end;


procedure Tfrmdetalhepedido.carregafichaprod;
begin
with frmdados do
  begin
    //sOpcaoprod := 'A';
    //edibscalcst.Text := frmdados.cds_nfp.fieldbyname('').asfloat

    lblproduto.Caption := frmdados.cds_nfp.fieldbyname('npro').asString;
    edibscalcst.text   := formatfloat('###,###,##0.00', cds_nfp.FieldByName('bscalcst').asfloat);
    ediicmscalcst.text := formatfloat('###,###,##0.00', cds_nfp.FieldByName('icmscalcst').asfloat);
    edisimplesncm.text := cds_nfp.FieldByName('simplesncm').asString;


    frmdados.cds_Temp.Edit;
    frmdados.cds_Temp.fieldbyname('cod1prodnf').asInteger := cds_nfp.FieldByName('cod1prodnf').asInteger;
    frmdados.cds_Temp.fieldbyname('cod2prodnf').asInteger := cds_nfp.FieldByName('cod2prodnf').asInteger;
    frmdados.cds_Temp.fieldbyname('cod3prodnf').asInteger := cds_nfp.FieldByName('cod3prodnf').asInteger;
    frmdados.cds_Temp.fieldbyname('cod4prodnf').asInteger := cds_nfp.FieldByName('cod4prodnf').asInteger;
    frmdados.cds_Temp.fieldbyname('cod5prodnf').asInteger := cds_nfp.FieldByName('cod5prodnf').asInteger;
    frmdados.cds_Temp.fieldbyname('cod6prodnf').asInteger := cds_nfp.FieldByName('cod6prodnf').asInteger;
    frmdados.cds_Temp.fieldbyname('cod7prodnf').asInteger := cds_nfp.FieldByName('cod7prodnf').asInteger;
    frmdados.cds_Temp.fieldbyname('cod8prodnf').asInteger := cds_nfp.FieldByName('cod8prodnf').asInteger;
    frmdados.cds_Temp.fieldbyname('cod9prodnf').asInteger := cds_nfp.FieldByName('cod9prodnf').asInteger;
    frmdados.cds_Temp.fieldbyname('cod10prodnf').asInteger := cds_nfp.FieldByName('cod10prodnf').asInteger;
    frmdados.cds_Temp.fieldbyname('cod11prodnf').asInteger := cds_nfp.FieldByName('cod11prodnf').asInteger;
    frmdados.cds_Temp.fieldbyname('cod12prodnf').asInteger := cds_nfp.FieldByName('cod12prodnf').asInteger;
    frmdados.cds_Temp.fieldbyname('cod14prodnf').asInteger := cds_nfp.FieldByName('cod14prodnf').asInteger;

    //frmdados.cds_Temp.fieldbyname('cod13prodnf').asInteger := cds_nfp.FieldByName('cod13prodnf').asInteger;


  end;
//endi

end;




procedure Tfrmdetalhepedido.spdprodantClick(Sender: TObject);
begin
frmdados.cds_nfp.Prior;
carregafichaprod;

end;

procedure Tfrmdetalhepedido.spdprodproxClick(Sender: TObject);
begin
frmdados.cds_nfp.Next;
carregafichaprod;

end;

procedure Tfrmdetalhepedido.tbstributacaoShow(Sender: TObject);
begin
bloqtribprod;
carregafichaprod;

end;


procedure Tfrmdetalhepedido.bloqtribprod;
begin
cbxdescicms_cod1prodnf.Enabled := false;
cbxdescipi_cod2prodnf.Enabled := false;
cbxdesccf_cod3prodnf.Enabled := false;
cbxdescsita_cod4prodnf.Enabled := false;
cbxdescsitb_cod5prodnf.Enabled := false;
cbxdescmodbs_cod6prodnf.Enabled := false;
cbxdescmodbst_cod7prodnf.Enabled := false;
cbxdescvii_cod8prodnf.Enabled := false;
cbxdescpis_cod9prodnf.Enabled := false;
cbxdesccofins_cod10prodnf.Enabled := false;
cbxdesccfop_cod11prodnf.Enabled := false;
cbxdescoimp_cod12prodnf.Enabled := false;
cbxdesccsosn_cod14prodnf.Enabled := false;

edibscalcst.Enabled := false;
ediicmscalcst.Enabled := false;

edisimplesncm.Enabled := false;
ckbcompoetnf.Enabled := false;
end;


procedure Tfrmdetalhepedido.totprod;
var ftotal:real;
begin
ftotal := 0;
with frmdados do
  begin
    cds_nfp.DisableControls;
    while not cds_nfp.Eof do
      begin
        ftotal := ftotal + cds_nfp.fieldbyname('subtotal').asfloat;
        cds_nfp.Next;
      end;
    //endi
    cds_nfp.EnableControls;
  end;
//endi

lbltotprod.Caption := formatfloat('###,###,##0.00',ftotal);

end;

procedure Tfrmdetalhepedido.totserv;
var ftotal:real;
begin
ftotal := 0;
with frmdados do
  begin
    cds_nfs.DisableControls;
    while not cds_nfs.Eof do
      begin
        ftotal := ftotal + cds_nfs.fieldbyname('subtotal').asfloat;
        cds_nfs.Next;
      end;
    //endi
    cds_nfs.EnableControls;
  end;
//endi

//lbltotserv.Caption := formatfloat('###,###,##0.00',ftotal);
end;



procedure Tfrmdetalhepedido.btncancnfeClick(Sender: TObject);
var vardir:string;
    texto, saida:textfile;
    linha:string;
    bOk, bError, bfimarq:boolean;
    icontadornfe, innf:integer;
begin
sresp:='';
bok := false;
bError := false;
bfimarq := false;

if lblchave.caption = 'NENHUM ARQUIVO DE CHAVE IDENTIFICADO' then
   exit;
//endi


vardir := extractfilepath(application.ExeName);

icontadornfe := frmdados.cds_nfe.fieldbyname('contador').asInteger;
innf :=         frmdados.cds_nfe.fieldbyname('nnf').AsInteger;

lblmensagem.Caption := 'Insira a justificativa';
frmdetalhepedido.Update;

frmcancelamento := tfrmcancelamento.Create(self);
frmcancelamento.ShowModal;
frmcancelamento.Free;

if sresp <> '' then
   begin

     if length (sresp) < 15 then
        begin
          lblmensagem.Caption := '';
          showmessage('Não posso prosseguir, mínimo de 15 caracteres.');

          exit;
        end;
     //endi

     sresposta := conexao_acbrmonitortcpip( 'NFe.CancelarNFe('+lblchave.caption+','+sresp+')'  );
     ipos := pos('Rejeição',sresposta);

     if ipos > 0 then
        begin

          showmessage(sresposta);

        end
     else
        begin
          frmdados.cds_nfe.Edit;
          frmdados.cds_nfeehcancelada.Value := 'T';
          frmdados.cds_nfe.Post;

          showmessage(sresposta);

        end;
     //endi



   end
else
   begin
     lblmensagem.Caption := 'Operação Abortada';
     frmdetalhepedido.Update;
   end;
//endi


//if application.MessageBox('Deseja Excluir Esse Registro?','Atenção',mb_YesNo + mb_DefButton2) = idYes then
//   begin
//     frmdados.cds_nfe.Delete;
//     frmpesqnfemi.pctdados.TabIndex := 0;
//     close;
//   end;
//endi





end;

procedure Tfrmdetalhepedido.BitBtn1Click(Sender: TObject);
var vardir:string;
    texto, saida:textfile;
    linha, linhas:string;
    scnpje:string;
    sCidadeCod:string;

    bOk, bError, bfimarq:boolean;
    data:tdatetime;

    icontadornfe, innf:integer;
    scomando:string;
begin


  sresp:='';
  scomando := '';

  bok := false;
  bError := false;
  bfimarq := false;

  if lblchave.caption = 'NENHUM ARQUIVO DE CHAVE IDENTIFICADO' then
     exit;
  //endi

  vardir := extractfilepath(application.ExeName);

icontadornfe := frmdados.cds_nfe.fieldbyname('contador').asInteger;
innf :=         frmdados.cds_nfe.fieldbyname('nnf').AsInteger;


  if frmdados.cds_nfe.fieldbyname('icorrecao').asInteger >= 20 then
      begin
        showmessage('Número de correções excedida');
        exit;
      end;
  //endi


  data := now;

  if frmdados.cds_indice.FieldByName('hverao').AsString = 'SIM' then
     data := (data * 17280) - 730
  else
     data := (data * 17280) - 10;
  //endi



 if frmdados.cds_emitente.Locate('codigo',frmdados.cds_nfe.fieldbyname('cemi').asInteger,[]) then
     begin
       scnpje := frmdados.Cds_emitente.fieldbyname('cnpj').asString;
       scnpje := tirapontos(scnpje);
       scnpje := tiratracos(scnpje);
       scnpje := tirabarras(scnpje);

       if frmdados.cds_Munic.Locate('codigo',frmdados.cds_emitente.fieldbyname('cmun').asInteger,[]) then
          begin
            sCidadeCod:= copy(frmdados.cds_munic.fieldbyname('codibge').asString,1,2);
          end;
       //endi

     end;
 //endi






 frmcorrecao := tfrmcorrecao.Create(self);
 frmcorrecao.ShowModal;
 frmcorrecao.Free;



if sresp <> '' then
   begin

     if length (sresp) < 15 then
        begin
          lblmensagem.Caption := '';
          showmessage('Não posso prosseguir, mínimo de 15 caracteres.');

          exit;
        end;
     //endi


     scomando := 'NFe.CARTADECORRECAO("[CCE]'+#13;
     scomando := scomando + 'idLote=1'+#13;
     scomando := scomando +'[EVENTO001]'+#13;
     scomando := scomando +'chNFe='+lblchave.caption+#13;
     scomando := scomando +'cOrgao='+sCidadeCod+#13;
     scomando := scomando +'CNPJ='+scnpje+#13;
     scomando := scomando +'dhEvento='+FormatDateTime('dd/mm/yyyy hh:mm:ss',    data/17280   )+#13;

     frmdados.cds_nfe.Edit;

     if  frmdados.cds_nfe.fieldbyname('icorrecao').asInteger = 0 then
         frmdados.cds_nfe.fieldbyname('icorrecao').asInteger := 1;

     scomando := scomando +'nSeqEvento='+  inttostr(frmdados.cds_nfe.fieldbyname('icorrecao').asInteger )+#13 ;

     frmdados.cds_nfe.Post;

     scomando := scomando +'xCorrecao='+ sresp +'")'+#13;


     sresposta := conexao_acbrmonitortcpip( scomando  );
     ipos := pos('Rejeição',sresposta);

     if ipos > 0 then
        begin

          showmessage(sresposta);

        end
     else
        begin

          frmdados.cds_nfe.Edit;
          frmdados.cds_nfeehcorrigida.Value := 'T';
          frmdados.cds_nfe.Post;

          frmrelcartacorrecao := tfrmrelcartacorrecao.Create(self);
          frmrelcartacorrecao.relatorio.Preview;
          frmrelcartacorrecao.Free;

          frmdados.cds_nfe.Edit;
          frmdados.cds_nfe.fieldbyname('icorrecao').asInteger :=  frmdados.cds_nfe.fieldbyname('icorrecao').asInteger + 1;
          frmdados.cds_nfe.Post;

          frmpesqnfemi.EDIICORRECAO.Text :=  inttostr( frmdados.cds_nfe.fieldbyname('icorrecao').asInteger );

          showmessage(sresposta);

        end;
     //endi










   end
else
   begin
     lblmensagem.Caption := 'Operação Abortada';
     frmdetalhepedido.Update;
   end;
//endi




end;

procedure Tfrmdetalhepedido.BitBtn2Click(Sender: TObject);
var vardir:string;
    texto, saida:textfile;
    linha, linhas:string;
    scnpje:string;
    sCidadeCod,
    caminho,
    scaminho:string;

    bOk, bError, bfimarq:boolean;
    data:tdatetime;

    ipos:integer;

    baut, bNaut:boolean;

    icontadornfe, innf:integer;
begin

  bok := false;
  bError := false;
  bfimarq := false;


  vardir := extractfilepath(application.ExeName);

  icontadornfe := frmdados.cds_nfe.fieldbyname('contador').asInteger;
  innf :=         frmdados.cds_nfe.fieldbyname('nnf').AsInteger;

  caminho := frmdados.cds_nfe.fieldbyname('arquivonfe').AsString;

  if not fileexists(caminho) then
     begin
       showmessage('arquivo XML não existe');
       exit;
     end;
  //endi

  if lblchave.caption = 'NENHUM ARQUIVO DE CHAVE IDENTIFICADO' then
     exit;
  //endi

  if frmdados.cds_nfe.FieldByName('tipodest').AsString  = 'C' then
     if frmdados.cds_clientes.Locate('codigo',frmdados.cds_nfe.fieldbyname('cdest').asInteger,[]) then
        sresp:= frmdados.cds_clientes.fieldbyname('email').AsString;
     //endif
  //endif

  if frmdados.cds_nfe.FieldByName('tipodest').AsString  = 'F' then
     if frmdados.cds_fornecedores.Locate('codigo',frmdados.cds_nfe.fieldbyname('cdest').asInteger,[]) then
       sresp:= frmdados.cds_fornecedores.fieldbyname('email').AsString;
     //endif
  //endif

 if inputQuery('ENVIAR EMAIL','Informe ou altere email',sresp) then
   begin

     if (length (sresp) = 0) or (pos('@',sresp) = 0) then
        begin
          lblmensagem.Caption := '';
          showmessage('Não posso prosseguir, informe um email válido.');
          exit;
        end;
     //endi

     sresposta := conexao_acbrmonitortcpip( 'NFE.ENVIAREMAIL("'+sresp+'","'+caminho+'",1)'  );

   end
else
   begin
     lblmensagem.Caption := 'Operação Abortada';
     frmdetalhepedido.Update;
   end;
//endi




end;



function Tfrmdetalhepedido.conexao_acbrmonitortcpip(comando:String):String;
  var slinha:string;

begin

  try

      try

        frmconexaotcpip  := tfrmconexaotcpip.Create(self);

        frmconexaotcpip.IdTCPClient1.Host := frmdados.cds_indice.fieldbyname('acbrmonitor_hosttcpip').AsString;

        frmconexaotcpip.IdTCPClient1.Port := frmdados.cds_indice.fieldbyname('acbrmonitor_porttcpip').AsInteger;

        if not frmconexaotcpip.IdTCPClient1.Connected then
           frmconexaotcpip.IdTCPClient1.Connect;

        frmconexaotcpip.IdTCPClient1.IOHandler.DefStringEncoding := idglobal.IndyTextEncoding_UTF8;

        frmconexaotcpip.IdTCPClient1.Socket.Write( comando+sLineBreak+'.'+sLineBreak );

        if pos('NFE.IMPRIMIRDANFE',comando) > 0 then
           begin
             result:= frmconexaotcpip.IdTCPClient1.Socket.ReadLn+#13+
                      'Resposta não analisada de forma integral';
             exit;
           end;
        //endi

        if pos('NFE.ENVIAREMAIL',comando) > 0 then
           begin
             result:= frmconexaotcpip.IdTCPClient1.Socket.ReadLn+#13+
                      'Resposta não analisada de forma integral';
             exit;
           end;
        //endi



        while  true do
         begin

           if ( pos('NFE.ENVIARNFE',comando) > 0 ) or
              ( pos('NFe.CancelarNFe',comando) > 0 ) or
              ( pos('NFe.CARTADECORRECAO',comando) > 0 )
           then
              begin

                 if ( pos('nProt=',slinha)>0 ) then
                    break;


                 if ( pos('XML=',slinha)>0 ) then
                    break;

                 if ( pos('DigVal=',slinha)>0 ) then
                    break;

              end
           else
              begin

                if (pos(#3,slinha) > 0) then
                   break;


              end;

           slinha := slinha + frmconexaotcpip.IdTCPClient1.Socket.ReadLn+#13;


         end;



         result := slinha;

      except

         result := 'Houve um erro durante a requisição,'+#13+'verifique o motor de envio da NFE '+#13+'ou suas configurações';

      end;

  finally

      frmconexaotcpip.Destroy;

  end;

end;






















//------------------------


end.
