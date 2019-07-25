<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="homenew.aspx.cs" Inherits="applliedProject.homenew" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<!DOCTYPE html>
<head>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <style>
        #fisrtlist {
    color: orange;
}
        .auto-style3 {
            font-size: xx-large;
        }
        .auto-style4 {
            width: 100%;
        }
        .auto-style6 {
            font-weight: bold;
            font-size: xx-large;
        }
    </style>
	<title>Home New</title>
	<link rel="stylesheet" type="text/css" href="hnew.css"/>
		 <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700%7CPT+Serif:400,700,400italic' rel='stylesheet'/>
		  <link href="https://fonts.googleapis.com/css?family=Montserrat|Open+Sans" rel="stylesheet"/>
</head>
<body>

	<form id="form1" runat="server">

	<div class="bgimage">
		<div class="menu">
			
			<div class="leftmenu">
                <h2> PERFUME ONLINE </h2>
			</div>

			<div class="rightmenu">
				<ul>
					<li id="fisrtlist"> HOME </li>
					<li onclick="window.location.href='/homeBrands.aspx'" > BRANDS </li>
					<li onclick="window.location.href='/homeProducts.aspx'"> PRODUCTS</li>
					<li onclick="window.location.href='/loginnew.aspx'">LOGOUT</li>
				</ul>
			</div>

		</div>

		<div class="text">
			<h1> PERFUME ONLINE </h1>
			<h2> CANADA'S #1 PERFUME CHOICE</h2>
            <table class="auto-style4">
                <tr>
                    <td><strong>
                        <asp:Button ID="Button1" runat="server" BackColor="White" CssClass="auto-style6" Height="87px" Text="ADD BRANDS" Width="274px" />
                        </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
                        <asp:Button ID="Button2" runat="server" BackColor="White" CssClass="auto-style6" Height="87px" Text="ADD PRODUCTS" Width="274px" />
                        </strong></td>
                </tr>
            </table>
		    <br />
            <br />
            <br />
            <br />
            <br />
            <strong>
            <asp:GridView ID="GridView1" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CaptionAlign="Top" CellPadding="4" CellSpacing="2" CssClass="auto-style3" EmptyDataText="BRANDS HAS NO DATA" ForeColor="Black" HorizontalAlign="Center">
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                <RowStyle BackColor="White" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
            </strong>
            <br />
            <strong>
            <asp:GridView ID="GridView3" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CaptionAlign="Top" CellPadding="4" CellSpacing="2" CssClass="auto-style3" EmptyDataText="PRODUCTS HAS NO DATA" ForeColor="Black" HorizontalAlign="Center">
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                <RowStyle BackColor="White" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
            </strong>
            <br />
&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp; 
		</div>

	</div>

    </form>

</body>
</html>
