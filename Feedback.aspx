<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="applliedProject.Feedback" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
        
            body {
    margin: 0;
    padding: 0;
    background-image: url('images/641461.jpg');
    background-size: cover;
    font-family: sans-serif;
}
.loginboxx {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%,-50%);
    width: 550px;
    height:600px;
    padding: 100px 60px;
    box-sizing: border-box;
    background: rgba(0, 0, 0, 0.6);
}
h2,h1 {
    
    text-align: center;
    color: rgb(255,217,3);
}
        .auto-style1 {
            font-weight: bold;
        }
        .auto-style2 {
            color: #FFFFFF;
        }
        .auto-style4 {
            color: #FFFFFF;
            width: 416px;
        }
        .auto-style5 {
            width: 284px;
        }
        .auto-style6 {
            width: 416px;
        }
        .auto-style7 {
            font-size: xx-small;
        }
        .auto-style8 {
            font-size: small;
        }
        .auto-style9 {
            font-size: small;
            color: #FFFFFF;
        }
        .auto-style10 {
            color: #FFFFFF;
            font-size: medium;
        }
    </style>
    <title></title>
</head>
<body>
    <h1>PERFUME ONLINE</h1>
    <div class="loginboxx">
        
        <h2>REGISTER</h2>
    <form id="form1" runat="server">
        <table>
            <tr>
                <td class="auto-style6"><span class="auto-style2"><strong>USERNAME :</strong></span> </td>
                <td class="auto-style5"><asp:TextBox ID="txtEmailID" runat="server" Width="214px" Height="30px"></asp:TextBox>
                    <br />
                    <strong>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEmailID" ErrorMessage="RequiredFieldValidator" ForeColor="White"></asp:RequiredFieldValidator>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4"><strong>PASSWORD:</strong></td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox1"  textmode="Password" runat="server" Width="214px" Height="27px"></asp:TextBox>
                    <br />
                    <strong>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator" ForeColor="White"></asp:RequiredFieldValidator>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4"><strong>CONFIRM PASSWORD:</strong></td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox2" textmode="Password" runat="server" Width="212px" Height="26px"></asp:TextBox>
                    <strong>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox1" ControlToValidate="TextBox2" ErrorMessage="Password Donot Match" ForeColor="White"></asp:CompareValidator>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <span class="auto-style10"><strong>SECURITY CODE:</strong></span>
                </td>
                <td class="auto-style5">
                    <asp:Image ID="imgCaptcha" runat="server" ImageUrl="~/CaptchaImage.aspx" />
                </td>
            </tr>
            <tr>
                <td class="auto-style6"></td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtCaptchaText" runat="server" Width="105px" Height="29px" /> <strong><span class="auto-style7">
                    <br />
&nbsp; </span><span class="auto-style9">[</span></strong><span class="auto-style2"><span class="auto-style8"><strong>Type Security code here]
                </strong></span></span>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style5">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6"></td>
                <td class="auto-style5">
                    <strong>
                    <asp:Button ID="btnSubmit" runat="server"  Text="SIGNUP" OnClick="btnSubmit_Click" CssClass="auto-style1" Height="49px" Width="117px"/>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style6"></td>
                <td class="auto-style5">
                    <asp:Label ID="lblMessage" runat="server" />
                </td>
            </tr>
        </table>
    </form>
        </div>
</body>
</html>
