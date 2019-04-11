<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Subscribe-BRP.aspx.vb" Inherits="brp_e_newsletter_Subscribe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="X-UA-Compatible" content="IE=9,10,11" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>BRP Newsletter Subscribe Page</title>

<link href="/brp/css/bootstrap.min.css" rel="stylesheet">
<!-- Google Fonts Source Sans & Merriweather -->
<link href="https://fonts.googleapis.com/css?family=Merriweather:300,300i|Source+Sans+Pro:300,300i,400,400i,600,600i,700,700i" rel="stylesheet">
<link href="/brp/css/styles.css" rel="stylesheet">
<style type="text/css">
	.homepage .form-container {
    	padding: 10px 0px 0px 0px;
	}
</style>
<!--[if lte IE 9]>
	<link href="/brp/css/ie-styles-min.css" rel="stylesheet" type="text/css">
<![endif]-->
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->
</head>
<body class="homepage">
<div class="form-container">
    <div id="thankyou" class="email-validation-message" runat="server"></div>
    <form id="frm_SubScribe" runat="server">
								<div class="form-group">
									<asp:Label ID="Label1" runat="server" AssociatedControlID="txtemailTerms" Text="Email Address" class="email-label"></asp:Label>
                                    <asp:TextBox ID="txtemailTerms" runat="server" class="form-control"  size="28" type="text"></asp:TextBox>
                                    <div class="email-validation-message">
										<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtemailTerms"
					 Display="Dynamic" ErrorMessage="Please enter an email address." CssClass="alert alert-danger"></asp:RequiredFieldValidator>
										<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtemailTerms"
					 Display="Dynamic" ErrorMessage="<br><br>"></asp:RequiredFieldValidator>
                						<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemailTerms"
                 Display="Dynamic" ErrorMessage="Please enter a valid email address." CssClass="alert alert-danger"
                  ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
									</div>
									<div class="form-type-radio radio">
										<label for="RD_Sub" class="control-label">
										<asp:RadioButton ID="RD_Sub" runat="server" GroupName="ISsubunsub" checked="true" />
										<div class="control__indicator"></div>
										Subscribe</label>
									</div> <!-- /.input-line -->
									<div class="form-type-radio radio">
										<label for="RD_Unsub" class="control-label">
                                        <asp:RadioButton ID="RD_Unsub" runat="server" GroupName="ISsubunsub" />
										<div class="control__indicator"></div>
										Unsubscribe</label>
									</div> <!-- /.input-line -->
                                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" class="btn btn-default" type="button" />
								</div> <!-- /.form-group -->
        <div class="email-validation-message">           
		<asp:CustomValidator ID="CustomValidator1" runat="server" Display="Dynamic" CssClass="alert alert-danger" ErrorMessage="Please check the box to proceed."
                     ForeColor="Red"></asp:CustomValidator>
		</div>
                    
    </form>
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="/js/bootstrap.min.js"></script>
    <script type="text/javascript">
		$(document).ready(function() {
			$('span.form-radio input:radio');
		});
	</script>
</body>
</html>
