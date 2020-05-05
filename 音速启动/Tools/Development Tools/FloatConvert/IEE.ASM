;************************************************************************
; 程序功能：显示IEEE浮点数在内存中的存放以十六进制数或二进制方式显示
; 程序设计：Greatboy
; 程序建立时间：2004.11
; http://bbs.pediy.com/showthread.php?s=&threadid=7773
;************************************************************************

.386
.model flat, stdcall
option casemap :none

include     windows.inc
include     user32.inc
includelib  user32.lib
include     kernel32.inc
includelib  kernel32.lib
include     gdi32.inc
includelib  gdi32.lib
include     fpu.inc
includeLib  fpu.lib

IDD_FLOATCONDLG      EQU     1000
IDD_DOUBLECONDLG     EQU     1001
IDC_ICO              EQU     1104
IDC_COPYBUTTON       EQU     1105
IDC_PASTEBUTTON      EQU     1106
IDC_DECBUTTON        EQU     1
IDC_EXITBUTTON       EQU     2
IDC_HEXBUTTON        EQU     3
IDC_BINBUTTON        EQU     4
IDC_DOUBLEBUTTON     EQU     1002
IDC_FLOATBUTTON      EQU     1003
IDC_DDECEDIT         EQU     1004
IDC_DHEXEDIT         EQU     1005
IDC_DBINEDIT63       EQU     1006
IDC_DBINEDIT62       EQU     1007
IDC_DBINEDIT61       EQU     1008
IDC_DBINEDIT60       EQU     1009
IDC_DBINEDIT59       EQU     1010
IDC_DBINEDIT58       EQU     1011
IDC_DBINEDIT57       EQU     1012
IDC_DBINEDIT56       EQU     1013
IDC_DBINEDIT55       EQU     1014
IDC_DBINEDIT54       EQU     1015
IDC_DBINEDIT53       EQU     1016
IDC_DBINEDIT52       EQU     1017
IDC_DBINEDIT51       EQU     1018
IDC_DBINEDIT50       EQU     1019
IDC_DBINEDIT49       EQU     1020
IDC_DBINEDIT48       EQU     1021
IDC_DBINEDIT47       EQU     1022
IDC_DBINEDIT46       EQU     1023
IDC_DBINEDIT45       EQU     1024
IDC_DBINEDIT44       EQU     1025
IDC_DBINEDIT43       EQU     1026
IDC_DBINEDIT42       EQU     1027
IDC_DBINEDIT41       EQU     1028
IDC_DBINEDIT40       EQU     1029
IDC_DBINEDIT39       EQU     1030
IDC_DBINEDIT38       EQU     1031
IDC_DBINEDIT37       EQU     1032
IDC_DBINEDIT36       EQU     1033
IDC_DBINEDIT35       EQU     1034
IDC_DBINEDIT34       EQU     1035
IDC_DBINEDIT33       EQU     1036
IDC_DBINEDIT32       EQU     1037
IDC_DBINEDIT31       EQU     1038
IDC_DBINEDIT30       EQU     1039
IDC_DBINEDIT29       EQU     1040
IDC_DBINEDIT28       EQU     1041
IDC_DBINEDIT27       EQU     1042
IDC_DBINEDIT26       EQU     1043
IDC_DBINEDIT25       EQU     1044
IDC_DBINEDIT24       EQU     1045
IDC_DBINEDIT23       EQU     1046
IDC_DBINEDIT22       EQU     1047
IDC_DBINEDIT21       EQU     1048
IDC_DBINEDIT20       EQU     1049
IDC_DBINEDIT19       EQU     1050
IDC_DBINEDIT18       EQU     1051
IDC_DBINEDIT17       EQU     1052
IDC_DBINEDIT16       EQU     1053
IDC_DBINEDIT15       EQU     1054
IDC_DBINEDIT14       EQU     1055
IDC_DBINEDIT13       EQU     1056
IDC_DBINEDIT12       EQU     1057
IDC_DBINEDIT11       EQU     1058
IDC_DBINEDIT10       EQU     1059
IDC_DBINEDIT09       EQU     1060
IDC_DBINEDIT08       EQU     1061
IDC_DBINEDIT07       EQU     1062
IDC_DBINEDIT06       EQU     1063
IDC_DBINEDIT05       EQU     1064
IDC_DBINEDIT04       EQU     1065
IDC_DBINEDIT03       EQU     1066
IDC_DBINEDIT02       EQU     1067
IDC_DBINEDIT01       EQU     1068
IDC_DBINEDIT00       EQU     1069
IDC_FDECEDIT         EQU     1070
IDC_FHEXEDIT         EQU     1071
IDC_FBINEDIT31       EQU     1072
IDC_FBINEDIT30       EQU     1073
IDC_FBINEDIT29       EQU     1074
IDC_FBINEDIT28       EQU     1075
IDC_FBINEDIT27       EQU     1076
IDC_FBINEDIT26       EQU     1077
IDC_FBINEDIT25       EQU     1078
IDC_FBINEDIT24       EQU     1079
IDC_FBINEDIT23       EQU     1080
IDC_FBINEDIT22       EQU     1081
IDC_FBINEDIT21       EQU     1082
IDC_FBINEDIT20       EQU     1083
IDC_FBINEDIT19       EQU     1084
IDC_FBINEDIT18       EQU     1085
IDC_FBINEDIT17       EQU     1086
IDC_FBINEDIT16       EQU     1087
IDC_FBINEDIT15       EQU     1088
IDC_FBINEDIT14       EQU     1089
IDC_FBINEDIT13       EQU     1090
IDC_FBINEDIT12       EQU     1091
IDC_FBINEDIT11       EQU     1092
IDC_FBINEDIT10       EQU     1093
IDC_FBINEDIT09       EQU     1094
IDC_FBINEDIT08       EQU     1095
IDC_FBINEDIT07       EQU     1096
IDC_FBINEDIT06       EQU     1097
IDC_FBINEDIT05       EQU     1098
IDC_FBINEDIT04       EQU     1099
IDC_FBINEDIT03       EQU     1100
IDC_FBINEDIT02       EQU     1101
IDC_FBINEDIT01       EQU     1102
IDC_FBINEDIT00       EQU     1103

