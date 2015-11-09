<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.cxmlexportlist" Codebehind="cxmlexportlist.ascx.vb" %>
<div class="pageXmlExportList">
    <asp:Label ID="lblSort" runat="server" Visible="False">XmlExportId</asp:Label>
    <asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>
    <asp:Label ID="msg" runat="server" Visible="False"></asp:Label>
    <asp:Label ID="lblMsg" runat="server"></asp:Label>
	
	<div class="buttonGroup">
    	<asp:HyperLink ID="lnkEditProvider" runat="server" CssClass="btnDefault fancyContent"><i class="fa fa-plus"></i> <%= GetGlobalResourceObject("admin","AddNew") %></asp:HyperLink>
    </div>
	
    <div class="dataTable">
        <asp:DataGrid ID="Datagrid1" runat="server" GridLines="None" PageSize="20" AutoGenerateColumns="False" AllowSorting="True" HeaderStyle-CssClass="title" FooterStyle-HorizontalAlign="Center">
            <Columns>
                <asp:BoundColumn DataField="XmlExportId" SortExpression="XmlExportId" HeaderText="IND" Visible="false" ></asp:BoundColumn>

                <asp:TemplateColumn SortExpression="XmlExportId" HeaderText="IND">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink3" runat="Server" CssClass="btnLink fancyContent" NavigateUrl='<%# "/admin/ecommerce/integration/EditXmlExport.aspx?IND=" & DataBinder.Eval(Container.DataItem, "XmlExportId") & ""%> '><%#Eval("XmlExportId")%></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:BoundColumn DataField="UserName" SortExpression="UserName" HeaderText="<%$ Resources:admin,XmlListUserName %>"></asp:BoundColumn>
                <asp:BoundColumn DataField="Password" HeaderText="<%$ Resources:admin,XmlListPassword %>"></asp:BoundColumn>
                <asp:BoundColumn DataField="IpAddress" HeaderText="<%$ Resources:admin,XmlListIpAddress %>"></asp:BoundColumn>
                <asp:BoundColumn DataField="XsltPath" SortExpression="XsltPath" HeaderText="<%$ Resources:admin,XmlListFileFormat %>"></asp:BoundColumn>
                <asp:BoundColumn DataField="Description" HeaderText="<%$ Resources:admin,XmlListDescription %>"></asp:BoundColumn>
                <asp:TemplateColumn HeaderText="Link">
                    <ItemTemplate>
                        <asp:TextBox ID="txtlink" runat="server" Text='<%# BaseUrl & DataBinder.Eval(Container.DataItem,"Link") %>'></asp:TextBox>
                        &nbsp;
                        <asp:HyperLink ID="hl1" runat="server" CssClass="btnDefault" NavigateUrl='<%# BaseUrl & DataBinder.Eval(Container.DataItem,"Link") %>' Target="_blank"><i class="fa fa-external-link"></i> <%= GetGlobalResourceObject("admin","XmlListBrowse") %></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="<%$ Resources:admin,Status %>">
                    <ItemTemplate>
                        <asp:CheckBox runat="server" Enabled="false" Checked='<%# DataBinder.Eval(Container.DataItem, "IsActive") %>' ID="chkDurum"></asp:CheckBox>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="<%$ Resources:admin,Edit %>">
                    <ItemTemplate>
                        <asp:HyperLink ID="hl3" runat="server"  CssClass="btnIcon fancyContent"  NavigateUrl='<%# "/admin/ecommerce/integration/EditXmlExport.aspx?IND=" & DataBinder.Eval(Container.DataItem, "XmlExportId") & ""%> '><i class="fa fa-pencil"></i></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="<%$ Resources:admin,Delete %>">
                    <ItemTemplate>
                        <asp:LinkButton ID="lnkbtnDelete" runat="server" CausesValidation="false" CommandName="Delete" CssClass="btnIcon"><i class="fa fa-trash-o"></i></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateColumn>
            </Columns>
            <PagerStyle NextPageText="Next" PrevPageText="Prev" HorizontalAlign="Left" PageButtonCount="15" Mode="NumericPages" CssClass="dataPager"></PagerStyle>
        </asp:DataGrid>
    </div>
	
    <div class="dataCount">
        <ul>
        	<li><%=GetGlobalResourceObject("admin", "TotalRecording")%>  :<asp:Label ID="lblTotalRecord" runat="server"></asp:Label></li>
        </ul>
    </div>
</div> 