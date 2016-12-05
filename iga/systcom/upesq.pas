unit upesq;

interface

uses
  Windows,  Messages,   SysUtils,    Classes,   Graphics,    Controls,     Forms,
  Dialogs,   Db,   DBTables,   StdCtrls,   Buttons,   ExtCtrls,   DBCtrls,   Mask,
  ComCtrls,  Grids,    DBGrids,   SqlExpr,   ImgList,   ExtDlgs,    jpeg,    clipbrd,
  dbiprocs,   shellapi, EditNum;



type
  Tfrmpesq = class(TForm)
    pnlsuperior: TPanel;
    pnlcentral: TPanel;
    pnlinferior: TPanel;
    pnlfiltrar: TPanel;
    pnlficha: TPanel;
    Label4: TLabel;
    cbxordpor: TComboBox;
    Label3: TLabel;
    edilocalizar: TEdit;
    pctdados: TPageControl;
    tbslista: TTabSheet;
    tbsficha: TTabSheet;
    dbgfuncionarios: TDBGrid;
    Label2: TLabel;
    Label5: TLabel;
    Label1: TLabel;
    cbxcampo: TComboBox;
    cbxoperador: TComboBox;
    ediinformacao: TEdit;
    cbxinformacao: TComboBox;
    DtpData: TDateTimePicker;
    Panel1: TPanel;
    stgfiltro: TStringGrid;
    btnmais: TBitBtn;
    btnmenos: TBitBtn;
    btnfiltrar: TBitBtn;
    btnlimpar: TBitBtn;
    pnlbotaoficha: TPanel;
    pnlsalvarerq: TPanel;
    cbxop: TComboBox;
    Label6: TLabel;
    Panel2: TPanel;
    bvlfoto: TBevel;
    imgFoto: TImage;
    spdinsfoto: TSpeedButton;
    spdapafoto: TSpeedButton;
    opdabrirfig: TOpenPictureDialog;
    scbfuncionarios: TScrollBox;
    Label8: TLabel;
    Label7: TLabel;
    edicpf: TEdit;
    lblcodigo: TLabel;
    Label11: TLabel;
    edirg: TEdit;
    Label12: TLabel;
    EDINOME: TEdit;
    Label13: TLabel;
    ediendereco: TEdit;
    Label14: TLabel;
    EDINRO: TEdit;
    Label15: TLabel;
    edicompl: TEdit;
    Label16: TLabel;
    EDIESTADO: TComboBox;
    Label17: TLabel;
    Label18: TLabel;
    EDICIDADE: TComboBox;
    Label19: TLabel;
    editelefones: TEdit;
    Label20: TLabel;
    edicontato: TEdit;
    Label21: TLabel;
    ediemail: TEdit;
    Label22: TLabel;
    edidataadm: TMaskEdit;
    Label23: TLabel;
    edidatanasc: TMaskEdit;
    Label24: TLabel;
    edisalario: TEdit;
    Label25: TLabel;
    edicp: TEdit;
    Label26: TLabel;
    edicargo: TComboBox;
    Label27: TLabel;
    ediprofissao: TComboBox;
    ckbativo: TCheckBox;
    Label28: TLabel;
    edipcom: TEdit;
    pnlaltesq: TPanel;
    ImageList1: TImageList;
    btnfechar: TBitBtn;
    edivalor: TEdit;
    edicep: TMaskEdit;
    BitBtn7: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn3: TBitBtn;
    Label10: TLabel;
    Panel3: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Image1: TImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnfecharClick(Sender: TObject);
    procedure dbgfuncionariosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure concatenarfiltro;
    procedure ediinformacaoKeyPress(Sender: TObject; var Key: Char);
    procedure cbxcampoClick(Sender: TObject);
    procedure btnmaisClick(Sender: TObject);
    procedure apagastgfiltro;
    procedure btnmenosClick(Sender: TObject);
    function localizastgfiltro(sInf:string):boolean;
    procedure btnlimparClick(Sender: TObject);
    procedure btnfiltrarClick(Sender: TObject);
    procedure cbxopKeyPress(Sender: TObject; var Key: Char);
    procedure cbxopKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbxcampoKeyPress(Sender: TObject; var Key: Char);
    procedure cbxoperadorKeyPress(Sender: TObject; var Key: Char);
    procedure cbxordporKeyPress(Sender: TObject; var Key: Char);
    procedure cbxinformacaoKeyPress(Sender: TObject; var Key: Char);
    procedure cbxcampoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbxoperadorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbxordporKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbxinformacaoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure limparstgtotal;
    procedure limparcampofiltro;
    procedure filtrar;
    procedure apagatodostgfiltro;
    procedure spdinsfotoClick(Sender: TObject);
    procedure mostrararq_ext;
    procedure FormCreate(Sender: TObject);
    procedure edisalarioKeyPress(Sender: TObject; var Key: Char);
    procedure edipcomKeyPress(Sender: TObject; var Key: Char);
    procedure limpardados;
    procedure edivalorKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn7Click(Sender: TObject);
    procedure mostrardados;
    procedure tbsfichaShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure atualizardados;
    procedure inserirdados;
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure tbslistaShow(Sender: TObject);
    procedure edicpfKeyPress(Sender: TObject; var Key: Char);
    procedure DtpDataKeyPress(Sender: TObject; var Key: Char);
    procedure edilocalizarKeyPress(Sender: TObject; var Key: Char);
    procedure spdapafotoClick(Sender: TObject);
    procedure edilocalizarChange(Sender: TObject);
    procedure cbxordporChange(Sender: TObject);

  private
    { Private declarations }
    sTitCompo : String;
    iContLin : Integer;
    sOpcao:string;
    sclassificar:string;
    
  public
    { Public declarations }
     sTitRel:string;

  end;

var
  frmpesq: Tfrmpesq;

implementation

uses udados, ugeral, usige;

{$R *.dfm}

procedure Tfrmpesq.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmsige.pnlcentral.Visible := true;
  Action:=caFree;
  frmPesq:=nil;
  form_ativo := '';


end;

procedure Tfrmpesq.FormShow(Sender: TObject);
begin


iContLin := 1;



tabela := 'Funcionarios';



dbgfuncionarios.Align :=  alclient;
//btnfechar.Left := pnlsuperior.Width - btnfechar.Width + 135;
//btnexibir.Left := pnlsuperior.Width - btnexibir.Width + 50;



stgfiltro.ColCount := 4;
stgfiltro.RowCount := 1;

stgfiltro.ColWidths[0]:=20;
stgfiltro.ColWidths[1]:=0;
stgfiltro.ColWidths[2]:=250;
stgfiltro.ColWidths[3]:=0;


cbxop.Enabled := false;
cbxop.ItemIndex := 0;


