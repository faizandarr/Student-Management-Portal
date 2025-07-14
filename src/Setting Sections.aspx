<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Setting Sections.aspx.cs" Inherits="WebApplication_Project.Setting_Sections" %>

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
        <div>
        </div>
        <h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Setting Section</h2>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="section_id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="section_id" HeaderText="section_id" ReadOnly="True" SortExpression="section_id" />
                <asp:BoundField DataField="section_name" HeaderText="section_name" SortExpression="section_name" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProjectConnectionString1 %>" DeleteCommand="DELETE FROM [section] WHERE [section_id] = @section_id" InsertCommand="INSERT INTO [section] ([section_id], [section_name]) VALUES (@section_id, @section_name)" ProviderName="<%$ ConnectionStrings:ProjectConnectionString1.ProviderName %>" SelectCommand="SELECT [section_id], [section_name] FROM [section]" UpdateCommand="UPDATE [section] SET [section_name] = @section_name WHERE [section_id] = @section_id">
            <DeleteParameters>
                <asp:Parameter Name="section_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="section_id" Type="Int32" />
                <asp:Parameter Name="section_name" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="section_name" Type="String" />
                <asp:Parameter Name="section_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
