Attribute VB_Name = "Module1"
Option Explicit

Public fMainForm As frmMain
Public Index_Dic As Integer, Index_I As Integer, Const_N As Integer, Const_MN As Integer, LPPT As Integer, Const_NT As Integer, KJ(1 To 10) As Integer
Public Fname As String, AssStr As String, CHC As String

Sub Ass_list1()
  
  
  Index_Dic = fMainForm.List1.ListIndex + 1
  If Const_NT = 1 Then
     fMainForm.Text2.Text = FileContent(Fname & AssStr & CStr(Index_Dic) & ".dat")
     fMainForm.Text3.Text = fMainForm.List1.List(Index_Dic - 1)
  Else
     fMainForm.Text2.Text = FileContent(Fname & AssStr & CStr(Index_Dic) & ".dat")
     fMainForm.Text1.Text = FileContent(Fname & AssStr & CStr(Index_Dic) & "B" & ".dat")
     fMainForm.Text3.Text = fMainForm.List1.List(Index_Dic - 1)
  End If
  
End Sub
Sub Ass_Codesys()
     
    fMainForm.Label17.Caption = " 当前位置: 汇编语言\80X86指令"

    Call RETA
    
    Fname = ""
    fMainForm.Text2.Text = ""
    fMainForm.Text1.Text = ""
    Fname = App.Path & "\DicDAT\AsslanDAT\CodeAss\"
  
    Dim Const_I As Integer
    Const_I = 1001
    fMainForm.List1.Clear
    Do While Const_I <= 1116
        fMainForm.List1.AddItem LoadResString(Const_I)
        Const_I = Const_I + 1
    Loop
    AssStr = "AsslanDAT"
    Index_I = 115
  
    fMainForm.List1.Selected(0) = True
End Sub
Sub Ass_Codesys32()
     
    fMainForm.Label17.Caption = " 当前位置: 汇编语言\WIN32指令"

    Call RETA
    
    Fname = ""
    fMainForm.Text2.Text = ""
    fMainForm.Text1.Text = ""
    Fname = App.Path & "\DicDAT\AsslanDAT\CodeAss32\"
  
    Dim Const_I As Integer
    Const_I = 2501
    fMainForm.List1.Clear
    Do While Const_I <= 2623
        fMainForm.List1.AddItem LoadResString(Const_I)
        Const_I = Const_I + 1
    Loop
    AssStr = "AsslanDAT"
    Index_I = 122
  
    fMainForm.List1.Selected(0) = True
End Sub

Sub Ass_Funsys()
   
   
  fMainForm.Label17.Caption = " 当前位置: 汇编语言\功能号"

  Call RETB
 
  Fname = ""
  fMainForm.Text2.Text = ""
  Fname = App.Path & "\DicDAT\AsslanDAT\"
  fMainForm.Text2.Text = FileContent(Fname & "Assfun1.dat")
  AssStr = "Assfun"
  Index_Dic = 1

End Sub
Sub Ass_Breaksys()

  fMainForm.Label17.Caption = " 当前位置: 汇编语言\中断码"
  
  
  Call RETB

  Fname = ""
  fMainForm.Text2.Text = ""
  Fname = App.Path & "\DicDAT\AsslanDAT\"
  
  fMainForm.Text2.Text = FileContent(Fname & "AssBreak1.dat")
  
  AssStr = "AssBreak"
  Index_Dic = 1

End Sub
Sub Ass_Errorsys()

    fMainForm.Label17.Caption = " 当前位置:汇编语言\错误信息"
    
    Call RETC
    
    Fname = ""
    fMainForm.Text2.Text = ""
    Fname = App.Path & "\DicDAT\AsslanDAT\ErrorAss\"
     
    Dim Const_I As Integer
    Const_I = 2001
    fMainForm.List1.Clear
    Do While Const_I <= 2076
        fMainForm.List1.AddItem LoadResString(Const_I)
        Const_I = Const_I + 1
    Loop
    
    AssStr = "ErrorAss"
    Index_I = 75
  
    fMainForm.List1.Selected(0) = True

  
  