ProcFloatDlgMain PROTO :DWORD, :DWORD, :DWORD, :DWORD
ProcDoubleDlgMain PROTO :DWORD, :DWORD, :DWORD, :DWORD
FloatToHexText PROTO :DWORD, :DWORD, :DWORD
HexToBinText PROTO :DWORD, :DWORD, :DWORD
HexTextToDec PROTO :DWORD, :DWORD, :DWORD
BinTextToHex PROTO :DWORD, :DWORD, :DWORD
ProcDecEdit PROTO :DWORD, :DWORD, :DWORD, :DWORD
ProcHexEdit PROTO :DWORD, :DWORD, :DWORD, :DWORD

.data?
hInstance       dd  ?
hGlobal         dd  ?
lpOldProcDecEdit dd ?
lpOldProcHexEdit dd ?

.data
SeleDispDlg     dd  1
szInputDec      db  30 dup(0)
szInputHex      db  17 dup(0)
szInputBin      db  65 dup(0)
r4Data          dd  0
r8Data          dq  0
szChar          db  0,0

.const
szAppName       db  '浮点数转换', 0
szErrPrompt1    db  '十进制栏没有输入数值！',0
szErrPrompt2    db  '输入的十进制数太长或错误！',0
szErrPrompt3    db  '输入的十六进制数错误或长度不够！',0
szErrPrompt4    db  '输入的二进制数错误（非0或1）！',0
szErrPrompt5    db  '剪贴板格式无效！',0
szAllowDecChar  db  '0123456789.', 08h
szAllowHexChar  db  '0123456789ABCDEFabcdef', 08h

