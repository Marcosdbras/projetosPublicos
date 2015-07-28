unit menu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Collection, StdCtrls, Menus, ExtCtrls, Buttons, DB,
  LMDCustomControl, LMDCustomPanel, LMDButtonControl, LMDRadioButton, jpeg,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Grids, DBGrids,
  TFlatPanelUnit;

type
  Tfrmmenu = class(TForm)
    BitBtn12: TBitBtn;
    Label12: TLabel;
    PopupMenu1: TPopupMenu;
    FECHAR1: TMenuItem;
    DataSource1: TDataSource;
    MainMenu1: TMainMenu;
    Image1: TImage;
    Label13: TLabel;
    Label14: TLabel;
    BitBtn13: TBitBtn;
    BitBtn14: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    Label9: TLabel;
    Label10: TLabel;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    Label8: TLabel;
    Label11: TLabel;
    lnota: TLabel;
    BitBtn8: TBitBtn;
    BitBtn11: TBitBtn;
    bnota: TBitBtn;
    Label15: TLabel;
    check_visa: TLMDRadioButton;
    check_tecban: TLMDRadioButton;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    qrproduto_mov: TZQuery;
    dsproduto_mov: TDataSource;
    DBGrid1: TDBGrid;
    BitBtn7: TBitBtn;
    Label7: TLabel;
    ZQuery1: TZQuery;
    patualiza: TFlatPanel;
    check_hipercard: TLMDRadioButton;
    procedure FECHAR1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure bnotaClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
  private
    { Private declarations }
    function formata_valor(valor:string):string;
  public
    { Public declarations }
  end;

var
  frmmenu: Tfrmmenu;

implementation

uses principal, modulo, leituraMemoria, suprimentocaixa, sangriacaixa,
  caixa_abertura_individual, caixa_fechado, Math, config, notas_venda,
  progresso, ecf_daruma, ecf_bematech, ecf_sweda, ecf_urano, ecf_yanco,
  ecf_reducao_menu, unFuncoesTEF, unCancelarTEF;

{$R *.dfm}
function tfrmmenu.formata_valor(valor:string):string;
var i : integer;
begin
  i := pos('.',valor);
  while i <> 0 do
  begin
      delete(valor,i,1);
      i := pos('.',valor);
  end;
  result := valor;
end;

procedure Tfrmmenu.FECHAR1Click(Sender: TObject);
begin
  CLOSE;
end;

procedure Tfrmmenu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ACTION := CAFREE;
end;

procedure Tfrmmenu.BitBtn12Click(Sender: TObject);
begin
  CLOSE;
end;

