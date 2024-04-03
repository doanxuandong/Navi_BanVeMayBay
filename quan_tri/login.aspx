<%@ Page Title="" Language="C#" MasterPageFile="~/quan_tri/Master.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="quan_tri_login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 1000px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="0" cellspacing="0" class="style1">
        <tr>
            <td align="right" width="500px">
                <asp:Label ID="Label1" runat="server" Text="User:"></asp:Label>
&nbsp;&nbsp;
            </td>
            <td width="500px">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Bạn chưa nhập nội dung" 
                    ForeColor="Red" ToolTip="Bạn chưa nhập nội dung" ValidationGroup="a">(*)</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" width="500px">
                <asp:Label ID="Label2" runat="server" Text="Pass :"></asp:Label>
            </td>
            <td width="500px">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="Bạn chưa nhập password" 
                    ForeColor="Red" ToolTip="Bạn chưa nhập password" ValidationGroup="a">(*)</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2" style="width: 1000px" width="500px">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" colspan="2" style="width: 1000px" width="500px">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="Đăng Nhập" ValidationGroup="a" />
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2" style="width: 1000px" width="500px">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

