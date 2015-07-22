unit ufiltrotransportadora;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TFrmFiltroTransportadora = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    BtnOK: TBitBtn;
    BtnCancel: TBitBtn;
    ediinformacao: TEdit;
    CbxCampo: TComboBox;
    CbxOrdPor: TComboBox;
    CbxOperacao: TComboBox;
    Operador: TLabel;
    cbxoperador: TComboBox;
    btnaplicar: TBitBtn;
    btnlimpar: TBitBtn;
    procedure BtnOKClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbxoperadorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CbxCampoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CbxOperacaoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CbxOrdPorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbxoperadorKeyPress(Sender: TObject; var Key: Char);
    procedure CbxCampoKeyPress(Sender: TObject; var Key: Char);
    procedure CbxOperacaoKeyPress(Sender: TObject; var Key: Char);
    procedure CbxOrdPorKeyPress(Sender: TObject; var Key: Char);
    procedure aplicarfiltro;
    procedure btnaplicarClick(Sender: TObject);
    procedure ediinformacaoKeyPress(Sender: TObject; var Key: Char);
    procedure btnlimparClick(Sender: TObject);
    procedure CbxCampoDropDown(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFiltroTransportadora: TFrmFiltroTransportadora;

implementation

uses udados, ugeral, upesqtransportadora;

{$R *.dfm}

procedure TFrmFiltroTransportadora.BtnOKClick(Sender: TObject);
begin
  aplicarfiltro;
  close;
end;

procedure TFrmFiltroTransportadora.BtnCancelClick(Sender: TObject);
begin
  close;
end;

procedure TFrmFiltroTransportadora.FormShow(Sender: TObject);
begin

  cbxcampo.Items.Clear;
  cbxcampo.Items.Add('CÓDIGO');
  cbxcampo.Items.Add('NOME');
  cbxcampo.Items.Add('CNPJ');
  cbxcampo.Items.Add('IE');
  cbxcampo.Items.Add('INSC. MUNICIPAL');
  cbxcampo.Items.Add('FANTASIA');
  cbxcampo.Items.Add('TELEFONES');
  cbxcampo.Items.Add('EMAIL');
  cbxcampo.Items.Add('SITE');
  cbxcampo.Items.Add('CONTATO');
  cbxcampo.Items.Add('ENDEREÇO');
  cbxcampo.Items.Add('NÚMERO');
  cbxcampo.Items.Add('COMPLEMENTO');
  cbxcampo.Items.Add('BAIRRO');
  cbxcampo.Items.Add('CEP');
  cbxcampo.ItemIndex := 1;

  cbxOrdPor.Items.Clear;
  cbxOrdPor.Items.Add('CÓDIGO');
  cbxOrdPor.Items.Add('NOME');
  cbxOrdPor.Items.Add('CNPJ');
  cbxOrdPor.Items.Add('IE');
  cbxOrdPor.Items.Add('INSC. MUNICIPAL');
  cbxOrdPor.Items.Add('FANTASIA');
  cbxOrdPor.ItemIndex := frmpesqtransportadora.iClassificar;

  cbxOperacao.Items.Clear;
  cbxOperacao.Items.Add('IGUAL');
  cbxOperacao.Items.Add('DIFERENTE DE');
  cbxOperacao.Items.Add('MENOR OU IGUAL');
  cbxOperacao.Items.Add('MAIOR OU IGUAL');
  cbxOperacao.Items.Add('MENOR');
  cbxOperacao.Items.Add('MAIOR');
  cbxOperacao.Items.Add('QUALQUER PARTE');
  cbxOperacao.ItemIndex := 0;

  cbxOperador.Items.Clear;
  cbxOperador.Items.Add('E');
  cbxOperador.Items.Add('OU');


  if frmpesqtransportadora.sfiltro = '' then
     begin
       cbxOperador.Enabled := false;
     end
  else
     begin
       cbxOperador.Enabled := true;
       cbxOPerador.ItemIndex := 0;
     end;
  //endi


  ediinformacao.SetFocus;
end;

procedure TFrmFiltroTransportadora.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
  frmFiltrotransportadora:=nil;
  form_ativo := '';

end;

procedure TFrmFiltroTransportadora.cbxoperadorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
key :=0;
end;

procedure TFrmFiltroTransportadora.CbxCampoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
key :=0;
end;

procedure TFrmFiltroTransportadora.CbxOperacaoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
key :=0;
end;

procedure TFrmFiltroTransportadora.CbxOrdPorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
key :=0;
end;

procedure TFrmFiltroTransportadora.cbxoperadorKeyPress(Sender: TObject;
  var Key: Char);
begin
key :=#0;
end;

procedure TFrmFiltroTransportadora.CbxCampoKeyPress(Sender: TObject;
  var Key: Char);
begin
key :=#0;
end;

procedure TFrmFiltroTransportadora.CbxOperacaoKeyPress(Sender: TObject;
  var Key: Char);
begin
key :=#0;
end;

procedure TFrmFiltroTransportadora.CbxOrdPorKeyPress(Sender: TObject;
  var Key: Char);
begin
key :=#0;
end;

procedure TFrmFiltroTransportadora.aplicarfiltro;
var
  sCampo:STRING;
  sOperacao:STRING;
  sOrdem:STRING;
  sFiltro:STRING;
  sInformacao:string;
begin

  CASE cbxOrdPor.ItemIndex OF
    0:begin
        sOrdem:='codigo';
        frmpesqtransportadora.sclassificar := 'CÓDIGO';
      end;
    1:begin
        sOrdem:='nome';
        frmpesqtransportadora.sclassificar := 'NOME';
      end;
    2:begin
        sOrdem:='cnpj';
        frmpesqtransportadora.sclassificar := 'CNPJ';
      end;
    3:begin
        sOrdem:='ie';
        frmpesqtransportadora.sclassificar := 'IE';
      end;
    4:begin
        sOrdem:='im';
        frmpesqtransportadora.sclassificar := 'INSC. MUNICIPAL';
      end;
    5:begin
        sOrdem:='fantasia';
        frmpesqtransportadora.sclassificar := 'FANTASIA';
      end;
  ELSE
    sOrdem:='';
  END;

  with frmdados do
    begin
      cds_transportador.IndexName :=  sOrdem;
      frmpesqtransportadora.iclassificar := cbxOrdPor.ItemIndex;
      frmpesqtransportadora.sOrdenado := sOrdem;
      frmpesqtransportadora.stbrodape.Panels[1].Text := 'ORDENADO POR '+frmpesqtransportadora.sclassificar;
      frmpesqtransportadora.lbllocalizar.Caption :=  frmpesqtransportadora.sclassificar;
      frmpesqtransportadora.edilocalizar.Text := '';
    end;
  //endth

  if(ediinformacao.Text <> '')then
    begin

      if (cbxoperador.Enabled) then
         if (cbxoperador.Text = '') then
            exit;
         //endi
      //endi


      if cbxCampo.Text = '' then
         Exit;
      //endi

      if cbxoperacao.Text = '' then
         Exit;
      //endi

      if cbxOrdPor.Text = '' then
         Exit;
      //endi

      Case cbxcampo.ItemIndex OF
        0:sCampo:='CODIGO';
        1:sCampo:='NOME';
        2:sCampo:='CNPJ';
        3:sCampo:='IE';
        4:sCampo:='IM';

        5:sCampo:='FANTASIA';
        6:sCampo:='TELEFONES';
        7:sCampo:='EMAIL';
        8:sCampo:='SITE';
        9:sCampo:='CONTATO';
        10:sCampo:='ENDERECO';
        11:sCampo:='NRO';
        12:sCampo:='COMPL';
        13:sCampo:='BAIRRO';
        14:sCampo:='CEP';

      Else
        exit;
      End;

      CASE CbxOperacao.ItemIndex OF
        0:sOperacao:='=';
        1:sOperacao:='<>';
        2:sOperacao:='<=';
        3:sOperacao:='>=';
        4:sOperacao:='<';
        5:sOperacao:='>';
        6:sOPeracao:=' LIKE '+QUOTEDSTR('%'+ediinformacao.Text+'%');
      ELSE
        exit;
      END;

      if (CbxOperacao.ItemIndex<=5) then
         begin
           if cbxcampo.ItemIndex = 0 then
              sinformacao := ediinformacao.Text
           else
              sinformacao := Quotedstr(ediinformacao.Text);
           //endi
           sFiltro:=sFiltro + sCampo + sOperacao + sinformacao;
         end
      else
         begin
           sFiltro:= sCampo + sOperacao ;
         end;
      //endi

      if cbxOperador.Enabled then
         begin
           if cbxOperador.ItemIndex = 0 then
              begin
                frmpesqtransportadora.sfiltro := frmpesqtransportadora.sfiltro +' AND ('+sfiltro+')';
              end
           else
              begin
                frmpesqtransportadora.sfiltro := frmpesqtransportadora.sfiltro +' OR ('+sfiltro+')';
              end;
           //endi
           frmpesqtransportadora.stitrel := frmpesqtransportadora.stitrel + ' '+cbxOperador.Text+' '+cbxcampo.Text+' '+cbxOperacao.Text+' '+QuotedStr(ediinformacao.Text);
           frmpesqtransportadora.stbrodape.Panels[0].Text := frmpesqtransportadora.stitrel;

         end
      else
         begin
           frmpesqtransportadora.sfiltro :='('+sfiltro+')';
           frmpesqtransportadora.stitrel := cbxcampo.Text+' '+cbxOperacao.Text+' '+QuotedStr(ediinformacao.Text);
           frmpesqtransportadora.stbrodape.Panels[0].Text := 'FILTRO '+frmpesqtransportadora.stitrel;
         end;
      //endi
      with frmdados do
        begin
          cds_transportador.Filtered := false;
          cds_transportador.Filter := frmpesqtransportadora.sfiltro;
          cds_transportador.Filtered := true;
        end;
      //endth

      if frmpesqtransportadora.pctdados.TabIndex = 1 then
         frmpesqtransportadora.carregaficha;
      //endi

      cbxoperador.Enabled := true;
      cbxoperador.ItemIndex := 0;

    end;
  //endi


end;

procedure TFrmFiltroTransportadora.btnaplicarClick(Sender: TObject);
begin
aplicarfiltro;
end;

procedure TFrmFiltroTransportadora.ediinformacaoKeyPress(Sender: TObject;
  var Key: Char);
begin
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

end;

procedure TFrmFiltroTransportadora.btnlimparClick(Sender: TObject);
begin
with frmdados do
  begin
    cds_transportador.Filtered := false;
    cds_transportador.Filter := '';
  end;
//endi

frmpesqtransportadora.stbrodape.Panels[0].Text := '';
frmpesqtransportadora.sfiltro := '';
frmpesqtransportadora.stitrel := '';

cbxoperador.Enabled := false;
cbxoperador.ItemIndex := -1;

ediinformacao.Text := '';

if frmpesqtransportadora.pctdados.TabIndex = 1 then
   frmpesqtransportadora.carregaficha;
//endi


end;

procedure TFrmFiltroTransportadora.CbxCampoDropDown(Sender: TObject);
begin
ediinformacao.Text := '';
end;

end.
