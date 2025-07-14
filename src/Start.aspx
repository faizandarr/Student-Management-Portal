<!DOCTYPE html>
<script runat="server">

    Protected Sub Page_Load(sender As Object, e As EventArgs)

    End Sub
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Flex Login</title>
    <style type="text/css">
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #89CFF0;
        }
        #form1 {
            margin: auto;
            max-width: 400px;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 10px;
            background-color: #f7f7f7;
        }
        #form1 label {
            display: block;
            margin-bottom: 20px;
            font-weight: bold;
            font-size: 32px;
            color: #0099ff;
            text-align: center;
        }
        #form1 a {
            display: block;
            margin-bottom: 10px;
            padding: 10px 20px;
            border: 1px solid #0099ff;
            border-radius: 5px;
            font-weight: bold;
            font-size: 20px;
            color: #fff;
            background-color: #0099ff;
            text-align: center;
            text-decoration: none;
        }
        #form1 a:hover {
            background-color: #0077b3;
            border-color: #0077b3;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <label for="Label1">Welcome to Flex</label>
        <%--<a href="<%# ResolveUrl("~/Login.aspx") %>">Student</a>
        <a href="<%# ResolveUrl("~/Login_Student.aspx") %>">Faculty</a>
        <a href="<%# ResolveUrl("~/Login_Student.aspx") %>">Academic Officer</a>
        <asp:HyperLink ID="HyperLink1" runat="server">HyperLink</asp:HyperLink>--%>

         <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Login.aspx">Sign In</asp:HyperLink>
        
    </form>
</body>
</html>
