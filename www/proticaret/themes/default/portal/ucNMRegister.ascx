<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="ucNMRegister.ascx.vb" Inherits="ASPNetPortal.ucNMRegister" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<div id="registerAffilate" class="module">
    <div id="module_content">
        <% If HeaderVisible Then%>
        <div id="module_title">
            <span>
                <span id="module_title_icon"></span>
                <%=ModuleTitle%>
                <% If IsEditable Then%>
                <a href="<%=EditNavigateUrl %>" id="module_title_edit"><%=EditText %></a>
                <% End If%>
            </span>
        </div>
        <% End If%>
        <div id="divAlert" runat="server" class="alert" visible="false">
            <asp:Label runat="server" ID="lblMessage"></asp:Label>
            <br />
            <br />
            <asp:Button runat="server" ID="btnAgain" Visible="false" CssClass="addbutton" Text="Tekrar Arama Yap" />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button runat="server" ID="btnContinue" Visible="false" CssClass="addbutton" Text="Devam Et" />
        </div>
        <div id="divContent" runat="server" class="module_box">
            <table width="852" border="0">
                <tr>
                    <td width="488"><b>Referans Üye Kodu : </b>
                        <asp:TextBox runat="server" ID="txtUserCode" ></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ID="rq" ControlToValidate="txtUserCode">*</asp:RequiredFieldValidator>
                        <asp:TextBox runat="server" ID="lblAffiliateId" Visible="false"></asp:TextBox>
                        <asp:Button runat="server" ID="btnUserCodeSearch" CssClass="addbutton" Text="Kullanıcı Ara" /></td>
                    <td width="348">
                        <label>
                            <asp:Button runat="server" ID="btnNormalUyelik" CssClass="addbutton" CausesValidation="false"
                                Text="Normal Üyelik İle Devam Et" />
                        </label>
                    </td>
                </tr>
                <tr>
                    <td>(Sizi bu sisteme davet eden kişinin referans numarasını yazmanız için doldurmanız gereken alandır)</td>
                    <td></td>
                </tr>
            </table>
        </div>
    </div>
</div>
<asp:FilteredTextBoxExtender runat="server" ID="ftbE" TargetControlID="txtUserCode" FilterType="Custom" ValidChars="1234567890"></asp:FilteredTextBoxExtender>