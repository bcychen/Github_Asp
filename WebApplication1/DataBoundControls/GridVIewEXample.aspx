<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="GridVIewEXample.aspx.vb" Inherits="WebApplication1.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            background-color: #00FFFF;
        }
        .auto-style2 {
            width: 417px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ASPTrainingConnectionString %>" SelectCommand="SELECT * FROM [UserDetails]" DeleteCommand="DELETE FROM UserDetails WHERE (UserID = @UserID)" UpdateCommand="UPDATE UserDetails SET Password = @Password, Country = @Country, email = @Email, UserName = @UserName WHERE (UserID = @userID)">
            <DeleteParameters>
                <asp:ControlParameter ControlID="GridView1" Name="UserID" PropertyName="SelectedValue" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:ControlParameter ControlID="GridView1" Name="Password" PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="GridView1" Name="Country" PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="GridView1" Name="Email" PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="GridView1" Name="UserName" PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="GridView1" Name="userID" PropertyName="SelectedValue" />
            </UpdateParameters>
        </asp:SqlDataSource>
    <div>
    
        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="UserID" DataSourceID="SqlDataSource1" PageSize="4">
            <Columns>
                <asp:CommandField ShowSelectButton="True" ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:CheckBoxField DataField="isactive" HeaderText="isactive" SortExpression="isactive" />
                <asp:BoundField DataField="UserID" HeaderText="UserID" InsertVisible="False" ReadOnly="True" SortExpression="UserID" />
                <asp:CheckBoxField DataField="LockStatus" HeaderText="LockStatus" SortExpression="LockStatus" />
                <asp:BoundField DataField="NOFA" HeaderText="NOFA" SortExpression="NOFA" />
            </Columns>
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="White" ForeColor="#003399" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SortedAscendingCellStyle BackColor="#EDF6F6" />
            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
            <SortedDescendingCellStyle BackColor="#D6DFDF" />
            <SortedDescendingHeaderStyle BackColor="#002876" />
        </asp:GridView>
    
        <br />
        <br />
    
    </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Text="UserName"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label3" runat="server" Text="Country"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label4" runat="server" Text="Email"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
