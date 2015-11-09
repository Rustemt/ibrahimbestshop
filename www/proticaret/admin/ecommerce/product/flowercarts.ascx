<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="flowercarts.ascx.vb" Inherits="ASPNetPortal.flowercarts" %>
<div class="pageFlowerCartList">
    <asp:Label ID="lblerr" runat="server"></asp:Label>
    <asp:Label ID="lblSort" runat="server" Visible="False"></asp:Label>
    <asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>
    <asp:Label ID="msg" runat="server"></asp:Label>
    <div class="buttonGroup">
        <asp:HyperLink ID="lnkAddNew" runat="server" CssClass="btnDefault fancyContent"><i class="fa fa-plus"></i> <%= GetGlobalResourceObject("admin","AddNew") %></asp:HyperLink>
    </div>
    <div class="dataTable">
        <asp:DataGrid ID="g1" runat="server" GridLines="None" AutoGenerateColumns="False" HeaderStyle-CssClass="title" FooterStyle-HorizontalAlign="Center">
            <Columns>
                <asp:BoundColumn DataField="ImageId" Visible="false" HeaderText="IND"></asp:BoundColumn>
                 <asp:TemplateColumn HeaderText="<%$ Resources:admin,Explanation %>">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink3" runat="Server" CssClass="btnLink fancyContent" NavigateUrl='<%# "/admin/ecommerce/product/AddFlowerCarts.aspx?IND=" & DataBinder.Eval(Container.DataItem, "ImageId") & ""%> '><%#Eval("Description")%></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="<%$ Resources:admin,Picture %>">
                    <ItemTemplate>
                        <a class="fancyPhoto" data-width="150" data-height="300" rel="group" target="_blank" href='<%# BaseUrl & "/Uploads/cartsimages/" & DataBinder.Eval(Container.DataItem, "Path")%>'><img alt="" border="0" src='<%# baseurl & "/admin/ecommerce/product/flowermakethumb.aspx?file=" + container.dataitem("Path") + "&intSize=125" %>'></a>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:BoundColumn DataField="Price" HeaderText="<%$ Resources:admin,PriceDifference %>" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center"></asp:BoundColumn>
                <asp:TemplateColumn Visible="false" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="<%$ Resources:admin,Detail %>">
                    <ItemTemplate>
                    	<asp:HyperLink ID="HyperLink1" runat="Server" CssClass="btnIcon fancyContent" NavigateUrl='<%# "/admin/ecommerce/product/AddFlowerCarts.aspx?IND=" & DataBinder.Eval(Container.DataItem, "ImageId") & ""%> '><i class="fa fa-pencil"></i> <%= GetGlobalResourceObject("admin","Detail") %></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="<%$ Resources:admin,Delete %>">
                    <ItemTemplate>
                    	<asp:LinkButton ID="lnkbtnDelete" runat="server" CausesValidation="false" CommandName="Delete" CssClass="btnIcon"><i class="fa fa-trash-o"></i></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateColumn>
            </Columns>
            <PagerStyle Visible="False" CssClass="Admin_TabloBaslik" Mode="NumericPages"></PagerStyle>
        </asp:DataGrid>
    </div>
</div>
