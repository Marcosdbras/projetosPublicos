unit balanca;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, wwdbedit, Wwdotdot, Wwdbcomb, DB, Buttons,
  ExtCtrls, Collection, TFlatPanelUnit, ComCtrls, DBTables, Wwtable, Menus,
  AdvGlowButton, RzPrgres;

type
  Tfrmbalanca = class(TForm)
    dsconfig: TDataSource;
    URANO_PRODUTO: TwwTable;
    PopupMenu1: TPopupMenu;
    Iniciar1: TMenuItem;
    Fechar1: TMenuItem;
    Panel1: TPanel;
    MEMO1: TRichEdit;
    Label1: TLabel;
    combobalanca: TwwDBComboBox;
    Bevel1: TBevel;
    barra: TRzProgressBar;
    Panel2: TPanel;
    bitbtn1: TAdvGlowButton;
    bitbtn2: TAdvGlowButton;
    Bevel2: TBevel;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmbalanca: Tfrmbalanca;

implementation

uses modulo, principal;

{$R *.dfm}

function complet(palavra : string; quantd : integer; carac : string) : string;
var texto : string;
begin
   while length(palavra) < quantd do
     palavra := palavra+carac;
   result := palavra;
end;
function completat(palavra : string; quantd : integer; carac : string) : string;
var texto : string;
begin
   while length(palavra) < quantd do
     palavra := carac +palavra;
   result := palavra;
end;



procedure Tfrmbalanca.FormShow(Sender: TObject);
begin
  frmmodulo.qrconfig.open;
  MEMO1.TEXT := '';
end;

procedure Tfrmbalanca.BitBtn1Click(Sender: TObject);
var txt_produto, txt_nutri, txt_setor, txt_receita : textfile;
texto3,texto, texto1, texto2, texto4, TEXTO5 : string;
porc, CALo, VDCALo, CARB, VDCARB, PROT, VDPROT, GORD, VDGORD, SATU, VDSATU, COLE, VDCOLE, FIBR, VDFIBR, CALC, VDCALC, FERR, VDFERR, SODI, VDSODI : STRING;
pz : boolean;
posi : integer;

begin
    MEMO1.TEXT := '';
    frmmodulo.qrproduto.close;
    frmmodulo.qrproduto.SQL.Clear;
    frmmodulo.qrproduto.sql.add('select * from c000025 where situacao = 0 and USA_BALANCA = 1 order by codigo');
    frmmodulo.qrproduto.open;
    frmmodulo.qrproduto.First;
    BARRA.partscomplete := 0;
    barra.totalparts := frmmodulo.qrproduto.RecordCount;


    frmmodulo.qrreceita.close;
    frmmodulo.qrreceita.SQL.Clear;
    frmmodulo.qrreceita.SQL.Add('select * from c000024 order by codigo');
    frmmodulo.qrreceita.Open;

    if application.messagebox('Deseja diferenciar Peso de Unidade?','Aviso',mb_yesNo+mb_iconquestion) = idYes then  pz := true else pz := false;
    if combobalanca.Text = 'FILIZOLA' then
    begin

      assignfile(txt_produto,FRMMODULO.QRCONFIG.FIELDBYNAME('BALANCA_CAMINHO').ASSTRING+'cadtxt.txt'); // txt
      assignfile(txt_setor,FRMMODULO.QRCONFIG.FIELDBYNAME('BALANCA_CAMINHO').ASSTRING+'setortxt.txt'); // txt2
      assignfile(txt_receita,FRMMODULO.QRCONFIG.FIELDBYNAME('BALANCA_CAMINHO').ASSTRING+'rec_ass.txt'); // txt3
      assignfile(txt_nutri,FRMMODULO.QRCONFIG.FIELDBYNAME('BALANCA_CAMINHO').ASSTRING+'nutri.txt'); // txt3

      rewrite(txt_produto);
      rewrite(txt_setor);
      rewrite(txt_receita);
      rewrite(txt_nutri);
