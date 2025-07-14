<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Course_Registration.aspx.cs" Inherits="WebApplication_Project.Course_Withdraw" %>

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
        <div>
        </div>
        <h1>Course Regitration</h1>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="course_id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." Height="260px" Width="618px">
            <Columns>
                <asp:BoundField DataField="course_id" HeaderText="course_id" ReadOnly="True" SortExpression="course_id" />
                <asp:BoundField DataField="course_name" HeaderText="course_name" SortExpression="course_name" />
                <asp:BoundField DataField="credit_hrs" HeaderText="credit_hrs" SortExpression="credit_hrs" />
                <asp:TemplateField HeaderText="Select">
                    <ItemTemplate>
                        <asp:CheckBox ID="CheckBox1" runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        </br> </br> </br> </br> </br>
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" style="height: 29px" />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProjectConnectionString1 %>" DeleteCommand="DELETE FROM [course] WHERE [course_id] = @course_id" InsertCommand="INSERT INTO [course] ([course_id], [course_name], [credit_hrs], [prereq]) VALUES (@course_id, @course_name, @credit_hrs, @prereq)" SelectCommand="SELECT [course_id], [course_name], [credit_hrs], [prereq] FROM [course]" UpdateCommand="UPDATE [course] SET [course_name] = @course_name, [credit_hrs] = @credit_hrs, [prereq] = @prereq WHERE [course_id] = @course_id">
            <DeleteParameters>
                <asp:Parameter Name="course_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="course_id" Type="Int32" />
                <asp:Parameter Name="course_name" Type="String" />
                <asp:Parameter Name="credit_hrs" Type="Int32" />
                <asp:Parameter Name="prereq" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="course_name" Type="String" />
                <asp:Parameter Name="credit_hrs" Type="Int32" />
                <asp:Parameter Name="prereq" Type="String" />
                <asp:Parameter Name="course_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
