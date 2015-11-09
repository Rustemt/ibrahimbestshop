<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="~/admin/ecommerce/entegrasyon.ascx.vb"
    Inherits="ASPNetPortal.Entegrasyon2" %>
<div class="pageEntegrasyon">
    <ul>
        <li><span><a target="_blank" href="http://www.proticaret.org/kategori/muhasebe-entegrasyonlari.aspx?tabId=2717">
            <img alt="" width="80" src="/admin/assets/images/logo/vega.gif" /></a></span></li>
        <li><span><a target="_blank" href="http://www.proticaret.org/kategori/muhasebe-entegrasyonlari.aspx?tabId=2717">
            <img alt="" width="80" src="/admin/assets/images/logo/logo2.gif" /></a></span></li>
        <li><span><a target="_blank" href="http://www.proticaret.org/kategori/muhasebe-entegrasyonlari.aspx?tabId=2717">
            <img alt="" width="80" src="/admin/assets/images/logo/mikro.gif" /></a></span></li>
        <li><span><a target="_blank" href="http://www.proticaret.org/kategori/muhasebe-entegrasyonlari.aspx?tabId=2717">
            <img alt="" width="80" src="/admin/assets/images/logo/as400.gif" /></a></span></li>
        <li><span><a target="_blank" href="http://www.proticaret.org/kategori/muhasebe-entegrasyonlari.aspx?tabId=2717">
            <img alt="" width="80" src="/admin/assets/images/logo/saplogo.gif" /></a></span></li>
        <li><span><a target="_blank" href="http://www.proticaret.org/kategori/muhasebe-entegrasyonlari.aspx?tabId=2717">
            <img alt="" width="80" src="/admin/assets/images/logo/likom.gif" /></a></span></li>
        <li><span><a target="_blank" href="http://www.proticaret.org/kategori/muhasebe-entegrasyonlari.aspx?tabId=2717">
            <img alt="" width="80" src="/admin/assets/images/logo/resital.gif" /></a></span></li>
        <li><span><a target="_blank" href="http://www.proticaret.org/kategori/muhasebe-entegrasyonlari.aspx?tabId=2717">
            <img alt="" width="80" src="/admin/assets/images/logo/nebim.jpg" /></a></span></li>
        <li><span><a target="_blank" href="http://www.proticaret.org/kategori/muhasebe-entegrasyonlari.aspx?tabId=2717">
            <img alt="" width="80" src="/admin/assets/images/logo/netsis.jpg" /></a></span></li>
    </ul>
</div>
<div style="display: none;">
    <div class="dataForm">
        <div class="row">
            <div class="col1-2">
                <div class="row">
                    <div class="colTwo">
                        <label>
                            Ticari Program :</label>
                        <label>
                            <asp:DropDownList ID="ddlTicariProgram" runat="server" AutoPostBack="True">
                                <asp:ListItem Value="VEGA">VEGA</asp:ListItem>
                                <asp:ListItem Value="MIKRO">MIKRO</asp:ListItem>
                                <asp:ListItem Value="LOGO">Logo(Tiger)</asp:ListItem>
                                <asp:ListItem Value="LOGO">Resital</asp:ListItem>
                            </asp:DropDownList>
                        </label>
                    </div>
                    <div class="colTwo">
                        <label>
                            Ýp Adresi(SQL) :</label>
                        <label>
                            <asp:TextBox ID="txtIp" runat="server" ToolTip="212.175.17.130 þeklnde bir ip adresi giriniz."></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Geçerli Bir Ip Adresi Giriniz."
                                ControlToValidate="txtIp" Enabled="false" ValidationExpression="^(25[0-5]|2[0-4]\d|[0-1]?\d?\d)(\.(25[0-5]|2[0-4]\d|[0-1]?\d?\d)){2}(\.(25[0-4]|2[0-4]\d|[0-1]?\d?\d))$">*</asp:RegularExpressionValidator>
                        </label>
                    </div>
                </div>
                <div class="row">
                    <div class="colTwo">
                        <label>
                            Kullanýcý Adý(SQL) :</label>
                        <label>
                            <asp:TextBox ID="txtUserName" runat="server" ToolTip="Sql server kullanýcý adý."></asp:TextBox></label>
                    </div>
                    <div class="colTwo">
                        <label>
                            Parola(SQL) :</label>
                        <label>
                            <asp:TextBox ID="txtPwd" runat="server" ToolTip="Sql server parolasý."></asp:TextBox></label>
                    </div>
                </div>
                <div class="row">
                    <div class="colTwo">
                        <label>
                            Veritabaný(SQL) :</label>
                        <label>
                            <asp:TextBox ID="txtDb" runat="server" ToolTip="Vega Veritabaný adý."></asp:TextBox></label>
                    </div>
                    <div class="colTwo">
                        <label>
                            Baðlantýyý Sýna :</label>
                        <asp:LinkButton ID="lnkTest" runat="server" CssClass="btnDefault">Baðlantýyý Sýna</asp:LinkButton>
                        <asp:Label ID="lblmsg" runat="server" CssClass="textRed"></asp:Label>
                    </div>
                </div>
                <div class="row">
                    <div class="colTwo">
                        <label>
                            Firma :</label>
                        <label>
                            <asp:DropDownList ID="ddlFirmalar" runat="server" AutoPostBack="True">
                            </asp:DropDownList>
                        </label>
                    </div>
                    <div class="colTwo">
                        <label>
                            Dönem :</label>
                        <label>
                            <asp:DropDownList ID="ddlDonem" runat="server">
                            </asp:DropDownList>
                        </label>
                    </div>
                </div>
                <div class="row">
                    <div class="colTwo">
                        <label>
                            <asp:LinkButton ID="applyBtn" runat="server" CssClass="btnDefault"><i class="fa fa-save"></i> <%= GetGlobalResourceObject("admin","Save") %></asp:LinkButton></label>
                        <label>
                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="Lütfen Bilgileri Kontrol ediniz..."
                                CssClass="alert alert-error"></asp:ValidationSummary>
                        </label>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
