<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Faculty_attendence.aspx.cs" Inherits="WebApplication_Project.Faculty_attendence" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #89CFF0;
        }
        #form1 {
            width: 80%;
            margin: auto;
            padding: 20px;
            background-color: #fff;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
         #form2 {
            width: 80%;
            margin: auto;
            padding: 20px;
            background-color: #fff;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        h1 {
            text-align: center;
            margin-left: 40px;
        }
        table {
            border-collapse: collapse;
            margin-left: 0px;
            margin-top: 57px;
        }
        th, td {
            text-align: left;
            padding: 8px;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #0E86D4;
            font-weight: bold;
        }
        

    </style>

</head>
<body>
    <form id="form1" runat="server">
        <h1>Attendence</h1>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." Height="249px" style="text-align: center" Width="754px">
            <Columns>
                <asp:BoundField DataField="attendance_date" HeaderText="attendance_date" SortExpression="attendance_date" />
                <asp:BoundField DataField="duration" HeaderText="duration" SortExpression="duration" />
                <asp:BoundField DataField="lecture" HeaderText="lecture" SortExpression="lecture" />
                <asp:BoundField DataField="student_id" HeaderText="student_id" SortExpression="student_id" />
                <asp:TemplateField HeaderText="Attendence Status">
                    <ItemTemplate>
                        <asp:CheckBox ID="CheckBox1" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged" style="text-align: right" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        </br></br>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Update Attendence" />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProjectConnectionString1 %>" OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT [attendance_date], [duration], [lecture], [student_id] FROM [attendance]"></asp:SqlDataSource>
    </form>
</body>
</html>