cbxoperador.Items.Clear;
cbxoperador.Items.Add('IGUAL');
cbxoperador.Items.Add('DIFERENTE DE');
cbxoperador.Items.Add('MENOR OU IGUAL');
cbxoperador.Items.Add('MAIOR OU IGUAL');
cbxoperador.Items.Add('MENOR');
cbxoperador.Items.Add('MAIOR');
cbxoperador.Items.Add('QUALQUER PARTE');
cbxoperador.ItemIndex := 0;

cbxcampo.Items.Clear;
//0 codigo
cbxcampo.Items.Add(' 1) CÓDIGO');
//1 nome
cbxcampo.Items.Add(' 2) NOME');
//2 endereco
cbxcampo.Items.Add(' 3) ENDEREÇO');
//3 complement
cbxcampo.Items.Add(' 4) COMPLEMENTO');
//4 bairro
cbxcampo.Items.Add(' 5) BAIRRO');
//5 cidade
cbxcampo.Items.Add(' 6) CIDADE');
//6 estado
cbxcampo.Items.Add(' 7) ESTADO');
//7 cep
cbxcampo.Items.Add(' 8) CEP');
//8 fone
cbxcampo.Items.Add(' 9) FONE');
//9 telefones
cbxcampo.Items.Add('10) OUTROS FONES');
//10 contato
cbxcampo.Items.Add('11) CONTATO');
//11 email
cbxcampo.Items.Add('12) EMAIL');
//12 cargo
cbxcampo.Items.Add('13) CARGO');
//13 profissao
cbxcampo.Items.Add('14) PROFISSÃO');
//14 cp
cbxcampo.Items.Add('15) CART. PROF.');
//15 cnpj
cbxcampo.Items.Add('16) CPF');
//16 ie
cbxcampo.Items.Add('17) RG');


//17 datanasc
cbxcampo.Items.Add('18) DATA NASC.');
//18 dataadm
cbxcampo.Items.Add('19) DATA ADM.');


//19 salario
cbxcampo.Items.Add('20) SALÁRIO');
//20 pcom
cbxcampo.Items.Add('21) COMISSÃO');


//21
cbxcampo.Items.Add('22) ATIVO');


//22
cbxcampo.Items.Add('23) MÊS ANIV.');


cbxcampo.ItemIndex := 0;


dbgfuncionarios.DataSource := frmdados.dst_funcionarios;
dbgfuncionarios.Columns[0].FieldName := 'nome';
dbgfuncionarios.Columns[1].FieldName := 'codigo';

dbgfuncionarios.Columns[0].Title.caption := 'NOME';
dbgfuncionarios.Columns[1].Title.caption := 'CÓDIGO';

cbxordpor.Items.Clear;
cbxordpor.Items.Add(' 1) '+dbgfuncionarios.Columns[0].Title.caption);
cbxordpor.Items.Add(' 2) '+dbgfuncionarios.Columns[1].Title.caption);
cbxordpor.ItemIndex := 0;

limparcampofiltro;

dtpdata.Visible := false;
cbxinformacao.Visible := false;
edivalor.Visible := false;

cbxinformacao.Left := ediinformacao.Left;
dtpdata.Left := ediinformacao.Left;
edivalor.Left := ediinformacao.Left;

cbxinformacao.top := ediinformacao.top;
dtpdata.top := ediinformacao.top;
edivalor.top := ediinformacao.top;


btnlimpar.Click;



end;

procedure Tfrmpesq.btnfecharClick(Sender: TObject);
begin
close;
end;

procedure Tfrmpesq.dbgfuncionariosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if ((shift=[ssCtrl]) and (key = vk_delete)) then
   SysUtils.Abort;
//endi

end;

procedure tfrmpesq.concatenarfiltro;
Var
  sOperador, sCompo, sData, sValor:string;
