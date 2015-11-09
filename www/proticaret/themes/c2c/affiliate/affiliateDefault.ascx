<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.AffiliateDefault" Codebehind="AffiliateDefault.ascx.vb" %>

<div id="affiliatedefault" class="module">
	<% if HeaderVisible then %>
        <div class="moduleTitle">
            <%=ModuleTitle%>
            <% if IsEditable then %>
            <a href="<%=EditNavigateUrl %>" class="moduleTitleEdit"><%=EditText %></a>
            <% end if %>
        </div>
    <% end if %>
    <div class="moduleContent moduleContentCol1"> 
        <label><%=GetGlobalResourceObject("lang", "AffiliateMsg1")%></label>
        <asp:HyperLink ID="lnklogin" CssClass="button" runat="server" NavigateUrl="~/login.aspx?ReturnUrl=/affiliate/default.aspx"><%=GetGlobalResourceObject("lang", "LogIn")%></asp:HyperLink>
        <label><%=GetGlobalResourceObject("lang", "AffiliateMsg2")%></label>
        <asp:HyperLink ID="lnkRequest" CssClass="button" runat="server" NavigateUrl="~/affiliate/request.aspx?ReturnUrl=/affiliate/default.aspx"><%=GetGlobalResourceObject("lang", "RequestAffiliate1")%></asp:HyperLink>
    </div>
</div>
