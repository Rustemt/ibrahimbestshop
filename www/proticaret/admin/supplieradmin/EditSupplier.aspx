<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EditSupplier.aspx.cs" Inherits="EditSupplier" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title><%= GetGlobalResourceObject("admin","UserInformation") %></title>
</head>

<script type="text/javascript">
    $('#txtSPhone').keyup(
        function () {
            if (this.value.match(/[^0-9]/g)) {
                this.value = this.value.replace(/[^0-9]/g, '');
            }
        }
    );

    $('#txtSFax').keyup(
        function () {
            if (this.value.match(/[^0-9]/g)) {
                this.value = this.value.replace(/[^0-9]/g, '');
            }
        }
    );

    $('#txtSMobile').keyup(
        function () {
            if (this.value.match(/[^0-9]/g)) {
                this.value = this.value.replace(/[^0-9]/g, '');
            }
        }
    );
</script>
<body>
    <form id="form1" runat="server">
        <div class="pagePopup">
            <div class="boxToggle">
                <div class="toggleTitle">
                    <div class="titleText"><span id="spnTitle" runat="server"></span></div>
                </div>
                <div class="toggleContent">
                    <label id="lblMessage" runat="server" />
                    <asp:Panel ID="pnlInformation" runat="server">
                        <div class="dataForm">
                            <div class="row">
                                <div class="colTwo">
                                    <label><%= GetGlobalResourceObject("admin","User") %></label>
                                    <label class="labelInput">
                                        <asp:CheckBox ID="chkSupplierIsActive" runat="server" Visible="True"></asp:CheckBox><%=GetGlobalResourceObject("admin", "StatusActiveOrPassive")%></label>
                                </div>
                                <div class="colTwo">
                                    <label><%= GetGlobalResourceObject("admin","ImportSuppliers") %> : </label>
                                    <asp:DropDownList ID="ddlProviders" runat="server" Enabled="true"></asp:DropDownList>
                                </div>
                            </div>
                            <div class="row">
                                <div class="colTwo">
                                    <label>
                                        <%= GetGlobalResourceObject("admin","Email") %>: 
                                    </label>
                                    <input type="text" id="txtSMail" runat="server" />
                                    <asp:RequiredFieldValidator ID="validSEmail" runat="server" ControlToValidate="txtSMail" ErrorMessage="Lütfen tedarikçi e-mail adresi giriniz.">*</asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="regExMail" runat="server" ControlToValidate="txtSMail" ValidationExpression="\b[\w\.-]+@[\w\.-]+\.\w{2,4}\b" ErrorMessage="Lütfen geçerli bir adres giriniz."></asp:RegularExpressionValidator>

                                </div>
                                <div class="colTwo">
                                    <label>
                                        <%= GetGlobalResourceObject("admin","UserName") %>:
                                        <asp:RequiredFieldValidator ID="validSName" runat="server" ControlToValidate="txtSName" ErrorMessage="Lütfen tedarikçi kullanıcı adını giriniz.">*</asp:RequiredFieldValidator></label>
                                    <input type="text" id="txtSName" runat="server" />
                                </div>
                            </div>
                            <div class="row">
                                <div class="colTwo">
                                    <label>
                                        <%= GetGlobalResourceObject("admin","Password") %>:
                                        <asp:RequiredFieldValidator ID="validSPassword" runat="server" ControlToValidate="txtSPassword" ErrorMessage="Lütfen geçerli bir şifre giriniz.">*</asp:RequiredFieldValidator></label>
                                    <input type="password" id="txtSPassword" runat="server" />
                                </div>
                                <div class="colTwo">
                                    <label><%= GetGlobalResourceObject("admin","Phone") %>: </label>
                                    <input type="text" id="txtSPhone" maxlength="12" runat="server" />
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtSPhone" ValidationExpression="^\d+$" ErrorMessage="Lütfen geçerli bir telefon numarası giriniz."></asp:RegularExpressionValidator>

                                </div>
                            </div>
                            <div class="row">
                                <div class="colTwo">
                                    <label><%= GetGlobalResourceObject("admin","Fax") %>: </label>
                                    <input type="text" id="txtSFax" maxlength="20" runat="server" />
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtSFax" ValidationExpression="^\d+$" ErrorMessage="Lütfen geçerli bir fax numarası giriniz."></asp:RegularExpressionValidator>

                                </div>
                                <div class="colTwo">
                                    <label><%= GetGlobalResourceObject("admin","MobilePhoneNumber") %>: </label>
                                    <input type="text" id="txtSMobile" maxlength="12" runat="server" />
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtSMobile" ValidationExpression="^\d+$" ErrorMessage="Lütfen geçerli bir fax numarası giriniz."></asp:RegularExpressionValidator>

                                </div>
                            </div>
                            <div class="row">
                                <div class="colTwo">
                                    <label><%= GetGlobalResourceObject("admin","SelectYourCity") %>: </label>
                                    <asp:DropDownList ID="ddlCities" runat="server" Enabled="true"></asp:DropDownList>
                                </div>
                            </div>
                            <div class="row">
                                <div class="colOne">
                                    <label><%= GetGlobalResourceObject("admin","Address") %>: </label>
                                    <textarea id="txtSAddress" runat="server"></textarea>
                                </div>
                            </div>
                        </div>
                    </asp:Panel>

                    <div class="buttonGroup">
                        <asp:Button ID="btnSave" runat="server" CssClass="btnDefault" Text="<%$ Resources:admin,Save %>" ToolTip="Tedarikçinizin son durumunu kaydeder." OnClick="btnSave_Click" />
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
