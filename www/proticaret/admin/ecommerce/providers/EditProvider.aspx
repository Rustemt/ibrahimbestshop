<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Page Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.EditProvider" CodeBehind="EditProvider.aspx.vb" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
<title>Tedarikçi Düzenle</title>
</head>
<body>
<form id="Form1" runat="server">
<div class="pagePopup">
    <div class="boxToggle" id="TabContainer" runat="server">
    	<asp:Label ID="lblErr" runat="server"> </asp:Label>
			<asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False"></asp:ValidationSummary>
        <div class="toggleTitle toggleMini">
            <div class="titleText">Tedarikçi Düzenle</div>
            <div class="titleTab">
                <ul class="tabMenu">
                    <li><a href="#tab_1"><%=GetGlobalResourceObject("admin", "GeneralInformation")%></a></li>
                    <li><a href="#tab_2"><%=GetGlobalResourceObject("admin", "IntegrationInformation")%></a></li>
                </ul>
            </div>
        </div>
        <div class="toggleContent">
            <div class="tabContent">
                <div class="tab" id="tab_1">
                	<table width="100%" cellspacing="0" cellpadding="0" border="0" runat="server">
                        <tr>
                            <td valign="top">
                                <div class="dataForm">
                                    <div class="row">
                                        <div class="colTwo">
                                            <label><%=GetGlobalResourceObject("admin", "ProviderName")%> : <asp:RequiredFieldValidator ID="rq1" runat="server" ControlToValidate="txtProviderName" ErrorMessage="Tedarikçi Adý Girmelisiniz.">*</asp:RequiredFieldValidator></label>
                                            <asp:TextBox ID="txtProviderName" runat="server"></asp:TextBox>
                                        </div>
                                        <div class="colTwo">
                                            <label><%=GetGlobalResourceObject("admin", "ProviderCompany")%> :</label>
                                            <asp:TextBox ID="txtProviderCompany" runat="server" MaxLength="199"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="colTwo">
                                            <label><%=GetGlobalResourceObject("admin", "ProviderContactName")%> :</label>
                                            <asp:TextBox ID="txtProviderContactName" runat="server" MaxLength="199"></asp:TextBox>
                                        </div>
                                        <div class="colTwo">
                                            <label><%=GetGlobalResourceObject("admin", "Email")%> :</label>
                                            <asp:TextBox ID="txtProviderEmail" runat="server" MaxLength="50"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="colTwo">
                                            <label><%=GetGlobalResourceObject("admin", "Phone")%> :</label>
                                            <asp:TextBox ID="txtProviderPhone1" runat="server" MaxLength="20" ></asp:TextBox>
                                            <asp:FilteredTextBoxExtender runat="server" ID="ftbE" TargetControlID="txtProviderPhone1" FilterType="Custom" ValidChars="1234567890"></asp:FilteredTextBoxExtender>
                                        </div>
                                        <div class="colTwo">
                                            <label><%=GetGlobalResourceObject("admin", "Phone2")%> :</label>
                                            <asp:TextBox ID="txtProviderPhone2" runat="server" MaxLength="20"></asp:TextBox> 
                                            <asp:FilteredTextBoxExtender runat="server" ID="FilteredTextBoxExtender1" TargetControlID="txtProviderPhone2" FilterType="Custom" ValidChars="1234567890"></asp:FilteredTextBoxExtender>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="colTwo">
                                            <label><%=GetGlobalResourceObject("admin", "Fax")%> :</label>
                                            <asp:TextBox ID="txtProviderFax" runat="server" MaxLength="20"></asp:TextBox>
                                            <asp:FilteredTextBoxExtender runat="server" ID="FilteredTextBoxExtender2" TargetControlID="txtProviderFax" FilterType="Custom" ValidChars="1234567890"></asp:FilteredTextBoxExtender>
                                        </div>
                                        <div class="colTwo">
                                            <label><%=GetGlobalResourceObject("admin", "TaxAdministration")%> :</label>
                                            <asp:TextBox ID="txtProviderTaxOffice" runat="server" MaxLength="50"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="colTwo">
                                            <label><%=GetGlobalResourceObject("admin", "TaxNo")%> :</label>
                                            <asp:TextBox ID="txtProviderTaxNo" runat="server" MaxLength="20"></asp:TextBox>
                                        </div>
                                        <div class="colTwo">
                                            <label><%=GetGlobalResourceObject("admin", "BankName")%> :</label>
                                            <asp:TextBox ID="txtProviderBankAccount" runat="server" MaxLength="199"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="colTwo">
                                            <label><%=GetGlobalResourceObject("admin", "AccountNo")%> :</label>
                                            <asp:TextBox ID="txtProviderBankAccountNo" runat="server" MaxLength="99"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="colTwo">
                                            <label><%=GetGlobalResourceObject("admin", "Address")%> :</label>
                                            <asp:TextBox ID="txtProviderAdress" runat="server" MaxLength="500" TextMode="MultiLine"></asp:TextBox>
                                        </div>
                                        <div class="colTwo">
                                            <label><%=GetGlobalResourceObject("admin", "Address2")%> :</label>
                                            <asp:TextBox ID="txtProviderAdress2" runat="server" MaxLength="500" TextMode="MultiLine"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="colTwo">
                                            <label><%=GetGlobalResourceObject("admin", "PaymentTerms")%> :</label>
                                            <asp:TextBox ID="txtPaymentTerm" runat="server" MaxLength="500" TextMode="MultiLine"></asp:TextBox>
                                        </div>
                                        <div class="colTwo">
                                            <label><%=GetGlobalResourceObject("admin", "DeliveryTerms")%> :</label>
                                            <asp:TextBox ID="txtTransportTerm" runat="server" MaxLength="500" TextMode="MultiLine"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="colOne">
                                            <label><%=GetGlobalResourceObject("admin", "XmlListDescription")%> :</label>
                                            <asp:TextBox ID="txtProviderDetails" runat="server" MaxLength="1000" TextMode="MultiLine"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                            </td>
                        </tr>
                	</table>
                </div>
                <div class="tab" id="tab_2">
                    <table cellpadding="2" cellspacing="0" runat="server">
                        <tr>
                            <td>
                            <div class="dataForm">
                                <div class="row">
                                    <div class="colTwo">
                                        <label><%=GetGlobalResourceObject("admin", "IntegrationIp")%> :</label>
                                        <label class="labelInput"><asp:Label ID="lblIp" runat="server"></asp:Label></label>
                                    </div>
                                    <div class="colTwo">
                                        <label><%=GetGlobalResourceObject("admin", "IntegrationType")%> :</label>
                                        <asp:RadioButtonList ID="rbListType" runat="server" AutoPostBack="True" RepeatDirection="Horizontal" CssClass="radioList">
                                        <asp:ListItem Value="1">local(Dosya)</asp:ListItem>
                                        <asp:ListItem Selected="True" Value="0">Web(Online)</asp:ListItem>
                                        </asp:RadioButtonList>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="colTwo">
                                        <label><%=GetGlobalResourceObject("admin", "ImportFileFormat")%> :</label>
                                        <asp:DropDownList ID="ddlXslFile" runat="server"></asp:DropDownList>
                                    </div>
                                    <div class="colTwo">
                                        <label><asp:Label ID="lblxmlPath" runat="server"><%=GetGlobalResourceObject("admin", "XmlFile")%> :</asp:Label></label>
                                        <asp:DropDownList ID="ddlXmlFile" runat="server" Visible="False"></asp:DropDownList>
                                        <asp:TextBox ID="txtXmlPath" runat="server" MaxLength="255"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="colOne">
                                        <label><%=GetGlobalResourceObject("admin", "StartCategory")%> :</label>
                                        <asp:DropDownList ID="ddlCategories" runat="server"></asp:DropDownList>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="colOne">
                                        <label><asp:Label ID="lblAutoIntegration" runat="server" Visible="False">Otomatik Entegrasyon Aktif :</asp:Label></label>
                                        <asp:CheckBox ID="chkAutoIntegration" runat="server" Visible="False"></asp:CheckBox>
                                        <asp:Label ID="lblTime" runat="server" Text="Baþlama Saati : " Visible="False"></asp:Label>
                                        <asp:DropDownList ID="ddlTime" runat="server" Visible="False">
                                        <asp:ListItem Text="00:00" Value="2400"></asp:ListItem>
                                        <asp:ListItem Text="01:00" Value="100"></asp:ListItem>
                                        <asp:ListItem Text="02:00" Value="200"></asp:ListItem>
                                        <asp:ListItem Text="03:00" Value="300"></asp:ListItem>
                                        <asp:ListItem Text="04:00" Value="400"></asp:ListItem>
                                        <asp:ListItem Text="05:00" Value="500"></asp:ListItem>
                                        <asp:ListItem Text="06:00" Value="600"></asp:ListItem>
                                        <asp:ListItem Text="07:00" Value="700"></asp:ListItem>
                                        <asp:ListItem Text="07:30" Value="730"></asp:ListItem>
                                        <asp:ListItem Text="08:00" Value="800"></asp:ListItem>
                                        <asp:ListItem Text="08:30" Value="830"></asp:ListItem>
                                        <asp:ListItem Text="09:00" Value="900"></asp:ListItem>
                                        <asp:ListItem Text="09:30" Value="930"></asp:ListItem>
                                        <asp:ListItem Text="10:00" Value="1000"></asp:ListItem>
                                        <asp:ListItem Text="10:30" Value="1030"></asp:ListItem>
                                        <asp:ListItem Text="11:00" Value="1100"></asp:ListItem>
                                        <asp:ListItem Text="12:00" Value="1200"></asp:ListItem>
                                        <asp:ListItem Text="13:00" Value="1300"></asp:ListItem>
                                        <asp:ListItem Text="14:00" Value="1400"></asp:ListItem>
                                        <asp:ListItem Text="15:00" Value="1500"></asp:ListItem>
                                        <asp:ListItem Text="16:00" Value="1600"></asp:ListItem>
                                        <asp:ListItem Text="17:00" Value="1700"></asp:ListItem>
                                        <asp:ListItem Text="18:00" Value="1800"></asp:ListItem>
                                        <asp:ListItem Text="19:00" Value="1900"></asp:ListItem>
                                        <asp:ListItem Text="20:00" Value="2000"></asp:ListItem>
                                        <asp:ListItem Text="21:00" Value="2100"></asp:ListItem>
                                        <asp:ListItem Text="22:00" Value="2200"></asp:ListItem>
                                        <asp:ListItem Text="23:00" Value="2300"></asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="colOne"><label><b><%=GetGlobalResourceObject("admin", "PriceAreas")%> <asp:Label ID="Label54" runat="server"><%=GetGlobalResourceObject("admin", "TargetPriceCardStock")%> :</asp:Label></b></label></div>
                                </div>
                                <div class="row">
                                    <div class="colTwo">
                                        <label><b><asp:Label ID="Label55" runat="server" Width="110px"><%=GetGlobalResourceObject("admin", "SourcePrice")%>(xml) :</asp:Label></b></label>
                                    </div>
                                    <div class="colTwo">
                                        <label><b><asp:Label ID="Label56" runat="server"><%=GetGlobalResourceObject("admin", "Additive")%> % :</asp:Label></b></label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="colTwo">
                                        <label><asp:Label ID="Label21" runat="server"><%=GetGlobalResourceObject("admin", "PurchasePriceField")%> :</asp:Label></label>
                                        <asp:DropDownList ID="ddlPriceA" runat="server">
                                        <asp:ListItem Text="<%$ Resources:admin,PurchasePrice %>" Selected="True" Value="AlisFiyati"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,MarketPrice %>"  Value="PiyasaFiyati"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,TransferPrice %>" Value="HavaleFiyati"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,SalesPrice1 %>"  Value="SatisFiyati1"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,SalesPrice2 %>"  Value="SatisFiyati2"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,SalesPrice3 %>"  Value="SatisFiyati3"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,SalesPrice4 %>"  Value="SatisFiyati4"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,SalesPrice5 %>"  Value="SatisFiyati5"></asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="colTwo colBtn">
                                        <label>&nbsp;</label>
                                        <ew:NumericBox ID="txtFA" runat="server" DecimalSign="," GroupingSeparator=" " TextAlign="Right">0</ew:NumericBox>
                                        <asp:Label ID="Label22" runat="server" CssClass="btnDefault">%</asp:Label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="colTwo">
                                        <label><asp:Label ID="Label58" runat="server"><%=GetGlobalResourceObject("admin", "MarketPriceField")%> :</asp:Label></label>
                                        <asp:DropDownList ID="ddlPriceP" runat="server">
                                        <asp:ListItem Text="<%$ Resources:admin,PurchasePrice %>" Value="AlisFiyati"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,MarketPrice %>"  Selected="True" Value="PiyasaFiyati"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,TransferPrice %>" Value="HavaleFiyati"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,SalesPrice1 %>"  Value="SatisFiyati1"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,SalesPrice2 %>"  Value="SatisFiyati2"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,SalesPrice3 %>"  Value="SatisFiyati3"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,SalesPrice4 %>"  Value="SatisFiyati4"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,SalesPrice5 %>"  Value="SatisFiyati5"></asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="colTwo colBtn">
                                        <label>&nbsp;</label>
                                        <ew:NumericBox ID="txtFP" runat="server" DecimalSign="," GroupingSeparator=" " TextAlign="Right">0</ew:NumericBox>
                                        <asp:Label ID="Label59" runat="server" CssClass="btnDefault">%</asp:Label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="colTwo">
                                        <label><asp:Label ID="Label61" runat="server"><%=GetGlobalResourceObject("admin", "TransferPriceField")%> :</asp:Label></label>
                                        <asp:DropDownList ID="ddlPrice0" runat="server">
                                        <asp:ListItem Text="<%$ Resources:admin,PurchasePrice %>" Value="AlisFiyati"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,MarketPrice %>"  Value="PiyasaFiyati"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,TransferPrice %>" Selected="True" Value="HavaleFiyati"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,SalesPrice1 %>"  Value="SatisFiyati1"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,SalesPrice2 %>"  Value="SatisFiyati2"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,SalesPrice3 %>"  Value="SatisFiyati3"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,SalesPrice4 %>"  Value="SatisFiyati4"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,SalesPrice5 %>"  Value="SatisFiyati5"></asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="colTwo colBtn">
                                        <label>&nbsp;</label>
                                        <ew:NumericBox ID="txtF0" runat="server" DecimalSign="," GroupingSeparator=" " TextAlign="Right">0</ew:NumericBox>
                                        <asp:Label ID="Label25" runat="server" CssClass="btnDefault">%</asp:Label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="colTwo">
                                        <label><asp:Label ID="Label64" runat="server"><%=GetGlobalResourceObject("admin", "SalesPrice1Field")%> :</asp:Label></label>
                                        <asp:DropDownList ID="ddlPrice1" runat="server">
                                        <asp:ListItem Text="<%$ Resources:admin,PurchasePrice %>" Value="AlisFiyati"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,MarketPrice %>"  Value="PiyasaFiyati"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,TransferPrice %>" Value="HavaleFiyati"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,SalesPrice1 %>"  Selected="True" Value="SatisFiyati1"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,SalesPrice2 %>"  Value="SatisFiyati2"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,SalesPrice3 %>"  Value="SatisFiyati3"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,SalesPrice4 %>"  Value="SatisFiyati4"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,SalesPrice5 %>"  Value="SatisFiyati5"></asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="colTwo colBtn">
                                        <label>&nbsp;</label>
                                        <ew:NumericBox ID="txtF1" runat="server" DecimalSign="," GroupingSeparator=" " TextAlign="Right">0</ew:NumericBox>
                                        <asp:Label ID="Label16" runat="server" CssClass="btnDefault">%</asp:Label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="colTwo">
                                        <label><asp:Label ID="Label67" runat="server"><%=GetGlobalResourceObject("admin", "SalesPrice2Field")%> :</asp:Label></label>
                                        <asp:DropDownList ID="ddlPrice2" runat="server">
                                        <asp:ListItem Text="<%$ Resources:admin,PurchasePrice %>" Value="AlisFiyati"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,MarketPrice %>"  Value="PiyasaFiyati"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,TransferPrice %>" Value="HavaleFiyati"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,SalesPrice1 %>"  Value="SatisFiyati1"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,SalesPrice2 %>"  Selected="True" Value="SatisFiyati2"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,SalesPrice3 %>"  Value="SatisFiyati3"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,SalesPrice4 %>"  Value="SatisFiyati4"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,SalesPrice5 %>"  Value="SatisFiyati5"></asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="colTwo colBtn">
                                        <label>&nbsp;</label>
                                        <ew:NumericBox ID="txtF2" runat="server" DecimalSign="," GroupingSeparator=" " TextAlign="Right">0</ew:NumericBox>
                                        <asp:Label ID="Label17" runat="server" CssClass="btnDefault">%</asp:Label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="colTwo">
                                        <label><asp:Label ID="Label70" runat="server"><%=GetGlobalResourceObject("admin", "SalesPrice3Field")%> :</asp:Label></label>
                                        <asp:DropDownList ID="ddlPrice3" runat="server">
                                        <asp:ListItem Text="<%$ Resources:admin,PurchasePrice %>" Value="AlisFiyati"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,MarketPrice %>"  Value="PiyasaFiyati"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,TransferPrice %>" Value="HavaleFiyati"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,SalesPrice1 %>"  Value="SatisFiyati1"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,SalesPrice2 %>"  Value="SatisFiyati2"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,SalesPrice3 %>"  Selected="True" Value="SatisFiyati3"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,SalesPrice4 %>"  Value="SatisFiyati4"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,SalesPrice5 %>"  Value="SatisFiyati5"></asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="colTwo colBtn">
                                        <label>&nbsp;</label>
                                        <ew:NumericBox ID="txtF3" runat="server" DecimalSign="," GroupingSeparator=" " TextAlign="Right">0</ew:NumericBox>
                                        <asp:Label ID="Label18" runat="server" CssClass="btnDefault">%</asp:Label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="colTwo">
                                        <label><asp:Label ID="Label73" runat="server"><%=GetGlobalResourceObject("admin", "SalesPrice4Field")%> :</asp:Label></label>
                                        <asp:DropDownList ID="ddlPrice4" runat="server">
                                        <asp:ListItem Text="<%$ Resources:admin,PurchasePrice %>" Value="AlisFiyati"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,MarketPrice %>"  Value="PiyasaFiyati"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,TransferPrice %>" Value="HavaleFiyati"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,SalesPrice1 %>"  Value="SatisFiyati1"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,SalesPrice2 %>"  Value="SatisFiyati2"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,SalesPrice3 %>"  Value="SatisFiyati3"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,SalesPrice4 %>"  Selected="True" Value="SatisFiyati4"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,SalesPrice5 %>"  Value="SatisFiyati5"></asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="colTwo colBtn">
                                        <label>&nbsp;</label>
                                        <ew:NumericBox ID="txtF4" runat="server" DecimalSign="," GroupingSeparator=" " TextAlign="Right">0</ew:NumericBox>
                                        <asp:Label ID="Label19" runat="server" CssClass="btnDefault">%</asp:Label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="colTwo">
                                        <label><asp:Label ID="Label76" runat="server"><%=GetGlobalResourceObject("admin", "SalesPrice5Field")%> :</asp:Label></label>
                                        <asp:DropDownList ID="ddlPrice5" runat="server">
                                        <asp:ListItem Text="<%$ Resources:admin,PurchasePrice %>" Value="AlisFiyati"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,MarketPrice %>"  Value="PiyasaFiyati"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,TransferPrice %>" Value="HavaleFiyati"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,SalesPrice1 %>"  Value="SatisFiyati1"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,SalesPrice2 %>"  Value="SatisFiyati2"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,SalesPrice3 %>"  Value="SatisFiyati3"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,SalesPrice4 %>"  Value="SatisFiyati4"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,SalesPrice5 %>"  Selected="True" Value="SatisFiyati5"></asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="colTwo colBtn">
                                        <label>&nbsp;</label>
                                        <ew:NumericBox ID="txtF5" runat="server" DecimalSign="," GroupingSeparator=" " TextAlign="Right">0</ew:NumericBox>
                                        <asp:Label ID="Label20" runat="server" CssClass="btnDefault">%</asp:Label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="colTwo">
                                        <label><b><%=GetGlobalResourceObject("admin", "StockCardFeatures")%> :</b></label>
                                        <label class="labelInput"><asp:CheckBox ID="chkOnlyPrice" runat="server" AutoPostBack="True" Text="<%$ Resources:admin,OnlyDealsUpdate %>"></asp:CheckBox></label>
                                        <label class="labelInput"><asp:CheckBox ID="chkNewProductPassive" runat="server" Text="<%$ Resources:admin,NewProductsMakePassive %>"></asp:CheckBox></label>
                                        <label class="labelInput"><asp:CheckBox ID="chkOnlyStock" runat="server" AutoPostBack="True" Text="<%$ Resources:admin,StatusInventoryUpdate %>"></asp:CheckBox></label>
                                        <label class="labelInput"><asp:CheckBox ID="chkFirstMakePassive" runat="server" Checked="False" Text="<%$ Resources:admin,MyPassiveProducts %>"></asp:CheckBox></label>
                                        <label class="labelInput"><asp:CheckBox ID="chkUpdateName" runat="server" Text="<%$ Resources:admin,UpdateProductName %>"></asp:CheckBox></label>
                                        <label class="labelInput"><asp:CheckBox ID="chkUpdateImages" runat="server" Checked="False" Text="<%$ Resources:admin,PictureLinksUpdateWithout %>"></asp:CheckBox></label>
                                    </div>
                                    <div class="colTwo">
                                        <label><b>&nbsp;</b></label>
                                        <label class="labelInput"><asp:CheckBox ID="chkUpdateCodes" runat="server" Text="<%$ Resources:admin,ProductSpecialCodesUpdate %>"></asp:CheckBox></label>
                                        <label class="labelInput"><asp:CheckBox ID="chkDownloadImages" runat="server" Checked="False" Text="<%$ Resources:admin,PicturesUpdateWithoutPictures %>"></asp:CheckBox></label>
                                        <label class="labelInput"><asp:CheckBox ID="chkUpdateDetails" runat="server" Text="<%$ Resources:admin,ProductDetailUpdate %>"></asp:CheckBox></label>
                                        <label class="labelInput"><asp:CheckBox ID="chkUpdatePublishers" runat="server" AutoPostBack="True" Text="<%$ Resources:admin,PublisherNameUpdate %>" ToolTip="Kategori ve tadarikçi gözetmeden entegrasyon yapýlýacak."></asp:CheckBox></label>
                                        <label class="labelInput"><asp:CheckBox ID="chkupdatekeywords" runat="server" Text="<%$ Resources:admin,SearchYourWordsUpdate %>"></asp:CheckBox></label>
                                        <label class="labelInput"><asp:CheckBox ID="chkUpdateAuthors" runat="server" AutoPostBack="True" Text="<%$ Resources:admin,AuthorNameUpdate %>" ToolTip="Kategori ve tadarikçi gözetmeden entegrasyon yapýlýacak."></asp:CheckBox></label>
                                    </div>
                                </div>
                            </div>
                            </td>
                        </tr>
                	</table>
                </div>
            </div>
            <div class="buttonGroup">
            	<asp:Button ID="btnAdd" runat="server" CssClass="btnDefault" Text="Kaydet"></asp:Button>
				<asp:Button ID="btnCancel" runat="server" CssClass="btnDefault" Text="Ýptal" CausesValidation="False"></asp:Button>
            </div>
        </div>
    </div>
</div>
</form>
</body>
</html>