VERSION 5.00
Begin VB.Form frmMain 
   BorderStyle     =   0  'None
   Caption         =   "指令字典 2005XT"
   ClientHeight    =   9015
   ClientLeft      =   675
   ClientTop       =   1305
   ClientWidth     =   14025
   Icon            =   "frmMain.frx":0000
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   ScaleHeight     =   9015
   ScaleWidth      =   14025
   StartUpPosition =   2  '屏幕中心
   Begin VB.TextBox Text4 
      Height          =   270
      Left            =   12735
      TabIndex        =   57
      Text            =   "输入序列号"
      Top             =   420
      Width           =   1215
   End
   Begin VB.CommandButton Command1 
      Caption         =   "注册"
      Height          =   255
      Left            =   12750
      TabIndex        =   56
      Top             =   720
      Width           =   1215
   End
   Begin VB.PictureBox Picture8 
      Appearance      =   0  'Flat
      BackColor       =   &H00FFFFFF&
      FillColor       =   &H00E0E0E0&
      ForeColor       =   &H80000008&
      Height          =   7170
      Left            =   30
      Picture         =   "frmMain.frx":5F32
      ScaleHeight     =   7140
      ScaleWidth      =   13935
      TabIndex        =   37
      Top             =   1395
      Width           =   13960
      Begin VB.PictureBox Picture23 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         ForeColor       =   &H80000008&
         Height          =   330
         Left            =   11430
         MouseIcon       =   "frmMain.frx":917E
         MousePointer    =   99  'Custom
         Picture         =   "frmMain.frx":9488
         ScaleHeight     =   300
         ScaleWidth      =   1200
         TabIndex        =   53
         Top             =   5775
         Visible         =   0   'False
         Width           =   1230
         Begin VB.Label Label28 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "关闭光驱"
            Height          =   180
            Left            =   300
            MouseIcon       =   "frmMain.frx":9819
            MousePointer    =   99  'Custom
            TabIndex        =   54
            Top             =   60
            Width           =   720
         End
      End
      Begin VB.PictureBox Picture22 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         ForeColor       =   &H80000008&
         Height          =   330
         Left            =   11430
         MouseIcon       =   "frmMain.frx":9B23
         MousePointer    =   99  'Custom
         Picture         =   "frmMain.frx":9E2D
         ScaleHeight     =   300
         ScaleWidth      =   1200
         TabIndex        =   51
         Top             =   5430
         Visible         =   0   'False
         Width           =   1230
         Begin VB.Label Label27 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "弹开光驱"
            Height          =   180
            Left            =   300
            MouseIcon       =   "frmMain.frx":A1BE
            MousePointer    =   99  'Custom
            TabIndex        =   52
            Top             =   60
            Width           =   720
         End
      End
      Begin VB.PictureBox Picture21 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         ForeColor       =   &H80000008&
         Height          =   330
         Left            =   12680
         MouseIcon       =   "frmMain.frx":A4C8
         MousePointer    =   99  'Custom
         Picture         =   "frmMain.frx":A7D2
         ScaleHeight     =   300
         ScaleWidth      =   1200
         TabIndex        =   49
         Top             =   5430
         Visible         =   0   'False
         Width           =   1230
         Begin VB.Label Label26 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "光驱开关"
            Height          =   180
            Left            =   300
            MouseIcon       =   "frmMain.frx":AB63
            MousePointer    =   99  'Custom
            TabIndex        =   50
            Top             =   60
            Width           =   720
         End
      End
      Begin VB.PictureBox Picture20 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         ForeColor       =   &H80000008&
         Height          =   330
         Left            =   12680
         MouseIcon       =   "frmMain.frx":AE6D
         MousePointer    =   99  'Custom
         Picture         =   "frmMain.frx":B177
         ScaleHeight     =   300
         ScaleWidth      =   1200
         TabIndex        =   47
         Top             =   5775
         Visible         =   0   'False
         Width           =   1230
         Begin VB.Label Label25 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "编程网站"
            Height          =   180
            Left            =   300
            MouseIcon       =   "frmMain.frx":B508
            MousePointer    =   99  'Custom
            TabIndex        =   48
            Top             =   60
            Width           =   720
         End
      End
      Begin VB.PictureBox Picture19 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         ForeColor       =   &H80000008&
         Height          =   330
         Left            =   12680
         MouseIcon       =   "frmMain.frx":B812
         MousePointer    =   99  'Custom
         Picture         =   "frmMain.frx":BB1C
         ScaleHeight     =   300
         ScaleWidth      =   1200
         TabIndex        =   45
         Top             =   6120
         Visible         =   0   'False
         Width           =   1230
         Begin VB.Label Label24 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "元素符号"
            Height          =   180
            Left            =   300
            MouseIcon       =   "frmMain.frx":BEAD
            MousePointer    =   99  'Custom
            TabIndex        =   46
            Top             =   60
            Width           =   720
         End
      End
      Begin VB.PictureBox Picture18 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         ForeColor       =   &H80000008&
         Height          =   330
         Left            =   12680
         MouseIcon       =   "frmMain.frx":C1B7
         MousePointer    =   99  'Custom
         Picture         =   "frmMain.frx":C4C1
         ScaleHeight     =   300
         ScaleWidth      =   1200
         TabIndex        =   43
         Top             =   6465
         Visible         =   0   'False
         Width           =   1230
         Begin VB.Label Label9 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "电话邮编"
            Height          =   180
            Left            =   300
            MouseIcon       =   "frmMain.frx":C852
            MousePointer    =   99  'Custom
            TabIndex        =   44
            Top             =   60
            Width           =   720
         End
      End
      Begin VB.PictureBox Picture9 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         ForeColor       =   &H80000008&
         Height          =   330
         Left            =   12680
         MouseIcon       =   "frmMain.frx":CB5C
         MousePointer    =   99  'Custom
         Picture         =   "frmMain.frx":CE66
         ScaleHeight     =   300
         ScaleWidth      =   1200
         TabIndex        =   41
         Top             =   6810
         Visible         =   0   'False
         Width           =   1230
         Begin VB.Label Label8 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "快捷平台"
            Height          =   180
            Left            =   300
            MouseIcon       =   "frmMain.frx":D1F7
            MousePointer    =   99  'Custom
            TabIndex        =   42
            Top             =   60
            Width           =   720
         End
      End
      Begin VB.TextBox Text2 
         Appearance      =   0  'Flat
         Height          =   2400
         Left            =   3015
         MultiLine       =   -1  'True
         ScrollBars      =   2  'Vertical
         TabIndex        =   40
         Text            =   "frmMain.frx":D501
         Top             =   45
         Width           =   10860
      End
      Begin VB.ListBox List1 
         Appearance      =   0  'Flat
         Height          =   7050
         Left            =   15
         TabIndex        =   39
         Top             =   45
         Width           =   2985
      End
      Begin VB.TextBox Text1 
         Appearance      =   0  'Flat
         Height          =   4635
         Left            =   3015
         MultiLine       =   -1  'True
         ScrollBars      =   2  'Vertical
         TabIndex        =   38
         Text            =   "frmMain.frx":D507
         Top             =   2460
         Width           =   10860
      End
   End
   Begin VB.PictureBox Picture17 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   330
      Left            =   5265
      MouseIcon       =   "frmMain.frx":D50D
      MousePointer    =   99  'Custom
      Picture         =   "frmMain.frx":D817
      ScaleHeight     =   300
      ScaleWidth      =   1200
      TabIndex        =   35
      Top             =   8630
      Width           =   1230
      Begin VB.Label Label23 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "指令字典"
         Height          =   180
         Left            =   300
         MouseIcon       =   "frmMain.frx":DBA8
         MousePointer    =   99  'Custom
         TabIndex        =   36
         Top             =   60
         Width           =   720
      End
   End
   Begin VB.TextBox Text3 
      Appearance      =   0  'Flat
      Height          =   285
      Left            =   60
      TabIndex        =   28
      Text            =   "Text3"
      Top             =   1070
      Width           =   3000
   End
   Begin VB.PictureBox Picture16 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   330
      Left            =   11445
      MouseIcon       =   "frmMain.frx":DEB2
      MousePointer    =   99  'Custom
      Picture         =   "frmMain.frx":E1BC
      ScaleHeight     =   300
      ScaleWidth      =   1200
      TabIndex        =   26
      Top             =   8630
      Width           =   1230
      Begin VB.Label Label16 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "相关教程"
         Height          =   180
         Left            =   300
         MouseIcon       =   "frmMain.frx":E54D
         MousePointer    =   99  'Custom
         TabIndex        =   27
         Top             =   60
         Width           =   720
      End
   End
   Begin VB.PictureBox Picture15 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   330
      Left            =   12720
      MouseIcon       =   "frmMain.frx":E857
      MousePointer    =   99  'Custom
      Picture         =   "frmMain.frx":EB61
      ScaleHeight     =   300
      ScaleWidth      =   1200
      TabIndex        =   24
      Top             =   8630
      Width           =   1230
      Begin VB.Label Label15 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "更多功能"
         Height          =   180
         Left            =   300
         MouseIcon       =   "frmMain.frx":EEF2
         MousePointer    =   99  'Custom
         TabIndex        =   25
         Top             =   60
         Width           =   720
      End
   End
   Begin VB.PictureBox Picture14 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      Enabled         =   0   'False
      ForeColor       =   &H80000008&
      Height          =   330
      Left            =   10175
      MouseIcon       =   "frmMain.frx":F1FC
      MousePointer    =   99  'Custom
      Picture         =   "frmMain.frx":F506
      ScaleHeight     =   300
      ScaleWidth      =   1200
      TabIndex        =   22
      Top             =   8630
      Width           =   1230
      Begin VB.Label Label14 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "指令字典"
         Enabled         =   0   'False
         Height          =   180
         Left            =   300
         MouseIcon       =   "frmMain.frx":F897
         MousePointer    =   99  'Custom
         TabIndex        =   23
         Top             =   60
         Width           =   720
      End
   End
   Begin VB.PictureBox Picture13 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   330
      Left            =   3981
      MouseIcon       =   "frmMain.frx":FBA1
      MousePointer    =   99  'Custom
      Picture         =   "frmMain.frx":FEAB
      ScaleHeight     =   300
      ScaleWidth      =   1200
      TabIndex        =   20
      Top             =   8630
      Width           =   1230
      Begin VB.Label Label13 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "指令字典"
         Height          =   180
         Left            =   300
         MouseIcon       =   "frmMain.frx":1023C
         MousePointer    =   99  'Custom
         TabIndex        =   21
         Top             =   60
         Width           =   720
      End
   End
   Begin VB.PictureBox Picture12 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   330
      Left            =   2699
      MouseIcon       =   "frmMain.frx":10546
      MousePointer    =   99  'Custom
      Picture         =   "frmMain.frx":10850
      ScaleHeight     =   300
      ScaleWidth      =   1200
      TabIndex        =   18
      Top             =   8630
      Width           =   1230
      Begin VB.Label Label12 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "指令字典"
         Height          =   180
         Left            =   300
         MouseIcon       =   "frmMain.frx":10BE1
         MousePointer    =   99  'Custom
         TabIndex        =   19
         Top             =   60
         Width           =   720
      End
   End
   Begin VB.PictureBox Picture11 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   330
      Left            =   1417
      MouseIcon       =   "frmMain.frx":10EEB
      MousePointer    =   99  'Custom
      Picture         =   "frmMain.frx":111F5
      ScaleHeight     =   300
      ScaleWidth      =   1200
      TabIndex        =   16
      Top             =   8630
      Width           =   1230
      Begin VB.Label Label11 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "指令字典"
         Height          =   180
         Left            =   300
         MouseIcon       =   "frmMain.frx":11586
         MousePointer    =   99  'Custom
         TabIndex        =   17
         Top             =   60
         Width           =   720
      End
   End
   Begin VB.PictureBox Picture10 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   330
      Left            =   135
      MouseIcon       =   "frmMain.frx":11890
      MousePointer    =   99  'Custom
      Picture         =   "frmMain.frx":11B9A
      ScaleHeight     =   300
      ScaleWidth      =   1200
      TabIndex        =   14
      Top             =   8630
      Width           =   1230
      Begin VB.Label Label10 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "指令字典"
         Height          =   180
         Left            =   300
         MouseIcon       =   "frmMain.frx":11F2B
         MousePointer    =   99  'Custom
         TabIndex        =   15
         Top             =   60
         Width           =   720
      End
   End
   Begin VB.PictureBox Picture7 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   450
      Left            =   10575
      MouseIcon       =   "frmMain.frx":12235
      MousePointer    =   99  'Custom
      Picture         =   "frmMain.frx":1253F
      ScaleHeight     =   420
      ScaleWidth      =   1650
      TabIndex        =   6
      Top             =   495
      Width           =   1680
      Begin VB.Label Label7 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "JAVA"
         Height          =   180
         Left            =   420
         MouseIcon       =   "frmMain.frx":12A2E
         MousePointer    =   99  'Custom
         TabIndex        =   13
         Top             =   120
         Width           =   360
      End
   End
   Begin VB.PictureBox Picture6 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   450
      Left            =   8835
      MouseIcon       =   "frmMain.frx":12D38
      MousePointer    =   99  'Custom
      Picture         =   "frmMain.frx":13042
      ScaleHeight     =   420
      ScaleWidth      =   1650
      TabIndex        =   5
      Top             =   495
      Width           =   1680
      Begin VB.Label Label6 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Delphi"
         Height          =   180
         Left            =   420
         MouseIcon       =   "frmMain.frx":13531
         MousePointer    =   99  'Custom
         TabIndex        =   12
         Top             =   120
         Width           =   540
      End
   End
   Begin VB.PictureBox Picture5 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   450
      Left            =   7095
      MouseIcon       =   "frmMain.frx":1383B
      MousePointer    =   99  'Custom
      Picture         =   "frmMain.frx":13B45
      ScaleHeight     =   420
      ScaleWidth      =   1650
      TabIndex        =   4
      Top             =   495
      Width           =   1680
      Begin VB.Label Label5 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "VB 6.0"
         Height          =   180
         Left            =   420
         MouseIcon       =   "frmMain.frx":14034
         MousePointer    =   99  'Custom
         TabIndex        =   11
         Top             =   120
         Width           =   540
      End
   End
   Begin VB.PictureBox Picture4 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   450
      Left            =   5355
      MouseIcon       =   "frmMain.frx":1433E
      MousePointer    =   99  'Custom
      Picture         =   "frmMain.frx":14648
      ScaleHeight     =   420
      ScaleWidth      =   1650
      TabIndex        =   3
      Top             =   495
      Width           =   1680
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "VFP 6.0"
         Height          =   180
         Left            =   420
         MouseIcon       =   "frmMain.frx":14B37
         MousePointer    =   99  'Custom
         TabIndex        =   10
         Top             =   120
         Width           =   630
      End
   End
   Begin VB.PictureBox Picture3 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   450
      Left            =   3615
      MouseIcon       =   "frmMain.frx":14E41
      MousePointer    =   99  'Custom
      Picture         =   "frmMain.frx":1514B
      ScaleHeight     =   420
      ScaleWidth      =   1650
      TabIndex        =   2
      Top             =   495
      Width           =   1680
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "汇编语言"
         Height          =   180
         Left            =   420
         MouseIcon       =   "frmMain.frx":1563A
         MousePointer    =   99  'Custom
         TabIndex        =   9
         Top             =   120
         Width           =   720
      End
   End
   Begin VB.PictureBox Picture2 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   450
      Left            =   1875
      MouseIcon       =   "frmMain.frx":15944
      MousePointer    =   99  'Custom
      Picture         =   "frmMain.frx":15C4E
      ScaleHeight     =   420
      ScaleWidth      =   1650
      TabIndex        =   1
      Top             =   495
      Width           =   1680
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "VC++ 6.0"
         ForeColor       =   &H00000000&
         Height          =   180
         Left            =   420
         MouseIcon       =   "frmMain.frx":1613D
         MousePointer    =   99  'Custom
         TabIndex        =   8
         Top             =   120
         Width           =   720
      End
   End
   Begin VB.PictureBox Picture1 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   450
      Left            =   135
      MouseIcon       =   "frmMain.frx":16447
      MousePointer    =   99  'Custom
      Picture         =   "frmMain.frx":16751
      ScaleHeight     =   420
      ScaleWidth      =   1650
      TabIndex        =   0
      Top             =   495
      Width           =   1680
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "TurboC"
         Height          =   180
         Left            =   420
         MouseIcon       =   "frmMain.frx":16C40
         MousePointer    =   99  'Custom
         TabIndex        =   7
         Top             =   120
         Width           =   540
      End
   End
   Begin VB.Label Label29 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "帮助"
      ForeColor       =   &H00C0FFFF&
      Height          =   180
      Left            =   10170
      MouseIcon       =   "frmMain.frx":16F4A
      MousePointer    =   99  'Custom
      TabIndex        =   55
      Top             =   1125
      Width           =   360
   End
   Begin VB.Label Label22 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "文件保存"
      ForeColor       =   &H00C0FFFF&
      Height          =   180
      Left            =   6495
      MouseIcon       =   "frmMain.frx":17254
      MousePointer    =   99  'Custom
      TabIndex        =   34
      Top             =   1125
      Width           =   720
   End
   Begin VB.Label Label21 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "中文查询"
      ForeColor       =   &H00C0FFFF&
      Height          =   180
      Left            =   7305
      MouseIcon       =   "frmMain.frx":1755E
      MousePointer    =   99  'Custom
      TabIndex        =   33
      Top             =   1125
      Width           =   720
   End
   Begin VB.Label Label20 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "字体"
      ForeColor       =   &H00C0FFFF&
      Height          =   180
      Left            =   8760
      MouseIcon       =   "frmMain.frx":17868
      MousePointer    =   99  'Custom
      TabIndex        =   32
      Top             =   1125
      Width           =   360
   End
   Begin VB.Label Label19 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "颜色"
      ForeColor       =   &H00C0FFFF&
      Height          =   180
      Left            =   9240
      MouseIcon       =   "frmMain.frx":17B72
      MousePointer    =   99  'Custom
      TabIndex        =   31
      Top             =   1125
      Width           =   360
   End
   Begin VB.Label Label18 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "关于"
      ForeColor       =   &H00C0FFFF&
      Height          =   180
      Left            =   9720
      MouseIcon       =   "frmMain.frx":17E7C
      MousePointer    =   99  'Custom
      TabIndex        =   30
      Top             =   1125
      Width           =   360
   End
   Begin VB.Label Label17 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   " 当前位置: 汇编语言\8086\指令系统 "
      ForeColor       =   &H00FFFFFF&
      Height          =   180
      Left            =   10725
      TabIndex        =   29
      Top             =   1130
      Width           =   3060
   End
   Begin VB.Image Image4 
      Height          =   270
      Left            =   3150
      MouseIcon       =   "frmMain.frx":18186
      MousePointer    =   99  'Custom
      Picture         =   "frmMain.frx":18490
      Top             =   1095
      Width           =   780
   End
   Begin VB.Image Image3 
      Height          =   330
      Left            =   13400
      Picture         =   "frmMain.frx":18FCC
      Stretch         =   -1  'True
      Top             =   30
      Width           =   315
   End
   Begin VB.Image Image2 
      Height          =   330
      Left            =   13695
      Picture         =   "frmMain.frx":193AD
      Stretch         =   -1  'True
      Top             =   30
      Width           =   315
   End
   Begin VB.Image Image1 
      Height          =   9015
      Left            =   0
      Picture         =   "frmMain.frx":19989
      Stretch         =   -1  'True
      Top             =   0
      Width           =   14025
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim Ret As Long
Dim RetStr As String

