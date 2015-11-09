<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.QuickOrder" EnableViewState="False" Codebehind="QuickOrder.ascx.vb" %>
<div id="QuickOrder" class="module">
<div id="module_content">
<% if HeaderVisible then %>
<div id="module_title"> <span> <span id="module_title_icon"></span> <%=ModuleTitle%>
<% if IsEditable then %>
<a href="<%=EditNavigateUrl %>" id="module_title_edit"><%=EditText %></a>
<% end if %>
</span> </div>
<% end if %>
<div>
<div id="alert" runat="server" class="alert">
<asp:Label ID="lblError" runat="server"></asp:Label>
</div>
<label>
<%=GetGlobalResourceObject("lang", "ProductCode")%> : 
<asp:TextBox name="txtSearch" ID="txtSearch" runat="server"></asp:TextBox></label>
<label><asp:LinkButton ID="btnAddToCart" CssClass="button" runat="server" CausesValidation="False" Text="<%$ Resources:lang, AddToCart%>"></asp:LinkButton></label>
</div>
</div>
</div>