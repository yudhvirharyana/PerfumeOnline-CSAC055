﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="homeProducts.aspx.cs" Inherits="applliedProject.homeProducts" %>


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
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            font-weight: bold;
            font-size: x-large;
        }
    </style>
	<title>Home Products</title>
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
					<li onclick="window.location.href='/homenew.aspx'"> HOME </li>
					<li  onclick="window.location.href='/homeBrands.aspx'" > BRANDS </li>
					<li id="fisrtlist" onclick="window.location.href='/homeProducts.aspx'"> PRODUCTS</li>
					<li onclick="window.location.href='/Loginnew.aspx'">LOGOUT</li>
				</ul>
			</div>

		</div>

		<div class="text">
			<h1> PRODUCTS </h1>
			<h2> CANADA'S #1 PERFUME CHOICE</h2>
            <table class="auto-style1">
                <tr>
                    <td><strong>
                        <asp:Button ID="Button1" runat="server" BackColor="White" CssClass="auto-style2" Height="71px" Text="ADD PRODUCTS" Width="215px" OnClick="Button1_Click" />
                        </strong>&nbsp;&nbsp; <strong>
                        <asp:Button ID="Button2" runat="server" BackColor="White" CssClass="auto-style2" Height="71px" Text="EDIT PRODUCTS" Width="215px" OnClick="Button2_Click" />
                        </strong></td>
                </tr>
            </table>
			
            
		    <br />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" Height="257px" HorizontalAlign="Center" Width="470px">
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />
            </asp:GridView>
		</div>

	</div>

    </form>

</body>
</html>
