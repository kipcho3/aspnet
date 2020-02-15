<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="GridView.aspx.vb" Inherits="WebApplication1.GridView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="aid" DataSourceID="sds" ForeColor="Black" GridLines="Vertical" PageSize="3">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:HyperLinkField DataNavigateUrlFields="aid,updated" DataNavigateUrlFormatString="http://testtest.co.jp/{0}/{1:yyyy}" DataTextField="aid" DataTextFormatString="{0}" HeaderText="アルバムコード" />
                    <asp:ImageField DataAlternateTextField="aid" DataImageUrlField="aid" DataImageUrlFormatString="~/image/{0}.jpg" HeaderText="画像" ReadOnly="True">
                        <ControlStyle Height="40px" Width="40px" />
                    </asp:ImageField>
                    <asp:TemplateField HeaderText="分類" SortExpression="category">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("category") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("category") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="最終更新日" SortExpression="updated">
                        <AlternatingItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("updated") %>'></asp:TextBox>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="TextBox3" CssClass="valid" ErrorMessage="日付形式で入力してください" Operator="DataTypeCheck" Type="Date">*</asp:CompareValidator>
                        </AlternatingItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("updated") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("updated", "{0:yyyy年MM月dd日(ddd)}") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:CheckBoxField DataField="favorite" HeaderText="お気に入り" SortExpression="favorite" />
                    <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" />
                </Columns>
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#F7F7DE" />
                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                <SortedAscendingHeaderStyle BackColor="#848384" />
                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                <SortedDescendingHeaderStyle BackColor="#575357" />
            </asp:GridView>
            <asp:SqlDataSource ID="sds" runat="server" ConnectionString="<%$ ConnectionStrings:SelfAsp %>" DeleteCommand="DELETE FROM [album] WHERE [aid] = @aid" InsertCommand="INSERT INTO [album] ([aid], [category], [comment], [favorite], [updated]) VALUES (@aid, @category, @comment, @favorite, @updated)" SelectCommand="SELECT [aid], [category], [comment], [favorite], [updated] FROM [album]" UpdateCommand="UPDATE [album] SET [category] = @category, [comment] = @comment, [favorite] = @favorite, [updated] = @updated WHERE [aid] = @aid">
                <DeleteParameters>
                    <asp:Parameter Name="aid" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="aid" Type="String" />
                    <asp:Parameter Name="category" Type="String" />
                    <asp:Parameter Name="comment" Type="String" />
                    <asp:Parameter Name="favorite" Type="Boolean" />
                    <asp:Parameter DbType="Date" Name="updated" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="category" Type="String" />
                    <asp:Parameter Name="comment" Type="String" />
                    <asp:Parameter Name="favorite" Type="Boolean" />
                    <asp:Parameter DbType="Date" Name="updated" />
                    <asp:Parameter Name="aid" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
