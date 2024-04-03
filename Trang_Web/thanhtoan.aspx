<%@ Page Title="" Language="C#" MasterPageFile="~/thanh_toan.master" AutoEventWireup="true" CodeFile="thanhtoan.aspx.cs" Inherits="Trang_Web_thanhtoan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 1000px;
        }
        .style2
        {
            width: 1000px;
            height: 26px;
        }
        .style3
        {
            height: 27px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="0" cellspacing="0">
        <tr>
            <td>
                <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Vào Thanh Toán</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td>
                
                <asp:Panel ID="Panel1" runat="server" Visible="False">
                    <table align="center" cellpadding="0" cellspacing="0">
                        <tr>
                            <td align="center" colspan="2">
                                <asp:Label ID="Label5" runat="server" Text="Label" Visible="False"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" width="500px" class="style3">
                                <asp:Label ID="Label2" runat="server" Text="Tên Đăng Nhập" 
                                    style="font-family: 'Times New Roman', Times, serif"></asp:Label>
                            </td>
                            <td align="left" width="500px" class="style3">
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator" 
                                    ForeColor="#FF3300" ToolTip="Vui lòng nhập ntên đăng nhập" ValidationGroup="a">(*)</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" width="500px">
                                <asp:Label ID="Label3" runat="server" Text="Mật Khẩu" 
                                    style="font-family: 'Times New Roman', Times, serif"></asp:Label>
                            </td>
                            <td align="left" width="500px">
                                <asp:TextBox ID="TextBox2" runat="server" Height="22px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                    ControlToValidate="TextBox2" ErrorMessage="RequiredFieldValidator" 
                                    ForeColor="#FF3300" ToolTip="Vui lòng nhập mật khẩu" ValidationGroup="a">(*)</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" class="style2" colspan="2" width="500px">
                                <asp:Button ID="Button1" runat="server" Text="Đăng Nhập" 
                                    style="font-family: 'Times New Roman', Times, serif" 
                                    onclick="Button1_Click" ValidationGroup="a" />
                            </td>
                        </tr>
                        <tr>
                            <td width="500px">
                                &nbsp;</td>
                            <td width="500px">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="2" style="width: 1000px" width="500px">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2" style="width: 1000px" width="500px">
                                &nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
                
            </td>
        </tr>
        <tr>
            <td>
                <asp:Panel ID="Panel2" runat="server" Visible="False">
                    <asp:DataGrid ID="DataGrid1" runat="server" 
    AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" 
    GridLines="None">
                        <AlternatingItemStyle BackColor="White" />
                        <Columns>
                            <asp:TemplateColumn HeaderText="Tên Ngân Hàng">
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("TENNGANHANG") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateColumn>
                            <asp:TemplateColumn HeaderText="Mã Đặt Chỗ">
                                <ItemTemplate>
                                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                </ItemTemplate>
                            </asp:TemplateColumn>
                            <asp:TemplateColumn HeaderText="Đã Thanh Toán">
                                <ItemTemplate>
                                    <asp:CheckBox ID="CheckBox1" runat="server" />
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
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Lưu" />
                    <br />
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center">
    <asp:DataList ID="DataList1" runat="server">
        <ItemTemplate>
            <table cellpadding="0" cellspacing="0" class="style1">            
                <tr>
                    <td width="200px" align="center">

                    </td>
                </tr>
                <tr>
                    <td width="200px" align="center">
                        <asp:Image ID="Image1" runat="server" 
                            ImageUrl='<%# "~/img/logo/"+Eval("LOGO") %>' Height="80px" Width="60px" />
                    </td>
                    <td width="800px" align="left">
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("NOIDUNG") %>' 
                            style="font-family: 'Times New Roman', Times, serif; color: #3366CC"></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
            </td>
        </tr>
    </table>
</asp:Content>

