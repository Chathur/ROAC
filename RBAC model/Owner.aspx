

<%@ Page Title="Owner" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"  CodeBehind="Owner.aspx.cs" Inherits="RBAC_model.Owner" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   
    <h3 style="margin-left: 120px">CLOUD STORAGE [OWNER]</h3>
    <p>
        <asp:Label ID="show" runat="server" ForeColor="#FF3300"></asp:Label>
    </p>
    <table class="table table-striped" >
        <tr>
            <td style="width: 176px">
                Username</td>
            <td style="width: 1180px">
                <asp:TextBox ID="userText" class="form-control" placeholder="Enter Username" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Username cannot be blanked" ValidationGroup="Group1"  ControlToValidate="userText" ForeColor="Red" ></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 176px; height: 65px;">
                Password</td>
            <td style="height: 65px; width: 1180px">
                <asp:TextBox ID="passTxt" class="form-control" placeholder="Enter Password"  runat="server" OnTextChanged="passTxt_TextChanged" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password cannot be blanked"  ValidationGroup="Group1" ControlToValidate="passTxt" ForeColor="Red" ></asp:RequiredFieldValidator>
            
            </td>
            <td style="height: 65px"></td>
        </tr>
        <tr>
            <td style="width: 176px">
                <asp:Button ID="Button2" runat="server" Text="Create new Owner" class="btn btn-primary"  OnClick="Button2_Click" />
            </td>
            <td style="width: 1180px">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click"  class="btn btn-primary"  ValidationGroup="Group1"  Text="SignIn" Width="161px" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    
</asp:Content>
