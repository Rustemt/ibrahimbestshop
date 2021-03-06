<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.cCountrys" CodeBehind="cCountrys.ascx.vb" %>
<div class="pageCountryList">
    <asp:Label ID="lblSort" runat="server" Visible="False"></asp:Label>
    <asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>
	
    <div class="buttonGroup">
        <asp:HyperLink ID="lnkAddNew" runat="server" CssClass="btnDefault fancyContent"><i class="fa fa-plus"></i> <%= GetGlobalResourceObject("admin","AddNew") %></asp:HyperLink>
    </div>
	
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
						<div class="col col2">
							<label><%=GetGlobalResourceObject("admin", "CountryName")%></label>
							<asp:TextBox ID="txtCountryName" runat="server"></asp:TextBox>
							<asp:DropDownList ID="ddlCountry" runat="server">
								<asp:ListItem Text="<%$ Resources:admin,Contains %>" Value="like '%[]%'"></asp:ListItem>
								<asp:ListItem Text="<%$ Resources:admin,Starts %>" Value="like '[]%'"></asp:ListItem>
								<asp:ListItem Text="<%$ Resources:admin,Ends %>" Value="like '%[]'"></asp:ListItem>
								<asp:ListItem Text="<%$ Resources:admin,Equalss %>" Value="='[]'"></asp:ListItem>
							</asp:DropDownList>
						</div>
						<div class="col">
							<label>&nbsp;</label>
							<asp:LinkButton ID="btnSearch" runat="server"  CssClass="btnDefault" OnClick="btnSearch_Click"><i class="fa fa-search"></i> <%= GetGlobalResourceObject("admin","Search") %></asp:LinkButton>
						</div>
					</div>
				</div>
				<div class="tab">Raporlar</div>
			</div>
		</div>
	</div>
	
    <div class="dataTable">
        <asp:DataGrid ID="Datagrid1" runat="server" GridLines="None" PageSize="20" AllowPaging="True" AutoGenerateColumns="False" AllowSorting="True" HeaderStyle-CssClass="title" FooterStyle-HorizontalAlign="Center">
            <PagerStyle Mode="NumericPages" CssClass="dataPager" PageButtonCount="15"></PagerStyle>
            <Columns>
                <asp:BoundColumn DataField="CountryId" Visible="False" HeaderText="ID"></asp:BoundColumn>
                <asp:BoundColumn DataField="CountryName" SortExpression="CountryName" HeaderText="<%$ Resources:admin,CountryName %>"></asp:BoundColumn>
                <asp:TemplateColumn HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="<%$ Resources:admin,StatusActiveorPassive %>">
                    <ItemTemplate>
                        <asp:CheckBox runat="server" ID="chkStatus" Enabled="false" Checked='<%# IIf(Eval("Status")=1,True,False) %>' />
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="<%$ Resources:admin,Edit %>">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="Server" CssClass="btnIcon fancyContent"  NavigateUrl='<%# "/admin/ecommerce/citys/editCountry.aspx?IND=" & DataBinder.Eval(Container.DataItem, "CountryId") & "&CountryName=" & DataBinder.Eval(Container.DataItem, "CountryName") & "&Status=" & DataBinder.Eval(Container.DataItem, "Status") & ""%> '><i class="fa fa-pencil"></i></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="<%$ Resources:admin,Delete %>">
                    <ItemTemplate>
                        <asp:LinkButton ID="lnkbtnDelete" runat="server" CausesValidation="false" CommandName="Delete" CssClass="btnIcon"><i class="fa fa-trash-o"></i> </asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateColumn>
            </Columns>
        </asp:DataGrid>
    </div>
</div>
