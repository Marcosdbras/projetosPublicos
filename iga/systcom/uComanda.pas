unit uComanda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, WinSkinData, Buttons, Grids, DBGrids, ExtCtrls,
  ComCtrls, DB;

type
  Tfrmcomanda = class(TForm)
    Skin: TSkinData;
    lbltittipo: TLabel;
    edidescricao: TEdit;
    btnsalvar: TBitBtn;
    dbgprodutos: TDBGrid;
    btnexcluir: TBitBtn;
    Image1: TImage;
    stb: TStatusBar;
    Bevel1: TBevel;
    btnconsultar: TBitBtn;
    Label1: TLabel;
    lbltotbruto: TLabel;
    lbltitcomanda: TLabel;
    Timer1: TTimer;
    procedure FormShow(Sender: TObject);
    procedure dbgprodutosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnsalvarClick(Sender: TObject);
    procedure edidescricaoKeyPress(Sender: TObject; var Key: Char);
    procedure buscarprodutos;
    procedure divinfo;
    procedure vestoqNv;
    procedure vestoqV;
    procedure limpargrav;
    procedure totais;
    procedure btnconsultarClick(Sender: TObject);
    procedure dbgprodutosKeyPress(Sender: TObject; var Key: Char);
    procedure btnexcluirClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Timer1Timer(Sender: TObject);

  private
    { Private declarations }
    stipoentrada:string;
    icomanda, icpro, icuni, iccli:integer;
    fprve, fqtde, fsubtotal, fsubtotalc, fpdescunit, fvdescunit, fQtdeEstq, fprcu:real;
    sdescricao,sdescl,sActDesc,stipocod,snpro:string;
    bmostrar, bprocura, bAtualiza:boolean;
  public
    { Public declarations }
  end;

var
  frmcomanda: Tfrmcomanda;

implementation
uses ugeral, udados, upesqprod;


{$R *.dfm}

procedure Tfrmcomanda.FormShow(Sender: TObject);
var
  vardir:string;
begin

  timer1.Enabled := false;

  lbltotbruto.Caption := '0,00';

  bVSEstq := true;
  bprocura := true;
  bVendabI := false;
  
  btnconsultar.Enabled := false;

  stipoentrada := 'C';

  vardir := extractfilepath(application.ExeName);

  lbltitcomanda.Caption := '';
  lbltittipo.Caption := 'Comanda';
  
  tabela := 'Vendab';
  edidescricao.Text := '';

  skin.SkinFile := vardir+'SKIN.SKN';
  skin.Active := true;

  with frmdados do
    begin

      Cds_Unidade.Active := false;
      Dbx_Unidade.Active := false;
      Dbx_Unidade.SQL.Clear;
      Dbx_Unidade.SQL.Add('Select * from Unidade');
      Dbx_Unidade.Active := true;
      Cds_Unidade.Active := true;

      cds_vendab.Active := false;
      dbx_vendab.Active := false;
      dbx_vendab.SQL.Clear;
      dbx_vendab.SQL.Add('Select * from vendab where cmdb = 0');
      dbx_vendab.Active := true;
      cds_vendab.Active := true;

    end;
  //endth

end;

procedure Tfrmcomanda.dbgprodutosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if ((shift=[ssCtrl]) and (key = vk_delete)) then
   abort;
//endi

end;

procedure Tfrmcomanda.btnsalvarClick(Sender: TObject);
  var sPrve, sQtde, sSubtotal, sOp, sEouS, sprcu, sSubtotalc, sdata_op:string;



