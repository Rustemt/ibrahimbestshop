<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="categoryfiltercheckbox.ascx.vb" Inherits="ASPNetPortal.categoryfiltercheckbox" %>
<%@ Register TagPrefix="cc1" Namespace="UNLV.IAP.WebControls" Assembly="DropDownCheckList" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControls" TagPrefix="asp" %>
<%@ Register Assembly="AjaxControls" Namespace="AjaxControls" TagPrefix="cc1" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<script src="/jquery/js/jquery-1.8.3.js" type="text/javascript"></script>
<script src="/jquery/js/jquery-ui-1.9.2.custom.min.js" type="text/javascript"></script>
<link href="/jqueryui/css/smoothness/jquery-ui-1.9.2.custom.min.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
    $(document).ready(function () {

        var minPrice = "0";
        var maxPrice = "10000";

        if (getQueryStringValue("minPrice") != "") {
            minPrice = getQueryStringValue("minPrice");
        }
        if (getQueryStringValue("maxPrice") != "") {
            maxPrice = getQueryStringValue("maxPrice");
        } 
        $("#valueStart").html(minPrice + ", " + maxPrice);

        $("div#priceslider").slider({
            animate: true,
            range: true,
            values: [minPrice, maxPrice],  //initial values for cursor
            start: function (event) {
                var values = $("div#priceslider").slider("values");
                $("#valueStart").html(values[0] + ", " + values[1]);
            },
            stop: function (event) {

                var values = $("div#priceslider").slider("values");
                $("#valueStop").html(values[0] + ", " + values[1]);



                var relativeURl = '<%= Request.RawUrl  %>';
                var newURL = window.location.protocol + "//" + window.location.host + relativeURl;


                if (getQueryStringValue("minPrice") != "") {
                    //alert(newURL.toString().replace("minPrice=" + getQueryStringValue("minPrice"), "minPrice=" + values[0]).replace("maxPrice=" + getQueryStringValue("maxPrice"), "maxPrice=" + values[1]));
                    window.location.href = newURL.toString().replace("minPrice=" + getQueryStringValue("minPrice"), "minPrice=" + values[0]).replace("maxPrice=" + getQueryStringValue("maxPrice"), "maxPrice=" + values[1]).toString();
                }
                else {
                    var strrr = (newURL + "?").replace(".aspx?", ".aspx?minPrice=" + values[0] + "&maxPrice=" + values[1] + "&");
                    window.location.href = strrr.toString();
                }
                //Response.Redirect(Request.RawUrl.ToString.Replace("minPrice=" & Request.QueryString("minPrice"), "minPrice=" & txtmin.Text))

            },
            change: function (event) {
                var values = $("div#priceslider").slider("values");
                $("#valueChange").html(values[0] + ", " + values[1]);
            },
            slide: function (event) {
                var values = $("div#priceslider").slider("values");
                $("#valueSlide").html(values[0] + ", " + values[1]);
            }
        });
    })

    function getQueryStringValue(key) {
        return unescape(window.location.search.replace(new RegExp("^(?:.*[&\\?]" + escape(key).replace(/[\.\+\*]/g, "\\$&") + "(?:\\=([^&]*))?)?.*$", "i"), "$1"));
    }


</script>
<style type="text/css">
    #priceslider {
        background: rgb(79,129,189);
    }
</style>


