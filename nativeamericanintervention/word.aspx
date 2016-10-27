<%@ Page Language="VB" ContentType="application/msword" ResponseEncoding="iso-8859-1" EnableViewState="false" AutoEventWireup="false" CodeFile="word.aspx.vb" Inherits="nativeamericanintervention_word" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <h1>Search Results</h1>





    <asp:Repeater ID="RPTR" runat="server">
        <ItemTemplate>


            <p>
                <strong><a href='<%# Eval("URL")%>' target="_blank"><%# Eval("Title")%></a></strong>
            </p>
            <%# Eval("Citation")%>
            <br />
            <strong>PMID:</strong> <%# Eval("PMID")%><br />
            <asp:PlaceHolder Visible='<%# CheckVis(Eval("[Cancer Site]"))%>' runat="server">
                <strong>Cancer Sites(s):</strong> <%# Eval("[Cancer Site]")%><br />
            </asp:PlaceHolder>
            <asp:PlaceHolder Visible='<%# CheckVis(Eval("[Cancer Continuum]"))%>' runat="server">
                <strong>Cancer Continuum(s):</strong> <%# Eval("[Cancer Continuum]")%><br />
            </asp:PlaceHolder>
            <asp:PlaceHolder Visible='<%# CheckVis(Eval("[Intervention Site]"))%>' runat="server">
                <strong>Intervention Site(s):</strong> <%# Eval("[Intervention Site]")%><br />
            </asp:PlaceHolder>
            <asp:PlaceHolder Visible='<%# CheckVis(Eval("[Intervention Type]"))%>' runat="server">
                <strong>Intervention Type(s):</strong> <%# Eval("[Intervention Type]")%><br />
            </asp:PlaceHolder>

            <asp:PlaceHolder Visible='<%# CheckVisAbstract()%>' runat="server"><strong>Abstract: </strong><%# Eval("Abstract")%>
            </asp:PlaceHolder>
            <hr />


        </ItemTemplate>
    </asp:Repeater>





</body>
</html>

