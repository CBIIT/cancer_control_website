<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Subscribe-BRP.aspx.vb" Inherits="brp_e_newsletter_Subscribe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="X-UA-Compatible" content="IE=9,10,11" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>BRP Newsletter Subscription</title>

    <link href="../../css/style.css" rel="stylesheet"/>
    <link href="../../css/bootstrap.css" rel="stylesheet"/>
    <link href="../../css/bootstrap-responsive.css" rel="stylesheet"/>
    <link href="../../css/bootstrap-nci.css" rel="stylesheet"/>
    <link href="../css/brp-style.css" rel="stylesheet"/>
    <link href="../../css/print.css" rel="stylesheet" media="print" />

    <style type="text/css">
        body {
            padding: 0;
        }
        label {
            display: inline;
        }
        .newsSubmit { float: right; }
        .radiobutton {display:inline;}
        .input-append, .input-prepend {
            width: 100%;
        }
        .input-append input#txtemailTerms {
            width:50%;
        }
        .input-append input#btnSubmit {
            width:40%;
        }
    </style>

</head>
<body>
    <div id="thankyou" runat="server"></div>
    <form id="form1" runat="server">
        <div>
                <asp:Label ID="Label1" runat="server" AssociatedControlID="txtemailTerms" Text="Your email:"></asp:Label><br />
                <div class="input-append">
                    <asp:TextBox ID="txtemailTerms" runat="server"></asp:TextBox>    
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" class="btn" type="button" />
                </div>
                <div class="radiobutton"> 
                <asp:RadioButton ID="RD_Sub" runat="server" GroupName="ISsubunsub" />
                    <label for="RD_Sub">Subscribe</label>
                </div>
            <br/> 
                <div class="radiobutton"> 
                    <asp:RadioButton ID="RD_Unsub" runat="server" GroupName="ISsubunsub" />
                    <label for="RD_Unsub">Unsubscribe</label>
                    </div> 
                    <br /><br />
                    <asp:CustomValidator ID="CustomValidator1" runat="server" Display="Dynamic" CssClass="alert" ErrorMessage="Please check Subscribe or Unsubscribe."
                     ForeColor="Red"></asp:CustomValidator>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtemailTerms"
                 Display="Dynamic" ErrorMessage="Please enter an email address." CssClass="alert"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemailTerms"
                 Display="Dynamic" ErrorMessage="Please enter a valid email address." CssClass="alert"
                  ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </div>
    </form>
            
</body>
</html>
