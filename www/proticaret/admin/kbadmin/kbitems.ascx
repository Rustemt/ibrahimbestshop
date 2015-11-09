<%@ Control Language="vb" AutoEventWireup="false" Inherits="kbitems" Codebehind="kbitems.ascx.vb" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Register TagPrefix="obout" Namespace="OboutInc.Postback4" Assembly="obout_Postback4" %>
<%@ Import Namespace="obout_ASPTreeView_2_NET" %>

<obout:Postback4 runat="server" ID="Postback41" />
<link rel="stylesheet" href="/admin/assets/images/tree/obout_treeview2.css" />

<div class="pageKbitems">
	<div class="buttonGroup">
		<asp:HyperLink ID="lnkAddNew" runat="server" CssClass="btnDefault fancyContent"><i class="fa fa-plus"></i> <%= GetGlobalResourceObject("admin","AddCategory") %></asp:HyperLink>
	</div>
	<div class="alert alert-info"><%= GetGlobalResourceObject("admin","KBMsg1") %></div>
	 <asp:label id="lblmsg" runat="server"></asp:label> 
	<div class="dataForm">
		<div class="row">
			<div class="col1-1"><asp:literal id="Tree2" runat="server" EnableViewState="False"></asp:literal></div>
			<div class="col1-3">
				<%= GetGlobalResourceObject("admin","SelectArticle") %> :
				<asp:Label ID="lblSelectedCategory" runat="server"></asp:Label>
				<div class="buttonGroup">
					<asp:HyperLink ID="lnkAddSub" runat="server" CssClass="btnDefault fancyContent"><i class="fa fa-plus"></i> <%= GetGlobalResourceObject("admin","AddArticle") %></asp:HyperLink>
					<asp:HyperLink ID="lnkUpdate" runat="server" CssClass="btnDefault fancyContent"><i class="fa fa-pencil"></i> <%=GetGlobalResourceObject("admin","Edit") %></asp:HyperLink>
					<asp:LinkButton ID="lnkDelete" runat="server" CausesValidation="False" CssClass="btnDefault"><i class="fa fa-trash-o"></i> <%=GetGlobalResourceObject("admin","Delete") %></asp:LinkButton>
				</div>
			</div>
		</div>
	</div>
</div> 