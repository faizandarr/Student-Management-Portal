<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication_Project.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Flex Login</title>
    <style>
        body {
            background-color: #89CFF0;
            font-family: Arial, sans-serif;
        }
        #login-form {
            margin: 0 auto;
            width: 400px;
            padding: 20px;
            border: 1px solid #ccc;
            background-color: #fff;
            box-shadow: 0px 2px 6px rgba(0, 0, 0, 0.3);
        }
        #login-form h2 {
            text-align: center;
            margin-top: 0px;
            margin-bottom: 20px;
        }
        #login-form label {
            display: block;
            margin-bottom: 5px;
        }
        #login-form input[type="text"],
        #login-form input[type="password"] {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            margin-bottom: 20px;
        }
        #login-form button[type="submit"] {
            background-color: #4CAF50;
            color: #fff;
            padding: 8px 12px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            width: 100%;
        }
        #login-form button[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="login-form">
            <h2>Student Flex Login</h2>
            <label for="TextBox1">Username:</label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <label for="TextBox2">Password:</label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:Button type="submit" ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" BackColor="#89CFF0" Height="50px" Width="150px" />
        </div>
    </form>
</body>
</html>
