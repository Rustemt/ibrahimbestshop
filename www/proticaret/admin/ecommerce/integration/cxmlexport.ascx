<%@ Control Language="vb" AutoEventWireup="false" Inherits="cxmlexport" CodeBehind="cxmlexport.ascx.vb" %>
<%@ Register Assembly="System.Web.Extensions" Namespace="System.Web.UI" TagPrefix="asp" %>
<div class="pageXmlExport" runat="server">
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False" ShowMessageBox="True" ForeColor=" "></asp:ValidationSummary>
    <asp:Label ID="lblHepsiBuradaMsg" runat="server"></asp:Label>
    <div class="alert alert-info" id="divalertinfo" runat="server" visible="false">
        <asp:Label ID="lblExportMsg" runat="server"></asp:Label>
    </div>
    <asp:HyperLink ID="lnkDowload" runat="server" CssClass="textRed" Visible="False" Target="_blank"><%=GetGlobalResourceObject("admin", "FileDownload")%></asp:HyperLink>
    <p>
        <label><%=GetGlobalResourceObject("admin", "UserExcelMsg1")%></label>
        <asp:HyperLink ID="showGalleryButton" runat="server" CssClass="textRed" NavigateUrl="javascript:OpenFileBrowser( '/fckeditor/editor/filemanager/browser/default/browser.html?Connector=/fckeditor/editor/filemanager/connectors/aspx/connector.aspx', 900, 700 ) ;"><i class="fa fa-folder-open-o"></i><%= GetGlobalResourceObject("admin","Gallery") %></asp:HyperLink>
    </p>
    <div class="dataForm">
        <div class="row">
            <div class="col1-2">
                <div class="row">
                    <div class="colTwo">
                        <label><%=GetGlobalResourceObject("admin", "SelectFormat")%> :</label>
                        <asp:DropDownList ID="ddlProviderExport" runat="server" CssClass="Admin_Normal_ComboBox"></asp:DropDownList>
                    </div>
                    <div class="colTwo">
                        <label><%=GetGlobalResourceObject("admin", "XmlIntegrationCategory")%> :</label>
                        <asp:DropDownList ID="ddlExport" runat="server"></asp:DropDownList>
                    </div>
                </div>
                <div class="row">
                    <div class="colTwo">
                        <label><%=GetGlobalResourceObject("admin", "FileFormat")%> :</label>
                        <asp:TextBox ID="txtExt" runat="server" MaxLength="5">.xml</asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="colTwo">
                        <asp:LinkButton ID="btnExportExcell" runat="server" CssClass="btnDefault" CausesValidation="False"><%=GetGlobalResourceObject("admin", "CreateProductList")%></asp:LinkButton>
                        <p></p>
                        <asp:HyperLink ID="lnkHepsiBuradaExport" runat="server" CssClass="button" Visible="false" Target="_blank">Resimleri Ýndir</asp:HyperLink>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        Sys.WebForms.PageRequestManager.getInstance().add_endRequest(EndRequestHandler);
        function EndRequestHandler(sender, args) {
            if (args.get_error() != undefined) {
                if (args.get_response().get_statusCode() == '500') {
                    args.set_errorHandled(true);
                }
                else {
                    args.set_errorHandled(true);
                    alert("There was an error" + args.get_error().message);
                }

            }
        }
    </script>
</div>
<script type="text/javascript">

    function OpenFileBrowser(url, width, height) {
        // oEditor must be defined.

        var sOptions = "toolbar=no,status=no,resizable=yes,dependent=yes,scrollbars=yes";
        sOptions += ",width=" + width;
        sOptions += ",height=" + height; 

        window.open(url, 'FCKBrowseWindow', sOptions);
    }
</script>
