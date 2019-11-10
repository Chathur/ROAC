<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs" Inherits="RBAC_model.AdminHome"  %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
  
    <h3>PRBAC ADMINISTRATOR HOME</h3>
    <br />
    <div class="row">
             <div class="col-md-3">
                 <asp:Button ID="Button1" runat="server"  class="btn btn-primary" Text="Create User" />
             </div>
             <div class="col-md-3">
                 <asp:Button ID="Button2" runat="server" class="btn btn-primary"  Text="Create Role" OnClick="Button2_Click" />
             </div>
             <div class="col-md-3">
                 <asp:Button ID="Button3" runat="server" class="btn btn-primary"   Text="Button" />
             </div>
    </div><br />
     <div class="row">
             <div class="col-md-6">
                
                 <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="419px">
                     <AlternatingRowStyle BackColor="White" />
                     <Columns>
                         <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                         <asp:BoundField DataField="owner" HeaderText="owner" SortExpression="owner" />
                         <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                         <asp:BoundField DataField="createdtime" HeaderText="createdtime" SortExpression="createdtime" />
                     </Columns>
                     <EditRowStyle BackColor="#2461BF" />
                     <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                     <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                     <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                     <RowStyle BackColor="#EFF3FB" />
                     <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                     <SortedAscendingCellStyle BackColor="#F5F7FB" />
                     <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                     <SortedDescendingCellStyle BackColor="#E9EBEF" />
                     <SortedDescendingHeaderStyle BackColor="#4870BE" />
                 </asp:GridView>
                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Id], [owner], [name], [createdtime] FROM [Resource_Role]"></asp:SqlDataSource>
                
             </div>
             <div class="col-md-6">
                 
             </div>
            
    </div>
</asp:Content>
