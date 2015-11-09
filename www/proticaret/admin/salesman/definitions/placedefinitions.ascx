<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="placedefinitions.ascx.vb" Inherits="ASPNetPortal.placedefinitions" %>
<div class="pagePlaceDefinition">
    <asp:Label ID="lblerr" runat="server"></asp:Label>
    <div class="buttonGroup">
        <asp:HyperLink ID="lnkAddNew" runat="server" CssClass="btnDefault fancyContent"><i class="fa fa-plus"></i> <%=GetGlobalResourceObject("admin","AddNew") %></asp:HyperLink>
    </div>

    <div class="dataFilter boxToggle">
        <div class="toggleTitle toggleMini">
            <div class="titleTab">
                <ul class="tabMenu">
                    <li><a href="#"><%= GetGlobalResourceObject("admin","Filter") %></a></li> 
                </ul>
            </div>
            <div class="titleToggle"></div>
        </div>
        <div class="toggleContent">
            <div class="tabContent">
                <div class="tab">
                    <div class="colGroup">
                        <div class="col">
                            <label>
                                <asp:Label ID="lblArea" runat="server" Text="<%$ Resources:admin,SalesArea %>"></asp:Label></label>
                            <asp:DropDownList ID="ddlarea" runat="server"></asp:DropDownList>
                        </div>
                        <div class="col">
                            <label>&nbsp;</label>
                            <asp:Button ID="btnSearch" runat="server" CssClass="btnDefault" Text="<%$ Resources:admin,Search %>" />
                        </div>
                    </div>
                </div> 
            </div>
        </div>
    </div>

    <div class="dataTable">
        <asp:DataGrid ID="g1" runat="server" GridLines="None" AllowSorting="True" AutoGenerateColumns="False" HeaderStyle-CssClass="title">
            <Columns>
                <asp:BoundColumn DataField="placeId" HeaderText="IND" Visible="false"></asp:BoundColumn>
                <asp:TemplateColumn HeaderText="<%$ Resources:admin,SalesPlacesCode %>">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink3" runat="Server" CssClass="btnLink fancyContent" NavigateUrl='<%# "/admin/salesman/definitions/AddSalePlace.aspx?IND=" & DataBinder.Eval(Container.DataItem, "placeId") & ""%> '><%#Eval("placeCode")%></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:BoundColumn DataField="areaName" HeaderText="<%$ Resources:admin,AreaName %>"></asp:BoundColumn>
                <asp:BoundColumn DataField="placeName" HeaderText="<%$ Resources:admin,SalesPlaces %>"></asp:BoundColumn>

                <asp:TemplateColumn HeaderText="<%$ Resources:admin,Delete %>" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                    <ItemTemplate>
                        <asp:LinkButton ID="lnkbtnDelete" runat="server" Enabled="<%# IsAllowedOnDemo() %>" CausesValidation="false" CommandName="Delete" CssClass="btnIcon"><i class="fa fa-trash-o"></i></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateColumn>
            </Columns>
        </asp:DataGrid>
    </div>
</div>
