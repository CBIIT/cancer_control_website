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

    Protected Sub CustomValidator1_ServerValidate(source As Object, args As System.Web.UI.WebControls.ServerValidateEventArgs) Handles CustomValidator1.ServerValidate

        If UP_HeadShot_File.FileBytes.Length > 614400 Then
            args.IsValid = True
        Else
            args.IsValid = False
        End If

    End Sub

    Protected Sub BTN_UploadClicked_Click(sender As Object, e As EventArgs) Handles BTN_UploadClicked.Click

        Dim strResult As String = ""

        Dim bytes_Headshot_File As Byte()
        Dim Headshot_Filename As String = Path.GetFileName(UP_HeadShot_File.PostedFile.FileName)
        Dim Headshot_ContentType As String = UP_HeadShot_File.PostedFile.ContentType
        Using fs As Stream = UP_HeadShot_File.PostedFile.InputStream
            Using br As New BinaryReader(fs)
                'Dim bytes As Byte() = br.ReadBytes(DirectCast(fs.Length, Long))
                bytes_Headshot_File = br.ReadBytes(DirectCast(fs.Length, Long))
            End Using
        End Using

        System.Net.ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls12

        Dim WS As New ApplicationWebSerrvice.S_ApplicationsSoapClient

        Dim TXT_Address1 As String = ""
        Dim TXT_Address2 As String = ""
        Dim TXT_City As String = ""
        Dim TXT_State As String = ""
        Dim TXT_Zip As String = ""
        Dim RDList_AttendingDinner = "False"
        Dim RDList_Presentation_Consent = "False"
        Dim BoxLunchDay1 As String = ""
        Dim BeverageDay1 As String = ""
        Dim SandwichDay1 As String = ""
        Dim CheeseDay1 As String = ""
        Dim SnackDay1 As String = ""
        Dim BoxLunchDay2 As String = ""
        Dim BeverageDay2 As String = ""
        Dim SandwichDay2 As String = ""
        Dim CheeseDay2 As String = ""
        Dim SnackDay2 As String = ""

        Dim FK_Event_String As String = "1"
        Dim EmailTitle As String = "Cognition and Medical Image Perception"
        Dim EmailDate As String = "September 12-13, 2019"

        If RDList_BoxLunchDay1.Text = "TRUE" Then
            BoxLunchDay1 = RDList_BoxLunchDay1.Text
            BeverageDay1 = DDList_BeverageDay1.Text
            SandwichDay1 = DDList_SandwichDay1.Text
            CheeseDay1 = DDList_CheeseDay1.Text
        Else
            BoxLunchDay1 = "N/A"
            BeverageDay1 = "N/A"
            SandwichDay1 = "N/A"
            CheeseDay1 = "N/A"
        End If
        SnackDay1 = "N/A"

        BoxLunchDay2 = "FALSE"
        BeverageDay2 = "N/A"
        SandwichDay2 = "N/A"
        CheeseDay2 = "N/A"
        SnackDay2 = "N/A"
        CheeseDay2 = "N/A"

        strResult = WS.ThinkTank_Registration(FK_Event_String, AES_Encrypt(TXT_FirstName.Text), AES_Encrypt(TXT_LastName.Text), AES_Encrypt(TXT_Degree.Text), AES_Encrypt(TXT_Title.Text), AES_Encrypt(TXT_Organization.Text), AES_Encrypt(TXT_Address1), AES_Encrypt(TXT_Address2), AES_Encrypt(TXT_City), AES_Encrypt(TXT_State), AES_Encrypt(TXT_Zip), AES_Encrypt(TXT_Phone.Text), AES_Encrypt(TXT_Email.Text), AES_Encrypt(TXT_AA_Name.Text), AES_Encrypt(TXT_AA_Phone.Text), AES_Encrypt(TXT_AA_Email.Text), AES_Encrypt(TXT_Bio.Text), CBool(RDList_AttendingDinner), CBool(RDList_Photo_Consent.SelectedValue), CBool(RDList_Presentation_Consent), bytes_Headshot_File, Headshot_ContentType, Headshot_Filename, BoxLunchDay1, BeverageDay1, SandwichDay1, CheeseDay1, SnackDay1, BoxLunchDay2, BeverageDay2, SandwichDay2, CheeseDay2, SnackDay2, EmailTitle, EmailDate, CBool(RDList_AttendingHappyHour.SelectedValue))

        'Response.Write("<h1>==" & strResult & "=== added</h1>")
        Response.Redirect("~/events/think-tank-2019/thankyou.html")

    End Sub

    Protected Sub BTN_Cancel_Click(sender As Object, e As EventArgs) Handles BTN_Cancel.Click
        Response.Redirect("~/events/think-tank-2019/")
    End Sub

End Class
