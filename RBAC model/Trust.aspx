
<%@ Page Title="Trust" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind ="Trust.aspx.cs" Inherits="RBAC_model.Trust" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h3>LOGIN [ROLE MANAGER]</h3>
    <p>&nbsp;</p>
    <table class="table table-striped">
        <tr>
            <td style="width: 140px">Username</td>
            <td>
                <asp:TextBox ID="usertext" class="form-control"  runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 140px">Password</td>
            <td>
                <asp:TextBox ID="passwordtxt" class="form-control"  runat="server"></asp:TextBox>
                <br />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 22px; width: 140px"></td>
            <td style="height: 22px">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" class="btn btn-primary"  Text="SignIn" Width="154px" />
            </td>
            <td style="height: 22px"></td>
        </tr>
    </table>
    
</asp:Content>
