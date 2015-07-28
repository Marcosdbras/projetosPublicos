unit venda_item;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Collection, StdCtrls, Mask, ToolEdit, CurrEdit, ExtCtrls,
  TFlatPanelUnit, Buttons, DB, Grids, Wwdbigrd, Wwdbgrid, Wwkeycb,
  ZAbstractRODataset, ZDataset, Menus;

type
  Tfrmvenda_item = class(TForm)
    HeaderView1: THeaderView;
    ecodigo: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    ViewSplit1: TViewSplit;
    FlatPanel1: TFlatPanel;
    FlatPanel2: TFlatPanel;
    ViewSplit2: TViewSplit;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    rqtde: TRxCalcEdit;
    sqtde: TShape;
    sunitario: TShape;
    sdesconto2: TShape;
    stotal: TShape;
    runitario: TRxCalcEdit;
    rdesconto2: TRxCalcEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    rdesconto1: TRxCalcEdit;
    sdesconto1: TShape;
    Label7: TLabel;
    FlatPanel3: TFlatPanel;
    Shape8: TShape;
    rsubtotal: TRxCalcEdit;
    FlatPanel4: TFlatPanel;
    rtotal: TRxCalcEdit;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    ViewSplit3: TViewSplit;
    FlatPanel5: TFlatPanel;
    bgravar: TBitBtn;
    bcancelar: TBitBtn;
    lestoque: TLabel;
    lserial: TLabel;
    lfornecedor: TLabel;
    lmarca: TLabel;
    dsproduto: TDataSource;
    PPRODUTO: TFlatPanel;
    ViewSplit4: TViewSplit;
    ViewSplit5: TViewSplit;
    ViewSplit6: TViewSplit;
    ViewSplit7: TViewSplit;
    wwDBGrid1: TwwDBGrid;
    EPRODUTO: TwwIncrementalSearch;
    PopupMenu1: TPopupMenu;
    Cancelar1: TMenuItem;
    procedure bcancelarClick(Sender: TObject);
    procedure rqtdeEnter(Sender: TObject);
    procedure rqtdeExit(Sender: TObject);
    procedure runitarioEnter(Sender: TObject);
    procedure rdesconto1Enter(Sender: TObject);
    procedure rdesconto2Enter(Sender: TObject);
    procedure runitarioExit(Sender: TObject);
    procedure rdesconto1Exit(Sender: TObject);
    procedure rdesconto2Exit(Sender: TObject);
    procedure rqtdeKeyPress(Sender: TObject; var Key: Char);
    procedure rdesconto2KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure ecodigoKeyPress(Sender: TObject; var Key: Char);
    procedure eprodutoEnter(Sender: TObject);
    procedure eprodutoExit(Sender: TObject);
    procedure eprodutoChange(Sender: TObject);
    procedure EPRODUTOKeyPress(Sender: TObject; var Key: Char);
    procedure EPRODUTOKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure wwDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure wwDBGrid1Enter(Sender: TObject);
    procedure ecodigoEnter(Sender: TObject);
    procedure ecodigoExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure wwDBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmvenda_item: Tfrmvenda_item;
  VER_PRODUTO : BOOLEAN;
  serial_grade : integer; // 0 - nenhum
                          // 1 - serial
                          // 2 - grade
  codigo_serial_grade : string;

implementation

uses modulo, principal, venda, venda_grade, venda_serial;

{$R *.dfm}

procedure Tfrmvenda_item.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmvenda_item.rqtdeEnter(Sender: TObject);
begin
  PPRODUTO.VISIBLE := FALSE;
  tedit(sender).color := clyellow;
  sqtde.Brush.Color := clyellow;
end;

