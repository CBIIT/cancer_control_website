Imports Microsoft.VisualBasic
Imports System.Collections.Generic
Imports System.Web
Imports System.Data
Imports System.Data.SqlClient
Imports System.Text
Imports System.Web.Security
Imports System.Security
Imports System.Security.Cryptography

Namespace AESEncrypt
    Public Class AESEncrypt


        Public Shared Function AES_Encrypt(ByVal input As String) As String

            Dim pass As String = System.Configuration.ConfigurationManager.AppSettings("AESKey")
            Dim AES As New System.Security.Cryptography.RijndaelManaged
            Dim Hash_AES As New System.Security.Cryptography.MD5CryptoServiceProvider
            Dim encrypted As String = ""
            Try
                Dim hash(31) As Byte
                Dim temp As Byte() = Hash_AES.ComputeHash(System.Text.ASCIIEncoding.ASCII.GetBytes(pass))
                Array.Copy(temp, 0, hash, 0, 16)
                Array.Copy(temp, 0, hash, 15, 16)
                AES.Key = hash
                AES.Mode = Cryptography.CipherMode.ECB
                Dim DESEncrypter As System.Security.Cryptography.ICryptoTransform = AES.CreateEncryptor
                Dim Buffer As Byte() = System.Text.ASCIIEncoding.ASCII.GetBytes(input)
                encrypted = Convert.ToBase64String(DESEncrypter.TransformFinalBlock(Buffer, 0, Buffer.Length))
                Return encrypted
            Catch ex As Exception
                Return ""
            End Try
        End Function

        Public Shared Function AES_Decrypt(ByVal input As String) As String
            Dim pass As String = System.Configuration.ConfigurationManager.AppSettings("AESKey")
            Dim AES As New System.Security.Cryptography.RijndaelManaged
            Dim Hash_AES As New System.Security.Cryptography.MD5CryptoServiceProvider
            Dim decrypted As String = ""
            Try
                Dim hash(31) As Byte
                Dim temp As Byte() = Hash_AES.ComputeHash(System.Text.ASCIIEncoding.ASCII.GetBytes(pass))
                Array.Copy(temp, 0, hash, 0, 16)
                Array.Copy(temp, 0, hash, 15, 16)
                AES.Key = hash
                AES.Mode = Cryptography.CipherMode.ECB
                Dim DESDecrypter As System.Security.Cryptography.ICryptoTransform = AES.CreateDecryptor
                Dim Buffer As Byte() = Convert.FromBase64String(input)
                decrypted = System.Text.ASCIIEncoding.ASCII.GetString(DESDecrypter.TransformFinalBlock(Buffer, 0, Buffer.Length))
                Return decrypted
            Catch ex As Exception
                Return ""
            End Try
        End Function


        Public Shared Function CheckNull(TmpStr As Object) As String
            If TypeOf (TmpStr) Is DBNull Then
                Return ""
            Else
                Return TmpStr
            End If
        End Function



        Public Shared Sub PreSelect_DDL(ByRef DDL As DropDownList, ByVal TestValue As String)
            DDL.ClearSelection()
            Try
                DDL.Items.FindByValue(TestValue).Selected = True
            Catch objError As Exception
                DDL.ClearSelection()
            End Try
        End Sub

        Public Shared Sub PreSelect_CheckBox(ByRef CK As CheckBox, ByVal TestValue As Object)
            If CheckNull(TestValue) = "" Then
                CK.Checked = False
            ElseIf CBool(TestValue) = True Then
                CK.Checked = True
            Else
                CK.Checked = False
            End If
        End Sub



        Public Shared Function Test_RequestVar_IsNumeric(ByVal Request_Variable As Object) As Boolean
            If Request_Variable Is Nothing Or Request_Variable = "" Then
                Return False
            Else
                'make sure the ID is an integer
                If IsNumeric(Request_Variable) = True Then
                    Return True
                Else
                    Return False
                End If
            End If
        End Function

        Public Shared Function Test_RequestVar_IsNothing(ByVal Request_Variable As Object) As Boolean
            If Request_Variable Is Nothing Or Request_Variable = "" Then
                Return False
            Else
                Return True
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

