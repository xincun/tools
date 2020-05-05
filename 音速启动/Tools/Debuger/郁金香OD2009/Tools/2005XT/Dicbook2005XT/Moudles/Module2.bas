Attribute VB_Name = "Module2"
Option Explicit
Public Declare Function ReleaseCapture Lib "user32" () As Long
Public Declare Function SendMessage Lib "user32" Alias "SendMessageA" (ByVal hwnd As Long, ByVal wmsg As Long, ByVal wparam As Long, lparam As Long) As Long
Public Declare Function mciSendString Lib "winmm.dll" Alias "mciSendStringA" (ByVal lpstrCommand As String, ByVal lpstrReturnString As String, ByVal uReturnLength As Long, ByVal hwndCallback As Long) As Long
Public Const HTCAPTION = 2
Public Const WM_NCLBUTTONDOWN = &HA1

Function FileContent(FileName As String) As String
   Dim FileNo As Integer
   Dim FileString As String
   
   '获得可用文件号
   FileNo = FreeFile
   '打开文件
   Open FileName For Binary As #FileNo
   '指定字符串的长度为文件长度
   FileString = Space(FileLen(FileName))
   '读取文件内容
   Get #FileNo, , FileString
   '关闭文件
   Close #FileNo
   FileContent = FileString
   
 End Function
Sub RETA()                      '初始化复位

    fMainForm.List1.Visible = True
    fMainForm.Text2.Visible = True
    fMainForm.Text1.Visible = True
  
    fMainForm.Text3.Enabled = True
    fMainForm.Image4.Enabled = True
    
    fMainForm.List1.Height = 7050
    fMainForm.List1.Left = 15
    fMainForm.List1.Top = 45
    fMainForm.List1.Width = 2985
  
    fMainForm.Text2.Height = 2400
    fMainForm.Text2.Left = 3015
    fMainForm.Text2.Top = 45
    fMainForm.Text2.Width = 10860
  
    fMainForm.Text1.Height = 4635
    fMainForm.Text1.Left = 3015
    fMainForm.Text1.Top = 2460
    fMainForm.Text1.Width = 10860
End Sub
Sub RETB()                          '窗体内最大化
  
    fMainForm.List1.Visible = False
    fMainForm.Text1.Visible = False

    fMainForm.Text3.Text = "该功能不可以查询"
    fMainForm.Text3.Enabled = False
    fMainForm.Image4.Enabled = False

    fMainForm.Text2.Height = 7050
    fMainForm.Text2.Left = 30
    fMainForm.Text2.Top = 45
    fMainForm.Text2.Width = 13860
  

End Sub
Sub RETC()                          '错误信息
    fMainForm.List1.Visible = True
    fMainForm.Text3.Enabled = True
    fMainForm.Image4.Enabled = True
    
    fMainForm.Text1.Visible = False
    
    fMainForm.Text2.Height = 2505
    fMainForm.Text2.Left = 15
    fMainForm.Text2.Top = 4590
    fMainForm.Text2.Width = 13875
  
    fMainForm.List1.Height = 4530
    fMainForm.List1.Left = 15
    fMainForm.List1.Top = 45
    fMainForm.List1.Width = 13875
    
End Sub

Sub RETCC()
    fMainForm.List1.Visible = True
    fMainForm.Text3.Enabled = True
    fMainForm.Image4.Enabled = True
    
    fMainForm.Text1.Visible = False
    
    fMainForm.Text2.Height = 5925
    fMainForm.Text2.Left = 15
    fMainForm.Text2.Top = 1170
    fMainForm.Text2.Width = 13875
  
    fMainForm.List1.Height = 1110
    fMainForm.List1.Left = 15
    fMainForm.List1.Top = 45
    fMainForm.List1.Width = 13875

End Sub
Sub RETD()                              '单窗口显示

    fMainForm.List1.Visible = True
    fMainForm.Text2.Visible = True
    fMainForm.Text1.Visible = False
  
    fMainForm.Text3.Enabled = True
    fMainForm.Image4.Enabled = True
    
    fMainForm.List1.Height = 7050
    fMainForm.List1.Left = 15
    fMainForm.List1.Top = 45
    fMainForm.List1.Width = 2985
  
    fMainForm.Text2.Height = 7050
    fMainForm.Text2.Left = 3015
    fMainForm.Text2.Top = 45
    fMainForm.Text2.Width = 10860
   
