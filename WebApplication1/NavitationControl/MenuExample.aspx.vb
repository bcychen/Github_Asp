Public Class MenuExample
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Menu1_MenuItemClick(sender As Object, e As MenuEventArgs) Handles Menu1.MenuItemClick
        Dim str As String = e.Item.Text.ToUpper()

        Select Case (str)

            Case "CHECKBOX"
                Response.Redirect("~/StandardControls/CheckBox.aspx")
        End Select



    End Sub
End Class