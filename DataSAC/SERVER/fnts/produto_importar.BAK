unit produto_importar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, Collection, TFlatPanelUnit,
  Buttons, Mask, ToolEdit, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset;

type
  Tfrmproduto_importar = class(TForm)
    FlatPanel1: TFlatPanel;
    ViewSplit1: TViewSplit;
    GroupBox1: TGroupBox;
    rproduto: TCheckBox;
    rgrupo: TCheckBox;
    rsubgrupo: TCheckBox;
    rmarca: TCheckBox;
    rfornecedor: TCheckBox;
    rserial: TCheckBox;
    rprodutograde: TCheckBox;
    rcodbarras: TCheckBox;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    barra: TProgressBar;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    GroupBox3: TGroupBox;
    edestino: TDirectoryEdit;
    query: TZQuery;
    litem: TLabel;
    rcliente: TCheckBox;
    Memo1: TMemo;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmproduto_importar: Tfrmproduto_importar;
  continua : boolean;

implementation

uses modulo, principal;

{$R *.dfm}

procedure Tfrmproduto_importar.BitBtn2Click(Sender: TObject);
begin
  if bitbtn2.Caption = 'Fechar' then
  begin
    close;
  end
  else
  begin
    continua := false;
    bitbtn2.caption := 'Fechar';
    Groupbox2.Caption := 'Processamento Interrompido!';
    barra.position := 0;
    litem.Caption := '';
    bitbtn1.Visible := true;
    bitbtn2.Left := 200;
  end;
end;