//      try
      while not frmModulo.qrproduto.eof do
      begin
        if (frmModulo.qrproduto.fieldbyname('codbarra').asstring <> '') and (length(frmModulo.qrproduto.fieldbyname('codbarra').asstring) < 6)  then
        begin
          memo1.Lines.Add(frmmodulo.qrproduto.fieldbyname('produto').asstring);
          Application.ProcessMessages;

          texto :=  frmModulo.qrproduto.fieldbyname('codbarra').asstring;
          texto1 := frmModulo.qrproduto.fieldbyname('produto').asstring;
          IF FRMMODULO.QRPRODUTO.FIELDBYNAME('PRECO_PROMOCAO').ASFLOAT <> 0 THEN
          BEGIN
            IF (DATE >= FRMMODULO.QRPRODUTO.FIELDBYNAME('DATA_PROMOCAO').ASDATETIME) AND (DATE <= FRMMODULO.QRPRODUTO.FIELDBYNAME('FIM_PROMOCAO').ASDATETIME) THEN
            BEGIN
              texto2 := formatfloat('###,###,##0.00',frmModulo.qrproduto.fieldbyname('preco_promocao').asfloat);
            END
            ELSE
              texto2 := formatfloat('###,###,##0.00',frmModulo.qrproduto.fieldbyname('precovenda').asfloat);
          END
          ELSE
            texto2 := formatfloat('###,###,##0.00',frmModulo.qrproduto.fieldbyname('precovenda').asfloat);






          texto3 := frmModulo.qrproduto.fieldbyname('validade').asstring;
          TEXTO4 := 'P';
          if pz then
          begin
            if frmModulo.qrproduto.fieldbyname('unidade').asstring = 'KG' then texto4 := 'P';
            if frmModulo.qrproduto.fieldbyname('unidade').asstring = 'Kg' then texto4 := 'P';
            if frmModulo.qrproduto.fieldbyname('unidade').asstring = 'kg' then texto4 := 'P';
            if frmModulo.qrproduto.fieldbyname('unidade').asstring = 'UN' then texto4 := 'U';
            if frmModulo.qrproduto.fieldbyname('unidade').asstring = 'Un' then texto4 := 'U';
            if frmModulo.qrproduto.fieldbyname('unidade').asstring = 'un' then texto4 := 'U';
          end;
          while length(texto) < 6 do texto := '0'+texto;
          while length(texto1) < 22 do texto1 := texto1+' ';
          while length(texto1) > 22 do delete(texto1,23,1);
          delete(texto2,pos(',',texto2),1);
          while length(texto2) < 7 do texto2 := '0'+texto2;
          while length(texto3) < 3 do texto3 := '0'+texto3;
          porc:= ''; CALo:= ''; VDCALo:= ''; CARB:= ''; VDCARB:= ''; PROT:= ''; VDPROT:= ''; GORD:= ''; VDGORD:= ''; SATU:= ''; VDSATU:= ''; COLE:= ''; VDCOLE:= ''; FIBR:= ''; VDFIBR:= ''; CALC:= ''; VDCALC:= ''; FERR:= ''; VDFERR:= ''; SODI:= ''; VDSODI :='';
          frmmodulo.qrinfnutricional_produto.Close;
          frmmodulo.qrinfnutricional_produto.SQL.Clear;
          frmmodulo.qrinfnutricional_produto.SQL.Add('select * from c000028 where codproduto = '''+frmmodulo.qrproduto.fieldbyname('codigo').asstring+'''');
          frmmodulo.qrinfnutricional_produto.open;

          if frmmodulo.qrinfnutricional_produto.RecordCount > 0 then
          begin
             porc :=   complet(frmModulo.QRINFNUTRICIONAL_PRODUTO.fieldbyname('porcao').asstring,35,' ');
             calo :=   completat(frmModulo.QRINFNUTRICIONAL_PRODUTO.fieldbyname('valor_calorico').asstring,5,'0');

             vdcalo := completat(frmModulo.QRINFNUTRICIONAL_PRODUTO.fieldbyname('valor_calorico_vd').asstring,4,'0');

             carb :=   completat(frmModulo.QRINFNUTRICIONAL_PRODUTO.fieldbyname('carboidratos').asstring,5,'0');
             vdcarb := completat(frmModulo.QRINFNUTRICIONAL_PRODUTO.fieldbyname('carboidratos_vd').asstring,4,'0');
             prot :=   completat(frmModulo.QRINFNUTRICIONAL_PRODUTO.fieldbyname('proteinas').asstring,5,'0');
             vdprot := completat(frmModulo.QRINFNUTRICIONAL_PRODUTO.fieldbyname('proteinas_vd').asstring,4,'0');
             gord :=   formatfloat('###0.0',frmModulo.QRINFNUTRICIONAL_PRODUTO.fieldbyname('gordurastotais').asfloat);
             vdgord := completat(frmModulo.QRINFNUTRICIONAL_PRODUTO.fieldbyname('gordurastotais_vd').asstring,4,'0');
             satu :=   formatfloat('###0.0',frmModulo.QRINFNUTRICIONAL_PRODUTO.fieldbyname('gordurassaturadas').asfloat);
             vdsatu := completat(frmModulo.QRINFNUTRICIONAL_PRODUTO.fieldbyname('gordurassaturadas_vd').asstring,4,'0');
             cole :=   completat(frmModulo.QRINFNUTRICIONAL_PRODUTO.fieldbyname('colesterol').asstring,5,'0');
             vdcole := completat(frmModulo.QRINFNUTRICIONAL_PRODUTO.fieldbyname('colesterol_vd').asstring,4,'0');
             fibr :=   completat(frmModulo.QRINFNUTRICIONAL_PRODUTO.fieldbyname('fibra').asstring,5,'0');
             vdfibr := completat(frmModulo.QRINFNUTRICIONAL_PRODUTO.fieldbyname('fibra_vd').asstring,4,'0');
             calc :=   formatfloat('###0.0',frmModulo.QRINFNUTRICIONAL_PRODUTO.fieldbyname('calcio').asfloat);
             vdcalc := completat(frmModulo.QRINFNUTRICIONAL_PRODUTO.fieldbyname('calcio_vd').asstring,4,'0');
             ferr :=   formatfloat('###0.0',frmModulo.QRINFNUTRICIONAL_PRODUTO.fieldbyname('ferro').asfloat);
             vdferr := completat(frmModulo.QRINFNUTRICIONAL_PRODUTO.fieldbyname('ferro_vd').asstring,4,'0');
             sodi :=   completat(frmModulo.QRINFNUTRICIONAL_PRODUTO.fieldbyname('sodio').asstring,5,'0');
             vdsodi := completat(frmModulo.QRINFNUTRICIONAL_PRODUTO.fieldbyname('sodio_vd').asstring,4,'0');

             posi := pos(',',gord); if posi  > 0 then delete(gord,posi,1);
             posi := pos(',',satu); if posi  > 0 then delete(satu,posi,1);
             posi := pos(',',calc); if posi  > 0 then delete(calc,posi,1);
             posi := pos(',',ferr); if posi  > 0 then delete(ferr,posi,1);
             gord := completat(gord,5,'0');
             satu := completat(satu,5,'0');
             calc := completat(calc,5,'0');
             ferr := completat(ferr,5,'0');
             writeln(txt_nutri,texto+porc+calo+vdcalo+carb+vdcarb+prot+vdprot+gord+vdgord+satu+vdsatu+cole+vdcole+fibr+vdfibr+calc+vdcalc+ferr+vdferr+sodi+vdsodi)
          end;
          writeln(txt_produto,texto+TEXTO4+texto1+texto2+TEXTO3);

          //grupo
          texto := 'GERAL       ';
          texto1 := frmModulo.qrproduto.fieldbyname('codbarra').asstring;
          TEXTO2 := '0';
          TEXTO3 := '0';
          while length(texto1) < 6 do texto1 := '0'+texto1;
          while length(texto2) < 4 do texto2 := '0'+texto2;
          while length(texto3) < 3 do texto3 := '0'+texto3;
          writeln(txt_setor,texto+texto1+texto2+texto3);


         //receita
         if frmmodulo.qrproduto.fieldbyname('codreceita').asstring <> '' then
         begin
           texto := 'GERAL       ';
           TEXTO1:= frmModulo.qrproduto.fieldbyname('codbarra').asstring;
           TEXTO2 := frmModulo.qrproduto.fieldbyname('codreceita').asstring;
           texto3 := frmModulo.qrproduto.fieldbyname('receita').asstring;
           while length(texto1) < 6 do texto1 := '0'+texto1;
           while length(texto2) < 6 do texto2 := '0'+texto2;
           while length(texto3) < 200 do texto3 := texto3+' ';
           while length(texto3) > 200 do delete(texto3,201,1);
           writeln(txt_receita,texto+texto1+texto2+texto3+'@');
         end
         else
         begin
           texto  := '';
           texto1 := '';
           texto2 := '';
           texto3 := '';
         end;


        end;
         barra.partscomplete := barra.partscomplete + 1;
        frmModulo.qrproduto.next;
      end;

      closefile(txt_produto);
      closefile(txt_setor);
      closefile(txt_receita);
      closefile(txt_nutri);
      showmessage('Processamento concluído!');



    end;









  if combobalanca.text = 'URANO' then
  begin
    URANO_PRODUTO.open;
    while URANO_PRODUTO.recordcount <> 0 do URANO_PRODUTO.delete;
    while not frmModulo.qrproduto.eof do
    begin
      URANO_PRODUTO.insert;
      URANO_PRODUTO.fieldbyname('codigo').asstring := frmModulo.qrproduto.fieldbyname('codbarra').asstring;
      URANO_PRODUTO.fieldbyname('nome').asstring := frmModulo.qrproduto.fieldbyname('produto').asstring;

          IF FRMMODULO.QRPRODUTO.FIELDBYNAME('PRECO_PROMOCAO').ASFLOAT <> 0 THEN
          BEGIN
            IF (DATE >= FRMMODULO.QRPRODUTO.FIELDBYNAME('DATA_PROMOCAO').ASDATETIME) AND (DATE <= FRMMODULO.QRPRODUTO.FIELDBYNAME('FIM_PROMOCAO').ASDATETIME) THEN
            BEGIN
      URANO_PRODUTO.fieldbyname('preco').asfloat := frmModulo.qrproduto.fieldbyname('preco_promocao').asfloat;
            END
            ELSE
      URANO_PRODUTO.fieldbyname('preco').asfloat := frmModulo.qrproduto.fieldbyname('precovenda').asfloat;
          END
          ELSE
                  URANO_PRODUTO.fieldbyname('preco').asfloat := frmModulo.qrproduto.fieldbyname('precovenda').asfloat;



      URANO_PRODUTO.fieldbyname('validade1').asstring := frmModulo.qrproduto.fieldbyname('validade').asstring;
      URANO_PRODUTO.fieldbyname('tipo').asstring := '0';
      URANO_PRODUTO.fieldbyname('validade2').asstring := 'D';
      URANO_PRODUTO.fieldbyname('receita').asstring := '0';
      URANO_PRODUTO.Post;
      barra.partscomplete := barra.partscomplete + 1;
      frmModulo.qrproduto.next;
    end;
    showmessage('Processamento concluído!');
  end;




    if combobalanca.text = 'TOLEDO' then
    begin
       memo1.Text := '';
       assignfile(txt_PRODUTO,FRMMODULO.QRCONFIG.FIELDBYNAME('BALANCA_CAMINHO').ASSTRING+'TXITENS.TXT');
       rewrite(txt_PRODUTO);
       while not frmModulo.qrproduto.eof do
       begin
         texto := frmModulo.qrproduto.fieldbyname('codbarra').asstring;
         texto1 := frmModulo.qrproduto.fieldbyname('produto').asstring;

          IF FRMMODULO.QRPRODUTO.FIELDBYNAME('PRECO_PROMOCAO').ASFLOAT <> 0 THEN
          BEGIN
            IF (DATE >= FRMMODULO.QRPRODUTO.FIELDBYNAME('DATA_PROMOCAO').ASDATETIME) AND (DATE <= FRMMODULO.QRPRODUTO.FIELDBYNAME('FIM_PROMOCAO').ASDATETIME) THEN
            BEGIN
              texto2 := formatfloat('###,###,##0.00',frmModulo.qrproduto.fieldbyname('preco_promocao').asfloat);
            END
            ELSE
              texto2 := formatfloat('###,###,##0.00',frmModulo.qrproduto.fieldbyname('precovenda').asfloat);
          END
          ELSE
            texto2 := formatfloat('###,###,##0.00',frmModulo.qrproduto.fieldbyname('precovenda').asfloat);







         texto3 := frmModulo.qrproduto.fieldbyname('validade').asstring;
         TEXTO4 := '0';
         if pz then
         begin
           if frmModulo.qrproduto.fieldbyname('UNIDADE').asstring = 'KG' then texto4 := '0';
           if frmModulo.qrproduto.fieldbyname('UNIDADE').asstring = 'Kg' then texto4 := '0';
           if frmModulo.qrproduto.fieldbyname('UNIDADE').asstring = 'kg' then texto4 := '0';
           if frmModulo.qrproduto.fieldbyname('UNIDADE').asstring = 'UN' then texto4 := '1';
           if frmModulo.qrproduto.fieldbyname('UNIDADE').asstring = 'Un' then texto4 := '1';
           if frmModulo.qrproduto.fieldbyname('UNIDADE').asstring = 'un' then texto4 := '1';
         end;

         while length(texto) < 6 do texto := '0'+texto;
         while length(texto1) < 50 do texto1 := texto1+' ';
         while length(texto1) > 50 do delete(texto1,51,1);
         delete(texto2,pos(',',texto2),1);
         while length(texto2) < 6 do texto2 := '0'+texto2;
         while length(texto3) < 3 do texto3 := '0'+texto3;
         if frmmodulo.qrproduto.fieldbyname('codreceita').asstring <> '' then
            texto5 := frmModulo.QRPRODUTO.fieldbyname('receita').asstring
         else
           texto5 := '';
         while length(texto5) < 250 do texto5 := texto5+' ';
         while length(texto5) > 250 do delete(texto5,251,1);
         writeln(txt_PRODUTO,'01'+'00'+TEXTO4+TEXTO+TEXTO2+TEXTO3+TEXTO1+TEXTO5);
         BARRA.partscomplete := BARRA.partscomplete + 1;
         memo1.Lines.Add(frmmodulo.qrproduto.fieldbyname('produto').asstring);
         frmModulo.qrproduto.next;
       END;
       closefile(txt_PRODUTO);
      showmessage('Processamento concluído!');
    end;



       if application.messagebox('Deseja iniciar o software da balança?','Aviso',mb_yesno+mb_iconquestion) = idyes then
      begin
         frmmodulo.qrconfig.open;
         Frmprincipal.Exec_File(frmmodulo.qrconfig.fieldbyname('balanca_programa').asstring);
         //\Filizola\TSC\TSC.exe
      end;










end;

procedure Tfrmbalanca.BitBtn2Click(Sender: TObject);
begin
  CLOSE;
end;

end.
