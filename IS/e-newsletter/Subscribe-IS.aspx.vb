
Partial Class brp_e_newsletter_Subscribe
    Inherits System.Web.UI.Page

    Protected Sub btnSubmit_Click(sender As Object, e As EventArgs) Handles btnSubmit.Click
        Dim ws As New LyrisWebService.SubscribeSoapClient

        Dim strreturn As String = ""

        If Me.RD_Sub.Checked Then
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

        End If

        If Me.RD_Unsub.Checked Then
            strreturn = ws.UNSubscribeTo_nci_implementationscience(txtemailTerms.Text)
            'Response.Write("RD_Unsub=checked" & returnvalue)

            If strreturn = "0" Then
                'Not Found  
                thankyou.InnerHtml = "<p class='alert alert-danger'>This email address was not found.</p>"
            ElseIf strreturn = "1" Then
                'Good UN-Susbscribe
                frm_SubScribe.Style.Add("display", "none")
                thankyou.InnerHtml = "<p class='alert alert-success'>This email address was successfully un-subscribed.</p>"
            Else
                '#3 - unknown reason for unsubscibe 
                thankyou.InnerHtml = "<p class='alert alert-danger'>Unknown error. Please try again.</p>"
            End If

        End If

    End Sub

    Protected Sub CustomValidator1_ServerValidate(source As Object, args As System.Web.UI.WebControls.ServerValidateEventArgs) Handles CustomValidator1.ServerValidate
        If Me.RD_Sub.Checked Then
            args.IsValid = True
        ElseIf Me.RD_Unsub.Checked Then
            args.IsValid = True
        Else
            args.IsValid = False
        End If
    End Sub

End Class



