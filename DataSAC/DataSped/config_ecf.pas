unit config_ecf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, RXClock, Buttons, Mask, ToolEdit,
  CurrEdit, Menus, AdvMenus;

type
  TfrmConfig_ECF = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    ed_marca: TEdit;
    Label2: TLabel;
    ed_modelo: TEdit;
    Label3: TLabel;
    ed_tipo: TEdit;
    Label4: TLabel;
    ed_serial: TEdit;
    Label5: TLabel;
    ed_numero: TEdit;
    Bevel1: TBevel;
    Panel2: TPanel;
    Bevel2: TBevel;
    Label7: TLabel;
    ed_data: TEdit;
    Label8: TLabel;
    ed_hora: TEdit;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel3: TPanel;
    Label6: TLabel;
    cb_porta: TComboBox;
    rb_horario_verao: TCheckBox;
    rb_reducao_Z: TCheckBox;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    ls_forma_pgto: TListBox;
    ls_aliquota: TListBox;
    ls_total_nf: TListBox;
    bt_fechar: TButton;
    bt_confirmar: TButton;
    SpeedButton1: TSpeedButton;
    GroupBox1: TGroupBox;
    bt_aliquota: TButton;
    rb_icms: TRadioButton;
    rb_iss: TRadioButton;
    ed_aliquota: TRxCalcEdit;
    GroupBox2: TGroupBox;
    ed_forma_pgto: TEdit;
    Label9: TLabel;
    Button1: TButton;
    rb_vinculado: TCheckBox;
    GroupBox3: TGroupBox;
    Label10: TLabel;
    ed_totalizador: TEdit;
    bt_totalizador: TButton;
    Label11: TLabel;
    ed_indice: TEdit;
    StatusBar1: TStatusBar;
    pop_principal: TAdvPopupMenu;
    MenuFiscal2: TMenuItem;
    procedure bt_fecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure rb_horario_veraoClick(Sender: TObject);
    procedure rb_reducao_ZClick(Sender: TObject);
    procedure bt_confirmarClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure bt_aliquotaClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure bt_totalizadorClick(Sender: TObject);
    procedure ed_forma_pgtoKeyPress(Sender: TObject; var Key: Char);
    procedure MenuFiscal2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConfig_ECF: TfrmConfig_ECF;
  iprog : integer;

implementation

uses funcoes, modulo, principal, unECF, Math, menu_fiscal;

{$R *.dfm}

procedure TfrmConfig_ECF.bt_fecharClick(Sender: TObject);
begin
  close;
end;

procedure TfrmConfig_ECF.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmConfig_ECF.FormShow(Sender: TObject);
begin

  // verificar reducao Z
  sMsg := cECF_Verifica_Z_automatico(iECF_Modelo);
  if sMsg = 'SIM' then
    rb_reducao_Z.Checked := true
  else
    rb_reducao_Z.Checked := false;

  ed_marca.Text := sECF_Marca;
  ed_modelo.text := sECF_Modelo;
  ed_tipo.Text := sECF_Tipo;
  ed_serial.Text := sECF_Serial;
  cb_porta.Text := sECF_Porta;
  ed_numero.Text := sECF_Caixa;
  ed_data.Text := DateToStr(dData_Sistema);
  ed_hora.Text := copy(cECF_Data_Hora(iECF_Modelo),12,8 );


  sMSG := cECF_Verifica_Horario_Verao(iecf_modelo);
  If sMsg = 'SIM' then
    rb_horario_verao.Checked :=  true
  else
    rb_horario_verao.Checked :=  false;

  bt_confirmar.Enabled := false;
  rb_horario_verao.Enabled := true;
  // ecf bematech nao programa/desprogram red z automatica
  // somente por meio de intervencao tecnica
  if iECF_Modelo = 1 then
  begin
    rb_reducao_Z.Enabled := false;
  end
  else
  begin
    rb_reducao_Z.Enabled := true;
  end;

  frmmodulo.tbForma_Pgto.Open;
  frmmodulo.tbForma_Pgto.First;
  ls_forma_pgto.Items.Clear;

  while not frmmodulo.tbForma_Pgto.Eof do
  begin
    sMsg := TrimLeft(TrimRight(frmmodulo.tbForma_Pgto.fieldbyname('nome').asstring));
    if (smsg = '') or
       (ansiuppercase(sMsg) = 'VALOR RECEBIDO') or
       (ansiuppercase(sMsg) = 'TROCO') Then

      //
    else
     ls_forma_pgto.Items.Add(frmmodulo.tbForma_Pgto.fieldbyname('nome').asstring);

    frmModulo.tbForma_Pgto.next;
  end;

  ls_aliquota.Items.Clear;
  sMsg := cECF_Verifica_Aliquotas(iECF_Modelo);
  if sMsg <> 'ERRO' then
  begin
    ls_aliquota.Items.CommaText := sMsg;
  end
  else
    application.messagebox('Erro ao solicitar alíquotas do ECF!','Erro',mb_ok+mb_iconerror);


  ls_total_nf.Items.Clear;
  sMsg := cECF_Verifica_Totalizadores_NF(iECF_Modelo);
  if sMsg <> 'ERRO' then
  begin
    ls_total_nf.Items.CommaText := sMsg;
  end
  else
    application.messagebox('Erro ao solicitar totalizadores do ECF!','Erro',mb_ok+mb_iconerror);
end;

procedure TfrmConfig_ECF.rb_horario_veraoClick(Sender: TObject);
begin
  bt_confirmar.Enabled := true;
  rb_reducao_Z.Enabled := false;
  iProg := 1;
end;

