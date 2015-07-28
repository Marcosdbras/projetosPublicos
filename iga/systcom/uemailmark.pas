unit uemailmark;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IdMessage, IdSocks, IdIOHandler, IdIOHandlerSocket,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdMessageClient, IdSMTP, StdCtrls, SqlExpr, Db, ExtCtrls, Buttons;

type
  Tfrmemailmark = class(TForm)
    SMTP: TIdSMTP;
    IOHSocket: TIdIOHandlerSocket;
    SocksInfo: TIdSocksInfo;
    MSG: TIdMessage;
    sdgemail: TSaveDialog;
    pnlcentral: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    lblnnf: TLabel;
    lblnped: TLabel;
    btnenviar: TButton;
    ediassunto: TEdit;
    edinome: TEdit;
    mmomsg: TMemo;
    btnsalvar: TButton;
    lbldest: TButton;
    lbxdest: TListBox;
    DlgAbrir: TOpenDialog;
    spdconfirma: TSpeedButton;
    Timer1: TTimer;
    procedure btncancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnenviarClick(Sender: TObject);
    procedure revisamsg;
    procedure btnsalvarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure lbldestClick(Sender: TObject);
    procedure percorreArquivoTexto ( nomeDoArquivo: String );
    procedure spdconfirmaClick(Sender: TObject);
    procedure MontaEmail(E: TStrings);
  private
    { Private declarations }
    bAvista, bReimp:boolean;
    inorc, inped, iccli, iParcDup1, iParcDup2, iParcDup3, iParcDup4:integer;
    sNomeCli, sEnderecoent, sComplent, sBairroent, sCidadeent, sEstadoent,
    scepent, sTelefoneent, sContato, sVendedor, sDataF, sDataImp, sHoraImp, sCodCli,
    sFantasia, sTelefones, svlrdup1, svlrdup2, svlrdup3, svlrdup4, sNumDup1, sNumDup2,
    sNumDup3, sNumDup4, sVctDup1, sVctDup2, sVctDup3, sVctDup4 :string;

    slist:tstrings;
  public
    { Public declarations }
  end;

var
  frmemailmark: Tfrmemailmark;

implementation
  uses ugeral, upesqvd, udados, uImpNF, uPrincipal;
{$R *.dfm}

procedure Tfrmemailmark.btncancelarClick(Sender: TObject);
begin
close;
end;

procedure Tfrmemailmark.FormShow(Sender: TObject);
var
  ResultSet : tCustomSqlDataSet;
  SqlStMt : String;
