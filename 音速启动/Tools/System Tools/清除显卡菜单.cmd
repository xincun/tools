@ ECHO OFF
@ ECHO.
@ ECHO.
@ ECHO.
@ ECHO.                            『异次元の世界』
@ ECHO -----------------------------------------------------------------------
@ ECHO.                  为你精选精彩实用的软件 www.X-Force.cn
@ ECHO -----------------------------------------------------------------------
@ ECHO.
@ ECHO.
@ ECHO.                            显卡右键菜单删除程序
@ ECHO -----------------------------------------------------------------------
@ ECHO 很多显卡在装了驱动之后，右键菜单中会多出一项或多项菜单，会拖慢右键
@ ECHO 本批处理将删除这个菜单，让你的右键速度恢复正常水平
@ ECHO -----------------------------------------------------------------------
PAUSE

regsvr32 /u /s igfxpph.dll
reg delete HKEY_CLASSES_ROOT\Directory\Background\shellex\ContextMenuHandlers /f
reg add HKEY_CLASSES_ROOT\Directory\Background\shellex\ContextMenuHandlers\new /ve /d {D969A300-E7FF-11d0-A93B-00A0C90F2719}
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v HotKeysCmds /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v IgfxTray /f
