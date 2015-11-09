<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.categorybrands2" EnableViewState="False" CodeBehind="categorybrands2.ascx.vb" %>
<%--her Kýrýlýmda gösteriliyor--%>
<div id="categorybrands2" class="module">
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
        <div id="brandlist">
            <asp:Repeater ID="rptMarks" runat="server">
                <HeaderTemplate>
                    <ul class="categorybrands">
                </HeaderTemplate>
                <FooterTemplate></ul></FooterTemplate>
                <ItemTemplate>
                    <li>
                        <asp:HyperLink ID="hlMark" runat="server" NavigateUrl='<%# string.format(BaseUrl & "/marka/{0}" & ".aspx",container.dataitem("Url")) & "?CatId=" & container.dataitem("CatId") & "&tabId=" & Request.QueryString.Item("tabId") %>'>
<%#IIf(Container.DataItem("MarkImage").ToString <> "", "<img src='" & Container.DataItem("MarkImage") & "' border='0' alt='" & Container.DataItem("MarkName") & "' />", Container.DataItem("MarkName"))%></asp:HyperLink>
                    </li>
                </ItemTemplate>
            </asp:Repeater>
        </div>
        <div class="clear"></div>
        <div id="moreless" style="text-align: right;"></div>
    </div>
</div>
<script type="text/javascript">
    $(document).ready(function () {
        var index = 12;
        if ($("#brandlist ul li").size() > index) {
            $('#moreless').append('<a href="#" class="more">tümünü göster</a>');
            $('#moreless').append('<a href="#" class="less">gizle...</a>');
            $('#brandlist ul li:gt(' + (index - 1) + ')').hide();
            $('#moreless .less').hide();

            $('#moreless .more').click(function () {
                $('#moreless .more').hide();
                $('#moreless .less').show();
                $('#brandlist ul li:gt(' + (index - 1) + ')').show();
            });

            $('#moreless .less').click(function () {
                $('#moreless .less').hide();
                $('#moreless .more').show();
                $('#brandlist ul li:gt(' + (index - 1) + ')').hide();
            });
        }
    });
</script>
