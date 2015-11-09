<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.cipara" Codebehind="ipara.ascx.vb" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<div class="pageIparaSettings" runat="server">
	 
    <div class="dataForm">
    	<div class="row">
        	<div class="col1-2">
            	<div class="row">
            <div class="colTwo">
                <label>iPara Aktif :</label>
                <label class="labelInput"><asp:CheckBox ID="chkIsActive" runat="server"  /> Aktif/Pasif</label>
            </div>
            <div class="colTwo">
                <label>Private Key :</label>
                <asp:TextBox ID="txtPrivateKey" runat="server"></asp:TextBox>
            </div>
        </div>
                <div class="row">
                    <div class="colTwo">
                        <label>Public Key :</label>
                        <asp:TextBox ID="txtPublicKey" runat="server"></asp:TextBox>
                    </div>
                    <div class="colTwo">
                        <label>Ýndirim Oraný % :</label>
                        <ew:numericbox id="txtDiscount" runat="server" decimalsign="," groupingseparator=" " textalign="Left">0</ew:numericbox>
                    </div>
                </div>
                <div class="row">
                    <div class="colTwo">
                        <label>Çalýþma Ortamý :</label>
                        <asp:DropDownList ID="ddlTest" runat="server">
                        <asp:ListItem Value="https://www.ipara.com/odeme">Üretim Ortamý</asp:ListItem>
                        <asp:ListItem Value="https://www.ipara.com/sandbox">Test Ortamý</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="row">
                    <div class="colOne">
                        <asp:LinkButton ID="btnSave" runat="server" CssClass="btnDefault"><i class="fa fa-save"></i> <%= GetGlobalResourceObject("admin","Save") %></asp:LinkButton>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>