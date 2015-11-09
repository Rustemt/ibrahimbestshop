<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="sitesettings.ascx.vb" Inherits="ASPNetPortal.sitesettings" %>
<div class="pageSiteSettings">
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" Width="460px" ShowMessageBox="True" ShowSummary="False" HeaderText="Lütfen Bilgileri Kontrol ediniz..." Height="56px" Font-Size="X-Small"></asp:ValidationSummary>
    <div class="dataForm">
        <div class="row">
            <div class="colTwo">
                <div class="dataForm">
                    <div class="row">
                        <div class="colTwo">
                            <label>
                                <asp:Label ID="Label9" runat="server">Version : </asp:Label></label>
                            <label class="labelInput">
                                <asp:Label ID="lblver" runat="server"></asp:Label>
                                <asp:HyperLink ID="HyperLink1" runat="server" CssClass="Admin_Normal_Buton" Visible="False"><%= GetGlobalResourceObject("admin", "Detail")%></asp:HyperLink></label>
                        </div>
                        <div class="colTwo">
                            <label>
                                <asp:Label ID="Label2" runat="server"><%= GetGlobalResourceObject("admin", "SiteName")%> : </asp:Label></label>
                            <asp:TextBox ID="siteName" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="colTwo">
                            <label><%= GetGlobalResourceObject("admin", "SiteUrl")%> : <small>(örnek: http://www.siteniz.com)</small></label>
                            <asp:TextBox ID="siteUrl" runat="server"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="rqsiteurl" runat="server" ControlToValidate="siteUrl" ErrorMessage="Lütfen geçerli bir Url giriniz." ValidationExpression="^http://([\w-]+\.)+[\w-]+(/[\w- ./?%&=]*)?">*</asp:RegularExpressionValidator>
                            <asp:RequiredFieldValidator ErrorMessage="Lütfen bir Url giriniz." ControlToValidate="siteUrl" runat="server">*</asp:RequiredFieldValidator>
                        </div>
                        <div class="colTwo">
                            <label>
                                <asp:Label ID="Label1" runat="server"><%= GetGlobalResourceObject("admin", "Themes")%>: </asp:Label></label>
                            <asp:DropDownList ID="ddlTemplate" runat="server"></asp:DropDownList>
                        </div>
                    </div>
                    <div class="row">
                        <div class="colOne">
                            <asp:CheckBox ID="chkShowMenu" runat="server" ToolTip="Ana Menü Gösterilsin." Visible="False"></asp:CheckBox>
                            <asp:CheckBox ID="chkShowfooterMenu" runat="server" Visible="False"></asp:CheckBox>
                            <asp:CheckBox ID="chkHeadMenu" runat="server" ToolTip="Ana Menü Gösterilsin." Visible="False"></asp:CheckBox>
                            <asp:TextBox ID="email" runat="server" ToolTip="E-mail adresinizi giriniz..." Visible="False" Width="150px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="emailRequired" runat="server" ControlToValidate="email" ErrorMessage="'E-mail' Boş birakilmamali." Visible="False" Font-Name="verdana" ForeColor=" ">*</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="emailValid" runat="server" ValidationExpression="[\w\.-]+(\+[\w-]*)?@([\w-]+\.)+[\w-]+" ControlToValidate="email" ErrorMessage="Geçerli bir 'E-mail' girmelisiniz." Visible="False" ForeColor=" ">*</asp:RegularExpressionValidator>
                            <asp:CheckBox ID="chkIsEmarket" runat="server" ToolTip="Site E-Ticaret Platformunu aktif hale getirir" Visible="False"></asp:CheckBox>
                            <asp:CheckBox ID="showEdit" runat="server" Visible="False"></asp:CheckBox>
                        </div>
                    </div>
                </div>
                <div class="buttonGroup">
                    <asp:LinkButton ID="applyBtn" runat="server" CssClass="btnDefault" OnClick="applyBtn_Click"><i class="fa fa-save"></i> <%= GetGlobalResourceObject("admin","Save") %></asp:LinkButton>
                    <a href="/admin/cms/edittabs.aspx" class="btnDefault fancyContent"><i class="fa fa-files-o"></i><%= GetGlobalResourceObject("admin", "ThemesBackUp")%></a>
                </div>
            </div>
        </div>
    </div>
</div>
