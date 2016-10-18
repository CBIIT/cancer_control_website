
Partial Class nativeamericanintervention_Publications
    Inherits System.Web.UI.Page




    Dim strConnect As String = ConfigurationManager.ConnectionStrings("sqlConnectionString").ConnectionString
    Dim objConnect As New SqlConnection(strConnect)
    Dim objDataAdapter As New SqlDataAdapter("", objConnect)
    Dim Cmd As New SqlCommand("", objConnect)
    Dim objDR As SqlDataReader
    Dim objDataSet As New DataSet
    Dim objDataView As DataView




    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load


        If Not Page.IsPostBack Then
            objConnect.Open()
            Cmd.CommandType = CommandType.StoredProcedure
            Cmd.CommandText = "NA_List_CancerSites"
            objDR = Cmd.ExecuteReader()
            DDL_CancerSite.DataSource = objDR
            DDL_CancerSite.DataBind()
            objDR.Close()

            
            Cmd.CommandType = CommandType.StoredProcedure
            Cmd.CommandText = "NA_List_CancerConsortium"
            objDR = Cmd.ExecuteReader()
            RPTR_CancerSites.DataSource = objDR
            RPTR_CancerSites.DataBind()
            objDR.Close()

            Cmd.CommandType = CommandType.StoredProcedure
            Cmd.CommandText = "NA_List_InterventionSite"
            objDR = Cmd.ExecuteReader()
            RPTR_InterventionSite.DataSource = objDR
            RPTR_InterventionSite.DataBind()
            objDR.Close()

            Cmd.CommandType = CommandType.StoredProcedure
            Cmd.CommandText = "NA_List_Keywords"
            objDR = Cmd.ExecuteReader()
            RPTR_Keyword.DataSource = objDR
            RPTR_Keyword.DataBind()
            objDR.Close()



            objConnect.Close()


        End If

    End Sub

    'Protected Sub BTN_Search_Click(sender As Object, e As EventArgs) Handles BTN_Search.Click

    '    objConnect.Open()
    '    Cmd.CommandType = CommandType.StoredProcedure
    '    Cmd.CommandText = "[NA_List_All_Publications]"
    '    objDR = Cmd.ExecuteReader()
    '    RPTR.DataSource = objDR
    '    RPTR.DataBind()
    '    objDR.Close()
    '    Cmd.Parameters.Clear()
    '    objConnect.Close()


    'End Sub
End Class