Private Sub Command1_Click()
    Dim a As String
    
    
    
End Sub

Private Sub Form_Load()

    fMainForm.Text1.FontName = "宋体"
    fMainForm.Text2.FontName = "宋体"
    fMainForm.List1.FontName = "宋体"

    fMainForm.Text1.FontSize = 9
    fMainForm.Text2.FontSize = 9
    fMainForm.List1.FontSize = 9
 
     
    fMainForm.Label10.Caption = "常用函数"
    fMainForm.Label11.Caption = "消息详解"
    fMainForm.Label12.Caption = "VC快捷键"
    fMainForm.Label13.Caption = "MFC-类库"
    fMainForm.Label23.Caption = "API-函数"
    
    fMainForm.Label13.Enabled = False
    fMainForm.Picture13.Enabled = False
    fMainForm.Label12.Enabled = True
    fMainForm.Picture12.Enabled = True
    fMainForm.Label21.Enabled = False
    Const_N = 12
    Const_NT = 2
    Const_MN = 1
    Call VC_Fun

End Sub

Private Sub Image1_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    Dim r As Long
    Dim I
    If Button = 1 Then
        I = ReleaseCapture()
        r = SendMessage(hwnd, WM_NCLBUTTONDOWN, HTCAPTION, 0)
   End If
   
   

