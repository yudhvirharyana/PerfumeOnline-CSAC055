<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addProducts.aspx.cs" Inherits="applliedProject.addProducts" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<!DOCTYPE html>
<head>
    <style>
        #fisrtlist {
    color: orange;
}
        .auto-style1 {
            width: 80%;
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
            width: 351px;
        }
        .auto-style9 {
            width: 323px;
            text-align: center;
        }
        .auto-style10 {
            text-decoration: underline;
        }
        .auto-style11 {
            font-size: x-large;
            text-align: center;
            width: 369px;
        }
        .auto-style13 {
            width: 351px;
        }
        .auto-style14 {
            width: 351px;
            text-align: center;
        }
        .auto-style15 {
            font-size: large;
        }
        .auto-style16 {
            width: 323px;
        }
        .auto-style17 {
            width: 369px;
        }
        .auto-style18 {
            font-size: xx-large;
            color: #FFFFFF;
            text-align: center;
            height: 59px;
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
                    <td class="auto-style18" colspan="4"></td>
                </tr>
                <tr>
                    <td class="auto-style8"><strong>Brand NAME</strong></td>
                    <td class="auto-style9">
                        <asp:TextBox ID="TextBox1" Font-Size="Large" runat="server" Height="37px" Width="165px"></asp:TextBox>
                        <br />
                        <strong>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter Brand Name" ForeColor="Red"></asp:RequiredFieldValidator>
                        </strong>
                    </td>
                    <td class="auto-style11"><strong>product name</strong></td>
                    <td class="auto-style7">
                        <asp:TextBox ID="TextBox4" Font-Size="Large" runat="server" Height="37px" Width="165px"></asp:TextBox>
                        <br />
                        <strong>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Enter Product Name" ForeColor="Red"></asp:RequiredFieldValidator>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style16">&nbsp;</td>
                    <td class="auto-style17">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style14"><strong>
                        <asp:Label ID="Label2" runat="server" CssClass="auto-style4" Text="Product ID"></asp:Label>
                        </strong></td>
                    <td class="auto-style9">
                        <asp:TextBox ID="TextBox2" Font-Size="Large" runat="server" Height="37px" Width="165px"></asp:TextBox>
                        <br />
                        <strong>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter Product Id" ForeColor="Red"></asp:RequiredFieldValidator>
                        </strong>
                    </td>
                    <td class="auto-style11"><strong>available quantity</strong></td>
                    <td class="auto-style7">
                        <asp:DropDownList ID="DropDownList1" runat="server" Font-Size="Large" Height="40px" Width="165px">
                            <asp:ListItem Value="1"></asp:ListItem>
                            <asp:ListItem Value="2"></asp:ListItem>
                            <asp:ListItem Value="3"></asp:ListItem>
                            <asp:ListItem Value="4"></asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        <strong>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Enter Quantity" ForeColor="Red"></asp:RequiredFieldValidator>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style16">&nbsp;</td>
                    <td class="auto-style17">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8"><strong>sales price</strong></td>
                    <td class="auto-style9">
                        <asp:TextBox ID="TextBox3" Font-Size="Large" runat="server" Height="37px" Width="165px"></asp:TextBox>
                        <br />
                        <strong>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Enter Slaes Price" ForeColor="Red"></asp:RequiredFieldValidator>
                        </strong>
                    </td>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style7">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style16">&nbsp;</td>
                    <td class="auto-style17">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7" colspan="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style6" Height="46px" Text="ADD" Width="150px" OnClick="Button1_Click" />
                        </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
                        <asp:Button ID="Button2" runat="server" CssClass="auto-style6" Height="45px" OnClick="Button2_Click" Text="CANCEL" Width="148px" CausesValidation="False" />
                        </strong></td>
                </tr>
                <tr>
                    <td colspan="4">&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="4">
                        <asp:GridView ID="GridView1" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" Height="290px" HorizontalAlign="Center" Width="449px" CssClass="auto-style15" ForeColor="Black">
                            <FooterStyle BackColor="#CCCCCC" />
                            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                            <PagerStyle ForeColor="Black" HorizontalAlign="Left" BackColor="#CCCCCC" />
                            <RowStyle BackColor="White" />
                            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#808080" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#383838" />
                        </asp:GridView>
                    </td>
                </tr>
            </table>
			
		</div>

	</div>

    </form>

</body>
</html>

