<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<%@ Register Assembly="AjaxControls" Namespace="AjaxControls" TagPrefix="asp" %>
<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.minicart" Codebehind="minicart.ascx.vb" %>
<div id="minicart" class="module">
<div id="module_content">
  <% if HeaderVisible then %>
  <div id="module_title"> <span> <span id="module_title_icon"></span> <%=ModuleTitle%>
    <% if IsEditable then %>
    <a href="<%=EditNavigateUrl %>" id="module_title_edit"><%=EditText %></a>
    <% end if %>
    </span> </div>
  <% end if %>
<div>
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
<ContentTemplate>
<asp:DataList ID="dlBasket" runat="server" Width="100%" EnableViewState="False">
<HeaderTemplate>
<table width="100%" cellpadding="2" border="0">
	<tr>
		<td><asp:Label ID="Label2" runat="server"><%=GetGlobalResourceObject("lang", "Product")%></asp:Label></td>
		<td align="right"><asp:Label ID="Label5" runat="server"><%=GetGlobalResourceObject("lang", "Quantity")%></asp:Label></td>
	</tr>
</table>
</HeaderTemplate>
<ItemTemplate>
<table width="100%" cellpadding="2">
	<tr>
		<td><asp:Label runat="server" ID="Label3"><%#DataBinder.Eval(Container.DataItem,"ProductName") %></asp:Label></td>
		<td align="right"><asp:Label runat="server" ID="Label4"><%#DataBinder.Eval(Container.DataItem,"Qty") %></asp:Label></td>
	</tr>
</table>
</ItemTemplate>
<SeparatorTemplate>
<hr />
</SeparatorTemplate>
</asp:DataList>
<div id="alert" visible="false" runat="server" class="alert">
 <%=GetGlobalResourceObject("lang", "CartMsg1")%>
</div>
<hr />
<label style="text-align:right;">
<%=GetGlobalResourceObject("lang", "TotalPrice")%> : 
<asp:Label ID="lblTotal" runat="server"></asp:Label>
</label>
<label><asp:HyperLink ID="lnkSepet" CssClass="cartbutton" runat="server"><%=GetGlobalResourceObject("lang", "GoToCart")%></asp:HyperLink></label>
</ContentTemplate>
</asp:UpdatePanel>
</div>
</div>
</div>