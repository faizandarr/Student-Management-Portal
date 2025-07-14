<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="view_FeedBack.aspx.cs" Inherits="WebApplication_Project.view_FeedBack" %>

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
        </div>
        <h1>Teachers FeedBack</h1>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
            <Columns>
                <asp:BoundField DataField="datef" HeaderText="datef" SortExpression="datef" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="course" HeaderText="course" SortExpression="course" />
                <asp:BoundField DataField="batch" HeaderText="batch" SortExpression="batch" />
                <asp:BoundField DataField="sem" HeaderText="sem" SortExpression="sem" />
                <asp:BoundField DataField="profession" HeaderText="profession" SortExpression="profession" />
                <asp:BoundField DataField="commited" HeaderText="commited" SortExpression="commited" />
                <asp:BoundField DataField="critical_thinking" HeaderText="critical_thinking" SortExpression="critical_thinking" />
                <asp:BoundField DataField="presentable" HeaderText="presentable" SortExpression="presentable" />
                <asp:BoundField DataField="flexibility" HeaderText="flexibility" SortExpression="flexibility" />
                <asp:BoundField DataField="knowledge" HeaderText="knowledge" SortExpression="knowledge" />
                <asp:BoundField DataField="organized" HeaderText="organized" SortExpression="organized" />
               <%-- <asp:BoundField DataField="class_enviroment" HeaderText="class_enviroment" SortExpression="class_enviroment" />
                <asp:BoundField DataField="respect_student" HeaderText="respect_student" SortExpression="respect_student" />
                <asp:BoundField DataField="analyze_student" HeaderText="analyze_student" SortExpression="analyze_student" />--%>
                <asp:BoundField DataField="comment" HeaderText="comment" SortExpression="comment" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProjectConnectionString1 %>" ProviderName="<%$ ConnectionStrings:ProjectConnectionString1.ProviderName %>" SelectCommand="SELECT [datef], [name], [course], [batch], [sem], [profession], [commited], [critical_thinking], [presentable], [flexibility], [knowledge], [organized], [class_enviroment], [respect_student], [analyze_student], [comment] FROM [feedback]"></asp:SqlDataSource>
    </form>
</body>
</html>