procedure Tfrmmenu.BitBtn4Click(Sender: TObject);
var ncupom : integer;
begin
  if frmprincipal.autentica('Cancelamento de Cupom',4) then
  begin
    if application.messagebox('Confirma o cancelamento do último cupom?','Atenção',mb_yesno+MB_ICONWARNING+MB_DEFBUTTON2) = idyes then
    begin

          if ecf_modelo = 'DARUMA' then ncupom := strtoint(frmecf_daruma.ecf_numero_cupom(ecf_modelo));
          if ecf_modelo = 'BEMATECH' then ncupom := strtoint(frmecf_BEMATECH.ecf_numero_cupom(ecf_modelo));
          if ecf_modelo = 'SWEDA' then ncupom := strtoint(frmecf_SWEDA.ecf_numero_cupom(ecf_modelo));
          if ecf_modelo = 'URANO' then ncupom := strtoint(frmecf_URANO.ecf_numero_cupom(ecf_modelo));
          if ecf_modelo = 'YANCO' then ncupom := strtoint(frmecf_YANCO.ecf_numero_cupom(ecf_modelo));



          IF (ECF_MODELO <> 'SWEDA') THEN
          IF (ECF_MODELO <> 'SWEDA_MFD') THEN ncupom := ncupom - 1;
          numero_cupom := inttostr(ncupom);
          numero_cupom := frmprincipal.zerarcodigo(numero_cupom,6);


          frmmodulo.qrvenda.close;
          frmmodulo.qrvenda.sql.clear;
          frmmodulo.qrvenda.sql.add('select * from c000048 where NUMERO_CUPOM_FISCAL = '''+numero_cupom+''' and codcaixa = '''+codigo_caixa+'''');
          frmmodulo.qrvenda.Open;
          if frmmodulo.qrvenda.recordcount = 0 then
          begin
            showmessage('Venda não econtrada ou não foi feita por este operador de caixa!');
            exit;
          end;

          if ecf_modelo = 'DARUMA'   then if frmecf_daruma.ecf_cancela_cupom(ecf_modelo) <> 'OK' then exit;
          if ecf_modelo = 'BEMATECH' then if frmecf_bematech.ecf_cancela_cupom(ecf_modelo) <> 'OK' then exit;
          if ecf_modelo = 'SWEDA'    then if frmecf_sweda.ecf_cancela_cupom(ecf_modelo) <> 'OK' then exit;
          if ecf_modelo = 'URANO'    then if frmecf_urano.ecf_cancela_cupom(ecf_modelo) <> 'OK' then exit;
          if ecf_modelo = 'YANCO'    then if frmecf_yanco.ecf_cancela_cupom(ecf_modelo) <> 'OK' then exit;





      if utiliza_historico_VENDA = 'SIM' then
      BEGIN
        if utiliza_lancamento_caixa = 'SIM' THEN
        BEGIN
           (*------lançamento no caixa------*)






                FRMMODULO.qrcliente.Open;
                frmmodulo.qrcliente.SQL.clear;
                frmmodulo.qrcliente.sql.add('select * from c000007 where codigo = '''+FRMMODULO.QRVENDA.FIELDBYNAME('CODCLIENTE').ASSTRING+'''');
                frmmodulo.qrcliente.open;
                if frmmodulo.qrcliente.recordcount > 0 then
                   consumidor_nome := FRMMODULO.QRCLIENTE.FIELDBYNAME('NOME').ASSTRING ELSE
                   consumidor_nome := 'CLIENTE ESPECIAL';



                ////  LANCAMENTOS ESPECIFICOS DE CADA FORMA DE PAGAMENTO
                if FRMMODULO.QRVENDA.FIELDBYNAME('MEIO_DINHEIRO').ASFLOAT <> 0 then
                begin
                  frmmodulo.qrcaixa_mov.close;
                  frmmodulo.qrcaixa_mov.sql.clear;
                  frmmodulo.qrcaixa_mov.sql.add('insert into c000044');
                  frmmodulo.qrcaixa_mov.sql.add('(codigo,codcaixa,codoperador,data,saida,valor,codconta,movimento,historico)');
                  frmmodulo.qrcaixa_mov.sql.add('values');
                  frmmodulo.qrcaixa_mov.sql.add('('''+frmprincipal.codifica('000044',7)+''','''+codigo_caixa+''','''+codigo_caixa+''',:datax,');
                  frmmodulo.qrcaixa_mov.sql.add(':saida,:VALOR,''100001'',3,''CANCELAMENTO Venda No. '+FRMMODULO.QRVENDA.FIELDBYNAME('CODIGO').ASSTRING+' - '+CONSUMIDOR_NOME+''')');
                  frmmodulo.qrcaixa_mov.Params.ParamByName('datax').asdatetime := strtodate(data_caixa);
                  FRMMODULO.QRCAIXA_MOV.Params.ParamByName('VALOR').ASFLOAT := FRMMODULO.QRVENDA.FIELDBYNAME('MEIO_DINHEIRO').ASFLOAT * (-1);
                  frmmodulo.qrcaixa_mov.params.parambyname('saida').asfloat := FRMMODULO.QRVENDA.FIELDBYNAME('MEIO_DINHEIRO').ASFLOAT;
                  FRMMODULO.qrcaixa_mov.ExecSQL;
                end;


                if FRMMODULO.QRVENDA.FIELDBYNAME('MEIO_CHEQUEAV').ASFLOAT <> 0 then
                begin
                  frmmodulo.qrcaixa_mov.close;
                  frmmodulo.qrcaixa_mov.sql.clear;
                  frmmodulo.qrcaixa_mov.sql.add('insert into c000044');
                  frmmodulo.qrcaixa_mov.sql.add('(codigo,codcaixa,codoperador,data,saida,valor,codconta,movimento,historico)');
                  frmmodulo.qrcaixa_mov.sql.add('values');
                  frmmodulo.qrcaixa_mov.sql.add('('''+frmprincipal.codifica('000044',7)+''','''+codigo_caixa+''','''+codigo_caixa+''',:datax,');
                  frmmodulo.qrcaixa_mov.sql.add('0,:VALOR,''100001'',5,''CANCELAMENTO Venda No. '+FRMMODULO.QRVENDA.FIELDBYNAME('CODIGO').ASSTRING+' - '+CONSUMIDOR_NOME+''')');
                  frmmodulo.qrcaixa_mov.Params.ParamByName('datax').asdatetime := strtodate(data_caixa);
                  FRMMODULO.QRCAIXA_MOV.Params.ParamByName('VALOR').ASFLOAT := FRMMODULO.QRVENDA.FIELDBYNAME('MEIO_CHEQUEAV').ASFLOAT * (-1);
                  FRMMODULO.qrcaixa_mov.ExecSQL;
                 end;
                if FRMMODULO.QRVENDA.FIELDBYNAME('MEIO_CHEQUEAP').ASFLOAT <> 0 then
                begin
                  frmmodulo.qrcaixa_mov.close;
                  frmmodulo.qrcaixa_mov.sql.clear;
                  frmmodulo.qrcaixa_mov.sql.add('insert into c000044');
                  frmmodulo.qrcaixa_mov.sql.add('(codigo,codcaixa,codoperador,data,saida,valor,codconta,movimento,historico)');
                  frmmodulo.qrcaixa_mov.sql.add('values');
                  frmmodulo.qrcaixa_mov.sql.add('('''+frmprincipal.codifica('000044',7)+''','''+codigo_caixa+''','''+codigo_caixa+''',:datax,');
                  frmmodulo.qrcaixa_mov.sql.add('0,:VALOR,''100001'',6,''CANCELAMENTO Venda No. '+FRMMODULO.QRVENDA.FIELDBYNAME('CODIGO').ASSTRING+' - '+CONSUMIDOR_NOME+''')');
                  frmmodulo.qrcaixa_mov.Params.ParamByName('datax').asdatetime := strtodate(data_caixa);
                  FRMMODULO.QRCAIXA_MOV.Params.ParamByName('VALOR').ASFLOAT := FRMMODULO.QRVENDA.FIELDBYNAME('MEIO_CHEQUEAP').ASFLOAT * (-1);
                  FRMMODULO.qrcaixa_mov.ExecSQL;
                 end;
                if FRMMODULO.QRVENDA.FIELDBYNAME('MEIO_CARTAOCRED').ASFLOAT <> 0 then
                begin
                  frmmodulo.qrcaixa_mov.close;
                  frmmodulo.qrcaixa_mov.sql.clear;
                  frmmodulo.qrcaixa_mov.sql.add('insert into c000044');
                  frmmodulo.qrcaixa_mov.sql.add('(codigo,codcaixa,codoperador,data,saida,valor,codconta,movimento,historico)');
                  frmmodulo.qrcaixa_mov.sql.add('values');
                  frmmodulo.qrcaixa_mov.sql.add('('''+frmprincipal.codifica('000044',7)+''','''+codigo_caixa+''','''+codigo_caixa+''',:datax,');
                  frmmodulo.qrcaixa_mov.sql.add('0,:VALOR,''100001'',7,''CANCELAMENTO Venda No. '+FRMMODULO.QRVENDA.FIELDBYNAME('CODIGO').ASSTRING+' - '+CONSUMIDOR_NOME+''')');
                  frmmodulo.qrcaixa_mov.Params.ParamByName('datax').asdatetime := strtodate(data_caixa);
                  FRMMODULO.QRCAIXA_MOV.Params.ParamByName('VALOR').ASFLOAT := FRMMODULO.QRVENDA.FIELDBYNAME('MEIO_CARTAOCRED').ASFLOAT * (-1);
                  FRMMODULO.qrcaixa_mov.ExecSQL;
                 end;
                if FRMMODULO.QRVENDA.FIELDBYNAME('MEIO_CARTAODEB').ASFLOAT <> 0 then
                begin
                  frmmodulo.qrcaixa_mov.close;
                  frmmodulo.qrcaixa_mov.sql.clear;
                  frmmodulo.qrcaixa_mov.sql.add('insert into c000044');
                  frmmodulo.qrcaixa_mov.sql.add('(codigo,codcaixa,codoperador,data,saida,valor,codconta,movimento,historico)');
                  frmmodulo.qrcaixa_mov.sql.add('values');
                  frmmodulo.qrcaixa_mov.sql.add('('''+frmprincipal.codifica('000044',7)+''','''+codigo_caixa+''','''+codigo_caixa+''',:datax,');
                  frmmodulo.qrcaixa_mov.sql.add('0,:VALOR,''100001'',8,''CANCELAMENTO Venda No. '+FRMMODULO.QRVENDA.FIELDBYNAME('CODIGO').ASSTRING+' - '+CONSUMIDOR_NOME+''')');
                  frmmodulo.qrcaixa_mov.Params.ParamByName('datax').asdatetime := strtodate(data_caixa);
                  FRMMODULO.QRCAIXA_MOV.Params.ParamByName('VALOR').ASFLOAT := FRMMODULO.QRVENDA.FIELDBYNAME('MEIO_CARTAODEB').ASFLOAT * (-1);
                  FRMMODULO.qrcaixa_mov.ExecSQL;
                 end;
                if FRMMODULO.QRVENDA.FIELDBYNAME('MEIO_CREDIARIO').ASFLOAT <> 0 then
                begin
                  frmmodulo.qrcaixa_mov.close;
                  frmmodulo.qrcaixa_mov.sql.clear;
                  frmmodulo.qrcaixa_mov.sql.add('insert into c000044');
                  frmmodulo.qrcaixa_mov.sql.add('(codigo,codcaixa,codoperador,data,saida,valor,codconta,movimento,historico)');
                  frmmodulo.qrcaixa_mov.sql.add('values');
                  frmmodulo.qrcaixa_mov.sql.add('('''+frmprincipal.codifica('000044',7)+''','''+codigo_caixa+''','''+codigo_caixa+''',:datax,');
                  frmmodulo.qrcaixa_mov.sql.add('0,:VALOR,''100001'',4,''CANCELAMENTO Venda No. '+FRMMODULO.QRVENDA.FIELDBYNAME('CODIGO').ASSTRING+' - '+CONSUMIDOR_NOME+''')');
                  frmmodulo.qrcaixa_mov.Params.ParamByName('datax').asdatetime := strtodate(data_caixa);
                  FRMMODULO.QRCAIXA_MOV.Params.ParamByName('VALOR').ASFLOAT := FRMMODULO.QRVENDA.FIELDBYNAME('MEIO_CREDIARIO').ASFLOAT * (-1);
                  FRMMODULO.qrcaixa_mov.ExecSQL;
                 end;
        END;



                (*------final lancto  caixa------*)

        IF utiliza_contas_receber = 'SIM' THEN
        BEGIN


                frmmodulo.qrcontasreceber.Close;
                frmmodulo.qrcontasreceber.SQL.Clear;
                frmmodulo.qrcontasreceber.sql.add('select * from c000049 where codvenda = '''+frmmodulo.qrvenda.fieldbyname('codigo').asstring+'''');
                frmmodulo.qrcontasreceber.open;
                frmmodulo.qrcontasreceber.First;
                while frmmodulo.qrcontasreceber.recordcount <> 0 do
                begin
                  frmmodulo.qrcontasreceber.delete;
                end;
        END;


                frmmodulo.qrproduto_mov.close;
                frmmodulo.qrproduto_mov.SQL.Clear;
                frmmodulo.qrproduto_mov.sql.add('select * from c000032 where codnota = '''+frmmodulo.qrvenda.fieldbyname('codigo').asstring+''' and codcliente = '''+frmmodulo.qrvenda.fieldbyname('codcliente').asstring+''' and movimento <> 9');
                frmmodulo.qrproduto_mov.Open;
                frmmodulo.qrproduto_mov.First;

                while frmmodulo.qrproduto_mov.recordcount <> 0 do
                begin
                  frmmodulo.qrproduto_mov.delete;
                end;

        frmmodulo.qrvenda.delete;
      end;
    end;
    showmessage('Cupom Fiscal cancelado!');
    FRMMODULO.Conexao.Commit;
  end
  else
  begin
    application.messagebox('Não autorizado!','Atenção',mb_ok+mb_iconwarning);
  end;

end;

procedure Tfrmmenu.BitBtn1Click(Sender: TObject);
begin
  IF ECF_modelo = 'DARUMA' THEN frmecf_daruma.ecf_leitura_x(ecf_modelo);
  IF ECF_modelo = 'BEMATECH' THEN frmecf_BEMATECH.ecf_leitura_x(ecf_modelo);
  IF ECF_modelo = 'SWEDA' THEN frmecf_SWEDA.ecf_leitura_x(ecf_modelo);
  IF ECF_modelo = 'URANO' THEN frmecf_URANO.ecf_leitura_x(ecf_modelo);
  IF ECF_modelo = 'YANCO' THEN frmecf_YANCO.ecf_leitura_x(ecf_modelo);


end;

procedure Tfrmmenu.BitBtn2Click(Sender: TObject);
VAR TXT : TEXTFILE;
TEXTO, cnpj_cpf, ie_rg : STRING;
i : integer;
vordem,vserial : string;

begin
  if frmprincipal.autentica('Redução Z',3) then
  begin
    if application.messagebox('Confirma a Emissão da Redução Z?','Atenção',mb_yesno+MB_ICONWARNING+MB_DEFBUTTON2) = idyes then
    begin

      frmmodulo.qrconfig.Open;
      vordem  := frmmodulo.qrconfig.FieldByName('ECF_CAIXA').asstring;
      vserial := frmmodulo.qrconfig.FieldByName('ECF_SERIAL').asstring;

      IF ECF_modelo = 'DARUMA' THEN frmecf_daruma.ecf_reducao_z(ecf_modelo);
      IF ECF_modelo = 'BEMATECH' THEN frmecf_BEMATECH.ecf_reducao_z(ecf_modelo);
      IF ECF_modelo = 'SWEDA' THEN frmecf_SWEDA.ecf_reducao_z(ecf_modelo);
      IF ECF_modelo = 'URANO' THEN frmecf_URANO.ecf_reducao_z(ecf_modelo);
      IF ECF_modelo = 'YANCO' THEN frmecf_YANCO.ecf_reducao_z(ecf_modelo);

       frmprogresso := tfrmprogresso.create(self);
       frmprogresso.barra.Position := 0;
       frmprogresso.show;
       Application.ProcessMessages;

      (***************** CRIAR ARQUIVO TIPO 60 M *****************)
       cnpj_cpf := emitente_cnpj;
       i := pos('.',cnpj_cpf);
       while i > 0 do
       begin
         delete(cnpj_cpf,i,1);
         i := pos('.',cnpj_cpf);
       end;
       i := pos('/',cnpj_cpf);
       while i > 0 do
       begin
         delete(cnpj_cpf,i,1);
         i := pos('/',cnpj_cpf);
       end;
       i := pos('-',cnpj_cpf);
       while i > 0 do
       begin
         delete(cnpj_cpf,i,1);
         i := pos('-',cnpj_cpf);
       end;


       ie_rg := emitente_ie;
       i := pos('.',ie_rg);
       while i > 0 do
       begin
         delete(ie_rg,i,1);
         i := pos('.',ie_rg);
       end;
       i := pos('-',ie_rg);
       while i > 0 do
       begin
         delete(ie_rg,i,1);
         i := pos('-',ie_rg);
       end;

//TRY

      frmmodulo.qrsintegra_r60.close;
       frmmodulo.qrsintegra_r60.sql.clear;
       frmmodulo.qrsintegra_r60.SQL.Add('select * from sintegra_reg60 where ID IS NOT NULL');
       frmmodulo.qrsintegra_r60.Open;

       frmmodulo.qrsintegra_r60.insert;
       frmmodulo.qrsintegra_r60.FieldByName('ID').asstring := '1';
       frmmodulo.qrsintegra_r60.FieldByName('movimento').asstring := '1';
       frmmodulo.qrsintegra_r60.FieldByName('CODIGO_EMPRESA').asinteger := 1;
       frmmodulo.qrsintegra_r60.FieldByName('cnpj').asstring := cnpj_cpf;
       frmmodulo.qrsintegra_r60.FieldByName('ie').asstring := ie_rg;
       frmmodulo.qrsintegra_r60.FieldByName('uf').asstring := emitente_uf;

       frmprogresso.ltexto.caption := 'Gerando REGISTRO 60 ANALÍTICO para o SINTEGRA...';
       frmprogresso.barra.Position := 5;
       Application.ProcessMessages;

       I := 1;

       if ecf_modelo = 'DARUMA' then frmecf_daruma.ecf_registro_60A(ecf_modelo);
       if ecf_modelo = 'BEMATECH' then frmecf_BEMATECH.ecf_registro_60A(ecf_modelo);
       if ecf_modelo = 'SWEDA' then frmecf_SWEDA.ecf_registro_60A(ecf_modelo);
       if ecf_modelo = 'URANO' then frmecf_URANO.ecf_registro_60A(ecf_modelo);
       if ecf_modelo = 'YANCO' then frmecf_YANCO.ecf_registro_60A(ecf_modelo);

       if FileExists('\retorno.txt') then
       begin
         ASSIGNFILE(TXT,'\retorno.txt');
         reset(txt);
         while not eof(txt) do
         begin
           readln(txt,texto);
           IF (I > 9) AND (copy(texto,CAMPO_INI,CAMPO_QTDE) <> 'ISS.......................:') then
           BEGIN
              IF frmmodulo.qrsintegra_r60.FieldByName('aliquota01').asfloat = 0 then
              begin
                frmmodulo.qrsintegra_r60.FieldByName('aliquota01').asfloat := strtofloat(copy(texto,1,4))/100;
                texto := (TrimLeft(copy(texto,RESULTADO_INI,RESULTADO_QTDE)));
                frmmodulo.qrsintegra_r60.FieldByName('VALOR_TPARCIAL01').asstring :=  formata_valor(texto);
                frmmodulo.qrsintegra_r60.FieldByName('BASE01').asstring :=  formata_valor(texto);

              end
              else
              begin
                IF frmmodulo.qrsintegra_r60.FieldByName('aliquota02').asfloat = 0 then
                begin
                  frmmodulo.qrsintegra_r60.FieldByName('aliquota02').asfloat := strtofloat(copy(texto,1,4))/100;
                  texto := (TrimLeft(copy(texto,RESULTADO_INI,RESULTADO_QTDE)));
                  frmmodulo.qrsintegra_r60.FieldByName('VALOR_TPARCIAL02').asstring :=  formata_valor(texto);
                  frmmodulo.qrsintegra_r60.FieldByName('BASE02').asstring :=  formata_valor(texto);

                end
                else
                begin
                  IF frmmodulo.qrsintegra_r60.FieldByName('aliquota03').asfloat = 0 then
                  begin
                    frmmodulo.qrsintegra_r60.FieldByName('aliquota03').asfloat := strtofloat(copy(texto,1,4))/100;
                    texto := (TrimLeft(copy(texto,RESULTADO_INI,RESULTADO_QTDE)));
                    frmmodulo.qrsintegra_r60.FieldByName('VALOR_TPARCIAL03').asstring :=  formata_valor(texto);
                    frmmodulo.qrsintegra_r60.FieldByName('BASE03').asstring :=  formata_valor(texto);
                  end
                  else
                  begin
                    IF frmmodulo.qrsintegra_r60.FieldByName('aliquota04').asfloat = 0 then
                    begin
                      frmmodulo.qrsintegra_r60.FieldByName('aliquota04').asfloat := strtofloat(copy(texto,1,4))/100;
                      texto := (TrimLeft(copy(texto,RESULTADO_INI,RESULTADO_QTDE)));
                      frmmodulo.qrsintegra_r60.FieldByName('VALOR_TPARCIAL04').asstring :=  formata_valor(texto);
                      frmmodulo.qrsintegra_r60.FieldByName('BASE04').asstring :=  formata_valor(texto);
                    end
                    else
                    begin
                      frmmodulo.qrsintegra_r60.FieldByName('aliquota05').asfloat := strtofloat(copy(texto,1,4))/100;
                      texto := (TrimLeft(copy(texto,RESULTADO_INI,RESULTADO_QTDE)));
                      frmmodulo.qrsintegra_r60.FieldByName('VALOR_TPARCIAL05').asstring :=  formata_valor(texto);
                      frmmodulo.qrsintegra_r60.FieldByName('BASE05').asstring :=  formata_valor(texto);

                    end;
                  end;
                end;
              end;



           END;
           if copy(texto,CAMPO_INI,CAMPO_QTDE) = 'Data de emissão...........:' then
           begin
             texto := (TrimLeft(copy(texto,RESULTADO_INI,RESULTADO_QTDE)));
             Insert(copy(datetostr(date),7,2),texto,7);
             frmmodulo.qrsintegra_r60.FieldByName('DATA_EMISSAO').asstring := texto;
           end;
           if copy(texto,CAMPO_INI,CAMPO_QTDE) = 'Número de série...........:' then
           begin
             texto := (TrimLeft(copy(texto,RESULTADO_INI,RESULTADO_QTDE)));
             //frmmodulo.qrsintegra_r60.FieldByName('NRO_SERIE_EQP').asstring := texto;
             frmmodulo.qrsintegra_r60.FieldByName('NRO_SERIE_EQP').asstring := vserial;
           end;
           if copy(texto,CAMPO_INI,CAMPO_QTDE) = 'Cancelamentos.............:' then
           begin
             texto := (TrimLeft(copy(texto,RESULTADO_INI,RESULTADO_QTDE)));
             frmmodulo.qrsintegra_r60.FieldByName('CANCELAMENTO').asstring := formata_valor(texto);
           end;
           if copy(texto,CAMPO_INI,CAMPO_QTDE) = 'Descontos.................:' then
           begin
             texto := (TrimLeft(copy(texto,RESULTADO_INI,RESULTADO_QTDE)));
             frmmodulo.qrsintegra_r60.FieldByName('DESCONTO').asstring := formata_valor(texto);
           end;
           if copy(texto,CAMPO_INI,CAMPO_QTDE) = 'ISS.......................:' then
           begin
             texto := (TrimLeft(copy(texto,RESULTADO_INI,RESULTADO_QTDE)));
             frmmodulo.qrsintegra_r60.FieldByName('ISSQN').asstring := formata_valor(texto);
           end;
           if copy(texto,CAMPO_INI,CAMPO_QTDE) = 'F.........................:' then
           begin
             texto := (TrimLeft(copy(texto,RESULTADO_INI,RESULTADO_QTDE)));
             frmmodulo.qrsintegra_r60.FieldByName('SUBSTITUICAO_TRIBUTARIA').asstring := formata_valor(texto);
           end;
           if copy(texto,CAMPO_INI,CAMPO_QTDE) = 'I.........................:' then
           begin
             texto := (TrimLeft(copy(texto,RESULTADO_INI,RESULTADO_QTDE)));
             frmmodulo.qrsintegra_r60.FieldByName('ISENTO').asstring := formata_valor(texto);
           end;
           if copy(texto,CAMPO_INI,CAMPO_QTDE) = 'N.........................:' then
           begin
             texto := (TrimLeft(copy(texto,RESULTADO_INI,RESULTADO_QTDE)));
             frmmodulo.qrsintegra_r60.FieldByName('NAO_INCIDENCIA').asstring := formata_valor(texto);
           end;
           I := I + 1;
           frmprogresso.barra.Position := frmprogresso.barra.Position + 5;
           Application.ProcessMessages;
         end;
         closefile(txt);
         deletefile('\retorno.txt');
       end;

       Application.ProcessMessages;
       if FileExists('\retorno.txt') then DELETEFILE('\RETORNO.TXT');
       frmprogresso.ltexto.caption := 'Gerando REGISTRO 60 MESTRE para o SINTEGRA...';
       Application.ProcessMessages;



       if ecf_modelo = 'DARUMA' then frmecf_daruma.ecf_registro_60M(ecf_modelo);
       if ecf_modelo = 'BEMATECH' then frmecf_BEMATECH.ecf_registro_60M(ecf_modelo);
       if ecf_modelo = 'SWEDA' then frmecf_SWEDA.ecf_registro_60M(ecf_modelo);
       if ecf_modelo = 'URANO' then frmecf_URANO.ecf_registro_60M(ecf_modelo);
       if ecf_modelo = 'YANCO' then frmecf_YANCO.ecf_registro_60M(ecf_modelo);


       if FileExists('\retorno.txt') then
       begin
         ASSIGNFILE(TXT,'\retorno.txt');
         reset(txt);
         while not eof(txt) do
         begin
           readln(txt,texto);
           if copy(texto,CAMPO_INI,CAMPO_QTDE) = 'Número do equipamento.....:' then
           begin
             texto := (TrimLeft(copy(texto,RESULTADO_INI,RESULTADO_QTDE)));
             //frmmodulo.qrsintegra_r60.FieldByName('NRO_ORDEM_EQP').asstring := texto;
            frmmodulo.qrsintegra_r60.FieldByName('NRO_ORDEM_EQP').asstring := vordem;
           end;
           if copy(texto,CAMPO_INI,CAMPO_QTDE) = 'Modelo do documento fiscal:' then
           begin
             texto := (TrimLeft(copy(texto,RESULTADO_INI,RESULTADO_QTDE)));
             frmmodulo.qrsintegra_r60.FieldByName('MODELO_DOC').asstring := texto;
           end;
           if copy(texto,CAMPO_INI,CAMPO_QTDE) = 'COO inicial...............:' then
           begin
             texto := (TrimLeft(copy(texto,RESULTADO_INI,RESULTADO_QTDE)));
             frmmodulo.qrsintegra_r60.FieldByName('NRO_CONTADOR_INICIO').asstring := texto;
           end;
           if copy(texto,CAMPO_INI,CAMPO_QTDE) = 'COO final.................:' then
           begin
             texto := (TrimLeft(copy(texto,RESULTADO_INI,RESULTADO_QTDE)));
             frmmodulo.qrsintegra_r60.FieldByName('NRO_CONTADOR_FIM').asstring := texto;
           end;
           if copy(texto,CAMPO_INI,CAMPO_QTDE) = 'Contador de reduções......:' then
           begin
             texto := (TrimLeft(copy(texto,RESULTADO_INI,RESULTADO_QTDE)));
             frmmodulo.qrsintegra_r60.FieldByName('NRO_CONTADOR_Z').asstring := texto;
           end;
           if (copy(texto,CAMPO_INI,CAMPO_QTDE) = 'Reinicio de Operação......:') OR (copy(texto,CAMPO_INI,CAMPO_QTDE) = 'Reinicio de Operacao......:') then
           begin
             texto := (TrimLeft(copy(texto,RESULTADO_INI,RESULTADO_QTDE)));
             frmmodulo.qrsintegra_r60.FieldByName('CONTADOR_REINICIO').asstring := texto;
           end;
           if copy(texto,CAMPO_INI,CAMPO_QTDE) = 'Venda Bruta...............:' then
           begin
             texto := (TrimLeft(copy(texto,RESULTADO_INI,RESULTADO_QTDE)));
             frmmodulo.qrsintegra_r60.FieldByName('VALOR_VENDA_BRUTA').asstring := formata_valor(texto);
           end;
           if copy(texto,CAMPO_INI,CAMPO_QTDE) = 'Totalizador geral.........:' then
           begin
             texto := (TrimLeft(copy(texto,RESULTADO_INI,RESULTADO_QTDE)));
             frmmodulo.qrsintegra_r60.FieldByName('VALOR_TOTAL_GERAL').asstring := formata_valor(texto);
           end;
           frmprogresso.barra.Position := frmprogresso.barra.Position + 5;
           Application.ProcessMessages;
         end;
         closefile(txt);
         deletefile('\retorno.txt');
       end;
       frmprogresso.barra.Position := 100;
       Application.ProcessMessages;

    frmmodulo.qrsintegra_r60.FieldByName('valor_venda_liquida').AsFloat :=
    frmmodulo.qrsintegra_r60.FieldByName('valor_venda_bruta').AsFloat -
    frmmodulo.qrsintegra_r60.FieldByName('cancelamento').AsFloat -
    frmmodulo.qrsintegra_r60.FieldByName('desconto').AsFloat +
    frmmodulo.qrsintegra_r60.FieldByName('issqn').AsFloat ;

       frmprogresso.Close;
       frmmodulo.qrsintegra_r60.post;
       frmmodulo.Conexao.Commit;

//EXCEPT
//  APPLICATION.MESSAGEBOX('Houve falha no processamento do Registro 60M e 60A para geração do sintegra! Favor verificar!','Atenção',mb_ok+mb_iconerror);
//  frmmodulo.Conexao.rollback;

//END;


    end;



  end
  else
  begin
    application.messagebox('Não autorizado!','Atenção',mb_ok+mb_iconwarning);
  end;
end;

procedure Tfrmmenu.BitBtn3Click(Sender: TObject);
begin
  frmleituramemoria := tfrmleituramemoria.create(self);
  frmleituramemoria.showmodal;
end;

procedure Tfrmmenu.BitBtn5Click(Sender: TObject);
begin
  if frmprincipal.autentica_caixa('Suprimento',0) then
  begin
    frmsuprimentocaixa := tfrmsuprimentocaixa.create(self);
    frmsuprimentocaixa.Edit1.text := codigo_caixa;
    frmsuprimentocaixa.showmodal;
  end
  else
  begin
    application.messagebox('Não autorizado!','Atenção',mb_ok+MB_ICONERROR);
  end;
end;

procedure Tfrmmenu.BitBtn6Click(Sender: TObject);
begin
  if frmprincipal.autentica_caixa('Sangria',0) then
  begin
    frmsangriacaixa := tfrmsangriacaixa.create(self);
    frmsangriacaixa.Edit1.text := codigo_caixa;
    frmsangriacaixa.showmodal;
  end
  else
  begin
    application.messagebox('Não autorizado!','Atenção',mb_ok+MB_ICONERROR);
  end;
end;

procedure Tfrmmenu.BitBtn14Click(Sender: TObject);
begin

  frmmodulo.qrconfig.open;
  if frmmodulo.qrconfig.fieldbyname('caixa_atual').asstring = 'FECHADO' then
  begin
    IF frmprincipal.autentica_caixa('Abrir Caixa',0) then
    begin
      frmcaixa_abertura_individual := Tfrmcaixa_abertura_individual.create(self);
      frmcaixa_abertura_individual.ShowModal;
    end
    else
    begin
      application.messagebox('Acesso não permitido!','Atenção',mb_ok+MB_ICONERROR);
    end;
  end
  else
  begin
    application.messagebox('Já existe um caixa aberto para este terminal!','Atenção',mb_ok+MB_ICONWARNING);
  end;
end;

procedure Tfrmmenu.BitBtn13Click(Sender: TObject);
var atualiza_serv : boolean;
begin
  frmmodulo.qrconfig.open;
  if frmmodulo.qrconfig.fieldbyname('caixa_atual').asstring = 'ABERTO' then
  begin
    IF frmprincipal.autentica_caixa('Fechar Caixa',0) then
    begin
      IF codigo_caixa = FRMMODULO.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING THEN
      BEGIN

        IF APPLICATION.MESSAGEBOX('Deseja lançar alguma retirada?','Retirada',mb_yesno+mb_iconquestion) = idyes then
        begin
          frmsangriacaixa := Tfrmsangriacaixa.create(self);
          frmsangriacaixa.caption := 'FECHAMENTO DE CAIXA - Sangria';
          frmsangriacaixa.edit1.text := codigo_caixa;
          frmsangriacaixa.ShowModal;
        end
        else
        begin
          continuar := true;
        end;

        if continuar then
        begin
          if application.messagebox('Deseja finalizar o trabalho neste terminal (Emitir Redução Z) ?','Atenção',MB_YESNO+MB_ICONQUESTION) = idyes then
          begin
             bitbtn2.OnClick(frmmenu);
          end;
          CLOSE;
          situacao_caixa := 'FECHADO';
          frmmodulo.qrconfig.edit;
          frmmodulo.qrconfig.fieldbyname('CAIXA_ATUAL').asstring := 'FECHADO';
          FRMMODULO.QRCONFIG.FIELDBYNAME('COD_CAIXA_ATUAL').ASSTRING := '000000';
          FRMMODULO.QRCONFIG.POST;
          frmmodulo.qrcaixa_operador.edit;
          frmmodulo.qrcaixa_operador.FieldByName('situacao').asinteger :=  2;
          frmmodulo.qrcaixa_operador.post;

          // transmitir os dados para o servidor

          atualiza_serv := false;

          try

            if frmmodulo.Conexao_servidor.Connected = false then
            begin
              if application.messagebox('Falha ao conectar ao servidor! Deseja tentar novamente?','Transimissão de Dados',mb_yesno+mb_iconerror) = idyes then
              begin
                frmmodulo.Conexao_servidor.Connected := true;
                if frmmodulo.Conexao_servidor.Connected  THEN ATUALIZA_SERV := true;
              end;
            end
            else
              atualiza_serv := true;

            if atualiza_serv then
            begin

              // atualizando as vendas

              patualiza.visible := true;
              application.ProcessMessages;

              zquery1.close;
              zquery1.sql.clear;
              zquery1.sql.add('select * from c000048');
              ZQuery1.open;
              zquery1.first;
              while not zquery1.eof do
              begin
                frmmodulo.qrservidor.close;
                frmmodulo.qrservidor.sql.clear;
                frmmodulo.qrservidor.sql.add('insert into c000048');
                frmmodulo.qrservidor.sql.add('(codigo,data,codcliente,codvendedor,');
                frmmodulo.qrservidor.sql.add('codcaixa,total,subtotal,meio_dinheiro,');
                frmmodulo.qrservidor.sql.add('meio_chequeav, meio_chequeap,meio_cartaocred,');
                frmmodulo.qrservidor.SQL.add('meio_cartaodeb,meio_crediario,desconto,acrescimo,');
                frmmodulo.qrservidor.sql.add('cupom_fiscal,numero_cupom_fiscal)');
                frmmodulo.qrservidor.sql.add('values');
                frmmodulo.qrservidor.sql.add('(:codigo,:datax,:codcliente,:codvendedor,');
                frmmodulo.qrservidor.sql.add(':codcaixa,:TOTAL,:SUBTOTAL,:DINHEIRO,');
                frmmodulo.qrservidor.sql.add(':CHEQUEAV,:CHEQUEAP,:CARTAOCRED,');
                frmmodulo.qrservidor.SQL.add(':CARTAODEB,:CREDIARIO,:DESCONTO,:ACRESCIMO,');
                frmmodulo.qrservidor.sql.add(':cupom_fiscal,:numero_cupom_fiscal)');
                frmmodulo.qrservidor.Params.ParamByName('codigo').asstring    := ZQUERY1.fieldbyname('codigo').asstring;
                frmmodulo.qrservidor.Params.ParamByName('codcliente').asstring    := ZQUERY1.fieldbyname('codcliente').asstring;
                frmmodulo.qrservidor.Params.ParamByName('codCAIXA').asstring    := ZQUERY1.fieldbyname('codcAIXA').asstring;
                frmmodulo.qrservidor.Params.ParamByName('numero_cupom_fiscal').asstring    := ZQUERY1.fieldbyname('numero_cupom_fiscal').asstring;
                frmmodulo.qrservidor.Params.ParamByName('codvendedor').asstring    := ZQUERY1.fieldbyname('codvendedor').asstring;
                frmmodulo.qrservidor.Params.ParamByName('cupom_fiscal').asINTEGER    := ZQUERY1.fieldbyname('cupom_fiscal').asINTEGER;
                frmmodulo.qrservidor.Params.ParamByName('datax').asdatetime   := ZQUERY1.fieldbyname('data').asdatetime;
                frmmodulo.qrservidor.Params.ParamByName('TOTAL').asFLOAT      := ZQUERY1.fieldbyname('total').asfloat;
                frmmodulo.qrservidor.Params.ParamByName('SUBTOTAL').asFLOAT   := ZQUERY1.fieldbyname('subtotal').asfloat;
                frmmodulo.qrservidor.Params.ParamByName('DINHEIRO').asFLOAT   := ZQUERY1.fieldbyname('MEIO_dinheiro').asfloat;
                frmmodulo.qrservidor.Params.ParamByName('CHEQUEAV').asFLOAT   := ZQUERY1.fieldbyname('MEIO_chequeav').asfloat;
                frmmodulo.qrservidor.Params.ParamByName('CHEQUEAP').asFLOAT   := ZQUERY1.fieldbyname('mEIO_chequeap').asfloat;
                frmmodulo.qrservidor.Params.ParamByName('CARTAODEB').asFLOAT  := ZQUERY1.fieldbyname('MEIO_cartaodeb').asfloat;
                frmmodulo.qrservidor.Params.ParamByName('CARTAOCRED').asFLOAT := ZQUERY1.fieldbyname('MEIO_cartaocred').asfloat;
                frmmodulo.qrservidor.Params.ParamByName('CREDIARIO').asFLOAT  := ZQUERY1.fieldbyname('MEIO_crediario').asfloat;
                frmmodulo.qrservidor.Params.ParamByName('DESCONTO').asFLOAT   := ZQUERY1.fieldbyname('desconto').asfloat;
                frmmodulo.qrservidor.Params.ParamByName('ACRESCIMO').asFLOAT  := ZQUERY1.fieldbyname('acrescimo').asfloat;
                frmmodulo.qrservidor.ExecSQL;
                ZQUERY1.Next;
              end;


              zquery1.close;
              zquery1.sql.clear;
              zquery1.sql.add('select * from c000049');
              ZQuery1.open;
              zquery1.first;
              while not zquery1.eof do
              begin
                frmmodulo.qrservidor.Close;
                frmmodulo.qrservidor.SQL.clear;
                frmmodulo.qrservidor.SQL.add('insert into c000049');
                frmmodulo.qrservidor.SQL.add('(codigo,codvenda,codcliente,codvendedor,codcaixa,data_emissao,data_vencimento,valor_original,');
                frmmodulo.qrservidor.SQL.add('valor_atual,documento,tipo,situacao,filtro)');
                frmmodulo.qrservidor.SQL.add('values');
                frmmodulo.qrservidor.SQL.add('(:codigo,:codvenda,:codcliente,:codvendedor,:codcaixa,:data_emissao,:data_vencimento,:valor_original,');
                frmmodulo.qrservidor.SQL.add(':valor_atual,:documento,:tipo,:situacao,:filtro)');
                frmmodulo.qrservidor.Params.ParamByName('codigo').asstring := zquery1.FIELDBYNAME('codigo').ASstring;
                frmmodulo.qrservidor.Params.ParamByName('codvenda').asstring := zquery1.FIELDBYNAME('codvenda').ASstring;
                frmmodulo.qrservidor.Params.ParamByName('codcliente').asstring := zquery1.FIELDBYNAME('codcliente').ASstring;
                frmmodulo.qrservidor.Params.ParamByName('codvendedor').asstring := zquery1.FIELDBYNAME('codvendedor').ASstring;
                frmmodulo.qrservidor.Params.ParamByName('codcaixa').asstring := zquery1.FIELDBYNAME('codcaixa').ASstring;
                frmmodulo.qrservidor.Params.ParamByName('documento').asstring := zquery1.FIELDBYNAME('documento').ASstring;
                frmmodulo.qrservidor.Params.ParamByName('tipo').asstring := zquery1.FIELDBYNAME('tipo').ASstring;
                frmmodulo.qrservidor.Params.ParamByName('filtro').asinteger := zquery1.FIELDBYNAME('filtro').ASinteger;
                frmmodulo.qrservidor.Params.ParamByName('situacao').asinteger := zquery1.FIELDBYNAME('situacao').ASinteger;
                frmmodulo.qrservidor.Params.ParamByName('data_vencimento').asdatetime := zquery1.FIELDBYNAME('data_VENCIMENTO').ASDATETIME;
                frmmodulo.qrservidor.Params.ParamByName('data_emissao').asdatetime := zquery1.fieldbyname('data_emissao').asfloat;
                frmmodulo.qrservidor.PARAMS.ParamByName('valor_atual').ASFLOAT := zquery1.fieldbyname('valor_atual').asfloat;
                frmmodulo.qrservidor.PARAMS.ParamByName('valor_original').ASFLOAT := zquery1.fieldbyname('valor_original').asfloat;
                frmmodulo.qrservidor.ExecSQL;
                ZQUERY1.next;
              END;


              zquery1.close;
              zquery1.sql.clear;
              zquery1.sql.add('select * from c000032');
              ZQuery1.open;
              zquery1.first;
              while not zquery1.eof do
              begin
                FRMMODULO.QRSERVIDOR.CLOSE;
                FRMMODULO.QRSERVIDOR.SQL.CLEAR;
                FRMMODULO.QRSERVIDOR.SQL.Add('insert into c000032');
                FRMMODULO.QRSERVIDOR.SQL.add('(codigo,codnota,serial,numeronota,');
                FRMMODULO.QRSERVIDOR.SQL.add('codproduto,qtde,movimento_estoque,unitario,');
                FRMMODULO.QRSERVIDOR.SQL.add('total,unidade,aliquota,');
                FRMMODULO.QRSERVIDOR.SQL.add('cupom_item,cupom_numero,cupom_modelo,');
                FRMMODULO.QRSERVIDOR.SQL.add('ecf_serie,ecf_caixa,codcliente,codvendedor,movimento,data,cst)');
                FRMMODULO.QRSERVIDOR.SQL.add('values');

                FRMMODULO.QRSERVIDOR.SQL.add('(:codigo,:codnota,:serial,:numeronota,');
                FRMMODULO.QRSERVIDOR.SQL.add(':codproduto,:qtde,:movimento_estoque,:unitario,');
                FRMMODULO.QRSERVIDOR.SQL.add(':total,:unidade,:aliquota,');
                FRMMODULO.QRSERVIDOR.SQL.add(':cupom_item,:cupom_numero,:cupom_modelo,');
                FRMMODULO.QRSERVIDOR.SQL.add(':ecf_serie,:ecf_caixa,:codcliente,:codvendedor,:movimento,:data,:cst)');

                FRMMODULO.QRSERVIDOR.Params.ParamByName('CODIGO').ASSTRING      := ZQUERY1.FIELDBYNAME('CODIGO').ASSTRING;
                FRMMODULO.QRSERVIDOR.Params.ParamByName('CODNOTA').ASSTRING     := ZQUERY1.FIELDBYNAME('CODNOTA').ASSTRING;
                FRMMODULO.QRSERVIDOR.Params.ParamByName('SERIAL').ASSTRING      := ZQUERY1.FIELDBYNAME('SERIAL').ASSTRING;
                FRMMODULO.QRSERVIDOR.Params.ParamByName('NUMERONOTA').ASSTRING  := ZQUERY1.FIELDBYNAME('NUMERONOTA').ASSTRING;
                FRMMODULO.QRSERVIDOR.Params.ParamByName('CODPRODUTO').ASSTRING  := ZQUERY1.FIELDBYNAME('CODPRODUTO').ASSTRING;
                FRMMODULO.QRSERVIDOR.Params.ParamByName('CODCLIENTE').ASSTRING  := ZQUERY1.FIELDBYNAME('CODCLIENTE').ASSTRING;
                FRMMODULO.QRSERVIDOR.Params.ParamByName('CODVENDEDOR').ASSTRING := ZQUERY1.FIELDBYNAME('CODVENDEDOR').ASSTRING;

                FRMMODULO.QRSERVIDOR.Params.ParamByName('QTDE').ASFLOAT := ZQUERY1.FIELDBYNAME('QTDE').ASFLOAT;
                FRMMODULO.QRSERVIDOR.Params.ParamByName('MOVIMENTO_ESTOQUE').ASFLOAT := ZQUERY1.FIELDBYNAME('MOVIMENTO_ESTOQUE').ASFLOAT;
                FRMMODULO.QRSERVIDOR.Params.ParamByName('UNITARIO').ASFLOAT := ZQUERY1.FIELDBYNAME('UNITARIO').ASFLOAT;
                FRMMODULO.QRSERVIDOR.Params.ParamByName('TOTAL').ASFLOAT := ZQUERY1.FIELDBYNAME('TOTAL').ASFLOAT;
                FRMMODULO.QRSERVIDOR.Params.ParamByName('ALIQUOTA').ASFLOAT := ZQUERY1.FIELDBYNAME('ALIQUOTA').ASFLOAT;

                FRMMODULO.QRSERVIDOR.Params.ParamByName('UNIDADE').ASSTRING  := ZQUERY1.FIELDBYNAME('UNIDADE').ASSTRING;
                FRMMODULO.QRSERVIDOR.Params.ParamByName('CST').ASSTRING  := ZQUERY1.FIELDBYNAME('CST').ASSTRING;
                FRMMODULO.QRSERVIDOR.Params.ParamByName('MOVIMENTO').ASINTEGER  := ZQUERY1.FIELDBYNAME('MOVIMENTO').ASINTEGER;
                FRMMODULO.QRSERVIDOR.Params.ParamByName('DATA').ASDATETIME  := ZQUERY1.FIELDBYNAME('DATA').ASDATETIME;
                FRMMODULO.QRSERVIDOR.Params.ParamByName('ECF_CAIXA').ASSTRING  := ZQUERY1.FIELDBYNAME('ECF_CAIXA').ASSTRING;
                FRMMODULO.QRSERVIDOR.Params.ParamByName('ECF_SERIE').ASSTRING  := ZQUERY1.FIELDBYNAME('ECF_SERIE').ASSTRING;
                FRMMODULO.QRSERVIDOR.Params.ParamByName('CUPOM_NUMERO').ASSTRING  := ZQUERY1.FIELDBYNAME('CUPOM_NUMERO').ASSTRING;
                FRMMODULO.QRSERVIDOR.Params.ParamByName('CUPOM_ITEM').ASSTRING  := ZQUERY1.FIELDBYNAME('CUPOM_ITEM').ASSTRING;
                FRMMODULO.QRSERVIDOR.Params.ParamByName('CUPOM_MODELO').ASSTRING  := ZQUERY1.FIELDBYNAME('CUPOM_MODELO').ASSTRING;

                FRMMODULO.QRSERVIDOR.ExecSQL;
                ZQUERY1.next;
              END;

              zquery1.close;
              zquery1.sql.clear;
              zquery1.sql.add('select * from c000044');
              ZQuery1.open;
              zquery1.first;
              while not zquery1.eof do
              begin
                frmmodulo.qrservidor.close;
                frmmodulo.qrservidor.sql.clear;
                frmmodulo.qrservidor.sql.add('insert into c000044');
                frmmodulo.qrservidor.sql.add('(codigo,codcaixa,codoperador,data,entrada,SAIDA,valor,codconta,movimento,historico)');
                frmmodulo.qrservidor.sql.add('values');
                frmmodulo.qrservidor.sql.add('(:codigo,:codcaixa,:codoperador,:data,:entrada,:SAIDA,:valor,:codconta,:movimento,:historico)');
                frmmodulo.qrservidor.params.ParamByName('codigo').asstring := zquery1.fieldbyname('codigo').asstring;
                frmmodulo.qrservidor.params.ParamByName('codcaixa').asstring := zquery1.fieldbyname('codcaixa').asstring;
                frmmodulo.qrservidor.params.ParamByName('codoperador').asstring := zquery1.fieldbyname('codoperador').asstring;
                frmmodulo.qrservidor.params.ParamByName('data').asdatetime := zquery1.fieldbyname('data').asdatetime;
                frmmodulo.qrservidor.params.ParamByName('codconta').asstring := zquery1.fieldbyname('codconta').asstring;
                frmmodulo.qrservidor.params.ParamByName('historico').asstring := zquery1.fieldbyname('historico').asstring;
                frmmodulo.qrservidor.params.ParamByName('MOVIMENTO').asINTEGER := zquery1.fieldbyname('MOVIMENTO').asINTEGER;
                frmmodulo.qrservidor.params.ParamByName('ENTRADA').asFLOAT := zquery1.fieldbyname('ENTRADA').asFLOAT;
                frmmodulo.qrservidor.params.ParamByName('SAIDA').asFLOAT := zquery1.fieldbyname('SAIDA').asFLOAT;
                frmmodulo.qrservidor.params.ParamByName('VALOR').asFLOAT := zquery1.fieldbyname('VALOR').asFLOAT;
                frmmodulo.qrservidor.ExecSQL;
                ZQUERY1.NEXT;

              END;

              zquery1.close;
              zquery1.sql.clear;
              zquery1.sql.add('select * from c000040');
              ZQuery1.open;
              zquery1.first;
              while not zquery1.eof do
              begin
                frmmodulo.qrservidor.close;
                frmmodulo.qrservidor.sql.clear;
                frmmodulo.qrservidor.sql.add('insert into c000040');
                FRMMODULO.QRSERVIDOR.SQL.ADD('(CODIGO,EMISSAO,VENCIMENTO,SITUACAO, CODCLIENTE,TITULAR,CODBANCO, AGENCIA,');
                FRMMODULO.QRSERVIDOR.SQL.ADD(' CONTA,DATA_CONTA,NUMERO,VALOR,DESCONTO,LIQUIDO,CODVENDA,OBS1,OBS2,DESTINO, CODCONTA_CORRENTE,CODCONTA)');
                FRMMODULO.QRSERVIDOR.SQL.ADD('VALUES');
                FRMMODULO.QRSERVIDOR.SQL.ADD('(:CODIGO,:EMISSAO,:VENCIMENTO,:SITUACAO, :CODCLIENTE,:TITULAR,:CODBANCO, :AGENCIA,');
                FRMMODULO.QRSERVIDOR.SQL.ADD(' :CONTA,:DATA_CONTA,:NUMERO,:VALOR,:DESCONTO,:LIQUIDO,:CODVENDA,:OBS1,:OBS2,:DESTINO, :CODCONTA_CORRENTE,:CODCONTA)');
                FRMMODULO.QRSERVIDOR.PARAMS.ParamByName('CODIGO').ASSTRING := ZQUERY1.FIELDBYNAME('CODIGO').ASSTRING;
                FRMMODULO.QRSERVIDOR.PARAMS.ParamByName('EMISSAO').ASDATETIME := ZQUERY1.FIELDBYNAME('EMISSAO').ASDATETIME;
                FRMMODULO.QRSERVIDOR.PARAMS.ParamByName('VENCIMENTO').ASDATETIME := ZQUERY1.FIELDBYNAME('VENCIMENTO').ASDATETIME;
                FRMMODULO.QRSERVIDOR.PARAMS.ParamByName('DATA_CONTA').ASDATETIME := ZQUERY1.FIELDBYNAME('DATA_CONTA').ASDATETIME;
                FRMMODULO.QRSERVIDOR.PARAMS.ParamByName('SITUACAO').ASINTEGER := ZQUERY1.FIELDBYNAME('SITUACAO').ASINTEGER;
                FRMMODULO.QRSERVIDOR.PARAMS.ParamByName('CODCLIENTE').ASSTRING := ZQUERY1.FIELDBYNAME('CODCLIENTE').ASSTRING;
                FRMMODULO.QRSERVIDOR.PARAMS.ParamByName('TITULAR').ASSTRING := ZQUERY1.FIELDBYNAME('TITULAR').ASSTRING;
                FRMMODULO.QRSERVIDOR.PARAMS.ParamByName('CODBANCO').ASSTRING := ZQUERY1.FIELDBYNAME('CODBANCO').ASSTRING;
                FRMMODULO.QRSERVIDOR.PARAMS.ParamByName('AGENCIA').ASSTRING := ZQUERY1.FIELDBYNAME('AGENCIA').ASSTRING;
                FRMMODULO.QRSERVIDOR.PARAMS.ParamByName('CONTA').ASSTRING := ZQUERY1.FIELDBYNAME('CONTA').ASSTRING;
                FRMMODULO.QRSERVIDOR.PARAMS.ParamByName('CODVENDA').ASSTRING := ZQUERY1.FIELDBYNAME('CODVENDA').ASSTRING;
                FRMMODULO.QRSERVIDOR.PARAMS.ParamByName('OBS1').ASSTRING := ZQUERY1.FIELDBYNAME('OBS1').ASSTRING;
                FRMMODULO.QRSERVIDOR.PARAMS.ParamByName('OBS2').ASSTRING := ZQUERY1.FIELDBYNAME('OBS2').ASSTRING;
                FRMMODULO.QRSERVIDOR.PARAMS.ParamByName('DESTINO').ASSTRING := ZQUERY1.FIELDBYNAME('DESTINO').ASSTRING;
                FRMMODULO.QRSERVIDOR.PARAMS.ParamByName('CODCONTA_CORRENTE').ASSTRING := ZQUERY1.FIELDBYNAME('CODCONTA_CORRENTE').ASSTRING;
                FRMMODULO.QRSERVIDOR.PARAMS.ParamByName('CODCONTA').ASSTRING := ZQUERY1.FIELDBYNAME('CODCONTA').ASSTRING;
                FRMMODULO.QRSERVIDOR.PARAMS.ParamByName('valor').asfloat := ZQUERY1.FIELDBYNAME('valor').asfloat;
                FRMMODULO.QRSERVIDOR.PARAMS.ParamByName('desconto').asfloat := ZQUERY1.FIELDBYNAME('desconto').asfloat;
                FRMMODULO.QRSERVIDOR.PARAMS.ParamByName('liquido').asfloat := ZQUERY1.FIELDBYNAME('liquido').asfloat;
                FRMMODULO.QRSERVIDOR.ExecSQL;
                ZQUERY1.NEXT;
              END;




              //********* APAGAR OS DADOS LOCAIS

              zquery1.close;
              zquery1.sql.clear;
              zquery1.sql.add('DELETE from c000048');
              ZQuery1.EXECSQL;

              zquery1.close;
              zquery1.sql.clear;
              zquery1.sql.add('DELETE from c000049');
              ZQuery1.EXECSQL;

              zquery1.close;
              zquery1.sql.clear;
              zquery1.sql.add('DELETE from c000032');
              ZQuery1.EXECSQL;

              zquery1.close;
              zquery1.sql.clear;
              zquery1.sql.add('DELETE from c000044');
              ZQuery1.EXECSQL;

              zquery1.close;
              zquery1.sql.clear;
              zquery1.sql.add('DELETE from c000040');
              ZQuery1.EXECSQL;

            end;

          except

            application.messagebox('Não foi possível atualizar o servidor! Os dados serão armazenados para serem transmitidos em uma proxima conexão!',
                                 'Erro de conexão!',mb_ok+mb_iconwarning);

          end;
          ///


          if frmmodulo.conexao_servidor.Connected then frmmodulo.conexao_servidor.Commit;

          patualiza.Visible := false;

          frmmodulo.ConexaoLocal.Commit;
          FRMMODULO.Conexao.Commit;
          frmcaixa_fechado := tfrmcaixa_fechado.create(self);
          frmcaixa_fechado.showmodal;
        end;
      END
      ELSE
      BEGIN
        SHOWMESSAGE('Não há caixa aberto para este operador');
      END;
    end
    else
    begin
      application.messagebox('Acesso não permitido!','Atenção',mb_ok+MB_ICONERROR);
    end;
  end
  else
  begin
    application.messagebox('Não existe caixa aberto para este terminal!','Atenção',mb_ok+MB_ICONWARNING);
  end;
end;

procedure Tfrmmenu.BitBtn11Click(Sender: TObject);
begin
  frmconfig := tfrmconfig.create(self);
  frmconfig.showmodal;
end;

procedure Tfrmmenu.bnotaClick(Sender: TObject);
begin
  frmnotas_venda := tfrmnotas_venda.create(self);
  frmnotas_venda.showmodal;
end;

procedure Tfrmmenu.Button1Click(Sender: TObject);
begin
  qrproduto_mov.close;
  qrproduto_mov.SQL.Clear;
  qrproduto_mov.SQL.Add('select sum(qtde) qtde,');
  qrproduto_mov.sql.add('sum(total) total,');
  qrproduto_mov.sql.add('codproduto,');
  qrproduto_mov.sql.add('codaliquota,');
  qrproduto_mov.sql.add('ecf_serie,');
  qrproduto_mov.sql.add('data');
  qrproduto_mov.sql.add('from c000032');
  qrproduto_mov.sql.add('where');
  qrproduto_mov.sql.add('data >= :datai and');
  qrproduto_mov.sql.add('data <= :dataf and');
  qrproduto_mov.sql.add('ecf_serie is not null');
  qrproduto_mov.SQL.add('group by');
  qrproduto_mov.sql.add('codproduto,');
  qrproduto_mov.sql.add('codaliquota,');
  qrproduto_mov.sql.add('ecf_serie,');
  qrproduto_mov.sql.add('data');
  qrproduto_mov.sql.add('order by codproduto');
  qrproduto_mov.Params.ParamByName('datai').asdatetime := strtodate('01/07/2007');
  qrproduto_mov.Params.ParamByName('dataf').asdatetime := strtodate('30/07/2007');
  qrproduto_mov.Open;
end;

procedure Tfrmmenu.Button2Click(Sender: TObject);
begin
  qrproduto_mov.close;
  qrproduto_mov.SQL.Clear;
  qrproduto_mov.SQL.Add('select sum(qtde) qtde,');
  qrproduto_mov.sql.add('sum(total) total,');
  qrproduto_mov.sql.add('codproduto,');
  qrproduto_mov.sql.add('codaliquota,');
  qrproduto_mov.sql.add('ecf_serie,');
  qrproduto_mov.sql.add('data,');
  qrproduto_mov.sql.add('cupom_numero,');
  qrproduto_mov.sql.add('cupom_item,');
  qrproduto_mov.sql.add('cupom_modelo');
  qrproduto_mov.sql.add('from c000032');
  qrproduto_mov.sql.add('where');
  qrproduto_mov.sql.add('data >= :datai and');
  qrproduto_mov.sql.add('data <= :dataf and');
  qrproduto_mov.sql.add('ecf_serie is not null');
  qrproduto_mov.SQL.add('group by');
  qrproduto_mov.sql.add('codproduto,');
  qrproduto_mov.sql.add('codaliquota,');
  qrproduto_mov.sql.add('ecf_serie,');
  qrproduto_mov.sql.add('data,');
  qrproduto_mov.sql.add('cupom_numero,');
  qrproduto_mov.sql.add('cupom_item,');
  qrproduto_mov.sql.add('cupom_modelo');
  qrproduto_mov.sql.add('order by cupom_numero, cupom_item');
  qrproduto_mov.Params.ParamByName('datai').asdatetime := strtodate('01/07/2007');
  qrproduto_mov.Params.ParamByName('dataf').asdatetime := strtodate('30/07/2007');
  qrproduto_mov.Open;
end;

procedure Tfrmmenu.Button3Click(Sender: TObject);
begin
  qrproduto_mov.close;
  qrproduto_mov.SQL.Clear;
  qrproduto_mov.SQL.Add('select sum(qtde) qtde,');
  qrproduto_mov.sql.add('sum(total) total,');
  qrproduto_mov.sql.add('codproduto,');
  qrproduto_mov.sql.add('codaliquota,');
  qrproduto_mov.sql.add('ecf_serie');
  qrproduto_mov.sql.add('from c000032');
  qrproduto_mov.sql.add('where');
  qrproduto_mov.sql.add('data >= :datai and');
  qrproduto_mov.sql.add('data <= :dataf and');
  qrproduto_mov.sql.add('ecf_serie is not null');
  qrproduto_mov.SQL.add('group by');
  qrproduto_mov.sql.add('codproduto,');
  qrproduto_mov.sql.add('codaliquota,');
  qrproduto_mov.sql.add('ecf_serie');
  qrproduto_mov.sql.add('order by codproduto');
  qrproduto_mov.Params.ParamByName('datai').asdatetime := strtodate('01/07/2007');
  qrproduto_mov.Params.ParamByName('dataf').asdatetime := strtodate('30/07/2007');
  qrproduto_mov.Open;
end;

procedure Tfrmmenu.BitBtn7Click(Sender: TObject);
begin
  frmecf_reducao_menu := tfrmecf_reducao_menu.create(self);
  frmecf_reducao_menu.showmodal;

end;

procedure Tfrmmenu.BitBtn10Click(Sender: TObject);
var f : textfile;
begin
  if check_visa.Checked then
  begin
    IF USA_TEF THEN
    BEGIN
      assignfile(f,sTEFKoneKPath+'gp.tmp');
      rewrite(f);
      writeln(f,'REDECARD');
      closefile(f);
      iTEFTecban := 0;
      TEFLimpaVariaveis;
      TEFModoAdministrativo;
      if (sTEFRetorno = '0') and (FileExists(sTEFKoneKPath + 'TEF.Imp')) then
      begin
        TEFImprimeTransacao('R');
        if sTEFRetorno = '0' then
          TEFFechaOperacao
        else
          TEFNaoConfirmaOperacao;
      end;
    END
    ELSE
    BEGIN
      application.messagebox('O módulo TEF não foi instalado!','Erro',mb_ok+mb_iconerror);
    END;
  end;


  if check_tecban.Checked then
  begin
    if usa_tef then
    begin
      assignfile(f,sTEFKoneKPath+'gp.tmp');
      rewrite(f);
      writeln(f,'TECBAN');
      closefile(f);
      iTEFTecban := 1;
      TEFLimpaVariaveis;
      TEFModoAdministrativo;
      if (sTEFRetorno = '0') and (FileExists(sTEFKoneKPath + 'TEF.Imp')) then
      begin
        TEFImprimeTransacao('R');
        if sTEFRetorno = '0' then
          TEFFechaOperacao
        else
          TEFNaoConfirmaOperacao;
      end;
    END
    ELSE
    BEGIN
      application.messagebox('O módulo TEF não foi instalado!','Erro',mb_ok+mb_iconerror);
    END;
  end;


  if check_hipercard.Checked then
  begin


  end;
end;

procedure Tfrmmenu.BitBtn9Click(Sender: TObject);
begin
  if check_visa.Checked then
  begin
    if usa_tef then
    begin
      FRMCANCELARTEF := TFRMCANCELARTEF.CREATE(SELF);
      FRMCANCELARTEF.SHOWMODAL;
    END
    ELSE
    BEGIN
      application.messagebox('O módulo TEF não foi instalado!','Erro',mb_ok+mb_iconerror);
    END;
  end;
  if check_tecban.Checked then
  begin
    if usa_tef then
    begin
      FRMCANCELARTEF := TFRMCANCELARTEF.CREATE(SELF);
      FRMCANCELARTEF.SHOWMODAL;
    END
    ELSE
    BEGIN
      application.messagebox('O módulo TEF não foi instalado!','Erro',mb_ok+mb_iconerror);
    END;

  end;
  if check_hipercard.Checked then
  begin


  end;
end;

end.