begin
  // para não esquecer como montar like> 6:sOperador :='LIKE '+QUOTEDSTR('%'+EDInformacao.Text+'%');


  sCompo := '';
  sTitCompo := '';

  Case cbxoperador.ItemIndex of
    0:sOperador := '=';
    1:sOperador := '<>';
    2:sOperador := '<=';
    3:sOperador := '>=';
    4:sOperador := '<';
    5:sOperador := '>';
    6:sOperador := ' LIKE ';
  else
    exit;
  end;


  Case cbxcampo.ItemIndex of
    0:begin
       if ediinformacao.Text <> '' then
          begin
            if cbxoperador.ItemIndex = 6 then
               begin
                 sCompo := 'codigo'+sOperador+quotedstr('%'+ediinformacao.Text+'%');
               end
            else
               begin
                 sCompo := 'codigo'+sOperador+ediinformacao.Text;
               end;
            //endi
            sTitCompo := copy(cbxcampo.Text,5,length(cbxcampo.Text))+' '+cbxoperador.Text+' '+ediinformacao.Text;
          end
       else
          begin
            exit;
          end;
       //endi
      end;
    1:begin
       if ediinformacao.Text <> '' then
          begin
            if cbxoperador.ItemIndex = 6 then
               begin
                 sCompo := 'nome'+sOperador+quotedstr('%'+ediinformacao.Text+'%')
               end
            else
               begin
                 sCompo := 'nome'+sOperador+quotedstr(ediinformacao.Text);
               end;
            //endi
            sTitCompo := copy(cbxcampo.Text,5,length(cbxcampo.Text))+' '+cbxoperador.Text+' '+ediinformacao.Text;
          end
       else
          begin
            exit;
          end;
       //endi
      end;
    2:begin
       if ediinformacao.Text <> '' then
          begin
            if cbxoperador.ItemIndex = 6 then
               begin
                 sCompo := 'endereco'+sOperador+quotedstr('%'+ediinformacao.Text+'%')
               end
            else
               begin
                 sCompo := 'endereco'+sOperador+quotedstr(ediinformacao.Text);
               end;
            //endi
            sTitCompo := copy(cbxcampo.Text,5,length(cbxcampo.Text))+' '+cbxoperador.Text+' '+ediinformacao.Text;
          end
       else
          begin
            exit;
          end;
       //endi
      end;
    3:begin
       if ediinformacao.Text <> '' then
          begin
            if cbxoperador.ItemIndex = 6 then
               begin
                 sCompo := 'complement'+sOperador+quotedstr('%'+ediinformacao.Text+'%')
               end
            else
               begin
                 sCompo := 'complement'+sOperador+quotedstr(ediinformacao.Text);
               end;
            //endi
            sTitCompo := copy(cbxcampo.Text,5,length(cbxcampo.Text))+' '+cbxoperador.Text+' '+ediinformacao.Text;
          end
       else
          begin
            exit;
          end;
       //endi
      end;
    4:begin
       if ediinformacao.Text <> '' then
          begin
            if cbxoperador.ItemIndex = 6 then
               begin
                 sCompo := 'bairro'+sOperador+quotedstr('%'+ediinformacao.Text+'%')
               end
            else
               begin
                 sCompo := 'bairro'+sOperador+quotedstr(ediinformacao.Text);
               end;
            //endi
            sTitCompo := copy(cbxcampo.Text,5,length(cbxcampo.Text))+' '+cbxoperador.Text+' '+ediinformacao.Text;
          end
       else
          begin
            exit;
          end;
       //endi
      end;
    5:begin
       if ediinformacao.Text <> '' then
          begin
            if cbxoperador.ItemIndex = 6 then
               begin
                 sCompo := 'cidade'+sOperador+quotedstr('%'+ediinformacao.Text+'%')
               end
            else
               begin
                 sCompo := 'cidade'+sOperador+quotedstr(ediinformacao.Text);
               end;
            //endi
            sTitCompo := copy(cbxcampo.Text,5,length(cbxcampo.Text))+' '+cbxoperador.Text+' '+ediinformacao.Text;
          end
       else
          begin
            exit;
          end;
       //endi
      end;
    6:begin
       if ediinformacao.Text <> '' then
          begin
            if cbxoperador.ItemIndex = 6 then
               begin
                 sCompo := 'estado'+sOperador+ Quotedstr( '%'+ediinformacao.Text+'%' )
               end
            else
               begin
                 sCompo := 'estado'+sOperador+ediinformacao.Text;
               end;
            //endi
            sTitCompo := copy(cbxcampo.Text,5,length(cbxcampo.Text))+' '+cbxoperador.Text+' '+ediinformacao.Text;
          end
       else
          begin
            exit;
          end;
       //endi
      end;
    7:begin
       if ediinformacao.Text <> '' then
          begin
            if cbxoperador.ItemIndex = 6 then
               begin
                 sCompo := 'cep'+sOperador+quotedstr('%'+ediinformacao.Text+'%')
               end
            else
               begin
                 sCompo := 'cep'+sOperador+quotedstr(ediinformacao.Text);
               end;
            //endi
            sTitCompo := copy(cbxcampo.Text,5,length(cbxcampo.Text))+' '+cbxoperador.Text+' '+ediinformacao.Text;
          end
       else
          begin
            exit;
          end;
       //endi
      end;
    8:begin
       if ediinformacao.Text <> '' then
          begin
            if cbxoperador.ItemIndex = 6 then
               begin
                 sCompo := 'fone'+sOperador+quotedstr('%'+ediinformacao.Text+'%')
               end
            else
               begin
                 sCompo := 'fone'+sOperador+quotedstr(ediinformacao.Text);
               end;
            //endi
            sTitCompo := copy(cbxcampo.Text,5,length(cbxcampo.Text))+' '+cbxoperador.Text+' '+ediinformacao.Text;
          end
       else
          begin
            exit;
          end;
       //endi
      end;
    9:begin
       if ediinformacao.Text <> '' then
          begin
            if cbxoperador.ItemIndex = 6 then
               begin
                 sCompo := 'telefones'+sOperador+quotedstr('%'+ediinformacao.Text+'%')
               end
            else
               begin
                 sCompo := 'telefones'+sOperador+quotedstr(ediinformacao.Text);
               end;
            //endi
            sTitCompo := copy(cbxcampo.Text,5,length(cbxcampo.Text))+' '+cbxoperador.Text+' '+ediinformacao.Text;
          end
       else
          begin
            exit;
          end;
       //endi
      end;
   10:begin
       if ediinformacao.Text <> '' then
          begin
            if cbxoperador.ItemIndex = 6 then
               begin
                 sCompo := 'contato'+sOperador+quotedstr('%'+ediinformacao.Text+'%')
               end
            else
               begin
                 sCompo := 'contato'+sOperador+quotedstr(ediinformacao.Text);
               end;
            //endi
            sTitCompo := copy(cbxcampo.Text,5,length(cbxcampo.Text))+' '+cbxoperador.Text+' '+ediinformacao.Text;
          end
       else
          begin
            exit;
          end;
       //endi
      end;
   11:begin
       if ediinformacao.Text <> '' then
          begin
            if cbxoperador.ItemIndex = 6 then
               begin
                 sCompo := 'email'+sOperador+quotedstr('%'+ediinformacao.Text+'%')
               end
            else
               begin
                 sCompo := 'email'+sOperador+quotedstr(ediinformacao.Text);
               end;
            //endi
            sTitCompo := copy(cbxcampo.Text,5,length(cbxcampo.Text))+' '+cbxoperador.Text+' '+ediinformacao.Text;
          end
       else
          begin
            exit;
          end;
       //endi
      end;
   12:begin
       if ediinformacao.Text <> '' then
          begin
            if cbxoperador.ItemIndex = 6 then
               begin
                 sCompo := 'cargo'+sOperador+quotedstr('%'+ediinformacao.Text+'%')
               end
            else
               begin
                 sCompo := 'cargo'+sOperador+quotedstr(ediinformacao.Text);
               end;
            //endi
            sTitCompo := copy(cbxcampo.Text,5,length(cbxcampo.Text))+' '+cbxoperador.Text+' '+ediinformacao.Text;
          end
       else
          begin
            exit;
          end;
       //endi
      end;
   13:begin
       if ediinformacao.Text <> '' then
          begin
            if cbxoperador.ItemIndex = 6 then
               begin
                 sCompo := 'profissao'+sOperador+quotedstr('%'+ediinformacao.Text+'%')
               end
            else
               begin
                 sCompo := 'profissao'+sOperador+quotedstr(ediinformacao.Text);
               end;
            //endi
            sTitCompo := copy(cbxcampo.Text,5,length(cbxcampo.Text))+' '+cbxoperador.Text+' '+ediinformacao.Text;
          end
       else
          begin
            exit;
          end;
       //endi
      end;
   14:begin
       if ediinformacao.Text <> '' then
          begin
            if cbxoperador.ItemIndex = 6 then
               begin
                 sCompo := 'CP'+sOperador+quotedstr('%'+ediinformacao.Text+'%')
               end
            else
               begin
                 sCompo := 'CP'+sOperador+quotedstr(ediinformacao.Text);
               end;
            //endi
            sTitCompo := copy(cbxcampo.Text,5,length(cbxcampo.Text))+' '+cbxoperador.Text+' '+ediinformacao.Text;
          end
       else
          begin
            exit;
          end;
       //endi
      end;
   15:begin
       if ediinformacao.Text <> '' then
          begin
            if cbxoperador.ItemIndex = 6 then
               begin
                 sCompo := 'CNPJ'+sOperador+quotedstr('%'+ediinformacao.Text+'%')
               end
            else
               begin
                 sCompo := 'CNPJ'+sOperador+quotedstr(ediinformacao.Text);
               end;
            //endi
            sTitCompo := copy(cbxcampo.Text,5,length(cbxcampo.Text))+' '+cbxoperador.Text+' '+ediinformacao.Text;
          end
       else
          begin
            exit;
          end;
       //endi
      end;
   16:begin
       if ediinformacao.Text <> '' then
          begin
            if cbxoperador.ItemIndex = 6 then
               begin
                 sCompo := 'IE'+sOperador+quotedstr('%'+ediinformacao.Text+'%')
               end
            else
               begin
                 sCompo := 'IE'+sOperador+quotedstr(ediinformacao.Text);
               end;
            //endi
            sTitCompo := copy(cbxcampo.Text,5,length(cbxcampo.Text))+' '+cbxoperador.Text+' '+ediinformacao.Text;
          end
       else
          begin
            exit;
          end;
       //endi
      end;
   17:begin
        sData := datetostr(dtpdata.Date);
        sData := bar_is_point( sData );
        sCompo := 'datanasc'+sOperador+quotedstr(sData);
        sTitCompo := copy(cbxcampo.Text,5,length(cbxcampo.Text))+' '+cbxoperador.Text+' '+datetostr(dtpdata.Date);
      end;
   18:begin
        sData := datetostr(dtpdata.Date);
        sData := bar_is_point( sData );
        sCompo := 'dataadm'+sOperador+quotedstr(sData);
        sTitCompo := copy(cbxcampo.Text,5,length(cbxcampo.Text))+' '+cbxoperador.Text+' '+datetostr(dtpdata.Date);
      end;
   19:begin
        sValor := tirapontos(edivalor.Text);
        sValor := decimal_is_point(sValor);
        sCompo := 'salario'+sOperador+sValor;
        sTitCompo := copy(cbxcampo.Text,5,length(cbxcampo.Text))+' '+cbxoperador.Text+' '+sValor;
      end;
   20:begin
        sValor := tirapontos(edivalor.Text);
        sValor := decimal_is_point(sValor);
        sCompo := 'comissao'+sOperador+sValor;
        sTitCompo := copy(cbxcampo.Text,5,length(cbxcampo.Text))+' '+cbxoperador.Text+' '+sValor;
      end;
   21:begin
        if cbxinformacao.Text = 'SIM' then
           sCompo := 'ativo'+sOperador+quotedstr('T')
        else if cbxinformacao.Text = 'NÃO' then
           sCompo := 'ativo'+sOperador+quotedstr('F');
        //endif   
        sTitCompo := copy(cbxcampo.Text,5,length(cbxcampo.Text))+' '+cbxoperador.Text+' '+cbxinformacao.Text;
      end;
   22:begin
        if ediinformacao.Text <> '' then
           begin
             //sCompo := '( extract ( month from datanasc) '+sOperador+quotedstr(ediinformacao.Text)+')';
             sCompo := '( extract ( month from datanasc) '+sOperador+ediinformacao.Text+')';
             sTitCompo := copy(cbxcampo.Text,5,length(cbxcampo.Text))+' '+cbxoperador.Text+' '+ediinformacao.Text;
           end
        else
           begin
             exit;
           end;
        //endi
      end;
  else
    exit;
  end;
 

  if (not localizastgfiltro(sCompo)) then
     begin

       //showmessage( sTitCompo );

       stgfiltro.Cells[2,stgfiltro.RowCount] := sTitCompo;
       stgfiltro.Cells[1,stgfiltro.RowCount] := sCompo;
       if cbxop.Enabled then
          begin
            stgfiltro.Cells[0,stgfiltro.RowCount] := cbxop.Text ;
            if cbxop.Text = 'E' then
               begin
                 stgfiltro.Cells[3,stgfiltro.RowCount] := 'and' ;
               end
            else
               begin
                 stgfiltro.Cells[3,stgfiltro.RowCount] := 'or' ;
               end;
            //endi
          end;
       //endi

       stgfiltro.RowCount   := stgfiltro.RowCount + 1;
       cbxop.Enabled := true;
       cbxop.ItemIndex := 0;

     end;
  //endi




