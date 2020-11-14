<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="Alivio_UI_Mockup.LogIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Log In</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style type="text/css">
        .login-form {
            width: 100%;
            max-width: 550px;
            margin: 50px auto;
        }

            .login-form form {
                margin-bottom: 15px;
                background: steelblue;
                color: white;
                box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
                padding: 30px;
            }

            .login-form h2 {
                margin: 0 0 15px;
            }

        .form-control, .btn {
            min-height: 38px;
            border-radius: 2px;
        }

        .btn {
            font-size: 15px;
            font-weight: bold;
            background-color: lightsteelblue;
            color: white;
            width: 50%;
            max-width: 200px;
            display: block;
            margin-left: auto;
            margin-right: auto;
        }

        #logInHeaderImage {
            width: 50%;
            height: 50px;
            display: block;
            margin-left: auto;
            margin-right: auto;
        }


        .img-fluid {
            width: auto;
            height: 200px;
            max-width: 100%;
            margin-left: auto;
            margin-right: auto;
            display: block;
        }

        .btn {
            background-color: white;
            color: steelblue;
            border-radius:5px;
        }

        .btn:hover{
            background-color:#edf3f8;
            color:steelblue;
        }

        #forgotPassword {
            color: white;
        }

        h2 {
            color: white;
        }
    </style>
</head>



<body>




    <img src="images/Esperanza_Logo.png" class="img-fluid" alt="esperanza header" />
    <div class="login-form">
        <form id="form1" runat="server">
            <h2 class="text-center">Inspiro Portal Log In</h2>
            <br />
            <br />
            <div class="form-group">
                <asp:TextBox CssClass="form-control" ID="UserName" placeholder="Username" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:TextBox type="password" CssClass="form-control" ID="Password" placeholder="Password" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <a href="Dashboard.aspx" class="btn btn-primary btn-block">Log in</a>
            </div>
            <div class="clearfix">
                <label class="pull-left checkbox-inline">
                    <input type="checkbox" />
                    Remember me</label>
                <a href="#" class="pull-right">
                    <div id="forgotPassword">Forgot Password?</div>
                </a>
            </div>
        </form>

    </div>













    </form>

</body>
</html>
