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
        .auto-style7 {
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
                        <asp:Label ID="Label1" runat="server" CssClass="auto-style5" Text="Product Id"></asp:Label>
                        </strong></td>
                    <td class="auto-style6">
                        <asp:TextBox ID="TextBox5" Font-Size="Large" runat="server" Height="37px" Width="165px"></asp:TextBox>
                        <br />
                        <asp:HiddenField ID="HiddenField1" runat="server" />
                    </td>
                    <td class="auto-style6"><strong>
                        <asp:Label ID="Label5" runat="server" CssClass="auto-style5" Text="Product Name"></asp:Label>
                        </strong>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
                    </td>
                    <td class="auto-style6">
                        <asp:TextBox ID="TextBox4" Font-Size="Large" runat="server" Height="37px" Width="165px"></asp:TextBox>
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
                        <asp:Label ID="Label2" runat="server" CssClass="auto-style5" Text="Brand"></asp:Label>
                        </strong></td>
                    <td class="auto-style6">
                        <asp:DropDownList ID="DropDownList3" runat="server" Height="37px" Width="165px" Font-Size="Large">
                            <asp:ListItem>Mont Blnc</asp:ListItem>
                            <asp:ListItem Value="Ck"></asp:ListItem>
                            <asp:ListItem>Mk</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style6"><strong>
                        <asp:Label ID="Label4" runat="server" CssClass="auto-style5" Text="Available Quantity"></asp:Label>
                        </strong></td>
                    <td class="auto-style6">
                        <asp:DropDownList ID="DropDownList2" runat="server" Font-Size="Large" Height="37px" Width="165px">
                            <asp:ListItem Value="1"></asp:ListItem>
                            <asp:ListItem Value="2"></asp:ListItem>
                            <asp:ListItem Value="3"></asp:ListItem>
                            <asp:ListItem Value="4"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6"><strong>
                        <asp:Label ID="Label3" runat="server" CssClass="auto-style5" Text="Sales Price"></asp:Label>
                        </strong></td>
                    <td class="auto-style6">
                        <asp:TextBox ID="TextBox3" Font-Size="Large" runat="server" Height="37px" Width="165px"></asp:TextBox>
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
                    <td class="auto-style6" colspan="4">
                        <asp:GridView ID="GridView1" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" Height="325px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="469px" HorizontalAlign="Center" CssClass="auto-style7" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand1" ForeColor="Black">
                           <Columns>
                                <asp:BoundField DataField="productId" HeaderText="Product Id" SortExpression="productId" />
                               <asp:BoundField DataField="brandName" HeaderText="Brand" SortExpression="brandName" />
                                <asp:BoundField DataField="productName" HeaderText="Product Name" SortExpression="productName" />
                                <asp:BoundField DataField="price" HeaderText="Sales Price" SortExpression="price" />
                               <asp:BoundField DataField="quantity" HeaderText="Available Quantity" SortExpression="quantity" />
                               
                               <asp:TemplateField HeaderText="Edit">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:ImageButton ID="ImageButton1" CommandName="EditItem" CommandArgument='<%# Container.DataItemIndex %>' runat="server" ImageUrl="~/images/edit.png" />
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Delete">
                                    <EditItemTemplate>
                                        <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
                                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                        <asp:DropDownList ID="DropDownList2" runat="server"></asp:DropDownList>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                       <asp:ImageButton ID="ImageButton2" CommandName="DeleteItem" CommandArgument='<%# Container.DataItemIndex %>' runat="server" ImageUrl="~/images/delete.png" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                
                            </Columns>

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
                <tr>
                    <td class="auto-style6" colspan="4">
                        &nbsp;</td>
                </tr>
            </table>

		</div>

		

	</div>

    </form>

</body>
</html>

