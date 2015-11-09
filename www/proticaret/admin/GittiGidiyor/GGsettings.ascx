<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="GGsettings.ascx.vb" Inherits="ASPNetPortal.GGsettings" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Register Assembly="AjaxControls" Namespace="AjaxControls" TagPrefix="asp" %>
<style type="text/css">
    .auto-style1 {
        height: 144px;
    }

    .auto-style5 {
        height: 28px;
    }

    .auto-style6 {
        height: 135px;
        width: 133px;
    }

    .auto-style7 {
        height: 29px;
        direction: ltr;
    }

    .auto-style8 {
        width: 14px;
    }
</style>
<div class="pageGGMarketSettings">
    <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" HeaderText="<%$ Resources:admin,MarketSettingsMsg1 %>"></asp:ValidationSummary>
	<div class="boxToggle publicTab" id="TabContainer" runat="server">
        <div class="toggleTitle toggleMini">
            <div class="titleText"><%=GetGlobalResourceObject("admin", "GeneralSettings")%></div>
            <div class="titleTab">
                <ul class="tabMenu">
                    <li><a href="#tab_1"><%= GetGlobalResourceObject("admin","GeneralSettings") %></a></li>
                    <li><a href="#tab_2"><%= GetGlobalResourceObject("admin","GGCreateDevelopers") %></a></li>
                    <li><a href="#tab_3"><%= GetGlobalResourceObject("admin","GGCreateApplication") %></a></li>
                    <li><a href="#tab_4"><%= GetGlobalResourceObject("admin","GGShippingInformation") %></a></li>
                    <li><a href="#tab_5"><%= GetGlobalResourceObject("admin","GGProductPriceInformation") %></a></li>
                </ul>
            </div>
        </div>
        <div class="toggleContent">
            <div class="tabContent">
                <div class="tab" id="tab_1">
                    <div class="dataForm">
                        <div class="row">
                            <div class="colTwo">
                                <label>Developer ID :</label>
                                <asp:TextBox ID="txtDID" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="colTwo">
                                <label>ApiKey :</label>
                                <asp:TextBox ID="txtApiKey" runat="server"></asp:TextBox>
                            </div>
                            <div class="colTwo">
                                <label>AppSecret :</label>
                                <asp:TextBox ID="txtApiSecret" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="colTwo">
                                <label>RoleName :</label>
                                <asp:TextBox ID="txtRoleName" runat="server"></asp:TextBox>
                            </div>
                            <div class="colTwo">
                                <label>RolePass :</label>
                                <asp:TextBox ID="txtRolePass" runat="server"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="tab" id="tab_2">
                    <div class="dataForm">
                        <div class="row">
                            <div class="colTwo">
                                <label><%= GetGlobalResourceObject("admin","GGDevelopersNickName") %> :</label>
                                <asp:TextBox ID="txtDevNickName" runat="server"></asp:TextBox>
                                <asp:Literal ID="ltrDev" runat="server"></asp:Literal>
                            </div>
                            <div class="colTwo">
                                <label><%= GetGlobalResourceObject("admin","GGDevelopersPassword") %> :</label>
                                <asp:TextBox ID="txtDevPass" runat="server" TextMode="Password"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="colOne buttonGroup">
                                <asp:Button ID="btnCreateDev" runat="server" Text="<%$ Resources:admin,GGCreateDevelopers %>" CssClass="btnDefault" />
                                <asp:Button ID="btnGetDeveloper" runat="server" Text="<%$ Resources:admin,GGPropertyDevelopers %>" CssClass="btnDefault" />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="tab" id="tab_3">
                    <div class="dataForm">
                        <div class="row">
                            <div class="col1-2">
                                <div class="row">
                                    <div class="colTwo">
                                        <label><%= GetGlobalResourceObject("admin","GGApplicationName") %> :</label>
                                        <asp:TextBox ID="txtAppName" runat="server"></asp:TextBox>
                                        <asp:Literal ID="ltrAppList" runat="server"></asp:Literal>
                                    </div>
                                    <div class="colTwo">
                                        <label><%= GetGlobalResourceObject("admin","Description") %> :</label>
                                        <asp:TextBox ID="txtAppDesc" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="colTwo">
                                        <label><%= GetGlobalResourceObject("admin","GGAccessType") %> :</label>
                                        <asp:DropDownList ID="ddlAccessType" runat="server">
                                            <asp:ListItem Text="<%$ Resources:admin,SelectUserUpdate %>"></asp:ListItem>
                                            <asp:ListItem Text="<%$ Resources:admin,Institutional %>" Value="I"></asp:ListItem>
                                            <asp:ListItem Text="<%$ Resources:admin,GGMultiUsers %>" Value="C"></asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="colTwo">
                                        <label><%= GetGlobalResourceObject("admin","GGApplicationType") %> :</label>
                                        <asp:DropDownList ID="ddlAppType" runat="server">
                                            <asp:ListItem Text="<%$ Resources:admin,SelectUserUpdate %>"></asp:ListItem>
                                            <asp:ListItem Text="<%$ Resources:admin,GGMobileApplication %>" Value="M"></asp:ListItem>
                                            <asp:ListItem Text="<%$ Resources:admin,GGDesktopApplication %>" Value="D"></asp:ListItem>
                                            <asp:ListItem Text="<%$ Resources:admin,GGWebApplication %>" Value="W"></asp:ListItem>
                                            <asp:ListItem Text="<%$ Resources:admin,Other %>" Value="O"></asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="colOne">
                                        <asp:Button ID="btnCreateApp" runat="server" Text="<%$ Resources:admin,GGCreateApplication %>" CssClass="btnDefault" />
                                        <asp:Button ID="btnGetAppList" runat="server" Text="<%$ Resources:admin,GGApplicationList %>" CssClass="btnDefault" />
                                    </div>
                                </div>
                            </div>
                            <div class="col1-2">
                                <div class="row">
                                    <div class="colOne">
                                        <label>ApiKey <small>(<%= GetGlobalResourceObject("admin","GGDeleteApplication") %>)</small></label>
                                        <asp:TextBox ID="txtApikeyDel" runat="server"></asp:TextBox>
                                        <asp:Literal ID="ltrAppListDel" runat="server"></asp:Literal>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="colOne">
                                        <asp:Button ID="btnAppDel" runat="server" Text="<%$ Resources:admin,GGDeleteApplication %>" CssClass="btnDefault" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="tab" id="tab_4">
                    <div class="toggleContent">
                        <div class="dataForm">
                            <div class="row">
                                <div class="colTwo">
                                	
                                	<label style="padding:10px; margin:10px 10px 0 0;"><%=GetGlobalResourceObject("admin", "ShippingCompany")%> :</label>
                                    <div class="dataTable" style="padding:10px; border:1px solid #d8d9db;">
                                    	<style type="text/css">
                                        	.dataTable .dataTableInput input {
												display				: inline-block;
												margin-right		: 10px;
											}
											.dataTable .dataTableInput label {
												display				: inline-block;
											}
                                        </style>
                                        <asp:CheckBoxList CssClass="dataTableInput" ID="cbl" runat="server">
                                            <asp:ListItem Value="aras">Aras Kargo</asp:ListItem>
                                            <asp:ListItem Value="yurtici">Yurtiçi Kargo</asp:ListItem>
                                            <asp:ListItem Value="ups">UPS Kargo</asp:ListItem>
                                            <asp:ListItem Value="mng">MNG Kargo</asp:ListItem>
                                            <asp:ListItem Value="ptt">PTT Kargo</asp:ListItem>
                                            <asp:ListItem Value="surat">Sürat Kargo</asp:ListItem>
                                            <asp:ListItem Value="tnt">TNT Kargo</asp:ListItem>
                                            <asp:ListItem Value="varan">Varan Kargo</asp:ListItem>
                                            <asp:ListItem Value="dhl">DHL Kargo</asp:ListItem>
                                            <asp:ListItem Value="fedex">Fedex Kargo</asp:ListItem>
                                            <asp:ListItem Text="<%$ Resources:admin,Other %>" Value="other"></asp:ListItem>
                                        </asp:CheckBoxList>
                                    </div>
                                </div>
                                <div class="colTwo">
                                    <div class="row">
                                    	<label>&nbsp;</label>
                                        <label><%=GetGlobalResourceObject("admin", "ShippingCity")%> :</label>
                                        <asp:DropDownList ID="ddlCitys" runat="server"></asp:DropDownList>
                                    </div>
                                    <div class="row">
                                    	<label>&nbsp;</label>
                                        <label><%=GetGlobalResourceObject("admin", "ScopeCargoShipping")%>:</label>
                                        <asp:DropDownList ID="ddlCargoSend" runat="server">
                                            <asp:ListItem Text="<%$ Resources:admin,SelectUserUpdate %>" Value="0"></asp:ListItem>
                                            <asp:ListItem Text="<%$ Resources:admin,InCity %>" Value="city"></asp:ListItem>
                                            <asp:ListItem Text="<%$ Resources:admin,InCountry %>" Value="country"></asp:ListItem>
                                            <asp:ListItem Text="<%$ Resources:admin,AllWorld %>" Value="world"></asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="row">
                                    	<label>&nbsp;</label>
                                        <label><%=GetGlobalResourceObject("admin", "ShippingPaymentMethod")%> :</label>
                                        <asp:DropDownList ID="ddlCargoPrice" runat="server" AutoPostBack="true">
                                            <asp:ListItem Text="<%$ Resources:admin,SelectUserUpdate %>" Value="0"></asp:ListItem>
                                            <asp:ListItem Text="<%$ Resources:admin,CustomerPayment %>" Value="B"></asp:ListItem>
                                            <asp:ListItem Text="<%$ Resources:admin,DealerPayment %>" Value="S"></asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="row">
                                    	<label>&nbsp;</label>
                                        <label><%=GetGlobalResourceObject("admin", "ShippingDescription")%> :</label>
                                        <asp:TextBox ID="txtOtherCargo" runat="server" Enabled="false"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="tab" id="tab_5">
                    <div class="dataForm">
                        <div class="row">
                            <div class="colTwo">
                            	<label></label>
                                <label><%=GetGlobalResourceObject("admin", "ProductType2")%> :</label>
                                <asp:DropDownList runat="server" ID="ddlProductSendType">
                                    <asp:ListItem Text="<%$ Resources:admin,SelectUserUpdate %>" Value="0"></asp:ListItem>
                                    <asp:ListItem Text="<%$ Resources:admin,ConstantPriceProduct %>" Value="F"></asp:ListItem>
                                    <asp:ListItem Text="<%$ Resources:admin,AuctionsProduct %>" Value="A"></asp:ListItem> 
                                    <asp:ListItem Text="<%$ Resources:admin,StoreProduct %>" Value="S"></asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="colTwo">
                                <label><%=GetGlobalResourceObject("admin", "ProductPrice")%> :</label>
                                <asp:DropDownList ID="ddlPrice" runat="server">
                                    <asp:ListItem Text="<%$ Resources:admin,SelectUserUpdate %>" Value="0"></asp:ListItem>
                                    <asp:ListItem Text="<%$ Resources:admin,SalesPrice1 %>" Value="1"></asp:ListItem>
                                    <asp:ListItem Text="<%$ Resources:admin,SalesPrice2 %>" Value="2"></asp:ListItem>
                                    <asp:ListItem Text="<%$ Resources:admin,SalesPrice3 %>" Value="3"></asp:ListItem>
                                    <asp:ListItem Text="<%$ Resources:admin,SalesPrice4 %>" Value="4"></asp:ListItem>
                                    <asp:ListItem Text="<%$ Resources:admin,SalesPrice5 %>" Value="5"></asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="row">
                            <div class="colOne">
                                <label><%=GetGlobalResourceObject("admin", "ProductIncludedTax")%> :</label>
                                <label class="labelInput">
                                    <asp:CheckBox ID="cbKDV" runat="server" Checked="true"/><span style=color:#F00;><%= GetGlobalResourceObject("admin","GGMsg1") %></span></label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="colTwo">
                                <label><%=GetGlobalResourceObject("admin", "PriceAuctions")%> :</label>
                                <asp:DropDownList ID="ddlStartPrice" runat="server">
                                    <asp:ListItem Text="<%$ Resources:admin,SelectUserUpdate %>" Value="0"></asp:ListItem>
                                    <asp:ListItem Text="<%$ Resources:admin,SalesPrice1 %>" Value="1"></asp:ListItem>
                                    <asp:ListItem Text="<%$ Resources:admin,SalesPrice2 %>" Value="2"></asp:ListItem>
                                    <asp:ListItem Text="<%$ Resources:admin,SalesPrice3 %>" Value="3"></asp:ListItem>
                                    <asp:ListItem Text="<%$ Resources:admin,SalesPrice4 %>" Value="4"></asp:ListItem>
                                    <asp:ListItem Text="<%$ Resources:admin,SalesPrice5 %>" Value="5"></asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="row">
                            <div class="colOne">
                                <label><%=GetGlobalResourceObject("admin", "GGPercentRate")%> :</label>
                                <ew:NumericBox ID="txtRate" Width="55px" runat="server" DecimalSign="," GroupingSeparator=" " TextAlign="Right">0</ew:NumericBox>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="buttonGroup">
            	<asp:LinkButton ID="applyBtn" runat="server" CssClass="btnDefault" ><i class="fa fa-floppy-o"></i> <%= GetGlobalResourceObject("admin","SaveSettings") %></asp:LinkButton>
            </div>
        </div>
    </div>
</div>
