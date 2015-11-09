<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="servicesform.aspx.vb" Inherits="servicesform" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">

</head>
<body>

    <form id="form1" runat="server">
        <div id="module" class="pagePopup">
            <div class="boxToggle" runat="server">
                <div class="toggleTitle">
                    <div class="titleText">Servis Talep Formu</div>
                </div>
                
                <div class="toggleContent">
                    <label id="lblMessage" runat="server"></label>
                    <asp:Label ID="lblError" runat="server" Text=""></asp:Label>
                    
                    <div class="boxToggle" runat="server">
                        <div class="toggleTitle toggleMini">
                            <div class="titleText">Müşteri Bilgileri</div>
                        </div>
                        <div class="toggleContent">
                            <div class="dataForm">
                                <div class="row">
                                    <div class="colTwo">
                                        <label>Adı :</label>
                                        <asp:TextBox ID="txtCustamerName" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="txtCustamerNameRFV" runat="server" ControlToValidate="txtCustamerName" ErrorMessage="*"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="colTwo">
                                        <label>Soyadı :</label>
                                        <asp:TextBox ID="txtCustamerSurName" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="txtCustamerSurNameRFV" runat="server" ControlToValidate="txtCustamerSurName" ErrorMessage="*"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                
                                <div class="row">
                                    <div class="colTwo">
                                        <label>Cep Telefonu :</label>
                                        <asp:TextBox ID="txtCustamerMobileNumber" runat="server" MaxLength="11"></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="txtCustamerMobileNumberRFV1" runat="server" ErrorMessage="*" ControlToValidate="txtCustamerMobileNumber" ValidationExpression="[0-9]{11}"></asp:RegularExpressionValidator>
                                    </div>
                                    <div class="colTwo">
                                        <label>Sabit Telefon :</label>
                                        <asp:TextBox ID="txtCustamerPhoneNumber" runat="server" MaxLength="11"></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="txtCustamerMobileNumberRFV2" runat="server" ErrorMessage="*" ControlToValidate="txtCustamerPhoneNumber" ValidationExpression="[0-9]{11}"></asp:RegularExpressionValidator>
                                    </div>
                                </div>
                                
                                <div class="row">
                                    <div class="colTwo">
                                        <label>Mail Adresi :</label>
                                         <asp:TextBox ID="txtCustamerMail" runat="server"></asp:TextBox>
                                         <asp:RequiredFieldValidator ID="txtCustamerMailRFV" runat="server" ControlToValidate="txtCustamerMail" ErrorMessage="*"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="colTwo">
                                        <label>Ülke :</label>
                                        <asp:DropDownList ID="ddlCustamerCountry" AutoPostBack="true"  runat="server"></asp:DropDownList><asp:RequiredFieldValidator ID="ddlCustamerCountryRFV" runat="server" ControlToValidate="ddlCustamerCountry" ErrorMessage="*" InitialValue="--Seçiniz--"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                
                                <div class="row">
                                    <div class="colTwo">
                                        <label>İl :</label>
                                        <asp:DropDownList ID="ddlCustamerCity" runat="server"></asp:DropDownList><asp:RequiredFieldValidator ID="ddlCustamerCityRFV" runat="server" ControlToValidate="ddlCustamerCity" ErrorMessage="*" InitialValue="--Seçiniz--"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="colTwo">
                                        <label>Adres :</label>
                                        <asp:TextBox ID="txtCustamerAdress" runat="server" TextMode="MultiLine"></asp:TextBox><asp:RequiredFieldValidator ID="txtCustamerAdressRFV" runat="server" ControlToValidate="txtCustamerAdress" ErrorMessage="*"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                            </div>
                        </div>
                     </div>
                     <div class="boxToggle">
                        <div class="toggleTitle toggleMini">
                            <div class="titleText">Özellikler</div>
                        </div>
                        <div class="toggleContent">
                        	<div class="dataForm">
                            <asp:Panel ID="pnlOpt" runat="server">
                            	<div class="row">
                                	<div class="colTwo">
                                        <label><asp:Label ID="txtOpt1" runat="server"></asp:Label></label>
                                        <asp:DropDownList ID="servicesOpt1" runat="server" AutoPostBack="true"></asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="servicesOpt1RFV" runat="server" ControlToValidate="servicesOpt1" ErrorMessage="*" InitialValue="--Seçiniz--">
                                        </asp:RequiredFieldValidator>
                                    </div>
                                    
                                    <div class="colTwo">
                                    	<label>&nbsp;</label>
                                    	<label class="labelInput" runat="server" id="lblopt1"><asp:CheckBox ID="cbOpt1" runat="server" AutoPostBack="true" Text=""></asp:CheckBox></label>
                                    </div>
                                </div>
                                
                                <div class="row">
                                	<div class="colTwo">
                                        <label><asp:Label ID="txtOpt2" runat="server"></asp:Label></label>
                                        <asp:DropDownList ID="servicesOpt2" runat="server" AutoPostBack="true"></asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="servicesOpt2RFV" runat="server" ControlToValidate="servicesOpt2" ErrorMessage="*" InitialValue="--Seçiniz--"></asp:RequiredFieldValidator>
                                    </div>
                                    
                                    <div class="colTwo">
                                    	<label>&nbsp;</label>
                                    	<label class="labelInput" runat="server" id="lblopt2"><asp:CheckBox ID="cbOpt2" runat="server" AutoPostBack="true" Text=""></asp:CheckBox></label>
                                    </div>
                                </div>
                                
                                <div class="row">
                                	<div class="colTwo">
                                        <label><asp:Label ID="txtOpt3" runat="server"></asp:Label></label>
                                        <asp:DropDownList ID="servicesOpt3" runat="server" AutoPostBack="true"></asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="servicesOpt3RFV" runat="server" ControlToValidate="servicesOpt3" ErrorMessage="*" InitialValue="--Seçiniz--"></asp:RequiredFieldValidator>
                                    </div>
                                    
                                    <div class="colTwo">
                                    	<label>&nbsp;</label>
                                    	<label class="labelInput" runat="server" id="lblopt3" ><asp:CheckBox ID="cbOpt3" runat="server" AutoPostBack="true" Text=""></asp:CheckBox></label>
                                    </div>
                                </div>
                                
                                <div class="row">
                                	<div class="colTwo">
                                        <label><asp:Label ID="txtOpt4" runat="server"></asp:Label></label>
                                        <asp:DropDownList ID="servicesOpt4" runat="server" AutoPostBack="true"></asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="servicesOpt4RFV" runat="server" ControlToValidate="servicesOpt4" ErrorMessage="*" InitialValue="--Seçiniz--"></asp:RequiredFieldValidator>
                                    </div>
                                    
                                    <div class="colTwo">
                                    	<label>&nbsp;</label>
                                    	<label class="labelInput" runat="server" id="lblopt4"><asp:CheckBox ID="cbOpt4" runat="server" AutoPostBack="true" Text=""></asp:CheckBox></label>
                                    </div>
                                </div>
                                
                                <div class="row">
                                	<div class="colTwo">
                                        <label><asp:Label ID="txtOpt5" runat="server"></asp:Label></label>
                                        <asp:DropDownList ID="servicesOpt5" runat="server" AutoPostBack="true"></asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="servicesOpt5RFV" runat="server" ControlToValidate="servicesOpt5" ErrorMessage="*" InitialValue="--Seçiniz--"></asp:RequiredFieldValidator>
                                    </div>
                                    
                                    <div class="colTwo">
                                    	<label>&nbsp;</label>
                                    	<label class="labelInput" runat="server" id="lblopt5"><asp:CheckBox ID="cbOpt5" runat="server" AutoPostBack="true" Text=""></asp:CheckBox></label>
                                    </div>
                                </div>
                                
                                <div class="row">
                                	<div class="colTwo">
                                        <label><asp:Label ID="txtOpt6" runat="server"></asp:Label></label>
                                        <asp:DropDownList ID="servicesOpt6" runat="server" AutoPostBack="true"></asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="servicesOpt6RFV" runat="server" ControlToValidate="servicesOpt6" ErrorMessage="*" InitialValue="--Seçiniz--"></asp:RequiredFieldValidator>
                                    </div>
                                    
                                    <div class="colTwo">
                                    	<label>&nbsp;</label>
                                    	<label class="labelInput" runat="server" id="lblopt6"><asp:CheckBox ID="cbOpt6" runat="server" AutoPostBack="true" Text=""></asp:CheckBox></label>
                                    </div>
                                </div>
                                
                                <div class="row">
                                	<div class="colTwo">
                                        <label><asp:Label ID="txtOpt7" runat="server"></asp:Label></label>
                                        <asp:DropDownList ID="servicesOpt7" runat="server" AutoPostBack="true"></asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="servicesOpt7RFV" runat="server" ControlToValidate="servicesOpt7" ErrorMessage="*" InitialValue="--Seçiniz--"></asp:RequiredFieldValidator>
                                    </div>
                                    
                                    <div class="colTwo">
                                    	<label>&nbsp;</label>
                                    	<label class="labelInput" runat="server" id="lblopt7"><asp:CheckBox ID="cbOpt7" runat="server" AutoPostBack="true" Text=""></asp:CheckBox></label>
                                    </div>
                                </div>
                                
                                <div class="row">
                                	<div class="colTwo">
                                        <label><asp:Label ID="txtOpt8" runat="server"></asp:Label></label>
                                        <asp:DropDownList ID="servicesOpt8" runat="server" AutoPostBack="true"></asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="servicesOpt8RFV" runat="server" ControlToValidate="servicesOpt8" ErrorMessage="*" InitialValue="--Seçiniz--"></asp:RequiredFieldValidator>
                                  
                                    </div>
                                    
                                    <div class="colTwo">
                                    	<label>&nbsp;</label>
                                    	<label class="labelInput" runat="server" id="lblopt8"><asp:CheckBox ID="cbOpt8" runat="server" AutoPostBack="true" Text=""></asp:CheckBox></label>
                                    </div>
                                </div>
                                
                                <div class="row">
                                	<div class="colTwo">
                                        <label><asp:Label ID="txtOpt9" runat="server"></asp:Label></label>
                                        <asp:DropDownList ID="servicesOpt9" runat="server" AutoPostBack="true"></asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="servicesOpt9RFV" runat="server" ControlToValidate="servicesOpt9" ErrorMessage="*" InitialValue="--Seçiniz--"></asp:RequiredFieldValidator>
                                    </div>
                                    
                                    <div class="colTwo">
                                    	<label>&nbsp;</label>
                                    	<label class="labelInput" runat="server" id="lblopt9"><asp:CheckBox ID="cbOpt9" runat="server" AutoPostBack="true" Text=""></asp:CheckBox></label>
                                        
                                    </div>
                                </div>
                                
                                <div class="row">
                                	<div class="colTwo">
                                        <label><asp:Label ID="txtOpt10" runat="server"></asp:Label></label>
                                        <asp:DropDownList ID="servicesOpt10" runat="server" AutoPostBack="true"></asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="servicesOpt10RFV" runat="server" ControlToValidate="servicesOpt10" ErrorMessage="*" InitialValue="--Seçiniz--"></asp:RequiredFieldValidator>
                                    </div>
                                    
                                    <div class="colTwo">
                                    	<label>&nbsp;</label>
                                    	<label class="labelInput" runat="server" id="lblopt10"><asp:CheckBox ID="cbOpt10" runat="server" AutoPostBack="true" Text=""></asp:CheckBox></label>
                                    </div>
                                </div>
                            </asp:Panel>  
                    		</div>
                       	</div>
                    </div>  
                    <div class="boxToggle">
                        <div class="toggleTitle toggleMini">
                        	<div class="titleText">Servis ve Montaj Bilgileri :</div>
                        </div>
                        <div class="toggleContent">
                        	<div class="dataForm">
                            	<div class="row">
                                	<div class="colTwo">
                                    	<label>Servis Tipi :</label>
                                        <label class="labelInput"><asp:CheckBox ID="cbServices" runat="server" Text="Servis" /></label>
                                    </div>
                                    <div class="colTwo">
                                    	<label>&nbsp;</label>
                                    	<label class="labelInput"><asp:CheckBox ID="cbMontage" runat="server" Text="Montaj" /></label>
                                    </div>
                                </div>
                                
                                <div class="row">
                                	<div class="colTwo">
                                    	<label>Cihazın Markası :</label>
                                        <asp:DropDownList ID="ddlMark" runat="server" AutoPostBack="True"></asp:DropDownList><asp:RequiredFieldValidator ID="ddlMarkRFV" runat="server" ControlToValidate="ddlMark" ErrorMessage="*" InitialValue="--Seçiniz--"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="colTwo">
                                    	<label>Cihazın Modeli :</label>
                                    	<label class="labelInput">
                                        	<asp:DropDownList ID="ddlModel" runat="server"></asp:DropDownList>
                               				<asp:RequiredFieldValidator ID="ddlModelRFV" runat="server" ControlToValidate="ddlModel" ErrorMessage="*" InitialValue="--Seçiniz--"></asp:RequiredFieldValidator>
                                        </label>
                                    </div>
                                </div>
                                
                                <div class="row">
                                	<div class="colTwo">
                                    	<label>Cihazın Adı :</label>
                                        <asp:DropDownList ID="ddlProductName" runat="server"></asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="ddlProductNameRFV" runat="server" ControlToValidate="ddlProductName" ErrorMessage="*" InitialValue="--Seçiniz--"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="colTwo">
                                    	
                                    </div>
                                </div>
                                
                                <div class="row">
                                	<div class="colTwo">
                                    	<label>Garanti Durumu :</label>
                                    	<label class="labelInput"><asp:CheckBox ID="cbYes" runat="server" Text="Var" AutoPostBack="True" /></label>
                                    </div>
                                    <div class="colTwo">
                                    	<label>&nbsp;</label>
                                    	<label class="labelInput"><asp:CheckBox ID="cbNo" runat="server" Text="Yok" AutoPostBack="True" /></label>
                                    </div>
                                </div>
                                
                                <div class="row">
                                	<div class="colTwo">
                                    	<label>Seri Numarısı :</label>
                                        <asp:TextBox ID="txtCustamerSerial" runat="server"></asp:TextBox>
                                    </div>
                                    <div class="colTwo">
                                    	<label>Şikayetiniz :</label>
                                    	<asp:TextBox ID="txtCustamerPlaint" runat="server" TextMode="MultiLine"></asp:TextBox><asp:RequiredFieldValidator ID="txtCustamerPlaintRFV" runat="server" ControlToValidate="txtCustamerPlaint" ErrorMessage="*"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                            </div>
                            <div class="buttonGroup">
                            	<asp:Button ID="btnServicesFormSave" runat="server" Text="Kaydet" CssClass="btnDefault" />
                   				<asp:Button ID="btnServicesFormExit" runat="server" Text="Çıkış" CssClass="btnDefault"/>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
     
</body>
</html>
