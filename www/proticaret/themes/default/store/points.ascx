<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.points" Codebehind="points.ascx.vb" %>
<div id="points" class="module">
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

<div>

<div id="alert" runat="server" class="alert">
<asp:Label ID="lblMsg" runat="server"></asp:Label>
</div>

<div id="infoNo" runat="server" class="information">
<%=GetGlobalResourceObject("lang", "PointsMsg2")%>
</div>
<div id="infoOk" runat="server" class="information">
<%=GetGlobalResourceObject("lang", "PointsMsg3")%>
</div>	

<table cellpadding="4" cellspacing="0" border="0">
<tr>
	<td><%=GetGlobalResourceObject("lang", "OrderPoints")%></td>
	<td>: <asp:Label ID="lblAlisverisPuan" runat="server"></asp:Label></td>
</tr>
<tr>
	<td><%=GetGlobalResourceObject("lang", "OtherPoints")%></td>
	<td>: <asp:Label ID="lblDigerPuan" runat="server"></asp:Label></td>
</tr>
<tr>
	<td><%=GetGlobalResourceObject("lang", "TotalPoints")%></td>
	<td>: <asp:Label ID="lblToplamPuan" runat="server"></asp:Label></td>
</tr>
<tr>
	<td><%=GetGlobalResourceObject("lang", "TotalPointsCost")%></td>
	<td>: <asp:Label ID="lblPuanPara" runat="server"></asp:Label></td>
</tr>

<tr>
	<td colspan="2"><asp:Button ID="btnOlustur" CssClass="button" runat="server" Text="<%$ Resources:lang, ConvertToCoupon%>" /></td>
</tr>
</table>
</div>
</div>
</div>