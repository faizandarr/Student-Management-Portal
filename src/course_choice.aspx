<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="course_choice.aspx.cs" Inherits="WebApplication_Project.course_choice" %>

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
        <h1>Courses</h1>
        <div style="height: 148px; margin-left: 80px">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="101 " BackColor="#89CFF0" Font-Bold="True" Height="50px" Width="150px" />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="102" BackColor="#89CFF0" Font-Bold="True" Height="50px" Width="150px" />
            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="103" BackColor="#89CFF0" Font-Bold="True" Height="50px" Width="150px" />
            <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="104" BackColor="#89CFF0" Font-Bold="True" Height="50px" Width="150px" />
            <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="105" BackColor="#89CFF0" Font-Bold="True" Height="50px" Width="150px" />
            <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="106" BackColor="#89CFF0" Font-Bold="True" Height="50px" Width="150px" />
            <asp:Button ID="Button8" runat="server" OnClick="Button8_Click" Text="107" BackColor="#89CFF0" Font-Bold="True" Height="50px" Width="150px" />

        </div>
    </form>
</body>
</html>
