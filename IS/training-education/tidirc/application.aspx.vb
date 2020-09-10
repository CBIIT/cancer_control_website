Imports System.Web.Services
Imports System.Net

Imports AESEncrypt.AESEncrypt

Partial Class IS_training_education_tidirc_application
    Inherits System.Web.UI.Page

    Protected Sub CustomValidator1_ServerValidate(source As Object, args As System.Web.UI.WebControls.ServerValidateEventArgs) Handles CustomValidator1.ServerValidate

        If UP_PersonalStatement_File.FileBytes.Length > 1024000 Then
            args.IsValid = False
        Else
            args.IsValid = True
        End If

    End Sub

    Protected Sub CustomValidator2_ServerValidate(source As Object, args As System.Web.UI.WebControls.ServerValidateEventArgs) Handles CustomValidator2.ServerValidate

        If UP_LettersOfRec_File.FileBytes.Length > 1024000 Then
            args.IsValid = False
        Else
            args.IsValid = True
        End If

    End Sub

    Protected Sub CustomValidator3_ServerValidate(source As Object, args As System.Web.UI.WebControls.ServerValidateEventArgs) Handles CustomValidator3.ServerValidate

        If UP_Curriculum_File.FileBytes.Length > 1024000 Then
            args.IsValid = False
        Else
            args.IsValid = True
        End If

    End Sub

    Protected Sub CustomValidator4_ServerValidate(source As Object, args As System.Web.UI.WebControls.ServerValidateEventArgs) Handles CustomValidator4.ServerValidate

        If UP_ConceptPaper_File.FileBytes.Length > 1024000 Then
            args.IsValid = False
        Else
            args.IsValid = True
        End If

    End Sub

    Protected Sub CustomValidator5_ServerValidate(source As Object, args As ServerValidateEventArgs) Handles CustomValidator5.ServerValidate
        Dim intCount As Integer = 0

        For Each AnItem In TXT_Continuum.Items
            If AnItem.Selected Then
                intCount += 1
            End If
        Next

        If intCount > 2 Then
            args.IsValid = False
        Else
            args.IsValid = True
        End If
    End Sub

    Protected Sub CustomValidator6_ServerValidate(source As Object, args As ServerValidateEventArgs) Handles CustomValidator6.ServerValidate
        Dim intCount As Integer = 0

        For Each AnItem In TXT_Sector.Items
            If AnItem.Selected Then
                intCount += 1
            End If
        Next

        If intCount > 2 Then
            args.IsValid = False
        Else
            args.IsValid = True
        End If
    End Sub

    Protected Sub CustomValidator7_ServerValidate(source As Object, args As ServerValidateEventArgs) Handles CustomValidator7.ServerValidate
        Dim intCount As Integer = 0

        For Each AnItem In TXT_Populations.Items
            If AnItem.Selected Then
                intCount += 1
            End If
        Next

        If intCount > 2 Then
            args.IsValid = False
        Else
            args.IsValid = True
        End If
    End Sub

    Protected Sub BTN_UploadClicked_Click(sender As Object, e As EventArgs) Handles BTN_UploadClicked.Click

        System.Net.ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls12
		
        If Page.IsValid Then

            Dim bytes_PersonalStatement_File As Byte()
            Dim PersonalStatement_Filename As String = Path.GetFileName(UP_PersonalStatement_File.PostedFile.FileName)
            Dim PersonalStatement_ContentType As String = UP_PersonalStatement_File.PostedFile.ContentType
            Using fs As Stream = UP_PersonalStatement_File.PostedFile.InputStream
                Using br As New BinaryReader(fs)
                    'Dim bytes As Byte() = br.ReadBytes(DirectCast(fs.Length, Long))
                    bytes_PersonalStatement_File = br.ReadBytes(DirectCast(fs.Length, Long))
                End Using
            End Using

            Dim bytes_LettersOfRec_File As Byte()
            Dim LettersOfRec_Filename As String = Path.GetFileName(UP_LettersOfRec_File.PostedFile.FileName)
            Dim LettersOfRec_ContentType As String = UP_LettersOfRec_File.PostedFile.ContentType
            Using fs As Stream = UP_LettersOfRec_File.PostedFile.InputStream
                Using br As New BinaryReader(fs)
                    'Dim bytes As Byte() = br.ReadBytes(DirectCast(fs.Length, Long))
                    bytes_LettersOfRec_File = br.ReadBytes(DirectCast(fs.Length, Long))
                End Using
            End Using

            Dim bytes_Curriculum_File As Byte()
            Dim Curriculum_Filename As String = Path.GetFileName(UP_Curriculum_File.PostedFile.FileName)
            Dim Curriculum_ContentType As String = UP_Curriculum_File.PostedFile.ContentType
            Using fs As Stream = UP_Curriculum_File.PostedFile.InputStream
                Using br As New BinaryReader(fs)
                    'Dim bytes As Byte() = br.ReadBytes(DirectCast(fs.Length, Long))
                    bytes_Curriculum_File = br.ReadBytes(DirectCast(fs.Length, Long))
                End Using
            End Using

            Dim bytes_ConceptPaper_File As Byte()
            Dim ConceptPaper_Filename As String = Path.GetFileName(UP_ConceptPaper_File.PostedFile.FileName)
            Dim ConceptPaper_ContentType As String = UP_ConceptPaper_File.PostedFile.ContentType
            Using fs As Stream = UP_ConceptPaper_File.PostedFile.InputStream
                Using br As New BinaryReader(fs)
                    'Dim bytes As Byte() = br.ReadBytes(DirectCast(fs.Length, Long))
                    bytes_ConceptPaper_File = br.ReadBytes(DirectCast(fs.Length, Long))
                End Using
            End Using

            Dim WS As New ApplicationWebSerrvice.S_ApplicationsSoapClient

            'FK_Event is to indicate what year this is for, 2=2019, 3=2020, etc.
            Dim FK_Event As String = "3"

            Dim FirstName As String = AES_Encrypt(ClearXsideScriptingValue(TXT_FirstName.Text))
            Dim LastName As String = AES_Encrypt(ClearXsideScriptingValue(TXT_LastName.Text))
            Dim Title As String = AES_Encrypt(ClearXsideScriptingValue(TXT_Title.Text))
            Dim DocLevelCredentials As String = AES_Encrypt(ClearXsideScriptingValue(TXT_DocLevelCredentials.Text))
            Dim Organization As String = AES_Encrypt(ClearXsideScriptingValue(TXT_Organization.Text))
            Dim Address1 As String = AES_Encrypt(ClearXsideScriptingValue(TXT_Address1.Text))
            Dim Address2 As String = AES_Encrypt(ClearXsideScriptingValue(TXT_Address2.Text))
            Dim City As String = AES_Encrypt(ClearXsideScriptingValue(TXT_City.Text))
            Dim State As String = AES_Encrypt(ClearXsideScriptingValue(TXT_State.Text))
            Dim Zip As String = AES_Encrypt(ClearXsideScriptingValue(TXT_Zip.Text))
            Dim Country As String = AES_Encrypt(ClearXsideScriptingValue(TXT_Country.Text))
            Dim Phone As String = AES_Encrypt(ClearXsideScriptingValue(TXT_Phone.Text))
            Dim Email As String = AES_Encrypt(ClearXsideScriptingValue(TXT_Email.Text))

            Dim TempString As String = ""
            Dim BLNFirst As Boolean = True

            'Checkbox list
            Dim AnItem As ListItem
            For Each AnItem In TXT_Race.Items
                If AnItem.Selected Then
                    If BLNFirst = True Then
                        TempString = AnItem.Text
                        BLNFirst = False
                    Else
                        TempString = TempString & ", " & AnItem.Text
                    End If
                End If
            Next

            Dim Race As String = AES_Encrypt(ClearXsideScriptingValue(TempString))
            Dim Race_other As String = AES_Encrypt(ClearXsideScriptingValue(TXT_Race_other.Text))
            Dim AreYouHispanic As String = AES_Encrypt(ClearXsideScriptingValue(TXT_AreYouHispanic.Text))
            Dim Gender As String = AES_Encrypt(ClearXsideScriptingValue(TXT_Gender.Text))
            Dim InvestigatorLevel As String = AES_Encrypt(ClearXsideScriptingValue(TXT_InvestigatorLevel.Text))
            Dim FieldOfExpertise As String = AES_Encrypt(ClearXsideScriptingValue(TXT_FieldOfExpertise.Text))
            'Client requested VAAffiliation and VADetails be removed
            Dim VAAffiliation As String = AES_Encrypt(ClearXsideScriptingValue(""))
            Dim VADetails As String = AES_Encrypt(ClearXsideScriptingValue(""))
            Dim FOE As String

            'FOE "field-of-expertise" after ConceptPaper_Filename, but big long string

            TempString = ""

            Dim TempString1 As String = ""
            BLNFirst = True
            For Each AnItem In TXT_Continuum.Items
                If AnItem.Selected Then
                    If BLNFirst = True Then
                        TempString1 = AnItem.Text
                        BLNFirst = False
                    Else
                        TempString1 = TempString1 & ", " & AnItem.Text
                    End If
                End If
            Next

            If TempString1 <> "" Then
                TempString &= " --CONTINUUM-- " & TempString1
            End If

            TempString1 = ""
            BLNFirst = True
            For Each AnItem In TXT_Populations.Items
                If AnItem.Selected Then
                    If BLNFirst = True Then
                        TempString1 = AnItem.Text
                        BLNFirst = False
                    Else
                        TempString1 = TempString1 & ", " & AnItem.Text
                    End If
                End If
            Next

            If TempString1 <> "" Then
                TempString &= " --POPULATIONS-- " & TempString1
            End If

            TempString1 = ""
            BLNFirst = True
            For Each AnItem In TXT_Sector.Items
                If AnItem.Selected Then
                    If BLNFirst = True Then
                        TempString1 = AnItem.Text
                        BLNFirst = False
                    Else
                        TempString1 = TempString1 & ", " & AnItem.Text
                    End If
                End If
            Next

            If TempString1 <> "" Then
                TempString &= " --SECTOR-- " & TempString1
            End If

            FOE = AES_Encrypt(ClearXsideScriptingValue(TempString))

            PersonalStatement_Filename = AES_Encrypt(ClearXsideScriptingValue(PersonalStatement_Filename))
            LettersOfRec_Filename = AES_Encrypt(ClearXsideScriptingValue(LettersOfRec_Filename))
            Curriculum_Filename = AES_Encrypt(ClearXsideScriptingValue(Curriculum_Filename))
            ConceptPaper_Filename = AES_Encrypt(ClearXsideScriptingValue(ConceptPaper_Filename))

            Dim str As String = WS.Insert_Application(FirstName, LastName, Title, Organization, Address1, Address2, City, State, Zip, Phone, Email, Race, Race_other, AreYouHispanic, Gender, InvestigatorLevel, FieldOfExpertise, VAAffiliation, VADetails, bytes_PersonalStatement_File, PersonalStatement_ContentType, PersonalStatement_Filename, bytes_LettersOfRec_File, LettersOfRec_ContentType, LettersOfRec_Filename, bytes_Curriculum_File, Curriculum_ContentType, Curriculum_Filename, bytes_ConceptPaper_File, ConceptPaper_ContentType, ConceptPaper_Filename, FOE, Country, FK_Event, DocLevelCredentials)

            'Response.Write("<h1>==" & str & "===added</h1>")
            Response.Redirect("~/IS/training-education/tidirc/thankyou.html")

            'Error handling?
            'If strreturn = "0" Then
            'Good Registration?
            'Response.Write("<h1>==" & strreturn & "=== added</h1>")
            'Response.Redirect("~/IS/training-education/tidirc/thankyou.html")
            'Else
            'Response.Write("<h1>==" & strreturn & "=== added</h1>")
            'Response.Redirect("~/IS/training-education/tidirc/")
            'End If

        End If

    End Sub

    Protected Sub BTN_Cancel_Click(sender As Object, e As EventArgs) Handles BTN_Cancel.Click
        Response.Redirect("~/IS/training-education/tidirc/index.html")
    End Sub

End Class
