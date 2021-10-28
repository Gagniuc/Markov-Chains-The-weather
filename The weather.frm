VERSION 5.00
Begin VB.Form Form1 
   AutoRedraw      =   -1  'True
   Caption         =   "Additional material on the book: Markov Chains from theory to implementation and experimentation"
   ClientHeight    =   9360
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   16455
   BeginProperty Font 
      Name            =   "Courier"
      Size            =   9.75
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   ForeColor       =   &H00404040&
   LinkTopic       =   "Form1"
   Picture         =   "The weather.frx":0000
   ScaleHeight     =   624
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   1097
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame5 
      Caption         =   "Step by step"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   5760
      TabIndex        =   33
      Top             =   8400
      Width           =   5415
      Begin VB.CheckBox Anim_Step 
         Caption         =   "Animate"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   2400
         TabIndex        =   35
         Top             =   360
         Width           =   1095
      End
      Begin VB.TextBox ASS 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H00C0C0C0&
         BorderStyle     =   0  'None
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   1320
         TabIndex        =   34
         Text            =   "200"
         Top             =   360
         Width           =   495
      End
      Begin VB.Label Label11 
         BackStyle       =   0  'Transparent
         Caption         =   "ms"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   1845
         TabIndex        =   37
         Top             =   360
         Width           =   375
      End
      Begin VB.Label Label10 
         BackStyle       =   0  'Transparent
         Caption         =   "Animation step"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   240
         TabIndex        =   36
         Top             =   360
         Width           =   1215
      End
   End
   Begin VB.Frame Frame4 
      Caption         =   "Last state"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2535
      Left            =   11280
      TabIndex        =   32
      Top             =   120
      Width           =   5055
      Begin VB.Shape top_graph 
         Height          =   1935
         Left            =   240
         Top             =   360
         Width           =   15
      End
      Begin VB.Shape Yp 
         BackColor       =   &H00FFC0C0&
         BackStyle       =   1  'Opaque
         Height          =   1935
         Left            =   2640
         Top             =   360
         Width           =   1935
      End
      Begin VB.Shape Xp 
         BackColor       =   &H00C0E0FF&
         BackStyle       =   1  'Opaque
         FillColor       =   &H00FFFFFF&
         Height          =   1935
         Left            =   480
         Top             =   360
         Width           =   1935
      End
      Begin VB.Line Line8 
         X1              =   240
         X2              =   4800
         Y1              =   2280
         Y2              =   2280
      End
   End
   Begin VB.Frame Frame3 
      Caption         =   "Processes k states"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   5760
      TabIndex        =   28
      Top             =   7440
      Width           =   5415
      Begin VB.CommandButton Solve_n 
         Caption         =   "Solve"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   240
         TabIndex        =   30
         Top             =   360
         Width           =   1695
      End
      Begin VB.TextBox sntext 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H00C0C0C0&
         BorderStyle     =   0  'None
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   2640
         TabIndex        =   29
         Text            =   "20"
         Top             =   360
         Width           =   495
      End
      Begin VB.Label Label9 
         BackStyle       =   0  'Transparent
         Caption         =   "k ="
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   2280
         TabIndex        =   31
         Top             =   360
         Width           =   375
      End
   End
   Begin VB.Frame Frame2 
      Caption         =   "Non Markov chains presets"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2655
      Left            =   11280
      TabIndex        =   24
      Top             =   6600
      Width           =   5055
      Begin VB.CommandButton test 
         Caption         =   "Split more plot"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Index           =   9
         Left            =   240
         TabIndex        =   38
         Top             =   1920
         Width           =   4575
      End
      Begin VB.CommandButton test 
         Caption         =   "Right-down plot"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Index           =   6
         Left            =   240
         TabIndex        =   27
         Top             =   480
         Width           =   4575
      End
      Begin VB.CommandButton test 
         Caption         =   "Up-left plot"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Index           =   7
         Left            =   240
         TabIndex        =   26
         Top             =   960
         Width           =   4575
      End
      Begin VB.CommandButton test 
         Caption         =   "Split plot"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Index           =   8
         Left            =   240
         TabIndex        =   25
         Top             =   1440
         Width           =   4575
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "Markov chains presets (rows add to 1)"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   3615
      Left            =   11280
      TabIndex        =   17
      Top             =   2760
      Width           =   5055
      Begin VB.CommandButton test 
         Caption         =   "Implosion (steady state at k=148)"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Index           =   2
         Left            =   240
         TabIndex        =   23
         Top             =   1440
         Width           =   4575
      End
      Begin VB.CommandButton test 
         Caption         =   "Slow (steady state at k=40)"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Index           =   1
         Left            =   240
         TabIndex        =   22
         Top             =   960
         Width           =   4575
      End
      Begin VB.CommandButton test 
         Caption         =   "Cyclic zig-zag (NO steady state)"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Index           =   0
         Left            =   240
         TabIndex        =   21
         Top             =   480
         Width           =   4575
      End
      Begin VB.CommandButton test 
         Caption         =   "Slim (steady state at k=36)"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Index           =   3
         Left            =   240
         TabIndex        =   20
         Top             =   1920
         Width           =   4575
      End
      Begin VB.CommandButton test 
         Caption         =   "Middle up (steady state at k=36)"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Index           =   4
         Left            =   240
         TabIndex        =   19
         Top             =   2400
         Width           =   4575
      End
      Begin VB.CommandButton test 
         Caption         =   "Gate (NO steady state)"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Index           =   5
         Left            =   240
         TabIndex        =   18
         Top             =   2880
         Width           =   4575
      End
   End
   Begin VB.PictureBox graf_val 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      BackColor       =   &H00FFFFFF&
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   1695
      Left            =   5760
      ScaleHeight     =   111
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   359
      TabIndex        =   11
      Top             =   240
      Width           =   5415
   End
   Begin VB.PictureBox Center_patt 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      BackColor       =   &H00FFFFFF&
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   4695
      Left            =   480
      ScaleHeight     =   311
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   335
      TabIndex        =   10
      Top             =   4200
      Width           =   5055
      Begin VB.Line Line2 
         BorderColor     =   &H00808080&
         BorderStyle     =   3  'Dot
         X1              =   0
         X2              =   336
         Y1              =   152
         Y2              =   152
      End
      Begin VB.Line Line1 
         BorderColor     =   &H00808080&
         BorderStyle     =   3  'Dot
         X1              =   168
         X2              =   168
         Y1              =   0
         Y2              =   304
      End
   End
   Begin VB.TextBox Text1 
      BackColor       =   &H00E0E0E0&
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   5055
      Left            =   5760
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   9
      Top             =   2280
      Width           =   5415
   End
   Begin VB.TextBox v1 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00C0C0C0&
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Left            =   720
      TabIndex        =   6
      Text            =   "1"
      Top             =   2880
      Width           =   495
   End
   Begin VB.TextBox v2 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00C0C0C0&
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Left            =   1560
      TabIndex        =   5
      Text            =   "0"
      Top             =   2880
      Width           =   495
   End
   Begin VB.TextBox P22 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00C0C0C0&
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Left            =   3000
      TabIndex        =   3
      Text            =   "0.375"
      Top             =   3120
      Width           =   495
   End
   Begin VB.TextBox P21 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00C0C0C0&
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Left            =   2400
      TabIndex        =   2
      Text            =   "0.625"
      Top             =   3120
      Width           =   495
   End
   Begin VB.TextBox P12 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00C0C0C0&
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Left            =   3000
      TabIndex        =   1
      Text            =   "0.8"
      Top             =   2640
      Width           =   495
   End
   Begin VB.TextBox P11 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00C0C0C0&
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Left            =   2400
      TabIndex        =   0
      Text            =   "0.2"
      Top             =   2640
      Width           =   495
   End
   Begin VB.Label Label3 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "R"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   3960
      TabIndex        =   40
      Top             =   1200
      Width           =   495
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "S"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   1560
      TabIndex        =   39
      Top             =   1200
      Width           =   495
   End
   Begin VB.Shape Shape3 
      BorderColor     =   &H00808080&
      Height          =   3855
      Left            =   360
      Top             =   120
      Width           =   5175
   End
   Begin VB.Label sn 
      BackStyle       =   0  'Transparent
      Caption         =   "k"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   3600
      TabIndex        =   16
      Top             =   2400
      Width           =   375
   End
   Begin VB.Label L12 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   2760
      TabIndex        =   15
      Top             =   1920
      Width           =   615
   End
   Begin VB.Label L21 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   2760
      TabIndex        =   14
      Top             =   360
      Width           =   615
   End
   Begin VB.Label L22 
      BackStyle       =   0  'Transparent
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   4920
      TabIndex        =   13
      Top             =   600
      Width           =   615
   End
   Begin VB.Label L11 
      BackStyle       =   0  'Transparent
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   720
      TabIndex        =   12
      Top             =   600
      Width           =   735
   End
   Begin VB.Label y 
      BackStyle       =   0  'Transparent
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   255
      Left            =   4680
      TabIndex        =   8
      Top             =   2880
      Width           =   495
   End
   Begin VB.Label x 
      BackStyle       =   0  'Transparent
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   255
      Left            =   4080
      TabIndex        =   7
      Top             =   2880
      Width           =   495
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "="
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   3720
      TabIndex        =   4
      Top             =   2880
      Width           =   255
   End
   Begin VB.Shape Anim_S1 
      BorderColor     =   &H000080FF&
      BorderWidth     =   5
      FillColor       =   &H0080C0FF&
      Height          =   855
      Left            =   3720
      Shape           =   3  'Circle
      Top             =   840
      Visible         =   0   'False
      Width           =   975
   End
   Begin VB.Shape Anim_S0 
      BackColor       =   &H80000003&
      BorderColor     =   &H000080FF&
      BorderWidth     =   5
      FillColor       =   &H0080C0FF&
      Height          =   855
      Left            =   1320
      Shape           =   3  'Circle
      Top             =   840
      Width           =   975
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'##############################################################################################
'# John Wiley & Sons, Inc.                                                                    #
'#                                                                                            #
'# Book:      Markov Chains: From Theory To Implementation And Experimentation                #
'# Author:    Dr. Paul A. Gagniuc                                                             #
'# Data:      01/09/2016                                                                      #
'# Category:  open source software                                                            #
'#                                                                                            #
'# Description:                                                                               #
'# Predictions based on Markov chains with two states (used for the main figures in CHAPTER 4)#
'##############################################################################################

