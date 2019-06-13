<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="loginnew.aspx.cs" Inherits="applliedProject.loginnew" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Style.css" rel="stylesheet" />
    <title></title>
    <style type="text/css">
        .loginbox {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%,-50%);
    width: 400px;
    height: 550px;
    padding: 100px 60px;
    box-sizing: border-box;
    background: rgba(0, 0, 0, 0.7);
}
        .auto-style1 {
            font-weight: bold;
            color: #fff;
            font-size: large;
        }
        .auto-style2 {
            font-size: x-large;
        }
        .auto-style3 {
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <div class="loginbox">
        <h2 class="auto-style2">PERFUME ONLINE</h2><br/><br/>
        <form runat="server">
            <asp:Label text="Username" CssClass="auto-style1" runat="server" />
            <br />
            <asp:TextBox runat="server" CssClass="auto-style3" placeholder="enter email" Height="26px" Width="224px" ID="textbox1" />
            <br />
            <asp:Label text="Password" CssClass="auto-style1" runat="server" />
            <br />
            <asp:TextBox runat="server" CssClass="auto-style3" textmode="Password" placeholder="**********" Height="24px" Width="221px" ID="textbox2" />
            <strong>
            <br />
            <br />
            <asp:Button text="Login" CssClass="btnlogin" runat="server" Height="39px" Width="97px" OnClick="Unnamed5_Click" style="font-weight: bold; font-size: medium;" /></strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
            <asp:Button text="SignUp" CssClass="btnsignup" runat="server" Height="39px" Width="99px" style="font-weight: bold; font-size: medium;" OnClick="Unnamed6_Click" />

            </strong>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>

        </form>
    </div>
</body>
</html>
