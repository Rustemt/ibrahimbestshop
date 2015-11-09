<%@ Page Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.ShoppingCartImages" CodeBehind="ShoppingCartImages.aspx.vb" %>

<%@ Import Namespace="System" %>
<%@ Import Namespace="ASPNetPortal" %>
<div>
    <asp:datagrid id="MyList" runat="server" autogeneratecolumns="False" width="100%" cellpadding="4" datakeyfield="Qty" cssclass="datalist" gridlines="none">
                <Columns>
                    <asp:TemplateColumn Visible="False">
                        <ItemTemplate>
                            <asp:Label ID="ProductID" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "ProductID") %>' Visible="False">
                            </asp:Label>
                            <asp:Label ID="RecordID" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "RecordId") %>' Visible="False">
                            </asp:Label>
                            <asp:Label ID="Attributes" Visible="false" runat="server" Text='<%# container.dataitem("Attributes").tostring  %>'></asp:Label>
                        </ItemTemplate>
                        <HeaderStyle Width="0px" />
                    </asp:TemplateColumn>
                    <asp:TemplateColumn HeaderText="">
                        <ItemTemplate>
                            <asp:Image ID="Image3" runat="server" BorderStyle="None" ImageUrl='<%#urlbase & "/store/makethumb.aspx?file=" + Container.DataItem("Path") + "&intSize=50"%>' oncontextmenu="return false" />
                        </ItemTemplate>
                    </asp:TemplateColumn>
                    <asp:TemplateColumn HeaderText="">
                        <ItemTemplate>
                            <itemstyle wrap="False"></itemstyle>
                            <asp:HyperLink ID="ProductName" runat="server" NavigateUrl='<%# string.format(BaseUrl & "{0}" & ".aspx",container.dataitem("Url").tostring.Remove(container.dataitem("Url").tostring.Length - 1, 1)) %>' Text='<%# container.dataitem("ProductName") %>'>
                            </asp:HyperLink>
                            <asp:Label ID="ProductDescription" runat="server" Text='<%# container.dataitem("Description")  %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateColumn>
                    <asp:TemplateColumn HeaderText="">
                        <ItemTemplate>
                            <asp:TextBox runat="server" ID="Quantity" Text='<%# DataBinder.Eval(Container.DataItem, "Qty")%>' Visible="false" />
                            <asp:Label ID="Label18" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "Qty") & " " & Container.DataItem("BirimAdi")%>'>
                            </asp:Label>
                        </ItemTemplate>
                    </asp:TemplateColumn>
                    <asp:TemplateColumn HeaderText="">
                        <ItemTemplate>
                            <asp:Label ID="pricewithtax" runat="server" Text='<%# CurrencySymbolLeft & " " & formatCurDoviz(((container.dataitem("SatisFiyati")*container.dataitem("Rate")) + Container.DataItem("ValueAdd")) / CurrencyRate  * Container.DataItem("Qty") ) & "  " & CurrencySymbolRight %>'>
                            </asp:Label>
                        </ItemTemplate>
                    </asp:TemplateColumn>
                </Columns>
            </asp:datagrid>
    <div class="cartDetail">
        <span class="cartPriceTitle"><%=GetGlobalResourceObject("lang", "TotalPrice")%>:</span><asp:label id="totalprice" runat="server" />
        <a href="/store/cart.aspx" class="button"><%=GetGlobalResourceObject("lang", "Buy")%></a>
    </div>

</div>