Option Explicit

Private Declare Sub Sleep Lib "kernel32" (ByVal dwMilliseconds As Long)

Private Sub AboutAM_Click()
    About.Show
End Sub

Private Sub Form_Load()
If ItIsWin7 Then
    ' Is Win7 or above
    Anim_Step.Value = 1
Else
    Anim_Step.Value = 1 ' Is Win XP or lower, preserve colors whether we are on Win 10,8,7 or XP
    Frame4.BackColor = &HF0F0F0
    Frame1.BackColor = &HF0F0F0
    Frame2.BackColor = &HF0F0F0
    Frame3.BackColor = &HF0F0F0
    Frame5.BackColor = &HF0F0F0
    Anim_Step.BackColor = &HF0F0F0
End If

'test_Click (0)

L12.Caption = P12.Text
L11.Caption = P11.Text
L21.Caption = P21.Text
L22.Caption = P22.Text
sn.Caption = sntext.Text

Call draw_scale(3)
End Sub

Private Sub sntext_Change()
    sn.Caption = sntext.Text
End Sub


Function check_1()
    If Val(P11.Text) + Val(P12.Text) <> 1 Then MsgBox "Row 1 does not add up to 1 ! Probabilities on each row must add up to 1."
    If Val(P21.Text) + Val(P22.Text) <> 1 Then MsgBox "Row 2 does not add up to 1 ! Probabilities on each row must add up to 1."
