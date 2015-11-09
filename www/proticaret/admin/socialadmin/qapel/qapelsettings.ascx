<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="qapelsettings.ascx.vb" Inherits="qapelsettings1" %>
<div id="pageQapelSettings">
	<div class="alert alert-info" id="alertinfo" runat="server" visible="false" ><asp:Label ID="lblSonuc" runat="server"></asp:Label></div>
    <div class="dataForm">
        <div class="row">
            <div class="colTwo">
            	<div class="dataForm">
                    <div class="row">
                        <div class="colTwo">
                        	<label runat="server"><%= GetGlobalResourceObject("admin","QapelConnectActive") %></label>
                            <label class="labelInput"><asp:CheckBox ID="chkQActive" runat="server"></asp:CheckBox> <%=GetGlobalResourceObject("admin", "StatusActiveOrPassive")%></label>
                        </div>
                        <div class="colTwo">
                        	<label>Qapel SiteID :</label>
                            <asp:TextBox ID="txtQapelSiteID" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="colTwo">
                        	<label>Qapel SiteKey :</label>
                            <asp:TextBox ID="txtQapelSiteKey" runat="server"></asp:TextBox>
                        </div>
                        <div class="colTwo">
                        	<label>Qapel Site Url :</label>
                            <asp:TextBox ID="txtQapelSiteDomain" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="colOne"><asp:LinkButton ID="applyBtn" runat="server" CssClass="btnDefault" ><i class="fa fa-floppy-o"></i> <%=GetGlobalResourceObject("admin","SaveSettings") %></asp:LinkButton></div>
                    </div>
                </div>
            </div>
            <div class="colTwo"><img src="../themes/default/images/social/qapeladmin.png" border="0" /></div>
        </div>
    </div>
</div>
