<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.AffiliateMenu" Codebehind="AffiliateMenu.ascx.vb" %>
 
<div class="module" id="affiliatemenu">
<div id="module_content">
  <% if HeaderVisible then %>
  <div id="module_title"> <span> <span id="module_title_icon"></span> <%=ModuleTitle%>
    <% if IsEditable then %>
    <a href="<%=EditNavigateUrl %>" id="module_title_edit"><%=EditText %></a>
    <% end if %>
    </span> </div>
  <% end if %>
  <div>  
  <ul>
  <li><asp:HyperLink ID="lnkOzet" runat="server" NavigateUrl="~/affiliate/default.aspx"><%=GetGlobalResourceObject("lang", "AffiliateBoard")%></asp:HyperLink></li>
  <li><asp:HyperLink ID="lnkOdeme" runat="server" NavigateUrl="~/affiliate/default.aspx?MnuID=1"><%=GetGlobalResourceObject("lang", "AffiliatePayments")%></asp:HyperLink></li>
  <li><asp:HyperLink ID="lnkkazanc" runat="server" NavigateUrl="~/affiliate/default.aspx?MnuID=2"><%=GetGlobalResourceObject("lang", "AffiliateEarns")%></asp:HyperLink></li>
  </ul>  
  <div id="module_title"> 
  <span><span id="module_title_icon"></span><%=GetGlobalResourceObject("lang", "AffiliateMenu2")%></span>
  </div> 
  <div>
  <ul>
  <li><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/affiliate/default.aspx?MnuID=3"><%=GetGlobalResourceObject("lang", "AffiliateBanners")%></asp:HyperLink></li>
  <li><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/affiliate/default.aspx?MnuID=4"><%=GetGlobalResourceObject("lang", "AffiliateTextLinks")%></asp:HyperLink></li>
  <li><asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/affiliate/default.aspx?MnuID=6"><%=GetGlobalResourceObject("lang", "AffiliateCustomLinks")%></asp:HyperLink></li>
  <li><asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/affiliate/default.aspx?MnuID=8"><%=GetGlobalResourceObject("lang", "AffiliateInviteFriends")%></asp:HyperLink></li>
  </ul>  
  </div>
  </div>
</div>
</div>