<%@ Page Language="vb" ValidateRequest="false" AutoEventWireup="false" Inherits="ASPNetPortal.editfcampain" CodeBehind="editfcampain.aspx.vb" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Register TagPrefix="FCKeditorV2" Namespace="FredCK.FCKeditorV2" Assembly="FredCK.FCKeditorV2" %>
<html>
<head id="head1" runat="server">
<title>Finansal Kampanya</title>
</head>
<body>
<form id="form2" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText">Finansal Tan�mlar</div>
		</div>
		<div class="toggleContent">
			<asp:Label ID="lblErr" runat="server"></asp:Label>
			<asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False" ShowMessageBox="True"></asp:ValidationSummary>
			<div class="buttonGroup">
				<asp:HyperLink ID="lnkexpress" runat="server" NavigateUrl="http://www.proticaret.net" Target="_blank" CssClass="btnDefault" Visible="False">Bu mod�ldeki �zellikleri kullnabilmek i�in L�tfen T�klay�n�z.</asp:HyperLink>
			</div>
			<div class="dataForm">
				<div class="row">
					<div class="colTwo">
                    	<div class="colOne">
						<label><asp:Label ID="Label13" runat="server">Durumu:</asp:Label></label>
						<label class="labelInput"><asp:CheckBox ID="chkIsActive" runat="server" Text="Aktif/Pasif" Checked="True"></asp:CheckBox></label>
                        </div>
                        <div class="colOne">
                        <label><asp:Label ID="Label1" runat="server">Kampanya Ad�:</asp:Label> <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Kampanya Ad� Girmelisiniz" ControlToValidate="txtCampainName">*</asp:RequiredFieldValidator></label>
						<asp:TextBox ID="txtCampainName" runat="server" MaxLength="50"></asp:TextBox>
                        </div>
					</div>
                    <div class="colTwo">
						
					</div>
				</div>
				<div class="row">
                	<div class="colTwo">
                        <div class="colOne colBtn">
                        <label><asp:Label ID="Label5" runat="server">Ba�lang�� Tarihi:</asp:Label> <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Ba�lang�� Tarihi belirtiniz." ControlToValidate="txtStartDate">*</asp:RequiredFieldValidator></label>
                        <ew:CalendarPopup ID="txtStartDate" runat="server" Culture="Turkish (Turkey)" Text=">" DisableTextBoxEntry="False" AllowArbitraryText="False" NullableLabelText="Tarih Giriniz" Nullable="True" MonthYearPopupCancelText="�ptal" MonthYearPopupApplyText="Uygula" GoToTodayText="Bu g�n:" ClearDateText="Sil"></ew:CalendarPopup>
                        </div>
                        <div class="colOne" style="display:none;">
                        <label><asp:Label ID="Label9" runat="server" Visible="False">Saati:</asp:Label> <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Ba�lang�� Saatini belirtiniz." ControlToValidate="txtstarttime" Visible="False">*</asp:RequiredFieldValidator></label>
                        <ew:MaskedTextBox ID="txtstarttime" runat="server" ErrorMessage="ge�ersiz giri�" Mask="99:99" Text="00:00" Visible="False"></ew:MaskedTextBox>
                        </div>
                        <div class="colOne colBtn">
                        <label><asp:Label ID="Label6" runat="server">Biti� Tarihi:</asp:Label> <asp:RequiredFieldValidator ID="Requiredfieldvalidator1" runat="server" ErrorMessage="Ba�lang�� Tarihi belirtiniz." ControlToValidate="txtEndDate">*</asp:RequiredFieldValidator></label>
                        <ew:CalendarPopup ID="txtEndDate" runat="server" DisableTextBoxEntry="False" Text="<" AllowArbitraryText="False" NullableLabelText="Tarih Giriniz" Nullable="True" MonthYearPopupCancelText="�ptal" MonthYearPopupApplyText="Uygula" GoToTodayText="Bu g�n:" ClearDateText="Sil"></ew:CalendarPopup>
                        </div>
                        <div class="colOne" style="display:none;">
                        <label><asp:Label ID="Label10" runat="server" Visible="False">Saati:</asp:Label> <asp:RequiredFieldValidator ID="Requiredfieldvalidator3" runat="server" ErrorMessage="Biti� Saatini belirtiniz." ControlToValidate="txtendtime" Visible="False">*</asp:RequiredFieldValidator></label>
                        <ew:MaskedTextBox ID="txtendtime" runat="server" ErrorMessage="ge�ersiz giri�" Mask="99:99" Text="00:00" Visible="False"></ew:MaskedTextBox>
                        </div>
                    </div>
				</div>
			
			</div>
			<div class="buttonGroup">
				<asp:Button ID="btnAdd" runat="server" CssClass="btnDefault" Text="Kaydet &amp; Kapat"></asp:Button>
				<asp:Button ID="btnCancel" runat="server" CssClass="btnDefault" CausesValidation="False" Text="�ptal"></asp:Button>
			</div>
		</div>
	</div>
</div>
</form>
</body>
</html>