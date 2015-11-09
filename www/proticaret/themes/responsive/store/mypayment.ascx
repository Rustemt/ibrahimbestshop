<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="mypayment.ascx.vb" Inherits="ASPNetPortal.mypayment" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<div id="mypayment_form" runat="server" class="mypaymentForm module">
    <div class="moduleTitle"><%= GetGlobalResourceObject("lang","Payment2") %></div>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
        <ContentTemplate>

            <div class="moduleContent moduleContentCol1">
                <div class="formContent clearFix">
                    <div class="moduleContentCol3">
                        <label></label>
                        <asp:HyperLink ID="HyperLink1" runat="server" CssClass="button" NavigateUrl="/store/payment.aspx" Target="_blank"><%= GetGlobalResourceObject("lang","PymtMsg1") %></asp:HyperLink>
                    </div>
                    <div class="moduleContentCol3">
                        <label><%= GetGlobalResourceObject("lang","PaymentStatus") %></label>
                        <asp:DropDownList ID="ddlIsPayed" runat="server">
                            <asp:ListItem Value="-1">--T&#252;m&#252;--</asp:ListItem>
                            <asp:ListItem Value="1">Başarılı</asp:ListItem>
                            <asp:ListItem Value="0">Başarısız</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="moduleContentCol3">
                        <label><%= GetGlobalResourceObject("lang","PaymentNo") %></label><ew:NumericBox ID="NumericBox1" runat="server" PositiveNumber="True" DecimalSign="," GroupingSeparator=" "></ew:NumericBox></div>
                    <%--td valign="bottom" align="left">
                            <label>Kullanıcı Adı</label> 
                                <asp:TextBox ID="txtUserName" runat="server" Width="90px"></asp:TextBox><asp:DropDownList ID="ddlfilter" runat="server">
                                    <asp:ListItem Value="like '%[]%'">İ&#231;erir</asp:ListItem>
                                    <asp:ListItem Value="like '[]%'">Başlar</asp:ListItem>
                                    <asp:ListItem Value="like '%[]'">Biter</asp:ListItem>
                                    <asp:ListItem Value="='[]'">Eşittir</asp:ListItem>
                                </asp:DropDownList></td>--%>
                    <div class="moduleContentCol4">
                        <label><%= GetGlobalResourceObject("lang","PaymentType") %></label>
                        <asp:DropDownList ID="ddlPaymentType" runat="server">
                        </asp:DropDownList>
                    </div>
                    <div class="moduleContentCol4 inputButton">
                        <label><%= GetGlobalResourceObject("lang","PaymentDate") %></label>
                        <ew:CalendarPopup ID="Tarih1" runat="server" Nullable="True" ShowGoToToday="True" ClearDateText="Sil" GoToTodayText="Bu Gün:" AllowArbitraryText="False" DisableTextBoxEntry="False">
                        </ew:CalendarPopup>
                    </div>
                    <div class="moduleContentCol4 inputButton">
                        <label><%= GetGlobalResourceObject("lang","PaymentDate") %></label>
                        <ew:CalendarPopup ID="tarih11" runat="server" Nullable="True" ShowGoToToday="True" ClearDateText="Sil" GoToTodayText="Bu Gün:" DisableTextBoxEntry="False">
                        </ew:CalendarPopup>
                    </div>
                    <div class="moduleContentCol4">
                        <label></label>
                        <asp:LinkButton ID="btnSearch" runat="server" CssClass="button"><%= GetGlobalResourceObject("lang","Search") %></asp:LinkButton>
                    </div>
                </div>
                <div class="clear"></div>
                <div class="dataTable">
                    <asp:DataGrid ID="Datagrid1" runat="server" AllowPaging="True" AutoGenerateColumns="False" ShowFooter="True" AllowSorting="True" CssClass="datalist" HeaderStyle-CssClass="title" GridLines="Horizontal" ItemStyle-CssClass="row">
                        <HeaderStyle CssClass="title" />
                        <Columns>
                            <asp:BoundColumn DataField="PaymentId" SortExpression="PaymentId" Visible="false" HeaderText="ID">
                                <HeaderStyle Width="0px"></HeaderStyle>
                            </asp:BoundColumn>
                            <asp:BoundColumn DataField="FullName" SortExpression="FullName" Visible="false" HeaderText="Kullanıcı Adı"></asp:BoundColumn>
                            <asp:BoundColumn DataField="PaymentDate" SortExpression="PaymentDate" HeaderText="Ödeme Tarihi" DataFormatString="{0:d}"></asp:BoundColumn>
                            <asp:TemplateColumn HeaderText="<%$ Resources:admin,PaymentStatus %>" SortExpression="IsPayed">
                                <ItemTemplate>
                                    <asp:Label ID="Label6" CssClass='<%# iif (DataBinder.Eval(Container, "DataItem.IsPayed"),"success","fail") %>' runat="server" Text='<%# iif (DataBinder.Eval(Container, "DataItem.IsPayed"),"Başarılı","Başarısız") %>'>
                                    </asp:Label>
                                </ItemTemplate>
                            </asp:TemplateColumn>
                            <asp:TemplateColumn HeaderText="<%$ Resources:admin,PaymentType %>">
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.PaymentType") & "-" & DataBinder.Eval(Container, "DataItem.BankName") %>'>
                                    </asp:Label>
                                </ItemTemplate>
                            </asp:TemplateColumn>
                            <asp:BoundColumn Visible="False" DataField="IsPayed" SortExpression="IsPayed" HeaderText="<%$ Resources:lang,Paid %>"></asp:BoundColumn>
                            <asp:BoundColumn DataField="ToplamTutar" SortExpression="ToplamTutar" HeaderText="Tutar" DataFormatString="{0:0.00}"></asp:BoundColumn>
                            <asp:BoundColumn DataField="ToplamGider" SortExpression="ToplamGider" HeaderText="Vade Farkı" DataFormatString="{0:0.00}"></asp:BoundColumn>
                            <asp:BoundColumn DataField="BankaToplamTutar" SortExpression="BankaToplamTutar" HeaderText="Toplam Tutar" DataFormatString="{0:0.00}"></asp:BoundColumn>
                            <asp:TemplateColumn HeaderText="<%$ Resources:lang,Details %>">
                                <ItemTemplate>
                                    <asp:HyperLink ID="HyperLink1" runat="Server" CssClass="button iButton" NavigateUrl='<%# "Javascript:var PopUpWin = window.open(""/store/myeditpayment.aspx?IND=" & DataBinder.Eval(Container.DataItem,"PaymentId") & "&MID=" & 0 & ""","""",""width=800,height=600,scrollbars=1,toolbar=0,status=1,resizable=1"")" %> '>
                                    	<i class="icon-list-alt"></i>
                                    </asp:HyperLink>
                                </ItemTemplate>
                            </asp:TemplateColumn>
                        </Columns>
                        <PagerStyle Mode="NumericPages" PageButtonCount="15" CssClass="dataPager"></PagerStyle>
                    </asp:DataGrid>
                </div>
                <div class="dataCount">
                    <ul>
                        <li><%=GetGlobalResourceObject("lang", "TotalRecords")%> : <b><asp:Label ID="lblTotalRecord" runat="server"></asp:Label></b></li>
                        <li><%=GetGlobalResourceObject("lang", "TotalPages")%> : <b><asp:Label ID="lblPageCount" runat="server"></asp:Label></b></li>
                        <li><%=GetGlobalResourceObject("lang", "CurrentPage")%> : <b><asp:Label ID="lblCurrentIndex" runat="server"></asp:Label></b></li>
                    </ul>
                </div>
                <asp:Label ID="lblSort" runat="server" Visible="False">PaymentId desc</asp:Label>
                <label>
                    <asp:Label ID="msg" runat="server" Visible="False"></asp:Label>
                </label>
                <asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</div>
