<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.cpaypal" CodeBehind="paypal.ascx.vb" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<div class="pagePaypalSettings" runat="server">

<div class="dataForm">
    <div class="row">
        <div class="col1-2">
        	<div class="row">
                <div class="colTwo">
                	<label><%=GetGlobalResourceObject("admin", "PayPalActive")%> :</label>
                    <label class="labelInput"><asp:CheckBox ID="chkIsActive" runat="server" /> Aktif/Pasif</label>
                </div>
                <div class="colTwo">
                	<label><%=GetGlobalResourceObject("admin", "PayPalUserName")%> :</label>
                    <asp:TextBox runat="server" ID="txtUserName"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="colTwo">
                	<label><%=GetGlobalResourceObject("admin", "PayPalApiPassword")%> :</label>
                    <asp:TextBox runat="server" ID="txtPassword"></asp:TextBox>
                </div>
                <div class="colTwo">
                	<label><%=GetGlobalResourceObject("admin", "PayPalApiSignature")%> :</label>
                    <asp:TextBox runat="server" ID="txtSignature"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="colTwo">
                	<label><%=GetGlobalResourceObject("admin", "PayPalWorkEnvironment")%> :</label>
                    <asp:DropDownList ID="ddlTest" runat="server">
                    <asp:ListItem Text="<%$ Resources:admin,PayPalProduction %>" Value="False"></asp:ListItem>
                    <asp:ListItem Text="<%$ Resources:admin,PayPalProduction %>" Value="True"></asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="colTwo">
                	<label><%=GetGlobalResourceObject("admin", "Currency")%> :</label>
                    <label class="labelInput"><asp:Label runat="server" ID="lblCurrency"></asp:Label></label>
                </div>
            </div>
            <div class="row">
                <div class="colTwo">
                	<label><%=GetGlobalResourceObject("admin", "DiscountAndAdditional")%> :</label>
                    <asp:DropDownList ID="ddlDis" runat="server" AutoPostBack="True">
                    <asp:ListItem Text="<%$ Resources:admin,Discount %>" Value="0" Selected="True"></asp:ListItem>
                    <asp:ListItem Text="<%$ Resources:admin,Additional %>" Value="1"></asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="colTwo">
                	<label>Yüzde (%)</label>
                    <ew:NumericBox ID="txtDiscount" runat="server" DecimalSign="," GroupingSeparator=" " TextAlign="Left">0</ew:NumericBox>
                </div>
            </div>
            <div class="row">
                <div class="colTwo"><asp:LinkButton ID="btnSave" runat="server" CssClass="btnDefault"><i class="fa fa-save"></i> <%= GetGlobalResourceObject("admin","Save") %></asp:LinkButton></div>
            </div>
            <div class="row">
                <div class="colTwo">
                <a target="_blank" class="textRed" href="https://cms.paypal.com/us/cgi-bin/?cmd=_render-content&content_ID=developer/e_howto_api_ECAPICredentials"><%=GetGlobalResourceObject("admin", "PayPalMsg1")%></a>
                <p><a target="_blank" class="textRed" href="https://cms.paypal.com/us/cgi-bin/?&cmd=_render-content&content_ID=developer/howto_testing_sandbox_get_started"><%=GetGlobalResourceObject("admin", "PayPalMsg2")%></a></p>
                </div>
            </div>
        </div>
    </div>
</div>


</div>