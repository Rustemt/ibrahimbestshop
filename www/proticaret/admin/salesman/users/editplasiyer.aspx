<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="editplasiyer.aspx.vb" Inherits="ASPNetPortal.editplasiyer" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
<title><%= GetGlobalResourceObject("admin","CustomerRepresentativeEdit") %></title>
</head>
<body>
<form id="Form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle" id="TabContainer" runat="server">
    	<asp:Label ID="lblErr" runat="server"></asp:Label>
		<asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False" ShowMessageBox="True"></asp:ValidationSummary>
        <div class="toggleTitle toggleMini">
            <div class="titleText"><%= GetGlobalResourceObject("admin","CustomerRepresentativeEditNew") %></div>
            <div class="titleTab">
                <ul class="tabMenu">
                    <li><a href="#tab_1"><%= GetGlobalResourceObject("admin","MembershipInformation") %></a></li>
                    <li><a href="#tab_2"><%= GetGlobalResourceObject("admin","PersonalInformation") %></a></li>
                    <li><a href="#tab_3"><%= GetGlobalResourceObject("admin","Authorization") %></a></li>
                </ul>
            </div>
        </div>
        <div class="toggleContent">
            <div class="tabContent">
                <div class="tab" id="tab_1">
                	<div class="dataForm">
                    	<div class="row">
					<div class="colTwo">
						<label><%= GetGlobalResourceObject("admin","MemberCode") %> :</label>
						<asp:TextBox ID="txtFirmaKodu" runat="server" MaxLength="254"></asp:TextBox>
					</div>
					<div class="colTwo">
						<label><%= GetGlobalResourceObject("admin","IdentyNumber") %> :</label>
						<asp:TextBox ID="txtTcKimlikNo" runat="server" MaxLength="11"></asp:TextBox>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label><%= GetGlobalResourceObject("admin","UserName") %> : <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Kart Adı Girmelisiniz." ControlToValidate="txtName">*</asp:RequiredFieldValidator></label>
						<asp:TextBox ID="txtName" runat="server" MaxLength="254"></asp:TextBox>
					</div>
					<div class="colTwo">
						<label><%= GetGlobalResourceObject("admin","Email") %> : <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Geçerli bir mail adresi giriniz." ControlToValidate="txtMail" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator></label>
						<asp:TextBox ID="txtMail" runat="server" MaxLength="100"></asp:TextBox>
					</div>
				</div>
				<div class="row">
					<div class="colTwo colBtn">
						<label><%= GetGlobalResourceObject("admin","BirthDate") %> :</label>
						<ew:CalendarPopup ID="txtDogumTarihi" runat="server" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" DisableTextBoxEntry="False"></ew:CalendarPopup>						
					</div>
					<div class="colTwo colBtn">
                    	<label><%= GetGlobalResourceObject("admin","Password") %> :</label>
						<asp:TextBox ID="txtPassword" runat="server" MaxLength="20" TextMode="Password"></asp:TextBox>
						<asp:Button ID="btnSendmail" runat="server" CausesValidation="False" CssClass="btnDefault" Text="<%$ Resources:admin,MailSent %>" ToolTip="Parolayı mail olarak kullanıcıya gönderir." />
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label><%= GetGlobalResourceObject("admin","BonusforCustomerRepresentative") %> % :</label>
						<asp:TextBox ID="txtprim" runat="server" Text="0"></asp:TextBox>
						<asp:FilteredTextBoxExtender runat="server" ID="ftbe1" TargetControlID="txtprim" ValidChars="0123456789." FilterType="Custom"></asp:FilteredTextBoxExtender>
					</div>
				</div>
				<div class="row">
					<div class="colOne">
						<label><%= GetGlobalResourceObject("admin","Description") %> :</label>
						<asp:TextBox ID="txtAcıklama" runat="server" MaxLength="399" TextMode="MultiLine"></asp:TextBox>
					</div>
				</div>
                    </div>
                </div>
                <div class="tab" id="tab_2">
                	<div class="dataForm">
                    	<div class="row">
					<div class="colTwo">
						<label><%= GetGlobalResourceObject("admin","FullName") %> : <asp:RequiredFieldValidator ID="rq" runat="server" ErrorMessage="Adı Soyadı Girmelisiniz." ControlToValidate="txtFullName">*</asp:RequiredFieldValidator></label>
						<asp:TextBox ID="txtFullName" runat="server" MaxLength="254"></asp:TextBox>
					</div>
					<div class="colTwo">
						<label><%= GetGlobalResourceObject("admin","Sex") %> :</label>
						<label class="labelInput">
						<asp:RadioButtonList ID="rbSex" runat="server" RepeatDirection="Horizontal" CssClass="radioList">
						<asp:ListItem Text="<%$ Resources:admin,Male %>" Value="1" Selected="True"></asp:ListItem>
						<asp:ListItem Text="<%$ Resources:admin,Female %>" Value="0"></asp:ListItem>
						</asp:RadioButtonList>
						</label>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label><%= GetGlobalResourceObject("admin","HomePhone") %> :</label>
						<ew:MaskedTextBox ID="txtTelefon1" runat="server" ErrorMessage="geçersiz giriş" Mask="9999999999999" MaxLength="14"></ew:MaskedTextBox>
					</div>
					<div class="colTwo">
						<label><%= GetGlobalResourceObject("admin","BusinessPhone") %> :</label>
						<ew:MaskedTextBox ID="txtTelefon2" runat="server" ErrorMessage="geçersiz giriş" Mask="9999999999999" MaxLength="14"></ew:MaskedTextBox>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label><%= GetGlobalResourceObject("admin","Fax") %> :</label>
						<ew:MaskedTextBox ID="txtFax" runat="server" ErrorMessage="geçersiz giriş" Mask="9999999999999" MaxLength="14"></ew:MaskedTextBox>
					</div>
					<div class="colTwo">
						<label><%= GetGlobalResourceObject("admin", "MobilePhoneNumber")%> :</label>
						<ew:MaskedTextBox ID="txtGsm" runat="server" ErrorMessage="geçersiz giriş" Mask="9999999999999" MaxLength="14"></ew:MaskedTextBox>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label><%= GetGlobalResourceObject("admin", "SalesArea")%> : <asp:RequiredFieldValidator ID="rfvArea" runat="server" ErrorMessage="Bölge Seçmelisiniz." ControlToValidate="ddlarea" InitialValue="0">*</asp:RequiredFieldValidator></label>
						<asp:DropDownList ID="ddlarea" runat="server" AutoPostBack="true"></asp:DropDownList>
					</div>
					<div class="colTwo">
						<label><%= GetGlobalResourceObject("admin", "SalesPlaces")%> : <asp:RequiredFieldValidator ID="rvfPlace" runat="server" ErrorMessage="Yer Seçmelisiniz." ControlToValidate="ddlplace" InitialValue="0">*</asp:RequiredFieldValidator></label>
						<asp:DropDownList ID="ddlplace" runat="server" AutoPostBack="true"></asp:DropDownList>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label><%= GetGlobalResourceObject("admin", "SalesGroup")%> : <asp:RequiredFieldValidator ID="rvfGroup" runat="server" ErrorMessage="Grup Seçmelisiniz." ControlToValidate="ddlgroup" InitialValue="0">*</asp:RequiredFieldValidator></label>
						<asp:DropDownList ID="ddlgroup" runat="server"></asp:DropDownList>
					</div>
					<div class="colTwo"></div>
				</div>
                    </div>
                </div>
                <div class="tab" id="tab_3">
                	<div class="dataForm">
                    	<div class="row">
					<div class="colTwo">
						<label><%= GetGlobalResourceObject("admin", "AppendMember")%> :</label>
						<label class="labelInput"><asp:CheckBox ID="chkadd" runat="server" /> <%=GetGlobalResourceObject("admin", "StatusActiveOrPassive")%></label>
					</div>
					<div class="colTwo">
						<label><%= GetGlobalResourceObject("admin", "DeleteMember")%> :</label>
						<label class="labelInput"><asp:CheckBox ID="chkdelete" runat="server" /> <%=GetGlobalResourceObject("admin", "StatusActiveOrPassive")%></label>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label><%= GetGlobalResourceObject("admin", "SeeMemberDetail")%> :</label>
						<label class="labelInput"><asp:CheckBox ID="chkdetay" runat="server" /> <%=GetGlobalResourceObject("admin", "StatusActiveOrPassive")%></label>
					</div>
					<div class="colTwo">
						<label><%= GetGlobalResourceObject("admin", "UpdateOrderStatus")%> :</label>
						<label class="labelInput"><asp:CheckBox ID="chkorder" runat="server" /> <%=GetGlobalResourceObject("admin", "StatusActiveOrPassive")%></label>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label><%= GetGlobalResourceObject("admin", "CreateDate")%> :</label>
						<label class="labelInput"><asp:Label ID="lblTarih" runat="server"></asp:Label></label>
					</div>
					<div class="colTwo">
						<label><%= GetGlobalResourceObject("admin", "LastLogin")%> :</label>
						<label class="labelInput"><asp:Label ID="lblLTarih" runat="server"></asp:Label></label>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label><%= GetGlobalResourceObject("admin", "TotalDept")%> :</label>
						<label class="labelInput"><ew:NumericBox ID="txtCredit" runat="server" TextAlign="Right" DecimalSign="," GroupingSeparator=" " Visible="False">0</ew:NumericBox></label>
					</div>
				</div>
                    </div>
                </div>
                <div class="tab" id="tab_4">
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
