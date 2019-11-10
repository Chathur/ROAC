

<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Userregister.aspx.cs" Inherits="RBAC_model.Userregister" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   
    <h3>USER REGISTRATION</h3>
    <p>&nbsp;</p>
    <table class="table table-striped" >
        <tr>
            <td style="width: 165px">Name</td>
            <td>
                <asp:TextBox ID="nameTxt" runat="server" class="form-control" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 165px">Address</td>
            <td>
                <asp:TextBox ID="addressTxt" runat="server" class="form-control" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 165px">Mobile No</td>
            <td>
                <asp:TextBox ID="mobileTxt" runat="server" class="form-control" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 165px">Email</td>
            <td>
                <asp:TextBox ID="emailTxt" runat="server" class="form-control" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 165px">Username</td>
            <td>
                <asp:TextBox ID="usernameTxt" runat="server" class="form-control"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 165px">Password</td>
            <td>
                <asp:TextBox ID="passwordTxt" runat="server" class="form-control" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 165px">Confirm password</td>
            <td>
                <asp:TextBox ID="TextBox7" runat="server" class="form-control"></asp:TextBox>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td style="width: 165px">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" class="btn btn-primary" Text="Register" />
            </td>
            <td style="font-size: 11pt">
                <asp:Button ID="Button2" runat="server" Text="Exit" OnClick="Button2_Click" class="btn btn-danger" Width="99px" />
            &nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" class="btn btn-success"  Text="SignIn" Width="94px" OnClick="Button3_Click" />
            </td>
        </tr>
        <tr>
            <td style="width: 165px">
                &nbsp;</td>
            <td style="font-size: 11pt">
                &nbsp;</td>
        </tr>
    </table>
    <p>&nbsp;</p>
    
</asp:Content>
