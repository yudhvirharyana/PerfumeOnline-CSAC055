<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="loginnew.aspx.cs" Inherits="applliedProject.loginnew" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Style.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <title>User Login</title>
    <style type="text/css">
        .loginbox {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%,-50%);
    width: 430px;
    height: 550px;
    padding: 100px 60px;
    box-sizing: border-box;
    background: rgba(0, 0, 0, 0.7);
}
        .Labels {
            font-weight: bold;
            color: #fff;
            font-size: x-large;
        }
        .Heading {
            color: darkorange;
            font-size:xx-large;
        }
        
        .TextBoxes {
            margin-bottom: 20px;
          
        }
        </style>
</head>
<body>
    <div class="loginbox">
        <h1 class="Heading">PERFUME ONLINE</h1>
        <br/><br/>
        <form runat="server">

           
            <asp:Label text="Username" CssClass="Labels" runat="server" />
            <br />

            <asp:TextBox runat="server" CssClass="TextBoxes" placeholder="Enter the Email" Height="30px" Width="270px" ID="textbox1" />
            <br />
            
            <asp:Label text="Password" CssClass="Labels" runat="server" />
            <br />
            
            <asp:TextBox runat="server" CssClass="TextBoxes" textmode="Password" placeholder="**********" Height="30px" Width="270px" ID="textbox2" />
            <strong><%-- strong tag is just to show or highlight basically works like a bold text important text--%>
            <br />
            <br />
            </strong>
            

            <%--unnamed5_Click = an event attribute which is being used to initialize the function behind the login button --%>

            <asp:Button text="Login" CssClass="btnlogin" runat="server" Height="45px" Width="130px" OnClick="Unnamed5_Click" style="font-weight: bold; font-size: large;" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <strong>
            <%--unnamed6_Click = an event attribute which is being used to initialize the function behind the signup button --%>

            <asp:Button text="SignUp" CssClass="btnsignup" runat="server" Height="45px" Width="130px" style="font-weight: bold; font-size: large;" OnClick="Unnamed6_Click" />

            </strong>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>

&nbsp;
            
        </form>
    </div>
</body>
</html>
