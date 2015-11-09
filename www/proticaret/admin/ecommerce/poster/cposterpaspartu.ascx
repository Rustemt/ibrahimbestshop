<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.cposterpaspartu" Codebehind="cposterpaspartu.ascx.vb" %>
<div class="pagePosterPaspartu">
	<asp:Label ID="msg" runat="server" Visible="False"></asp:Label>
	<asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>
	<asp:Label ID="lblSort" runat="server" Visible="False">Id DESC</asp:Label>
	
	<div class="buttonGroup">
		<asp:HyperLink ID="lnkAddNew" runat="server" CssClass="btnDefault fancyContent"><i class="fa fa-plus"></i> <%= GetGlobalResourceObject("admin","AddNew") %></asp:HyperLink>
	</div>
	
	<div class="dataTable">
		<asp:DataGrid ID="Datagrid1" runat="server" GridLines="None" PageSize="20" AllowSorting="true" AutoGenerateColumns="False" HeaderStyle-CssClass="title">
			<Columns>
				<asp:BoundColumn Visible="False" DataField="ID" HeaderText="IND"></asp:BoundColumn>
                <asp:TemplateColumn SortExpression="PaspartuCode" HeaderText="<%$ Resources:admin,ColorName %>">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink3" runat="Server" CssClass="btnLink fancyContent"  NavigateUrl='<%# "/admin/ecommerce/poster/editpaspartu.aspx?IND=" & DataBinder.Eval(Container.DataItem, "Id") & "&MID=" & 0 & ""%> '><%#Eval("PaspartuCode")%></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateColumn>
				<asp:TemplateColumn HeaderText="<%$ Resources:admin,Preview %>" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
					<ItemTemplate>
							<img  alt="" style='background-color:#<%#DataBinder.Eval(Container.DataItem,"PaspartuColor")%>;' src="/uploads/poster/paspartu/template.gif" width="24" height="24"  />
					</ItemTemplate>
				</asp:TemplateColumn>
			   <%--
			   <asp:BoundColumn SortExpression="PasspartuSize" DataField="PasspartuSize" HeaderText="Kalýnlýk"></asp:BoundColumn>
			   --%>
				<asp:TemplateColumn HeaderText="<%$ Resources:admin,FramePricecm %>" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
					<ItemTemplate>
						<%#DataBinder.Eval(Container.DataItem, "Price")%> TL                            
					</ItemTemplate>
				</asp:TemplateColumn>
				<%--
				<asp:BoundColumn DataField="PricePerCm" HeaderText="Fiyatý(cm)"></asp:BoundColumn>
				--%>
				  <asp:TemplateColumn HeaderStyle-Wrap="false" HeaderText="<%$ Resources:admin,StatusActiveOrPassive %>" SortExpression="IsActive" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                    <ItemTemplate>
                        <asp:Label ID="lblIsActive" runat="server" Text='<%#  IIf(DataBinder.Eval(Container.DataItem, "IsActive"), "Aktif", "Pasif") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateColumn>
				<asp:TemplateColumn HeaderText="<%$ Resources:admin,Edit %>" HeaderStyle-Width="100px" Visible="false">
					<ItemTemplate>
						<asp:HyperLink ID="HyperLink1" runat="Server" CssClass="btnDefault fancyContent" NavigateUrl='<%# "/admin/ecommerce/poster/editpaspartu.aspx?IND=" & DataBinder.Eval(Container.DataItem, "Id") & "&MID=" & 0 & ""%> '><i class="fa fa-pencil"></i> <%= GetGlobalResourceObject("admin","Edit") %></asp:HyperLink>
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