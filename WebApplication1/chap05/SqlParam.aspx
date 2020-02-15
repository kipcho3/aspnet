<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="SqlParam.aspx.vb" Inherits="WebApplication1.SqlParam" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
        </div>
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" DataSourceID="sqs_list" DataTextField="category" DataValueField="category">
        </asp:RadioButtonList>
        <asp:SqlDataSource ID="sqs_list" runat="server" ConnectionString="<%$ ConnectionStrings:SelfAsp %>" SelectCommand="SELECT DISTINCT [category] FROM [album] ORDER BY [category]"></asp:SqlDataSource>
    </form>
</body>
</html>
