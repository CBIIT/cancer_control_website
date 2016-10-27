Imports Microsoft.VisualBasic



Namespace DB_Helper


    Public Class DB_Helper




        Public Shared Function CheckNull(ByVal TmpStr As Object) As String
            If TypeOf (TmpStr) Is DBNull Then
                Return ""
            Else
                Return TmpStr
            End If

        End Function



        Public Shared Function SetApostophes(ByVal TmpStr As Object) As String
            If TypeOf (TmpStr) Is DBNull Then
                Return ""
            Else
                Return TmpStr.Replace("'", "''")
            End If

        End Function

        Public Shared Function RevertJqueryApostophes(ByVal TmpStr As Object) As String
            If TypeOf (TmpStr) Is DBNull Then
                Return ""
            Else
                Return TmpStr.Replace("&#039;", "'")
            End If

        End Function




        Public Shared Function ClearXsideScriptingValue(ByVal TmpStr As Object) As String
            'http://www.w3schools.com/tags/ref_urlencode.asp

            If TypeOf (TmpStr) Is DBNull Or TmpStr Is Nothing Then
                Return ""
            Else
                Dim SB As New StringBuilder(TmpStr.ToString)
                SB.Replace("<", "")
                SB.Replace(">", "")
                SB.Replace("&lt;b&gt;", "")
                SB.Replace("&lt;/b&gt;", "")
                SB.Replace("&lt;i&gt;", "")
                SB.Replace("&lt;/i&gt;", "")
                SB.Replace("%253", "")
                SB.Replace("%23", "")
                SB.Replace("%2A", "")
                SB.Replace("%2B", "")
                SB.Replace("%3C", "")
                SB.Replace("%3D", "")
                SB.Replace("%3E", "")
                SB.Replace("%3", "")
                SB.Replace("%", "")
                Return SB.ToString()
            End If

        End Function


    End Class


End Namespace
