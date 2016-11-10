Attribute VB_Name = "WellsFargo"
Public lng As Long


Sub lastCell(sCell As String)
Attribute lastCell.VB_ProcData.VB_Invoke_Func = " \n14"
' Finds last row in used range given a cell input
' using immediate window syntaxt is:  lastCell "A1"
lng = Range(sCell).SpecialCells(xlCellTypeLastCell).Row
'MsgBox i
End Sub

Sub removeNamesWells()
'loops through name columns and checks for billing contacts
'Removes billing contact names so Name column is standard
'if row doesn't have billing contact, deletes blank cell from column N
    ' so that the Amount column lines up

Dim count As Integer
Dim lastRow As Integer


Call lastCell("F1")
'finds last row number and assigns it to global variable lng
lastRow = CInt(lng)

For count = 1 To lastRow
'loop through column
    If Cells(count, 6).Value <> "" And Cells(count, 6).Value <> Cells(count, 5) Then
    'if cell isn't blank and cell in F doesn't match cell in E
        Cells(count, 6).Delete Shift:=xlToLeft
    Else
    'if there isnt a billing contact name
    Cells(count, 14).Delete Shift:=xlToLeft
    'makes sure the amount lines up
    End If
    
Next count

End Sub

Sub formatAddressWells()
'Need this to allow text-to-columns to work in addressColumns()
'loops through address column, converts existing commas to spaces
'then converts carraige returns [Chr(10)] to commas
'then invokes addressColumns()
Dim count As Integer
Dim lastRow As Integer
Dim myString As String
Dim rng1 As Range
Dim rng2 As Range

Call lastCell("F1")

lastRow = CInt(lng)

For count = 1 To lastRow
    If Not IsEmpty(Cells(count, 6).Value) Then
 Cells(count, 6) = Replace(Cells(count, 6), ",", " ")
 Cells(count, 6) = Replace(Cells(count, 6), Chr(10), ",")
End If
Next count

Call addressColumns



End Sub

Sub addressColumns()
Dim rng1 As Range
Dim rng2 As Range

Range("G:N").Insert Shift:=xlToRight
'Runs Text to columns on address columns
'seperates into columns based on commas
Set rng1 = Range("F:F")
rng1.TextToColumns _
Destination:=Range("F1"), _
DataType:=xlDelimited, _
TextQualifier:=xlDoubleQuote, _
ConsecutiveDelimiter:=False, _
Tab:=True, _
Semicolon:=False, _
Space:=False, _
Comma:=True, _
other:=False

'Removes Billing Contact Name
Call removeNamesWells
'Removes Address Secondary lines
Call removeAddress2
'Splits cell containing city, state and zip into three columns
Call splitCityStateZip


End Sub


Sub WellsFull()
'Runs fomatting subroutines for Wells fargo funding requests from QBO

Application.Calculation = xlCalculationManual
Application.ScreenUpdating = False
Application.DisplayStatusBar = False
'Stops excel from refreshing screen for performance optimization

Range("1:4").Delete (xlUp)
Cells.Select
Selection.UnMerge

Call formatAddressWells

End Sub


Sub removeAddress2()
Dim rng As Range
Dim count As Integer
Dim lastRow As Integer
Dim str1 As String



Call lastCell("I1")

lastRow = CInt(lng)

For count = 1 To lastRow
    If Not IsEmpty(Cells(count, 9).Value) Then
        
        'Replace second address with city state zip
        Cells(count, 8).Value = Cells(count, 9).Value
        'sets origional cell to blank
        Cells(count, 9).Value = ""
    End If
    
    If Cells(count, 8) = "" Then
        Cells(count, 8).Value = Cells(count, 7).Value
        Cells(count, 7).Value = ""
    End If
        
Next count

End Sub

Sub splitCityStateZip()
Dim rng As Range
Dim count As Integer
Dim lastRow As Integer
Dim str1 As String



Call lastCell("I1")

lastRow = CInt(lng)

For count = 1 To lastRow
    If Len(Cells(count, 8).Value) > 9 Then
    str1 = Cells(count, 8).Value
    'Remove spaces
    'str1 = Replace(str1, " ", "")
    'Convert double Space to Single space
    str1 = Replace(str1, "  ", " ")
    'set cells value to new string
    Cells(count, 8).Value = str1
    str1 = Right(str1, 8)
    str1 = Trim(str1)
    Cells(count, 9).Value = str1
    str1 = Cells(count, 8).Value
    str1 = Left(str1, Len(str1) - 8)
    str1 = Trim(str1)
    Cells(count, 8).Value = str1
    Range("J:J").NumberFormat = "00000"
    str1 = Cells(count, 9).Value
    str1 = Right(str1, 5)
    Cells(count, 10).Value = str1
    str1 = Cells(count, 9).Value
    str1 = Left(str1, 2)
    Cells(count, 9).Value = str1
    End If
    
Next count

Call lastFormat


End Sub

Sub lastFormat()
'inserts extra columns and sets column names

Range("E:E").Cut
'cut Name column
Range("N:N").Insert Shift:=xlToRight
'paste name column
Range("J:L").Delete Shift:=xlToLeft
'Delete Empties

For colx = 2 To 30 Step 2
Columns(colx).Insert Shift:=xlToRight
Next colx
'Inserts a column between every other column

Range("A:A,B:B").Insert Shift:=xlToRight

Range("E1").Value = "Type"
Range("K1").Value = "Name Street1"
Range("M1").Value = "Name Street2"
Range("O1").Value = "Name City"
Range("Q1").Value = "Name State"
Range("S1").Value = "Name Zip"

Range("Y:Y").Style = "Currency"

Cells.ColumnWidth = 1
Cells.Columns.AutoFit
Cells.Rows.AutoFit

Application.Calculation = xlCalculationAutomatic
Application.ScreenUpdating = True
Application.DisplayStatusBar = True

'Turns screen refresh back on so you can work with file


End Sub


Sub colNames()

Range("E1").Value = "Type"
Range("K1").Value = "Name Street1"
Range("M1").Value = "Name Street2"
Range("O1").Value = "Name City"
Range("Q1").Value = "Name State"
Range("S1").Value = "Name Zip"

End Sub