End Sub

Private Sub Image2_Click()
    End
End Sub

Private Sub Image3_Click()
    fMainForm.WindowState = vbMinimized
End Sub

Private Sub Image4_Click()
    Dim I, J, M As Integer
    Dim C As String
    
    C = fMainForm.Text3.Text
   
    '------------------------------------------------
    M = 0
    Do While M <= Index_I
        If UCase$(C) = UCase$(fMainForm.List1.List(M)) Then
            fMainForm.List1.ListIndex = M
            fMainForm.Text3.SelStart = Len(C)
            Exit Sub
        End If
        M = M + 1
    Loop
    MsgBox "对不起没找到"

End Sub

Private Sub Label1_Click()
    fMainForm.Label10.Caption = "常用函数"
    fMainForm.Label11.Caption = "语句标识"
    fMainForm.Label12.Caption = "头文件.H"
    fMainForm.Label13.Caption = "错误信息"
    fMainForm.Label23.Caption = "API-函数"
    
    fMainForm.Label13.Enabled = True
    fMainForm.Picture13.Enabled = True
    fMainForm.Label12.Enabled = True
    fMainForm.Picture12.Enabled = True
    fMainForm.Label16.Enabled = True
    fMainForm.Picture16.Enabled = True

    Const_N = 11
    Const_NT = 2
    Call TC_Fun
    