begin

  {


  if frmdados.Cds_sVenda.FieldByName('nped').asInteger = 0 then
     begin
       SqlStMt := 'Select gen_id(Gen_nPed,1) as Valor from RDB$DATABASE;';
       ResultSet := nil;
       frmdados.Sql_Dados.Execute(SqlStMt,nil,@ResultSet);
       if Assigned(ResultSet) then
          iNPed := ResultSet.fieldbyname('valor').asInteger;
       //endi
       frmdados.Cds_sVenda.Edit;
       frmdados.Cds_sVenda.FieldByName('nped').asInteger := iNped;
       frmdados.Cds_sVenda.Post;
      end;
  //endi

  SqlStMt := 'Select gen_id(Gen_nNf,0) as Valor from RDB$DATABASE;';
  ResultSet := nil;
  frmdados.Sql_Dados.Execute(SqlStMt,nil,@ResultSet);
  if Assigned(ResultSet) then
     lblnnf.Caption  := formatfloat('00000',ResultSet.fieldbyname('valor').asInteger+1);
  //endi

  SqlStMt := 'Select gen_id(Gen_Nped,0) as Valor from RDB$DATABASE;';
  ResultSet := nil;
  frmdados.Sql_Dados.Execute(SqlStMt,nil,@ResultSet);
  if Assigned(ResultSet) then
     lblnped.Caption  := formatfloat('00000',ResultSet.fieldbyname('valor').asInteger+1);
  //endi

  if frmdados.Cds_sVenda.FieldByName('nped').asInteger <> 0 then
     begin
       lblnped.Caption := formatfloat('00000',frmdados.Cds_sVenda.FieldByName('nped').asfloat);
     end;
  //endi

  iccli := frmdados.cds_clientes.fieldbyname('codigo').asInteger;
  sNomeCli := frmdados.cds_clientes.fieldbyname('Nome').asString;
  sCodCli := formatfloat('00000',frmdados.cds_clientes.fieldbyname('Codigo').asfloat);
  sFantasia := frmdados.cds_clientes.fieldbyname('fantasia').asString;
  sTelefones := frmdados.cds_clientes.fieldbyname('Telefones').asString;

  sEnderecoent := frmdados.cds_clientes.fieldbyname('endent').asString;
  sComplent := frmdados.cds_clientes.fieldbyname('Complent').asString;
  sBairroent := frmdados.cds_clientes.fieldbyname('Bairroent').asString;
  sCidadeent := frmdados.cds_clientes.fieldbyname('Cidadeent').asString;
  sEstadoent := frmdados.cds_clientes.fieldbyname('estadoent').asString;
  sTelefoneent := frmdados.cds_clientes.fieldbyname('telefoneent').asString;
  sContato := frmdados.cds_clientes.fieldbyname('contato').asString;
  sVendedor := frmdados.cds_Funcionarios.fieldbyname('nome').asString;

  //lbltotG.Caption := frmpesqvd.lbltotal.Caption;

  cbxtipo.Text := '';
  cbxtipo.Items.Add('Cheque');
  cbxtipo.Items.Add('Depósito');

  ediemail.Text := frmdados.Cds_Clientes.FieldByName('email').asString;
  edinome.Text := frmdados.Cds_Clientes.FieldByName('nome').asString;
  if frmdados.Cds_sVenda.FieldByName('tipoop').AsInteger >= 1 then
     ediassunto.Text := 'Pedido n.o '+frmdados.Cds_svenda.FieldByName('nped').asString;
  //endi
  if frmdados.Cds_sVenda.FieldByName('tipoop').AsInteger = 0 then
     ediassunto.Text := 'Orçamento n.o ';
  //endi

  }


  mmomsg.Lines.Clear;

  lbxdest.Items.Clear;

  //slist := lbxdest.Items;


  //revisamsg;

  {

     smtp.IOHandler := IOHSocket;

     iohsocket.SocksInfo := socksinfo;

     if frmdados.Cds_Indice.FieldByName('authtype').asInteger = 1 then
        smtp.AuthenticationType := atLogin;
     //endi
     smtp.Host := frmdados.cds_Indice.fieldbyname('host').asString;
     smtp.Password := frmdados.Cds_Indice.FieldByName('pass_word').AsString;
     smtp.Port := frmdados.Cds_Indice.FieldByName('port').Asinteger;
     if frmdados.Cds_Indice.FieldByName('socksauth').asInteger = 1 then
        SocksInfo.Authentication := saUsernamePassWord;
     //endi
     SocksInfo.Host := frmdados.cds_indice.fieldbyname('host').asString;
     SocksInfo.Password := frmdados.cds_Indice.FieldByName('pass_word').AsString;
     SocksInfo.Port := frmdados.cds_indice.FieldByName('port').Asinteger;
     SocksInfo.Username := frmdados.Cds_Indice.FieldByName('user_name').AsString;
     if frmdados.cds_indice.FieldByName('socksversi').asInteger = 1 then
        SocksInfo.Version := svNoSocks;
     //endi
     smtp.Username := frmdados.Cds_Indice.FieldByName('user_name').AsString;

     msg.Body.Clear;

     msg.Body.Text := mmomsg.Text;

     //msg.Body.add('<html>');
     //msg.Body.add('<head>');
     //msg.Body.add('<title>');
     //msg.Body.add('Orçamento');
     //msg.Body.add('</title>');
     //msg.Body.add('</head>');
     //msg.Body.add('<body>');
     //msg.Body.add('<ul>');
     //msg.Body.add('<h1>Orçamento</h1>');
     //msg.Body.add('<li>teste1');
     //msg.Body.add('<li>teste2');
     //msg.Body.add('<li>teste3');
     //msg.Body.add('</ul>');
     //msg.Body.add('</body>');
     //msg.Body.add('</html>');



     //msg.Body.LoadFromFile(vardir+'orc000.txt');


     msg.CCList.Clear;
     msg.CCList.Add;
     msg.CCList.Items[0].Address   := frmdados.Cds_Indice.FieldByName('emailret').AsString;
     msg.CCList.Items[0].name      := frmdados.Cds_Indice.FieldByName('nomeret').AsString;

     msg.From.Address := frmdados.Cds_Indice.FieldByName('email').AsString;
     msg.From.Name := frmdados.Cds_Indice.FieldByName('nome').AsString;

     msg.ReceiptRecipient.Address  := frmdados.Cds_Indice.FieldByName('email').AsString;
     msg.ReceiptRecipient.Name := frmdados.cds_indice.FieldByName('nome').AsString;

     msg.Recipients.Clear;
     msg.Recipients.add;


     //msg.Recipients.Items[0].Address := 'marcosbras@yahoo.com.br';
     //msg.Recipients.Items[0].Name := 'COMPRAS';

     msg.Subject := ediassunto.Text;

     //msg.ReplyTo.Clear;
     //msg.ReplyTo.Add;
     //msg.ReplyTo.Items[0].Address := 'marcos.bras@itelefonica.com.br';

     msg.Sender.Address :=  frmdados.Cds_Indice.FieldByName('email').AsString;
     msg.Sender.Name := frmdados.Cds_Indice.FieldByName('nome').AsString;

     //try
     //tidattachment.Create(msg.MessageParts,tfilename(vardir+'anexo.txt'));
     //except
     //end;

     //for x := 0 to msg.Recipients.Count - 1 do
     //  begin
     //    showmessage(msg.Recipients[x].Address);
     //  end;
     //endf

    //try

      //msg.Recipients.Items[0].Address := 'marcosbras@yahoo.com.br';
      //msg.Recipients.Items[0].Name := 'COMPRAS';
      //smtp.Connect();
      //smtp.Send(msg);
      //smtp.Disconnect;
    //except
      //showmessage('Falha no envio!!!');
      exit;
    //end;

    //showmessage('Mensagem enviada com sucesso!!!');








    }





