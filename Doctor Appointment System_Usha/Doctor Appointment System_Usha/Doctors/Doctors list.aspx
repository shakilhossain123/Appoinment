<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Doctors list.aspx.cs" Inherits="Doctor_Appointment_System_Usha.Doctors.Doctors_list" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            &nbsp;Doctor List<br />
            <br />
            <br />
        </div>
        <asp:GridView ID="GridView1" runat="server" Height="136px" Width="620px" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="Gray" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="age" HeaderText="age" SortExpression="age" />
                <asp:BoundField DataField="sex" HeaderText="sex" SortExpression="sex" />
                <asp:BoundField DataField="contact_no" HeaderText="contact_no" SortExpression="contact_no" />
                <asp:BoundField DataField="department" HeaderText="department" SortExpression="department" />
                <asp:CommandField HeaderText="Appoinment" SelectText="Take Appoinment" ShowSelectButton="True" />
            </Columns>
        </asp:GridView>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Doctor_Appointment_System_UshaConnectionString2 %>" SelectCommand="SELECT [id], [name], [age], [sex], [contact_no], [department] FROM [Doctor]"></asp:SqlDataSource>
    </form>
</body>
</html>
