Public Class controlTest2
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Label1.Text = "<script>alert('スクリプト実行！');</script>"
        Literal1.Text = "<script>alert('スクリプト実行！');</script>"
    End Sub
End Class