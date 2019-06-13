<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="editProducts.aspx.cs" Inherits="applliedProject.editProducts" %>

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
        .auto-style3 {
            font-size: x-large;
            font-weight: bold;
        }
        .auto-style4 {
            font-size: xx-large;
            color: #FFFFFF;
            text-decoration: underline;
            text-align: center;
        }
        .auto-style5 {
            font-size: x-large;
        }
        .auto-style6 {
            text-align: center;
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
					<li onclick="window.location.href='/homenew.aspx'" > HOME </li>
					<li onclick="window.location.href='/homeBrands.aspx'" > BRANDS </li>
					<li id="fisrtlist"onclick="window.location.href='/homeProducts.aspx'"> PRODUCTS</li>
					<li onclick="window.location.href='/loginnew.aspx'">LOGOUT</li>
				</ul>
			</div>

		    <br />
            <br />
            <table align="center" class="auto-style1">
                <tr>
                    <td class="auto-style4" colspan="4"><strong>Edit Product</strong></td>
                </tr>
                <tr>
                    <td colspan="4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6"><strong>
                        <asp:Label ID="Label1" runat="server" CssClass="auto-style5" Text="Brand"></asp:Label>
                        </strong></td>
                    <td class="auto-style6">
                        <asp:DropDownList ID="DropDownList1" runat="server" Height="37px" Width="165px">
                            <asp:ListItem>Mont Blnc</asp:ListItem>
                            <asp:ListItem Value="Ck"></asp:ListItem>
                            <asp:ListItem>Mk</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style6"><strong>
                        <asp:Label ID="Label5" runat="server" CssClass="auto-style5" Text="Product Name"></asp:Label>
                        </strong></td>
                    <td class="auto-style6">
                        <asp:TextBox ID="TextBox4" runat="server" Height="37px" Width="165px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6"><strong>
                        <asp:Label ID="Label2" runat="server" CssClass="auto-style5" Text="Product Id"></asp:Label>
                        </strong></td>
                    <td class="auto-style6">
                        <asp:TextBox ID="TextBox2" runat="server" Height="37px" Width="165px"></asp:TextBox>
                    </td>
                    <td class="auto-style6"><strong>
                        <asp:Label ID="Label4" runat="server" CssClass="auto-style5" Text="Available Quantity"></asp:Label>
                        </strong></td>
                    <td class="auto-style6">
                        <asp:DropDownList ID="DropDownList2" runat="server" Height="37px" Width="165px">
                            <asp:ListItem Value="1"></asp:ListItem>
                            <asp:ListItem Value="2"></asp:ListItem>
                            <asp:ListItem Value="3"></asp:ListItem>
                            <asp:ListItem Value="4"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6"><strong>
                        <asp:Label ID="Label3" runat="server" CssClass="auto-style5" Text="Sales Price"></asp:Label>
                        </strong></td>
                    <td class="auto-style6">
                        <asp:TextBox ID="TextBox3" runat="server" Height="37px" Width="165px"></asp:TextBox>
                    </td>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6" colspan="4"><strong>
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style3" Text="Update" OnClick="Button1_Click" />
                        </strong>&nbsp;&nbsp;&nbsp; <strong>
                        <asp:Button ID="Button2" runat="server" CssClass="auto-style3" Text="Cancel" OnClick="Button2_Click" />
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style6" colspan="4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6" colspan="4">
                        <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" Height="396px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="458px" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" HorizontalAlign="Center">
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

