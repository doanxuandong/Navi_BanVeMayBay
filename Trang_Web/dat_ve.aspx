<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="dat_ve.aspx.cs" Inherits="Trang_Web_dat_ve" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    <style type="text/css">
        .style2
        {
            color: #00FF00;
            font-size: x-large;
        }
        .style3
        {
            color: #FF0000;
        }
        .style4
        {
            color: #FF0000;
            font-size: x-large;
        }
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0" 
        style="background-image: url('../img/Hinh/bautroi.jpg'); background-repeat: no-repeat">
        <tr>
            <td align="left" colspan="2" width="1000px">
                &nbsp;&nbsp;<asp:Label ID="Label11" runat="server" Text="Label" 
                    ForeColor="#0066CC" style="font-weight: 700"></asp:Label>
&nbsp;</td>
        </tr>
        <tr>
            <td align="center" colspan="2" width="c">
                <strong>
                <span class="style4">Thông tin người liên hệ</span><span class="style2">&nbsp;&nbsp;&nbsp;
                <br />
                </span>
                </strong>&nbsp;</td>
        </tr>
        <tr>
            <td align="left" width="300px">
                &nbsp;
                <asp:Label ID="Label1" runat="server" Text="Họ Tên :" ForeColor="#0033CC" 
                    style="text-align: center; font-weight: 700;"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td align="left" width="700px">
                <asp:TextBox ID="TextBox1" runat="server" Height="30px"></asp:TextBox>
                <asp:Label ID="Label5" runat="server" ForeColor="Red" Text="(*)" 
                    ToolTip="Vui lòng nhập họ tên" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="left" width="300px">
                &nbsp;
                <asp:Label ID="Label2" runat="server" Text="Ngày Sinh :" 
                    style="color: #0033CC; font-weight: 700;"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td align="left" width="700px">
                <asp:TextBox ID="TextBox2" runat="server" Height="30px"></asp:TextBox>
                <asp:Label ID="Label6" runat="server" ForeColor="Red" Text="(*)" 
                    ToolTip="Vui lòng nhập ngày sinh" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="left" width="300px">
                &nbsp;
                <asp:Label ID="Label3" runat="server" Text="Số Điện Thoại :" 
                    style="color: #0033CC; font-weight: 700;"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;</td>
            <td align="left" width="700px">
                <asp:TextBox ID="TextBox3" runat="server" Height="30px"></asp:TextBox>
                <asp:Label ID="Label7" runat="server" ForeColor="Red" Text="(*)" 
                    ToolTip="Vui lòng nhập số điện thoại" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="left" width="300px">
                &nbsp;
                <asp:Label ID="Label4" runat="server" Text="Địa Chỉ :" 
                    style="color: #0033CC; font-weight: 700;"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;</td>
            <td align="left" width="700px">
                <asp:TextBox ID="TextBox4" runat="server" Height="30px"></asp:TextBox>
                <asp:Label ID="Label8" runat="server" ForeColor="Red" Text="(*)" 
                    ToolTip="Vui lòng nhập địa chỉ" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td width="300px" align="left" valign="top">
                &nbsp;
                <asp:Label ID="Label10" runat="server" style="font-size: large; color: #0033CC; font-weight: 700;" 
                    Text="Hình Thức Thanh Toán :"></asp:Label>
            </td>
            <td width="700px" align="left">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                    RepeatDirection="Horizontal">
                    <asp:ListItem Selected="True" Value="Tiền Mặt">Tiền Mặt</asp:ListItem>
                    <asp:ListItem Value="Chuyển Khoản">Chuyển Khoản</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td width="c" align="center" colspan="2" class="style2">
                <strong><span class="style3">Danh sách người đi cùng</span></strong></td>
        </tr>
        <tr>
            <td width="c">
                &nbsp;</td>
            <td width="500px">
                &nbsp;</td>
        </tr>
        <tr>
            <td width="1000px" align="center" colspan="2">
                <asp:DataGrid ID="DataGrid1" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" ForeColor="#333333" GridLines="None" Width="1000px">
                    <AlternatingItemStyle BackColor="White" />
                    <Columns>
                        <asp:TemplateColumn HeaderText="STT">
                            <ItemTemplate>
                                <asp:Label ID="Label9" runat="server" Text='<%# Eval("STT") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn HeaderText="Họ Tên">
                            <ItemTemplate>
                                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn HeaderText="Ngày Sinh">
                            <ItemTemplate>
                                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn HeaderText="Số điện thoại">
                            <ItemTemplate>
                                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn HeaderText="Địa Chỉ">
                            <ItemTemplate>
                                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                    </Columns>
                    <EditItemStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <ItemStyle BackColor="#E3EAEB" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <SelectedItemStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                </asp:DataGrid>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                
                <asp:Label ID="Label12" runat="server" Text="Label" style="color: #FF0000" 
                    Visible="False"></asp:Label>
                
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Button ID="Button1" runat="server" Text="Đặt Vé" Height="38px" 
                    onclick="Button1_Click" Width="86px" Font-Bold="True" 
                    ForeColor="#3366FF" BackColor="Red" />
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