End Sub


 Sub TC_Code()
    
    fMainForm.Label17.Caption = " 当前位置: TurboC\语句标识"
    
    Call RETD
    
    LPPT = 3700
    
    Fname = ""
    fMainForm.Text2.Text = ""
    fMainForm.Text1.Text = ""
    Fname = App.Path & "\DicDAT\TcDat\CodeTC\"
  
    Dim Const_I As Integer
    Const_I = 3701
    fMainForm.List1.Clear
    Do While Const_I <= 3774
        fMainForm.List1.AddItem LoadResString(Const_I)
        Const_I = Const_I + 1
    Loop
    AssStr = "CodeTC"
    Index_I = 73
  
    fMainForm.List1.Selected(0) = True
End Sub
Sub TC_Fun()

    fMainForm.Label17.Caption = " 当前位置: TurboC\常用函数"
 
    Call RETA
    
    LPPT = 3000
    
    Fname = ""
    fMainForm.Text2.Text = ""
    fMainForm.Text1.Text = ""
    Fname = App.Path & "\DicDAT\TcDat\FunTC\"
  
    Dim Const_I As Integer
    Const_I = 3001
    fMainForm.List1.Clear
    Do While Const_I <= 3356
        fMainForm.List1.AddItem LoadResString(Const_I)
        Const_I = Const_I + 1
    Loop
  
    AssStr = "FunTC"
    Index_I = 355
  
    fMainForm.List1.Selected(0) = True
End Sub
Sub TC_Caput()

    fMainForm.Label17.Caption = " 当前位置: TurboC\头文件.H"
    
    Call RETB
    
    Fname = ""
    fMainForm.Text2.Text = ""
    Fname = App.Path & "\DicDAT\TcDat\"
    fMainForm.Text2.Text = FileContent(Fname & "CaputFileTC1.dat")
    AssStr = "CaputFileTC"
    Index_Dic = 1
End Sub
Sub TC_Error()

    fMainForm.Label17.Caption = " 当前位置: TurboC\错误信息"
    
    Call RETC
    
    LPPT = 3500
  
    Fname = ""
    fMainForm.Text2.Text = ""
    Fname = App.Path & "\DicDAT\TcDat\ErrorTC\"
     
    Dim Const_I As Integer
    Const_I = 3501
    fMainForm.List1.Clear
    Do While Const_I <= 3631
        fMainForm.List1.AddItem LoadResString(Const_I)
        Const_I = Const_I + 1
    Loop
    
    AssStr = "ErrorTC"
    Index_I = 130
  
    fMainForm.List1.Selected(0) = True

