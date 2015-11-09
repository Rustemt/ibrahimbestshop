<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="iyzico.ascx.vb" Inherits="ASPNetPortal.iyzico" %> 
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<div class="pageIyzicoSettings" runat="server">

<div class="dataForm">
    <div class="row">
        <div class="col1-2">
        	<div class="row">
                <div class="colTwo">
                	<label>Iyzico Aktif :</label>
                    <label class="labelInput"><asp:CheckBox ID="chkIsActive" runat="server" /> Aktif/Pasif</label>
                </div>
                <div class="colTwo">
                	<label>Iyzico Api Id :</label>
                    <asp:TextBox runat="server" ID="txtApiId"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="colTwo">
                	<label>Iyzico Api Şifresi :</label>
                    <asp:TextBox runat="server" ID="txtPassword"></asp:TextBox>
                </div>
                <div class="colTwo">
                	<label><%=GetGlobalResourceObject("admin", "PayPalWorkEnvironment")%> :</label>
                    <asp:DropDownList ID="ddlTest" runat="server">
                    <asp:ListItem Text="Test Ortamı" Value="True"></asp:ListItem>
                    <asp:ListItem Text="Üretim Ortamı" Value="False"></asp:ListItem>
                    </asp:DropDownList>
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
                <div class="colTwo">
                	<label><%=GetGlobalResourceObject("admin", "Currency")%> :</label>
                    <label class="labelInput"><asp:Label runat="server" ID="lblCurrency"></asp:Label></label>
                </div>
            </div>
            <div class="row">
                <div class="colTwo"><asp:LinkButton ID="btnSave" runat="server" CssClass="btnDefault"><i class="fa fa-save"></i> <%= GetGlobalResourceObject("admin","Save") %></asp:LinkButton></div>
            </div>
        </div>
    </div>
</div>


</div>