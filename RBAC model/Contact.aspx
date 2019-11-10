<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="RBAC_model.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   
    <h3>ENDUSER</h3>
    <p>&nbsp;</p>
    <table class="table table-striped"  >
        <tr>
            <td style="width: 232px; height: 22px">Username</td>
            <td style="height: 22px">
                <asp:TextBox ID="usertxt" class="form-control" runat="server"></asp:TextBox>
            </td>
            <td style="height: 22px"></td>
        </tr>
        <tr>
            <td style="width: 232px">Password</td>
            <td>
                <asp:TextBox ID="password" class="form-control" runat="server"></asp:TextBox>
                
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 232px">
                
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Signup as a new User" class="btn btn-primary"  Width="187px" />
              
            </td>
            <td>
               
                <asp:Button ID="Button2" runat="server" Text="SignIn" class="btn btn-success"  OnClick="Button2_Click" Width="106px" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
