﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="editBrand.aspx.cs" Inherits="applliedProject.editBrand" %>


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
            width: 437px;
        }
        .auto-style5 {
            width: 867px;
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
            width: 867px;
            text-align: center;
        }
        .auto-style9 {
            width: 437px;
            text-align: center;
        }
        .auto-style10 {
            font-size: 60px;
            color: #FFFFFF;
            text-decoration: underline;
        }
        .auto-style11 {
            font-size: large;
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
					<li > HOME </li>
					<li id="fisrtlist"onclick="window.location.href='/homeBrands.aspx'"> BRANDS </li>
					<li onclick="window.location.href='/homeProducts.aspx'" > PRODUCTS</li>
					<li onclick="window.location.href='/Loginnew.aspx'">LOGOUT</li>
				</ul>
			</div>

		    <table class="auto-style1">
                <tr>
                    <td class="auto-style7" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
                        <asp:Label ID="Label1" runat="server" CssClass="auto-style10" Text="Edit Brands"></asp:Label>
                        </strong>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
                        <asp:Label ID="Label2" runat="server" CssClass="newStyle2" Text="Brand Id"></asp:Label>
                        </strong>&nbsp;</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="TextBox1" runat="server" Height="37px" Width="181px" Font-Size="Large" ></asp:TextBox>
                        <asp:HiddenField ID="HiddenField1" runat="server" OnValueChanged="HiddenField1_ValueChanged" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
                        <asp:Label ID="Label3" runat="server" CssClass="newStyle3" Text="Brand Name"></asp:Label>
                        </strong>&nbsp;</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="TextBox2" runat="server" Height="38px" Width="178px" Font-Size="Large"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7" colspan="2"><strong>
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style6" Height="84px" OnClick="Button1_Click" Text="Update" Width="149px" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server" CssClass="auto-style6" Height="78px" Text="Cancel" Width="165px" OnClick="Button2_Click" />
                        &nbsp;
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7" colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:GridView ID="GridView1" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" Height="255px" Width="435px" HorizontalAlign="Center" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CellSpacing="2" CssClass="auto-style11" ForeColor="Black">
                            <Columns>
                                <asp:BoundField DataField="brandId" HeaderText="Brand ID" SortExpression="brandId" />
                                <asp:BoundField DataField="brandName" HeaderText="Brand Name" SortExpression="brandName" />
                                
                                <asp:TemplateField HeaderText="Edit">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:ImageButton ID="ImageButton1" CommandName="EditItem" CommandArgument='<%# Container.DataItemIndex %>' runat="server" ImageUrl="~/images/edit.png" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Delete">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                       <asp:ImageButton ID="ImageButton2" CommandName="DeleteItem" CommandArgument='<%# Container.DataItemIndex %>' runat="server" ImageUrl="~/images/delete.png" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                
                            </Columns>
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
&nbsp;&nbsp;</td>
                </tr>
            </table>

		</div>

	

	</div>

    </form>

</body>
</html>


