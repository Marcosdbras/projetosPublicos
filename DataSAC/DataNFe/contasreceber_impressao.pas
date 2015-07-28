unit contasreceber_impressao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Collection, jpeg, TFlatPanelUnit, Spin,
  Buttons, Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  AdvGlowButton, AdvShapeButton;

type
  Tfrmcontasreceber_impressao = class(TForm)
    PopupMenu1: TPopupMenu;
    TPBobina: TMenuItem;
    TPa4tinta: TMenuItem;
    PopupMenu2: TPopupMenu;
    Fechar1: TMenuItem;
    PapelA4LaserTintacomJuros1: TMenuItem;
    combo_modelo: TComboBox;
    Label2: TLabel;
    Label3: TLabel;
    Bevel2: TBevel;
    AdvShapeButton1: TAdvShapeButton;
    Label1: TLabel;
    Bevel1: TBevel;
    evias: TSpinEdit;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bcancelarClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure combo_modeloKeyPress(Sender: TObject; var Key: Char);
    procedure eviasKeyPress(Sender: TObject; var Key: Char);
    procedure TPNota_FiscalClick(Sender: TObject);
    procedure TPBobinaClick(Sender: TObject);
    procedure TPRazaoClick(Sender: TObject);
    procedure TPImpressoClick(Sender: TObject);
    procedure TPContratoClick(Sender: TObject);
    procedure TPPersonalizadoClick(Sender: TObject);
    procedure TPa4tintaClick(Sender: TObject);
    procedure PapelA4LaserTintacomJuros1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcontasreceber_impressao: Tfrmcontasreceber_impressao;
  porta_impressora : string;

implementation

uses modulo, principal, contasreceber, temp;

{$R *.dfm}

procedure Tfrmcontasreceber_impressao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmcontasreceber_impressao.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmcontasreceber_impressao.bgravarClick(Sender: TObject);
begin
  case combo_modelo.ItemIndex of
    0 : TPBobinaClick(FRMCONTASRECEBER_IMPRESSAO);
    1 : TPa4tintaclick(FRMCONTASRECEBER_IMPRESSAO);
    2 : PapelA4LaserTintacomJuros1Click(FRMCONTASRECEBER_IMPRESSAO);
  END;
  close;
end;

procedure Tfrmcontasreceber_impressao.FormShow(Sender: TObject);
begin

  frmmodulo.qrconfig.open;
  combo_modelo.ItemIndex :=  frmmodulo.qrconfig.FieldByName('extrato_TIPONOTA').asinteger;
  evias.Value := 1;
  porta_impressora := frmmodulo.qrconfig.FieldByName('VENDA_PORTA_IMPRESSORA').asstring;
end;

procedure Tfrmcontasreceber_impressao.combo_modeloKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmcontasreceber_impressao.eviasKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmcontasreceber_impressao.TPNota_FiscalClick(Sender: TObject);
begin
//verificar
end;

procedure Tfrmcontasreceber_impressao.TPBobinaClick(Sender: TObject);
VAR arquivo : textfile;
    texto1, texto2, texto3, texto4, texto5, texto6 : string;
    subir_papel, conta_formas : integer;
    dinheiro: real;
