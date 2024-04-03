<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Tim_chuyen_bay.ascx.cs" Inherits="user_Control_Tim_chuyen_bay" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>




<table cellpadding="0" cellspacing="0" width="500px" 
    
    style="background-image: url('../img/Hinh/DANGKYVE_MAYBAY.jpg'); ">
    <tr>
        <td  style="background-image: url('../img/DANGKYVE_MAYBAY.jpg'); background-repeat: no-repeat;" 
            valign="top"  height="429px">




            <table align="center" cellpadding="0" cellspacing="1" width="500px" 
                style="height: 500px">
                <tr>
                    <td height="114px" width="500px">

                        <ajaxToolkit:ToolkitScriptManager runat="Server" EnableScriptGlobalization="true"
        EnableScriptLocalization="true" ID="ToolkitScriptManager1" />
                    </td>
                </tr>
                <tr>
                    <td height="32px" width="500px">
                        <table align="center" cellpadding="0" cellspacing="0" width="500px">
                            <tr>
                                <td height="32px" width="35px" align="right">
                                    &nbsp;</td>
                                <td align="right" height="32px" width="170px">
                                    <asp:DropDownList ID="DropDownList1" runat="server" Height="32px" Width="170px" 
                                        BackColor="Transparent" Font-Overline="False" Font-Underline="False">
                                    </asp:DropDownList>
                                </td>
                                <td height="32px" width="50px">
                                    <asp:Label ID="Label1" runat="server" ForeColor="Yellow" Text="(!)" 
                                        ToolTip="Vui lòng chọn điểm đi" Visible="False"></asp:Label>
                                </td>
                                <td align="left" height="32px" width="170px">
                                    <asp:DropDownList ID="DropDownList2" runat="server" Height="32px" Width="170px" 
                                        BackColor="Transparent">
                                    </asp:DropDownList>
                                </td>
                                <td height="32px" width="76px">
                                    <asp:Label ID="Label2" runat="server" ForeColor="Yellow" Text="(!)" 
                                        ToolTip="Vui lòng chọn điểm đến" Visible="False"></asp:Label>
                                    <asp:Label ID="Label4" runat="server" ForeColor="Yellow" Text="(!)" 
                                        ToolTip="Điểm đến không được trùng với điểm đi" Visible="False"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td height="39px" width="445px">
                        <br />
                    </td>
                </tr>
                <tr>
                    <td height="32px" width="500px">
                        <table align="center" cellpadding="0" cellspacing="0" width="500px">
                            <tr>
                                <td height="32px" width="35px" align="right">
                                    <asp:Label ID="Label5" runat="server" ForeColor="Yellow" Text="(!)" 
                                        ToolTip="Ngày đi phải bằng hoặc sau ngày hiện tại" Visible="False"></asp:Label>
                                </td>
                                <td align="right" height="32px" width="170px">
                                    <asp:TextBox ID="TextBox1" runat="server" Height="32px" Width="169px" 
                                        BorderStyle="None" BackColor="Transparent"></asp:TextBox>
        <ajaxToolkit:CalendarExtender ID="CalendarExtender2" runat="server" TargetControlID="TextBox1" 
                                             PopupButtonID="Image1" Format="dd/MM/yyyy" />
                                </td>
                                <td align="center" height="32px" width="50px" valign="top">
                                    <asp:Label ID="Label3" runat="server" ForeColor="Yellow" Text="(!)" 
                                        ToolTip="Vui lòng chọn ngày đi" Visible="False"></asp:Label>
        <asp:ImageButton runat="Server" ID="Image1" ImageUrl="~/img/Calendar_scheduleHS.png" 
                                        AlternateText="Click to show calendar" Width="30px" Height="28px"/>
                                    </td>
                                <td align="right" height="32px" width="170px">
                                    <asp:TextBox ID="TextBox2" runat="server" Height="32px" Width="170px" 
                                        BorderStyle="None" BackColor="Transparent"></asp:TextBox>
        <ajaxToolkit:CalendarExtender ID="CalendarExtender3" runat="server" TargetControlID="TextBox2" 
                                         PopupButtonID="ImageButton1" Format="dd/MM/yyyy" />
                                </td>
                                <td align="center" height="32px" width="76px" valign="top">
        <asp:ImageButton runat="Server" ID="ImageButton1" ImageUrl="~/img/Calendar_scheduleHS.png" 
                                        AlternateText="Click to show calendar" Width="30px" Height="28px" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td height="86px" width="500px">
                                    &nbsp;</td>
                </tr>
                <tr>
                    <td width="445px" height="32px">
                        <table align="center" cellpadding="0" cellspacing="0" width="500px">
                            <tr>
                                <td align="left" height="32px" width="37px" >
                                    &nbsp;</td>
                                <td align="left" height="32px" width="85px">
                                    <asp:DropDownList ID="DropDownList3" runat="server" BackColor="Transparent" 
                                        Height="32px" Width="85px">
                                    </asp:DropDownList>
                                    </td>
                                <td height="32px" width="83px">
                                    &nbsp;</td>
                                <td align="left" height="32px" width="86px">
                                    <asp:DropDownList ID="DropDownList4" runat="server" BackColor="Transparent" 
                                        Height="32px" Width="86px">
                                    </asp:DropDownList>
                                </td>
                                <td height="32px" width="66px" align="left">
                                    &nbsp;</td>
                                <td align="left" height="32px" width="85px">
                                    <asp:DropDownList ID="DropDownList5" runat="server" BackColor="Transparent" 
                                        Height="32px" Width="85px">
                                    </asp:DropDownList>
                                    </td>
                                <td height="32px" width="52px">
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td height="73px" width="445px">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
&nbsp;<br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td height="47px" width="500px">
                        <table align="center" cellpadding="0" cellspacing="0">
                            <tr>
                                <td height="47px" width="180px" align="center">
                                    <asp:LinkButton ID="LinkButton1" runat="server" style="color: #FFFFFF">Hướng dẫn đặt vé</asp:LinkButton>
                                </td>
                                <td align="right" height="47px" width="272px">
                                    <asp:Button ID="Buttom1" runat="server" BackColor="Transparent" Height="47px" 
                                        Width="272px" onclick="Button1_Click" />
                                </td>
                                <td height="47px" width="48px">
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </td>
                </tr>
                
                <tr>
                    <td height="30px" width="500px">
                        &nbsp;</td>
                </tr>
                
            </table>

        </td>
    </tr>
</table>






        


