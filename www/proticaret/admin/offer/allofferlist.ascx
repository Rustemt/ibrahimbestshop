<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="allofferlist.ascx.vb"
    Inherits="offer.allofferlist" %>
<%@ Register Assembly="AjaxControls" Namespace="AjaxControls" TagPrefix="asp" %>
<%@ Import Namespace="System.ComponentModel" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<div class="pageAllOfferList">
    <asp:UpdatePanel ID="uPanel1" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
            <asp:Label ID="lblmsg" runat="server" Visible="False"></asp:Label>
            <asp:Label ID="msg" runat="server" Visible="False"></asp:Label>
            <asp:Label ID="lblSort" runat="server" Visible="False"></asp:Label>
            <asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>
            <div class="buttonGroup">
                <asp:HyperLink ID="hlNew" runat="server" CssClass="btnDefault fancyContent"><i class="fa fa-plus"></i>Yeni Teklif İsteği</asp:HyperLink>
            </div>
            <div class="dataFilter boxToggle">
                <div class="toggleTitle toggleMini">
                    <div class="titleTab">
                        <ul class="tabMenu">
                            <li><a href="#">
                                <%=GetGlobalResourceObject("admin", "Filter")%></a></li>
                        </ul>
                    </div>
                    <div class="titleToggle">
                    </div>
                    <div class="titleAdvanced" title="Gelişmiş Arama">
                        <i class="fa fa-search-plus"></i>
                    </div>
                </div>
                <div class="toggleContent">
                    <div class="tabContent">
                        <div class="tab">
                            <div class="colGroup">
                                <asp:Panel ID="filterpanel" runat="server" DefaultButton="btnSearch">
                                    <div class="col col2">
                                        <label>
                                            Teklifi No</label>
                                        <asp:TextBox ID="txtOfferNo" runat="server"></asp:TextBox>
                                        <asp:DropDownList ID="ddlfilterOfferNo" runat="server">
                                            <asp:ListItem Value="like '%[]%'">İçerir</asp:ListItem>
                                            <asp:ListItem Value="like '[]%'">Başlar</asp:ListItem>
                                            <asp:ListItem Value="like '%[]'">Biter</asp:ListItem>
                                            <asp:ListItem Value="='[]'">Eşittir</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="col col3">
                                        <label>
                                            Teklif Tarihi</label>
                                        <ew:calendarpopup id="cpTeklifTar" runat="server" gototodaytext="Bu Gün:" cleardatetext="Sil"
                                            showgototoday="True" nullable="True" text=">" disabletextboxentry="False"></ew:calendarpopup>
                                    </div>
                                    <div class="col col2">
                                        <label>
                                            Teklifi Yapan</label>
                                        <asp:TextBox ID="txtFilterUser" runat="server"></asp:TextBox>
                                        <asp:DropDownList ID="ddlfilterUser" runat="server">
                                            <asp:ListItem Value="like '%[]%'">İçerir</asp:ListItem>
                                            <asp:ListItem Value="like '[]%'">Başlar</asp:ListItem>
                                            <asp:ListItem Value="like '%[]'">Biter</asp:ListItem>
                                            <asp:ListItem Value="='[]'">Eşittir</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="col col2">
                                        <label>
                                            Firma</label>
                                        <asp:TextBox ID="txtFilterCompany" runat="server"></asp:TextBox>
                                        <asp:DropDownList ID="ddlFilterCompany" runat="server">
                                            <asp:ListItem Value="like '%[]%'">İçerir</asp:ListItem>
                                            <asp:ListItem Value="like '[]%'">Başlar</asp:ListItem>
                                            <asp:ListItem Value="like '%[]'">Biter</asp:ListItem>
                                            <asp:ListItem Value="='[]'">Eşittir</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="col">
                                        <label>
                                            Teklif Durumu</label>
                                        <asp:DropDownList ID="ddlOfferStatus" runat="server">
                                        </asp:DropDownList>
                                    </div>
                                    <div class="col">
                                        <label>
                                            Sevk Şekli</label>
                                        <asp:DropDownList ID="ddlSendType" runat="server">
                                        </asp:DropDownList>
                                    </div>
                                    <div class="col">
                                        <label>
                                            Proje</label>
                                        <asp:DropDownList ID="ddlProject" runat="server">
                                        </asp:DropDownList>
                                    </div>
                                    <div class="col">
                                        <label>
                                            Özel Kod</label>
                                        <asp:DropDownList ID="ddlSecretCode" runat="server" AutoPostBack="True">
                                            <asp:ListItem Value="0" Selected="True">--Tümü--</asp:ListItem>
                                            <asp:ListItem Value="1">Kod 1</asp:ListItem>
                                            <asp:ListItem Value="2">Kod 2</asp:ListItem>
                                            <asp:ListItem Value="3">Kod 3</asp:ListItem>
                                            <asp:ListItem Value="4">Kod 4</asp:ListItem>
                                            <asp:ListItem Value="5">Kod 5</asp:ListItem>
                                            <asp:ListItem Value="6">Kod 6</asp:ListItem>
                                            <asp:ListItem Value="7">Kod 7</asp:ListItem>
                                            <asp:ListItem Value="8">Kod 8</asp:ListItem>
                                            <asp:ListItem Value="9">Kod 9</asp:ListItem>
                                            <asp:ListItem Value="10">Kod 10</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="col colAuto">
                                        <label>
                                            &nbsp;</label>
                                        <asp:LinkButton ID="btnSearch" runat="server" CssClass="btnDefault">Ara</asp:LinkButton>
                                    </div>
                                </asp:Panel>
                            </div>
                            <div class="colGroup colGroupAdvanced">
                                <div class="col">
                                    <label>
                                        &nbsp;</label>
                                    <asp:DropDownList ID="ddlSecretCode2" runat="server">
                                        <asp:ListItem Value="0" Selected="True">--Tümü--</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col">
                                    <label>
                                        Yönetici Onayı</label>
                                    <asp:DropDownList ID="ddlAdmin" runat="server">
                                        <asp:ListItem Value="" Selected="True">--Tümü--</asp:ListItem>
                                        <asp:ListItem Value="1">Onaylı</asp:ListItem>
                                        <asp:ListItem Value="0">Onaysız</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col">
                                    <label>
                                        Ödeme Tipi</label>
                                    <asp:DropDownList ID="ddlPayType" runat="server">
                                    </asp:DropDownList>
                                </div>
                                <div class="col">
                                    <label>
                                        Personel</label>
                                    <asp:DropDownList ID="ddlPerson" runat="server">
                                    </asp:DropDownList>
                                </div>
                                <div class="col col3">
                                    <label>
                                        Geçerlilik Tarih</label>
                                    <ew:calendarpopup id="Tarih1" runat="server" gototodaytext="Bu Gün:" cleardatetext="Sil"
                                        showgototoday="True" nullable="True" text=">" disabletextboxentry="False"></ew:calendarpopup>
                                </div>
                                <div class="col col3">
                                    <label>
                                        Sevk Tarihi</label>
                                    <ew:calendarpopup id="Tarih2" runat="server" gototodaytext="Bu Gün:" cleardatetext="Sil"
                                        showgototoday="True" nullable="True" text=">" disabletextboxentry="False"></ew:calendarpopup>
                                </div>
                                <div class="col col3">
                                    <label>
                                        Teslim Tarihi</label>
                                    <ew:calendarpopup id="Tarih3" runat="server" gototodaytext="Bu Gün:" cleardatetext="Sil"
                                        showgototoday="True" nullable="True" text=">" disabletextboxentry="False"></ew:calendarpopup>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="dataTable">
                <div>
                    <asp:GridView ID="gvOfferList" runat="server" GridLines="None" PageSize="20" ShowHeaderWhenEmpty="true"
                        AllowPaging="true" AutoGenerateColumns="False" DataKeyNames="id,UserID" EnableModelValidation="True"
                        HeaderStyle-CssClass="title" HeaderStyle-HorizontalAlign="Left">
                        <Columns>
                            <asp:TemplateField HeaderText="Teklif No">
                                <ItemTemplate>
                                    <asp:HyperLink ID="HyperLink1" runat="Server" CssClass="btnLink fancyContent" NavigateUrl='<%#"/admin/offer/editofferdeatil.aspx?IND=" & DataBinder.Eval(Container.DataItem, "id") & "&UiD=" & DataBinder.Eval(Container.DataItem, "UserID")%>'></i> <%# DataBinder.Eval(Container.DataItem, "id")%> </asp:HyperLink>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="UserID" Visible="False" ReadOnly="True" />
                            <asp:TemplateField HeaderText="Teklif Tarihi" SortExpression="DateCreated">
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Container.DataItem("DateCreated") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="FullName" HeaderText="Kullanıcı" ReadOnly="True" SortExpression="FullName" />
                            <asp:BoundField DataField="CompanyName" HeaderText="Firma" ReadOnly="True" SortExpression="CompanyName" />
                            <asp:TemplateField HeaderText="Durum" SortExpression="OfferStatusName">
                                <ItemTemplate>
                                    <span class="Status Status<%# Eval("OfferStatusID")%>">
                                        <%# Eval("OfferStatusName")%></span>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="OfferSendName" HeaderText="Sevk Şekli" ReadOnly="True"
                                SortExpression="OfferSendName" />
                            <%-- <asp:TemplateField HeaderText="Fiyat" SortExpression="Toplam">
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# formatCurTL(Container.DataItem("Total")) %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Right"></ItemStyle>
                        </asp:TemplateField>--%>
                            <asp:BoundField DataField="OfferPayName" HeaderText="Ödeme Şekli" SortExpression="OfferPayName" />
                            <asp:BoundField DataField="PersonName" HeaderText="Personel" SortExpression="PersonName" />
                            <asp:TemplateField HeaderText="Geçerlilik Tarihi" SortExpression="ValidDate">
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Container.DataItem("ValidDate")%>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Sevk Tarihi" SortExpression="SendDate">
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Container.DataItem("SendDate")%>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Teslim Tarihi" SortExpression="DeliveryDate">
                                <ItemTemplate>
                                    <asp:Label ID="Lblgeneltoplam" runat="server" Text='<%# Container.DataItem("DeliveryDate")%>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Genel Toplam" SortExpression="TLPrice">
                                <ItemTemplate>
                                    <asp:Label ID="Label5" runat="server" Text='<%#formatcurDoviz( Container.DataItem("TLPrice"))%>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center"
                                HeaderText="Yönetici Onayı">
                                <ItemTemplate>
                                    <asp:CheckBox runat="server" Enabled="False" Checked='<%# DataBinder.Eval(Container.DataItem, "AdminApproval")%>'
                                        ID="Checkbox2"></asp:CheckBox>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Tarihçe" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                    <asp:HyperLink ID="hllog" runat="server" CssClass="btnIcon fancyContent" NavigateUrl='<%#"/admin/offer/offerloglist.aspx?IND=" & DataBinder.Eval(Container.DataItem, "id") & "&UiD=" & DataBinder.Eval(Container.DataItem, "UserID") %>'><i class="fa fa-calendar"></i></asp:HyperLink>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Sipariş Entegrasyonu" HeaderStyle-HorizontalAlign="Center"
                                ItemStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnkbtnOrder" runat="server" CssClass="btnDefault" CommandName="Update"></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Sil" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnkbtnDelete" runat="server" CssClass="btnIcon" Enabled="<%# IsAllowedOnDemo() %>"
                                        OnClientClick="return confirm('Silmek istediğinizden emin misiniz?');" CausesValidation="False"
                                        CommandName="Delete"><i class="fa fa-trash-o"></i>  </asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <PagerSettings Mode="Numeric" />
                        <PagerStyle CssClass="dataPager"></PagerStyle>
                    </asp:GridView>
                </div>
            </div>
            <div class="dataCount">
                <ul>
                    <li>Toplam Matrah :<asp:Label ID="lblmatrah" runat="server"></asp:Label></li>
                    <li>Toplam İskonto :<asp:Label ID="lbliskonto" runat="server"></asp:Label></li>
                    <li>Ara Toplam :<asp:Label ID="lblaratoplam" runat="server"></asp:Label></li>
                    <li>Toplam Kdv :<asp:Label ID="lblkdv" runat="server"></asp:Label></li>
                    <li>Genel Toplam :<asp:Label ID="lblKdvDahilToplam" runat="server"></asp:Label></li>
                </ul>
            </div>
            <div class="dataCount">
                <ul>
                    <li>Toplam Kayıt :<asp:Label ID="lblTotalRecord" runat="server"></asp:Label></li>
                    <li>Toplam Sayfa :<asp:Label ID="lblPageCount" runat="server"></asp:Label></li>
                    <li>Geçerli Sayfa :<asp:Label ID="lblCurrentIndex" runat="server"></asp:Label></li>
                </ul>
            </div>
            <asp:ModalUpdateProgress ID="mup" runat="server" DisplayAfter="0">
                <progresstemplate>
                    <div class="modalPopup">
                        <p><%=GetGlobalResourceObject("lang", "Loading")%><img alt="Yükleniyor" src="<% =getThemePath() %>/images/loading.gif" align="middle" /></p>
                        <p><%=GetGlobalResourceObject("lang", "PleaseWait")%></p>
                    </div>
                </progresstemplate>
            </asp:ModalUpdateProgress>
        </ContentTemplate>
    </asp:UpdatePanel>
    <br />
</div>
<script type="text/javascript">
    var newwindow;
    function popup(url) {
        newwindow = window.open(url, 'name', 'width=600,height=600,scrollbars=1,toolbar=0,status=1,resizable=1');
        if (window.focus) { newwindow.focus() }
    }
</script>