end;

procedure Tfrmemailmark.btnenviarClick(Sender: TObject);
var
  x:integer;
  l:tstrings;
begin
    {
     smtp.IOHandler := IOHSocket;

     iohsocket.SocksInfo := socksinfo;

     if frmdados.Cds_Indice.FieldByName('authtype').asInteger = 1 then
        smtp.AuthenticationType := atLogin;
     //endi
     smtp.Host := frmdados.cds_Indice.fieldbyname('host').asString;
     smtp.Password := frmdados.Cds_Indice.FieldByName('pass_word').AsString;
     smtp.Port := frmdados.Cds_Indice.FieldByName('port').Asinteger;
     if frmdados.Cds_Indice.FieldByName('socksauth').asInteger = 1 then
        SocksInfo.Authentication := saUsernamePassWord;
     //endi
     SocksInfo.Host := frmdados.cds_indice.fieldbyname('host').asString;
     SocksInfo.Password := frmdados.cds_Indice.FieldByName('pass_word').AsString;
     SocksInfo.Port := frmdados.cds_indice.FieldByName('port').Asinteger;
     SocksInfo.Username := frmdados.Cds_Indice.FieldByName('user_name').AsString;
     if frmdados.cds_indice.FieldByName('socksversi').asInteger = 1 then
        SocksInfo.Version := svNoSocks;
     //endi
     smtp.Username := frmdados.Cds_Indice.FieldByName('user_name').AsString;

     msg.Body.Clear;

     msg.Body.Text := mmomsg.Text;

     //msg.Body.add('<html>');
     //msg.Body.add('<head>');
     //msg.Body.add('<title>');
     //msg.Body.add('Orçamento');
     //msg.Body.add('</title>');
     //msg.Body.add('</head>');
     //msg.Body.add('<body>');
     //msg.Body.add('<ul>');
     //msg.Body.add('<h1>Orçamento</h1>');
     //msg.Body.add('<li>teste1');
     //msg.Body.add('<li>teste2');
     //msg.Body.add('<li>teste3');
     //msg.Body.add('</ul>');
     //msg.Body.add('</body>');
     //msg.Body.add('</html>');



     //msg.Body.LoadFromFile(vardir+'orc000.txt');


     msg.CCList.Clear;
     msg.CCList.Add;
     msg.CCList.Items[0].Address   := frmdados.Cds_Indice.FieldByName('emailret').AsString;
     msg.CCList.Items[0].name      := frmdados.Cds_Indice.FieldByName('nomeret').AsString;

     msg.From.Address := frmdados.Cds_Indice.FieldByName('email').AsString;
     msg.From.Name := frmdados.Cds_Indice.FieldByName('nome').AsString;

     msg.ReceiptRecipient.Address  := frmdados.Cds_Indice.FieldByName('email').AsString;
     msg.ReceiptRecipient.Name := frmdados.cds_indice.FieldByName('nome').AsString;

     msg.Recipients.Clear;
     msg.Recipients.add;


     msg.Recipients.Items[0].Address := 'marcosbras@yahoo.com.br';
     msg.Recipients.Items[0].Name := 'COMPRAS';


     //l.Clear;
     //l := lbxdest.Items;


     //for x := 0 to l.Count - 1 do
     //    begin

     //      showmessage(inttostr(x));

     //      msg.CCList.Items[x].Address   := frmdados.Cds_Indice.FieldByName('emailret').AsString;
     //      msg.CCList.Items[x].name      := frmdados.Cds_Indice.FieldByName('nomeret').AsString;


     //    end;
     //endi


     //MontaEmail(lbxdest.Items);





     msg.Subject := ediassunto.Text;

     //msg.ReplyTo.Clear;
     //msg.ReplyTo.Add;
     //msg.ReplyTo.Items[0].Address := 'marcos.bras@itelefonica.com.br';

     msg.Sender.Address :=  frmdados.Cds_Indice.FieldByName('email').AsString;
     msg.Sender.Name := frmdados.Cds_Indice.FieldByName('nome').AsString;


     try
     //tidattachment.Create(msg.MessageParts,tfilename(vardir+'anexo.txt'));
     except
     end;

     //for x := 0 to msg.Recipients.Count - 1 do
     //  begin
     //    showmessage(msg.Recipients[x].Address);
     //  end;
     //endf

    try

      //msg.Recipients.Items[0].Address := 'marcosbras@yahoo.com.br';
      //msg.Recipients.Items[0].Name := 'COMPRAS';


      smtp.Connect();
      smtp.Send(msg);
      smtp.Disconnect;
    except
      //showmessage('Falha no envio!!!');
      exit;
    end;

    }

    //showmessage('Mensagem enviada com sucesso!!!');

