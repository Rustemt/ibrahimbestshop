<%@ Control Language="vb" Inherits="ASPNetPortal.welcome" AutoEventWireup="false" Codebehind="welcome.ascx.vb" EnableViewState="False" %>
<div id="welcome" class="module">
<div id="module_content">
<% if HeaderVisible then %>
<div id="module_title"> <span> <span id="module_title_icon"></span> <%=ModuleTitle%>
<% if IsEditable then %>
<a href="<%=EditNavigateUrl %>" id="module_title_edit"><%=EditText %></a>
<% end if %>
</span> </div>
<% end if %>
<div runat="server" id="welcome_panel1">
<div id="info" runat="server" class="information"><%=GetGlobalResourceObject("lang", "WelcomeMsg1")%></div>
<label><%=GetGlobalResourceObject("lang", "Welcome2")%> <asp:Label ID="lblWCMsg0" runat="server"></asp:Label></label>
<label><%=GetGlobalResourceObject("lang", "WelcomeMsg2")%></label>
<label><%=GetGlobalResourceObject("lang", "WelcomeMsg3")%></label>
</div>
<div runat="server" id="welcome_panel2">
<label><asp:Label ID="lblWCMsg4" runat="server"><%=GetGlobalResourceObject("lang", "WelcomeMsg4")%></asp:Label></label>
<label><a href="/login.aspx"><%=GetGlobalResourceObject("lang", "WelcomeMsg5")%></a></label>
</div>
<div runat="server" id="welcome_panel3">
<label><%=GetGlobalResourceObject("lang", "WelcomeMsg6")%></label>
<label><asp:Label ID="lblb2bWCMsg0" runat="server"> </asp:Label></label>
<label><%=GetGlobalResourceObject("lang", "WelcomeMsg7")%></label>
<label><%=GetGlobalResourceObject("lang", "WelcomeMsg8")%></label>
</div>
</div>
</div>