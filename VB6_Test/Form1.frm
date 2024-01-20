VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   4440
   ClientLeft      =   108
   ClientTop       =   432
   ClientWidth     =   6900
   LinkTopic       =   "Form1"
   ScaleHeight     =   4440
   ScaleWidth      =   6900
   StartUpPosition =   3  '窗口缺省
   Begin VB.TextBox Text1 
      Height          =   3492
      Left            =   120
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   2
      Top             =   120
      Width           =   6612
   End
   Begin VB.CommandButton Command2 
      Caption         =   "退 出"
      Height          =   492
      Left            =   5640
      TabIndex        =   1
      Top             =   3720
      Width           =   972
   End
   Begin VB.CommandButton Command1 
      Caption         =   "测 试"
      Height          =   492
      Left            =   4440
      TabIndex        =   0
      Top             =   3720
      Width           =   972
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim res As String
Private Sub Form_Load()
' Author: QQ 1720191365
' Email: dnns@foxmail.com
' Website: www.dnns.vip
' Created Time:2023-04
End Sub

Private Sub Command1_Click()
    Dim res As String, v As Long
    res = String$(255, 0)
    v = vgetWinrate(4, "345566689TTJQKAA222X", res)
    Text1.Text = "Winrate: " & res
    
    v = vinitCard(0, 0, "345566689TTJQKAA222X", "46T", "", res)
    Text1.Text = Text1.Text & vbCrLf & "initCard: " & res
    
    v = vgetCard(0, "", "", res)
    Text1.Text = Text1.Text & vbCrLf & "AI出牌: " & res
    
    v = vgetCard(0, "0", "A", res)
    Text1.Text = Text1.Text & vbCrLf & "AI出牌: " & res
    
    v = vgetCard(0, "0", "0", res)
    Text1.Text = Text1.Text & vbCrLf & "AI出牌: " & res
    
    v = vgetCard(0, "0", "JJ", res)
    Text1.Text = Text1.Text & vbCrLf & "AI出牌: " & res
     
    v = vgetCard(0, "0", "0", res)
    Text1.Text = Text1.Text & vbCrLf & "AI出牌: " & res
 
    v = vgetCard(0, "9TJQKA", "0", res)
    Text1.Text = Text1.Text & vbCrLf & "AI出牌: " & res
    
    v = vgetCard(0, "3", "8", res)
    Text1.Text = Text1.Text & vbCrLf & "AI出牌: " & res
        
    v = vgetCard(0, "0", "D", res)
    Text1.Text = Text1.Text & vbCrLf & "AI出牌: " & res
        
    v = vgetCard(0, "0", "77", res)
    Text1.Text = Text1.Text & vbCrLf & "AI出牌: " & res
        
    v = vgetCard(0, "0", "0", res)
    Text1.Text = Text1.Text & vbCrLf & "AI出牌: " & res
        
    v = vgetCard(0, "0", "0", res)
    Text1.Text = Text1.Text & vbCrLf & "AI出牌: " & res
    
End Sub

Private Sub Command2_Click()
    Unload Me
    End
End Sub
