<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="controlTest.aspx.vb" Inherits="WebApplication1.controlTest" %>

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
        <asp:Label ID="Label1" runat="server" Text="好きな食べ物は？"></asp:Label>
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" RepeatDirection="Horizontal">
            <asp:ListItem Selected="True">お寿司</asp:ListItem>
            <asp:ListItem>焼肉</asp:ListItem>
            <asp:ListItem>うなぎ</asp:ListItem>
        </asp:RadioButtonList>
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        <p>
            <asp:Label ID="Label3" runat="server" Text="好きな乗り物は？"></asp:Label>
        </p>
        <asp:CheckBoxList ID="CheckBoxList1" runat="server" AutoPostBack="True" RepeatDirection="Horizontal">
            <asp:ListItem>乗用車</asp:ListItem>
            <asp:ListItem>トラック</asp:ListItem>
            <asp:ListItem>消防車</asp:ListItem>
        </asp:CheckBoxList>
        <asp:Label ID="Label4" runat="server" Text="UPファイルを選択："></asp:Label>
        <p>
            <asp:FileUpload ID="FileUpload1" runat="server" />
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" Text="アップロード" />
        </p>
        <asp:Label ID="Label5" runat="server" Text="複数ファイルを選択："></asp:Label>
        <p>
            <asp:FileUpload ID="FileUpload2" runat="server" AllowMultiple="True" />
        </p>
        <p>
            <asp:Button ID="Button2" runat="server" Text="複数アップロード" />
        </p>
    </form>
</body>
</html>
