<%@ Page Language="vb" ValidateRequest="false" AutoEventWireup="false" Inherits="ASPNetPortal.EditNetworkPayment" CodeBehind="EditNetworkPayment.aspx.vb" %>

<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
    <title><%= GetGlobalResourceObject("admin","PaymentEdit") %></title>
</head>
<body>
    <form id="Form1" runat="server">
        <div class="pagePopup">
            <div class="boxToggle">
                <div class="toggleTitle">
                    <div class="titleText" runat="server"><%= GetGlobalResourceObject("admin","PaymentEdit") %></div>
                </div>
                <div class="toggleContent">
                    <asp:Label ID="lblErr" runat="server"></asp:Label>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False"></asp:ValidationSummary>
                    <div class="dataForm">
                        <div class="row">
                            <div class="colTwo colBtn">
                                <label runat="server">
                                    <%= GetGlobalResourceObject("admin","SalesPartnerID") %> :
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtId" ErrorMessage="Satış Ortağı Giriniz.">*</asp:RequiredFieldValidator></label>
                                <asp:TextBox ID="txtId" runat="server"></asp:TextBox>
                                <asp:HyperLink ID="lnkCustomer" runat="server" CssClass="btnDefault"><i class="fa fa-paperclip"></i> <%=GetGlobalResourceObject("admin", "Select2")%></asp:HyperLink>
                            </div>
                            <div class="colTwo colBtn">
                                <label runat="server"><%= GetGlobalResourceObject("admin","ReceipttoFile") %> :</label>
                                <asp:TextBox ID="txtFileName" runat="server"></asp:TextBox>
                                <asp:HyperLink ID="showGalleryButton" runat="server" NavigateUrl="#" onclick="BrowseServer('txtFileName');" CssClass="btnDefault"><i class="fa fa-folder-open-o"></i> <%=GetGlobalResourceObject("admin", "Gallery")%></asp:HyperLink>
                            </div>
                        </div>
                        <div class="row">
                            <div class="colTwo colBtn">
                                <label runat="server"><%= GetGlobalResourceObject("admin","PaymentDate") %> :</label>
                                <ew:CalendarPopup ID="txtDate" runat="server" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" CalendarLocation="Bottom" DisableTextBoxEntry="False"></ew:CalendarPopup>
                            </div>
                            <div class="colTwo">
                                <label runat="server"><%= GetGlobalResourceObject("admin","PaymentAmount") %> :</label>
                                <ew:NumericBox ID="txtTutar" runat="server" DecimalSign="," GroupingSeparator=" " TextAlign="Right">0</ew:NumericBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="colTwo">
                                <label runat="server"><%= GetGlobalResourceObject("admin","AffiliateSettingsMailSent") %> :</label>
                                <label class="labelInput" runat="server">
                                    <asp:CheckBox ID="chkSendMail" runat="server"></asp:CheckBox>
                                    <%=GetGlobalResourceObject("admin", "StatusActiveOrPassive")%></label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="colOne">
                                <label runat="server"><%= GetGlobalResourceObject("admin","Description") %> :</label>
                                <asp:TextBox ID="txtdetails" TextMode="MultiLine" runat="server"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="buttonGroup">
                        <asp:Button ID="btnAdd" runat="server" CssClass="btnDefault" Text="<%$ Resources:admin,Save %>"></asp:Button>
                        <asp:Button ID="btnCancel" runat="server" CssClass="btnDefault" Text="<%$ Resources:admin,Cancel %>" CausesValidation="False"></asp:Button>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
