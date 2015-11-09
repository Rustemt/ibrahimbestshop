<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="categorypro.ascx.vb" Inherits=".facebookcategorypro1" EnableViewState="False" %>
<%@ Register TagPrefix="cc1" Namespace="UNLV.IAP.WebControls" Assembly="DropDownCheckList" %>
<link href="<% =getThemePath() %>/css/promenu-facebook.css" type="text/css" rel="stylesheet" />



<div id="categorypro" class="module">
	<% if HeaderVisible then %>
        <div class="moduleTitle">
            <%=ModuleTitle%>
            <% if IsEditable then %>
            <a href="<%=EditNavigateUrl %>" class="moduleTitleEdit"><%=EditText %></a>
            <% end if %>
        </div>
    <% end if %>
    <div class="moduleContentPro">
        <div id="promenu" class="Categories">
            <%--Navigasyon Max 5 kırılım--%>
            <asp:Repeater ID="dlNav0" Visible="false" runat="server">
                <HeaderTemplate>
                    <ul class="sub">
                </HeaderTemplate>
                <ItemTemplate>
                    <li>
                        <a class="selected radius5" href='<%# string.format("https://" & BaseUrl.replace("http://","") & "/facebook/default.aspx?CatId={0}" ,container.dataitem("CatId").tostring) & iif (Request.QueryString("tabId") <> "","?tabId=" & Request.QueryString("tabId"),"" )%>'>
                            <%# Eval("CatName") %>
                        </a>
                        <asp:Repeater ID="dlNav1" runat="server" DataSource='<%# LoadSubNav(Eval("Lineage"), Eval("CatId"),1) %>'>
                            <HeaderTemplate>
                                <ul>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <li>
                                    <a class="selected radius5" href='<%# string.format("https://" & BaseUrl.replace("http://","") & "/facebook/default.aspx?CatId={0}" ,container.dataitem("CatId").tostring) & iif (Request.QueryString("tabId") <> "","?tabId=" & Request.QueryString("tabId"),"" )%>'>
                                        <%# Eval("CatName") %>
                                    </a>
                                    <asp:Repeater ID="dlNav2" runat="server" DataSource='<%# LoadSubNav(Eval("Lineage"),Eval("CatId"),2) %>'>
                                        <HeaderTemplate>
                                            <ul>
                                        </HeaderTemplate>
                                        <ItemTemplate>
                                            <li>
                                                <a class="selected radius5" href='<%# string.format("https://" & BaseUrl.replace("http://","") & "/facebook/default.aspx?CatId={0}" ,container.dataitem("CatId").tostring) & iif (Request.QueryString("tabId") <> "","?tabId=" & Request.QueryString("tabId"),"" )%>'>
                                                    <%# Eval("CatName") %>
                                                </a>
                                                <asp:Repeater ID="dlNav3" runat="server" DataSource='<%# LoadSubNav(Eval("Lineage"),Eval("CatId"),3) %>'>
                                                    <HeaderTemplate>
                                                        <ul>
                                                    </HeaderTemplate>
                                                    <ItemTemplate>
                                                        <li>
                                                            <a class="selected radius5" href='<%# string.format("https://" & BaseUrl.replace("http://","") & "/facebook/default.aspx?CatId={0}" ,container.dataitem("CatId").tostring) & iif (Request.QueryString("tabId") <> "","?tabId=" & Request.QueryString("tabId"),"" )%>'>
                                                                <%# Eval("CatName") %>
                                                            </a>
                                                            <asp:Repeater ID="dlNav4" runat="server" DataSource='<%# LoadSubNav(Eval("Lineage"),Eval("CatId"),4) %>'>
                                                                <HeaderTemplate>
                                                                    <ul>
                                                                </HeaderTemplate>
                                                                <ItemTemplate>
                                                                    <li>
                                                                        <a class="selected radius5" href='<%# string.format("https://" & BaseUrl.replace("http://","") & "/facebook/default.aspx?CatId={0}" ,container.dataitem("CatId").tostring) & iif (Request.QueryString("tabId") <> "","?tabId=" & Request.QueryString("tabId"),"" )%>'>
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
                        <a href='<%# string.format("https://" & BaseUrl.replace("http://","") & "/facebook/default.aspx?CatId={0}" ,container.dataitem("CatId").tostring) & iif (Request.QueryString("tabId") <> "","?tabId=" & Request.QueryString("tabId"),"" )%>'>
                            <%# Eval("CatName") %>
                        </a>
                        <asp:Repeater ID="dlSubCat1" runat="server" DataSource='<%# LoadSubCats(Eval("Lineage"),Eval("CatId"),1) %>'>
                            <HeaderTemplate>
                                <ul>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <li>
                                    <a class="" href='<%# string.format("https://" & BaseUrl.replace("http://","") & "/facebook/default.aspx?CatId={0}" ,container.dataitem("CatId").tostring) & iif (Request.QueryString("tabId") <> "","?tabId=" & Request.QueryString("tabId"),"" )%>'>
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
                        <a href='<%# string.format("https://" & BaseUrl.replace("http://","") & "/facebook/default.aspx?CatId={0}" ,container.dataitem("CatId").tostring) & iif (Request.QueryString("tabId") <> "","?tabId=" & Request.QueryString("tabId"),"" )%>'>
                            <%# Eval("CatName") %>
                        </a>                
                        <div class="sub radius5" runat="server" visible='<%# iif(Eval("ChildCount")>0,"True","False") %>' >
                        <span class="subTitle radius5"><%# Eval("CatName") %></span>
                        <asp:Repeater ID="dlMainCat1" runat="server" DataSource='<%# LoadMainSubCats(Eval("Lineage"),Eval("CatId"),1) %>'>
                            <HeaderTemplate>
                                <div id="sub-left">
                                <ul class="s_categories">
                            </HeaderTemplate>
                            <ItemTemplate>
                                <li>
                                    <a class="" href='<%# string.format("https://" & BaseUrl.replace("http://","") & "/facebook/default.aspx?CatId={0}" ,container.dataitem("CatId").tostring) & iif (Request.QueryString("tabId") <> "","?tabId=" & Request.QueryString("tabId"),"" )%>'>
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
                                <a title="" href="<%# string.format("https://" & BaseUrl.replace("http://","") & "/facebook/default.aspx?CatId={0}" ,container.dataitem("CatId").tostring) & iif (Request.QueryString("tabId") <> "","?tabId=" & Request.QueryString("tabId"),"" )%>">
                                <span id="category-img">
                                <img alt="" src='<%# "/store/makethumb.aspx?file=../../" + Eval("CatImg") + "&intSize=70" %>' />
                                </span>
                                <span id="category-title"><%# Eval("CatName") %></span>
                                </a>
                                </li>
                            </ItemTemplate>
                            <FooterTemplate>
                            </ul></div></FooterTemplate>
                        </asp:Repeater>                
                        </div>
                    </li>
                </ItemTemplate>
                <FooterTemplate></ul></FooterTemplate>
            </asp:Repeater>
            

            
             <%--Seçimler --%>
             <%--Seçili Kampanyalar  --%>  
             <p class="title2" style='display:<%=iif(lblCloseTypes.visible,"Block","None")%>'>
            <asp:label ID="lblCloseTypes" Visible="false" runat="server"><b><%=GetGlobalResourceObject("lang", "FilterOnly")%></b></asp:label><a id="lnkCloseTypes" class="remove" runat="server" href="#" Visible="false" ><%=GetGlobalResourceObject("lang", "FilterRemove")%></a>
             <cc1:DropDownCheckList ID="ddlSelectedTypes" DropDownMode="Inline" Visible="false" runat="server" Separator="," DisplayTextWidth="186" Width="100%" CheckListCssClass="checklist" RepeatColumns="1" RepeatDirection="Horizontal" DisplayBoxCssStyle="border: 1px solid #ebeaea; cursor: pointer; background-color: white;" CheckListCssStyle="border: 1px solid #ebeaea; padding: 4px; background-color: #FFFFFF;" DropImageSrc="/images/dn.gif" OnButtonClick="DisplayTypeCheckedItems" DisplayTextPaddingBottom="2" DisplayTextPaddingTop="2" DisplayTextList="Labels">
            </cc1:DropDownCheckList>
            </p>
            <%--Seçili Kampanyalar Sonu--%>
            
            <%--Seçili Markalar    --%> 
            <p class="title2" style='display:<%=iif(lblCloseMarks.visible,"Block","None")%>'>
            <asp:label ID="lblCloseMarks" Visible="false" runat="server"><b><%=GetGlobalResourceObject("lang", "FilterMarks")%></b></asp:label><a id="lnkCloseMarks" class="remove" runat="server" href="#" Visible="false" ><%=GetGlobalResourceObject("lang", "FilterRemove")%></a>
             <cc1:DropDownCheckList ID="ddlSelectedMarks" DropDownMode="Inline" Visible="false" runat="server" Separator="," DisplayTextWidth="186" Width="100%" CheckListCssClass="checklist" RepeatColumns="1" RepeatDirection="Horizontal" DisplayBoxCssStyle="border: 1px solid #ebeaea; cursor: pointer; background-color: white;" CheckListCssStyle="border: 1px solid #ebeaea; padding: 4px; background-color: #FFFFFF;" DropImageSrc="/images/dn.gif" OnButtonClick="DisplayMarkCheckedItems" DisplayTextPaddingBottom="2" DisplayTextPaddingTop="2" DisplayTextList="Labels">
            </cc1:DropDownCheckList>
            </p>
            <%--Seçili Markalar Sonu--%>
            
             <%--Seçili Fiyatlar--%>  
             <p class="title2" style='display:<%=iif(lblClosePrices.visible,"Block","None")%>'>
            <asp:label ID="lblClosePrices" Visible="false" runat="server"><b><%=GetGlobalResourceObject("lang", "FilterPriceRange")%></b></asp:label><a id="lnkClosePrices" class="remove" runat="server" href="#" Visible="false" ><%=GetGlobalResourceObject("lang", "FilterRemove")%></a>
             <cc1:DropDownCheckList ID="ddlSelectedPrices" DropDownMode="Inline" Visible="false" runat="server" Separator="," DisplayTextWidth="186" Width="100%" CheckListCssClass="checklist" RepeatColumns="1" RepeatDirection="Horizontal" DisplayBoxCssStyle="border: 1px solid #ebeaea; cursor: pointer; background-color: white;" CheckListCssStyle="border: 1px solid #ebeaea; padding: 4px; background-color: #FFFFFF;" DropImageSrc="/images/dn.gif" OnButtonClick="DisplayPriceCheckedItems" DisplayTextPaddingBottom="2" DisplayTextPaddingTop="2" DisplayTextList="Labels">
            </cc1:DropDownCheckList>  
            </p>     
           <%--Seçili Fiyatlar Sonu--%>
            <%--Seçimler sonu--%>
            
            <%--Filtre--%>
            <%--Renk Filtre--%>
             
            <%--Renk Filtre Sonu --%>
                <%--Beden Filtre--%>
             
            <%--Beden Filtre Sonu --%>
            <%--Drop Filtre--%>
             
            <%--Drop Filtre Sonu --%>
            <%--Kampanyalar Filtre--%>
            <div id="divTypes" visible="false" runat="server" class="moduleBox">
            <asp:label ID="lblTypes" CssClass="title2" runat="server" Visible="false"><%=GetGlobalResourceObject("lang", "FilterOnly")%></asp:label> 
             <asp:Repeater ID="dlTypes" Visible="false" runat="server" >
                <HeaderTemplate><ul></HeaderTemplate>
                <ItemTemplate> <li>
                   <a href='<%# CreateTypePaging(Eval("TypeId"))%>'>
                            <%#Eval( "TypeName")%> (<%# Eval( "Count")%>)
                        </a> </li>
                </ItemTemplate>
                <FooterTemplate></ul></FooterTemplate>
            </asp:Repeater>     
            </div> 
            <%--Kampanyalar Filtre Sonu --%>
            
             <%--Markalar Filtre --%>
             <div id="divMarks" visible="false" runat="server" class="moduleBox">
               <asp:label ID="lblMarks" CssClass="title2" Visible="false" runat="server"><%=GetGlobalResourceObject("lang", "FilterMarks")%></asp:label> 
               <asp:Repeater ID="dlMarks" Visible="false" runat="server" >
                <HeaderTemplate><ul></HeaderTemplate>
                <ItemTemplate> <li>
                   <a href='<%# CreateMarkPaging(Eval("MarkId"))%>'>
                            <%#Eval( "MarkName")%> (<%# Eval( "Count")%>)
                        </a> </li>
                </ItemTemplate>
                <FooterTemplate></ul></FooterTemplate>
            </asp:Repeater>
            </div>
            <%--Markalar Filtre Sonu--%>
            
             <%--Fiyatlar Filtre--%>
             <div id="divPrices" visible="false" runat="server" class="moduleBox">
             <asp:label ID="lblPrices" CssClass="title2" Visible="false" runat="server"><%=GetGlobalResourceObject("lang", "FilterPriceRange")%></asp:label>  
             <asp:Repeater ID="dlPrices" Visible="false" runat="server" >
                <HeaderTemplate><ul></HeaderTemplate>
                <ItemTemplate> <li>
                   <a href='<%# CreatePricePaging(Eval("PriceId"))%>'>
                            <%#Eval( "PriceName")%> (<%# Eval( "Count")%>)
                        </a> </li>
                </ItemTemplate>
                <FooterTemplate></ul></FooterTemplate>
            </asp:Repeater>
            </div>
            <%--Fiyatlar Filtre Sonu--%>
             <%--Filtre Sonu--%>
        </div>
    </div>
</div>
