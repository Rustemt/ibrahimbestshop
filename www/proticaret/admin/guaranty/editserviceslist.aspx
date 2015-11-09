<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="editserviceslist.aspx.vb" Inherits="editserviceslist" %>
<%@ Register Assembly="Validators" Namespace="Sample.Web.UI.Compatibility" TagPrefix="cc1" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc3" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Servis Merkezi</title>
</head>
<body>
    <form id="form1" runat="server">       
         <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Always">
                <ContentTemplate>  
        <div class="pagePopup">
            <div class="boxToggle">
                <div class="toggleTitle">
                    <div class="titleText">
                        <asp:Label ID="lblTitle" runat="server"></asp:Label></div>
                </div>
                <div class="toggleContent">

                    <label id="lblMessage" runat="server" />
                    <asp:Label ID="lblError" runat="server"></asp:Label>
                    <asp:Label Text="" runat="server" ID="lbl" />
                    <cc3:CascadingDropDown ID="CascadingDropDown1" runat="server" TargetControlID="ddlServicesCountry"
                        Category="CountryId" PromptText="-Ülke Seçiniz-" ServicePath="/services/city.asmx" ServiceMethod="GetCountry" />
                    <cc3:CascadingDropDown ID="CascadingDropDown2" runat="server" TargetControlID="ddlServicesState"
                        ParentControlID="ddlServicesCountry" Category="CityId" PromptText="-Şehir Seçiniz-" ServicePath="/services/city.asmx"
                        ServiceMethod="GetCity" />
                    <div class="dataForm">
                        <div class="row">
                            <div class="colTwo">
                                <label>Servis Kodu :
                                    <asp:RequiredFieldValidator ID="txtServicesCodeRFV" runat="server" ControlToValidate="txtServicesCode" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator></label>
                                <asp:TextBox ID="txtServicesCode" runat="server" MaxLength="50"></asp:TextBox>
                            </div>
                            <div class="colTwo">
                                <label>Servis Adı :
                                    <asp:RequiredFieldValidator ID="txtServicesNameRFV" runat="server" ControlToValidate="txtServicesName" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator></label>
                                <asp:TextBox ID="txtServicesName" runat="server" MaxLength="50"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="colTwo">
                                <label>Servis Yetkilisi :
                                    <asp:RequiredFieldValidator ID="txtServicesAuthorityRFV" runat="server" ControlToValidate="txtServicesAuthority" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator></label>
                                <asp:TextBox ID="txtServicesAuthority" runat="server" MaxLength="100"></asp:TextBox>
                            </div>
                            <div class="colTwo">
                                <label>Cep Telefonu :
                                    <asp:RegularExpressionValidator ID="txtServicesMobileREV" runat="server" ErrorMessage="*" ControlToValidate="txtServicesMobile" ValidationExpression="[0-9]{11}"></asp:RegularExpressionValidator></label>
                                <asp:TextBox ID="txtServicesMobile" runat="server" MaxLength="11"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="colTwo">
                                <label><%=GetGlobalResourceObject("lang", "Country")%></label>
                                    <asp:DropDownList ID="ddlServicesCountry" CssClass="select" runat="server"></asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" ControlToValidate="ddlServicesCountry" ErrorMessage="Lütfen Ülke seçiniz" InitialValue="">*</asp:RequiredFieldValidator>
                            </div>
                            <div class="colTwo">
                                <label><%=GetGlobalResourceObject("lang", "City")%></label>
                                    <asp:DropDownList  ID="ddlServicesState" runat="server"></asp:DropDownList>
                                <cc1:requiredfieldvalidator id="rq3" runat="server" controltovalidate="ddlServicesState" errormessage="<%$ Resources:lang, RegisterMsg16%>" initialvalue="">*</cc1:requiredfieldvalidator>
                            </div>
                        </div>
                        <div class="row">
                            <div class="colOne">
                                <label>Adres :
                                    <asp:RequiredFieldValidator ID="txtServicesAdressRFV" runat="server" ControlToValidate="txtServicesAdress" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator></label>
                                <asp:TextBox ID="txtServicesAdress" runat="server" Height="50px" MaxLength="200" TextMode="MultiLine"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="colTwo">
                                <label>Sabit Telefon :
                                    <asp:RegularExpressionValidator ID="txtServicesPhoneREV" runat="server" ErrorMessage="*" ControlToValidate="txtServicesPhone" ValidationExpression="[0-9]{11}"></asp:RegularExpressionValidator></label>
                                <asp:TextBox ID="txtServicesPhone" runat="server" MaxLength="11"></asp:TextBox>
                            </div>
                            <div class="colTwo">
                                <label>Fax :
                                    <asp:RegularExpressionValidator ID="txtServicesFaxREV" runat="server" ErrorMessage="*" ControlToValidate="txtServicesFax" ValidationExpression="[0-9]{11}"></asp:RegularExpressionValidator></label>
                                <asp:TextBox ID="txtServicesFax" runat="server" MaxLength="11"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="colTwo">
                                <label>Durum :</label>
                                <asp:DropDownList ID="ddlServicesStatus" runat="server">
                                    <asp:ListItem Value="2">Aktif</asp:ListItem>
                                    <asp:ListItem Value="1">Pasif</asp:ListItem>
                                    <asp:ListItem Value="0">Belirsiz</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="row">
                            <div class="colOne buttonGroup">
                                <asp:Button ID="btnSave" runat="server" CssClass="btnDefault" Text="Kaydet" OnClick="btnSave_Click" />
                                <asp:Button ID="btnEdit" runat="server" Text="Kaydet" Visible="false" CssClass="btnDefault" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div> 

           </ContentTemplate>
                <Triggers>
                    <asp:PostBackTrigger ControlID="btnSave" />
                    <asp:PostBackTrigger ControlID="btnEdit" />
                </Triggers>
            </asp:UpdatePanel>
    </form>
</body>
</html>
