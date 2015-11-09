<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="editofferproje.aspx.vb" Inherits="editofferproje" %>

<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI, Version=2.0.6.2393, Culture=neutral, PublicKeyToken=24d65337282035f2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><html xmlns="http://www.w3.org/1999/xhtml">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Bölüm Ekle</title>
</head>
<body>
    <form id="form1" runat="server">
        <div id="module" class="pagePopup">
            <div class="boxToggle" runat="server">
                <div class="toggleTitle">
                    <div class="titleText">Teklif Proje Kartı</div>
                </div>
                <div class="toggleContent">
                    <label id="lblMessage" runat="server"></label>
                    <div class="dataForm">
                        <div class="row">
                        	<div class="colTwo">
                            	<label>Proje No :</label>
                                <asp:TextBox ID="txtProjectNo" runat="server" MaxLength="50"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="txtProjectNoRFV" runat="server" ControlToValidate="txtProjectNo" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtProjectNo" ErrorMessage="Sadece Rakam" ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>                                
                            </div>
                            <div class="colTwo">
                            	<label>Proje Kodu :</label>
                                <asp:TextBox ID="txtProjectCode" runat="server" MaxLength="50"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="txtProjectCodeRFV" runat="server" ControlToValidate="txtProjectCode" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>                                
                            </div>
                        </div>
                        <div class="row">
                        	<div class="colTwo">
                            	<label>Proje Adı :</label>
                                <asp:TextBox ID="txtProjectName" runat="server" MaxLength="100"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="txtProjectNameRFV" runat="server" ControlToValidate="txtProjectName" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                            </div>
                            <div class="colTwo">
                            	<label>Şirket :</label>
                                <asp:TextBox ID="txtProjectCompany" runat="server" MaxLength="100"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="txtProjectCompanyRFV" runat="server" ControlToValidate="txtProjectCompany" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="row">
                            <div class="colOne">
                            	<label>Yönetici :</label>
                                <asp:TextBox ID="txtProjectAdmin" runat="server" MaxLength="50"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="txtProjectAdminRFV" runat="server" ControlToValidate="txtProjectAdmin" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="colGroup">
                        	<div class="col col4">
                            	<label>Başlangıç - Bitiş Tarihi :</label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtProjectStartDates" ErrorMessage="RequiredFieldValidator" Visible="false">*</asp:RequiredFieldValidator>
                                <ew:CalendarPopup ID="txtProjectStartDates" runat="server" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" Text=">" DisableTextBoxEntry="False"></ew:CalendarPopup>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtProjectFinishDates" ErrorMessage="RequiredFieldValidator" Visible="false">*</asp:RequiredFieldValidator>
                                <ew:CalendarPopup ID="txtProjectFinishDates" runat="server" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" Text="<" DisableTextBoxEntry="False"></ew:CalendarPopup>
                            </div>
                        </div>
                        
                        <div class="buttonGroup">
                            <asp:Button ID="btnSave" runat="server" CssClass="btnDefault" Text="Kaydet" ToolTip="Yeni proje ekler." OnClick="btnSave_Click" />
                            <asp:Label ID="lblError" runat="server" Visible="false"></asp:Label>
                            <asp:Button ID="btnEdit" runat="server" Text="Kaydet" Visible="false" CssClass="btnDefault" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <asp:Label Text="" runat="server" ID="lbl" /> 
    </form>
</body>
</html>
