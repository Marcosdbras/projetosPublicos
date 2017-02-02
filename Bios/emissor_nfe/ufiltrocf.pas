unit ufiltrocf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TFrmFiltroCf = class(TForm)
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
  FrmFiltroCf: TFrmFiltroCf;

implementation

uses udados, ugeral, upesqcf;

{$R *.dfm}

procedure TFrmFiltroCf.BtnOKClick(Sender: TObject);
begin
  aplicarfiltro;
  close;
end;

procedure TFrmFiltroCf.BtnCancelClick(Sender: TObject);
begin
  close;
end;

procedure TFrmFiltroCf.FormShow(Sender: TObject);
begin

  cbxcampo.Items.Clear;
  cbxcampo.Items.Add('CÓDIGO');
  cbxcampo.Items.Add('DESCRIÇÃO');
  cbxcampo.ItemIndex := 1;

  cbxOrdPor.Items.Clear;
  cbxOrdPor.Items.Add('CÓDIGO');
  cbxOrdPor.Items.Add('DESCRIÇÃO');
  cbxOrdPor.ItemIndex := frmpesqcf.iClassificar;
  
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


  if frmpesqcf.sfiltro = '' then
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

procedure TFrmFiltroCf.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
  frmFiltrocf:=nil;
  form_ativo := '';

end;

procedure TFrmFiltroCf.cbxoperadorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
key :=0;
end;

procedure TFrmFiltroCf.CbxCampoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
key :=0;
end;

procedure TFrmFiltroCf.CbxOperacaoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
key :=0;
end;

procedure TFrmFiltroCf.CbxOrdPorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
key :=0;
end;

procedure TFrmFiltroCf.cbxoperadorKeyPress(Sender: TObject;
  var Key: Char);
begin
key :=#0;
end;

procedure TFrmFiltroCf.CbxCampoKeyPress(Sender: TObject;
  var Key: Char);
begin
key :=#0;
end;

procedure TFrmFiltroCf.CbxOperacaoKeyPress(Sender: TObject;
  var Key: Char);
begin
key :=#0;
end;

procedure TFrmFiltroCf.CbxOrdPorKeyPress(Sender: TObject;
  var Key: Char);
begin
key :=#0;
end;

procedure TFrmFiltroCf.aplicarfiltro;
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
        frmpesqcf.sclassificar := 'CÓDIGO';
      end;
    1:begin
        sOrdem:='descricao';
        frmpesqcf.sclassificar := 'DESCRICAO';
      end;
  ELSE
    sOrdem:='';
  END;

  with frmdados do
    begin
      cds_cf.IndexName :=  sOrdem;
      frmpesqcf.iclassificar := cbxOrdPor.ItemIndex;
      frmpesqcf.sOrdenado := sOrdem;
      frmpesqcf.stbrodape.Panels[1].Text := 'ORDENADO POR '+frmpesqcf.sclassificar;
      frmpesqcf.lbllocalizar.Caption :=  frmpesqcf.sclassificar;
      frmpesqcf.edilocalizar.Text := '';
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
        1:sCampo:='DESCRICAO';
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
              if cbxcampo.ItemIndex = 2 then
                 sinformacao := ediinformacao.Text
              else
                 if cbxcampo.ItemIndex = 3 then
                    sinformacao := ediinformacao.Text
                 else
                    sinformacao := Quotedstr(ediinformacao.Text);
                 //endi
              //endi
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
                frmpesqcf.sfiltro := frmpesqcf.sfiltro +' AND ('+sfiltro+')';
              end
           else
              begin
                frmpesqcf.sfiltro := frmpesqcf.sfiltro +' OR ('+sfiltro+')';
              end;
           //endi
           frmpesqcf.stitrel := frmpesqcf.stitrel + ' '+cbxOperador.Text+' '+cbxcampo.Text+' '+cbxOperacao.Text+' '+QuotedStr(ediinformacao.Text);
           frmpesqcf.stbrodape.Panels[0].Text := frmpesqcf.stitrel;

         end
      else
         begin
           frmpesqcf.sfiltro :='('+sfiltro+')';
           frmpesqcf.stitrel := cbxcampo.Text+' '+cbxOperacao.Text+' '+QuotedStr(ediinformacao.Text);
           frmpesqcf.stbrodape.Panels[0].Text := 'FILTRO '+frmpesqcf.stitrel;
         end;
      //endi
      with frmdados do
        begin
          cds_cf.Filtered := false;
          cds_cf.Filter := frmpesqcf.sfiltro;
          cds_cf.Filtered := true;
        end;
      //endth

      if frmpesqcf.pctdados.TabIndex = 1 then
         frmpesqcf.carregaficha;
      //endi

      cbxoperador.Enabled := true;
      cbxoperador.ItemIndex := 0;

    end;
  //endi



end;

procedure TFrmFiltroCf.btnaplicarClick(Sender: TObject);
begin
aplicarfiltro;
end;

procedure TFrmFiltroCf.ediinformacaoKeyPress(Sender: TObject;
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

if cbxcampo.ItemIndex = 2 then
   begin

     If not( key in['0'..'9',#8] ) and (key <> ',')then
        begin
          beep;
          key:=#0;
        end;
     //endi

   end;
//endi


if cbxcampo.ItemIndex = 3 then
   begin

     If not( key in['0'..'9',#8] ) and (key <> ',')then
        begin
          beep;
          key:=#0;
        end;
     //endi

   end;
//endi



end;

procedure TFrmFiltroCf.btnlimparClick(Sender: TObject);
begin
with frmdados do
  begin
    cds_cf.Filtered := false;
    cds_cf.Filter := '';
  end;
//endi

frmpesqcf.stbrodape.Panels[0].Text := '';
frmpesqcf.sfiltro := '';
frmpesqcf.stitrel := '';

cbxoperador.Enabled := false;
cbxoperador.ItemIndex := -1;

ediinformacao.Text := '';

if frmpesqcf.pctdados.TabIndex = 1 then
   frmpesqcf.carregaficha;
//endi


end;

procedure TFrmFiltroCf.CbxCampoDropDown(Sender: TObject);
begin
ediinformacao.Text := '';
end;

end.
