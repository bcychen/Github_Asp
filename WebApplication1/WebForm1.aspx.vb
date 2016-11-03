Public Class WebForm1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Response.Write("Welcome to ASP.NET")

        Response.Write("<br><b>Welcome to ASP.NET </b>")
        Response.Write("<br><i>Welcome to ASP.NET </i>")
        Response.Write("<br><u>Welcome to ASP.NET </u>")

        Response.Write("<br><u><b><i>Welcome to ASP.NET </i></b></u>")



    End Sub

End Class