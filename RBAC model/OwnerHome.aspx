
<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="OwnerHome.aspx.cs" Inherits="RBAC_model.OwnerHome" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   
    <h3 style="margin-left: 160px">CLOUD STORAGE</h3>
    <p>
        <asp:Label ID="show" runat="server" ForeColor="#FF3300"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="out" runat="server" class="btn btn-danger" Text="Logout" OnClick="out_Click" />
    </p>
    <table class="table table-striped">
        <tr>
            <td style="width: 206px">Select File : </td>
            <td style="width: 323px">
                <asp:FileUpload ID="FileUpload1" class="form-control"  runat="server" />
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" class="btn btn-primary" Text="Upload &amp; Encrypt" OnClick="Button1_Click" Width="206px" />
            </td>
        </tr>
        <tr>
            <td style="width: 206px">
                <asp:Label ID="status" runat="server"></asp:Label>
            </td>
            <td style="width: 323px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
  <div class="row">


      <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" GridLines="Horizontal" Height="110px" Width="627px">
          <AlternatingRowStyle BackColor="#F7F7F7" />
          <Columns>
              <asp:CommandField ShowSelectButton="True" />
              <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
              <asp:BoundField DataField="createdtime" HeaderText="createdtime" SortExpression="createdtime" />
              <asp:BoundField DataField="size" HeaderText="size" SortExpression="size" />
          </Columns>
          <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
          <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
          <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
          <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
          <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
          <SortedAscendingCellStyle BackColor="#F4F4FD" />
          <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
          <SortedDescendingCellStyle BackColor="#D8D8F0" />
          <SortedDescendingHeaderStyle BackColor="#3E3277" />
      </asp:GridView>
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT name, createdtime, size FROM Resource_Role WHERE (owner = @owner)"><SelectParameters>
    <asp:ControlParameter Name="owner" 
      ControlID="show"
      PropertyName="Text"/>
  </SelectParameters></asp:SqlDataSource>


  </div>
</asp:Content>
