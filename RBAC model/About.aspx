<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="RBAC_model.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
  
    <h3>RBAC ADMINISTRATOR</h3>
    <p>&nbsp;</p>
    <table class="table table-striped" >
        <tr>
            <td style="width: 198px; height: 22px">Username</td>
            <td style="height: 22px">
                <asp:TextBox ID="username" class="form-control" runat="server"></asp:TextBox>
            </td>
            <td style="height: 22px"></td>
        </tr>
        <tr>
            <td style="width: 198px">Password</td>
            <td>
                <asp:TextBox ID="password" class="form-control" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 198px; height: 77px"></td>
            <td style="height: 77px">
                <asp:Button ID="LOGIN" runat="server" Height="39px" OnClick="Button1_Click" class="btn btn-primary" Text="ADMIN LOGIN" Width="200px" />
            </td>
            <td style="height: 77px"></td>
        </tr>
    </table>
  
</asp:Content>
