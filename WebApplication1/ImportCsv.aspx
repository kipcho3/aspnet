<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ImportCsv.aspx.vb" Inherits="WebApplication1.ImportCsv" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:FileUpload ID="FileUpload1" runat="server" />
        <div>
        </div>
        <asp:Button ID="btnUl" runat="server" Text="アップロード" />
        <asp:Button ID="Button1" runat="server" Text="Button" />
    </form>
</body>
</html>
