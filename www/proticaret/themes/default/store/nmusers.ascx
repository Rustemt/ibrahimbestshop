<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="nmusers.ascx.vb" Inherits="ASPNetPortal.cnmusers" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Register Assembly="AjaxControls" Namespace="AjaxControls" TagPrefix="asp" %>
<div id="Affiliateuserlist" class="module">
    <div id="module_content">
        <div id="module_title">
            Network Marketting Üyeleri
        </div>
        <div>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
                    <asp:HyperLink ID="lnkAddNew" runat="server" CssClass="addbutton" Visible="False">Yeni Ekle</asp:HyperLink>
                    <asp:Label ID="msg" runat="server" Visible="False"></asp:Label>
                    <div class="module_box" style="text-align: right">
                        <table cellpadding="2" style="margin-left: auto">
                            <caption>
                                <tr>
                                    <td align="left" valign="bottom">
                                        <label>Kullanıcı Adı</label>
                                        <asp:TextBox ID="txtName" runat="server" Width="70px"></asp:TextBox>
                                        <asp:DropDownList ID="ddlfilter" runat="server" Width="75px">
                                            <asp:ListItem Value="like '%[]%'">içerir</asp:ListItem>
                                            <asp:ListItem Value="like '[]%'">Başlar</asp:ListItem>
                                            <asp:ListItem Value="like '%[]'">Biter</asp:ListItem>
                                            <asp:ListItem Value="='[]'">Eşittir</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td align="left" valign="bottom">
                                        <label>
                                            E-mail</label>
                                        <asp:TextBox ID="txtemail" runat="server" Width="65px"></asp:TextBox>
                                        <asp:DropDownList ID="ddlemail" runat="server" Width="75px">
                                            <asp:ListItem Value="like '%[]%'">içerir</asp:ListItem>
                                            <asp:ListItem Value="like '[]%'">Başlar</asp:ListItem>
                                            <asp:ListItem Value="like '%[]'">Biter</asp:ListItem>
                                            <asp:ListItem Value="='[]'">Eşittir</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td align="left" valign="bottom">
                                        <label>
                                            Adı Soyadı</label>
                                        <asp:TextBox ID="txtFullName" runat="server" Width="65px"></asp:TextBox>
                                        <asp:DropDownList ID="ddlFulnameFilter" runat="server" Width="75px">
                                            <asp:ListItem Value="like '%[]%'">içerir</asp:ListItem>
                                            <asp:ListItem Value="like '[]%'">Başlar</asp:ListItem>
                                            <asp:ListItem Value="like '%[]'">Biter</asp:ListItem>
                                            <asp:ListItem Value="='[]'">Eşittir</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td align="left" valign="bottom">
                                        <asp:LinkButton ID="btnSearch" runat="server" CssClass="searchbutton">Ara</asp:LinkButton>
                                    </td>
                                </tr>
                            </caption>
                            <tr>
                                <td align="left" valign="bottom">
                                    <asp:Label ID="Label1" runat="server"></asp:Label>
                                </td>
                                <td align="left" valign="bottom">&nbsp;</td>
                                <td align="left" valign="bottom">&nbsp;</td>
                                <td align="left" valign="bottom">&nbsp;</td>
                                <td align="left" valign="bottom">&nbsp;</td>
                            </tr>
                        </table>
                    </div>
                    <asp:DataGrid ID="Datagrid1" CellPadding="4" runat="server" Width="100%" PageSize="20" AllowPaging="True" AutoGenerateColumns="False" AllowSorting="True" CssClass="datalist">
                        <HeaderStyle CssClass="title" />
                        <Columns>
                            <asp:BoundColumn DataField="UserId" SortExpression="UserId" HeaderText="IND">
                                <HeaderStyle Width="0px"></HeaderStyle>
                            </asp:BoundColumn>
                            <asp:BoundColumn DataField="email" HeaderText="E-Mail" SortExpression="email"></asp:BoundColumn>
                            <asp:BoundColumn DataField="Name" SortExpression="Name" HeaderText="Kullanıcı Adı"></asp:BoundColumn>
                            <asp:BoundColumn DataField="FullName" SortExpression="FullName" HeaderText="Adı Soyadı"></asp:BoundColumn>

                            <asp:BoundColumn DataField="NetworkSponsorId" SortExpression="NetworkSponsorId" HeaderText="NetworkSponsorId"></asp:BoundColumn>

                            <asp:BoundColumn DataField="NetworkRank" SortExpression="NetworkRank" HeaderText="NetworkRank"></asp:BoundColumn>

                            <asp:BoundColumn DataField="TotalOrders" SortExpression="TotalOrders" HeaderText="Toplam Kazanç" DataFormatString="{0:0.00 TL}" ItemStyle-HorizontalAlign="Right"></asp:BoundColumn>
                            <asp:BoundColumn DataField="TotalPayments" SortExpression="TotalPayments" HeaderText="Toplam Ödeme" DataFormatString="{0:0.00 TL}" ItemStyle-HorizontalAlign="Right"></asp:BoundColumn>
                            <asp:BoundColumn DataField="TotalLeft" SortExpression="TotalLeft" HeaderText="Toplam Bakiye" DataFormatString="{0:0.00 TL}" ItemStyle-HorizontalAlign="Right"></asp:BoundColumn>
                            <asp:BoundColumn DataField="CreatedDate" SortExpression="CreatedDate" HeaderText="Kayıt Tarihi"></asp:BoundColumn>
                        </Columns>
                        <PagerStyle Mode="NumericPages" PageButtonCount="15" />
                    </asp:DataGrid>
                    <asp:ModalUpdateProgress ID="mup" runat="server" DisplayAfter="0">
                        <ProgressTemplate>
                            <div class="modalPopup">
                                <p>
                                    <%=GetGlobalResourceObject("lang", "Loading")%><img alt="Yükleniyor" src="<% =getThemePath() %>/images/loading.gif"
                                        align="middle" />
                                </p>
                                <p>
                                    <%=GetGlobalResourceObject("lang", "PleaseWait")%>
                                </p>
                            </div>
                        </ProgressTemplate>
                    </asp:ModalUpdateProgress>
                    <asp:Label ID="lblSort" runat="server" Visible="False"></asp:Label>
                    <asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>
                    <label>Toplam Kayıt :<asp:Label ID="lblTotalRecord" runat="server"></asp:Label></label>
                    <label>Toplam Sayfa :<asp:Label ID="lblPageCount" runat="server"></asp:Label></label>
                    <label>Geçerli Sayfa :<asp:Label ID="lblCurrentIndex" runat="server"></asp:Label></label>

                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </div>
</div>
