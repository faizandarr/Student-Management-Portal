<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Manage_SSection.aspx.cs" Inherits="WebApplication_Project.set_attendence" %>

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
            width: 100%;
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
          <h1>Setting Student Sections</h1>
          
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <%--<asp:BoundField DataField="contact" HeaderText="contact" SortExpression="contact" />--%>
                <%--<asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:BoundField DataField="cnic" HeaderText="cnic" SortExpression="cnic" />
                <asp:BoundField DataField="blood_group" HeaderText="blood_group" SortExpression="blood_group" />
                <asp:BoundField DataField="nationality" HeaderText="nationality" SortExpression="nationality" />
                <asp:BoundField DataField="campus" HeaderText="campus" SortExpression="campus" />
                <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
                <asp:BoundField DataField="dob" HeaderText="dob" SortExpression="dob" />
                <asp:BoundField DataField="job_type" HeaderText="job_type" SortExpression="job_type" />
                <asp:BoundField DataField="faculty_type" HeaderText="faculty_type" SortExpression="faculty_type" />
                <asp:BoundField DataField="office_num" HeaderText="office_num" SortExpression="office_num" />
                <asp:BoundField DataField="instructor_department" HeaderText="instructor_department" SortExpression="instructor_department" />
                <asp:BoundField DataField="instructor_post" HeaderText="instructor_post" SortExpression="instructor_post" />--%>
                <asp:BoundField DataField="student_batch" HeaderText="student_batch" SortExpression="student_batch" />
                <%-- <asp:BoundField DataField="student_degree" HeaderText="student_degree" SortExpression="student_degree" />--%>
               <asp:BoundField DataField="section_id" HeaderText="section_id" SortExpression="section_id" />
                <%--<asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                <asp:BoundField DataField="course_id" HeaderText="course_id" SortExpression="course_id" />--%>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProjectConnectionString1 %>" DeleteCommand="DELETE FROM [attendance] WHERE [student_id] = @id DELETE FROM [users] WHERE [id] = @id" InsertCommand="INSERT INTO [users] ([id], [name], [contact], [email], [cnic], [blood_group], [nationality], [campus], [gender], [dob], [job_type], [faculty_type], [office_num], [instructor_department], [instructor_post], [student_batch], [student_degree], [section_id], [password], [course_id]) VALUES (@id, @name, @contact, @email, @cnic, @blood_group, @nationality, @campus, @gender, @dob, @job_type, @faculty_type, @office_num, @instructor_department, @instructor_post, @student_batch, @student_degree, @section_id, @password, @course_id)" ProviderName="<%$ ConnectionStrings:ProjectConnectionString1.ProviderName %>" SelectCommand="SELECT [id], [name], [email], [cnic], [blood_group], [nationality], [campus], [gender], [dob], [job_type], [faculty_type], [office_num], [instructor_department], [instructor_post], [student_batch], [student_degree], [section_id], [password], [course_id] FROM [users] where job_type=2 and student_degree=@param2" UpdateCommand="UPDATE [users] SET [name] = @name, [contact] = [contact], [email] = [email], [cnic] = [cnic], [blood_group] = [blood_group], [nationality] = [blood_group], [campus] = [campus], [gender] = [gender], [dob] = [dob], [job_type] = [job_type], [faculty_type] = [faculty_type], [office_num] = [office_num], [instructor_department] = [instructor_department], [instructor_post] = [instructor_post], [student_batch] = @student_batch, [student_degree] = [student_degree], [section_id] = @section_id, [password] = [password], [course_id] = [course_id] WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="id" Type="String" />
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="contact" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="cnic" Type="String" />
                <asp:Parameter Name="blood_group" Type="String" />
                <asp:Parameter Name="nationality" Type="String" />
                <asp:Parameter Name="campus" Type="String" />
                <asp:Parameter Name="gender" Type="String" />
                <asp:Parameter DbType="Date" Name="dob" />
                <asp:Parameter Name="job_type" Type="Int32" />
                <asp:Parameter Name="faculty_type" Type="String" />
                <asp:Parameter Name="office_num" Type="String" />
                <asp:Parameter Name="instructor_department" Type="String" />
                <asp:Parameter Name="instructor_post" Type="String" />
                <asp:Parameter Name="student_batch" Type="String" />
                <asp:Parameter Name="student_degree" Type="String" />
                <asp:Parameter Name="section_id" Type="Int32" />
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="course_id" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="contact" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="cnic" Type="String" />
                <asp:Parameter Name="blood_group" Type="String" />
                <asp:Parameter Name="nationality" Type="String" />
                <asp:Parameter Name="campus" Type="String" />
                <asp:Parameter Name="gender" Type="String" />
                <asp:Parameter DbType="Date" Name="dob" />
                <asp:Parameter Name="job_type" Type="Int32" />
                <asp:Parameter Name="faculty_type" Type="String" />
                <asp:Parameter Name="office_num" Type="String" />
                <asp:Parameter Name="instructor_department" Type="String" />
                <asp:Parameter Name="instructor_post" Type="String" />
                <asp:Parameter Name="student_batch" Type="String" />
                <asp:Parameter Name="student_degree" Type="String" />
                <asp:Parameter Name="section_id" Type="Int32" />
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="course_id" Type="Int32" />
                <asp:Parameter Name="id" Type="String" />
            </UpdateParameters>
             <SelectParameters>
        <asp:Parameter Name="param1" Type="String" DefaultValue="your_default_value_here" />
                  <asp:Parameter Name="param2" Type="String" DefaultValue="your_default_value_here" />
    </SelectParameters>
        </asp:SqlDataSource>
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Back To Home</asp:LinkButton>
    </form>

    </body>
</html>
