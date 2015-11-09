<%@ Control Language="vb" Inherits="ASPNetPortal.chat" AutoEventWireup="false" Codebehind="chat.ascx.vb" %>
<div id="chat">
<% if HeaderVisible then %>
<div class="moduleTitle"><%=ModuleTitle%></div>
<% if IsEditable then %>
<a href="<%=EditNavigateUrl %>" id="module_title_edit"><%=EditText %></a>
<% end if %>
<% end if %>
<a href="javascript://" onclick="openChat();"><img src="/services/ProcessChatImage.ashx" border="0" alt=""  /></a>
</div>