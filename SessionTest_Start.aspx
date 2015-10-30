<%@ Page Language="VB" %>

<!DOCTYPE html>

<script runat="server">

    Protected Sub BTN_Test_Click(sender As Object, e As EventArgs)
        Session("RWB") = TXT_Session.Text
        Response.Redirect("SessionTest_Finish.aspx")
    End Sub
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Text="Put in a value/text you want to save between pages"></asp:Label><br />
        <asp:TextBox ID="TXT_Session" runat="server"></asp:TextBox><br />
        <asp:Button ID="BTN_Test" runat="server" Text="Test the session var" OnClick="BTN_Test_Click" />
    </div>
    </form>
</body>
</html>
