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

        strResult = WS.CatchmentAreasMeeting_InsertPoster(AES_Encrypt(TXT_PosterTitle.Text), AES_Encrypt(TXT_AuthorList.Text), AES_Encrypt(TXT_PresentingAuthor.Text), AES_Encrypt(TXT_PresentingAuthorEmail.Text), AES_Encrypt(DDList_PresentingAuthorInstitution.Text), AES_Encrypt(TXT_PresentingAuthorInstitution_Other.Text), AES_Encrypt(TXT_CorrespondingAuthor.Text), AES_Encrypt(TXT_CorrespondingAuthorEmail.Text), AES_Encrypt(DDList_CorrespondingAuthorInstitution.Text), AES_Encrypt(TXT_CorrespondingAuthorInstitution_Other.Text), AES_Encrypt(TXT_Abstract.Text))

        'Response.Write("<h1>==" & strResult & "=== added</h1>")
        Response.Redirect("~/brp/events/catchment-meeting/thankyouposter.html")

    End Sub

    Protected Sub BTN_Cancel_Click(sender As Object, e As EventArgs) Handles BTN_Cancel.Click
        Response.Redirect("~/brp/events/catchment-meeting/")
    End Sub

End Class
