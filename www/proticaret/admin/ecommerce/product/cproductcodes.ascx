<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.CProductCodes" CodeBehind="CProductCodes.ascx.vb" %>
<div class="pageProductCodes">
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
							<label><%=GetGlobalResourceObject("admin", "AreaName")%> :</label>
							<asp:DropDownList ID="ddlCity" runat="server" AutoPostBack="True">
							<asp:ListItem Text="<%$ Resources:admin,Code1 %>" Value="Kod1"></asp:ListItem>
							<asp:ListItem Text="<%$ Resources:admin,Code2 %>" Value="Kod2"></asp:ListItem>
							<asp:ListItem Text="<%$ Resources:admin,Code3 %>" Value="Kod3"></asp:ListItem>
							<asp:ListItem Text="<%$ Resources:admin,Code4 %>" Value="Kod4"></asp:ListItem>
							<asp:ListItem Text="<%$ Resources:admin,Code5 %>" Value="Kod5"></asp:ListItem>
							<asp:ListItem Text="<%$ Resources:admin,Code6 %>" Value="Kod6"></asp:ListItem>
							<asp:ListItem Text="<%$ Resources:admin,Code7 %>" Value="Kod7"></asp:ListItem>
							<asp:ListItem Text="<%$ Resources:admin,Code8 %>" Value="Kod8"></asp:ListItem>
							<asp:ListItem Text="<%$ Resources:admin,Code9 %>" Value="Kod9"></asp:ListItem>
							<asp:ListItem Text="<%$ Resources:admin,Code10 %>" Value="Kod10"></asp:ListItem>
							<asp:ListItem Text="<%$ Resources:admin,Code11 %>" Value="Kod11"></asp:ListItem>
							<asp:ListItem Text="<%$ Resources:admin,Code12 %>" Value="Kod12"></asp:ListItem>
							<asp:ListItem Text="<%$ Resources:admin,Code13 %>" Value="Kod13"></asp:ListItem>
							<asp:ListItem Text="<%$ Resources:admin,Code14 %>" Value="Kod14"></asp:ListItem>
							<asp:ListItem Text="<%$ Resources:admin,Code15 %>" Value="Kod15"></asp:ListItem>
							</asp:DropDownList>
						</div>
					</div>
				</div>
				<div class="tab">Raporlar</div>
			</div>
		</div>
	</div>
    
    <div class="buttonGroup">
    	<asp:HyperLink ID="lnkAddNew" runat="server" CssClass="btnDefault fancyContent"><i class="fa fa-plus"></i> <%= GetGlobalResourceObject("admin","AddNew") %></asp:HyperLink>
    </div>
    
    <div class="dataTable">
        <asp:DataGrid ID="Datagrid1" runat="server" GridLines="None" PageSize="20" AutoGenerateColumns="False" HeaderStyle-CssClass="title" FooterStyle-HorizontalAlign="Center">
            <Columns>
                <asp:BoundColumn Visible="False" DataField="CodeId" HeaderText="ID"></asp:BoundColumn>
                <asp:BoundColumn DataField="CodeName" HeaderText="<%$ Resources:admin,CodeName %>"></asp:BoundColumn>
                <asp:TemplateColumn HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="<%$ Resources:admin,Edit %>">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="Server"  CssClass="btnIcon fancyContent" NavigateUrl='<%# "/admin/ecommerce/product/EditProductCode.aspx?IND=" & DataBinder.Eval(Container.DataItem, "CodeId") & "&CID=" & CID & "&MID=1" %> '><i class="fa fa-pencil"></i></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="<%$ Resources:admin,Delete %>">
                    <ItemTemplate>
                        <asp:LinkButton ID="lnkbtnDelete" runat="server" CausesValidation="false" CommandName="Delete" CssClass="btnIcon"><i class="fa fa-trash-o"></i></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateColumn>
            </Columns>
        </asp:DataGrid>
    </div>
</div>