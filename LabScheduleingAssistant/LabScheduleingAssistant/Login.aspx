<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="LabScheduleingAssistant.Login" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Tom Cadden's Site</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/customStyle.css" rel="stylesheet">
</head>
<body>
    <div class="bg">
        <div class="row">
            <div class="col-sm-4 login-page-logo">
                <img class="login-page-logo-img" src="img/transparentLogo.png" />
            </div>
        </div>
        <div class="row login-row">
            <div class="col-sm-4 centered-col">
                <div class="card">
                    <div class="card-header">
                        <h2 class="form-signin-heading">Sign in</h2>
                    </div>    
               
               
                    <div class="card-body">
                        <form id="login" runat="server" class="form-signin">
                            <asp:Label runat="server" for="inputUsername" class="login-label" text="Username"></asp:Label>
                            <asp:textbox runat="server" type="text" id="inputUsername" class="form-control" placeholder="Username" required="true" autofocus=""></asp:textbox>
                            <asp:Label runat="server" for="inputPassword" class="login-label" text="Password"></asp:Label>
                            <asp:textbox runat="server" type="password" id="inputPassword" class="form-control" placeholder="Password" required="true"></asp:textbox>
                            <asp:Button class="btn btn-lg btn-primary btn-block" ID="btnSubmit" runat="server" Text="Log In" OnClick="btnSubmit_Click" />   
                        </form>
                    </div>
                
                </div>
            </div>
        </div>
    </div>
</body>
</html>