End Function



Private Sub Solve_n_Click()
Dim oldxx, oldyy, xx, yy, xxc, yyc, oldn As Variant
Dim cicle, i As Integer

Solve_n.Enabled = False
Text1.Text = Empty
Center_patt.Cls
graf_val.Cls
Call check_1

oldxx = 0
oldyy = 0

cicle = Val(sntext.Text)

Call draw_scale(cicle)

For i = 0 To cicle

    x.Caption = (Val(v1.Text) * Val(P11.Text)) + (Val(v2.Text) * Val(P21.Text))
    y.Caption = (Val(v1.Text) * Val(P12.Text)) + (Val(v2.Text) * Val(P22.Text))

    If (v1.Text = x.Caption And v2.Text = y.Caption) Then
        Text1.Text = Text1.Text & "At [" & i & "] is the steady state vector !" & vbCrLf
        i = cicle
    Else
        v1.Text = x.Caption
        v2.Text = y.Caption
        '------------------------------------- Animate
        If Anim_Step.Value = 1 Then
            
            If Val(x.Caption) > Val(y.Caption) Then
                Anim_S0.Visible = True
                Anim_S1.Visible = False
            Else
                Anim_S0.Visible = False
                Anim_S1.Visible = True
            End If

            Call bar_function(x.Caption, y.Caption)
            Sleep (CLng(ASS.Text))
        End If
        '-------------------------------------
        
        If Val(x.Caption) > Val(y.Caption) Then
            Text1.Text = Text1.Text & "S[" & i + 1 & "] = [" & x.Caption & " - " & y.Caption & "]" & vbCrLf
        Else
            Text1.Text = Text1.Text & "R[" & i + 1 & "] = [" & x.Caption & " - " & y.Caption & "]" & vbCrLf
        End If
    End If

    xx = (graf_val.ScaleHeight / 100) * (100 * Val(x.Caption))
    yy = (graf_val.ScaleHeight / 100) * (100 * Val(y.Caption))

    xxc = (Center_patt.ScaleWidth / 100) * (100 * Val(x.Caption))
    yyc = (Center_patt.ScaleHeight / 100) * (100 * Val(y.Caption))
    Center_patt.Circle (xxc, Center_patt.ScaleHeight - yyc), 3, vbRed

    If i > 1 Then
        graf_val.Line (oldn, oldyy)-((graf_val.ScaleWidth / cicle) * i, yy), vbRed
        graf_val.Line (oldn, oldxx)-((graf_val.ScaleWidth / cicle) * i, xx), vbBlue
    End If

    oldn = (graf_val.ScaleWidth / cicle) * i

    oldxx = xx
    oldyy = yy

    DoEvents

