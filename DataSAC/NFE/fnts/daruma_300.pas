unit daruma_300;

interface
    function MessageBox(HWnd: Integer; Text, Caption: PChar;
Flags: Integer): Integer; stdcall;external 'user32.dll' name 'MessageBoxA';function DAR_Status: Integer;function DAR_LeVersaoDLL: Integer;
function DAR_LeVersaoDLL; external 'fs345_32.dll';
function DAR_Status; external 'fs345_32.dll';
function DAR_AbreSerial(conf:string): Integer;stdcall;external 'fs345_32.dll';


// comando padrao
function DAR_Envia(buf:string;Size:char;wait:char): Integer;stdcall;external 'fs345_32.dll';



function DAR_FechaSerial (wait:char): Integer;stdcall;external 'fs345_32.dll';
function DAR_Resposta(dest: PChar; maxlen: Integer ): Integer; stdcall; external 'fs345_32.dll';
function DAR_Erro : Integer;stdcall;external 'fs345_32.dll';//Comandos Fiscais//Estas funções estão apresentadas na ordem em que se encontram os comandos no manual da impressora, facilitando assim a sua compreensão
function DAR_AbreCupomFiscal(wait:char): Integer;stdcall;external 'fs345_32.dll';function DAR_Desc1Lin6Dig(St:string;Cod:string;D_a:char;Porc:string;Preco:string;Quant:string;Desc:string;wait:char):Integer;stdcall;external 'fs345_32.dll';
function DAR_Desc2Lin6Dig(St:string;Cod:string;D_a:char;Porc:string;Preco:string;Quant:string;Unid:string;Desc:string;wait:char):Integer;stdcall;external 'fs345_32.dll';
function DAR_Desc3Lin6Dig(St:string;Cod:string;D_a:char;Porc:string;Preco:string;Quant:string;Unid:string;Desc:string;wait:char):Integer;stdcall;external 'fs345_32.dll';
function DAR_Desc1Lin13Dig(St:string;Cod:string;D_a:char;Porc:string;Preco:string;Quant:string;Desc:string;wait:char):Integer;stdcall;external 'fs345_32.dll';
function DAR_Desc2Lin13Dig(St:string;Cod:string;D_a:char;Porc:string;Preco:string;Quant:string;Unid:string;Desc:string;wait:char):Integer;stdcall;external 'fs345_32.dll';
function DAR_Desc3Lin13Dig(St:string;Cod:string;D_a:char;Porc:string;Preco:string;Quant:string;Unid:string;Desc:string;wait:char):Integer;stdcall;external 'fs345_32.dll';
function DAR_DescPreUn3dF53(St:string;Cod:string;D_a:char;Porc:string;Preco:string;Quant:string;Unid:string;Desc:string;wait:char):Integer;stdcall;external 'fs345_32.dll';
function DAR_DescPreUn3d(St:string;Cod:string;D_a:char;Porc:string;Preco:string;Quant:string;Unid:string;Desc:string;wait:char):Integer;stdcall;external 'fs345_32.dll';
function DAR_CancelaItem(NumItem:string;wait:char):Integer;stdcall;external 'fs345_32.dll';
function DAR_Subtotal(wait:char):Integer;stdcall;external 'fs345_32.dll';
function DAR_Totaliza(D_a:char;Val:string;wait:char): Integer;stdcall;external 'fs345_32.dll';
function DAR_DescFormPag(Tipo:char;Val:string;Text:string;wait:char): Integer;stdcall;external 'fs345_32.dll';
function DAR_IdentConsum(Text:string;wait:char): Integer;stdcall;external 'fs345_32.dll';
function DAR_FechaCupom(Text:string;wait:char): Integer;stdcall;external 'fs345_32.dll';
function DAR_CupomAdicional(wait:char):Integer;stdcall;external 'fs345_32.dll';
function DAR_CancelaDoc(wait:char):Integer;stdcall;external 'fs345_32.dll';
function DAR_AbreCNFV(Id:char;Tipo:char;Coo:string;Val:string;wait:char):Integer;stdcall;external 'fs345_32.dll';
function DAR_AbreX(wait:char):Integer;stdcall;external 'fs345_32.dll';
function DAR_LinhaX(Text:string;wait:char):Integer;stdcall;external 'fs345_32.dll';
function DAR_FechaX(wait:char):Integer;stdcall;external 'fs345_32.dll';
function DAR_AbreCNFNV(Id:char;D_a:char;Desc:string;Val:string;Text:string;wait:char):Integer;stdcall;external 'fs345_32.dll';
function DAR_LeituraX(wait:char): Integer;stdcall;external 'fs345_32.dll';
function DAR_ImpHora(wait:char):Integer;stdcall;external 'fs345_32.dll';
function DAR_LeMF(opt:char;Inic:string;Fim:string;wait:char):Integer;stdcall;external 'fs345_32.dll';
function DAR_ReducaoZ(DatHor:string;wait:char): Integer;stdcall;external 'fs345_32.dll';
function DAR_Retrans(Mens:char;wait:char):Integer;stdcall;external 'fs345_32.dll';
function DAR_RecuaCabeca(wait:char):Integer;stdcall;external 'fs345_32.dll';
function DAR_PersonaMens(Opcao:char;Cnt:char;Id:char;Text:string;wait:char):Integer;stdcall;external 'fs345_32.dll';
function DAR_CargaAliquota(Opcao:char;Aliq:string;wait:char):Integer;stdcall;external 'fs345_32.dll';
function DAR_CriaCNF(Tipo:char;Nome:string;wait:char):Integer;stdcall;external 'fs345_32.dll';
function DAR_ConfigIF(Bloco:string;wait:char):Integer;stdcall;external 'fs345_32.dll';

