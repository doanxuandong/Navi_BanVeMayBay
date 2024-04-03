<%@ Control Language="C#" AutoEventWireup="true" CodeFile="menu_quantri.ascx.cs" Inherits="user_Control_menu_quantri" %>
<link rel="stylesheet" href="/NaVi/css/style.css" type="text/css" />
            <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js" type="text/javascript" charset="utf-8"></script>	
            <script src="http://jquery-ui.googlecode.com/svn/tags/latest/ui/jquery.effects.core.js" type="text/javascript"></script>
            <script type="text/javascript" src="/NaVi/js/scripts.js"></script>
 <ul id="nav" style="background-color: #FF0000">
    <asp:DataList ID="DataList1" runat="server" BorderStyle="None" Height="20px" 
    RepeatColumns="5" RepeatDirection="Horizontal">
        <ItemTemplate>
        <li>
            <asp:HyperLink ID="HyperLink1" runat="server" BackColor="Red" 
                NavigateUrl='<%# "~/quan_tri/"+Eval("link") %>' 
                Text='<%# Eval("tieude1") %>'></asp:HyperLink>
        </li>
        
     </ItemTemplate>
    </asp:DataList>
</ul>
