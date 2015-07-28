unit consulta_preco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus, Buttons, DB, jpeg, ExtCtrls, LMDCustomControl,
  LMDCustomPanel, LMDCustomBevelPanel, LMDBaseEdit, LMDCustomEdit, LMDEdit,
  AdvGlowButton;

type
  Tfrmconsulta_preco = class(TForm)
    eproduto: TEdit;
    lvalor: TLabel;
    lproduto: TLabel;
    bfechar: TBitBtn;
    PopupMenu1: TPopupMenu;
    Fechar1: TMenuItem;
    DataSource1: TDataSource;
    Image1: TImage;
    AdvGlowButton2: TAdvGlowButton;
    procedure bfecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Fechar1Click(Sender: TObject);
    procedure eprodutoKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmconsulta_preco: Tfrmconsulta_preco;

implementation

uses modulo, loc_produto, principal;

{$R *.dfm}

procedure Tfrmconsulta_preco.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmconsulta_preco.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmconsulta_preco.Fechar1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmconsulta_preco.eprodutoKeyPress(Sender: TObject;
  var Key: Char);
  var a, TEXTO : string;
  i : integer;
  QTDE : REAL;
begin
  if key = #13 then
  begin
    AdvGlowButton2.setfocus;
    eproduto.setfocus;
    if eproduto.Text <> '' then
    begin
      codigo := eproduto.text;
      if (pos('*',codigo) > 0) or (pos('X',codigo) >0) then
      begin
         if (pos('*',codigo) > 0) then  i := pos('*',codigo);
         if (pos('X',codigo) > 0) then  i := pos('X',codigo);
      if i > 0 then
      begin
        texto := codigo;
        delete(texto,i,30);
        try
          qtde := strtofloat(texto);
        except
//           mensagem('Quantidade','Inválida!','EXCLAMACAO','Informe o Produto...');
           exit;
        end;
        codigo := copy(codigo,(i+1),30);
      end
      else
      begin
        i := pos('X',codigo);
        if i > 0 then
        begin
          texto := codigo;
          delete(texto,i,13);
          try
            qtde := strtofloat(texto);
          except
