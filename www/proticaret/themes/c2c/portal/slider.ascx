<%@ Control Language="vb" Inherits="ASPNetPortal.slider" AutoEventWireup="false" CodeBehind="slider.ascx.vb" EnableViewState="False" %>
<link href="<% =getThemePath() %>/css/slider.css" type="text/css" rel="stylesheet" />
<script src="<% =getThemePath() %>/js/slider.min.js" type="text/javascript"></script>
<div id="slidermodule">

    <% If HeaderVisible Then%>
    <%=ModuleTitle%>
    <% If IsEditable Then%>
    <a href="<%=EditNavigateUrl %>" id="module_title_edit"><%=EditText %></a>
    <% End If%>
    <% End If%>

    <div id="slidercontent">
        <asp:Repeater ID="rpt1" runat="server">
            <HeaderTemplate>
                <div id="slider">
                    <ul>
            </HeaderTemplate>
            <ItemTemplate>
                <li>
                    <a href="<%# Container.DataItem("SlideUrl").ToString %>">
                        <span class="title"><%# Container.DataItem("SlideTitle").ToString %></span>
                        <span class="content"><%# Server.HtmlDecode(Container.DataItem("SlideHtml").ToString()) %></span>
                        <img class="image" alt="<%# Container.DataItem("SlideTitle").ToString %>" src="<%# Container.DataItem("SlideImage").ToString %>" />
                    </a>
                </li>
            </ItemTemplate>
            <FooterTemplate>
                </ul>
</div>
            </FooterTemplate>
        </asp:Repeater>
        <asp:Repeater ID="rpt2" runat="server" Visible="false">
            <HeaderTemplate>
                <ul class="pager">
            </HeaderTemplate>
            <ItemTemplate>
                <li><a rel="<%# Container.ItemIndex %>" class="pagenum" href="#"><%#Container.ItemIndex + 1%></a></li>
            </ItemTemplate>
            <FooterTemplate></ul></FooterTemplate>
        </asp:Repeater>
    </div>
</div>
<script type="text/javascript">
    $(document).ready(function () {
        $("#slider").easySlider({
            auto: true,
            continuous: true,
        });
    });
</script>