.code
start:
        invoke  GetModuleHandle, NULL
        mov     hInstance, eax      
        .while  TRUE
            .if     SeleDispDlg == 1
                invoke  DialogBoxParam, hInstance, IDD_FLOATCONDLG,NULL, offset ProcFloatDlgMain, NULL
            .elseif SeleDispDlg == 2
                invoke  DialogBoxParam, hInstance, IDD_DOUBLECONDLG,NULL, offset ProcDoubleDlgMain, NULL
            .else
                invoke  ExitProcess, NULL
            .endif
        .endw
        
ProcFloatDlgMain    proc    uses ebx edx edi esi hWnd, wMsg, wParam, lParam     

        mov eax,wMsg
        .if     eax == WM_CLOSE
            mov     SeleDispDlg, 0
            invoke  EndDialog, hWnd, NULL
        .elseif eax == WM_INITDIALOG
            invoke  LoadIcon, hInstance, IDC_ICO
            invoke  SendMessage, hWnd,WM_SETICON, ICON_BIG, eax
            invoke  SendDlgItemMessage, hWnd, IDC_FDECEDIT, EM_LIMITTEXT, 29, 0
            invoke  SendDlgItemMessage, hWnd, IDC_FHEXEDIT, EM_LIMITTEXT, 8, 0
            ;invoke GetDlgItem, hWnd, IDC_FDECEDIT
            ;invoke SetWindowLong, eax, GWL_WNDPROC, addr ProcDecEdit
            ;mov        lpOldProcDecEdit, eax
            invoke  GetDlgItem, hWnd, IDC_FHEXEDIT
            invoke  SetWindowLong, eax, GWL_WNDPROC, addr ProcHexEdit
            mov     lpOldProcHexEdit, eax
        .elseif eax == WM_COMMAND
            mov eax,wParam
            .if     ax == IDCANCEL
                mov     SeleDispDlg, 0
                invoke  EndDialog,hWnd,NULL
            .elseif ax == IDC_DOUBLEBUTTON
                mov     SeleDispDlg, 2
                invoke  EndDialog,hWnd,NULL
            .elseif ax == IDC_DECBUTTON
                invoke GetDlgItem, hWnd, IDC_FDECEDIT
                invoke GetWindowText, eax, offset szInputDec, 30    ; 千万注意最后一个参数的长度要包括空字符在内！
                .if eax == 0
                    invoke MessageBox, hWnd, offset szErrPrompt1, offset szAppName, MB_OK or MB_ICONWARNING
                    mov    eax,TRUE
                    ret
                .endif
                invoke FpuAtoFL, offset szInputDec, 0, DEST_FPU
                fstp   r4Data   ; mem32
                .if eax == 0
                    invoke MessageBox, hWnd, offset szErrPrompt2, offset szAppName, MB_OK or MB_ICONERROR
                    mov    eax,TRUE
                    ret
                .endif
                invoke FloatToHexText, offset r4Data, offset szInputHex, 8
                invoke GetDlgItem, hWnd, IDC_FHEXEDIT
                invoke SetWindowText, eax, offset szInputHex
                invoke HexToBinText, offset szInputHex, offset szInputBin, 8
                lea    esi,szInputBin
                lea    edi,szChar
                mov    ebx,IDC_FBINEDIT31
                mov    ecx,32
                NextEdit:
                    mov    al,[esi]
                    inc    esi
                    mov    byte ptr[edi],al
                    push   ecx
                    invoke GetDlgItem, hWnd, ebx
                    inc    ebx
                    invoke SetWindowText, eax, offset szChar
                    pop    ecx
                loop   NextEdit
            .elseif ax == IDC_HEXBUTTON
                invoke GetDlgItem, hWnd, IDC_FHEXEDIT
                invoke GetWindowText, eax, offset szInputHex, 9     ; 千万注意最后一个参数的长度要包括空字符在内！
                invoke HexTextToDec, offset szInputHex, offset r4Data, 8
                .if    eax == 0
                    invoke MessageBox, hWnd, offset szErrPrompt3, offset szAppName, MB_OK or MB_ICONERROR
                    mov    eax,TRUE
                    ret
                .endif
                finit
                fld    r4Data
                invoke FpuFLtoA, 0, 7, offset szInputDec, SRC1_FPU  ; 对于单精度浮点数最多精确到小数后7位
                invoke GetDlgItem, hWnd, IDC_FDECEDIT
                invoke SetWindowText, eax, offset szInputDec
                invoke HexToBinText, offset szInputHex, offset szInputBin, 8
                lea    esi,szInputBin
                lea    edi,szChar
                mov    ebx,IDC_FBINEDIT31
                mov    ecx,32
                NextEdit1:
                    mov    al,[esi]
                    inc    esi
                    mov    byte ptr[edi],al
                    push   ecx
                    invoke GetDlgItem, hWnd, ebx
                    inc    ebx
                    invoke SetWindowText, eax, offset szChar
                    pop    ecx
                loop   NextEdit1
            .elseif ax == IDC_BINBUTTON
                lea    edi,szInputBin
                lea    esi,szChar
                cld
                mov    ebx,IDC_FBINEDIT31
                mov    ecx,32
                NextEdit2:                  
                    push   ecx
                    invoke GetDlgItem, hWnd, ebx
                    inc    ebx
                    invoke GetWindowText, eax, offset szChar, 2     ; 千万注意最后一个参数的长度要包括空字符在内！
                    mov    al,[esi]                                 ; store szChar to al
                    stosb
                    pop    ecx
                loop    NextEdit2
                mov    al,0
                mov    byte ptr[edi],al                             ; end of string
                invoke BinTextToHex, offset szInputBin, offset szInputHex, 8
                .if    eax == 0
                    invoke MessageBox, hWnd, offset szErrPrompt4, offset szAppName, MB_OK or MB_ICONERROR
                    mov    eax,TRUE
                    ret
                .endif
                invoke GetDlgItem, hWnd, IDC_FHEXEDIT
                invoke SetWindowText, eax, offset szInputHex
                invoke HexTextToDec, offset szInputHex, offset r4Data, 8
                finit
                fld     r4Data
                invoke FpuFLtoA, 0, 7, offset szInputDec, SRC1_FPU
                invoke GetDlgItem, hWnd, IDC_FDECEDIT
                invoke SetWindowText, eax, offset szInputDec
            .elseif ax == IDC_COPYBUTTON
                invoke  GlobalAlloc, GHND or GMEM_SHARE, 33
                mov     hGlobal,eax
                invoke GlobalLock, hGlobal
                mov    edi,eax
                lea    esi,szInputBin
                mov    ecx,33
                cld
                rep    movsb
                invoke GlobalUnlock, hGlobal
                invoke OpenClipboard, hWnd
                invoke EmptyClipboard
                invoke SetClipboardData, CF_TEXT, hGlobal
                invoke CloseClipboard
                ;invoke  GlobalFree, hGlobal
            .elseif ax == IDC_PASTEBUTTON
                invoke IsClipboardFormatAvailable, CF_TEXT
                .if eax == 0
                    invoke MessageBox, hWnd, offset szErrPrompt5, offset szAppName, MB_OK or MB_ICONWARNING
                    mov    eax,TRUE
                    ret
                .endif
                invoke OpenClipboard, hWnd
                invoke GetClipboardData, CF_TEXT
                mov    hGlobal,eax
                invoke GlobalLock, hGlobal
                mov    esi,eax
                lea    edi,szInputBin
                mov    ecx,33
                cld
                rep    movsb
                invoke GlobalUnlock, hGlobal
                invoke CloseClipboard
                lea    esi,szInputBin
                lea    edi,szChar
                mov    ebx,IDC_FBINEDIT31
                mov    ecx,32
                NextEdit3:
                    mov    al,[esi]
                    inc    esi
                    mov    byte ptr[edi],al
                    push   ecx
                    invoke GetDlgItem, hWnd, ebx
                    inc    ebx
                    invoke SetWindowText, eax, offset szChar
                    pop    ecx
                loop   NextEdit3
            .endif