End Sub

Private Sub Label1_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    fMainForm.Label1.ForeColor = &HC0&

End Sub

Private Sub Label1_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    fMainForm.Label1.ForeColor = &H0&
    
    

End Sub

Private Sub Label10_Click()
    Select Case Const_N
        Case 11
            Const_NT = 2
            Call TC_Fun
        Case 12
            Const_NT = 2
            Call VC_Fun
        Case 13
            Const_NT = 2
            Call Ass_Codesys
        Case 14
            Const_NT = 1
            Call VFP_Fun
        Case 15
            Const_NT = 2
            Call VB_Funn
        Case 16
            Const_NT = 1
            Call DEP_FUN
        Case 17
            Const_NT = 1
            Call JAVA_FUN
  End Select
End Sub

Private Sub Label10_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    fMainForm.Label10.ForeColor = &HC0&
    
    

End Sub

Private Sub Label10_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    fMainForm.Label10.ForeColor = &H0&

End Sub

Private Sub Label11_Click()
    Select Case Const_N + 10
        Case 21
            Const_NT = 1
            Call TC_Code
        Case 22
            Const_NT = 1
            Call VC_XX
        Case 23
            Const_NT = 2
            Call Ass_Codesys32
        Case 24
            Const_NT = 2
            Call VFP_Code
        Case 25
            Const_NT = 2
            Call VB_Codee
        Case 26
            Const_NT = 1
            Call DEP_ERR
        Case 27
            Const_NT = 1
            Call JAVA_LEI
  End Select

End Sub

Private Sub Label11_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    fMainForm.Label11.ForeColor = &HC0&

End Sub

Private Sub Label11_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    fMainForm.Label11.ForeColor = &H0&
    
    

End Sub

Private Sub Label12_Click()
    Select Case Const_N + 20
        Case 31
            Const_NT = 1
            Call TC_Caput
        Case 32
            Const_NT = 1
            Call VC_KJJ
        Case 33
            Const_NT = 1
            Call Ass_Funsys
        Case 34
            Const_NT = 2
            Call VC_Fun
        Case 35
            Const_NT = 2
            Call VB_TTirbb
        Case 36
            Const_NT = 1
            Call DEP_GF
        Case 37
            Const_NT = 1
            Call JAVA_ZJK
  End Select

End Sub

Private Sub Label12_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    fMainForm.Label12.ForeColor = &HC0&

End Sub

Private Sub Label12_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    fMainForm.Label12.ForeColor = &H0&
    
    

End Sub

Private Sub Label13_Click()
    Select Case Const_N + 30
        Case 41
            Const_NT = 1
            Call TC_Error
        Case 42
            Const_NT = 2
            Call VB_Funn
        Case 43
            Const_NT = 1
            Call Ass_Breaksys
        Case 44
            Const_NT = 2
            Call VC_Fun
        Case 45
            Const_NT = 1
            Call VB_Tibb
        Case 46
            Const_NT = 1
            Call DEP_KJJ
        Case 47
            Const_NT = 1
            Call JAVA_ZJK

  End Select

End Sub

Private Sub Label13_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    fMainForm.Label13.ForeColor = &HC0&

End Sub

Private Sub Label13_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    fMainForm.Label13.ForeColor = &H0&
    
    

End Sub

Private Sub Label14_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    fMainForm.Label14.ForeColor = &HC0&

End Sub

Private Sub Label14_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    fMainForm.Label14.ForeColor = &H0&
    
    

End Sub

Private Sub Label15_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    fMainForm.Label15.ForeColor = &HC0&

End Sub

Private Sub Label15_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    fMainForm.Label15.ForeColor = &H0&
        If Const_MN = 1 Then
        
        fMainForm.Picture9.Visible = True
        fMainForm.Picture18.Visible = True
        fMainForm.Picture19.Visible = True
        fMainForm.Picture20.Visible = True
        fMainForm.Picture21.Visible = True
        Const_MN = 2
    Else
        fMainForm.Picture9.Visible = False
        fMainForm.Picture18.Visible = False
        fMainForm.Picture19.Visible = False
        fMainForm.Picture20.Visible = False
        fMainForm.Picture21.Visible = False
        fMainForm.Picture22.Visible = False
        fMainForm.Picture23.Visible = False
        Const_MN = 1
    End If

End Sub

Private Sub Label16_Click()
    Select Case Const_N
        Case 11
            Const_NT = 1
            Call TC_TEA
        Case 12
            Const_NT = 1
            Call VC_TEA
        Case 13
            Const_NT = 1
            Call ASS_TEA
        Case 16
            Const_NT = 1
            Call DEP_TEA
  End Select

End Sub

Private Sub Label16_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    fMainForm.Label16.ForeColor = &HC0&

End Sub

Private Sub Label16_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    fMainForm.Label16.ForeColor = &H0&
    
    

End Sub

Private Sub Label18_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    fMainForm.Label18.ForeColor = &HC0&

End Sub

Private Sub Label18_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    fMainForm.Label18.ForeColor = &HC0FFFF
    
    
    frmAbout.Show vbModal, Me
End Sub

Private Sub Label19_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    fMainForm.Label19.ForeColor = &HC0&

End Sub

Private Sub Label19_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    fMainForm.Label19.ForeColor = &HC0FFFF
    
    
    frmOptioncolor.Show vbModal, Me
End Sub

Private Sub Label2_Click()
    fMainForm.Label10.Caption = "常用函数"
    fMainForm.Label11.Caption = "消息详解"
    fMainForm.Label12.Caption = "VC快捷键"
    fMainForm.Label13.Caption = "MFC-类库"
    fMainForm.Label23.Caption = "API-函数"
    
    fMainForm.Label13.Enabled = False
    fMainForm.Picture13.Enabled = False
    fMainForm.Label12.Enabled = True
    fMainForm.Picture12.Enabled = True
    fMainForm.Label16.Enabled = True
    fMainForm.Picture16.Enabled = True

    Const_N = 12
    Const_NT = 2
    Call VC_Fun
End Sub

Private Sub Label2_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    fMainForm.Label2.ForeColor = &HC0&

End Sub

Private Sub Label2_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    
    
    fMainForm.Label2.ForeColor = &H0&

End Sub

Private Sub Label20_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    fMainForm.Label20.ForeColor = &HC0&

End Sub

Private Sub Label20_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    fMainForm.Label20.ForeColor = &HC0FFFF
    
    
    frmOptionfont.Show vbModal, Me
End Sub

Private Sub Label21_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    fMainForm.Label21.ForeColor = &HC0&

End Sub

Private Sub Label21_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    fMainForm.Label21.ForeColor = &HC0FFFF
    
    

End Sub

Private Sub Label22_Click()
    Dim CHT As String
    CHT = MsgBox("是否确认保存当前内容", vbYesNo + vbExclamation)
    If CHT = vbYes Then
       If Const_NT = 1 Then
          Call DIC_SAVE1
       Else
          Call DIC_SAVE1
          Call DIC_SAVE2
       End If
       
    End If
End Sub

Private Sub Label22_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    fMainForm.Label22.ForeColor = &HC0&

End Sub

Private Sub Label22_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    fMainForm.Label22.ForeColor = &HC0FFFF
    
    

End Sub

