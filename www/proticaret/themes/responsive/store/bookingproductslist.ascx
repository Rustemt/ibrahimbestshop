<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="bookingproductslist.ascx.vb" Inherits="ASPNetPortal.bookingproductslist" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<div id="orderlist" class="module">
    <% If HeaderVisible Then%>
    <div class="moduleTitle">
        Ürün Rezervasyon Taleplerim
            <% If IsEditable Then%>
        <a href="<%=EditNavigateUrl %>" class="moduleTitleEdit"><%=EditText %></a>
        <% End If%>
    </div>
    <% End If%>
    <div class="moduleContent moduleContentCol1 clearFix">
        <div class="formContent clearFix">
            <div class="moduleContentCol5">
                <label>Rezervasyon Numarası</label>
                <asp:TextBox ID="txtOrderId" runat="server"></asp:TextBox>
            </div>
            <div class="moduleContentCol5">
                <label>Rezervasyon <%=GetGlobalResourceObject("lang", "Status")%></label>
                <asp:DropDownList ID="ddlStatus" runat="server"></asp:DropDownList>
            </div>
            <div class="moduleContentCol5 inputButton">
                <label>Rezervasyon <%=GetGlobalResourceObject("lang", "CreatedDate")%></label>
                <ew:CalendarPopup ID="Tarih1" runat="server" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True"></ew:CalendarPopup>
            </div>
            <div class="moduleContentCol5 inputButton">
                <label>Rezervasyon <%=GetGlobalResourceObject("lang", "EndDate")%></label>
                <ew:CalendarPopup ID="tarih11" runat="server" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True"></ew:CalendarPopup>
            </div>
            <div class="moduleContentCol5">
                <label>
                    &nbsp;<br />
                    &nbsp;</label>
                <asp:Button ID="btnSearch" runat="server" CssClass="button" Text="<%$ Resources:lang, Search%>" />
            </div>
        </div>
        <label>
            <asp:Label ID="msg" runat="server" Visible="False"></asp:Label></label>
       
        <div class="dataTable">
            <asp:DataGrid ID="Datagrid1" runat="server" AllowPaging="True" AutoGenerateColumns="False" AllowSorting="True" CssClass="datalist" HeaderStyle-CssClass="title" GridLines="none" ItemStyle-CssClass="row">
                <Columns>
                    <asp:TemplateColumn HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderStyle-Wrap="false" HeaderText="Rezervasyon No">
                        <ItemTemplate>
                            <a id="lnkCompare" class="lightbox buttonLink" href='<%# BaseUrl & "/store/bookingproductsdetails.aspx?IND=" & DataBinder.Eval(Container.DataItem,"BookedCode") & "&MID=0" %>'>
                                <%# Eval("BookedCode")%>
                            </a>
                        </ItemTemplate>
                    </asp:TemplateColumn>
                    <asp:TemplateColumn SortExpression="OrderId" HeaderText="<%$ Resources:admin,OrderNoCode %>">
                        <ItemTemplate>
                            <asp:HyperLink ID="HyperLink4" runat="Server" CssClass='<%# IIf(ChkNullString(Eval("OrderId")) = "", "", "lightbox button")%>' NavigateUrl='<%# "/store/orderdetail.aspx?IND=" & DataBinder.Eval(Container.DataItem, "OrderCode") & "&MID=" & 0%> '><%# IIf(ChkNullString(Eval("OrderId")) = "", "", Eval("OrderId") & "/" & Eval("OrderCode"))%></asp:HyperLink>
                        </ItemTemplate>
                    </asp:TemplateColumn>
                    <asp:BoundColumn DataField="StatusName" HeaderStyle-Wrap="false" HeaderText="<%$ Resources:lang, Status%>" SortExpression="Status"></asp:BoundColumn>
                    <asp:BoundColumn DataField="CreatedDate" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" DataFormatString="{0:d}" HeaderStyle-Wrap="false" HeaderText="Rezerv Tarihi" SortExpression="CreatedDate"></asp:BoundColumn>
                    <asp:BoundColumn DataField="ExpirationDate" HeaderStyle-Wrap="false" ItemStyle-HorizontalAlign="Center" HeaderText="Rezerv Bitiş Tarihi" DataFormatString="{0:d}" SortExpression="ExpirationDate"></asp:BoundColumn>
                    <asp:BoundColumn DataField="OrderDate" HeaderStyle-Wrap="false" ItemStyle-HorizontalAlign="Center" HeaderText="Sipariş Tarihi" DataFormatString="{0:d}" SortExpression="OrderDate"></asp:BoundColumn>
                    <asp:TemplateColumn Visible="false" HeaderText="<%$ Resources:lang, Details%>">
                        <ItemTemplate>
                            <a id="lnkCompare" class="lightbox button" href='<%# BaseUrl & "/store/bookingproductsdetails.aspx?IND=" & DataBinder.Eval(Container.DataItem,"BookedCode") & "&MID=0" %>'>
                                <i class="icon-list-alt"></i>
                            </a>
                        </ItemTemplate>
                    </asp:TemplateColumn>
                </Columns>
                <PagerStyle PageButtonCount="20" Mode="NumericPages" CssClass="dataPager"></PagerStyle>
            </asp:DataGrid>
        </div>
        <div class="dataCount">
            <ul>
                <li><%=GetGlobalResourceObject("admin", "TotalRecording")%>  :<asp:Label ID="lblTotalRecord" runat="server"></asp:Label></li>
                <li><%=GetGlobalResourceObject("admin", "TotalPage")%>  :<asp:Label ID="lblPageCount" runat="server"></asp:Label></li>
                <li><%=GetGlobalResourceObject("admin", "CurrentPage")%>  :<asp:Label ID="lblCurrentIndex" runat="server"></asp:Label></li>
            </ul>
        </div>
        <asp:Label ID="lblSort" runat="server" Visible="False"></asp:Label>
    </div>
</div>
<script type="text/javascript">
    $(document).ready(function () {
        $(".lightbox").colorbox({ width: "1150", height: "800", iframe: true, scrolling: false });
    });

</script>
