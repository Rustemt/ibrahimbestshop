<%@ Control Language="vb" AutoEventWireup="false" Inherits="cxlspriceimport" CodeBehind="cxlspriceimport.ascx.vb" %>
<%@ Register Assembly="System.Web.Extensions" Namespace="System.Web.UI" TagPrefix="asp" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<div class="pageXlsImport" runat="server">
    <p>
        <%=GetGlobalResourceObject("admin", "UserExcelMsg1")%>
        <asp:HyperLink ID="showGalleryButton" runat="server" CssClass="textRed" NavigateUrl="javascript:BrowseServer();" Text="<%$ Resources:admin,Gallery %>"></asp:HyperLink>
    </p>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False" ShowMessageBox="True"></asp:ValidationSummary>
    <div class="alert alert-info" id="divalert" runat="server" visible="false">
        <asp:Label ID="lblExportMsg" runat="server"></asp:Label>
        <asp:HyperLink ID="lnkDowload" runat="server" CssClass="textRed" Visible="False" Target="_blank"><%=GetGlobalResourceObject("admin", "FileDownload")%></asp:HyperLink>
    </div>
    <div class="dataForm">
        <div class="row">
            <div class="colTwo">
                <div class="alert">Kategorilerdeki Ürünleri Excel'e Aktar</div>
                <div class="row">
                    <div class="colOne">
                        <label><%=GetGlobalResourceObject("admin", "ExcelIntegrationCategory")%> :</label>
                        <asp:DropDownList ID="ddlExport" runat="server"></asp:DropDownList>
                    </div>
                </div>
                <div class="row">
                    <div class="colOne">
                        <asp:LinkButton ID="btnExportExcell" runat="server" CssClass="btnDefault" CausesValidation="False"><%=GetGlobalResourceObject("admin", "CreateProductList")%></asp:LinkButton>
                    </div>
                </div>
            </div>
            <div class="colTwo">
                <div class="alert"><%=GetGlobalResourceObject("admin", "ExcelIntegrationMsg1")%></div>
                <div class="row">
                    <div class="colOne">
                        <label><%=GetGlobalResourceObject("admin", "SelectFile")%> :</label>
                        <asp:DropDownList ID="ddlExcelList" runat="server"></asp:DropDownList>
                    </div>
                </div>
                <div class="row" style="display: none;">
                    <div class="colOne">
                        <label>
                            <asp:Label ID="lblCatFilt1" runat="server" Visible="False"><%=GetGlobalResourceObject("admin", "StartCategory")%> :</asp:Label></label>
                        <asp:DropDownList ID="ddlCategories" runat="server" Visible="False"></asp:DropDownList>
                    </div>
                </div>                 
                <div class="row">
                    <div class="colOne">
                        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                            <contenttemplate>
                                <asp:Timer ID="Timer1" runat="server" Interval="1000"></asp:Timer>
                                <div class="buttonGroup">
                                    <asp:LinkButton ID="btnImportcsv" Text="<%$ Resources:admin,UserExcelMsg9 %>" CssClass="btnDefault" runat="server" AutoUpdateAfterCallBack="True" EnabledDuringCallBack="False"></asp:LinkButton>
                                    <asp:LinkButton ID="btnStop" Text="<%$ Resources:admin,ExcelIntegrationStop %>" CssClass="btnDefault" runat="server" CausesValidation="False" AutoUpdateAfterCallBack="True" EnabledDuringCallBack="True"></asp:LinkButton></td>
                                </div>
                                <div class="alert">
                                    <asp:Label ID="lblanthem" runat="server"></asp:Label></div>
                                <div class="alert">
                                    <asp:Label ID="lblanthem1" runat="server"></asp:Label></div>
                                <div class="alert">
                                    <asp:Label ID="lblinfo" runat="server"></asp:Label></div>
                            </contenttemplate>
                        </asp:UpdatePanel>
                        <asp:GridView runat="server" ID="GridView1"></asp:GridView>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
