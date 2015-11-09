<%@ Control Language="vb" Inherits="ASPNetPortal.contact" AutoEventWireup="false" Codebehind="contact.ascx.vb" EnableViewState="False" %>
<div id="contact" class="module">
	<% if HeaderVisible then %>
        <div class="moduleTitle">
            <%=ModuleTitle%>
            <% if IsEditable then %>
            <a href="<%=EditNavigateUrl %>" class="moduleTitleEdit"><%=EditText %></a>
            <% end if %>
        </div>
    <% end if %>
    <div class="moduleContent moduleContentCol1">
        <table cellpadding="4" cellspacing="0" border="0">
            <tr>
                <td><%=GetGlobalResourceObject("lang", "CompanyName")%></td>
                <td>:</td>
                <td><asp:Label ID="lblName" runat="server"></asp:Label></td>
            </tr>
            <tr>
                <td><%=GetGlobalResourceObject("lang", "PhoneNumber")%></td>
                <td>:</td>
                <td><asp:Label ID="lblPhone" runat="server"></asp:Label></td>
            </tr>
            <tr>
                <td><%=GetGlobalResourceObject("lang", "FaxNumber")%></td>
                <td>:</td>
                <td><asp:Label ID="lblFax" runat="server"></asp:Label></td>
            </tr>
            <tr>
                <td><%=GetGlobalResourceObject("lang", "CompanyEmail")%></td>
                <td>:</td>
                <td><asp:Label ID="lblEmail" runat="server"></asp:Label></td>
            </tr>
            <tr>
                <td><%=GetGlobalResourceObject("lang", "CompanyAddress")%></td>
                <td>:</td>
                <td><asp:Label ID="lblAddress" runat="server"></asp:Label></td>
            </tr>
        </table>
    </div>
</div>