End Sub
Sub VFP_Code()

  fMainForm.Label17.Caption = " 当前位置: VFP 6.0\常用语句"
  LPPT = 4000
  Call RETA
  Fname = ""
  fMainForm.Text2.Text = ""
  Fname = App.Path & "\DicDAT\VFPDAT\CodeVFP\"
  
    
  Dim Const_I As Integer
  Const_I = 4001
  fMainForm.List1.Clear
  Do While Const_I <= 4080
     fMainForm.List1.AddItem LoadResString(Const_I)
     Const_I = Const_I + 1
  Loop
  AssStr = "VFPDAT"
  Index_I = 79
    
  fMainForm.List1.Selected(0) = True
  
  End Sub
  Sub VFP_Fun()
  
    Call RETD
    fMainForm.Label17.Caption = " 当前位置: VFP 6.0\常用函数"
  
    Fname = ""
    fMainForm.Text2.Text = ""
    Fname = App.Path & "\DicDAT\VFPDAT\FunVFP\"
    LPPT = 4200
    
    Dim Const_I As Integer
    Const_I = 4201
    fMainForm.List1.Clear
    Do While Const_I <= 4538
       fMainForm.List1.AddItem LoadResString(Const_I)
       Const_I = Const_I + 1
    Loop
    AssStr = "FunVFP"
    Index_I = 337
    
    fMainForm.List1.Selected(0) = True
  End Sub
  Sub VC_Fun()
  
    fMainForm.Label17.Caption = " 当前位置: VC++6.0\常用函数"
  
    Call RETA
    
    Fname = ""
    fMainForm.Text2.Text = ""
    fMainForm.Text1.Text = ""
    Fname = App.Path & "\DicDAT\VCDAT\FunVC\"
  
    Dim Const_I As Integer
    Const_I = 5601
    fMainForm.List1.Clear
    Do While Const_I <= 6169
        fMainForm.List1.AddItem LoadResString(Const_I)
        Const_I = Const_I + 1
    Loop
  
    AssStr = "VCDAT"
    Index_I = 568
  
    fMainForm.List1.Selected(0) = True
    
  
  End Sub
  Sub VC_XX()
  
    fMainForm.Label17.Caption = " 当前位置: VC++6.0\消息详解"
  
      
    Call RETD
    
    Fname = ""
    fMainForm.Text2.Text = ""
    fMainForm.Text1.Text = ""
    Fname = App.Path & "\DicDAT\VCDAT\VCMESS\"
  
    Dim Const_I As Integer
    Const_I = 6201
    fMainForm.List1.Clear
    Do While Const_I <= 6380
        fMainForm.List1.AddItem LoadResString(Const_I)
        Const_I = Const_I + 1
    Loop
  
    AssStr = "VCMESS"
    Index_I = 179
    
    fMainForm.List1.Selected(1) = True
  End Sub
  
  Sub VC_KJJ()
  
     fMainForm.Label17.Caption = " 当前位置: VC++6.0\快捷键"
     Call RETB
     Fname = ""
     fMainForm.Text2.Text = ""
     Fname = App.Path & "\DicDAT\VCDAT\"
     fMainForm.Text2.Text = FileContent(Fname & "VCKJJ1.dat")
     AssStr = "VCKJJ"
     Index_Dic = 1

  End Sub
  Sub VB_Funn()
    fMainForm.Label17.Caption = " 当前位置: VB 6.0\常用函数"
  
      
    Call RETA
    Fname = ""
    fMainForm.Text2.Text = ""
    Fname = App.Path & "\DicDAT\VB\VBFUN\"
  
    LPPT = 5100
    Dim Const_I As Integer
    Const_I = 5101
    fMainForm.List1.Clear
    Do While Const_I <= 5235
       fMainForm.List1.AddItem LoadResString(Const_I)
       Const_I = Const_I + 1
    Loop
    AssStr = "VB_fun"
    Index_I = 134
    
    fMainForm.List1.Selected(0) = True

  End Sub
  Sub VB_Codee()
    fMainForm.Label17.Caption = " 当前位置: VB 6.0\常用语句"
  
      
    Call RETA
    LPPT = 5300
    Fname = ""
    fMainForm.Text2.Text = ""
    Fname = App.Path & "\DicDAT\VB\VBCODE\"
  
   
    Dim Const_I As Integer
    Const_I = 5301
    fMainForm.List1.Clear
    Do While Const_I <= 5376
       fMainForm.List1.AddItem LoadResString(Const_I)
       Const_I = Const_I + 1
    Loop
    AssStr = "VB_CODE"
    Index_I = 75
    
    fMainForm.List1.Selected(0) = True


  End Sub
  Sub VB_TTirbb()
    fMainForm.Label17.Caption = " 当前位置: VB 6.0\常用属性"
  
      
    Call RETA
    Fname = ""
    fMainForm.Text2.Text = ""
    Fname = App.Path & "\DicDAT\VB\VBATTRIB\"
  
    LPPT = 5500
    Dim Const_I As Integer
    Const_I = 5501
    fMainForm.List1.Clear
    Do While Const_I <= 5542
       fMainForm.List1.AddItem LoadResString(Const_I)
       Const_I = Const_I + 1
    Loop
    AssStr = "VB_ATT"
    Index_I = 41
    
    fMainForm.List1.Selected(0) = True

  End Sub
  Sub VB_Tibb()
  fMainForm.Label17.Caption = " 当前位置: VB 6.0\数据类型"
  Call RETB

  Fname = ""
  fMainForm.Text2.Text = ""
  Fname = App.Path & "\DicDAT\VB\VBTIB\"
  fMainForm.Text2.Text = FileContent(Fname & "VB_TIB1.dat")
  AssStr = "VB_TIB"
  Index_Dic = 1


  End Sub
  Sub DEP_FUN()
    fMainForm.Label17.Caption = " 当前位置: Delphi\常用函数"

    Call RETD
    
    Fname = ""
    fMainForm.Text2.Text = ""
    fMainForm.Text1.Text = ""
    Fname = App.Path & "\DicDAT\DelphiDAT\DEPDAT\"
  
    Dim Const_I As Integer
    Const_I = 7201
    fMainForm.List1.Clear
    Do While Const_I <= 7456
        fMainForm.List1.AddItem LoadResString(Const_I)
        Const_I = Const_I + 1
    Loop
    AssStr = "DEPDAT"
    Index_I = 255
  
    fMainForm.List1.Selected(0) = True

  End Sub
  Sub DEP_ERR()
    fMainForm.Label17.Caption = " 当前位置: Delphi\错误信息"

    Call RETC
    
    Fname = ""
    fMainForm.Text2.Text = ""
    fMainForm.Text1.Text = ""
    Fname = App.Path & "\DicDAT\DelphiDAT\DEPERR\"
  
    Dim Const_I As Integer
    Const_I = 7501
    fMainForm.List1.Clear
    Do While Const_I <= 8239
        fMainForm.List1.AddItem LoadResString(Const_I)
        Const_I = Const_I + 1
    Loop
    AssStr = "DEPERR"
    Index_I = 738
  
    fMainForm.List1.Selected(0) = True

  End Sub
  Sub DEP_GF()
    fMainForm.Label17.Caption = " 当前位置: Delphi\程序规范"
    Call RETB

    Fname = ""
    fMainForm.Text2.Text = ""
    Fname = App.Path & "\DicDAT\DelphiDAT\"
    fMainForm.Text2.Text = FileContent(Fname & "DEPGF1.dat")
    AssStr = "DEPGF"
    Index_Dic = 1

  End Sub
  Sub DEP_KJJ()
    fMainForm.Label17.Caption = " 当前位置: Delphi\快捷键"
    Call RETB

    Fname = ""
    fMainForm.Text2.Text = ""
    Fname = App.Path & "\DicDAT\DelphiDAT\"
    fMainForm.Text2.Text = FileContent(Fname & "DEPKJJ1.dat")
    AssStr = "DEPKJJ"
    Index_Dic = 1

  End Sub
  Sub API_XT()
  
     Call RETD
     LPPT = 3000
    
     Fname = ""
     fMainForm.Text2.Text = ""
     fMainForm.Text1.Text = ""
     Fname = App.Path & "\DicDAT\APIDAT\"
  
     Dim Const_I As Integer
     Const_I = 6401
     fMainForm.List1.Clear
     Do While Const_I <= 7168
        fMainForm.List1.AddItem LoadResString(Const_I)
        Const_I = Const_I + 1
     Loop
  
     AssStr = "APIDAT"
     Index_I = 767
  
     fMainForm.List1.Selected(0) = True


  End Sub
  Sub JAVA_FUN()
     fMainForm.Label17.Caption = " 当前位置: JAVA\方法详解"

     Call RETDD
    
     Fname = ""
     fMainForm.Text2.Text = ""
     fMainForm.Text1.Text = ""
     Fname = App.Path & "\DicDAT\JAVADAT\JAVAFUN\"
  
     Dim Const_I As Integer
     Const_I = 8501
     fMainForm.List1.Clear
     Do While Const_I <= 10497
        fMainForm.List1.AddItem LoadResString(Const_I)
        Const_I = Const_I + 1
     Loop
  
     AssStr = "JAVAFUNT"
     Index_I = 1996
  
     fMainForm.List1.Selected(0) = True

  End Sub
  Sub JAVA_LEI()
     fMainForm.Label17.Caption = " 当前位置: JAVA\常用类库"

     Call RETD
    
     Fname = ""
     fMainForm.Text2.Text = ""
     fMainForm.Text1.Text = ""
     Fname = App.Path & "\DicDAT\JAVADAT\JAVA\"
  
     Dim Const_I As Integer
     Const_I = 8301
     fMainForm.List1.Clear
     Do While Const_I <= 8436
        fMainForm.List1.AddItem LoadResString(Const_I)
        Const_I = Const_I + 1
     Loop
  
     AssStr = "JAVAL"
     Index_I = 135
  
     fMainForm.List1.Selected(0) = True

  End Sub