;       .elseif eax == WM_PAINT ;没有找到更好的处理按钮允许的消息，暂用WM_PAINT消息
;           invoke IsClipboardFormatAvailable, CF_TEXT
;           .if eax == 0
;               invoke GetDlgItem, hWnd, IDC_PASTEBUTTON
;               invoke EnableWindow, eax, FALSE
;           .else
;               invoke GetDlgItem, hWnd, IDC_PASTEBUTTON
;               invoke EnableWindow, eax, TRUE
;           .endif
;           mov eax,FALSE       ; 让默认消息处理程序再处理，不然会没完没了地发WM_PAINT消息，使窗口反应变慢
;           ret
        .else
            mov eax,FALSE
            ret
        .endif
        mov eax,TRUE
        ret

ProcFloatDlgMain    endp

ProcDoubleDlgMain   proc    uses ebx edi esi hWnd, wMsg, wParam, lParam     

        mov eax,wMsg
        .if     eax == WM_CLOSE
            mov     SeleDispDlg, 0
            invoke  EndDialog, hWnd, NULL
        .elseif eax == WM_INITDIALOG
            invoke  LoadIcon, hInstance, IDC_ICO
            invoke  SendMessage, hWnd,WM_SETICON, ICON_BIG, eax
            invoke  SendDlgItemMessage, hWnd, IDC_DDECEDIT, EM_LIMITTEXT, 29, 0
            invoke  SendDlgItemMessage, hWnd, IDC_DHEXEDIT, EM_LIMITTEXT, 16, 0
            ;invoke GetDlgItem, hWnd, IDC_DDECEDIT
            ;invoke SetWindowLong, eax, GWL_WNDPROC, addr ProcDecEdit
            ;mov        lpOldProcDecEdit, eax
            invoke  GetDlgItem, hWnd, IDC_DHEXEDIT
            invoke  SetWindowLong, eax, GWL_WNDPROC, addr ProcHexEdit
            mov     lpOldProcHexEdit, eax
        .elseif eax == WM_COMMAND
            mov eax,wParam
            .if     ax == IDCANCEL
                mov     SeleDispDlg, 0
                invoke  EndDialog,hWnd,NULL         
            .elseif ax == IDC_FLOATBUTTON
                mov     SeleDispDlg, 1
                invoke  EndDialog,hWnd,NULL
            .elseif ax == IDC_DECBUTTON
                invoke GetDlgItem, hWnd, IDC_DDECEDIT
                invoke GetWindowText, eax, offset szInputDec, 30
                .if eax == 0
                    invoke MessageBox, hWnd, offset szErrPrompt1, offset szAppName, MB_OK or MB_ICONWARNING
                    mov    eax,TRUE
                    ret
                .endif
                invoke FpuAtoFL, offset szInputDec, 0, DEST_FPU
                fstp   r8Data   ; mem64
                .if eax == 0
                    invoke MessageBox, hWnd, offset szErrPrompt2, offset szAppName, MB_OK or MB_ICONERROR
                    mov    eax,TRUE
                    ret
                .endif
                invoke FloatToHexText, offset r8Data, offset szInputHex, 16
                invoke GetDlgItem, hWnd, IDC_DHEXEDIT
                invoke SetWindowText, eax, offset szInputHex
                invoke HexToBinText, offset szInputHex, offset szInputBin, 16
                lea    esi,szInputBin
                lea    edi,szChar
                mov    ebx,IDC_DBINEDIT63
                mov    ecx,64
                NextEdit:
                    mov    al,[esi]
                    inc    esi
                    mov    byte ptr[edi],al
                    push   ecx
                    invoke GetDlgItem, hWnd, ebx
                    inc    ebx
                    invoke SetWindowText, eax, offset szChar
                    pop    ecx
                loop   NextEdit
            .elseif ax == IDC_HEXBUTTON
                invoke GetDlgItem, hWnd, IDC_DHEXEDIT
                invoke GetWindowText, eax, offset szInputHex, 17
                invoke HexTextToDec, offset szInputHex, offset r8Data, 16
                .if    eax == 0
                    invoke MessageBox, hWnd, offset szErrPrompt3, offset szAppName, MB_OK or MB_ICONERROR
                    mov    eax,TRUE
                    ret
                .endif
                finit
                fld    r8Data
                invoke FpuFLtoA, 0, 15, offset szInputDec, SRC1_FPU ; FpuFLtoA只能到小数点后15位，再长也不会输出了。
                invoke GetDlgItem, hWnd, IDC_DDECEDIT
                invoke SetWindowText, eax, offset szInputDec
                invoke HexToBinText, offset szInputHex, offset szInputBin, 16
                lea    esi,szInputBin
                lea    edi,szChar
                mov    ebx,IDC_DBINEDIT63
                mov    ecx,64
                NextEdit1:
                    mov    al,[esi]
                    inc    esi
                    mov    byte ptr[edi],al
                    push   ecx
                    invoke GetDlgItem, hWnd, ebx
                    inc    ebx
                    invoke SetWindowText, eax, offset szChar
                    pop    ecx
                loop   NextEdit1
            .elseif ax == IDC_BINBUTTON
                lea    edi,szInputBin
                lea    esi,szChar
                cld
                mov    ebx,IDC_DBINEDIT63
                mov    ecx,64
                NextEdit2:                  
                    push   ecx
                    invoke GetDlgItem, hWnd, ebx
                    inc    ebx
                    invoke GetWindowText, eax, offset szChar, 2     ; 千万注意最后一个参数的长度要包括空字符在内！
                    mov    al,[esi]                                 ; store szChar to al
                    stosb
                    pop    ecx
                loop    NextEdit2
                mov    al,0
                mov    byte ptr[edi],al                             ; end of string
                invoke BinTextToHex, offset szInputBin, offset szInputHex, 16
                .if    eax == 0
                    invoke MessageBox, hWnd, offset szErrPrompt4, offset szAppName, MB_OK or MB_ICONERROR
                    mov    eax,TRUE
                    ret
                .endif
                invoke GetDlgItem, hWnd, IDC_DHEXEDIT
                invoke SetWindowText, eax, offset szInputHex
                invoke HexTextToDec, offset szInputHex, offset r8Data, 16
                finit
                fld     r8Data
                invoke FpuFLtoA, 0, 15, offset szInputDec, SRC1_FPU
                invoke GetDlgItem, hWnd, IDC_DDECEDIT
                invoke SetWindowText, eax, offset szInputDec
            .elseif ax == IDC_COPYBUTTON
                invoke  GlobalAlloc, GHND or GMEM_SHARE, 65
                mov     hGlobal,eax
                invoke GlobalLock, hGlobal
                mov    edi,eax
                lea    esi,szInputBin
                mov    ecx,65
                cld
                rep    movsb
                invoke GlobalUnlock, hGlobal
                invoke OpenClipboard, hWnd
                invoke EmptyClipboard
                invoke SetClipboardData, CF_TEXT, hGlobal
                invoke CloseClipboard
                ;invoke  GlobalFree, hGlobal
            .elseif ax == IDC_PASTEBUTTON
                invoke IsClipboardFormatAvailable, CF_TEXT
                .if eax == 0
                    invoke MessageBox, hWnd, offset szErrPrompt5, offset szAppName, MB_OK or MB_ICONWARNING
                    mov    eax,TRUE
                    ret
                .endif
                invoke OpenClipboard, hWnd
                invoke GetClipboardData, CF_TEXT
                mov    hGlobal,eax
                invoke GlobalLock, hGlobal
                mov    esi,eax
                lea    edi,szInputBin
                mov    ecx,65
                cld
                rep    movsb
                invoke GlobalUnlock, hGlobal
                invoke CloseClipboard
                lea    esi,szInputBin
                lea    edi,szChar
                mov    ebx,IDC_DBINEDIT63
                mov    ecx,64
                NextEdit3:
                    mov    al,[esi]
                    inc    esi
                    mov    byte ptr[edi],al
                    push   ecx
                    invoke GetDlgItem, hWnd, ebx
                    inc    ebx
                    invoke SetWindowText, eax, offset szChar
                    pop    ecx
                loop   NextEdit3
            .endif
        .else
            mov eax,FALSE
            ret
        .endif
        mov eax,TRUE
        ret

