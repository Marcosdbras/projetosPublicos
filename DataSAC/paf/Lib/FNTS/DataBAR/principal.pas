unit principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvGlowButton, ComCtrls, ExtCtrls, StdCtrls, RzPanel, Mask,
  RzEdit, DB, MemDS, DBAccess, IBC, NxColumns, NxColumnClasses,
  NxScrollControl, NxCustomGridControl, NxCustomGrid, NxGrid, ACBrBase, ACBrBAL,
  Menus, registry,  ACBrDevice, WinXP,
   AdvOfficeImage;

type
  TfrmPrincipal = class(TForm)
    Panel1: TPanel;
    Bevel1: TBevel;
    pg_principal: TPageControl;
    Panel2: TPanel;
    TabSheet1: TTabSheet;
    Panel19: TPanel;
    Bevel2: TBevel;
    GroupBox1: TGroupBox;
    lb_mesa: TLabel;
    GroupBox3: TGroupBox;
    pn_consumo: TRzPanel;
    RzPanel2: TRzPanel;
    GroupBox4: TGroupBox;
    ed_produto_codigo: TEdit;
    gp_qtde: TGroupBox;
    ed_qtde: TRzNumericEdit;
    GroupBox6: TGroupBox;
    ed_unitario: TRzNumericEdit;
    GroupBox7: TGroupBox;
    ed_total: TRzNumericEdit;
    GroupBox8: TGroupBox;
    ed_unidade: TEdit;
    ed_produto_nome: TEdit;
    bt_gravar_consumo: TAdvGlowButton;
    query: TIBCQuery;
    qrConsumo: TIBCQuery;
    bt_balanca: TAdvGlowButton;
    pn_mesa: TRzPanel;
    bt_consumo: TAdvGlowButton;
    grid: TNextGrid;
    NxTextColumn1: TNxTextColumn;
    NxTextColumn2: TNxTextColumn;
    NxTextColumn3: TNxTextColumn;
    NxTextColumn4: TNxTextColumn;
    NxTextColumn5: TNxTextColumn;
    NxTextColumn6: TNxTextColumn;
    NxTextColumn7: TNxTextColumn;
    NxTextColumn8: TNxTextColumn;
    NxTextColumn9: TNxTextColumn;
    NxTextColumn10: TNxTextColumn;
    NxTextColumn11: TNxTextColumn;
    NxTextColumn12: TNxTextColumn;
    NxTextColumn13: TNxTextColumn;
    NxTextColumn14: TNxTextColumn;
    ed_total_comanda: TRzNumericEdit;
    PopupMenu1: TPopupMenu;
    Comanda1: TMenuItem;
    N1: TMenuItem;
    Consumo1: TMenuItem;
    N2: TMenuItem;
    Balana1: TMenuItem;
    N3: TMenuItem;
    Mess1: TMenuItem;
    GroupBox2: TGroupBox;
    lb_data: TLabel;
    lb_hora: TLabel;
    bt_cancelar: TAdvGlowButton;
    qrbuffer: TIBCQuery;
    GroupBox5: TGroupBox;
    lb_funci: TLabel;
    qrapoio: TIBCQuery;
    timer_mesa_aberta: TTimer;
    qrmesa_aberta: TIBCQuery;
    wnxp1: TWinXP;
    Panel18: TPanel;
    AdvGlowButton226: TAdvGlowButton;
    AdvGlowButton227: TAdvGlowButton;
    AdvGlowButton228: TAdvGlowButton;
    AdvGlowButton229: TAdvGlowButton;
    AdvGlowButton230: TAdvGlowButton;
    AdvGlowButton231: TAdvGlowButton;
    AdvGlowButton232: TAdvGlowButton;
    AdvGlowButton233: TAdvGlowButton;
    AdvGlowButton234: TAdvGlowButton;
    AdvGlowButton235: TAdvGlowButton;
    AdvGlowButton236: TAdvGlowButton;
    AdvGlowButton237: TAdvGlowButton;
    AdvGlowButton238: TAdvGlowButton;
    AdvGlowButton239: TAdvGlowButton;
    bt_mesa_001: TAdvGlowButton;
    Panel16: TPanel;
    AdvGlowButton196: TAdvGlowButton;
    AdvGlowButton197: TAdvGlowButton;
    AdvGlowButton198: TAdvGlowButton;
    AdvGlowButton199: TAdvGlowButton;
    AdvGlowButton200: TAdvGlowButton;
    AdvGlowButton201: TAdvGlowButton;
    AdvGlowButton202: TAdvGlowButton;
    AdvGlowButton203: TAdvGlowButton;
    AdvGlowButton204: TAdvGlowButton;
    AdvGlowButton205: TAdvGlowButton;
    AdvGlowButton206: TAdvGlowButton;
    AdvGlowButton207: TAdvGlowButton;
    AdvGlowButton208: TAdvGlowButton;
    AdvGlowButton209: TAdvGlowButton;
    AdvGlowButton210: TAdvGlowButton;
    Panel14: TPanel;
    AdvGlowButton166: TAdvGlowButton;
    AdvGlowButton167: TAdvGlowButton;
    AdvGlowButton168: TAdvGlowButton;
    AdvGlowButton169: TAdvGlowButton;
    AdvGlowButton170: TAdvGlowButton;
    AdvGlowButton171: TAdvGlowButton;
    AdvGlowButton172: TAdvGlowButton;
    AdvGlowButton173: TAdvGlowButton;
    AdvGlowButton174: TAdvGlowButton;
    AdvGlowButton175: TAdvGlowButton;
    AdvGlowButton176: TAdvGlowButton;
    AdvGlowButton177: TAdvGlowButton;
    AdvGlowButton178: TAdvGlowButton;
    AdvGlowButton179: TAdvGlowButton;
    AdvGlowButton180: TAdvGlowButton;
    Panel12: TPanel;
    AdvGlowButton136: TAdvGlowButton;
    AdvGlowButton137: TAdvGlowButton;
    AdvGlowButton138: TAdvGlowButton;
    AdvGlowButton139: TAdvGlowButton;
    AdvGlowButton140: TAdvGlowButton;
    AdvGlowButton141: TAdvGlowButton;
    AdvGlowButton142: TAdvGlowButton;
    AdvGlowButton143: TAdvGlowButton;
    AdvGlowButton144: TAdvGlowButton;
    AdvGlowButton145: TAdvGlowButton;
    AdvGlowButton146: TAdvGlowButton;
    AdvGlowButton147: TAdvGlowButton;
    AdvGlowButton148: TAdvGlowButton;
    AdvGlowButton149: TAdvGlowButton;
    AdvGlowButton150: TAdvGlowButton;
    Panel10: TPanel;
    AdvGlowButton106: TAdvGlowButton;
    AdvGlowButton107: TAdvGlowButton;
    AdvGlowButton108: TAdvGlowButton;
    AdvGlowButton109: TAdvGlowButton;
    AdvGlowButton110: TAdvGlowButton;
    AdvGlowButton111: TAdvGlowButton;
    AdvGlowButton112: TAdvGlowButton;
    AdvGlowButton113: TAdvGlowButton;
    AdvGlowButton114: TAdvGlowButton;
    AdvGlowButton115: TAdvGlowButton;
    AdvGlowButton116: TAdvGlowButton;
    AdvGlowButton117: TAdvGlowButton;
    AdvGlowButton118: TAdvGlowButton;
    AdvGlowButton119: TAdvGlowButton;
    AdvGlowButton120: TAdvGlowButton;
    Panel8: TPanel;
    AdvGlowButton76: TAdvGlowButton;
    AdvGlowButton77: TAdvGlowButton;
    AdvGlowButton78: TAdvGlowButton;
    AdvGlowButton79: TAdvGlowButton;
    AdvGlowButton80: TAdvGlowButton;
    AdvGlowButton81: TAdvGlowButton;
    AdvGlowButton82: TAdvGlowButton;
    AdvGlowButton83: TAdvGlowButton;
    AdvGlowButton84: TAdvGlowButton;
    AdvGlowButton85: TAdvGlowButton;
    AdvGlowButton86: TAdvGlowButton;
    AdvGlowButton87: TAdvGlowButton;
    AdvGlowButton88: TAdvGlowButton;
    AdvGlowButton89: TAdvGlowButton;
    AdvGlowButton90: TAdvGlowButton;
    Panel6: TPanel;
    AdvGlowButton46: TAdvGlowButton;
    AdvGlowButton47: TAdvGlowButton;
    AdvGlowButton48: TAdvGlowButton;
    AdvGlowButton49: TAdvGlowButton;
    AdvGlowButton50: TAdvGlowButton;
    AdvGlowButton51: TAdvGlowButton;
    AdvGlowButton52: TAdvGlowButton;
    AdvGlowButton53: TAdvGlowButton;
    AdvGlowButton54: TAdvGlowButton;
    AdvGlowButton55: TAdvGlowButton;
    AdvGlowButton56: TAdvGlowButton;
    AdvGlowButton57: TAdvGlowButton;
    AdvGlowButton58: TAdvGlowButton;
    AdvGlowButton59: TAdvGlowButton;
    AdvGlowButton60: TAdvGlowButton;
    Panel5: TPanel;
    bt_comanda: TAdvGlowButton;
    AdvGlowButton35: TAdvGlowButton;
    AdvGlowButton36: TAdvGlowButton;
    AdvGlowButton37: TAdvGlowButton;
    AdvGlowButton38: TAdvGlowButton;
    AdvGlowButton39: TAdvGlowButton;
    AdvGlowButton40: TAdvGlowButton;
    AdvGlowButton41: TAdvGlowButton;
    AdvGlowButton42: TAdvGlowButton;
    AdvGlowButton43: TAdvGlowButton;
    AdvGlowButton44: TAdvGlowButton;
    AdvGlowButton45: TAdvGlowButton;
    imgVerde: TAdvOfficeImage;
    imgLar: TAdvOfficeImage;
    imgVerm: TAdvOfficeImage;
    procedure bt_comandaClick(Sender: TObject);
    procedure bt_mesa_001Click(Sender: TObject);
    procedure pg_principalChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure gridCellClick(Sender: TObject; ACol, ARow: Integer);
    procedure bt_consumoClick(Sender: TObject);
    procedure ed_produto_codigoKeyPress(Sender: TObject; var Key: Char);
    procedure ed_qtdeKeyPress(Sender: TObject; var Key: Char);
    procedure ed_qtdeExit(Sender: TObject);
    procedure bt_gravar_consumoClick(Sender: TObject);
    procedure Mess1Click(Sender: TObject);
    procedure Consumo1Click(Sender: TObject);
    procedure bt_balancaClick(Sender: TObject);
    procedure Balana1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bt_cancelarClick(Sender: TObject);
    procedure ed_produto_codigoEnter(Sender: TObject);
    procedure ed_qtdeEnter(Sender: TObject);
    procedure timer_mesa_abertaTimer(Sender: TObject);
    procedure TPBobinaClick(Sender: TObject);
    function texto_justifica(texto : string; qtde_caracteres : integer; caracter : string; tipo:string) : string;
    function tiraacento ( str: String ): String;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure desmarca();
    procedure localiza_mesa(mesa:integer);
  end;

