<%@ Page Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.mycoupons" Debug="true" %>

<form id="form1" runat="server">
    <div>
        <div id="alert" visible="false" runat="server" class="alert">Sizin için hazırlanmış indirim kuponu yok.</div>
        <asp:datagrid id="dgcoupons" cellpadding="4" runat="server" autogeneratecolumns="False" pagesize="20" width="100%" cssclass="datalist" headerstyle-cssclass="title" gridlines="none" itemstyle-cssclass="row">
                <FooterStyle />
                <AlternatingItemStyle />
                <ItemStyle />
                <HeaderStyle Wrap="false" />
                <Columns>
                    <asp:BoundColumn DataField="CouponCode" HeaderText="<%$ Resources:lang, CouponNo%>"></asp:BoundColumn>
                    <asp:TemplateColumn HeaderText="<%$ Resources:lang, Status%>">
                        <ItemTemplate>
                            <asp:Label ID="lblActive" runat="server" Text='<%# iif(DataBinder.Eval(Container, "DataItem.IsActive") and (DataBinder.Eval(Container, "DataItem.IsUsed")=False),"Aktif","Pasif") %>'></asp:Label>
                        </ItemTemplate>

                    </asp:TemplateColumn>
                    <asp:TemplateColumn HeaderText="<%$ Resources:lang, ActiveUntilDay%>">
                        <ItemTemplate>
                            <asp:Label ID="lblStartDate" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.StartDate", "{0:d}") %>'></asp:Label>
                            -
                            <asp:Label ID="lblEndDate" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.EndDate", "{0:d}") %>'></asp:Label>
                        </ItemTemplate>
                        <ItemStyle Wrap="False" />

                    </asp:TemplateColumn>
                    <asp:BoundColumn Visible="false" DataField="Discount" DataFormatString="{0:0.00 TL}"
                        HeaderText="<%$ Resources:lang, CouponDiscount%>" SortExpression="Discount">
                        <ItemStyle HorizontalAlign="Right" Wrap="False" />
                    </asp:BoundColumn>
                    <asp:TemplateColumn HeaderText="<%$ Resources:lang, CouponDiscount%>">
                        <ItemTemplate>
                            <asp:Label ID="lblDiscount" runat="server" Text='<%# CurrencySymbolLeft & " " & formatCurDoviz(Eval("Discount") * (DefaultCurrencyRate / CurrencyRate)) & " " & CurrencySymbolRight %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateColumn>
                    <asp:TemplateColumn HeaderText="<%$ Resources:lang, Description%>">
                        <ItemTemplate>
                            <asp:Label ID="lblAciklama" runat="server"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateColumn>
                    <asp:TemplateColumn HeaderText="<%$ Resources:lang, Add%>">
                        <ItemTemplate>
                            <asp:LinkButton ID="btnaddcouponnn" CommandName="Delete" runat="server" Text="Bu Hediye Çekini Kullan"></asp:LinkButton>

                        </ItemTemplate>
                    </asp:TemplateColumn>
                </Columns>
                <PagerStyle Mode="NumericPages" PageButtonCount="20" />
            </asp:datagrid>
        <label>
            <asp:label id="lbl" runat="server" visible="False"></asp:label>
            <asp:label id="lblCouponError" runat="server"  ></asp:label>
        </label>
    </div>
</form>