begin
// NORMAL               --> #18+#27#72+#20
// NORMAL NEGRITO       --> #18+#27#71+#20
// FONTE GRANDE         --> #27#72+#14
// FONTE GRANDE NEGRITO --> #27#71+#14
// CONDENSADO           --> #15+#27#72+#20
// CONDENSADO NEGRITO   --> #15+#27#71+#20


  if application.messagebox('Deseja imprimir apenas as contas marcadas?','Aviso',mb_yesno+mb_iconquestion) = idyes then
    marcados := true else marcados := false;
   frmmodulo.qrconfig.open;
   subir_papel := frmmodulo.qrconfig.fieldbyname('bobina_subirpapel').asinteger;
   dinheiro := 0;

   assignfile(arquivo,impressora_venda);
   rewrite(arquivo);
   writeln(arquivo,#18+#27#71+#20,frmprincipal.Texto_Justifica(emitente_fantasia,25,' ','C'));
   writeln(arquivo,#15+#27#72+#20,frmprincipal.Texto_Justifica(emitente_endereco,48,' ','C'));
   writeln(arquivo,#15+#27#72+#20,frmprincipal.Texto_Justifica(emitente_cidade+' - CEP '+emitente_cep,48,' ','C'));
   writeln(arquivo,#15+#27#72+#20,frmprincipal.Texto_Justifica('Telefone: '+emitente_telefone,48,' ','C'));
   writeln(arquivo,#15+#27#72+#20,'------------------------------------------------');
   writeln(arquivo,#18+#27#71+#20,frmprincipal.Texto_Justifica('EXTRATO DE DEBITO',17,'0','E')+#15+#27#72+#20+
                                  '   Emissao: '+frmprincipal.Texto_Justifica(DATETOSTR(DATE),10,' ','E'));
                                   // informacoes do cliente
   writeln(arquivo,#15+#27#72+#20,'------------------------------------------------');
   writeln(arquivo,#15+#27#72+#20,'Cliente...: '+frmprincipal.Texto_Justifica(frmMODULO.qrcliente.fieldbynaMe('codigo').asstring,6,'0','E')+' '+frmprincipal.Texto_Justifica(frmmodulo.qrcliente.fieldbyname('nome').asstring,28,' ','D'));
   writeln(arquivo,#15+#27#72+#20,'CPF/CNPJ..: '+frmprincipal.Texto_Justifica(frmmodulo.qrcliente.fieldbyname('cpf').asstring,35,' ','D'));
   writeln(arquivo,#15+#27#72+#20,'RG/IE.....: '+frmprincipal.Texto_Justifica(frmmodulo.qrcliente.fieldbyname('rg').asstring,35,' ','D'));
   writeln(arquivo,#15+#27#72+#20,'------------------------------------------------');
   writeln(arquivo,#15+#27#72+#20,'DT.COMPRA     VENCIMENTO      DIAS    VALOR - R$');
   writeln(arquivo,#15+#27#72+#20,'------------------------------------------------');

   frmcontasreceber.QRCr.First;
   while not frmcontasreceber.QRCr.Eof do
   begin
     if marcados then
     begin
       if frmcontasreceber.QRCr.fieldbyname('filtro').asinteger = 1 then
       begin
         writeln(arquivo,#15+#27#72+#20,frmprincipal.Texto_Justifica(frmcontasreceber.QRCr.fieldbyname('data_emissao').asstring,10,' ','E')+'     '+
                                        frmprincipal.Texto_Justifica(frmcontasreceber.QRCr.fieldbyname('data_vencimento').asstring,10,' ','E')+'    '+
                                        frmprincipal.Texto_Justifica(frmcontasreceber.QRCr.fieldbyname('dIAS').asstring,5,' ','E')+
                                        frmprincipal.Texto_Justifica(formatfloat('###,###,##0.00',frmcontasreceber.QRCr.fieldbyname('RESTANTE').asfloat),14,' ','E'));
                                        dinheiro := dinheiro + frmcontasreceber.QRCr.fieldbyname('restante').asfloat;
       end;
     end
     else
     begin
       writeln(arquivo,#15+#27#72+#20,frmprincipal.Texto_Justifica(frmcontasreceber.QRCr.fieldbyname('data_emissao').asstring,10,' ','E')+'     '+
                                      frmprincipal.Texto_Justifica(frmcontasreceber.QRCr.fieldbyname('data_vencimento').asstring,10,' ','E')+'    '+
                                      frmprincipal.Texto_Justifica(frmcontasreceber.QRCr.fieldbyname('dIAS').asstring,5,' ','E')+
                                      frmprincipal.Texto_Justifica(formatfloat('###,###,##0.00',frmcontasreceber.QRCr.fieldbyname('RESTANTE').asfloat),14,' ','E'));
                                      dinheiro := dinheiro + frmcontasreceber.QRCr.fieldbyname('restante').asfloat;


     end;

     frmcontasreceber.QRCr.next;
   end;
   Writeln(arquivo,#15+#27#72+#20,'------------------------------------------------');
   Writeln(arquivo,#15+#27#72+#20,'TOTAL DO CLIENTE...................:'+frmprincipal.Texto_Justifica(formatfloat('###,###,##0.00',dinheiro),12,' ','E'));
   Writeln(arquivo,#15+#27#72+#20,'------------------------------------------------');

   while subir_papel <> 0 do
   begin
     Writeln(arquivo,#15+#27#72+#20,'');
     subir_papel := subir_papel - 1;
   end;

   closefile(arquivo);

end;

procedure Tfrmcontasreceber_impressao.TPRazaoClick(Sender: TObject);
begin
//verificar
end;

procedure Tfrmcontasreceber_impressao.TPImpressoClick(Sender: TObject);
begin
//verificar
end;

procedure Tfrmcontasreceber_impressao.TPContratoClick(Sender: TObject);
begin
//verificar
end;

procedure Tfrmcontasreceber_impressao.TPPersonalizadoClick(Sender: TObject);
begin
//verificar
end;

procedure Tfrmcontasreceber_impressao.TPa4tintaClick(Sender: TObject);
begin
  if application.messagebox('Confirma a impressão do extrato?','Aviso',mb_yesno+mb_iconquestion) = idyes then
  begin
    frmtemp := tfrmtemp.create(self);
    frmtemp.lempresa.Caption := emitente_nome;
    frmtemp.lvalor.caption := formatfloat('###,###,##0.00',FRMCONTASRECEBER.rvalor.value);
    frmtemp.lliquido.caption := formatfloat('###,###,##0.00',FRMCONTASRECEBER.rtotal.value);
    frmtemp.lcliente.caption := FRMCONTASRECEBER.edit1.text;
    frmtemp.rextrato.preview;
    frmtemp.destroy;
  end;

end;

procedure Tfrmcontasreceber_impressao.PapelA4LaserTintacomJuros1Click(
  Sender: TObject);
begin
    frmtemp := tfrmtemp.create(self);
    frmtemp.lempresa2.Caption := emitente_nome;

    frmtemp.lvalor_original.caption := formatfloat('###,###,##0.00',FRMCONTASRECEBER.rvalor.value);
    frmtemp.ljuros.caption := formatfloat('###,###,##0.00',FRMCONTASRECEBER.rjuro.value);
    frmtemp.lvalor_atual.caption := formatfloat('###,###,##0.00',FRMCONTASRECEBER.rtotal.value);
    frmtemp.lcliente2.caption := FRMCONTASRECEBER.edit1.text;
    frmtemp.rextrato2.preview;
    frmtemp.destroy;

end;

end.




