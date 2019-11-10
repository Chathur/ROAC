


<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Roleregister.aspx.cs" Inherits="RBAC_model.Roleregister"  %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   
    <h3>REGISTER ROLE MANAGER</h3>
    <br />
    <div class="row">

        <table class="table table-striped">
            <tr>
                <td class="modal-sm" style="width: 227px">Name</td>
                <td>
                    <asp:TextBox ID="name" class="form-control"  runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 227px">Username</td>
                <td>
                    <asp:TextBox ID="user"  class="form-control" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 227px">Passowrd</td>
                <td>
                    <asp:TextBox ID="password" class="form-control" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 227px">
                    <asp:Button ID="Button1" class="btn btn-primary"  runat="server" Text="Register" OnClick="Button1_Click" Width="147px" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>

    </div>
    
</asp:Content>
