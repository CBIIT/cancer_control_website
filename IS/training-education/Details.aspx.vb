Imports System.Data
Imports System.Data.SqlClient
Imports System.Net

Partial Class IS_webinars
    Inherits System.Web.UI.Page

    Dim BLN_FirstLoop As Boolean

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

		System.Net.ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls12
		
        Dim WS As New ApplicationWebSerrvice.S_ApplicationsSoapClient

        Dim varID As String

        If Not Page.IsPostBack Then

            If Request.QueryString("ID") Is Nothing Then
                Response.Redirect("~/IS/training-education/Webinars.aspx")
            Else
                Try
                    varID = CInt(Server.HtmlEncode(Request.QueryString("ID")))
                Catch objError As Exception
                    Response.Redirect("~/IS/training-education/Webinars.aspx")
                End Try
            End If

            WS.ImplementationScience_ArchiveTracking(varID)

            Dim DS As DataSet = WS.ImplementationScience_GetEvent(varID)
            'Dim DS As DataSet = WS.ImplementationScience_GetEvent("48")

            'For Each Row As DataRow In DS.Tables(0).Rows
            'Response.Write("<p><b style='color:red;'>DisplayOnSite---" & Row("DisplayOnSite").ToString() & " ----</b>")
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

                If Row("DisplayOnSite").ToString() = "False" Then
                    Response.Redirect("~/IS/training-education/Webinars.aspx")
                Else

                End If

                'If Row("FK_Series").ToString() = "1" Then
                'IMG_Series.ImageUrl = "/IS/images/is-webinar-text-bottom-regular.png"
                'IMG_Series.AlternateText = "Implementation Science Webinars"
                'IMG_Series.CssClass = "img-responsive"
                'Else
                'IMG_Series.ImageUrl = "/IS/images/research-to-reality-logo.png"
                'IMG_Series.AlternateText = "Research 2 Reality"
                'IMG_Series.CssClass = "img-responsive"
                'End If

                WEBINAR_topic_title.Text = Row("topic").ToString()
                WEBINAR_topic_breadcrumb.Text = WEBINAR_topic_title.Text
                WEBINAR_topic_pagetitle.Text = WEBINAR_topic_title.Text
                WEBINAR_briefdesc.Text = Row("briefdesc").ToString()

                Dim eventstartdate As DateTime = Convert.ToDateTime(Row("datetime_start").ToString())
                'Dim eventenddate As DateTime = Convert.ToDateTime(Row("datetime_end").ToString())

                WEBINAR_time.Text = Row("time_display").ToString()

                WEBINAR_eventstartdate.Text = eventstartdate.ToString("dddd, MMMM dd, yyyy")
                'WEBINAR_eventenddate.Text = eventstartdate.ToString("dddd, MMMM dd, yyyy")

                WEBINAR_Registration_ID.Text = Row("PK_webinar").ToString()
                WEBINAR_Category.Text = Row("Category").ToString()
                WEBINAR_ArchiveURL.Text = Row("ArchiveURL").ToString()
                If (Row("ArchiveURL").ToString() <> "") And (eventstartdate < DateTime.Now) Then
                    PLC_ArchiveRecording.Visible = True
                    PLC_ArchiveRecording2.Visible = True
                Else
                    PLC_ArchiveRecording.Visible = False
                    PLC_ArchiveRecording2.Visible = False
                End If
                WEBINAR_ArchiveURL2.Text = WEBINAR_ArchiveURL.Text

                If eventstartdate > DateTime.Now Then
                    PLC_Registration.Visible = True
                Else
                    PLC_Registration.Visible = False
                End If

                If WEBINAR_Category.Text <> "" Then
                    PLC_Category.Visible = True
                Else
                    PLC_Category.Visible = False
                End If

            Next

            'Dim FilterString As String = "FK_Webinar > 0"

            Dim objDataSet As DataSet = WS.ImplementationScience_list_Presenters_ForEvent(varID)

            Dim objDataView As New DataView

            'objDataAdapter.Fill(objDataSet, "NewCurrentList")
            objDataView = objDataSet.Tables(0).DefaultView
            'objDataView.RowFilter = FilterString
            BLN_FirstLoop = True
            RPTR_Presenters.DataSource = objDataView
            RPTR_Presenters.DataBind()

            If RPTR_Presenters.Items.Count > 0 Then
                PLC_Presenters.Visible = True
            Else
                PLC_Presenters.Visible = False
            End If


        End If

    End Sub

    Function GetPresenters(FK_Webinar As String) As DataView
        BLN_FirstLoop = True

        Dim WS As New ApplicationWebSerrvice.S_ApplicationsSoapClient
        Dim objDataSetLoop As New DataSet()
        objDataSetLoop = WS.ImplementationScience_list_Presenters_ForEvent(FK_Webinar)
        Return objDataSetLoop.Tables(0).DefaultView
    End Function

    Function SetComma(StrPresenter As String) As String

        If BLN_FirstLoop = True Then
            BLN_FirstLoop = False
            Return StrPresenter
        Else
            Return "; " & StrPresenter
        End If
    End Function

    Function GetFalue(StrValue As String) As String
        If StrValue = True Then
            Return StrValue
        Else
            Return "None"
        End If
    End Function

End Class