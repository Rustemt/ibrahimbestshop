<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.cproviders" CodeBehind="cproviders.ascx.vb" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<div class="pageProviders">
	<asp:Label ID="msg" runat="server" Visible="False"></asp:Label>
    <asp:Label ID="lblMsg" runat="server"></asp:Label>
    <asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>
    <asp:Label ID="lblSort" runat="server" Visible="False">ProviderId</asp:Label>
    <div class="buttonGroup">
    	<asp:HyperLink ID="lnkEditProvider" runat="server" CssClass="btnDefault fancyContent"><i class="fa fa-plus"></i> <%= GetGlobalResourceObject("admin","AddNew") %></asp:HyperLink>
    </div>
    <div class="dataTable">
        <asp:DataGrid ID="Datagrid1" GridLines="None" runat="server" AutoGenerateColumns="False" HeaderStyle-CssClass="title" FooterStyle-HorizontalAlign="Center">
            <Columns>
                <asp:BoundColumn DataField="ProviderId" Visible="False" SortExpression="ProviderId" HeaderText="IND"></asp:BoundColumn>
                  <asp:TemplateColumn HeaderText="<%$ Resources:admin,ProviderName %>">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink3" runat="Server" CssClass="btnLink fancyContent"  NavigateUrl='<%# "/admin/ecommerce/providers/EditProvider.aspx?IND=" & DataBinder.Eval(Container.DataItem, "ProviderId")%> '><%#Eval("ProviderName")%></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:BoundColumn DataField="ProviderCompany" SortExpression="ProviderCompany" HeaderText="<%$ Resources:admin,ProviderCompany %>"></asp:BoundColumn>
                <asp:BoundColumn DataField="ProviderContactName" SortExpression="ProviderContactName" HeaderText="<%$ Resources:admin,ProviderContactName %>"></asp:BoundColumn>
                <asp:BoundColumn DataField="ProviderPhone1" SortExpression="ProviderPhone1" HeaderText="<%$ Resources:admin,ProviderPhone %>"></asp:BoundColumn>
                <asp:BoundColumn DataField="ProviderFax" SortExpression="ProviderFax" HeaderText="<%$ Resources:admin,ProviderFax %>"></asp:BoundColumn>
                <asp:BoundColumn DataField="ProviderEmail" SortExpression="ProviderEmail" HeaderText="<%$ Resources:admin,ProviderEmail %>"></asp:BoundColumn>
                <asp:BoundColumn DataField="XsltPath" SortExpression="XsltPath" HeaderText="<%$ Resources:admin,XmlListFileFormat %>"></asp:BoundColumn>
        
                <asp:TemplateColumn HeaderText="<%$ Resources:admin,XmlFile %>">
                    <ItemTemplate>
                        <%# DataBinder.Eval(Container.DataItem,"XmlPath") %>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn Visible="false" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="<%$ Resources:admin,Detail %>">
                    <ItemTemplate>
                        <asp:HyperLink ID="hl3" runat="server" CssClass="btnDefault fancyContent" NavigateUrl='<%# "/admin/ecommerce/providers/EditProvider.aspx?IND=" & DataBinder.Eval(Container.DataItem, "ProviderId")%> '><i class="fa fa-pencil"></i> <%= GetGlobalResourceObject("admin","Edit") %></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="<%$ Resources:admin,Delete %>">
                    <ItemTemplate>
                        <asp:LinkButton ID="lnkbtnDelete" runat="server" CausesValidation="false" CommandName="Delete" Enabled="<%# IsAllowedOnDemo() %>" CssClass="btnIcon"><i class="fa fa-trash-o"></i></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateColumn>
            </Columns>
        </asp:DataGrid>
    </div>
    <div class="dataCount">
        <ul>
            <li><%=GetGlobalResourceObject("admin", "TotalRecording")%> :<asp:Label ID="lblTotalRecord" runat="server"></asp:Label></li>
        </ul>
    </div>
</div>