var
  frmPrincipal: TfrmPrincipal;
  resultado_pesquisa : string;
  sFunci, snome_funci : string;

  bContinua_mesa : boolean; // flag para verificar se foi efetivado o lancado da mesa
  sMesa_Numero : string;
  porta_impressora:string;
  vias_impressao:integer;

implementation

  uses comanda, Modulo, mesa_consumo, loc_produto, balanca, mesa_abertura;

{$R *.dfm}

// -------------------------------------------------------------------------- //

function tfrmprincipal.tiraacento ( str: String ): String;
var
i: Integer;
begin
for i := 1 to Length ( str ) do
case str[i] of
'Ë': str[i] := 'e';
'Ï': str[i] := 'i';
'˘': str[i] := 'u';
'Ó': str[i] := 'i';
'˚': str[i] := 'u';
'·': str[i] := '†';//
'È': str[i] := 'Ç';//
'Ì': str[i] := '°';//
'Û': str[i] := '¢';//
'˙': str[i] := '£';//
'‡': str[i] := 'Ö';//
'Ú': str[i] := 'ï';//
'‚': str[i] := 'É';//
'Í': str[i] := 'à';//
'Ù': str[i] := 'ì';//
'‰': str[i] := 'Ñ';//
'Î': str[i] := 'â';//
'Ô': str[i] := 'ã';//
'ˆ': str[i] := 'î';//
'¸': str[i] := 'Å';//
'„': str[i] := 'Ü';//
'ı': str[i] := 'o';
'Ò': str[i] := '§';//
'Á': str[i] := 'á';//
'¡': str[i] := 'A';
'…': str[i] := 'ê';//
'Õ': str[i] := 'I';
'”': str[i] := 'O';
'⁄': str[i] := 'U';
'¿': str[i] := 'A';
'»': str[i] := 'E';
'Ã': str[i] := 'I';
'“': str[i] := 'O';
'Ÿ': str[i] := 'U';
'¬': str[i] := 'è';
' ': str[i] := 'E';
'Œ': str[i] := 'I';
'‘': str[i] := 'O';
'€': str[i] := 'U';
'ƒ': str[i] := 'A';
'À': str[i] := 'E';
'œ': str[i] := 'I';
'÷': str[i] := 'O';
'‹': str[i] := 'ö';//
'√': str[i] := 'A';
'’': str[i] := 'O';
'—': str[i] := '•';//
'«': str[i] := 'Ä';//
'™': str[i] := '¶';//
'∫': str[i] := 'ß';//
end;
Result := str;
end;


