<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="TallerDeReparaciones.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Bienvenido - LogIn</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/style.css">
</head>
<body class="img js-fullheight" style="background-image: url(images/bg.jpg);">

    <section class="ftco-section">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-6 text-center mb-5">
                    <h2 class="heading-section">Bienvenido</h2>
                </div>
            </div>
            <div class="row justify-content-center">
                <div class="col-md-6 col-lg-4">
                    <div class="login-wrap p-0">
                        <form action="#" class="signin-form" id="form1" runat="server">
                            <div class="form-group">
                                <asp:TextBox ID="TextBoxUsuario" class="form-control" placeholder="Ingrese el usuario" runat="server" required></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:TextBox ID="TextBoxClave" class="form-control" TextMode="Password" runat="server" placeholder="Ingrese la contraseña" required></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:Button ID="ButtonSignIn" class="form-control btn btn-primary submit px-3" runat="server" Text="Sign In" OnClick="ButtonSignIn_Click" />
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <script src="js/jquery.min.js"></script>
    <script src="js/popper.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/main.js"></script>

</body>
</html>
