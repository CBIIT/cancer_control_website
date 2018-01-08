Imports System.Web.Services

Imports AESEncrypt.AESEncrypt

Partial Class IS_training_education_tidirc_application
    Inherits System.Web.UI.Page

    Protected Sub CustomValidator1_ServerValidate(source As Object, args As System.Web.UI.WebControls.ServerValidateEventArgs) Handles CustomValidator1.ServerValidate

        If UP_PersonalStatement_File.FileBytes.Length > 614400 Then
            args.IsValid = True
        Else
            args.IsValid= False
        End If

    End Sub

    Protected Sub BTN_UploadClicked_Click(sender As Object, e As EventArgs) Handles BTN_UploadClicked.Click

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

        Dim FirstName As String = AES_Encrypt(ClearXsideScriptingValue(TXT_FirstName.Text))
        Dim LastName As String = AES_Encrypt(ClearXsideScriptingValue(TXT_LastName.Text))
        Dim Title As String = AES_Encrypt(ClearXsideScriptingValue(TXT_Title.Text))
        Dim Organization As String = AES_Encrypt(ClearXsideScriptingValue(TXT_Organization.Text))
        Dim Address1 As String = AES_Encrypt(ClearXsideScriptingValue(TXT_Address1.Text))
        Dim Address2 As String = AES_Encrypt(ClearXsideScriptingValue(TXT_Address2.Text))
        Dim City As String = AES_Encrypt(ClearXsideScriptingValue(TXT_City.Text))
        Dim State As String = AES_Encrypt(ClearXsideScriptingValue(TXT_State.Text))
        Dim Zip As String = AES_Encrypt(ClearXsideScriptingValue(TXT_Zip.Text))
        Dim Phone As String = AES_Encrypt(ClearXsideScriptingValue(TXT_Phone.Text))
        Dim Email As String = AES_Encrypt(ClearXsideScriptingValue(TXT_Email.Text))

        Dim TempString As String = ""
        Dim BLNFirst As Boolean = True

        Dim AnItem As ListItem
        For Each AnItem In TXT_Race.Items
            If AnItem.Selected Then
                If BLNFirst <> True Then
                    TempString = TempString & ", "
                    BLNFirst = False
                End If
                TempString = TempString & ", " & AnItem.Text
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

        PersonalStatement_Filename = AES_Encrypt(ClearXsideScriptingValue(PersonalStatement_Filename))
        LettersOfRec_Filename = AES_Encrypt(ClearXsideScriptingValue(LettersOfRec_Filename))
        Curriculum_Filename = AES_Encrypt(ClearXsideScriptingValue(Curriculum_Filename))
        ConceptPaper_Filename = AES_Encrypt(ClearXsideScriptingValue(ConceptPaper_Filename))

        Dim str As String = WS.Insert_Application(FirstName, LastName, Title, Organization, Address1, Address2, City, State, Zip, Phone, Email, Race, Race_other, AreYouHispanic, Gender, InvestigatorLevel, FieldOfExpertise, VAAffiliation, VADetails, bytes_PersonalStatement_File, PersonalStatement_ContentType, PersonalStatement_Filename, bytes_LettersOfRec_File, LettersOfRec_ContentType, LettersOfRec_Filename, bytes_Curriculum_File, Curriculum_ContentType, Curriculum_Filename, bytes_ConceptPaper_File, ConceptPaper_ContentType, ConceptPaper_Filename)

        'Response.Write("<h1>==" & str & "=== added</h1>")
        Response.Redirect("~/IS/training-education/tidirc/thankyou.html")

    End Sub
End Class
