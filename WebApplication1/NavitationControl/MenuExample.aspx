<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="MenuExample.aspx.vb" Inherits="WebApplication1.MenuExample" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:Menu ID="Menu1" runat="server" BackColor="#FFFBD6" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#990000" Orientation="Horizontal" StaticSubMenuIndent="10px">
            <DynamicHoverStyle BackColor="#990000" ForeColor="White" />
            <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <DynamicMenuStyle BackColor="#FFFBD6" />
            <DynamicSelectedStyle BackColor="#FFCC66" />
            <Items>
                <asp:MenuItem Text="DataBound Control" Value="DataBound Control">
                    <asp:MenuItem NavigateUrl="~/DataBoundControls/DatraList.aspx" Text="Data List" Value="Data List"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/DataBoundControls/GridVIewEXample.aspx" Text="GridView" Value="New Item"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Standard Controls" Value="Standard Controls">
                    <asp:MenuItem NavigateUrl="~/StandardControls/RadioButtons.aspx" Text="Radio Button" Value="Radio Botton"></asp:MenuItem>
                    <asp:MenuItem Text="CheckBox" Value="CheckBox"></asp:MenuItem>
                </asp:MenuItem>
            </Items>
            <StaticHoverStyle BackColor="#990000" ForeColor="White" />
            <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <StaticSelectedStyle BackColor="#FFCC66" />
        </asp:Menu>
    </form>
</body>
</html>