Sub JAVA_ZJK()
    fMainForm.Label17.Caption = " 当前位置: JAVA\自己看吧"
    Call RETB

    Fname = ""
    fMainForm.Text2.Text = ""
    Fname = App.Path & "\DicDAT\JAVADAT\"
    fMainForm.Text2.Text = FileContent(Fname & "JAVAGZ1.dat")
    AssStr = "JAVAGZ"
    Index_Dic = 1

End Sub
Sub ASS_TEA()
     fMainForm.Label17.Caption = " 当前位置: 汇编语言\相关教程"

     Call RETCC
    
     Fname = ""
     fMainForm.Text2.Text = ""
     fMainForm.Text1.Text = ""
     Fname = App.Path & "\DicDAT\AsslanDAT\TreaAss\"
  
     Dim Const_I As Integer
     Const_I = 11001
     fMainForm.List1.Clear
     Do While Const_I <= 11004
        fMainForm.List1.AddItem LoadResString(Const_I)
        Const_I = Const_I + 1
     Loop
  
     AssStr = "Ass"
     Index_I = 3
  
     fMainForm.List1.Selected(0) = True

End Sub
Sub TC_TEA()
     fMainForm.Label17.Caption = " 当前位置: Turboc2\相关教程"

     Call RETCC
    
     Fname = ""
     fMainForm.Text2.Text = ""
     fMainForm.Text1.Text = ""
     Fname = App.Path & "\DicDAT\TcDat\TCTeach\"
  
     Dim Const_I As Integer
     Const_I = 11011
     fMainForm.List1.Clear
     Do While Const_I <= 11025
        fMainForm.List1.AddItem LoadResString(Const_I)
        Const_I = Const_I + 1
     Loop
  
     AssStr = "TC"
     Index_I = 14
  
     fMainForm.List1.Selected(0) = True

