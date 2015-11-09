<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.CUserExportImport" Codebehind="CUserExportImport.ascx.vb" %>
<div class="pageUserExportImport" runat="server">
	<div class="alert alert-info" id="divalertinfo" runat="server" visible="false" ><asp:Label ID="lblMsg" runat="server"></asp:Label></div>
    <div class="dataForm">
    	<div class="row">
            <div class="colTwo"><b>Export</b></div>
            <div class="colTwo"><b>Ýmport</b> <small><%=GetGlobalResourceObject("admin", "UserExcelMsg2")%></small></div>
        </div>
        <div class="row">
            <div class="colTwo">
            	 <asp:LinkButton ID="btnExportAll" runat="server" CssClass="btnDefault"><%=GetGlobalResourceObject("admin", "UserExcelMsg3")%></asp:LinkButton>
                <div class="alert alert-success" id="divalert" runat="server" visible="false" ><asp:Label ID="lblExportMsg" runat="server"></asp:Label></div>
                <p><%=GetGlobalResourceObject("admin", "UserExcelMsg1")%> <asp:hyperlink id="showGalleryButton" runat="server" cssclass="textRed" navigateurl="javascript:BrowseServer();" text="<%$ Resources:admin,Gallery %>"></asp:hyperlink></p>
            </div>
            <div class="colTwo">
            	<div class="alert alert-info"><%=GetGlobalResourceObject("admin", "UserExcelMsg4")%></div>
                <div class="alert"><%=GetGlobalResourceObject("admin", "UserExcelMsg5")%></div>
                <div class="dataForm">
                    <div class="row">
                        <div class="colTwo">
                        	<label><%=GetGlobalResourceObject("admin", "UserExcelMsg6")%> : </label>
                            <asp:DropDownList ID="ddlExcelList" runat="server"></asp:DropDownList>
                        </div>
                    </div>
                    <div class="row">
                    	<div class="colTwo">
                        	<asp:LinkButton ID="btnImport" runat="server" CssClass="btnDefault"><%=GetGlobalResourceObject("admin", "UserExcelMsg9")%></asp:LinkButton>
                        </div>
                    </div>
                    <div class="row" runat="server" id="pnlError">
                    	<div class="colTwo">
                        	<%=GetGlobalResourceObject("admin", "UserExcelMsg7")%>
                			<asp:LinkButton ID="errorlist" runat="server" CssClass="btnDefault"><%=GetGlobalResourceObject("admin", "UserExcelMsg8")%></asp:LinkButton>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div> 