procedure Tfrmvenda_item.rqtdeExit(Sender: TObject);
begin

  tedit(sender).color := clBtnFace;
  sqtde.Brush.Color := clbtnface;

  if rqtde.value = 0 then
  begin
              APPLICATION.MESSAGEBOX('Favor informar uma quantidade válida!','Atenção',mb_ok+MB_ICONWARNING);
              rqtde.setfocus;
              exit;
  end;


          IF NOT ESTOQUE_NEGATIVO THEN
          BEGIN
            IF FRMMODULO.qrproduto.FieldByName('ESTOQUE').ASFLOAT < rqtde.value THEN
            BEGIN
              APPLICATION.MESSAGEBOX('Este produto não possue esta quantidade em estoque!','Atenção',mb_ok+MB_ICONWARNING);
              rqtde.setfocus;
              exit;
            END;
          END;



  rsubtotal.Value := rqtde.value * runitario.value;
  rtotal.value    := rsubtotal.value - rdesconto2.value;

end;

procedure Tfrmvenda_item.runitarioEnter(Sender: TObject);
begin
  PPRODUTO.VISIBLE := FALSE;

  tedit(sender).color := clyellow;
  sunitario.Brush.Color := clyellow;

end;

procedure Tfrmvenda_item.rdesconto1Enter(Sender: TObject);
begin

  tedit(sender).color := clyellow;
  sdesconto1.Brush.Color := clyellow;

end;

procedure Tfrmvenda_item.rdesconto2Enter(Sender: TObject);
begin

  tedit(sender).color := clyellow;
  sdesconto2.Brush.Color := clyellow;

end;

procedure Tfrmvenda_item.runitarioExit(Sender: TObject);
begin
  tedit(sender).color := clBtnFace;
  sunitario.Brush.Color := clbtnface;
  rsubtotal.Value := rqtde.value * runitario.value;
  rtotal.value    := rsubtotal.value - rdesconto2.value;  
end;

procedure Tfrmvenda_item.rdesconto1Exit(Sender: TObject);
begin


  tedit(sender).color := clBtnFace;
  sdesconto1.Brush.Color := clbtnface;


  if rdesconto1.value <> 0 then
  begin
    rdesconto2.Value := rsubtotal.value * (rdesconto1.Value / 100);
  end;
  rtotal.value    := rsubtotal.value - rdesconto2.value;

end;

procedure Tfrmvenda_item.rdesconto2Exit(Sender: TObject);
begin
  tedit(sender).color := clBtnFace;
  sdesconto2.Brush.Color := clbtnface;

  if rsubtotal.value <> 0 then
  begin
    rdesconto1.Value := (rdesconto2.Value * 100)/rsubtotal.value;
  end;


  rtotal.value    := rsubtotal.value - rdesconto2.value;
end;

procedure Tfrmvenda_item.rqtdeKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmvenda_item.rdesconto2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmvenda_item.FormCreate(Sender: TObject);
begin
        RQTDE.DisplayFormat := mascara_qtde;
        RQTDE.DecimalPlaces := decimal_qtde;

        RUNITARIO.DisplayFormat := mascara_valor;
        RUNITARIO.DecimalPlaces := decimal_valor;


        PPRODUTO.Top := 66;
        PPRODUTO.Left:= 0;


end;