function tfrmprincipal.texto_justifica(texto : string; qtde_caracteres : integer; caracter : string; tipo:string) : string;
begin
   texto := tiraacento(texto);
   if tipo = 'E' then
   begin
     while length(texto) < qtde_caracteres do texto := caracter+texto;
     while length(texto) > qtde_caracteres do delete(texto,(qtde_caracteres + 1), 1);
   end;
   if tipo = 'D' then
   begin
     while length(texto) < qtde_caracteres do texto := texto+caracter;
     while length(texto) > qtde_caracteres do delete(texto,(qtde_caracteres + 1), 1);
   end;
   if tipo = 'C' then
   begin
     if (qtde_caracteres mod 2) <> 0 then qtde_caracteres := qtde_caracteres - 1;
     while length(texto) < qtde_caracteres do texto := caracter+texto+caracter;
     while length(texto) > qtde_caracteres do delete(texto,(qtde_caracteres + 1), 1);
   end;
   result := texto;
end;



procedure Tfrmprincipal.desmarca();
var
i : Integer;
begin
  for i := 0 to ComponentCount - 1 do
  if (Components[i] is TAdvGlowButton) then
  begin
    if TAdvGlowButton(Components[i]).Down then
    begin
//      TAdvGlowButton(Components[i]).Appearance.ColorCheckedTo := $00F9BDA0;
//      TAdvGlowButton(Components[i]).Appearance.ColorChecked := $00F5D8CA;
//      TAdvGlowButton(Components[i]).Appearance.ColorMirrorChecked := $00F5B49C;
//      TAdvGlowButton(Components[i]).Appearance.ColorMirrorCheckedTo := $00FFDFDC;
        TAdvGlowButton(Components[i]).Picture := imgVerde.picture;      
      TAdvGlowButton(Components[i]).Refresh;
    end;
  end;

  pn_consumo.Enabled := false;
  lb_data.Caption := '';
  lb_hora.caption := '';
  lb_mesa.Caption := '';
  ed_total_comanda.value := 0;
  pn_mesa.Enabled := false;
end;

// -------------------------------------------------------------------------- //
procedure Tfrmprincipal.localiza_mesa(mesa:integer);
var
i : Integer;
begin
  for i := 0 to ComponentCount - 1 do
  if (Components[i] is TAdvGlowButton) then
  begin
    if TAdvGlowButton(Components[i]).Tag = mesa then
    begin
      TAdvGlowButton(Components[i]).Appearance.ColorCheckedTo := $0078C7FE;
      TAdvGlowButton(Components[i]).Appearance.ColorChecked := $00B5DBFB;
      TAdvGlowButton(Components[i]).Appearance.ColorMirrorChecked := $009FEBFD;
      TAdvGlowButton(Components[i]).Appearance.ColorMirrorCheckedTo := $0056B4FE;
      TAdvGlowButton(Components[i]).Down := true;
      TAdvGlowButton(Components[i]).Refresh;
      break;
    end;
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.bt_comandaClick(Sender: TObject);
var
bparar : boolean;
i, x : integer;

