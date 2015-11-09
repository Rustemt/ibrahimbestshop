<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="n11template.ascx.vb" Inherits="ASPNetPortal.n11template" %>
<div class="pageN11Template">

    <asp:Label ID="lblerr" runat="server"></asp:Label>
    <div class="buttonGroup">
        <asp:HyperLink ID="lnkAddNew" runat="server" NavigateUrl="EditN11Template.aspx?IND=0" CssClass="btnDefault fancyContent"><i class="fa fa-plus"></i> <%=GetGlobalResourceObject("admin","AddNew") %></asp:HyperLink>
    </div>

    <div class="dataFilter boxToggle">
        <div class="toggleTitle toggleMini">
            <div class="titleTab">
                <ul class="tabMenu">
                    <li><a href="#"><%= GetGlobalResourceObject("admin","Filter") %></a></li>
                    <li><a href="#">Rapor</a></li>
                </ul>
            </div>
            <div class="titleToggle"></div>
        </div>
        <div class="toggleContent">
            <div class="tabContent">
                <div class="tab">
                    <div class="colGroup">
                        <div class="col col2">
                            <label><%= GetGlobalResourceObject("admin","TemplateName") %></label>
                            <asp:TextBox ID="txtTemplateName" runat="server"></asp:TextBox>
                            <asp:DropDownList ID="ddlTemplateName" runat="server">
                                <asp:ListItem Text="<%$ Resources:admin,Contains %>" Value="like '%[]%'"></asp:ListItem>
                                <asp:ListItem Text="<%$ Resources:admin,Starts %>" Value="like '[]%'"></asp:ListItem>
                                <asp:ListItem Text="<%$ Resources:admin,Ends %>" Value="like '%[]'"></asp:ListItem>
                                <asp:ListItem Text="<%$ Resources:admin,Equalss %>" Value="='[]'"></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col">
                            <label>&nbsp;</label>
                            <asp:LinkButton ID="btnSearch" runat="server" CssClass="btnDefault"><i class="fa fa-search"></i> <%=GetGlobalResourceObject("admin","Search") %></asp:LinkButton>
                        </div>
                        <div class="col"></div>
                    </div>
                </div> 
            </div>
        </div>
    </div>
    <div class="dataTable">
        <asp:DataGrid ID="stList" runat="server" GridLines="None" AutoGenerateColumns="False" HeaderStyle-CssClass="title">
            <Columns>
                <asp:BoundColumn DataField="Id" SortExpression="Id" HeaderText="IND" Visible="false"></asp:BoundColumn>
                <asp:TemplateColumn HeaderText="<%$ Resources:admin,TemplateName %>">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink3" runat="Server" CssClass="btnLink fancyContent" NavigateUrl='<%# "/admin/n11/EditN11Template.aspx?IND=" & DataBinder.Eval(Container.DataItem, "Id") & "&MID=" & 0 %> '><%#Eval("TemplateName")%></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:BoundColumn DataField="SalesStartDay" SortExpression="SalesStartDay" HeaderText="<%$ Resources:admin,SalesStartDate %>" DataFormatString="{0:d}"></asp:BoundColumn>
                <asp:BoundColumn DataField="SalesStopDay" SortExpression="SalesStopDay" HeaderText="<%$ Resources:admin,SalesEndDate %>" DataFormatString="{0:d}"></asp:BoundColumn>
                <asp:BoundColumn DataField="ProductionDate" SortExpression="ProductionDate" HeaderText="<%$ Resources:admin,ProductionDate %>" DataFormatString="{0:d}"></asp:BoundColumn>
                <asp:BoundColumn DataField="ExpirationDate" SortExpression="ExpirationDate" HeaderText="<%$ Resources:admin,ExpirationDate %>" DataFormatString="{0:d}"></asp:BoundColumn>
                <asp:BoundColumn DataField="PreparingDay" HeaderText="<%$ Resources:admin,PreparingDay %>"></asp:BoundColumn>
                <asp:BoundColumn DataField="ShipmentTemplate" HeaderText="<%$ Resources:admin,ShipmentTemplateName %>"></asp:BoundColumn>
                <asp:BoundColumn DataField="ProductStatus" HeaderText="<%$ Resources:admin,ProductStatus %>"></asp:BoundColumn>
                <asp:BoundColumn DataField="ProductPrice" HeaderText="<%$ Resources:admin,ProductPrice %>"></asp:BoundColumn>
                <asp:TemplateColumn HeaderText="<%$ Resources:admin,Edit %>" Visible="false">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="Server" CssClass="btnDefault fancyContent" NavigateUrl='<%# "/admin/n11/EditN11Template.aspx?IND=" & DataBinder.Eval(Container.DataItem, "Id") & "&MID=" & 0 %> '><i class="fa fa-pencil"></i> <%=GetGlobalResourceObject("admin","Detail") %></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderText="<%$ Resources:admin,Delete %>" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                    <ItemTemplate>
                        <asp:LinkButton ID="lnkbtnDelete" runat="server" CausesValidation="false" CommandName="Delete" CssClass="btnIcon"><i class="fa fa-trash-o"></i></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateColumn>
            </Columns>
        </asp:DataGrid>
    </div>
</div>
