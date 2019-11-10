


<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RegisterOwner.aspx.cs" Inherits="RBAC_model.RegisterOwner" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   
    <h3 style="margin-left: 120px">CREATE NEW DATA OWNER </h3>
    <p>
        <asp:Label ID="show" runat="server" ForeColor="Red"></asp:Label>
    </p>
    <table class="table table-striped" >
        <tr>
            <td style="width: 165px; height: 24px;">Name</td>
            <td style="height: 24px">
                <asp:TextBox ID="txtName" class="form-control"  runat="server" placeholder="Enter name"  Width="1259px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name cannot be blanked" ValidationGroup="Group1"  ControlToValidate="txtName" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 165px">Address</td>
            <td>
                <asp:TextBox ID="txtAddress" class="form-control" placeholder="Enter Address" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Address cannot be blanked" ValidationGroup="Group1"  ControlToValidate="txtAddress" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 165px">Mobile No</td>
            <td>
                <asp:TextBox ID="txtMobile" class="form-control" placeholder="Enter mobile No" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Mobile No cannot be blaned" ValidationGroup="Group1"  ControlToValidate="txtMobile" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid mobile No" ValidationGroup="Group1"  ControlToValidate="txtMobile" ForeColor="Red" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 165px">Email</td>
            <td>
                <asp:TextBox ID="txtEmail" class="form-control" placeholder="Enter Email"  runat="server" TextMode="Email"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Email cannot be blanked" ValidationGroup="Group1"  ControlToValidate="txtEmail" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Invalid Email" ValidationGroup="Group1"  ControlToValidate="txtEmail" ForeColor="Red"  ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 165px">Username</td>
            <td>
                <asp:TextBox ID="txtUsername" class="form-control" placeholder="Enter Username" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Username cannot be blanked" ValidationGroup="Group1"  ControlToValidate="txtUsername" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 165px">Password</td>
            <td>
                <asp:TextBox ID="txtPassword" class="form-control" Placeholder="Enter your password" runat="server" ValidationGroup="Group1"  ControlToValidate="txtPassword" ForeColor="Red" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Password cannot be blanked" ValidationGroup="Group1"  ControlToValidate="txtPassword" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Password should be min 8 chars" ValidationExpression = "^[\s\S]{8,}$" ValidationGroup="Group1"  ControlToValidate="txtPassword" ForeColor="Red"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 165px">Confirm password</td>
            <td>
                <asp:TextBox ID="px" class="form-control" Placeholder="Confirm your password" runat="server" TextMode="Password"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Password cannot be blanked" ValidationGroup="Group1"  ControlToValidate="px" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server"  ControlToCompare="txtPassword" ControlToValidate="px" ErrorMessage="Password and confirm password must be same" ValidationGroup="Group1"  ForeColor="Red"></asp:CompareValidator>
               
                <br />
            </td>
        </tr>
        
    </table>
    <p>
        <asp:Button ID="Button1" runat="server" class="btn btn-primary" OnClick="Button1_Click" Text="Register" Height="43px" Width="120px" ValidationGroup="Group1"   />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server"  class="btn btn-danger" Height="43px" Text="Back" Width="137px" OnClick="Button2_Click" />
    </p>
    <p>&nbsp;</p>
    
</asp:Content>
