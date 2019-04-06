<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="appointment list.aspx.cs" Inherits="Doctor_Appointment_System_Usha.Doctors.appointment_list" EnableEventValidation="false" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .modalBackground
    {
        background-color: Black;
        filter: alpha(opacity=40);
        opacity: 0.4;
    }
        .auto-style1 {
            width: 47%;
            height: 159px;
            background-color: #66FFCC;
        }
        .auto-style2 {
            width: 420px;
        }
        .auto-style3 {
            height: 90px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Appointment List<br />
            <br />
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="180px" Width="648px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowDataBound="GridView1_RowDataBound">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="doctor_name" HeaderText="doctor_name" SortExpression="doctor_name">
                    </asp:BoundField>
                    <asp:BoundField DataField="paitent_name" HeaderText="paitent_name" SortExpression="paitent_name">
                    </asp:BoundField>
                    <asp:BoundField DataField="contact_no" HeaderText="contact_no" SortExpression="contact_no">
                    </asp:BoundField>
                    <asp:BoundField DataField="date" HeaderText="date" SortExpression="date">
                    </asp:BoundField>
                    <asp:BoundField DataField="time" HeaderText="time" SortExpression="time" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <br />
            <asp:LinkButton ID="LinkButton1" runat="server"></asp:LinkButton>
            <br />
            <br />
            <asp:Panel ID="Panel1" runat="server" Height="342px" Style="display:none"  >
                <br />
                <br />
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style2">Id</td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server" Width="334px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Doctor's Name</td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server" Width="334px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Patient Name</td>
                        <td>
                            <asp:TextBox ID="TextBox3" runat="server" Width="334px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Contact No</td>
                        <td>
                            <asp:TextBox ID="TextBox4" runat="server" Width="334px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Date</td>
                        <td>
                            <asp:TextBox ID="TextBox5" runat="server" Width="334px"></asp:TextBox>
                        </td>
                    </tr>
                     <tr>
                        <td class="auto-style2">Time</td>
                        <td>
                            <asp:TextBox ID="TextBox6" runat="server" Width="334px"></asp:TextBox>
                        </td>
                    </tr>
                    
                    <tr>
                        <td class="auto-style3" colspan="2">
                            <br />
                            <br />
                            <asp:Button ID="Button1" runat="server" Height="25px" Text="Update" Width="95px" OnClick = "Save"/>
                            &nbsp;
                            <asp:Button ID="Button2" runat="server" Height="25px" Text="Close" Width="95px" />
                            &nbsp;
                            <asp:Button ID="Button3" runat="server" Height="24px" Text="Delete" Width="70px" OnClick = "Delete" />
                            <br />
                        </td>
                    </tr>
                </table>
                <br />
                <br />
                <br />
                <br />
                <br />
            </asp:Panel>
            
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
            
            <br />
            <br />
            <ajaxToolkit:ModalPopupExtender ID="ModalPopupExtender1" TargetControlID="LinkButton1" PopupControlID="Panel1" CancelControlID="Button2" BackgroundCssClass="modalBackground" runat="server"> </ajaxToolkit:ModalPopupExtender>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </div>
    </form>
</body>
</html>