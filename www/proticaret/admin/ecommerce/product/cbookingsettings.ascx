<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="cbookingsettings.ascx.vb" Inherits="ASPNetPortal.cbookingsettings" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<div class="pageBookedSettings" runat="server">
<div class="dataForm">
    <div class="row">
        <div class="col1-2">
        	<div class="row">
                <div class="colTwo">
                	<label>Ürün Rezervasyon Aktif :</label>
                    <label class="labelInput"><asp:CheckBox ID="chkIsActive" runat="server" /> Aktif/Pasif</label>
                </div>
                <div class="colTwo">
                	<label>Rezervasyon Gün Sayisi :</label>
                    <ew:NumericBox ID="txtDay" runat="server" PositiveNumber="true" RealNumber="true" TextAlign="Left">1</ew:NumericBox>
                </div>
            </div>
            <div class="row">
                <div class="colTwo"><asp:LinkButton ID="btnSave" runat="server" CssClass="btnDefault"><i class="fa fa-save"></i> <%= GetGlobalResourceObject("admin","Save") %></asp:LinkButton></div>
            </div>            
        </div>
    </div>
</div>

</div>