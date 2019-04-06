<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="Doctor_Appointment_System_Usha.login_page" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
	<meta name="description" content="">
	<meta name="author" content="">
	<title>Registration</title>
	<link rel="stylesheet" href="assets/styles/style.min.css">
	<link rel="stylesheet" href="assets/plugin/waves/waves.min.css">
</head>
<div id="single-wrapper">
	<form action="#" class="frm-single" name="form1" runat="server">
		<div class="inside">
			<div class="title"><strong>Telephone</strong> Directory</div>
			<div class="frm-title">Register</div>
			
            <asp:TextBox ID="firstname" runat="server" class="frm-inp" placeholder="First Name"></asp:TextBox> <i class="fa fa-user frm-ico"></i>
			 <asp:TextBox ID="lastname" runat="server" class="frm-inp" placeholder="Last Name"></asp:TextBox><i class="fa fa-user frm-ico"></i>
			 <asp:TextBox ID="email" runat="server" class="frm-inp" placeholder="Email"></asp:TextBox><i class="fa fa-envelope frm-ico"></i>
			 <asp:TextBox ID="username" runat="server" class="frm-inp" placeholder="User Name"></asp:TextBox><i class="fa fa-user frm-ico"></i>
			 <asp:TextBox ID="password" runat="server" class="frm-inp" placeholder="Password" TextMode="Password"></asp:TextBox><i class="fa fa-lock frm-ico"></i>
		 <asp:TextBox ID="contact" runat="server" class="frm-inp" placeholder="Contact"></asp:TextBox><i class="fa fa-lock frm-ico"></i>
			
            <asp:Button ID="Button1" runat="server" Text="register" class="frm-submit" OnClick="Button1_Click2"  />

			<a href="page-login.html" class="a-link"><i class="fa fa-sign-in"></i>Already have account? Login.</a>
		</div>
	</form>
</div>

		<script src="assets/script/html5shiv.min.js"></script>
		<script src="assets/script/respond.min.js"></script>
	<script src="assets/scripts/jquery.min.js"></script>
	<script src="assets/scripts/modernizr.min.js"></script>
	<script src="assets/plugin/bootstrap/js/bootstrap.min.js"></script>
	<script src="assets/plugin/nprogress/nprogress.js"></script>
	<script src="assets/plugin/waves/waves.min.js"></script>
	<script src="assets/scripts/main.min.js"></script>
</body>

</html>
