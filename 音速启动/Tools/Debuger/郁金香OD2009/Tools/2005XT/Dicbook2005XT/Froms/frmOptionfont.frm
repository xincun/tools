VERSION 5.00
Begin VB.Form frmOptionfont 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "字体设置"
   ClientHeight    =   3945
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   6585
   Icon            =   "frmOptionfont.frx":0000
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   263
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   439
   ShowInTaskbar   =   0   'False
   StartUpPosition =   1  '所有者中心
   Begin VB.Frame Frame2 
      Caption         =   "示例"
      Height          =   1455
      Left            =   2640
      TabIndex        =   14
      Top             =   2160
      Width           =   2655
      Begin VB.Label Label6 
         AutoSize        =   -1  'True
         Caption         =   "指令字典 ABC"
         Height          =   180
         Left            =   360
         TabIndex        =   16
         Top             =   690
         Width           =   1080
      End
      Begin VB.Label Label5 
         BackStyle       =   0  'Transparent
         BorderStyle     =   1  'Fixed Single
         Height          =   735
         Left            =   240
         TabIndex        =   15
         Top             =   400
         Width           =   2175
      End
   End
   Begin VB.Frame frame1 
      Caption         =   "效果"
      Height          =   1455
      Left            =   240
      TabIndex        =   13
      Top             =   2160
      Width           =   2295
      Begin VB.CheckBox Check2 
         Caption         =   "下划线"
         Height          =   255
         Left            =   240
         TabIndex        =   7
         Top             =   840
         Width           =   1455
      End
      Begin VB.CheckBox Check1 
         Caption         =   "删除线"
         Height          =   255
         Left            =   240
         TabIndex        =   6
         Top             =   480
         Width           =   1695
      End
   End
   Begin VB.ListBox List3 
      Height          =   1320
      Left            =   4440
      TabIndex        =   5
      Top             =   600
      Width           =   855
   End
   Begin VB.ListBox List2 
      Height          =   1320
      Left            =   2640
      TabIndex        =   4
      Top             =   600
      Width           =   1695
   End
   Begin VB.ListBox List1 
      Height          =   1320
      Left            =   240
      TabIndex        =   3
      Top             =   600
      Width           =   2295
   End
   Begin VB.CommandButton Command2 
      Caption         =   "取消"
      Height          =   300
      Left            =   5400
      TabIndex        =   9
      Top             =   600
      Width           =   975
   End
   Begin VB.CommandButton Command1 
      Caption         =   "确定"
      Height          =   300
      Left            =   5400
      TabIndex        =   8
      Top             =   240
      Width           =   975
   End
   Begin VB.TextBox Text3 
      Height          =   300
      Left            =   4440
      TabIndex        =   2
      Top             =   240
      Width           =   855
   End
   Begin VB.TextBox Text2 
      Height          =   300
      Left            =   2640
      TabIndex        =   1
      Top             =   240
      Width           =   1695
   End
   Begin VB.TextBox Text1 
      Height          =   300
      Left            =   240
      TabIndex        =   0
      Top             =   240
      Width           =   2295
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      Caption         =   "大小:"
      Height          =   180
      Left            =   4440
      TabIndex        =   12
      Top             =   30
      Width           =   450
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "字形:"
      Height          =   180
      Left            =   2640
      TabIndex        =   11
      Top             =   30
      Width           =   450
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "字体:"
      Height          =   180
      Left            =   240
      TabIndex        =   10
      Top             =   30
      Width           =   450
   End
End
Attribute VB_Name = "frmOptionfont"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Private Const LngSize_Const As Long = 16
Private LngCheck1 As Integer, LngCheck2 As Integer

Private Sub Check1_Click()
      
  If Check1.Value Then
     Label6.FontStrikethru = True
     LngCheck1 = 1
     
  Else
     Label6.FontStrikethru = False
     LngCheck1 = 0
     
  End If
     
End Sub


Private Sub Check2_Click()
  If Check2.Value Then
     Label6.FontUnderline = True
     LngCheck2 = 1
  Else
     Label6.FontUnderline = False
     LngCheck2 = 0
     
  End If
  
  
End Sub





Private Sub Command1_Click()
  fMainForm.Text2.Font.Name = Label6.Font.Name
  fMainForm.Text2.Font.Bold = Label6.Font.Bold
  fMainForm.Text2.Font.Italic = Label6.Font.Italic
  fMainForm.Text2.Font.Size = Label6.Font.Size
  fMainForm.Text2.FontStrikethru = Label6.FontStrikethru
  fMainForm.Text2.FontUnderline = Label6.FontUnderline
  
  fMainForm.Text1.Font.Name = Label6.Font.Name
  fMainForm.Text1.Font.Bold = Label6.Font.Bold
  fMainForm.Text1.Font.Italic = Label6.Font.Italic
  fMainForm.Text1.Font.Size = Label6.Font.Size
  fMainForm.Text1.FontStrikethru = Label6.FontStrikethru
  fMainForm.Text1.FontUnderline = Label6.FontUnderline
  Set frmOptionfont = Nothing
  Unload Me
  
 
End Sub

Private Sub Command2_Click()
  Unload Me
  Set frmOptionfont = Nothing
  
End Sub

Private Sub Form_Load()
  Dim Const_I As Long
 
  For Const_I = 0 To Screen.FontCount - 1
        List1.AddItem Screen.Fonts(Const_I)
  Next
  
  List2.AddItem "常规"
  List2.AddItem "粗体"
  List2.AddItem "斜体"
  List2.AddItem "粗斜体"
  For Const_I = 1 To LngSize_Const
      List3.AddItem Const_I
  Next
  
  Label6.Font.Bold = fMainForm.Text2.Font.Bold
  Label6.Font.Italic = fMainForm.Text2.Font.Italic
  Label6.FontStrikethru = fMainForm.Text2.FontStrikethru
  Label6.FontUnderline = fMainForm.Text2.FontUnderline
  Label6.Font.Name = fMainForm.Text2.Font.Name
  Label6.Font.Size = fMainForm.Text2.Font.Size
  Label6.FontStrikethru = fMainForm.Text2.FontStrikethru
  Label6.FontUnderline = fMainForm.Text2.FontUnderline
  
  If LngCheck1 = 1 Then
     Check1.Value = 1
  Else
     Check1.Value = 0
  End If
  
  If LngCheck2 = 1 Then
     Check2.Value = 1
  Else
    Check2.Value = 0
  End If
  
     
 
  
End Sub

Private Sub Form_Unload(Cancel As Integer)

Set frmOptionfont = Nothing
Unload Me

End Sub

Private Sub List1_Click()

  Text1.Text = List1.List(List1.ListIndex)
  Label6.Font.Name = CStr(List1.List(List1.ListIndex))


End Sub

Private Sub List2_Click()
  Dim StrConst_I As String
  Text2.Text = List2.List(List2.ListIndex)
  StrConst_I = Text2.Text
  Select Case StrConst_I
  Case "常规"
     Label6.Font.Bold = False
     Label6.Font.Italic = False
  Case "粗体"
     Label6.Font.Bold = True
  Case "斜体"
     
     Label6.Font.Italic = True
  Case "粗斜体"
     
     Label6.Font.Bold = True
     Label6.Font.Italic = True
  End Select
End Sub

Private Sub List3_Click()
 
  Text3.Text = List3.List(List3.ListIndex)
  Label6.Font.Size = CInt(List3.List(List3.ListIndex))
  

  
End Sub
