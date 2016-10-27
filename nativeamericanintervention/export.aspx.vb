Imports System.IO
Imports System.Data
Imports System.Configuration
Imports System.Data.SqlClient


Partial Class nativeamericanintervention_export
    Inherits System.Web.UI.Page



    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            'http://www.aspsnippets.com/Articles/Write-data-to-Excel-file-xls-and-xlsx-in-ASPNet.aspx


            Dim strsearchString As String = Request("TXT_searchstringXLS")
            Dim strsearchString2 As String = Request("TXT_searchstringXLS2")
            Dim strsearchString3 As String = Request("TXT_searchstringXLS3")
            Dim strsearchString4 As String = Request("TXT_searchstringXLS4")
            Dim PK_CancerSite As String = Request("PK_CancerSite")
            Dim Consortiumstring As String = Request("Consortiumstring")
            Dim InterventionSite As String = Request("InterventionSite")
            Dim InterventionKeywords As String = Request("InterventionKeywords")




            'Response.Write("<br/>strsearchString=" & strsearchString)
            'Response.Write("<br/>strsearchString2=" & strsearchString2)
            'Response.Write("<br/>strsearchString3=" & strsearchString3)
            'Response.Write("<br/>strsearchString4=" & strsearchString4)
            'Response.Write("<br/>PK_CancerSite=" & PK_CancerSite)
            'Response.Write("<br/>Consortiumstring=" & Consortiumstring)
            'Response.Write("<br/>InterventionSite=" & InterventionSite)
            'Response.Write("<br/>InterventionKeywords=" & InterventionKeywords)

            ''Exit Sub


            Dim strConnect As String = ConfigurationManager.ConnectionStrings("sqlConnectionString").ConnectionString
            Dim objConnect As New SqlConnection(strConnect)
            Dim objDataAdapter As New SqlDataAdapter("", objConnect)
            Dim objDataSet As New DataSet()
            Dim objDataTable As DataTable

            objDataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure
            objDataAdapter.SelectCommand.CommandTimeout = 600


            objDataAdapter.SelectCommand.CommandText = "[NA_Search_FreeText_Export]"


            If strsearchString = "" Then
                objDataAdapter.SelectCommand.Parameters.Add("@SeacrhTerm1", SqlDbType.NVarChar).Value = System.DBNull.Value
            Else
                objDataAdapter.SelectCommand.Parameters.Add("@SeacrhTerm1", SqlDbType.NVarChar).Value = strsearchString
            End If

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
            objDataView.Sort = "[Title]"
            Dim dt As DataTable = objDataView.ToTable()




            Dim attachment As String = "attachment; filename=Native_American_Cancer_Interventions_Database.xls"
            Response.ClearContent()
            Response.AddHeader("content-disposition", attachment)
            Response.ContentType = "application/vnd.ms-excel"
            Dim tab As String = ""
            For Each dc As DataColumn In dt.Columns
                Response.Write((tab + dc.ColumnName))
                tab = "" & vbTab
            Next
            Response.Write("" & vbLf)
            Dim i As Integer
            For Each dr As DataRow In dt.Rows
                tab = ""
                i = 0
                Do While (i < dt.Columns.Count)
                    Response.Write((tab + dr(i).ToString))
                    tab = "" & vbTab
                    i = (i + 1)
                Loop

                Response.Write("" & vbLf)
            Next
            Response.End()




        End If

    End Sub

End Class