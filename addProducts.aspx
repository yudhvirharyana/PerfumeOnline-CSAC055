<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addProducts.aspx.cs" Inherits="applliedProject.addProducts" %>

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
            width: 215px;
        }
        .auto-style3 {
            font-size: xx-large;
            color: #FFFFFF;
            text-align: center;
        }
        .auto-style4 {
            font-size: x-large;
        }
        .auto-style6 {
            font-weight: bold;
            font-size: x-large;
        }
        .auto-style7 {
            text-align: center;
        }
        .auto-style8 {
            font-size: x-large;
            text-align: center;
        }
        .auto-style9 {
            width: 215px;
            text-align: center;
        }
        .auto-style10 {
            text-decoration: underline;
        }
    </style>
	<title>Add Products</title>
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
					<li onclick="window.location.href='/homeBrands.aspx'" > BRANDS </li>
					<li id="fisrtlist" onclick="window.location.href='/homeProducts.aspx'"> PRODUCTS</li>
					<li onclick="window.location.href='/loginnew.aspx'">LOGOUT</li>
				</ul>
			</div>

		</div>

		<div class="text">
			
		    <table class="auto-style1">
                <tr>
                    <td class="auto-style3" colspan="4"><strong><span class="auto-style10">add Product</span></strong></td>
                </tr>
                <tr>
                    <td class="auto-style3" colspan="4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8"><strong>Brand</strong></td>
                    <td class="auto-style9">
                        <asp:TextBox ID="TextBox1" runat="server" Height="37px" Width="165px"></asp:TextBox>
                    </td>
                    <td class="auto-style8"><strong>product name</strong></td>
                    <td class="auto-style7">
                        <asp:TextBox ID="TextBox4" runat="server" Height="37px" Width="165px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7"><strong>
                        <asp:Label ID="Label2" runat="server" CssClass="auto-style4" Text="Product ID"></asp:Label>
                        </strong></td>
                    <td class="auto-style9">
                        <asp:TextBox ID="TextBox2" runat="server" Height="37px" Width="160px"></asp:TextBox>
                    </td>
                    <td class="auto-style8"><strong>product id</strong></td>
                    <td class="auto-style7">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8"><strong>sales price</strong></td>
                    <td class="auto-style9">
                        <asp:TextBox ID="TextBox3" runat="server" Height="37px" Width="154px"></asp:TextBox>
                    </td>
                    <td class="auto-style8"><strong>available quantity</strong></td>
                    <td class="auto-style7">
                        <asp:DropDownList ID="DropDownList1" runat="server" Height="40px" Width="170px">
                            <asp:ListItem Value="1"></asp:ListItem>
                            <asp:ListItem Value="2"></asp:ListItem>
                            <asp:ListItem Value="3"></asp:ListItem>
                            <asp:ListItem Value="4"></asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7" colspan="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style6" Height="46px" Text="ADD" Width="150px" OnClick="Button1_Click" />
                        </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
                        <asp:Button ID="Button2" runat="server" CssClass="auto-style6" Height="45px" OnClick="Button2_Click" Text="CANCEL" Width="148px" />
                        </strong></td>
                </tr>
                <tr>
                    <td colspan="4">&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="4">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" Height="290px" HorizontalAlign="Center" Width="449px">
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
                    </td>
                </tr>
            </table>
			
		</div>

	</div>

    </form>

</body>
</html>

