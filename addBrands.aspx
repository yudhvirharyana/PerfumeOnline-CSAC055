<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addBrands.aspx.cs" Inherits="applliedProject.addBrands" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<!DOCTYPE html>
<head>
	<title></title>
    <style>
        .leftmenu h2 {
        padding-left: 70px;
        font-weight: bold;
        color: orange;
        font-size: 37px;
        font-family: 'Montserrat', sans-serif;
    }
        #fisrtlist {
    color: orange;
}
        .auto-style1 {
            width: 100%;
        }
        .auto-style4 {
            width: 574px;
        }
        .auto-style5 {
            width: 716px;
        }
        .auto-style6 {
            font-weight: bold;
            font-size: x-large;
        }
        .newStyle1 {
            font-size: 60px;
            color: #FFFFFF;
        }
        .newStyle2 {
            font-size: 45px;
        }
        .newStyle3 {
            font-size: 45px;
        }
        .auto-style7 {
            text-align: center;
        }
        .auto-style8 {
            font-size: xx-large;
            color: #FFFFFF;
            text-decoration: underline;
        }
        .auto-style9 {
            font-size: x-large;
        }
        .auto-style10 {
            width: 716px;
            text-align: center;
        }
        .auto-style11 {
            width: 574px;
            text-align: center;
        }
    </style>
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
					<li id="fisrtlist" onclick="window.location.href='/homeBrands.aspx'"> BRANDS </li>
					<li onclick="window.location.href='/homeProducts.aspx'"> PRODUCTS</li>
					<li onclick="window.location.href='/Loginnew.aspx'">LOGOUT</li>
				</ul>
			</div>

		    <table class="auto-style1">
                <tr>
                    <td class="auto-style7" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
                        <asp:Label ID="Label1" runat="server" CssClass="auto-style8" Text="Add Brands"></asp:Label>
                        </strong>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style11">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; <strong>
                        <asp:Label ID="Label2" runat="server" CssClass="auto-style9" Text="Brand Id"></asp:Label>
                        </strong>&nbsp;</td>
                    <td class="auto-style10">
                        <asp:TextBox ID="TextBox1" runat="server" Height="37px" Width="181px" Font-Size="Large"></asp:TextBox>
                        <strong>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="   Brand Id Can't be Empty" ForeColor="Red"></asp:RequiredFieldValidator>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style10">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style11"> <strong>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label3" runat="server" CssClass="auto-style9" Text="Brand Name"></asp:Label>
                        </strong></td>
                    <td class="auto-style10">
                        <asp:TextBox ID="TextBox2" runat="server" Height="38px" Width="178px" Font-Size="Large"></asp:TextBox>
                        <strong>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Brand Name Can't Be Empty" ForeColor="Red"></asp:RequiredFieldValidator>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7" colspan="2"><strong>
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style6" Height="43px" OnClick="Button1_Click" Text="Add" Width="149px" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server" CssClass="auto-style6" Height="44px" OnClick="Button2_Click" Text="Cancel" Width="136px" CausesValidation="False" PostBackUrl="~/homeBrands.aspx" ValidateRequestMode="Disabled" />
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style7" colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <div class="auto-style7">
                        <asp:GridView ID="GridView2" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" Height="246px" HorizontalAlign="Center" PageSize="20" Width="403px" CssClass="auto-style9" CellSpacing="2" ForeColor="Black">
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
                        </div>
                        &nbsp;</td>
                </tr>
            </table>

		</div>

	

	</div>

    </form>

</body>
</html>

