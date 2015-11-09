<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.orderlist"%>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<div id="orderlist" class="module">
<div id="module_content">
<% if HeaderVisible then %>
<div id="module_title">
<span>
<span id="module_title_icon"></span>
<%=ModuleTitle%>
<% if IsEditable then %>
<a href="<%=EditNavigateUrl %>" id="module_title_edit"><%=EditText %></a>
<% end if %>
</span> 
</div>
<% end if %>
<div>
<div class="module_box">
<table cellspacing="0" cellpadding="5" border="0">
<tr>
<td>
   <label><%=GetGlobalResourceObject("lang", "OrderId")%></label>
<ew:NumericBox ID="NumericBox1" runat="server" Width="85px" PositiveNumber="True" DecimalSign=","></ew:NumericBox></td>
<td><label><%=GetGlobalResourceObject("lang", "Status")%></label>
<asp:DropDownList ID="ddlStatus" runat="server"></asp:DropDownList></td>
<td>
<label><%=GetGlobalResourceObject("lang", "PaymentType")%></label>
<asp:DropDownList ID="ddlPaymentType" runat="server"></asp:DropDownList></td>
<td>
<label style="width:100px"><%=GetGlobalResourceObject("lang", "StartDate")%></label>
<ew:CalendarPopup ID="Tarih1" runat="server" Width="60px" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" ></ew:CalendarPopup>
</td>
<td>
<label style="width:100px"><%=GetGlobalResourceObject("lang", "EndDate")%></label>
<ew:CalendarPopup ID="tarih11" runat="server" Width="60px" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" ></ew:CalendarPopup>
</td>
<td>
<label>&nbsp;</label>
<asp:Button ID="btnSearch" runat="server" CssClass="button" Text="<%$ Resources:lang, Search%>" /></td>
</tr>
</table>
</div>
<label><asp:Label ID="msg" runat="server" Visible="False"></asp:Label></label>
<asp:DataGrid ID="Datagrid1" CellPadding="5" runat="server" Width="100%" AllowPaging="True" PageSize="20" AutoGenerateColumns="False" AllowSorting="True" CssClass="datalist" HeaderStyle-CssClass="title" GridLines="none" ItemStyle-CssClass="row">
<Columns>
<asp:BoundColumn DataField="OrderId" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderStyle-Wrap="false" HeaderText="<%$ Resources:lang, OrderId%>"></asp:BoundColumn>
<asp:BoundColumn DataField="StatusName" HeaderStyle-Wrap="false" HeaderText="<%$ Resources:lang, Status%>" SortExpression="Status"></asp:BoundColumn>
<asp:BoundColumn DataField="OrderDate" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" DataFormatString="{0:d}" HeaderStyle-Wrap="false" HeaderText="<%$ Resources:lang, OrderDate%>" SortExpression="OrderDate"></asp:BoundColumn>
<asp:BoundColumn DataField="ShipDate" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" DataFormatString="{0:d}" HeaderStyle-Wrap="false" HeaderText="<%$ Resources:lang, ShippingDate%>" SortExpression="ShipDate"></asp:BoundColumn>
<asp:BoundColumn DataField="PaymentType" HeaderStyle-Wrap="false" HeaderText="<%$ Resources:lang, PaymentType%>" SortExpression="PaymentType"></asp:BoundColumn>
<asp:BoundColumn DataField="BankaToplamTutar"  HeaderStyle-HorizontalAlign="Right" DataFormatString="{0:0.00 &quot;TL&quot;}" HeaderStyle-Wrap="false" HeaderText="<%$ Resources:lang, TotalPrice%>" SortExpression="BankaToplamTutar">
<ItemStyle HorizontalAlign="Right"></ItemStyle>
</asp:BoundColumn>
<asp:BoundColumn DataField="Aciklama2" HeaderText="<%$ Resources:lang, Description%>"></asp:BoundColumn>
<asp:TemplateColumn HeaderText="<%$ Resources:lang, Details%>">
<ItemTemplate>
<a id="lnkCompare" class="lightbox button"  href='<%# BaseUrl & "/store/orderdetail.aspx?IND=" & DataBinder.Eval(Container.DataItem,"OrderId") & "&MID=0" %>'>
    <%=GetGlobalResourceObject("lang", "Details")%>
</a>

</ItemTemplate>
</asp:TemplateColumn>
</Columns>
<PagerStyle PageButtonCount="20" Mode="NumericPages"></PagerStyle>
</asp:DataGrid>

<table cellpadding="4" cellspacing="0" border="0">
    <tr>
        <td><%=GetGlobalResourceObject("lang", "TotalRecords")%></td>
        <td>: <asp:Label ID="lblTotalRecord" runat="server"></asp:Label></td>
    </tr>
    <tr>
        <td><%=GetGlobalResourceObject("lang", "TotalPages")%></td>
        <td>: <asp:Label ID="lblPageCount" runat="server"></asp:Label></td>
    </tr>
    <tr>
        <td><%=GetGlobalResourceObject("lang", "CurrentPage")%></td>
        <td>: <asp:Label ID="lblCurrentIndex" runat="server"></asp:Label></td>
    </tr>
</table>
<asp:Label ID="lblSort" runat="server" Visible="False"></asp:Label>
</div>
</div>
</div>
<script type="text/javascript"> 
$(document).ready(function(){
$(".lightbox").colorbox({width:"600", height:"400", iframe:true,scrolling:false}); 	
});

</script>
