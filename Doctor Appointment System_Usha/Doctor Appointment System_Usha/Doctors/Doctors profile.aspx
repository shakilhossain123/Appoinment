<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Doctors profile.aspx.cs" Inherits="Doctor_Appointment_System_Usha.Doctors.Doctors_profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 73%;
            height: 313px;
        }
        .auto-style2 {
            height: 47px;
        }
        .auto-style3 {
            height: 46px;
        }
        .auto-style4 {
            height: 49px;
        }
        .auto-style5 {
            width: 182px;
            text-align: center;
        }
        .auto-style6 {
            height: 46px;
            width: 207px;
        }
        .auto-style7 {
            height: 49px;
            width: 207px;
        }
        .auto-style8 {
            width: 207px;
        }
        .auto-style9 {
            height: 47px;
            width: 207px;
        }
        .auto-style10 {
            height: 56px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table border="1" class="auto-style1">
                <tr>
                    <td class="auto-style6">Name</td>
                    <td class="auto-style3">
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td class="auto-style5" rowspan="5">
                        <asp:Image ID="Image1" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">Age</td>
                    <td class="auto-style4">
                        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">Sex</td>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">Contact No</td>
                    <td class="auto-style2">
                        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">Department</td>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10" colspan="3">Notifications&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                </tr>
            </table>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="See Appointment" />
            <br />
        </div>
    </form>
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
</body>
</html>