End Sub
  
Sub RETDD()
    fMainForm.List1.Visible = True
    fMainForm.Text2.Visible = True
    fMainForm.Text1.Visible = False
  
    fMainForm.Text3.Enabled = True
    fMainForm.Image4.Enabled = True
    
    fMainForm.List1.Height = 7050
    fMainForm.List1.Left = 15
    fMainForm.List1.Top = 45
    fMainForm.List1.Width = 4305
  
    fMainForm.Text2.Height = 7050
    fMainForm.Text2.Left = 4335
    fMainForm.Text2.Top = 45
    fMainForm.Text2.Width = 9540

End Sub
Sub DIC_SAVE1()
  Dim mystring As String
  Dim FileNum As Integer

  mystring = Space(Len(FileContent(Fname & AssStr & CStr(Index_Dic) & ".dat")))
  
  
  FileNum = FreeFile


  Open Fname & AssStr & CStr(Index_Dic) & ".dat" For Binary As FileNum

  Put FileNum, , mystring

  Close FileNum

'--------------------------------------------------
  mystring = fMainForm.Text2.Text
  mystring = RTrim(mystring)
  
  FileNum = FreeFile


  Open Fname & AssStr & CStr(Index_Dic) & ".dat" For Binary As FileNum

  Put FileNum, , mystring

  Close FileNum


End Sub
Sub DIC_SAVE2()
  Dim mystring As String
  Dim FileNum As Integer

  mystring = Space(Len(FileContent(Fname & AssStr & CStr(Index_Dic) & "B" & ".dat")))
  
  
  FileNum = FreeFile


  Open Fname & AssStr & CStr(Index_Dic) & "B" & ".dat" For Binary As FileNum

  Put FileNum, , mystring

  Close FileNum

'--------------------------------------------------
  mystring = fMainForm.Text1.Text
  mystring = RTrim(mystring)
  
  FileNum = FreeFile


  Open Fname & AssStr & CStr(Index_Dic) & "B" & ".dat" For Binary As FileNum

  Put FileNum, , mystring

  Close FileNum

End Sub

Sub DIC_FINDCHS()
  Dim LS As String
  Dim I As Integer, J As Integer, T As Integer, V As Integer, AQ As Integer, AP As Integer
  AQ = 0
  I = 1
  J = 1
  T = 0
  MsgBox "请仔细阅读说明文件,以便了解该功能的使用！！！！！" & Chr(10) & Chr(10) & "你可以输入中文查询,例如你想查找返回系统日期的函数,就可以直接输入(日期)或(系统日期)！！！" & Chr(10) & Chr(10) & "注意请尽量输入关键字,例如在汇编语言中找加法指令,你只要输入(加法)两个字就可以了,其它一样！！！"
  
  LS = InputBox("查找可能需要几秒钟的时间......")
  LS = Trim(LS)
  If LS = "" Then Exit Sub
  KJ(1) = 0
  
    Do While I <= Index_I + 1
    If InStr(FileContent(Fname & AssStr & CStr(I) & ".dat"), LS) Then
      fMainForm.Text3.Text = LoadResString(LPPT + I)
      MsgBox "找到了"
      Exit Sub
    End If
        fMainForm.Text3.Text = LoadResString(LPPT + I)
    I = I + 1

  Loop
  
  I = 1
  MsgBox "将进行深度查询请稍等......"
  '-----------------------------------------------------------
  
  Do While (I - 1) <= Index_I
    Do While J <= Len(LS)
      If InStr(FileContent(Fname & AssStr & CStr(I) & ".dat"), Mid(LS, J, 2)) Then
        T = T + 1
        
      End If
      
      J = J + 2
    Loop
    fMainForm.Text3.Text = LoadResString(LPPT + I)
    KJ(I) = T
    If Not (I = 1) Then
    
      If KJ(I) > KJ(1) Then
        AP = KJ(1)
        KJ(1) = KJ(I)
        KJ(I) = AP
      
        AQ = I
      
      End If
      
    Else
        AQ = I
    
    End If
    I = I + 1
    J = 1
    T = 0
  Loop
  
  If AQ > 0 And AQ <= Index_I Then
    MsgBox "找到了近似值..."
    fMainForm.Text3.Text = LoadResString(LPPT + AQ)
  Else
    MsgBox "没找到..."
  End If
       
  '---------------------------------------------

End Sub
