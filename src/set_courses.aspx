<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="set_courses.aspx.cs" Inherits="WebApplication_Project.set_courses" %>

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
            border: 1px solid #ddd;
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
            background-color: #ddd;
            font-weight: bold;
        }
        

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <h1>Offered Courses</h1>
        <div style="margin-left: 360px">
            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="course_id" DataSourceID="SqlDataSource2" EmptyDataText="There are no data records to display.">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="course_id" HeaderText="course_id" ReadOnly="True" SortExpression="course_id" />
                    <asp:BoundField DataField="course_name" HeaderText="course_name" SortExpression="course_name" />
                    <asp:BoundField DataField="credit_hrs" HeaderText="credit_hrs" SortExpression="credit_hrs" />
                    <asp:BoundField DataField="prereq" HeaderText="prereq" SortExpression="prereq" />
                    <asp:BoundField DataField="season" HeaderText="season" SortExpression="season" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ProjectConnectionString1 %>" DeleteCommand="DELETE FROM [semester_course] WHERE [course_id] = @course_id  DELETE FROM [course] WHERE [course_id] = @course_id" InsertCommand="INSERT INTO [course] ([course_id], [course_name], [credit_hrs], [prereq], [season]) VALUES (@course_id, @course_name, @credit_hrs, @prereq, @season)" ProviderName="<%$ ConnectionStrings:ProjectConnectionString1.ProviderName %>" SelectCommand="SELECT [course_id], [course_name], [credit_hrs], [prereq], [season] FROM [course]" UpdateCommand="UPDATE [course] SET [course_name] = @course_name, [credit_hrs] = @credit_hrs, [prereq] = @prereq, [season] = @season WHERE [course_id] = @course_id">
                <DeleteParameters>
                    <asp:Parameter Name="course_id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="course_id" Type="Int32" />
                    <asp:Parameter Name="course_name" Type="String" />
                    <asp:Parameter Name="credit_hrs" Type="Int32" />
                    <asp:Parameter Name="prereq" Type="String" />
                    <asp:Parameter Name="season" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="course_name" Type="String" />
                    <asp:Parameter Name="credit_hrs" Type="Int32" />
                    <asp:Parameter Name="prereq" Type="String" />
                    <asp:Parameter Name="season" Type="String" />
                    <asp:Parameter Name="course_id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
