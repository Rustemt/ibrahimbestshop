<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.payment" CodeBehind="payment.ascx.vb" %>
<%@ Register TagPrefix="cc1" Namespace="Vladsm.Web.UI.WebControls" Assembly="GroupRadioButton" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Register TagPrefix="aspzone" Namespace="aspZone.WebControls" Assembly="aspZone.WebControls.OneClickButton" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<script type="text/javascript" src="<%= getThemePath() %>/js/keyboard.min.js"></script>
<link href="<% =getThemePath() %>/css/keyboard.css" type="text/css" rel="stylesheet" />

<div id="payment" class="module">
    <% If HeaderVisible Then%>
    <div class="moduleTitle">
        <%=ModuleTitle%>
        <% If IsEditable Then%>
        <a href="<%=EditNavigateUrl %>" class="moduleTitleEdit"><%=EditText %></a>
        <% End If%>
    </div>
    <% End If%>
    <div class="moduleContent moduleContentCol1">
        <script type="text/javascript">
            var ParentClientId = '<%= Me.ClientID %>';
            function CancelPayment() {
                document.getElementById('<%=OneClickButton2.ClientID%>').click();
            }

            function ConfirmPayment() {
                document.getElementById('<%=OneClickButton2.ClientID%>').click();
            }

            function LoadFrame() {
                Page_ClientValidate();
                if (Page_IsValid) {
                    var OneClickbtn = document.getElementById('<%=OneClickButton3.ClientID%>');
                    OneClickbtn.innerHTML = 'Bekleyiniz...';
                    OneClickbtn.disabled = true;
                    $find('ModalPopupExtender1').show();
                    document.getElementById('<%=xid.ClientID%>').value = "";
                    document.getElementById('<%=eci.ClientID%>').value = "";
                    document.getElementById('<%=cavv.ClientID%>').value = "";
                    document.getElementById('<%=md.ClientID%>').value = "";
                    document.getElementById('<%=txstatus.ClientID%>').value = "";


                    FillFrame();
                }
            }

            function FillFrame() {


                var ddlyear = document.getElementById('<%=ddlYear.ClientID%>');
                var ddlmonth = document.getElementById('<%=ddlMonth.ClientID%>');
                var locatin = frames['frame3d'].location.href

                if (locatin.indexOf('3dformyk.aspx') > 0) {
                    //kk
                    frames['frame3d'].document.forms['Form1'].elements['pan'].value = document.getElementById('<%=txtKKNumber.ClientID%>').value;
                    frames['frame3d'].document.forms['Form1'].elements['cv2'].value = document.getElementById('<%=txtSecurity.ClientID%>').value;
                    frames['frame3d'].document.forms['Form1'].elements['Ecom_Payment_Card_ExpDate_Year'].value = ddlyear.options[ddlyear.selectedIndex].value.substring(0, 2);
                    frames['frame3d'].document.forms['Form1'].elements['Ecom_Payment_Card_ExpDate_Month'].value = ddlmonth.options[ddlmonth.selectedIndex].value;
                    //visa-master
                    if (document.getElementById('<%=txtKKNumber.ClientID%>').value.startsWith('5'))
                    { frames['frame3d'].document.forms['Form1'].elements['cardType'].selectedIndex = 1; }
                    else
                    { frames['frame3d'].document.forms['Form1'].elements['cardType'].selectedIndex = 0; }
                    //vada
                    var chkVada = document.getElementById('<%=chkVada.ClientID%>');
                    if (chkVada != null) {
                        if (chkVada.checked)
                        { frames['frame3d'].document.forms['Form1'].elements['useJokerVadaa'].value = 1; }
                    }
                    //sub
                    frames['frame3d'].GetPosnetDataCs()
                }
                else if (locatin.indexOf('3dformvakifbank.aspx') > 0) {
                    //kk
                    var OneClickbtn = document.getElementById('<%=OneClickButton3.ClientID%>');
                    OneClickbtn.innerHTML = '<%=GetGlobalResourceObject("lang", "PleaseWait")%>';
                    OneClickbtn.disabled = true;
                    frames['frame3d'].document.forms['Form1'].elements['kkno'].value = document.getElementById('<%=txtKKNumber.ClientID%>').value;
                    frames['frame3d'].document.forms['Form1'].elements['gectar'].value = (ddlyear.options[ddlyear.selectedIndex].value.substring(0, 2) + ddlmonth.options[ddlmonth.selectedIndex].value);
                    //sub    
                    frames['frame3d'].createHash();
                    frames['frame3d'].document.forms['Form1'].submit();
                }
                else if (locatin.indexOf('3dformkvk.aspx') > 0) {

                    var OneClickbtn = document.getElementById('<%=OneClickButton3.ClientID%>');
                    OneClickbtn.disabled = true;
                    frames['frame3d'].document.forms['Form1'].elements['cardname'].value = document.getElementById('<%=txtName.ClientID%>').value;
                    frames['frame3d'].document.forms['Form1'].elements['cardnumber'].value = document.getElementById('<%=txtKKNumber.ClientID%>').value;
                    frames['frame3d'].document.forms['Form1'].elements['cardcvv2'].value = document.getElementById('<%=txtSecurity.ClientID%>').value;
                    frames['frame3d'].document.forms['Form1'].elements['cardexpiredateyear'].value = ddlyear.options[ddlyear.selectedIndex].value;
                    frames['frame3d'].document.forms['Form1'].elements['cardexpiredatemonth'].value = ddlmonth.options[ddlmonth.selectedIndex].value;
                    frames['frame3d'].document.forms['Form1'].submit();
                }
                else if (locatin.indexOf('3dformpaymec.aspx') > 0) {

                    var OneClickbtn = document.getElementById('<%=OneClickButton3.ClientID%>');
                    OneClickbtn.disabled = true;
                    frames['frame3d'].document.forms['Form1'].elements['cardname'].value = document.getElementById('<%=txtName.ClientID%>').value;
                    frames['frame3d'].document.forms['Form1'].elements['cardnumber'].value = document.getElementById('<%=txtKKNumber.ClientID%>').value;
                    frames['frame3d'].document.forms['Form1'].elements['cardcvv2'].value = document.getElementById('<%=txtSecurity.ClientID%>').value;
                    frames['frame3d'].document.forms['Form1'].elements['cardexpiredateyear'].value = ddlyear.options[ddlyear.selectedIndex].value;
                    frames['frame3d'].document.forms['Form1'].elements['cardexpiredatemonth'].value = ddlmonth.options[ddlmonth.selectedIndex].value;
                    frames['frame3d'].document.forms['Form1'].submit();
                }
                else if (locatin.indexOf('3dformbkm.aspx') > 0) {
                    //kk
                    frames['frame3d'].document.forms['Form1'].elements['pan'].value = document.getElementById('<%=txtKKNumber.ClientID%>').value;
                    frames['frame3d'].document.forms['Form1'].elements['cv2'].value = document.getElementById('<%=txtSecurity.ClientID%>').value;
                    frames['frame3d'].document.forms['Form1'].elements['expiry'].value = (ddlyear.options[ddlyear.selectedIndex].value.substring(0, 2) + ddlmonth.options[ddlmonth.selectedIndex].value);
                    //visa-master
                    if (document.getElementById('<%=txtKKNumber.ClientID%>').value.startsWith('5'))
                    { frames['frame3d'].document.forms['Form1'].elements['cardType'].selectedIndex = 1; }
                    else
                    { frames['frame3d'].document.forms['Form1'].elements['cardType'].selectedIndex = 0; }
                    //sub    
                    frames['frame3d'].createHash();
                    frames['frame3d'].document.forms['Form1'].submit();
                }
                else if (locatin.indexOf('3dformgaranti.aspx') > 0) {

                    frames['frame3d'].document.forms['Form1'].elements['cardnumber'].value = document.getElementById('<%=txtKKNumber.ClientID%>').value;
                    frames['frame3d'].document.forms['Form1'].elements['cardcvv2'].value = document.getElementById('<%=txtSecurity.ClientID%>').value;
                    frames['frame3d'].document.forms['Form1'].elements['cardexpiredateyear'].value = ddlyear.options[ddlyear.selectedIndex].value;
                    frames['frame3d'].document.forms['Form1'].elements['cardexpiredatemonth'].value = ddlmonth.options[ddlmonth.selectedIndex].value;
                    //sub        
                    frames['frame3d'].document.forms['Form1'].submit();
                }
                else if (locatin.indexOf('3dformdenizbank.aspx') > 0) {
                    
                    var OneClickbtn = document.getElementById('<%=OneClickButton3.ClientID%>');
                    OneClickbtn.innerHTML = '<%=GetGlobalResourceObject("lang", "PleaseWait")%>';
                    OneClickbtn.disabled = true;
                    frames['frame3d'].document.forms['Form2'].elements['Pan'].value = document.getElementById('<%=txtKKNumber.ClientID%>').value;
                    frames['frame3d'].document.forms['Form2'].elements['Cvv2'].value = document.getElementById('<%=txtSecurity.ClientID%>').value;
                    frames['frame3d'].document.forms['Form2'].elements['Expiry'].value = (ddlmonth.options[ddlmonth.selectedIndex].value + ddlyear.options[ddlyear.selectedIndex].value);
                    //visa-master
                    if (document.getElementById('<%=txtKKNumber.ClientID%>').value.startsWith('5'))
                    { frames['frame3d'].document.forms['Form2'].elements['CardType'].selectedIndex = 1; }
                    else
                    {
                        frames['frame3d'].document.forms['Form2'].elements['CardType'].selectedIndex = 0;
                    }
                    frames['frame3d'].document.forms['Form2'].submit();
                }
                else if (locatin.indexOf('3dformgenpa.aspx') > 0) {
                    //kk


                    var OneClickbtn = document.getElementById('<%=OneClickButton3.ClientID%>');
                    OneClickbtn.innerHTML = '<%=GetGlobalResourceObject("lang", "PleaseWait")%>';
                    OneClickbtn.disabled = true;
                    frames['frame3d'].document.forms['Form1'].elements['cardnumber'].value = document.getElementById('<%=txtKKNumber.ClientID%>').value;
                    frames['frame3d'].document.forms['Form1'].elements['cardcvv2'].value = document.getElementById('<%=txtSecurity.ClientID%>').value;
                    frames['frame3d'].document.forms['Form1'].elements['cardexpiredateyear'].value = ddlyear.options[ddlyear.selectedIndex].value;
                    frames['frame3d'].document.forms['Form1'].elements['cardexpiredatemonth'].value = ddlmonth.options[ddlmonth.selectedIndex].value;
                    //sub        
                    frames['frame3d'].document.forms['Form1'].submit();
                }
                else if (locatin.indexOf('3dform_ipara_api.aspx') > 0) {
                    //kk

                    var OneClickbtn = document.getElementById('<%=OneClickButton3.ClientID%>');
                    OneClickbtn.innerHTML = '<%=GetGlobalResourceObject("lang", "PleaseWait")%>';
                    OneClickbtn.disabled = true;
                    frames['frame3d'].document.forms['Form1'].elements['cardnumber'].value = document.getElementById('<%=txtKKNumber.ClientID%>').value;
                    frames['frame3d'].document.forms['Form1'].elements['cardcvv2'].value = document.getElementById('<%=txtSecurity.ClientID%>').value;
                    frames['frame3d'].document.forms['Form1'].elements['cardexpiredateyear'].value = ddlyear.options[ddlyear.selectedIndex].value;
                    frames['frame3d'].document.forms['Form1'].elements['cardexpiredatemonth'].value = ddlmonth.options[ddlmonth.selectedIndex].value;
                    //sub        
                    frames['frame3d'].document.forms['Form1'].submit();
                }
                else if (locatin.indexOf('3dformiyzico.aspx') > 0) {
                    //kk

                    var OneClickbtn = document.getElementById('<%=OneClickButton3.ClientID%>');
                    OneClickbtn.innerHTML = '<%=GetGlobalResourceObject("lang", "PleaseWait")%>';
                    OneClickbtn.disabled = true;
                    frames['frame3d'].document.forms['Form1'].elements['cardnumber'].value = document.getElementById('<%=txtKKNumber.ClientID%>').value;
                    frames['frame3d'].document.forms['Form1'].elements['cardcvv2'].value = document.getElementById('<%=txtSecurity.ClientID%>').value;
                    frames['frame3d'].document.forms['Form1'].elements['cardexpiredateyear'].value = ddlyear.options[ddlyear.selectedIndex].value;
                    frames['frame3d'].document.forms['Form1'].elements['cardexpiredatemonth'].value = ddlmonth.options[ddlmonth.selectedIndex].value;
                    //sub        
                    frames['frame3d'].document.forms['Form1'].submit();
                }
                else if (locatin.indexOf('3dformkuveyt.aspx') > 0) {

                    var OneClickbtn = document.getElementById('<%=OneClickButton3.ClientID%>');
                    OneClickbtn.innerHTML = '<%=GetGlobalResourceObject("lang", "PleaseWait")%>';
                    OneClickbtn.disabled = true;
                    // frames['frame3d'].document.forms['Form2'].submit();
                }
                else {
                    //kk
                    frames['frame3d'].document.forms['Form1'].elements['pan'].value = document.getElementById('<%=txtKKNumber.ClientID%>').value;
                    frames['frame3d'].document.forms['Form1'].elements['cv2'].value = document.getElementById('<%=txtSecurity.ClientID%>').value;
                    frames['frame3d'].document.forms['Form1'].elements['Ecom_Payment_Card_ExpDate_Year'].value = ddlyear.options[ddlyear.selectedIndex].value;
                    frames['frame3d'].document.forms['Form1'].elements['Ecom_Payment_Card_ExpDate_Month'].value = ddlmonth.options[ddlmonth.selectedIndex].value;
                    //visa-master
                    if (document.getElementById('<%=txtKKNumber.ClientID%>').value.startsWith('5'))
                    { frames['frame3d'].document.forms['Form1'].elements['cardType'].selectedIndex = 1; }
                    else
                    { frames['frame3d'].document.forms['Form1'].elements['cardType'].selectedIndex = 0; }
                    //sub
                    frames['frame3d'].document.forms['Form1'].submit();
                }
}

