Public Class controlTest
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    'AutoPostBackをTrueにしないと反応しない
    Protected Sub RadioButtonList1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles RadioButtonList1.SelectedIndexChanged
        'Label2.Text = "「" & RadioButtonList1.SelectedValue & "」が選択されました。"

        'この書き方でも同じ動きをする
        Label2.Text = "「" & RadioButtonList1.Items(RadioButtonList1.SelectedIndex).Value & "」が選択されました。"
        Label2.Text = "「" & RadioButtonList1.SelectedItem.Value & "」が選択されました。"
    End Sub


    'こちらもAutoPostBackをTrueにしないと反応しない
    Protected Sub CheckBoxList1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles CheckBoxList1.SelectedIndexChanged
        '複数選択できるので、複数書き出す
        For Each item As ListItem In CheckBoxList1.Items
            If item.Selected Then
                Response.Write(item.Value & "<br>")
            End If
        Next
    End Sub

    'ファイルアップロードのコントロールにセットされているファイルを取り込む
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim uppath As String = ""

        'ファイルはセットされているか？
        If FileUpload1.HasFile Then
            Try
                'ファイルを取得し、MapPathでパスを取得し(「~」はアプリケーションルート)、ファイルの保存先の文字列を作成
                Dim postfile As HttpPostedFile = FileUpload1.PostedFile
                uppath = Server.MapPath("~/App_Data/doc/") & System.IO.Path.GetFileName(postfile.FileName)
                postfile.SaveAs(uppath)

                Label4.Text = postfile.FileName & "をアップロードしました。"
            Catch ex As Exception
                Response.Write(uppath)
                Console.Write(uppath)
                Response.Write(ex.ToString)
            End Try
        Else
            Response.Write("ファイルなし。")
            Response.Write(uppath)
        End If
    End Sub

    'FileUploadコントロールのAllowMulltipleをtrueにすると複数ファイルできる
    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Dim uppath As String = ""

        'ファイルはセットされているか？
        If FileUpload2.HasFile Then
            Try
                Dim result As String = ""

                '複数ファイルなので、foreachで回す
                For Each f As HttpPostedFile In FileUpload2.PostedFiles
                    'ファイルを取得し、MapPathでパスを取得し(「~」はアプリケーションルート)、ファイルの保存先の文字列を作成
                    uppath = Server.MapPath("~/App_Data/doc/") & System.IO.Path.GetFileName(f.FileName)
                    f.SaveAs(f.FileName)
                    result &= f.FileName & " "
                    f.SaveAs(uppath)
                Next

                Label5.Text = result & "をアップロードしました。"
            Catch ex As Exception
                Response.Write(uppath)
                Console.Write(uppath)
                Response.Write(ex.ToString)
            End Try
        Else
            Response.Write("ファイルなし。")
            Response.Write(uppath)
        End If
    End Sub
End Class
