<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.htmlSearch" Codebehind="htmlSearch.ascx.vb" EnableViewState="False" %>
<div id="htmlsearch" class="module">
<div id="module_content">
<% if HeaderVisible then %>
<div id="module_title"> <span> <span id="module_title_icon"></span> <%=ModuleTitle%>
<% if IsEditable then %>
<a href="<%=EditNavigateUrl %>" id="module_title_edit"><%=EditText %></a>
<% end if %>
</span> </div>
<% end if %>
<div>
<div id="alert" runat="server" class="alert"><%=GetGlobalResourceObject("lang", "SearchMsg1")%></div>
<label><asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
<asp:Button ID="btnSearch" runat="server" CausesValidation="False" Text="<%$ Resources:lang, Search%>" CssClass="button" /></label>
</div>
</div>
</div>