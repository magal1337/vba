Attribute VB_Name = "RmvOut"
Function RmvOut(sample, cell)

q1 = WorksheetFunction.Quartile_Inc(sample, 1)
q3 = WorksheetFunction.Quartile_Inc(sample, 3)
iqr = q3 - q1
Min = q1 - 1.5 * iqr
Max = q3 + 1.5 * iqr

If cell < Min Or cell > Max Then
RmvOut = ""
Else
RmvOut = cell
End If

End Function
