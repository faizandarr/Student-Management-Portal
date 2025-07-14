<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="marks.aspx.cs" Inherits="WebApplication_Project.marks" %>

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
        <h1>Courses</h1>
        <div style="height: 1345px; margin-left: 80px">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="101 " BackColor="#89CFF0" Font-Bold="True" Height="50px" Width="150px" />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="102" BackColor="#89CFF0" Font-Bold="True" Height="50px" Width="150px" />
            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="103" BackColor="#89CFF0" Font-Bold="True" Height="50px" Width="150px" />
            <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="104" BackColor="#89CFF0" Font-Bold="True" Height="50px" Width="150px" />
            <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="105" BackColor="#89CFF0" Font-Bold="True" Height="50px" Width="150px" />
            <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="106" BackColor="#89CFF0" Font-Bold="True" Height="50px" Width="150px" />
            <asp:Button ID="Button8" runat="server" OnClick="Button8_Click" Text="107" BackColor="#89CFF0" Font-Bold="True" Height="50px" Width="150px" />
             <h2>Marks</h2>
            <h5>Assignment</h5>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"  EmptyDataText="There are no data records to display.">
                 <Columns>
                    <%-- <asp:BoundField DataField="marks_id" HeaderText="marks_id" SortExpression="marks_id" />--%>
                     <%--<asp:BoundField DataField="course_id" HeaderText="course_id" SortExpression="course_id" />--%>
                     <asp:BoundField DataField="obtained_marks" HeaderText="obtained_marks" SortExpression="obtained_marks" />
                     <asp:BoundField DataField="total_marks" HeaderText="total_marks" SortExpression="total_marks" />
                     <asp:BoundField DataField="average" HeaderText="average" SortExpression="average" />
                     <asp:BoundField DataField="weightage" HeaderText="weightage" SortExpression="weightage" />
                     <asp:BoundField DataField="maximum" HeaderText="maximum" SortExpression="maximum" />
                     <asp:BoundField DataField="minimum" HeaderText="minimum" SortExpression="minimum" />
                     <asp:BoundField DataField="standard_deviation" HeaderText="standard_deviation" SortExpression="standard_deviation" />
                     <asp:BoundField DataField="flag" HeaderText="flag" SortExpression="flag" />
                    <%-- <asp:BoundField DataField="student_id" HeaderText="student_id" SortExpression="student_id" />--%>
                 </Columns>
                 </asp:GridView>

            <h5>Quiz</h5>
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False"  EmptyDataText="There are no data records to display." Height="16px">
                 <Columns>
                    <%-- <asp:BoundField DataField="marks_id" HeaderText="marks_id" SortExpression="marks_id" />--%>
                     <%--<asp:BoundField DataField="course_id" HeaderText="course_id" SortExpression="course_id" />--%>
                     <asp:BoundField DataField="obtained_marks" HeaderText="obtained_marks" SortExpression="obtained_marks" />
                     <asp:BoundField DataField="total_marks" HeaderText="total_marks" SortExpression="total_marks" />
                     <asp:BoundField DataField="average" HeaderText="average" SortExpression="average" />
                     <asp:BoundField DataField="weightage" HeaderText="weightage" SortExpression="weightage" />
                     <asp:BoundField DataField="maximum" HeaderText="maximum" SortExpression="maximum" />
                     <asp:BoundField DataField="minimum" HeaderText="minimum" SortExpression="minimum" />
                     <asp:BoundField DataField="standard_deviation" HeaderText="standard_deviation" SortExpression="standard_deviation" />
                     <asp:BoundField DataField="flag" HeaderText="flag" SortExpression="flag" />
                    <%-- <asp:BoundField DataField="student_id" HeaderText="student_id" SortExpression="student_id" />--%>
                 </Columns>
                 </asp:GridView>
            
            <h5>Sessional I</h5>
            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False"  EmptyDataText="There are no data records to display." Height="16px" Width="500px">
                 <Columns>
                    <%-- <asp:BoundField DataField="marks_id" HeaderText="marks_id" SortExpression="marks_id" />--%>
                     <%--<asp:BoundField DataField="course_id" HeaderText="course_id" SortExpression="course_id" />--%>
                     <asp:BoundField DataField="obtained_marks" HeaderText="obtained_marks" SortExpression="obtained_marks" />
                     <asp:BoundField DataField="total_marks" HeaderText="total_marks" SortExpression="total_marks" />
                     <asp:BoundField DataField="average" HeaderText="average" SortExpression="average" />
                     <asp:BoundField DataField="weightage" HeaderText="weightage" SortExpression="weightage" />
                     <asp:BoundField DataField="maximum" HeaderText="maximum" SortExpression="maximum" />
                     <asp:BoundField DataField="minimum" HeaderText="minimum" SortExpression="minimum" />
                     <asp:BoundField DataField="standard_deviation" HeaderText="standard_deviation" SortExpression="standard_deviation" />
                     <asp:BoundField DataField="flag" HeaderText="flag" SortExpression="flag" />
                    <%-- <asp:BoundField DataField="student_id" HeaderText="student_id" SortExpression="student_id" />--%>
                 </Columns>
                 </asp:GridView>
                
            <h5>Sessional II</h5>
            <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False"  EmptyDataText="There are no data records to display." Height="16px" Width="500px">
                 <Columns>
                    <%-- <asp:BoundField DataField="marks_id" HeaderText="marks_id" SortExpression="marks_id" />--%>
                     <%--<asp:BoundField DataField="course_id" HeaderText="course_id" SortExpression="course_id" />--%>
                     <asp:BoundField DataField="obtained_marks" HeaderText="obtained_marks" SortExpression="obtained_marks" />
                     <asp:BoundField DataField="total_marks" HeaderText="total_marks" SortExpression="total_marks" />
                     <asp:BoundField DataField="average" HeaderText="average" SortExpression="average" />
                     <asp:BoundField DataField="weightage" HeaderText="weightage" SortExpression="weightage" />
                     <asp:BoundField DataField="maximum" HeaderText="maximum" SortExpression="maximum" />
                     <asp:BoundField DataField="minimum" HeaderText="minimum" SortExpression="minimum" />
                     <asp:BoundField DataField="standard_deviation" HeaderText="standard_deviation" SortExpression="standard_deviation" />
                     <asp:BoundField DataField="flag" HeaderText="flag" SortExpression="flag" />
                    <%-- <asp:BoundField DataField="student_id" HeaderText="student_id" SortExpression="student_id" />--%>
                 </Columns>
                 </asp:GridView>
                
            <h5>Project </h5>
            <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False"  EmptyDataText="There are no data records to display." Height="92px" Width="500px">
                 <Columns>
                    <%-- <asp:BoundField DataField="marks_id" HeaderText="marks_id" SortExpression="marks_id" />--%>
                     <%--<asp:BoundField DataField="course_id" HeaderText="course_id" SortExpression="course_id" />--%>
                     <asp:BoundField DataField="obtained_marks" HeaderText="obtained_marks" SortExpression="obtained_marks" />
                     <asp:BoundField DataField="total_marks" HeaderText="total_marks" SortExpression="total_marks" />
                     <asp:BoundField DataField="average" HeaderText="average" SortExpression="average" />
                     <asp:BoundField DataField="weightage" HeaderText="weightage" SortExpression="weightage" />
                     <asp:BoundField DataField="maximum" HeaderText="maximum" SortExpression="maximum" />
                     <asp:BoundField DataField="minimum" HeaderText="minimum" SortExpression="minimum" />
                     <asp:BoundField DataField="standard_deviation" HeaderText="standard_deviation" SortExpression="standard_deviation" />
                     <asp:BoundField DataField="flag" HeaderText="flag" SortExpression="flag" />
                    <%-- <asp:BoundField DataField="student_id" HeaderText="student_id" SortExpression="student_id" />--%>
                 </Columns>
                 </asp:GridView>
               
            <h5>Finals </h5>
            <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False"  EmptyDataText="There are no data records to display." Height="100px" Width="500px">
                 <Columns>
                    <%-- <asp:BoundField DataField="marks_id" HeaderText="marks_id" SortExpression="marks_id" />--%>
                     <%--<asp:BoundField DataField="course_id" HeaderText="course_id" SortExpression="course_id" />--%>
                     <asp:BoundField DataField="obtained_marks" HeaderText="obtained_marks" SortExpression="obtained_marks" />
                     <asp:BoundField DataField="total_marks" HeaderText="total_marks" SortExpression="total_marks" />
                     <asp:BoundField DataField="average" HeaderText="average" SortExpression="average" />
                     <asp:BoundField DataField="weightage" HeaderText="weightage" SortExpression="weightage" />
                     <asp:BoundField DataField="maximum" HeaderText="maximum" SortExpression="maximum" />
                     <asp:BoundField DataField="minimum" HeaderText="minimum" SortExpression="minimum" />
                     <asp:BoundField DataField="standard_deviation" HeaderText="standard_deviation" SortExpression="standard_deviation" />
                     <asp:BoundField DataField="flag" HeaderText="flag" SortExpression="flag" />
                    <%-- <asp:BoundField DataField="student_id" HeaderText="student_id" SortExpression="student_id" />--%>
                 </Columns>
                 </asp:GridView>
           
           

        </div>
    </form>
</body>
</html>