Next i

Solve_n.Enabled = True
End Sub

Function draw_scale(ByVal k_stat As Integer)
Dim zx, qx, zy, qy As Variant
Dim sp As Variant
Dim i As Integer

Form1.Cls

'X axis on graf_val OBJ
'-------------------------------------
sp = graf_val.ScaleWidth / k_stat
For i = 0 To k_stat

    zx = graf_val.Left + (sp * i)
    qx = zx
    zy = graf_val.Top + graf_val.ScaleHeight
    qy = graf_val.Top + graf_val.ScaleHeight + 6

    If k_stat < 10 Then
        Form1.CurrentX = zx - 6
        Form1.CurrentY = qy
        Form1.Print "S" & i
    End If

    Form1.Line (zx, zy)-(qx, qy), &H808080

Next i
'-------------------------------------

'Y axis on graf_val OBJ
'-------------------------------------
    zx = graf_val.Left - 6
    qx = graf_val.Left
    zy = graf_val.Top
    qy = zy
    Form1.Line (zx, zy)-(qx, qy), &H808080
    Form1.CurrentX = zx - 7
    Form1.CurrentY = qy - 6
    Form1.Print "1"

    zx = graf_val.Left - 6
    qx = graf_val.Left
    zy = graf_val.Top + graf_val.ScaleHeight
    qy = zy
    Form1.Line (zx, zy)-(qx, qy), &H808080
    Form1.CurrentX = zx - 7
    Form1.CurrentY = qy - 6
    Form1.Print "0"
'-------------------------------------

'X axis on Center_patt OBJ
'-------------------------------------
sp = Center_patt.ScaleWidth / 4
For i = 0 To 4

    zx = Center_patt.Left + (sp * i)
    qx = zx
    zy = Center_patt.Top + Center_patt.ScaleHeight
    qy = Center_patt.Top + Center_patt.ScaleHeight + 6
    Form1.CurrentX = zx - 10
    Form1.CurrentY = qy
    
    If i = 0 Then Form1.Print 0
    
    If i = 1 Then
        Form1.Print ".25"
    End If
    
    If i = 2 Then
        Form1.Print ".5"
    End If
    
    If i = 3 Then
        Form1.Print ".75"
    End If
    
    If i = 4 Then Form1.Print 1
    
    Form1.Line (zx, zy)-(qx, qy), &H808080

Next i
'-------------------------------------

