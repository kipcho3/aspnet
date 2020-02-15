<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="validateTest.aspx.vb" Inherits="WebApplication1.validateTest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>検証コントロール</title>
    <link href="../Site.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Label ID="Label1" runat="server" Text="名前："></asp:Label>
        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="reqName" runat="server" ControlToValidate="txtName" ErrorMessage="名前は必須です。" CssClass="valid"></asp:RequiredFieldValidator>
        <p>
            <asp:Label ID="Label2" runat="server" Text="体重："></asp:Label>
            <asp:TextBox ID="txtWeight" runat="server" Columns="5"></asp:TextBox>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtWeight" ErrorMessage="体重は0～300で指定してください。" CssClass="valid" MaximumValue="300" MinimumValue="0" Type="Integer"></asp:RangeValidator>
        </p>
        <asp:Label ID="Label3" runat="server" Text="誕生日："></asp:Label>
        <asp:TextBox ID="txtBirth" runat="server" Columns="10"></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtBirth" ErrorMessage="日付が不正です。" Operator="DataTypeCheck" SetFocusOnError="True" Type="Date"></asp:CompareValidator>
        <p>
            <asp:Label ID="Label4" runat="server" Text="E-Mail："></asp:Label>
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        </p>
        <asp:Label ID="Label5" runat="server" Text="E-Mail2："></asp:Label>
        <asp:TextBox ID="txtEmail2" runat="server"></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="txtEmail" ControlToValidate="txtEmail2" ErrorMessage="メール１と２が違います。"></asp:CompareValidator>
        <p>
            <asp:Button ID="btnSubmit" runat="server" Text="決定" />
        </p>
        <asp:Label ID="lblResult" runat="server" Text="lblResult"></asp:Label>
    </form>
</body>
</html>
