unit Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, MemDS, DBAccess, IBC,
  IniFiles, // unit de leitura do arquivo INI
  Registry;

type
  TfrmPrincipal = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Button1: TButton;
    Button2: TButton;
    conexao: TIBCConnection;
    qrpaf: TIBCQuery;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label27: TLabel;
    ed_paf_nome: TEdit;
    ed_paf_versao: TEdit;
    ed_paf_md5: TEdit;
    ed_paf_executavel: TEdit;
    Panel4: TPanel;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    ed_sh_nome: TEdit;
    ed_sh_cnpj: TEdit;
    ed_sh_ie: TEdit;
    ed_sh_im: TEdit;
    ed_sh_telefone: TEdit;
    ed_sh_endereco: TEdit;
    ed_sh_contato: TEdit;
    Panel5: TPanel;
    GroupBox3: TGroupBox;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label9: TLabel;
    Label13: TLabel;
    Label20: TLabel;
    Label26: TLabel;
    ed_ecf_serial: TEdit;
    ed_ecf_numero: TEdit;
    cb_ecf_marca: TComboBox;
    cb_ecf_modelo: TComboBox;
    cb_ecf_tipo: TComboBox;
    ed_ecf_cnif: TEdit;
    ed_usuario: TEdit;
    cb_desconto_iss: TComboBox;
    GroupBox7: TGroupBox;
    ed_total_geral: TEdit;
    Panel6: TPanel;
    GroupBox4: TGroupBox;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    ed_cliente_nome: TEdit;
    ed_cliente_cnpj: TEdit;
    ed_cliente_ie: TEdit;
    ed_cliente_im: TEdit;
    GroupBox6: TGroupBox;
    rb_pre_venda: TCheckBox;
    rb_dav_ecf: TCheckBox;
    rb_dav_nf: TCheckBox;
    Panel7: TPanel;
    GroupBox5: TGroupBox;
    Label18: TLabel;
    Label19: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    ed_indice_crediario: TEdit;
    ed_nome_crediario: TEdit;
    ed_indice_suprimento: TEdit;
    ed_indice_sangria: TEdit;
    Label31: TLabel;
    ed_diretorio: TEdit;
    Label32: TLabel;
    ed_cliente_endereco: TEdit;
    Label33: TLabel;
    ed_cliente_bairro: TEdit;
    Label34: TLabel;
    ed_cliente_cidade: TEdit;
    Label35: TLabel;
    ed_cliente_uf: TEdit;
    Label36: TLabel;
    ed_cliente_cep: TEdit;
    rb_os: TCheckBox;
    rb_os_mecanica: TCheckBox;
    Label37: TLabel;
    ED_PAF_LAUDO: TEdit;
    GroupBox8: TGroupBox;
    rb_varejo: TRadioButton;
    rb_auto: TRadioButton;
    rb_posto: TRadioButton;
    rb_restaurante: TRadioButton;
    Button6: TButton;
    Function Cript(Action, Src: String): String; // Criptografar e Descriptografar String
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Label20Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure cb_ecf_marcaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation


