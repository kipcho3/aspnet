<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="FormViewAlbum.aspx.vb" Inherits="WebApplication1.FormViewAlbum" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="aid" DataSourceID="sds_Album1">
                <EditItemTemplate>
                    aid:
                    <asp:Label ID="aidLabel1" runat="server" Text='<%# Eval("aid") %>' />
                    <br />
                    category:
                    <asp:TextBox ID="categoryTextBox" runat="server" Text='<%# Bind("category") %>' />
                    <br />
                    comment:
                    <asp:TextBox ID="commentTextBox" runat="server" Text='<%# Bind("comment") %>' />
                    <br />
                    updated:
                    <asp:TextBox ID="updatedTextBox" runat="server" Text='<%# Bind("updated") %>' />
                    <br />
                    favorite:
                    <asp:CheckBox ID="favoriteCheckBox" runat="server" Checked='<%# Bind("favorite") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="キャンセル" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    aid:
                    <asp:TextBox ID="aidTextBox" runat="server" Text='<%# Bind("aid") %>' />
                    <br />
                    category:
                    <asp:TextBox ID="categoryTextBox" runat="server" Text='<%# Bind("category") %>' />
                    <br />
                    comment:
                    <asp:TextBox ID="commentTextBox" runat="server" Text='<%# Bind("comment") %>' />
                    <br />
                    updated:
                    <asp:TextBox ID="updatedTextBox" runat="server" Text='<%# Bind("updated") %>' />
                    <br />
                    favorite:
                    <asp:CheckBox ID="favoriteCheckBox" runat="server" Checked='<%# Bind("favorite") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="挿入" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="キャンセル" />
                </InsertItemTemplate>
                <ItemTemplate>
                    aid:
                    <asp:Label ID="aidLabel" runat="server" Text='<%# Eval("aid") %>' />
                    <br />
                    category:
                    <asp:Label ID="categoryLabel" runat="server" Text='<%# Bind("category") %>' />
                    <br />
                    comment:
                    <asp:Label ID="commentLabel" runat="server" Text='<%# Bind("comment") %>' />
                    <br />
                    updated:
                    <asp:Label ID="updatedLabel" runat="server" Text='<%# Bind("updated") %>' />
                    <br />
                    favorite:
                    <asp:CheckBox ID="favoriteCheckBox" runat="server" Checked='<%# Bind("favorite") %>' Enabled="false" />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="編集" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="削除" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="新規作成" />
                </ItemTemplate>
            </asp:FormView>
            <asp:SqlDataSource ID="sds_Album1" runat="server" ConnectionString="<%$ ConnectionStrings:SelfAsp %>" DeleteCommand="DELETE FROM [album] WHERE [aid] = @aid" InsertCommand="INSERT INTO [album] ([aid], [category], [comment], [updated], [favorite]) VALUES (@aid, @category, @comment, @updated, @favorite)" SelectCommand="SELECT [aid], [category], [comment], [updated], [favorite] FROM [album]" UpdateCommand="UPDATE [album] SET [category] = @category, [comment] = @comment, [updated] = @updated, [favorite] = @favorite WHERE [aid] = @aid">
                <DeleteParameters>
                    <asp:Parameter Name="aid" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="aid" Type="String" />
                    <asp:Parameter Name="category" Type="String" />
                    <asp:Parameter Name="comment" Type="String" />
                    <asp:Parameter DbType="Date" Name="updated" />
                    <asp:Parameter Name="favorite" Type="Boolean" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="category" Type="String" />
                    <asp:Parameter Name="comment" Type="String" />
                    <asp:Parameter DbType="Date" Name="updated" />
                    <asp:Parameter Name="favorite" Type="Boolean" />
                    <asp:Parameter Name="aid" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
