library unpack;

uses
  Windows;

type DLL_RET_MSG = record
szMsgText: PChar;
szMsgHead: PChar;
dRetVal: DWORD;
dRetExVal: DWORD;
dFlags: DWORD;
end;

function LoadDll:PChar;cdecl;
begin
result:='some unpacker (coded by: _pusher_)';
end;

function DoMyJob(hMainDlg: HWND; szFname: PChar; lpReserved: DWORD; DRM: DLL_RET_MSG):DWORD; cdecl;
begin
Messagebox(hMainDlg,Pchar('hello world'+#13+#10+'FileName: '+szFname),'',MB_OK);

result:=1;
end;

exports
    DoMyJob,
    LoadDll;
{$R *.res}

begin
end.
