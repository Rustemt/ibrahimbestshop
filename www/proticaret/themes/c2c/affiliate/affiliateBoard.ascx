<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.AffiliateBoard" Codebehind="AffiliateBoard.ascx.vb" %>
<div id="affiliateboard" class="module">
	<% if HeaderVisible then %>
        <div class="moduleTitle">
            <%=ModuleTitle%>
            <% if IsEditable then %>
            <a href="<%=EditNavigateUrl %>" class="moduleTitleEdit"><%=EditText %></a>
            <% end if %>
        </div>
    <% end if %>
    <div class="moduleContent moduleContentCol1"> 
        <table cellpadding="4" cellspacing="0" border="0">
            <tr>
                <td><%=GetGlobalResourceObject("lang", "AffiliateTotalEarn")%></td>
                <td>: <b><asp:Label ID="lblKazanc" runat="server"></asp:Label></b></td>
            </tr>
            <tr>
                <td><%=GetGlobalResourceObject("lang", "AffiliateTotalPayed")%></td>
                <td>: <b><asp:Label ID="lblOdeme" runat="server" ></asp:Label></b></td>
            </tr>
            <tr>
                <td><%=GetGlobalResourceObject("lang", "AffiliateTotalLeft")%></td>
                <td>: <b><asp:Label ID="lblKalan" runat="server" ></asp:Label></b></td>
            </tr>   
        </table>   
	</div>
</div>