Private Sub Label23_Click()
    Select Case Const_N + 40
        Case 51
            Const_NT = 1
            fMainForm.Label17.Caption = " 当前位置: TurboC\API函数"
            Call API_XT
        Case 52
            fMainForm.Label17.Caption = " 当前位置: VC++6.0\API函数"
            Const_NT = 1
            Call API_XT
        Case 53
            
            Const_NT = 1
            Call Ass_Errorsys
        Case 54
            fMainForm.Label17.Caption = " 当前位置: VFP6.0\API函数"
            Const_NT = 1
            Call API_XT
        Case 55
            fMainForm.Label17.Caption = " 当前位置: VB6.0\API函数"
            Const_NT = 1
            Call API_XT
        Case 56
            fMainForm.Label17.Caption = " 当前位置: DEPHI\API函数"
            Const_NT = 1
            Call API_XT
        Case 57
            fMainForm.Label17.Caption = " 当前位置: JAVA\API函数"
            Const_NT = 1
            Call API_XT

  End Select
  
    
   
End Sub

Private Sub Label23_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    fMainForm.Label23.ForeColor = &HC0&

End Sub

Private Sub Label23_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    fMainForm.Label23.ForeColor = &H0&

End Sub

Private Sub Label24_Click()
        fMainForm.Picture9.Visible = False
        fMainForm.Picture18.Visible = False
        fMainForm.Picture19.Visible = False
        fMainForm.Picture20.Visible = False
        fMainForm.Picture21.Visible = False
        fMainForm.Picture22.Visible = False
        fMainForm.Picture23.Visible = False
        Const_MN = 1
        Call ELE_DAT
End Sub

Private Sub Label24_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    fMainForm.Label24.ForeColor = &HC0&

End Sub

Private Sub Label24_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
        fMainForm.Picture22.Visible = False
        fMainForm.Picture23.Visible = False

End Sub

Private Sub Label24_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    fMainForm.Label24.ForeColor = &H0&
End Sub

Private Sub Label25_Click()
        fMainForm.Picture9.Visible = False
        fMainForm.Picture18.Visible = False
        fMainForm.Picture19.Visible = False
        fMainForm.Picture20.Visible = False
        fMainForm.Picture21.Visible = False
        fMainForm.Picture22.Visible = False
        fMainForm.Picture23.Visible = False
        fMainForm.Label16.Enabled = False
        fMainForm.Picture16.Enabled = False
        

        Const_MN = 1
        Call NET_DAT
End Sub

Private Sub Label25_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    fMainForm.Label25.ForeColor = &HC0&

End Sub

Private Sub Label25_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
        fMainForm.Picture22.Visible = False
        fMainForm.Picture23.Visible = False

End Sub

Private Sub Label25_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    fMainForm.Label25.ForeColor = &H0&

End Sub

Private Sub Label26_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    fMainForm.Label26.ForeColor = &HC0&

End Sub

Private Sub Label26_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    fMainForm.Picture22.Visible = True
    fMainForm.Picture23.Visible = True
    
End Sub

Private Sub Label26_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    fMainForm.Label26.ForeColor = &H0&

End Sub

Private Sub Label27_Click()
        fMainForm.Picture9.Visible = False
        fMainForm.Picture18.Visible = False
        fMainForm.Picture19.Visible = False
        fMainForm.Picture20.Visible = False
        fMainForm.Picture21.Visible = False
        fMainForm.Picture22.Visible = False
        fMainForm.Picture23.Visible = False
        Const_MN = 1
        Ret = mciSendString("set CDAudio door open", RetStr, 0, 0)
End Sub

Private Sub Label27_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    fMainForm.Label27.ForeColor = &HC0&

End Sub

Private Sub Label27_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    fMainForm.Label27.ForeColor = &H0&

End Sub

Private Sub Label28_Click()
        fMainForm.Picture9.Visible = False
        fMainForm.Picture18.Visible = False
        fMainForm.Picture19.Visible = False
        fMainForm.Picture20.Visible = False
        fMainForm.Picture21.Visible = False
        fMainForm.Picture22.Visible = False
        fMainForm.Picture23.Visible = False
        Const_MN = 1
        Ret = mciSendString("set CDAudio door closed", RetStr, 0, 0)
End Sub

Private Sub Label28_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    fMainForm.Label28.ForeColor = &HC0&

End Sub

Private Sub Label28_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    fMainForm.Label28.ForeColor = &H0&

End Sub

Private Sub Label29_Click()
    If Dir(App.Path & "\DicDAT\Tools\HELP.exe") = "" Then
         MsgBox "帮助文件不存在,请重新安装"
    Else
         Shell App.Path & "\DicDAT\Tools\HELP.exe", vbNormalFocus
    End If

End Sub

Private Sub Label29_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    fMainForm.Label29.ForeColor = &HC0&

End Sub

Private Sub Label29_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
fMainForm.Label29.ForeColor = &HC0FFFF
End Sub

Private Sub Label3_Click()

    fMainForm.Label10.Caption = "80X86指令"
    fMainForm.Label11.Caption = "WIN32指令"
    fMainForm.Label12.Caption = "功能号"
    fMainForm.Label13.Caption = "中断码"
    fMainForm.Label23.Caption = "错误信息"

    fMainForm.Label13.Enabled = True
    fMainForm.Picture13.Enabled = True
    fMainForm.Label12.Enabled = True
    fMainForm.Picture12.Enabled = True
    fMainForm.Label16.Enabled = True
    fMainForm.Picture16.Enabled = True

    Const_N = 13
    Const_NT = 2
    Call Ass_Codesys
End Sub

Private Sub Label3_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    fMainForm.Label3.ForeColor = &HC0&

End Sub

Private Sub Label3_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    fMainForm.Label3.ForeColor = &H0&

End Sub

Private Sub Label4_Click()

    fMainForm.Label10.Caption = "常用函数"
    fMainForm.Label11.Caption = "常用语句"
    fMainForm.Label12.Caption = "数据处理"
    fMainForm.Label13.Caption = "报表打印"
    fMainForm.Label23.Caption = "API-函数"
    
    fMainForm.Label13.Enabled = False
    fMainForm.Picture13.Enabled = False
    fMainForm.Label12.Enabled = False
    fMainForm.Picture12.Enabled = False
    fMainForm.Label16.Enabled = False
    fMainForm.Picture16.Enabled = False

    Const_N = 14
    Const_NT = 1
    Call VFP_Fun
End Sub

Private Sub Label4_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    fMainForm.Label4.ForeColor = &HC0&

End Sub

Private Sub Label4_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    
    
    fMainForm.Label4.ForeColor = &H0&

End Sub

Private Sub Label5_Click()

    fMainForm.Label10.Caption = "常用函数"
    fMainForm.Label11.Caption = "常用语句"
    fMainForm.Label12.Caption = "常用属性"
    fMainForm.Label13.Caption = "数据类型"
    fMainForm.Label23.Caption = "API-函数"
    fMainForm.Label13.Enabled = True
    fMainForm.Picture13.Enabled = True
    fMainForm.Label12.Enabled = True
    fMainForm.Picture12.Enabled = True
    fMainForm.Label16.Enabled = False
    fMainForm.Picture16.Enabled = False

    Const_N = 15
    Const_NT = 2
    Call VB_Funn
End Sub

Private Sub Label5_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    fMainForm.Label5.ForeColor = &HC0&

End Sub

Private Sub Label5_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    
    
    fMainForm.Label5.ForeColor = &H0&

End Sub