ProcDoubleDlgMain   endp

FloatToHexText  proc    uses ebx ecx edx edi esi lpSrc, lpDest, lBitNum
        LOCAL   @SrcSetCount:DWORD
        LOCAL   @DestSetCount:DWORD
        LOCAL   @TempStr[16]:BYTE
        
        mov     @SrcSetCount,0
        mov     @DestSetCount,0
        mov     esi,lpSrc
        mov     edi,lpDest
        xor     eax,eax
        xor     ebx,ebx
        mov     ecx,lBitNum                 ; lBitNum = 8 or 16
        shl     ecx,1                       ; div 2
        NextByte:
            push    ecx
            mov     ecx,@SrcSetCount
            mov     al,[esi+ecx]
            pop     ecx
            push    ecx
            mov     ecx,2                   ; 2 char by 1 byte
            NextBCD:                
                xor     bl,bl
                sar     al,1
                jnc     @F
                add     bl,1
                @@:
                sar     al,1
                jnc     @F
                add     bl,2
                @@:
                sar     al,1
                jnc     @F
                add     bl,4
                @@:
                sar     al,1
                jnc     @F
                add     bl,8
                @@:
                cmp     bl,10
                jae     @F
                add     bl,48               ; 0-9 Adjust to ASCII
                jmp     lp0
                @@:
                add     bl,55               ; A-F Adjust to ASCII
                lp0:
                push    ecx
                mov     ecx,@DestSetCount
                mov     [edi+ecx],bl        ; store to set 1
                pop     ecx
                inc     @DestSetCount
            loop    NextBCD
            pop     ecx         
            inc     @SrcSetCount
        loop    NextByte
        mov     ecx,@DestSetCount       
        ; swap string set
        mov     esi,lpDest
        lea     edi,@TempStr
        mov     ecx,lBitNum
        mov     ebx,lBitNum
        dec     ebx                         ; Source stream set
        xor     edx,edx
        TempNextChar:
            mov     al,[esi+ebx]
            mov     [edi+edx],al
            dec     ebx
            inc     edx
        loop    TempNextChar
        lea     esi,@TempStr
        mov     edi,lpDest
        mov     ecx,lBitNum
        cld
        rep     movsb
        mov     al,0
        mov     [edi],al                    ; end of string
        ret     
