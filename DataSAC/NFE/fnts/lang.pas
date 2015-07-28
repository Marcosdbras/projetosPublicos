unit lang;

interface

uses
  Sysutils,Inifiles;

//EXPORTS
type
  stlang = record
  chooseterminal  : string;
  serverstartfail : string;
  serverstartok  : string;
end;

procedure OpenLanguageFile(filename : string; var mylang : stlang);

implementation

uses
  buscapreco;

procedure OpenLanguageFile(filename : string; var mylang : stlang);
var
  EZIni: TIniFile;

  straux : string;
  recv   : string;
  send   : string;
  load   : string;
  add    : string;
  del    : string;
  reload : string;
  save   : string;
begin
  EZIni := TIniFile.Create(ExtractFilePath(ParamStr(0)) + filename);

  with EZIni do begin
    //TABS
    frmbuscapreco.TabSheet4.Caption := ReadString('TABS', 'tabrecv',   'Received');
    frmbuscapreco.TabSheet1.Caption := ReadString('TABS', 'tabprod',   'Products');
    frmbuscapreco.TabSheet2.Caption := ReadString('TABS', 'tabmsg',    'Messages');
    frmbuscapreco.TabSheet5.Caption := ReadString('TABS', 'tabcard',   'Card');
    frmbuscapreco.TabSheet6.Caption := ReadString('TABS', 'tabconfig', 'Configuration');

    //ALERTS
    mylang.chooseterminal  := ReadString('ALERT', 'chooseterminal', 'Choose a Terminal.');
    mylang.serverstartfail := ReadString('ALERT', 'serverstarfail', 'Fail starting server.');
    mylang.serverstartok   := ReadString('ALERT', 'serverstartok',  'Server started successfully.');

    //MENU
    frmbuscapreco.Language1.Caption  := ReadString('MENU', 'language',  'Language');
    frmbuscapreco.Portugues1.Caption := ReadString('MENU', 'language1', 'Portuguese');
    frmbuscapreco.English1.Caption   := ReadString('MENU', 'language2', 'English');

    //PADRAO
    recv   := ReadString('DEFAULT', 'pdrrecv',   'Receive');
    send   := ReadString('DEFAULT', 'pdrsend',   'Send');
    load   := ReadString('DEFAULT', 'pdrload',   'Load');
    add    := ReadString('DEFAULT', 'pdradd',    'Add');
    del    := ReadString('DEFAULT', 'pdrdel',    'Delete');
    reload := ReadString('DEFAULT', 'pdrreload', 'Reload');
    save   := ReadString('DEFAULT', 'pdrsave',   'Save');

    //RECEIVED
    frmbuscapreco.BtnClearMemo.Caption := ReadString('RECEIVED', 'btnclear', 'Clear');

    //CONFIG
    //ethernet
    frmbuscapreco.GrpEthernet.Caption := ReadString('CONFIG', 'grpethernet', 'Ethernet');
    frmbuscapreco.LabServIP.Caption   := ReadString('CONFIG', 'labservip',     'Server IP');
    frmbuscapreco.LabCliIP.Caption    := ReadString('CONFIG', 'labcliip',       'Terminal IP');
    frmbuscapreco.LabNetMask.Caption  := ReadString('CONFIG', 'labnetmask',   'Netmask');
    frmbuscapreco.LabText1.Caption  := ReadString('CONFIG', 'labtext1',     'Text 1');
    frmbuscapreco.LabText2.Caption  := ReadString('CONFIG', 'labtext2',     'Text 2');
    frmbuscapreco.LabText3.Caption  := ReadString('CONFIG', 'labtext3',     'Text 3');
    frmbuscapreco.LabText4.Caption  := ReadString('CONFIG', 'labtext4',     'Text 4');
    frmbuscapreco.LabTimeExi.Caption  := ReadString('CONFIG', 'labtimeexi',    'Time Exib');

    frmbuscapreco.BtnGetCfg.Caption  := recv;
    frmbuscapreco.BtnSendCfg.Caption := send;

    //configuration
    frmbuscapreco.GrpUpdate.Caption := ReadString('CONFIG', 'grpcfg',          'Configuration');
    frmbuscapreco.LabGateway.Caption := ReadString('CONFIG', 'labgateway',     'Gateway');
    frmbuscapreco.LabNameServer.Caption := ReadString('CONFIG', 'labnameserver',  'Nameserver');
    frmbuscapreco.LabTCName.Caption := ReadString('CONFIG', 'labtcname',      'TCName');
    frmbuscapreco.LabSrv.Caption := ReadString('CONFIG', 'labsrv',             'Server');
    frmbuscapreco.LabUsr.Caption := ReadString('CONFIG', 'labusr',             'User');
    frmbuscapreco.LabPass.Caption := ReadString('CONFIG', 'labpass',           'Password');

    frmbuscapreco.BtnGetUpdConfig.Caption  := recv;
    frmbuscapreco.BtnSendUpdConfig.Caption := send;

    //extras
    frmbuscapreco.GrpExtras.Caption    := ReadString('CONFIG', 'grpextra',        'Extras');
    frmbuscapreco.CBdynamicip.Caption  := ReadString('CONFIG', 'cbdynamicip',   'Dynamic IP');
    frmbuscapreco.CBfindserver.Caption := ReadString('CONFIG', 'cbfindserver', 'Auto Server');

    frmbuscapreco.BtnGetParam.Caption  := recv;
    frmbuscapreco.BtnSendParam.Caption := send;

    //PRODUCTS
    frmbuscapreco.BtnProdAdd.Caption  := add;
    frmbuscapreco.BtnProdDel.Caption  := del;
    frmbuscapreco.BtnProdRel.Caption  := reload;
    frmbuscapreco.BtnProdSave.Caption := save;

    frmbuscapreco.StringGrid1.Cells[0,0] := ReadString('PRODUCTS', 'tabbarcode', 'BarCode');
    frmbuscapreco.StringGrid1.Cells[1,0] := ReadString('PRODUCTS', 'tabproduct', 'Product');
    frmbuscapreco.StringGrid1.Cells[2,0] := ReadString('PRODUCTS', 'tabprice',   'Price');

    frmbuscapreco.LabCurrency.Caption := ReadString('PRODUCTS', 'labcurrency', 'Currency');

    //CARD
    frmbuscapreco.BtnCardAdd.Caption  := add;
    frmbuscapreco.BtnCardDel.Caption  := del;
    frmbuscapreco.BtnCardRel.Caption  := reload;
    frmbuscapreco.BtnCardSave.Caption := save;

    frmbuscapreco.StringGrid2.Cells[0,0] := ReadString('CARD', 'tabcardcode', 'CardCode');
    frmbuscapreco.StringGrid2.Cells[1,0] := ReadString('CARD', 'tabclient',   'Client');
    frmbuscapreco.StringGrid2.Cells[2,0] := ReadString('CARD', 'tabbonus',    'Bonus');

    //MESSAGES
    frmbuscapreco.GrpIMsg.Caption := ReadString('CONFIG', 'grpimsg', 'Instant Text');
    frmbuscapreco.Labline1.Caption  := ReadString('MESSAGES', 'labline1',  'Line 1');
    frmbuscapreco.Labline2.Caption  := ReadString('MESSAGES', 'labline2',  'Line 2');
    frmbuscapreco.LabTimeEx.Caption := ReadString('MESSAGES', 'labtimeex', 'Time Exib');

    frmbuscapreco.BtnAllwaysLive.Caption := ReadString('MESSAGES', 'btnallwayslive', 'Allways Live');
    frmbuscapreco.BtnCheckLive.Caption   := ReadString('MESSAGES', 'btnchecklive',   'Check Live');
    frmbuscapreco.BtnRestartSoft.Caption := ReadString('MESSAGES', 'btnrstsoft',     'Restart Soft');
    frmbuscapreco.BtnUpdSoft.Caption     := ReadString('MESSAGES', 'btnupdsoft',     'Update Soft');

    frmbuscapreco.GrpIImg.Caption      := ReadString('MESSAGES', 'grpiimg',      'Instant Image');
    frmbuscapreco.BtnIImgFont.Caption  := ReadString('MESSAGES', 'btniimgfont',  'Font');
    frmbuscapreco.BtnIImgSave.Caption  := ReadString('MESSAGES', 'btniimgsave',  'Save');
    frmbuscapreco.BtnIImgClear.Caption := ReadString('MESSAGES', 'btniimgclear', 'Clear');

    //IMAGES
    frmbuscapreco.BtnImgAdd.Caption  := add;
    frmbuscapreco.BtnImgDel.Caption  := del;
    frmbuscapreco.BtnImgRel.Caption  := reload;
    frmbuscapreco.BtnImgSave.Caption := save;

    frmbuscapreco.StringGrid3.Cells[0,0] := ReadString('IMAGES', 'tabimgfilename', 'Filename');
    frmbuscapreco.StringGrid3.Cells[1,0] := ReadString('IMAGES', 'tabimgloop',     'Loop');
    frmbuscapreco.StringGrid3.Cells[2,0] := ReadString('IMAGES', 'tabimgpause',    'Pause');

    //HINT
    straux := ReadString('HINT', 'dlbclickimage', 'Double Click to Load an Image');
    frmbuscapreco.EdtIImg.Hint := straux;
    frmbuscapreco.StringGrid3.Hint := straux;
    frmbuscapreco.Image1.Hint := straux;
  end;

  EZIni.Free
end;


end.