begin

  if edidescricao.Text = '' then
     exit;
  //endi

  //if not bMostrar then
  //   exit;
  //endi

  sEouS := 'S';
  sPrve := floattostr(fprve);
  sPrcu := floattostr(fprcu);
  sQtde := floattostr(fqtde);
  sSubtotal := floattostr(fqtde*fprve);
  sSubtotalC := floattostr(fqtde*fprcu);
  sData_Op := datetostr(date);

  with frmdados do
    begin
      if stipoentrada = 'C' then
         begin

           try

             if length(edidescricao.Text) = 13 then
                begin

                  if copy(edidescricao.Text,1,1) = '7' then
                     begin
                       showmessage('Código de barras incorreto');
                       edidescricao.Text := '';
                       exit;
                     end;
                  //endi

                  if copy(edidescricao.Text,1,1) = '1' then
                     begin
                       showmessage('Código de barras incorreto');
                       edidescricao.Text := '';
                       exit;
                     end;
                  //endi

                  if copy(edidescricao.Text,1,1) = '9' then
                     begin
                       showmessage('Código de barras incorreto');
                       edidescricao.Text := '';
                       exit;
                     end;
                  //endi

                  icomanda := strtoint(copy(edidescricao.Text,10,4));
                end
             else
                begin
                  icomanda := strtoint(edidescricao.Text);
                end;
             //endi

           except

             edidescricao.Text := '';

             edidescricao.SetFocus;

             exit;

           end;

           btnconsultar.Enabled := true;

           cds_vendab.Active := false;
           cds_vendabcmdb.DefaultExpression := inttostr(icomanda);
           dbx_vendab.Active := false;
           dbx_vendab.SQL.Clear;
           dbx_vendab.SQL.Add('Select * from vendab where (cmdb = '+inttostr(icomanda)+') and (tpcmdb = '+quotedstr('B')+') and (ehvenda = '+quotedstr('F')+')' );
           dbx_vendab.Active := true;
           cds_vendab.Active := true;

           stipoentrada := 'P';
           lbltittipo.Caption := 'Produto';
           lbltitcomanda.Caption := '( '+inttostr(icomanda)+' )';

           edidescricao.Text := '';

           totais;
         end

      else
         begin

           if length(edidescricao.Text) = 13 then
              if copy(edidescricao.Text,1,1) = '8' then
                 begin
                   showmessage('Código de barras incorreto');
                   edidescricao.Text := '';
                   exit;
                 end;
              //endi
           //end



           btnconsultar.Enabled := false;

           dbx_Exec.Active := false;
           dbx_Exec.SQL.Clear;
           dbx_Exec.SQL.Add('Select * from Vendab Where ( cpro = '+inttostr(icpro)+') and ( cmdb = '+inttostr(iComanda)+') and (prve = '+decimal_is_point(sPrve)+') and (EouS = '+quotedstr(sEouS)+') and (tpcmdb = '+ quotedstr('B')+') and (ehvenda = '+ quotedstr('F')+')'  );
           dbx_Exec.Active := true;
           if dbx_Exec.RecordCount = 0 then
             begin
               dbx_Exec.Active := false;
               dbx_Exec.SQL.Clear;
               dbx_Exec.SQL.Add('Insert into Vendab(');

               if iccli > 0 then
                  dbx_Exec.SQL.Add('ccli, ');
               //endi

               if icpro > 0 then
                  dbx_Exec.SQL.Add('cpro, ');
               //endi

               if snpro <> '' then
                  dbx_Exec.SQL.Add('npro, ');
               //endi

               if sQtde <> '' then
                  dbx_Exec.SQL.Add('qtde, ');
               //endi

               if sPrve <> '' then
                  dbx_Exec.SQL.Add('prve, ');
               //endi

               if sSubtotal <> '' then
                  dbx_Exec.SQL.Add('subtotal, ');
               //endi

               if sEouS <> '' then
                  dbx_Exec.SQL.Add('EouS, ');
               //endi

               if icuni > 0 then
                  dbx_Exec.SQL.Add('cuin, ');
               //endi

               if sActDesc <> '' then
                  dbx_Exec.SQL.Add('ActDesc, ');
               //endi

               if sPrcu <> '' then
                  dbx_Exec.SQL.Add('prcu, ');
               //endi

               if sSubtotalC <> '' then
                  dbx_Exec.SQL.Add('SubtotalC, ');
               //endi

               dbx_Exec.SQL.Add('cmdb,');

               dbx_Exec.SQL.Add('tpcmdb');

               dbx_Exec.SQL.Add(')');

               dbx_Exec.SQL.Add(' values (');

               if iccli > 0 then
                  dbx_Exec.SQL.Add(inttostr(iccli)+',');
               //endi

               if icpro > 0 then
                  dbx_Exec.SQL.Add(inttostr(icpro)+',');
               //endi

               if snpro <> '' then
                  dbx_Exec.SQL.Add(quotedstr(snpro)+',');
               //endi

               if sQtde <> '' then
                  dbx_Exec.SQL.Add(decimal_is_pointf(sQtde)+',');
               //endi

               if sPrve <> '' then
                  dbx_Exec.SQL.Add(decimal_is_point(sPrve)+',');
               //endi

               if sSubtotal <> '' then
                  dbx_Exec.SQL.Add(decimal_is_point(sSubtotal)+',');
               //endi

               if sEouS <> '' then
                  dbx_Exec.SQL.Add(quotedstr(sEouS)+',');
               //endi

               if icuni > 0 then
                  dbx_Exec.SQL.Add(inttostr(icuni)+',');
               //endi

               if sActDesc <> '' then
                  dbx_Exec.SQL.Add(quotedstr(sActDesc)+',');
               //endi

               if sPrcu <> '' then
                  dbx_Exec.SQL.Add(decimal_is_point(sPrcu)+',');
               //endi

               if sSubtotalC <> '' then
                  dbx_Exec.SQL.Add(decimal_is_point(sSubtotalC)+',');
               //endi

               dbx_Exec.SQL.Add(inttostr(iComanda)+',');

               dbx_Exec.SQL.Add(quotedstr('B'));

               dbx_Exec.SQL.Add(')');

               dbx_Exec.ExecSQL;

               sOp := 'I';
             end
          else
             begin
               if icpro > 0 then
                  begin
                    dbx_Exec.Active := false;
                    dbx_Exec.SQL.Clear;
                    dbx_Exec.SQL.Add('Update Vendab set qtde = qtde + '+decimal_is_pointf(sQtde)+' Where ( cpro = '+inttostr(icpro)+') and ( cmdb = '+inttostr(iComanda)+') and (prve = '+decimal_is_point(sPrve)+') and (EouS = '+quotedstr(sEouS)+') and (tpcmdb = '+quotedstr('B')+') and (ehvenda = '+quotedstr('F')+')'  );
                    dbx_Exec.ExecSQL;

                    dbx_Exec.SQL.Clear;
                    dbx_Exec.SQL.Add('Update Vendab set Subtotal = Subtotal + '+decimal_is_point(sSubtotal)+' Where ( cpro = '+inttostr(icpro)+') and ( cmdb = '+inttostr(iComanda)+') and (prve = '+decimal_is_point(sPrve)+') and (EouS = '+quotedstr(sEouS)+') and (tpcmdb = '+quotedstr('B')+') and (ehvenda = '+quotedstr('F')+')'  );
                    dbx_Exec.ExecSQL;

                    dbx_Exec.SQL.Clear;
                    dbx_Exec.SQL.Add('Update Vendab set SubtotalC = SubtotalC + '+decimal_is_point(sSubtotalC)+' Where ( cpro = '+inttostr(icpro)+') and ( cmdb = '+inttostr(iComanda)+') and (prve = '+decimal_is_point(sPrve)+') and (EouS = '+quotedstr(sEouS)+') and (tpcmdb = '+quotedstr('B')+') and (ehvenda = '+quotedstr('F')+')'  );
                    dbx_Exec.ExecSQL;

                    sOp := 'A';
                  end
               else
                  begin
                    //dbx_Exec.Active := false;
                    //dbx_Exec.SQL.Clear;
                    //dbx_Exec.SQL.Add('Insert into Vendab(controle, cpro, npro, qtde, prve, subtotal, EouS, cuin, ActDesc, prcu, SubtotalC ) values (');
                    //dbx_Exec.SQL.Add(inttostr(iControle)+','+inttostr(icpro)+','+quotedstr(pnlnpro.Caption)+',');
                    //dbx_Exec.SQL.Add(decimal_is_point(sQtde)+','+decimal_is_point(sPrve)+','+decimal_is_point(sSubtotal)+','+quotedstr(sEouS)+','+inttostr(icuni)+','+quotedstr(sActDesc)+','+decimal_is_point(sPrcu)+','+decimal_is_point(sSubtotalC)+')');
                    //dbx_Exec.ExecSQL;

                    dbx_Exec.Active := false;
                    dbx_Exec.SQL.Clear;
                    dbx_Exec.SQL.Add('Insert into Vendab(');

                    if iccli > 0 then
                       dbx_Exec.SQL.Add('ccli, ');
                    //endi

                    if icpro > 0 then
                       dbx_Exec.SQL.Add('cpro, ');
                    //endi

                    if snpro <> '' then
                       dbx_Exec.SQL.Add('npro, ');
                    //endi

                    if sQtde <> '' then
                       dbx_Exec.SQL.Add('qtde, ');
                    //endi

                    if sPrve <> '' then
                       dbx_Exec.SQL.Add('prve, ');
                    //endi

                    if sSubtotal <> '' then
                       dbx_Exec.SQL.Add('subtotal, ');
                    //endi

                    if sEouS <> '' then
                       dbx_Exec.SQL.Add('EouS, ');
                    //endi

                    if icuni > 0 then
                       dbx_Exec.SQL.Add('cuin, ');
                    //endi

                    if sActDesc <> '' then
                       dbx_Exec.SQL.Add('ActDesc, ');
                    //endi

                    if sPrcu <> '' then
                       dbx_Exec.SQL.Add('prcu, ');
                    //endi

                    if sSubtotalC <> '' then
                       dbx_Exec.SQL.Add('SubtotalC, ');
                    //endi

                    dbx_Exec.SQL.Add('cmdb,');

                    dbx_Exec.SQL.Add('tpcmdb');

                    dbx_Exec.SQL.Add(')');

                    dbx_Exec.SQL.Add(' values (');

                    if iccli > 0 then
                       dbx_Exec.SQL.Add(inttostr(iccli)+',');
                    //endi

                    if icpro > 0 then
                       dbx_Exec.SQL.Add(inttostr(icpro)+',');
                    //endi

                    if snpro <> '' then
                       dbx_Exec.SQL.Add(quotedstr(snpro)+',');
                    //endi

                    if sQtde <> '' then
                       dbx_Exec.SQL.Add(decimal_is_pointf(sQtde)+',');
                    //endi

                    if sPrve <> '' then
                       dbx_Exec.SQL.Add(decimal_is_point(sPrve)+',');
                    //endi

                    if sSubtotal <> '' then
                       dbx_Exec.SQL.Add(decimal_is_point(sSubtotal)+',');
                    //endi

                    if sEouS <> '' then
                       dbx_Exec.SQL.Add(quotedstr(sEouS)+',');
                    //endi

                    if icuni > 0 then
                       dbx_Exec.SQL.Add(inttostr(icuni)+',');
                    //endi

                    if sActDesc <> '' then
                       dbx_Exec.SQL.Add(quotedstr(sActDesc)+',');
                    //endi

                    if sPrcu <> '' then
                       dbx_Exec.SQL.Add(decimal_is_point(sPrcu)+',');
                    //endi

                    if sSubtotalC <> '' then
                       dbx_Exec.SQL.Add(decimal_is_point(sSubtotalC)+',');
                    //endi

                    dbx_Exec.SQL.Add(inttostr(iComanda)+',');

                    dbx_Exec.SQL.Add(quotedstr('B'));

                    dbx_Exec.SQL.Add(')');

                    dbx_Exec.ExecSQL;

                    sOp := 'I';
                  end;
               //endi
             end;
          //endi

          //cds_vendab.Active := false;
          //dbx_vendab.Active := false;
          //dbx_vendab.SQL.Clear;
          //dbx_vendab.SQL.Add('Select * from vendab where cmdb = 0');
          //dbx_vendab.Active := true;
          //cds_vendab.Active := true;

          //lbltotbruto.Caption := '0,00';

          cds_Vendab.Active := false;
          dbx_vendab.Active := false;
          dbx_Vendab.SQL.Clear;
          dbx_Vendab.SQL.Add('Select * from Vendab where (cmdb = '+inttostr(icomanda)+') and (tpcmdb = '+quotedstr('B')+') and (ehvenda = '+quotedstr('F')+')');
          dbx_Vendab.Active := true;
          cds_Vendab.Active := true;

          if sOp = 'I' then
             cds_Vendab.Last;
          //endi

          dbx_exec.Active := false;

          totais;

          stipoentrada := 'C';
          lbltittipo.Caption := 'Comanda';

          edidescricao.Text := '';


       end;
    //endi





    end;
  //endth

  if frmdados.cds_Vendab.RecordCount > 0 then
     begin
       //ativabotoes;
       //spdorc.Enabled := false;
       //spdcaixaap.Enabled := false;
       //cbxnomefun.Enabled := false;
       //spdsangria.Enabled := false;
       //spdtroco.Enabled := false;
     end;
  //end


