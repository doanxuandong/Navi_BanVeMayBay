<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="Lien_he.aspx.cs" Inherits="Trang_Web_Lien_he" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            height: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="0" cellspacing="0">
        <tr>
            <td align="center" colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
            <td width="200px">
                <asp:Label ID="Label2" runat="server" 
                    style="font-family: 'Times New Roman', Times, serif; font-weight: 700" 
                    Text="Nhập Mã đặt chỗ"></asp:Label>
            </td>
            <td width="200px">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="#FF3300" ToolTip="Vui lòng nhập mã đặt chỗ" ValidationGroup="a">(*)</asp:RequiredFieldValidator>
            </td>
            <td width="100px">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    style="font-family: 'Times New Roman', Times, serif" Text="Xem Code Vé" 
                    ValidationGroup="a" Width="80px" />
            </td>
        </tr>
        <tr>
            <td align="center" class="style1" colspan="3">
                <asp:Label ID="Label5" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="3">
                <asp:Panel ID="Panel1" runat="server">
                    <asp:Label ID="Label1" runat="server" 
                        style="font-family: 'Times New Roman', Times, serif; color: #0033CC; font-weight: 700" 
                        Text="THÔNG TIN CODE VÉ"></asp:Label>
                    <br />
                    <asp:DataGrid ID="DataGrid1" runat="server" 
    AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" 
    GridLines="None" Width="500px">
                        <AlternatingItemStyle BackColor="White" />
                        <Columns>
                            <asp:TemplateColumn HeaderText="STT">
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("STT") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateColumn>
                            <asp:TemplateColumn HeaderText="Code Vé">
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("MA_CODEVE") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateColumn>
                        </Columns>
                        <EditItemStyle BackColor="#7C6F57" />
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" 
        ForeColor="White" />
                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" 
        ForeColor="White" />
                        <ItemStyle BackColor="#E3EAEB" />
                        <PagerStyle BackColor="#666666" ForeColor="White" 
        HorizontalAlign="Center" />
                        <SelectedItemStyle BackColor="#C5BBAF" Font-Bold="True" 
        ForeColor="#333333" />
                    </asp:DataGrid>
                </asp:Panel>
            </td>
        </tr>
    </table>
</asp:Content>