//           mensagem('Quantidade','Inválida!','EXCLAMACAO','Informe o Produto...');
           exit;
          end;
          codigo := copy(codigo,(i+1),13);
        end;
      end;
      frmmodulo.qrproduto.close;
      frmmodulo.qrproduto.sql.clear;
      frmmodulo.qrproduto.sql.add('select * from c000025 where codigo = '''+CODIGO+''' or codbarra = '''+copy(codigo,1,13)+'''');
      frmmodulo.qrproduto.Open;
      if frmmodulo.qrproduto.RecordCount > 0 then
      begin
        IF FRMMODULO.QRPRODUTO.FIELDBYNAME('PRECO_PROMOCAO').ASFLOAT <> 0 THEN
        BEGIN
          IF (DATE >= FRMMODULO.QRPRODUTO.FIELDBYNAME('DATA_PROMOCAO').ASDATETIME) AND (DATE <= FRMMODULO.QRPRODUTO.FIELDBYNAME('FIM_PROMOCAO').ASDATETIME) THEN
          BEGIN
            lvalor.caption := formatfloat('###,###,##0.00',frmmodulo.qrproduto.fieldbyname('preco_promocao').asfloat*QTDE);
          END
          ELSE
            lvalor.caption := formatfloat('###,###,##0.00',frmmodulo.qrproduto.fieldbyname('precovenda').asfloat*QTDE);
        END
        ELSE
          lvalor.caption := formatfloat('###,###,##0.00',frmmodulo.qrproduto.fieldbyname('precovenda').asfloat*QTDE);
        lproduto.Caption := frmmodulo.qrproduto.fieldbyname('produto').asstring;
      end
      else
      begin
        frmmodulo.qrcodbarra.close;
        frmmodulo.qrcodbarra.SQL.Clear;
        frmmodulo.qrcodbarra.sql.add('select * from c000055 where codbarra = '''+CODIGO+'''');
        frmmodulo.qrcodbarra.Open;
        if frmmodulo.qrcodbarra.RecordCount > 0 then
        begin
          frmmodulo.qrproduto.close;
          frmmodulo.qrproduto.sql.clear;
          frmmodulo.qrproduto.sql.add('select * from c000025 where codigo = '''+frmmodulo.qrcodbarra.fieldbyname('codproduto').asstring+'''');
          frmmodulo.qrproduto.Open;
          if frmmodulo.qrproduto.RecordCount > 0 then
          begin
            IF FRMMODULO.QRPRODUTO.FIELDBYNAME('PRECO_PROMOCAO').ASFLOAT <> 0 THEN
            BEGIN
              IF (DATE >= FRMMODULO.QRPRODUTO.FIELDBYNAME('DATA_PROMOCAO').ASDATETIME) AND (DATE <= FRMMODULO.QRPRODUTO.FIELDBYNAME('FIM_PROMOCAO').ASDATETIME) THEN
              BEGIN
                lvalor.caption := formatfloat('###,###,##0.00',frmmodulo.qrproduto.fieldbyname('preco_promocao').asfloat*QTDE);
              END
              ELSE
                lvalor.caption := formatfloat('###,###,##0.00',frmmodulo.qrproduto.fieldbyname('precovenda').asfloat*QTDE);
            END
            ELSE
              lvalor.caption := formatfloat('###,###,##0.00',frmmodulo.qrproduto.fieldbyname('precovenda').asfloat*QTDE);
            lproduto.Caption := frmmodulo.qrproduto.fieldbyname('produto').asstring;
          end
          else
          begin
            Application.MessageBox('Produto não Encontrado!','Atenção',mb_ok+MB_ICONWARNING);
          end;
        end
        else
        begin
           Application.MessageBox('Produto não Encontrado!','Atenção',mb_ok+MB_ICONWARNING);
        end;
      end;
      EXIT;
      END;





    a :=  copy(codigo,1,1);
    for I := 1 To Length(A) Do
    begin
      if (A[I] in ['A'..'Z']) then
      begin
        frmloc_produto := tfrmloc_produto.create(self);
        frmloc_produto.edit1.text := eproduto.Text;
        frmloc_produto.ShowModal;
        eproduto.Text := codigo;
        if codigo = '' then
          exit
        ELSE
        BEGIN
          EPRODUTO.Text := CODIGO;
          frmmodulo.qrproduto.close;
          frmmodulo.qrproduto.sql.clear;
          frmmodulo.qrproduto.sql.add('select * from c000025 where codigo = '''+eproduto.text+''' or codbarra = '''+copy(codigo,1,13)+'''');
          frmmodulo.qrproduto.Open;
          IF FRMMODULO.QRPRODUTO.FIELDBYNAME('PRECO_PROMOCAO').ASFLOAT <> 0 THEN
          BEGIN
            IF (DATE >= FRMMODULO.QRPRODUTO.FIELDBYNAME('DATA_PROMOCAO').ASDATETIME) AND (DATE <= FRMMODULO.QRPRODUTO.FIELDBYNAME('FIM_PROMOCAO').ASDATETIME) THEN
            BEGIN
              lvalor.caption := formatfloat('###,###,##0.00',frmmodulo.qrproduto.fieldbyname('preco_promocao').asfloat);
            END
            ELSE
              lvalor.caption := formatfloat('###,###,##0.00',frmmodulo.qrproduto.fieldbyname('precovenda').asfloat);
          END
          ELSE
            lvalor.caption := formatfloat('###,###,##0.00',frmmodulo.qrproduto.fieldbyname('precovenda').asfloat);

          lproduto.Caption := frmmodulo.qrproduto.fieldbyname('produto').asstring;

          EXIT;
        END;
      end;
    END;





      frmmodulo.qrproduto.close;
      frmmodulo.qrproduto.sql.clear;
      frmmodulo.qrproduto.sql.add('select * from c000025 where codigo = '''+eproduto.text+''' or codbarra = '''+copy(codigo,1,13)+'''');
      frmmodulo.qrproduto.Open;
      if frmmodulo.qrproduto.RecordCount > 0 then
      begin

      IF FRMMODULO.QRPRODUTO.FIELDBYNAME('PRECO_PROMOCAO').ASFLOAT <> 0 THEN
      BEGIN
        IF (DATE >= FRMMODULO.QRPRODUTO.FIELDBYNAME('DATA_PROMOCAO').ASDATETIME) AND (DATE <= FRMMODULO.QRPRODUTO.FIELDBYNAME('FIM_PROMOCAO').ASDATETIME) THEN
        BEGIN
          lvalor.caption := formatfloat('###,###,##0.00',frmmodulo.qrproduto.fieldbyname('preco_promocao').asfloat);
        END
        ELSE
          lvalor.caption := formatfloat('###,###,##0.00',frmmodulo.qrproduto.fieldbyname('precovenda').asfloat);
      END
      ELSE
        lvalor.caption := formatfloat('###,###,##0.00',frmmodulo.qrproduto.fieldbyname('precovenda').asfloat);








        lproduto.Caption := frmmodulo.qrproduto.fieldbyname('produto').asstring;
      end
      else
      begin
        frmmodulo.qrcodbarra.close;
        frmmodulo.qrcodbarra.SQL.Clear;
        frmmodulo.qrcodbarra.sql.add('select * from c000055 where codbarra = '''+eproduto.text+'''');
        frmmodulo.qrcodbarra.Open;

        if frmmodulo.qrcodbarra.RecordCount > 0 then
        begin
          frmmodulo.qrproduto.close;
          frmmodulo.qrproduto.sql.clear;
          frmmodulo.qrproduto.sql.add('select * from c000025 where codigo = '''+frmmodulo.qrcodbarra.fieldbyname('codproduto').asstring+'''');
          frmmodulo.qrproduto.Open;
          if frmmodulo.qrproduto.RecordCount > 0 then
          begin
            IF FRMMODULO.QRPRODUTO.FIELDBYNAME('PRECO_PROMOCAO').ASFLOAT <> 0 THEN
            BEGIN
              IF (DATE >= FRMMODULO.QRPRODUTO.FIELDBYNAME('DATA_PROMOCAO').ASDATETIME) AND (DATE <= FRMMODULO.QRPRODUTO.FIELDBYNAME('FIM_PROMOCAO').ASDATETIME) THEN
              BEGIN
                lvalor.caption := formatfloat('###,###,##0.00',frmmodulo.qrproduto.fieldbyname('preco_promocao').asfloat);
              END
              ELSE
                lvalor.caption := formatfloat('###,###,##0.00',frmmodulo.qrproduto.fieldbyname('precovenda').asfloat);
            END
            ELSE
              lvalor.caption := formatfloat('###,###,##0.00',frmmodulo.qrproduto.fieldbyname('precovenda').asfloat);
            lproduto.Caption := frmmodulo.qrproduto.fieldbyname('produto').asstring;
          end
          else
          begin
            Application.MessageBox('Produto não Encontrado!','Atenção',mb_ok+MB_ICONWARNING);
          end;
        end
        else
        begin
           Application.MessageBox('Produto não Encontrado!','Atenção',mb_ok+MB_ICONWARNING);
        end;
      end;
    end;
  end;
end;

end.