Private Sub Label6_Click()
    fMainForm.Label10.Caption = "常用函数"
    fMainForm.Label11.Caption = "错误信息"
    fMainForm.Label12.Caption = "程序规范"
    fMainForm.Label13.Caption = "快捷键XT"
    fMainForm.Label23.Caption = "API-函数"
    
    fMainForm.Label13.Enabled = True
    fMainForm.Picture13.Enabled = True
    fMainForm.Label12.Enabled = True
    fMainForm.Picture12.Enabled = True
    fMainForm.Label16.Enabled = True
    fMainForm.Picture16.Enabled = True

    Const_N = 16
    Const_NT = 1
    Call DEP_FUN
End Sub

Private Sub Label6_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    fMainForm.Label6.ForeColor = &HC0&

End Sub

Private Sub Label6_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    
    
    fMainForm.Label6.ForeColor = &H0&

End Sub

Private Sub Label7_Click()
    fMainForm.Label10.Caption = "方法样解"
    fMainForm.Label11.Caption = "常用类库"
    fMainForm.Label12.Caption = "编程技巧"
    fMainForm.Label13.Caption = "自己看吧"
    fMainForm.Label23.Caption = "API-函数"
    
    fMainForm.Label13.Enabled = True
    fMainForm.Picture13.Enabled = True
    fMainForm.Label12.Enabled = False
    fMainForm.Picture12.Enabled = False
    fMainForm.Label16.Enabled = False
    fMainForm.Picture16.Enabled = False
    
    Const_N = 17
    Const_NT = 1
    Call JAVA_FUN
End Sub

Private Sub Label7_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    fMainForm.Label7.ForeColor = &HC0&

End Sub

Private Sub Label7_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    
    
    fMainForm.Label7.ForeColor = &H0&

End Sub

Private Sub Label8_Click()
    If Dir(App.Path & "\DicDAT\Tools\指令字典浮动工具条2.0.exe") = "" Then
         MsgBox "指令字典浮动工具条以不在,请重新安装"
    Else
         Shell App.Path & "\DicDAT\Tools\指令字典浮动工具条2.0.exe", vbNormalFocus
    End If
        fMainForm.Picture9.Visible = False
        fMainForm.Picture18.Visible = False
        fMainForm.Picture19.Visible = False
        fMainForm.Picture20.Visible = False
        fMainForm.Picture21.Visible = False
        fMainForm.Picture22.Visible = False
        fMainForm.Picture23.Visible = False
        Const_MN = 1
End Sub

Private Sub Label8_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    fMainForm.Label8.ForeColor = &HC0&

End Sub

Private Sub Label8_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
        fMainForm.Picture22.Visible = False
        fMainForm.Picture23.Visible = False

End Sub

Private Sub Label8_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    fMainForm.Label8.ForeColor = &H0&

End Sub

Private Sub Label9_Click()
    If Dir(App.Path & "\DicDAT\Tools\POPT\邮编区号查询1.0.exe") = "" Then
         MsgBox "邮编区号查询不存在,请重新安装"
    Else
         Shell App.Path & "\DicDAT\Tools\POPT\邮编区号查询1.0.exe", vbNormalFocus
    End If
        fMainForm.Picture9.Visible = False
        fMainForm.Picture18.Visible = False
        fMainForm.Picture19.Visible = False
        fMainForm.Picture20.Visible = False
        fMainForm.Picture21.Visible = False
        fMainForm.Picture22.Visible = False
        fMainForm.Picture23.Visible = False
        Const_MN = 1
End Sub

Private Sub Label9_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    fMainForm.Label9.ForeColor = &HC0&

End Sub

Private Sub Label9_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
        fMainForm.Picture22.Visible = False
        fMainForm.Picture23.Visible = False

End Sub

Private Sub Label9_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    fMainForm.Label9.ForeColor = &H0&

End Sub

Private Sub List1_Click()

  Call Ass_list1

End Sub

Private Sub Picture1_Click()
    fMainForm.Label10.Caption = "常用函数"
    fMainForm.Label11.Caption = "语句标识"
    fMainForm.Label12.Caption = "头文件.H"
    fMainForm.Label13.Caption = "错误信息"
    fMainForm.Label23.Caption = "API-函数"

    fMainForm.Label13.Enabled = True
    fMainForm.Picture13.Enabled = True
    fMainForm.Label12.Enabled = True
    fMainForm.Picture12.Enabled = True
    fMainForm.Label16.Enabled = True
    fMainForm.Picture16.Enabled = True

    Const_N = 11
    Const_NT = 2
    Call TC_Fun
End Sub

Private Sub Picture1_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    fMainForm.Label1.ForeColor = &HC0&

End Sub


Private Sub Picture1_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    fMainForm.Label1.ForeColor = &H0&
    
    

End Sub

Private Sub Picture10_Click()
    Select Case Const_N
        Case 11
            Const_NT = 2
            Call TC_Fun
        Case 12
            Const_NT = 2
            Call VC_Fun
        Case 13
            Const_NT = 2
            Call Ass_Codesys
        Case 14
            Const_NT = 1
            Call VFP_Fun
        Case 15
            Const_NT = 2
            Call VB_Funn
        Case 16
            Const_NT = 1
            Call DEP_FUN
        Case 17
            Const_NT = 1
            Call JAVA_FUN

  End Select

End Sub

Private Sub Picture10_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    fMainForm.Label10.ForeColor = &HC0&

End Sub

Private Sub Picture10_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    fMainForm.Label10.ForeColor = &H0&
    
    

End Sub

Private Sub Picture11_Click()
    Select Case Const_N + 10
        Case 21
            Const_NT = 1
            Call TC_Code
        Case 22
            Const_NT = 1
            Call VC_XX
        Case 23
            Const_NT = 2
            Call Ass_Codesys32
        Case 24
            Const_NT = 2
            Call VFP_Code
        Case 25
            Const_NT = 2
            Call VB_Codee
        Case 26
            Const_NT = 1
            Call DEP_ERR
        Case 27
            Const_NT = 1
            Call JAVA_LEI
  End Select

End Sub

Private Sub Picture11_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    fMainForm.Label11.ForeColor = &HC0&

End Sub

Private Sub Picture11_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    fMainForm.Label11.ForeColor = &H0&
    
    

End Sub

Private Sub Picture12_Click()
    Select Case Const_N + 20
        Case 31
            Const_NT = 1
            Call TC_Caput
        Case 32
            Const_NT = 1
            Call VC_KJJ
        Case 33
            Const_NT = 1
            Call Ass_Funsys
        Case 34
            Const_NT = 2
            Call VC_Fun
        Case 35
            Const_NT = 2
            Call VB_TTirbb
        Case 36
            Const_NT = 1
            Call DEP_GF
        Case 37
            Const_NT = 1
            Call JAVA_ZJK
  End Select

End Sub

Private Sub Picture12_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    fMainForm.Label12.ForeColor = &HC0&

End Sub

Private Sub Picture12_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    fMainForm.Label12.ForeColor = &H0&
    
    

End Sub

Private Sub Picture13_Click()
    Select Case Const_N + 30
        Case 41
            Const_NT = 1
            Call TC_Error
        Case 42
            Const_NT = 2
            Call VB_Funn
        Case 43
            Const_NT = 1
            Call Ass_Breaksys
        Case 44
            Const_NT = 2
            Call VC_Fun
        Case 45
            Const_NT = 1
            Call VB_Tibb
        Case 46
            Const_NT = 1
            Call DEP_KJJ
        Case 47
            Const_NT = 1
            Call JAVA_ZJK

  End Select