FloatToHexText  endp

HexToBinText    proc    uses ecx edi esi lpSrc, lpDest, lBitNum
    
        mov     esi,lpSrc
        mov     edi,lpDest      
        mov     ecx,lBitNum             ; lBitNum = 8 or 16
        NextChar:
            mov     al,[esi]
            inc     esi
            cmp     al,39h
            jbe     @F
            sub     al,7
            @@:
            sub     al,30h
            sal     al,4
            push    ecx
            mov     ecx,4
            NextBit:
                sal     al,1
                jc      @F
                mov     byte ptr[edi],30h
                jmp     lp0
                @@:
                mov     byte ptr[edi],31h
                lp0:
                inc     edi
            loop    NextBit
            pop     ecx
        loop    NextChar
        mov     byte ptr[edi],0                 ; end of string
        ret

HexToBinText    endp

HexTextToDec    proc    uses ecx edi esi lpSrc, lpDest, lBitNum
        
        mov     esi,lpSrc       
        mov     ecx,lBitNum     
        NextCharChk:            
            mov     al,[esi]        
            .if     (al >= 'a') && (al <= 'f')
                sub     al,20h
            .endif
            .if     al < 'A'
                .if     (al < '0') || (al > '9')
                    jmp     HexErr
                .endif
            .else
                .if     al > 'F'
                    jmp     HexErr
                .endif
            .endif
            mov     byte ptr[esi],al
            inc     esi         
        loop    NextCharChk     
        mov     esi,lpSrc
        mov     edi,lpDest
        add     esi,lBitNum             ; lBitNum = 8 or 16
        dec     esi
        xor     eax,eax
        mov     ecx,lBitNum
        sar     ecx,1                   ; ecx / 2
        NextByte:
            mov     al,[esi]
            dec     esi
            cmp     al,'9'
            jbe     @F                  
            sub     al,7
            @@:         
            sub     al,30h
            mov     ah,al
            mov     al,[esi]
            dec     esi
            cmp     al,'9'
            jbe     @F
            sub     al,7
            @@:
            sub     al,30h
            sal     al,4
            add     al,ah
            mov     byte ptr[edi],al
            inc     edi
        loop    NextByte
        mov     eax,1
        ret
        HexErr:
        xor     eax,eax
        ret

