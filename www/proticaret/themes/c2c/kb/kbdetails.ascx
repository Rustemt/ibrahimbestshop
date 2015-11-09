<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.kbdetails" EnableViewState="False" Codebehind="kbdetails.ascx.vb" %>
<div id="kbdetails" class="module">
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
<asp:Repeater ID="rptItems" runat="server">
<HeaderTemplate><ul class="list"></HeaderTemplate>
<FooterTemplate></ul><div class="clear"></div></FooterTemplate>
<ItemTemplate>
<li>
<a href='<%# BaseUrl & Eval("Url").ToString.Replace("/kb/", UseV3SeoKbWord).Remove(Eval("Url").ToString.Replace("/kb/", UseV3SeoKbWord).Length - 1, 1) & ".aspx" & IIf(Request.QueryString("tabId") <> "", "?tabId=" & Request.QueryString("tabId"), "") %>'><%#Eval("ItemName")%></a>
</li>
</ItemTemplate>
</asp:Repeater>
<div>
<div style="text-align:right;" >Revizyon Tarihi : <span runat="server" id="lblDate"></span> </div>
<div id="HtmlHolder" runat="server"></div>
</div>


</div>
</div>