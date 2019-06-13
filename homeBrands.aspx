<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="homeBrands.aspx.cs" Inherits="applliedProject.homeBrands" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<!DOCTYPE html>
<head>
    <style>
        #fisrtlist {
    color: orange;
}
        .auto-style1 {
            width: 100%;
        }
        .auto-style2:hover
        {
            background-color:orange;
        }
        .auto-style2 {
            font-weight: bold;
            font-size: large;
        }
        </style>
	<title></title>
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
					<li id="fisrtlist" onclick="window.location.href='/homeBrands.aspx'" > BRANDS </li>
					<li onclick="window.location.href='/homeProducts.aspx'"> PRODUCTS</li>
					<li onclick="window.location.href='/Loginnew.aspx'">LOGOUT</li>
				</ul>
        
			</div>

		</div>

		<div class="text">
			<h1> BRANDS </h1>
			<h2> CANADA'S #1 PERFUME CHOICE</h2>
            <table class="auto-style1">
                <tr>
                    <td><strong>
                        <asp:Button ID="Button1" runat="server" BackColor="White" BorderColor="White" CssClass="auto-style2" Height="62px" OnClick="Button1_Click" Text="ADD BRANDS" Width="147px" />
                        </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
                        <asp:Button ID="Button2" runat="server" BackColor="White" BorderColor="White" CssClass="auto-style2" Height="62px" OnClick="Button2_Click" Text="EDIT BRANDS" Width="146px" />
                        </strong></td>
                </tr>
            </table>
			<button type="submit" id="buttonone" onclick="window.location.href='/addProducts.aspx'" > Add Products</button>
			<button type="submit" id="buttontwo" onclick="window.location.href='/editProducts.aspx'"> Edit Products</button> 

		    <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" Height="264px" HorizontalAlign="Center" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="470px">
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

		    <br />
            <br />
		</div>

	</div>

    </form>

</body>
</html>
