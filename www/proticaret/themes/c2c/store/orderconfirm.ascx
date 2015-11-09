<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.orderconfirm"
    CodeBehind="orderconfirm.ascx.vb" %>
<div id="orderconfirm" class="module">
    <% if HeaderVisible then %>
        <div class="moduleTitle">
            <%=ModuleTitle%>
            <% if IsEditable then %>
            <a href="<%=EditNavigateUrl %>" class="moduleTitleEdit"><%=EditText %></a>
            <% end if %>
        </div>
    <% end if %>
    <div class="moduleContent moduleContentCol1">
            <div id="div_print">
                <div id="info" runat="server" class="information">
                    <%=GetGlobalResourceObject("lang", "OrderMsg1")%></div>
                <label>
                    <%=GetGlobalResourceObject("lang", "OrderDate")%>
                    :
                    <asp:Label ID="OrderDate" runat="server"></asp:Label>
                </label>
                <label>
                    <%=GetGlobalResourceObject("lang", "OrderId")%>
                    :
                    <asp:Label ID="OrderId" runat="server"></asp:Label>
                </label>
                <label>
                    <%=String.Format(GetGlobalResourceObject("lang", "OrderMsg2").ToString, FullName, PaymentType)%>
                </label>
                <label class="subtitle">
                    <%=GetGlobalResourceObject("lang", "Products")%></label>
                <asp:DataGrid ID="Datagrid1" runat="server" AutoGenerateColumns="False" CellPadding="4"
                    Width="100%" CssClass="datalist" HeaderStyle-CssClass="title" GridLines="none"
                    ItemStyle-CssClass="row">
                    <Columns>
                        <asp:BoundColumn DataField="OrderDetailsId" HeaderText="ID" Visible="False"></asp:BoundColumn>
                        <asp:BoundColumn DataField="ProductCode" HeaderText="<%$ Resources:lang, ProductCode%>"
                            Visible="false"></asp:BoundColumn>
                        <%--<asp:BoundColumn DataField="ProductName" HeaderText="<%$ Resources:lang, ProductName%>"></asp:BoundColumn>--%>
                        <asp:TemplateColumn HeaderText="<%$ Resources:lang, ProductName%>">
                            <ItemTemplate>
                                <asp:Label ID="lblProductName" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "ProductName")  %>'></asp:Label>
                                <asp:Label ID="lblDescription" runat="server" Text='<%# container.dataitem("Description")  %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn HeaderText="<%$ Resources:lang, Quantity%>">
                            <HeaderStyle HorizontalAlign="Right" />
                            <ItemStyle HorizontalAlign="Right" />
                            <ItemTemplate>
                                <label><asp:Label ID="Quantity" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "Quantity") & " " & DataBinder.Eval(Container.DataItem, "BirimAdi") %>'></asp:Label></label>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn HeaderText="<%$ Resources:lang, QtyPrice%>" Visible="false">
                            <HeaderStyle HorizontalAlign="Right" />
                            <ItemStyle HorizontalAlign="Right" />
                            <ItemTemplate>
                                <label><asp:Label ID="lblDoviz" runat="server" Text='<%# CurrencySymbolLeft & " " &  FormatCurDoviz(CalcIndirim(CalcIndirim(container.dataitem("SatisFiyati") ,container.dataitem("BirimIndirimOrani")),container.dataitem("CariIndirimOrani")) / CurrencyRate)  & " " & container.dataitem("Pb1Name")   & " " & CurrencySymbolRight %>'></asp:Label></label> 
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn HeaderText="<%$ Resources:lang, QtyPrice%>">
                            <HeaderStyle HorizontalAlign="Right" />
                            <ItemStyle HorizontalAlign="Right" Wrap="False" />
                            <ItemTemplate>
                                <label><asp:Label ID="BirimFiyat" runat="server" Text='<%# CurrencySymbolLeft & " " &  FormatCurDoviz(CalcRate(CalcIndirim(CalcIndirim(container.dataitem("SatisFiyati") ,container.dataitem("BirimIndirimOrani")),container.dataitem("CariIndirimOrani")),container.dataitem("Rate")) /CurrencyRate ) & " " & CurrencySymbolRight %>'></asp:Label></label>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:BoundColumn DataField="KdvRate" DataFormatString="{0:0.00}" HeaderText="<%$ Resources:lang, TaxRate%>"
                            Visible="False"></asp:BoundColumn>
                        <asp:TemplateColumn HeaderText="<%$ Resources:lang, Total%>">
                            <HeaderStyle HorizontalAlign="Right" />
                            <ItemStyle HorizontalAlign="Right" />
                            <ItemTemplate>
                                <label><asp:Label ID="Tutar" runat="server" Text='<%# CurrencySymbolLeft & " " &  FormatCurDoviz(CalcIndirim(CalcIndirim(CalcRate(container.dataitem("SatisFiyati") , container.dataitem("Rate")),container.dataitem("BirimIndirimOrani")),container.dataitem("CariIndirimOrani")) * container.dataitem("Quantity")/CurrencyRate )  & " " & CurrencySymbolRight %>'></asp:Label></label>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                    </Columns>
                </asp:DataGrid>
                <table cellpadding="15" width="100%">
                    <tr>
                        <td align="right">
                            <table cellpadding="3" cellspacing="0">
                                <tr>
                                    <td>
                                        <%=GetGlobalResourceObject("lang", "TotalDiscount")%>
                                    </td>
                                    <td>
                                        :
                                    </td>
                                    <td align="right">
                                        <asp:Label ID="ToplamIndirim" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <%=GetGlobalResourceObject("lang", "TotalPrice")%>
                                    </td>
                                    <td>
                                        :
                                    </td>
                                    <td align="right">
                                        <asp:Label ID="ToplamTutar" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <%=GetGlobalResourceObject("lang", "TotalTax")%>
                                    </td>
                                    <td>
                                        :
                                    </td>
                                    <td align="right">
                                        <asp:Label ID="ToplamKdv" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <%=GetGlobalResourceObject("lang", "TotalIncludeTax")%>
                                    </td>
                                    <td>
                                        :
                                    </td>
                                    <td align="right">
                                        <asp:Label ID="AraToplam" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <%=GetGlobalResourceObject("lang", "CouponDiscount")%>
                                    </td>
                                    <td>
                                        :
                                    </td>
                                    <td align="right">
                                        <asp:Label ID="HediyeCekiToplam" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <%=GetGlobalResourceObject("lang", "SubTotal")%>
                                    </td>
                                    <td>
                                        :
                                    </td>
                                    <td align="right">
                                        <asp:Label ID="KdvDahilToplam" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <%=GetGlobalResourceObject("lang", "TotalCargo")%>
                                    </td>
                                    <td>
                                        :
                                    </td>
                                    <td align="right">
                                        <asp:Label ID="ToplamKargo" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <%=GetGlobalResourceObject("lang", "TotalIncludeCargo")%>
                                    </td>
                                    <td>
                                        :
                                    </td>
                                    <td align="right">
                                        <asp:Label ID="KargoDahilToplam" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <%=PaymentType & " ile " & GetGlobalResourceObject("lang", "TotalToPay")%>
                                    </td>
                                    <td>
                                        :
                                    </td>
                                    <td align="right">
                                        <asp:Label ID="BankaToplamTutar" runat="server"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="orderid" style="display: none;">
                <asp:Label ID="OrdNumber" runat="server"></asp:Label></div>
            <div class="amount" style="display: none;">
                <asp:Label ID="amount" runat="server" />
            </div>
            <div class="proid" style="display: none;">
                <asp:Label ID="proid" runat="server" />
            </div>
            <asp:Label ID="Status" runat="server" Visible="false"></asp:Label>
            <label style="text-align: right">
                <asp:HyperLink ID="HyperLink1" CssClass="button" runat="server" NavigateUrl="javascript:void(printdiv('div_print'));"><%=GetGlobalResourceObject("lang", "Print")%></asp:HyperLink></label>
            <% =TrustedShopScript %>
            <% =goglecode%>
            <% =goglecode1%>
            <% =gelirortaklari %>
            <% =guvenrehber %>
            <asp:Label ID="sonuc" runat="server"></asp:Label>
        </div>
    </div>
