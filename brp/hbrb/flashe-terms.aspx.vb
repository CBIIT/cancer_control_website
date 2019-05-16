
Partial Class terms
    Inherits System.Web.UI.Page


    Public strbody As String = ""
    Dim AcceptTerm As Boolean = False

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        btnSubmit.Attributes.Add("onclick", "validateForm();")
        Me.MaintainScrollPositionOnPostBack = True
    End Sub

    Protected Sub btnSubmit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSubmit.Click
        If Page.IsValid Then
            If Me.chkAcceptTerm.Checked Then
                AcceptTerm = True
                Session("AcceptTerm") = True
                Sendemail()
            Else
                AcceptTerm = False
                Session("AcceptTerm") = False
                Exit Sub
            End If
        End If
    End Sub

    Private Sub Sendemail()
        Try
            Dim strsubject As String = ""
            Dim hostSt_crn As String = HttpContext.Current.Request.Url.Host

            strbody += "Email: " + txtemailTerms.Text + "<br/>"

            Dim MailObj As New System.Net.Mail.SmtpClient
            Dim MailMessage As New System.Net.Mail.MailMessage

            MailMessage.To.Clear()
            MailMessage.To.Add("christopher.deloose@nih.gov")

            'MailObj.Host = System.Configuration.ConfigurationManager.AppSettings("EmailHost").ToString
            MailObj.Host = "mailfwd.nih.gov"
            'MailObj.Host = "localhost"

            'MailMessage.From.Clear()
            MailMessage.From = New System.Net.Mail.MailAddress(txtemailTerms.Text)
            MailMessage.Subject = "FLASHE Data Terms of Use"
            MailMessage.IsBodyHtml = True
            MailMessage.Body = strbody
            MailObj.Send(MailMessage)
            'Response.Write("<h1>Sent</h1>")

            Response.Redirect("flashe-files.aspx")
        Catch ex As Exception
            Response.Redirect("flashe-files.aspx")
            'Response.Write("<h1>" & ex.ToString & "</h1>")

        End Try
    End Sub


    Protected Sub CustomValidator1_ServerValidate(source As Object, args As System.Web.UI.WebControls.ServerValidateEventArgs) Handles CustomValidator1.ServerValidate
        If chkAcceptTerm.Checked Then
            args.IsValid = True
        Else
            args.IsValid = False
        End If
    End Sub
End Class
