<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="FormView.aspx.vb" Inherits="WebApplication1.FormView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:FormView ID="FormView1" runat="server" AllowPaging="True" CellPadding="4" DataKeyNames="isbn" DataSourceID="sds" ForeColor="#333333">
                <EditItemTemplate>
                    isbn:
                    <asp:Label ID="isbnLabel1" runat="server" Text='<%# Eval("isbn") %>' />
                    <br />
                    title:
                    <asp:TextBox ID="titleTextBox" runat="server" Text='<%# Bind("title") %>' />
                    <br />
                    publish:
                    <asp:TextBox ID="publishTextBox" runat="server" Text='<%# Bind("publish") %>' />
                    <br />
                    price:
                    <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                    <br />
                    published:
                    <asp:TextBox ID="publishedTextBox" runat="server" Text='<%# Bind("published") %>' />
                    <br />
                    cdrom:
                    <asp:CheckBox ID="cdromCheckBox" runat="server" Checked='<%# Bind("cdrom") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="キャンセル" />
                </EditItemTemplate>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderTemplate>
                    書籍情報フォーム<br />
                </HeaderTemplate>
                <InsertItemTemplate>
                    isbn:
                    <asp:TextBox ID="isbnTextBox" runat="server" Text='<%# Bind("isbn") %>' />
                    <br />
                    title:
                    <asp:TextBox ID="titleTextBox" runat="server" Text='<%# Bind("title") %>' />
                    <br />
                    publish:
                    <asp:TextBox ID="publishTextBox" runat="server" Text='<%# Bind("publish") %>' />
                    <br />
                    price:
                    <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                    <br />
                    published:
                    <asp:TextBox ID="publishedTextBox" runat="server" Text='<%# Bind("published") %>' />
                    <br />
                    cdrom:
                    <asp:CheckBox ID="cdromCheckBox" runat="server" Checked='<%# Bind("cdrom") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="挿入" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="キャンセル" />
                </InsertItemTemplate>
                <ItemTemplate>
                    isbn:
                    <asp:Label ID="isbnLabel" runat="server" Text='<%# Eval("isbn") %>' />
                    <br />
                    title:
                    <asp:Label ID="titleLabel" runat="server" Text='<%# Bind("title") %>' />
                    <br />
                    publish:
                    <asp:Label ID="publishLabel" runat="server" Text='<%# Bind("publish") %>' />
                    <br />
                    price:
                    <asp:Label ID="priceLabel" runat="server" Text='<%# Bind("price") %>' />
                    <br />
                    published:
                    <asp:Label ID="publishedLabel" runat="server" Text='<%# Bind("published") %>' />
                    <br />
                    cdrom:
                    <asp:CheckBox ID="cdromCheckBox" runat="server" Checked='<%# Bind("cdrom") %>' Enabled="false" />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="編集" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="削除" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="新規作成" />
                </ItemTemplate>
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            </asp:FormView>
            <asp:SqlDataSource ID="sds" runat="server" ConnectionString="<%$ ConnectionStrings:SelfAsp %>" DeleteCommand="DELETE FROM [Book] WHERE [isbn] = @isbn" InsertCommand="INSERT INTO [Book] ([isbn], [title], [publish], [price], [published], [cdrom]) VALUES (@isbn, @title, @publish, @price, @published, @cdrom)" SelectCommand="SELECT [isbn], [title], [publish], [price], [published], [cdrom] FROM [Book] ORDER BY [published] DESC" UpdateCommand="UPDATE [Book] SET [title] = @title, [publish] = @publish, [price] = @price, [published] = @published, [cdrom] = @cdrom WHERE [isbn] = @isbn">
                <DeleteParameters>
                    <asp:Parameter Name="isbn" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="isbn" Type="String" />
                    <asp:Parameter Name="title" Type="String" />
                    <asp:Parameter Name="publish" Type="String" />
                    <asp:Parameter Name="price" Type="Int32" />
                    <asp:Parameter DbType="Date" Name="published" />
                    <asp:Parameter Name="cdrom" Type="Boolean" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="title" Type="String" />
                    <asp:Parameter Name="publish" Type="String" />
                    <asp:Parameter Name="price" Type="Int32" />
                    <asp:Parameter DbType="Date" Name="published" />
                    <asp:Parameter Name="cdrom" Type="Boolean" />
                    <asp:Parameter Name="isbn" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
