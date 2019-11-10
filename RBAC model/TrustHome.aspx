<%@ Page Title="Owner" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"  CodeBehind="TrustHome.aspx.cs" Inherits="RBAC_model.TrustHome" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   
    <h3 style="margin-left: 320px">ROLE MANAGER [HOME PAGE]&nbsp;&nbsp;&nbsp; </h3>

    <div class="row">
    <div class="col-md-6">
        <p>CREATE ROLE</p>
        <table class="table table-striped" >
            <tr><td>Role name </td><td> <asp:TextBox ID="txtRole" class="form-control" runat="server"></asp:TextBox></td></tr>
             <tr><td>  <asp:Button ID="Button1" runat="server" class="btn btn-primary"  OnClick="Button1_Click" Text="CREATE ROLE" Width="203px" /></td><td></td></tr>
        </table>

    </div>



     <div class="col-md-6">
         <p>MAP</p>
         <table class="table table-striped"><tr><td><label>Role name</label>
             <asp:DropDownList ID="DropDownList3" runat="server" class="form-control" DataSourceID="SqlDataSource3" DataTextField="name" DataValueField="name">
             </asp:DropDownList>
             <asp:SqlDataSource ID="SqlDataSource3" runat="server"   ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [name] FROM [Roles] ORDER BY [name]"></asp:SqlDataSource>
                 </td><td><label>Username</label>
                        <asp:DropDownList ID="DropDownList4" runat="server"  class="form-control" DataSourceID="SqlDataSource4" DataTextField="name" DataValueField="name">
        </asp:DropDownList>       
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [name] FROM [User] ORDER BY [name]"></asp:SqlDataSource>
    
    </td></tr><tr><td><asp:Button ID="Button3" runat="server"  class="btn btn-primary" OnClick="Button3_Click" Text="BOUND" Width="207px" /></td><td></td></tr></table>
        
    </div>
    </div>
    <!----------------------------------------------------->
    <div class="row">
    <div class="col-md-6">
        <p>MAP ROLE RESOURCE</p>

        <table  class="table table-striped" >
            <tr><td><label>Role name</label><asp:DropDownList ID="DropDownList1" runat="server" class="form-control"  DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="name">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [name] FROM [Roles] ORDER BY [name]"></asp:SqlDataSource>
        </td><td><label>Resource</label><asp:DropDownList ID="DropDownList2" runat="server" class="form-control" DataSourceID="SqlDataSource2" DataTextField="name" DataValueField="name">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [name] FROM [Resource_Role]"></asp:SqlDataSource>
        </td></tr>
             <tr><td>  <asp:Button ID="Button2" class="btn btn-primary" runat="server" OnClick="Button2_Click" Text="MAP" Width="201px" /></td><td></td></tr>
        </table>
    </div>
    <div class="col-md-6">

    </div>
    </div>
    
    
    
    
</asp:Content>
