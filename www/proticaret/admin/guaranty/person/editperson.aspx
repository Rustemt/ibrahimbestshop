<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="editperson.aspx.vb" Inherits="editperson" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Servis tip Ekle</title>
</head>
<body>

    <form id="form1" runat="server">
    	<div class="pagePopup" runat="server">
            <div class="boxToggle">
                <div class="toggleTitle">
                	<div class="titleText">Personel Ekle</div>
                </div>
                <div class="toggleContent dataForm" style="padding:25px;">
                    <label id="lblMessage" runat="server"></label>
                    <div class="row">
                        <div class="colTwo">
                            <label>Personel Kodu :</label>
                            <asp:TextBox ID="txtPersonCode" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="PersonCodeRFV" runat="server" ControlToValidate="txtPersonCode" ErrorMessage="asdasd"></asp:RequiredFieldValidator>
                        </div>
                        <div class="colTwo">
                            <label>Personel Adı :</label>
                            <asp:TextBox ID="txtPersonName" runat="server" MaxLength="50"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="txtPersonNameRFV" runat="server" ControlToValidate="txtPersonName">*</asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="row">
                        <div class="colTwo">
                            <label>Personel Ünvanı :</label>
                            <asp:TextBox ID="txtPersonTitle" runat="server" MaxLength="50"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="txtPersonTitleRFV" runat="server" ControlToValidate="txtPersonTitle" >*</asp:RequiredFieldValidator>
                        </div>
                        <div class="colTwo">
                            <label>Durum :</label>
                            <asp:DropDownList ID="ddlPersonStatus" runat="server">
                            <asp:ListItem>--Seçiniz--</asp:ListItem>
                            <asp:ListItem Value="2">Aktif</asp:ListItem>
                            <asp:ListItem Value="1">Pasif</asp:ListItem>
                            <asp:ListItem Value="0">Belirsiz</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="ddlPersonStatusRFV" runat="server" ControlToValidate="ddlPersonStatus" ErrorMessage="*" InitialValue="--Seçiniz--"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="row">
                        <div class="colTwo checkList">
                            <label>Eklenecek Modül :</label>
                            <label class="labelInput"><asp:CheckBox runat="server" ID="cbOffer" Text="Teklif" AutoPostBack="True"/></label>
                        </div>
                        <div class="colTwo checkList">
                            <label>&nbsp;</label>
                            <label class="labelInput"><asp:CheckBox runat="server" ID="cbServices" Text="Servis" AutoPostBack="True"/></label>
                        </div>
                    </div>
                    <asp:Panel ID="Panel1" runat="server">
                        <div class="row">
                            <div class="colTwo">
                                <label>Şubesi :</label>
                                <asp:DropDownList ID="ddlServicesName" runat="server"></asp:DropDownList>
                                <%--<asp:RequiredFieldValidator ID="ddlServicesNameRFV" runat="server" ControlToValidate="ddlServicesName" ErrorMessage="*" InitialValue="--Seçiniz--"></asp:RequiredFieldValidator>--%>
                            </div>
                            <div class="colTwo">
                                <label>Departman :</label>
                                <asp:DropDownList ID="ddlDepartmentName" runat="server"></asp:DropDownList>
                                <%--<asp:RequiredFieldValidator ID="ddlDepartmentNameRFV" runat="server" ControlToValidate="ddlDepartmentName" ErrorMessage="*" InitialValue="--Seçiniz--"></asp:RequiredFieldValidator>--%>
                            </div>
                        </div>
                        <div class="row">
                            <div class="colTwo">
                                <label>İş Grubu :</label>
                                <asp:DropDownList ID="ddlJobGroup" runat="server"></asp:DropDownList>
                                <%--<asp:RequiredFieldValidator ID="ddlJobGroupRFV" runat="server" ControlToValidate="ddlJobGroup" ErrorMessage="*" InitialValue="--Seçiniz--"></asp:RequiredFieldValidator>--%>
                            </div>
                        </div>
                    </asp:Panel>
                    <div class="btnGroup">
                        <asp:Button ID="btnSave" runat="server" CssClass="btnDefault" Text="Kaydet" OnClick="btnSave_Click" />
                        <asp:Label ID="lblError" runat="server"  ></asp:Label>
                        <asp:Button ID="btnEdit" runat="server" Text="Kaydet" Visible="false" CssClass="btnDefault" />
                    </div>
                </div>
			</div>
		</div>
		<asp:Label Text="" runat="server" ID="lbl" />
        <script src="/admin/js/rendermodules.js" type="text/javascript"></script>
    </form>
</body>
</html>
