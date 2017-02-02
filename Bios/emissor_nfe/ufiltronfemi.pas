unit ufiltronfemi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TFrmFiltronfemi = class(TForm)
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
    procedure ediinformacaoExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFiltronfemi: TFrmFiltronfemi;

implementation

uses udados, ugeral, upesqnfemi;

{$R *.dfm}

procedure TFrmFiltronfemi.BtnOKClick(Sender: TObject);
begin
  aplicarfiltro;
  close;
end;

procedure TFrmFiltronfemi.BtnCancelClick(Sender: TObject);
begin
  close;
end;

procedure TFrmFiltronfemi.FormShow(Sender: TObject);
begin

  cbxcampo.Items.Clear;
  cbxcampo.Items.Add('CÓDIGO');
  cbxcampo.Items.Add('EMISSÃO');
  cbxcampo.ItemIndex := 1;

  cbxOrdPor.Items.Clear;
  cbxOrdPor.Items.Add('CÓDIGO');
  cbxOrdPor.Items.Add('EMISSÃO');
  cbxOrdPor.ItemIndex := frmpesqnfemi.iClassificar;

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


  if frmpesqnfemi.sfiltro = '' then
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

procedure TFrmFiltronfemi.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
  frmFiltronfemi:=nil;
  form_ativo := '';

end;

procedure TFrmFiltronfemi.cbxoperadorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
key :=0;
end;

procedure TFrmFiltronfemi.CbxCampoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
key :=0;
end;

procedure TFrmFiltronfemi.CbxOperacaoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
key :=0;
end;

procedure TFrmFiltronfemi.CbxOrdPorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
key :=0;
end;

procedure TFrmFiltronfemi.cbxoperadorKeyPress(Sender: TObject;
  var Key: Char);
begin
key :=#0;
end;

procedure TFrmFiltronfemi.CbxCampoKeyPress(Sender: TObject;
  var Key: Char);
begin
key :=#0;
end;

procedure TFrmFiltronfemi.CbxOperacaoKeyPress(Sender: TObject;
  var Key: Char);
begin
key :=#0;
end;

procedure TFrmFiltronfemi.CbxOrdPorKeyPress(Sender: TObject;
  var Key: Char);
begin
key :=#0;
end;

procedure TFrmFiltronfemi.aplicarfiltro;
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
        frmpesqnfemi.sclassificar := 'CÓDIGO';
      end;
    1:begin
        sOrdem:='dataemi';
        frmpesqnfemi.sclassificar := 'DATA EMISSÃO';
      end;
  ELSE
    sOrdem:='';
  END;

  with frmdados do
    begin
      cds_nfe.IndexName :=  sOrdem;
      frmpesqnfemi.iclassificar := cbxOrdPor.ItemIndex;
      frmpesqnfemi.sOrdenado := sOrdem;
      frmpesqnfemi.stbrodape.Panels[1].Text := 'ORDENADO POR '+frmpesqnfemi.sclassificar;
      frmpesqnfemi.lbllocalizar.Caption :=  frmpesqnfemi.sclassificar;
      frmpesqnfemi.edilocalizar.Text := '';
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
        1:sCampo:='DATAEMI';
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
              if cbxcampo.ItemIndex = 1 then
                 sinformacao := Quotedstr( formatdatetime('yyyy-mm-dd' ,  strtodate(ediinformacao.Text)   ))
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
                frmpesqnfemi.sfiltro := frmpesqnfemi.sfiltro +' AND ('+sfiltro+')';
              end
           else
              begin
                frmpesqnfemi.sfiltro := frmpesqnfemi.sfiltro +' OR ('+sfiltro+')';
              end;
           //endi
           frmpesqnfemi.stitrel := frmpesqnfemi.stitrel + ' '+cbxOperador.Text+' '+cbxcampo.Text+' '+cbxOperacao.Text+' '+QuotedStr(ediinformacao.Text);
           frmpesqnfemi.stbrodape.Panels[0].Text := frmpesqnfemi.stitrel;

         end
      else
         begin
           frmpesqnfemi.sfiltro :='('+sfiltro+')';

           //frmpesqnfemi.sfiltro := sfiltro ;
           frmpesqnfemi.stitrel := cbxcampo.Text+' '+cbxOperacao.Text+' '+QuotedStr(ediinformacao.Text);
           frmpesqnfemi.stbrodape.Panels[0].Text := 'FILTRO '+frmpesqnfemi.stitrel;
         end;
      //endi
      with frmdados do
        begin

          //frmpesqnfemi.sfiltro:=StringReplace(frmpesqnfemi.sfiltro, '/', '.', [rfReplaceAll, rfIgnoreCase]);


          frmdados.cds_nfe.Active := false;
          frmdados.sql_nfe.Active := false;
          frmdados.sql_nfe.SQL.Clear;
          frmdados.sql_nfe.SQL.Add('select * from nfe where '+ frmpesqnfemi.sfiltro  );

          //frmdados.sql_nfe.SQL.Add('select * from nfe where dataemi='+quotedstr('2015-01-22')  );

          frmdados.sql_nfe.Active := true;
          frmdados.cds_nfe.Active := true;

          //cds_nfe.Filtered := false;
          //cds_nfe.Filter := frmpesqnfemi.sfiltro;
          //cds_nfe.Filtered := true;
        end;
      //endth

      if frmpesqnfemi.pctdados.TabIndex = 1 then
         frmpesqnfemi.carregaficha;
      //endi

      cbxoperador.Enabled := true;
      cbxoperador.ItemIndex := 0;

    end;
  //endi
end;

procedure TFrmFiltronfemi.btnaplicarClick(Sender: TObject);
begin
aplicarfiltro;
frmpesqnfemi.totalg;
end;

procedure TFrmFiltronfemi.ediinformacaoKeyPress(Sender: TObject;
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

procedure TFrmFiltronfemi.btnlimparClick(Sender: TObject);
begin
with frmdados do
  begin

    frmdados.cds_nfe.Active := false;
    frmdados.sql_nfe.Active := false;
    frmdados.sql_nfe.SQL.Clear;
    frmdados.sql_nfe.SQL.Add('select * from nfe' );
    frmdados.sql_nfe.Active := true;
    frmdados.cds_nfe.Active := true;

    //cds_nfe.Filtered := false;
    //cds_nfe.Filter := '';

  end;
//endi

frmpesqnfemi.stbrodape.Panels[0].Text := '';
frmpesqnfemi.sfiltro := '';
frmpesqnfemi.stitrel := '';

cbxoperador.Enabled := false;
cbxoperador.ItemIndex := -1;

ediinformacao.Text := '';

if frmpesqnfemi.pctdados.TabIndex = 1 then
   frmpesqnfemi.carregaficha;
//endi

frmpesqnfemi.totalg;

end;

procedure TFrmFiltronfemi.CbxCampoDropDown(Sender: TObject);
begin
ediinformacao.Text := '';
end;

procedure TFrmFiltronfemi.ediinformacaoExit(Sender: TObject);
begin

if ediinformacao.Text = '' then
   exit;

if cbxcampo.ItemIndex = 1 then
   begin
     try
       strtodate(ediinformacao.Text);
     except
       showmessage('Formato de data inválida!');
       ediinformacao.SetFocus;

     end;

   end;
//endi
end;

end.
