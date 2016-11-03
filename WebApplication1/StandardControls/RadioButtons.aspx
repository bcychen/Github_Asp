<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="RadioButtons.aspx.vb" Inherits="WebApplication1.RadioButtons" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            border-style: solid;
            border-width: 3px;
            background-color: aqua;
        }
        .auto-style2 {
            width: 392px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Text="Salary"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Text="Allowance"></asp:Label>
                </td>
                <td>
                    <asp:RadioButton ID="RadioButton1" runat="server" Text="HRA" AutoPostBack="True" GroupName="Allowances" />
                    <br />
                    <asp:RadioButton ID="RadioButton2" runat="server" Text="CA" AutoPostBack="True" GroupName="Allowances" />
                    <br />
                    <asp:RadioButton ID="RadioButton3" runat="server" Text="MA" AutoPostBack="True" GroupName="Allowances" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label3" runat="server" Text="Net Salary"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
