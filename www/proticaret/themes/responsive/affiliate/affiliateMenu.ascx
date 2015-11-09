<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.AffiliateMenu" Codebehind="AffiliateMenu.ascx.vb" %>
 
<div id="affiliatemenu" class="module" >
	<% if HeaderVisible then %>
        <div class="moduleTitle">
            <%=ModuleTitle%>
            <% if IsEditable then %>
            <a href="<%=EditNavigateUrl %>" class="moduleTitleEdit"><%=EditText %></a>
            <% end if %>
        </div>
    <% end if %>
    <div class="moduleContent moduleContentCol1"> 
      <ul>
          <li><asp:HyperLink ID="lnkOzet" runat="server" NavigateUrl="~/affiliate/default.aspx"><%=GetGlobalResourceObject("lang", "AffiliateBoard")%></asp:HyperLink></li>
          <li><asp:HyperLink ID="lnkOdeme" runat="server" NavigateUrl="~/affiliate/default.aspx?MnuID=1"><%=GetGlobalResourceObject("lang", "AffiliatePayments")%></asp:HyperLink></li>
          <li><asp:HyperLink ID="lnkkazanc" runat="server" NavigateUrl="~/affiliate/default.aspx?MnuID=2"><%=GetGlobalResourceObject("lang", "AffiliateEarns")%></asp:HyperLink></li>
      </ul>  
      <div class="title4"><%=GetGlobalResourceObject("lang", "AffiliateMenu2")%></div> 
      <ul>
          <li><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/affiliate/default.aspx?MnuID=3"><%=GetGlobalResourceObject("lang", "AffiliateBanners")%></asp:HyperLink></li>
          <li><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/affiliate/default.aspx?MnuID=4"><%=GetGlobalResourceObject("lang", "AffiliateTextLinks")%></asp:HyperLink></li>
          <li><asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/affiliate/default.aspx?MnuID=6"><%=GetGlobalResourceObject("lang", "AffiliateCustomLinks")%></asp:HyperLink></li> 
      </ul>  
  </div>
</div>