HexTextToDec endp

BinTextToHex    proc    uses ecx edi esi lpSrc, lpDest, lBitNum
    
        mov     esi,lpSrc
        mov     edi,lpDest
        xor     eax,eax
        mov     ecx,lBitNum             ; lBitNum = 8 or 16
        cld
        NextHexChar:
            lodsb
            cmp     al,'0'
            jz      @F
            cmp     al,'1'
            jnz     BinErr
            add     ah,8
            @@:
            lodsb
            cmp     al,'0'
            jz      @F
            cmp     al,'1'
            jnz     BinErr
            add     ah,4
            @@:
            lodsb
            cmp     al,'0'
            jz      @F
            cmp     al,'1'
            jnz     BinErr
            add     ah,2
            @@:
            lodsb
            cmp     al,'0'
            jz      @F
            cmp     al,'1'
            jnz     BinErr
            add     ah,1
            @@:
            cmp     ah,9
            jbe     @F
            add     ah,7
            @@:
            add     ah,30h
            mov     byte ptr[edi],ah
            inc     edi
            xor     ah,ah
        loop    NextHexChar
        mov     ah,0
        mov     byte ptr[edi],ah        ; end of string
        mov     eax,1                   ; return TRUE
        ret
        BinErr:
        xor     eax,eax
        ret

