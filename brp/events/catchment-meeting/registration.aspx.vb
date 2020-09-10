Imports Microsoft.VisualBasic
Imports System
Imports System.Configuration
Imports System.Data.SqlClient
Imports System.Data
Imports System.Globalization
Imports System.IO
Imports System.Net

Imports AESEncrypt.AESEncrypt


Partial Class CAA_Testing_testReg
    Inherits System.Web.UI.Page

    Protected Sub BTN_UploadClicked_Click(sender As Object, e As EventArgs) Handles BTN_UploadClicked.Click

        Dim strResult As String = ""

        System.Net.ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls12

        Dim WS As New ApplicationWebSerrvice.S_ApplicationsSoapClient

        'Dim FK_Event_String As String = "1"
        'Dim EmailTitle As String = ""
        'Dim EmailDate As String = ""

        Dim Institution_Other As String = ""

        strResult = WS.CatchmentAreasMeeting_Registration(AES_Encrypt(TXT_FirstName.Text), AES_Encrypt(TXT_MiddleInitial.Text), AES_Encrypt(TXT_LastName.Text), AES_Encrypt(TXT_Degree.Text), AES_Encrypt(DDList_Organization.Text), AES_Encrypt(TXT_Institution_Other.Text), AES_Encrypt(TXT_Email.Text), AES_Encrypt(TXT_Phone.Text))

        'Response.Write("<h1>==" & strResult & "=== added</h1>")
        Response.Redirect("~/brp/events/catchment-meeting/thankyou.html")

    End Sub

    Protected Sub BTN_Cancel_Click(sender As Object, e As EventArgs) Handles BTN_Cancel.Click
        Response.Redirect("~/brp/events/catchment-meeting/")
    End Sub

End Class
