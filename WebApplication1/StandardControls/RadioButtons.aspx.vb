Public Class RadioButtons
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub RadioButton1_CheckedChanged(sender As Object, e As EventArgs) Handles RadioButton1.CheckedChanged
        If IsNumeric(TextBox1.Text) Then
            Calculate(1)
        Else
            MsgBox("Please enter number")
        End If


    End Sub

    Protected Sub RadioButton2_CheckedChanged(sender As Object, e As EventArgs) Handles RadioButton2.CheckedChanged
        If IsNumeric(TextBox1.Text) Then
            Calculate(2)
        Else
            MsgBox("Please enter number")
        End If

    End Sub

    Protected Sub RadioButton3_CheckedChanged(sender As Object, e As EventArgs) Handles RadioButton3.CheckedChanged
        If IsNumeric(TextBox1.Text) Then
            Calculate(3)
        Else
            MsgBox("Please enter number")
        End If

    End Sub
    Function Calculate(ByVal i As Integer) As Double
        Dim NetSalary, Salary, Allowance As Double

        Salary = CDbl(TextBox1.Text)

        Select Case i
            Case 1
                Allowance = Salary * 10 / 100
            Case 2
                Allowance = Salary * 20 / 100
            Case 3
                Allowance = Salary * 30 / 100
        End Select


        NetSalary = Salary + Allowance

        TextBox2.Text = NetSalary.ToString


    End Function
End Class