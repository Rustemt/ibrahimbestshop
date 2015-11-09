<%@ Page Language="vb" ValidateRequest="false" AutoEventWireup="false" Inherits="ASPNetPortal.EditMark" CodeBehind="EditMark.aspx.vb" %>
<%@ Register TagPrefix="FCKeditorV2" Namespace="FredCK.FCKeditorV2" Assembly="FredCK.FCKeditorV2" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Register Src="MultiAdmin.ascx" TagName="MultiAdmin" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
<title>Marka Düzenle</title>
</head>
<body>
<form id="Form1" runat="server">
<div class="pagePopup" style="width:730px;">
	<div class="boxToggle" id="TabContainer" runat="server">
		<div class="toggleTitle toggleMini">
			<div class="titleText">Marka Düzenle</div>
			<div class="titleTab">
				<ul class="tabMenu">
					<li><a href="#tab_1"><%=GetGlobalResourceObject("admin", "MarkInformation")%></a></li>
					<li><a href="#tab_2"><%=GetGlobalResourceObject("admin", "MarkDetails")%>(html)</a></li>
					<li><a href="#tab_3"><%=GetGlobalResourceObject("admin", "XmlIntegrationEditCategory")%></a></li>
					<li><a href="#tab_4"><%=GetGlobalResourceObject("admin", "TabSeo")%></a></li>
					<li><a href="#tab_5"><%=GetGlobalResourceObject("admin", "Integration")%></a></li>
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
                                <label><%=GetGlobalResourceObject("admin", "MarkName")%> : <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtMarkName" ErrorMessage="Marka Adý Girmelisiniz.">*</asp:RequiredFieldValidator></label>
                                <asp:TextBox ID="txtMarkName" runat="server"></asp:TextBox>
                            </div>
                            <div class="colTwo colBtn">
                                <label><%=GetGlobalResourceObject("admin", "MarkLogo")%> :</label>
                                <asp:TextBox ID="Src" runat="server"></asp:TextBox>
                                <asp:HyperLink ID="showGalleryButton" runat="server" NavigateUrl="#" CssClass="btnDefault" onclick="BrowseServer('Src');"><i class="fa fa-folder-open-o"></i> Galeri</asp:HyperLink>
                            </div>
                        </div>
                        <div class="row">
                            <div class="colTwo">
                                <label><%=GetGlobalResourceObject("admin", "MarkActive")%> :</label>
                                <label class="labelInput"><asp:CheckBox ID="chkIsActive" runat="server" Checked="True"></asp:CheckBox> Aktif/Pasif</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="colOne">
                                <label><asp:Label ID="lblSearchKeywords" runat="server" Visible="False"><%=GetGlobalResourceObject("admin", "PageKeywordsSeo")%> :</asp:Label></label>
                                <asp:TextBox ID="txtSearchKeywords" runat="server" MaxLength="3000" TextMode="MultiLine" Visible="False"></asp:TextBox>
                            </div>
                        </div>
                    </div>	
                </div>
				<div class="tab" id="tab_2">
					<div class="dataForm">
						<div class="row">
							<div class="colOne">
								<label><%=GetGlobalResourceObject("admin", "MarkDescription")%> :</label>
								<FCKeditorV2:FCKeditor ID="txtDetail" runat="server" Height="300px" ToolbarSet="BasicPlus" BasePath=" /FCKeditor/"></FCKeditorV2:FCKeditor>
							</div>
						</div>
						<div class="row">
							<div class="colOne">
								<label><%=GetGlobalResourceObject("admin", "MarkDescription2")%> :</label>
								<FCKeditorV2:FCKeditor ID="txtDetail2" runat="server" Height="300px" ToolbarSet="BasicPlus" BasePath="/FCKeditor/"> </FCKeditorV2:FCKeditor>
							</div>
						</div>
					</div>	
				</div>
				<div class="tab" id="tab_3">
					<div class="dataForm">
						<div class="row">
							<div class="colOne"><label><b><%=GetGlobalResourceObject("admin", "CategoryXmlRates")%></b></label></div>
						</div>
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
								<asp:TextBox ID="txttitle" runat="server" MaxLength="80"></asp:TextBox>
							</div>
							<div class="colTwo">
								<label><%=GetGlobalResourceObject("admin", "PageDescriptionSeo")%> :</label>
								<asp:TextBox ID="txtdescription" runat="server" MaxLength="160"></asp:TextBox>
							</div>
						</div>
						<div class="row">
							<div class="colTwo">
								<label><%=GetGlobalResourceObject("admin", "PageKeywordsSeo")%> :</label>
								<asp:TextBox ID="txtkeywords" runat="server" MaxLength="254"></asp:TextBox>
							</div>
						</div>
					</div>
				</div>
				<div class="tab" id="tab_5">
					<uc2:MultiAdmin ID="MultiAdmin" runat="server" />
				</div>
				<div class="buttonGroup">
					<asp:Button ID="btnAdd" runat="server" CssClass="btnDefault" Text="<%$ Resources:admin,Save %>"></asp:Button>
					<asp:Button ID="btnCancel" runat="server" CssClass="btnDefault" Text="<%$ Resources:admin,Close %>" CausesValidation="False"></asp:Button>
				</div>
			</div>
		</div>
	</div>
</div>
</form>
</body>
</html>