<script language="vb" runat="server">
    
    Dim tmporder As New TempOrder
    Dim con As New DatabaseDB
    Dim LogedUserID As Integer
 
    
    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        CheckStoreType(Request.Url.AbsolutePath)
             
        Dim userId As Integer = GetShoppingCartId()
        LogedUserID = GetShoppingCartId()
        
        con.connectDb()
        
        Dim str As String = "select  CouponCode, Discount, MinPrice, IsActive, StartDate, EndDate, IsUsed from Coupons Where UserId=@UserId and PortalId=@PortalId  and IsUsed=0 union  all select  CouponCode, Discount, MinPrice, IsActive, StartDate, EndDate, IsUsed from MultiCoupon Where UserId=@UserId and PortalId=@PortalId and IsUsed=0"
        Dim cmd As New SqlCommand(str, con.conn)
        cmd.Parameters.AddWithValue("@PortalId", PortalId)
        cmd.Parameters.AddWithValue("@UserId", userId)
        Dim dr As SqlDataReader
        dr = cmd.ExecuteReader

        dgcoupons.DataSource = dr
        dgcoupons.DataBind()
        dr.Close()
        con.disconnectDb()

        If dgcoupons.Items.Count > 0 Then
            dgcoupons.Visible = True
            alert.Visible = False
        Else
            dgcoupons.Visible = False
            alert.Visible = True
        End If

    End Sub
    Private Sub dgcoupons_ItemDataBound(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.DataGridItemEventArgs) Handles dgcoupons.ItemDataBound
        If (((e.Item.ItemType = ListItemType.Item) OrElse (e.Item.ItemType = ListItemType.AlternatingItem)) OrElse (e.Item.ItemType = ListItemType.EditItem)) Then
            Dim Label1 As Label = CType(e.Item.FindControl("lblAciklama"), Label)

            If e.Item.DataItem("IsUsed") Then
                Label1.Text = GetGlobalResourceObject("lang", "CouponMsg5")
            Else
                Label1.Text = String.Format(GetGlobalResourceObject("lang", "CouponMsg6").ToString, CurrencySymbolLeft & " " & formatCurDoviz(CDec(e.Item.DataItem("MinPrice")) * (DefaultCurrencyRate / CurrencyRate)) & " " & CurrencySymbolRight)
            End If
        End If
    End Sub
    
    Private Sub dgcoupons_DeleteCommand(ByVal source As Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles dgcoupons.DeleteCommand
        
        If Session("TempOrder") Is Nothing Then
            tmporder = New TempOrder
            Session("TempOrder") = tmporder
        Else
            tmporder = Session("TempOrder")

        End If
        
        Dim CouponId As Integer = CInt(e.Item.Cells(0).Text)
        lblCouponError.Text = ""

        If Not tmpOrder.Coupon.Coupons Is Nothing Then
            For Each c As CouponInfo In tmpOrder.Coupon.Coupons
                If c.CouponCode = CouponId Then
                    lblCouponError.Text = GetGlobalResourceObject("lang", "CouponMsg2") ' Bu kupon daha önce eklendi.
                    Exit Sub
                End If
            Next
        End If

        Call TekliCoupon(CouponId)

        If tmpOrder.Coupon.Coupons.Count >= 1 Then
            Exit Sub
        End If

        If Not tmpOrder.MultiCoupon.Coupons Is Nothing Then
            For Each c As MultiCouponInfo In tmpOrder.MultiCoupon.Coupons
                'For Each c As MultiCouponInfo In tmpOrder.Coupon.Coupons
                If c.CouponCode = CouponId Then
                    lblCouponError.Text = GetGlobalResourceObject("lang", "CouponMsg2") ' Bu kupon daha önce eklendi.
                    Exit Sub
                End If
            Next
        End If

        Call MultiCoupon(CouponId) 

        Response.Redirect("~/store/cart.aspx")
        
    End Sub
    
    Private Sub TekliCoupon(ByVal CouponId As Integer)

        Dim crm As New CouponsDB
        Dim dr As SqlDataReader = crm.GetSingleUseableCoupon(CouponId)


        If dr.Read Then

            Dim c As New CouponInfo
            With c
                .CouponCode = ChkNullString(dr("CouponCode"))
                .CouponId = ChkNullToNumber(dr("CouponId"))
                .Discount = ChkNullToDecimal(dr("Discount"))
                .MinPrice = ChkNullToDecimal(dr("MinPrice"))

                .MinQty = ChkNullToNumber(dr("MinQty"))
                If ChkNullToNumber(dr("UserId")) > 0 Then
                    If HttpContext.Current.User.Identity.IsAuthenticated() Then
                        LogedUserID = Context.User.Identity.Name.Split("|")(0)
                        If IsNumeric(LogedUserID) Then
                            ' While dr.Read
                            lblCouponError.Text = ""
                            If LogedUserID = ChkNullToNumber(dr("UserId")) Then
                                tmporder.Coupon.Coupons.Add(c)
                                tmporder.Coupon.CanUse = True
                                tmporder.Coupon.IsUsed = True

                                tmporder.Coupon.Discount = 0
                                tmporder.Coupon.MinPrice = 0
                                tmporder.Coupon.MinQty = 0
                                If Not tmporder.Coupon.Coupons Is Nothing Then
                                    For Each cx As CouponInfo In tmporder.Coupon.Coupons
                                        tmporder.Coupon.Discount += cx.Discount
                                        tmporder.Coupon.MinPrice += cx.MinPrice
                                        tmporder.Coupon.MinQty += cx.MinQty
                                    Next
                                End If

                                lblCouponError.Text = GetGlobalResourceObject("lang", "CouponMsg3")
                            Else
                                lblCouponError.Text = GetGlobalResourceObject("lang", "CouponMsg4")
                            End If

                        Else
                            lblCouponError.Text = GetGlobalResourceObject("lang", "CouponMsg4")
                        End If
                    Else
                        lblCouponError.Text = GetGlobalResourceObject("lang", "CouponMsg4")
                    End If
                Else

                    If ChkNullString(dr("RoleName")) <> "" Then
                        If PortalSecurity.IsInRole(ChkNullString(dr("RoleName"))) Then
                            tmporder.Coupon.Coupons.Add(c)
                            tmporder.Coupon.CanUse = True
                            tmporder.Coupon.IsUsed = True

                            tmporder.Coupon.Discount = 0
                            tmporder.Coupon.MinPrice = 0
                            tmporder.Coupon.MinQty = 0
                            If Not tmporder.Coupon.Coupons Is Nothing Then
                                For Each cx As CouponInfo In tmporder.Coupon.Coupons
                                    tmporder.Coupon.Discount += cx.Discount
                                    tmporder.Coupon.MinPrice += cx.MinPrice
                                    tmporder.Coupon.MinQty += cx.MinQty
                                Next
                            End If
                            lblCouponError.Text = GetGlobalResourceObject("lang", "CouponMsg3")
                        Else
                            lblCouponError.Text = GetGlobalResourceObject("lang", "CouponMsg4")
                        End If
                    Else
                        tmporder.Coupon.Coupons.Add(c)
                        tmporder.Coupon.CanUse = True
                        tmporder.Coupon.IsUsed = True

                        tmporder.Coupon.Discount = 0
                        tmporder.Coupon.MinPrice = 0
                        tmporder.Coupon.MinQty = 0
                        If Not tmporder.Coupon.Coupons Is Nothing Then
                            For Each cx As CouponInfo In tmporder.Coupon.Coupons
                                tmporder.Coupon.Discount += cx.Discount
                                tmporder.Coupon.MinPrice += cx.MinPrice
                                tmporder.Coupon.MinQty += cx.MinQty
                            Next
                        End If
                        lblCouponError.Text = GetGlobalResourceObject("lang", "CouponMsg3")
                    End If

                End If
            End With
        Else
            lblCouponError.Text = GetGlobalResourceObject("lang", "CouponMsg4")
        End If
 
    End Sub

    Private Sub MultiCoupon(ByVal CouponId As Integer)
        Dim c As New CouponInfo
        Dim objMultiCouponsDB As New MultiCouponsDB
        Dim dTable As DataTable = objMultiCouponsDB.GetSingleUseableMultiCoupon(CouponId)

        If dTable Is Nothing OrElse dTable.Rows.Count = 0 Then
            lblCouponError.Text = GetGlobalResourceObject("lang", "CouponMsg4") 'Size ait bir kupon bulunamadı.\
            Exit Sub
        End If

        If ChkNullToNumber(dTable.Rows(0)("UserId")) > 0 Then

            If Not HttpContext.Current.User.Identity.IsAuthenticated() Then
                lbl.Text = ""
                lblCouponError.Text = GetGlobalResourceObject("lang", "CouponMsg9")
                Exit Sub
            Else
                LogedUserID = Context.User.Identity.Name.Split("|")(0)
            End If

            Dim bol As Boolean = False

            For Each dRow As DataRow In dTable.Rows

                If LogedUserID = ChkNullToNumber(dTable.Rows(0)("UserId")) Then

                    Dim dr As SqlDataReader = objMultiCouponsDB.funGetUsableCouponID(dRow("CouponId"))

                    If dr.Read Then

                        Dim objMultiCouponInfo As New MultiCouponInfo
                        c.CouponCode = ChkNullString(dRow("CouponCode"))
                        c.CouponId = ChkNullToNumber(dRow("CouponId"))
                        c.Discount = ChkNullToDecimal(dRow("Discount"))
                        c.MinPrice = ChkNullToDecimal(dRow("MinPrice"))
                        c.MinQty = ChkNullToNumber(dRow("MinQty"))

                        tmporder.Coupon.Coupons.Add(c)
                        tmporder.Coupon.CanUse = True
                        'tmpOrder.Coupon.IsUsed = True

                        tmporder.Coupon.Discount = 0
                        tmporder.Coupon.MinPrice = 0
                        tmporder.Coupon.MinQty = 0

                        For Each cx As CouponInfo In tmporder.Coupon.Coupons
                            tmporder.Coupon.Discount += cx.Discount
                            tmporder.Coupon.MinPrice += cx.MinPrice
                            tmporder.Coupon.MinQty += cx.MinQty
                            tmporder.Coupon.kargoDahil = dRow("KargoStatus2")
                            tmporder.Coupon.DiscountType = dRow("DiscountType")
                        Next

                        con.connectDb()
                        Dim cmd As New SqlCommand("UPDATE [dbo].[MultiCoupon] SET [TotalUsage] = [TotalUsage]+1, UsedDate = getdate() WHERE CouponId = " & dRow("CouponId"), con.conn)
                        cmd.ExecuteNonQuery()
                        con.disconnectDb()

                        bol = True
                        lblCouponError.Text = GetGlobalResourceObject("lang", "CouponMsg3")
                        Exit For

                    End If

                End If

            Next

            If Not bol Then
                lblCouponError.Text = GetGlobalResourceObject("lang", "CouponMsg4")
            End If

        Else


            Dim bol As Boolean = False

            For Each dRow As DataRow In dTable.Rows

                Dim dr As SqlDataReader = objMultiCouponsDB.funGetUsableCouponID(dRow("CouponId"), False)


                If dr.Read Then

                    Dim objMultiCouponInfo As New MultiCouponInfo
                    c.CouponCode = ChkNullString(dRow("CouponCode"))
                    c.CouponId = ChkNullToNumber(dRow("CouponId"))
                    c.Discount = ChkNullToDecimal(dRow("Discount"))
                    c.MinPrice = ChkNullToDecimal(dRow("MinPrice"))
                    c.MinQty = ChkNullToNumber(dRow("MinQty"))

                    tmporder.Coupon.Coupons.Add(c)
                    tmporder.Coupon.CanUse = True

                    tmporder.Coupon.Discount = 0
                    tmporder.Coupon.MinPrice = 0
                    tmporder.Coupon.MinQty = 0

                    For Each cx As CouponInfo In tmporder.Coupon.Coupons
                        tmporder.Coupon.Discount += cx.Discount
                        tmporder.Coupon.MinPrice += cx.MinPrice
                        tmporder.Coupon.MinQty += cx.MinQty
                        tmporder.Coupon.kargoDahil = dRow("KargoStatus2")
                        tmporder.Coupon.DiscountType = dRow("DiscountType")
                    Next

                    con.connectDb()
                    Dim cmd As New SqlCommand("Update [dbo].[MultiCoupon] Set [TotalUsage]=  [TotalUsage]+1 Where CouponId=" & dRow("CouponId"), con.conn)
                    cmd.ExecuteNonQuery()
                    con.disconnectDb()

                    bol = True
                    lblCouponError.Text = GetGlobalResourceObject("lang", "CouponMsg3")
                    Exit For

                End If

            Next

            If Not bol Then
                lblCouponError.Text = GetGlobalResourceObject("lang", "CouponMsg4")
            End If

        End If

    End Sub


</script>
