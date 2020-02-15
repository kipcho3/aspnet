<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="controlTest2.aspx.vb" Inherits="WebApplication1.controlTest2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <p>
            <asp:Literal ID="Literal1" runat="server" Text="リテラル"></asp:Literal>
        </p>
        <asp:Button ID="Button1" runat="server" Text="Button" />
        <p>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="https://yahoo.co.jp" Target="_blank">google</asp:HyperLink>
        </p>
    </form>
</body>
</html>
