<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TranscriptShow.aspx.cs" Inherits="WebApplication_Project.TranscriptShow" %>

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
            width: 120%;
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
       
        <h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Transcript</h2>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="transcript_id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
            <Columns>
               <%-- <asp:BoundField DataField="transcript_id" HeaderText="transcript_id" ReadOnly="True" SortExpression="transcript_id" />--%>
                <asp:BoundField DataField="semester_id" HeaderText="semester_id" SortExpression="semester_id" />
                <%--<asp:BoundField DataField="student_id" HeaderText="student_id" SortExpression="student_id" />--%>
                <asp:BoundField DataField="course1_grade" HeaderText="course1_grade" SortExpression="course1_grade" />
                <asp:BoundField DataField="course1_id" HeaderText="course1_id" SortExpression="course1_id" />
                <asp:BoundField DataField="course2_grade" HeaderText="course2_grade" SortExpression="course2_grade" />
                <asp:BoundField DataField="course2_id" HeaderText="course2_id" SortExpression="course2_id" />
                <asp:BoundField DataField="course3_grade" HeaderText="course3_grade" SortExpression="course3_grade" />
                <asp:BoundField DataField="course3_id" HeaderText="course3_id" SortExpression="course3_id" />
                <asp:BoundField DataField="course4_grade" HeaderText="course4_grade" SortExpression="course4_grade" />
                <asp:BoundField DataField="course4_id" HeaderText="course4_id" SortExpression="course4_id" />
                <asp:BoundField DataField="course5_grade" HeaderText="course5_grade" SortExpression="course5_grade" />
                <asp:BoundField DataField="course5_id" HeaderText="course5_id" SortExpression="course5_id" />
                <asp:BoundField DataField="cgpa" HeaderText="cgpa" SortExpression="cgpa" />
                <asp:BoundField DataField="sgpa" HeaderText="sgpa" SortExpression="sgpa" />
               <%-- <asp:BoundField DataField="credit_hrs_att" HeaderText="credit_hrs_att" SortExpression="credit_hrs_att" />
                <asp:BoundField DataField="credit_hrs_ernd" HeaderText="credit_hrs_ernd" SortExpression="credit_hrs_ernd" />--%>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProjectConnectionString1 %>" DeleteCommand="DELETE FROM [transcript] WHERE [transcript_id] = @transcript_id" InsertCommand="INSERT INTO [transcript] ([transcript_id], [semester_id], [student_id], [course1_grade], [course1_id], [course2_grade], [course2_id], [course3_grade], [course3_id], [course4_grade], [course4_id], [course5_grade], [course5_id], [cgpa], [sgpa], [credit_hrs_att], [credit_hrs_ernd]) VALUES (@transcript_id, @semester_id, @student_id, @course1_grade, @course1_id, @course2_grade, @course2_id, @course3_grade, @course3_id, @course4_grade, @course4_id, @course5_grade, @course5_id, @cgpa, @sgpa, @credit_hrs_att, @credit_hrs_ernd)" ProviderName="<%$ ConnectionStrings:ProjectConnectionString1.ProviderName %>" SelectCommand="SELECT [transcript_id], [semester_id], [student_id], [course1_grade], [course1_id], [course2_grade], [course2_id], [course3_grade], [course3_id], [course4_grade], [course4_id], [course5_grade], [course5_id], [cgpa], [sgpa], [credit_hrs_att], [credit_hrs_ernd] FROM [transcript] where student_id=@param1" UpdateCommand="UPDATE [transcript] SET [semester_id] = @semester_id, [student_id] = @student_id, [course1_grade] = @course1_grade, [course1_id] = @course1_id, [course2_grade] = @course2_grade, [course2_id] = @course2_id, [course3_grade] = @course3_grade, [course3_id] = @course3_id, [course4_grade] = @course4_grade, [course4_id] = @course4_id, [course5_grade] = @course5_grade, [course5_id] = @course5_id, [cgpa] = @cgpa, [sgpa] = @sgpa, [credit_hrs_att] = @credit_hrs_att, [credit_hrs_ernd] = @credit_hrs_ernd WHERE [transcript_id] = @transcript_id">
            <DeleteParameters>
                <asp:Parameter Name="transcript_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="transcript_id" Type="Int32" />
                <asp:Parameter Name="semester_id" Type="Int32" />
                <asp:Parameter Name="student_id" Type="String" />
                <asp:Parameter Name="course1_grade" Type="String" />
                <asp:Parameter Name="course1_id" Type="Int32" />
                <asp:Parameter Name="course2_grade" Type="String" />
                <asp:Parameter Name="course2_id" Type="Int32" />
                <asp:Parameter Name="course3_grade" Type="String" />
                <asp:Parameter Name="course3_id" Type="Int32" />
                <asp:Parameter Name="course4_grade" Type="String" />
                <asp:Parameter Name="course4_id" Type="Int32" />
                <asp:Parameter Name="course5_grade" Type="String" />
                <asp:Parameter Name="course5_id" Type="Int32" />
                <asp:Parameter Name="cgpa" Type="Double" />
                <asp:Parameter Name="sgpa" Type="Double" />
                <asp:Parameter Name="credit_hrs_att" Type="Int32" />
                <asp:Parameter Name="credit_hrs_ernd" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="semester_id" Type="Int32" />
                <asp:Parameter Name="student_id" Type="String" />
                <asp:Parameter Name="course1_grade" Type="String" />
                <asp:Parameter Name="course1_id" Type="Int32" />
                <asp:Parameter Name="course2_grade" Type="String" />
                <asp:Parameter Name="course2_id" Type="Int32" />
                <asp:Parameter Name="course3_grade" Type="String" />
                <asp:Parameter Name="course3_id" Type="Int32" />
                <asp:Parameter Name="course4_grade" Type="String" />
                <asp:Parameter Name="course4_id" Type="Int32" />
                <asp:Parameter Name="course5_grade" Type="String" />
                <asp:Parameter Name="course5_id" Type="Int32" />
                <asp:Parameter Name="cgpa" Type="Double" />
                <asp:Parameter Name="sgpa" Type="Double" />
                <asp:Parameter Name="credit_hrs_att" Type="Int32" />
                <asp:Parameter Name="credit_hrs_ernd" Type="Int32" />
                <asp:Parameter Name="transcript_id" Type="Int32" />
            </UpdateParameters>
            <SelectParameters>
        <asp:Parameter Name="param1" Type="String" DefaultValue="your_default_value_here" />
                 
    </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