end;

procedure Tfrmcomanda.edidescricaoKeyPress(Sender: TObject; var Key: Char);
begin
try
if key = #13 then
   begin
     if stipoentrada = 'P' then
        begin
          divinfo;
        end;
     //endi
     btnsalvar.Click;
     key := #0;

   end;
//endi

except
  if edidescricao.Enabled then
     edidescricao.SetFocus;
  //endi
end;

end;


procedure tfrmcomanda.divinfo;
var
  iposi,iposf, iposDp, iposDv:integer;
  fprvelocal:real;
  sdescl:string;
begin
  try
     iposi := pos('*',edidescricao.Text);
     if iposi > 0 then
        begin
          fqtde := strtofloat(copy(edidescricao.Text,1,iposi-1));
          sDescricao := copy(edidescricao.Text,iposi+1,length(edidescricao.Text))
        end
     else
        begin
          fqtde := 1;
          sDescricao := edidescricao.Text;
        end;
     //endi

     iposDp := pos('-',sDescricao);
     if iposDp > 0 then
        begin
          sdescl := copy(sDescricao,iposDp+1,length(sDescricao));
          sDescricao := copy(sDescricao,1,iposDp-1);
          iposDv := pos('%',sdescl);
          if iposDv > 0 then
             fpdescunit := strtofloat(copy(sdescl,1,iposDv-1))
          else
             fvdescunit := strtofloat(sdescl);
          //endi
        end;
     //endi

     iposf := pos('=',sDescricao);
     if iposf > 0 then
        begin
          fprvelocal := strtofloat(copy(sDescricao,iposf+1,length(sDescricao)));
          sDescricao := copy(sDescricao,1,iposf-1);
        end;
     //endi

     if bprocura then
        buscarprodutos;
     //endi

     if iposf > 0 then
        fprve := fprvelocal;
     //endi

     if bprocura then
        begin

           if not bMostrar then
              fqtde := 0;
           //endi

           //lblqtde.Caption := formatfloat('###,###,##0.000',fqtde);
           //lblprve.Caption := formatfloat('###,###,##0.00',fprve);
           //lblsubtotal.Caption := formatfloat('###,###,##0.00',fprve*fqtde);
           //lblsubtotC.Caption := formatfloat('###,###,##0.00',fprcu*fqtde);

           fsubtotal := fprve*fqtde;
           fsubtotalC  := fprcu*fqtde;


        end;
     //endi
   except
     if edidescricao.Enabled then
        edidescricao.SetFocus;
     //endi
   end;

