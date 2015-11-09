<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.categorypro" EnableViewState="False" CodeBehind="categorypro.ascx.vb" %>

<%@ Register TagPrefix="cc1" Namespace="UNLV.IAP.WebControls" Assembly="DropDownCheckList" %>

<link href="<% =getThemePath() %>/css/promenu.css" type="text/css" rel="stylesheet" />
<div id="categorypro" class="module">
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
        <div id="promenu" class="Categories">
            <%--Navigasyon Max 5 kýrýlým--%>
            <asp:Repeater ID="dlNav0" Visible="false" runat="server">
                <HeaderTemplate>
                    <div class="module_box">
                        <ul class="sub">
                </HeaderTemplate>
                <ItemTemplate>
                    <li>
                        <a class="selected" href='<%# string.format(BaseUrl & "{0}" & ".aspx",Eval("CatUrl").tostring.Remove(Eval("CatUrl").tostring.Length - 1, 1) ) %>'>
                            <%# Eval("CatName") %>
                        </a>
                        <asp:Repeater ID="dlNav1" runat="server" DataSource='<%# LoadSubNav(Eval("Lineage"), Eval("CatId"),1) %>'>
                            <HeaderTemplate>
                                <ul>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <li><span class="arrowreturn"></span>
                                    <a class="selected" href='<%# string.format(BaseUrl & "{0}" & ".aspx",Eval("CatUrl").tostring.Remove(Eval("CatUrl").tostring.Length - 1, 1) ) %>'>
                                        <%# Eval("CatName") %>
                                    </a>
                                    <asp:Repeater ID="dlNav2" runat="server" DataSource='<%# LoadSubNav(Eval("Lineage"),Eval("CatId"),2) %>'>
                                        <HeaderTemplate>
                                            <ul>
                                        </HeaderTemplate>
                                        <ItemTemplate>
                                            <li><span class="arrowreturn"></span>
                                                <a class="selected" href='<%# string.format(BaseUrl & "{0}" & ".aspx",Eval("CatUrl").tostring.Remove(Eval("CatUrl").tostring.Length - 1, 1) )  %>'>
                                                    <%# Eval("CatName") %>
                                                </a>
                                                <asp:Repeater ID="dlNav3" runat="server" DataSource='<%# LoadSubNav(Eval("Lineage"),Eval("CatId"),3) %>'>
                                                    <HeaderTemplate>
                                                        <ul>
                                                    </HeaderTemplate>
                                                    <ItemTemplate>
                                                        <li><span class="arrowreturn"></span>
                                                            <a class="selected" href='<%# string.format(BaseUrl & "{0}" & ".aspx",Eval("CatUrl").tostring.Remove(Eval("CatUrl").tostring.Length - 1, 1) ) & iif (Request.QueryString("tabId") <> "","?tabId=" & Request.QueryString("tabId"),"" ) %>'>
                                                                <%# Eval("CatName") %>
                                                            </a>
                                                            <asp:Repeater ID="dlNav4" runat="server" DataSource='<%# LoadSubNav(Eval("Lineage"),Eval("CatId"),4) %>'>
                                                                <HeaderTemplate>
                                                                    <ul>
                                                                </HeaderTemplate>
                                                                <ItemTemplate>
                                                                    <li><span class="arrowreturn"></span>
                                                                        <a class="selected" href='<%# string.format(BaseUrl & "{0}" & ".aspx",Eval("CatUrl").tostring.Remove(Eval("CatUrl").tostring.Length - 1, 1) ) & iif (Request.QueryString("tabId") <> "","?tabId=" & Request.QueryString("tabId"),"" ) %>'>
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
                <FooterTemplate></ul></div></FooterTemplate>
            </asp:Repeater>
            <%-- Tekstil --%>
            <%--Renk  --%>
            <p style='display: <%=iif(lblCloseSize0.visible,"Block","None")%>'>
                <asp:Label ID="lblCloseSize0" Visible="false" runat="server"><b><%= Size0Name %></b></asp:Label><a id="lnkCloseSize0" class="remove" runat="server" href="#" visible="false"><%=GetGlobalResourceObject("lang", "FilterRemove")%></a>
                <cc1:DropDownCheckList ID="ddlSelectedSize0" DropDownMode="Inline" Visible="false" runat="server" Separator="," DisplayTextWidth="186" Width="100%" CheckListCssClass="checklist" RepeatColumns="1" RepeatDirection="Horizontal" DisplayBoxCssStyle="border: 1px solid; cursor: pointer; background-color: white;" CheckListCssStyle="border: 1px solid; padding: 4px; background-color: #FFFFFF;" DropImageSrc="/images/dn.gif" OnButtonClick="DisplaySize0CheckedItems" DisplayTextPaddingBottom="2" DisplayTextPaddingTop="2" DisplayTextList="Labels">
                </cc1:DropDownCheckList>
            </p>
            <%--Renk Sonu--%>
            <%--Beden  --%>
            <p style='display: <%=iif(lblCloseSize1.visible,"Block","None")%>'>
                <asp:Label ID="lblCloseSize1" Visible="false" runat="server"><b><%=Size1Name%></b></asp:Label><a id="lnkCloseSize1" class="remove" runat="server" href="#" visible="false"><%=GetGlobalResourceObject("lang", "FilterRemove")%></a>
                <cc1:DropDownCheckList ID="ddlSelectedSize1" DropDownMode="Inline" Visible="false" runat="server" Separator="," DisplayTextWidth="186" Width="100%" CheckListCssClass="checklist" RepeatColumns="1" RepeatDirection="Horizontal" DisplayBoxCssStyle="border: 1px solid; cursor: pointer; background-color: white;" CheckListCssStyle="border: 1px solid; padding: 4px; background-color: #FFFFFF;" DropImageSrc="/images/dn.gif" OnButtonClick="DisplaySize1CheckedItems" DisplayTextPaddingBottom="2" DisplayTextPaddingTop="2" DisplayTextList="Labels">
                </cc1:DropDownCheckList>
            </p>
            <%--Beden Sonu--%>

            <%--Drop  --%>
            <p style='display: <%=iif(lblCloseSize2.visible,"Block","None")%>'>
                <asp:Label ID="lblCloseSize2" Visible="false" runat="server"><b><%=Size2Name%></b></asp:Label><a id="lnkCloseSize2" class="remove" runat="server" href="#" visible="false"><%=GetGlobalResourceObject("lang", "FilterRemove")%></a>
                <cc1:DropDownCheckList ID="ddlSelectedSize2" DropDownMode="Inline" Visible="false" runat="server" Separator="," DisplayTextWidth="186" Width="100%" CheckListCssClass="checklist" RepeatColumns="1" RepeatDirection="Horizontal" DisplayBoxCssStyle="border: 1px solid; cursor: pointer; background-color: white;" CheckListCssStyle="border: 1px solid; padding: 4px; background-color: #FFFFFF;" DropImageSrc="/images/dn.gif" OnButtonClick="DisplaySize2CheckedItems" DisplayTextPaddingBottom="2" DisplayTextPaddingTop="2" DisplayTextList="Labels">
                </cc1:DropDownCheckList>
            </p>
            <%--Drop Sonu--%>

            <%--Seçimler --%>
            <%--Seçili Kampanyalar  --%>
            <p style='display: <%=iif(lblCloseTypes.visible,"Block","None")%>'>
                <asp:Label ID="lblCloseTypes" Visible="false" runat="server"><b><%=GetGlobalResourceObject("lang", "FilterOnly")%></b></asp:Label><a id="lnkCloseTypes" class="remove" runat="server" href="#" visible="false"><%=GetGlobalResourceObject("lang", "FilterRemove")%></a>
                <cc1:DropDownCheckList ID="ddlSelectedTypes" DropDownMode="Inline" Visible="false" runat="server" Separator="," DisplayTextWidth="186" Width="100%" CheckListCssClass="checklist" RepeatColumns="1" RepeatDirection="Horizontal" DisplayBoxCssStyle="border: 1px solid; cursor: pointer; background-color: white;" CheckListCssStyle="border: 1px solid; padding: 4px; background-color: #FFFFFF;" DropImageSrc="/images/dn.gif" OnButtonClick="DisplayTypeCheckedItems" DisplayTextPaddingBottom="2" DisplayTextPaddingTop="2" DisplayTextList="Labels">
                </cc1:DropDownCheckList>
            </p>
            <%--Seçili Kampanyalar Sonu--%>

            <%--Seçili Markalar    --%>
            <p style='display: <%=iif(lblCloseMarks.visible,"Block","None")%>'>
                <asp:Label ID="lblCloseMarks" Visible="false" runat="server"><b><%=GetGlobalResourceObject("lang", "FilterMarks")%></b></asp:Label><a id="lnkCloseMarks" class="remove" runat="server" href="#" visible="false"><%=GetGlobalResourceObject("lang", "FilterRemove")%></a>
                <cc1:DropDownCheckList ID="ddlSelectedMarks" DropDownMode="Inline" Visible="false" runat="server" Separator="," DisplayTextWidth="186" Width="100%" CheckListCssClass="checklist" RepeatColumns="1" RepeatDirection="Horizontal" DisplayBoxCssStyle="border: 1px solid; cursor: pointer; background-color: white;" CheckListCssStyle="border: 1px solid; padding: 4px; background-color: #FFFFFF;" DropImageSrc="/images/dn.gif" OnButtonClick="DisplayMarkCheckedItems" DisplayTextPaddingBottom="2" DisplayTextPaddingTop="2" DisplayTextList="Labels">
                </cc1:DropDownCheckList>
            </p>
            <%--Seçili Markalar Sonu--%>

            <%--Seçili Fiyatlar--%>
            <p style='display: <%=iif(lblClosePrices.visible,"Block","None")%>'>
                <asp:Label ID="lblClosePrices" Visible="false" runat="server"><b><%=GetGlobalResourceObject("lang", "FilterPriceRange")%></b></asp:Label><a id="lnkClosePrices" class="remove" runat="server" href="#" visible="false"><%=GetGlobalResourceObject("lang", "FilterRemove")%></a>
                <cc1:DropDownCheckList ID="ddlSelectedPrices" DropDownMode="Inline" Visible="false" runat="server" Separator="," DisplayTextWidth="186" Width="100%" CheckListCssClass="checklist" RepeatColumns="1" RepeatDirection="Horizontal" DisplayBoxCssStyle="border: 1px solid; cursor: pointer; background-color: white;" CheckListCssStyle="border: 1px solid; padding: 4px; background-color: #FFFFFF;" DropImageSrc="/images/dn.gif" OnButtonClick="DisplayPriceCheckedItems" DisplayTextPaddingBottom="2" DisplayTextPaddingTop="2" DisplayTextList="Labels">
                </cc1:DropDownCheckList>
            </p>
            <%--Seçili Fiyatlar Sonu--%>
            <%--Seçimler sonu--%>

            <%--Filtre--%>
            <%--Renk Filtre--%>
            <div id="divSize0" visible="false" runat="server" class="module_box">
                <asp:Label ID="lblSize0" CssClass="button title" runat="server" Visible="false"><%=Size0Name%></asp:Label>
                <asp:Repeater ID="dlSize0" Visible="false" runat="server">
                    <HeaderTemplate>
                        <ul>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <li>
                            <a href='<%# CreateSize0Paging(Eval("Size0ValueId"))%>'>
                                <%#Eval( "Size0Name")%><%-- (<%# Eval( "Count")%>)--%>
                            </a></li>
                    </ItemTemplate>
                    <FooterTemplate></ul></FooterTemplate>
                </asp:Repeater>
            </div>
            <%--Renk Filtre Sonu --%>
            <%--Beden Filtre--%>
            <div id="divSize1" visible="false" runat="server" class="module_box">
                <asp:Label ID="lblSize1" CssClass="button title" runat="server" Visible="false"><%=Size1Name%></asp:Label>
                <asp:Repeater ID="dlSize1" Visible="false" runat="server">
                    <HeaderTemplate>
                        <ul>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <li>
                            <a href='<%# CreateSize1Paging(Eval("Size1ValueId"))%>'>
                                <%#Eval( "Size1Name")%><%-- (<%# Eval( "Count")%>)--%>
                            </a></li>
                    </ItemTemplate>
                    <FooterTemplate></ul></FooterTemplate>
                </asp:Repeater>
            </div>
            <%--Beden Filtre Sonu --%>
            <%--Drop Filtre--%>
            <div id="divSize2" visible="false" runat="server" class="module_box">
                <asp:Label ID="lblSize2" CssClass="button title" runat="server" Visible="false"><%=Size2Name%></asp:Label>
                <asp:Repeater ID="dlSize2" Visible="false" runat="server">
                    <HeaderTemplate>
                        <ul>
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
            <div id="divTypes" visible="false" runat="server" class="module_box">
                <asp:Label ID="lblTypes" CssClass="button title" runat="server" Visible="false"><%=GetGlobalResourceObject("lang", "FilterOnly")%></asp:Label>
                <asp:Repeater ID="dlTypes" Visible="false" runat="server">
                    <HeaderTemplate>
                        <ul>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <li>
                            <a href='<%# CreateTypePaging(Eval("TypeId"))%>'>
                                <%#Eval( "TypeName")%> (<%# Eval( "Count")%>)
                            </a></li>
                    </ItemTemplate>
                    <FooterTemplate></ul></FooterTemplate>
                </asp:Repeater>
            </div>
            <%--Kampanyalar Filtre Sonu --%>

            <%--Markalar Filtre --%>
            <div id="divMarks" visible="false" runat="server" class="module_box">
                <asp:Label ID="lblMarks" CssClass="button title" Visible="false" runat="server"><%=GetGlobalResourceObject("lang", "FilterMarks")%></asp:Label>
                <asp:Repeater ID="dlMarks" Visible="false" runat="server">
                    <HeaderTemplate>
                        <ul>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <li>
                            <a href='<%# CreateMarkPaging(Eval("MarkId"))%>'>
                                <%#Eval( "MarkName")%> (<%# Eval( "Count")%>)
                            </a></li>
                    </ItemTemplate>
                    <FooterTemplate></ul></FooterTemplate>
                </asp:Repeater>
            </div>
            <%--Markalar Filtre Sonu--%>

            <%--Fiyatlar Filtre--%>
            <div id="divPrices" visible="false" runat="server" class="module_box">
                <asp:Label ID="lblPrices" CssClass="button title" Visible="false" runat="server"><%=GetGlobalResourceObject("lang", "FilterPriceRange")%></asp:Label>
                <asp:Repeater ID="dlPrices" Visible="false" runat="server">
                    <HeaderTemplate>
                        <ul>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <li>
                            <a href='<%# CreatePricePaging(Eval("PriceId"))%>'>
                                <%#Eval( "PriceName")%> (<%# Eval( "Count")%>)
                            </a></li>
                    </ItemTemplate>
                    <FooterTemplate></ul></FooterTemplate>
                </asp:Repeater>
            </div>
            <%--Fiyatlar Filtre Sonu--%>
            <%--Filtre Sonu--%>
            <%--Alt Kategoriler Sýnýrsýz Kýrýlým--%>
            <asp:Repeater ID="dlSubCat0" Visible="false" runat="server">
                <HeaderTemplate>
                    <ul>
                </HeaderTemplate>
                <ItemTemplate>
                    <li class="submain">
                        <div>
                            <a href='<%# string.format(BaseUrl & "{0}" & ".aspx",Eval("CatUrl").tostring.Remove(Eval("CatUrl").tostring.Length - 1, 1) ) & iif (Request.QueryString("tabId") <> "","?tabId=" & Request.QueryString("tabId"),"" )%>'>
                                <%# Eval("CatName") %>
                            </a>
                            <asp:Repeater ID="dlSubCat1" runat="server" DataSource='<%# LoadSubCats(Eval("Lineage"),Eval("CatId"),1) %>'>
                                <HeaderTemplate>
                                    <ul>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <li>
                                        <a class="" href='<%# string.format(BaseUrl & "{0}" & ".aspx",Eval("CatUrl").tostring.Remove(Eval("CatUrl").tostring.Length - 1, 1) ) & iif (Request.QueryString("tabId") <> "","?tabId=" & Request.QueryString("tabId"),"" ) %>'>
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
                        <a href='<%# string.format(BaseUrl & "{0}" & ".aspx",Eval("CatUrl").tostring.Remove(Eval("CatUrl").tostring.Length - 1, 1) ) & iif (Request.QueryString("tabId") <> "","?tabId=" & Request.QueryString("tabId"),"" )%>'>
                            <%# Eval("CatName") %>
                        </a>
                        <div class="sub" runat="server" visible='<%# iif(Eval("ChildCount")>0,"True","False") %>'>
                            <span><b><%# Eval("CatName") %></b></span>
                            <asp:Repeater ID="dlMainCat1" runat="server" DataSource='<%# LoadMainSubCats(Eval("Lineage"),Eval("CatId"),1) %>'>
                                <HeaderTemplate>
                                    <div id="sub-left">
                                        <ul class="s_categories">
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <li>
                                        <a class="" href='<%# string.format(BaseUrl & "{0}" & ".aspx",Eval("CatUrl").tostring.Remove(Eval("CatUrl").tostring.Length - 1, 1) ) & iif (Request.QueryString("tabId") <> "","?tabId=" & Request.QueryString("tabId"),"" ) %>'>
                                            <%# Eval("CatName") %>
                                        </a>
                                    </li>
                                </ItemTemplate>
                                <FooterTemplate></ul></div></FooterTemplate>
                            </asp:Repeater>
                            <asp:Repeater ID="dlMainCat2" runat="server" DataSource='<%# LoadMainSubCatsRigth(Eval("Lineage"),Eval("CatId"),1) %>'>
                                <HeaderTemplate>
                                    <div id="sub-right">
                                        <ul class="s_categories_img">
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <li>
                                        <a title="" href="<%# string.format(BaseUrl & "{0}" & ".aspx",Eval("CatUrl").tostring.Remove(Eval("CatUrl").tostring.Length - 1, 1) ) & iif (Request.QueryString("tabId") <> "","?tabId=" & Request.QueryString("tabId"),"" ) %>">
                                            <span id="category-img">
                                                <img alt="" src='<%# "/store/makethumb.aspx?file=../../" + Eval("CatImg") + "&intSize=70" %>' />
                                            </span>
                                            <span id="category-title"><%# Eval("CatName") %></span>
                                        </a>
                                    </li>
                                </ItemTemplate>
                                <FooterTemplate>
                                    <div class="clear"></div>
                                    </ul></div>
                                </FooterTemplate>
                            </asp:Repeater>
                        </div>
                        <div class="clear"></div>
                    </li>
                </ItemTemplate>
                <FooterTemplate></ul></FooterTemplate>
            </asp:Repeater>
        </div>
    </div>
</div>

