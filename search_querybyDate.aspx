<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="search_querybyDate.aspx.cs" Inherits="Aegiswin.search_querybyDate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
    <title></title>
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
        .table-condensed tr th
        {
            border: 0px solid #6e7bd9;
            color: white;
            background-color: #6e7bd9;
        }

        .table-condensed, .table-condensed tr td 
        {
            border: 0px solid #000;
        }

        tr:nth-child(even) 
        {
            background: #f8f7ff;
        }

        tr:nth-child(odd) 
        {
            background: #fff;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div class="container">
            <div class="row">
                <div class="col-sm-4"></div>
                <div class="col-sm-4">
                    <div class="form-group">
                        <asp:Label ID="Label6" runat="server" Text="Date from"></asp:Label>
                        <div class="aspx-control" >
                            <asp:TextBox ID="txt_dateFrom" runat="server"  BorderStyle="None"></asp:TextBox>
                            <div class="cont-date-pic">                                        
                                <input id="mydateFrom" type="date" onchange="handler1(event);" class="form-control" />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label2" runat="server" Text="To:"></asp:Label>
                        <div class="aspx-control" >
                            <asp:TextBox ID="txt_dateTo" runat="server"  BorderStyle="None"></asp:TextBox>
                            <div class="cont-date-pic">                                        
                                <input id="mydateFrom1" type="date" onchange="handler2(event);" class="form-control" />                                
                            </div>
                        </div>
                    </div>
                    
                    <div class="form-group">                       
                         <asp:Literal ID="lit_msg1" runat="server"></asp:Literal>
                    </div>

                    <div class="form-group">
                        <asp:GridView ID="GridView2" CssClass="table table-condensed table-hover" runat="server" AutoGenerateColumns="False" DataKeyNames="Id">
                            <Columns>
                                <asp:TemplateField>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                    </EditItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField DataField="Firstname" HeaderText=" First Name" ReadOnly="True" SortExpression="Firstname"  />
                                <asp:BoundField DataField="Lastname" HeaderText=" Last Name" ReadOnly="True" SortExpression="Lastname"  />
                                <asp:BoundField DataField="Mobile" HeaderText="Mobile" ReadOnly="True" SortExpression="Mobile" />
                                <asp:BoundField DataField="Email" HeaderText=" Email" ReadOnly="True" SortExpression="Email"/>
                                <asp:BoundField DataField="subjects" HeaderText=" Subject" ReadOnly="True" SortExpression="subjects"/>
                                <asp:BoundField DataField="serviceName" HeaderText=" Service Name" ReadOnly="True" SortExpression="serviceName"/>
                                <asp:BoundField DataField="DateTime" HeaderText=" Date and Time" ReadOnly="True" SortExpression="DateTime"/>                                
                            </Columns>
                        </asp:GridView>
                    </div>                    
                </div>
                <div class="col-sm-4">
                    <div class="form-group">
                        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
                    </div>
                </div>
            </div>
        </div>
    </form>
    <script>   
        function handler1(e)
        {
            document.getElementById('<%=txt_dateFrom.ClientID %>').value = e.target.value;
        }

        function handler2(e)
        {
            document.getElementById('<%=txt_dateTo.ClientID %>').value = e.target.value;
        }
    </script>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>
