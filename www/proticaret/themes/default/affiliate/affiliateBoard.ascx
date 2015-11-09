<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.AffiliateBoard" Codebehind="AffiliateBoard.ascx.vb" %>
<div id="affiliateboard" class="module">
<div id="module_content">
  <% if HeaderVisible then %>
  <div id="module_title"> <span> <span id="module_title_icon"></span> <%=ModuleTitle%>
    <% if IsEditable then %>
    <a href="<%=EditNavigateUrl %>" id="module_title_edit"><%=EditText %></a>
    <% end if %>
    </span> </div>
  <% end if %>
    <div>  
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
</div>

