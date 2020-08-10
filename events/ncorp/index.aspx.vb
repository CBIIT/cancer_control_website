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
        Dim MiddleInitial As String = ""
        Dim Phone As String = ""

        Dim TempString As String = ""
        Dim BLNFirst As Boolean = True

        'Checkbox list
        Dim AnItem As ListItem
        For Each AnItem In DDList_Program.Items
            If AnItem.Selected Then
                If BLNFirst = True Then
                    TempString = AnItem.Text
                    BLNFirst = False
                Else
                    TempString = TempString & "; " & AnItem.Text
                End If
            End If
        Next
        Dim Program As String = TempString

        'DDList_Role
        TempString = ""
        BLNFirst = True
        For Each AnItem In DDList_Role.Items
            If AnItem.Selected Then
                If BLNFirst = True Then
                    TempString = AnItem.Text
                    BLNFirst = False
                Else
                    TempString = TempString & "; " & AnItem.Text
                End If
            End If
        Next
        Dim Role As String = TempString

        TempString = ""
        BLNFirst = True
        For Each AnItem In RDList_MeetingParticipation.Items
            If AnItem.Selected Then
                If BLNFirst = True Then
                    TempString = AnItem.Text
                    BLNFirst = False
                Else
                    TempString = TempString & "; " & AnItem.Text
                End If
            End If
        Next
        Dim MeetingParticipation As String = TempString

        TempString = ""
        BLNFirst = True
        For Each AnItem In TXT_Title.Items
            If AnItem.Selected Then
                If BLNFirst = True Then
                    TempString = AnItem.Text
                    BLNFirst = False
                Else
                    TempString = TempString & "; " & AnItem.Text
                End If
            End If
        Next
        Dim Title As String = TempString

        strResult = WS.NCORP_Registration(AES_Encrypt(TXT_FirstName.Text), AES_Encrypt(TXT_LastName.Text), AES_Encrypt(Title), AES_Encrypt(TXT_Title_Other.Text), AES_Encrypt(TXT_Email.Text), AES_Encrypt(Program), AES_Encrypt(TXT_Program_Other.Text), AES_Encrypt(Role), AES_Encrypt(TXT_Role_Other.Text), AES_Encrypt(TXT_Affiliate.Text), AES_Encrypt(MeetingParticipation))

        'Response.Write("<h1>==" & strResult & "=== added</h1>")
        Response.Redirect("~/events/ncorp/thankyou.html")

    End Sub

End Class