function Calc() {
    var toplam = document.getElementById('<%=txttoplam.ClientID%>').value;
    var tutar = document.getElementById('<%=txtTutar.ClientID%>').value;
    ASPNetPortal.Service3d.Calc(toplam, tutar, OnSucceededCalc, OnFailed);
}
function Calc1() {
    var toplam = document.getElementById('<%=txttoplam.ClientID%>').value;
    var tutar = document.getElementById('<%=txtTutar.ClientID%>').value;
    ASPNetPortal.Service3d.Calc1(toplam, tutar, OnSucceededCalc1, OnFailed1);
}
function OnSucceededCalc(res) {
    var sres = res.split("|");
    document.getElementById('<%=txtgider.ClientID%>').value = sres[0];
    document.getElementById('<%=txttoplam.ClientID%>').value = sres[1];
    frames['frame3d'].document.location.reload();
}
function OnSucceededCalc1(res) {
    var sres = res.split("|");
    document.getElementById('<%=txtgider.ClientID%>').value = sres[0];
    document.getElementById('<%=txtTutar.ClientID%>').value = sres[1];
    frames['frame3d'].document.location.reload();
}
function OnFailed(res) {
    // Alert user to the error.
    alert(res);
}
function OnFailed1(res) {
    // Alert user to the error.
    alert(res);
}

