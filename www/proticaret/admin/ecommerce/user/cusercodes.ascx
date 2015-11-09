<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.CUserCodes" CodeBehind="CUserCodes.ascx.vb" %>
<div class="pageUserCodes">
	<asp:Label ID="msg" runat="server" Visible="False"></asp:Label>
	<asp:Label ID="lbl" runat="server"></asp:Label>
	
	<div class="dataFilter boxToggle">
		<div class="toggleTitle toggleMini">
			<div class="titleTab">
				<ul class="tabMenu">
					<li><a href="#"><%=GetGlobalResourceObject("admin", "Filter")%></a></li> 
				</ul>
			</div>
			<div class="titleToggle"></div>
		</div>
		<div class="toggleContent">
			<div class="tabContent">
				<div class="tab">
					<div class="colGroup">
						<div class="col">
							<label><%=GetGlobalResourceObject("admin", "CustomCodeName")%>: </label>
							<asp:DropDownList ID="ddlCity" runat="server" AutoPostBack="True">
								<asp:ListItem Text="<%$ Resources:admin,Code1 %>" Value="Kod1"></asp:ListItem>
								<asp:ListItem Text="<%$ Resources:admin,Code2 %>" Value="Kod2"></asp:ListItem>
								<asp:ListItem Text="<%$ Resources:admin,Code3 %>" Value="Kod3"></asp:ListItem>
							</asp:DropDownList>
						</div>
					</div>
				</div>
				<div class="tab">Raporlar</div>
			</div>
		</div>
	</div>
	
	<div class="buttonGroup">
		<asp:HyperLink ID="lnkAddNew" runat="server" data-width="300" data-height="150" CssClass="btnDefault fancyContent"><i class="fa fa-plus"></i> <%= GetGlobalResourceObject("admin","AddNew") %></asp:HyperLink>
	</div>
	
	<div class="dataTable">
	<asp:DataGrid ID="Datagrid1" runat="server" GridLines="None" PageSize="20" AutoGenerateColumns="False" HeaderStyle-CssClass="title">
		<Columns>
		<asp:BoundColumn DataField="CodeId" Visible="False" HeaderText="ID"></asp:BoundColumn>
		<asp:BoundColumn DataField="CodeName" HeaderText="<%$ Resources:admin,CodeName %>"></asp:BoundColumn>
		<asp:TemplateColumn HeaderText="<%$ Resources:admin,Edit %>" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
			<ItemTemplate>
				<asp:HyperLink ID="HyperLink1" runat="Server" data-width="300" data-height="150" CssClass="btnIcon fancyContent" NavigateUrl='<%# "/admin/ecommerce/user/EditUserCode.aspx?IND=" & DataBinder.Eval(Container.DataItem, "CodeId") & "&CID=" & CID%> '><i class="fa fa-pencil"></i></asp:HyperLink>
			</ItemTemplate>
		</asp:TemplateColumn>
		<asp:TemplateColumn HeaderText="<%$ Resources:admin,Delete %>" HeaderStyle-Width="100px" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
			<ItemTemplate>
				<asp:LinkButton ID="lnkbtnDelete" runat="server" CausesValidation="false" CommandName="Delete" CssClass="btnIcon"><i class="fa fa-trash-o"></i></asp:LinkButton>
			</ItemTemplate>
		</asp:TemplateColumn>
		</Columns>
	</asp:DataGrid>
	</div>

</div>
