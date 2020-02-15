Public Class validateTest
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub TextBox4_TextChanged(sender As Object, e As EventArgs) Handles txtEmail2.TextChanged

    End Sub

    Protected Sub btnSubmit_Click(sender As Object, e As EventArgs) Handles btnSubmit.Click
        If Page.IsValid Then
            lblResult.Text = "すべて正しい値です。"
        Else
            'ただし、クライアント側でValidation処理される場合は、そもそもイベントが起動しない
            lblResult.Text = "不正な値があります。"
        End If
    End Sub
End Class