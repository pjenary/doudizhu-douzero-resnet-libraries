Attribute VB_Name = "Module1"
Option Explicit

Public Declare Function vgetWinrate Lib "../Dnn.dll" (ByVal types As Long, ByVal myCards As String, ByVal res As String) As Long
Public Declare Function vinitCard Lib "../Dnn.dll" (ByVal id As Long, ByVal play As Long, ByVal myCards As String, ByVal threeCards As String, ByVal passWord As String, ByVal res As String) As Long
Public Declare Function vgetCard Lib "../Dnn.dll" (ByVal id As Long, ByVal nextCards As String, ByVal prevCards As String, ByVal res As String) As Long
