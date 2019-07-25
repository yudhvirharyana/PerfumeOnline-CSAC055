<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="applliedProject.WebForm2" %>

    <!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" 
                AutoGenerateColumns="False" AutoGenerateEditButton="True" DataKeyNames="brandName" 
                DataSourceID="SqlDataSource1">
            </asp:GridView>
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="Data Source=desktop-cq119gr;Initial Catalog=perfumeonline;Integrated Security=True"
                ProviderName="System.Data.SqlClient" 
                SelectCommand="SELECT [brandName], [numberOfProducts] FROM [brandDetails]"
            UpdateCommand="UPDATE brandDetails brandName SET = @brandName, numberOfProducts = @numberOfProducts
                WHERE brandName = @brandName"
            DeleteCommand="DELETE FROM brandDetails WHERE brandName  = @brandName">
                <UpdateParameters>
                <asp:Parameter Name="brandName" />
                <asp:Parameter Name="numberOfProducts" />
            </UpdateParameters>
            
            <DeleteParameters>
                <asp:Parameter Name="brandName" /> 
                <asp:Parameter Name="numberOfProducts" />
            </DeleteParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