//Comandos de Leiturafunction DAR_LeModelo(wait:char):Integer;stdcall;external 'fs345_32.dll';function DAR_LeVersao(wait:char):Integer;stdcall;external 'fs345_32.dll';
function DAR_LeDataMF(wait:char):Integer;stdcall;external 'fs345_32.dll';
function DAR_LeConfig(wait:char):Integer;stdcall;external 'fs345_32.dll';
function DAR_LeRelogio(wait:char):Integer;stdcall;external 'fs345_32.dll';
function DAR_LeAliquotas(wait:char):Integer;stdcall;external 'fs345_32.dll';
function DAR_LeCliche(wait:char):Integer;stdcall;external 'fs345_32.dll';
function DAR_LeIdent(wait:char):Integer;stdcall;external 'fs345_32.dll';
function DAR_LeMensPer(wait:char):Integer;stdcall;external 'fs345_32.dll';
function DAR_LeEstadoDoc(wait:char):Integer;stdcall;external 'fs345_32.dll';
function DAR_LeRegsFiscais(wait:char):Integer;stdcall;external 'fs345_32.dll';
function DAR_LeRegsNaoFiscais(wait:char):Integer;stdcall;external 'fs345_32.dll';
function DAR_GravaProprietario(DatHor:string;Linha1:string;Linha2:string;wait:char):Integer;stdcall;external 'fs345_32.dll';
function DAR_GravaMoeda(Data:string;Moeda:string;wait:char):Integer;stdcall;external 'fs345_32.dll';
function DAR_Intervencao(DatHor:string;ZerAliq:char;ZeraReg:char;ZeraComp:char;Moeda:string;NumECF:string;Cliche:string;wait:char):Integer;stdcall;external 'fs345_32.dll';
function DAR_Autentica(Ident:string;wait:char):Integer;stdcall;external 'fs345_32.dll';
function DAR_Guilhotina():Integer;stdcall;external 'fs345_32.dll';
function DAR_AbreGaveta():Integer;stdcall;external 'fs345_32.dll';
//Comandos para impressão de Chequefunction DAR_ChqCanal(Canal:char;wait:char):Integer;stdcall;external 'fs345_32.dll';function DAR_ChqBanco(Banco:string;wait:char):Integer;stdcall;external 'fs345_32.dll';
function DAR_ChqCidade(Cidade:string;wait:char):Integer;stdcall;external 'fs345_32.dll';
function DAR_ChqData(Data:string;wait:char):Integer;stdcall;external 'fs345_32.dll';
function DAR_ChqFavorecido(Favorecido:string;wait:char):Integer;stdcall;external 'fs345_32.dll';
function DAR_ChqValor(Valor:string;wait:char):Integer;stdcall;external 'fs345_32.dll';
function DAR_ChqTexto(Texto:string;Delim:char;wait:char):Integer;stdcall;external 'fs345_32.dll';
function DAR_ChqLeInfo(wait:char):Integer;stdcall;external 'fs345_32.dll';
function DAR_ChqCarregaBancos(Texto:string;Length:char;wait:char):Integer;stdcall;external 'fs345_32.dll';
function DAR_ChqCorrigeBanco(Text:string;wait:char):Integer;stdcall;external 'fs345_32.dll';
function DAR_ChqLeTabCheques(wait:char):Integer;stdcall;external 'fs345_32.dll';
function DAR_LeStatus(wait:char):Integer;stdcall;external 'fs345_32.dll';
// Nota:  $ = String//        % = Char

implementation

end.
