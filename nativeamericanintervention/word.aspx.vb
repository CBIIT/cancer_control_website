
Partial Class nativeamericanintervention_word
    Inherits System.Web.UI.Page


    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        Dim strsearchString As String = Request("TXT_searchstringXLS")
        Dim strsearchString2 As String = Request("TXT_searchstringXLS2")
        Dim strsearchString3 As String = Request("TXT_searchstringXLS3")
        Dim strsearchString4 As String = Request("TXT_searchstringXLS4")
        Dim PK_CancerSite As String = Request("PK_CancerSite")
        Dim Consortiumstring As String = Request("Consortiumstring")
        Dim InterventionSite As String = Request("InterventionSite")
        Dim InterventionKeywords As String = Request("InterventionKeywords")

        Response.AddHeader("Content-Disposition", "attachment; filename=SearchResults.doc")




        Dim strConnect As String = ConfigurationManager.ConnectionStrings("sqlConnectionString").ConnectionString
        Dim objConnect As New SqlConnection(strConnect)
        Dim objDataAdapter As New SqlDataAdapter("", objConnect)
        Dim objDataSet As New DataSet()

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









        objDataAdapter.Fill(objDataSet, "NewRequestTopics")
        objConnect.Close()
        objDataAdapter.SelectCommand.Parameters.Clear()
        RPTR.DataSource = objDataSet.Tables("NewRequestTopics").DefaultView
        RPTR.DataBind()



    End Sub

    Function CheckVis(tempOBJ As Object) As Boolean
        If CheckNull(tempOBJ) = "" Then
            Return False
        Else
            Return True
        End If
    End Function

    Function CheckVisAbstract() As Boolean
        If Request("ABS") = "1" Then
            Return True
        Else
            Return False
        End If
    End Function

    Function CheckNull(TmpStr As Object) As String
        If TypeOf (TmpStr) Is dbnull Then
            Return ""
        Else
            Return TmpStr
        End If
    End Function


End Class