end;




procedure tfrmcomanda.buscarprodutos;
begin



if sDescricao = '' then
   exit;
//endi
with frmdados do
  begin
    dbx_vProdutos.Active := false;
    dbx_vProdutos.SQL.Clear;
    dbx_vProdutos.SQL.Add('Select * from vProdutos Where cBar = '+Quotedstr(sDescricao));
    dbx_vProdutos.Active := true;
    if dbx_vProdutos.RecordCount = 0 then
       begin
         dbx_vProdutos.Active := false;
         dbx_vProdutos.SQL.Clear;
         dbx_vProdutos.SQL.Add('Select * from vProdutos Where cAux = '+Quotedstr(sDescricao));
         dbx_vProdutos.Active := true;
         if dbx_vProdutos.RecordCount = 0 then
            begin
              dbx_vProdutos.Active := false;
              dbx_vProdutos.SQL.Clear;
              dbx_vProdutos.SQL.Add('Select * from vProdutos Where Descricao = '+Quotedstr(sDescricao));
              dbx_vProdutos.Active := true;
              if dbx_vProdutos.RecordCount = 0 then
                 begin
                   try
                     dbx_vProdutos.Active := false;
                     dbx_vProdutos.SQL.Clear;
                     dbx_vProdutos.SQL.Add('Select * from vProdutos Where Codigo = '+Quotedstr(sDescricao));
                     dbx_vProdutos.Active := true;
                     if dbx_vProdutos.RecordCount = 0 then
                        begin
                          icpro := 0;
                          icuni := 0;
                          fQtdeEstq := 0;
                          sActDesc := 'T';
                          //pnlnpro.Caption := sDescricao;
                          snpro := sDescricao;
                          //pnlnpro.Visible := true;
                          bMostrar := false;
                          sTipoCod := '';
                          //rchrodape.Lines.Clear;
                          //rchrodape.Lines.Add('Informação não existe!!!');
                          stb.Panels[0].Text := 'Informação não existe!!!';


                        end
                     else
                        begin
                          //pnlnpro.Visible := true;
                          //pnlnpro.Caption := dbx_vProdutos.fieldbyname('descricao').asString;
                          snpro := dbx_vProdutos.fieldbyname('descricao').asString;
                          icpro := dbx_vProdutos.fieldbyname('codigo').asInteger;
                          icuni := dbx_vProdutos.fieldbyname('cuni').asInteger;
                          fprve := dbx_vProdutos.fieldbyname('prve').asfloat;
                          fprcu := dbx_vProdutos.fieldbyname('prcu').asfloat;
                          fQtdeEstq := dbx_vProdutos.fieldbyname('Qua').asfloat;
                          sActDesc := dbx_vProdutos.fieldbyname('ActDesc').asString;
                          bMostrar := true;
                          sTipoCod := 'Codigo';



                        end
                     //endi
                   except
                     if edidescricao.text <> '' then
                        begin
                          if bAltDesc then
                             begin
                               icpro := 0;
                               icuni := 0;
                               fQtdeEstq := 0;
                               sActDesc := 'T';
                               //pnlnpro.Caption := sDescricao;
                               snpro := sDescricao;
                               //pnlnpro.Visible := true;
                               bMostrar := true;
                               sTipoCod := '';
                             end
                          else
                             begin
                               icpro := 0;
                               icuni := 0;
                               fQtdeEstq := 0;
                               sActDesc := 'T';
                               //pnlnpro.Caption := sDescricao;
                               snpro := sDescricao;
                               //pnlnpro.Visible := true;
                               bMostrar := false;
                               sTipoCod := '';



                               //rchrodape.Lines.Clear;
                               //rchrodape.Lines.Add('Permissão Negada Venda Sem Cadastro de Produto!!!');
                             end;
                          //endi
                        end
                     else
                        begin
                          icpro := 0;
                          icuni := 0;
                          fQtdeEstq := 0;
                          sActDesc := 'T';
                          //pnlnpro.Caption := '';
                          snpro := '';
                          //pnlnpro.Visible := true;
                          bMostrar := false;
                          sTipoCod := '';
                        end;
                     //endi
                   end
                 end
              else
                 begin
                   //pnlnpro.Visible := true;
                   //pnlnpro.Caption := dbx_vProdutos.fieldbyname('descricao').asString;
                   snpro := dbx_vProdutos.fieldbyname('descricao').asString;
                   icpro := dbx_vProdutos.fieldbyname('codigo').asInteger;
                   icuni := dbx_vProdutos.fieldbyname('cuni').AsInteger;
                   fprve := dbx_vProdutos.fieldbyname('prve').asfloat;
                   fprcu := dbx_vProdutos.fieldbyname('prcu').asfloat;
                   fQtdeEstq := dbx_vProdutos.fieldbyname('Qua').asfloat;
                   sActDesc := dbx_vProdutos.fieldbyname('ActDesc').asString;
                   bMostrar := true;
                   sTipoCod := 'Desc';
                 end
              //endi
            end
         else
            begin
              //pnlnpro.Visible := true;
              //pnlnpro.Caption := dbx_vProdutos.fieldbyname('descricao').asString;
              snpro := dbx_vProdutos.fieldbyname('descricao').asString;
              icpro := dbx_vProdutos.fieldbyname('codigo').asInteger;
              icuni := dbx_vProdutos.fieldbyname('cuni').asInteger;
              fprve := dbx_vProdutos.fieldbyname('prve').asfloat;
              fprcu := dbx_vProdutos.fieldbyname('prcu').asfloat;
              fQtdeEstq := dbx_vProdutos.fieldbyname('qua').asfloat;
              sActDesc := dbx_vProdutos.fieldbyname('ActDesc').asString;
              bMostrar := true;
              sTipoCod := 'cAux';
            end
         //endi
       end
    else
       begin
         //pnlnpro.Visible := true;
         //pnlnpro.Caption := dbx_vProdutos.fieldbyname('descricao').asString;
         snpro := dbx_vProdutos.fieldbyname('descricao').asString;
         icpro := dbx_vProdutos.fieldbyname('codigo').asInteger;
         icuni := dbx_vProdutos.fieldbyname('cuni').asInteger;
         fprve := dbx_vProdutos.fieldbyname('prve').asfloat;
         fprcu := dbx_vProdutos.fieldbyname('prcu').asfloat;
         fQtdeEstq := dbx_vProdutos.fieldbyname('Qua').asfloat;
         sActDesc := dbx_vProdutos.fieldbyname('ActDesc').asString;
         bMostrar := true;
         sTipoCod := 'cBar';
       end
    //endi
  end;
