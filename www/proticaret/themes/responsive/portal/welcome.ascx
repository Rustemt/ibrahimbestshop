<%@ Control Language="vb" Inherits="ASPNetPortal.welcome" AutoEventWireup="false" Codebehind="welcome.ascx.vb" EnableViewState="False" %>
<div id="welcome" class="module">
<% If HeaderVisible Then%>
<div class="moduleTitle">
    <%=ModuleTitle%>
    <% If IsEditable Then%>
    <a href="<%=EditNavigateUrl %>" class="moduleTitleEdit"><%=EditText %></a>
    <% End If%>
</div>
<% End If%>
<div runat="server" id="welcome_panel1" class="moduleContent moduleContentCol1 clearFix">
<div id="info" runat="server" class="alert alert-info"><%=GetGlobalResourceObject("lang", "WelcomeMsg1")%></div>
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