{$R *.dfm}
Function Tfrmprincipal.Cript(Action, Src: String): String;
Label Fim;
var KeyLen : Integer;
KeyPos : Integer;
OffSet : Integer;
Dest, Key : String;
SrcPos : Integer;
SrcAsc : Integer;
TmpSrcAsc : Integer;
Range : Integer;
begin
  if (Src = '') Then
  begin
    Result:= '';
    Goto Fim;
  end;
  Key := 'YUQL23K1PIUF90AERVNNMKH02NMIHJ12042 E18XM01HIBQAS150AVDOUYQA90UD1APSA12POIENC1K3210N0419RTIKJ';

  Dest := '';
  KeyLen := Length(Key);
  KeyPos := 0;
  SrcPos := 0;
  SrcAsc := 0;
  Range := 256;
  if (Action = UpperCase('C')) then
  begin
    Randomize;
    OffSet := Random(Range);
    Dest := Format('%1.2x',[OffSet]);
    for SrcPos := 1 to Length(Src) do
    begin
      Application.ProcessMessages;
      SrcAsc := (Ord(Src[SrcPos]) + OffSet) Mod 255;
      if KeyPos < KeyLen then KeyPos := KeyPos + 1 else KeyPos := 1;
      SrcAsc := SrcAsc Xor Ord(Key[KeyPos]);
      Dest := Dest + Format('%1.2x',[SrcAsc]);
      OffSet := SrcAsc;
    end;
  end
  Else
  if (Action = UpperCase('D')) then
  begin
    OffSet := StrToInt('$'+ copy(Src,1,2));
    SrcPos := 3;
  repeat
  SrcAsc := StrToInt('$'+ copy(Src,SrcPos,2));
  if (KeyPos < KeyLen) Then KeyPos := KeyPos + 1 else KeyPos := 1;
  TmpSrcAsc := SrcAsc Xor Ord(Key[KeyPos]);
  if TmpSrcAsc <= OffSet then TmpSrcAsc := 255 + TmpSrcAsc - OffSet
  else TmpSrcAsc := TmpSrcAsc - OffSet;
  Dest := Dest + Chr(TmpSrcAsc);
  OffSet := SrcAsc;
  SrcPos := SrcPos + 2;
  until (SrcPos >= Length(Src));
  end;
  Result:= Dest;
  Fim:
