Imports System.Globalization
Imports System.Net

Imports AESEncrypt.AESEncrypt

Partial Class IS_webinars
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

		System.Net.ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls12
		
        Dim WS As New ApplicationWebSerrvice.S_ApplicationsSoapClient

        Dim varID As String = Server.HtmlEncode(Request.QueryString("ID"))

        Dim DS As DataSet = WS.ImplementationScience_GetEvent(varID)
        'Dim DS As DataSet = WS.ImplementationScience_GetEvent("48")

        'For Each Row As DataRow In DS.Tables(0).Rows
        'Response.Write("<p><b style='color:red;'>PK_webinar---" & Row("PK_webinar").ToString() & "----</b>")
        'Response.Write("<br/><b style='color:red;'>topic---" & Row("topic").ToString() & "----</b>")
        'Response.Write("<br/><b style='color:red;'>topicdisplay---" & Row("topicdisplay").ToString() & "----</b></p>")
        'Response.Write("<p><b style='color:red;'>briefdesc---" & Row("briefdesc").ToString() & "----</b></p>")
        'Response.Write("<p><b style='color:red;'>eventdate---" & Row("eventdate").ToString() & "----</b></p>")
        'Response.Write("<p><b style='color:red;'>time_display---" & Row("time_display").ToString() & "----</b></p>")
        'Response.Write("<p><b style='color:red;'>datetime_start---" & Row("datetime_start").ToString() & "----</b></p>")

        'Response.Write("<p><b style='color:red;'>datetime_end---" & Row("datetime_end").ToString() & "----</b></p>")
        'Response.Write("<p><b style='color:red;'>dialinNumber---" & Row("dialinNumber").ToString() & "----</b></p>")
        'Response.Write("<p><b style='color:red;'>passcode---" & Row("passcode").ToString() & "----</b></p>")
        'Response.Write("<p><b style='color:red;'>MeetingID---" & Row("MeetingID").ToString() & "----</b></p>")
        'Response.Write("<p><b style='color:red;'>url---" & Row("url").ToString() & "----</b></p>")
        'Response.Write("<p><b style='color:red;'>MACurl---" & Row("MACurl").ToString() & "----</b></p>")
        'Response.Write("<p><b style='color:red;'>Location---" & Row("Location").ToString() & "----</b></p>")
        'Response.Write("<p><b style='color:red;'>allowregistration---" & Row("allowregistration").ToString() & "----</b></p>")
        'Response.Write("<p><b style='color:red;'>disable_date---" & Row("disable_date").ToString() & "----</b></p>")
        'Response.Write("<p><b style='color:red;'>ArchiveURL---" & Row("ArchiveURL").ToString() & "----</b></p>")
        'Response.Write("<p><b style='color:red;'>FK_EventType---" & Row("FK_EventType").ToString() & "----</b></p>")
        'Response.Write("<p><b style='color:red;'>WebX_EventNumber---" & Row("WebX_EventNumber").ToString() & "----</b></p>")
        'Response.Write("<p><b style='color:red;'>WebX_EventPassword---" & Row("WebX_EventPassword").ToString() & "----</b></p>")
        'Response.Write("<p><b style='color:red;'>WebX_EventAddress---" & Row("WebX_EventAddress").ToString() & "----</b></p>")
        'Response.Write("<p><b style='color:red;'>WebX_CallInTollFree---" & Row("WebX_CallInTollFree").ToString() & "----</b></p>")
        'Response.Write("<p><b style='color:red;'>WebX_CallIn_Toll---" & Row("WebX_CallIn_Toll").ToString() & "----</b></p>")
        'Response.Write("<p><b style='color:red;'>WebX_AccessCode---" & Row("WebX_AccessCode").ToString() & "----</b></p>")
        'Response.Write("<p><b style='color:red;'>FK_Category---" & Row("FK_Category").ToString() & "----</b></p>")
        'Next

        'WEBINAR_topic.Text = DS.Tables(0).Rows("topic").ToString()

        For Each Row As DataRow In DS.Tables(0).Rows

            WEBINAR_topic_title.Text = Row("topic").ToString()

        Next

    End Sub


    Protected Sub btnregister_Click(sender As Object, e As EventArgs) Handles btnregister.Click

        Dim WS As New ApplicationWebSerrvice.S_ApplicationsSoapClient

        Dim varID As String = Server.HtmlEncode(Request.QueryString("ID"))

        Dim strreturn As String = ""

        strreturn = WS.ImplementationScience_Register(varID, txtfirstname.Text, txtlastname.Text, txtemail.Text, txtorg.Text, txtmoi.Text, txtparticipants.Text, CBool(CK_Sub.Checked))

        If strreturn = "0" Then
            'Good Registration?
            'Response.Write("<h1>==" & strreturn & "=== added</h1>")
            Response.Redirect("~/IS/training-education/thank-you.aspx?ID=" & varID)
        ElseIf strreturn = "1" Then
            'Good Registration?
            'Response.Write("<h1>==" & strreturn & "=== added</h1>")
            Response.Redirect("~/IS/training-education/thank-you.aspx?ID=" & varID)
        Else
            'Response.Write("<h1>==" & strreturn & "=== added</h1>")
            Response.Redirect("~/IS/training-education/Webinars.aspx")
        End If

    End Sub
    Protected Sub BTN_Cancel_Click(sender As Object, e As EventArgs) Handles BTN_Cancel.Click
        Response.Redirect("~/IS/training-education/Webinars.aspx")
    End Sub
End Class