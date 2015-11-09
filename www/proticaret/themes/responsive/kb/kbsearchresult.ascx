<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.kbsearchresult" EnableViewState="False" Codebehind="kbsearchresult.ascx.vb"%>
<div id="kbsearchresult" class="module">
<div id="module_content">
<% if HeaderVisible then %>
<div id="module_title">
<span>
<span id="module_title_icon"></span>
<%=ModuleTitle%>
<% if IsEditable then %>
<a href="<%=EditNavigateUrl %>" id="module_title_edit"><%=EditText %></a>
<% end if %>
</span> 
</div>
<% end if %>
<div id="kb_results">
<div id="alert" visible="false" runat="server" class="alert"><%=GetGlobalResourceObject("lang", "KbSearchResultMsg")%></div>
<ul id="kb_result" class="kb_result" runat="server"></ul>
<div class="clear"></div>
</div>
</div>
</div>
