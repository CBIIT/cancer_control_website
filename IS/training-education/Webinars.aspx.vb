Imports System.Globalization
Imports System.Net

Partial Class WS_Testing_Default
    Inherits System.Web.UI.Page


    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

		System.Net.ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls12
		
        If Not Page.IsPostBack Then


            Dim WS_IS As New ApplicationWebSerrvice.S_ApplicationsSoapClient


            RPTR_ListCategories.DataSource = WS_IS.ImplementationScience_List_IS_Categories()
            RPTR_ListCategories.DataBind()

            RPTR_Years.DataSource = WS_IS.ImplementationScience_List_IS_Years()
            RPTR_Years.DataBind()

            RPTR_Presenters.DataSource = WS_IS.ImplementationScience_List_IS_Presenters()
            RPTR_Presenters.DataBind()

            RPTR_Series.DataSource = WS_IS.ImplementationScience_List_IS_Series()
            RPTR_Series.DataBind()

        End If
    End Sub
End Class
