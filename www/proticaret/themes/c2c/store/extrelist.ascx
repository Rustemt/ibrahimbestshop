<%@ Control Language="VB" AutoEventWireup="false" Inherits="extrelist" CodeBehind="extrelist.ascx.vb" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<div id="accountExtreList" class="module">
    <div id="module_content">
        <% If HeaderVisible Then%>
        <div id="module_title">
            <span><span id="module_title_icon"></span>
                <%=ModuleTitle%>
                <% If IsEditable Then%>
                <a href="<%=EditNavigateUrl %>" id="module_title_edit">
                    <%=EditText %></a>
                <% End If%>
            </span>
        </div>
        <% End If%>
        <div class="module_box" style="text-align: right">
            <table cellpadding="2" style="margin-left: auto">
                <tr>
                    <div id="alert" runat="server" visible="false" class="alert">
                        <p>
                            <asp:Label runat="server" ID="lblMessage"></asp:Label>
                        </p>
                    </div>
                    <td align="left" valign="bottom">
                        Başlangıç Tarihi<br>
                        <ew:CalendarPopup ID="Tarih1" runat="server" Width="60px" GoToTodayText="Bu Gün:"
                            ClearDateText="Sil" ShowGoToToday="True" Nullable="True" Text=">>" DisableTextBoxEntry="False">
                        </ew:CalendarPopup>
                    </td>
                    <td valign="bottom" align="left">
                        <label>Bitiş Tarihi<br>
                        </label>
                        <ew:CalendarPopup ID="Tarih11" runat="server" Width="60px" GoToTodayText="Bu Gün:"
                            ClearDateText="Sil" ShowGoToToday="True" Nullable="True" Text="<<" DisableTextBoxEntry="False">
                        </ew:CalendarPopup>
                        <asp:Button runat="server" ID="btnSearch" CssClass="button" Text="Ara" />
                    </td>
                </tr>
            </table>
        </div>
        <div>
            <asp:DataGrid ID="stList"  CellPadding="5" runat="server" Width="100%" AllowPaging="True" PageSize="20" AutoGenerateColumns="False" AllowSorting="True" CssClass="datalist" HeaderStyle-CssClass="title" GridLines="none" ItemStyle-CssClass="row">
                <PagerStyle Mode="NumericPages" PageButtonCount="15"></PagerStyle>
                <Columns>
                    <asp:BoundColumn DataField="Tarih" SortExpression="Tarih" HeaderText="Tarih" DataFormatString="{0:d}"></asp:BoundColumn>
                    <asp:BoundColumn DataField="BelgeNo" SortExpression="BelgeNo" HeaderText="Belge No">
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="BelgeTuru" SortExpression="BelgeTuru" HeaderText="Belge Türü">
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="Borc" SortExpression="Borc" HeaderText="Borç"></asp:BoundColumn>
                    <asp:BoundColumn DataField="Alacak" SortExpression="Alacak" HeaderText="Alacak"></asp:BoundColumn>
                    <asp:BoundColumn DataField="Bakiye" SortExpression="Bakiye" HeaderText="Bakiye"></asp:BoundColumn>
                </Columns>
            </asp:DataGrid>
            <asp:Label Text="" ID="lblSort" Visible="false" runat="server" />
            <label>
                <asp:Label ID="lblerr" runat="server"></asp:Label></label>
            <label>
                Toplam Kayıt :<asp:Label ID="lblTotalRecord" runat="server"></asp:Label></label>
            <label>
                Toplam Sayfa :<asp:Label ID="lblPageCount" runat="server"></asp:Label></label>
            <label>
                Geçerli Sayfa :<asp:Label ID="lblCurrentIndex" runat="server"></asp:Label></label>
        </div>
    </div>
</div>