sMesa : string;
begin
  desmarca;
  bcontinua_mesa := false;
  frmComanda := tfrmComanda.create(self);
  frmComanda.showmodal;
  if bcontinua_mesa then
  begin
    if strtoint(lb_mesa.caption) < 117 then
    begin
      sMesa := lb_mesa.caption;
      desmarca;
      lb_mesa.Caption := sMesa;

      // verificar se a mesa j· estah aberta
      query.close;
      query.sql.clear;
      query.sql.add('select * from r000001');
      query.sql.add('where codigo = '+inttostr(strtoint(lb_mesa.Caption)));
      query.open;
      if query.RecordCount > 0 then
      begin
        lb_data.Caption := query.fieldbyname('data').asstring;
        lb_hora.caption := query.fieldbyname('hora').asstring;

        qrconsumo.close;
        qrconsumo.sql.clear;
        qrconsumo.sql.add('select sum(total) as soma from r000002');
        qrconsumo.sql.add('where cod_mesa = '+inttostr(strtoint(lb_mesa.Caption)));
        qrconsumo.sql.add('and cancelado = 0');
        qrconsumo.open;
        ed_total_comanda.value := qrconsumo.fieldbyname('soma').asfloat;
      end
      else
      begin
        bContinua_mesa := false;
        sFunci := '';
        snome_funci := '';
        frmmesa_abertura := tfrmmesa_abertura.create(self);
        frmmesa_abertura.lb_mesa.Caption := TAdvGlowButton(sender).Caption;
        frmmesa_abertura.showmodal;

        if bContinua_mesa then
        begin
         // lancar a data e hora
          lb_funci.caption := snome_funci;
          lb_mesa.caption := TAdvGlowButton(sender).Caption;
          lb_data.Caption := DateToStr(date);
          lb_hora.caption := TimeToStr(time);
          ed_total_comanda.value := 0;
          frmmodulo.st_Mesa_Abertura.close;
          frmmodulo.st_Mesa_Abertura.ParamByName('codigo').asinteger := strtoint(sMesa);
          frmmodulo.st_Mesa_Abertura.parambyname('data').asdatetime := date;
          frmmodulo.st_Mesa_Abertura.parambyname('hora').asstring := timetostr(time);
          frmmodulo.st_mesa_abertura.parambyname('cod_funcionario').asstring := sFunci;
          frmmodulo.st_Mesa_Abertura.Prepare;
          frmmodulo.st_Mesa_Abertura.Execute;
        end
        else
        begin
          desmarca;
          TAdvGlowButton(sender).Down := false;
          exit;
        end;
      end;
      localiza_mesa(strtoint(lb_mesa.Caption));

    end
    else
    begin
      bparar := false;

      for i := 0 to 9 do
      begin
        for x := 0 to 12 do
        begin
          if grid.Cell[x,i].AsString <> '' then
          begin
            if grid.Cell[x,i].AsString = lb_mesa.caption then
            begin
              bparar := true;
              break;
            end;
          end
          else
          begin
            bparar := true;
            grid.cell[x,i].asstring := lb_mesa.caption;
            break;
          end;
        end;
        if bparar then break;
      end;
    end;
    pn_consumo.Enabled := true;
    pn_mesa.Enabled := true;
    ed_produto_codigo.setfocus;
  end
  else
  begin
    lb_funci.caption := '';
    lb_mesa.caption := '';
    lb_data.Caption := '';
    lb_hora.caption := '';
    ed_total_comanda.value := 0;
  end;

end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.bt_mesa_001Click(Sender: TObject);
begin
  desmarca;
