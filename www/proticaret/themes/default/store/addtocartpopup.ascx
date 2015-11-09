<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.addtocartpopup" CodeBehind="addtocartpopup.ascx.vb" %>
<div id="addtocartpopup" class="module">
    <div id="module_content">
        <% If HeaderVisible Then%>
        <div id="module_title">
            <span>
                <span id="module_title_icon"></span>
                <%=ModuleTitle%>
                <% If IsEditable Then%>
                <a href="<%=EditNavigateUrl %>" id="module_title_edit"><%=EditText %></a>
                <% End If%>
            </span>
        </div>
        <% End If%>
        <div>
            <div id="info" runat="server" class="information"><%=GetGlobalResourceObject("lang", "CartMsg2")%></div>
            <div id="alert" visible="false" runat="server" class="alert">
                <asp:Label ID="lblError" runat="Server" EnableViewState="False"></asp:Label>
            </div>

            <asp:DataGrid ID="dlBasket" runat="server" Width="600px" AutoGenerateColumns="False" CellPadding="2" CssClass="datalist" HeaderStyle-CssClass="title" GridLines="none" ItemStyle-CssClass="row">
                <HeaderStyle BorderColor="transparent" BorderStyle="None" />
                <Columns>
                    <asp:TemplateColumn ItemStyle-Width="80px" HeaderStyle-Wrap="false" HeaderStyle-HorizontalAlign="center" ItemStyle-HorizontalAlign="center" HeaderText="<%$ Resources:lang, ProductImage%>">
                        <ItemTemplate>
                            <img alt="" class="thumb" src='<%# "/store/makethumb.aspx?file=" + container.dataitem("Path") + "&intSize=50" %>' />
                        </ItemTemplate>
                    </asp:TemplateColumn>
                    <asp:TemplateColumn HeaderText="<%$ Resources:lang, ProductCode%>" Visible="False">
                        <ItemTemplate>
                            <%# container.dataitem("ProductCode")  %>
                        </ItemTemplate>
                    </asp:TemplateColumn>
                    <asp:TemplateColumn HeaderText="<%$ Resources:lang, ProductName%>">
                        <ItemTemplate>
                            <%#DataBinder.Eval(Container.DataItem,"ProductName") %>
                            <%--<%# container.dataitem("Description").tostring.replace(",","</br>")  %>--%>
                            <%# Container.DataItem("Description").ToString.Replace(BaseUrl & "/Uploads/orderpictures/", "")%>
                        </ItemTemplate>
                    </asp:TemplateColumn>
                    <asp:TemplateColumn HeaderStyle-HorizontalAlign="center" ItemStyle-HorizontalAlign="center" HeaderText="<%$ Resources:lang, Quantity%>">
                        <ItemTemplate>
                            <%#DataBinder.Eval(Container.DataItem,"Qty") %>
                        </ItemTemplate>
                    </asp:TemplateColumn>
                </Columns>
            </asp:DataGrid>
            <label style="text-align: right;">
                <%=GetGlobalResourceObject("lang", "TotalPrice")%> : 
                <asp:Label ID="lblTotal" runat="server"></asp:Label>
            </label>
            <a href="javascript:window.parent.location.href='/store/cart.aspx';window.close();parent.$.fn.colorbox.close();" class="button"><%=GetGlobalResourceObject("lang", "GoToCart")%></a>
        </div>
        <div id="cartalert" visible="false" runat="server" class="alert">
            <asp:Label ID="lblcartError" runat="Server" EnableViewState="False"></asp:Label>
        </div>

    </div>
</div>


<script type="text/javascript" src="<% =getThemePath() %>/js/rendermodules.js"></script>
<script type="text/javascript">
    jQuery(document).ready(function () {
        jQuery(window).bind("load", function () {
            var frameWidth = jQuery(document).width();
            var frameHeight = jQuery(document).height() + 20;
            parent.$.fn.colorbox.myResize(frameWidth, frameHeight);
        });
    });
    jQuery(document).ready(function () {
        ASPNetPortal.ShoppingCartService.GetShoppingCartCount(OnRC1, OnErr);
    });
    function OnRC1(result) { parent.document.getElementById("spt").innerHTML = result; }
    function OnErr(result) { }
</script>