//end

//if (not bVSEstq) and (rgbtipoop.ItemIndex = 1) and (not ckbentrada.Checked)then


if (not bVSEstq)then
   begin
     if (icpro > 0) then
        begin
          vestoqNv;
        end;
     //endi
   end
else
   begin
     if (icpro > 0) then
        begin
          vestoqv;
        end;
     //endi
   end;
//endi

if stipocod = 'cBar' then
  begin
     //if (not pnlfechamento.Visible)then
     //   begin

     btnsalvar.Click;

     //   end;
     //endi
     //limpargrav;
     //pnlnpro.Visible := false;
     if edidescricao.Enabled then
        edidescricao.SetFocus;
     //endi
     bMostrar := false;
  end;
//endi



end;

procedure Tfrmcomanda.vestoqNv;
var
  fprojecao:real;

begin
    with frmdados do
      begin
        dbx_exec.Active := false;
        dbx_exec.SQL.Clear;
        dbx_exec.SQL.Add('Select sum(qtde) as tqtde from vendab where (cpro = '+inttostr(icpro)+') and ( EouS = '+QuotedStr('S')+') and cmdb = '+inttostr(iComanda));
        dbx_exec.Active := true;
        fprojecao := fQtde+dbx_exec.fieldbyname('tqtde').asfloat;
        dbx_exec.Active := false;
      end;
    //endi
    if fprojecao > fQtdeEstq then
       begin
         sActDesc := 'T';
         //pnlnpro.Caption := sDescricao;
         snpro := sDescricao;
         //pnlnpro.Visible := true;
         bMostrar := false;
         sTipoCod := '';
         //rchrodape.Lines.Clear;
         //rchrodape.Lines.Add('Estq. Insuficiente, Contate o Gerente!!! Qtde Atual: '+Formatfloat('###,###,##0.000',fQtdeEstq));
         fQtdeEstq := 0;
         icpro := 0;
         icuni := 0;
       end;
    //endi
