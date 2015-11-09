<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="allreportlist.ascx.vb" Inherits="ASPNetPortal.allreportlist" %>
<div class="tree">
    <div class="dataForm">
        <div class="row" style="background-color: #f7f7f9; padding: 20px;">
            <div class="col6">
                <ul>
                    <li><span></span><a href="#"><%=GetGlobalResourceObject("lang", "StoreAdminPage")%></a>
                        <ul>
                            <li>
                                <asp:HyperLink ID="HyperLink1" runat="Server" CssClass="fancyContent" NavigateUrl="/admin/reports/editreports.aspx?IND=1"> <%=GetGlobalResourceObject("admin", "MemberAnalysisReport")%></asp:HyperLink></li>
                            <li>
                                <asp:HyperLink ID="HyperLink2" runat="Server" CssClass="fancyContent" NavigateUrl="/admin/reports/editreports.aspx?IND=2"> <%=GetGlobalResourceObject("admin", "StockProductAnalysisReport")%></asp:HyperLink></li>
                            <li>
                                <asp:HyperLink ID="HyperLink3" runat="Server" CssClass="fancyContent" NavigateUrl="/admin/reports/editreports.aspx?IND=3"> <%=GetGlobalResourceObject("admin", "OrdersReceivedReport")%></asp:HyperLink></li>
                            <li>
                                <asp:HyperLink ID="HyperLink4" runat="Server" CssClass="fancyContent" NavigateUrl="/admin/reports/editreports.aspx?IND=4"> <%=GetGlobalResourceObject("admin", "CartReportsCountBase")%></asp:HyperLink></li>
                            <li>
                                <asp:HyperLink ID="HyperLink5" runat="Server" CssClass="fancyContent" NavigateUrl="/admin/reports/editreports.aspx?IND=5"> <%=GetGlobalResourceObject("admin", "CartReportsPrice")%></asp:HyperLink></li>
                            <li>
                                <asp:HyperLink ID="HyperLink6" runat="Server" CssClass="fancyContent" NavigateUrl="/admin/reports/editreports.aspx?IND=6"> <%=GetGlobalResourceObject("admin", "BankandInstallmentReports")%></asp:HyperLink></li>
                            <li>
                                <asp:HyperLink ID="HyperLink7" runat="Server" CssClass="fancyContent" NavigateUrl="/admin/reports/editreports.aspx?IND=7"> <%=GetGlobalResourceObject("admin", "SalesReports")%></asp:HyperLink></li>
                                      <li>
                                <asp:HyperLink ID="HyperLink30" runat="Server" CssClass="fancyContent" NavigateUrl="/admin/reports/editreports.aspx?IND=30"> İade Raporları</asp:HyperLink></li>
                            <li><a><%=GetGlobalResourceObject("admin", "AffiliateMemberReports")%></a></li>
                            <li><a><%=GetGlobalResourceObject("admin", "AffiliateSalesReports")%></a></li>
                        </ul>
                    </li>
                </ul>
            </div>
            <div class="col6">
                <ul>
                    <li><span></span><a href="#"><%=GetGlobalResourceObject("admin", "ProviderManagement")%></a>
                        <ul>
                            <li>
                                <asp:HyperLink ID="HyperLink8" runat="Server" CssClass="fancyContent" NavigateUrl="/admin/reports/editreports.aspx?IND=8"><%=GetGlobalResourceObject("admin", "ProviderList")%></asp:HyperLink></li>
                            <li>
                                <asp:HyperLink ID="HyperLink9" runat="Server" CssClass="fancyContent" NavigateUrl="/admin/reports/editreports.aspx?IND=9"><%=GetGlobalResourceObject("admin", "ProviderProductsList")%></asp:HyperLink></li>
                            <li>
                                <asp:HyperLink ID="HyperLink10" runat="Server" CssClass="fancyContent" NavigateUrl="/admin/reports/editreports.aspx?IND=10"><%=GetGlobalResourceObject("admin", "ProviderOrdersReceivedRelation")%></asp:HyperLink></li>
                            <li>
                                <asp:HyperLink ID="HyperLink11" runat="Server" CssClass="fancyContent" NavigateUrl="/admin/reports/editreports.aspx?IND=11"><%=GetGlobalResourceObject("admin", "ProviderPendingOrders")%></asp:HyperLink></li>
                        </ul>
                    </li>
                </ul>
            </div>
            <div class="col6">
                <ul>
                    <li><span></span><a href="#"><%=GetGlobalResourceObject("admin", "SocialMediaManagement")%></a>
                        <ul>
                            <li>
                                <asp:HyperLink ID="HyperLink12" runat="Server" CssClass="fancyContent" NavigateUrl="/admin/reports/editreports.aspx?IND=12"><%=GetGlobalResourceObject("admin", "FacebookUserList")%></asp:HyperLink></li>
                            <li><a><%=GetGlobalResourceObject("admin", "FacebookSharedProductsList")%></a></li>
                        </ul>
                    </li>
                </ul>
            </div>
            <div class="col6">
                <ul>
                    <li><span></span><a href="#"><%=GetGlobalResourceObject("admin", "NetworkMarketingManagement")%> </a>
                        <ul>
                            <li>
                                <asp:HyperLink ID="HyperLink13" runat="Server" CssClass="fancyContent" NavigateUrl="/admin/reports/editreports.aspx?IND=13"><%=GetGlobalResourceObject("admin", "NetworkMarketingMemberList")%></asp:HyperLink></li>
                            <li><a><%=GetGlobalResourceObject("admin", "NetworkMarketingPercentReports")%></a></li>
                            <li><a><%=GetGlobalResourceObject("admin", "NetworkMarketingSalesReportSummary")%></a></li>
                            <li><a><%=GetGlobalResourceObject("admin", "NetworkMarketingSalesReportDetail")%></a></li>
                        </ul>
                    </li>
                </ul>
            </div>
            <div class="col6">
                <ul>
                    <li><span></span><a href="#"><%=GetGlobalResourceObject("admin", "SupportManagement")%></a>
                        <ul>
                            <li>
                                <asp:HyperLink ID="HyperLink17" runat="Server" CssClass="fancyContent" NavigateUrl="/admin/reports/editreports.aspx?IND=17"><%=GetGlobalResourceObject("admin", "PersonnelAnalysisReport")%></asp:HyperLink></li>
                            <li>
                                <asp:HyperLink ID="HyperLink18" runat="Server" CssClass="fancyContent" NavigateUrl="/admin/reports/editreports.aspx?IND=18"><%=GetGlobalResourceObject("admin", "TicketAnalysisReport")%></asp:HyperLink></li>

                        </ul>
                    </li>
                </ul>
            </div>
        </div>
        <div class="row" style="background-color: #f7f7f9; padding: 20px;">
            <div class="col6">
                <ul>
                    <li><span></span><a href="#"><%=GetGlobalResourceObject("admin", "SupportandEmailManagement")%></a>
                        <ul>
                            <li>
                                <asp:HyperLink ID="HyperLink19" runat="Server" CssClass="fancyContent" NavigateUrl="/admin/reports/editreports.aspx?IND=19"><%=GetGlobalResourceObject("admin", "PersonnelAnalysisReport")%></asp:HyperLink></li>
                            <li>
                                <asp:HyperLink ID="HyperLink20" runat="Server" CssClass="fancyContent" NavigateUrl="/admin/reports/editreports.aspx?IND=20"><%=GetGlobalResourceObject("admin", "TicketAnalysisReport")%></asp:HyperLink></li>
                        </ul>
                    </li>
                </ul>
            </div>
            <div class="col6">
                <ul>
                    <li><span></span><a href="#"><%=GetGlobalResourceObject("admin", "CustomerRepresentativeManagement")%></a>
                        <ul>
                            <li>
                                <asp:HyperLink ID="HyperLink21" runat="Server" CssClass="fancyContent" NavigateUrl="/admin/reports/editreports.aspx?IND=21"><%=GetGlobalResourceObject("admin", "CustomerRepresentativeAnalysisReport")%></asp:HyperLink></li>
                            <li>
                                <asp:HyperLink ID="HyperLink22" runat="Server" CssClass="fancyContent" NavigateUrl="/admin/reports/editreports.aspx?IND=22"><%=GetGlobalResourceObject("admin", "CustomerRepresentativeSalesReportSummary")%></asp:HyperLink></li>
                            <li>
                                <asp:HyperLink ID="HyperLink23" runat="Server" CssClass="fancyContent" NavigateUrl="/admin/reports/editreports.aspx?IND=23"><%=GetGlobalResourceObject("admin", "CustomerRepresentativeSalesReportDetail")%></asp:HyperLink></li>
                            <li>
                                <asp:HyperLink ID="HyperLink24" runat="Server" CssClass="fancyContent" NavigateUrl="/admin/reports/editreports.aspx?IND=24"><%=GetGlobalResourceObject("admin", "CustomerRepresentativeRevenueReport")%></asp:HyperLink></li>
                            <li>
                                <asp:HyperLink ID="HyperLink25" runat="Server" CssClass="fancyContent" NavigateUrl="/admin/reports/editreports.aspx?IND=25"><%=GetGlobalResourceObject("admin", "CustomerRepresentativeBonusReportSummary")%></asp:HyperLink></li>
                            <li>
                                <asp:HyperLink ID="HyperLink26" runat="Server" CssClass="fancyContent" NavigateUrl="/admin/reports/editreports.aspx?IND=26"><%=GetGlobalResourceObject("admin", "CustomerRepresentativeBonusReportDetail")%></asp:HyperLink></li>
                        </ul>
                    </li>
                </ul>
            </div>
            <div class="col6">
                <ul>
                    <li><span></span><a href="#">Servis Yönetimi</a>
                        <ul>
                            <li><a>Servis Personel Listesi</a></li>
                            <li><a>Servis Bölgesi/Servis Yeri/Servis Departman Raporu</a></li>
                            <li><a>Proje ve İş Gurubu Raporu</a></li>
                            <li><a>Servis Formu Raporu (Özet)</a></li>
                            <li><a>Servis Formu Raporu (Detaylı)</a></li>
                            <li><a>Siparişe Dönüşen Servisler</a></li>
                            <li><a>Garantili Olan Servisler</a></li>
                            <li><a>Servis Cihaz Analiz</a></li>
                            <li><a>Müşteri Şikayet - Sonuç Analiz</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
            <div class="col6">
                <ul>
                    <li><span></span><a href="#">Teklif Yönetimi</a>
                        <ul>
                            <li><a>Teklif Personel Listesi</a></li>
                            <li><a>Teklif Formu Listesi (Özet)</a></li>
                            <li><a>Teklif Formu Listesi (Detaylı)</a></li>
                            <li><a>Teklif Sevk ve Ödeme Raporu</a></li>
                            <li><a>Proje Teklifleri</a></li>
                            <li><a>Teklif Verilen Stoklar Raporu</a></li>
                            <li><a>Teklif Verilen Üyeler Raporu</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
            <div class="col6">
                <ul>
                    <li><span></span><a href="#"><%=GetGlobalResourceObject("admin", "AlternativeMarkets")%></a>
                        <ul>
                            <li><a><%=GetGlobalResourceObject("admin", "N11MatchedCategoryReport")%></a></li>
                            <li>
                                <asp:HyperLink ID="HyperLink14" runat="Server" CssClass="fancyContent" NavigateUrl="/admin/reports/editreports.aspx?IND=14"><%=GetGlobalResourceObject("admin", "N11ProductTransferReport")%></asp:HyperLink></li>
                            <li>
                                <asp:HyperLink ID="HyperLink15" runat="Server" CssClass="fancyContent" NavigateUrl="/admin/reports/editreports.aspx?IND=15"><%=GetGlobalResourceObject("admin", "N11OrderReport")%></asp:HyperLink></li>
                            <li><a><%=GetGlobalResourceObject("admin", "GGMatchedCategoryReport")%></a></li>
                            <li>
                                <asp:HyperLink ID="HyperLink16" runat="Server" CssClass="fancyContent" NavigateUrl="/admin/reports/editreports.aspx?IND=16"><%=GetGlobalResourceObject("admin", "GGProductTransferReport")%></asp:HyperLink></li>
                            <li>
                                <asp:HyperLink ID="HyperLink27" runat="Server" CssClass="fancyContent" NavigateUrl="/admin/reports/editreports.aspx?IND=27"><%=GetGlobalResourceObject("admin", "GGOrderReport")%></asp:HyperLink></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
        <div class="row" style="background-color: #f7f7f9; padding: 20px;">
            <div class="col6">
                <ul>
                    <li><span></span><a href="#"><%=GetGlobalResourceObject("admin", "BulkMailManagement")%></a>
                        <ul>
                            <li>
                                <asp:HyperLink ID="HyperLink28" runat="Server" CssClass="fancyContent" NavigateUrl="/admin/reports/editreports.aspx?IND=28"><%=GetGlobalResourceObject("admin", "EmailRequestReport")%></asp:HyperLink></li>
                            <li>
                                <asp:HyperLink ID="HyperLink29" runat="Server" CssClass="fancyContent" NavigateUrl="/admin/reports/editreports.aspx?IND=29"><%=GetGlobalResourceObject("admin", "EmailSupportReportDetail")%></asp:HyperLink></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
