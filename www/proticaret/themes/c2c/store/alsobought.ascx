<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.alsobought" EnableViewState="False" Codebehind="alsobought.ascx.vb" %>
<%--<%@ OutputCache Duration="1000" VaryByParam="*" %>--%>
<div id="alsobougth" class="module">
<% if HeaderVisible then %>
        <div class="moduleTitle">
            <%=ModuleTitle%>
            <% if IsEditable then %>
            <a href="<%=EditNavigateUrl %>" class="moduleTitleEdit"><%=EditText %></a>
            <% end if %>
        </div>
    <% end if %>
    <div class="moduleContent moduleContentCol1">
        <asp:Repeater ID="rptAlsoBought" runat="server">
        <HeaderTemplate><ul class="thumb-list"></HeaderTemplate>
        <FooterTemplate></ul></FooterTemplate>
        <ItemTemplate>
        <li>
            <span class="thumb"><a href='<%# string.format(BaseUrl & "{0}" & ".aspx",container.dataitem("ProductUrl").tostring.Remove(container.dataitem("ProductUrl").tostring.Length - 1, 1)) %>'>
            <img alt="" src='<%# BaseUrl & "/store/makethumb.aspx?file=" + container.dataitem("Path") & "&intSize=50" %>' /></a></span>
            <a href='<%# string.format(BaseUrl & "{0}" & ".aspx",container.dataitem("ProductUrl").tostring.Remove(container.dataitem("ProductUrl").tostring.Length - 1, 1)) %>'><%# container.dataitem("ProductName") %></a>
        </li>
        <div class="clear"></div>
        </ItemTemplate>
        </asp:Repeater>
	</div>
</div>