<div id="categorypro" class="module">
    <% If HeaderVisible Then%>
    <div class="moduleTitle">
        <%=ModuleTitle%>
        <% If IsEditable Then%>
        <a href="<%=EditNavigateUrl %>" class="moduleTitleEdit"><%=EditText %></a>
        <% End If%>
    </div>
    <% End If%>



    <div class="moduleContentPro">
        <div id="promenu" class="Categories">
            <%--Navigasyon Max 5 kırılım--%>
            <asp:Repeater ID="dlNav0" Visible="false" runat="server">
                <HeaderTemplate>
                    <ul class="sub">
                </HeaderTemplate>
                <ItemTemplate>
                    <li>
                        <a class="selected radius5" href='<%# string.format(BaseUrl & "{0}" & ".aspx",Eval("CatUrl").tostring.Remove(Eval("CatUrl").tostring.Length - 1, 1) ) %>'>
                            <%# Eval("CatName") %>
                        </a>
                        <asp:Repeater ID="dlNav1" runat="server" DataSource='<%# LoadSubNav(Eval("Lineage"), Eval("CatId"),1) %>'>
                            <HeaderTemplate>
                                <ul>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <li>
                                    <a class="selected radius5" href='<%# string.format(BaseUrl & "{0}" & ".aspx",Eval("CatUrl").tostring.Remove(Eval("CatUrl").tostring.Length - 1, 1) )  %>'>
                                        <%# Eval("CatName") %>
                                    </a>
                                    <asp:Repeater ID="dlNav2" runat="server" DataSource='<%# LoadSubNav(Eval("Lineage"),Eval("CatId"),2) %>'>
                                        <HeaderTemplate>
                                            <ul>
                                        </HeaderTemplate>
                                        <ItemTemplate>
                                            <li>
                                                <a class="selected radius5" href='<%# string.format(BaseUrl & "{0}" & ".aspx",Eval("CatUrl").tostring.Remove(Eval("CatUrl").tostring.Length - 1, 1) )  %>'>
                                                    <%# Eval("CatName") %>
                                                </a>
                                                <asp:Repeater ID="dlNav3" runat="server" DataSource='<%# LoadSubNav(Eval("Lineage"),Eval("CatId"),3) %>'>
                                                    <HeaderTemplate>
                                                        <ul>
                                                    </HeaderTemplate>
                                                    <ItemTemplate>
                                                        <li>
                                                            <a class="selected radius5" href='<%# string.format(BaseUrl & "{0}" & ".aspx",Eval("CatUrl").tostring.Remove(Eval("CatUrl").tostring.Length - 1, 1) )  %>'>
                                                                <%# Eval("CatName") %>
                                                            </a>
                                                            <asp:Repeater ID="dlNav4" runat="server" DataSource='<%# LoadSubNav(Eval("Lineage"),Eval("CatId"),4) %>'>
                                                                <HeaderTemplate>
                                                                    <ul>
                                                                </HeaderTemplate>
                                                                <ItemTemplate>
                                                                    <li>
                                                                        <a class="selected radius5" href='<%# string.format(BaseUrl & "{0}" & ".aspx",Eval("CatUrl").tostring.Remove(Eval("CatUrl").tostring.Length - 1, 1) )  %>'>
                                                                            <%# Eval("CatName") %>
                                                                        </a>
                                                                    </li>
                                                                </ItemTemplate>
                                                                <FooterTemplate></ul></FooterTemplate>
                                                            </asp:Repeater>
                                                        </li>
                                                    </ItemTemplate>
                                                    <FooterTemplate></ul></FooterTemplate>
                                                </asp:Repeater>
                                            </li>
                                        </ItemTemplate>
                                        <FooterTemplate></ul></FooterTemplate>
                                    </asp:Repeater>
                                </li>
                            </ItemTemplate>
                            <FooterTemplate></ul></FooterTemplate>
                        </asp:Repeater>
                    </li>
                </ItemTemplate>
                <FooterTemplate>
                    </ul>
                </FooterTemplate>
            </asp:Repeater>
            <%--Alt Kategoriler Sınırsız Kırılım--%>
            <asp:Repeater ID="dlSubCat0" Visible="false" runat="server">
                <HeaderTemplate>
                    <ul class="sub2 radius5">
                </HeaderTemplate>
                <ItemTemplate>
                    <li class="submain">
                        <div>
                            <a href='<%# string.format(BaseUrl & "{0}" & ".aspx",Eval("CatUrl").tostring.Remove(Eval("CatUrl").tostring.Length - 1, 1) ) %>'>
                                <%# Eval("CatName") %>
                            </a>
                            <asp:Repeater ID="dlSubCat1" runat="server" DataSource='<%# LoadSubCats(Eval("Lineage"),Eval("CatId"),1) %>'>
                                <HeaderTemplate>
                                    <ul>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <li>
                                        <a class="" href='<%# string.format(BaseUrl & "{0}" & ".aspx",Eval("CatUrl").tostring.Remove(Eval("CatUrl").tostring.Length - 1, 1) )  %>'>
                                            <%# Eval("CatName") %>
                                        </a>
                                    </li>
                                </ItemTemplate>
                                <FooterTemplate></ul></FooterTemplate>
                            </asp:Repeater>
                        </div>
                    </li>
                </ItemTemplate>
                <FooterTemplate></ul></FooterTemplate>
            </asp:Repeater>
            <%--Ana Kategoriler--%>
            <asp:Repeater ID="dlMainCat" Visible="false" runat="server">
                <HeaderTemplate>
                    <ul>
                </HeaderTemplate>
                <ItemTemplate>
                    <li class="main">
                        <a href='<%# string.format(BaseUrl & "{0}" & ".aspx",Eval("CatUrl").tostring.Remove(Eval("CatUrl").tostring.Length - 1, 1) ) %>'>
                            <%# Eval("CatName") %>
                        </a>
                        <div class="sub radius5" runat="server" visible='<%# iif(Eval("ChildCount")>0,"True","False") %>'>
                            <span class="subTitle radius5"><%# Eval("CatName") %></span>
                            <asp:Repeater ID="dlMainCat1" runat="server" DataSource='<%# LoadMainSubCats(Eval("Lineage"),Eval("CatId"),1) %>'>
                                <HeaderTemplate>
                                    <div id="sub-left">
                                        <ul class="s_categories">
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <li>
                                        <a class="" href='<%# string.format(BaseUrl & "{0}" & ".aspx",Eval("CatUrl").tostring.Remove(Eval("CatUrl").tostring.Length - 1, 1) )  %>'>
                                            <%# Eval("CatName") %>
                                        </a>
                                    </li>
                                </ItemTemplate>
                                <FooterTemplate></ul></div></FooterTemplate>
                            </asp:Repeater>
                            <asp:Repeater ID="dlMainCat2" runat="server" DataSource='<%# LoadMainSubCatsRigth(Eval("Lineage"),Eval("CatId"),1) %>'>
                                <HeaderTemplate>
                                    <div id="sub-right">
                                        <ul class="s_categories_img clearFix">
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <li>
                                        <a title="" href="<%# string.format(BaseUrl & "{0}" & ".aspx",Eval("CatUrl").tostring.Remove(Eval("CatUrl").tostring.Length - 1, 1) )  %>">
                                            <span id="category-img">
                                                <img alt="" src='<%# "/store/makethumb.aspx?file=../../" + Eval("CatImg") + "&intSize=70" %>' />
                                            </span>
                                            <span id="category-title"><%# Eval("CatName") %></span>
                                        </a>
                                    </li>
                                </ItemTemplate>
                                <FooterTemplate>
                                    </ul></div>
                                </FooterTemplate>
                            </asp:Repeater>
                        </div>
                    </li>
                </ItemTemplate>
                <FooterTemplate></ul></FooterTemplate>
            </asp:Repeater>

            <%-- Tekstil --%>
            <%--Drop  --%>
            <p class="title2" style='display: <%=iif(lblCloseSize2.visible,"Block","None")%>'>
                <asp:Label ID="lblCloseSize2" Visible="false" runat="server"><b><%=Size2Name%></b></asp:Label><a id="lnkCloseSize2" class="remove" runat="server" href="#" visible="false"><%=GetGlobalResourceObject("lang", "FilterRemove")%></a>
                <cc1:DropDownCheckList ID="ddlSelectedSize2" DropDownMode="Inline" Visible="false" runat="server" Separator="," DisplayTextWidth="186" Width="100%" CheckListCssClass="checklist checkFilter clearFix" RepeatColumns="1" RepeatDirection="Horizontal" DisplayBoxCssStyle="border: 1px solid #ebeaea; cursor: pointer; background-color: white;" CheckListCssStyle="border: 1px solid #ebeaea; padding: 4px; background-color: #FFFFFF;" DropImageSrc="/images/dn.gif" OnButtonClick="DisplaySize2CheckedItems" DisplayTextPaddingBottom="2" DisplayTextPaddingTop="2" DisplayTextList="Labels">
                </cc1:DropDownCheckList>
            </p>
            <%--Drop Sonu--%>

            <%--Filtre--%>
            <%--Renk Filtre--%>
            <div id="divSize0" visible="false" runat="server" class="moduleBox checkFilter">
                <asp:Label ID="lblSize0" CssClass="title2" runat="server" Visible="false"><%=Size0Name%> <i class="icon-down-dir"></i></asp:Label>
                <asp:Repeater ID="dlSize0" runat="server">
                    <HeaderTemplate>
                        <ul class="filterContent clearFix">
                    </HeaderTemplate>
                    <ItemTemplate>
                        <li>
                            <asp:ImageButton ID="btnimgsize0" ToolTip='<%# Eval("Size0Name") %>' runat="server" ImageUrl='<%# Eval("Size0Path") %>' CommandName="Update" CommandArgument='<%# Eval("Size0ValueId") %>' />
                        </li>
                    </ItemTemplate>
                    <FooterTemplate></ul></FooterTemplate>
                </asp:Repeater>
                <a id="lnkCloseSize0" class="remove" runat="server" href="#" visible="false"><i class="icon-cancel"></i>Tümünü <%=GetGlobalResourceObject("lang", "FilterRemove")%></a>
            </div>
            <%--Renk Filtre Sonu --%>
            <%--Beden Filtre--%>
            <div id="divSize1" visible="false" runat="server" class="moduleBox checkFilter">
                <asp:Label ID="lblSize1" CssClass="title2" runat="server" Visible="false"><%=Size1Name%> <i class="icon-down-dir"></i></asp:Label>
                <asp:CheckBoxList CssClass="filterContent clearFix" runat="server" ID="cbsize1" AutoPostBack="true" RepeatLayout="Flow" RepeatColumns="1000"></asp:CheckBoxList>
                <a id="lnkCloseSize1" class="remove" runat="server" href="#" visible="false"><i class="icon-cancel"></i>Tümünü <%=GetGlobalResourceObject("lang", "FilterRemove")%></a>
            </div>
            <%--Beden Filtre Sonu --%>
            <%--Drop Filtre--%>
            <div id="divSize2" visible="false" runat="server" class="moduleBox checkFilter">
                <asp:Label ID="lblSize2" CssClass="title2" runat="server" Visible="false"><%=Size2Name%> <i class="icon-down-dir"></i></asp:Label>
                <asp:Repeater ID="dlSize2" Visible="false" runat="server">
                    <HeaderTemplate>
                        <ul class="filterContent clearFix">
                    </HeaderTemplate>
                    <ItemTemplate>
                        <li>
                            <a href='<%# CreateSize2Paging(Eval("Size2ValueId"))%>'>
                                <%#Eval( "Size2Name")%><%-- (<%# Eval( "Count")%>)--%>
                            </a></li>
                    </ItemTemplate>
                    <FooterTemplate></ul></FooterTemplate>
                </asp:Repeater>
            </div>
            <%--Drop Filtre Sonu --%>
            <%--Kampanyalar Filtre--%>
            <div id="divTypes" visible="false" runat="server" class="moduleBox checkFilter bigCheck">
                <span style="display:none;"><asp:Label CssClass="title2" ID="lblCloseTypes" Visible="false" runat="server"><b><%=GetGlobalResourceObject("lang", "FilterOnly")%></b></asp:Label></span>
                <span class="title2">Sadece <i class="icon-down-dir"></i></span>
                <asp:CheckBoxList runat="server" CssClass="filterContent clearFix" ID="cbtypes" AutoPostBack="true" RepeatLayout="Flow" RepeatColumns="1000"></asp:CheckBoxList>
                <a id="lnkCloseTypes" class="remove" runat="server" href="#" visible="false"><i class="icon-cancel"></i>Tümünü <%=GetGlobalResourceObject("lang", "FilterRemove")%></a>

            </div>
            <%--Kampanyalar Filtre Sonu --%>

            <%--Markalar Filtre --%>
            <div id="divMarks" visible="false" runat="server" class="moduleBox markFilter checkFilter">
                <asp:Label ID="lblMarks" CssClass="title2" runat="server" Visible="false"><%=GetGlobalResourceObject("lang", "FilterMarks")%> <i class="icon-down-dir"></i></asp:Label>
                <asp:Label ID="lblCloseMarks" Visible="false" runat="server"><b><%=GetGlobalResourceObject("lang", "FilterMarks")%></b></asp:Label>
                <asp:CheckBoxList runat="server" CssClass="filterContent clearFix" ID="cbmarklist" AutoPostBack="true" RepeatLayout="Flow" RepeatColumns="1000"></asp:CheckBoxList>

                <a id="lnkCloseMarks" class="remove" runat="server" href="#" visible="false"><i class="icon-cancel"></i>Tümünü <%=GetGlobalResourceObject("lang", "FilterRemove")%></a>
            </div>
            <%--Markalar Filtre Sonu--%>
             
            <%--Fiyatlar Filtre--%>

            <div id="divPrices" runat="server" visible="false" class="moduleBox checkFilter">
                <asp:Label ID="lblPrices" CssClass="title2" Visible="false" runat="server"><%=GetGlobalResourceObject("lang", "FilterPriceRange")%> <i class="icon-down-dir"></i></asp:Label>

                <div id="priceslider"></div>
                <br />
                Start :<span id="valueStart"></span><br />
                Stop :<span id="valueStop"></span><br />
                Change :<span id="valueChange"></span><br />
                Slide :<span id="valueSlide"></span>
            </div>

            <%--Fiyatlar Filtre Sonu--%>
            <%--Filtre Sonu--%>
        </div>

    </div>
    <script type="text/javascript">
        $(function () {

            $(".checkFilter > .title2 ").click(function () {
                $(this).next('.filterContent').slideToggle("slow");
            });
        });
    </script>

</div>