procedure TfrmConfig_ECF.rb_reducao_ZClick(Sender: TObject);
begin
  bt_confirmar.Enabled := true;
  rb_horario_verao.Enabled := false;
  iProg := 2;
end;

procedure TfrmConfig_ECF.bt_confirmarClick(Sender: TObject);
begin
  case iprog of
  1 : begin
        // programar / desprogramar horario de verao
        sMsg := cECF_Programa_Horario_Verao(iECF_Modelo) ;
        if sMsg = 'OK' then
        begin
          application.messagebox('Comando executado com sucesso!','Aviso',mb_ok+MB_ICONINFORMATION);
        end
        else
        begin
          application.messagebox(pansichar('Comando não executado!'+#13+
                                            'Mensagem: '+sMsg),'Aviso',mb_ok+MB_ICONERROR);
          if rb_horario_verao.Checked then
            rb_horario_verao.Checked := false
          else
            rb_horario_verao.Checked := true;
        end;
      end;
  2 : begin
        // programar / desprogramar red z automatica
        if rb_reducao_Z.Checked then
          sMsg := cECF_Programa_Z_Automatico(IECF_MODELO,'SIM')
        else
          sMsg := cECF_Programa_Z_Automatico(IECF_MODELO,'NAO');
        if sMsg = 'ERRO' then
        begin
          application.messagebox(pansichar('Comando não executado!'+#13+
                                            'Mensagem: '+sMsg),'Aviso',mb_ok+MB_ICONERROR);

          if rb_reducao_Z.Checked then
            rb_reducao_Z.Checked := false
          else
            rb_reducao_Z.Checked := true;
        end
        else
          application.messagebox('Comando executado com sucesso!','Aviso',mb_ok+MB_ICONINFORMATION);
      end;
  end;
  rb_horario_verao.Enabled := true;
  rb_reducao_Z.Enabled := true;
end;

procedure TfrmConfig_ECF.SpeedButton1Click(Sender: TObject);
begin
  application.MessageBox('A programação do horário de verão será realizada somente'+
                         ' após uma ReduçãoZ. Para desprogramar, o Método somente será'+
                         ' aceito, 1 (uma) hora após a ReduçãoZ e não pode ter havido '+
                         'movimento na impressora nesse período.','Aviso',mb_ok+MB_ICONINFORMATION);

end;

procedure TfrmConfig_ECF.bt_aliquotaClick(Sender: TObject);
begin
  if ed_aliquota.value > 0 then
  begin
    if rb_icms.Checked then
      sMsg := cECF_Programa_Aliquota(iECF_Modelo,ed_aliquota.Value,'ICMS')
    else
      sMsg := cECF_Programa_Aliquota(iECF_Modelo,ed_aliquota.Value,'ISS');

    if sMsg = 'OK' then
    begin
      Application.MessageBox('Alíquota programada com sucesso!','Aviso',mb_ok+MB_ICONINFORMATION);
      ls_aliquota.Items.Add(somentenumero(formatfloat('00.00',ed_aliquota.Value)));
    end
    else
      Application.MessageBox(pansichar('Comando não executado!'+#13+
                                       'Mensagem: '+sMsg),'Erro',mb_ok+MB_iconerror);
  end
  else
  begin
    Application.MessageBox('Favor informar um valor maio que ZERO!','Atenção',mb_ok+mb_iconerror);
  end;
end;

procedure TfrmConfig_ECF.Button1Click(Sender: TObject);
begin
  if ed_forma_pgto.text <> '' then
  begin
    if rb_vinculado.checked then
      sMsg := cECF_Programa_Forma_Pgto(iECF_Modelo,ed_forma_pgto.text,'SIM')
    else
      sMsg := cECF_Programa_Forma_Pgto(iECF_Modelo,ed_forma_pgto.text,'NAO');

    if sMsg = 'OK' then
    begin
      Application.MessageBox('Forma de Pagamento programada com sucesso!',
                              'Aviso',mb_ok+MB_ICONINFORMATION);

      frmModulo.tbForma_Pgto.insert;
      frMmODULO.tbForma_Pgto.FieldByName('nome').asstring := ed_forma_pgto.text;
      frmModulo.tbForma_Pgto.Post;
      ls_forma_pgto.Items.Add(ed_forma_pgto.Text);
    end
    else
      Application.MessageBox(pansichar('Comando não executado!'+#13+
                                       'Mensagem: '+sMsg),'Erro',mb_ok+MB_iconerror);

  end
  else
  begin
    Application.MessageBox('Favor informar a forma de pagamento!','Erro',mb_ok+MB_ICONERROR);
  end;
end;

procedure TfrmConfig_ECF.bt_totalizadorClick(Sender: TObject);
begin
  if ed_totalizador.text <> '' then
  begin
    sMsg := cECF_Programa_Totalizador(iECF_Modelo,strtoint(ed_indice.text),ed_totalizador.Text);

    if sMsg = 'OK' then
    begin
      Application.MessageBox('Totalizador não fiscal gravado com sucesso!',
                              'Aviso',mb_ok+MB_ICONINFORMATION);
      ls_total_nf.Items.Add(ed_totalizador.text);
    end
    else
      Application.MessageBox(pansichar('Comando não executado!'+#13+
                                       'Mensagem: '+sMsg),'Erro',mb_ok+MB_iconerror);

  end
  else
  begin
    Application.MessageBox('Favor informar a descrição!','Erro',mb_ok+MB_ICONERROR);
  end;
end;

procedure TfrmConfig_ECF.ed_forma_pgtoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure TfrmConfig_ECF.MenuFiscal2Click(Sender: TObject);
begin
  frmMenu_fiscal := tfrmMenu_fiscal.create(self);
  frmMenu_fiscal.showmodal;
end;

end.
