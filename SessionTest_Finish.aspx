<%@ Page Language="VB" %>

<!DOCTYPE html>

<script runat="server">

    Protected Sub Page_Load(sender As Object, e As EventArgs)
        LBL_Session.Text =  Session("RWB")
        
    End Sub
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <p>Below should be what you put in the box of the previous page.</p>
        <strong><asp:Label ID="LBL_Session" runat="server" Text="Label"></asp:Label></strong>
    </div>
    </form>
</body>
</html>
