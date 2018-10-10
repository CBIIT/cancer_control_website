Imports System.Data
Imports System.Data.SqlClient
Imports System.Globalization

Partial Class IS_webinars
    Inherits System.Web.UI.Page

    Dim BLN_FirstLoop As Boolean

    Dim LIT_MeetingID As String = ""

    Dim LBL_SeminarName As String = ""
    Dim LIT_Starttime As String = ""
    Dim LIT_endtime As String = ""
    Dim LIT_Location As String = ""
    Dim LIT_DialIn As String = ""
    Dim LIT_Passcode As String = ""

    Dim LIT_FK_EventType As String = ""
    Dim LIT_WebX_EventNumber As String = ""
    Dim LIT_WebX_EventPassword As String = ""
    Dim LIT_WebX_EventAddress As String = ""
    Dim LIT_WebX_CallInTollFree As String = ""
    Dim LIT_WebX_CallIn_Toll As String = ""
    Dim LIT_WebX_AccessCode As String = ""
    Dim LIT_URL As String = ""
    Dim LIT_MACurl As String = ""

    Dim LBL_Date As String = ""
    Dim LBL_Time As String = ""


    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        Dim WS As New ApplicationWebSerrvice.S_ApplicationsSoapClient

        Dim varID As String = Server.HtmlEncode(Request.QueryString("ID"))

        Dim DS As DataSet = WS.ImplementationScience_GetEvent(varID)
        'Dim DS As DataSet = WS.ImplementationScience_GetEvent("48")

        For Each Row As DataRow In DS.Tables(0).Rows
            'Response.Write("<p><b style='color:red;'>PK_webinar---" & Row("PK_webinar").ToString() & "----</b>")
            'Response.Write("<br/><b style='color:red;'>topic---" & Row("topic").ToString() & "----</b>")

            LIT_MeetingID = Row("MeetingID").ToString()

            LBL_SeminarName = Row("topic").ToString()
            LIT_Starttime = Row("datetime_start").ToString()
            LIT_endtime = Row("datetime_end").ToString()
            LIT_Location = Row("Location").ToString()

            Dim TempDT As Date = CheckNull(Row("eventdate"))
            LBL_Date = TempDT.ToString("D", New CultureInfo("en-US"))
            LBL_Time = CheckNull(Row("time_display"))

            LIT_URL = CheckNull(Row("url"))
            LIT_MACurl = CheckNull(Row("MACurl"))

            LIT_DialIn = Row("dialinNumber").ToString()
            LIT_Passcode = Row("passcode").ToString()

            LIT_FK_EventType = CheckNull(Row("FK_EventType"))
            LIT_WebX_EventNumber = CheckNull(Row("WebX_EventNumber"))
            LIT_WebX_EventPassword = CheckNull(Row("WebX_EventPassword"))
            LIT_WebX_EventAddress = CheckNull(Row("WebX_EventAddress"))
            LIT_WebX_CallInTollFree = CheckNull(Row("WebX_CallInTollFree"))
            LIT_WebX_CallIn_Toll = CheckNull(Row("WebX_CallIn_Toll"))
            LIT_WebX_AccessCode = CheckNull(Row("WebX_AccessCode"))

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
        Next

        litGoogle.Text = Output_Google_AddToCalendar(LBL_SeminarName, LIT_Starttime, LIT_endtime, "", "", "", GoogleHtmlDetails(), LIT_Location, True)

    End Sub


    Public Function GoogleHtmlDetails() As String
        Dim strDetails As New StringBuilder
        strDetails.Append("Webinar Information<br />")
        strDetails.Append("Topic: " & LBL_SeminarName & "<br />")
        strDetails.Append("Date/Time Start: " & LIT_Starttime & "<br />")
        strDetails.Append("Date/Time End: " & LIT_endtime & "<br />")


        If LIT_FK_EventType = "1" Then
            strDetails.Append("Dial-In Number (toll free): " & LIT_DialIn & "<br />")
            strDetails.Append("Entry Code: " & LIT_Passcode & "<br />")

            If LIT_URL <> "" Then
                strDetails.Append("Participant URL: " & LIT_URL & " ")
                strDetails.Append("(This link should automatically log-you in at the start of the meeting, but if not or if you are disconnected from the session, use the Meeting ID is  " & LIT_MeetingID & ", the Passcode is " & LIT_Passcode & ", the Location is " & LIT_Location & " to log-in)")
                strDetails.Append("<br/>")
            End If

            strDetails.Append(Environment.NewLine & "Event is scheduled in Eastern Time. Please be sure to adjust the event time on your calendar, if necessary.")
            'strDetails.Append("<p><strong>To Install Live Meeting: Do a system test of your PC and browser before the meeting</strong><br/>")
            'strDetails.Append("<a href='https://support.office.com/en-us/article/Download-the-Microsoft-Office-Live-Meeting-2007-client-8a432d04-45ac-4762-8e7f-e715dcd0f167?CorrelationId=b4d2d1ba-a490-455d-91e2-095154ad1a21&ui=en-US&rs=en-US&ad=US'>Check your browser</a> (automatically downloads normal plug-in). Live Meeting automatically downloads, installs, and configures for Windows the first time you start or join a meeting.</p>")
            'strDetails.Append("<p><strong>NOTE: For Mac Users or Firewall Issues: </strong> If you are using a Mac or have trouble installing the software you can try " & LIT_MACurl.Text & ".")
            'strDetails.Append(" Alternatively, you can manually select to use 'Live Meeting Web Access' instead of the Office Microsoft Office Live Meeting client. When you click on the 'check your browser' link above for the first time, you will be taken to a Web page that will give you the option to install the <strong>Microsoft Office Live Meeting client</strong> or the <strong>Microsoft Office Live Meeting Web Access page</strong>; these will be labeled 'For Mac users,' and you will find them under <strong>'Use Live Meeting Web Access (fastest).'</strong> Then click <strong>Accept and Use</strong>. You will only be asked to do this step the first time you download the software; the next time you join a meeting, you should be taken directly to the Join Meeting window.</p>")

        Else
            strDetails.Append("Event Number: " & LIT_WebX_EventNumber & "<br />")
            strDetails.Append("Event Password: " & LIT_WebX_EventPassword & "<br />")
            strDetails.Append("Event address for attendees: " & LIT_WebX_EventAddress & "<br /><br />")

            strDetails.Append("Audio Conference Information<br />")
            'strDetails.Append("Call-in toll-free number (US/Canada): " & LIT_WebX_CallInTollFree.Text & "<br />")
            'strDetails.Append("Call-in toll number (US/Canada): " & LIT_WebX_CallIn_Toll.Text & "<br />")
            'strDetails.Append("Access code: " & LIT_WebX_AccessCode.Text & "<br />")
            strDetails.Append("<br />")
            strDetails.Append("** Recommended: --Call Me-- option (https://video.nih.gov/webex/docs/call-me.pdf?utm_source=Email&amp;utm_campaign=WebEx&amp;utm_medium=Announcement&amp;utm_term=Call%20Me): Enter your number and WebEx will call and connect you to the meeting audio. Note that WebEx is unable to call numbers with extensions. <br />")
            strDetails.Append("<br />")
            strDetails.Append("** --Call Using Computer-- option (https://video.nih.gov/webex/docs/call-using-computer.pdf?utm_source=Email&amp;utm_campaign=WebEx&amp;utm_medium=Announcement&amp;utm_term=call%20using%20computer): Use your computer to call into a meeting. <br />")
            strDetails.Append("<br />")
            strDetails.Append("** --I Will Call In-- option: Manually dial into a meeting using a WebEx-provided phone number. The numbers provided by WebEx will no longer include a toll-free option, so some call charges may apply. <br />")
            strDetails.Append("<br />")



            strDetails.Append("<br />Event is scheduled in Eastern Time. Please be sure to adjust the event time on your calendar, if necessary.")
            'strDetails.Append("<br /><br />Test Your PC/Browser")
            'strDetails.Append("<br />Join a test meeting [http://www.webex.com/test-meeting.html] to make sure WebEx is installed and functioning on your system. You will be  prompted to install the plug-in if it is not detected on your computer.")


        End If
        strDetails.Append("<br /><br />If you have questions, please contact NCIdccpsISteam@mail.nih.gov")



        Return strDetails.ToString
    End Function

    Function OutlookHTMLDetails() As String
        Dim strDetails As New StringBuilder
        strDetails.Append("<strong>Webinar Information</strong><br/>")
        strDetails.Append("Topic: " & LBL_SeminarName & "<br/>")
        strDetails.Append("Date: " & LBL_Date & "<br/>")
        strDetails.Append("Time: " & LBL_Time & "<br/>")




        If LIT_FK_EventType = "1" Then
            strDetails.Append("Dial-In Number (toll free): " & LIT_DialIn & "<br />")
            strDetails.Append("Entry Code: " & LIT_Passcode & "<br />")

            If LIT_URL <> "" Then
                strDetails.Append("Participant URL: " & LIT_URL & " ")
                strDetails.Append("(This link should automatically log-you in at the start of the meeting, but if not or if you are disconnected from the session, use the Meeting ID is  " & LIT_MeetingID & ", the Passcode is " & LIT_Passcode & ", the Location is " & LIT_Location & " to log-in)")
                strDetails.Append("<br/>")
            End If

            strDetails.Append("<br />Event is scheduled in Eastern Time. Please be sure to adjust the event time on your calendar, if necessary.")
            strDetails.Append("<p><strong>To Install Live Meeting: Do a system test of your PC and browser before the meeting</strong><br/>")
            strDetails.Append("<a href='https://support.office.com/en-us/article/Download-the-Microsoft-Office-Live-Meeting-2007-client-8a432d04-45ac-4762-8e7f-e715dcd0f167?CorrelationId=b4d2d1ba-a490-455d-91e2-095154ad1a21&ui=en-US&rs=en-US&ad=US'>Check your browser</a> (automatically downloads normal plug-in). Live Meeting automatically downloads, installs, and configures for Windows the first time you start or join a meeting.</p>")
            strDetails.Append("<p><strong>NOTE: For Mac Users or Firewall Issues: </strong> If you are using a Mac or have trouble installing the software you can try " & LIT_MACurl & ".")
            strDetails.Append(" Alternatively, you can manually select to use 'Live Meeting Web Access' instead of the Office Microsoft Office Live Meeting client. When you click on the 'check your browser' link above for the first time, you will be taken to a Web page that will give you the option to install the <strong>Microsoft Office Live Meeting client</strong> or the <strong>Microsoft Office Live Meeting Web Access page</strong>; these will be labeled 'For Mac users,' and you will find them under <strong>'Use Live Meeting Web Access (fastest).'</strong> Then click <strong>Accept and Use</strong>. You will only be asked to do this step the first time you download the software; the next time you join a meeting, you should be taken directly to the Join Meeting window.</p>")

        Else
            strDetails.Append("Event Number: " & LIT_WebX_EventNumber & "<br />")
            strDetails.Append("Event Password: " & LIT_WebX_EventPassword & "<br />")
            strDetails.Append("Event address for attendees: " & LIT_WebX_EventAddress & "<br /><br />")

            strDetails.Append("<b>Audio Conference Information</b><br/>")
            'strDetails.Append("Call-in toll-free number (US/Canada): " & LIT_WebX_CallInTollFree.Text & "<br />")
            'strDetails.Append("Call-in toll number (US/Canada): " & LIT_WebX_CallIn_Toll.Text & "<br />")
            'strDetails.Append("Access code: " & LIT_WebX_AccessCode.Text & "<br />")


            strDetails.Append("<ul>")
            strDetails.Append("<li>Recommended: <a href='https://video.nih.gov/webex/docs/call-me.pdf?utm_source=Email&amp;utm_campaign=WebEx&amp;utm_medium=Announcement&amp;utm_term=Call%20Me'>&quot;Call Me&quot; option</a>: Enter your number and WebEx will call and connect you to the meeting audio. Note that WebEx is unable to call numbers with extensions. </li>")
            strDetails.Append("<li><a href='https://video.nih.gov/webex/docs/call-using-computer.pdf?utm_source=Email&amp;utm_campaign=WebEx&amp;utm_medium=Announcement&amp;utm_term=call%20using%20computer'>&quot;Call Using Computer&quot; option</a>: Use your computer to call into a meeting. </li>")
            strDetails.Append("<li>&quot;I Will Call In&quot; option: Manually dial into a meeting using a WebEx-provided phone number. The numbers provided by WebEx will no longer include a toll-free option, so some call charges may apply. </li>")
            strDetails.Append("</ul>")



            strDetails.Append("<br /><br />Event is scheduled in Eastern Time. Please be sure to adjust the event time on your calendar, if necessary.")
            strDetails.Append("<br /><br /><b>Test Your PC/Browser</b>")
            strDetails.Append("<br />Join a test meeting <a href='http://www.webex.com/test-meeting.html'>here</a> to make sure WebEx is installed and functioning on your system. You will be  prompted to install the plug-in if it is not detected on your computer.")


        End If



        strDetails.Append("<br /><br />If you have questions, please contact NCIdccpsISteam@mail.nih.gov")
        Return strDetails.ToString
    End Function

    Private Function Output_Google_AddToCalendar(ByVal title As String, ByVal date_start As String, ByVal date_end As String, ByVal websiteURL As String, ByVal websiteName As String, ByVal guests As String, ByVal details As String, ByVal location As String, ByVal busy As Boolean) As String

        Dim str_start As String = String.Format("{0:yyyyMMdd\THHmmss}", date_start)
        Dim str_end As String = String.Format("{0:yyyyMMdd\THHmmss}", date_end)
        'to ensure break
        details = System.Web.HttpUtility.UrlEncode(details)
        details = details.Replace("%3cbr+%2f%3e", "%0D%0A")
        title = "NCI Implementation Science Webinar   - " & title

        Dim linkStr As String = ""
        linkStr &= "<a href='http://www.google.com/calendar/event?action=TEMPLATE"

        linkStr &= "&text=" & System.Web.HttpUtility.UrlEncode(title)
        linkStr &= "&dates=" & str_start & "/" & str_end
        linkStr &= "&details=" & details

        linkStr &= "&location=" & System.Web.HttpUtility.UrlEncode(location)
        linkStr &= "&trp=" & System.Web.HttpUtility.UrlEncode(busy.ToString())

        If websiteURL <> "" Then
            linkStr &= "&sprop=website:" & System.Web.HttpUtility.UrlEncode(websiteURL) & "name:" & System.Web.HttpUtility.UrlEncode(websiteName)
        End If

        linkStr &= "' target='_blank'><img style='border:none;' src='" & System.Configuration.ConfigurationManager.AppSettings("ThisSite") & "/IS/images/google_calendar.png' alt='Add to My Google Calendar'/></a>"

        Return linkStr
    End Function
    'BEGIN:VCALENDAR
    'VERSION:2.0
    'PRODID:-//hacksw/handcal//NONSGML v1.0//EN
    'BEGIN:VEVENT
    'DTSTART:20100223T140000
    'DTEND:20100223T150000
    'DESCRIPTION:P.L.A.N.E.T. Cyber-Seminar\nTopic: Developing, Maintaining, and Sustaining Partnerships\nDate: February, 23 2010\nTime: 2:00-3:00 p.m. ET\n\nDial-In Number (toll free): 888-946-9418\nEntry Code: 8859964\nParticipant URL: https://www.livemeeting.com/cc/mmancusa/join?id=W887S5&role=attend\n
    'SUMMARY:P.L.A.N.E.T. Cyber-Seminar: Developing, Maintaining, and Sustaining Partnerships
    'END:VEVENT
    'END:VCALENDAR
    Private Sub Download_Outlook_AddToCalendar(ByVal title As String, ByVal date_start As Date, ByVal date_end As Date, ByVal details As String)
        Dim str_start As String = String.Format("{0:yyyyMMdd\THHmmss}", date_start)
        Dim str_end As String = String.Format("{0:yyyyMMdd\THHmmss}", date_end)

        Dim donwloadStr As String = ""
        donwloadStr &= "BEGIN:VCALENDAR" & Environment.NewLine
        donwloadStr &= "VERSION:2.0" & Environment.NewLine
        donwloadStr &= "PRODID:-//hacksw/handcal//NONSGML v1.0//EN" & Environment.NewLine
        donwloadStr &= "BEGIN:VEVENT" & Environment.NewLine
        donwloadStr &= "DTSTART:" & str_start & Environment.NewLine
        donwloadStr &= "DTEND:" & str_end & Environment.NewLine
        'donwloadStr &= "DESCRIPTION:" & details & Environment.NewLine
        'donwloadStr &= "X-ALT-DESC;FMTTYPE=text/html:<ul><li>work1</li><li>work2</li></ul>" & Environment.NewLine
        donwloadStr &= "X-ALT-DESC;FMTTYPE=text/html:" & details & Environment.NewLine

        'donwloadStr &= "SUMMARY:P.L.A.N.E.T. Cyber-Seminar: " & title & Environment.NewLine
        donwloadStr &= "SUMMARY:NCI Implementation Science Webinar   - " & title & Environment.NewLine

        donwloadStr &= "END:VEVENT" & Environment.NewLine
        donwloadStr &= "END:VCALENDAR"

        Response.Clear()
        Response.ContentType = "application/octet-stream"
        Response.AddHeader("Content-Disposition", "attachment; filename=cyber_seminar.ics")
        Response.Write(donwloadStr)
    End Sub


    Function CheckNull(ByVal TmpStr As Object) As String
        If TypeOf (TmpStr) Is DBNull Then
            Return ""
        Else
            Return TmpStr
        End If
    End Function

    Protected Sub BTN_AddtoOutlook_Click(sender As Object, e As EventArgs) Handles BTN_AddtoOutlook.Click

        Download_Outlook_AddToCalendar(LBL_SeminarName, LIT_Starttime, LIT_endtime, OutlookHTMLDetails())

    End Sub

End Class