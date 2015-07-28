unit Meios_pagamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ToolEdit, ExtCtrls, DB, MemDS, DBAccess, IBC;

type
  TfrmMeios_Pagamento = class(TForm)
    Panel1: TPanel;
    bt_ok: TButton;
    bt_cancelar: TButton;
    Bevel1: TBevel;
    Label3: TLabel;
    Label4: TLabel;
    ed_data_ini: TDateEdit;
    ed_data_fim: TDateEdit;
    query: TIBCQuery;
    procedure bt_cancelarClick(Sender: TObject);
    procedure bt_okClick(Sender: TObject);
    procedure ed_data_iniKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMeios_Pagamento: TfrmMeios_Pagamento;

implementation

uses modulo, principal, funcoes, unECF, Constantes, msg_Operador;

{$R *.dfm}

// -------------------------------------------------------------------------- //
procedure TfrmMeios_Pagamento.bt_cancelarClick(Sender: TObject);
begin
  close;
end;

// -------------------------------------------------------------------------- //
procedure TfrmMeios_Pagamento.bt_okClick(Sender: TObject);
var
  i: integer;
  sForma: string;
  rtotal: real;

begin
  query.close;
  query.sql.clear;
  query.sql.add('select');
  query.sql.add('  Forma,');
  query.sql.add('  tipo,');
  query.sql.add('  data,');
  query.sql.add('  sum(Valor) as total');
  query.sql.add('from');
  query.sql.add('  (Select');
  query.sql.add('     cupom_forma.forma as Forma,');
  query.sql.add('     cupom_forma.tipo as tipo,');
  query.sql.add('     cupom.data as data,');
  query.sql.add('     cupom_forma.valor as Valor');
  query.sql.add('   from');
  query.sql.add('     cupom_forma, cupom');
  query.sql.add('   where');
  query.sql.add('     cupom_forma.cod_cupom = cupom.codigo and');
  query.sql.add('     cupom.ecf = '''+sECF_Serial+''' and');
  query.sql.add('     cupom.data between :datai and :dataf and cupom.cancelado = 0');
  query.sql.add('   union');
  query.sql.add('   Select');
  query.sql.add('     cupom_forma.forma as Forma,');
  query.sql.add('     cupom_forma.tipo as tipo,');
  query.sql.add('     nao_fiscal.data as data,');
  query.sql.add('     cupom_forma.valor as Valor');
  query.sql.add('   from');
  query.sql.add('     cupom_forma, nao_fiscal');
  query.sql.add('   where');
  query.sql.add('     cupom_forma.cod_cupom = nao_fiscal.codigo and');
  query.sql.add('     nao_fiscal.ecf = '''+sECF_Serial+''' and');
  query.sql.add('     nao_fiscal.data between :datai and :dataf ) as TMP');
  query.sql.add('   group by Forma, tipo, data');
  query.sql.add('   order by forma, tipo, data');
  query.ParamByName('datai').asdatetime := ed_data_ini.Date;
  query.ParamByName('dataf').asdatetime := ed_data_fim.Date;
  query.open;


  try
    frmMsg_operador.lb_msg.Caption := 'Aguarde! Imprimindo Meios de Pagamento...';
    frmMsg_Operador.Show;
    frmmsg_operador.Refresh;

    repeat
      sMsg := cECF_Abre_Gerencial(iECF_Modelo,'MEIOS DE PAGAMENTO');
      sNumero_Cupom := cECF_Numero_Cupom(iECF_Modelo);
      if sMsg <> OK then
      begin
        frmMsg_operador.hide;

        if application.messagebox(pansichar('Erro no ECF!'+#13+
                                            'Mensagem: '+sMsg+#13+
                                            'Deseja tentar outra vez?'),'Erro',mb_yesno+
                                            mb_iconerror) = idNo then
        begin
          break;
        end;

        frmMsg_operador.Show;
      end
      else
      begin
        // extrair do ecf o numero dos contadores

        sGNF := cECF_Numero_Contador_Operacao_NF(iECF_Modelo);
        sGRG := cECF_Numero_Contador_Relatorio_Gerencial(iECF_Modelo);
      end;
    until sMsg = OK;

    sMsg := cECF_Usa_Gerencial(iECF_Modelo,'Periodo: '+ed_data_ini.text+' a '+ed_data_fim.text);

    // CABECALHO
    if sMsg = OK then
    begin
      repeat
         sMsg := cECF_Usa_Gerencial(iECF_Modelo,'------------------------------------------------');
         sMsg := cECF_Usa_Gerencial(iECF_Modelo,'Forma de Pgto. Tipo Docto.  Data           Total');
         sMsg := cECF_Usa_Gerencial(iECF_Modelo,'------------------------------------------------');
  //                                                      14          12       10             10
        if sMsg <> OK then
        begin
          frmMsg_operador.hide;

          if application.messagebox(pansichar('Erro no ECF!'+#13+
                                              'Mensagem: '+sMsg+#13+
                                              'Deseja tentar outra vez?'),'Erro',mb_yesno+
                                              mb_iconerror) = idNo then
          begin
            break;
          end;

          frmMsg_operador.Show;
        end
      until sMsg = OK;
    END;

    if sMsg = OK then
    begin
      query.first;
      sForma := query.fieldbyname('forma').asstring+
                query.fieldbyname('tipo').asstring;
      rTotal := 0;
      while not query.eof do
      begin
        repeat
          if sForma <> (query.fieldbyname('forma').asstring+
                        query.fieldbyname('tipo').asstring) then
          begin
            // subtotalizar a forma de pagamento
           sMsg := cECF_Usa_Gerencial(iECF_Modelo,'------------------------------------------------');
           sMsg := cECF_Usa_Gerencial(iECF_Modelo,'Total do Periodo................: '+
                                      texto_justifica(formatfloat('R$ ###,###,##0.00',rtotal)
                                      ,14,' ',taDireita));
           sMsg := cECF_Usa_Gerencial(iECF_Modelo,' ');
           rtotal := 0;
           sForma := query.fieldbyname('forma').asstring+
                     query.fieldbyname('tipo').asstring;

            sMsg := cECF_Usa_Gerencial(iECF_Modelo,
                     texto_justifica(query.fieldbyname('forma').asstring,14,' ',taEsquerda)+' '+
                     texto_justifica(query.fieldbyname('tipo').asstring,12,' ',taEsquerda)+' '+
                     texto_justifica(query.fieldbyname('data').asstring,10,' ',taEsquerda)+
                     texto_justifica(formatfloat('###,###,##0.00',query.fieldbyname('total').asfloat),
                       10,' ',taDireita));
            rtotal := rtotal + query.fieldbyname('total').asfloat;
          end
          else
          begin
            // imprimir o resumo da dia
            sMsg := cECF_Usa_Gerencial(iECF_Modelo,
                     texto_justifica(query.fieldbyname('forma').asstring,14,' ',taEsquerda)+' '+
                     texto_justifica(query.fieldbyname('tipo').asstring,12,' ',taEsquerda)+' '+
                     texto_justifica(query.fieldbyname('data').asstring,10,' ',taEsquerda)+
                     texto_justifica(formatfloat('###,###,##0.00',query.fieldbyname('total').asfloat),
                       10,' ',taDireita));
            rtotal := rtotal + query.fieldbyname('total').asfloat;
          end;

          if sMsg <> OK then
          begin
           frmMsg_operador.Hide;
           if application.messagebox(pansichar('Erro no ECF!'+#13+
                                                'Mensagem: '+sMsg+#13+
                                                'Deseja tentar outra vez?'),'Erro',mb_yesno+
                                                mb_iconerror) = idNo then
             begin
               break;
             end;
           frmMsg_operador.Show;
          end
        until sMsg = OK;
        query.next;
      end;

      repeat
        // totalizar a ultima forma de pagamento
        sMsg := cECF_Usa_Gerencial(iECF_Modelo,'------------------------------------------------');
        sMsg := cECF_Usa_Gerencial(iECF_Modelo,'Total do Periodo................: '+
                                  texto_justifica(formatfloat('R$ ###,###,##0.00',rtotal)
                                  ,14,' ',taDireita));
        sMsg := cECF_Usa_Gerencial(iECF_Modelo,' ');



        sMsg := cECF_Fecha_Gerencial(iECF_Modelo);
        if sMsg <> OK then
        begin
          frmMsg_operador.Hide;

          if application.messagebox(pansichar('Erro no ECF!'+#13+
                                              'Mensagem: '+sMsg+#13+
                                              'Deseja tentar outra vez?'),'Erro',mb_yesno+
                                              mb_iconerror) = idNo then
          begin
            break;
          end;

          frmMsg_operador.Show;
        end
        else
        begin
          // registrar Gerencial no banco de dados
          with frmmodulo do
          begin
            spNao_Fiscal.Close;
            spNao_Fiscal.parambyname('codigo').asstring := codifica_cupom;
            spNao_fiscal.parambyname('ecf').asstring := sECF_Serial;
            spNao_fiscal.ParamByName('data').asdatetime := dData_Sistema;
            spNao_fiscal.ParamByName('hora').Astime := strtotime(copy(cECF_Data_Hora(iECF_Modelo),12,8));
            spNao_fiscal.ParamByName('indice').asstring := 'RG';
            spNao_fiscal.ParamByName('Descricao').asstring := 'RELATÓRIO GERENCIAL';
            spNao_fiscal.ParamByName('valor').asfloat := 0;
            spNao_fiscal.ParamByName('COO').asstring := sNumero_Cupom;
            spNao_fiscal.ParamByName('GNF').asstring := sGNF;
            spNao_fiscal.ParamByName('GRG').asstring := sGRG;
            spNao_fiscal.ParamByName('CDC').Clear;
            spNao_fiscal.ParamByName('DENOMINACAO').asstring := 'RG';
            spNao_Fiscal.Prepare;
            spNao_Fiscal.Execute;
          end;
        end;
      until sMsg = OK;
    end;
  finally
    frmMsg_operador.Hide;
    close;
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmMeios_Pagamento.ed_data_iniKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

// -------------------------------------------------------------------------- //
procedure TfrmMeios_Pagamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

// -------------------------------------------------------------------------- //
procedure TfrmMeios_Pagamento.FormShow(Sender: TObject);
begin
  ed_data_ini.Date := dData_Sistema;
  ed_data_fim.Date := dData_Sistema;
end;

end.
