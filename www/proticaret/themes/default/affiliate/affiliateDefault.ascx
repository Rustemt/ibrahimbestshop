<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.AffiliateDefault"
    Codebehind="AffiliateDefault.ascx.vb" %>
<div class="module" id="affiliatedefault">
<div id="module_content">
  <% if HeaderVisible then %>
  <div id="module_title"> <span> <span id="module_title_icon"></span> <%=ModuleTitle%>
    <% if IsEditable then %>
    <a href="<%=EditNavigateUrl %>" id="module_title_edit"><%=EditText %></a>
    <% end if %>
    </span> </div>
  <% end if %>
  <div>
    <label><%=GetGlobalResourceObject("lang", "AffiliateMsg1")%></label>
    <asp:HyperLink ID="lnklogin" CssClass="button" runat="server" NavigateUrl="~/login.aspx?ReturnUrl=/affiliate/default.aspx"><%=GetGlobalResourceObject("lang", "LogIn")%></asp:HyperLink>
    
    <label><%=GetGlobalResourceObject("lang", "AffiliateMsg2")%></label>
    <asp:HyperLink ID="lnkRequest" CssClass="button" runat="server" NavigateUrl="~/affiliate/request.aspx?ReturnUrl=/affiliate/default.aspx"><%=GetGlobalResourceObject("lang", "RequestAffiliate1")%></asp:HyperLink>
 </div>
    </div>
</div>
