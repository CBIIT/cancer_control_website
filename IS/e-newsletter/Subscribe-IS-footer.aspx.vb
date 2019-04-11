
Partial Class brp_e_newsletter_Subscribe
    Inherits System.Web.UI.Page

    Protected Sub btnSubmit_Click(sender As Object, e As EventArgs) Handles btnSubmit.Click

        System.Net.ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls12

        Dim ws As New LyrisWebService.SubscribeSoapClient

        Dim strreturn As String = ""

        strreturn = ws.SubscribeTo_nci_implementationscience(txtemailTerms.Text)
        'Response.Write("RD_Sub=checked" & returnvalue)

        If strreturn = "1" Then
            'Good Susbscribe
            frm_SubScribe.Style.Add("display", "none")
            thankyou.InnerHtml = "<p class='alert alert-success'>Email address was successfully subscribed.</p>"
        ElseIf strreturn = "2" Then
            'Already a member
            thankyou.InnerHtml = "<p class='alert alert-danger'>This email address is already registered.</p>"
        End If

    End Sub

End Class



