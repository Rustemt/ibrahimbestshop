<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.AffiliateCustomLinks" Codebehind="AffiliateCustomLinks.ascx.vb" %>
<div id="affiliatecustomlinks" class="module">
	<% if HeaderVisible then %>
        <div class="moduleTitle">
            <%=ModuleTitle%>
            <% if IsEditable then %>
            <a href="<%=EditNavigateUrl %>" class="moduleTitleEdit"><%=EditText %></a>
            <% end if %>
        </div>
    <% end if %>
    <div class="moduleContent moduleContentCol1">
        <label class="title2"><%=GetGlobalResourceObject("lang", "AffiliateMsg3")%></label>
        <div class="moduleContentCol1">
            <label><%=GetGlobalResourceObject("lang", "AffliateLinkTitle")%></label>
            
            <asp:TextBox ID="txtsite" runat="server"></asp:TextBox>
        </div>
        
        <div class="moduleContentCol1">
            <label><%=GetGlobalResourceObject("lang", "AffiliatePageUrl")%></label>
            
            <asp:TextBox ID="txtLink" runat="server"></asp:TextBox>
            <asp:Button ID="btnmakelink" runat="server" CssClass="button" Text="<%$ Resources:lang, AffiliateCreateLink%>" />
            
            <label><asp:Label ID="lblMsg" runat="server" Visible="False"><%=GetGlobalResourceObject("lang", "AffiliateMsg4")%></asp:Label></label>
        
            <label>
                <asp:Label ID="lblNewlink" runat="server" Visible="False"><%=GetGlobalResourceObject("lang", "AffiliateCreatedLink")%></asp:Label>
                <asp:Label ID="lblnewlinktext" runat="server"  Visible="False"></asp:Label>
            </label>
            
            <label>  
                <asp:Label ID="lblNewlink2" runat="server" Visible="False"><%=GetGlobalResourceObject("lang", "AffiliateLinkToUse")%></asp:Label>
                <asp:TextBox ID="lblnewlinktext2" runat="server" Visible="False" ></asp:TextBox>
            </label>
        </div>
        
        
     </div>
</div>
