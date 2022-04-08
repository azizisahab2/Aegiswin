<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="Aegiswin.WebForm2" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
   <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>    
    <script>
        function getLocation()
        {
            if (navigator.geolocation)
            {
                navigator.geolocation.getCurrentPosition(showPosition);
            }
            else
            {
                document.getElementById("Label1").value = "Geolocation is not supported by this browser.";
            }
        }
        function showPosition(position)
        {
            document.getElementById("TextBox1").value = position.coords.latitude;
            document.getElementById("TextBox2").value = position.coords.longitude;
        }
    </script>
<%--<button onclick="getLocation()">Try It</button>--%>
    <form id="form1" runat="server">     
        <div>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server"  Text="Button" OnClientClick="getLocation();return false;" />
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        </div>
    </form>   
</body>
</html>