//  TAdvGlowButton(sender).Appearance.ColorCheckedTo := $0078C7FE;
//  TAdvGlowButton(sender).Appearance.ColorChecked := $00B5DBFB;
//  TAdvGlowButton(sender).Appearance.ColorMirrorChecked := $009FEBFD;
//  TAdvGlowButton(sender).Appearance.ColorMirrorCheckedTo := $0056B4FE;
  TAdvGlowButton(sender).Picture := imgVerm.picture;
  TAdvGlowButton(sender).Refresh;

  lb_funci.caption := '';
  lb_mesa.caption := '';
  lb_data.Caption := '';
  lb_hora.caption := '';
  ed_total_comanda.value := 0;


  // verificar se a mesa j· estah aberta
  query.close;
  query.sql.clear;
  query.sql.add('select * from r000001');
  query.sql.add('where codigo = '+inttostr(strtoint(TAdvGlowButton(sender).Caption)));
  query.open;
  if query.RecordCount > 0 then
  begin
    lb_mesa.caption := TAdvGlowButton(sender).Caption;
    lb_data.Caption := query.fieldbyname('data').asstring;
    lb_hora.caption := query.fieldbyname('hora').asstring;

    qrapoio.close;
    qrapoio.sql.clear;
    qrapoio.sql.add('select nome from c000008 where codigo = '''+query.fieldbyname('cod_funcionario').asstring+'''');
    qrapoio.open;

    lb_funci.Caption := qrapoio.fieldbyname('nome').asstring;

    qrconsumo.close;
    qrconsumo.sql.clear;
    qrconsumo.sql.add('select sum(total) as soma from r000002');
    qrconsumo.sql.add('where cod_mesa = '+inttostr(strtoint(TAdvGlowButton(sender).Caption)));
    qrconsumo.sql.add('and cancelado = 0');
    qrconsumo.open;
    ed_total_comanda.value := qrconsumo.fieldbyname('soma').asfloat;
  end
  else
  begin

    bContinua_mesa := false;
    sFunci := '';
    snome_funci := '';
    frmmesa_abertura := tfrmmesa_abertura.create(self);
    frmmesa_abertura.lb_mesa.Caption := TAdvGlowButton(sender).Caption;
    frmmesa_abertura.showmodal;

    if bContinua_mesa then
    begin
     // lancar a data e hora
      lb_funci.caption := snome_funci;
      lb_mesa.caption := TAdvGlowButton(sender).Caption;
      lb_data.Caption := DateToStr(date);
      lb_hora.caption := TimeToStr(time);
      ed_total_comanda.value := 0;
      frmmodulo.st_Mesa_Abertura.close;
      frmmodulo.st_Mesa_Abertura.ParamByName('codigo').asinteger := strtoint(TAdvGlowButton(sender).Caption);
      frmmodulo.st_Mesa_Abertura.parambyname('data').asdatetime := date;
      frmmodulo.st_Mesa_Abertura.parambyname('hora').asstring := timetostr(time);
      frmmodulo.st_mesa_abertura.parambyname('cod_funcionario').asstring := sFunci;
      frmmodulo.st_Mesa_Abertura.Prepare;
      frmmodulo.st_Mesa_Abertura.Execute;
    end
    else
    begin
      desmarca;
//      TAdvGlowButton(sender).Down := false;
      TAdvGlowButton(sender).Picture := imgVerde.Picture;
      exit;
    end;
  end;

  TAdvGlowButton(sender).Down := true;
  ed_produto_codigo.Text := '';
  ed_produto_nome.text := '';
  ed_qtde.value := 0;
  ed_unitario.value := 0;
  ed_total.value := 0;
  ed_unidade.text := '';
  pn_consumo.Enabled := true;
  pn_mesa.Enabled := true;


  ed_produto_codigo.setfocus;
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.pg_principalChange(Sender: TObject);
begin
  desmarca;
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.FormShow(Sender: TObject);
var i, x : Integer;
bparar : boolean;
  Registro: TRegistry;
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
         (************** BANCO DE DADOS *************)
         if Registro.OpenKey('Dados',false) then
         begin
            // criando o forumulario de dados
            frmModulo := TfrmModulo.create(self);
            try

                  frmModulo.Conexao.Connected := false;
                  frmModulo.Conexao.Server := Registro.ReadString('Servidor_Host');
                  frmModulo.Conexao.Database := Registro.ReadString('Servidor_Base');
                  frmModulo.Conexao.Connected := true;
            except
               application.messagebox(pansichar('N„o foi possÌvel conectar ao banco de dados!'+#13+
                                                'Caminho: '+Registro.ReadString('Local_Base')+#13+
                                                ' O sistema ser· finalizado!'),'Erro',mb_ok+mb_iconerror);
             Application.Terminate;
               exit;
            end;


         end
         else
         begin
             application.messagebox('Houve falha na leitura do resgistro do banco de dados!'+
             ' O sistema ser· finalizado!','Erro',mb_ok+mb_iconerror);
             Application.Terminate;
             exit;
         end;
         Registro.CloseKey;
         Registro.OpenKey('SOFTWARE',false);
         Registro.OpenKey('DataPDV',false);
         Registro.OpenKey('PDV',false);
         (*************** BALANCA ******************)
         if Registro.OpenKey('Balanca',false) then
         begin
           frmModulo.Balanca.Desativar;
           frmModulo.Balanca.Ativo := false;
           // Modelos --> 0 --> Nenhum , 1 --> Filizola, 2 --> Toledo
           IF strtoint(Registro.ReadString('Modelo')) <> 0 THEN
           BEGIN

             frmmodulo.balanca.Modelo  := TACBrBALModelo( strtoint(Registro.ReadString('Modelo')) );
             frmmodulo.balanca.Device.HandShake :=
               TACBrHandShake( strtoint(Registro.ReadString('Handshaking')) );
             frmmodulo.balanca.Device.Parity :=
               TACBrSerialParity( strtoint(Registro.ReadString('Parity')) );
             frmmodulo.balanca.Device.Stop :=
               TACBrSerialStop( strtoint(Registro.ReadString('Stopbits')) );
             frmmodulo.balanca.Device.Porta := Registro.ReadString('Porta');
             frmmodulo.balanca.Device.Data := strtoint(Registro.ReadString('Databits'));
             frmmodulo.balanca.Device.Baud :=  strtoint(Registro.ReadString('Baudrate'));
             ibal_time := strtoint(Registro.ReadString('Timeout'));


           END;
         end
         else
         begin
           application.messagebox('Houve falha na leitura do resgistro da BalanÁa!'+
           ' Favor contactar o suporte!','Erro',mb_ok+mb_iconerror);
         end;
         Registro.CloseKey;
         (************* Final balanca ************)
       end
       else
       begin
          application.messagebox('Houve falha na leitura do resgistro do PDV!'+
          ' Favor contactar o suporte!','Erro',mb_ok+mb_iconerror);
       end;

     end
     else
     begin
       application.messagebox('Houve falha na leitura do registro de configuraÁıes!'+
       ' Favor contactar o suporte!','Erro',mb_ok+mb_iconerror);
       application.Terminate;
     end;
  end
  else
  begin
    application.messagebox('Houve falha na leitura do registro de configuraÁıes!'+
    ' Favor contactar o suporte!','Erro',mb_ok+mb_iconerror);
    application.Terminate;
  end;

  caption := caption +'   Servidor: '+frmModulo.Conexao.Server;


  grid.ClearRows;
  grid.AddRow(10);

  for i := 0 to ComponentCount - 1 do
  if (Components[i] is TAdvGlowButton) then
  begin
      TAdvGlowButton(Components[i]).Down := false;
  end;

  // limpar o buffer de mesas jah encerradas
  query.close;
  query.sql.clear;
  query.sql.add('delete from r000003');
  query.execsql;



  // lancando as mesas em aberto
  query.close;
  query.sql.clear;
  query.sql.add('select * from r000001');
  query.sql.add('order by codigo');
  query.open;
  query.first;

  while not query.eof do
  begin
    if query.fieldbyname('codigo').asinteger < 117 then
    begin
      for i := 0 to ComponentCount - 1 do
      if (Components[i] is TAdvGlowButton) then
      begin
        if TAdvGlowButton(Components[i]).Tag = query.fieldbyname('codigo').asinteger then
        begin
//          TAdvGlowButton(Components[i]).Down := true;
          TAdvGlowButton(Components[i]).Picture := imgVerm.Picture;
        end;
      end;
    end
    else
    begin
      bparar := false;
      for i := 0 to 9 do
      begin
        for x := 0 to 12 do
        begin
          if grid.Cell[x,i].AsString ='' then
          begin
            grid.cell[x,i].asstring := query.fieldbyname('codigo').asstring;
            bparar := true;
            break;
          end;
        end;
        if bparar then break;
      end;
    end;
    query.next;
  END;


//  timer_mesa.Enabled := true;
  timer_mesa_aberta.Enabled := true;

end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.gridCellClick(Sender: TObject; ACol,
  ARow: Integer);
begin
  desmarca;


  if grid.cell[acol,arow].asstring <> '' then
  begin
    lb_mesa.caption := grid.cell[acol,arow].asstring;
    // verificar se a mesa j· estah aberta
    query.close;
    query.sql.clear;
    query.sql.add('select * from r000001');
    query.sql.add('where codigo = '+inttostr(strtoint(grid.cell[acol,arow].asstring)));
    query.open;
    if query.RecordCount > 0 then
    begin
      lb_data.Caption := query.fieldbyname('data').asstring;
      lb_hora.caption := query.fieldbyname('hora').asstring;

      qrconsumo.close;
      qrconsumo.sql.clear;
      qrconsumo.sql.add('select sum(total) as soma from r000002');
      qrconsumo.sql.add('where cod_mesa = '+inttostr(strtoint(grid.cell[acol,arow].asstring)));
      qrconsumo.sql.add('and cancelado = 0');
      qrconsumo.open;
      ed_total_comanda.value := qrconsumo.fieldbyname('soma').asfloat;
      ed_produto_codigo.Text := '';
      pn_consumo.Enabled := true;
      pn_mesa.Enabled := true;
      ed_produto_codigo.setfocus;
    END;
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.bt_consumoClick(Sender: TObject);
var i : integer;
begin
  timer_mesa_aberta.Enabled := false;


  qrConsumo.close;
  qrconsumo.sql.clear;
  qrconsumo.sql.add('select R000002.*, C000025.produto, C000025.unidade');
  qrconsumo.sql.add('from r000002, c000025');
  qrconsumo.sql.add('where r000002.cod_produto = c000025.codigo');
  qrconsumo.sql.add('and R000002.cod_mesa = '+IntToStr(strtoint(lb_mesa.Caption)));
  qrconsumo.SQL.add('order by codigo');
  qrconsumo.open;
  qrconsumo.first;


  frmMesa_consumo := tfrmMesa_consumo.create(self);
  frmMesa_consumo.grid_consumo.ClearRows;
  while not qrconsumo.Eof do
  begin
    i := frmMesa_consumo.grid_consumo.AddRow(1);
    frmMesa_consumo.grid_consumo.Cell[0,i].asinteger := qrconsumo.fieldbyname('codigo').asinteger;
    frmMesa_consumo.grid_consumo.Cell[2,i].asstring := qrconsumo.fieldbyname('cod_produto').asstring;
    frmMesa_consumo.grid_consumo.Cell[3,i].asstring := qrconsumo.fieldbyname('produto').asstring;
    frmMesa_consumo.grid_consumo.Cell[4,i].asfloat := qrconsumo.fieldbyname('qtde').asfloat;
    frmMesa_consumo.grid_consumo.Cell[5,i].asfloat := qrconsumo.fieldbyname('unitario').asfloat;
    frmMesa_consumo.grid_consumo.Cell[6,i].asfloat := qrconsumo.fieldbyname('total').asfloat;
    frmMesa_consumo.grid_consumo.Cell[7,i].asstring := qrconsumo.fieldbyname('complemento').asstring;
    frmMesa_consumo.grid_consumo.Cell[8,i].asinteger := qrconsumo.fieldbyname('cancelado').asinteger;
    qrconsumo.Next;
  end;

  frmMesa_consumo.lb_mesa.Caption := lb_mesa.caption;
  frmMesa_consumo.lb_data.Caption := lb_data.caption;
  frmMesa_consumo.lb_hora.Caption := lb_hora.caption;
  frmMesa_consumo.ed_total_comanda.value :=   ed_total_comanda.value;

  frmMesa_consumo.showmodal;

  timer_mesa_aberta.Enabled := true;
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.ed_produto_codigoKeyPress(Sender: TObject; var Key: Char);
var
  iloc : integer;
  i : integer;
  s : string;

begin
  if key = #13 then
  begin
    if ed_produto_codigo.text <> '' then
    begin
      iloc := 1;
      // localizar por codigo
      s := ed_produto_codigo.text;

      while length(s) < 6 do s := '0'+s;
      query.close;
      query.sql.clear;
      query.sql.add('select * from c000025 where codigo = '''+s+'''');
      query.Open;
      if query.recordcount = 0 then
      begin
        // codigo de barras
        query.close;
        query.sql.clear;
        query.sql.add('select * from c000025 where codbarra = '''+ed_produto_codigo.text+'''');
        query.Open;
        if query.RecordCount = 0 then
        begin
          query.close;
          query.sql.clear;
          query.sql.add('select * from c000025 where upper(produto) like '''+
            ansiuppercase(ed_produto_codigo.text)+'%''');
          query.Open;
          if query.RecordCount > 1 then iloc := 0;
        end
        else
          iloc := 2;
      end;

      if query.recordcount = 0 then
      begin
        application.messagebox('Produto n„o encontrado!','Erro',mb_ok+mb_iconerror);
        exit;
      end
      else
      begin
        if query.RecordCount = 1 then
        begin
          ed_produto_codigo.text := query.fieldbyname('codigo').asstring;
          ed_produto_nome.Text := query.fieldbyname('produto').asstring;
          ed_qtde.Value := 1;
          ed_unitario.value := query.fieldbyname('precovenda').asfloat;
          ed_total.value := query.fieldbyname('precovenda').asfloat;
          ed_unidade.text := query.fieldbyname('unidade').asstring;
          gp_qtde.Enabled := true;
          bt_gravar_consumo.Enabled := true;
          ed_qtde.setfocus;

        end
        else
        begin
          // localizar
          resultado_pesquisa := '';
          frmLoc_produto := tfrmLoc_produto.Create(self);
          frmLoc_produto.cb_loc.ItemIndex := iloc;
          frmLoc_produto.grid.ClearRows;
          query.first;
          while not query.eof do
          begin
            i := frmLoc_produto.grid.AddRow(1);
            frmLoc_produto.grid.Cell[0,i].asstring := query.fieldbyname('codigo').asstring;
            frmLoc_produto.grid.cell[1,i].asstring := query.fieldbyname('codbarra').asstring;
            frmLoc_produto.grid.cell[2,i].asstring := query.fieldbyname('produto').asstring;
            frmLoc_produto.grid.cell[3,i].asstring := query.fieldbyname('unidade').asstring;
            frmLoc_produto.grid.cell[4,i].asfloat := query.fieldbyname('precovenda').asfloat;
            query.next;
          end;
          frmLoc_produto.ShowModal;

          if resultado_pesquisa <> '' then
          begin
            ed_produto_codigo.text := resultado_pesquisa;
            query.close;
            query.sql.clear;
            query.sql.add('select * from c000025 where codigo = '''+ed_produto_codigo.text+'''');
            query.Open;
            ed_produto_nome.Text := query.fieldbyname('produto').asstring;
            ed_qtde.Value := 1;
            ed_unitario.value := query.fieldbyname('precovenda').asfloat;
            ed_total.value := query.fieldbyname('precovenda').asfloat;
            ed_unidade.text := query.fieldbyname('unidade').asstring;
            gp_qtde.Enabled := true;
            bt_gravar_consumo.Enabled := true;
            ed_qtde.setfocus;
          end;
        end;
      end;
    end
    else
    begin
      // localizar
      resultado_pesquisa := '';
      frmLoc_produto := tfrmLoc_produto.Create(self);
      frmLoc_produto.grid.ClearRows;
      frmLoc_produto.ShowModal;
    end;
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.ed_qtdeKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    bt_gravar_consumo.SetFocus;
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.ed_qtdeExit(Sender: TObject);
begin
  BT_BALANCA.Enabled := FALSE;

  ed_total.value :=
  ed_qtde.value *
  ed_unitario.value;
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.bt_gravar_consumoClick(Sender: TObject);
begin

  if ed_produto_codigo.Text = '' then exit;
  if ed_qtde.Value <= 0 then exit;


  // lancar no banco de dados

  frmmodulo.st_consumo.Close;
  frmmodulo.st_consumo.ParamByName('cod_mesa').asinteger := StrToInt(lb_mesa.Caption);
  frmmodulo.st_consumo.ParamByName('cod_produto').asstring := ed_produto_codigo.text;
  frmmodulo.st_consumo.ParamByName('qtde').asfloat := ed_qtde.value;
  frmmodulo.st_consumo.ParamByName('unitario').asfloat := ed_unitario.value;
  frmmodulo.st_consumo.ParamByName('total').asfloat := ed_total.value;
  frmmodulo.st_consumo.Prepare;
  frmmodulo.st_consumo.Execute;

  ed_total_comanda.value := ed_total_comanda.value + ed_total.value;


  if application.MessageBox('VocÍ deseja imprimir esse produto para cozinha ?','Pergunta',mb_YesNo+mb_IconInformation)=ID_YES then
  begin
    frmprincipal.tpbobinaclick(self);
  end;

  ed_produto_codigo.text := '';
  ed_produto_nome.text := '';
  ed_qtde.value := 0;
  ed_unitario.value := 0;
  ed_total.value := 0;

  gp_qtde.Enabled := False;
  bt_gravar_consumo.Enabled := false;
  ed_produto_codigo.setfocus;
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.Mess1Click(Sender: TObject);
begin
  pg_principal.ActivePageIndex := 0;
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.Consumo1Click(Sender: TObject);
begin
  if bt_consumo.Enabled then bt_consumoClick(frmprincipal);
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.bt_balancaClick(Sender: TObject);
begin
  frmBalanca := tfrmBalanca.create(self);
  frmBalanca.showmodal;

  ed_qtdeExit(FRMPRINCIPAL);

  bt_gravar_consumo.SetFocus;

end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.Balana1Click(Sender: TObject);
begin
  if bt_balanca.Enabled then bt_balancaClick(frmprincipal);
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  frmModulo.Destroy;
  action := cafree;
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.bt_cancelarClick(Sender: TObject);
begin


  qrConsumo.close;
  qrconsumo.sql.clear;
  qrconsumo.sql.add('select R000002.*, C000025.produto, C000025.unidade');
  qrconsumo.sql.add('from r000002, c000025');
  qrconsumo.sql.add('where r000002.cod_produto = c000025.codigo');
  qrconsumo.sql.add('and R000002.cod_mesa = '+IntToStr(strtoint(lb_mesa.Caption)));
  qrconsumo.SQL.add('order by codigo');
  qrconsumo.open;
  qrconsumo.first;

  if qrConsumo.RecordCount > 0 then
  begin
    application.messagebox('Esta mesa possue consumo!'+#13+
                           'FaÁa o cancelamento dos itens e posteriormente emita o seu cupom fiscal!',
                           'AtenÁ„o',mb_ok+mb_iconerror);
    exit;
  end;

  if application.messagebox('Confirma o cancelamento desta mesa?','AtenÁ„o',mb_yesno+mb_iconwarning) =
     idYes then
  begin
    query.close;
    query.sql.clear;
    query.sql.add('delete from r000001 where codigo = '+IntToStr(strtoint(lb_mesa.Caption)));
    query.ExecSQL;
    desmarca;

    frmPrincipal.FormShow(frmprincipal);
  end;

end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.ed_produto_codigoEnter(Sender: TObject);
begin
  BT_BALANCA.Enabled := FALSE;
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.ed_qtdeEnter(Sender: TObject);
begin
  BT_BALANCA.Enabled := TRUE;
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.timer_mesa_abertaTimer(Sender: TObject);
var
  i, x: integer;
  bparar: boolean;

begin
  grid.ClearRows;
  grid.ClearRows;
  grid.AddRow(10);

  timer_mesa_aberta.Enabled := false;

  // lancando as mesas em aberto
  qrMesa_Aberta.close;
  qrMesa_Aberta.sql.clear;
  qrMesa_Aberta.sql.add('select * from r000001');
  qrMesa_Aberta.sql.add('order by codigo');
  qrMesa_Aberta.open;
  qrMesa_Aberta.first;

  for i := 0 to ComponentCount - 1 do
  if (Components[i] is TAdvGlowButton) then
  begin
//      TAdvGlowButton(Components[i]).Down := false;
        if TAdvGlowButton(Components[i]).Tag <> 99 then
        TAdvGlowButton(Components[i]).Picture := imgVerde.Picture;
  end;

  while not qrMesa_Aberta.eof do
  begin
    if qrMesa_Aberta.fieldbyname('codigo').asinteger < 117 then
    begin
      for i := 0 to ComponentCount - 1 do
      if (Components[i] is TAdvGlowButton) then
      begin
        if TAdvGlowButton(Components[i]).Tag = qrMesa_Aberta.fieldbyname('codigo').asinteger then
        begin
//          TAdvGlowButton(Components[i]).Down := true;
        if TAdvGlowButton(Components[i]).Tag <> 99 then
          TAdvGlowButton(Components[i]).Picture := imgVerm.Picture;
        end;
      end;
    end
    else
    begin
      bparar := false;

      for i := 0 to 9 do
      begin
        for x := 0 to 12 do
        begin
          if grid.Cell[x,i].AsString = '' then
          begin
            grid.cell[x,i].asstring := qrMesa_Aberta.fieldbyname('codigo').asstring;
            bparar := true;
            break;
          end;
        end;
        if bparar then break;
      end;
    end;

    qrMesa_Aberta.next;
  end;

  timer_mesa_aberta.Enabled := true;

end;


procedure Tfrmprincipal.TPBobinaClick(Sender: TObject);
VAR arquivo : textfile;
    subir_papel, vias : integer;
    porta_impressora:string;
begin
// NORMAL               --> #18+#27#72+#20
// NORMAL NEGRITO       --> #18+#27#71+#20
// FONTE GRANDE         --> #27#72+#14
// FONTE GRANDE NEGRITO --> #27#71+#14
// CONDENSADO           --> #15+#27#72+#20
// CONDENSADO NEGRITO   --> #15+#27#71+#20



  frmmodulo.qrconfig.Open;

  subir_papel     := frmmodulo.qrconfig.fieldbyname('bobina_subirpapel').asinteger;
  porta_impressora:= frmmodulo.qrconfig.fieldbyname('venda_porta_impressora').asString;
  VIAS := 1;

   WHILE VIAS <> 0 DO
   BEGIN



       assignfile(arquivo,porta_impressora); //porta_impressora);

       rewrite(arquivo);
       writeln(arquivo,#15+#27#72+#20,'-----------------------------------------');
       writeln(arquivo,#18+#27#71+#20,'Atend:'+frmprincipal.Texto_Justifica(lb_funci.caption,40,' ','D'));
       writeln(arquivo,#15+#27#72+#20,'-----------------------------------------');
       writeln(arquivo,#18+#27#71+#20,frmprincipal.Texto_Justifica(' PEDIDO DE MESA',25,' ','C'));
       writeln(arquivo,#15+#27#72+#20,'-----------------------------------------');
       writeln(arquivo,#15+#27#72+#20,frmprincipal.Texto_Justifica('MESA No: '+LB_MESA.CAPTION+'   Data/Hora:'+DateTimeToStr(Now()),40,' ','C'));
       writeln(arquivo,#15+#27#72+#20,'-----------------------------------------');
       writeln(arquivo,#15+#27#72+#20,'PRODUTO                              QTDE');
       writeln(arquivo,#15+#27#72+#20,'-----------------------------------------');

       writeln(arquivo,#15+#27#72+#20,frmprincipal.Texto_Justifica(Ed_Produto_nome.Text,30,' ','D') + '       ' + formatfloat('###,###,##0.00',ed_qtde.value));
       Writeln(arquivo,#15+#27#72+#20,'');
       Writeln(arquivo,#15+#27#72+#20,'');
       Writeln(arquivo,#15+#27#72+#20,'');
       Writeln(arquivo,#15+#27#72+#20,'  ------------------------------------       ');
       WRiteln(arquivo,#15+#27#72+#20,'             Assinatura');

       while subir_papel <> 0 do
       begin
         Writeln(arquivo,#15+#27#72+#20,'');
         subir_papel := subir_papel - 1;
       end;

       VIAS := VIAS -1;

   END;
   frmmodulo.qrconfig.close;
   closefile(arquivo);
end;

end.
