<%@ Control Language="vb" AutoEventWireup="false" Inherits="cbatchjobs" CodeBehind="cbatchjobs.ascx.vb" %>
<%@ Register Assembly="System.Web.Extensions" Namespace="System.Web.UI" TagPrefix="asp" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Register Assembly="AjaxControls" Namespace="AjaxControls" TagPrefix="asp" %>
<div id="pageCbatchJobs">
    <div class="dataForm">
        <div class="row">
            <div class="col1-2">
                <div class="row">
                    <div class="colTwo">
                        <label><%=GetGlobalResourceObject("admin", "SelectCategory")%> :
                            <asp:requiredfieldvalidator id="RequiredFieldValidator8" runat="server" controltovalidate="ddlCats1" errormessage="<%$ Resources:admin,BatchJobsMsg1 %>" initialvalue="0">*</asp:requiredfieldvalidator></label>
                        <asp:dropdownlist id="ddlCats1" runat="server"></asp:dropdownlist>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <asp:updatepanel id="UpdatePanel2" runat="server">
        <contenttemplate>
            <asp:Timer id="Timer2" runat="server" Interval="1000"></asp:Timer>
            <asp:Timer id="Timer1" runat="server" Interval="1000"></asp:Timer>
            <asp:Label ID="lblmsg" runat="server"></asp:Label>
            <asp:LinkButton ID="btnHideCats" runat="server" CssClass="btnDefault" AutoUpdateAfterCallBack="True" EnabledDuringCallBack="False" ><%=GetGlobalResourceObject("admin", "HideEmptyCategories")%></asp:LinkButton>
            <asp:LinkButton ID="btnAutoFillCats" runat="server" CssClass="btnDefault" AutoUpdateAfterCallBack="True" EnabledDuringCallBack="False"><%=GetGlobalResourceObject("admin", "EmptyAutoFillShowcase")%></asp:LinkButton>
            <asp:Button ID="btnresizeimg" Text="Ürün Resimlerini Resize Et" runat="server"  CssClass="btnDefault" ValidationGroup="btn"/>
            <asp:Button ID="btndelimage" Text="Ürüne Baðlý Olmayan Tüm Resimleri Sil" runat="server"  CssClass="btnDefault" ValidationGroup="btn"/>
            <asp:ValidationSummary id="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" ValidationGroup="btn"></asp:ValidationSummary>
             
        </contenttemplate>
    </asp:updatepanel>
    <%--
    <script type="text/javascript"> 
    Sys.WebForms.PageRequestManager.getInstance().add_endRequest(EndRequestHandler);
    function EndRequestHandler(sender, args)
    {
    args.set_errorHandled(true); 
    /*
        if (args.get_response().get_statusCode() == '12031' || args.get_response().get_statusCode() == '12030')
        {
         alert(args.get_error() + args.get_response().get_timedOut() + 'oturumunuz zaman aþýmýna uðradý. Lütfen kullanýcý giriþi yapýnýz.');
         args.set_errorHandled(true);
        }
        if ((args.get_response().get_statusCode() == '12007') || (args.get_response().get_statusCode() == '12029'))
        {           
         alert('Lütfen internet baðlantýnýzý kontrol ediniz. Not: Ýþlemleriniz arka planda yapýlmaya devem ediyor.');
         args.set_errorHandled(true); 
        } 
      */     
    }        
    </script>
    --%>
</div>
