<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="attendence.aspx.cs" Inherits="WebApplication_Project.course_registered" %>

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
        <div>
             <h1>Attendence</h1>
            <%--<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="101 " BackColor="#89CFF0" Font-Bold="True" Height="50px" Width="150px" />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="102" BackColor="#89CFF0" Font-Bold="True" Height="50px" Width="150px" />
            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="103" BackColor="#89CFF0" Font-Bold="True" Height="50px" Width="150px" />
            <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="104" BackColor="#89CFF0" Font-Bold="True" Height="50px" Width="150px" />
            <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="105" BackColor="#89CFF0" Font-Bold="True" Height="50px" Width="150px" />
            <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="106" BackColor="#89CFF0" Font-Bold="True" Height="50px" Width="150px" />
            <asp:Button ID="Button8" runat="server" OnClick="Button8_Click" Text="107" BackColor="#89CFF0" Font-Bold="True" Height="50px" Width="150px" />--%>

             <h3>Courses</h3>
            <h4>Operating System(101)</h4>

             <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False"   EmptyDataText="There are no data records to display.">
            <Columns>
                <asp:BoundField DataField="lecture" HeaderText="lecture" SortExpression="lecture" />
                <asp:BoundField DataField="attendance_date" HeaderText="attendance_date" SortExpression="attendance_date" />
                <asp:BoundField DataField="duration" HeaderText="duration" SortExpression="duration" />
                <asp:BoundField DataField="attendance" HeaderText="attendance" SortExpression="attendance" />
                <%--<asp:BoundField DataField="section_id" HeaderText="section_id" SortExpression="section_id" />--%>
                <asp:BoundField DataField="course_id" HeaderText="course_id" SortExpression="course_id" />
<%--                <asp:BoundField DataField="student_id" HeaderText="student_id" SortExpression="student_id" />--%>
            </Columns>
        </asp:GridView>
              <h4>Operating System Lab (102)</h4>
            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False"   EmptyDataText="There are no data records to display.">
            <Columns>
                <asp:BoundField DataField="lecture" HeaderText="lecture" SortExpression="lecture" />
                <asp:BoundField DataField="attendance_date" HeaderText="attendance_date" SortExpression="attendance_date" />
                <asp:BoundField DataField="duration" HeaderText="duration" SortExpression="duration" />
                <asp:BoundField DataField="attendance" HeaderText="attendance" SortExpression="attendance" />
                <%--<asp:BoundField DataField="section_id" HeaderText="section_id" SortExpression="section_id" />--%>
                <asp:BoundField DataField="course_id" HeaderText="course_id" SortExpression="course_id" />
<%--                <asp:BoundField DataField="student_id" HeaderText="student_id" SortExpression="student_id" />--%>
            </Columns>
        </asp:GridView>
              <h4>Data Base(103)</h4>
            <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False"   EmptyDataText="There are no data records to display.">
            <Columns>
                <asp:BoundField DataField="lecture" HeaderText="lecture" SortExpression="lecture" />
                <asp:BoundField DataField="attendance_date" HeaderText="attendance_date" SortExpression="attendance_date" />
                <asp:BoundField DataField="duration" HeaderText="duration" SortExpression="duration" />
                <asp:BoundField DataField="attendance" HeaderText="attendance" SortExpression="attendance" />
                <%--<asp:BoundField DataField="section_id" HeaderText="section_id" SortExpression="section_id" />--%>
                <asp:BoundField DataField="course_id" HeaderText="course_id" SortExpression="course_id" />
<%--                <asp:BoundField DataField="student_id" HeaderText="student_id" SortExpression="student_id" />--%>
            </Columns>
        </asp:GridView>
              <h4>Data Base Lab(104)</h4>
            <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False"   EmptyDataText="There are no data records to display.">
            <Columns>
                <asp:BoundField DataField="lecture" HeaderText="lecture" SortExpression="lecture" />
                <asp:BoundField DataField="attendance_date" HeaderText="attendance_date" SortExpression="attendance_date" />
                <asp:BoundField DataField="duration" HeaderText="duration" SortExpression="duration" />
                <asp:BoundField DataField="attendance" HeaderText="attendance" SortExpression="attendance" />
                <%--<asp:BoundField DataField="section_id" HeaderText="section_id" SortExpression="section_id" />--%>
                <asp:BoundField DataField="course_id" HeaderText="course_id" SortExpression="course_id" />
<%--                <asp:BoundField DataField="student_id" HeaderText="student_id" SortExpression="student_id" />--%>
            </Columns>
        </asp:GridView>
              <h4>Analysis Of Algorithm(105)</h4>
            <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False"   EmptyDataText="There are no data records to display.">
            <Columns>
                <asp:BoundField DataField="lecture" HeaderText="lecture" SortExpression="lecture" />
                <asp:BoundField DataField="attendance_date" HeaderText="attendance_date" SortExpression="attendance_date" />
                <asp:BoundField DataField="duration" HeaderText="duration" SortExpression="duration" />
                <asp:BoundField DataField="attendance" HeaderText="attendance" SortExpression="attendance" />
                <%--<asp:BoundField DataField="section_id" HeaderText="section_id" SortExpression="section_id" />--%>
                <asp:BoundField DataField="course_id" HeaderText="course_id" SortExpression="course_id" />
<%--                <asp:BoundField DataField="student_id" HeaderText="student_id" SortExpression="student_id" />--%>
            </Columns>
        </asp:GridView>
              <h4>Prob & Stats(106)</h4>
            <asp:GridView ID="GridView7" runat="server" AutoGenerateColumns="False"   EmptyDataText="There are no data records to display.">
            <Columns>
                <asp:BoundField DataField="lecture" HeaderText="lecture" SortExpression="lecture" />
                <asp:BoundField DataField="attendance_date" HeaderText="attendance_date" SortExpression="attendance_date" />
                <asp:BoundField DataField="duration" HeaderText="duration" SortExpression="duration" />
                <asp:BoundField DataField="attendance" HeaderText="attendance" SortExpression="attendance" />
                <%--<asp:BoundField DataField="section_id" HeaderText="section_id" SortExpression="section_id" />--%>
                <asp:BoundField DataField="course_id" HeaderText="course_id" SortExpression="course_id" />
<%--                <asp:BoundField DataField="student_id" HeaderText="student_id" SortExpression="student_id" />--%>
            </Columns>
        </asp:GridView>
              <h4>Fundamentals Of Managment(107)</h4>
            <asp:GridView ID="GridView8" runat="server" AutoGenerateColumns="False"   EmptyDataText="There are no data records to display.">
            <Columns>
                <asp:BoundField DataField="lecture" HeaderText="lecture" SortExpression="lecture" />
                <asp:BoundField DataField="attendance_date" HeaderText="attendance_date" SortExpression="attendance_date" />
                <asp:BoundField DataField="duration" HeaderText="duration" SortExpression="duration" />
                <asp:BoundField DataField="attendance" HeaderText="attendance" SortExpression="attendance" />
                <%--<asp:BoundField DataField="section_id" HeaderText="section_id" SortExpression="section_id" />--%>
                <asp:BoundField DataField="course_id" HeaderText="course_id" SortExpression="course_id" />
<%--                <asp:BoundField DataField="student_id" HeaderText="student_id" SortExpression="student_id" />--%>
            </Columns>
        </asp:GridView>
        </div>
       
       
    </form>
    
</body>
</html>
