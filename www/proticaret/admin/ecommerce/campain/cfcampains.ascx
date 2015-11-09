<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.cfcampains" CodeBehind="cfcampains.ascx.vb" %>
<div class="pageCFCampains">
    <asp:Label ID="msg" runat="server" Visible="False" CssClass="Admin_HataMesaji"></asp:Label>
    <asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>
    
    <div class="buttonGroup">
        <asp:HyperLink ID="lnkAddNew" runat="server" CssClass="btnDefault fancyContent"><i class="fa fa-plus"></i> <%= GetGlobalResourceObject("admin","AddNew") %></asp:HyperLink>
        <asp:HyperLink ID="lnkexpress" runat="server" CssClass="btnDefault" NavigateUrl="http://www.proticaret.net" Target="_blank" Visible="False">Bu modüldeki özellikleri kullnabilmek için Lütfen Týklayýnýz.</asp:HyperLink>
    </div>
    
    <div class="dataTable">
        <asp:DataGrid ID="Datagrid1" runat="server" GridLines="None" PageSize="20" AutoGenerateColumns="False" HeaderStyle-CssClass="title" FooterStyle-HorizontalAlign="Center" ShowFooter="True">
            <Columns>
                <asp:BoundColumn Visible="False" DataField="FCampainId" HeaderText="IND">
                    <HeaderStyle Width="0px"></HeaderStyle>
                </asp:BoundColumn>
                 <asp:TemplateColumn HeaderText="<%$ Resources:admin,CampainName %>">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink3" runat="Server" CssClass="btnLink fancyContent" NavigateUrl='<%# "/admin/ecommerce/campain/EditfCampain.aspx?IND=" & DataBinder.Eval(Container.DataItem, "FCampainId") & "&MID=" & 0%> '><%#Eval("Name")%></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="<%$ Resources:admin,StatusActiveOrPassive %>">
                    <ItemTemplate>
                        <asp:CheckBox runat="server" Enabled="False" Checked='<%# DataBinder.Eval(Container.DataItem, "IsActive") %>' ID="Checkbox3"></asp:CheckBox>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:BoundColumn DataField="StartDate" HeaderText="<%$ Resources:admin,StartDate %>" DataFormatString="{0:g}"></asp:BoundColumn>
                <asp:BoundColumn DataField="EndDate" HeaderText="<%$ Resources:admin,EndDate %>" DataFormatString="{0:g}"></asp:BoundColumn>
                <asp:TemplateColumn HeaderText="<%$ Resources:admin,PaymentDefinitions %>"  HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink2" runat="Server" CssClass="btnIcon fancyContent" NavigateUrl='<%# "/admin/ecommerce/campain/EditfPayment.aspx?IND=" & DataBinder.Eval(Container.DataItem, "FCampainId") & "&MID=" & 0%> '><i class="fa fa-pencil"></i></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderText="<%$ Resources:admin,Edit %>" Visible="false">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="Server" CssClass="btnDefault fancyContent" NavigateUrl='<%# "/admin/ecommerce/campain/EditfCampain.aspx?IND=" & DataBinder.Eval(Container.DataItem, "FCampainId") & "&MID=" & 0%> '><i class="fa fa-pencil"></i> <%= GetGlobalResourceObject("admin","Edit") %></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderText="<%$ Resources:admin,Delete %>" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                    <ItemTemplate>
                        <asp:LinkButton ID="lnkbtnDelete" runat="server" CausesValidation="false" CssClass="btnIcon" CommandName="Delete"><i class="fa fa-trash-o"></i></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateColumn>
            </Columns>
        </asp:DataGrid>
    </div>
</div>
