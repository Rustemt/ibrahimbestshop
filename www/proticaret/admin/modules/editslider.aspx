<%@ Page Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.editslider" Codebehind="editslider.aspx.vb" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
<title>Slayt Düzenle</title>
    <link rel="stylesheet" type="text/css" href="/admin/assets/css/font-awesome.css" />
</head>
<body>
<form id="Form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText">Slayt Düzenle</div>
		</div>
		<div class="toggleContent">
			<asp:Label ID="lblErr" runat="server" Visible="False"></asp:Label>
			<div class="buttonGroup">
				<asp:HyperLink ID="lnkAddNew" runat="server" CssClass="btnDefault"><i class="fa fa-plus"></i> <%= GetGlobalResourceObject("admin","AddNew") %></asp:HyperLink>
			</div>
			<div class="dataTable">
				<asp:DataGrid ID="Datagrid1" runat="server" GridLines="None" HeaderStyle-CssClass="title" AutoGenerateColumns="false">
					<Columns>
					<asp:BoundColumn DataField="SlideId" HeaderText="ID"></asp:BoundColumn>
					<asp:BoundColumn DataField="SlideTitle" HeaderText="Baþlýk"></asp:BoundColumn>
					<asp:TemplateColumn HeaderText="Resim">
						<ItemTemplate>
							<img height="35" alt="" src='<%# DataBinder.Eval(Container.DataItem, "SlideImage") %>' />
						</ItemTemplate>
					</asp:TemplateColumn>
					<asp:BoundColumn DataField="SlideUrl" HeaderText="Link"></asp:BoundColumn>
					<asp:TemplateColumn HeaderText="Düzenle" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" >
						<ItemTemplate>
							<asp:HyperLink CssClass="btnIcon" ID="HyperLink1" runat="Server" NavigateUrl='<%# "Javascript:var PopUpWin = window.open(""editslideritem.aspx?IND=" & DataBinder.Eval(Container.DataItem,"SlideId") & "&MID=" & 0 & ""","""",""width=650,height=500,scrollbars=1,toolbar=0,status=1,resizable=1"")" %> '><i class="fa fa-pencil"></i></asp:HyperLink>
						</ItemTemplate>
					</asp:TemplateColumn>
					<asp:TemplateColumn HeaderText="Sil" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" >
						<ItemTemplate>
							<asp:LinkButton ID="lnkbtnDelete" runat="server" CausesValidation="false" CommandName="Delete" CssClass="btnIcon"><i class="fa fa-trash"></i></asp:LinkButton>
						</ItemTemplate>
					</asp:TemplateColumn>
					</Columns>
				</asp:DataGrid>
			</div>
			<div class="buttonGroup">
				<p><label><asp:checkbox id="chkOnlyMainPage" runat="server" CssClass="fLeft"/> Sadece anasayfada göster</label></p>
				<asp:LinkButton ID="updateButton" runat="server" CssClass="btnDefault"><i class="fa fa-save"></i>Kaydet</asp:LinkButton>
				<asp:Button ID="btnCancel" runat="server" CssClass="btnDefault" CausesValidation="False" Text="Kapat" />    
			</div>
		</div>
	</div>
</div>
</form>
</body>
</html>