BinTextToHex endp

ProcDecEdit     proc    uses ebx edi esi hWnd, wMsg, wParam, lParam
    
        mov     eax, wMsg
        .if     wMsg == WM_CHAR
                mov     eax, wParam
                lea     edi,szAllowDecChar
                mov     ecx, sizeof szAllowDecChar
                repnz   scasb
                .if     ZERO?   ; 只有允许的字符才发送消息给默认对话框处理过程
                    invoke  CallWindowProc, lpOldProcDecEdit, hWnd, wMsg, eax, lParam
                    ret
                .endif
        .else
                invoke  CallWindowProc, lpOldProcDecEdit, hWnd, wMsg, wParam, lParam
                ret
        .endif
        xor     eax,eax         ; 未处理消息
        ret

ProcDecEdit endp

ProcHexEdit     proc    uses ebx edi esi hWnd, wMsg, wParam, lParam
    
        mov     eax, wMsg
        .if     wMsg == WM_CHAR
                mov     eax, wParam
                lea     edi,szAllowHexChar
                mov     ecx, sizeof szAllowHexChar
                repnz   scasb
                .if     ZERO?   ; 只有允许的字符才发送消息给默认对话框处理过程
                    .if     al > '9'
                        and     al, not 20h     ; 将a-f转换为大写
                    .endif
                    invoke  CallWindowProc, lpOldProcHexEdit, hWnd, wMsg, eax, lParam
                    ret
                .endif
        .else
                invoke  CallWindowProc, lpOldProcHexEdit, hWnd, wMsg, wParam, lParam
                ret
        .endif
        xor     eax,eax         ; 未处理消息
        ret

ProcHexEdit endp

end start