'Y axis on Center_patt OBJ
'-------------------------------------
sp = Center_patt.ScaleHeight / 4
For i = 0 To 4

    zx = Center_patt.Left - 6
    qx = Center_patt.Left
    zy = Center_patt.Top + (sp * i)
    qy = zy
    Form1.CurrentX = zx - 25
    Form1.CurrentY = qy - 6
    
    If i = 4 Then
        Form1.CurrentX = zx - 16
        Form1.Print 0
    End If
    
    If i = 3 Then
        Form1.Print ".25"
    End If
    
    If i = 2 Then
        Form1.CurrentX = zx - 16
        Form1.Print ".5"
    End If
    
    If i = 1 Then
        Form1.Print ".75"
    End If
    
    If i = 0 Then
        Form1.CurrentX = zx - 16
        Form1.Print 1
    End If
    
    Form1.Line (zx, zy)-(qx, qy), &H808080

Next i
'-------------------------------------
End Function


Function bar_function(ByVal x As String, ByVal y As String)
    Xp.Height = (top_graph.Height / 100) * (x * 100)
    Yp.Height = (top_graph.Height / 100) * (y * 100)
    Xp.Top = top_graph.Top + (top_graph.Height - Xp.Height)
    Yp.Top = top_graph.Top + (top_graph.Height - Yp.Height)
End Function



Private Sub P12_Change()
    L12.Caption = P12.Text
End Sub

Private Sub P11_Change()
    L11.Caption = P11.Text
End Sub

Private Sub P21_Change()
    L21.Caption = P21.Text
End Sub

Private Sub P22_Change()
    L22.Caption = P22.Text
End Sub

Private Sub test_Click(Index As Integer)

If Index = 0 Then
    v1.Text = "0.1"
    v2.Text = "0.9"
    P12.Text = "0.9"
    P11.Text = "0.1"
    P21.Text = "0.9"
    P22.Text = "0.1"
    sntext.Text = "20"
End If

If Index = 1 Then
    v1.Text = "0.1"
    v2.Text = "0.9"
    P11.Text = "0.5"
    P12.Text = "0.5"
    P21.Text = "0.9"
    P22.Text = "0.1"
    sntext.Text = "45"
End If

If Index = 2 Then
    v1.Text = "0.1"
    v2.Text = "0.9"
    P11.Text = "0.9"
    P12.Text = "0.1"
    P21.Text = "0.1"
    P22.Text = "0.9"
    sntext.Text = "40"
End If

If Index = 3 Then
    v1.Text = "0.1"
    v2.Text = "0.9"
    P11.Text = "0.5"
    P12.Text = "0.5"
    P21.Text = "0.1"
    P22.Text = "0.9"
    sntext.Text = "40"
End If

If Index = 4 Then
    v1.Text = "0.1"
    v2.Text = "0.9"
    P11.Text = "0.9"
    P12.Text = "0.1"
    P21.Text = "0.5"
    P22.Text = "0.5"
    sntext.Text = "40"
End If

If Index = 5 Then
    v1.Text = "1"
    v2.Text = "0"
    P11.Text = "0"
    P12.Text = "1"
    P21.Text = "1"
    P22.Text = "0"
    sntext.Text = "40"
End If

If Index = 6 Then
    v1.Text = "1"
    v2.Text = "0"
    P11.Text = "0.9"
    P12.Text = "0.1"
    P21.Text = "0.1"
    P22.Text = "0.5"
    sntext.Text = "40"
End If

If Index = 7 Then
    v1.Text = "0.1"
    v2.Text = "0.9"
    P11.Text = "0.9"
    P12.Text = "0.1"
    P21.Text = "0.1"
    P22.Text = "0.5"
    sntext.Text = "40"
End If

If Index = 8 Then
    v1.Text = "0.1"
    v2.Text = "0.9"
    P11.Text = "0.1"
    P12.Text = "0.9"
    P21.Text = "0.5"
    P22.Text = "0.1"
    sntext.Text = "40"
End If

If Index = 9 Then
    v1.Text = "0.1"
    v2.Text = "0.9"
    P11.Text = "0.1"
    P12.Text = "0.8"
    P21.Text = "0.9"
    P22.Text = "0.1"
    sntext.Text = "40"
End If

L12.Caption = P12.Text
L11.Caption = P11.Text
L21.Caption = P21.Text
L22.Caption = P22.Text
sn.Caption = sntext.Text
End Sub