</div>
<script type="text/VB" runat="server">

    Public Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim Cnn As New DatabaseDB
        Cnn.connectDb()
        Try
            Dim sql2 As String = "select o.PaymentType,o.OrderId from OrderDetails od JOIN Orders o ON od.OrderId = o.OrderId  where o.OrderCode = @SiparisId"
            Dim cmd2 As New SqlCommand(sql2, Cnn.conn)
            cmd2.Parameters.AddWithValue("@SiparisId", OrderId.Text)
            Dim reader2 As SqlDataReader = cmd2.ExecuteReader()
            Dim oid As String = ""
            While reader2.Read()
                oid = reader2("OrderId")
                Select Case reader2("PaymentType")
                    Case "Banka Havalesi"
                        Status.Text = "HVL_" & oid
                    Case "Teslimatta Ödeme"
                        Status.Text = "TO_" & oid
                    Case "Kredi Kartý"
                        Status.Text = "KK_" & oid
                End Select
            End While
            reader2.Close()
        Catch ex2 As Exception
            Response.Write(ex2.Message)
            ErrorLog.HandleException2(ex2)
        Finally
            Cnn.disconnectDb()
        End Try
        amount.Text = ToplamTutar.Text.Replace(" TL", "").Replace(",", ".").Replace(" ", "")
        OrdNumber.Text = OrderId.Text
        Dim part1 As String = "<iframe src=""https://tr.rdrtr.com/GL7Ra?adv_sub="
        Dim part2 As String = "&amount="
        Dim part3 As String = """ scrolling=""no"" frameborder=""0"" width=""1"" height=""1""></iframe>"
         
        Dim Finished As String = part1 + Status.Text + part2 + amount.Text + part3
       
        sonuc.Text = Finished
       
        
	
        
    End Sub
    

</script>