end;

procedure Tfrmcomanda.vestoqV;
var
  fprojecao:real;

begin
    with frmdados do
      begin
        dbx_exec.Active := false;
        dbx_exec.SQL.Clear;
        dbx_exec.SQL.Add('Select sum(qtde) as tqtde from vendab where (cpro = '+inttostr(icpro)+') and ( EouS = '+QuotedStr('S')+') and cmdb = '+inttostr(iComanda));
        dbx_exec.Active := true;
        fprojecao := fQtde+dbx_exec.fieldbyname('tqtde').asfloat;
        dbx_exec.Active := false;
      end;
    //endi
    if fprojecao > fQtdeEstq then
       begin
         //gera relatorio venda com estoque insuficiente
         //com programação da entrega
       end;
    //endi
end;

procedure tfrmcomanda.limpargrav;
begin
  //pnlnpro.Caption := '';
  //snpro := '';
  edidescricao.Text := '';
  lbltotbruto.Caption := '0,00';
  //lblqtde.Caption := '0,000';
  //lblprve.Caption := '0,00';
  //lblsubtotal.Caption := '0,00';
  fprve := 0;
  fqtde := 0;
  fprcu := 0;
end;

procedure Tfrmcomanda.totais;
begin


  with frmdados do
    begin

      dbx_exec.Active := false;
      dbx_exec.SQL.Clear;
      dbx_exec.SQL.Add('Select sum(qtde*prve) as totbruto from Vendab where (cmdb = '+inttostr(icomanda)+') and (EouS = '+quotedstr('E')+') and (tpcmdb = '+quotedstr('B')+') and (ehvenda = '+ quotedstr('F')+')'    );
      dbx_exec.Active := true;
      //lbltote.Caption := formatfloat('###,###,##0.00',dbx_exec.fieldbyname('totbruto').asfloat);

      dbx_exec.Active := false;
      dbx_exec.SQL.Clear;
      dbx_exec.SQL.Add('Select sum(qtde) as totitens from Vendab where (cmdb = '+inttostr(icomanda)+') and (EouS = '+quotedstr('S')+') and (tpcmdb = '+quotedstr('B')+') and (ehvenda = '+ quotedstr('F')+')');
      dbx_exec.Active := true;
      //lbltotitens.Caption := formatfloat('00000',dbx_exec.fieldbyname('totitens').asfloat);

      dbx_exec.Active := false;
      dbx_exec.SQL.Clear;
      dbx_exec.SQL.Add('Select sum(qtde*prve) as totbruto from Vendab where (cmdb = '+inttostr(icomanda)+') and (EouS = '+quotedstr('S')+') and (tpcmdb = '+quotedstr('B')+') and (ehvenda = '+ quotedstr('F')+')');
      dbx_exec.Active := true;
      lbltotbruto.Caption := formatfloat('###,###,##0.00',dbx_exec.fieldbyname('totbruto').asfloat);

      //showmessage(formatfloat('###,###,##0.00',dbx_exec.fieldbyname('totbruto').asfloat));

      dbx_exec.Active := false;
      dbx_exec.SQL.Clear;
      dbx_exec.SQL.Add('Select sum(qtde*prcu) as totCs from Vendab where (cmdb = '+inttostr(icomanda)+') and (EouS = '+quotedstr('S')+') and (tpcmdb = '+quotedstr('B')+') and (ehvenda = '+ quotedstr('F')+')');
      dbx_exec.Active := true;
      //lbltotCs.Caption := formatfloat('###,###,##0.00',dbx_exec.fieldbyname('totCs').asfloat);

      dbx_exec.Active := false;
      dbx_exec.SQL.Clear;
      dbx_exec.SQL.Add('Select sum(qtde*prcu) as totCe from Vendab where (cmdb = '+inttostr(icomanda)+') and (EouS = '+quotedstr('E')+') and (tpcmdb = '+quotedstr('B')+') and (ehvenda = '+ quotedstr('F')+')');
      dbx_exec.Active := true;
      //lbltotCe.Caption := formatfloat('###,###,##0.00',dbx_exec.fieldbyname('totCe').asfloat);

      dbx_exec.Active := false;
      dbx_exec.SQL.Clear;
      dbx_exec.SQL.Add('Select sum(qtde*prve) as totbruto from Vendab where (cmdb = '+inttostr(icomanda)+') and (EouS = '+quotedstr('S')+')  and ( actdesc = '+quotedstr('F')+') and (tpcmdb = '+quotedstr('B')+') and (ehvenda = '+ quotedstr('F')+')');
      dbx_exec.Active := true;
      //lblabsdesc.Caption := formatfloat('###,###,##0.00',dbx_exec.fieldbyname('totbruto').asfloat);

      dbx_exec.Active := false;
      dbx_exec.SQL.Clear;
      dbx_exec.SQL.Add('Select sum(qtde*prve) as totbruto from Vendab where (cmdb = '+inttostr(icomanda)+') and (EouS = '+quotedstr('S')+')  and ( actdesc = '+quotedstr('T')+') and (tpcmdb = '+quotedstr('B')+') and (ehvenda = '+ quotedstr('F')+')');
      dbx_exec.Active := true;
      //ftotGprodD := dbx_exec.fieldbyname('totbruto').asfloat;

      //edivaldesc.Text := Formatfloat('0.00',strToFLoat(tirapontos(edipDesc.text))/100*ftotGprodD);
      //edivaldesc.Text := AlinEdNumD(edivaldesc);

      //editotpagar.Text := FormatFloat('0.00',((ftotGprodD-strToFLoat(tirapontos(edipDesc.text))/100*ftotGprodD) - strtofloat(tirapontos(lbltote.Caption))));
      //editotpagar.Text := FormatFloat('0.00',((ftotGprodD-ftoteT-strToFLoat(tirapontos(edivalDesc.text)))/100*(ftotGprodD-ftoteT)));
      //sTotPagarA := FormatFloat('0.00',((ftotGprodD-strToFLoat(tirapontos(edipDesc.text))/100*ftotGprodD) - strtofloat(tirapontos(lbltote.Caption))));

      //editotpagar.Text := AlinEdNumD(editotpagar);
      //lbltotal.Caption := formatfloat('###,###,##0.00',strToFLoat(tirapontos(editotpagar.Text))+strToFLoat(tirapontos(lblabsdesc.caption)));
      //lbltotpagar.Caption := formatfloat('###,###,##0.00',strtofloat(tirapontos(editotpagar.Text))+strtofloat(tirapontos(lblabsdesc.Caption))-strtofloat(tirapontos(lbltote.Caption)));
      //lbltotpagar.Caption := formatfloat('###,###,##0.00',strtofloat(tirapontos(editotpagar.Text))+strtofloat(tirapontos(lblabsdesc.Caption)));

      dbx_exec.Active := false;

    end;
  //endw


