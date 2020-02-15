Imports Microsoft.VisualBasic.FileIO
Imports System.Data
Imports System.Data.SqlClient

Public Class ImportCsv
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnUl_Click(sender As Object, e As EventArgs) Handles btnUl.Click
        Dim strFilePath As String = "C:\zwork\keibadata\file.csv"
        Dim strEncode As String = "UTF-8"
        Dim strSql As String = "insert into horse values(@a1, @a2, @a3,@a4, @a5, @a6)"
        Dim bFirstFlg As Boolean = True

        'DBアクセス
        Dim con As ConnectionStringSettings = ConfigurationManager.ConnectionStrings("SelfAsp")

        'ファイルを取り込む
        Using csvfile As New TextFieldParser(strFilePath, System.Text.Encoding.GetEncoding(strEncode))
            'CSVを指定
            csvfile.TextFieldType = FieldType.Delimited

            '区切り文字
            csvfile.SetDelimiters(",")

            'ファイル内容をループ
            While Not csvfile.EndOfData
                Dim row As String() = csvfile.ReadFields()

                If bFirstFlg Then
                    bFirstFlg = False
                    Continue While
                End If

                '現在行を読み込み
                Dim intColCnt As Integer = 0

                'DBに突っ込む
                Dim sql As New SqlCommand(strSql)

                For Each col As String In row
                    'debugとりあえず、コンソールに出してみる
                    'Console.WriteLine(col)

                    intColCnt += 1
                    sql.Parameters.AddWithValue("@a" & intColCnt.ToString, col)
                    If intColCnt = 6 Then Exit For
                Next

                Using db As New SqlConnection(con.ConnectionString)
                    sql.Connection = db
                    db.Open()
                    Dim tran As SqlTransaction = db.BeginTransaction

                    Try
                        sql.Transaction = tran
                        sql.ExecuteNonQuery()
                        tran.Commit()
                    Catch ex As Exception
                        Response.Write(ex.ToString)
                        tran.Rollback()
                        Exit While
                    Finally
                        sql.Dispose()
                        db.Close()
                    End Try
                End Using

            End While
        End Using
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim setting As ConnectionStringSettings = ConfigurationManager.ConnectionStrings("SelfAsp")

        Using db As New SqlConnection(setting.ConnectionString)
            Dim comm As New SqlCommand("select title from Book")

            comm.Connection = db
            db.Open()
            Dim reader As SqlDataReader = comm.ExecuteReader()
            db.Close()
        End Using
    End Sub
End Class
