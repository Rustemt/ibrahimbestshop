<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.orderlist" CodeBehind="orderlist.ascx.vb" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<div id="orderlist" class="module">
    <% If HeaderVisible Then%>
    <div class="moduleTitle">
        <%=ModuleTitle%>
        <% If IsEditable Then%>
        <a href="<%=EditNavigateUrl %>" class="moduleTitleEdit"><%=EditText %></a>
        <% End If%>
    </div>
    <% End If%>
    <div class="moduleContent moduleContentCol1 clearFix">
        <div class="formContent clearFix">
            <div class="moduleContentCol3">
                <label><%=GetGlobalResourceObject("lang", "OrderId")%></label>
                <asp:TextBox ID="txtOrderId" runat="server"></asp:TextBox>
            </div>
            <div class="moduleContentCol3">
                <label><%=GetGlobalResourceObject("lang", "Status")%></label>
                <asp:DropDownList ID="ddlStatus" runat="server"></asp:DropDownList>
            </div>
            <div class="moduleContentCol3">
                <label><%=GetGlobalResourceObject("lang", "PaymentType")%></label>
                <asp:DropDownList ID="ddlPaymentType" runat="server"></asp:DropDownList>
            </div>
            <div class="moduleContentCol3 inputButton">
                <label><%=GetGlobalResourceObject("lang", "StartDate")%> > </label>
                <ew:CalendarPopup ID="Tarih1" runat="server" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True"></ew:CalendarPopup>
            </div>
            <div class="moduleContentCol3 inputButton">
                <label><%=GetGlobalResourceObject("lang", "EndDate")%> < </label>
                <ew:CalendarPopup ID="tarih11" runat="server" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True"></ew:CalendarPopup>
            </div>
            <div class="moduleContentCol3">
                <label>&nbsp;</label>
                <asp:Button ID="btnSearch" runat="server" CssClass="button" Text="<%$ Resources:lang, Search%>" />
            </div>
        </div>
        <label>
            <asp:Label ID="msg" runat="server" Visible="False"></asp:Label></label>
        <div class="dataTable">
            <asp:DataGrid ID="Datagrid1" runat="server" AllowPaging="True" AutoGenerateColumns="False" AllowSorting="True" CssClass="datalist" HeaderStyle-CssClass="title" GridLines="none" ItemStyle-CssClass="row">
                <Columns>
                    <asp:TemplateColumn HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderStyle-Wrap="false" HeaderText="<%$ Resources:lang, OrderId%>">
                        <ItemTemplate>
                         	<a id="lnkCompare" class="lightbox buttonLink" href='<%# BaseUrl & "/store/orderdetail.aspx?IND=" & DataBinder.Eval(Container.DataItem,"OrderCode") & "&MID=0" %>'>
                               <%# Eval("OrderCode")%>
                            </a>
                        </ItemTemplate>
                    </asp:TemplateColumn> 
                     <asp:TemplateColumn  HeaderStyle-Wrap="false"  SortExpression="Status" HeaderText="<%$ Resources:lang,Status %>">
                                <ItemTemplate><span class="Status Status<%#Eval("Status")%>"><%#Eval("StatusName")%></span></ItemTemplate>
                            </asp:TemplateColumn>
                    <asp:BoundColumn DataField="OrderDate" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" DataFormatString="{0:d}" HeaderStyle-Wrap="false" HeaderText="<%$ Resources:lang, OrderDate%>" SortExpression="OrderDate"></asp:BoundColumn>
                    <asp:BoundColumn DataField="ShipDate" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" DataFormatString="{0:d}" HeaderStyle-Wrap="false" HeaderText="<%$ Resources:lang, ShippingDate%>" SortExpression="ShipDate"></asp:BoundColumn>
                    <asp:BoundColumn DataField="PaymentType" HeaderStyle-Wrap="false" HeaderText="<%$ Resources:lang, PaymentType%>" SortExpression="PaymentType"></asp:BoundColumn>
                    <asp:BoundColumn Visible="false" DataField="BankaToplamTutar" HeaderStyle-HorizontalAlign="Right" DataFormatString="{0:0.00 &quot;TL&quot;}" HeaderStyle-Wrap="false" SortExpression="BankaToplamTutar" HeaderText="<%$ Resources:lang, TotalPrice%>">
                        <ItemStyle HorizontalAlign="Right"></ItemStyle>
                    </asp:BoundColumn>
                    <asp:TemplateColumn HeaderText="<%$ Resources:lang, TotalPrice%>">
                        <ItemTemplate>
                            <asp:Label ID="lblBankaToplamTutar" runat="server" Text='<%# Eval("BankaToplamTutar")%>'></asp:Label>
                            <asp:Label ID="BankaToplamTutar" Visible="false" runat="server" Text='<%# Eval("BankaToplamTutar")%>'></asp:Label>
                            <asp:Label ID="CekIndirimi" Visible="false" Text='<%# Eval("CekIndirimi")%>' runat="server"></asp:Label>
                            <asp:Label ID="ToplamKargo" Visible="false" Text='<%# Eval("ToplamKargo")%>' runat="server"></asp:Label>
                            <asp:Label ID="CurrencyRate" Visible="false" Text='<%# Eval("CurrencyRate")%>' runat="server"></asp:Label>
                            <asp:Label ID="CurrencyCode" Visible="false" Text='<%# Eval("CurrencyCode")%>' runat="server"></asp:Label>
                            <asp:Label ID="CustomerCurrencyRate" Visible="false" Text='<%# Eval("CustomerCurrencyRate")%>' runat="server"></asp:Label>
                            <asp:Label ID="CustomerCurrencyCode" Visible="false" Text='<%# Eval("CustomerCurrencyCode")%>' runat="server"></asp:Label>
                            <asp:Label ID="KargoDahilToplamTutar" Visible="false" Text='<%# Eval("KargoDahilToplamTutar")%>' runat="server"></asp:Label>
                            <asp:Label ID="ToplamTutar" Visible="false" Text='<%# Eval("ToplamTutar")%>' runat="server"></asp:Label>
                            <asp:Label ID="ToplamKdv" Visible="false" Text='<%# Eval("ToplamKdv")%>' runat="server"></asp:Label>
                            <asp:Label ID="PaymentType" Visible="false" Text='<%# Eval("PaymentType")%>' runat="server"></asp:Label>
                            <asp:Label ID="KdvDahilToplam" Visible="false" Text='<%# Eval("KdvDahilToplam")%>' runat="server"></asp:Label>
                            <asp:Label ID="TaksitRate" Visible="false" Text='<%# ChkNullToDecimal(Eval("TaksitRate"))%>' runat="server"></asp:Label> 
                            <asp:Label ID="Taksit" Visible="false" Text='<%# Eval("Taksit")%>' runat="server"></asp:Label>

                        </ItemTemplate>
                    </asp:TemplateColumn>
                    <asp:BoundColumn DataField="Aciklama2" HeaderText="<%$ Resources:lang, Description%>"></asp:BoundColumn>
                    <asp:TemplateColumn HeaderText="<%$ Resources:lang, Details%>" Visible="false">
                        <ItemTemplate>
                            <a title="Detay" id="lnkCompare" class="lightbox button iButton" href='<%# BaseUrl & "/store/orderdetail.aspx?IND=" & DataBinder.Eval(Container.DataItem,"OrderCode") & "&MID=0" %>'>
                                <i class="icon-list-alt"></i>
                            </a>

                        </ItemTemplate>
                    </asp:TemplateColumn>
                    <asp:TemplateColumn HeaderText="Ýade Et">
                        <ItemTemplate>
                            <a title="iade Et" id="lnkCompare" runat="server" visible='<%# IIf(items.ToString.Contains("," & CInt(Eval("Status")) & ","), iade , "False")%>' class="lightbox2 button iButton" href='<%# BaseUrl & "/store/cancelorder.aspx?IND=" & DataBinder.Eval(Container.DataItem, "OrderId") & "&MID=0"%>'>
                                <i class="icon-retweet-4"></i>
                            </a>
                        </ItemTemplate>
                    </asp:TemplateColumn>
                </Columns>
                <PagerStyle PageButtonCount="20" Mode="NumericPages" CssClass="dataPager"></PagerStyle>
            </asp:DataGrid>
        </div>

        <div class="dataCount">
            <ul>
                <li><%=GetGlobalResourceObject("lang", "TotalRecords")%> : <b>
                    <asp:Label ID="lblTotalRecord" CssClass="textRed" runat="server"></asp:Label></b></li>
                <li><%=GetGlobalResourceObject("lang", "TotalPages")%> : <b>
                    <asp:Label ID="lblPageCount" CssClass="textRed" runat="server"></asp:Label></b></li>
                <li><%=GetGlobalResourceObject("lang", "CurrentPage")%> : <b>
                    <asp:Label ID="lblCurrentIndex" CssClass="textRed" runat="server"></asp:Label></b></li>
            </ul>
        </div>
        <asp:Label ID="lblSort" runat="server" Visible="False"></asp:Label>
    </div>
</div>
<script type="text/javascript">
    $(document).ready(function () {
        $(".lightbox").colorbox({ width: "900", height: "400", iframe: true, scrolling: false });
    });
    $(document).ready(function () {
        $(".lightbox2").colorbox({ width: "1200", height: "950", iframe: true, scrolling: false });
    });

</script>

