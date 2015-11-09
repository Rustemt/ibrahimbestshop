<%@ Page Language="vb" ValidateRequest="false" AutoEventWireup="false" Inherits="ASPNetPortal.editcategory" CodeBehind="editcategory.aspx.vb" %>
<%@ Register TagPrefix="FCKeditorV2" Namespace="FredCK.FCKeditorV2" Assembly="FredCK.FCKeditorV2" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
<title>Kategori Düzenle</title>
</head>
<body>
<form id="Form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle" id="TabContainer" runat="server">
		<div class="toggleTitle toggleMini">
			<div class="titleText" style="font-size:14px; padding-left:5px;">Kategori Düzenle</div>
			<div class="titleTab">
				<ul class="tabMenu">
					<li><a href="#tab_1" style="font-size:12px;"><%=GetGlobalResourceObject("admin", "CategoryInformation")%></a></li>
					<li><a href="#tab_2" style="font-size:12px;"><%=GetGlobalResourceObject("admin", "CategoryDetailHtml")%></a></li>
					<li><a href="#tab_3" style="font-size:12px;"><%=GetGlobalResourceObject("admin", "XmlIntegrationEditCategory")%></a></li>
					<li><a href="#tab_4" style="font-size:12px;"><%=GetGlobalResourceObject("admin", "TabSeo")%></a></li>
				</ul>
			</div>
		</div>
		<div class="toggleContent">
			<asp:Label ID="lblErr" runat="server"></asp:Label>
			<asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False"></asp:ValidationSummary>
			<div class="tabContent">
				<div class="tab" id="tab_1">
					<div class="dataForm">
						<div class="row">
							<div class="colTwo">
								<label><%=GetGlobalResourceObject("admin", "ParentCategoryName")%> :</label>
								<asp:Label ID="lblParent" runat="server"></asp:Label>
							</div>
						</div>
						<div class="row">
							<div class="colTwo">
								<label><%=GetGlobalResourceObject("admin", "CategoryName")%> : <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="Kategori Adýný Boþ Býrakmayýnýz.">*</asp:RequiredFieldValidator></label>
								<asp:TextBox ID="txtName" runat="server" MaxLength="99"></asp:TextBox>
							</div>
							<div class="colTwo colBtn">
								<label><%=GetGlobalResourceObject("admin", "CategoryImage")%> :</label>
								<asp:TextBox ID="Src" runat="server"></asp:TextBox>
								<asp:HyperLink ID="showGalleryButton" runat="server" NavigateUrl="#" CssClass="btnDefault" onclick="BrowseServer('Src');"><i class="fa fa-folder-open-o"></i> Galeri</asp:HyperLink>
							</div>
						</div>
						<div class="row">
							<div class="colTwo">
								<label><%=GetGlobalResourceObject("admin", "CategoryCode")%> : <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtCategoryCode" ErrorMessage="Kategori Kodunu Boþ Býrakmayýnýz.">*</asp:RequiredFieldValidator></label>
								<asp:TextBox ID="txtCategoryCode" runat="server" MaxLength="99"></asp:TextBox>
							</div>
							<div class="colTwo">
								<label><%=GetGlobalResourceObject("admin", "ShowOrder")%> :</label>
								<ew:NumericBox ID="txtOrder" runat="server" PositiveNumber="True">1</ew:NumericBox>
							</div>
						</div>
						<div class="row">
							<div class="colTwo checkList">
								<label>&nbsp;</label>
								<ul>
									<li><asp:CheckBox ID="chkShowmenu1" runat="server"></asp:CheckBox> <%=GetGlobalResourceObject("admin", "CategorySecondMenu")%></li>
									<li><asp:CheckBox ID="chkIsActive" runat="server" Checked="True"></asp:CheckBox> <%=GetGlobalResourceObject("admin", "UserStatus")%></li>
									<li><asp:CheckBox ID="chkVisible" runat="server" Checked="True"></asp:CheckBox> <%=GetGlobalResourceObject("admin", "CategoryVisible")%></li>
								</ul>
							</div>
						</div>
						<div class="row"  runat="server" id="divc2c">
							<div class="colTwo">
								<label>C2C Kategori Komisyon Oraný(Yüzde) :</label>
                                <asp:TextBox ID="txtkomisyon" runat="server" />
							</div>
						</div>
						<div class="row">
							<div class="colTwo colBtn">
								<label><%=GetGlobalResourceObject("admin", "SalesStartDate")%> :</label>
								<ew:CalendarPopup ID="txtStartDate" runat="server" Text=">" ShowGoToToday="True" Nullable="True" GoToTodayText="Bu Gün:" DisableTextBoxEntry="False" ClearDateText="Sil" calendarlocation="Bottom" AllowArbitraryText="False"></ew:CalendarPopup>
							</div>
							<div class="colTwo colBtn">
								<label>Satýþ Baþlama Saati :</label>
								<ew:TimePicker ID="txtStartTime" runat="server" Nullable="True" Text=">" DisableTextBoxEntry="False" ShowClearTimeText="True" PopupHeight="" ClearTimeText="Sil" MinuteInterval="30" UpperBoundTime="03/24/2011 23:30:00" LowerBoundTime="2011-03-24" PopupWidth=""></ew:TimePicker>
							</div>
						</div>
						<div class="row">
							<div class="colTwo colBtn">
								<label><%=GetGlobalResourceObject("admin", "SalesEndDate")%> :</label>
								<ew:CalendarPopup ID="txtEndDate" runat="server" Text="<" ShowGoToToday="True" Nullable="True" GoToTodayText="Bu Gün:" DisableTextBoxEntry="False" ClearDateText="Sil" CalendarLocation="Bottom" AllowArbitraryText="False"></ew:CalendarPopup>
							</div>
							<div class="colTwo colBtn">
								<label>Satýþ Bitiþ Saati :</label>
								<ew:TimePicker ID="txtEndTime" runat="server" Nullable="True" Text="<" DisableTextBoxEntry="False" ShowClearTimeText="True" PopupHeight="" ClearTimeText="Sil" MinuteInterval="30" UpperBoundTime="03/24/2011 23:30:00" LowerBoundTime="2011-03-24" PopupWidth=""></ew:TimePicker>
							</div>
						</div>
						<div class="row">
							<div class="colOne">
								<label><%=GetGlobalResourceObject("admin", "PageKeywordsSeo")%> :</label>
								<asp:TextBox ID="txtSearchKeywords" runat="server" MaxLength="3000" TextMode="MultiLine"></asp:TextBox>
							</div>
						</div>
						<div class="row">
							<div class="colTwo">
								<label><%=GetGlobalResourceObject("admin", "ChooseTheme")%> :</label>
								<asp:DropDownList ID="ddlTemplate" runat="server"></asp:DropDownList>
							</div>
						</div>
					</div>
				</div>
				<div class="tab">
					<div class="dataForm">
						<div class="row">
							<div class="colOne">
								<label><%=GetGlobalResourceObject("admin", "CategoryDetailHtml")%> :</label>
								<FCKeditorV2:FCKeditor ID="FCKeditor1" runat="server" Width="80%" Height="400px" BasePath="/FCKeditor/" ToolbarSet="BasicPlus"></FCKeditorV2:FCKeditor>
							</div>
						</div>
						<div class="row">
							<div class="colOne">
								<label><%=GetGlobalResourceObject("admin", "CategoryDetailHtml")%>2 :</label>
								<FCKeditorV2:FCKeditor ID="FCKeditor2" runat="server" Width="80%" Height="400px" ToolbarSet="BasicPlus" BasePath="/FCKeditor/"></FCKeditorV2:FCKeditor>
							</div>
						</div>
					</div>
				</div>
				<div class="tab" id="tab_3">
					<p><%=GetGlobalResourceObject("admin", "CategoryXmlRates")%></p>
					<div class="dataForm">
						<div class="row">
							<div class="colTwo">
								<label><%=GetGlobalResourceObject("admin", "PurchasePriceRate")%> % :</label>
								<ew:NumericBox ID="txtFA" runat="server"></ew:NumericBox>
							</div>
							<div class="colTwo">
								<label><%=GetGlobalResourceObject("admin", "MarketPriceRate")%> % :</label>
								<ew:NumericBox ID="txtFP" runat="server"></ew:NumericBox>
							</div>
						</div>
						<div class="row">
							<div class="colTwo">
								<label><%=GetGlobalResourceObject("admin", "TransferPriceRate")%> % :</label>
								<ew:NumericBox ID="txtF0" runat="server"></ew:NumericBox>
							</div>
							<div class="colTwo">
								<label><%=GetGlobalResourceObject("admin", "FirstPriceRate")%> % :</label>
								<ew:NumericBox ID="txtF1" runat="server"></ew:NumericBox>
							</div>
						</div>
						<div class="row">
							<div class="colTwo">
								<label><%=GetGlobalResourceObject("admin", "SecondPriceRate")%> % :</label>
								<ew:NumericBox ID="txtF2" runat="server"></ew:NumericBox>
							</div>
							<div class="colTwo">
								<label><%=GetGlobalResourceObject("admin", "ThirdPriceRate")%> % :</label>
								<ew:NumericBox ID="txtF3" runat="server"></ew:NumericBox>
							</div>
						</div>
						<div class="row">
							<div class="colTwo">
								<label><%=GetGlobalResourceObject("admin", "FourthPriceRate")%> % :</label>
								<ew:NumericBox ID="txtF4" runat="server"></ew:NumericBox>
							</div>
							<div class="colTwo">
								<label><%=GetGlobalResourceObject("admin", "FifthPriceRate")%> % :</label>
								<ew:NumericBox ID="txtF5" runat="server"></ew:NumericBox>
							</div>
						</div>
					</div>
				</div>
				<div class="tab" id="tab_4">
					<div class="dataForm">
						<div class="row">
							<div class="colTwo">
								<label><%=GetGlobalResourceObject("admin", "PageTitleSeo")%> :</label>
								<asp:TextBox ID="title" runat="server" MaxLength="80"></asp:TextBox>
							</div>
							<div class="colTwo">
								<label><%=GetGlobalResourceObject("admin", "PageDescriptionSeo")%> :</label>
								<asp:TextBox ID="description" runat="server" MaxLength="160"></asp:TextBox>
							</div>
						</div>
						<div class="row">
							<div class="colOne">
								<label><%=GetGlobalResourceObject("admin", "PageKeywordsSeo")%> :</label>
								<asp:TextBox ID="keywords" runat="server" MaxLength="254"></asp:TextBox>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="buttonGroup">
				<asp:Button ID="btnAdd" runat="server" CssClass="btnDefault" Text="<%$ Resources:admin,Save %>"></asp:Button>
				<asp:Button ID="btnCancel" runat="server" CssClass="btnDefault" CausesValidation="False" Text="<%$ Resources:admin,Close %>"></asp:Button>
			</div>
		</div>
	</div>
</div>
</form>
</body>
</html>