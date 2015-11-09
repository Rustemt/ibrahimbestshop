<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="editpayment.aspx.vb" Inherits="ASPNetPortal.editpayment2" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<title></title>
</head>
<body>
<form id="form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText" runat="server"><%= GetGlobalResourceObject("admin","PaymentListEdit") %></div>
		</div>
		<div class="toggleContent">
			<asp:Label ID="lblErr" runat="server"></asp:Label>
			<asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False" ShowMessageBox="True"></asp:ValidationSummary>

			<div class="dataForm">
				<div class="row">
					<div class="colOne">
						<label runat="server"><%= GetGlobalResourceObject("admin","PaymentTemplateName") %>: <asp:RequiredFieldValidator ID="rfv1" runat="server" ErrorMessage="Ödeme Şablon Adı Giriniz." ControlToValidate="txtname">*</asp:RequiredFieldValidator></label>
						<asp:TextBox runat="server" ID="txtname" />
					</div>
				</div>
				<div class="row">
					<div class="colOne">
						<label runat="server"><%= GetGlobalResourceObject("admin", "PaymentTemplateCode")%>: <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Ödeme Şablon Kodu Giriniz." ControlToValidate="txtcode">*</asp:RequiredFieldValidator></label>
						<asp:TextBox runat="server" ID="txtcode" />
					</div>
				</div>
				<div class="row">
					<div class="colOne">
						<label><asp:Label ID="Label13" runat="server"><%= GetGlobalResourceObject("admin", "Status")%>:</asp:Label></label>
						<label class="labelInput"><asp:CheckBox ID="chkIsActive" runat="server" Text="<%$ Resources:admin,Active %>" Checked="True"></asp:CheckBox></label>
					</div>
				</div>
				<div class="row">
					<div class="colTwo colBtn">
						<label runat="server"><%= GetGlobalResourceObject("admin", "StartDate")%>: <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Başlangıç Tarihi belirtiniz." ControlToValidate="txtStartDate">*</asp:RequiredFieldValidator></label>
						<ew:CalendarPopup ID="txtStartDate" runat="server" text=">" DisableTextBoxEntry="False" AllowArbitraryText="False" NullableLabelText="Tarih Giriniz" Nullable="false" MonthYearPopupCancelText="İptal" MonthYearPopupApplyText="Uygula" GoToTodayText="Bu gün:" ClearDateText="Sil"></ew:CalendarPopup>
					</div>
					<div class="colTwo colBtn">
						<label runat="server"><%= GetGlobalResourceObject("admin", "EndDate")%>: <asp:RequiredFieldValidator ID="Requiredfieldvalidator1" runat="server" ErrorMessage="Başlangıç Tarihi belirtiniz." ControlToValidate="txtEndDate">*</asp:RequiredFieldValidator></label>
						<ew:CalendarPopup ID="txtEndDate" runat="server" text="<" DisableTextBoxEntry="False" AllowArbitraryText="False" NullableLabelText="Tarih Giriniz" Nullable="false" MonthYearPopupCancelText="İptal" MonthYearPopupApplyText="Uygula" GoToTodayText="Bu gün:" ClearDateText="Sil"></ew:CalendarPopup>
					</div>
				</div>
				<div class="row">
					<div class="colOne">
						<label><asp:Label ID="Label4" runat="server"><%= GetGlobalResourceObject("admin", "CustomerFilter")%>:</asp:Label></label>
						<asp:Label ID="lblUserFilter" runat="server"></asp:Label>
						<input id="txtUserFilterDesc" type="hidden" size="2" name="Hidden1" runat="server">
						<input id="txtUserFilter" type="hidden" size="2" name="Hidden1" runat="server">
						<asp:HyperLink ID="lnkCustomer" runat="server" Text="<%$ Resources:admin,Edit %>" CssClass="btnDefault"></asp:HyperLink>
						<div class="alert alert-info"><asp:Label ID="note" runat="server"><%= GetGlobalResourceObject("admin","PaymentNote") %>.</asp:Label></div>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label class="labelInput"><asp:CheckBox Text="<%$ Resources:admin,BankTransfer %>" ID="cbtransfer" runat="server" /></label>
					</div>
					<div class="colTwo">
						<label class="labelInput"><asp:CheckBox Text="<%$ Resources:admin,iParaPayment %>" ID="cbipara" runat="server" /></label>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label class="labelInput"><asp:CheckBox Text="<%$ Resources:admin,PaypalPayment %>" ID="cbpaypal" runat="server" /></label>
					</div>
					<div class="colTwo">
						<label class="labelInput"><asp:CheckBox Text="<%$ Resources:admin,PayUPayment %>" ID="cbpayu" runat="server" /></label>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label class="labelInput"><asp:CheckBox Text="<%$ Resources:admin,QapelPayment %>" ID="cbqapel" runat="server" /></label>
					</div>
					<div class="colTwo">
						<label class="labelInput"><asp:CheckBox Text="<%$ Resources:admin,OtherPaymentTypes %>" ID="cbother" runat="server" /></label>
					</div>
				</div>
				<div class="row">
					<div class="colOne">
						<label><asp:Label ID="Label1" runat="server"><%= GetGlobalResourceObject("admin","BankDefinitions") %></asp:Label></label>
						<asp:HyperLink ID="hypnewbank" CssClass="btnDefault" Text="<%$ Resources:admin,AddNewBank %>" runat="server" />
                        <p></p>
						<div class="dataTable">
							<asp:DataGrid ID="dgbanks" runat="server" GridLines="None" HeaderStyle-CssClass="title" AutoGenerateColumns="False" PageSize="20" ShowFooter="True">
							<Columns>
							<asp:BoundColumn DataField="PBankId" HeaderText="ID"></asp:BoundColumn>
							<asp:BoundColumn DataField="BankDesc" HeaderText="<%$ Resources:admin,BankName %>"></asp:BoundColumn>
							<asp:BoundColumn DataField="IsActive" HeaderText="<%$ Resources:admin,Active %>"></asp:BoundColumn>
							<asp:TemplateColumn HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="<%$ Resources:admin,Installment %>">
								<ItemTemplate>
									<asp:HyperLink ID="Hyperlink2" runat="Server" CssClass="btnIcon" NavigateUrl='<%# "Javascript:var PopUpWin = window.open(""PBankInfo.aspx?BIND=" & DataBinder.Eval(Container.DataItem, "PBankId") & "&MID=" & 0 & ""","""",""width=600,height=600,scrollbars=1,toolbar=0,status=1,resizable=1"")"%> '><i class="fa fa-pencil"></i></asp:HyperLink>
								</ItemTemplate>
							</asp:TemplateColumn>
							<asp:TemplateColumn HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="<%$ Resources:admin,Edit %>">
								<ItemTemplate>
									<asp:HyperLink ID="Hyperlink3" runat="Server" CssClass="btnIcon" NavigateUrl='<%# "Javascript:var PopUpWin = window.open(""EditpBank.aspx?BIND=" & DataBinder.Eval(Container.DataItem, "PBankId") & "&FIND=" & 0 & ""","""",""width=300,height=300,scrollbars=1,toolbar=0,status=1,resizable=1"")"%> '><i class="fa fa-pencil"></i></asp:HyperLink>
								</ItemTemplate>
							</asp:TemplateColumn>
							<asp:TemplateColumn HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="<%$ Resources:admin,Delete %>">
								<ItemTemplate>
									<asp:LinkButton ID="lnkbtnDelete" runat="server" CssClass="btnIcon" CausesValidation="false" CommandName="Delete" ><i class="fa fa-trash-o"></i></asp:LinkButton>
								</ItemTemplate>
							</asp:TemplateColumn>
							</Columns>
							</asp:DataGrid>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="colOne buttonGroup">
						<asp:Button ID="btnAdd" runat="server" CssClass="btnDefault" Text="<%$ Resources:admin,SaveAndClosePicture %>"></asp:Button>
						<asp:Button ID="btnCancel" runat="server" CssClass="btnDefault" Text="<%$ Resources:admin,Cancel %>" CausesValidation="False"></asp:Button>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</form>
</body>
</html>