function fncInputNumericValuesOnly(event) {
    var e = event || evt; // for trans-browser compatibility
    var charCode = e.which || e.keyCode;

    if (charCode < 48 || charCode > 57)
        return false;

    return true;

}
        </script>
        <div>
            <div class="dataTable">
                <label>
                    <%=GetGlobalResourceObject("lang", "SelectBank")%> :
                    <asp:DropDownList ID="ddlBanks" runat="server" AutoPostBack="True"></asp:DropDownList></label>
                <asp:DataGrid ID="dgTaksitList" runat="server" AutoGenerateColumns="False" Width="100%" CssClass="datalist" HeaderStyle-CssClass="title" GridLines="none" ItemStyle-CssClass="row">
                    <Columns>
                        <asp:BoundColumn Visible="False" DataField="BankId"></asp:BoundColumn>
                        <asp:BoundColumn Visible="False" DataField="BankInfoId"></asp:BoundColumn>
                        <asp:BoundColumn Visible="False" DataField="Taksit"></asp:BoundColumn>
                        <asp:BoundColumn Visible="False" DataField="Rate"></asp:BoundColumn>
                        <asp:TemplateColumn>
                            <ItemTemplate>
                                <cc1:GroupRadioButton AutoPostBack="True" CommandName="Select" ID="TaksitSayisi" runat="server" Text='<% container.dataitem("Taksit") %>' GroupName="TaksitSayisi"></cc1:GroupRadioButton>
                                <asp:Label ID="Label2" runat="server" Text='<%#  DataBinder.Eval(Container, "DataItem.BankDesc") %>' Font-Bold='<%# IIf (container.dataitem("Rate") = 0,"TRUE","FALSE")  %>'>
                                </asp:Label>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn HeaderText="<%$ Resources:lang, Installment%>">
                            <ItemTemplate>
                                <asp:Label ID="lblrbtaksitx" runat="server" Text='<%# iif(ChkNullString(container.dataitem("Description"))="",container.dataitem("Taksit"),container.dataitem("Description")) %>' Font-Bold='<%# IIf (container.dataitem("Rate") = 0,"TRUE","FALSE")  %>'>
                                </asp:Label>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn HeaderText="<%$ Resources:lang, InstallmentExpense%>">
                            <ItemTemplate>
                                <asp:Label ID="TaksitTutar" runat="server" Font-Bold='<%# IIf (container.dataitem("Rate") = 0,"TRUE","FALSE")  %>' Text='<%#  "% " & formatCurDoviz(DataBinder.Eval(Container, "DataItem.Rate")) & GetGlobalResourceObject("lang", "PlusTax")  %>'>
                                </asp:Label>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                    </Columns>
                </asp:DataGrid>
            </div>
            <label class="title3"><%=GetGlobalResourceObject("lang", "PaymentInformation")%></label>
            <div class="dataTable">
                <table>
                    <tr>
                        <td align="right" width="130"><%=GetGlobalResourceObject("lang", "TotalPrice")%> :</td>
                        <td>
                            <asp:TextBox ID="txtTutar" runat="server" onkeyup="Calc()">0,00</asp:TextBox>
                            <cc1:FilteredTextBoxExtender runat="server" ID="ftbE" TargetControlID="txtTutar" FilterType="Custom" ValidChars="1234567890,."></cc1:FilteredTextBoxExtender>
                            <asp:Label ID="Label14" runat="server" ForeColor="Red">TL</asp:Label>
                            <asp:RequiredFieldValidator ID="Requiredfieldvalidator4" runat="server" InitialValue="0,00" ControlToValidate="txtTutar" ErrorMessage="Lütfen Tutar giriniz.">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right"><%=GetGlobalResourceObject("lang", "TotalExpense")%> :</td>
                        <td>
                            <asp:TextBox ID="txtgider" runat="server" Enabled="False">0,00</asp:TextBox>
                            <asp:Label ID="Label13" runat="server" ForeColor="Red"> TL</asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="right"><%=GetGlobalResourceObject("lang", "TotalCreditCardPayment")%> :</td>
                        <td>
                            <asp:TextBox ID="txttoplam" runat="server" onkeyup="Calc1()">0,00</asp:TextBox>
                            <cc1:FilteredTextBoxExtender runat="server" ID="ftbe2" TargetControlID="txttoplam" FilterType="Custom" ValidChars="1234567890,."></cc1:FilteredTextBoxExtender>
                            <asp:Label ID="Label9" runat="server" ForeColor="Red">TL</asp:Label>
                            <asp:RequiredFieldValidator ID="Requiredfieldvalidator7" runat="server" InitialValue="0,00" ControlToValidate="txttoplam" ErrorMessage="Lütfen Toplam tutar giriniz.">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" valign="top"><%=GetGlobalResourceObject("lang", "Note")%> :</td>
                        <td>
                            <asp:TextBox ID="txtNot" runat="server" TextMode="MultiLine" MaxLength="100"></asp:TextBox></td>
                    </tr>
                </table>
            </div>
            <label class="title3"><%=GetGlobalResourceObject("lang", "CreditCardInformation")%></label>
            <div>
                <table id="Table14" cellspacing="0" cellpadding="3" border="0">
                    <tr>
                        <td align="right" width="130"><%=GetGlobalResourceObject("lang", "CreditCardName")%> :</td>
                        <td>
                            <asp:TextBox ID="txtName" CssClass="keyboardInput" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Lütfen Kartdaki Ad Soyadý giriniz." ControlToValidate="txtName" Font-Size="X-Small">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right"><%=GetGlobalResourceObject("lang", "CreditCardNumber")%> :</td>
                        <td>
                            <asp:TextBox ID="txtKKNumber" CssClass="keyboardInput" runat="server" MaxLength="16"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Lütfen Kart Numarasýný giriniz." ControlToValidate="txtKKNumber">*</asp:RequiredFieldValidator>
                            <asp:CheckBox ID="chkVada" runat="server" Text="+3 Joker Vada Kullanmak istermisiniz?" Visible="False"></asp:CheckBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right"><%=GetGlobalResourceObject("lang", "CreditCardExDate")%> :</td>
                        <td>
                            <asp:DropDownList ID="ddlMonth" runat="server">
                                <asp:ListItem Selected="True" Text="<%$ Resources:lang, SelectValue%>" Value="0"></asp:ListItem>
                                <asp:ListItem Value="01">01</asp:ListItem>
                                <asp:ListItem Value="02">02</asp:ListItem>
                                <asp:ListItem Value="03">03</asp:ListItem>
                                <asp:ListItem Value="04">04</asp:ListItem>
                                <asp:ListItem Value="05">05</asp:ListItem>
                                <asp:ListItem Value="06">06</asp:ListItem>
                                <asp:ListItem Value="07">07</asp:ListItem>
                                <asp:ListItem Value="08">08</asp:ListItem>
                                <asp:ListItem Value="09">09</asp:ListItem>
                                <asp:ListItem Value="10">10</asp:ListItem>
                                <asp:ListItem Value="11">11</asp:ListItem>
                                <asp:ListItem Value="12">12</asp:ListItem>
                            </asp:DropDownList>&nbsp;
                            <asp:Label ID="Label32" runat="server">/</asp:Label>&nbsp;
                            <asp:DropDownList ID="ddlYear" runat="server">
                                <asp:ListItem Value="0" Selected="True" Text="<%$ Resources:lang, SelectValue%>"></asp:ListItem>
                                <asp:ListItem Value="12">2012</asp:ListItem>
                                <asp:ListItem Value="13">2013</asp:ListItem>
                                <asp:ListItem Value="14">2014</asp:ListItem>
                                <asp:ListItem Value="15">2015</asp:ListItem>
                                <asp:ListItem Value="16">2016</asp:ListItem>
                                <asp:ListItem Value="17">2017</asp:ListItem>
                                <asp:ListItem Value="18">2018</asp:ListItem>
                                <asp:ListItem Value="19">2019</asp:ListItem>
                                <asp:ListItem Value="20">2020</asp:ListItem>
                                <asp:ListItem Value="21">2021</asp:ListItem>
                                <asp:ListItem Value="22">2022</asp:ListItem>
                                <asp:ListItem Value="23">2023</asp:ListItem>
                                <asp:ListItem Value="24">2024</asp:ListItem>
                                <asp:ListItem Value="25">2025</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="Requiredfieldvalidator1" runat="server" ControlToValidate="ddlMonth" ErrorMessage="<%$ Resources:lang, PaymentMsg1%>" InitialValue="0">*</asp:RequiredFieldValidator>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="<%$ Resources:lang, PaymentMsg1%>" ControlToValidate="ddlYear" InitialValue="0">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right"><%=GetGlobalResourceObject("lang", "CreditCardSecurityNumber")%> :</td>
                        <td>
                            <asp:TextBox ID="txtSecurity" runat="server" CssClass="keyboardInput" MaxLength="3"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Lütfen Güvenlik Numarasýný giriniz." ControlToValidate="txtSecurity">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <div id="posalert" visible="false" runat="server" class="alert">
                                <asp:Label ID="lblPosError" runat="server"></asp:Label>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <label>
                                <aspzone:OneClickButton ID="OneClickButton1" runat="server" CssClass="button" Text="<%$ Resources:lang, MakePayment%>" WaitText="<%$ Resources:lang, Wait%>"></aspzone:OneClickButton>
                                <asp:Button Style="visibility: hidden; display: none" ID="OneClickButton2" runat="server" UseSubmitBehavior="false" Text="<%$ Resources:lang, Wait%>" />
                                <asp:Button Style="visibility: hidden; display: none" ID="btnkuveyt" runat="server" UseSubmitBehavior="false" Text="<%$ Resources:lang, Wait%>" />
                                <asp:Button ID="btniyzico" Text="<%$ Resources:lang, OrderNow%>" CssClass="button" runat="server" />
                                <asp:Button ID="btnKvk" Text="<%$ Resources:lang, OrderNow%>" CssClass="button" runat="server" />
                                <asp:Button ID="btnpaymec" runat="server" Text="<%$ Resources:lang, OrderNow%>" CssClass="button" />
                                <asp:Button ID="btnGenpa" runat="server" Text="<%$ Resources:lang, OrderNow%>" CssClass="button" />
                                <asp:Button ID="btniparaapi" runat="server" Text="IPara Api" CssClass="button" />
                                <asp:HyperLink runat="server" ID="OneClickButton3" CssClass="button" NavigateUrl="javascript:LoadFrame()"><%=GetGlobalResourceObject("lang", "MakePayment")%></asp:HyperLink>
                                <asp:LinkButton ID="popbutton" runat="server" Style="visibility: hidden; display: none"></asp:LinkButton>
                            </label>
                        </td>
                    </tr>
                </table>
            </div>
            <div id="payment-logos" align="right">
                <img src="<% =getThemePath() %>/images/payment_logos.png" border="0" />
            </div>
            <asp:UpdateProgress ID="UpdateProgress1" runat="server" DisplayAfter="5" DynamicLayout="False">
                <ProgressTemplate>
                    <div class="modalPopup">
                        <%=GetGlobalResourceObject("lang", "Loading")%>
                        <img alt="" src="<% =getThemePath() %>/images/loading.gif" align="middle" />
                        <br />
                        <br />
                        <%=GetGlobalResourceObject("lang", "PleaseWait")%>
                    </div>
                </ProgressTemplate>
            </asp:UpdateProgress>
            <asp:Panel ID="Panel1" Style='display: none;' Width="800" Height="600" runat="server" CssClass="modalPopup3d">
                <iframe name="frame3d" id="frame3d" style="height: 550px; width: 750px" src='<%= PostUrl %>'>'  >Tarayýcýnýz sayfa içi çerçeveleri desteklemiyor veya þu anda sayfa içi çerçeveleri göstermek için yapýlandýrýlmamýþ</iframe>
                <div style="text-align: center;">
                    <asp:Button ID="btnOk" CausesValidation="false" runat="server" Style="visibility: hidden" Width="0px" />
                    <asp:Button ID="btnClose" CausesValidation="false" runat="server" Style="visibility: hidden" Width="0px" />
                </div>
                <input runat="server" type="hidden" name="mdstatus" id="mdstatus" />
                <input runat="server" type="hidden" name="mdErrorMsg" id="mdErrorMsg" />
                <input runat="server" type="hidden" name="xid" id="xid" />
                <input runat="server" type="hidden" name="eci" id="eci" />
                <input runat="server" type="hidden" name="cavv" id="cavv" />
                <input runat="server" type="hidden" name="md" id="md" />
                <input runat="server" type="hidden" name="oid" id="oid" />
                <input runat="server" type="hidden" name="txstatus" id="txstatus" />
                <input runat="server" type="hidden" name="maskedpan" id="maskedpan" />
                <input runat="server" type="hidden" name="bankdata" id="bankdata" />
            </asp:Panel>
            <cc1:ModalPopupExtender ID="ModalPopupExtender1" BehaviorID="ModalPopupExtender1" runat="server" TargetControlID="popbutton" PopupControlID="Panel1" BackgroundCssClass="modalBackground3d" OkControlID="btnOk" CancelControlID="btnClose" OnOkScript="ConfirmPayment()" RepositionMode="RepositionOnWindowResizeAndScroll" OnCancelScript="CancelPayment()"></cc1:ModalPopupExtender>
            <asp:Label ID="lbl3dinfo" runat="server"></asp:Label>
            <input runat="server" type="hidden" name="paytypes" id="paytypes" />
            <asp:ValidationSummary ID="ValidationSummary2" runat="server" ShowMessageBox="True" ShowSummary="False"></asp:ValidationSummary>
        </div>
    </div>
</div>
<script type="text/javascript">
    buildKeyboardInputs('<%= getThemePath() %>');
    GiftChecked();
</script>
