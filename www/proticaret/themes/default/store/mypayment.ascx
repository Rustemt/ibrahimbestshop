<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="mypayment.ascx.vb" Inherits="ASPNetPortal.mypayment" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>

<div id="mypayment_form" runat="server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
               
            <div class="module_box" style="text-align: right">
                  
                <table cellpadding="2" style="margin-left: auto">
                    
                    <tr align="center">
                        <td align="left" valign="bottom">
                            <asp:HyperLink ID="HyperLink1" runat="server" CssClass="button" NavigateUrl="/store/payment.aspx" Target="_blank">Ödeme için tıklayınız.</asp:HyperLink>
                        </td>
                        <td align="left" valign="bottom">
                            <label>Ödeme Durumu</label>
                            <asp:DropDownList ID="ddlIsPayed" runat="server">
                                <asp:ListItem Value="-1">--T&#252;m&#252;--</asp:ListItem>
                                <asp:ListItem Value="1">Başarılı</asp:ListItem>
                                <asp:ListItem Value="0">Başarısız</asp:ListItem>
                            </asp:DropDownList></td>
                        <td valign="bottom" align="left">
                            <label>Ödeme No</label>
                            <ew:NumericBox ID="NumericBox1" runat="server" PositiveNumber="True" DecimalSign="," GroupingSeparator=" " Width="85px"></ew:NumericBox></td>

                        <%--td valign="bottom" align="left">
                        <label>Kullanıcı Adı</label> 
                            <asp:TextBox ID="txtUserName" runat="server" Width="90px"></asp:TextBox><asp:DropDownList ID="ddlfilter" runat="server">
                                <asp:ListItem Value="like '%[]%'">İ&#231;erir</asp:ListItem>
                                <asp:ListItem Value="like '[]%'">Başlar</asp:ListItem>
                                <asp:ListItem Value="like '%[]'">Biter</asp:ListItem>
                                <asp:ListItem Value="='[]'">Eşittir</asp:ListItem>
                            </asp:DropDownList></td>--%>
                        <td valign="bottom" align="left">
                            <label>Ödeme Türü</label>
                            <asp:DropDownList ID="ddlPaymentType" runat="server">
                            </asp:DropDownList></td>
                        <td valign="bottom" align="left">
                            <label>Ödeme Tar ></label>
                            <ew:CalendarPopup ID="Tarih1" runat="server" Width="68px" Nullable="True" ShowGoToToday="True" ClearDateText="Sil" GoToTodayText="Bu Gün:" AllowArbitraryText="False" DisableTextBoxEntry="False">
                            </ew:CalendarPopup>
                        </td>
                        <td valign="bottom" align="left">
                            <label>Ödeme Tar <</label>
                            <ew:CalendarPopup ID="tarih11" runat="server" Width="68px" Nullable="True" ShowGoToToday="True" ClearDateText="Sil" GoToTodayText="Bu Gün:" DisableTextBoxEntry="False">
                            </ew:CalendarPopup>
                        </td>
                        <td valign="bottom" align="left">
                            <asp:LinkButton ID="btnSearch" runat="server" CssClass="searchbutton">Ara</asp:LinkButton></td>
                    </tr>
                </table>
            </div>
            <div class="clear"></div>
            <div class="module_box">
            <asp:DataGrid ID="Datagrid1" CellPadding="4" runat="server" Width="100%" AllowPaging="True" PageSize="20" AutoGenerateColumns="False" ShowFooter="True" AllowSorting="True" CssClass="datalist" HeaderStyle-CssClass="title" GridLines="Horizontal" ItemStyle-CssClass="row">
                <HeaderStyle CssClass="title" />
                <Columns>
                    <asp:BoundColumn DataField="PaymentId" SortExpression="PaymentId" HeaderText="ID">
                        <HeaderStyle Width="0px"></HeaderStyle>
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="FullName" SortExpression="FullName" HeaderText="Kullanıcı Adı"></asp:BoundColumn>
                    <asp:BoundColumn DataField="PaymentDate" SortExpression="PaymentDate" HeaderText="&#214;deme Tarihi" DataFormatString="{0:d}"></asp:BoundColumn>
                    <asp:TemplateColumn HeaderText="&#214;deme Durumu" SortExpression="IsPayed">
                        <ItemTemplate>
                            <asp:Label ID="Label6" CssClass='<%# iif (DataBinder.Eval(Container, "DataItem.IsPayed"),"","Admin_HataMesaji") %>' runat="server" Text='<%# iif (DataBinder.Eval(Container, "DataItem.IsPayed"),"Başarılı","Başarısız") %>'>
                            </asp:Label>
                        </ItemTemplate>
                    </asp:TemplateColumn>
                    <asp:TemplateColumn HeaderText="&#214;deme T&#252;r&#252;">
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.PaymentType") & "-" & DataBinder.Eval(Container, "DataItem.BankName") %>'>
                            </asp:Label>
                        </ItemTemplate>
                    </asp:TemplateColumn>
                    <asp:BoundColumn Visible="False" DataField="IsPayed" SortExpression="IsPayed" HeaderText="&#214;dendi"></asp:BoundColumn>
                    <asp:BoundColumn DataField="ToplamTutar" SortExpression="ToplamTutar" HeaderText="Toplam Tutar" DataFormatString="{0:0.00}"></asp:BoundColumn>
                    <asp:BoundColumn DataField="ToplamGider" SortExpression="ToplamGider" HeaderText="Toplam Gider" DataFormatString="{0:0.00}"></asp:BoundColumn>
                    <asp:BoundColumn DataField="BankaToplamTutar" SortExpression="BankaToplamTutar" HeaderText="&#214;denen Toplam Tutar" DataFormatString="{0:0.00}"></asp:BoundColumn>
                    <%--<asp:TemplateColumn HeaderText="Entegrasyon">
                            <ItemTemplate>
                                <asp:label ID="lblent" Visible='<%# DataBinder.Eval(Container.DataItem,"Integreted") %>' runat="server" Text="Entegre Et">
                                Entegre Edildi
                                </asp:label>
                            </ItemTemplate>
                        </asp:TemplateColumn>--%>
                    <asp:TemplateColumn HeaderText="Detay">
                        <ItemTemplate>
                            <asp:HyperLink ID="HyperLink1" runat="Server" CssClass="button iButton" NavigateUrl='<%# "Javascript:var PopUpWin = window.open(""/store/myeditpayment.aspx?IND=" & DataBinder.Eval(Container.DataItem,"PaymentId") & "&MID=" & 0 & ""","""",""width=800,height=600,scrollbars=1,toolbar=0,status=1,resizable=1"")" %> '>
          						Detay
                            </asp:HyperLink>
                        </ItemTemplate>
                    </asp:TemplateColumn>
                    <%--<asp:TemplateColumn HeaderText="Sil">
                            <ItemTemplate>
                                <asp:LinkButton ID="lnkbtnDelete" runat="server" CausesValidation="false" CommandName="Delete" CssClass="deletebutton" Text="Sil"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateColumn>--%>
                </Columns>
                <PagerStyle Mode="NumericPages" PageButtonCount="15"></PagerStyle>
            </asp:DataGrid>
            <asp:Label ID="lblSort" runat="server" Visible="False">PaymentId desc</asp:Label>
            <label>
                <asp:Label ID="msg" runat="server" Visible="False"></asp:Label>
            </label>
            <asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>
            <label>Toplam Kayıt :<asp:Label ID="lblTotalRecord" runat="server"></asp:Label></label>
            <label>Toplam Sayfa :<asp:Label ID="lblPageCount" runat="server"></asp:Label></label>
            <label>Geçerli Sayfa :<asp:Label ID="lblCurrentIndex" runat="server"></asp:Label></label>
        </ContentTemplate>
    </asp:UpdatePanel>
    </div>
</div>