End Sub

Private Sub Picture13_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    fMainForm.Label13.ForeColor = &HC0&

End Sub

Private Sub Picture13_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    fMainForm.Label13.ForeColor = &H0&
    
    

End Sub

Private Sub Picture14_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    fMainForm.Label14.ForeColor = &HC0&

End Sub

Private Sub Picture14_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    fMainForm.Label14.ForeColor = &H0&
    
    

End Sub

Private Sub Picture15_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    fMainForm.Label15.ForeColor = &HC0&

End Sub

Private Sub Picture15_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    fMainForm.Label15.ForeColor = &H0&
    
        If Const_MN = 1 Then
        
        fMainForm.Picture9.Visible = True
        fMainForm.Picture18.Visible = True
        fMainForm.Picture19.Visible = True
        fMainForm.Picture20.Visible = True
        fMainForm.Picture21.Visible = True
        Const_MN = 2
    Else
        fMainForm.Picture9.Visible = False
        fMainForm.Picture18.Visible = False
        fMainForm.Picture19.Visible = False
        fMainForm.Picture20.Visible = False
        fMainForm.Picture21.Visible = False
        fMainForm.Picture22.Visible = False
        fMainForm.Picture23.Visible = False
        Const_MN = 1
    End If


End Sub

Private Sub Picture16_Click()
    Select Case Const_N
        Case 11
            Const_NT = 1
            Call TC_TEA
        Case 12
            Const_NT = 1
            Call VC_TEA
        Case 13
            Const_NT = 1
            Call ASS_TEA
        Case 16
            Const_NT = 1
            Call DEP_TEA
  End Select

End Sub

Private Sub Picture16_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    fMainForm.Label16.ForeColor = &HC0&

End Sub

Private Sub Picture16_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    fMainForm.Label16.ForeColor = &H0&
    
    

End Sub

Private Sub Picture17_Click()
    Select Case Const_N + 40
        Case 51
            Const_NT = 1
            fMainForm.Label17.Caption = " 当前位置: TurboC\API函数"
            Call API_XT
        Case 52
            fMainForm.Label17.Caption = " 当前位置: VC++6.0\API函数"
            Const_NT = 1
            Call API_XT
        Case 53
            
            Const_NT = 1
            Call Ass_Errorsys
        Case 54
            fMainForm.Label17.Caption = " 当前位置: VFP6.0\API函数"
            Const_NT = 1
            Call API_XT
        Case 55
            fMainForm.Label17.Caption = " 当前位置: VB6.0\API函数"
            Const_NT = 1
            Call API_XT
        Case 56
            fMainForm.Label17.Caption = " 当前位置: DEPHI\API函数"
            Const_NT = 1
            Call API_XT
        Case 57
            fMainForm.Label17.Caption = " 当前位置: JAVA\API函数"
            Const_NT = 1
            Call API_XT

  End Select

End Sub

Private Sub Picture17_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    fMainForm.Label23.ForeColor = &HC0&

End Sub

Private Sub Picture17_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    fMainForm.Label23.ForeColor = &H0&

End Sub

Private Sub Picture18_Click()
    If Dir(App.Path & "\DicDAT\Tools\POPT\邮编区号查询1.0.exe") = "" Then
         MsgBox "指令字典浮动工具条以不在,请重新安装"
    Else
         Shell App.Path & "\DicDAT\Tools\POPT\邮编区号查询1.0.exe", vbNormalFocus
    End If
        fMainForm.Picture9.Visible = False
        fMainForm.Picture18.Visible = False
        fMainForm.Picture19.Visible = False
        fMainForm.Picture20.Visible = False
        fMainForm.Picture21.Visible = False
        fMainForm.Picture22.Visible = False
        fMainForm.Picture23.Visible = False
        Const_MN = 1
End Sub

Private Sub Picture18_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    fMainForm.Label9.ForeColor = &HC0&

End Sub

Private Sub Picture18_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
        fMainForm.Picture22.Visible = False
        fMainForm.Picture23.Visible = False

End Sub

Private Sub Picture18_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    fMainForm.Label9.ForeColor = &H0&

End Sub

Private Sub Picture19_Click()
        fMainForm.Picture9.Visible = False
        fMainForm.Picture18.Visible = False
        fMainForm.Picture19.Visible = False
        fMainForm.Picture20.Visible = False
        fMainForm.Picture21.Visible = False
        fMainForm.Picture22.Visible = False
        fMainForm.Picture23.Visible = False
        Const_MN = 1
        Call ELE_DAT
End Sub

Private Sub Picture19_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    fMainForm.Label24.ForeColor = &HC0&

End Sub

Private Sub Picture19_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
        fMainForm.Picture22.Visible = False
        fMainForm.Picture23.Visible = False

End Sub

Private Sub Picture19_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    fMainForm.Label24.ForeColor = &H0&

End Sub

Private Sub Picture2_Click()
    fMainForm.Label10.Caption = "常用函数"
    fMainForm.Label11.Caption = "消息详解"
    fMainForm.Label12.Caption = "VC快捷键"
    fMainForm.Label13.Caption = "MFC-类库"
    fMainForm.Label23.Caption = "API-函数"

    fMainForm.Label13.Enabled = False
    fMainForm.Picture13.Enabled = False
    fMainForm.Label12.Enabled = True
    fMainForm.Picture12.Enabled = True
    fMainForm.Label16.Enabled = True
    fMainForm.Picture16.Enabled = True

    Const_N = 12
    Const_NT = 2
    Call VC_Fun
End Sub

Private Sub Picture2_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    fMainForm.Label2.ForeColor = &HC0&

End Sub

Private Sub Picture2_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    
    
    fMainForm.Label2.ForeColor = &H0&

End Sub

Private Sub Picture20_Click()
        fMainForm.Picture9.Visible = False
        fMainForm.Picture18.Visible = False
        fMainForm.Picture19.Visible = False
        fMainForm.Picture20.Visible = False
        fMainForm.Picture21.Visible = False
        fMainForm.Picture22.Visible = False
        fMainForm.Picture23.Visible = False
        fMainForm.Label16.Enabled = False
        fMainForm.Picture16.Enabled = False

        Const_MN = 1
        Call NET_DAT
End Sub

Private Sub Picture20_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    fMainForm.Label25.ForeColor = &HC0&

End Sub

Private Sub Picture20_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
        fMainForm.Picture22.Visible = False
        fMainForm.Picture23.Visible = False

End Sub

Private Sub Picture20_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    fMainForm.Label25.ForeColor = &H0&

End Sub

Private Sub Picture21_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    fMainForm.Label26.ForeColor = &HC0&

End Sub

Private Sub Picture21_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    fMainForm.Picture22.Visible = True
    fMainForm.Picture23.Visible = True

End Sub

Private Sub Picture21_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    fMainForm.Label26.ForeColor = &H0&

End Sub

Private Sub Picture22_Click()
        fMainForm.Picture9.Visible = False
        fMainForm.Picture18.Visible = False
        fMainForm.Picture19.Visible = False
        fMainForm.Picture20.Visible = False
        fMainForm.Picture21.Visible = False
        fMainForm.Picture22.Visible = False
        fMainForm.Picture23.Visible = False
        Const_MN = 1
        Ret = mciSendString("set CDAudio door open", RetStr, 0, 0)
End Sub

Private Sub Picture22_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    fMainForm.Label27.ForeColor = &HC0&

End Sub

