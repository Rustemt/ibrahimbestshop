<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.PortalModuleControl" EnableViewState="False" %>
<%@ Import Namespace="System.Data.SqlClient" %>

<script type="text/javascript" src="<%=getThemePath() %>/js/jquery.jcarousel.min.js"></script>
<div id="home-urunler" class="module">
    <% if HeaderVisible then %>
        <div class="moduleTitle">
            <%=ModuleTitle%>
            <% if IsEditable then %>
            <a href="<%=EditNavigateUrl %>" class="moduleTitleEdit"><%=EditText %></a>
            <% end if %>
        </div>
    <% end if %>
	<div class="moduleContent">
        <asp:Repeater ID="dlCatTopProducts" runat="server">
            <HeaderTemplate>
                <ul id="mycarousel<%=ModuleId%>" class="jcarousel-skin-tango">
            </HeaderTemplate>
            <FooterTemplate>
                <div class="clear"></div>
                </ul>
            </FooterTemplate>
            <ItemTemplate>
                <li id="product">
                    <a href="<%# string.format(BaseUrl & "{0}" & ".aspx",container.dataitem("ProductUrl").tostring.Remove(container.dataitem("ProductUrl").tostring.Length - 1, 1)) %>">
                        <span class="image"><img src="<%# BaseUrl & "/store/makethumb.aspx?file=" & container.dataitem("Path")%> &amp;intSize=123" /></span>
                        <span class="name"><%# container.dataitem("ProductName") %></span>
                        <% If (ConfigurationManager.AppSettings("OnlyUsersCanSeePrice") = "True" And HttpContext.Current.User.Identity.IsAuthenticated()) Or ConfigurationManager.AppSettings("OnlyUsersCanSeePrice") <> "True" Then%>
                       <div id="homelabels">
                            <div id="IndirimliUrun" style="display: <%# iif((eval("IndirimliUrun")) and (ChkNullToDecimal(Eval("PiyasaFiyati")) > 0) ,"block;","none;") %>">%<%#CInt(GetPercent(ChkNullToDecimal(Eval("PiyasaFiyati")),ChkNullToDecimal(Eval("SatisFiyati")))) %><span><%=GetGlobalResourceObject("lang", "Discount")%></span></div>
                            <%--<div id="FirsatUrunu" style="display: <%# iif(eval("FirsatUrunu"),"block;","none;") %>"></div>
                            <div id="HizliKargo" style="display: <%# iif(eval("HizliKargo"),"block;","none;") %>"></div>
                            <div id="EnUcuzUrun" style="display: <%# iif(eval("EnUcuzUrun"),"block;","none;") %>"></div>
                            <div id="AyniGunTeslim" style="display: <%# iif(eval("AyniGunTeslim"),"block;","none;") %>"></div>
                            <div id="OzelUrun" style="display: <%# iif(eval("OzelUrun"),"block;","none;") %>"></div>
                            <div id="SinirliSayidaUrun" style="display: <%# iif(eval("SinirliSayidaUrun"),"block;","none;") %>"></div>
                            <div id="YeniUrun" style="display: <%# iif(eval("YeniUrun"),"block;","none;") %>"></div>
                            <div id="SokFiyatliUrun" style="display: <%# iif(eval("SokFiyatliUrun"),"block;","none;") %>"></div>
                            <div id="HediyeliUrun" style="display: <%# iif(eval("HediyeliUrun"),"block;","none;") %>"></div>
                            --%>
                            <div class="clear"></div>
                        </div>
                        <span class="price">
                        	<span class="oldPrice"><asp:Label ID="Label14" runat="server"><%#formatCurTL(CalcKdvDahil(Container.DataItem("PiyasaFiyati") * Container.DataItem("RateP"), Container.DataItem("KdvRate")))%></asp:Label></span>
							<span class="productPrice"><%#formatCurTL(CalcKdvDahil(Container.DataItem("SatisFiyati1") * Container.DataItem("Rate1"), Container.DataItem("KdvRate")))%></span>
                        </span>
                        <%--bu label larý kullanmak için yorum satýrlarýný açmanýz yeterli--%>
                        <%-- Kdv Haric--%>
    
                        <%--  <p style="display: <%# iif(ChkNullToDecimal(Eval("PiyasaFiyati")) > 0,"block;","none;") %>">
                            <asp:Label ID="Label415" runat="server">Piyasa Fiyatý=</asp:Label>
                            <asp:Label ID="Label8" runat="server"><%#formatCurDoviz(Container.DataItem("PiyasaFiyati")) + " " + Container.DataItem("CurrencyP") + GetGlobalResourceObject("lang", "PlusTax")%></asp:Label>
                        </p>
    
                        <p style="display: <%# iif(ChkNullToDecimal(Eval("SatisFiyati3")) > 0,"block;","none;") %>">
                            <asp:Label ID="lblFiyat3" runat="server">Satýþ Fiyatý3=</asp:Label>
                            <asp:Label ID="lblFiyat3b" runat="server"><%#formatCurDoviz(Container.DataItem("SatisFiyati3")) + " " + Container.DataItem("Currency3") + GetGlobalResourceObject("lang", "PlusTax")%></asp:Label>
                        </p>
    
                        <p style="display: <%# iif(ChkNullToDecimal(Eval("SatisFiyati2")) > 0,"block;","none;") %>">
                            <asp:Label ID="lblFiyat2" runat="server">Satýþ Fiyatý2=</asp:Label>
                            <asp:Label ID="lblFiyat2b" runat="server"><%#formatCurDoviz(Container.DataItem("SatisFiyati2")) + " " + Container.DataItem("Currency2") + GetGlobalResourceObject("lang", "PlusTax")%></asp:Label>
                        </p>
    
                        <p style="display: <%# iif(ChkNullToDecimal(Eval("SatisFiyati1")) > 0,"block;","none;") %>">
                            <asp:Label ID="lblFiyat1" runat="server">Satýþ Fiyatý1=</asp:Label>
                            <asp:Label ID="lblFiyat1b" runat="server"><%#formatCurDoviz(Container.DataItem("SatisFiyati1")) + " " + Container.DataItem("Currency1") + GetGlobalResourceObject("lang", "PlusTax")%></asp:Label>
                        </p>
    
                        <p>
                            <asp:Label ID="lblFiyatH" runat="server">Havale Fiyatý</asp:Label>
                            <asp:Label ID="lblFiyatbH" runat="server"><%#formatCurDoviz(Container.DataItem("SatisFiyati0")) + " " + Container.DataItem("CurrencyName") + GetGlobalResourceObject("lang", "PlusTax")%></asp:Label>
                        </p>--%>
    
                        <%-- Kdv Dahil--%>
                        <%-- <p style="display: <%# iif(ChkNullToDecimal(Eval("PiyasaFiyati")) > 0,"block;","none;") %>">
                            <asp:Label ID="Label12" runat="server">Kdv Dahil Piyasa Fiyatý=</asp:Label>
                            <asp:Label ID="Label14" runat="server"><%#formatCurTL(CalcKdvDahil(Container.DataItem("PiyasaFiyati") * Container.DataItem("RateP"), Container.DataItem("KdvRate")))%></asp:Label>
                        </p>
    
                        <p style="display: <%# iif(ChkNullToDecimal(Eval("SatisFiyati3")) > 0,"block;","none;") %>">
                            <asp:Label ID="lblFiyat3Kdv" runat="server">Kdv Dahil Satýþ Fiyatý3=</asp:Label>
                            <asp:Label ID="lblFiyat3Kdvb" runat="server"><%#formatCurTL(CalcKdvDahil(Container.DataItem("SatisFiyati3") * Container.DataItem("Rate3"), Container.DataItem("KdvRate")))%></asp:Label>
                        </p>
    
                        <p style="display: <%# iif(ChkNullToDecimal(Eval("SatisFiyati2")) > 0,"block;","none;") %>">
                            <asp:Label ID="lblFiyat2Kdv" runat="server">Kdv Dahil Satýþ Fiyatý2=</asp:Label>
                            <asp:Label ID="lblFiyat2Kdvb" runat="server"><%#formatCurTL(CalcKdvDahil(Container.DataItem("SatisFiyati2") * Container.DataItem("Rate2"), Container.DataItem("KdvRate")))%></asp:Label>
                        </p>
    
                        <p style="display: <%# iif(ChkNullToDecimal(Eval("SatisFiyati1")) > 0,"block;","none;") %>">
                            <asp:Label ID="lblFiyat1Kdv" runat="server">Kdv Dahil Satýþ Fiyatý1=</asp:Label>
                            <asp:Label ID="lblFiyat1Kdvb" runat="server"><%#formatCurTL(CalcKdvDahil(Container.DataItem("SatisFiyati1") * Container.DataItem("Rate1"), Container.DataItem("KdvRate")))%></asp:Label>
                        </p>
    
                        <p style="display: <%# iif(ChkNullToDecimal(Eval("SatisFiyati0")) > 0,"block;","none;") %>">
                            <asp:Label ID="lblFiyatHKdv" runat="server">Kdv Dahil Havale Fiyatý=</asp:Label>
                            <asp:Label ID="lblFiyatHKdvb" runat="server"><%#formatCurTL(CalcKdvDahil(Container.DataItem("SatisFiyati0") * Container.DataItem("Rate0"), Container.DataItem("KdvRate")))%></asp:Label>
                        </p>
                        <p>
                            <asp:Label ID="lblTaksitliFiyatiLabel" runat="server">Taksitli Fiyatý=</asp:Label>
                            <asp:Label ID="lblTaksitliFiyati" runat="server" Text='<%#formatCurTL(CalcKdvDahil(CalcKdvDahil(CalcIndirim(CalcIndirim(container.dataitem("SatisFiyati")* container.dataitem("Rate"),container.dataitem("Indirim")),UserIndirim),container.dataitem("KdvRate")), CreditCardMinRate)/iif(CreditCardMaxTaksit>0,CreditCardMaxTaksit,1))   %>'>
                            </asp:Label>
                        </p>--%>
                        <% End If%>
                    </a>
                </li>
            </ItemTemplate>
        </asp:Repeater>
        <asp:HyperLink ID="lnkAll" runat="server"></asp:HyperLink>
        <script type="text/javascript">
            jQuery(document).ready(function () {
                jQuery('#mycarousel<%=ModuleId%>').jcarousel({
                    visible: 3,
                    animation: 1500,
                    auto: 2,
                    wrap: 'last',
                    scroll: 1,
                    itemFallbackDimension: 75
                });
            });
        </script>
        <script runat="server" type="text/VB">
            Dim cnn As New DatabaseDB
            Public UserIndirim As Decimal
            Public StokIskActive As Boolean
            Public StokIsk As Integer
            Dim UserId As String
            Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
    
                EditText = GetGlobalResourceObject("admin", "Edit")
                EditUrl = "/admin/ecommerce/categories/EditCatTopProducts.aspx"
                EditWidth = 500
                EditHeight = 350
    
                If HttpContext.Current.User.Identity.IsAuthenticated() Then
                    UserId = Context.User.Identity.Name.Split("|")(0)
                    If IsNumeric(UserId) Then
                        Dim ua As New UsersDB
                        Dim dr As SqlDataReader
                        dr = ua.GetUserIndirim(UserId)
                        dr.Read()
                        UserIndirim = dr(0)
                        StokIskActive = dr(1)
                        StokIsk = dr(2)
                        dr.Close()
                    Else
                        UserId = -1
                        UserIndirim = 0
                        StokIskActive = 0
                        StokIsk = 0
                    End If
    
                Else
                    UserId = -1
                    UserIndirim = 0
                    StokIskActive = 0
                    StokIsk = 0
                End If
    
                Dim cat As New CategoriesDb
                If cat.GetCatTopMustShow(ModuleId) Then
                    If Request("CatId") = "" And Request("MarkId") = "" Then
                        LoadCategoryPageProducts()
                    Else
                        If PortalSecurity.IsInRole("Yöneticiler") Then
                            Me.Visible = True
                        Else
                            Me.Visible = False
                        End If
                    End If
                Else
                    LoadCategoryPageProducts()
                End If
            End Sub
         
    
            Public Sub LoadCategoryPageProducts()
                Dim cat As New CategoriesDb
                Dim catId As Integer = cat.GetCategoryId(ModuleId)
    
                If catId > 0 Then
                    Dim caturl As String = cat.GetCategoryUrlById(catId)
                    If Not caturl = "" Then
                        lnkAll.NavigateUrl = BaseUrl & caturl.Remove(caturl.Length - 1, 1) & ".aspx"
    
                        Dim RecordsPerPage As Integer = 5
                        Dim sqlcmd As String
                        If IsNumeric(ConfigurationManager.AppSettings("TopSellersPerPage")) Then
                            RecordsPerPage = ConfigurationManager.AppSettings("TopSellersPerPage")
                        End If
                        sqlcmd = "SELECT  top " & RecordsPerPage & " *, " & _
                                               "'SatisFiyati'= case (@StokIndirim) when 0 then SatisFiyati1 when 1 then SatisFiyati1 when 2 then SatisFiyati2 when 3 then SatisFiyati3 end,  " & _
                                               "'CurrencyName'= case (@StokIndirim) when 0 then Currency1 when 1 then Currency1 when 2 then Currency2 when 3 then Currency3 end, " & _
                                               "'Rate'= case (@StokIndirim) when 0 then Rate1 when 1 then Rate1 when 2 then Rate2 when 3 then Rate3 end,  " & _
                                       "case when (@StokIskActive >0 ) then case when (@StokIndirim=0) then 0 when (@StokIndirim=1) then Isk1 when (@StokIndirim=2) then Isk2 when (@StokIndirim=3) then Isk3 end else 0 end as Indirim ,  " & _
                                       "SellNoneStock,Code14,Code15,ProductUrl from ProductList WHERE (StockQty>0 or SellNoneStock=1) and CatId=@CatId and PortalId = @PortalId "
    
                        Dim da As New SqlCommand(sqlcmd, cnn.conn)
                        da.Parameters.AddWithValue("@PortalId", PortalId)
                        da.Parameters.AddWithValue("@CatId", catId)
                        da.Parameters.AddWithValue("@StokIndirim", StokIsk)
                        da.Parameters.AddWithValue("@StokIskActive", StokIskActive)
    
                        cnn.connectDb()
    
                        Dim dr As SqlDataReader
                        dr = da.ExecuteReader
                        dlCatTopProducts.DataSource = dr
                        dlCatTopProducts.DataBind()
                        dr.Close()
                        cnn.disconnectDb()
                    End If
                End If
                If dlCatTopProducts.Items.Count > 0 Then
                    Me.Visible = True
                ElseIf PortalSecurity.IsInRole("Yöneticiler") Then
                    Me.Visible = True
                Else
                    Me.Visible = False
                End If
            End Sub
        </script>
        <script type="text/javascript">
            $(".lightbox").colorbox({ width: "300", height: "400", iframe: true, scrolling: false });
            $("a[id='btnAddToCart']").colorbox({ width: "400", height: "300", iframe: true, scrolling: false, close: '<%=GetGlobalResourceObject("lang", "close") %>' });
            var prm = Sys.WebForms.PageRequestManager.getInstance();
            prm.add_endRequest(function () {
                $(".lightbox").colorbox({ width: "300", height: "400", iframe: true, scrolling: false });
                $("a[id='btnAddToCart']").colorbox({ width: "400", height: "300", iframe: true, scrolling: false, close: '<%=GetGlobalResourceObject("lang", "close") %>' });
            });
        </script>
    </div>
</div> 