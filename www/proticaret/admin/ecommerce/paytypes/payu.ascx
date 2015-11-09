<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.cpayu" CodeBehind="payu.ascx.vb" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<div id="pagePayuSettings"> 
    <div class="dataForm">
        <div class="row">
            <div class="col1-2">
                <div class="row">
                    <div class="colTwo">
                        <label>PayU Aktif :</label>
                        <label class="labelInput"><asp:CheckBox ID="chkIsActive" runat="server" /> Aktif/Pasif</label>
                    </div>
                    <div class="colTwo">
                        <label>Maðaza Kodu :</label>
                        <asp:TextBox runat="server" ID="txtUserName"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="colTwo">
                        <label>Güvenlik Anahtarý :</label>
                        <asp:TextBox runat="server" ID="txtPassword"></asp:TextBox>
                    </div>
                    <div class="colTwo">
                        <label>Çalýþma Ortamý :</label>
                        <asp:DropDownList ID="ddlTest" runat="server">
                        <asp:ListItem Value="False">Üretim Ortamý</asp:ListItem>
                        <asp:ListItem Value="True">Test Ortamý</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="row">
                    <div class="colTwo">
                        <label>Para Birimi :</label>
                        <label class="labelInput"><asp:Label runat="server" ID="lblCurrency"></asp:Label></label>
                    </div>
                    <div class="colTwo">
                        <label>Ýndirim / Ýlave :</label>
                        <asp:DropDownList ID="ddlDis" runat="server" AutoPostBack="True">
                        <asp:ListItem Value="0" Selected="True">Ýndirim</asp:ListItem>
                        <asp:ListItem Value="1">Ýlave</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="row">
                    <div class="colTwo">
                        <label>Yüzde (%)</label>
                        <ew:NumericBox ID="txtDiscount" runat="server" DecimalSign="," GroupingSeparator=" " TextAlign="Left">0</ew:NumericBox>
                    </div>
                </div>
                <div class="row">
                    <div class="colTwo">
                        <asp:LinkButton ID="btnSave" runat="server" CssClass="btnDefault"><i class="fa fa-save"></i> <%= GetGlobalResourceObject("admin","Save") %></asp:LinkButton>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>