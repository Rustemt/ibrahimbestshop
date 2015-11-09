<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="cancelorderlist.ascx.vb" Inherits="cancelorderlistascx" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<div id="orderlist" class="module">
	<% if HeaderVisible then %>
        <div class="moduleTitle">
            İade ve Değişim Taleplerim
            <% if IsEditable then %>
            <a href="<%=EditNavigateUrl %>" class="moduleTitleEdit"><%=EditText %></a>
            <% end if %>
        </div>
    <% end if %>
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
                <label><%=GetGlobalResourceObject("lang", "StartDate")%></label>
                <ew:CalendarPopup ID="Tarih1" runat="server" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True"></ew:CalendarPopup>
            </div>
            <div class="moduleContentCol3 inputButton">
                <label><%=GetGlobalResourceObject("lang", "EndDate")%></label>
                <ew:CalendarPopup ID="tarih11" runat="server" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True"></ew:CalendarPopup>
            </div>
            <div class="moduleContentCol3">
                <label>&nbsp;</label>
                <asp:Button ID="btnSearch" runat="server" CssClass="button" Text="<%$ Resources:lang, Search%>" />
            </div>
        </div>
        <label><asp:Label ID="msg" runat="server" Visible="False"></asp:Label></label>
        <div class="dataTable">
        <asp:DataGrid ID="Datagrid1" runat="server" AllowPaging="True" AutoGenerateColumns="False" AllowSorting="True" CssClass="datalist" HeaderStyle-CssClass="title" GridLines="none" ItemStyle-CssClass="row">
            <Columns>
                <asp:TemplateColumn HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderStyle-Wrap="false" HeaderText="<%$ Resources:lang, OrderId%>">
                    <ItemTemplate>
                        <%# Eval("OrderCode")%>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:BoundColumn DataField="StatusName" HeaderStyle-Wrap="false" HeaderText="<%$ Resources:lang, Status%>" SortExpression="Status"></asp:BoundColumn>
                <asp:BoundColumn DataField="OrderDate" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" DataFormatString="{0:d}" HeaderStyle-Wrap="false" HeaderText="<%$ Resources:lang, OrderDate%>" SortExpression="OrderDate"></asp:BoundColumn>
                <asp:BoundColumn DataField="PaymentType" HeaderStyle-Wrap="false" HeaderText="<%$ Resources:lang, PaymentType%>" SortExpression="PaymentType"></asp:BoundColumn>
                <asp:BoundColumn Visible="false" DataField="BankaToplamTutar" HeaderStyle-HorizontalAlign="center" DataFormatString="{0:0.00 &quot;TL&quot;}" HeaderStyle-Wrap="false" SortExpression="BankaToplamTutar" HeaderText="<%$ Resources:lang, TotalPrice%>">
                    <ItemStyle HorizontalAlign="Right"></ItemStyle>
                </asp:BoundColumn>
                <asp:TemplateColumn HeaderText="<%$ Resources:lang, TotalPrice%>">
                    <ItemTemplate>
                        <asp:Label ID="lblBankaToplamTutar" runat="server" Text='<%# formatCurDoviz(Eval("BankaToplamTutar"))%>'></asp:Label>                       
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderText="<%$ Resources:lang, Details%>">
                    <ItemTemplate>
                        <a id="lnkCompare" class="lightbox button iButton" href='<%# BaseUrl & "/store/cancelorderdetail.aspx?IND=" & DataBinder.Eval(Container.DataItem,"OrderId") & "&MID=0" %>'>
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