End Sub
Sub VC_TEA()
     fMainForm.Label17.Caption = " 当前位置: VC++ 6.0\相关教程"

     Call RETCC
    
     Fname = ""
     fMainForm.Text2.Text = ""
     fMainForm.Text1.Text = ""
     Fname = App.Path & "\DicDAT\VCDAT\VCTeach\"
  
     Dim Const_I As Integer
     Const_I = 11031
     fMainForm.List1.Clear
     Do While Const_I <= 11042
        fMainForm.List1.AddItem LoadResString(Const_I)
        Const_I = Const_I + 1
     Loop
  
     AssStr = "C++"
     Index_I = 11
  
     fMainForm.List1.Selected(0) = True

End Sub
Sub DEP_TEA()
     fMainForm.Label17.Caption = " 当前位置: Delphi\相关教程"

     Call RETCC
    
     Fname = ""
     fMainForm.Text2.Text = ""
     fMainForm.Text1.Text = ""
     Fname = App.Path & "\DicDAT\DelphiDAT\DEPTEAH\"
  
     Dim Const_I As Integer
     Const_I = 11051
     fMainForm.List1.Clear
     Do While Const_I <= 11061
        fMainForm.List1.AddItem LoadResString(Const_I)
        Const_I = Const_I + 1
     Loop
  
     AssStr = "DEPTH"
     Index_I = 10
  
     fMainForm.List1.Selected(0) = True

End Sub
Sub NET_DAT()
    fMainForm.Label17.Caption = " 当前位置: 编程网站"
    Call RETB

    Fname = ""
    fMainForm.Text2.Text = ""
    Fname = App.Path & "\DicDAT\Tools\"
    fMainForm.Text2.Text = FileContent(Fname & "NET1.dat")
    AssStr = "NET"
    Index_Dic = 1

End Sub
Sub ELE_DAT()
    fMainForm.Label17.Caption = " 当前位置: 元素符号"
    Call RETB

    Fname = ""
    fMainForm.Text2.Text = ""
    Fname = App.Path & "\DicDAT\Tools\"
    fMainForm.Text2.Text = FileContent(Fname & "elementDat1.dat")
    AssStr = "elementDat"
    Index_Dic = 1

End Sub

Sub Main()

    Set fMainForm = New frmMain
    fMainForm.Show
End Sub