end;


procedure tfrmemailmark.revisamsg;
var
 s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,sImp:string;
  ResultSet : tCustomSqlDataSet;
  SqlStMt : String;
  Col, Centro,x, iLin, iItens, iCols:Integer;
  sDelimitador:string;
  sQtdeImp,sDescricaoImp,sCprodImp, sValorImp, sTotalImp, sUniImp, sDescMar, sLinDet, sDataImp, sHoraImp, sValorImpP, sValorImpR:String;
  ftotG, ftotI, ftotE:real;
begin

    sDataImp := datetostr(date);
    sHoraImp := copy(timetostr(time),1,5);
    sDelimitador := replicar('-',118);
    frmdados.Cds_dvenda.First;
    if frmdados.Cds_dvenda.RecordCount = 0 then
       exit;
    //endi

    s1 := '';
    for x := 1 to (( 118  - length( frmdados.Cds_Config.fieldbyname('campo2').asString )) div 2) do
        begin
          s1 := (s1 + ' ');
        end;
    //endfor
    sImp := s1+frmdados.Cds_Config.fieldbyname('campo2').asString;
    mmomsg.Lines.Add(sImp);

    s1 := '';
    for x := 1 to (( 118  - length( frmdados.Cds_Config.fieldbyname('campo6').asString )) div 2) do
        begin
          s1 := (s1 + ' ');
        end;
    //endfor
    sImp := s1+frmdados.Cds_Config.fieldbyname('campo6').asString;
    mmomsg.Lines.Add(sImp);

    s1 := '';
    for x := 1 to (( 118  - length( frmdados.Cds_Config.fieldbyname('campo7').asString )) div 2) do
        begin
          s1 := (s1 + ' ');
        end;
    //endfor
    sImp := s1+frmdados.Cds_Config.fieldbyname('campo7').asString;
    mmomsg.Lines.Add(sImp);
    mmomsg.Lines.Add(sDelimitador);

    if frmpesqvd.rgbtipoop.ItemIndex = 0 then
       begin
         s1 := '';
         for x := 1 to 90 do
           begin
             s1 := s1 + ' ';
           end;
         //endi

         mmomsg.Lines.Add('Orcamento '+formatfloat('00000',iNorc)+s1+'Data '+sDataImp+' '+sHoraImp);
       end
    else
       begin

         s1 := '';
         for x := 1 to 85 do
           begin
             s1 := s1 + ' ';
           end;
         //endi

         mmomsg.Lines.Add('Pedido '+formatfloat('00000',frmdados.Cds_sVenda.fieldbyname('nped').asfloat)+s1+'Data '+sDataImp+' '+sHoraImp);
       end;
    //endi

    mmomsg.Lines.Add(sDelimitador);

    if iccli > 0 then
       begin

         mmomsg.Lines.Add('Cliente.....: '+sCodCli+'  '+sFantasia);
         mmomsg.Lines.Add('Endereco....: '+sEnderecoent);

         mmomsg.Lines.Add('Complemento.: '+copy(sComplent,1,65));
         mmomsg.Lines.Add('Bairro......: '+copy(sBairroent,1,20));
         mmomsg.Lines.Add('Cidade......: '+copy(sCidadeent,1,18));

         mmomsg.Lines.Add('Estado......: '+sEstadoent);
         mmomsg.Lines.Add('Cep.........: '+scepent);

         mmomsg.Lines.Add('Telefone....: '+sTelefones+'  '+sTelefoneent);
         mmomsg.Lines.Add('Contato.....: '+sContato);
         //sayprint.Say(10,103,'Vendedor...: '+sVendedor);

       end
    else
       begin

         mmomsg.Lines.Add('Cliente.....: Consumidor');
         mmomsg.Lines.Add('Endereco....: ');

         mmomsg.Lines.Add('Complemento.: ');
         mmomsg.Lines.Add('Bairro......: ');
         mmomsg.Lines.Add('Cidade......: ');

         mmomsg.Lines.Add('Estado......: ');
         mmomsg.Lines.Add('Cep.........: ');

         mmomsg.Lines.Add('Telefone....: ');
         mmomsg.Lines.Add('Contato.....: ');
         //sayprint.Say(10,103,'Vendedor...: '+sVendedor);

       end;
    //endi
    mmomsg.Lines.Add(sDelimitador);
    mmomsg.Lines.Add('      Qtde Un. Descricao                                           Marca                Codigo       Valor       Total');
    //                xx.xxx,xxx xxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx xxxxxxxxxxxxxxxxxxxx  xxxxx  xxx,xxx.xx  xxx,xxx.xx
    mmomsg.Lines.Add(sDelimitador);

      with frmdados do
         begin


           while true do
              begin

                if cds_dvenda.fieldbyname('cmar').asInteger > 0 then
                   begin
                     Dbx_Exec.Active := false;
                     Dbx_Exec.SQL.Clear;
                     Dbx_Exec.SQL.Add('Select * from Marca Where codigo = '+cds_dvenda.fieldbyname('cMar').asString);
                     Dbx_Exec.Active := true;
                     sDescMar := copy(Dbx_Exec.fieldbyname('Descricao').asString,1,20);
                   end;
                //endi

                //sQtdeImp      := AlinNumD3(10,Cds_dvenda.fieldbyname('qtde').asfloat);
                sQtdeImp      := AlinNumD0(10,Cds_dVenda.fieldbyname('qtde').asfloat);
                sDescricaoImp := Cds_dvenda.fieldbyname('npro').asString;
                sCprodImp     := formatfloat('00000',Cds_dvenda.fieldbyname('cpro').asfloat);
                sValorImp     := AlinNumD(10,Cds_dvenda.fieldbyname('prve').asfloat);
                sTotalImp     := AlinNumD(10,Cds_dvenda.fieldbyname('subtotal').asfloat);
                sUniImp       := Cds_dvenda.fieldbyname('nUnid').asString;

                //sUniImp       := 'PCS';
                //sDescMar      := 'xxxxxxxxxxxxxxxxxxxx';

                s1 := '';
                for x := 0 to (10-length(sQtdeImp) ) do
                  begin
                    s1 := s1 + ' ';
                  end;
                //endi

                s2 := '';
                for x := 0 to (3-length(sUniImp) ) do
                  begin
                    s2 := s2 + ' ';
                  end;
                //endi

                s3 := '';
                for x := 0 to (51-length(sDescricaoImp) ) do
                  begin
                    s3 := s3 + ' ';
                  end;
                //endi

                s4 := '';
                for x := 0 to (20-length(sDescMar) ) do
                  begin
                    s4 := s4 + ' ';
                  end;
                //endi

                s5 := '';
                for x := 0 to (6-length(sCprodImp) ) do
                  begin
                    s5 := s5 + ' ';
                  end;
                //endi

                s6 := '';
                for x := 0 to (12-length(sValorImp) ) do
                  begin
                    s6 := s6 + ' ';
                  end;
                //endi

                mmomsg.Lines.Add(sQtdeImp + s1 + sUniImp + s2 + sDescricaoImp + s3 + sDescMar + s4 + sCprodImp + s5 + sValorImp + s6 + sTotalImp);

                Cds_dvenda.Next;
                if Cds_dvenda.Eof then
                   break;
                //endi

              end;
           //endw


        end;
      //endi

      mmomsg.Lines.Add(sDelimitador);

      with frmdados do
          begin
            dbx_exec.Active := false;
            dbx_exec.SQL.Clear;
            dbx_exec.SQL.Add('Select count(*) as totitens from dvenda where (codsvenda = '+frmdados.Cds_sVenda.fieldbyname('codigo').asString+') and (EouS = '+quotedstr('S')+')');
            dbx_exec.Active := true;
            ftotI := dbx_exec.fieldbyname('totitens').asfloat;

            dbx_exec.Active := false;
            dbx_exec.SQL.Clear;
            dbx_exec.SQL.Add('Select sum(qtde*prve) as totbruto from dvenda where (codsvenda = '+frmdados.Cds_sVenda.fieldbyname('codigo').asString+') and (EouS = '+quotedstr('S')+')');
            dbx_exec.Active := true;
            ftotG := dbx_exec.fieldbyname('totbruto').asfloat;

            dbx_exec.Active := false;
            dbx_exec.SQL.Clear;
            dbx_exec.SQL.Add('Select sum(qtde*prve) as totbruto from dvenda where (codsvenda = '+frmdados.Cds_sVenda.fieldbyname('codigo').asString+') and (EouS = '+quotedstr('E')+')');
            dbx_exec.Active := true;
            ftotE := dbx_exec.fieldbyname('totbruto').asfloat;

            dbx_exec.Active := false;

          end;
      //endw

      s1 := '';
      for x := 1 to 50 do
        begin
          s1 := s1 + ' ';
        end;
      //endi

      mmomsg.Lines.Add('Vendedor(a) ' + sVendedor + s1 + 'Itens '+formatfloat('00000',ftotI));

      if ftote > 0 then
         mmomsg.Lines.Add('Troca '+formatfloat('###,###,##0.00',ftotE));
      //endi

      s1 := '';
      for x := 1 to 90 do
        begin
          s1 := s1 + ' ';
        end;
      //endi

      sValorImp := formatfloat('###,###,##0.00',ftotG);
      sValorImp := AlinNumD(14,ftotG);

      s2 := '';
      for x := 1 to (23-length(sValorImp)) do
        begin
          s2 := s2 + ' ';
        end;
      //endi

      mmomsg.Lines.Add(s1+'Total'+s2+sValorImp);

      s1 := '';
      for x := 1 to 90 do
        begin
          s1 := s1 + ' ';
        end;
      //endi

      sValorImpP := formatfloat('###,###,##0.00',frmdados.Cds_sVenda.fieldbyname('pdesc_p').asfloat);
      sValorImpP := AlinNumD(6,frmdados.Cds_sVenda.fieldbyname('pdesc_p').asfloat);

      s2 := '';
      for x := 1 to (6-length(sValorImpP)) do
        begin
          s2 := s2 + ' ';
        end;
      //endi

      sValorImpR := formatfloat('###,###,##0.00',frmdados.Cds_sVenda.fieldbyname('valdesc_p').asfloat);
      sValorImpR := AlinNumD(6,frmdados.Cds_sVenda.fieldbyname('valdesc_p').asfloat);

      s3 := '';
      for x := 1 to (10-length(sValorImpR)) do
        begin
          s3 := s3 + ' ';
        end;
      //endi

      mmomsg.Lines.Add(s1+'Desconto'+s2+sValorImpP+'%'+s3+'R$ '+sValorImpR);

      s1 := '';
      for x := 1 to 90 do
        begin
          s1 := s1 + ' ';
        end;
      //endi

      sValorImp := formatfloat('###,###,##0.00',frmdados.Cds_sVenda.fieldbyname('liquido_p').asfloat);
      sValorImp := AlinNumD(14,frmdados.Cds_sVenda.fieldbyname('liquido_p').asfloat);

      s2 := '';
      for x := 1 to (21-length(sValorImp)) do
        begin
          s2 := s2 + ' ';
        end;
      //endi

      mmomsg.Lines.Add(s1+'Liquido'+s2+sValorImp);

      mmomsg.Lines.Add('Forma de Pagto:');

      if frmdados.Cds_sVenda.fieldbyname('Din_p').asfloat > 0 then
         begin

           if frmdados.Cds_sVenda.fieldbyname('Din_p').asfloat > frmdados.Cds_sVenda.fieldbyname('liquido_p').asfloat then
              begin
                sValorImp := formatfloat('###,###,##0.00',frmdados.Cds_sVenda.fieldbyname('liquido_p').asfloat);
                sValorImp := AlinNumD(10,frmdados.Cds_sVenda.fieldbyname('liquido_p').asfloat);
              end
           else
              begin
                sValorImp := formatfloat('###,###,##0.00',frmdados.Cds_sVenda.fieldbyname('din_p').asfloat);
                sValorImp := AlinNumD(10,frmdados.Cds_sVenda.fieldbyname('din_p').asfloat);
              end;
           //endi

           mmomsg.Lines.Add('A vista ( R$ '+sValorImp+' )');


         end;
      //endi

      //imprime parcelas
      iCols := 1;
      iLin := 57;
      iItens  := 0;
      svlrdup1 := '0';
      svlrdup2 := '0';
      svlrdup3 := '0';

      with frmdados do
         begin

           cds_vencto.Active := false;
           dbx_vencto.Active := false;
           dbx_vencto.SQL.Clear;
           dbx_vencto.SQL.Add('Select * from Vencimentos where (c_svenda = '+cds_svenda.fieldbyname('codigo').asString+')');
           dbx_vencto.Active := true;
           cds_vencto.Active := true;

           while true do
             begin

               icols := 1;

               sNumDup1 := '';
               sVlrDup1 := '0';
               sVctDup1 := '';
               iParcDup1 := 0;

               sNumDup2 := '';
               sVlrDup2 := '0';
               sVctDup2 := '';
               iParcDup2 := 0;

               sNumDup3 := '';
               sVlrDup3 := '0';
               sVctDup3 := '';
               iParcDup3 := 0;

               sNumDup4 := '';
               sVlrDup4 := '0';
               sVctDup4 := '';
               iParcDup4 := 0;

               while (icols <= 2)do
                 begin

                   if icols = 1 then
                      begin
                        sNumDup1 := cds_vencto.fieldbyname('doc').asString;
                        sVlrDup1 := floattostr(cds_vencto.fieldbyname('valor').asfloat);
                        sVctDup1 := cds_vencto.fieldbyname('dtv').asString;
                        iParcDup1 := strtoint( copy(cds_vencto.fieldbyname('Parc').asString,1,2) );
                      end;
                   //endi

                   if iCols = 2 then
                      begin
                        sNumDup2 := cds_vencto.fieldbyname('doc').asString;
                        sVlrDup2 := floattostr(cds_vencto.fieldbyname('valor').asfloat);
                        sVctDup2 := cds_vencto.fieldbyname('dtv').asString;
                        iParcDup2 := strtoint( copy(cds_vencto.fieldbyname('Parc').asString,1,2) );
                      end;
                   //endi

                   if iCols = 3 then
                      begin
                        sNumDup3 := cds_vencto.fieldbyname('doc').asString;
                        sVlrDup3 := floattostr(cds_vencto.fieldbyname('valor').asfloat);
                        sVctDup3 := cds_vencto.fieldbyname('dtv').asString;
                        iParcDup3 := strtoint( copy(cds_vencto.fieldbyname('Parc').asString,1,2) );
                      end;
                   //endi

                   if iCols = 4 then
                      begin
                        sNumDup4 := cds_vencto.fieldbyname('doc').asString;
                        sVlrDup4 := floattostr(cds_vencto.fieldbyname('valor').asfloat);
                        sVctDup4 := cds_vencto.fieldbyname('dtv').asString;
                        iParcDup4 := strtoint( copy(cds_vencto.fieldbyname('Parc').asString,1,2) );
                      end;
                   //endi

                   icols := icols + 1;
                   Cds_Vencto.Next;
                   if cds_vencto.Eof then
                      break;
                   //endi

                 end;
               //endi

               if iparcdup1 > 0 then
                  begin
                    sValorImp := formatfloat('###,###,##0.00',strtofloat(tirapontos(sVlrDup1)) );
                    sValorImp := AlinNumD(10,strtofloat(tirapontos(sVlrDup1)));
                    mmomsg.Lines.Add(' Parc '+inttostr(iParcDup1)+'( '+sVctDup1+' R$ '+sValorImp+' )')

                  end;
               //endi

               if iparcdup2 > 0 then
                  begin
                    sValorImp := formatfloat('###,###,##0.00',strtofloat(tirapontos(sVlrDup2)) );
                    sValorImp := AlinNumD(10,strtofloat(tirapontos(sVlrDup2)));
                    mmomsg.Lines.Add(' Parc '+inttostr(iParcDup2)+'( '+sVctDup2+' R$ '+sValorImp+' )')
                  end;
               //endi

               iLin := iLin + 1;
               if cds_vencto.Eof then
                  break;
               //endi

               iItens := iItens + 1;
               if iItens >= 3 then
                  break;
               //endi

             end;
           //endi

        end;
      //endth


      {




      if frmdados.Cds_sVenda.fieldbyname('Din').asfloat > 0 then
         begin

           if frmdados.Cds_sVenda.fieldbyname('Din').asfloat > frmdados.Cds_sVenda.fieldbyname('liquido').asfloat then
              begin
                sValorImp := formatfloat('###,###,##0.00',frmdados.Cds_sVenda.fieldbyname('liquido').asfloat);
                sValorImp := AlinNumD(10,frmdados.Cds_sVenda.fieldbyname('liquido').asfloat);
              end
           else
              begin
                sValorImp := formatfloat('###,###,##0.00',frmdados.Cds_sVenda.fieldbyname('din').asfloat);
                sValorImp := AlinNumD(10,frmdados.Cds_sVenda.fieldbyname('din').asfloat);
              end;
           //endi

           mmomsg.Lines.Add('A vista ( R$ '+sValorImp+' )');


         end;
      //endi


      if frmdados.Cds_sVenda.FieldByName('parc').asInteger > 0 then
         begin
           sValorImp := formatfloat('###,###,##0.00',frmdados.Cds_sVenda.fieldbyname('vlrdup1').asfloat);
           sValorImp := AlinNumD(10,frmdados.Cds_sVenda.fieldbyname('vlrdup1').asfloat);
           mmomsg.Lines.Add(' Parc 1( '+frmdados.Cds_sVenda.fieldbyname('vctdup1').asString+' R$ '+sValorImp+' )');
           if frmdados.Cds_sVenda.FieldByName('parc').asInteger > 1 then
              begin
                sValorImp := formatfloat('###,###,##0.00',frmdados.Cds_sVenda.fieldbyname('vlrdup2').asfloat);
                sValorImp := AlinNumD(10,frmdados.Cds_sVenda.fieldbyname('vlrdup2').asfloat);
                mmomsg.Lines.Add(' Parc 2( '+frmdados.Cds_sVenda.fieldbyname('vctdup2').asString+' R$ '+sValorImp+' )');
                if frmdados.Cds_sVenda.FieldByName('parc').asInteger > 2 then
                   begin
                     sValorImp := formatfloat('###,###,##0.00',frmdados.Cds_sVenda.fieldbyname('vlrdup3').asfloat);
                     sValorImp := AlinNumD(10,frmdados.Cds_sVenda.fieldbyname('vlrdup3').asfloat);
                     mmomsg.Lines.Add(' Parc 3( '+frmdados.Cds_sVenda.fieldbyname('vctdup3').asString+' R$ '+sValorImp+' )');
                   end;
                //endi
              end;
           //endi
         end;
      //endi



      }

      mmomsg.Lines.Add('Entrega _____/______/_________ Vencimentos _____/______/_________  Ass._______________________');


      {


      if cbxtipo.Text = 'Depósito' then
         begin
           mmomsg.Lines.Add('Sr. Cliente, favor efetuar seu deposito na data acima e passar');
           mmomsg.Lines.Add('o comprovante do mesmo. Qualque dúvida ligue para nos.');
         end
      else
         begin
           if cbxtipo.Text = 'Cheque' then
              begin
                mmomsg.Lines.Add('Sr. Cliente, favor deixar seu Cheque na retirada da mercadoria');
                mmomsg.Lines.Add('obedecendo a data do vencimento.');
              end;
           //endi
         end;
      //endi


      }

      mmomsg.Lines.Add(sDelimitador);