<script language="vb" runat="server">

    Dim con As New DatabaseDB
    Public UserIndirim As Decimal
    Public ToplamTutar As Decimal = 0
    Public ProductLines As Integer = -1
    Public ProductLinesCart As Integer = -1
    Dim StokIskActive As Boolean
    Dim StokIsk As Integer
    Dim cid As Integer
    Dim cartId As String
    Public ShowCargoDetail As Boolean = False
    Public tmpOrder As New TempOrder
    Dim hediye_sayisi As Integer = 0
    Dim ActiveCampain As Integer = 0
    Dim urlbase As String = ""

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
         
        If ConfigurationManager.AppSettings("UseSsl") = "True" Then
            urlbase = BaseUrl.Replace("http://", "https://")
        Else
            urlbase = BaseUrl
                      
        End If

        Dim ua As New UsersDB
        If HttpContext.Current.User.Identity.IsAuthenticated() Then
            cartId = Context.User.Identity.Name.Split("|")(0)
            If IsNumeric(cartId) Then
                Dim dr As SqlDataReader
                dr = ua.GetUserIndirim(cartId)
                dr.Read()
                UserIndirim = dr(0)
                StokIskActive = ChkNullBoolean(dr(1))
                StokIsk = dr(2)
                dr.Close()
            Else
                ' cartId = -1
                UserIndirim = 0
                StokIskActive = False
                StokIsk = 0
            End If
        Else
            cartId = GetShoppingCartId()
            UserIndirim = 0
            StokIskActive = False
        End If

        Dim cart As ShoppingCartDB = New ShoppingCartDB
        tmpOrder.Pricess.ToplamTutar = 0

        'Sepet Kampanyası
        tmpOrder.Campain.CampainId = 0
        tmpOrder.Campain.details = ""
        tmpOrder.Campain.Name = ""
        tmpOrder.Campain.DiscountType = 0
        tmpOrder.Campain.DiscountAmount = 0
        Dim drt As SqlDataReader = Nothing

        Try
            
            Dim cmdd As New SqlCommand("", con.conn)
            drt = cart.GetAllItemCart(cartId, 0, StokIsk, StokIskActive)
            drt = cmdd.ExecuteReader
            
            Dim ii As Integer
            While drt.Read
                tmpOrder.Pricess.ToplamTutar += CalcIndirim(CalcIndirim(CalcRate(drt("SatisFiyati"), drt("Rate")), drt("Indirim")), UserIndirim) * drt("qty")
                ii += 1
            End While
            ProductLines = ii
            ToplamTutar = tmpOrder.Pricess.ToplamTutar
        Catch
        Finally
            drt.Close()
        End Try

        ToplamTutar = 0
        MyList.DataSource = cart.GetAllItemCart(cartId, 0, StokIsk, StokIskActive)
        MyList.DataBind()
        totalprice.Text = CurrencySymbolLeft & " " & formatCurDoviz(ToplamTutar) & " " & CurrencySymbolRight
        
    End Sub
     
     
    Private Sub MyList_ItemDataBound(sender As Object, e As DataGridItemEventArgs) Handles MyList.ItemDataBound

        If (e.Item.ItemType = ListItemType.Item) OrElse (e.Item.ItemType = ListItemType.AlternatingItem) Then

            Dim lblisk3 As Decimal
            Dim lbl As Label = CType(e.Item.FindControl("ProductID"), Label)
            Dim lblkdvdahil As Label = CType(e.Item.FindControl("pricewithtax"), Label)
            Dim lbliskontolu As Decimal

            Dim txtqty As TextBox = CType(e.Item.FindControl("Quantity"), TextBox)
            Dim qty As Integer = Convert.ToInt32(txtqty.Text)
            Dim cm As New CampainDB
            Dim drc As SqlDataReader
            drc = cm.GetCampain(ActiveCampain)
            If drc.HasRows Then
                While drc.Read
                    If ChkNullBoolean(drc("IsForProduct")) Then
                        Dim sql As String = "select count(*)  from AdminProductList where 1=1  " & IIf(drc("StockFilter") = "", "", " and " & drc("StockFilter")) & " and ProductId=" & lbl.Text
                        Dim cmd As New SqlCommand(sql, con.conn)
                        con.connectDb()
                        If cmd.ExecuteScalar > 0 Then
                            lblisk3 = formatNumberEx(CalcIndirimRate(CalcRate(e.Item.DataItem("SatisFiyati") + e.Item.DataItem("ValueAdd"), e.Item.DataItem("Rate")), tmpOrder.Campain.DiscountAmount, tmpOrder.Campain.DiscountType, ToplamTutar, e.Item.DataItem("qty"), ProductLinesCart, tmpOrder.Campain.ProductDiscountType, tmpOrder.Campain.ProductDiscountAmount, IIf((lbl.Text = tmpOrder.Campain.ProductId And tmpOrder.Campain.DiscountType = 2), True, False)))
                        Else
                            lblisk3 = "0,00"
                        End If
                    Else
                        lblisk3 = formatNumberEx(CalcIndirimRate(CalcRate(e.Item.DataItem("SatisFiyati") + e.Item.DataItem("ValueAdd"), e.Item.DataItem("Rate")), tmpOrder.Campain.DiscountAmount, tmpOrder.Campain.DiscountType, ToplamTutar, e.Item.DataItem("qty"), ProductLines, tmpOrder.Campain.ProductDiscountType, tmpOrder.Campain.ProductDiscountAmount, IIf((lbl.Text = tmpOrder.Campain.ProductId And tmpOrder.Campain.DiscountType = 2), True, False)))

                    End If
                   
                    lbliskontolu = formatCurDoviz(CalcKdvDahil((((CalcIndirim(CalcIndirim(CalcIndirim(CalcRate(e.Item.DataItem("SatisFiyati") + e.Item.DataItem("ValueAdd"), e.Item.DataItem("Rate")), Convert.ToDecimal(lblisk3)), e.Item.DataItem("Indirim")), UserIndirim) * e.Item.DataItem("qty")))), e.Item.DataItem("KdvRate")) / CurrencyRate)

                End While
            Else
                lblisk3 = formatNumberEx(CalcIndirimRate(CalcRate(e.Item.DataItem("SatisFiyati") + e.Item.DataItem("ValueAdd"), e.Item.DataItem("Rate")), 0))
                lbliskontolu = formatCurDoviz(CalcKdvDahil((((CalcIndirim(CalcIndirim(CalcIndirim(CalcRate(e.Item.DataItem("SatisFiyati") + e.Item.DataItem("ValueAdd"), e.Item.DataItem("Rate")), Convert.ToDecimal(formatNumberEx(CalcIndirimRate(CalcRate(e.Item.DataItem("SatisFiyati") + e.Item.DataItem("ValueAdd"), e.Item.DataItem("Rate")), 0)))), e.Item.DataItem("Indirim")), UserIndirim) * e.Item.DataItem("qty")))), e.Item.DataItem("KdvRate")) / CurrencyRate)

            End If
            lblkdvdahil.Text = CurrencySymbolLeft & " " & formatCurDoviz(lbliskontolu) & " " & CurrencySymbolRight
            ToplamTutar = ToplamTutar + lbliskontolu

        End If

    End Sub
     
</script>
