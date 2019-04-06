<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="appointment.aspx.cs" Inherits="Doctor_Appointment_System_Usha.User.appointment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 51%;
            height: 271px;
        }
        .auto-style2 {
            width: 132px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">Dr. Name</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Height="17px" Width="333px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Patient Name</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Height="17px" Width="333px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Contact No</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" Height="17px" Width="333px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Select Date</td>
                    <td>
                        <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Width="350px">
                            <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                            <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                            <OtherMonthDayStyle ForeColor="#999999" />
                            <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                            <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                            <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                            <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                            <WeekendDayStyle BackColor="#CCCCFF" />
                        </asp:Calendar>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Check Available Time</td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button1" runat="server" Text="Check Availablity" OnClick="Check" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Available Time</td>
                    <td>
                        <br />
                        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                            <asp:ListItem>10:00 AM</asp:ListItem>
                            <asp:ListItem>10:30 AM</asp:ListItem>
                            <asp:ListItem>10:00 AM</asp:ListItem>
                            <asp:ListItem>11:30 AM</asp:ListItem>
                            <asp:ListItem>12:00 PM</asp:ListItem>
                            <asp:ListItem>12:30 PM</asp:ListItem>
                            <asp:ListItem>1:00 PM</asp:ListItem>
                            <asp:ListItem>1:30 PM</asp:ListItem>
                            <asp:ListItem>2:00 PM</asp:ListItem>
                            <asp:ListItem>2:30 PM</asp:ListItem>
                            <asp:ListItem>3:00 PM</asp:ListItem>
                        </asp:RadioButtonList>
                        <br />
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Book</td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server" Text="Book Now" OnClick="insert" />
                    </td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>