end;

procedure Tfrmpesq.ediinformacaoKeyPress(Sender: TObject; var Key: Char);
begin

 if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif


if cbxcampo.ItemIndex = 0 then
  begin

    If not( key in['0'..'9',#8] ) then
      begin
        beep;
        key:=#0;
      end;
    //endi


  end;
//endi


if cbxcampo.ItemIndex = 22 then
  begin

    If not( key in['0'..'9',#8] ) then
      begin
        beep;
        key:=#0;
      end;
    //endi


  end;
//endi




end;

procedure Tfrmpesq.cbxcampoClick(Sender: TObject);
begin
Case cbxcampo.ItemIndex of
    0:begin
        ediinformacao.Visible := true;
        dtpdata.Visible := false;
        cbxinformacao.Visible := false;
        edivalor.Visible := false;
      end;
    1:begin
        ediinformacao.Visible := true;
        dtpdata.Visible := false;
        cbxinformacao.Visible := false;
        edivalor.Visible := false;
      end;
    2:begin
        ediinformacao.Visible := true;
        dtpdata.Visible := false;
        cbxinformacao.Visible := false;
        edivalor.Visible := false;
      end;
    3:begin
        ediinformacao.Visible := true;
        dtpdata.Visible := false;
        cbxinformacao.Visible := false;
        edivalor.Visible := false;
      end;
    4:begin
        ediinformacao.Visible := true;
        dtpdata.Visible := false;
        cbxinformacao.Visible := false;
        edivalor.Visible := false;
      end;
    5:begin
        ediinformacao.Visible := true;
        dtpdata.Visible := false;
        cbxinformacao.Visible := false;
        edivalor.Visible := false;
      end;
    6:begin
        ediinformacao.Visible := true;
        dtpdata.Visible := false;
        cbxinformacao.Visible := false;
        edivalor.Visible := false;
      end;
    7:begin
        ediinformacao.Visible := true;
        dtpdata.Visible := false;
        cbxinformacao.Visible := false;
        edivalor.Visible := false;
      end;
    8:begin
        ediinformacao.Visible := true;
        dtpdata.Visible := false;
        cbxinformacao.Visible := false;
        edivalor.Visible := false;
      end;
    9:begin
        ediinformacao.Visible := true;
        dtpdata.Visible := false;
        cbxinformacao.Visible := false;
        edivalor.Visible := false;
      end;
   10:begin
        ediinformacao.Visible := true;
        dtpdata.Visible := false;
        cbxinformacao.Visible := false;
        edivalor.Visible := false;
      end;
   11:begin
        ediinformacao.Visible := true;
        dtpdata.Visible := false;
        cbxinformacao.Visible := false;
        edivalor.Visible := false;
      end;
   12:begin
        ediinformacao.Visible := true;
        dtpdata.Visible := false;
        cbxinformacao.Visible := false;
        edivalor.Visible := false;
      end;
   13:begin
        ediinformacao.Visible := true;
        dtpdata.Visible := false;
        cbxinformacao.Visible := false;
        edivalor.Visible := false;
      end;
   14:begin
        ediinformacao.Visible := true;
        dtpdata.Visible := false;
        cbxinformacao.Visible := false;
        edivalor.Visible := false;
      end;
   15:begin
        ediinformacao.Visible := true;
        dtpdata.Visible := false;
        cbxinformacao.Visible := false;
        edivalor.Visible := false;
      end;
   16:begin
        ediinformacao.Visible := true;
        dtpdata.Visible := false;
        cbxinformacao.Visible := false;
        edivalor.Visible := false;
      end;
   17:begin
        ediinformacao.Visible := false;
        dtpdata.Visible := true;
        cbxinformacao.Visible := false;
        edivalor.Visible := false;
      end;
   18:begin
        ediinformacao.Visible := false;
        dtpdata.Visible := true;
        cbxinformacao.Visible := false;
        edivalor.Visible := false;
      end;
   19:begin
        ediinformacao.Visible := false;
        dtpdata.Visible := false;
        cbxinformacao.Visible := false;
        edivalor.Visible := true;
      end;
   20:begin
        ediinformacao.Visible := false;
        dtpdata.Visible := false;
        cbxinformacao.Visible := false;
        edivalor.Visible := true;
      end;
   21:begin
        ediinformacao.Visible := false;
        dtpdata.Visible := false;
        cbxinformacao.Visible := true;
        edivalor.Visible := false;
      end;
   22:begin
        ediinformacao.Visible := true;
        dtpdata.Visible := false;
        cbxinformacao.Visible := false;
        edivalor.Visible := false;
      end;


  else
    exit;
  end;

end;

procedure Tfrmpesq.btnmaisClick(Sender: TObject);
begin
  concatenarfiltro;
  filtrar;
end;

procedure tfrmpesq.apagastgfiltro;
var
  j: byte;

begin
if stgfiltro.Row <= 0 then
  begin
    exit;
  end;
//endif
if stgfiltro.RowCount <= 1 then
  begin
    exit;
  end;
//endif

//Limpando o conteudo da linha onde está o cursor.
stgfiltro.Cells[0,Stgfiltro.Row] := '';
stgfiltro.Cells[1,Stgfiltro.Row] := '';
stgfiltro.Cells[2,Stgfiltro.Row] := '';
stgfiltro.Cells[3,Stgfiltro.Row] := '';

//showmessage(inttostr(iContLIn));


//if stgfiltro.RowCount <= 1 then
//   begin
//     exit;
//   end;
//endi


//Deslocando tudo o que tem abaixo da linha excluida
//uma linha acima, para não deixar nenhuma linha em branco.
for j:=stgfiltro.Row to stgfiltro.RowCount - 1 do
  begin

    if j > 1 then
       begin
         stgfiltro.Cells[0,j] := stgfiltro.Cells[0,j + 1];
         stgfiltro.Cells[3,j] := stgfiltro.Cells[3,j + 1];
       end;
    //endi

    stgfiltro.Cells[1,j] := stgfiltro.Cells[1,j + 1];
    stgfiltro.Cells[2,j] := stgfiltro.Cells[2,j + 1];


  end;
//endf

stgfiltro.RowCount := stgfiltro.RowCount - 1;

if stgfiltro.RowCount <= 1 then
   begin
     cbxop.Enabled := false;
     cbxop.ItemIndex := 0;
   end;
//endi


end;


procedure Tfrmpesq.btnmenosClick(Sender: TObject);
begin
apagastgfiltro;
filtrar;
end;

function Tfrmpesq.localizastgfiltro(sInf:string):boolean;
var
  x:byte;
begin
stgfiltro.Row := 0;


result := false;

if sInf = '' then
   begin
     exit;
   end;
//endi

x := 1;
while (stgfiltro.RowCount >= x) do
  begin

    //if pos(stgfiltro.Cells[2,x],sInf) > 0 then
    //showmessage(stgfiltro.Cells[1,x]);
    if stgfiltro.Cells[1,x] = sInf then
       begin


         result := true;
         break;
       end;
    //endi

    x := x + 1;
  end;
//endw




end;



procedure Tfrmpesq.btnlimparClick(Sender: TObject);
begin
limparstgtotal;
limparcampofiltro;
apagatodostgfiltro;
//stgfiltro.Cells[2,0] := 'NENHUM FILTRO ATIVO';
btnfiltrar.Click;
end;

procedure Tfrmpesq.btnfiltrarClick(Sender: TObject);
begin
filtrar;
end;


procedure Tfrmpesq.cbxopKeyPress(Sender: TObject; var Key: Char);
begin
key := #0;
end;

procedure Tfrmpesq.cbxopKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
key := 0;
end;

procedure Tfrmpesq.cbxcampoKeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif


 key := #0;
end;

procedure Tfrmpesq.cbxoperadorKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

key := #0;
end;

procedure Tfrmpesq.cbxordporKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

key := #0;
end;

procedure Tfrmpesq.cbxinformacaoKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

key := #0;
end;

procedure Tfrmpesq.cbxcampoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
key := 0;
end;

procedure Tfrmpesq.cbxoperadorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
key := 0;
end;

procedure Tfrmpesq.cbxordporKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
key := 0;
end;

procedure Tfrmpesq.cbxinformacaoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
key := 0;
end;

procedure tfrmpesq.limparstgtotal;
begin

//sTitCompo := '';

while stgfiltro.RowCount > 1 do
  begin
    stgfiltro.RowCount  := stgfiltro.RowCount - 1;
  end;
//endi

cbxop.Enabled := false;

end;

procedure tfrmpesq.limparcampofiltro;
begin
  ediinformacao.Text := '';
  edilocalizar.Text := '';
  edivalor.Text := '0,00';
  cbxinformacao.Text := 'SIM';
  dtpdata.Date := date;
end;

procedure tfrmpesq.filtrar;
var
  x,
  icoluna:integer;
  
begin
  x := 0;
  //showmessage(copy(cbxordpor.Text,3,3));
  if copy(cbxordpor.Text,3,3) = ')' then
     icoluna := strtoint(copy(cbxordpor.Text,1,1))
  else
     icoluna := strtoint(copy(cbxordpor.Text,1,2));
  //endi

  sclassificar := dbgfuncionarios.Columns[icoluna-1].FieldName;

  with frmdados do
    begin
      cds_funcionarios.Active := false;
      dbx_funcionarios.Active := false;
      dbx_funcionarios.SQL.Clear;
      dbx_funcionarios.SQL.Add('select * from funcionarios');

      if stgfiltro.RowCount > 1 then
         begin
           dbx_funcionarios.SQL.Add(' where ');

           while (stgfiltro.RowCount > x)do
              begin
               
                if x > 1 then
                   begin
                     dbx_funcionarios.SQL.Add(stgfiltro.Cells[3,x]);
                   end;
                //endi

                if x > 0 then
                   begin
                     dbx_funcionarios.SQL.Add('('+stgfiltro.Cells[1,x]+')');
                   end;
                //endi

                x := x + 1;

              end;
           //endw

           stgfiltro.Cells[2,0] := 'FILTRO ATIVO';

         end
      else
         begin

           stgfiltro.Cells[2,0] := 'NENHUM FILTRO ATIVO';

         end;
      //endi


      dbx_funcionarios.SQL.Add('order by '+sclassificar);

      showmessage(dbx_funcionarios.SQL.Text);

      dbx_funcionarios.Active := true;
      cds_funcionarios.Active := true;



    end;
  //endth

  if pctdados.ActivePageIndex = 1 then
     mostrardados;

end;

procedure tfrmpesq.apagatodostgfiltro;
var x:integer;
begin
  x := 0;

  while x <= stgfiltro.RowCount do
    begin
      stgfiltro.Cells[1,x] := '';
      apagastgfiltro;
      x := x + 1;
    end;
  //endi


end;


procedure Tfrmpesq.spdinsfotoClick(Sender: TObject);
var
JPG: TJPegImage;
vardir:String;
begin

vardir := extractfilepath(application.ExeName);


try

  frmsige.skin.SkinFile := '';

  if opdabrirfig.Execute then
     begin

       frmdados.cds_temporario.Append;
       frmdados.cds_temporariofigura.LoadFromFile(opdabrirfig.FileName);
       frmdados.cds_temporariofilename.AsString := extractfilename(opdabrirfig.FileName);

       mostrararq_ext;
     end;
  //endi

finally
    frmsige.skin.SkinFile := vardir+'skin.skn';
end;

//with frmdados.Dbx_Funcionarios do begin
//    Close;
//    SQL.Text := 'update funcionarios set filename = :filename, foto = :imagem';
//    Params[0].Value := 'teste.jpg';
//    Params[1].Assign( imgfoto.Picture );
//    showmessage(sql.Text);
//    ExecSQL;
//end;

//imgfoto.Picture.Assign(JPG2Bmp(opdabrirfig.FileName));



//imgfoto.Picture.LoadFromFile(opdabrirfig.FileName);
//jpg := TJpegImage.Create;
//jpg.LoadFromFile(opdabrirfig.FileName);
//jpg.LoadFromFile('c:\imagem.jpg');
//imgfoto.Canvas.Draw(0,0,jpg);
//jpg.Free;



end;


procedure tfrmPesq.mostrararq_ext;
var
 J : TJPEGImage;
 figura : tbitmap;
 S : TMemoryStream;
 vardir:string;
 pathbuf:array[0..255] of char;
 temppath:string;
 bmp:tbitmap;
 extensao:string;
 stream:tstream;
begin


 with frmdados do
   begin

      imgfoto.Visible := false;

      if  cds_temporariofigura.BlobSize = 0 then exit;

      //se nã há informação sobre o tipo do arquivo, sai...
      if cds_temporariofilename.AsString = '' then exit;


      //Recupera a extensão do arquivo
      Extensao := uppercase(extractfileext(cds_temporariofilename.AsString));

      //se for image JPG ou BMP carrega para img
      if pos(extensao,'.JPG .JPEG .BMP') <> 0 then
         begin

           Stream := cds_temporario.CreateBlobStream(cds_temporariofigura, bmread);
           try
             if extensao = '.BMP' then
                begin
                  figura := tbitmap.Create;
                  try
                    figura.LoadFromStream(stream);
                    imgfoto.Picture.Assign(figura)
                  finally
                    imgfoto.Visible := true;
                    figura.Free;
                  end;
                end
             else
                begin
                  j := tjpegimage.Create;
                  try
                    j.LoadFromStream(Stream);
                    imgfoto.Picture.Assign(j);
                  finally
                    imgfoto.Visible := true;
                    j.Free
                  end;
                end;
             //endi
           finally
             stream.Free;
           end;
         end
      else
         begin
           //recupera o diretorio temp do windows
           gettemppath(sizeof(pathbuf),pathbuf);

           //monta path completo para o nosso diretório temporário
           temppath := strpas(pathbuf)+'\blobs';

           //Verifica se o diretório temporário já existe caso contrario cria
           if not directoryexists(temppath) then
              if not forcedirectories(temppath) then
                 begin
                   messagedlg('Não foi possível criar o diretório temporário!!!',mtError,[mbOK],0);
                   sysutils.Abort;
                 end;
              //endi
           //endi
           temppath := temppath + '\'+cds_temporariofigura.AsString;

           //Grava bloco no arquivo temporário
           cds_temporariofigura.SaveToFile(temppath);

           //chama a aplicação associada à extensão do arquivo
           Shellexecute(self.Handle,'open',pchar(temppath),nil,nil,SW_SHOWNORMAL);


         end;
      //endi


    //
    end;

  end;

procedure Tfrmpesq.FormCreate(Sender: TObject);
begin
//Torna campo de valores alinhados para direita
SysLocale.MiddleEast := true;
Edisalario.BiDiMode := bdRightToLeft;
Edipcom.BiDiMode := bdRightToLeft;
Edivalor.BiDiMode := bdRightToLeft;
end;

procedure Tfrmpesq.edisalarioKeyPress(Sender: TObject; var Key: Char);
begin
    If not( key in['0'..'9',#8,','] ) then
      begin
        beep;
        key:=#0;
      end;
    //endi

end;

procedure Tfrmpesq.edipcomKeyPress(Sender: TObject; var Key: Char);
begin
    If not( key in['0'..'9',#8,','] ) then
      begin
        beep;
        key:=#0;
      end;
    //endi

end;

procedure tfrmpesq.limpardados;
begin

  lblcodigo.Caption := '00000';
  edicpf.Text := '';
  edirg.Text := '';
  edinome.Text := '';
  edicep.Text := '';
  ediendereco.Text := '';
  edinro.Text := '';
  edicompl.Text := '';
  ediestado.Text := '';
  edicidade.Text := '';
  editelefones.Text := '';
  edicontato.Text := '';
  ediemail.Text := '';
  edidatanasc.Text := '';
  edisalario.Text := '0,00';
  edidataadm.Text := '';
  edicp.Text := '';
  edicargo.Text := '';
  ediprofissao.Text := '';
  edipcom.Text := '0,00';

  frmdados.cds_temporario.Append;
  frmdados.cds_temporariofigura.AsVariant := '';
  frmdados.cds_temporariofilename.AsString := '';


end;

procedure Tfrmpesq.edivalorKeyPress(Sender: TObject; var Key: Char);
begin
    if (key = #13) then
       begin
         key := #0;
         SelectNext(ActiveControl,True,True);
       end;
    //endif


    If not( key in['0'..'9',#8,','] ) then
      begin
        beep;
        key:=#0;
      end;
    //endi

end;

procedure Tfrmpesq.BitBtn7Click(Sender: TObject);
begin
sOpcao := 'I';

pctdados.ActivePageIndex := 1;
edicpf.SetFocus;
end;


procedure tfrmpesq.mostrardados;
begin
  
  with frmdados do
    begin

      lblcodigo.Caption := formatfloat('00000',cds_funcionarioscodigo.asInteger);
      edicpf.Text := cds_funcionarioscnpj.asString;
      edirg.Text := cds_funcionariosie.AsString;
      edinome.Text := cds_funcionariosnome.AsString;
      edicep.Text := cds_funcionarioscep.Text;
      ediendereco.Text := cds_funcionariosendereco.AsString;
      edinro.Text :=  cds_funcionariosnro.asString;
      edicompl.Text := cds_funcionarioscomplement.AsString;
      ediestado.Text := cds_funcionariosestado.AsString;
      edicidade.Text := cds_funcionarioscidade.AsString;
      editelefones.Text := cds_funcionariostelefones.AsString;
      edicontato.Text := cds_funcionarioscontato.AsString;
      ediemail.Text := cds_funcionariosemail.AsString;
      edidatanasc.Text := cds_funcionariosdatanasc.AsString;
      edisalario.Text := formatfloat('###,###,##0.00',cds_funcionariossalario.AsFloat);
      edidataadm.Text := cds_funcionariosdataadm.AsString;
      edicp.Text := cds_funcionarioscp.AsString;
      edicargo.Text := cds_funcionarioscargo.AsString;
      ediprofissao.Text := cds_funcionariosprofissao.AsString;
      edipcom.Text := formatfloat('###,###,##0.00',cds_funcionariospcom.AsFloat);

      cds_temporario.Append;
      cds_temporariofilename.AsString :=  cds_funcionariosfilename.AsString;
      cds_temporariofigura.AsVariant := cds_funcionariosfoto.AsVariant;
    end;

  mostrararq_ext;
end;

procedure Tfrmpesq.tbsfichaShow(Sender: TObject);
begin
if sOPcao = 'I' then
   limpardados

else 
   mostrardados;

//endi   
end;

procedure Tfrmpesq.BitBtn1Click(Sender: TObject);
begin
frmdados.Cds_Funcionarios.Prior;
if pctdados.ActivePageIndex = 1 then
   mostrardados;
//endi
end;

procedure Tfrmpesq.BitBtn2Click(Sender: TObject);
begin
frmdados.Cds_Funcionarios.Next;
if pctdados.ActivePageIndex = 1 then
   mostrardados;

end;

procedure tfrmpesq.atualizardados;
var
  sqlold, sdata:string;
begin
with frmdados do
  begin
    IniciaTransacao;

    sqlold := dbx_funcionarios.SQL.Text;

    try
      dbx_funcionarios.Active := false;
      dbx_funcionarios.SQL.Clear;
      dbx_funcionarios.SQL.Add('update funcionarios set');
      //0
      dbx_funcionarios.SQL.Add('ie =:ie, ');

      //1
      dbx_funcionarios.SQL.Add('nome =:ie, ');

      //2
      dbx_funcionarios.SQL.Add('cep =:cep, ');

      //3
      dbx_funcionarios.SQL.Add('endereco =:endereco, ');

      //4
      dbx_funcionarios.SQL.Add('nro =:nro, ');

      //5
      dbx_funcionarios.SQL.Add('complement =:nro, ');

      //6
      dbx_funcionarios.SQL.Add('estado =:estado, ');

      //7
      dbx_funcionarios.SQL.Add('cidade =:cidade, ');

      //8
      dbx_funcionarios.SQL.Add('telefones =:telefones, ');

      //9
      dbx_funcionarios.SQL.Add('contato =:contato, ');

      //10
      dbx_funcionarios.SQL.Add('email =:email, ');

      //11
      dbx_funcionarios.SQL.Add('datanasc =:datanasc, ');

      //12
      dbx_funcionarios.SQL.Add('salario =:salario, ');

      //13
      dbx_funcionarios.SQL.Add('dataadm =:dataadm, ');

      //14
      dbx_funcionarios.SQL.Add('cp =:cp, ');

      //15
      dbx_funcionarios.SQL.Add('cargo =:cargo, ');

      //16
      dbx_funcionarios.SQL.Add('Profissao =:profissao, ');

      //17
      dbx_funcionarios.SQL.Add('pcom =:pcom, ');


      //if cds_temporariofigura.BlobSize > 0 then
      //   begin

           //18
           dbx_funcionarios.SQL.Add('filename =:filename, ');

           //19
           dbx_funcionarios.SQL.Add('foto =:foto,');

      //   end;
      //endi

      //20
      dbx_funcionarios.SQL.Add('cnpj =:cnpj');

      //Condição para atualização
      dbx_funcionarios.SQL.Add(' where codigo =:codigo');

      dbx_funcionarios.Params[0].Value :=  edirg.Text ;
      dbx_funcionarios.Params[1].Value :=  edinome.Text;
      dbx_funcionarios.Params[2].Value :=  edicep.Text;
      dbx_funcionarios.Params[3].Value :=  ediendereco.Text;
      dbx_funcionarios.Params[4].Value :=  edinro.Text;
      dbx_funcionarios.Params[5].Value :=  edicompl.Text;
      dbx_funcionarios.Params[6].Value :=  ediestado.Text;
      dbx_funcionarios.Params[7].Value :=  edicidade.Text;
      dbx_funcionarios.Params[8].Value :=  editelefones.Text;
      dbx_funcionarios.Params[9].Value :=  edicontato.Text;
      dbx_funcionarios.Params[10].Value :=  ediemail.Text;

      sdata := edidatanasc.Text;
      sdata := bar_is_point(sdata);
      dbx_funcionarios.Params[11].Value :=  sdata;

      dbx_funcionarios.Params[12].Value :=   strtofloat(   tirapontos(  edisalario.Text ) );

      sdata := edidataadm.Text;
      sdata := bar_is_point(sdata);
      dbx_funcionarios.Params[13].Value :=  sdata;

      dbx_funcionarios.Params[14].Value :=    edicp.Text ;
      dbx_funcionarios.Params[15].Value :=    edicargo.Text ;
      dbx_funcionarios.Params[16].Value :=    ediprofissao.Text ;

      dbx_funcionarios.Params[17].Value :=  strtofloat(   tirapontos(  edipcom.Text ) );

      {

      if  then
         begin
           frmdados.cds_temporario.Append;
           frmdados.cds_temporariofigura.AsVariant := '';
           frmdados.cds_temporariofilename.AsString := '';
           mostrararq_ext;
         end;
      //endi

      }


         

      dbx_funcionarios.Params[18].Value := cds_temporariofilename.AsString;
      dbx_funcionarios.Params[19].Assign  ( imgfoto.Picture.Graphic );

      dbx_funcionarios.Params[20].Value :=  edicpf.Text;
      dbx_funcionarios.Params[21].value := strtoint(lblcodigo.Caption);


      dbx_funcionarios.ExecSQL();



    finally

      try
        finalizaTransacao;
      except
        EstornaOperacao;
      end;

      dbx_funcionarios.SQL.Text := sqlold;
      dbx_funcionarios.Active := true;
      cds_funcionarios.Refresh;
    end;

  end;

end;

procedure tfrmpesq.inserirdados;
var
  sqlold, sdata:string;
begin
with frmdados do
  begin
    IniciaTransacao;

    sqlold := dbx_funcionarios.SQL.Text;

    try
      dbx_funcionarios.Active := false;
      dbx_funcionarios.SQL.Clear;
      dbx_funcionarios.SQL.Add('insert into funcionarios (');
      dbx_funcionarios.SQL.Add('cnpj, ');
      dbx_funcionarios.SQL.Add('ie, ');
      dbx_funcionarios.SQL.Add('nome, ');
      dbx_funcionarios.SQL.Add('cep, ');
      dbx_funcionarios.SQL.Add('endereco, ');
      dbx_funcionarios.SQL.Add('nro, ');
      dbx_funcionarios.SQL.Add('complement, ');
      dbx_funcionarios.SQL.Add('estado, ');
      dbx_funcionarios.SQL.Add('cidade, ');
      dbx_funcionarios.SQL.Add('telefones, ');
      dbx_funcionarios.SQL.Add('contato, ');
      dbx_funcionarios.SQL.Add('email, ');
      dbx_funcionarios.SQL.Add('datanasc, ');
      dbx_funcionarios.SQL.Add('salario, ');
      dbx_funcionarios.SQL.Add('dataadm, ');
      dbx_funcionarios.SQL.Add('cp, ');
      dbx_funcionarios.SQL.Add('cargo, ');
      dbx_funcionarios.SQL.Add('Profissao, ');
      dbx_funcionarios.SQL.Add('pcom, ');
      dbx_funcionarios.SQL.Add('filename, ');
      dbx_funcionarios.SQL.Add('foto');

      dbx_funcionarios.SQL.Add(') values (');

      dbx_funcionarios.SQL.Add(':cnpj, ');
      dbx_funcionarios.SQL.Add(':ie, ');
      dbx_funcionarios.SQL.Add(':nome, ');
      dbx_funcionarios.SQL.Add(':cep, ');
      dbx_funcionarios.SQL.Add(':endereco, ');
      dbx_funcionarios.SQL.Add(':nro, ');
      dbx_funcionarios.SQL.Add(':complement, ');
      dbx_funcionarios.SQL.Add(':estado, ');
      dbx_funcionarios.SQL.Add(':cidade, ');
      dbx_funcionarios.SQL.Add(':telefones, ');
      dbx_funcionarios.SQL.Add(':contato, ');
      dbx_funcionarios.SQL.Add(':email, ');
      dbx_funcionarios.SQL.Add(':datanasc, ');
      dbx_funcionarios.SQL.Add(':salario, ');
      dbx_funcionarios.SQL.Add(':dataadm, ');
      dbx_funcionarios.SQL.Add(':cp, ');
      dbx_funcionarios.SQL.Add(':cargo, ');
      dbx_funcionarios.SQL.Add(':Profissao, ');
      dbx_funcionarios.SQL.Add(':pcom, ');
      dbx_funcionarios.SQL.Add(':filename, ');
      dbx_funcionarios.SQL.Add(':foto');
      dbx_funcionarios.SQL.Add(')');


      dbx_funcionarios.Params[0].Value :=  edicpf.Text;
      dbx_funcionarios.Params[1].Value :=  edirg.Text ;
      dbx_funcionarios.Params[2].Value :=  edinome.Text;
      dbx_funcionarios.Params[3].Value :=  edicep.Text;
      dbx_funcionarios.Params[4].Value :=  ediendereco.Text;
      dbx_funcionarios.Params[5].Value :=  edinro.Text;
      dbx_funcionarios.Params[6].Value :=  edicompl.Text;
      dbx_funcionarios.Params[7].Value :=  ediestado.Text;
      dbx_funcionarios.Params[8].Value :=  edicidade.Text;
      dbx_funcionarios.Params[9].Value :=  editelefones.Text;
      dbx_funcionarios.Params[10].Value :=  edicontato.Text;
      dbx_funcionarios.Params[11].Value :=  ediemail.Text;

      sdata := edidatanasc.Text;
      sdata := bar_is_point(sdata);
      dbx_funcionarios.Params[12].Value :=  sdata;

      dbx_funcionarios.Params[13].Value :=   strtofloat(   tirapontos(  edisalario.Text ) );

      sdata := edidataadm.Text;
      sdata := bar_is_point(sdata);
      dbx_funcionarios.Params[14].Value :=  sdata;

      dbx_funcionarios.Params[15].Value :=    edicp.Text ;
      dbx_funcionarios.Params[16].Value :=    edicargo.Text ;
      dbx_funcionarios.Params[17].Value :=    ediprofissao.Text ;

      dbx_funcionarios.Params[18].Value :=  strtofloat(   tirapontos(  edipcom.Text ) );

      //dbx_funcionarios.Params[19].Value := 'teste.jpg';
      //dbx_funcionarios.Params[20].Assign( imgfoto.Picture );


      dbx_funcionarios.Params[19].Value := cds_temporariofilename.AsString;
      dbx_funcionarios.Params[20].Assign( imgfoto.Picture.Graphic );



      dbx_funcionarios.ExecSQL();



    finally

      try
        finalizaTransacao;
      except
        EstornaOperacao;
      end;

      dbx_funcionarios.SQL.Text := sqlold;
      dbx_funcionarios.Active := true;



      cds_funcionarios.Refresh;
    end;

  end;

end;

procedure Tfrmpesq.BitBtn6Click(Sender: TObject);
begin
if sOpcao = '' then
   sOPcao := 'A';
//endi

if sOpcao = 'I' then
   inserirdados
else if sOpcao = 'A' then
   atualizardados;
   
pctdados.ActivePageIndex := 0;
sOpcao := '';
end;

procedure Tfrmpesq.BitBtn4Click(Sender: TObject);
begin
sOpcao := 'A';
pctdados.ActivePageIndex := 1;

edicpf.SetFocus;

end;

procedure Tfrmpesq.tbslistaShow(Sender: TObject);
begin
sOpcao := '';
end;

procedure Tfrmpesq.edicpfKeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmpesq.DtpDataKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmpesq.edilocalizarKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmpesq.spdapafotoClick(Sender: TObject);
begin
  frmdados.cds_temporario.Append;
  frmdados.cds_temporariofigura.AsVariant := '';
  frmdados.cds_temporariofilename.AsString := '';
  mostrararq_ext;

end;

procedure Tfrmpesq.edilocalizarChange(Sender: TObject);
begin
if edilocalizar.Text = '' then exit;
   frmdados.Cds_Funcionarios.Locate(sClassificar,edilocalizar.text,[loPartialKey,loCaseInsensitive])
//endi   
end;

procedure Tfrmpesq.cbxordporChange(Sender: TObject);
var icoluna:integer;
begin
  if copy(cbxordpor.Text,3,3) = ')' then
     icoluna := strtoint(copy(cbxordpor.Text,1,1))
  else
     icoluna := strtoint(copy(cbxordpor.Text,1,2));
  //endi

  sclassificar := dbgfuncionarios.Columns[icoluna-1].FieldName;

end;

end.
