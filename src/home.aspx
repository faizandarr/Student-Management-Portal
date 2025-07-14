<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="WebApplication_Project.pra" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>HOME PAGE</title>
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
        <h1>HOME PAGE</h1>
        <% if ( (int)Session["job"] == 2) { %>

        <div style="height: 148px; margin-left: 80px">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Course Registration " BackColor="#89CFF0" Font-Bold="True" Height="50px" Width="150px" />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Attendance" BackColor="#89CFF0" Font-Bold="True" Height="50px" Width="150px" />
            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Marks" BackColor="#89CFF0" Font-Bold="True" Height="50px" Width="150px" />
            <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Transcript" BackColor="#89CFF0" Font-Bold="True" Height="50px" Width="150px" />
            <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Course Feedback" BackColor="#89CFF0" Font-Bold="True" Height="50px" Width="150px" />
            <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="Course withdraw" BackColor="#89CFF0" Font-Bold="True" Height="50px" Width="150px" />
            
            
           
            
        </div>
        <% } %>
         <% if ( (int)Session["job"] == 1) { %>

        <div style="height: 148px; margin-left: 80px">
            <asp:Button ID="Button16" runat="server" OnClick="Button1_Click" Text="Evaluations " BackColor="#89CFF0" Font-Bold="True" Height="50px" Width="150px" />
            <asp:Button ID="Button17" runat="server" OnClick="Button2_Click" Text="Attendance" BackColor="#89CFF0" Font-Bold="True" Height="50px" Width="150px" />
            <asp:Button ID="Button18" runat="server" OnClick="Button4_Click" Text="Generate Grades" BackColor="#89CFF0" Font-Bold="True" Height="50px" Width="150px" />
            <asp:Button ID="Button19" runat="server" OnClick="Button5_Click" Text="Manage Grade" BackColor="#89CFF0" Font-Bold="True" Height="50px" Width="150px" />
            <asp:Button ID="Button20" runat="server" OnClick="Button6_Click" Text="View Feed Back" BackColor="#89CFF0" Font-Bold="True" Height="50px" Width="150px" />
           
            </div>
        <% } %>
         <% if ( (int)Session["job"] == 0) { %>

        <div style="height: 148px; margin-left: 80px">
            <asp:Button ID="Button3" runat="server" OnClick="Button1_Click" Text="Setting Couses " BackColor="#89CFF0" Font-Bold="True" Height="50px" Width="150px" />
            <asp:Button ID="Button9" runat="server" OnClick="Button2_Click" Text="Student Sections" BackColor="#89CFF0" Font-Bold="True" Height="50px" Width="150px" />
            <asp:Button ID="Button10" runat="server" OnClick="Button4_Click" Text="Faculty Sections" BackColor="#89CFF0" Font-Bold="True" Height="50px" Width="150px" />
            <asp:Button ID="Button11" runat="server" OnClick="Button5_Click" Text="Faculty Courses" BackColor="#89CFF0" Font-Bold="True" Height="50px" Width="150px" />
            <asp:Button ID="Button12" runat="server" OnClick="Button6_Click" Text="Student Courses" BackColor="#89CFF0" Font-Bold="True" Height="50px" Width="150px" />
            <asp:Button ID="Button13" runat="server" OnClick="Button7_Click" Text="Course Feedback" BackColor="#89CFF0" Font-Bold="True" Height="50px" Width="150px" />
            <asp:Button ID="Button14" runat="server" OnClick="Button8_Click" Text="Register" BackColor="#89CFF0" Font-Bold="True" Height="50px" Width="150px" />
             <asp:Button ID="Button15" runat="server" OnClick="Button8_Click" Text="Setting Sections" BackColor="#89CFF0" Font-Bold="True" Height="50px" Width="150px" />
        </div>
        <% } %>
        
        <h3>Personal Information</h3>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id"  EmptyDataText="There are no data records to display.">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="ID" ReadOnly="True" SortExpression="id" />
              
                <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                <asp:BoundField DataField="contact" HeaderText="Contact" SortExpression="contact" />
                <asp:BoundField DataField="cnic" HeaderText="CNIC" SortExpression="cnic" />
                <asp:BoundField DataField="blood_group" HeaderText="Blood Group" SortExpression="blood_group" />
                <asp:BoundField DataField="nationality" HeaderText="Nationality" SortExpression="nationality" />
                <asp:BoundField DataField="campus" HeaderText="Campus" SortExpression="campus" />
                <asp:BoundField DataField="gender" HeaderText="Gender" SortExpression="gender" />
                <asp:BoundField DataField="dob" HeaderText="Date of Birth" SortExpression="dob" />
            </Columns>
        </asp:GridView>
        </br></br > </br></br > </br></br >
       <%-- <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="attendance_id"  EmptyDataText="There are no data records to display.">
            <Columns>
                <asp:BoundField DataField="attendance_id" HeaderText="attendance_id" ReadOnly="True" SortExpression="attendance_id" />
                <asp:BoundField DataField="attendance_date" HeaderText="attendance_date" SortExpression="attendance_date" />
                <asp:BoundField DataField="duration" HeaderText="duration" SortExpression="duration" />
                <asp:BoundField DataField="lecture" HeaderText="lecture" SortExpression="lecture" />
                <asp:BoundField DataField="attendance" HeaderText="attendance" SortExpression="attendance" />
                <%--<asp:BoundField DataField="section_id" HeaderText="section_id" SortExpression="section_id" />--%>
<%--                <asp:BoundField DataField="student_id" HeaderText="student_id" SortExpression="student_id" />--%>
            </Columns>
        </asp:GridView>
        
    </form>
</body>
</html>