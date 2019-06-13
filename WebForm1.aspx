<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="applliedProject.WebForm1" %>

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
.registerOk {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%,-50%);
    width: 550px;
    height:300px;
    padding: 100px 60px;
    box-sizing: border-box;
    background: rgba(0, 0, 0, 0.8);
}
h2{
text-align: center;
color: rgb(255,217,3);
       }
        .auto-style1 {
            font-weight: bold;
            font-size: medium;
        }
    </style>
    <title></title>
</head>
<body>
    
        <div class="registerOk">
            <form id="formOk" runat="server">
            
            <h2 >You Have Sucessfully Registerd ! </h2>
                <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
                <asp:Button ID="Button1" align="center"  runat="server" OnClick="Button1_Click" Text="Click Here To Login" CssClass="auto-style1" Height="48px" />
                </strong>
            </form>
            
            
        </div>
    
</body>
</html>
