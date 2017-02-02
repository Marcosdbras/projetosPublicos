unit ufiltropaises;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TFrmFiltroPaises = class(TForm)
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
  FrmFiltroPaises: TFrmFiltroPaises;

implementation

uses udados, ugeral, upesqpaises;

{$R *.dfm}

procedure TFrmFiltroPaises.BtnOKClick(Sender: TObject);
begin
  aplicarfiltro;
  close;
end;

procedure TFrmFiltroPaises.BtnCancelClick(Sender: TObject);
begin
  close;
end;

procedure TFrmFiltroPaises.FormShow(Sender: TObject);
begin

  cbxcampo.Items.Clear;
  cbxcampo.Items.Add('CÓDIGO');
  cbxcampo.Items.Add('NOME');
  cbxcampo.Items.Add('SIGLA');
  cbxcampo.Items.Add('Nº IBGE');
  cbxcampo.ItemIndex := 1;

  cbxOrdPor.Items.Clear;
  cbxOrdPor.Items.Add('CÓDIGO');
  cbxOrdPor.Items.Add('NOME');
  cbxOrdPor.Items.Add('SIGLA');
  cbxOrdPor.Items.Add('Nº IBGE');
  cbxOrdPor.ItemIndex := frmpesqpaises.iClassificar;
  
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


  if frmpesqpaises.sfiltro = '' then
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

procedure TFrmFiltroPaises.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
  frmFiltroPaises:=nil;
  form_ativo := '';

end;

procedure TFrmFiltroPaises.cbxoperadorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
key :=0;
end;

procedure TFrmFiltroPaises.CbxCampoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
key :=0;
end;

procedure TFrmFiltroPaises.CbxOperacaoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
key :=0;
end;

procedure TFrmFiltroPaises.CbxOrdPorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
key :=0;
end;

procedure TFrmFiltroPaises.cbxoperadorKeyPress(Sender: TObject;
  var Key: Char);
begin
key :=#0;
end;

procedure TFrmFiltroPaises.CbxCampoKeyPress(Sender: TObject;
  var Key: Char);
begin
key :=#0;
end;

procedure TFrmFiltroPaises.CbxOperacaoKeyPress(Sender: TObject;
  var Key: Char);
begin
key :=#0;
end;

procedure TFrmFiltroPaises.CbxOrdPorKeyPress(Sender: TObject;
  var Key: Char);
begin
key :=#0;
end;

procedure TFrmFiltroPaises.aplicarfiltro;
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
        frmpesqpaises.sclassificar := 'CÓDIGO';
      end;
    1:begin
        sOrdem:='nome';
        frmpesqpaises.sclassificar := 'NOME';
      end;
    2:begin
        sOrdem:='sigla';
        frmpesqpaises.sclassificar := 'SIGLA';
      end;
    3:begin
        sOrdem:='codibge';
        frmpesqpaises.sclassificar := 'Nº IBGE';
      end;
  ELSE
    sOrdem:='';
  END;

  with frmdados do
    begin
      cds_paises.IndexName :=  sOrdem;
      frmpesqpaises.iclassificar := cbxOrdPor.ItemIndex;
      frmpesqpaises.sOrdenado := sOrdem;
      frmpesqpaises.stbrodape.Panels[1].Text := 'ORDENADO POR '+frmpesqpaises.sclassificar;
      frmpesqpaises.lbllocalizar.Caption :=  frmpesqpaises.sclassificar;
      frmpesqpaises.edilocalizar.Text := '';
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
        2:sCampo:='SIGLA';
        3:sCampo:='CODIBGE';
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
                frmpesqpaises.sfiltro := frmpesqpaises.sfiltro +' AND ('+sfiltro+')';
              end
           else
              begin
                frmpesqpaises.sfiltro := frmpesqpaises.sfiltro +' OR ('+sfiltro+')';
              end;
           //endi
           frmpesqpaises.stitrel := frmpesqpaises.stitrel + ' '+cbxOperador.Text+' '+cbxcampo.Text+' '+cbxOperacao.Text+' '+QuotedStr(ediinformacao.Text);
           frmpesqpaises.stbrodape.Panels[0].Text := frmpesqpaises.stitrel;

         end
      else
         begin
           frmpesqpaises.sfiltro :='('+sfiltro+')';
           frmpesqpaises.stitrel := cbxcampo.Text+' '+cbxOperacao.Text+' '+QuotedStr(ediinformacao.Text);
           frmpesqpaises.stbrodape.Panels[0].Text := 'FILTRO '+frmpesqpaises.stitrel;
         end;
      //endi
      with frmdados do
        begin
          cds_paises.Filtered := false;
          cds_paises.Filter := frmpesqpaises.sfiltro;
          cds_paises.Filtered := true;
        end;
      //endth

      if frmpesqpaises.pctdados.TabIndex = 1 then
         frmpesqpaises.carregaficha;
      //endi

      cbxoperador.Enabled := true;
      cbxoperador.ItemIndex := 0;

    end;
  //endi
end;

procedure TFrmFiltroPaises.btnaplicarClick(Sender: TObject);
begin
aplicarfiltro;
end;

procedure TFrmFiltroPaises.ediinformacaoKeyPress(Sender: TObject;
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

procedure TFrmFiltroPaises.btnlimparClick(Sender: TObject);
begin
with frmdados do
  begin
    cds_paises.Filtered := false;
    cds_paises.Filter := '';
  end;
//endi

frmpesqpaises.stbrodape.Panels[0].Text := '';
frmpesqpaises.sfiltro := '';
frmpesqpaises.stitrel := '';

cbxoperador.Enabled := false;
cbxoperador.ItemIndex := -1;

ediinformacao.Text := '';

if frmpesqpaises.pctdados.TabIndex = 1 then
   frmpesqpaises.carregaficha;
//endi



end;

procedure TFrmFiltroPaises.CbxCampoDropDown(Sender: TObject);
begin
ediinformacao.Text := '';
end;

end.
