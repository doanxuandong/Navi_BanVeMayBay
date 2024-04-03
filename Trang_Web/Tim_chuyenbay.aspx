<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Tim_chuyenbay.aspx.cs" Inherits="Trang_Web_Tim_chuyenbay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="0" cellspacing="0">
        <table align="center" cellpadding="0" cellspacing="0">
            <td width="1000px" align="left">
                
                <asp:Label ID="Label16" runat="server" Text="Label" ForeColor="#3333CC"></asp:Label>
                <asp:Label ID="Label17" runat="server" Text="Label" Visible="False" ForeColor="#3333CC"></asp:Label>
                
            </td>
            </table>
        </tr>
        <tr>
            <td width="1000px" align="center">
                <asp:DataList ID="DataList1" runat="server" CellPadding="4" 
                    onselectedindexchanged="DataList1_SelectedIndexChanged" 
                    RepeatDirection="Horizontal" Width="1000px" ForeColor="Black" 
                    onitemdatabound="DataList1_ItemDataBound" BackColor="White" 
                    BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
                    GridLines="Horizontal">
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton5" runat="server" CommandName="Select" 
                            Font-Overline="False" Text='<%# Eval("Thu") %>' style="font-weight: 700"></asp:LinkButton>
                        <br />
                        <asp:LinkButton ID="LinkButton4" runat="server" CommandName="Select" 
                            Font-Overline="False" Text='<%# Eval("Ngay") %>'></asp:LinkButton>
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                </asp:DataList>
            </td>
        </tr>
        <tr>
            <td width="1000px">
            </td>
        </tr>
        <tr>
            <td width="500px">
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:DataList ID="DataList2" runat="server" CellPadding="4" onitemcommand="DataList2_ItemCommand" 
                            onselectedindexchanged="DataList2_SelectedIndexChanged" Width="1000px" 
                            ForeColor="#333333" style="margin-top: 0px">
                            <AlternatingItemStyle BackColor="White" />
                            <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <ItemStyle BackColor="#EFF3FB" />
                            <ItemTemplate>
                                <table align="center" cellpadding="0" cellspacing="0" width="1000px">
                                    <tr>
                                        <td width="80px" align="left">
                                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/img/"+Eval("LOGO") %>' 
                                                Width="60px" Height="30px" />
                                        </td>
                                        <td width="80px" align="left">
                                            <asp:Label ID="Label12" runat="server" Text='<%# Eval("TENCHUYENBAY") %>' 
                                                style="font-weight: 700"></asp:Label>
                                        </td>
                                        <td width="150px" align="left">
                                            <asp:Label ID="Label13" runat="server" Text='<%# Eval("NGAYGIOBAY","{0:G}") %>' 
                                                style="font-weight: 700"></asp:Label>
                                        </td>
                                        <td width="100px" align="right">
                                            <asp:Label ID="Label18" runat="server" Text='<%# Eval("GIAVE","{0:#,##0 vnđ}") %>' 
                                                ForeColor="#FF3300" style="font-weight: 700"></asp:Label>
                                        </td>
                                        <td width="140px" align="center">
                                            <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Select" 
                                                Font-Overline="False" Font-Underline="False" Text="Xem Chi Tiết +" 
                                                style="font-style: italic; font-size: medium;"></asp:LinkButton>
                                    <br />
                                            <asp:LinkButton ID="LinkButton3" runat="server" CommandName="bo_chon" 
                                                Font-Overline="False" Visible="False" 
                                                style="font-style: italic; font-size: medium;">Xem Chi Tiết&nbsp; 
                                    -</asp:LinkButton>
                                        </td>
                                        <td style="width: 90px" width="100px" align="right">
                                            <asp:HyperLink ID="HyperLink1" runat="server" 
                                                NavigateUrl='<%# "~/Trang_Web/dat_ve.aspx?MACHUYENBAY="+Eval("MACHUYENBAY") %>' 
                                                Text="Tiếp Tục" style="font-weight: 700; font-size: small; color: #0066CC"></asp:HyperLink>
                                            &nbsp;&nbsp;&nbsp;&nbsp;
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" width="1000px">
                                            <asp:Label ID="Label14" runat="server" Text='<%# Eval("CHITIET") %>' 
                                                Visible="False"></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                            <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        </asp:DataList>
                    </ContentTemplate>
    </asp:UpdatePanel>
                <asp:Label ID="Label11" runat="server" Text="Label" Visible="False"></asp:Label>
                <asp:Label ID="Label15" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

