<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="khuyen_mai.aspx.cs" Inherits="Trang_Web_khuyen_mai" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" Width="1000px">
        <ItemTemplate>
            <table align="center" cellpadding="0" cellspacing="0">
                <tr>
                    <td width="100px" align="center" rowspan="3" valign="top" height="100px">
                        <asp:HyperLink ID="HyperLink1" runat="server" 
                            ImageUrl='<%# "~/img/Hinh/"+Eval("HINH") %>'>HyperLink</asp:HyperLink>
                    </td>
                    <td width="900px">
                        <asp:HyperLink ID="HyperLink2" runat="server" Text='<%# Eval("TOMTAT") %>'></asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td  width="900px">
                        <asp:Label ID="Label1" runat="server" 
                            Text='<%# Eval("NGAYDANGTIN","{0:dd/MM/yyyy}") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td width="900px">
                        <asp:HyperLink ID="HyperLink3" runat="server" 
                            NavigateUrl='<%# "~/Trang_Web/noidung_tintuc.aspx?MAKM="+Eval("MAKM") %>'>Chi tiet</asp:HyperLink>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>

