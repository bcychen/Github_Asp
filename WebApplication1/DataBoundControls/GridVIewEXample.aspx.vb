Public Class WebForm2
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

     
 
    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged

        TextBox1.Text = GridView1.SelectedRow.Cells(1).Text
        TextBox2.Text = GridView1.SelectedRow.Cells(2).Text
        TextBox3.Text = GridView1.SelectedRow.Cells(3).Text
        TextBox4.Text = GridView1.SelectedRow.Cells(4).Text
    End Sub
End Class