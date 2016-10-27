Imports System.Web
Imports System.Web.Services
Imports System.Web.Services.Protocols
Imports System.Configuration
Imports DB_Helper.DB_Helper


' To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line.
<System.Web.Script.Services.ScriptService()> _
<WebService(Namespace:="http://tempuri.org/")> _
<WebServiceBinding(ConformsTo:=WsiProfiles.BasicProfile1_1)> _
<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
 Public Class jquerydata
    Inherits System.Web.Services.WebService


    <WebMethod()> _
    Public Function ListPrograms() As String
        Dim strConnect As String = ConfigurationManager.ConnectionStrings("sqlConnectionString").ConnectionString
        Dim objConnect As New SqlConnection(strConnect)
        Dim objDataAdapter As New SqlDataAdapter("", objConnect)
        Dim objDataSet As New DataSet()
        Dim objDataTable As DataTable

        objDataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure
        objDataAdapter.SelectCommand.CommandText = "List_Programs"
        objDataAdapter.Fill(objDataSet, "DStesttable")
        objDataTable = objDataSet.Tables("DStesttable")
        objConnect.Close()
        objDataAdapter.SelectCommand.Parameters.Clear()

        'Return JsonConvert.SerializeObject(objDataTable)

        Return GetJson(objDataTable)
    End Function


    <WebMethod()> _
    Public Function List_SearchResults_Main_Top10(strsearchString As String, PagingDirection As String, PagingTitle As String, ItemsPerPage As String, strsearchString2 As String, strsearchString3 As String, strsearchString4 As String, PK_CancerSite As String, Consortiumstring As String, InterventionSite As String, InterventionKeywords As String) As String


        Dim strConnect As String = ConfigurationManager.ConnectionStrings("sqlConnectionString").ConnectionString
        Dim objConnect As New SqlConnection(strConnect)
        Dim objDataAdapter As New SqlDataAdapter("", objConnect)
        Dim objDataSet As New DataSet()
        Dim objDataTable As DataTable

        objDataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure
        objDataAdapter.SelectCommand.CommandTimeout = 600


        If PagingDirection = "Next" Then
            objDataAdapter.SelectCommand.CommandText = "[NA_Search_FreeText_Forward]"

        ElseIf PagingDirection = "Prev" Then
            objDataAdapter.SelectCommand.CommandText = "[NA_Search_FreeText_Backward]"
        Else
            objDataAdapter.SelectCommand.CommandText = "[NA_Search_FreeText_Forward]"

        End If

        objDataAdapter.SelectCommand.Parameters.Add("@SeacrhTerm", SqlDbType.NVarChar).Value = RevertJqueryApostophes(strsearchString)
        objDataAdapter.SelectCommand.Parameters.Add("@PagingTitle", SqlDbType.NVarChar).Value = RevertJqueryApostophes(PagingTitle)
        objDataAdapter.SelectCommand.Parameters.Add("@topNumber", SqlDbType.Int).Value = RevertJqueryApostophes(ItemsPerPage)


        If strsearchString2 = "" Then
            objDataAdapter.SelectCommand.Parameters.Add("@SeacrhTerm2", SqlDbType.NVarChar).Value = System.DBNull.Value
        Else
            objDataAdapter.SelectCommand.Parameters.Add("@SeacrhTerm2", SqlDbType.NVarChar).Value = strsearchString2
        End If


        If strsearchString3 = "" Then
            objDataAdapter.SelectCommand.Parameters.Add("@SeacrhTerm3", SqlDbType.NVarChar).Value = System.DBNull.Value
        Else
            objDataAdapter.SelectCommand.Parameters.Add("@SeacrhTerm3", SqlDbType.NVarChar).Value = strsearchString3
        End If


        If strsearchString4 = "" Then
            objDataAdapter.SelectCommand.Parameters.Add("@SeacrhTerm4", SqlDbType.NVarChar).Value = System.DBNull.Value
        Else
            objDataAdapter.SelectCommand.Parameters.Add("@SeacrhTerm4", SqlDbType.NVarChar).Value = strsearchString4
        End If


        If PK_CancerSite = "||" Then
            objDataAdapter.SelectCommand.Parameters.Add("@PK_CancerSite", SqlDbType.NVarChar).Value = System.DBNull.Value
        Else
            objDataAdapter.SelectCommand.Parameters.Add("@PK_CancerSite", SqlDbType.NVarChar).Value = PK_CancerSite
        End If


        If Consortiumstring = "||" Then
            objDataAdapter.SelectCommand.Parameters.Add("@Consortiumstring", SqlDbType.NVarChar).Value = System.DBNull.Value
        Else
            objDataAdapter.SelectCommand.Parameters.Add("@Consortiumstring", SqlDbType.NVarChar).Value = Consortiumstring
        End If


        If InterventionSite = "||" Then
            objDataAdapter.SelectCommand.Parameters.Add("@InterventionSite", SqlDbType.NVarChar).Value = System.DBNull.Value
        Else
            objDataAdapter.SelectCommand.Parameters.Add("@InterventionSite", SqlDbType.NVarChar).Value = InterventionSite
        End If

        If InterventionKeywords = "||" Then
            objDataAdapter.SelectCommand.Parameters.Add("@InterventionKeywords", SqlDbType.NVarChar).Value = System.DBNull.Value
        Else
            objDataAdapter.SelectCommand.Parameters.Add("@InterventionKeywords", SqlDbType.NVarChar).Value = InterventionKeywords
        End If

        objDataAdapter.Fill(objDataSet, "DStesttable")
        objDataTable = objDataSet.Tables("DStesttable")
        objConnect.Close()
        objDataAdapter.SelectCommand.Parameters.Clear()

        Dim objDataView As New DataView(objDataTable)
        objDataView.Sort = "Pub_Title"
        Dim objDataTable2 As DataTable = objDataView.ToTable()


        Return GetJson(objDataTable2)
    End Function

    <WebMethod()> _
    Public Function List_SearchResults_Main_Counter(strsearchString As String, strsearchString2 As String, strsearchString3 As String, strsearchString4 As String, PK_CancerSite As String, Consortiumstring As String, InterventionSite As String, InterventionKeywords As String) As String
  
        Dim strConnect As String = ConfigurationManager.ConnectionStrings("sqlConnectionString").ConnectionString
        Dim objConnect As New SqlConnection(strConnect)
        Dim Cmd As New SqlCommand("", objConnect)
        Dim TempCount As String

        objConnect.Open()
        Cmd.CommandType = CommandType.StoredProcedure
        Cmd.CommandTimeout = 600
        Cmd.CommandText = "NA_Search_FreeText_Count"
        Cmd.Parameters.Add("@SeacrhTerm", SqlDbType.NVarChar).Value = RevertJqueryApostophes(strsearchString)


        If strsearchString2 = "" Then
            Cmd.Parameters.Add("@SeacrhTerm2", SqlDbType.NVarChar).Value = System.DBNull.Value
        Else
            Cmd.Parameters.Add("@SeacrhTerm2", SqlDbType.NVarChar).Value = strsearchString2
        End If


        If strsearchString3 = "" Then
            Cmd.Parameters.Add("@SeacrhTerm3", SqlDbType.NVarChar).Value = System.DBNull.Value
        Else
            Cmd.Parameters.Add("@SeacrhTerm3", SqlDbType.NVarChar).Value = strsearchString3
        End If


        If strsearchString4 = "" Then
            Cmd.Parameters.Add("@SeacrhTerm4", SqlDbType.NVarChar).Value = System.DBNull.Value
        Else
            Cmd.Parameters.Add("@SeacrhTerm4", SqlDbType.NVarChar).Value = strsearchString4
        End If

        If PK_CancerSite = "||" Then
            Cmd.Parameters.Add("@PK_CancerSite", SqlDbType.NVarChar).Value = System.DBNull.Value
        Else
            Cmd.Parameters.Add("@PK_CancerSite", SqlDbType.NVarChar).Value = PK_CancerSite
        End If


        If Consortiumstring = "||" Then
            Cmd.Parameters.Add("@Consortiumstring", SqlDbType.NVarChar).Value = System.DBNull.Value
        Else
            Cmd.Parameters.Add("@Consortiumstring", SqlDbType.NVarChar).Value = Consortiumstring
        End If

        If InterventionSite = "||" Then
            Cmd.Parameters.Add("@InterventionSite", SqlDbType.NVarChar).Value = System.DBNull.Value
        Else
            Cmd.Parameters.Add("@InterventionSite", SqlDbType.NVarChar).Value = InterventionSite
        End If

        If InterventionKeywords = "||" Then
            Cmd.Parameters.Add("@InterventionKeywords", SqlDbType.NVarChar).Value = System.DBNull.Value
        Else
            Cmd.Parameters.Add("@InterventionKeywords", SqlDbType.NVarChar).Value = InterventionKeywords
        End If

        TempCount = Cmd.ExecuteScalar()
        Cmd.Parameters.Clear()
        objConnect.Close()

        Return TempCount

    End Function




    Public Function GetJson(ByVal dt As DataTable) As String
        Dim serializer As System.Web.Script.Serialization.JavaScriptSerializer = New System.Web.Script.Serialization.JavaScriptSerializer()
        Dim rows As New List(Of Dictionary(Of String, Object))
        Dim row As Dictionary(Of String, Object)
        For Each dr As DataRow In dt.Rows

            row = New Dictionary(Of String, Object)
            For Each col As DataColumn In dt.Columns

                row.Add(col.ColumnName, dr(col))
            Next
            rows.Add(row)
        Next
        Return serializer.Serialize(rows)
    End Function

End Class