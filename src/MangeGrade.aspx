<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MangeGrade.aspx.cs" Inherits="WebApplication_Project.WebForm2" %>

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
        h1 {
            text-align: center;
            margin-left: 40px;
        }
        table {
            border-collapse: collapse;
            margin-left: 0px;
            margin-top: 88px;
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
</body>
</html>
<h2> Modify Student Grade</h2>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="student_id,course_id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="student_id" HeaderText="student_id" ReadOnly="True" SortExpression="student_id" />
            <asp:BoundField DataField="course_id" HeaderText="course_id" ReadOnly="True" SortExpression="course_id" />
            <asp:BoundField DataField="grade" HeaderText="grade" SortExpression="grade" />
            <asp:BoundField DataField="grade_point" HeaderText="grade_point" SortExpression="grade_point" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProjectConnectionString1 %>" DeleteCommand="Delete from [transcript] where course1_id=@course_id or course2_id=@course_id or course3_id=@course_id or course4_id=@course_id or course5_id=@course_id and student_id=@student_id  DELETE FROM [student_grade] WHERE [student_id] = @student_id AND [course_id] = @course_id" InsertCommand="INSERT INTO [student_grade] ([student_id], [course_id], [grade], [grade_point]) VALUES (@student_id, @course_id, @grade, @grade_point)" ProviderName="<%$ ConnectionStrings:ProjectConnectionString1.ProviderName %>" SelectCommand="SELECT [student_id], [course_id], [grade], [grade_point] FROM [student_grade]" UpdateCommand="UPDATE [student_grade] SET [grade] = @grade, [grade_point] = @grade_point WHERE [student_id] = @student_id AND [course_id] = @course_id">
        <DeleteParameters>
            <asp:Parameter Name="student_id" Type="String" />
            <asp:Parameter Name="course_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="student_id" Type="String" />
            <asp:Parameter Name="course_id" Type="Int32" />
            <asp:Parameter Name="grade" Type="String" />
            <asp:Parameter Name="grade_point" Type="Double" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="grade" Type="String" />
            <asp:Parameter Name="grade_point" Type="Double" />
            <asp:Parameter Name="student_id" Type="String" />
            <asp:Parameter Name="course_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
   
 
</form>

