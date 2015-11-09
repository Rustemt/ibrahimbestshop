<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.paymentconfirm" Codebehind="paymentconfirm.ascx.vb" %>
<div id="paymentconfirm" class="module">
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

<div id="div_print">
<table cellspacing="0" cellpadding="3" border="0" width="100%">
	<tr>
		<td colspan="2">
		<div id="info" runat="server" class="information"><%=GetGlobalResourceObject("lang", "PaymentConfirmed")%></div>
		</td>
	</tr>
	<tr>
		<td style="width:50%" align="right"><%=GetGlobalResourceObject("lang", "PaymentNumber")%> :</td>
		<td><asp:Label ID="lblMsg" runat="server"></asp:Label></td>
	</tr>
	<tr>
		<td align="right"><%=GetGlobalResourceObject("lang", "NameAndSureName")%> :</td>
		<td><asp:Label ID="lblFullName" runat="server"></asp:Label></td>
	</tr>	 
	<tr>
		<td align="right"><%=GetGlobalResourceObject("lang", "BankName")%> :</td>
		<td><asp:label id="BankName" runat="server"></asp:label></td>
	</tr>
	<tr>
		<td align="right"><%=GetGlobalResourceObject("lang", "BankPayType")%> :</td>
		<td><asp:label id="BankPayType" runat="server"></asp:label></td>
	</tr>
	<tr>
		<td align="right"><%=GetGlobalResourceObject("lang", "Installment")%> :</td>
		<td><asp:label id="Taksit" runat="server"></asp:label></td>
	</tr>
 
	<tr>
		<td align="right"><%=GetGlobalResourceObject("lang", "TotalPrice")%> :</td>
		<td><asp:label id="BankaToplamTutar" runat="server"></asp:label></td>
	</tr>
	<tr>
		<td align="right"><%=GetGlobalResourceObject("lang", "PaymentDate")%> :</td>
		<td><asp:label id="PaymentDate" runat="server"></asp:label></td>
	</tr>
	<tr>
		<td align="right"><%=GetGlobalResourceObject("lang", "Note")%> :</td>
		<td><asp:label id="Note" runat="server"></asp:label></td>
	</tr>
</table>
</div>

<label style="text-align:right"><asp:HyperLink ID="HyperLink1" runat="server" CssClass="button"  NavigateUrl="javascript:void(printdiv('div_print'));" ><%=GetGlobalResourceObject("lang", "Print")%></asp:HyperLink></label>

</div>
</div>