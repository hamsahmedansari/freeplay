<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Loginx.aspx.cs" Inherits="FreePlay.Administrator.Loginx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Login</title>
    <link href="../Content/bootstrap/css/Mumtazbootstrap.css" rel="stylesheet" />
    <script src="../Content/jquery/jquery.min.js"></script>
    <script src="../Content/popper/popper.min.js"></script>
    <script src="../Content/bootstrap/js/bootstrap.min.js"></script>
    <link href="../Content/socialmicons/style.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link rel="icon" href="../Images/FreePlay.ico" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container mt-175 mb-175">
            <h1 class="text-center font-cursive">Admin Login</h1>
            <div class="row mt-3">
                <div class="col-sm-3">
                </div>
                <div class="col-sm-3 FadeInAnimate">
                    <img src="../Images/logo.png" class="img img-fluid" />
                </div>
                <div class="col-sm-3">
                    <div class="container-fluid">
                        <div class="row mt-5">
                            <div class="col-sm-12">
                                <asp:TextBox runat="server" ID="txtUserName" CssClass="straight-border form-control" placeholder="User Name"></asp:TextBox>
                                <asp:Label runat="server" ID="errUserNameRequired" Text="User Name Required" Visible="false" Style="color: red"></asp:Label>
                            </div>
                            <div class="col-sm-12">
                                <asp:TextBox runat="server" ID="txtPassword" CssClass="straight-border form-control" placeholder="********" TextMode="Password"></asp:TextBox>
                                <asp:Label runat="server" ID="errPasswordRequired" Text="Password Reuired" Visible="false" Style="color: red"></asp:Label>
                            </div>
                            <div class="col-sm-12">
                                <asp:Label runat="server" ID="errEmailPasswordInvalid" Visible="false" Text="Email Or Password Invalid!" Style="color: red"></asp:Label>
                            </div>
                            <div class="col-sm-12 text-right">
                                <p></p>
                                <asp:Button runat="server" ID="btnLogin" Text="Login" CssClass="btn btn-outline-primary" OnClick="btnLogin_Click" />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-3">
                    <asp:Label runat="server" ID="errException" Text="" Visible="false" Style="color: red;"></asp:Label>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
