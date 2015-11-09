<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.categorypro" EnableViewState="False" CodeBehind="categorypro.ascx.vb" %>
<%@ Register TagPrefix="cc1" Namespace="UNLV.IAP.WebControls" Assembly="DropDownCheckList" %>

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
            <%--Navigasyon Max 5 kýrýlým--%>
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
            <%--Alt Kategoriler Sýnýrsýz Kýrýlým--%>
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
            <%--Renk  --%>
            <p class="title2" style='display: <%=iif(lblCloseSize0.visible,"Block","None")%>'>
                <asp:Label ID="lblCloseSize0" Visible="false" runat="server"><b><%=Size0Name%></b></asp:Label><a id="lnkCloseSize0" class="remove" runat="server" href="#" visible="false"><%=GetGlobalResourceObject("lang", "FilterRemove")%></a>
                <cc1:DropDownCheckList ID="ddlSelectedSize0" DropDownMode="Inline" Visible="false" runat="server" Separator="," DisplayTextWidth="186" Width="100%" CheckListCssClass="checklist" RepeatColumns="1" RepeatDirection="Horizontal" DisplayBoxCssStyle="border: 1px solid #ebeaea; cursor: pointer; background-color: white;" CheckListCssStyle="border: 1px solid #ebeaea; padding: 4px; background-color: #FFFFFF;" DropImageSrc="/images/dn.gif" OnButtonClick="DisplaySize0CheckedItems" DisplayTextPaddingBottom="2" DisplayTextPaddingTop="2" DisplayTextList="Labels">
                </cc1:DropDownCheckList>
            </p>
            <%--Renk Sonu--%>
            <%--Beden  --%>
            <p class="title2" style='display: <%=iif(lblCloseSize1.visible,"Block","None")%>'>
                <asp:Label ID="lblCloseSize1" Visible="false" runat="server"><b><%=Size1Name%></b></asp:Label><a id="lnkCloseSize1" class="remove" runat="server" href="#" visible="false"><%=GetGlobalResourceObject("lang", "FilterRemove")%></a>
                <cc1:DropDownCheckList ID="ddlSelectedSize1" DropDownMode="Inline" Visible="false" runat="server" Separator="," DisplayTextWidth="186" Width="100%" CheckListCssClass="checklist" RepeatColumns="1" RepeatDirection="Horizontal" DisplayBoxCssStyle="border: 1px solid #ebeaea; cursor: pointer; background-color: white;" CheckListCssStyle="border: 1px solid #ebeaea; padding: 4px; background-color: #FFFFFF;" DropImageSrc="/images/dn.gif" OnButtonClick="DisplaySize1CheckedItems" DisplayTextPaddingBottom="2" DisplayTextPaddingTop="2" DisplayTextList="Labels">
                </cc1:DropDownCheckList>
            </p>
            <%--Beden Sonu--%>

            <%--Drop  --%>
            <p class="title2" style='display: <%=iif(lblCloseSize2.visible,"Block","None")%>'>
                <asp:Label ID="lblCloseSize2" Visible="false" runat="server"><b><%=Size2Name%></b></asp:Label><a id="lnkCloseSize2" class="remove" runat="server" href="#" visible="false"><%=GetGlobalResourceObject("lang", "FilterRemove")%></a>
                <cc1:DropDownCheckList ID="ddlSelectedSize2" DropDownMode="Inline" Visible="false" runat="server" Separator="," DisplayTextWidth="186" Width="100%" CheckListCssClass="checklist" RepeatColumns="1" RepeatDirection="Horizontal" DisplayBoxCssStyle="border: 1px solid #ebeaea; cursor: pointer; background-color: white;" CheckListCssStyle="border: 1px solid #ebeaea; padding: 4px; background-color: #FFFFFF;" DropImageSrc="/images/dn.gif" OnButtonClick="DisplaySize2CheckedItems" DisplayTextPaddingBottom="2" DisplayTextPaddingTop="2" DisplayTextList="Labels">
                </cc1:DropDownCheckList>
            </p>
            <%--Drop Sonu--%>

            <%--Seçimler --%>
            <%--Seçili Kampanyalar  --%>
            <p class="title2" style='display: <%=iif(lblCloseTypes.visible,"Block","None")%>'>
                <asp:Label ID="lblCloseTypes" Visible="false" runat="server"><b><%=GetGlobalResourceObject("lang", "FilterOnly")%></b></asp:Label><a id="lnkCloseTypes" class="remove" runat="server" href="#" visible="false"><%=GetGlobalResourceObject("lang", "FilterRemove")%></a>
                <cc1:DropDownCheckList ID="ddlSelectedTypes" DropDownMode="Inline" Visible="false" runat="server" Separator="," DisplayTextWidth="186" Width="100%" CheckListCssClass="checklist" RepeatColumns="1" RepeatDirection="Horizontal" DisplayBoxCssStyle="border: 1px solid #ebeaea; cursor: pointer; background-color: white;" CheckListCssStyle="border: 1px solid #ebeaea; padding: 4px; background-color: #FFFFFF;" DropImageSrc="/images/dn.gif" OnButtonClick="DisplayTypeCheckedItems" DisplayTextPaddingBottom="2" DisplayTextPaddingTop="2" DisplayTextList="Labels">
                </cc1:DropDownCheckList>
            </p>
            <%--Seçili Kampanyalar Sonu--%>

            <%--Seçili Markalar    --%>
            <p class="title2" style='display: <%=iif(lblCloseMarks.visible,"Block","None")%>'>
                <asp:Label ID="lblCloseMarks" Visible="false" runat="server"><b><%=GetGlobalResourceObject("lang", "FilterMarks")%></b></asp:Label><a id="lnkCloseMarks" class="remove" runat="server" href="#" visible="false"><%=GetGlobalResourceObject("lang", "FilterRemove")%></a>
                <cc1:DropDownCheckList ID="ddlSelectedMarks" DropDownMode="Inline" Visible="false" runat="server" Separator="," DisplayTextWidth="186" Width="100%" CheckListCssClass="checklist" RepeatColumns="1" RepeatDirection="Horizontal" DisplayBoxCssStyle="border: 1px solid #ebeaea; cursor: pointer; background-color: white;" CheckListCssStyle="border: 1px solid #ebeaea; padding: 4px; background-color: #FFFFFF;" DropImageSrc="/images/dn.gif" OnButtonClick="DisplayMarkCheckedItems" DisplayTextPaddingBottom="2" DisplayTextPaddingTop="2" DisplayTextList="Labels">
                </cc1:DropDownCheckList>
            </p>
            <%--Seçili Markalar Sonu--%>

            <%--Seçili Fiyatlar--%>
            <p class="title2" style='display: <%=iif(lblClosePrices.visible,"Block","None")%>'>
                <asp:Label ID="lblClosePrices" Visible="false" runat="server"><b><%=GetGlobalResourceObject("lang", "FilterPriceRange")%></b></asp:Label><a id="lnkClosePrices" class="remove" runat="server" href="#" visible="false"><%=GetGlobalResourceObject("lang", "FilterRemove")%></a>
                <cc1:DropDownCheckList ID="ddlSelectedPrices" DropDownMode="Inline" Visible="false" runat="server" Separator="," DisplayTextWidth="186" Width="100%" CheckListCssClass="checklist" RepeatColumns="1" RepeatDirection="Horizontal" DisplayBoxCssStyle="border: 1px solid #ebeaea; cursor: pointer; background-color: white;" CheckListCssStyle="border: 1px solid #ebeaea; padding: 4px; background-color: #FFFFFF;" DropImageSrc="/images/dn.gif" OnButtonClick="DisplayPriceCheckedItems" DisplayTextPaddingBottom="2" DisplayTextPaddingTop="2" DisplayTextList="Labels">
                </cc1:DropDownCheckList>
            </p>
            <%--Seçili Fiyatlar Sonu--%>
            <%--Seçimler sonu--%>

            <%--Filtre--%>
            <%--Renk Filtre--%>
            <div id="divSize0" visible="false" runat="server" class="moduleBox">
                <asp:Label ID="lblSize0" CssClass="title2" runat="server" Visible="false"><%=Size0Name%></asp:Label>
                <asp:Repeater ID="dlSize0" Visible="false" runat="server">
                    <HeaderTemplate>
                        <ul>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <li>
                            <a href='<%# CreateSize0Paging(Eval("Size0ValueId"))%>'>
                                <%#Eval( "Size0Name")%> <%--(<%# Eval( "Count")%>)--%>
                                <img alt="resim" src='<%# Eval("Size0Path") %>' />
                            </a></li>
                    </ItemTemplate>
                    <FooterTemplate></ul></FooterTemplate>
                </asp:Repeater>
            </div>
            <%--Renk Filtre Sonu --%>
            <%--Beden Filtre--%>
            <div id="divSize1" visible="false" runat="server" class="moduleBox">
                <asp:Label ID="lblSize1" CssClass="title2" runat="server" Visible="false"><%=Size1Name%></asp:Label>
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
            <div id="divSize2" visible="false" runat="server" class="moduleBox">
                <asp:Label ID="lblSize2" CssClass="title2" runat="server" Visible="false"><%=Size2Name%></asp:Label>
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
            <div id="divTypes" visible="false" runat="server" class="moduleBox">
                <asp:Label ID="lblTypes" CssClass="title2" runat="server" Visible="false"><%=GetGlobalResourceObject("lang", "FilterOnly")%></asp:Label>
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
            <div id="divMarks" visible="false" runat="server" class="moduleBox">
                <asp:Label ID="lblMarks" CssClass="title2" Visible="false" runat="server"><%=GetGlobalResourceObject("lang", "FilterMarks")%></asp:Label>
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
            <div id="divPrices" visible="false" runat="server" class="moduleBox">
                <asp:Label ID="lblPrices" CssClass="title2" Visible="false" runat="server"><%=GetGlobalResourceObject("lang", "FilterPriceRange")%></asp:Label>
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
        </div>
    </div>
</div>