procedure Tfrmproduto_importar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmproduto_importar.BitBtn1Click(Sender: TObject);
var arquivo:textfile;
texto : string;
x,i : integer;
begin
  continua := true;
  bitbtn2.Caption := 'Cancelar';
  bitbtn1.Visible := false;
  bitbtn2.Left := 144;

  if rproduto.Checked then     // produtos
  begin
   if not FileExists(edestino.Text+'cp_produto.txt') then
   begin
     application.messagebox('Arquivo "cp_produto.txt" para atualização de produtos não foi encontrado! Favor verificar!','Atenção',mb_ok+MB_ICONERROR);
     rproduto.Checked := False;
   end
   else
   begin
    GROUPBOX2.Caption := 'Aguarde... Preparando o arquivo "cp_produto.txt"';
    Application.ProcessMessages;

    BARRA.Position := 0;

    GROUPBOX2.Caption := 'Aguarde... Atualizando Produtos...';
    Application.ProcessMessages;

    Memo1.Text := '';
    Memo1.Lines.LoadFromFile(edestino.text+'cp_produto.txt');
    barra.Max := memo1.Lines.Count;
    Memo1.Lines[0];

    for x:= 0 to memo1.lines.count-1 do
      begin

        try
        query.Close;
        query.sql.clear;
        query.sql.Add('select * from c000025 where codigo = '''+copy(Memo1.Lines[x],1,6)+'''');
        query.Open;
        if query.recordcount = 0 then  // incluir
        begin
          with query do
          begin
            LITEM.Caption := 'Incluindo '+copy(Memo1.Lines[x],20,60);
            Insert;
            FieldByName('codigo').asstring                    := TrimLeft(TrimRight(COPY(Memo1.Lines[x],1,6)));
            fieldbyname('codbarra').asstring                  := TrimLeft(TrimRight(COPY(Memo1.Lines[x],7,13)));
            fieldbyname('produto').asstring                   := TrimLeft(TrimRight(COPY(Memo1.Lines[x],20,60)));
            fieldbyname('unidade').asstring                   := TrimLeft(TrimRight(COPY(Memo1.Lines[x],80,2)));
            fieldbyname('estoque').AsFloat                    := 0;
            if ( TrimLeft(TrimRight(COPY(Memo1.Lines[x],82,10))) <> '0000000000' ) and ( TrimLeft(TrimRight(COPY(Memo1.Lines[x],82,10))) <> '30/12/1899' ) then
              fieldbyname('data_cadastro').asstring             := TrimLeft(TrimRight(COPY(texto,82,10)))
            else
              fieldbyname('data_cadastro').asstring             := '';
            fieldbyname('codgrupo').asstring                  := TrimLeft(TrimRight(COPY(Memo1.Lines[x],92,6)));
            fieldbyname('codsubgrupo').asstring               := TrimLeft(TrimRight(COPY(Memo1.Lines[x],98,6)));
            fieldbyname('codfornecedor').asstring             := TrimLeft(TrimRight(COPY(Memo1.Lines[x],104,6)));
            fieldbyname('codmarca').asstring                  := TrimLeft(TrimRight(COPY(Memo1.Lines[x],110,6)));
            if ( TrimLeft(TrimRight(COPY(Memo1.Lines[x],116,10))) <> '0000000000' ) and ( TrimLeft(TrimRight(COPY(Memo1.Lines[x],116,10))) <> '30/12/1899' ) then
              fieldbyname('data_ultimacompra').asstring         := TrimLeft(TrimRight(COPY(Memo1.Lines[x],116,10)))
            else
              fieldbyname('data_ultimacompra').asstring         := '';
            fieldbyname('notafiscal').asstring                := TrimLeft(TrimRight(COPY(Memo1.Lines[x],126,6)));
            fieldbyname('precocusto').asstring                := TrimLeft(TrimRight(COPY(Memo1.Lines[x],132,18)));
            fieldbyname('precovenda').asstring                := TrimLeft(TrimRight(COPY(Memo1.Lines[x],150,18)));
            if ( TrimLeft(TrimRight(COPY(Memo1.Lines[x],168,10))) <> '0000000000' ) and ( TrimLeft(TrimRight(COPY(Memo1.Lines[x],168,10))) <> '30/12/1899' ) then
              fieldbyname('data_ultimavenda').asstring          := TrimLeft(TrimRight(COPY(Memo1.Lines[x],168,10)))
            else
              fieldbyname('data_ultimavenda').asstring         := '';
            fieldbyname('codaliquota').asstring               := TrimLeft(TrimRight(COPY(Memo1.Lines[x],214,3)));
            fieldbyname('localiCaZao').asstring               := TrimLeft(TrimRight(COPY(Memo1.Lines[x],217,50)));
            fieldbyname('peso').asstring                      := TrimLeft(TrimRight(COPY(Memo1.Lines[x],267,18)));
            fieldbyname('validade').asstring                  := TrimLeft(TrimRight(COPY(Memo1.Lines[x],285,20)));
            fieldbyname('comissao').asstring                  := TrimLeft(TrimRight(COPY(Memo1.Lines[x],305,18)));
            fieldbyname('usa_balanca').asstring               := TrimLeft(TrimRight(COPY(Memo1.Lines[x],323,1)));
            fieldbyname('usa_serial').asstring                := TrimLeft(TrimRight(COPY(Memo1.Lines[x],324,1)));
            fieldbyname('usa_grade').asstring                 := TrimLeft(TrimRight(COPY(Memo1.Lines[x],325,1)));
            fieldbyname('codreceita').asstring                := TrimLeft(TrimRight(COPY(Memo1.Lines[x],326,6)));
            if ( TrimLeft(TrimRight(COPY(Memo1.Lines[x],332,10))) <> '0000000000' ) and ( TrimLeft(TrimRight(COPY(Memo1.Lines[x],332,10))) <> '30/12/1899' ) then
              fieldbyname('data_ultimacompra_anterior').asstring:= TrimLeft(TrimRight(COPY(Memo1.Lines[x],332,10)))
            else
              fieldbyname('data_ultimacompra_anterior').asstring         := '';
            fieldbyname('notafiscal_anterior').asstring       := TrimLeft(TrimRight(COPY(Memo1.Lines[x],342,6)));
            fieldbyname('precocusto_anterior').asstring       := TrimLeft(TrimRight(COPY(Memo1.Lines[x],348,18)));
            fieldbyname('precovenda_anterior').asstring       := TrimLeft(TrimRight(COPY(Memo1.Lines[x],366,18)));
            fieldbyname('customedio').asstring                := TrimLeft(TrimRight(COPY(Memo1.Lines[x],384,18)));
            fieldbyname('auto_aplicacao').asstring            := TrimLeft(TrimRight(COPY(Memo1.Lines[x],402,60)));
            fieldbyname('auto_complemento').asstring          := TrimLeft(TrimRight(COPY(Memo1.Lines[x],462,60)));
            if ( TrimLeft(TrimRight(COPY(Memo1.Lines[x],522,10))) <> '0000000000' ) and ( TrimLeft(TrimRight(COPY(Memo1.Lines[x],522,10))) <> '30/12/1899' ) then
              fieldbyname('data_remarcacao_custo').asstring     := TrimLeft(TrimRight(COPY(Memo1.Lines[x],522,10)))
            else
              fieldbyname('data_remarcacao_custo').asstring     := '';

            if ( TrimLeft(TrimRight(COPY(Memo1.Lines[x],532,10))) <> '0000000000' ) and ( TrimLeft(TrimRight(COPY(Memo1.Lines[x],532,10))) <> '30/12/1899' ) then
              fieldbyname('data_remarcacao_venda').asstring     := TrimLeft(TrimRight(COPY(Memo1.Lines[x],532,10)))
            else
              fieldbyname('data_remarcacao_venda').asstring     := '';

            fieldbyname('situacao').AsInteger                   := strtoint(COPY(Memo1.Lines[x],542,1));
            fieldbyname('aliquota').asstring                    := TrimLeft(TrimRight(COPY(Memo1.Lines[x],543,18)));
            fieldbyname('cst').asstring                         := TrimLeft(TrimRight(COPY(Memo1.Lines[x],561,3)));

            if TrimLeft(TrimRight(COPY(Memo1.Lines[x],564,18))) <> '000000000000000000' then
            begin
              fieldbyname('PRECO_PROMOCAO').asstring       := TrimLeft(TrimRight(COPY(Memo1.Lines[x],564,18)));

              if ( TrimLeft(TrimRight(COPY(Memo1.Lines[x],582,10))) <> '0000000000' ) and ( TrimLeft(TrimRight(COPY(Memo1.Lines[x],582,10))) <> '30/12/1899' ) then
                fieldbyname('DATA_PROMOCAO').asstring     := TrimLeft(TrimRight(COPY(Memo1.Lines[x],582,10)));

              if ( TrimLeft(TrimRight(COPY(Memo1.Lines[x],592,10))) <> '0000000000' ) and ( TrimLeft(TrimRight(COPY(Memo1.Lines[x],592,10))) <> '30/12/1899' ) then
                fieldbyname('FIM_PROMOCAO').asstring     := TrimLeft(TrimRight(COPY(Memo1.Lines[x],592,10)));
            end;

            post;
          end;
        end
        else
        begin // editar
          LITEM.Caption := 'Atualizando Preço '+copy(Memo1.Lines[x],20,60);
          query.edit;
          query.fieldbyname('codbarra').asstring              := TrimLeft(TrimRight(COPY(Memo1.Lines[x],7,13)));
          query.fieldbyname('produto').asstring               := TrimLeft(TrimRight(COPY(Memo1.Lines[x],20,60)));
          query.fieldbyname('notafiscal').asstring            := TrimLeft(TrimRight(COPY(Memo1.Lines[x],126,6)));
          query.fieldbyname('precocusto').asstring            := TrimLeft(TrimRight(COPY(Memo1.Lines[x],132,18)));
          query.fieldbyname('precovenda').asstring            := TrimLeft(TrimRight(COPY(Memo1.Lines[x],150,18)));
          query.fieldbyname('precocusto_anterior').asstring   := TrimLeft(TrimRight(COPY(Memo1.Lines[x],348,18)));
          query.fieldbyname('precovenda_anterior').asstring   := TrimLeft(TrimRight(COPY(Memo1.Lines[x],366,18)));
          query.fieldbyname('customedio').asstring            := TrimLeft(TrimRight(COPY(Memo1.Lines[x],384,18)));
          if ( TrimLeft(TrimRight(COPY(Memo1.Lines[x],522,10))) <> '0000000000' ) and ( TrimLeft(TrimRight(COPY(Memo1.Lines[x],522,10))) <> '30/12/1899' ) then
            query.fieldbyname('data_remarcacao_custo').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],522,10)))
          else
            query.fieldbyname('data_remarcacao_custo').asstring := '';
          if ( TrimLeft(TrimRight(COPY(Memo1.Lines[x],532,10))) <> '0000000000' ) and ( TrimLeft(TrimRight(COPY(Memo1.Lines[x],532,10))) <> '30/12/1899' ) then
            query.fieldbyname('data_remarcacao_venda').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],532,10)))
          else
            query.fieldbyname('data_remarcacao_venda').asstring := '';


          query.fieldbyname('situacao').AsInteger              := strtoint(COPY(Memo1.Lines[x],542,1));
          query.fieldbyname('aliquota').asstring              := TrimLeft(TrimRight(COPY(Memo1.Lines[x],543,18)));
          query.fieldbyname('cst').asstring                   := TrimLeft(TrimRight(COPY(Memo1.Lines[x],561,3)));

          if TrimLeft(TrimRight(COPY(Memo1.Lines[x],564,18))) <> '000000000000000000' then
            begin
              QUERY.fieldbyname('PRECO_PROMOCAO').asstring       := TrimLeft(TrimRight(COPY(Memo1.Lines[x],564,18)));

              if ( TrimLeft(TrimRight(COPY(Memo1.Lines[x],582,10))) <> '0000000000' ) and ( TrimLeft(TrimRight(COPY(Memo1.Lines[x],582,10))) <> '30/12/1899' ) then
                QUERY.fieldbyname('DATA_PROMOCAO').asstring     := TrimLeft(TrimRight(COPY(Memo1.Lines[x],582,10)));

              if ( TrimLeft(TrimRight(COPY(Memo1.Lines[x],592,10))) <> '0000000000' ) and ( TrimLeft(TrimRight(COPY(Memo1.Lines[x],592,10))) <> '30/12/1899' ) then
                QUERY.fieldbyname('FIM_PROMOCAO').asstring     := TrimLeft(TrimRight(COPY(Memo1.Lines[x],592,10)));
            end
            ELSE
            BEGIN
               QUERY.fieldbyname('PRECO_PROMOCAO').asFLOAT       := 0;
            END;


          query.post;
        end;
      except
         //
      end;
      barra.POSITION := BARRA.POSiTION + 1;
      Application.ProcessMessages;
      if not continua then break;
      end;
      if not continua then exit;
      GroupBox2.caption := 'Produtos atualizados com Sucesso!';

      if fileexists(edestino.text+'cp_produto.txt') then
        deletefile(edestino.text+'cp_produto.txt');
      rproduto.Checked := False;

   end;
  end;  // final produtos

  if rcliente.Checked then     // clientes
  begin
   if not FileExists(edestino.Text+'cp_cliente.txt') then
   begin
     application.messagebox('Arquivo "cp_cliente.txt" para atualização de clientes não foi encontrato! Favor verificar!','Atenção',mb_ok+MB_ICONERROR);
      rcliente.Checked := False;
   end
   else
   begin
    GROUPBOX2.Caption := 'Aguarde... Preparando o arquivo "cp_cliente.txt"';
    Application.ProcessMessages;

    BARRA.Position := 0;

    GROUPBOX2.Caption := 'Aguarde... Atualizando Clientes...';
    Application.ProcessMessages;

    Memo1.Text := '';
    Memo1.Lines.LoadFromFile(edestino.text+'cp_cliente.txt');
    barra.Max := memo1.Lines.Count;
    Memo1.Lines[0];

    for x:= 0 to memo1.lines.count-1 do
      begin
      try
        query.Close;
        query.sql.clear;
        query.sql.Add('select * from c000007 where codigo = '''+copy(Memo1.Lines[x],1,6)+'''');
        query.Open;

        if query.recordcount = 0 then  // incluir
        begin
          with query do
          begin
            LITEM.Caption := 'Incluindo '+copy(Memo1.Lines[x],20,60);

                //ShowMessage(TrimLeft(TrimRight(COPY(Memo1.Lines[x],1,6)))+ ' ' + TrimLeft(TrimRight(COPY(Memo1.Lines[x],7,80))));

            if TrimLeft(TrimRight(COPY(Memo1.Lines[x],7,80))) <> '' then
              begin
                Insert;
                fieldbyname('codigo').asstring              := TrimLeft(TrimRight(COPY(Memo1.Lines[x],1,6))); //,6,'0','E')+
                fieldbyname('nome').asstring                := TrimLeft(TrimRight(COPY(Memo1.Lines[x],7,80))); //,80,' ','D')+
                fieldbyname('apelido').asstring             := TrimLeft(TrimRight(COPY(Memo1.Lines[x],87,50))); //,50,' ','D')+
                fieldbyname('endereco').asstring            := TrimLeft(TrimRight(COPY(Memo1.Lines[x],137,80))); //,80,' ','D')+
                fieldbyname('bairro').asstring              := TrimLeft(TrimRight(COPY(Memo1.Lines[x],217,30))); //,30,' ','D')+
                fieldbyname('cidade').asstring              := TrimLeft(TrimRight(COPY(Memo1.Lines[x],247,40))); //,40,' ','D')+
                fieldbyname('uf').asstring                  := TrimLeft(TrimRight(COPY(Memo1.Lines[x],287,2))); //,2,' ','D')+
                fieldbyname('cep').asstring                 := TrimLeft(TrimRight(COPY(Memo1.Lines[x],289,10))); //,10,' ','D')+
                fieldbyname('complemento').asstring         := TrimLeft(TrimRight(COPY(Memo1.Lines[x],299,40))); //,40,' ','D')+
                fieldbyname('moradia').asstring             := TrimLeft(TrimRight(COPY(Memo1.Lines[x],339,10))); //,10,' ','D')+
                fieldbyname('tipo').asstring                := TrimLeft(TrimRight(COPY(Memo1.Lines[x],349,18))); //,18,'0','E')+
                fieldbyname('situacao').asstring            := TrimLeft(TrimRight(COPY(Memo1.Lines[x],367,18))); //,18,'0','E')+
                fieldbyname('telefone1').asstring           := TrimLeft(TrimRight(COPY(Memo1.Lines[x],385,20))); //,20,' ','D')+
                fieldbyname('telefone2').asstring           := TrimLeft(TrimRight(COPY(Memo1.Lines[x],405,20))); //,20,' ','D')+
                fieldbyname('telefone3').asstring           := TrimLeft(TrimRight(COPY(Memo1.Lines[x],425,20))); //,20,' ','D')+
                fieldbyname('celular').asstring             := TrimLeft(TrimRight(COPY(Memo1.Lines[x],445,20))); //,20,' ','D')+
                fieldbyname('email').asstring               := TrimLeft(TrimRight(COPY(Memo1.Lines[x],465,50))); //,50,' ','D')+
                fieldbyname('rg').asstring                  := TrimLeft(TrimRight(COPY(Memo1.Lines[x],515,25))); //,25,' ','D')+
                fieldbyname('cpf').asstring                 := TrimLeft(TrimRight(COPY(Memo1.Lines[x],540,18))); //,18,' ','D')+
                fieldbyname('filiacao').asstring            := TrimLeft(TrimRight(COPY(Memo1.Lines[x],558,50))); //,50,' ','D')+
                fieldbyname('estadocivil').asstring         := TrimLeft(TrimRight(COPY(Memo1.Lines[x],608,15))); //,15,' ','D')+
                fieldbyname('conjuge').asstring             := TrimLeft(TrimRight(COPY(Memo1.Lines[x],623,60))); //,60,' ','D')+
                fieldbyname('profissao').asstring           := TrimLeft(TrimRight(COPY(Memo1.Lines[x],683,30))); //,30,' ','D')+
                fieldbyname('empresa').asstring             := TrimLeft(TrimRight(COPY(Memo1.Lines[x],713,40))); //,40,' ','D')+
                fieldbyname('renda').asstring               := TrimLeft(TrimRight(COPY(Memo1.Lines[x],753,18))); //,18,'0','E')+
                fieldbyname('limite').asstring              := TrimLeft(TrimRight(COPY(Memo1.Lines[x],771,18))); //,18,'0','E')+
                fieldbyname('ref1').asstring                := TrimLeft(TrimRight(COPY(Memo1.Lines[x],789,50))); //,50,' ','D')+
                fieldbyname('ref2').asstring                := TrimLeft(TrimRight(COPY(Memo1.Lines[x],839,50))); //,50,' ','D')+
                fieldbyname('codvendedor').asstring         := TrimLeft(TrimRight(COPY(Memo1.Lines[x],889,6))); //,6,'0','E')+
                fieldbyname('data_cadastro').asstring       := TrimLeft(TrimRight(COPY(Memo1.Lines[x],895,10))); //,10,'0','E')+
                fieldbyname('data_ultimacompra').asstring   := TrimLeft(TrimRight(COPY(Memo1.Lines[x],905,10))); //,10,'0','E')+
                {
                fieldbyname('obs1').asstring                := TrimLeft(TrimRight(COPY(Memo1.Lines[x],915,80))); //,80,' ','D')+
                fieldbyname('obs2').asstring                := TrimLeft(TrimRight(COPY(Memo1.Lines[x],995,80))); //,80,' ','D')+
                fieldbyname('obs3').asstring                := TrimLeft(TrimRight(COPY(Memo1.Lines[x],1075,80))); //,80,' ','D')+
                fieldbyname('obs4').asstring                := TrimLeft(TrimRight(COPY(Memo1.Lines[x],1155,80))); //,80,' ','D')+
                fieldbyname('obs5').asstring                := TrimLeft(TrimRight(COPY(Memo1.Lines[x],1235,80))); //,80,' ','D')+
                fieldbyname('obs6').asstring                := TrimLeft(TrimRight(COPY(Memo1.Lines[x],1315,80))); //,80,' ','D')+
                }

                fieldbyname('nascimento').asstring          := TrimLeft(TrimRight(COPY(Memo1.Lines[x],915,10))); //,10,'0','E')+
                fieldbyname('codregiao').asstring           := TrimLeft(TrimRight(COPY(Memo1.Lines[x],925,6))); //,6,'0','E')+
                fieldbyname('codconvenio').asstring         := TrimLeft(TrimRight(COPY(Memo1.Lines[x],931,10))); //,10,' ','D')+
                fieldbyname('cod_municipio_ibge').asstring  := TrimLeft(TrimRight(COPY(Memo1.Lines[x],941,10))); //,10,' ','D'));
                post;
              end;
          end;
        end
        else
        begin // editar
          LITEM.Caption := 'Atualizando '+copy(Memo1.Lines[x],20,60);
          query.edit;
          query.fieldbyname('nome').asstring                := TrimLeft(TrimRight(COPY(Memo1.Lines[x],7,80))); //,80,' ','D')+
          query.fieldbyname('apelido').asstring             := TrimLeft(TrimRight(COPY(Memo1.Lines[x],87,50))); //,50,' ','D')+
          query.fieldbyname('endereco').asstring            := TrimLeft(TrimRight(COPY(Memo1.Lines[x],137,80))); //,80,' ','D')+
          query.fieldbyname('bairro').asstring              := TrimLeft(TrimRight(COPY(Memo1.Lines[x],217,30))); //,30,' ','D')+
          query.fieldbyname('cidade').asstring              := TrimLeft(TrimRight(COPY(Memo1.Lines[x],247,40))); //,40,' ','D')+
          query.fieldbyname('uf').asstring                  := TrimLeft(TrimRight(COPY(Memo1.Lines[x],287,2))); //,2,' ','D')+
          query.fieldbyname('cep').asstring                 := TrimLeft(TrimRight(COPY(Memo1.Lines[x],289,10))); //,10,' ','D')+
          query.fieldbyname('complemento').asstring         := TrimLeft(TrimRight(COPY(Memo1.Lines[x],299,40))); //,40,' ','D')+
          query.fieldbyname('moradia').asstring             := TrimLeft(TrimRight(COPY(Memo1.Lines[x],339,10))); //,10,' ','D')+
          query.fieldbyname('tipo').asstring                := TrimLeft(TrimRight(COPY(Memo1.Lines[x],349,18))); //,18,'0','E')+
          query.fieldbyname('situacao').asstring            := TrimLeft(TrimRight(COPY(Memo1.Lines[x],367,18))); //,18,'0','E')+
          query.fieldbyname('telefone1').asstring           := TrimLeft(TrimRight(COPY(Memo1.Lines[x],385,20))); //,20,' ','D')+
          query.fieldbyname('telefone2').asstring           := TrimLeft(TrimRight(COPY(Memo1.Lines[x],405,20))); //,20,' ','D')+
          query.fieldbyname('telefone3').asstring           := TrimLeft(TrimRight(COPY(Memo1.Lines[x],425,20))); //,20,' ','D')+
          query.fieldbyname('celular').asstring             := TrimLeft(TrimRight(COPY(Memo1.Lines[x],445,20))); //,20,' ','D')+
          query.fieldbyname('email').asstring               := TrimLeft(TrimRight(COPY(Memo1.Lines[x],465,50))); //,50,' ','D')+
          query.fieldbyname('rg').asstring                  := TrimLeft(TrimRight(COPY(Memo1.Lines[x],515,25))); //,25,' ','D')+
          query.fieldbyname('cpf').asstring                 := TrimLeft(TrimRight(COPY(Memo1.Lines[x],540,18))); //,18,' ','D')+
          query.fieldbyname('filiacao').asstring            := TrimLeft(TrimRight(COPY(Memo1.Lines[x],558,50))); //,50,' ','D')+
          query.fieldbyname('estadocivil').asstring         := TrimLeft(TrimRight(COPY(Memo1.Lines[x],608,15))); //,15,' ','D')+
          query.fieldbyname('conjuge').asstring             := TrimLeft(TrimRight(COPY(Memo1.Lines[x],623,60))); //,60,' ','D')+
          query.fieldbyname('profissao').asstring           := TrimLeft(TrimRight(COPY(Memo1.Lines[x],683,30))); //,30,' ','D')+
          query.fieldbyname('empresa').asstring             := TrimLeft(TrimRight(COPY(Memo1.Lines[x],713,40))); //,40,' ','D')+
          query.fieldbyname('renda').asstring               := TrimLeft(TrimRight(COPY(Memo1.Lines[x],753,18))); //,18,'0','E')+
          query.fieldbyname('limite').asstring              := TrimLeft(TrimRight(COPY(Memo1.Lines[x],771,18))); //,18,'0','E')+
          query.fieldbyname('ref1').asstring                := TrimLeft(TrimRight(COPY(Memo1.Lines[x],789,50))); //,50,' ','D')+
          query.fieldbyname('ref2').asstring                := TrimLeft(TrimRight(COPY(Memo1.Lines[x],839,50))); //,50,' ','D')+
          query.fieldbyname('codvendedor').asstring         := TrimLeft(TrimRight(COPY(Memo1.Lines[x],889,6))); //,6,'0','E')+
          query.fieldbyname('data_cadastro').asstring       := TrimLeft(TrimRight(COPY(Memo1.Lines[x],895,10))); //,10,'0','E')+
          query.fieldbyname('data_ultimacompra').asstring   := TrimLeft(TrimRight(COPY(Memo1.Lines[x],905,10))); //,10,'0','E')+
          {
          query.fieldbyname('obs1').asstring                := TrimLeft(TrimRight(COPY(Memo1.Lines[x],915,80))); //,80,' ','D')+
          query.fieldbyname('obs2').asstring                := TrimLeft(TrimRight(COPY(Memo1.Lines[x],995,80))); //,80,' ','D')+
          query.fieldbyname('obs3').asstring                := TrimLeft(TrimRight(COPY(Memo1.Lines[x],1075,80))); //,80,' ','D')+
          query.fieldbyname('obs4').asstring                := TrimLeft(TrimRight(COPY(Memo1.Lines[x],1155,80))); //,80,' ','D')+
          query.fieldbyname('obs5').asstring                := TrimLeft(TrimRight(COPY(Memo1.Lines[x],1235,80))); //,80,' ','D')+
          query.fieldbyname('obs6').asstring                := TrimLeft(TrimRight(COPY(Memo1.Lines[x],1315,80))); //,80,' ','D')+
          }
          query.fieldbyname('nascimento').asstring          := TrimLeft(TrimRight(COPY(Memo1.Lines[x],915,10))); //,10,'0','E')+
          query.fieldbyname('codregiao').asstring           := TrimLeft(TrimRight(COPY(Memo1.Lines[x],925,6))); //,6,'0','E')+
          query.fieldbyname('codconvenio').asstring         := TrimLeft(TrimRight(COPY(Memo1.Lines[x],931,10))); //,10,' ','D')+
          query.fieldbyname('cod_municipio_ibge').asstring  := TrimLeft(TrimRight(COPY(Memo1.Lines[x],941,10))); //,10,' ','D'));
          query.post;
        end;
      except
         //
      end;
      barra.POSITION := BARRA.POSiTION + 1;
      Application.ProcessMessages;

      if not continua then break;
    end;

    BARRA.Position := 0;

    if fileexists(edestino.text+'cp_mensagem.txt') then
      begin
        GROUPBOX2.Caption := 'Aguarde... Atualizando Mensagens dos Clientes...';
        Application.ProcessMessages;

        Memo1.Text := '';
        Memo1.Lines.LoadFromFile(edestino.text+'cp_mensagem.txt');
        barra.Max := memo1.Lines.Count;
        Memo1.Lines[0];

        for x:= 0 to memo1.lines.count-1 do
          begin
          try
            query.Close;
            query.sql.clear;
            query.sql.Add('select * from c000007 where codigo = '''+copy(Memo1.Lines[x],1,6)+'''');
            query.Open;

            if query.recordcount <> 0 then  // alterar
            begin
              LITEM.Caption := 'Atualizando '+copy(Memo1.Lines[x],20,60);
              query.edit;
              query.fieldbyname('obs1').asstring                := TrimLeft(TrimRight(COPY(Memo1.Lines[x],7,80))); //,80,' ','D')+
              query.fieldbyname('obs2').asstring                := TrimLeft(TrimRight(COPY(Memo1.Lines[x],87,80))); //,80,' ','D')+
              query.fieldbyname('obs3').asstring                := TrimLeft(TrimRight(COPY(Memo1.Lines[x],167,80))); //,80,' ','D')+
              query.fieldbyname('obs4').asstring                := TrimLeft(TrimRight(COPY(Memo1.Lines[x],247,80))); //,80,' ','D')+
              query.fieldbyname('obs5').asstring                := TrimLeft(TrimRight(COPY(Memo1.Lines[x],347,80))); //,80,' ','D')+
              query.fieldbyname('obs6').asstring                := TrimLeft(TrimRight(COPY(Memo1.Lines[x],427,80))); //,80,' ','D')+
              query.post;
            end;
          except
             //
          end;
          barra.POSITION := BARRA.POSiTION + 1;
          Application.ProcessMessages;

          if not continua then break;
        end;

      end;

    if not continua then exit;
    GroupBox2.caption := 'Clientes atualizados com Sucesso!';

    if fileexists(edestino.text+'cp_cliente.txt') then
      deletefile(edestino.text+'cp_cliente.txt');
    if fileexists(edestino.text+'cp_mensagem.txt') then
      deletefile(edestino.text+'cp_mensagem.txt');

      rcliente.Checked := False;
   end;
  end;  // final clientes

  if rserial.Checked then  // seriais
    begin

    if not FileExists(edestino.Text+'cp_serial.txt') then
   begin
     application.messagebox('Arquivo "cp_serial.txt" para atualização de seriais de produtos não foi encontrado! Favor verificar!','Atenção',mb_ok+MB_ICONERROR);
      rserial.Checked := False;
   end
   else
   begin
    GROUPBOX2.Caption := 'Aguarde... Preparando o arquivo "cp_serial.txt"';
    Application.ProcessMessages;

      BARRA.Position := 0;

      GROUPBOX2.Caption := 'Aguarde... Atualizando Seriais de Produtos...';
      Application.ProcessMessages;

    Memo1.Text := '';
    Memo1.Lines.LoadFromFile(edestino.text+'cp_serial.txt');
    barra.Max := memo1.Lines.Count;
    Memo1.Lines[0];

    for x:= 0 to memo1.lines.count-1 do
      begin
      try

        query.Close;
        query.sql.clear;
        query.sql.Add('select * from c000022 where codigo = '''+copy(Memo1.Lines[x],1,6)+'''');
        query.Open;
        if query.recordcount = 0 then  // incluir
        begin
          with query do
          begin
            LITEM.Caption := 'Incluindo '+copy(Memo1.Lines[x],20,60);
            Insert;
            fieldbyname('codigo').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],1,6)));
            fieldbyname('codproduto').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],7,6)));
            fieldbyname('serial').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],13,30)));
            fieldbyname('estoque').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],43,18)));
            fieldbyname('codcliente').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],61,6)));
            fieldbyname('precocusto').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],67,18)));
            fieldbyname('precovenda').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],85,18)));
            if ( TrimLeft(TrimRight(COPY(Memo1.Lines[x],103,10))) <> '' ) or ( TrimLeft(TrimRight(COPY(Memo1.Lines[x],103,10))) <> '30/12/1899' ) then
              fieldbyname('datavenda').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],103,10)))
            else
              fieldbyname('datavenda').asstring := '';
            fieldbyname('situacao').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],113,1)));
            fieldbyname('cliente').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],114,80)));
            fieldbyname('codnota').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],194,6)));
            fieldbyname('coditem').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],200,6)));
            if ( TrimLeft(TrimRight(COPY(Memo1.Lines[x],206,10))) <> '' ) or ( TrimLeft(TrimRight(COPY(Memo1.Lines[x],206,10))) <> '30/12/1899' ) then
              fieldbyname('datacompra').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],206,10)))
            else
              fieldbyname('datacompra').asstring := '';
            fieldbyname('numeronota').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],216,6)));
            fieldbyname('codfornecedor').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],222,6)));
            fieldbyname('codvenda_item').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],228,6)));
            fieldbyname('filtro').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],234,1)));
            fieldbyname('codvenda').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],235,6)));
            Post;
          end;
        end
        else
        begin // editar
          LITEM.Caption := 'Atualizando Seriais '+copy(Memo1.Lines[x],20,60);
          query.edit;
          query.fieldbyname('codigo').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],1,6)));
          query.fieldbyname('codproduto').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],7,6)));
          query.fieldbyname('serial').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],13,30)));
          query.fieldbyname('estoque').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],43,18)));
          query.fieldbyname('codcliente').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],61,6)));
          query.fieldbyname('precocusto').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],67,18)));
          query.fieldbyname('precovenda').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],85,18)));
          if ( TrimLeft(TrimRight(COPY(Memo1.Lines[x],103,10))) <> '' ) or ( TrimLeft(TrimRight(COPY(Memo1.Lines[x],103,10))) <> '30/12/1899' ) then
            query.fieldbyname('datavenda').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],103,10)))
          else
            query.fieldbyname('datavenda').asstring := '';
          query.fieldbyname('situacao').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],113,1)));
          query.fieldbyname('cliente').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],114,80)));
          query.fieldbyname('codnota').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],194,6)));
          query.fieldbyname('coditem').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],200,6)));

          if ( TrimLeft(TrimRight(COPY(Memo1.Lines[x],206,10))) <> '' ) or ( TrimLeft(TrimRight(COPY(Memo1.Lines[x],206,10))) <> '30/12/1899' ) then
            query.fieldbyname('datacompra').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],206,10)))
          else
            query.fieldbyname('datacompra').asstring := '';

          query.fieldbyname('numeronota').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],216,6)));
          query.fieldbyname('codfornecedor').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],222,6)));
          query.fieldbyname('codvenda_item').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],228,6)));
          query.fieldbyname('filtro').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],234,1)));
          query.fieldbyname('codvenda').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],235,6)));
          query.post;
        end;
      except
         //
      end;
      barra.POSITION := BARRA.POSiTION + 1;
      Application.ProcessMessages;
      if not continua then break;
    end;
    if not continua then exit;
    GroupBox2.caption := 'Seriais de Produtos atualizados com Sucesso!';
    if fileexists(edestino.text+'cp_serial.txt') then
      deletefile(edestino.text+'cp_serial.txt');
      rserial.Checked := False;

   end;

    end;

  if rprodutograde.Checked then  // grade dos produtos
    begin

    if not FileExists(edestino.Text+'cp_prodgrade.txt') then
   begin
     application.messagebox('Arquivo "cp_prodgrade.txt" para atualização de grades de produtos não foi encontrado! Favor verificar!','Atenção',mb_ok+MB_ICONERROR);
      rprodutograde.Checked := False;
   end
   else
   begin
    GROUPBOX2.Caption := 'Aguarde... Preparando o arquivo "cp_prodgrade.txt"';
    Application.ProcessMessages;

      BARRA.Position := 0;

      GROUPBOX2.Caption := 'Aguarde... Atualizando Grades de Produtos...';
      Application.ProcessMessages;

    Memo1.Text := '';
    Memo1.Lines.LoadFromFile(edestino.text+'cp_prodgrade.txt');
    barra.Max := memo1.Lines.Count;
    Memo1.Lines[0];

    for x:= 0 to memo1.lines.count-1 do
      begin
      try

        query.Close;
        query.sql.clear;
        query.sql.Add('select * from c000021 where codigo = '''+copy(Memo1.Lines[x],1,6)+'''');
        query.Open;
        if query.recordcount = 0 then  // incluir
        begin
          with query do
          begin
            LITEM.Caption := 'Incluindo '+copy(Memo1.Lines[x],20,60);
            Application.ProcessMessages;
            Insert;
            fieldbyname('codigo').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],1,6)));
            fieldbyname('codproduto').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],7,6)));
            fieldbyname('numeracao').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],13,6)));
            fieldbyname('codbarra').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],19,13)));
            fieldbyname('estoque').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],32,18)));
            fieldbyname('cor').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],50,15)));
            Post;
          end;
        end
        else
        begin // editar
          LITEM.Caption := 'Atualizando Grades '+copy(Memo1.Lines[x],20,60);
          Application.ProcessMessages;
          query.edit;
          query.fieldbyname('codigo').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],1,6)));
          query.fieldbyname('codproduto').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],7,6)));
          query.fieldbyname('numeracao').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],13,6)));
          query.fieldbyname('codbarra').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],19,13)));
          query.fieldbyname('estoque').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],32,18)));
          query.fieldbyname('cor').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],50,15)));
          query.post;
        end;
      except
         //
      end;
      barra.POSITION := BARRA.POSiTION + 1;
      if not continua then break;
    end;
    if not continua then exit;
    GroupBox2.caption := 'Grades de Produtos atualizados com Sucesso!';
      if fileexists(edestino.text+'cp_prodgrade.txt') then
        deletefile(edestino.text+'cp_prodgrade.txt');
      rprodutograde.Checked := False;
   end;


    end;


  if rsubgrupo.Checked then  // Grade do Subgrupo
    begin

    if not FileExists(edestino.Text+'cp_gradesgrupo.txt') then
   begin
     application.messagebox('Arquivo "cp_gradesgrupo.txt" para atualização de grades de subgrupos não foi encontrado! Favor verificar!','Atenção',mb_ok+MB_ICONERROR);
      rsubgrupo.Checked := False;
   end
   else
   begin
    GROUPBOX2.Caption := 'Aguarde... Preparando o arquivo "cp_gradesgrupo.txt"';
    Application.ProcessMessages;

      BARRA.Position := 0;

      GROUPBOX2.Caption := 'Aguarde... Atualizando Grades de Subgrupos...';
      Application.ProcessMessages;

    Memo1.Text := '';
    Memo1.Lines.LoadFromFile(edestino.text+'cp_gradesgrupo.txt');
    barra.Max := memo1.Lines.Count;
    Memo1.Lines[0];

    for x:= 0 to memo1.lines.count-1 do
      begin
      try
        query.Close;
        query.sql.clear;
        query.sql.Add('select * from c000020 where codigo = '''+copy(Memo1.Lines[x],1,6)+'''');
        query.Open;
        if query.recordcount = 0 then  // incluir
        begin
          with query do
          begin
            LITEM.Caption := 'Incluindo '+copy(Memo1.Lines[x],20,60);
            Insert;
            fieldbyname('codigo').asstring  := TrimLeft(TrimRight(COPY(Memo1.Lines[x],1,6)));
            fieldbyname('codsubgrupo').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],7,6)));
            fieldbyname('numeracao').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],13,30)));
            fieldbyname('ordem').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],43,5)));
            Post;
          end;
        end
        else
        begin // editar
          LITEM.Caption := 'Atualizando Grades '+copy(Memo1.Lines[x],20,60);
          query.edit;
          query.fieldbyname('codigo').asstring  := TrimLeft(TrimRight(COPY(Memo1.Lines[x],1,6)));
          query.fieldbyname('codsubgrupo').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],7,6)));
          query.fieldbyname('numeracao').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],13,30)));
          query.fieldbyname('ordem').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],43,5)));
          query.post;
        end;
      except
         //
      end;
      barra.POSITION := BARRA.POSiTION + 1;
      Application.ProcessMessages;
      if not continua then break;
    end;
    if not continua then exit;
    GroupBox2.caption := 'Grades de Subgrupos atualizados com Sucesso!';
      if fileexists(edestino.text+'cp_gradesgrupo.txt') then
        deletefile(edestino.text+'cp_gradesgrupo.txt');
      rsubgrupo.Checked := False;
   end;


    end;


  if rcodbarras.Checked then  // codigo de barras
    begin


    if not FileExists(edestino.Text+'cp_codbarra.txt') then
   begin
     application.messagebox('Arquivo "cp_codbarra.txt" para atualização de código de barras não foi encontrado! Favor verificar!','Atenção',mb_ok+MB_ICONERROR);
      rcodbarras.Checked := False;
   end
   else
   begin
    GROUPBOX2.Caption := 'Aguarde... Preparando o arquivo "cp_codbarra.txt"';
    Application.ProcessMessages;

      BARRA.Position := 0;

      GROUPBOX2.Caption := 'Aguarde... Atualizando Código de Barras...';
      Application.ProcessMessages;

    Memo1.Text := '';
    Memo1.Lines.LoadFromFile(edestino.text+'cp_codbarra.txt');
    barra.Max := memo1.Lines.Count;
    Memo1.Lines[0];

    for x:= 0 to memo1.lines.count-1 do
      begin
      try

        query.Close;
        query.sql.clear;
        query.sql.Add('select * from c000055 where codigo = '''+copy(Memo1.Lines[x],1,6)+'''');
        query.Open;
        if query.recordcount = 0 then  // incluir
        begin
          with query do
          begin
            LITEM.Caption := 'Incluindo '+copy(Memo1.Lines[x],20,60);
            Insert;
            fieldbyname('codigo').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],1,6)));
            fieldbyname('codproduto').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],7,6)));
            fieldbyname('codbarra').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],13,13)));
            Post;
          end;
        end
        else
        begin // editar
          LITEM.Caption := 'Atualizando C.Barras '+copy(Memo1.Lines[x],20,60);
          query.edit;
          query.fieldbyname('codigo').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],1,6)));
          query.fieldbyname('codproduto').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],7,6)));
          query.fieldbyname('codbarra').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],13,13)));
          query.post;
        end;
      except
         //
      end;
      barra.POSITION := BARRA.POSiTION + 1;
            Application.ProcessMessages;
      if not continua then break;
    end;
    if not continua then exit;
    GroupBox2.caption := 'Código de Barras atualizados com Sucesso!';
      if fileexists(edestino.text+'cp_codbarra.txt') then
        deletefile(edestino.text+'cp_codbarra.txt');
      rcodbarras.Checked := False;
   end;


    end;

  if rmarca.Checked then  // marca
    begin



    if not FileExists(edestino.Text+'cp_marca.txt') then
   begin
     application.messagebox('Arquivo "cp_marca.txt" para atualização de marcas/laboratórios não foi encontrado! Favor verificar!','Atenção',mb_ok+MB_ICONERROR);
      rmarca.Checked := False;
   end
   else
   begin
    GROUPBOX2.Caption := 'Aguarde... Preparando o arquivo "cp_marca.txt"';
    Application.ProcessMessages;

      BARRA.Position := 0;

      GROUPBOX2.Caption := 'Aguarde... Atualizando Marcas/Laboratórios...';
      Application.ProcessMessages;

    Memo1.Text := '';
    Memo1.Lines.LoadFromFile(edestino.text+'cp_marca.txt');
    barra.Max := memo1.Lines.Count;
    Memo1.Lines[0];

    for x:= 0 to memo1.lines.count-1 do
      begin
      try

        query.Close;
        query.sql.clear;
        query.sql.Add('select * from c000019 where codigo = '''+copy(Memo1.Lines[x],1,6)+'''');
        query.Open;
        if query.recordcount = 0 then  // incluir
        begin
          with query do
          begin
            LITEM.Caption := 'Incluindo '+copy(Memo1.Lines[x],20,60);
            Insert;
            fieldbyname('codigo').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],1,6)));
            fieldbyname('nome').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],7,80)));
            fieldbyname('endereco').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],87,80)));
            fieldbyname('bairro').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],167,30)));
            fieldbyname('cidade').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],197,40)));
            fieldbyname('uf').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],237,2)));
            fieldbyname('cep').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],239,10)));
            fieldbyname('telefone1').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],249,20)));
            fieldbyname('telefone2').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],269,20)));
            fieldbyname('celular1').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],289,20)));
            fieldbyname('celular2').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],309,20)));
            fieldbyname('email').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],329,80)));
            fieldbyname('homepage').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],409,80)));
            fieldbyname('cnpj').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],489,24)));
            fieldbyname('ie').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],513,20)));
            if ( TrimLeft(TrimRight(COPY(Memo1.Lines[x],533,10))) <> '' ) or ( TrimLeft(TrimRight(COPY(Memo1.Lines[x],533,10))) <> '30/12/1899' ) then
              fieldbyname('data').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],533,10)))
            else
              fieldbyname('data').asstring := '';
            Post;
          end;
        end
        else
        begin // editar
          LITEM.Caption := 'Atualizando Marcas '+copy(Memo1.Lines[x],20,60);
          query.edit;
          query.fieldbyname('codigo').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],1,6)));
          query.fieldbyname('nome').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],7,80)));
          query.fieldbyname('endereco').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],87,80)));
          query.fieldbyname('bairro').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],167,30)));
          query.fieldbyname('cidade').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],197,40)));
          query.fieldbyname('uf').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],237,2)));
          query.fieldbyname('cep').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],239,10)));
          query.fieldbyname('telefone1').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],249,20)));
          query.fieldbyname('telefone2').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],269,20)));
          query.fieldbyname('celular1').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],289,20)));
          query.fieldbyname('celular2').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],309,20)));
          query.fieldbyname('email').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],329,80)));
          query.fieldbyname('homepage').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],409,80)));
          query.fieldbyname('cnpj').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],489,24)));
          query.fieldbyname('ie').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],513,20)));
          if ( TrimLeft(TrimRight(COPY(Memo1.Lines[x],533,10))) <> '' ) or ( TrimLeft(TrimRight(COPY(Memo1.Lines[x],533,10))) <> '30/12/1899' ) then
            query.fieldbyname('data').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],533,10)))
          else
            query.fieldbyname('data').asstring := '';
          query.post;
        end;
      except
         //
      end;
      barra.POSITION := BARRA.POSiTION + 1;
            Application.ProcessMessages;
      if not continua then break;
    end;
    if not continua then exit;
    GroupBox2.caption := 'Marcas/Laboratório atualizados com Sucesso!';
      if fileexists(edestino.text+'cp_marca.txt') then
        deletefile(edestino.text+'cp_marca.txt');
      rmarca.Checked := False;
   end;



    end;

  if rgrupo.Checked then  // grupo de produtos
  begin

    if not FileExists(edestino.Text+'cp_grupo.txt') then
   begin
     application.messagebox('Arquivo "cp_grupo.txt" para atualização de grupos de produtos não foi encontrado! Favor verificar!','Atenção',mb_ok+MB_ICONERROR);
      rgrupo.Checked := False;
   end
   else
   begin
    GROUPBOX2.Caption := 'Aguarde... Preparando o arquivo "cp_grupo.txt"';
    Application.ProcessMessages;

      BARRA.Position := 0;

      GROUPBOX2.Caption := 'Aguarde... Atualizando Grupos de Produtos...';
      Application.ProcessMessages;

    Memo1.Text := '';
    Memo1.Lines.LoadFromFile(edestino.text+'cp_grupo.txt');
    barra.Max := memo1.Lines.Count;
    Memo1.Lines[0];

    for x:= 0 to memo1.lines.count-1 do
      begin
      try

        query.Close;
        query.sql.clear;
        query.sql.Add('select * from c000017 where codigo = '''+copy(Memo1.Lines[x],1,6)+'''');
        query.Open;
        if query.recordcount = 0 then  // incluir
        begin
          with query do
          begin
            LITEM.Caption := 'Incluindo '+copy(Memo1.Lines[x],20,60);
            Insert;
            fieldbyname('codigo').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],1,6)));
            fieldbyname('grupo').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],7,30)));
            fieldbyname('altera_preco_abcfarma').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],37,1)));
            Post;
          end;
        end
        else
        begin // editar
          LITEM.Caption := 'Atualizando Grupo'+copy(Memo1.Lines[x],20,60);
          query.edit;
          query.fieldbyname('codigo').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],1,6)));
          query.fieldbyname('grupo').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],7,30)));
          query.fieldbyname('altera_preco_abcfarma').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],37,1)));
          query.post;
        end;
      except
         //
      end;
      barra.POSITION := BARRA.POSiTION + 1;
            Application.ProcessMessages;
      if not continua then break;
    end;
    if not continua then exit;
    GroupBox2.caption := 'Grupos de Produtos atualizados com Sucesso!';
      if fileexists(edestino.text+'cp_grupo.txt') then
        deletefile(edestino.text+'cp_grupo.txt');
      rgrupo.Checked := False;

   end;
  end;  // final grupos de produtos


  if rsubgrupo.Checked then  // sub-grupo de produtos
  begin

    if not FileExists(edestino.Text+'cp_subgrupo.txt') then
   begin
     application.messagebox('Arquivo "cp_subgrupo.txt" para atualização de Sub-grupos de produtos não foi encontrado! Favor verificar!','Atenção',mb_ok+MB_ICONERROR);
      rsubgrupo.Checked := False;
   end
   else
   begin
    GROUPBOX2.Caption := 'Aguarde... Preparando o arquivo "cp_subgrupo.txt"';
    Application.ProcessMessages;

      BARRA.Position := 0;

      GROUPBOX2.Caption := 'Aguarde... Atualizando Sub-Grupos de Produtos...';
      Application.ProcessMessages;

    Memo1.Text := '';
    Memo1.Lines.LoadFromFile(edestino.text+'cp_subgrupo.txt');
    barra.Max := memo1.Lines.Count;
    Memo1.Lines[0];

    for x:= 0 to memo1.lines.count-1 do
      begin
      try

        query.Close;
        query.sql.clear;
        query.sql.Add('select * from c000018 where codigo = '''+copy(Memo1.Lines[x],1,6)+'''');
        query.Open;
        if query.recordcount = 0 then  // incluir
        begin
          with query do
          begin
            LITEM.Caption := 'Incluindo '+copy(Memo1.Lines[x],20,60);
            Insert;
            fieldbyname('codigo').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],1,6)));
            fieldbyname('codgrupo').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],7,6)));
            fieldbyname('subgrupo').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],13,30)));
            fieldbyname('altera_preco_abcfarma').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],43,1)));
            Post;
          end;
        end
        else
        begin // editar
          LITEM.Caption := 'Atualizando Sub-Grupo'+copy(Memo1.Lines[x],20,60);
          query.edit;
          query.fieldbyname('codigo').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],1,6)));
          query.fieldbyname('codgrupo').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],7,6)));
          query.fieldbyname('subgrupo').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],13,30)));
          query.fieldbyname('altera_preco_abcfarma').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],4,1)));
          query.post;
        end;
      except
         //
      end;
      barra.POSITION := BARRA.POSiTION + 1;
      Application.ProcessMessages;
      if not continua then break;
    end;
    if not continua then exit;
    GroupBox2.caption := 'Sub-Grupos de Produtos atualizados com Sucesso!';
      if fileexists(edestino.text+'cp_subgrupo.txt') then
        deletefile(edestino.text+'cp_subgrupo.txt');
      rsubgrupo.Checked := False;

   end;
  end;  // final sub-grupos de produtos

  if rfornecedor.Checked then     // fornecedor
  begin
   if not FileExists(edestino.Text+'cp_fornecedor.txt') then
   begin
     application.messagebox('Arquivo "cp_fornecedor.txt" para atualização de fornecedores não foi encontrado! Favor verificar!','Atenção',mb_ok+MB_ICONERROR);
      rfornecedor.Checked := False;
   end
   else
   begin
    GROUPBOX2.Caption := 'Aguarde... Preparando o arquivo "cp_fornecedor.txt"';
    Application.ProcessMessages;

    BARRA.Position := 0;

    GROUPBOX2.Caption := 'Aguarde... Atualizando Fornecedores...';
    Application.ProcessMessages;

    Memo1.Text := '';
    Memo1.Lines.LoadFromFile(edestino.text+'cp_fornecedor.txt');
    barra.Max := memo1.Lines.Count;
    Memo1.Lines[0];

    for x:= 0 to memo1.lines.count-1 do
      begin
      try
        query.Close;
        query.sql.clear;
        query.sql.Add('select * from c000009 where codigo = '''+copy(Memo1.Lines[x],1,6)+'''');
        query.Open;
        if query.recordcount = 0 then  // incluir
        begin
          with query do
          begin
            LITEM.Caption := 'Incluindo '+copy(Memo1.Lines[x],20,60);
            Insert;
            fieldbyname('codigo').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],1,6)));
            fieldbyname('nome').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],7,80)));
            fieldbyname('fantasia').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],87,50)));
            fieldbyname('endereco').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],137,80)));
            fieldbyname('bairro').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],217,30)));
            fieldbyname('cidade').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],247,40)));
            fieldbyname('uf').asstring:= TrimLeft(TrimRight(COPY(Memo1.Lines[x],287,2)));
            fieldbyname('cep').asstring:= TrimLeft(TrimRight(COPY(Memo1.Lines[x],289,10)));
            fieldbyname('telefone1').asstring:= TrimLeft(TrimRight(COPY(Memo1.Lines[x],299,20)));
            fieldbyname('telefone2').asstring:= TrimLeft(TrimRight(COPY(Memo1.Lines[x],319,20)));
            fieldbyname('contato1').asstring:= TrimLeft(TrimRight(COPY(Memo1.Lines[x],339,40)));
            fieldbyname('contato2').asstring:= TrimLeft(TrimRight(COPY(Memo1.Lines[x],379,40)));
            fieldbyname('fax').asstring:= TrimLeft(TrimRight(COPY(Memo1.Lines[x],419,20)));
            fieldbyname('celular1').asstring:= TrimLeft(TrimRight(COPY(Memo1.Lines[x],439,20)));
            fieldbyname('celular2').asstring:= TrimLeft(TrimRight(COPY(Memo1.Lines[x],459,20)));
            fieldbyname('email').asstring:= TrimLeft(TrimRight(COPY(Memo1.Lines[x],479,80)));
            fieldbyname('homepage').asstring:= TrimLeft(TrimRight(COPY(Memo1.Lines[x],559,80)));
            fieldbyname('cnpj').asstring:= TrimLeft(TrimRight(COPY(Memo1.Lines[x],639,24)));
            fieldbyname('ie').asstring:= TrimLeft(TrimRight(COPY(Memo1.Lines[x],663,20)));
            fieldbyname('banco').asstring:= TrimLeft(TrimRight(COPY(Memo1.Lines[x],683,30)));
            fieldbyname('agencia').asstring:= TrimLeft(TrimRight(COPY(Memo1.Lines[x],713,15)));
            fieldbyname('conta').asstring:= TrimLeft(TrimRight(COPY(Memo1.Lines[x],728,20)));
            fieldbyname('obs1').asstring:= TrimLeft(TrimRight(COPY(Memo1.Lines[x],748,80)));
            fieldbyname('obs2').asstring:= TrimLeft(TrimRight(COPY(Memo1.Lines[x],828,80)));
            fieldbyname('obs3').asstring:= TrimLeft(TrimRight(COPY(Memo1.Lines[x],908,80)));
            if ( TrimLeft(TrimRight(COPY(Memo1.Lines[x],988,10))) <> '' ) or ( TrimLeft(TrimRight(COPY(Memo1.Lines[x],988,10))) <> '30/12/1899' ) then
              fieldbyname('data').asstring:= TrimLeft(TrimRight(COPY(Memo1.Lines[x],988,10)))
            else
              fieldbyname('data').asstring:= '';

            fieldbyname('tipo').asstring:= TrimLeft(TrimRight(COPY(Memo1.Lines[x],998,1)));
            fieldbyname('IM').asstring:= TrimLeft(TrimRight(COPY(Memo1.Lines[x],999,25)));
            fieldbyname('CNAE').asstring:= TrimLeft(TrimRight(COPY(Memo1.Lines[x],1024,10)));
            fieldbyname('COD_MUNICIPIO_IBGE').asstring:= TrimLeft(TrimRight(COPY(Memo1.Lines[x],1034,10)));
            fieldbyname('IBGE').asstring:= TrimLeft(TrimRight(COPY(Memo1.Lines[x],1044,5)));
            fieldbyname('assistencia_tecnica').asstring:= TrimLeft(TrimRight(COPY(Memo1.Lines[x],1049,1)));
            fieldbyname('COMPLEMENTO').asstring:= TrimLeft(TrimRight(COPY(Memo1.Lines[x],1050,40)));
            post;
          end;
        end
        else
        begin // editar
          LITEM.Caption := 'Atualizando Fornecedor '+copy(Memo1.Lines[x],20,60);
          query.edit;
          query.fieldbyname('codigo').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],1,6)));
          query.fieldbyname('nome').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],7,80)));
          query.fieldbyname('fantasia').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],87,50)));
          query.fieldbyname('endereco').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],137,80)));
          query.fieldbyname('bairro').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],217,30)));
          query.fieldbyname('cidade').asstring := TrimLeft(TrimRight(COPY(Memo1.Lines[x],247,40)));
          query.fieldbyname('uf').asstring:= TrimLeft(TrimRight(COPY(Memo1.Lines[x],287,2)));
          query.fieldbyname('cep').asstring:= TrimLeft(TrimRight(COPY(Memo1.Lines[x],289,10)));
          query.fieldbyname('telefone1').asstring:= TrimLeft(TrimRight(COPY(Memo1.Lines[x],299,20)));
          query.fieldbyname('telefone2').asstring:= TrimLeft(TrimRight(COPY(Memo1.Lines[x],319,20)));
          query.fieldbyname('contato1').asstring:= TrimLeft(TrimRight(COPY(Memo1.Lines[x],339,40)));
          query.fieldbyname('contato2').asstring:= TrimLeft(TrimRight(COPY(Memo1.Lines[x],379,40)));
          query.fieldbyname('fax').asstring:= TrimLeft(TrimRight(COPY(Memo1.Lines[x],419,20)));
          query.fieldbyname('celular1').asstring:= TrimLeft(TrimRight(COPY(Memo1.Lines[x],439,20)));
          query.fieldbyname('celular2').asstring:= TrimLeft(TrimRight(COPY(Memo1.Lines[x],459,20)));
          query.fieldbyname('email').asstring:= TrimLeft(TrimRight(COPY(Memo1.Lines[x],479,80)));
          query.fieldbyname('homepage').asstring:= TrimLeft(TrimRight(COPY(Memo1.Lines[x],559,80)));
          query.fieldbyname('cnpj').asstring:= TrimLeft(TrimRight(COPY(Memo1.Lines[x],639,24)));
          query.fieldbyname('ie').asstring:= TrimLeft(TrimRight(COPY(Memo1.Lines[x],663,20)));
          query.fieldbyname('banco').asstring:= TrimLeft(TrimRight(COPY(Memo1.Lines[x],683,30)));
          query.fieldbyname('agencia').asstring:= TrimLeft(TrimRight(COPY(Memo1.Lines[x],713,15)));
          query.fieldbyname('conta').asstring:= TrimLeft(TrimRight(COPY(Memo1.Lines[x],728,20)));
          query.fieldbyname('obs1').asstring:= TrimLeft(TrimRight(COPY(Memo1.Lines[x],748,80)));
          query.fieldbyname('obs2').asstring:= TrimLeft(TrimRight(COPY(Memo1.Lines[x],828,80)));
          query.fieldbyname('obs3').asstring:= TrimLeft(TrimRight(COPY(Memo1.Lines[x],908,80)));
          if ( TrimLeft(TrimRight(COPY(Memo1.Lines[x],988,10))) <> '0000000000' ) and ( TrimLeft(TrimRight(COPY(Memo1.Lines[x],988,10))) <> '30/12/1899' ) then
            begin
              query.fieldbyname('data').asstring:= TrimLeft(TrimRight(COPY(Memo1.Lines[x],988,10)))
            end
          else
            query.fieldbyname('data').asstring:= '';
          query.fieldbyname('tipo').asstring:= TrimLeft(TrimRight(COPY(Memo1.Lines[x],998,1)));
          query.fieldbyname('IM').asstring:= TrimLeft(TrimRight(COPY(Memo1.Lines[x],999,25)));
          query.fieldbyname('CNAE').asstring:= TrimLeft(TrimRight(COPY(Memo1.Lines[x],1024,10)));
          query.fieldbyname('COD_MUNICIPIO_IBGE').asstring:= TrimLeft(TrimRight(COPY(Memo1.Lines[x],1034,10)));
          query.fieldbyname('IBGE').asstring:= TrimLeft(TrimRight(COPY(Memo1.Lines[x],1044,5)));
          query.fieldbyname('assistencia_tecnica').asstring:= TrimLeft(TrimRight(COPY(Memo1.Lines[x],1049,1)));
          query.fieldbyname('COMPLEMENTO').asstring:= TrimLeft(TrimRight(COPY(Memo1.Lines[x],1050,40)));
          query.post;
        end;
      except
         //
      end;
      barra.POSITION := BARRA.POSiTION + 1;
    Application.ProcessMessages;
      if not continua then break;
    end;
    if not continua then exit;
    GroupBox2.caption := 'Fornecedores atualizados com Sucesso!';
      if fileexists(edestino.text+'cp_fornecedor.txt') then
        deletefile(edestino.text+'cp_fornecedor.txt');
      rfornecedor.Checked := False;

   end;
  end;  // final Fornecedores


  frmmodulo.conexao.commit;

  litem.caption := '';

  barra.Position := 0;
  GroupBox2.caption := 'Operação Concluida com Sucesso!';

  bitbtn2.Caption := 'Fechar';
  bitbtn1.Visible := true;
  bitbtn2.Left := 200;



end;

end.
