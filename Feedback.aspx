<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="applliedProject.Feedback" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <style>
        
body{
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
.SignUpButton {
            font-weight: bold;
            font-size: large;
            color: rgb(255,217,3)
        }
.auto-style5 {
            width: 284px;
        }        
.Labels {
            color: #FFFFFF;
            width: 416px;
            font-size: large;
            
        }
        
    </style>
    
    <title>User Registration</title><%--include title please --%>

</head>

<body>
    <h1>PERFUME ONLINE</h1>

    <div class="loginboxx">
        <h2>REGISTER</h2>

    <form id="form1" runat="server">
        
        <table>
            <tr>
                <td class="Labels"><strong>USERNAME :</strong> </td>
                <td><asp:TextBox ID="txtEmailID" runat="server" placeholder="Username" Width="212px" Height="26px" ></asp:TextBox><%-- no need to include Labels in <td> tag because u mentioned the width already inside the td tag line  --%>
                    <br />
                    <strong>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEmailID" ErrorMessage="Enter Username" ForeColor="White" font-size="Large" ></asp:RequiredFieldValidator>
                    </strong>
                </td>
            </tr>
            
            <tr>
                <td class="Labels"><strong>PASSWORD:</strong></td>
                <td>
                    <asp:TextBox ID="TextBox1"  textmode="Password" runat="server" placeholder="Password" Width="212px"  Height="26px"></asp:TextBox><%--keep the same width --%>
                    <br />
                    <strong>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter Password" ForeColor="White" CssClass="auto-style13"></asp:RequiredFieldValidator>
                    </strong>
                </td>
            </tr>
            
            <tr>
                <td class="Labels"><strong>CONFIRM PASSWORD:</strong></td>
                <td>
                    <asp:TextBox ID="TextBox2" textmode="Password" runat="server" placeholder="Confirm Password" Width="212px" Height="26px"></asp:TextBox>
                    <strong>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox1" ControlToValidate="TextBox2" ErrorMessage="Password Donot Match" ForeColor="White" CssClass="auto-style13"></asp:CompareValidator>
                    </strong>
                </td>
            </tr>
            
            <tr>
                <td class="Labels"><strong>SECURITY CODE:</strong></td>
                
                <td class="auto-style5">
                    <asp:Image ID="imgCaptcha" runat="server" ImageUrl="~/CaptchaImage.aspx" />
                </td>
            </tr>
            
            <tr>
                <td class="Labels"></td>
                <td>
                    <asp:TextBox ID="txtCaptchaText" runat="server" placeholder="Enter Captcha" Width="105px" Height="29px" /> 
                    <br/>

                </td>
            </tr>
            
            <tr>
                <td class="Labels">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td> <%-- to give space between textbox of security code and signup button   --%>
            </tr>
                    
            
            <tr>
                <td class="Labels"></td><%-- to give space at front of textbox of security code and signup button because we are not using any label here  --%>
                <td>
                    <strong>
                    <asp:Button ID="btnSubmit" runat="server"  Text="SignUp" BackColor="Transparent" OnClick="btnSubmit_Click" CssClass="SignUpButton" Height="49px" Width="117px"/>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="Labels"></td>
                <td class="auto-style5">
                    <asp:Label ID="lblMessage" runat="server" />
                </td>
            </tr>
        </table>
    </form>
        </div>
</body>
</html>