end;




procedure Tfrmemailmark.btnsalvarClick(Sender: TObject);
begin
sdgemail.FileName := 'PED'+formatfloat('00000',strtofloat(lblnped.caption))+'.txt';
if sdgemail.Execute then
   begin
     mmomsg.Lines.SaveToFile(sdgemail.FileName);
   end;
//endi
end;

procedure Tfrmemailmark.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  frmPrincipal.pnlcentral.Visible := true;
  Action:=caFree;
  frmemailmark:=nil;
  form_ativo := '';

end;

procedure Tfrmemailmark.lbldestClick(Sender: TObject);
begin
if DlgAbrir.Execute then
   begin
     percorreArquivoTexto ( DlgAbrir.FileName ) ;
   end;
//endi


end;


procedure Tfrmemailmark.percorreArquivoTexto ( nomeDoArquivo: String );
var arq: TextFile;
linha: String;
begin
AssignFile ( arq, nomeDoArquivo );
Reset ( arq );
ReadLn ( arq, linha );
while not Eof ( arq ) do
begin
{ Processe a linha lida aqui. }
{ Para particionar a linha lida em pedaços, use a função Copy. }

    try
      msg.Recipients.Items[0].Address := linha;
      msg.Recipients.Items[0].Name := 'COMPRAS';
      msg.Body.Text := mmomsg.Text;
      smtp.Connect();
      smtp.Send(msg);
      smtp.Disconnect;
      sleep(5000);
    except
      //showmessage('Falha no envio!!!');
      exit;
    end;

    //showmessage('Mensagem enviada com sucesso!!!');

//lbxdest.Items.Add(linha);

//showmessage(linha);

ReadLn ( arq, linha );
end;
CloseFile ( arq );
end;


procedure Tfrmemailmark.spdconfirmaClick(Sender: TObject);
begin
close;
end;

procedure Tfrmemailmark.MontaEmail(E: TStrings);
var
  K:integer;
begin

  E.Clear;
  for K := 0 to E.Count - 1 do
    begin
       //msg.CCList.Items[K].Address   := frmdados.Cds_Indice.FieldByName('emailret').AsString;
       //msg.CCList.Items[K].name      := frmdados.Cds_Indice.FieldByName('nomeret').AsString;


       msg.Recipients.Items[K].Address := E[K]     ;
       msg.Recipients.Items[K].Name := edinome.text;
    end;
  //endi





end;



end.
