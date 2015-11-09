<%@ Control Language="VB" AutoEventWireup="false" Inherits="facebooksettings" Codebehind="facebooksettings.ascx.vb" %>
<div id="pageStatuslist">
	<div class="dataForm">
    	<div class="row">
            <div class="colTwo">
                <div class="dataForm">
                    <div class="row">
                        <div class="colOne">
                            <label><%=GetGlobalResourceObject("admin", "FacebookConnect")%> :</label>
                            <label class="labelInput"><asp:CheckBox ID="chkFbActive" runat="server"></asp:CheckBox> <%=GetGlobalResourceObject("admin", "StatusActiveOrPassive")%></label>
                        </div>
                    </div>
                    <div class="row">
                         <div class="colOne">
                            <label><%=GetGlobalResourceObject("admin", "FacebookApiId")%> :</label>
                            <asp:textbox id="txtFbApiId" runat="server"></asp:textbox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="colOne">
                            <label><%=GetGlobalResourceObject("admin", "FacebookApiKey")%> :</label>
                            <asp:textbox id="txtFbApikey" runat="server" ></asp:textbox>
                        </div>
                    </div>
                </div>
            </div>
            <div class="colTwo">
                <div class="dataForm">
                    <div class="row">
                            <div class="colOne">
                                <label><%=GetGlobalResourceObject("admin", "FacebookStoreActive")%> :</label>
                                <label class="labelInput"><asp:CheckBox ID="chkFbStoreActive" runat="server"></asp:CheckBox> <%=GetGlobalResourceObject("admin", "StatusActiveOrPassive")%></label>
                            </div>
                        </div>
                    <div class="row">
                        <div class="colOne">
                            <label><%=GetGlobalResourceObject("admin", "FacebookStoreURL")%> :</label>
                            <asp:textbox id="txtFbCanvasUrl" runat="server"></asp:textbox>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="buttonGroup">
    	<asp:LinkButton ID="applyBtn" runat="server" CssClass="btnDefault" ><i class="fa fa-floppy-o"></i> <%=GetGlobalResourceObject("admin","SaveSettings") %> </asp:LinkButton>
    </div>
</div>