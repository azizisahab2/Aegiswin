<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="searchQuery.aspx.cs" Inherits="Aegiswin.searchQuery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>

    <style>
        .aspx-control
        {
            width: 100%;
            height: 20px;    
            position: relative;
        }

        .cont-date-pic
        {
            width: 100%;
            height: 100px;                        
            position: absolute;
            top:0;
        }
        .table-condensed tr th{
            border: 0px solid #6e7bd9;
            color: white;
            background-color: #6e7bd9;
        }

        .table-condensed, .table-condensed tr td{  
            border: 0px solid #000;
        }

        tr:nth-child(even){
            background: #f8f7ff;
        }

        tr:nth-child(odd){
            background: #fff;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="container">
        <div class="row">
            <div class="col-sm-4">
                <div class="form-group">
                    <asp:Label ID="Label1" runat="server" Text="Select Service"></asp:Label>
                    <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList>
                </div>
                <div class="form-group">
                    <asp:GridView ID="GridView1" CssClass="table table-condensed table-hover" runat="server"></asp:GridView>
                    <asp:Literal ID="lit_msg1" runat="server"></asp:Literal>
                </div>
            </div>
            <div class="col-sm-4"></div>
            <div class="col-sm-4"></div>                
        </div>
    </div> 
</asp:Content>

