VERSION 5.00
Begin VB.Form frmMain 
   AutoRedraw      =   -1  'True
   BackColor       =   &H00FF00FF&
   BorderStyle     =   0  'None
   Caption         =   "Form1"
   ClientHeight    =   1290
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   1620
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Picture         =   "bg.frx":0000
   ScaleHeight     =   86
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   108
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdExit 
      Caption         =   "X"
      Height          =   195
      Left            =   1200
      TabIndex        =   0
      Top             =   240
      Width           =   255
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
' This code was written by Chris Yates.  I am freely distributing this code under one condition.
' If you use this code in your program please give me credit and e-mail me (cyates@neo.rr.com) and
' tell me about your program.  Thanks, and enjoy.


Dim CurRgn, TempRgn As Long  ' Region variables

Private Sub cmdExit_Click()
Unload Me ' Exit the program
End Sub

Private Sub Form_Load()

AutoFormShape frmMain, RGB(255, 0, 255)  ' Shape the form so that all areas that are bright purple become transparent.

End Sub

Private Sub Form_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
ReleaseCapture  ' This releases the mouse communication with the form so it can communicate with the operating system to move the form
Result& = SendMessage(Me.hwnd, &H112, &HF012, 0)  ' This tells the OS to pick up the form to be moved
End Sub