end;




procedure Tfrmcomanda.btnconsultarClick(Sender: TObject);
begin
  if edidescricao.Enabled then
     edidescricao.SetFocus;
  //endi   
  frmpesqprodD := tfrmpesqprodD.create(self);
  frmpesqprodD.ShowModal;
  frmpesqprodD.Free;

end;

procedure Tfrmcomanda.dbgprodutosKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
   begin
     if frmdados.Cds_Vendab.State in [dsinsert,dsedit] then
        begin
          frmdados.Cds_vendab.post;
        end;
     //endi
   end;
//endi
end;

procedure Tfrmcomanda.btnexcluirClick(Sender: TObject);
begin
  if application.MessageBox('Deseja Realmente Cancelar Esse Registro?','Atenção',mb_YesNo + mb_DefButton2) = idYes then
     begin
       frmdados.Cds_Vendab.Delete;
       totais;
      end;
   //endi


end;

procedure Tfrmcomanda.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

stb.Panels[0].Text := '';

if key = vk_escape then
   begin

     with frmdados do
       begin
         cds_vendab.Active := false;
         dbx_vendab.Active := false;
         dbx_vendab.SQL.Clear;
         dbx_vendab.SQL.Add('Select * from vendab where cmdb = 0');
         dbx_vendab.Active := true;
         cds_vendab.Active := true;
       end;
     //endth

     lbltotbruto.Caption := '0,00';
     btnconsultar.Enabled := false;

     stipoentrada := 'C';
     lbltittipo.Caption := 'Comanda';

     edidescricao.Text := '';


   end;
//endi
end;

procedure Tfrmcomanda.Timer1Timer(Sender: TObject);
begin
  with frmdados do
    begin
      cds_vendab.Active := false;
      dbx_vendab.Active := false;
      dbx_vendab.SQL.Clear;
      dbx_vendab.SQL.Add('Select * from vendab where cmdb = 0');
      dbx_vendab.Active := true;
      cds_vendab.Active := true;
    end;
  //endth

  lbltotbruto.Caption := '0,00';
  btnconsultar.Enabled := false;

  stipoentrada := 'C';
  lbltittipo.Caption := 'Comanda';

  edidescricao.Text := '';

end;

end.