Private Sub Picture22_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    fMainForm.Label27.ForeColor = &H0&

End Sub

Private Sub Picture23_Click()
        fMainForm.Picture9.Visible = False
        fMainForm.Picture18.Visible = False
        fMainForm.Picture19.Visible = False
        fMainForm.Picture20.Visible = False
        fMainForm.Picture21.Visible = False
        fMainForm.Picture22.Visible = False
        fMainForm.Picture23.Visible = False
        Const_MN = 1
        Ret = mciSendString("set CDAudio door closed", RetStr, 0, 0)
End Sub

Private Sub Picture23_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    fMainForm.Label28.ForeColor = &HC0&

End Sub

Private Sub Picture23_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    fMainForm.Label28.ForeColor = &H0&

End Sub

Private Sub Picture3_Click()
   
    fMainForm.Label10.Caption = "80X86指令"
    fMainForm.Label11.Caption = "WIN32指令"
    fMainForm.Label12.Caption = "功能号"
    fMainForm.Label13.Caption = "中断码"
    fMainForm.Label23.Caption = "错误信息"

    fMainForm.Label13.Enabled = True
    fMainForm.Picture13.Enabled = True
    fMainForm.Label12.Enabled = True
    fMainForm.Picture12.Enabled = True
    fMainForm.Label16.Enabled = True
    fMainForm.Picture16.Enabled = True

    Const_N = 13
    Const_NT = 2
    Call Ass_Codesys
End Sub

Private Sub Picture3_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    fMainForm.Label3.ForeColor = &HC0&

End Sub

Private Sub Picture3_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    fMainForm.Label3.ForeColor = &H0&

End Sub

Private Sub Picture4_Click()

    fMainForm.Label10.Caption = "常用函数"
    fMainForm.Label11.Caption = "常用语句"
    fMainForm.Label12.Caption = "数据处理"
    fMainForm.Label13.Caption = "报表打印"
    fMainForm.Label23.Caption = "API-函数"
    
    fMainForm.Label13.Enabled = False
    fMainForm.Picture13.Enabled = False
    fMainForm.Label12.Enabled = False
    fMainForm.Picture12.Enabled = False
    fMainForm.Label16.Enabled = False
    fMainForm.Picture16.Enabled = False

    Const_N = 14
    Const_NT = 1
    Call VFP_Fun

End Sub

Private Sub Picture4_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    fMainForm.Label4.ForeColor = &HC0&

End Sub

Private Sub Picture4_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    
    
    fMainForm.Label4.ForeColor = &H0&

End Sub

Private Sub Picture5_Click()

    fMainForm.Label10.Caption = "常用函数"
    fMainForm.Label11.Caption = "常用语句"
    fMainForm.Label12.Caption = "常用属性"
    fMainForm.Label13.Caption = "数据类型"
    fMainForm.Label23.Caption = "API-函数"
    fMainForm.Label13.Enabled = True
    fMainForm.Picture13.Enabled = True
    fMainForm.Label12.Enabled = True
    fMainForm.Picture12.Enabled = True
    fMainForm.Label16.Enabled = False
    fMainForm.Picture16.Enabled = False

    Const_N = 15
    Const_NT = 2
    Call VB_Funn
End Sub

Private Sub Picture5_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    fMainForm.Label5.ForeColor = &HC0&

End Sub

Private Sub Picture5_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    
    
    fMainForm.Label5.ForeColor = &H0&

End Sub

Private Sub Picture6_Click()
    fMainForm.Label10.Caption = "常用函数"
    fMainForm.Label11.Caption = "错误信息"
    fMainForm.Label12.Caption = "程序规范"
    fMainForm.Label13.Caption = "快捷键XT"
    fMainForm.Label23.Caption = "API-函数"

    fMainForm.Label13.Enabled = True
    fMainForm.Picture13.Enabled = True
    fMainForm.Label12.Enabled = True
    fMainForm.Picture12.Enabled = True
    fMainForm.Label16.Enabled = True
    fMainForm.Picture16.Enabled = True

    Const_N = 16
    Const_NT = 1
    Call DEP_FUN
End Sub

Private Sub Picture6_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    fMainForm.Label6.ForeColor = &HC0&

End Sub

Private Sub Picture6_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    
    
    fMainForm.Label6.ForeColor = &H0&

End Sub

Private Sub Picture7_Click()
    fMainForm.Label10.Caption = "方法样解"
    fMainForm.Label11.Caption = "常用类库"
    fMainForm.Label12.Caption = "编程技巧"
    fMainForm.Label13.Caption = "自己看吧"
    fMainForm.Label23.Caption = "API-函数"
    
    fMainForm.Label13.Enabled = True
    fMainForm.Picture13.Enabled = True
    fMainForm.Label12.Enabled = False
    fMainForm.Picture12.Enabled = False
    fMainForm.Label16.Enabled = False
    fMainForm.Picture16.Enabled = False
    
    Const_N = 17
    Const_NT = 1
    Call JAVA_FUN
End Sub

Private Sub Picture7_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    fMainForm.Label7.ForeColor = &HC0&

End Sub

Private Sub Picture7_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    
    
    fMainForm.Label7.ForeColor = &H0&

End Sub


Private Sub Picture9_Click()
    If Dir(App.Path & "\DicDAT\Tools\指令字典浮动工具条2.0.exe") = "" Then
         MsgBox "指令字典浮动工具条以不在,请重新安装"
    Else
         Shell App.Path & "\DicDAT\Tools\指令字典浮动工具条2.0.exe", vbNormalFocus
    End If
        fMainForm.Picture9.Visible = False
        fMainForm.Picture18.Visible = False
        fMainForm.Picture19.Visible = False
        fMainForm.Picture20.Visible = False
        fMainForm.Picture21.Visible = False
        fMainForm.Picture22.Visible = False
        fMainForm.Picture23.Visible = False
        Const_MN = 1
End Sub

Private Sub Picture9_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    fMainForm.Label8.ForeColor = &HC0&

End Sub

Private Sub Picture9_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
        fMainForm.Picture22.Visible = False
        fMainForm.Picture23.Visible = False

End Sub

Private Sub Picture9_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    fMainForm.Label8.ForeColor = &H0&

End Sub

Private Sub Text3_Change()

    Dim I, J, M As Integer
    Dim C As String
    
    C = fMainForm.Text3.Text
   
    '------------------------------------------------
    M = 0
    Do While M <= Index_I
        If UCase$(fMainForm.Text3.Text) = UCase$(fMainForm.List1.List(M)) Then
            fMainForm.List1.ListIndex = M
            fMainForm.Text3.SelStart = Len(C)
            Exit Sub
        End If
        M = M + 1
    Loop
   '------------------------------------------------
   
    I = 0
    Do While I <= Index_I
  
         J = Len(Trim(C))
         If (UCase$(fMainForm.Text3.Text) = Left(UCase$(fMainForm.List1.List(I)), J)) Then
             fMainForm.List1.ListIndex = I
             fMainForm.Text3.Text = C
             fMainForm.Text3.SelStart = Len(C)
             Exit Sub
         End If
         I = I + 1
        Loop

End Sub

Private Sub Text3_DblClick()
  fMainForm.Text3.SelStart = 0
  fMainForm.Text3.SelLength = Len(Text3.Text)

End Sub

Private Sub Text4_Change()

End Sub

Private Sub Text4_Click()
  fMainForm.Text4.SelStart = 0
  fMainForm.Text4.SelLength = Len(Text4.Text)

End Sub