END;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.Button2Click(Sender: TObject);
begin
  close;
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.Button1Click(Sender: TObject);
var Arquivo_ini : TIniFile;
begin
  // abrir arquivo .ini
  Arquivo_ini := TIniFile.Create('c:\DataSAC\paf\cfg\Datapaf.dll');

  //[PAF]
  //NOME
  Arquivo_ini.WriteString('D37DEB63','C84EC847C0',Cript('C',ed_paf_nome.text));
  //VERSAO
  Arquivo_ini.WriteString('D37DEB63','49C659FA0271F3',Cript('C',ed_paf_versao.text) );
  //MD5
  Arquivo_ini.WriteString('D37DEB63','2329383C',Cript('C',ed_paf_md5.text) );

  //LAUDO
  Arquivo_ini.WriteString('D37DEB63','2329383D',Cript('C',ed_paf_LAUDO.text) );

  //EXECUTAVEL
  Arquivo_ini.WriteString('D37DEB63','75E369FF0F569991D64CD1',Cript('C',ed_paf_executavel.text) );


  //[EMPRESA DESENVOLVEDORA]
  //NOME
  Arquivo_ini.WriteString('F764E464FA72F673A2B6B253DE145AE870948F9DA2B9B1','61F613313A',Cript('C',ed_sh_nome.text));
  //CNPJ
  Arquivo_ini.WriteString('F764E464FA72F673A2B6B253DE145AE870948F9DA2B9B1','031F38D968',Cript('C',ed_sh_cnpj.text));
  //IE
  Arquivo_ini.WriteString('F764E464FA72F673A2B6B253DE145AE870948F9DA2B9B1','75E778',Cript('C',ed_sh_ie.text));
  //IM
  Arquivo_ini.WriteString('F764E464FA72F673A2B6B253DE145AE870948F9DA2B9B1','8696B6',Cript('C',ed_sh_im.text));
  //TELEFONE
  Arquivo_ini.WriteString('F764E464FA72F673A2B6B253DE145AE870948F9DA2B9B1','8FBA55F07AF271F40B',Cript('C',ed_sh_telefone.text));
  //ENDERECO
  Arquivo_ini.WriteString('F764E464FA72F673A2B6B253DE145AE870948F9DA2B9B1','8FBA55F07AF271F40c',Cript('C',ed_sh_endereco.text));
  //CONTATO
  Arquivo_ini.WriteString('F764E464FA72F673A2B6B253DE145AE870948F9DA2B9B1','8FBA55F07AF271F40D',Cript('C',ed_sh_contato.text));


  //[ECF]
  //MARCA
  Arquivo_ini.WriteString('B9A7BF57','13392FD058AB',Cript('C',cb_ecf_marca.text ));
  // COD DO ECF
  Arquivo_ini.WriteString('B9A7BF57','13392FD058AC',Cript('C',inttostr(cb_ecf_marca.ItemIndex)));
  //MODELO
  Arquivo_ini.WriteString('B9A7BF57','A4A8A2B7B0CE2D',Cript('C',cb_ecf_modelo.text));
  //TIPO
  Arquivo_ini.WriteString('B9A7BF57','6E9BB153EE',Cript('C',cb_ecf_tipo.text  ));
  //SERIAL
  Arquivo_ini.WriteString('B9A7BF57','D875EF1310639C',Cript('C',trim(ed_ecf_serial.text)));
  //NUMERO
  Arquivo_ini.WriteString('B9A7BF57','7299BB58D11656',Cript('C',ed_ecf_numero.text));
  //CNIF
  Arquivo_ini.WriteString('B9A7BF57','5CC640D853',Cript('C',ed_ecf_cnif.text));
  //USUARIO
  Arquivo_ini.WriteString('B9A7BF57','B655FD020F53AFB5',Cript('C',ed_usuario.text));
  //PERMITE_ISSQN
  Arquivo_ini.WriteString('B9A7BF57','B058C84ADB1758D607001A38CF27',Cript('C',cb_desconto_iss.Text));
  //DIRETORIO_ARQUIVO_FISCAL
  Arquivo_ini.WriteString('B9A7BF57','BC58F41617599BA6DE7E948094DC020A2526D354D36AE6609C',Cript('C',ed_diretorio.Text));
  //TOTALIZADOR_GERAL
  Arquivo_ini.WriteString('B9A7BF57','68E560E56B85FD1365F90007205E93A4A0BE',Cript('C',ed_total_geral.Text));


  //[USUARIO]
  //NOME
  Arquivo_ini.WriteString('4CF8193FCC2D45DF','5EF5100C1D',Cript('C',ed_cliente_nome.text));
  //CNPJ
  Arquivo_ini.WriteString('4CF8193FCC2D45DF','C855F6162C',Cript('C',ed_cliente_cnpj.text));
  //IE
  Arquivo_ini.WriteString('4CF8193FCC2D45DF','292B25',Cript('C',ed_cliente_ie.text));
  //IM
  Arquivo_ini.WriteString('4CF8193FCC2D45DF','3ADA7D',Cript('C',ed_cliente_im.text));
  //Endereco
  Arquivo_ini.WriteString('4CF8193FCC2D45DF','3ADA7E',Cript('C',ed_cliente_endereco.text));
  //Bairro
  Arquivo_ini.WriteString('4CF8193FCC2D45DF','3ADA7F',Cript('C',ed_cliente_bairro.text));
  //Cidade
  Arquivo_ini.WriteString('4CF8193FCC2D45DF','3ADA7G',Cript('C',ed_cliente_cidade.text));
  //UF
  Arquivo_ini.WriteString('4CF8193FCC2D45DF','3ADA7H',Cript('C',ed_cliente_uf.text));
  //CEP
  Arquivo_ini.WriteString('4CF8193FCC2D45DF','3ADA7I',Cript('C',ed_cliente_cep.text));

  //[OUTRAS OPCOES]
  //PRE-VENDA
  if rb_pre_venda.Checked then
    Arquivo_ini.WriteString('43CB7499A7DA1D76F41511353CB6','D67E859B84E81D2055C6',Cript('C','ATIVADO'))
  ELSE
    Arquivo_ini.WriteString('43CB7499A7DA1D76F41511353CB6','D67E859B84E81D2055C6',Cript('C','NAO FOI ATIVADO'));


  //DAV_ECF
  if rb_dav_ecf.Checked then
    Arquivo_ini.WriteString('43CB7499A7DA1D76F41511353CB6','78E57299B4CB3CC9',Cript('C','ATIVADO'))
  ELSE
    Arquivo_ini.WriteString('43CB7499A7DA1D76F41511353CB6','78E57299B4CB3CC9',Cript('C','NAO FOI'));
  //DAV_NF
  if rb_dav_nf.Checked then
    Arquivo_ini.WriteString('43CB7499A7DA1D76F41511353CB6','6AF76C93BE3FB6',Cript('C','ATIVADO'))
  ELSE
    Arquivo_ini.WriteString('43CB7499A7DA1D76F41511353CB6','6AF76C93BE3FB6',Cript('C','DESATIVADO'));
  //OS
  if rb_OS.Checked then
    Arquivo_ini.WriteString('43CB7499A7DA1D76F41511353CB6','6AF76C93BE3FB7',Cript('C','ATIVADO'))
  ELSE
    Arquivo_ini.WriteString('43CB7499A7DA1D76F41511353CB6','6AF76C93BE3FB7',Cript('C','DESATIVADO'));

  //OS MECANICA
  if rb_OS_mecanica.Checked then
    Arquivo_ini.WriteString('43CB7499A7DA1D76F41511353CB6','6AF76C93BE3FC8',Cript('C','ATIVADO'))
  ELSE
    Arquivo_ini.WriteString('43CB7499A7DA1D76F41511353CB6','6AF76C93BE3FC8',Cript('C','DESATIVADO'));



  //ramo
  if  rb_varejo.Checked then
      Arquivo_ini.WriteString('4CF8193FCC2D45DF','3ADA80',cript('C','1'));

  if  rb_auto.Checked then
      Arquivo_ini.WriteString('4CF8193FCC2D45DF','3ADA80',cript('C','2'));

  if  rb_posto.Checked then
      Arquivo_ini.WriteString('4CF8193FCC2D45DF','3ADA80',cript('C','3'));

  if  rb_restaurante.Checked then
      Arquivo_ini.WriteString('4CF8193FCC2D45DF','3ADA80',cript('C','4'));


  // liberar arquivo ini da memoria
  Arquivo_ini.Free;

  qrpaf.close;
  qrpaf.sql.clear;
  qrpaf.sql.add('update config set');
  qrpaf.sql.add('nome_totalizador_nf_crediario = '''+ed_nome_crediario.text+''',');
  qrpaf.sql.add('totalizador_nf_crediario = '''+ed_indice_crediario.Text+''',');
  qrpaf.sql.add('totalizador_sangria = '''+ed_indice_sangria.text+''',');
  qrpaf.sql.add('totalizador_suprimento = '''+ed_indice_suprimento.text+'''');
  qrpaf.sql.add('where codigo = 0');
  qrpaf.ExecSQL;

  close;
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.FormCreate(Sender: TObject);
var  Registro: TRegistry;
begin

  // Abrindo Registro do Windows para buscar configuracoes
  Registro            := TRegistry.Create;
  Registro.RootKey    := HKEY_LOCAL_MACHINE;
  if Registro.OpenKey('SOFTWARE',false) then
  begin
     if Registro.OpenKey('DataPDV',false) then
     begin

       if Registro.openkey('PDV',false) then
       begin
         (*************** DADOS ******************)
         if Registro.OpenKey('Dados',false) then
         begin
           conexao.Connected := false;
           conexao.Server := Registro.ReadString('Servidor');
           conexao.Server := Registro.ReadString('Banco de Dados');
           try
             conexao.Connected;
           except
             application.messagebox('Houve na conexão como o Banco de Dados!'+
             ' Favor contactar o suporte!','Erro',mb_ok+mb_iconerror);
           end;
         end
         else
         begin
           application.messagebox('Houve falha na leitura do resgistro da Balança!'+
           ' Favor contactar o suporte!','Erro',mb_ok+mb_iconerror);
         end;
       end
       else
       begin
          application.messagebox('Houve falha na leitura do resgistro do PDV!'+
          ' Favor contactar o suporte!','Erro',mb_ok+mb_iconerror);
       end;
     end
     else
     begin
       application.messagebox('Houve falha na leitura do registro de configurações!'+
       ' Favor contactar o suporte!','Erro',mb_ok+mb_iconerror);
       application.Terminate;
     end;

  end
  else
  begin
    application.messagebox('Houve falha na leitura do registro de configurações!'+
    ' Favor contactar o suporte!','Erro',mb_ok+mb_iconerror);
    application.Terminate;
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.FormShow(Sender: TObject);
var Arquivo_ini : TIniFile;
begin
{  qrpaf.close;
  qrpaf.sql.clear;
  qrpaf.sql.add('select * from PAF');
  qrpaf.open;


  ed_paf_nome.text   := Cript('D',qrpaf.fieldbyname('info1').AsString);
  ed_paf_versao.text := Cript('D',qrpaf.fieldbyname('info2').AsString);
  ed_paf_md5.text    := Cript('D',qrpaf.fieldbyname('info3').AsString);

  ed_sh_nome.text    := Cript('D',qrpaf.fieldbyname('info4').AsString);
  ed_sh_cnpj.text    := Cript('D',qrpaf.fieldbyname('info5').AsString);
  ed_sh_ie.text      := Cript('D',qrpaf.fieldbyname('info6').AsString);
  ed_sh_im.text      := Cript('D',qrpaf.fieldbyname('info7').AsString);

  ed_CLIENTE_nome.text    := Cript('D',qrpaf.fieldbyname('info8').AsString);
  ed_CLIENTE_cnpj.text    := Cript('D',qrpaf.fieldbyname('info9').AsString);
  ed_CLIENTE_ie.text      := Cript('D',qrpaf.fieldbyname('info10').AsString);
  ed_CLIENTE_im.text      := Cript('D',qrpaf.fieldbyname('info11').AsString);

  cb_ecf_MODELO.text  := Cript('D',qrpaf.fieldbyname('info13').AsString);

  cb_ecf_tipo.text   := Cript('D',qrpaf.fieldbyname('info14').AsString);
  ed_ecf_serial.text := Cript('D',qrpaf.fieldbyname('info15').AsString);
  ed_ecf_numero.text := Cript('D',qrpaf.fieldbyname('info16').AsString);
  ed_ecf_cnif.text   := Cript('D',qrpaf.fieldbyname('info17').AsString);
  
  ed_usuario.text   := Cript('D',qrpaf.fieldbyname('info19').AsString);
  cb_desconto_iss.text   := Cript('D',qrpaf.fieldbyname('info20').AsString);


  cb_ecf_MARCA.ItemIndex := strtoint(Cript('D',qrpaf.fieldbyname('info18').AsString));


  ed_sh_endereco.text   := Cript('D',qrpaf.fieldbyname('info21').AsString);
  ed_sh_telefone.text   := Cript('D',qrpaf.fieldbyname('info22').AsString);
  ed_sh_contato.text   := Cript('D',qrpaf.fieldbyname('info23').AsString);
  ed_paf_executavel.text   := Cript('D',qrpaf.fieldbyname('info24').AsString);

  if Cript('D',qrpaf.fieldbyname('info25').AsString) = 'ATIVADO' then
     rb_pre_venda.Checked := true else rb_pre_venda.Checked := false;
  if Cript('D',qrpaf.fieldbyname('info26').AsString) = 'ATIVADO' then
     rb_dav_ecf.Checked := true else rb_dav_ecf.Checked := false;
  if Cript('D',qrpaf.fieldbyname('info27').AsString) = 'ATIVADO' then
     rb_dav_nf.Checked := true else rb_dav_nf.Checked := false;


  ed_total_geral.text := Cript('D',qrpaf.fieldbyname('info28').AsString);
  ed_diretorio.text := Cript('D',qrpaf.fieldbyname('info29').AsString);


}

  // abrir arquivo .ini
  Arquivo_ini := TIniFile.Create('c:\DataSAC\paf\cfg\DataPaf.dll');

  //[PAF]
  //NOME
  ed_paf_nome.text := Cript('D',Arquivo_ini.ReadString('D37DEB63','C84EC847C0',''));
  //VERSAO
  ed_paf_versao.text:= Cript('D',Arquivo_ini.ReadString('D37DEB63','49C659FA0271F3','') );
  //MD5
  ed_paf_md5.text:= Cript('D',Arquivo_ini.ReadString('D37DEB63','2329383C','') );
  //MD5
  ed_paf_LAUDO.text:= Cript('D',Arquivo_ini.ReadString('D37DEB63','2329383D','') );


  //EXECUTAVEL
  ed_paf_executavel.text := Cript('D',Arquivo_ini.ReadString('D37DEB63','75E369FF0F569991D64CD1','') );





  //[EMPRESA DESENVOLVEDORA]
  //NOME
  ed_sh_nome.text := Cript('D',Arquivo_ini.ReadString('F764E464FA72F673A2B6B253DE145AE870948F9DA2B9B1','61F613313A',''));
  //CNPJ
  ed_sh_cnpj.text := Cript('D',Arquivo_ini.ReadString('F764E464FA72F673A2B6B253DE145AE870948F9DA2B9B1','031F38D968',''));
  //IE
  ed_sh_ie.text := Cript('D',Arquivo_ini.ReadString('F764E464FA72F673A2B6B253DE145AE870948F9DA2B9B1','75E778',''));
  //IM
  ed_sh_im.text := Cript('D',Arquivo_ini.ReadString('F764E464FA72F673A2B6B253DE145AE870948F9DA2B9B1','8696B6',''));
  //TELEFONE
  ed_sh_telefone.text := Cript('D',Arquivo_ini.ReadString('F764E464FA72F673A2B6B253DE145AE870948F9DA2B9B1','8FBA55F07AF271F40B',''));
  //ENDERECO
  ed_sh_endereco.text := Cript('D',Arquivo_ini.ReadString('F764E464FA72F673A2B6B253DE145AE870948F9DA2B9B1','8FBA55F07AF271F40c',''));
  //CONTATO
  ed_sh_contato.text := Cript('D',Arquivo_ini.ReadString('F764E464FA72F673A2B6B253DE145AE870948F9DA2B9B1','8FBA55F07AF271F40D',''));


  //[ECF]
  //MARCA
  cb_ecf_marca.text := Cript('D',Arquivo_ini.ReadString('B9A7BF57','13392FD058AB','' ));
  // COD DO ECF
  cb_ecf_marca.ItemIndex := strtoint(Cript('D',Arquivo_ini.ReadString('B9A7BF57','13392FD058AC','0')));
  //MODELO
  cb_ecf_modelo.text := Cript('D',Arquivo_ini.ReadString('B9A7BF57','A4A8A2B7B0CE2D',''));
  //TIPO
  cb_ecf_tipo.text := Cript('D',Arquivo_ini.ReadString('B9A7BF57','6E9BB153EE',''));
  //SERIAL
  ed_ecf_serial.text := Cript('D',Arquivo_ini.ReadString('B9A7BF57','D875EF1310639C',''));
  //NUMERO
  ed_ecf_numero.text := Cript('D',Arquivo_ini.ReadString('B9A7BF57','7299BB58D11656',''));
  //CNIF
  ed_ecf_cnif.text := Cript('D',Arquivo_ini.ReadString('B9A7BF57','5CC640D853',''));
  //USUARIO
  ed_usuario.text := Cript('D',Arquivo_ini.ReadString('B9A7BF57','B655FD020F53AFB5',''));
  //PERMITE_ISSQN
  cb_desconto_iss.Text := Cript('D',Arquivo_ini.ReadString('B9A7BF57','B058C84ADB1758D607001A38CF27',''));
  //DIRETORIO_:= Cript('D',Arquivo_FISCAL
  ed_diretorio.Text := Cript('D',Arquivo_ini.ReadString('B9A7BF57','BC58F41617599BA6DE7E948094DC020A2526D354D36AE6609C',''));
  //TOTALIZADOR_GERAL
  ed_total_geral.Text := Cript('D',Arquivo_ini.ReadString('B9A7BF57','68E560E56B85FD1365F90007205E93A4A0BE',''));


  //[USUARIO]
  //NOME
  ed_cliente_nome.text:= Cript('D',Arquivo_ini.ReadString('4CF8193FCC2D45DF','5EF5100C1D',''));
  //CNPJ
  ed_cliente_cnpj.text:= Cript('D',Arquivo_ini.ReadString('4CF8193FCC2D45DF','C855F6162C',''));
  //IE
  ed_cliente_ie.text:= Cript('D',Arquivo_ini.ReadString('4CF8193FCC2D45DF','292B25',''));
  //IM
  ed_cliente_im.text:= Cript('D',Arquivo_ini.ReadString('4CF8193FCC2D45DF','3ADA7D',''));
  //ENDERECO
  ed_cliente_Endereco.text:= Cript('D',Arquivo_ini.ReadString('4CF8193FCC2D45DF','3ADA7E',''));
  //BAIRRO
  ed_cliente_bairro.text:= Cript('D',Arquivo_ini.ReadString('4CF8193FCC2D45DF','3ADA7F',''));
  //CIDADE
  ed_cliente_cidade.text:= Cript('D',Arquivo_ini.ReadString('4CF8193FCC2D45DF','3ADA7G',''));
  //UF
  ed_cliente_uf.text:= Cript('D',Arquivo_ini.ReadString('4CF8193FCC2D45DF','3ADA7H',''));
  //CEP
  ed_cliente_cep.text:= Cript('D',Arquivo_ini.ReadString('4CF8193FCC2D45DF','3ADA7I',''));

  //ramo
  if  Cript('D',Arquivo_ini.ReadString('4CF8193FCC2D45DF','3ADA80','')) = '1' then
    rb_varejo.Checked := true;
  if  Cript('D',Arquivo_ini.ReadString('4CF8193FCC2D45DF','3ADA80','')) = '2' then
    rb_auto.Checked := true;
  if  Cript('D',Arquivo_ini.ReadString('4CF8193FCC2D45DF','3ADA80','')) = '3' then
    rb_posto.Checked := true;
  if  Cript('D',Arquivo_ini.ReadString('4CF8193FCC2D45DF','3ADA80','')) = '4' then
    rb_restaurante.Checked := true;


  //[OUTRAS OPCOES]
  //PRE-VENDA
  if Cript('D',Arquivo_ini.ReadString('43CB7499A7DA1D76F41511353CB6','D67E859B84E81D2055C6','')) = 'ATIVADO' then
    rb_pre_venda.Checked := true
  else
    rb_pre_venda.Checked := false;

  //DAV_ECF
  if Cript('D',Arquivo_ini.ReadString('43CB7499A7DA1D76F41511353CB6','78E57299B4CB3CC9','')) = 'ATIVADO' then
    rb_dav_ecf.Checked := true
  ELSE
    rb_dav_ecf.Checked := false;

  //DAV_NF
  if Cript('D',Arquivo_ini.ReadString('43CB7499A7DA1D76F41511353CB6','6AF76C93BE3FB6','')) = 'ATIVADO' then
    rb_dav_nf.Checked := true
  ELSE
    rb_dav_nf.Checked := false;


  //OS
  if Cript('D',Arquivo_ini.ReadString('43CB7499A7DA1D76F41511353CB6','6AF76C93BE3FB7','')) = 'ATIVADO' then
    rb_os.Checked := true
  ELSE
    rb_os.Checked := false;

  //OS  MECANICA
  if Cript('D',Arquivo_ini.ReadString('43CB7499A7DA1D76F41511353CB6','6AF76C93BE3FC8','')) = 'ATIVADO' then
    rb_os_mecanica.Checked := true
  ELSE
    rb_os_mecanica.Checked := false;


  // liberar arquivo ini da memoria
  Arquivo_ini.Free;

  qrpaf.close;
  qrpaf.sql.clear;
  qrpaf.sql.add('select * from config');
  qrpaf.open;
  ed_nome_crediario.Text := qrpaf.fieldbyname('nome_totalizador_nf_crediario').asstring;
  ed_indice_crediario.Text := qrpaf.fieldbyname('totalizador_nf_crediario').asstring;
  ed_indice_sangria.Text := qrpaf.fieldbyname('totalizador_sangria').asstring;
  ed_indice_suprimento.Text := qrpaf.fieldbyname('totalizador_suprimento').asstring;
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.Button4Click(Sender: TObject);
begin
  ed_ecf_serial.text := 'EMULADOR';
  cb_ecf_marca.itemindex := 1;
  cb_ecf_modelo.text := 'MP-2100 TH FI';
  ed_ecf_cnif.text := '030902';

  ed_indice_crediario.text := '03';
  ed_nome_crediario.text := 'CREDIARIO';
  ed_indice_sangria.Text := '29';
  ed_indice_suprimento.Text := '30';


  ed_usuario.text := '01';
  ed_diretorio.text := '';
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.Button3Click(Sender: TObject);
begin
  ed_ecf_serial.text := 'DR0207BR000000107810';
  cb_ecf_marca.itemindex := 2;
  cb_ecf_modelo.text := 'FS600';
  ed_ecf_cnif.text := '080805';

  ed_indice_crediario.text := '03';
  ed_nome_crediario.text := 'CREDIARIO';
  ed_indice_sangria.Text := '01';
  ed_indice_suprimento.Text := '02';

  ed_diretorio.text := 'C:\DataSAC\paf\txt\';


  ed_usuario.text := '01';
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.Label20Click(Sender: TObject);
begin
  showmessage('Emitir uma leitura da memória fiscal para verificar o número do usuário.');
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.Button5Click(Sender: TObject);
begin
  ed_ecf_serial.text := 'SW040900000000001507';
  cb_ecf_marca.itemindex := 3;
  cb_ecf_modelo.text := 'IF ST120';
  ed_ecf_cnif.text := '382001';
  ed_indice_crediario.text := '03';
  ed_nome_crediario.text := 'CREDIARIO';
  ed_indice_sangria.Text := '05';
  ed_indice_suprimento.Text := '01';
  ed_usuario.text := '01';
  ed_diretorio.text := '';
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.Button6Click(Sender: TObject);
begin
  ed_ecf_serial.text := 'EP081100000000000001';
  cb_ecf_marca.itemindex := 4;
  cb_ecf_modelo.text := 'TM-T81 FBIII';
  ed_ecf_cnif.text := '150406';

  ed_indice_crediario.text := '03';
  ed_nome_crediario.text := 'CREDIARIO';
  ed_indice_sangria.Text := '01';
  ed_indice_suprimento.Text := '02';

  ed_diretorio.text := '';

  ed_usuario.text := '01';
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.cb_ecf_marcaClick(Sender: TObject);
begin
   case cb_ecf_marca.ItemIndex of
   0 : cb_ecf_modelo.Clear;
   1 : {bematech} begin
         cb_ecf_modelo.Clear;
         cb_ecf_modelo.Items.Add('MP-2100 TH FI');
         cb_ecf_modelo.Items.Add('MP-4000 TH FI');
         cb_ecf_modelo.Items.Add('MP-7000 TH FI');
         cb_ecf_modelo.Items.Add('MP-3000 TH FI');
         cb_ecf_modelo.Items.Add('MP-6000 TH FI');
       end;
   2 : {Daruma} begin
         cb_ecf_modelo.Clear;
         cb_ecf_modelo.Items.Add('FS600');
         cb_ecf_modelo.Items.Add('FS700');
         cb_ecf_modelo.Items.Add('FS2000');
         cb_ecf_modelo.Items.Add('FS2100T');
       end;
   3 : {Sweda} begin
         cb_ecf_modelo.Clear;
         cb_ecf_modelo.Items.Add('IF ST120');
         cb_ecf_modelo.Items.Add('IF ST200');
         cb_ecf_modelo.Items.Add('IF ST2000');
         cb_ecf_modelo.Items.Add('IF ST2500');
       end;
   4 : {Epson} begin
         cb_ecf_modelo.Clear;

         cb_ecf_modelo.items.add('TM-H6000 FB');
         cb_ecf_modelo.items.add('TM-H6000 FBII');
         cb_ecf_modelo.items.add('TM-H6000 FBIII');
         cb_ecf_modelo.items.add('TM-T81 FBII');
         cb_ecf_modelo.items.add('TM-T81 FBIII');
         cb_ecf_modelo.items.add('TM-T88 FB');
         cb_ecf_modelo.items.add('TM-T88 FBII');
         cb_ecf_modelo.items.add('TM-T88 FBIII');
       end;
   end;
end;

end.