procedure Tfrmvenda_item.ecodigoKeyPress(Sender: TObject; var Key: Char);
var cod_PROCURA : STRING;
begin
  if key = #13 then
  begin
    if ecodigo.Text <> '' then
    begin
      if Length(ecodigo.Text) < 7 then // codigo
      begin
        ecodigo.Text := frmprincipal.zerarcodigo(ecodigo.text,6);
        COD_PROCURA := 'CODIGO';
      end
      else
      begin
        COD_PROCURA := 'CODBARRA';
      end;
      if frmmodulo.qrproduto.Locate(COD_PROCURA,ecodigo.text,[loCaseInsensitive]) then
      begin
        IF NOT ESTOQUE_NEGATIVO THEN
        BEGIN
          IF FRMMODULO.qrproduto.FieldByName('ESTOQUE').ASFLOAT < 0.01 THEN
          BEGIN
            APPLICATION.MESSAGEBOX('Este produto não possue ESTOQUE!','Atenção',mb_ok+MB_ICONWARNING);
            ecodigo.setfocus;
            exit;
          END;
        END;
        runitario.Value := frmmodulo.qrproduto.fieldbyname('precovenda').asfloat;
        rqtde.value := 1;
        rsubtotal.value := frmmodulo.qrproduto.fieldbyname('precovenda').asfloat;
        rdesconto1.value := 0;
        rdesconto2.value := 0;
        rtotal.value := frmmodulo.qrproduto.fieldbyname('precovenda').asfloat;

        eproduto.Text := frmmodulo.qrproduto.fieldbyname('produto').asstring;
        lestoque.caption := formatfloat(mascara_qtde,frmmodulo.qrproduto.fieldbyname('estoque').asfloat);
        lfornecedor.Caption := frmmodulo.qrproduto.fieldbyname('fornecedor').asstring;
        lmarca.Caption := frmmodulo.qrproduto.fieldbyname('marca').asstring;
        lserial.Caption := '---';
        serial_grade := 0;
        codigo_serial_grade := '';
        RQTDE.Enabled := TRUE;

          //// verificar se produto usa grade

        if frmmodulo.qrproduto.FieldByName('usa_grade').asinteger = 1 then
        begin
          frmvenda.qrproduto_grade.close;
          frmvenda.qrproduto_grade.sql.clear;
          if estoque_negativo then
            frmvenda.qrproduto_grade.sql.Add('select * from c000021 where codproduto = '''+frmmodulo.qrproduto.fieldbyname('codigo').asstring+''' order by codigo')
          else
            frmvenda.qrproduto_grade.sql.Add('select * from c000021 where codproduto = '''+frmmodulo.qrproduto.fieldbyname('codigo').asstring+''' and estoque > 0 order by codigo');
          frmvenda.qrproduto_grade.open;
          frmvenda_grade := tfrmvenda_grade.create(self);
          frmvenda_grade.showmodal;
          if selecionado then
          begin
            lserial.Caption := frmvenda.qrproduto_grade.fieldbyname('numeracao').asstring;
            serial_grade := 2;
            codigo_serial_grade := frmvenda.qrproduto_grade.fieldbyname('codigo').asstring;
            RQTDE.SETFOCUS;
          end
          else
          begin
            ecodigo.setfocus;
          end;
        end
        else
        begin
          /// verificar se produto utiliza controle de seriais
          if frmmodulo.qrproduto.FieldByName('usa_serial').asinteger = 1 then
          begin
            frmvenda.qrproduto_serial.close;
            frmvenda.qrproduto_serial.sql.clear;
            frmvenda.qrproduto_serial.sql.Add('select * from c000022 where codproduto = '''+frmmodulo.qrproduto.fieldbyname('codigo').asstring+''' and situacao = 1 order by codigo');
            frmvenda.qrproduto_serial.open;
            frmvenda_serial := tfrmvenda_serial.create(self);
            frmvenda_serial.showmodal;
            if selecionado then
            begin
              lserial.Caption := frmvenda.qrproduto_serial.fieldbyname('serial').asstring;
              serial_grade := 1;
              codigo_serial_grade := frmvenda.qrproduto_serial.fieldbyname('codigo').asstring;
              RQTDE.Enabled := FALSE;
              RUNITARIO.SETFOCUS;
            end
            else
            begin
              ecodigo.setfocus;
            end;
          end
          else
          begin
            rqtde.setfocus;
          end;
        end;
      end
      else
      begin
        application.messagebox('Produto não encontrado!','Aviso',mb_ok+MB_ICONWARNING);
        ecodigo.text := '';
        ecodigo.SetFocus;
      end;
    end
    else
    begin
       eproduto.setfocus;
    end;
  end;

end;

procedure Tfrmvenda_item.eprodutoEnter(Sender: TObject);
begin
    TEDIT(SENDER).COLOR := CLYELLOW;
  VER_PRODUTO := TRUE;
end;

procedure Tfrmvenda_item.eprodutoExit(Sender: TObject);
begin
  TEDIT(SENDER).COLOR := CLWINDOW;
end;

procedure Tfrmvenda_item.eprodutoChange(Sender: TObject);
begin
  IF EPRODUTO.Text <> '' THEN
  BEGIN
    IF VER_PRODUTO THEN
    BEGIN
      PPRODUTO.Visible := TRUE;
    END;
  END
  ELSE
  BEGIN
    PPRODUTO.VISIBLE := FALSE;
  END;
end;

procedure Tfrmvenda_item.EPRODUTOKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    IF EPRODUTO.TEXT <> '' THEN
    BEGIN

        if frmmodulo.qrproduto.Locate('produto',eproduto.text,[loPartialKey]) then
        begin

          IF NOT ESTOQUE_NEGATIVO THEN
          BEGIN
            IF FRMMODULO.qrproduto.FieldByName('ESTOQUE').ASFLOAT < 0.01 THEN
            BEGIN
              APPLICATION.MESSAGEBOX('Este produto não possue ESTOQUE!','Atenção',mb_ok+MB_ICONWARNING);
              eproduto.setfocus;
              exit;
            END;
          END;


          ecodigo.text  := frmmodulo.qrproduto.fieldbyname('codigo').asstring;
          runitario.Value := frmmodulo.qrproduto.fieldbyname('precovenda').asfloat;
          rqtde.value := 1;
          rsubtotal.value := frmmodulo.qrproduto.fieldbyname('precovenda').asfloat;
          rdesconto1.value := 0;
          rdesconto2.value := 0;
          rtotal.value := frmmodulo.qrproduto.fieldbyname('precovenda').asfloat;

          eproduto.Text := frmmodulo.qrproduto.fieldbyname('produto').asstring;
          lestoque.caption := formatfloat(mascara_qtde,frmmodulo.qrproduto.fieldbyname('estoque').asfloat);
          lfornecedor.Caption := frmmodulo.qrproduto.fieldbyname('fornecedor').asstring;
          lmarca.Caption := frmmodulo.qrproduto.fieldbyname('marca').asstring;
          lserial.Caption := '---';

          serial_grade := 0;
          codigo_serial_grade := '';

          RQTDE.Enabled := TRUE;

          //// verificar se produto usa grade

          if frmmodulo.qrproduto.FieldByName('usa_grade').asinteger = 1 then
          begin
            frmvenda.qrproduto_grade.close;
            frmvenda.qrproduto_grade.sql.clear;
            if estoque_negativo then
              frmvenda.qrproduto_grade.sql.Add('select * from c000021 where codproduto = '''+frmmodulo.qrproduto.fieldbyname('codigo').asstring+''' order by codigo')
            else
              frmvenda.qrproduto_grade.sql.Add('select * from c000021 where codproduto = '''+frmmodulo.qrproduto.fieldbyname('codigo').asstring+''' and estoque > 0 order by codigo');
            frmvenda.qrproduto_grade.open;

            frmvenda_grade := tfrmvenda_grade.create(self);
            frmvenda_grade.showmodal;

            if selecionado then
            begin
               lserial.Caption := frmvenda.qrproduto_grade.fieldbyname('numeracao').asstring;
               serial_grade := 2;
               codigo_serial_grade := frmvenda.qrproduto_grade.fieldbyname('codigo').asstring;
               RQTDE.SETFOCUS;
            end
            else
            begin
                eproduto.setfocus;
            end;
          end
          else
          begin
            /// verificar se produto utiliza controle de seriais
            if frmmodulo.qrproduto.FieldByName('usa_serial').asinteger = 1 then
            begin
              frmvenda.qrproduto_serial.close;
              frmvenda.qrproduto_serial.sql.clear;
              frmvenda.qrproduto_serial.sql.Add('select * from c000022 where codproduto = '''+frmmodulo.qrproduto.fieldbyname('codigo').asstring+''' and situacao = 1 order by codigo');
              frmvenda.qrproduto_serial.open;

              frmvenda_serial := tfrmvenda_serial.create(self);
              frmvenda_serial.showmodal;

              if selecionado then
              begin
                 lserial.Caption := frmvenda.qrproduto_serial.fieldbyname('serial').asstring;
                 serial_grade := 1;
                 codigo_serial_grade := frmvenda.qrproduto_serial.fieldbyname('codigo').asstring;
                 RQTDE.Enabled := FALSE;
                 RUNITARIO.SETFOCUS;
              end
              else
              begin
                ecodigo.setfocus;
              end;
            end
            else
            begin
              rqtde.setfocus;
            end;
          end;

        end
        else
        begin
          application.messagebox('Produto não encontrado!','Aviso',mb_ok+MB_ICONWARNING);
          eproduto.text := '';
          eproduto.SetFocus;
        end;
    END
    ELSE
    BEGIN
      ECODIGO.SetFocus;
    END;

  end;
end;

procedure Tfrmvenda_item.EPRODUTOKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_down then
  begin
    if pproduto.Visible then
    begin
      WWDBGRID1.SETFOCUS;

    end;
  end;
end;

procedure Tfrmvenda_item.wwDBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #27 THEN EPRODUTO.SetFocus;
  IF KEY = #13 THEN
  BEGIN
    eproduto.text := frmmodulo.qrproduto.fieldbyname('produto').asstring;
    ecodigo.text  := frmmodulo.qrproduto.fieldbyname('codigo').asstring;

          runitario.Value := frmmodulo.qrproduto.fieldbyname('precovenda').asfloat;
          rqtde.value := 1;
          rsubtotal.value := frmmodulo.qrproduto.fieldbyname('precovenda').asfloat;
          rdesconto1.value := 0;
          rdesconto2.value := 0;
          rtotal.value := frmmodulo.qrproduto.fieldbyname('precovenda').asfloat;

          eproduto.Text := frmmodulo.qrproduto.fieldbyname('produto').asstring;
          lestoque.caption := formatfloat(mascara_qtde,frmmodulo.qrproduto.fieldbyname('estoque').asfloat);
          lfornecedor.Caption := frmmodulo.qrproduto.fieldbyname('fornecedor').asstring;
          lmarca.Caption := frmmodulo.qrproduto.fieldbyname('marca').asstring;
          lserial.Caption := '---';


    eproduto.SetFocus;
  END;
end;

procedure Tfrmvenda_item.wwDBGrid1Enter(Sender: TObject);
begin
//  VER_PRODUTO := TRUE;
//  PPRODUTO.VISIBLE := TRUE;
end;

procedure Tfrmvenda_item.ecodigoEnter(Sender: TObject);
begin
  TEDIT(SENDER).COLOR := CLYELLOW;
  PPRODUTO.VISIBLE := FALSE;
end;

procedure Tfrmvenda_item.ecodigoExit(Sender: TObject);
begin
  TEDIT(SENDER).COLOR := CLWINDOW;
end;

procedure Tfrmvenda_item.FormShow(Sender: TObject);
begin
  ecodigo.SetFocus;
end;

procedure Tfrmvenda_item.bgravarClick(Sender: TObject);
begin
  if ecodigo.text <> '' then
  begin
    frmvenda.qrvenda_produto.Insert;
    frmvenda.qrvenda_produto.FieldByName('codproduto').asstring := frmmodulo.qrproduto.fieldbyname('codigo').asstring;
    frmvenda.qrvenda_produto.FieldByName('produto').asstring := frmmodulo.qrproduto.fieldbyname('produto').asstring;
    frmvenda.qrvenda_produto.FieldByName('NUMERACAO').asstring := frmmodulo.qrproduto.fieldbyname('UNIDADE').asstring;

    frmvenda.qrvenda_produto.FieldByName('qtde').asfloat := rqtde.value;
    frmvenda.qrvenda_produto.FieldByName('unitario').asfloat := runitario.value;
    frmvenda.qrvenda_produto.FieldByName('total').asfloat := rtotal.value;
    frmvenda.qrvenda_produto.FieldByName('desconto').asfloat := rdesconto2.value;
    frmvenda.qrvenda_produto.FieldByName('tipo').asinteger := 0;
    frmvenda.qrvenda_produto.FieldByName('item').asinteger :=  item; item := item+1;

    if serial_grade = 1 then // serial
    begin
      frmvenda.qrvenda_produto.fieldbyname('serial').asstring := lserial.CAPTION;
      frmvenda.qrvenda_produto.fieldbyname('codgrade').asstring := frmVENDA.qrPRODUTO_SERIAL.fieldbyname('codigo').asstring;
      frmvenda.qrvenda_produto.FieldByName('tipo').asinteger := 1;
      frmVENDA.QRPRODUTO_SERIAL.Edit;
      frmVENDA.QRPRODUTO_SERIAL.fieldbyname('situacao').AsInteger := 2;
      frmVENDA.QRPRODUTO_SERIAL.fieldbyname('cliente').asstring := frmvenda.lcliente_nome.Caption;
      frmVENDA.QRPRODUTO_SERIAL.fieldbyname('codcliente').asstring := frmvenda.lcliente_codigo.Caption;

      frmVENDA.QRPRODUTO_SERIAL.FieldByName('DATAVENDA').ASSTRING := frmvenda.lvenda_data.caption;
      frmvenda.qrproduto_serial.fieldbyname('codvenda').asstring := frmvenda.lvenda_codigo.Caption;
      frmvenda.qrproduto_serial.fieldbyname('precovenda').asfloat := runitario.value;
      frmVENDA.QRPRODUTO_SERIAL.post;
    end;
    if serial_grade = 2 then // grade
    begin
      frmvenda.qrvenda_produto.fieldbyname('serial').asstring := lserial.CAPTION;
      frmvenda.qrvenda_produto.fieldbyname('codgrade').asstring := frmVENDA.QRPRODUTO_GRADE.fieldbyname('codigo').asstring;
      frmvenda.qrvenda_produto.FieldByName('tipo').asinteger := 2;

      frmVENDA.QRPRODUTO_GRADE.Edit;
      frmVENDA.QRPRODUTO_GRADE.fieldbyname('estoque').asfloat := frmVENDA.QRPRODUTO_GRADE.fieldbyname('estoque').asfloat - rqtde.value;
      frmVENDA.QRPRODUTO_GRADE.post;
    end;
    frmmodulo.qrproduto.edit;
    frmmodulo.qrproduto.FieldByName('estoque').asfloat := frmmodulo.qrproduto.FieldByName('estoque').asfloat - rqtde.value;
    frmmodulo.qrproduto.fieldbyname('DATA_ULTIMAVENDA').asstring := frmvenda.lvenda_data.caption;
    frmmodulo.qrproduto.Post;
    frmvenda.qrvenda_produto.post;
    ecodigo.text := '';
    eproduto.text := '';
    lestoque.Caption := '';
    lserial.caption := '';
    lfornecedor.Caption := '';
    lmarca.caption := '';
    rqtde.value := 0;
    runitario.value := 0;
    rsubtotal.value := 0;
    rdesconto1.value := 0;
    rdesconto2.value := 0;
    rtotal.value := 0;
    ecodigo.SetFocus;
  end
  else
  begin
    application.messagebox('Favor informar o produto!','Atenção!',mb_ok+MB_ICONWARNING);
    ecodigo.setfocus;
  end;





end;

procedure Tfrmvenda_item.wwDBGrid1DblClick(Sender: TObject);
begin
    eproduto.text := frmmodulo.qrproduto.fieldbyname('produto').asstring;
    ecodigo.text  := frmmodulo.qrproduto.fieldbyname('codigo').asstring;

          runitario.Value := frmmodulo.qrproduto.fieldbyname('precovenda').asfloat;
          rqtde.value := 1;
          rsubtotal.value := frmmodulo.qrproduto.fieldbyname('precovenda').asfloat;
          rdesconto1.value := 0;
          rdesconto2.value := 0;
          rtotal.value := frmmodulo.qrproduto.fieldbyname('precovenda').asfloat;

          eproduto.Text := frmmodulo.qrproduto.fieldbyname('produto').asstring;
          lestoque.caption := formatfloat(mascara_qtde,frmmodulo.qrproduto.fieldbyname('estoque').asfloat);
          lfornecedor.Caption := frmmodulo.qrproduto.fieldbyname('fornecedor').asstring;
          lmarca.Caption := frmmodulo.qrproduto.fieldbyname('marca').asstring;
          lserial.Caption := '---';


    eproduto.SetFocus;
end;

end.
