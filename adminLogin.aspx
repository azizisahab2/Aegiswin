<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminLogin.aspx.cs" Inherits="Aegiswin.adminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Advocate Login</title>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<link rel="icon" href="https://aegiswin.com/images/icon.png" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="https://aegiswin.com/css/stylesheet.css"/>
<style>
    body{ background: #650994;}
    .log-center{
          width: 400px;
          height: 500px;
          position: absolute;
          left: 0;
          right: 0;
          top: 0;
          bottom: 0;
          margin: auto;
          max-width: 100%;
          max-height: 100%;
          overflow: auto;
    }
</style>
    <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>    
    <script>        
        function getLocation() {
            if (navigator.geolocation) {
                navigator.geolocation.getCurrentPosition(showPosition);
            } else {
                document.getElementById("Label1").value = "Geolocation is not supported by this browser.";
            }
        }

        function showPosition(position) {
            document.getElementById("lit_addlatitude").value = position.coords.latitude
            document.getElementById("lit_addlongitude").value = position.coords.longitude;
        }
    </script>
</head>
<body onload = "getLocation();return false;">    
    <form id="form1" runat="server">
        <section>
            <div class="container-xl">
                <div class="row">
                    <div class="col-lg-6 log-center p-5 bg-white shadow-lg rounded border pb-5" method="post" id="login-form">
                        <h2 class="form-signin-heading text-center pb-5">Admin Login</h2>
                        <div id="error"></div>
                        <div class="form-group">
                            <asp:TextBox ID="txt_userName" class="form-control" runat="server" placeholder="User name"></asp:TextBox>
                            <span id="check-e"></span>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="txt_password" class="form-control" runat="server" placeholder="password"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="lit_addlatitude" class="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="lit_addlongitude" class="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="form-group mt-5">
                            <asp:Button ID="btn_login" class="apply-now" runat="server" Text="Login" OnClick="btn_login_Click"/>
                            <asp:Literal ID="lit_msg" runat="server"></asp:Literal>    
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </form>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>   

<script type="text/javascript">
    window.onscroll = function () { myFunction() };
    var header = document.getElementById("myHeader");
    var sticky = header.offsetTop;

    function myFunction() {
        if (window.pageYOffset > sticky) {
            header.classList.add("sticky");
        } else {
            header.classList.remove("sticky");
        }
    }
</script>
</body>
</html>
