<%@ Register TagPrefix="cc1" Namespace="Vladsm.Web.UI.WebControls" Assembly="GroupRadioButton" %>
<%@ Register TagPrefix="aspzone" Namespace="aspZone.WebControls" Assembly="aspZone.WebControls.OneClickButton" %>
<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.orderstep3dbayi" CodeBehind="orderstep3d.ascx.vb" %>
<%@ Register Assembly="proticaretg3" Namespace="ASPNetPortal" TagPrefix="cc2" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<script type="text/javascript" src="<%= getThemePath() %>/js/keyboard.min.js"></script>
<link href="<% =getThemePath() %>/css/keyboard.css" type="text/css" rel="stylesheet" />

<div id="OrderStep3d" class="module">
    <div id="module_content">
        <% If HeaderVisible Then%>
        <div id="module_title">
            <span><span id="module_title_icon"></span>
                <%=ModuleTitle%>
                <% If IsEditable Then%>
                <a href="<%=EditNavigateUrl %>" id="module_title_edit">
                    <%=EditText %></a>
                <% End If%>
            </span>
        </div>
        <% End If%>
        <script type="text/javascript">
            var ParentClientId = '<%= Me.ClientID %>';

            function ValidateCb(source, args) {
                args.IsValid = document.getElementById('<%= ChkStp2.ClientID %>').checked;
            }
            function GiftChecked() {
                var chk1 = document.getElementById('<%=CheckBox1.ClientID%>');
                var chk2 = document.getElementById('<%=CheckBox2.ClientID%>');
                var txt = document.getElementById('<%=txtHediyeNot.ClientID%>');
                var lbl = document.getElementById('<%=lblHediyeNot.ClientID%>');
                var dl = document.getElementById('<%=dlPaket.ClientID%>');

                if (chk2 == null) {
                    if (chk1.checked) {

                        txt.style.display = "block";
                        lbl.style.display = "block";
                    }
                    else {
                        txt.style.display = "none";
                        lbl.style.display = "none";
                    }
                }
                else {
                    if (chk1.checked | chk2.checked) {

                        txt.style.display = "block";
                        lbl.style.display = "block";
                        //lblp.style.display = "block";
                        dl.style.display = "block";
                    }
                    else {
                        txt.style.display = "none";
                        lbl.style.display = "none";
                        //lblp.style.display = "none";
                        dl.style.display = "none";
                    }
                }
            }

            function CheckOnes(spanChk) {
                var oItem = spanChk.children;
                var theBox = (spanChk.type == "radio") ?
                    spanChk : spanChk.children.item[0];

                xState = theBox.unchecked;
                elm = theBox.form.elements;

                for (i = 0; i < elm.length; i++)
                    if (elm[i].type == "radio" &&
elm[i].id != theBox.id && elm[i].name.indexOf("paket") > 0) {
                        elm[i].checked = xState;
                    }
            }

            function CancelPayment() {
                document.getElementById('<%=OneClickButton2.ClientID%>').click();
            }

            function ConfirmPayment() {
                document.getElementById('<%=OneClickButton2.ClientID%>').click();
            }

            function LoadFrame() {
                Page_ClientValidate();
                if (Page_IsValid) {
                    document.body.style.overflow = "hidden";
                    $find('ModalPopupExtender1').show();
                    document.getElementById('<%=xid.ClientID%>').value = "";
                    document.getElementById('<%=eci.ClientID%>').value = "";
                    document.getElementById('<%=cavv.ClientID%>').value = "";
                    document.getElementById('<%=md.ClientID%>').value = "";
                    document.getElementById('<%=txstatus.ClientID%>').value = "";
                    SetSessionData();
                }
                Page_BlockSubmit = false;
            }

            function SetSessionData() {
                //alert("data");
                ASPNetPortal.Service3d.SetSessionData('1', OnRequestSessionComplete);
            }

            function OnRequestSessionComplete(result) {
                //alert("result");
                FillFrame();
            }


            function FillFrame() {
                //alert("frame");
                var ddlyear = document.getElementById('<%=ddlYear.ClientID%>');
                var ddlmonth = document.getElementById('<%=ddlMonth.ClientID%>');
                var locatin = frames['frame3d'].location.href;

                if (locatin.indexOf('3dformpaypal.aspx') > 0) {
                    var OneClickbtn = document.getElementById('<%=btnPaypal.ClientID%>');
                    frames['frame3d'].redirect()

                }
                else if (locatin.indexOf('3dformpayu.aspx') > 0) {
                    var OneClickbtn = document.getElementById('<%=btnPayu.ClientID%>');
                    OneClickbtn.disabled = true;
                    frames['frame3d'].document.forms['Form1'].submit();
                }
                else if (locatin.indexOf('3dformkvk.aspx') > 0) {

                    var OneClickbtn = document.getElementById('<%=btnKvk.ClientID%>');
                    OneClickbtn.disabled = true;
                    frames['frame3d'].document.forms['Form1'].elements['cardname'].value = document.getElementById('<%=txtName.ClientID%>').value;
                    frames['frame3d'].document.forms['Form1'].elements['cardnumber'].value = document.getElementById('<%=txtKKNumber.ClientID%>').value;
                    frames['frame3d'].document.forms['Form1'].elements['cardcvv2'].value = document.getElementById('<%=txtSecurity.ClientID%>').value;
                    frames['frame3d'].document.forms['Form1'].elements['cardexpiredateyear'].value = ddlyear.options[ddlyear.selectedIndex].value;
                    frames['frame3d'].document.forms['Form1'].elements['cardexpiredatemonth'].value = ddlmonth.options[ddlmonth.selectedIndex].value;
                    frames['frame3d'].document.forms['Form1'].submit();
                }
                else if (locatin.indexOf('3dformpaymec.aspx') > 0) {

                    var OneClickbtn = document.getElementById('<%=btnpaymec.ClientID%>');
                    OneClickbtn.disabled = true;
                    frames['frame3d'].document.forms['Form1'].elements['cardname'].value = document.getElementById('<%=txtName.ClientID%>').value;
                    frames['frame3d'].document.forms['Form1'].elements['cardnumber'].value = document.getElementById('<%=txtKKNumber.ClientID%>').value;
                    frames['frame3d'].document.forms['Form1'].elements['cardcvv2'].value = document.getElementById('<%=txtSecurity.ClientID%>').value;
                    frames['frame3d'].document.forms['Form1'].elements['cardexpiredateyear'].value = ddlyear.options[ddlyear.selectedIndex].value;
                    frames['frame3d'].document.forms['Form1'].elements['cardexpiredatemonth'].value = ddlmonth.options[ddlmonth.selectedIndex].value;
                    frames['frame3d'].document.forms['Form1'].submit();
                }
                else if (locatin.indexOf('3dformpayuapi.aspx') > 0) {
                    var OneClickbtn = document.getElementById('<%=btnpayuapi.ClientID%>');
                    OneClickbtn.disabled = true;
                    frames['frame3d'].document.forms['Form1'].elements['cardname'].value = document.getElementById('<%=txtName.ClientID%>').value;
                    frames['frame3d'].document.forms['Form1'].elements['cardnumber'].value = document.getElementById('<%=txtKKNumber.ClientID%>').value;
                    frames['frame3d'].document.forms['Form1'].elements['cardcvv2'].value = document.getElementById('<%=txtSecurity.ClientID%>').value;
                    frames['frame3d'].document.forms['Form1'].elements['cardexpiredateyear'].value = ddlyear.options[ddlyear.selectedIndex].value;
                    frames['frame3d'].document.forms['Form1'].elements['cardexpiredatemonth'].value = ddlmonth.options[ddlmonth.selectedIndex].value;
                    frames['frame3d'].document.forms['Form1'].submit();
                }
                else if (locatin.indexOf('3dformipara.aspx') > 0) {
                    var OneClickbtn = document.getElementById('<%=btnPayIpara.ClientID%>');
                    OneClickbtn.disabled = true;
                    frames['frame3d'].document.forms['Form1'].submit();
                }
                else if (locatin.indexOf('3dformvakifbank.aspx') > 0) {

                    var OneClickbtn = document.getElementById('<%=OneClickButton3.ClientID%>');
                    OneClickbtn.innerHTML = '<%=GetGlobalResourceObject("lang", "PleaseWait")%>';
                    OneClickbtn.disabled = true;
                    frames['frame3d'].document.forms['Form1'].elements['kkno'].value = document.getElementById('<%=txtKKNumber.ClientID%>').value;
                    frames['frame3d'].document.forms['Form1'].elements['gectar'].value = (ddlyear.options[ddlyear.selectedIndex].value.substring(0, 2) + ddlmonth.options[ddlmonth.selectedIndex].value);
                    //sub    
                    frames['frame3d'].createHash();
                    frames['frame3d'].document.forms['Form1'].submit();
                }
                else if (locatin.indexOf('3dformyk.aspx') > 0) {


                    var OneClickbtn = document.getElementById('<%=OneClickButton3.ClientID%>');
                    OneClickbtn.innerHTML = '<%=GetGlobalResourceObject("lang", "PleaseWait")%>';
                    OneClickbtn.disabled = true;
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
                else if (locatin.indexOf('3dformbankasya.aspx') > 0) {


                    var OneClickbtn = document.getElementById('<%=OneClickButton3.ClientID%>');
                    OneClickbtn.innerHTML = '<%=GetGlobalResourceObject("lang", "PleaseWait")%>';
                    OneClickbtn.disabled = true;
                    frames['frame3d'].document.forms['Form1'].elements['pan'].value = document.getElementById('<%=txtKKNumber.ClientID%>').value;
                    frames['frame3d'].document.forms['Form1'].elements['cv2'].value = document.getElementById('<%=txtSecurity.ClientID%>').value;
                    frames['frame3d'].document.forms['Form1'].elements['Ecom_Payment_Card_ExpDate_Year'].value = ddlyear.options[ddlyear.selectedIndex].value.substring(0, 2);
                    frames['frame3d'].document.forms['Form1'].elements['Ecom_Payment_Card_ExpDate_Month'].value = ddlmonth.options[ddlmonth.selectedIndex].value;
                    //visa-master
                    if (document.getElementById('<%=txtKKNumber.ClientID%>').value.startsWith('5'))
                    { frames['frame3d'].document.forms['Form1'].elements['cardType'].selectedIndex = 1; }
                    else
                    { frames['frame3d'].document.forms['Form1'].elements['cardType'].selectedIndex = 0; }
                    //sub
                    frames['frame3d'].GetInnovaDataCs()
                }
                else if (locatin.indexOf('3dformbkm.aspx') > 0) {

                    //kk
                    var OneClickbtn = document.getElementById('<%=OneClickButton3.ClientID%>');
                    OneClickbtn.innerHTML = '<%=GetGlobalResourceObject("lang", "PleaseWait")%>';
                    OneClickbtn.disabled = true;
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
                else if (locatin.indexOf('3dformprotahsilat.aspx') > 0) {

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
                else if (locatin.indexOf('3dformgenpa.aspx') > 0) {
                    //kk


                    var OneClickbtn = document.getElementById('<%=btnGenpa.ClientID%>');
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

                    var OneClickbtn = document.getElementById('<%=btniparaapi.ClientID%>');
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

                    var OneClickbtn = document.getElementById('<%=btniyzico.ClientID%>');
                    OneClickbtn.innerHTML = '<%=GetGlobalResourceObject("lang", "PleaseWait")%>';
                    OneClickbtn.disabled = true;
                    //sub        
                    frames['frame3d'].document.forms['Form1'].submit();
                }
                else if (locatin.indexOf('3dformtesan.aspx') > 0) {


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
                    { frames['frame3d'].document.forms['Form2'].elements['CardType'].selectedIndex = 0; }
                    frames['frame3d'].document.forms['Form2'].submit();
                }
                else if (locatin.indexOf('3dformkuveyt.aspx') > 0) {

                    var OneClickbtn = document.getElementById('<%=btnkuveyt.ClientID()%>');
                    OneClickbtn.innerHTML = '<%=GetGlobalResourceObject("lang", "PleaseWait")%>';
                    OneClickbtn.disabled = true;
                    // frames['frame3d'].document.forms['Form2'].submit();
                }
                else if (locatin.indexOf('3dformziraat.aspx') > 0) {

                    var OneClickbtn = document.getElementById('<%=btnziraat.ClientID()%>');
                    OneClickbtn.innerHTML = '<%=GetGlobalResourceObject("lang", "PleaseWait")%>';
                    OneClickbtn.disabled = true;

                }
                else {


                    var OneClickbtn = document.getElementById('<%=OneClickButton3.ClientID%>');
                    OneClickbtn.innerHTML = '<%=GetGlobalResourceObject("lang", "PleaseWait")%>';
                    OneClickbtn.disabled = true;
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
//
//
//
        </script>
        <div id="mainPanel" runat="server">
            <%--<form id="frm">--%>
            <div class="module_box">
                <label class="subtitle">
                    <%=GetGlobalResourceObject("lang", "Products")%>
                </label>
                <div id="stokalert" visible="false" runat="server" class="alert">
                    <asp:Label ID="label333" runat="Server">Seçmiş olduğunuz ürünlerden bir veya birkaçı stoklarımızda tükenmiş olduğundan dolayı sistem tarafından sepetinizden çıkartılmıştır.</asp:Label>
                </div>
                <asp:Label ID="lblpayu" runat="server" />
                <asp:DataGrid ID="MyList" runat="server" Width="100%" AutoGenerateColumns="False"
                    DataKeyField="Qty" ShowFooter="False" CellPadding="4" CssClass="datalist" HeaderStyle-CssClass="title"
                    GridLines="none" ItemStyle-CssClass="row">
                    <Columns>
                        <asp:TemplateColumn Visible="False">
                            <ItemTemplate>
                                <asp:Label ID="ProductId" runat="server" Visible="False" Text='<%# DataBinder.Eval(Container.DataItem, "ProductId") %>'>
                                </asp:Label>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:BoundColumn DataField="ProductCode" HeaderText="<%$ Resources:lang, ProductCode%>"
                            Visible="False"></asp:BoundColumn>
                        <asp:TemplateColumn HeaderText="<%$ Resources:lang, ProductName%>">
                            <ItemTemplate>
                                <asp:Label ID="lblProductName" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "ProductName")  %>'></asp:Label>
                                <asp:Label ID="lblDescription" runat="server" Text='<%# container.dataitem("Description").ToString.Replace(BaseUrl & "/Uploads/orderpictures/", "")  %>'></asp:Label>
                                <asp:HyperLink ID="Hyperlink1" Visible='<%# iif((container.dataitem("ProductId")= tmpOrder.Campain.ProductId and tmpOrder.Campain.DiscountType=2) or (tmpOrder.Campain.DiscountType>-1 and tmpOrder.Campain.DiscountType<2),true,false)%>'
                                    runat="server" NavigateUrl='<%# "Javascript:var PopUpWin = window.open(""../store/campaininfo.aspx?IND=" & tmpOrder.Campain.CampainId &  ""","""",""width=300,height=300,scrollbars=1,toolbar=0,status=1,resizable=1"")" %> '>
                                </asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn HeaderText="<%$ Resources:lang, Point%>">
                            <ItemTemplate>
                                <itemstyle wrap="False"></itemstyle>
                                <asp:Label ID="lblPuan" runat="server"> </asp:Label>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn HeaderText="<%$ Resources:lang, ProductMark%>" Visible="False">
                            <ItemTemplate>
                                <asp:Label ID="lblMark" runat="server" Visible="False" Text='<%# DataBinder.Eval(Container.DataItem, "MarkName") %>'>
                                </asp:Label>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn HeaderText="<%$ Resources:lang, Quantity%>">
                            <HeaderStyle HorizontalAlign="Right"></HeaderStyle>
                            <ItemStyle HorizontalAlign="Right"></ItemStyle>
                            <ItemTemplate>
                                <asp:Label ID="Quantity" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "Qty") & " " & DataBinder.Eval(Container.DataItem, "BirimAdi") %>'>
                                </asp:Label>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn Visible="false" HeaderText="D&#246;viz Tutar">
                            <HeaderStyle HorizontalAlign="Right"></HeaderStyle>
                            <ItemStyle HorizontalAlign="Right"></ItemStyle>
                            <ItemTemplate>
                                <asp:Label ID="lblDoviz" runat="server" Text='<%# CurrencySymbolLeft & " " &  FormatCurDoviz(CalcIndirim(CalcIndirim(CalcIndirim(container.dataitem("BayiFiyati")+ container.dataitem("ValueAdd"),tmpOrder.Campain.DiscountAmount,tmpOrder.Campain.DiscountType,ToplamTutar,container.dataitem("qty"),ProductLines,tmpOrder.Campain.ProductDiscountType,tmpOrder.Campain.ProductDiscountAmount,iif((container.dataitem("ProductId")= tmpOrder.Campain.ProductId and tmpOrder.Campain.DiscountType=2),true,false)) ,container.dataitem("Indirim")),UserIndirim) )  & " " & CurrencySymbolRight %>'>
                                </asp:Label>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn Visible="False" HeaderText="Birim Fiyat(KDV)">
                            <HeaderStyle HorizontalAlign="Right"></HeaderStyle>
                            <ItemStyle Wrap="False" HorizontalAlign="Right"></ItemStyle>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# FormatCurTL(CalcKdvDahil(CalcRate(Container.DataItem("BayiFiyati")+ container.dataitem("ValueAdd"),container.dataitem("Rate")),container.dataitem("KdvRate")))  %>'>
                                </asp:Label>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn HeaderText="<%$ Resources:lang, QtyPrice%>">
                            <HeaderStyle HorizontalAlign="Right"></HeaderStyle>
                            <ItemStyle Wrap="False" HorizontalAlign="Right"></ItemStyle>
                            <ItemTemplate>
                                <asp:Label runat="server" Text='<%# CurrencySymbolLeft & " " & formatCurDoviz(CalcRate(CalcIndirim(CalcIndirim(CalcIndirim(container.dataitem("BayiFiyati")+ container.dataitem("ValueAdd"),tmpOrder.Campain.DiscountAmount,tmpOrder.Campain.DiscountType,ToplamTutar,container.dataitem("qty"),ProductLines,tmpOrder.Campain.ProductDiscountType,tmpOrder.Campain.ProductDiscountAmount,iif((container.dataitem("ProductId")= tmpOrder.Campain.ProductId and tmpOrder.Campain.DiscountType=2),true,false)) ,container.dataitem("Indirim")),UserIndirim),container.dataitem("Rate")/ CurrencyRate))  & " " & CurrencySymbolRight %>'
                                    ID="BirimFiyat">
                                </asp:Label>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn Visible="False" HeaderText="İndirim(KDV)">
                            <HeaderStyle HorizontalAlign="Right"></HeaderStyle>
                            <ItemStyle Wrap="False" HorizontalAlign="Right"></ItemStyle>
                            <ItemTemplate>
                                <asp:Label ID="Label13" runat="server" Text='<%# CurrencySymbolLeft & " " & formatCurDoviz(CalcKdvDahil(CalcRate(Container.DataItem("BayiFiyati")+ container.dataitem("ValueAdd"),container.dataitem("Rate")),container.dataitem("KdvRate"))-CalcKdvDahil(CalcIndirim(CalcIndirim(CalcRate(container.dataitem("BayiFiyati") , container.dataitem("Rate")/ CurrencyRate),container.dataitem("Indirim")),UserIndirim),container.dataitem("KdvRate")))  & " " & CurrencySymbolRight %>'>
                                </asp:Label>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn Visible="False" HeaderText="İndirim">
                            <HeaderStyle HorizontalAlign="Right"></HeaderStyle>
                            <ItemStyle Wrap="False" HorizontalAlign="Right"></ItemStyle>
                            <ItemTemplate>
                                <asp:Label ID="indirim" runat="server" Text='<%# CurrencySymbolLeft & " " & formatCurDoviz(CalcRate(Container.DataItem("BayiFiyati")+ container.dataitem("ValueAdd"),container.dataitem("Rate"))- CalcIndirim(CalcIndirim(CalcRate(container.dataitem("BayiFiyati") , container.dataitem("Rate")/ CurrencyRate),container.dataitem("Indirim")),UserIndirim))  & " " & CurrencySymbolRight %>'>
                                </asp:Label>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:BoundColumn DataField="KdvRate" HeaderText="<%$ Resources:lang, Tax%>" DataFormatString="%{0:0}">
                            <HeaderStyle Wrap="False" HorizontalAlign="Right"></HeaderStyle>
                            <ItemStyle Wrap="False" HorizontalAlign="Right"></ItemStyle>
                        </asp:BoundColumn>
                        <asp:TemplateColumn Visible="False" HeaderText="Tutar(KDV)">
                            <HeaderStyle HorizontalAlign="Right"></HeaderStyle>
                            <ItemStyle Wrap="False" HorizontalAlign="Right"></ItemStyle>
                            <ItemTemplate>
                                <asp:Label ID="Label14" runat="server" Text='<%# CurrencySymbolLeft & " " & formatCurDoviz(CalcKdvDahil(CalcIndirim(CalcIndirim(CalcRate(container.dataitem("BayiFiyati")+ container.dataitem("ValueAdd") , container.dataitem("Rate")/ CurrencyRate),container.dataitem("Indirim")),UserIndirim),container.dataitem("KdvRate"))* container.dataitem("qty"))  & " " & CurrencySymbolRight %>'>
                                </asp:Label>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn Visible="False" HeaderText="Ağırlık">
                            <HeaderStyle HorizontalAlign="Right"></HeaderStyle>
                            <ItemStyle Wrap="False" HorizontalAlign="Right"></ItemStyle>
                            <ItemTemplate>
                                <asp:Label runat="server" Text='<%# FormatNumberEx((container.dataitem("Agirlik")* container.dataitem("qty"))," gr.") %>'
                                    ID="Label2xx" NAME="Label2xx">
                                </asp:Label>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn Visible="False" HeaderText="Hacim">
                            <HeaderStyle HorizontalAlign="Right"></HeaderStyle>
                            <ItemStyle Wrap="False" HorizontalAlign="Right"></ItemStyle>
                            <ItemTemplate>
                                <asp:Label runat="server" Text='<%# FormatNumberEx((container.dataitem("Hacim")* container.dataitem("qty"))," cm³") %>'
                                    ID="Label15" NAME="Label5">
                                </asp:Label>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn HeaderText="<%$ Resources:lang, PiceWithoutTax%>">
                            <HeaderStyle HorizontalAlign="Right"></HeaderStyle>
                            <ItemStyle Wrap="False" HorizontalAlign="Right"></ItemStyle>
                            <ItemTemplate>
                                <asp:Label ID="Tutar" runat="server" Text='<%# CurrencySymbolLeft & " " & formatCurDoviz(CalcIndirim(CalcIndirim(CalcIndirim(CalcRate(container.dataitem("BayiFiyati")+ container.dataitem("ValueAdd") , container.dataitem("Rate")/ CurrencyRate),tmpOrder.Campain.DiscountAmount,tmpOrder.Campain.DiscountType,ToplamTutar,container.dataitem("qty"),ProductLines,tmpOrder.Campain.ProductDiscountType,tmpOrder.Campain.ProductDiscountAmount,iif((container.dataitem("ProductId")= tmpOrder.Campain.ProductId and tmpOrder.Campain.DiscountType=2),true,false)),container.dataitem("Indirim")),UserIndirim) * container.dataitem("qty"))  & " " & CurrencySymbolRight %>'>
                                </asp:Label>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn Visible="False">
                            <ItemTemplate>
                                <asp:Label ID="lblKalan" runat="server" Visible="False" Text='<%# DataBinder.Eval(Container.DataItem, "Kalan") %>'>
                                </asp:Label>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn Visible="False" HeaderText="Tedarikçi">
                            <ItemTemplate>
                                <asp:Label ID="lbltedarikci" runat="server" Text='<%# Container.DataItem("Provider") %>'>
                                </asp:Label>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn Visible="false" HeaderText="Barkod">
                            <ItemTemplate>
                                <asp:Label ID="lblBarcode" runat="server" Text='<%# Container.DataItem("Barcode") %>'>
                                </asp:Label>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn Visible="false" HeaderText="Tekstil Barkod">
                            <ItemTemplate>
                                <asp:Label ID="lblSizeBarcode" runat="server" Text='<%# Container.DataItem("ProductSizeBarcode") %>'>
                                </asp:Label>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                    </Columns>
                </asp:DataGrid>
                <table cellspacing="0" cellpadding="2" border="0" style="float: right">
                    <tr style="display: none">
                        <td align="right">
                            <asp:Label ID="Label11" runat="server">Toplam Desi :</asp:Label>
                        </td>
                        <td align="right">
                            <asp:Label ID="lblToplamDesi" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr style="display: none">
                        <td align="right">
                            <asp:Label ID="lblAgirlik" runat="server" Visible="False">Toplam Ağırlık :</asp:Label>
                        </td>
                        <td align="right">
                            <asp:Label ID="lblToplamAgirlik" runat="server" Visible="False"></asp:Label>
                        </td>
                    </tr>
                    <tr style="display: none">
                        <td align="right">
                            <asp:Label ID="lblHacim" runat="server" Visible="False">Toplam Hacim :</asp:Label>
                        </td>
                        <td align="right">
                            <asp:Label ID="lblToplamHacim" runat="server" Visible="False"></asp:Label>
                        </td>
                    </tr>
                    <tr style="display: none">
                        <td align="right">
                            <asp:Label ID="lblToplamPuan" runat="server" Visible="False">Toplam Puan :</asp:Label>
                        </td>
                        <td align="right">
                            <asp:Label ID="lblToplamPuanText" runat="server" Visible="False"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="lblindirim" runat="server" Visible="False"><%=GetGlobalResourceObject("lang", "TotalDiscount")%> :</asp:Label>
                        </td>
                        <td align="right">
                            <asp:Label ID="lblToplamIndirim" runat="server" Visible="False"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Label ID="lblSiparisSeperator2" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="Label4" runat="server"><%=GetGlobalResourceObject("lang", "TotalProductsPrice")%> :</asp:Label>
                        </td>
                        <td align="right">
                            <asp:Label ID="lblToplamTutar" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="Label6" runat="server"><%=GetGlobalResourceObject("lang", "TotalTax")%> :</asp:Label>
                        </td>
                        <td align="right">
                            <asp:Label ID="lblToplamKdv" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="lblAraToplam" runat="server"><%=GetGlobalResourceObject("lang", "SubTotal")%> :</asp:Label>
                        </td>
                        <td align="right">
                            <asp:Label ID="lblToplamAraToplam" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="lblCekTutari" runat="server" Visible="False"><%=GetGlobalResourceObject("lang", "CouponDiscount")%> :</asp:Label>
                        </td>
                        <td align="right">
                            <asp:Label ID="lblToplamCekTutari" runat="server" Visible="False"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="Label7" runat="server"><%=GetGlobalResourceObject("lang", "TotalToPay")%> :</asp:Label>
                        </td>
                        <td align="right">
                            <asp:Label ID="lblKdvDahilToplam" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="lblKargoSec" runat="server"><%=GetGlobalResourceObject("lang", "SelectCargo")%> :</asp:Label>
                            <asp:DropDownList ID="ddlCargo" runat="server" AutoPostBack="True">
                            </asp:DropDownList>
                            <asp:Label ID="lblKargoBedeli" runat="server"><%=GetGlobalResourceObject("lang", "ShippingPrice")%> :</asp:Label>
                        </td>
                        <td align="right">
                            <asp:Label ID="lblKargoToplam" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Label ID="lblSiparisSeperator4" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="lblKargoToplamBedel" runat="server"><%=GetGlobalResourceObject("lang", "TotalIncludeCargo")%> :</asp:Label>
                        </td>
                        <td align="right">
                            <asp:Label ID="lblKargoDahilToplam" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Label ID="lblSiparisSeperator5" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="lblHavale" runat="server" Font-Bold="True"><%=GetGlobalResourceObject("lang", "TotalWithTransfer")%> :</asp:Label>
                        </td>
                        <td align="right">
                            <asp:Label ID="lblKargoDahilHavale" runat="server" Font-Bold="True"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="lblKKTek" runat="server" Font-Bold="True"><%=GetGlobalResourceObject("lang", "TotalWithCreditCart")%> :</asp:Label>
                        </td>
                        <td align="right">
                            <asp:Label ID="lblKdvDahilKK" runat="server" Font-Bold="True"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="lblOdemeTuru" runat="server" Visible="False"></asp:Label>
                        </td>
                        <td align="right">
                            <asp:Label ID="lblBankaToplamTutar" runat="server" Visible="False"></asp:Label>
                        </td>
                    </tr>
                </table>
                <div class="clear">
                </div>
            </div>
            <div class="module_box">
                <div id="pnlKreditKartBanner" runat="server">
                    <div id="Div1">
                        <span><span id="Span1"></span>
                            <cc1:GroupRadioButton ID="rbKK" runat="server" AutoPostBack="True" CommandName="0"
                                CommandArgument="0" GroupName="paytype"></cc1:GroupRadioButton>
                            <asp:Label ID="lblKK" runat="server"><%=GetGlobalResourceObject("lang", "CreditCardPayment")%></asp:Label>
                        </span>
                    </div>
                </div>
                <div id="pnlKreditCart" runat="server">
                    <div id="posalert" visible="false" runat="server" class="alert">
                        <asp:Label ID="lblPosError" runat="server"></asp:Label>
                    </div>
                    <table>
                        <tr>
                            <td>
                                <asp:Label ID="Label35" runat="server"><%=GetGlobalResourceObject("lang", "CreditCardName")%></asp:Label>
                            </td>
                            <td>:
                                <asp:TextBox ID="txtName" runat="server" CssClass="keyboardInput"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtName"
                                    ErrorMessage="Lütfen Kart Üzerindeki İsimi giriniz.">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label36" runat="server"><%=GetGlobalResourceObject("lang", "CreditCardNumber")%></asp:Label>
                            </td>
                            <td>:
                                <asp:TextBox ID="txtKKNumber" runat="server" CssClass="keyboardInput" MaxLength="16"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtKKNumber"
                                    ErrorMessage="Lütfen Kart Numarasını giriniz.">*</asp:RequiredFieldValidator>
                                <asp:CheckBox ID="chkVada" runat="server" Visible="False"></asp:CheckBox>
                                <asp:Label ID="chkVadaLabel" Visible="False" runat="server" Text="+3 Joker Vada Kullanmak istermisiniz?"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label38" runat="server" Width="128px"><%=GetGlobalResourceObject("lang", "CreditCardExDate")%></asp:Label>
                            </td>
                            <td>:
                                <asp:DropDownList ID="ddlMonth" runat="server">
                                    <asp:ListItem Value="--Se&#231;in--" Selected="True" Text="<%$ Resources:lang, SelectValue%>"></asp:ListItem>
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
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="Requiredfieldvalidator1" runat="server" Font-Size="X-Small"
                                    ControlToValidate="ddlMonth" ErrorMessage="Lütfen Son Kullanma Ayını giriniz."
                                    InitialValue="--Seçin--" Display="None">*</asp:RequiredFieldValidator>
                                <asp:Label ID="Label32" runat="server">/</asp:Label>
                                <asp:DropDownList ID="ddlYear" runat="server">
                                    <asp:ListItem Value="--Se&#231;in--" Selected="True" Text="<%$ Resources:lang, SelectValue%>"></asp:ListItem>
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
                                    <asp:ListItem Value="26">2026</asp:ListItem>
                                    <asp:ListItem Value="27">2027</asp:ListItem>
                                    <asp:ListItem Value="28">2028</asp:ListItem>
                                    <asp:ListItem Value="29">2029</asp:ListItem>
                                    <asp:ListItem Value="30">2030</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Font-Size="X-Small"
                                    ControlToValidate="ddlYear" ErrorMessage="Lütfen Son Kullanma Yılını giriniz."
                                    InitialValue="--Seçin--">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label39" runat="server"><%=GetGlobalResourceObject("lang", "CreditCardSecurityNumber")%></asp:Label>
                            </td>
                            <td>:
                                <asp:TextBox ID="txtSecurity" runat="server" CssClass="keyboardInput" MaxLength="3"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtSecurity"
                                    ErrorMessage="Lütfen Güvenlik Kodunu giriniz.">*</asp:RequiredFieldValidator>
                                <a href='/uploads/documents/cvc2.html' class="lightbox">
                                    <%=GetGlobalResourceObject("lang", "CreditCardSecurityNumberDesc")%>
                                </a>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label8" runat="server"><%=GetGlobalResourceObject("lang", "SelectBank")%></asp:Label>
                            </td>
                            <td>:
                                <asp:DropDownList ID="ddlKreditBanks" runat="server" AutoPostBack="True" onChange="Page_BlockSubmit = false;">
                                    <asp:ListItem Selected="True" Value="-1" Text="<%$ Resources:lang, SelectValue%>"></asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ddlKreditBanks"
                                    ErrorMessage="Lütfen Kredi Kartı Bankasını seçiniz." Font-Size="X-Small" InitialValue="-1">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:Label ID="lblBankDetails" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <table border="0" cellpadding="1" cellspacing="0" id="pnlKKOdemeList" runat="server">
                                    <tr>
                                        <td colspan="3">
                                            <asp:Label ID="Label10" runat="server"><%=GetGlobalResourceObject("lang", "CreditCardPaymentOptions")%></asp:Label>
                                        </td>
                                    </tr>
                                    <tr id="trRbTekcekim" runat="server">
                                        <td>
                                            <cc1:GroupRadioButton ID="rbTekCekim" runat="server" AutoPostBack="True" Checked="True"
                                                CommandName="0" CommandArgument="0" GroupName="TaksitSayisi"></cc1:GroupRadioButton>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label9" runat="server">Tek Çekim</asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="lblTekCekimTutar" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr id="trRbPuan" runat="server">
                                        <td>
                                            <cc1:GroupRadioButton ID="rbPuan" runat="server" AutoPostBack="True" CommandName="0"
                                                CommandArgument="0" GroupName="TaksitSayisi"></cc1:GroupRadioButton>
                                        </td>
                                        <td>
                                            <asp:Label ID="lblPuan" runat="server">Puan Kullan</asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="lblPuanTutar" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr id="pnlTaksitList" runat="server">
                                        <td colspan="3">
                                            <asp:DataGrid ID="dgTaksitList" OnItemCreated="dgTaksitList_ItemCreated" runat="server"
                                                AutoGenerateColumns="False" GridLines="None" CellPadding="2" ShowHeader="False">
                                                <AlternatingItemStyle />
                                                <ItemStyle />
                                                <Columns>
                                                    <asp:TemplateColumn>
                                                        <ItemStyle Width="10px" Wrap="False" />
                                                        <ItemTemplate>
                                                            <cc1:GroupRadioButton ID="TaksitSayisi" runat="server" AutoPostBack="true" CommandArgument='<%# CalcKdvDahil(tmpOrder.Pricess.KargoDahilToplamTutar, DataBinder.Eval(Container, "DataItem.Rate")) %>'
                                                                CommandName="Taksit" GroupName="TaksitSayisi" Text='<%# container.dataitem("Taksit")  %>' />
                                                        </ItemTemplate>
                                                    </asp:TemplateColumn>
                                                    <%-- <asp:TemplateColumn ItemStyle-HorizontalAlign="Right" ItemStyle-Width="15px">
			<ItemTemplate>
			<asp:Label ID="lblrbtaksit" runat="server" CssClass="Global_Normal_Label" Text='<%# container.dataitem("Taksit") %>'></asp:Label>
			</ItemTemplate>
			</asp:TemplateColumn>--%>
                                                    <asp:TemplateColumn ItemStyle-HorizontalAlign="Right" ItemStyle-Width="15px">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lblrbtaksit" runat="server" Text='<%# iif(ChkNullString(container.dataitem("Description"))="",container.dataitem("Taksit"),container.dataitem("Description")) %>'
                                                                Font-Bold='<%# IIf (container.dataitem("Rate") = 0,"TRUE","FALSE")  %>'> </asp:Label>
                                                                
                                                                <asp:Label Visible="false" ID="lblorgtaksit" runat="server" Text='<%# container.dataitem("Taksit") %>'></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateColumn>
                                                    <asp:TemplateColumn ItemStyle-HorizontalAlign="center" ItemStyle-Width="15px">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lblrbtaksit1" runat="server">Taksit</asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateColumn>
                                                    <asp:TemplateColumn ItemStyle-HorizontalAlign="center" ItemStyle-Width="15px">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lblrbtaksit2x" runat="server">x</asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateColumn>
                                                    <asp:TemplateColumn>
                                                        <ItemStyle HorizontalAlign="Right" Wrap="False" />
                                                        <ItemTemplate>
                                                            <%--<asp:Label ID="TaksitTutar" runat="server" Visible="false" Font-Bold='<%# IIf (container.dataitem("Rate") = 0,"TRUE","FALSE")  %>'
			Text='<%# FormatCurTL(CalcKdvDahil(tmpOrder.Pricess.KargoDahilToplamTutar, DataBinder.Eval(Container, "DataItem.Rate"))/container.dataitem("Taksit")) %>'> </asp:Label>--%>
                                                            <asp:Label ID="TaksitTutar" runat="server" Font-Bold='<%# IIf (container.dataitem("Rate") = 0,"TRUE","FALSE")  %>'> </asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateColumn>
                                                    <asp:TemplateColumn ItemStyle-HorizontalAlign="center" ItemStyle-Width="20px">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lblrbtaksit2" runat="server">=</asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateColumn>
                                                    <asp:TemplateColumn>
                                                        <ItemStyle HorizontalAlign="Right" Wrap="False" />
                                                        <ItemTemplate>
                                                            <%--<asp:Label ID="TaksitToplam" runat="server" Visible="false" Font-Bold='<%# IIf (container.dataitem("Rate") = 0,"TRUE","FALSE")  %>'
			Text='<%# FormatCurTL(CalcKdvDahil(tmpOrder.Pricess.KargoDahilToplamTutar, DataBinder.Eval(Container, "DataItem.Rate"))) %>'> </asp:Label>--%>
                                                            <asp:Label runat="server" ID="lblRate" Text='<%# container.dataitem("Rate") %>' Visible="false"></asp:Label>
                                                            <asp:Label ID="TaksitToplam" runat="server" Font-Bold='<%# IIf (container.dataitem("Rate") = 0,"TRUE","FALSE")  %>'> </asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateColumn>
                                                </Columns>
                                            </asp:DataGrid>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
            <div class="module_box" style='display: <%= iif(pnlHavaleBanner.visible,"","none") %>'>
                <div id="pnlHavaleBanner" runat="server">
                    <div id="Div2">
                        <span><span id="Span2"></span>
                            <cc1:GroupRadioButton ID="rbTR" runat="server" AutoPostBack="True" CommandName="0"
                                CommandArgument="0" GroupName="paytype"></cc1:GroupRadioButton>
                            <asp:Label ID="lblOdemeHavaleile" runat="server"><%=GetGlobalResourceObject("lang", "PayBankTransfer")%></asp:Label>
                        </span>
                    </div>
                </div>
                <div id="pnlHavale" runat="server">
                    <label>
                        <asp:Label ID="lblBankTransfer" runat="server"></asp:Label></label>
                    <label>
                        <asp:Label ID="lblBankaSec" runat="server"><%=GetGlobalResourceObject("lang", "SelectBank")%> :</asp:Label></label>
                    <asp:DropDownList ID="ddlTrasferBanks" runat="server">
                        <asp:ListItem Selected="True" Value="0" Text="<%$ Resources:lang, SelectValue%>"></asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rqRegister109" runat="server" ControlToValidate="ddlTrasferBanks"
                        ErrorMessage="Lütfen Havale Yapacağınız Bankayı Seçiniz." Font-Size="X-Small"
                        InitialValue="0">*</asp:RequiredFieldValidator>
                    <label>
                        <asp:Label ID="lblTransferInfo" runat="server"></asp:Label></label>
                </div>
            </div>
            
            <div class="moduleCol1" style='display: <%= iif(ConfigurationManager.AppSettings("IyzicoActive")="True","","none") %>'>
                    <div id="pnliyzicobanner" class="paymentContent" runat="server">
                        <div id="Div8">
                            <label>
                                <span id="Span8"></span>
                                <cc1:GroupRadioButton ID="rbiyzico" runat="server" AutoPostBack="True" CommandName="0" CommandArgument="0" GroupName="paytype"></cc1:GroupRadioButton>
                                <span class="iyzicologo">
                                    <img src="<% =getThemePath() %>/images/bankalar/logo_iyzico.png" width="50px" align="absmiddle" />
                                    <asp:Label ID="Label3" runat="server">  &nbsp; Iyzico Yle Ödeme</asp:Label>
                                </span>
                            </label>
                        </div>
                    </div>
                    <div id="pnliyzico" runat="server">
                        <label>
                            <asp:Label ID="lbliyzico" runat="server"></asp:Label></label>
                    </div>
                </div>
            
            <div class="module_box" style='display: <%= iif(ConfigurationManager.AppSettings("IParaActive")="True","","none") %>'>
                <div id="pnlIparaBanner" runat="server">
                    <div id="Div3">
                        <span><span id="Span3"></span>
                            <cc1:GroupRadioButton ID="rbIp" runat="server" AutoPostBack="True" CommandName="0"
                                CommandArgument="0" GroupName="paytype"></cc1:GroupRadioButton>
                            <span class="iparalogo">
                                <img src="<% =getThemePath() %>/images/bankalar/iParaTxtSmall.jpg" align="absmiddle" />
                                <asp:Label ID="lblOdemeIpara" runat="server"><%=GetGlobalResourceObject("lang", "PayIpara")%></asp:Label>
                            </span></span>
                    </div>
                </div>
                <div id="pnlIpara" runat="server">
                    <label>
                        <asp:Label ID="lblIparaTransfer" runat="server"></asp:Label></label>
                </div>
            </div>
            <div class="module_box" style='display: <%= iif(ConfigurationManager.AppSettings("PaypalActive")="True","","none") %>'>
                <div id="pnlPaypalBanner" runat="server">
                    <div id="Div4">
                        <span><span id="Span4"></span>
                            <cc1:GroupRadioButton ID="rbPaypal" runat="server" AutoPostBack="True" CommandName="0"
                                CommandArgument="0" GroupName="paytype"></cc1:GroupRadioButton>
                            <span class="paypallogo">
                                <img src="<% =getThemePath() %>/images/bankalar/logo_paypal.jpg" align="absmiddle"
                                    height="35px" />
                                <asp:Label ID="lblOdemePaypal" runat="server">    İle Ödeme</asp:Label>
                            </span></span>
                    </div>
                </div>
                <div id="pnlPaypal" runat="server">
                    <label>
                        <asp:Label ID="lblPaypalTransfer" runat="server"></asp:Label></label>
                </div>
            </div>
            <div class="module_box" style='display: <%= iif(ConfigurationManager.AppSettings("PayUActive")="True","","none") %>'>
                <div id="pnlPayUBanner" runat="server">
                    <div id="Div5">
                        <span><span id="Span5"></span>
                            <cc1:GroupRadioButton ID="rbPayU" runat="server" AutoPostBack="True" CommandName="0"
                                CommandArgument="0" GroupName="paytype"></cc1:GroupRadioButton>
                            <span class="payulogo">
                                <img src="<% =getThemePath() %>/images/bankalar/logo_payu.jpg" align="absmiddle"
                                    height="35px" />
                                <asp:Label ID="lblOdemePayU" runat="server">    İle Ödeme</asp:Label>
                            </span></span>
                    </div>
                </div>
                <div id="pnlPayU" runat="server">
                    <label>
                        <asp:Label ID="lblPayUTransfer" runat="server"></asp:Label></label>
                </div>
            </div>
            
            <div class="module_box" style='display: <%= iif(pnlteslimattaOdeBanner.visible,"","none") %>'>
                <div id="pnlteslimattaOdeBanner" runat="server">
                    <div id="Div7">
                        <span><span id="Span7"></span>
                            <cc1:GroupRadioButton ID="rbTO" runat="server" AutoPostBack="True" CommandName="0"
                                CommandArgument="0" GroupName="paytype"></cc1:GroupRadioButton>
                            <asp:Label ID="lblTO" runat="server">Teslimatta Ödeme</asp:Label>
                        </span>
                    </div>
                </div>
                <div id="pnlteslimattaOde" runat="server">
                    <label>
                        <asp:Label ID="lblTeslimattaOde" runat="server"></asp:Label></label>
                    <label>
                        <asp:Label ID="lblTeslimattaOdeInfo" runat="server"></asp:Label></label>
                </div>
            </div>

            <div id="pnlPaytypes" runat="server">
            </div>
            <div class="module_box">
                <div id="tblHediyeNotu" runat="server">
                    <label class="subtitle">
                        <%=GetGlobalResourceObject("lang", "GiftNote")%>
                    </label>
                    <table cellpadding="0" cellspacing="0" border="0">
                        <tr>
                            <td valign="top">
                                <asp:Label ID="Label21" runat="server"><%=GetGlobalResourceObject("lang", "AddGiftNote")%> :</asp:Label>
                                <asp:CheckBox ID="CheckBox1" onclick="GiftChecked();" runat="server"></asp:CheckBox>
                                <asp:Label ID="lblHediyeNot" Style="display: none" runat="server"><%=GetGlobalResourceObject("lang", "GiftNote")%> :</asp:Label>
                                <asp:TextBox ID="txtHediyeNot" Style="display: none" runat="server" MaxLength="100"
                                    Height="80px" TextMode="MultiLine"></asp:TextBox>
                            </td>
                            <td valign="top">
                                <asp:Label ID="lblPaket" runat="server"><%=GetGlobalResourceObject("lang", "GiftPakage")%>0:</asp:Label>
                                <asp:CheckBox ID="Checkbox2" onclick="GiftChecked();" runat="server"></asp:CheckBox>
                                <asp:DataList ID="dlPaket" runat="server" RepeatDirection="Horizontal" RepeatColumns="6"
                                    ItemStyle-HorizontalAlign="Center">
                                    <ItemTemplate>
                                        <p>
                                            <asp:RadioButton onclick="CheckOnes(this);" ID="RadioButton2" runat="server" GroupName="paket"></asp:RadioButton>
                                        </p>
                                        <asp:Image ID="Image1" runat="server" Width="70" Height="70" ImageUrl='<%# "~/uploads/ProductPackages/" & container.dataitem("Path") %>'></asp:Image>
                                    </ItemTemplate>
                                </asp:DataList>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
            <div class="module_box">
                <div id="pnlContract" runat="server" align="center">
                    <table width="100%" cellspacing="0" cellpadding="4" border="0">
                        <tr>
                            <td>
                                <div id="divcontractform" style="display: none;">
                                    <div id="contractform1">
                                        <asp:Literal ID="litcontractform" runat="server"></asp:Literal>
                                    </div>
                                </div>
                                <div id="divcontract" style="display: none;">
                                    <div id="contractform2">
                                        <asp:Literal ID="litcontract" runat="server"></asp:Literal>
                                    </div>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>
                                    <%=GetGlobalResourceObject("lang", "ContractInfo1")%><a class="lightbox2" href="#contractform1">
                                        <%=GetGlobalResourceObject("lang", "ContractInfoClick")%></a></label>
                                <label>
                                    <%=GetGlobalResourceObject("lang", "ContractInfo2")%><a class="lightbox2" href="#contractform2">
                                        <%=GetGlobalResourceObject("lang", "ContractInfoClick")%></a></label>
                                <label>
                                    <asp:CheckBox ID="ChkStp2" runat="server"></asp:CheckBox>
                                    <%=GetGlobalResourceObject("lang", "ContractCheck")%>
                                </label>
                                <asp:CustomValidator ID="valTandCs" runat="server" ErrorMessage="Lütfen sözleşmeyi kabul ediniz."
                                    ClientValidationFunction="ValidateCb"> * </asp:CustomValidator>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
            <div id="posalert2" visible="false" runat="server" class="alert">
                <asp:Label ID="lblPosError2" runat="server"></asp:Label>
            </div>
            <div id="stokalert2" visible="false" runat="server" class="alert">
                <asp:Label ID="label1" runat="Server">Seçmiş olduğunuz ürünlerden bir veya birkaçı stoklarımızda tükenmiş olduğundan dolayı sistem tarafından sepetinizden çıkartılmıştır.</asp:Label>
            </div>
            <div style="text-align: center">
                        <asp:HyperLink runat="server" ID="OneClickButton3" Text="<%$ Resources:lang, OrderNow%>" NavigateUrl="javascript:LoadFrame()" CssClass="button"></asp:HyperLink>
                        <asp:HyperLink runat="server" ID="btnPayIpara" NavigateUrl="javascript:LoadFrame()" CssClass="button">İpara İle Öde</asp:HyperLink>
                        <asp:HyperLink runat="server" ID="btnPaypal" NavigateUrl="javascript:LoadFrame()" CssClass="button">Paypal İle Öde</asp:HyperLink>
                        <asp:HyperLink runat="server" ID="btnPayU" NavigateUrl="javascript:LoadFrame()" CssClass="button">PayU ile Öde</asp:HyperLink>
                        <asp:Button ID="btniyzico" runat="server" Text="Iyzico İle Öde" CssClass="button" />
                        <aspzone:OneClickButton ID="OneClickButton1" runat="server" CssClass="button" Text="<%$ Resources:lang, OrderNow%>" WaitText="<%$ Resources:lang, Wait%>"></aspzone:OneClickButton>
                        <asp:Button ID="OneClickButton2" runat="server" Style="visibility: hidden;" Text="<%$ Resources:lang, OrderNow%>" UseSubmitBehavior="false" />
                        <asp:LinkButton ID="popbutton" runat="server" Style="visibility: hidden"></asp:LinkButton>
                        <asp:Button ID="btnKvk" Text="<%$ Resources:lang, OrderNow%>" CssClass="button" runat="server" Visible="false" />
                        <asp:Button ID="btnpaymec" runat="server" Text="<%$ Resources:lang, OrderNow%>" CssClass="button" />
                        <asp:Button ID="btnGenpa" runat="server" Text="<%$ Resources:lang, OrderNow%>" CssClass="button" />
                        <asp:Button ID="btnziraat" runat="server" Text="<%$ Resources:lang, OrderNow%>" CssClass="button" />
                        <asp:Button ID="btnpayuapi" runat="server" Text="<%$ Resources:lang, OrderNow%>" CssClass="button" />
                        <asp:Button ID="btnkuveyt" runat="server" Text="<%$ Resources:lang, OrderNow%>" CssClass="button" />
                        <asp:Button ID="btniparaapi" runat="server" Text="IPara Api" CssClass="button" />
                        <asp:Button ID="btnProBank" runat="server" Text="<%$ Resources:lang, OrderNow%>" CssClass="button" />
                        <asp:Button ID="btnTesan" runat="server" Text="Tesan İle Öde" CssClass="button" />
                    </div>
            <asp:Panel ID="Panel1" Style='display: none;' Width="80%" Height="90%" runat="server" CssClass="modalPopup3d">
                <iframe name="frame3d" id="frame3d" style="height: 100%; width: 100%" src='<%= PostUrl %>'>Tarayıcınız sayfa içi çerçeveleri desteklemiyor veya şu anda sayfa içi çerçeveleri
                    göstermek için yapılandırılmamış </iframe>
                <div>
                    <asp:Button ID="btnOk" CausesValidation="false" runat="server" Style="visibility: hidden"
                        Width="0px" />
                    <asp:Button ID="btnClose" CausesValidation="false" runat="server" Style="visibility: hidden"
                        Width="0px" />
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
                <input runat="server" type="hidden" name="paytypes" id="paytypes" />
            </asp:Panel>
            <cc1:ModalPopupExtender ID="ModalPopupExtender1" BehaviorID="ModalPopupExtender1"
                runat="server" TargetControlID="popbutton" PopupControlID="Panel1" BackgroundCssClass="modalBackground3d"
                OkControlID="btnOk" CancelControlID="btnClose" OnOkScript="ConfirmPayment()"
                RepositionMode="RepositionOnWindowResizeAndScroll" OnCancelScript="CancelPayment()">
            </cc1:ModalPopupExtender>
            <label>
                <asp:Label ID="lbl3dinfo" runat="server"></asp:Label></label>
            <%--</form>--%>
            <script type="text/javascript">
                buildKeyboardInputs('<%= getThemePath() %>');
                GiftChecked();
                $(".lightbox").colorbox({ width: "300", height: "400", iframe: true, scrolling: false });
                $(".lightbox2").colorbox({ inline: true, width: "60%", height: "80%", scrolling: true });
            </script>
            <asp:ValidationSummary ID="ValidationSummary2" runat="server" ShowSummary="False" ShowMessageBox="True"></asp:ValidationSummary>
        </div>
    </div>
    <div id="payment-logos" align="right">
        <img src="<% =getThemePath() %>/images/payment_logos.png" border="0" />
    </div>
    <div id="cartdiv" runat="server"></div>
</div>


