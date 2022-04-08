<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="searchQuery_emailMobile.aspx.cs" Inherits="Aegiswin.searchQuery_emailMobile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
    <style>
        .aspx-control{
            width: 100%;
            height: 20px;    
            position: relative;
        }

        .cont-date-pic{
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
</head>
<body>
    <form id="form1" runat="server">
       <div class="container">
           <div class="row">               
               <div class="col-sm-6">
                   <div class="form-group">
                       <asp:TextBox ID="txt_email" runat="server" placeholder="Enter email"></asp:TextBox>
                   </div>
                   <div class="form-group">
                       <asp:Button ID="btn_search1" runat="server" Text="Search" OnClick="btn_search1_Click" />
                       <asp:Literal ID="lit_msg" runat="server"></asp:Literal>
                   </div>
                   <div class="form-group">
                       <asp:GridView ID="GridView2" CssClass="table table-condensed table-hover" runat="server" AutoGenerateColumns="False" DataKeyNames="Id">
                           <Columns>
                               <asp:TemplateField ShowHeader="False">
                                   <ItemTemplate>
                                       <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" Visible="false"></asp:LinkButton>
                                   </ItemTemplate>
                               </asp:TemplateField>                       
                               <asp:BoundField DataField="Firstname" HeaderText=" First Name" ReadOnly="True" SortExpression="Firstname"  />
                               <asp:BoundField DataField="Lastname" HeaderText=" Last Name" ReadOnly="True" SortExpression="Lastname"  />
                               <asp:BoundField DataField="Mobile" HeaderText=" First Name" ReadOnly="True" SortExpression="Mobile"  />
                               <asp:BoundField DataField="Email" HeaderText=" Email" ReadOnly="True" SortExpression="Email"  />
                               <asp:BoundField DataField="subjects" HeaderText=" Subject" ReadOnly="True" SortExpression="subjects"  />
                               <asp:BoundField DataField="serviceName" HeaderText=" Service Name" ReadOnly="True" SortExpression="serviceName"  />
                               <asp:BoundField DataField="DateTime" HeaderText=" Date and Time" ReadOnly="True" SortExpression="DateTime"  />
                           </Columns>
                       </asp:GridView>
                   </div>                   
               </div>
               <div class="col-sm-6">
                   <div class="form-group">
                       <asp:TextBox ID="txt_phone" runat="server" placeholder="Enter mobile no"></asp:TextBox>
                   </div>
                   <div class="form-group">
                       <asp:Button ID="btn_search" runat="server" Text="Search" OnClick="btn_search_Click" />
                       <asp:Literal ID="lit_msg1" runat="server"></asp:Literal>
                   </div>
                   <div class="form-group">
                       <asp:GridView ID="GridView1" CssClass="table table-condensed table-hover" runat="server" AutoGenerateColumns="False" DataKeyNames="Id">
                           <Columns>
                               <asp:TemplateField ShowHeader="False">
                                   <ItemTemplate>
                                       <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" Visible="false"></asp:LinkButton>
                                   </ItemTemplate>
                               </asp:TemplateField>
                               <asp:BoundField DataField="Firstname" HeaderText=" First Name" ReadOnly="True" SortExpression="Firstname"  />
                               <asp:BoundField DataField="Lastname" HeaderText=" Last Name" ReadOnly="True" SortExpression="Lastname"  />
                               <asp:BoundField DataField="Mobile" HeaderText=" First Name" ReadOnly="True" SortExpression="Mobile"  />
                               <asp:BoundField DataField="Email" HeaderText=" Email" ReadOnly="True" SortExpression="Email"  />
                               <asp:BoundField DataField="subjects" HeaderText=" Subject" ReadOnly="True" SortExpression="subjects"  />
                               <asp:BoundField DataField="serviceName" HeaderText=" Service Name" ReadOnly="True" SortExpression="serviceName"  />
                               <asp:BoundField DataField="DateTime" HeaderText=" Date and Time" ReadOnly="True" SortExpression="DateTime"  />
                           </Columns>
                       </asp:GridView>
                   </div>
               </div>
           </div>
        </div>
    </form>    
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

</body>
</html>
