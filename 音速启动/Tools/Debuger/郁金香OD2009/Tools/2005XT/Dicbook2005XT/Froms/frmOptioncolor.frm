VERSION 5.00
Begin VB.Form frmOptioncolor 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "颜色设置"
   ClientHeight    =   3870
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   6705
   BeginProperty Font 
      Name            =   "宋体"
      Size            =   18
      Charset         =   134
      Weight          =   700
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   Icon            =   "frmOptioncolor.frx":0000
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   258
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   447
   ShowInTaskbar   =   0   'False
   StartUpPosition =   1  '所有者中心
   Begin VB.CommandButton Command3 
      Caption         =   "取消"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   5640
      TabIndex        =   69
      Top             =   720
      Width           =   975
   End
   Begin VB.CommandButton Command2 
      Caption         =   "确定"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   5640
      TabIndex        =   68
      Top             =   240
      Width           =   975
   End
   Begin VB.Frame Frame3 
      Caption         =   "示例"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   3615
      Left            =   3240
      TabIndex        =   70
      Top             =   120
      Width           =   2295
      Begin VB.Label Label1 
         BorderStyle     =   1  'Fixed Single
         Caption         =   $"frmOptioncolor.frx":5F32
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   18
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   3255
         Left            =   240
         TabIndex        =   71
         Top             =   240
         Width           =   1815
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "颜色设置"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   3615
      Left            =   120
      TabIndex        =   2
      Top             =   120
      Width           =   3015
      Begin VB.CommandButton Command1 
         BackColor       =   &H00FFFFFF&
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   9
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   63
         Left            =   2640
         Style           =   1  'Graphical
         TabIndex        =   67
         Top             =   2760
         Width           =   255
      End
      Begin VB.CommandButton Command1 
         BackColor       =   &H00FFFFFF&
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   9
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   62
         Left            =   2280
         Style           =   1  'Graphical
         TabIndex        =   66
         Top             =   2760
         Width           =   255
      End
      Begin VB.CommandButton Command1 
         BackColor       =   &H00FFFFFF&
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   9
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   61
         Left            =   1920
         Style           =   1  'Graphical
         TabIndex        =   65
         Top             =   2760
         Width           =   255
      End
      Begin VB.CommandButton Command1 
         BackColor       =   &H00FFFFFF&
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   9
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   60
         Left            =   1560
         Style           =   1  'Graphical
         TabIndex        =   64
         Top             =   2760
         Width           =   255
      End
      Begin VB.CommandButton Command1 
         BackColor       =   &H00FFFFFF&
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   9
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   59
         Left            =   1200
         Style           =   1  'Graphical
         TabIndex        =   63
         Top             =   2760
         Width           =   255
      End
      Begin VB.CommandButton Command1 
         BackColor       =   &H00FFFFFF&
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   9
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   58
         Left            =   840
         Style           =   1  'Graphical
         TabIndex        =   62
         Top             =   2760
         Width           =   255
      End
      Begin VB.CommandButton Command1 
         BackColor       =   &H00FFFFFF&
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   9
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   57
         Left            =   480
         Style           =   1  'Graphical
         TabIndex        =   61
         Top             =   2760
         Width           =   255
      End
      Begin VB.CommandButton Command1 
         BackColor       =   &H00FFFFFF&
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   9
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   56
         Left            =   120
         Style           =   1  'Graphical
         TabIndex        =   60
         Top             =   2760
         Width           =   255
      End
      Begin VB.CommandButton Command1 
         BackColor       =   &H00FFFFFF&
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   9
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   55
         Left            =   2640
         Style           =   1  'Graphical
         TabIndex        =   59
         Top             =   2400
         Width           =   255
      End
      Begin VB.CommandButton Command1 
         BackColor       =   &H00FFFFFF&
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   9
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   54
         Left            =   2280
         Style           =   1  'Graphical
         TabIndex        =   58
         Top             =   2400
         Width           =   255
      End
      Begin VB.CommandButton Command1 
         BackColor       =   &H00FFFFFF&
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   9
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   53
         Left            =   1920
         Style           =   1  'Graphical
         TabIndex        =   57
         Top             =   2400
         Width           =   255
      End
      Begin VB.CommandButton Command1 
         BackColor       =   &H00FFFFFF&
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   9
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   52
         Left            =   1560
         Style           =   1  'Graphical
         TabIndex        =   56
         Top             =   2400
         Width           =   255
      End
      Begin VB.CommandButton Command1 
         BackColor       =   &H00FFFFFF&
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   9
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   51
         Left            =   1200
         Style           =   1  'Graphical
         TabIndex        =   55
         Top             =   2400
         Width           =   255
      End
      Begin VB.CommandButton Command1 
         BackColor       =   &H00FFFFFF&
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   9
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   50
         Left            =   840
         Style           =   1  'Graphical
         TabIndex        =   54
         Top             =   2400
         Width           =   255
      End
      Begin VB.CommandButton Command1 
         BackColor       =   &H00FFFFFF&
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   9
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   49
         Left            =   480
         Style           =   1  'Graphical
         TabIndex        =   53
         Top             =   2400
         Width           =   255
      End
      Begin VB.CommandButton Command1 
         BackColor       =   &H00FFFFFF&
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   9
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   48
         Left            =   120
         Style           =   1  'Graphical
         TabIndex        =   52
         Top             =   2400
         Width           =   255
      End
      Begin VB.CommandButton Command1 
         BackColor       =   &H00400040&
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   9
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   47
         Left            =   2640
         Style           =   1  'Graphical
         TabIndex        =   51
         Top             =   2040
         Width           =   255
      End
      Begin VB.CommandButton Command1 
         BackColor       =   &H00400000&
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   9
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   46
         Left            =   2280
         Style           =   1  'Graphical
         TabIndex        =   50
         Top             =   2040
         Width           =   255
      End
      Begin VB.CommandButton Command1 
         BackColor       =   &H00404000&
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   9
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   45
         Left            =   1920
         Style           =   1  'Graphical
         TabIndex        =   49
         Top             =   2040
         Width           =   255
      End
      Begin VB.CommandButton Command1 
         BackColor       =   &H00004000&
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   9
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   44
         Left            =   1560
         Style           =   1  'Graphical
         TabIndex        =   48
         Top             =   2040
         Width           =   255
      End
      Begin VB.CommandButton Command1 
         BackColor       =   &H00004040&
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   9
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   43
         Left            =   1200
         Style           =   1  'Graphical
         TabIndex        =   47
         Top             =   2040
         Width           =   255
      End
      Begin VB.CommandButton Command1 
         BackColor       =   &H00404080&
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   9
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   42
         Left            =   840
         Style           =   1  'Graphical
         TabIndex        =   46
         Top             =   2040
         Width           =   255
      End
      Begin VB.CommandButton Command1 
         BackColor       =   &H00000040&
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   9
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   41
         Left            =   480
         Style           =   1  'Graphical
         TabIndex        =   45
         Top             =   2040
         Width           =   255
      End
      Begin VB.CommandButton Command1 
         BackColor       =   &H00000000&
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   9
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   40
         Left            =   120
         Style           =   1  'Graphical
         TabIndex        =   44
         Top             =   2040
         Width           =   255
      End
      Begin VB.CommandButton Command1 
         BackColor       =   &H00800080&
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   9
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   39
         Left            =   2640
         Style           =   1  'Graphical
         TabIndex        =   43
         Top             =   1680
         Width           =   255
      End
      Begin VB.CommandButton Command1 
         BackColor       =   &H00800000&
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   9
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   38
         Left            =   2280
         Style           =   1  'Graphical
         TabIndex        =   42
         Top             =   1680
         Width           =   255
      End
      Begin VB.CommandButton Command1 
         BackColor       =   &H00808000&
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   9
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   37
         Left            =   1920
         Style           =   1  'Graphical
         TabIndex        =   41
         Top             =   1680
         Width           =   255
      End
      Begin VB.CommandButton Command1 
         BackColor       =   &H00008000&
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   9
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   36
         Left            =   1560
         Style           =   1  'Graphical
         TabIndex        =   40
         Top             =   1680
         Width           =   255
      End
      Begin VB.CommandButton Command1 
         BackColor       =   &H00008080&
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   9
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   35
         Left            =   1200
         Style           =   1  'Graphical
         TabIndex        =   39
         Top             =   1680
         Width           =   255
      End
      Begin VB.CommandButton Command1 
         BackColor       =   &H00004080&
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   9
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   34
         Left            =   840
         Style           =   1  'Graphical
         TabIndex        =   38
         Top             =   1680
         Width           =   255
      End
      Begin VB.CommandButton Command1 
         BackColor       =   &H00000080&
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   9
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   33
         Left            =   480
         Style           =   1  'Graphical
         TabIndex        =   37
         Top             =   1680
         Width           =   255
      End
      Begin VB.CommandButton Command1 
         BackColor       =   &H00404040&
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   9
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   32
         Left            =   120
         Style           =   1  'Graphical
         TabIndex        =   36
         Top             =   1680
         Width           =   255
      End
      Begin VB.CommandButton Command1 
         BackColor       =   &H00C000C0&
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   9
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   31
         Left            =   2640
         Style           =   1  'Graphical
         TabIndex        =   35
         Top             =   1320
         Width           =   255
      End
      Begin VB.CommandButton Command1 
         BackColor       =   &H00C00000&
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   9
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   30
         Left            =   2280
         Style           =   1  'Graphical
         TabIndex        =   34
         Top             =   1320
         Width           =   255
      End
      Begin VB.CommandButton Command1 
         BackColor       =   &H00C0C000&
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   9
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   29
         Left            =   1920
         Style           =   1  'Graphical
         TabIndex        =   33
         Top             =   1320
         Width           =   255
      End
      Begin VB.CommandButton Command1 
         BackColor       =   &H0000C000&
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   9
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   28
         Left            =   1560
         Style           =   1  'Graphical
         TabIndex        =   32
         Top             =   1320
         Width           =   255
      End
      Begin VB.CommandButton Command1 
         BackColor       =   &H0000C0C0&
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   9
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   27
         Left            =   1200
         Style           =   1  'Graphical
         TabIndex        =   31
         Top             =   1320
         Width           =   255
      End
      Begin VB.CommandButton Command1 
         BackColor       =   &H000040C0&
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   9
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   26
         Left            =   840
         Style           =   1  'Graphical
         TabIndex        =   30
         Top             =   1320
         Width           =   255
      End
      Begin VB.CommandButton Command1 
         BackColor       =   &H000000C0&
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   9
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   25
         Left            =   480
         Style           =   1  'Graphical
         TabIndex        =   29
         Top             =   1320
         Width           =   255
      End
      Begin VB.CommandButton Command1 
         BackColor       =   &H00808080&
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   9
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   24
         Left            =   120
         Style           =   1  'Graphical
         TabIndex        =   28
         Top             =   1320
         Width           =   255
      End
      Begin VB.CommandButton Command1 
         BackColor       =   &H00FF00FF&
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   9
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   23
         Left            =   2640
         Style           =   1  'Graphical
         TabIndex        =   27
         Top             =   960
         Width           =   255
      End
      Begin VB.CommandButton Command1 
         BackColor       =   &H00FF0000&
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   9
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   22
         Left            =   2280
         Style           =   1  'Graphical
         TabIndex        =   26
         Top             =   960
         Width           =   255
      End
      Begin VB.CommandButton Command1 
         BackColor       =   &H00FFFF00&
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   9
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   21
         Left            =   1920
         Style           =   1  'Graphical
         TabIndex        =   25
         Top             =   960
         Width           =   255
      End
      Begin VB.CommandButton Command1 
         BackColor       =   &H0000FF00&
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   9
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   20
         Left            =   1560
         Style           =   1  'Graphical
         TabIndex        =   24
         Top             =   960
         Width           =   255
      End
      Begin VB.CommandButton Command1 
         BackColor       =   &H0000FFFF&
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   9
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   19
         Left            =   1200
         Style           =   1  'Graphical
         TabIndex        =   23
         Top             =   960
         Width           =   255
      End
      Begin VB.CommandButton Command1 
         BackColor       =   &H000080FF&
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   9
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   18
         Left            =   840
         Style           =   1  'Graphical
         TabIndex        =   22
         Top             =   960
         Width           =   255
      End
      Begin VB.CommandButton Command1 
         BackColor       =   &H008080FF&
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   9
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   17
         Left            =   480
         Style           =   1  'Graphical
         TabIndex        =   21
         Top             =   960
         Width           =   255
      End
      Begin VB.CommandButton Command1 
         BackColor       =   &H00C0C0C0&
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   9
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   16
         Left            =   120
         Style           =   1  'Graphical
         TabIndex        =   20
         Top             =   960
         Width           =   255
      End
      Begin VB.CommandButton Command1 
         BackColor       =   &H00FF80FF&
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   9
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   15
         Left            =   2640
         Style           =   1  'Graphical
         TabIndex        =   19
         Top             =   600
         Width           =   255
      End
      Begin VB.CommandButton Command1 
         BackColor       =   &H00FF8080&
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   9
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   14
         Left            =   2280
         Style           =   1  'Graphical
         TabIndex        =   18
         Top             =   600
         Width           =   255
      End
      Begin VB.CommandButton Command1 
         BackColor       =   &H00FFFF80&
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   9
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   13
         Left            =   1920
         Style           =   1  'Graphical
         TabIndex        =   17
         Top             =   600
         Width           =   255
      End
      Begin VB.CommandButton Command1 
         BackColor       =   &H0080FF80&
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   9
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   12
         Left            =   1560
         Style           =   1  'Graphical
         TabIndex        =   16
         Top             =   600
         Width           =   255
      End
      Begin VB.CommandButton Command1 
         BackColor       =   &H0080FFFF&
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   9
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   11
         Left            =   1200
         Style           =   1  'Graphical
         TabIndex        =   15
         Top             =   600
         Width           =   255
      End
      Begin VB.CommandButton Command1 
         BackColor       =   &H0080C0FF&
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   9
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   10
         Left            =   840
         Style           =   1  'Graphical
         TabIndex        =   14
         Top             =   600
         Width           =   255
      End
      Begin VB.CommandButton Command1 
         BackColor       =   &H008080FF&
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   9
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   9
         Left            =   480
         Style           =   1  'Graphical
         TabIndex        =   13
         Top             =   600
         Width           =   255
      End
      Begin VB.CommandButton Command1 
         BackColor       =   &H00E0E0E0&
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   9
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   8
         Left            =   120
         Style           =   1  'Graphical
         TabIndex        =   12
         Top             =   600
         Width           =   255
      End
      Begin VB.CommandButton Command1 
         BackColor       =   &H00FFC0FF&
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   9
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   7
         Left            =   2640
         Style           =   1  'Graphical
         TabIndex        =   11
         Top             =   240
         Width           =   255
      End
      Begin VB.CommandButton Command1 
         BackColor       =   &H00FFC0C0&
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   9
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   6
         Left            =   2280
         Style           =   1  'Graphical
         TabIndex        =   10
         Top             =   240
         Width           =   255
      End
      Begin VB.CommandButton Command1 
         BackColor       =   &H00FFFFC0&
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   9
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   5
         Left            =   1920
         Style           =   1  'Graphical
         TabIndex        =   9
         Top             =   240
         Width           =   255
      End
      Begin VB.CommandButton Command1 
         BackColor       =   &H00C0FFC0&
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   9
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   4
         Left            =   1560
         Style           =   1  'Graphical
         TabIndex        =   8
         Top             =   240
         Width           =   255
      End
      Begin VB.CommandButton Command1 
         BackColor       =   &H00C0FFFF&
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   9
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   3
         Left            =   1200
         Style           =   1  'Graphical
         TabIndex        =   7
         Top             =   240
         Width           =   255
      End
      Begin VB.CommandButton Command1 
         BackColor       =   &H00C0E0FF&
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   9
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   2
         Left            =   840
         Style           =   1  'Graphical
         TabIndex        =   6
         Top             =   240
         Width           =   255
      End
      Begin VB.CommandButton Command1 
         BackColor       =   &H00C0C0FF&
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   9
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   1
         Left            =   480
         Style           =   1  'Graphical
         TabIndex        =   5
         Top             =   240
         Width           =   255
      End
      Begin VB.CommandButton Command1 
         BackColor       =   &H00FFFFFF&
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   9
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   0
         Left            =   120
         Style           =   1  'Graphical
         TabIndex        =   4
         Top             =   240
         Width           =   255
      End
      Begin VB.OptionButton Option1 
         Caption         =   "背景颜色"
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   9
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   240
         TabIndex        =   0
         Top             =   3240
         Width           =   1095
      End
      Begin VB.OptionButton Option2 
         Caption         =   "字体颜色"
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   9
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   1680
         TabIndex        =   1
         Top             =   3240
         Width           =   1095
      End
      Begin VB.Frame Frame2 
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   9
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   15
         Left            =   0
         TabIndex        =   3
         Top             =   3120
         Width           =   3015
      End
   End
End
Attribute VB_Name = "frmOptioncolor"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit


Private Sub Command1_Click(Index As Integer)
  If Option2.Value = True Then
     Label1.ForeColor = Command1(Index).BackColor
  Else
     Label1.BackColor = Command1(Index).BackColor
  End If
  
  
End Sub

Private Sub Command2_Click()
   fMainForm.Text2.BackColor = Label1.BackColor
   fMainForm.Text2.ForeColor = Label1.ForeColor
   
   fMainForm.Text1.BackColor = Label1.BackColor
   fMainForm.Text1.ForeColor = Label1.ForeColor
   Unload Me
   Set frmOptioncolor = Nothing
   
End Sub

Private Sub Command3_Click()
  
  Set frmOptioncolor = Nothing
  Unload Me
  
End Sub

Private Sub Form_Load()
  
  Label1.BackColor = fMainForm.Text2.BackColor
  Label1.ForeColor = fMainForm.Text2.ForeColor
  
End Sub

Private Sub Form_Unload(Cancel As Integer)
  
  Set frmOptioncolor = Nothing
  Unload Me
  
End Sub
